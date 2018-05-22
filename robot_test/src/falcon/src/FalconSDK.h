/***
*～Filename:	FalconSDK.h
*~Utility:	provide all functions for falcon development ( common operation, such as encoder reading, device opening, firmware loading, etc,  & logging)
*~author:	Xiaolei Hou (xiaolei.hou@anu.edu.au)
***/

#ifndef FALCONSDK_H
#define FALCONSDK_H

#include "../include/falcon/comm/FalconCommLibUSB.h"
#include "../include/falcon/kinematic/FalconKinematicStamper.h"
#include "../include/falcon/firmware/FalconFirmwareNovintSDK.h"
#include "../include/falcon/util/FalconDeviceBoostThread.h"
#include "../include/falcon/util/FalconCLIBase.h"
#include "../include/falcon/util/FalconFirmwareBinaryNvent.h"
//#include "FalconPID.h"

#include <boost/scoped_ptr.hpp>

#include <iostream>
#include <cstdio>
#include <cstdlib>
#include <csignal>
#include "stdint.h"
/*
#ifdef ENABLE_LOGGING
#include <log4cxx/logger.h>
#include <log4cxx/basicconfigurator.h>
#include <log4cxx/helpers/exception.h>
#include <log4cxx/patternlayout.h>
#include <log4cxx/consoleappender.h>


static const log4cxx::LogString TTCC_CONVERSION_PATTERN(LOG4CXX_STR("%-5p [%c] - %m%n"));


void configureLogging(const std::string logString, const log4cxx::LevelPtr level) {
	log4cxx::LayoutPtr layout(new log4cxx::PatternLayout(logString));
	log4cxx::AppenderPtr appender(new log4cxx::ConsoleAppender(layout));
	log4cxx::BasicConfigurator::configure(appender);
	log4cxx::LoggerPtr rootlogger = log4cxx::Logger::getRootLogger();
	rootlogger->setLevel(level);
}
#endif
*/

#endif
