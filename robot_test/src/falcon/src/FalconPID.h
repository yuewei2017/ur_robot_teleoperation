#ifndef FALCONPID_H
#define FALCONPID_H

#include "boost/shared_ptr.hpp"
#include "falcon/core/FalconDevice.h"
#include "falcon/gmtl/Vec.h"
#include <math.h>
#include "falcon/grip/FalconGripFourButton.h"
#include "falcon/kinematic/FalconKinematicStamper.h"
#include "falcon/util/FalconCLIBase.h"
#include "falcon/core/FalconFirmware.h"
#include "FalconSDK.h"

class FalconPID
{

public:
	FalconPID() 
	{
		init();	
	}
	double rotation;
	void fal_open();
	void fal_close();
	
	void init();
	void run(double* cpos, double* outforce, double* env_force,double* fpos);

	bool stop;
	int option;
	double scale;
protected:
	libnifalcon::FalconDevice dev;
	boost::shared_ptr<libnifalcon::FalconFirmware> f;
	bool m_displayCalibrationMessage; /**< String to display with calibration instructions */
	bool calibrateDevice();
	double position[3];
	double ppos[3];
	bool button[4];
	double KP,KI, KI2, KL,KD,Rat,K_Damp, Ts;
	double error[3],p1error[3];
	double cen_point[3];
	double p1u[3];
	double x_k[3],zk[3];
	double xmx,xmn,ymx,ymn,zmx,zmn;
	int m_tval;
	double disp[3];
	double p_vel[3];
	double *pos;
	double target[3];
	int p_dt;
};

#endif
