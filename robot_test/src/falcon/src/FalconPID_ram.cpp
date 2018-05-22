#include "FalconPID.h"
#include "FalconSDK.h"
#include "lowPass.h"
#include "../include/falcon/util/FalconCLIBase.h"
#define VEL2FALCON_SCALE 0.3 //base on 1m/s max speed


using namespace std;
using namespace libnifalcon;

bool FalconPID::calibrateDevice()
	{
		bool homing  =  false;
		dev.getFalconFirmware()->setHomingMode(true);
		dev.runIOLoop();
		if(!dev.getFalconFirmware()->isHomed())
		{
			if(!homing)
			{
				dev.getFalconFirmware()->setLEDStatus(libnifalcon::FalconFirmware::RED_LED);
				if(m_displayCalibrationMessage)
				{
					std::cout << "Falcon not currently calibrated. Move control all the way out then push straight all the way in." << std::endl;
					m_displayCalibrationMessage  =  false;
				}
			}
			homing  =  true;
			return false;
		}
		std::cout << "Falcon calibrated successfully." << std::endl;
		dev.getFalconFirmware()->setLEDStatus(libnifalcon::FalconFirmware::GREEN_LED);
		homing = false;
		return true;
	}

void FalconPID::fal_open()
{
	unsigned int num_falcons = 0;

	dev.setFalconFirmware<FalconFirmwareNovintSDK>();
	dev.setFalconKinematic<FalconKinematicStamper>();
	dev.setFalconGrip<FalconGripFourButton>();

	f = dev.getFalconFirmware();
	if(!dev.getDeviceCount(num_falcons))
		return;

	if(num_falcons == 0)
	{
		cout << "No falcons found, exiting..." << endl;
		return;
	}
	cout << "Falcons found: " << (int)num_falcons << endl;

	if (!dev.isOpen())
	{
		cout << "Opening falcon " << endl;

		if(!dev.open(0))
		{
			cout << "Cannot open falcon - Error: " << endl; // << dev.getErrorCode() << endl;
			return;
		}
	}
	else
	{
		cout << "Opened falcon" << endl;
	}
	while(!dev.isFirmwareLoaded()){
	!dev.getFalconFirmware()->loadFirmware(true, NOVINT_FALCON_NVENT_FIRMWARE_SIZE, const_cast<uint8_t*>(NOVINT_FALCON_NVENT_FIRMWARE));
	}
			if(!dev.isFirmwareLoaded())
			{
				cout << "Firmware didn't load correctly. Try running findfalcons again" << endl;
				return;
			}else{
				cout<<"Firmware is loaded!"<<endl;
			}


		f->setLEDStatus(2);
		for(int i = 0; i < 100; )
		{
			if(dev.runIOLoop()) ++i;
			else continue;
		}				
		
		m_displayCalibrationMessage = true;
		while(!FalconPID::calibrateDevice());
		
		f->setLEDStatus(14);
		for(int i = 0; i < 1; )
		{
			if(dev.runIOLoop()) ++i;
			else continue;
		}
}

void FalconPID::fal_close()
{
	f->setLEDStatus(8);
		for(int i = 0; i < 10; )
		{
			if(dev.runIOLoop()) ++i;
			else continue;
			//printf("loops: %d | Enc1: %f | Enc2: %f | Enc3: %f \n", i, dev.getPosition()[0], dev.getPosition()[1], dev.getPosition()[2]);
		}
	dev.close();
}

void FalconPID::init()
{
	KP = 21;
	KI = 0.45;
	KL = 0.83;
	KD = 0.028;
	Rat = 0.5;

	Ts = 0.001;

	for(int j = 0;j<3;j++)
	{
		error[j] = 0;
		p1error[j] = 0;
		p1u[j] = 0;
		x_k[j] = 0;
		zk[j] = 0;
		cen_point[j] = 0;
		ppos[j] = 0;
	}
	xmx = 0;xmn = 0;ymx = 0;ymn = 0;zmx = 0;zmn = 0.1;
	m_tval = 0;
	p_dt = 0;
	scale = 1;
}


void FalconPID::run(double *cpos, double* outforce, double* env_force, double* fpos)
{	
	if(!dev.runIOLoop())
		return;

	button[0] = false;
	button[1] = false;
	button[2] = false;
	button[3] = false;

	boost::array<double, 3> pos = dev.getPosition();



	if(dev.getFalconGrip()->getDigitalInputs() & libnifalcon::FalconGripFourButton::BUTTON_1)
	{
		std::cout<<"button 1"<<std::endl;
		button[0] = true;
		fpos[3] += 0.001;
	}
	else
	{
		button[0] = false;
	}
	if(dev.getFalconGrip()->getDigitalInputs() & libnifalcon::FalconGripFourButton::BUTTON_2)
	{
		std::cout<<"button 2"<<std::endl;
		button[1] = true;
	}
	else
	{
		button[1] = false;
	}
	if(dev.getFalconGrip()->getDigitalInputs() & libnifalcon::FalconGripFourButton::BUTTON_3)
	{
		std::cout<<"button 3"<<std::endl;
		button[2] = true;
	}
	else
	{
		button[2] = false;
	}
	if(dev.getFalconGrip()->getDigitalInputs() & libnifalcon::FalconGripFourButton::BUTTON_4)
	{
		std::cout<<"button 4"<<std::endl;
		button[3] = true;	
		fpos[3] -= 0.001;
	}
	else
	{
		button[3] = false;
	}
	
	if ((button[0]==false)&&(button[3]==false))
	{
		rotation = 0;
	}

	int butt_sum = button[0]+button[1]+button[2]+button[3];
	if (butt_sum>2)
		stop = true;

	
	ppos[0] = pos[0];
	ppos[1] = pos[1];
	ppos[2] = (pos[2]-0.12);

	static boost::array<double, 3> force = {0,0,0};
	static double vel_filter[3] = {0, 0, 0};
	static int i = 0;
// low pass filter the velocity for servoing the position

	for (i=0; i < 3; i++)
	{
		vel_filter[i] = lowPass_filter2(vel_filter[i], cpos[i], 0 ); // full pass when last parameter is 0;
	}

	p1error[0] = error[0];
	p1error[1] = error[1];
	p1error[2] = error[2];
	
	scale = 0.55;	

	error[0] = (vel_filter[0]/10-ppos[0]);//x in right direction
	error[1] = (vel_filter[1]/10-ppos[1]);//y in front
	error[2] = (vel_filter[2]/10-ppos[2]);

		
	p1u[0] = force[0];
	p1u[1] = force[1];
	p1u[2] = force[2];

	double zpk[3];
	zpk[0] = (error[0]-p1error[0])/Ts;
	zpk[1] = (error[1]-p1error[1])/Ts;
	zpk[2] = (error[2]-p1error[2])/Ts;

	zk[0] = Rat*zk[0]+(1-Rat)*zpk[0];
	zk[1] = Rat*zk[1]+(1-Rat)*zpk[1];
	zk[2] = Rat*zk[2]+(1-Rat)*zpk[2];

	x_k[0] = KL*tanh(x_k[0]+error[0]);
	x_k[1] = KL*tanh(x_k[1]+error[1]);
	x_k[2] = KL*tanh(x_k[2]+error[2]);

	force[0] = scale*1.5*KP*(error[0]+1.0* KI*x_k[0]+KD*zk[0])*20;//pid force applied to falcon to servo the position
	force[1] = scale*1.5*KP*(error[1]+1.0 *KI*x_k[1]+1.0*KD*zk[1])*20+0.85;
	force[2] = scale*1.5*KP*(error[2]+1.0*KI*x_k[2]+KD*zk[2])*20*1.5;

// Computing input from user (the integral term)
	outforce[0] = - scale*1.5*KP*KI*x_k[0]*20 ; // left; a negative sign is needed to get the actural force 
	outforce[1] = - scale*1.5*KP*KI*x_k[1]*20 ; // up
	outforce[2] = - scale*1.5*KP*KI*x_k[2]*20*1.5; //out

	dev.setForce(force);
	pos = dev.getPosition();
	fpos[0] =  pos[0];
	fpos[1] =  pos[1];
	fpos[2] =  pos[2];
	
}

