@interface CLFenceAnalyticsHistoricalStates
- (CLDaemonLocation)currentLocation;
- (CLDaemonLocation)nMinusOneStateChangeLocation;
- (CLDaemonLocation)nMinusTwoStateChangeLocation;
- (CLFenceAnalyticsHistoricalStates)init;
- (id).cxx_construct;
- (void)dealloc;
- (void)resetHistoricalStates;
- (void)setCurrentLocation:(CLDaemonLocation *)location;
- (void)setNMinusOneStateChangeLocation:(CLDaemonLocation *)location;
- (void)setNMinusTwoStateChangeLocation:(CLDaemonLocation *)location;
- (void)updateCurrentState:(int)state previousState:(int)previousState location:(CLDaemonLocation *)location locationReceivedTime:(double)time;
@end

@implementation CLFenceAnalyticsHistoricalStates

- (CLFenceAnalyticsHistoricalStates)init
{
  v5.receiver = self;
  v5.super_class = CLFenceAnalyticsHistoricalStates;
  v2 = [(CLFenceAnalyticsHistoricalStates *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CLFenceAnalyticsHistoricalStates *)v2 resetHistoricalStates];
  }

  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFenceAnalyticsHistoricalStates;
  [(CLFenceAnalyticsHistoricalStates *)&v3 dealloc];
}

- (void)updateCurrentState:(int)state previousState:(int)previousState location:(CLDaemonLocation *)location locationReceivedTime:(double)time
{
  v9 = *&state;
  if ([(CLFenceAnalyticsHistoricalStates *)self currentState]!= previousState)
  {
    if (qword_1025D4640 != -1)
    {
      sub_101960B98();
    }

    v11 = off_1025D4648;
    if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
    {
      if ((v9 + 1) > 4)
      {
        v12 = "---";
      }

      else
      {
        v12 = off_10247C450[(v9 + 1)];
      }

      if ((previousState + 1) > 4)
      {
        v13 = "---";
      }

      else
      {
        v13 = off_10247C450[previousState + 1];
      }

      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 2080;
      *&buf[14] = v13;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "#FenceMetrics Previous fence states don't match, reseting historical states, currentState %s, previousState %s", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101960BAC(v9, previousState);
    }

    [(CLFenceAnalyticsHistoricalStates *)self resetHistoricalStates];
  }

  if (qword_1025D4640 != -1)
  {
    sub_101960D24();
  }

  v14 = off_1025D4648;
  if (os_log_type_enabled(off_1025D4648, OS_LOG_TYPE_DEFAULT))
  {
    if ((v9 + 1) > 4)
    {
      v15 = "---";
    }

    else
    {
      v15 = off_10247C450[(v9 + 1)];
    }

    if ((previousState + 1) > 4)
    {
      v16 = "---";
    }

    else
    {
      v16 = off_10247C450[previousState + 1];
    }

    lifespan_low = LODWORD(location->lifespan);
    v18 = *(&location->coordinate.longitude + 4);
    *buf = 136315906;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = v16;
    *&buf[22] = 1024;
    *&buf[24] = lifespan_low;
    *&buf[28] = 2048;
    *&buf[30] = v18;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "#FenceMetrics updating to currentState %s, previousState %s, provider %d, accuracy %f", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4640 != -1)
    {
      sub_101960D24();
    }

    if ((v9 + 1) > 4)
    {
      v23 = "---";
    }

    else
    {
      v23 = off_10247C450[(v9 + 1)];
    }

    if ((previousState + 1) > 4)
    {
      v24 = "---";
    }

    else
    {
      v24 = off_10247C450[previousState + 1];
    }

    v25 = LODWORD(location->lifespan);
    v26 = *(&location->coordinate.longitude + 4);
    v49 = 136315906;
    v50 = v23;
    v51 = 2080;
    v52 = v24;
    v53 = 1024;
    v54 = v25;
    v55 = 2048;
    v56 = v26;
    LODWORD(v29) = 38;
    _os_log_send_and_compose_impl(2, 0, buf, 1628, dword_100000000, off_1025D4648, 0, "#FenceMetrics updating to currentState %s, previousState %s, provider %d, accuracy %f", &v49, v29, v30, *&v31);
    v28 = v27;
    sub_100152C7C("Generic", 1, 0, 2, "[CLFenceAnalyticsHistoricalStates updateCurrentState:previousState:location:locationReceivedTime:]", "%s\n", v27);
    if (v28 != buf)
    {
      free(v28);
    }
  }

  [(CLFenceAnalyticsHistoricalStates *)self setNMinusThreeState:self->_nMinusTwoState];
  [(CLFenceAnalyticsHistoricalStates *)self setNMinusTwoState:self->_nMinusOneState];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfNMinusTwoStateChange:[(CLFenceAnalyticsHistoricalStates *)self timeOfNMinusOneStateChange]];
  objc_msgSend_nMinusOneStateChangeLocation(self);
  v61 = v46;
  v62 = v47;
  v63[0] = *v48;
  *(v63 + 12) = *&v48[12];
  *&buf[32] = v42;
  v58 = v43;
  v59 = v44;
  v60 = v45;
  *buf = v40;
  *&buf[16] = v41;
  [(CLFenceAnalyticsHistoricalStates *)self setNMinusTwoStateChangeLocation:buf];
  [(CLFenceAnalyticsHistoricalStates *)self setNMinusOneState:[(CLFenceAnalyticsHistoricalStates *)self currentState]];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfNMinusOneStateChange:[(CLFenceAnalyticsHistoricalStates *)self timeOfCurrentStateChange]];
  objc_msgSend_currentLocation(self);
  v61 = v37;
  v62 = v38;
  v63[0] = *v39;
  *(v63 + 12) = *&v39[12];
  *&buf[32] = v33;
  v58 = v34;
  v59 = v35;
  v60 = v36;
  *buf = v31;
  *&buf[16] = v32;
  [(CLFenceAnalyticsHistoricalStates *)self setNMinusOneStateChangeLocation:buf];
  [(CLFenceAnalyticsHistoricalStates *)self setCurrentState:v9];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfCurrentStateChange:[NSDate dateWithTimeIntervalSinceReferenceDate:time]];
  rawCoordinate = location->rawCoordinate;
  v61 = *&location->lifespan;
  v62 = rawCoordinate;
  v63[0] = *&location->rawCourse;
  *(v63 + 12) = *&location->integrity;
  v20 = *&location->speed;
  *&buf[32] = *&location->altitude;
  v58 = v20;
  v21 = *&location->timestamp;
  v59 = *&location->course;
  v60 = v21;
  v22 = *&location->coordinate.longitude;
  *buf = *&location->suitability;
  *&buf[16] = v22;
  [(CLFenceAnalyticsHistoricalStates *)self setCurrentLocation:buf];
}

- (void)resetHistoricalStates
{
  *&v3 = 0x300000003;
  *(&v3 + 1) = 0x300000003;
  *&self->_currentState = v3;
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfCurrentStateChange:0];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfNMinusOneStateChange:0];
  [(CLFenceAnalyticsHistoricalStates *)self setTimeOfNMinusTwoStateChange:0];
  *&self->_currentLocation.coordinate.longitude = xmmword_101CE6CE8;
  *&self->_currentLocation.suitability = xmmword_101CE6CD8;
  *&self->_currentLocation.speed = xmmword_101CE6D08;
  *&self->_currentLocation.altitude = xmmword_101CE6CF8;
  *&self->_currentLocation.timestamp = xmmword_101CE6D28;
  *&self->_currentLocation.course = xmmword_101CE6D18;
  *&self->_currentLocation.lifespan = xmmword_101CE6D38;
  self->_currentLocation.rawCoordinate = xmmword_101CE6D48;
  *&self->_currentLocation.rawCourse = xmmword_101CE6D58;
  *&self->_currentLocation.integrity = *(&xmmword_101CE6D58 + 12);
  *(&self->_nMinusOneStateChangeLocation.confidence + 1) = xmmword_101CE6D48;
  *(&self->_nMinusOneStateChangeLocation.type + 1) = xmmword_101CE6D58;
  *(&self->_nMinusOneStateChangeLocation.coordinate + 4) = xmmword_101CE6CF8;
  *(&self->_nMinusOneStateChangeLocation.horizontalAccuracy + 4) = xmmword_101CE6D08;
  *(&self->_nMinusOneStateChangeLocation.verticalAccuracy + 4) = xmmword_101CE6D18;
  *(&self->_nMinusOneStateChangeLocation.speedAccuracy + 4) = xmmword_101CE6D28;
  *(&self->_nMinusOneStateChangeLocation.courseAccuracy + 4) = xmmword_101CE6D38;
  *(&self->_currentLocation.signalEnvironmentType + 1) = xmmword_101CE6CD8;
  *(&self->_currentLocation.fromSimulationController + 4) = xmmword_101CE6CE8;
  *&self->_nMinusTwoStateChangeLocation.courseAccuracy = xmmword_101CE6D48;
  *&self->_nMinusTwoStateChangeLocation.confidence = xmmword_101CE6D58;
  *(&self->_nMinusTwoStateChangeLocation.lifespan + 4) = *(&xmmword_101CE6D58 + 12);
  self->_nMinusTwoStateChangeLocation.coordinate = xmmword_101CE6D08;
  *&self->_nMinusTwoStateChangeLocation.horizontalAccuracy = xmmword_101CE6D18;
  *&self->_nMinusTwoStateChangeLocation.verticalAccuracy = xmmword_101CE6D28;
  *&self->_nMinusTwoStateChangeLocation.speedAccuracy = xmmword_101CE6D38;
  *&self->_nMinusOneStateChangeLocation.rawCoordinate.longitude = *(&xmmword_101CE6D58 + 12);
  *&self->_nMinusOneStateChangeLocation.floor = xmmword_101CE6CD8;
  *&self->_nMinusOneStateChangeLocation.signalEnvironmentType = xmmword_101CE6CE8;
  *&self->_nMinusOneStateChangeLocation.fromSimulationController = xmmword_101CE6CF8;
  self->_timeToInitialStateChange = -1.0;
}

- (CLDaemonLocation)currentLocation
{
  v3 = *&self->fromSimulationController;
  *&retstr->lifespan = *&self->signalEnvironmentType;
  retstr->rawCoordinate = v3;
  *&retstr->rawCourse = self[1].coordinate;
  *&retstr->integrity = *(&self[1].coordinate.longitude + 4);
  v4 = *&self->type;
  *&retstr->altitude = *&self->confidence;
  *&retstr->speed = v4;
  v5 = *&self->floor;
  *&retstr->course = *&self->rawCoordinate.longitude;
  *&retstr->timestamp = v5;
  v6 = *&self->courseAccuracy;
  *&retstr->suitability = *&self->speedAccuracy;
  *&retstr->coordinate.longitude = v6;
  return self;
}

- (void)setCurrentLocation:(CLDaemonLocation *)location
{
  v3 = *&location->suitability;
  *&self->_currentLocation.coordinate.longitude = *&location->coordinate.longitude;
  *&self->_currentLocation.suitability = v3;
  v4 = *&location->altitude;
  v5 = *&location->speed;
  v6 = *&location->course;
  *&self->_currentLocation.timestamp = *&location->timestamp;
  *&self->_currentLocation.course = v6;
  *&self->_currentLocation.speed = v5;
  *&self->_currentLocation.altitude = v4;
  v7 = *&location->lifespan;
  rawCoordinate = location->rawCoordinate;
  v9 = *&location->rawCourse;
  *&self->_currentLocation.integrity = *&location->integrity;
  *&self->_currentLocation.rawCourse = v9;
  self->_currentLocation.rawCoordinate = rawCoordinate;
  *&self->_currentLocation.lifespan = v7;
}

- (CLDaemonLocation)nMinusOneStateChangeLocation
{
  *&retstr->integrity = *&self[2].suitability;
  v3 = *(&self[1].course + 4);
  v4 = *(&self[1].speed + 4);
  *&retstr->suitability = *(&self[1].altitude + 4);
  *&retstr->coordinate.longitude = v4;
  v5 = *&self[1].rawReferenceFrame;
  v6 = *(&self[1].ellipsoidalAltitude + 4);
  v7 = *(&self[1].rawCoordinate + 4);
  *&retstr->lifespan = *(&self[1].rawCourse + 4);
  retstr->rawCoordinate = v5;
  *&retstr->rawCourse = v6;
  v8 = *(&self[1].timestamp + 4);
  v9 = *(&self[1].lifespan + 4);
  *&retstr->altitude = v3;
  *&retstr->speed = v8;
  *&retstr->course = v9;
  *&retstr->timestamp = v7;
  return self;
}

- (void)setNMinusOneStateChangeLocation:(CLDaemonLocation *)location
{
  v3 = *&location->suitability;
  *(&self->_currentLocation.fromSimulationController + 4) = *&location->coordinate.longitude;
  *(&self->_currentLocation.signalEnvironmentType + 1) = v3;
  v4 = *&location->altitude;
  v5 = *&location->speed;
  v6 = *&location->timestamp;
  *(&self->_nMinusOneStateChangeLocation.verticalAccuracy + 4) = *&location->course;
  *(&self->_nMinusOneStateChangeLocation.speedAccuracy + 4) = v6;
  *(&self->_nMinusOneStateChangeLocation.horizontalAccuracy + 4) = v5;
  *(&self->_nMinusOneStateChangeLocation.coordinate + 4) = v4;
  v7 = *&location->lifespan;
  rawCoordinate = location->rawCoordinate;
  v9 = *&location->rawCourse;
  *&self->_nMinusOneStateChangeLocation.rawCoordinate.longitude = *&location->integrity;
  *(&self->_nMinusOneStateChangeLocation.confidence + 1) = rawCoordinate;
  *(&self->_nMinusOneStateChangeLocation.type + 1) = v9;
  *(&self->_nMinusOneStateChangeLocation.courseAccuracy + 4) = v7;
}

- (CLDaemonLocation)nMinusTwoStateChangeLocation
{
  v3 = *&self[2].rawCourse;
  *&retstr->lifespan = self[2].rawCoordinate;
  retstr->rawCoordinate = v3;
  *&retstr->rawCourse = *&self[2].referenceFrame;
  v4 = *&self[2].course;
  *&retstr->altitude = *&self[2].speed;
  *&retstr->speed = v4;
  v5 = *&self[2].lifespan;
  *&retstr->course = *&self[2].timestamp;
  *&retstr->timestamp = v5;
  v6 = *&self[2].altitude;
  *&retstr->suitability = *&self[2].coordinate.longitude;
  *&retstr->coordinate.longitude = v6;
  *&retstr->integrity = *(&self[2].signalEnvironmentType + 1);
  return self;
}

- (void)setNMinusTwoStateChangeLocation:(CLDaemonLocation *)location
{
  v3 = *&location->coordinate.longitude;
  *&self->_nMinusOneStateChangeLocation.floor = *&location->suitability;
  *&self->_nMinusOneStateChangeLocation.signalEnvironmentType = v3;
  v4 = *&location->altitude;
  v5 = *&location->speed;
  v6 = *&location->timestamp;
  *&self->_nMinusTwoStateChangeLocation.horizontalAccuracy = *&location->course;
  *&self->_nMinusTwoStateChangeLocation.verticalAccuracy = v6;
  *&self->_nMinusOneStateChangeLocation.fromSimulationController = v4;
  self->_nMinusTwoStateChangeLocation.coordinate = v5;
  v7 = *&location->lifespan;
  rawCoordinate = location->rawCoordinate;
  v9 = *&location->rawCourse;
  *(&self->_nMinusTwoStateChangeLocation.lifespan + 4) = *&location->integrity;
  *&self->_nMinusTwoStateChangeLocation.courseAccuracy = rawCoordinate;
  *&self->_nMinusTwoStateChangeLocation.confidence = v9;
  *&self->_nMinusTwoStateChangeLocation.speedAccuracy = v7;
}

- (id).cxx_construct
{
  *(self + 14) = 0xFFFF;
  *(self + 68) = 0;
  *(self + 60) = 0;
  *(self + 76) = xmmword_101C75BF0;
  __asm { FMOV            V1.2D, #-1.0 }

  *(self + 92) = _Q1;
  *(self + 108) = _Q1;
  *(self + 124) = _Q1;
  *(self + 35) = 0;
  *(self + 19) = 0;
  *(self + 20) = 0;
  *(self + 18) = 0xBFF0000000000000;
  *(self + 42) = 0;
  *(self + 172) = 0xBFF0000000000000;
  *(self + 45) = 0x7FFFFFFF;
  *(self + 24) = 0;
  *(self + 25) = 0;
  *(self + 23) = 0;
  *(self + 208) = 0;
  *(self + 53) = 0xFFFF;
  *(self + 27) = 0;
  *(self + 28) = 0;
  *(self + 232) = xmmword_101C75BF0;
  *(self + 248) = _Q1;
  *(self + 33) = 0xBFF0000000000000;
  *(self + 17) = _Q1;
  *(self + 36) = 0xBFF0000000000000;
  *(self + 74) = 0;
  *(self + 300) = 0xBFF0000000000000;
  *(self + 81) = 0;
  *(self + 308) = 0;
  *(self + 316) = 0;
  *(self + 41) = 0xBFF0000000000000;
  *(self + 84) = 0x7FFFFFFF;
  *(self + 356) = 0;
  *(self + 340) = 0;
  *(self + 348) = 0;
  *(self + 364) = 0;
  *(self + 92) = 0xFFFF;
  *(self + 380) = 0;
  *(self + 372) = 0;
  *(self + 388) = xmmword_101C75BF0;
  *(self + 404) = _Q1;
  *(self + 420) = _Q1;
  *(self + 436) = _Q1;
  *(self + 113) = 0;
  *(self + 120) = 0;
  *(self + 57) = 0xBFF0000000000000;
  *(self + 58) = 0;
  *(self + 59) = 0;
  *(self + 484) = 0xBFF0000000000000;
  *(self + 123) = 0x7FFFFFFF;
  *(self + 62) = 0;
  *(self + 63) = 0;
  *(self + 64) = 0;
  *(self + 520) = 0;
  return self;
}

@end