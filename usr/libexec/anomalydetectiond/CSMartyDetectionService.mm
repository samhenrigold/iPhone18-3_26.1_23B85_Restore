@interface CSMartyDetectionService
- (BOOL)coinflip:(double)coinflip;
- (BOOL)getForceDecision:(id)decision;
- (BOOL)shouldKeepCrashTTR;
- (BOOL)shouldKeepTriggerTTR;
- (CSMartyDetectionService)initWithSilo:(id)silo vendor:(id)vendor aopService:(void *)service sosStateMachine:(id)machine;
- (float)querySamplingRate:(id)rate withDefault:(float)default;
- (id).cxx_construct;
- (id)userInfoUploader;
- (int)curationSampling;
- (int)getDeescalationPath;
- (int)performanceSampling;
- (int64_t)daysSinceTimestamp:(double)timestamp;
- (void)_updateArmingTimes;
- (void)abortSession;
- (void)cacheUserInfo;
- (void)clearCAStats;
- (void)decideToShowTTR;
- (void)didReceiveSOSAck:(int64_t)ack forMode:(unsigned __int8)mode;
- (void)didReceiveSOSStatusUpdate:(id)update forMode:(unsigned __int8)mode;
- (void)dumpSample:(id)sample;
- (void)escalateUI;
- (void)feedAccel800:(id)accel800;
- (void)feedAccel:(id)accel;
- (void)feedCompanionStatus:(id)status;
- (void)feedDeviceMotion:(id)motion;
- (void)feedGPS:(id)s;
- (void)feedHertzSample:(id)sample;
- (void)feedHgAccel:(id)accel;
- (void)feedKappaTrigger:(id)trigger;
- (void)feedLocationManagerResults:(id)results;
- (void)feedMag:(id)mag;
- (void)feedPressure:(id)pressure;
- (void)feedRemoteSample:(id)sample;
- (void)feedRoads:(id)roads;
- (void)feedSortedSamples:(id)samples;
- (void)feedSoundPressureLevel:(id)level;
- (void)feedSteps:(id)steps;
- (void)feedTrustedAudioResult:(id)result;
- (void)finishAnomalyEvent;
- (void)initStateMachine;
- (void)onCloseEpoch:(unint64_t)epoch epochNumber:(int)number;
- (void)onCompanionMessage:(int)message data:(id)data receivedTimestamp:(double)timestamp;
- (void)onCompanionStatusUpdate:(BOOL)update pairedDevice:(id)device updatedTimestamp:(double)timestamp;
- (void)printSamplingDefaults;
- (void)receiveCompanionTrigger:(id)trigger;
- (void)receiveDeviceInfo:(id)info;
- (void)requestCompanionUpload:(int)upload;
- (void)requestDeviceInfo;
- (void)resetSession;
- (void)sendCompanionTrigger:(id)trigger;
- (void)sendCompanionUUID:(id)d;
- (void)sendDeviceInfo;
- (void)sendRemoteSampleToCompanion:(unint64_t)companion epochTs:(unint64_t)ts epochNumber:(int)number;
- (void)sendSessionInfoToCoreAnalytics;
- (void)setRecording:(id)recording withUUID:(id)d;
- (void)sosActivated;
- (void)start;
- (void)stop:(unint64_t)stop;
- (void)stopSession:(unint64_t)session;
- (void)triggered:(id)triggered;
- (void)updateMartyUserInfoWithInfo:(id)info;
- (void)uploadUserInfoToCoreAnalyticsWithHandler:(id)handler;
@end

@implementation CSMartyDetectionService

- (float)querySamplingRate:(id)rate withDefault:(float)default
{
  v5 = [(CSPersistentConfiguration *)self->_persist getFloatDefault:rate];
  result = v5.var0.var1;
  if ((*&v5 & &_mh_execute_header) == 0)
  {
    return default;
  }

  return result;
}

- (void)resetSession
{
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v3 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "resetSession Marty", v4, 2u);
  }

  [(CSMartyDetectionService *)self sendSessionInfoToCoreAnalytics];
  operator new();
}

- (void)start
{
  v3 = +[CSPower sharedInstance];
  [v3 powerlogActivity:7 event:1 isActive:CFAbsoluteTimeGetCurrent()];

  v4 = [(CSPersistentConfiguration *)self->_persist getIntegerDefault:@"MaxSessionTimeInSeconds"];
  if (v4.var0.var1 <= 0x78u)
  {
    var1 = v4.var0.var1;
  }

  else
  {
    var1 = 600;
  }

  if ((*&v4 & &_mh_execute_header) != 0)
  {
    v6 = var1;
  }

  else
  {
    v6 = 120;
  }

  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v7 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "configuring flow controller to have a max session of %d seconds", v8, 8u);
  }

  operator new();
}

- (void)initStateMachine
{
  v3 = objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1002DD2F4;
  v19[3] = &unk_1004316E0;
  v19[4] = self;
  v4 = objc_retainBlock(v19);
  idleState = self->_idleState;
  self->_idleState = v4;

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1002DD360;
  v18[3] = &unk_1004316E0;
  v18[4] = self;
  v6 = objc_retainBlock(v18);
  readingState = self->_readingState;
  self->_readingState = v6;

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1002DD5A8;
  v17[3] = &unk_1004316E0;
  v17[4] = self;
  v8 = objc_retainBlock(v17);
  waitForSOSState = self->_waitForSOSState;
  self->_waitForSOSState = v8;

  v10 = [CSHSMObjc alloc];
  if (qword_100456828 != -1)
  {
    sub_1002E6708();
  }

  v11 = qword_100456830;
  v12 = [(CSHSMObjc *)v10 initWithCategory:v11 state:self->_idleState];
  hsm = self->_hsm;
  self->_hsm = v12;

  newTimer = [(CLSilo *)self->_silo newTimer];
  triggerTimer = self->_triggerTimer;
  self->_triggerTimer = newTimer;

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1002DD7F0;
  v16[3] = &unk_100431708;
  v16[4] = self;
  [(CLTimer *)self->_triggerTimer setHandler:v16];

  objc_destroyWeak(&location);
}

- (void)abortSession
{
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v3 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "aborting marty session", v4, 2u);
  }

  CSAOPSvc::suppressTriggers(self->_aop, 1);
  CSAOPSvc::stopDetection(self->_aop);
  self->_aborted = 1;
  [(CSHSMObjc *)self->_hsm signal:6 data:0];
}

- (void)triggered:(id)triggered
{
  triggeredCopy = triggered;
  v5 = [(CSPersistentConfiguration *)self->_persist getBooleanDefault:@"MartyForceTriggersAreCycling"];
  if ((v5 & 0x100) != 0)
  {
    *([triggeredCopy c_struct] + 94) = v5;
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v6 = qword_100456830;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = *([triggeredCopy c_struct] + 94);
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "forcing marty cycling mode %d", buf, 8u);
    }
  }

  if (self->_uuid)
  {
    if (qword_100456828 == -1)
    {
      goto LABEL_9;
    }
  }

  else
  {
    sub_1002E6730();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 457, "[CSMartyDetectionService triggered:]");
    __break(1u);
  }

  sub_1002E6708();
LABEL_9:
  v8 = qword_100456830;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = *([triggeredCopy c_struct] + 46);
    v10 = *([triggeredCopy c_struct] + 94);
    *buf = 67109376;
    *&buf[4] = v9;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "marty path value %d type %d", buf, 0xEu);
  }

  [(CSHSMObjc *)self->_hsm signal:1 data:0];
  v11 = *self->_details.__ptr_;
  if (v11 == 0.0)
  {
    if (*([triggeredCopy c_struct] + 94) == 1)
    {
      *(self->_details.__ptr_ + 8) = 1;
      v12 = 24;
    }

    else
    {
      v12 = 28;
    }

    ++*(self->_userInfoStats.__ptr_ + v12);
    *self->_details.__ptr_ = CFAbsoluteTimeGetCurrent();
    [(CSMartyDetectionService *)self requestDeviceInfo];
    [(CSMartyDetectionService *)self sendCompanionUUID:self->_uuid];
  }

  if ((*([triggeredCopy c_struct] + 46) & 4) == 0 && (*(objc_msgSend(triggeredCopy, "c_struct") + 46) & 0x10) == 0)
  {
    *self->_sessionInfoStats.__ptr_ = 1;
  }

  -[CSSafetySOSStateMachine feedPotentialEventWithTimestamp:forMode:martyIsBicycle:](self->_sosSM, "feedPotentialEventWithTimestamp:forMode:martyIsBicycle:", *([triggeredCopy c_struct] + 1), 2, *(self->_details.__ptr_ + 8));
  if ((*([triggeredCopy c_struct] + 46) & 9) != 0)
  {
    [(CSMartyDetectionService *)self sendCompanionTrigger:triggeredCopy];
  }

  if (qword_100456828 != -1)
  {
    sub_1002E6708();
  }

  v13 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(re)start the flow controller", buf, 2u);
  }

  CLKappaAlgFlowController::start(self->fFlowControl.__ptr_, *([triggeredCopy c_struct] + 1));
  if (*([triggeredCopy c_struct] + 46) & 8) != 0 || (*(objc_msgSend(triggeredCopy, "c_struct") + 46))
  {
    c_struct = [triggeredCopy c_struct];
    v15 = 56;
    if (c_struct[94])
    {
      v15 = 52;
    }

    v16 = 48;
    if (c_struct[94])
    {
      v16 = 40;
    }

    ++*(self->_sessionInfoStats.__ptr_ + v15);
    ++*(self->_userInfoStats.__ptr_ + v16);
  }

  if ((*([triggeredCopy c_struct] + 46) & 4) != 0)
  {
    c_struct2 = [triggeredCopy c_struct];
    ptr = self->_sessionInfoStats.__ptr_;
    if (c_struct2[94] == 1)
    {
      *(ptr + 14) = 1;
      v19 = 44;
    }

    else
    {
      *(ptr + 15) = 1;
      v19 = 52;
    }

    ++*(self->_userInfoStats.__ptr_ + v19);
  }

  *(self->_sessionInfoStats.__ptr_ + 8) |= *([triggeredCopy c_struct] + 92);
  *(self->_sessionInfoStats.__ptr_ + 15) |= *([triggeredCopy c_struct] + 93);
}

- (void)sosActivated
{
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v3 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
  {
    inSession = self->_inSession;
    mslRecording = self->_mslRecording;
    v8[0] = 67109376;
    v8[1] = inSession;
    v9 = 2048;
    v10 = mslRecording;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sosActivated _inSession %d _mslRecording %p", v8, 0x12u);
  }

  if (self->_inSession && (v6 = self->_mslRecording) != 0)
  {
    [(CSMSLDataRecording *)v6 updateMetadata:&off_10043F200];
  }

  else
  {
    v7 = [[CSStudiesServerUploadOutOfBandMetadata alloc] initWithLookingBack:&off_10043F228 keyValuePairs:900.0];
    [(CSStudiesServerUploader *)self->_uploader addOutOfBandMetadata:v7 error:0];
  }
}

- (void)escalateUI
{
  v3 = [(CSPersistentConfiguration *)self->_persist getBooleanDefault:@"MartyShouldEscalateUI"];
  if (v3 & 0x100) != 0 && (v3)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v4 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "escalating UI", buf, 2u);
    }

    *(self->_details.__ptr_ + 44) = 1;
    self->_SOSInProgress = 1;
    [(CSSafetySOSStateMachine *)self->_sosSM feedDetectionDecision:1 uuid:self->_uuid forMode:2];
  }

  else
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v5 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "refused to escalating UI", v6, 2u);
    }
  }
}

- (void)onCloseEpoch:(unint64_t)epoch epochNumber:(int)number
{
  v5 = +[CSTimeManager SPU_estimate_current_timestamp];
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v6 = qword_100456830;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240704;
    numberCopy = number;
    v56 = 2050;
    *v57 = epoch;
    *&v57[8] = 2050;
    v58 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "close epoch %{public}d aop timestamp %{public}llu, %{public}llu", buf, 0x1Cu);
  }

  ptr = self->fFlowControl.__ptr_;
  v8 = *(ptr + 56);
  v9 = *(ptr + 57);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v8 + 160))(&v48);
  sub_1002D6B24(&v48, &v50);
  if (v49)
  {
    sub_100009A48(v49);
  }

  v10 = v50;
  v11 = *(v50 + 40);
  if (v11)
  {
    *(self->_details.__ptr_ + 2) = v11;
  }

  if (*(v10 + 56) >= 1)
  {
    *(self->_details.__ptr_ + 40) = 1;
  }

  v12 = [(CSMartyDetectionService *)self getForceDecision:@"MartyForceEarlyCrashDetectorDecision"];
  v13 = v50;
  if (v12)
  {
    if ((*(v50 + 64) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if ((*(v50 + 64) & 1) == 0)
  {
    if ((*(v50 + 65) & 1) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_18;
  }

  *(self->_details.__ptr_ + 12) |= 1u;
LABEL_18:
  v14 = self->_details.__ptr_;
  if (*(v13 + 65) == 1)
  {
    *(v14 + 12) |= 2u;
  }

  v15 = 48;
  if (*(v14 + 8))
  {
    v15 = 44;
  }

  ++*(self->_sessionInfoStats.__ptr_ + v15);
  if ((*(v14 + 41) & 1) == 0)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v16 = qword_100456830;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "requesting companion upload for early crash", buf, 2u);
    }

    [(CSMartyDetectionService *)self requestCompanionUpload:3];
    v14 = self->_details.__ptr_;
    v13 = v50;
  }

  *(v14 + 41) = 1;
LABEL_29:
  if (*(v13 + 49) == 1 && (*(self->_details.__ptr_ + 52) & 1) == 0)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v17 = qword_100456830;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "lending companion punch thru", buf, 2u);
    }

    *(self->_details.__ptr_ + 52) = 1;
    v18 = sub_1000197C8();
    [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v18 type:402];
  }

  if ([(CSMartyDetectionService *)self getForceDecision:@"MartyForceAlphaCrashDetectorDecision"]|| *(v50 + 56))
  {
    v19 = self->_details.__ptr_;
    v20 = 40;
    if (*(v19 + 8))
    {
      v20 = 36;
    }

    ++*(self->_sessionInfoStats.__ptr_ + v20);
    if ((*(v19 + 40) & 1) == 0)
    {
      if (qword_100456828 != -1)
      {
        sub_1002E6708();
      }

      v21 = qword_100456830;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "requesting companion upload for alpha crash", buf, 2u);
      }

      [(CSMartyDetectionService *)self requestCompanionUpload:1];
      v19 = self->_details.__ptr_;
    }

    *(v19 + 40) = 1;
  }

  if ([(CSMartyDetectionService *)self getForceDecision:@"MartyForceSevereCrashDetectorDecision"]|| *(v50 + 48) == 1)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v22 = qword_100456830;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = *(self->_details.__ptr_ + 42);
      *buf = 67109120;
      numberCopy = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "_details->severeCrashDetected %d", buf, 8u);
    }

    if ((*(self->_details.__ptr_ + 42) & 1) == 0)
    {
      if (qword_100456828 != -1)
      {
        sub_1002E6708();
      }

      v24 = qword_100456830;
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "escalating UI", buf, 2u);
      }

      [(CSMartyDetectionService *)self escalateUI];
      v25 = v50;
      v26 = self->_details.__ptr_;
      *(v26 + 4) = *(v50 + 32);
      *(v26 + 42) = 1;
      *(v26 + 43) = *(v25 + 52);
      v27 = self->_sessionInfoStats.__ptr_;
      if (*(v26 + 8) == 1)
      {
        *(v27 + 22) = 1;
      }

      else
      {
        *(v27 + 23) = 1;
      }

      if (qword_100456828 != -1)
      {
        sub_1002E6708();
      }

      v28 = qword_100456830;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "requesting companion upload for severe crash", buf, 2u);
      }

      [(CSMartyDetectionService *)self requestCompanionUpload:2];
    }
  }

  if (qword_100456828 != -1)
  {
    sub_1002E6708();
  }

  v29 = qword_100456830;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    v30 = *(v50 + 49);
    v31 = *(self->_details.__ptr_ + 52);
    v32 = *(v50 + 50);
    v33 = *(v50 + 48);
    v34 = *(v50 + 52);
    *buf = 67110144;
    numberCopy = v30;
    v56 = 1024;
    *v57 = v31;
    *&v57[4] = 1024;
    *&v57[6] = v32;
    LOWORD(v58) = 1024;
    *(&v58 + 2) = v33;
    HIWORD(v58) = 1024;
    v59 = v34;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "punch thru early %d lend %d decided %d severe %d cand %d", buf, 0x20u);
  }

  if (*(v50 + 50) == 1 && (*(v50 + 48) & 1) == 0)
  {
    v35 = *(v50 + 52);
  }

  else
  {
    v35 = 1;
  }

  v36 = self->_details.__ptr_;
  if (*(v36 + 52) == 1 && ((v35 | *(v36 + 53)) & 1) == 0)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v37 = qword_100456830;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "retracting companion punch thru", buf, 2u);
    }

    *(self->_details.__ptr_ + 53) = 1;
    v38 = sub_100019A7C();
    [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v38 type:403];

    v36 = self->_details.__ptr_;
  }

  mslRecording = self->_mslRecording;
  v52[0] = @"crashTimestamp";
  v40 = [NSNumber numberWithDouble:*(v36 + 2)];
  v53[0] = v40;
  v52[1] = @"severeCrashDetectorDecision";
  v41 = [NSNumber numberWithBool:*(self->_details.__ptr_ + 42)];
  v53[1] = v41;
  v52[2] = @"severeCrashTimestamp";
  v42 = [NSNumber numberWithDouble:*(self->_details.__ptr_ + 4)];
  v53[2] = v42;
  v52[3] = @"alphaDetectorDecision";
  v43 = [NSNumber numberWithBool:*(self->_details.__ptr_ + 40)];
  v53[3] = v43;
  v52[4] = @"escalationCandidateSuppressed";
  v44 = [NSNumber numberWithBool:*(self->_details.__ptr_ + 43)];
  v53[4] = v44;
  v45 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:5];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v45];

  [(CSMartyDetectionService *)self sendRemoteSampleToCompanion:v5 epochTs:epoch epochNumber:number];
  if (v51)
  {
    sub_100009A48(v51);
  }

  if (v9)
  {
    sub_100009A48(v9);
  }
}

- (void)sendRemoteSampleToCompanion:(unint64_t)companion epochTs:(unint64_t)ts epochNumber:(int)number
{
  ptr = self->fFlowControl.__ptr_;
  if (ptr)
  {
    CLKappaAlgFlowController::createRemoteSample(ptr, &v11);
    if (v14 == 1)
    {
      v11.i32[2] = number;
      companionCopy = companion;
      tsCopy = ts;
      v10 = sub_1000193B4(&v11);
      [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v10 type:401];
    }
  }
}

- (BOOL)shouldKeepTriggerTTR
{
  v3 = [(CSPersistentConfiguration *)self->_persist getFloatDefault:@"MartyTTRTriggerOnlyPopupRate"];
  if ((*&v3 & &_mh_execute_header) != 0)
  {
    var1 = v3.var0.var1;
  }

  else
  {
    var1 = 0.0;
  }

  [(CSPersistentConfiguration *)self->_persist doubleForKey:@"MartyLastTTRTriggerTimestamp"];
  v5 = [(CSMartyDetectionService *)self daysSinceTimestamp:?];
  v6 = v5;
  if (v5 >= 1 && [(CSMartyDetectionService *)self coinflip:var1])
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v7 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109376;
      v12 = v6;
      v13 = 2048;
      v14 = var1;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[TTR] Trigger chosen TTR days %d, rate: %4.2f", &v11, 0x12u);
    }

    return 1;
  }

  else
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v9 = qword_100456830;
    v10 = os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v11 = 67109376;
      v12 = v6;
      v13 = 2048;
      v14 = var1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[TTR] Trigger not chosen TTR days %d, rate: %4.2f", &v11, 0x12u);
      return 0;
    }
  }

  return result;
}

- (BOOL)shouldKeepCrashTTR
{
  v3 = [(CSPersistentConfiguration *)self->_persist getFloatDefault:@"MartyTTREarlyCrashPopupRate"];
  [(CSPersistentConfiguration *)self->_persist doubleForKey:@"MartyLastTTREarlyCrashTimestamp"];
  v4 = [(CSMartyDetectionService *)self daysSinceTimestamp:?];
  v5 = v4;
  if ((*&v3 & &_mh_execute_header) != 0)
  {
    var1 = v3.var0.var1;
  }

  else
  {
    var1 = 1.0;
  }

  if (v4 >= 1 && [(CSMartyDetectionService *)self coinflip:var1])
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v7 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 67109376;
      v12 = v5;
      v13 = 2048;
      v14 = var1;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[TTR] EarlyCrash alert cooldown expired daysSinceLast,%d,rate,%4.2f", &v11, 0x12u);
    }

    return 1;
  }

  else
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v9 = qword_100456830;
    v10 = os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT);
    result = 0;
    if (v10)
    {
      v11 = 67109376;
      v12 = v5;
      v13 = 2048;
      v14 = var1;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[TTR] EarlyCrash alert still cooling down daysSinceLast,%d,rate,%4.2f", &v11, 0x12u);
      return 0;
    }
  }

  return result;
}

- (int)getDeescalationPath
{
  ptr = self->fFlowControl.__ptr_;
  if (!ptr)
  {
    sub_1002E6844(self, a2);
  }

  v3 = *(ptr + 56);
  v4 = *(ptr + 57);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v3 + 160))(&v7);
  sub_1002D6B24(&v7, &v9);
  if (v8)
  {
    sub_100009A48(v8);
  }

  v5 = *(v9 + 148);
  if (v10)
  {
    sub_100009A48(v10);
  }

  if (v4)
  {
    sub_100009A48(v4);
  }

  return v5;
}

- (void)stopSession:(unint64_t)session
{
  if (self->_detectionEvent >= 2)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v3 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "subsequent detection events cannot take tokens or update metadata", buf, 2u);
    }

    return;
  }

  shouldUploadRecording = [(CSMartyDetectionService *)self shouldUploadRecording];
  mslRecording = self->_mslRecording;
  v85[0] = @"algsEndTimestamp";
  v8 = [NSNumber numberWithUnsignedLongLong:session];
  v86[0] = v8;
  v85[1] = @"curationAlgBitmap";
  v9 = [NSNumber numberWithUnsignedChar:*(self->_details.__ptr_ + 9)];
  v86[1] = v9;
  v85[2] = @"samplingBitmap";
  v10 = [NSNumber numberWithUnsignedChar:shouldUploadRecording];
  v86[2] = v10;
  v85[3] = @"shouldUploadIndependentlyOfSOS";
  v11 = [NSNumber numberWithBool:shouldUploadRecording != 0];
  v86[3] = v11;
  v85[4] = @"deescalationPath";
  v12 = [NSNumber numberWithInt:[(CSMartyDetectionService *)self getDeescalationPath]];
  v86[4] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v86 forKeys:v85 count:5];
  [(CSMSLDataRecording *)mslRecording updateMetadata:v13];

  if (shouldUploadRecording && self->_mslRecording && self->_companionUUID.__ptr_)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v14 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "requesting companion to upload", buf, 2u);
    }

    [(CSMartyDetectionService *)self requestCompanionUpload:0];
  }

  MartyToken = getMartyToken(0);
  MartyAlphaCrashToken = getMartyAlphaCrashToken(0);
  MartyEarlyCrashToken = getMartyEarlyCrashToken(0);
  MartyPunchThruToken = getMartyPunchThruToken(0);
  ptr = self->_details.__ptr_;
  if (*(ptr + 41))
  {
    v20 = 1;
  }

  else
  {
    v20 = *(ptr + 46);
  }

  if (*(ptr + 40))
  {
    v21 = 1;
  }

  else
  {
    v21 = *(ptr + 45);
  }

  if (*(ptr + 42))
  {
    v22 = 1;
  }

  else
  {
    v22 = *(ptr + 47);
  }

  ttrManagedMsl = [(CSMSLDataRecording *)self->_mslRecording ttrManagedMsl];
  v25 = ttrManagedMsl;
  if (((MartyPunchThruToken > 0) & v22) == 1)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v26 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "escalation, using punchthru token", buf, 2u);
    }

    getMartyPunchThruToken(1);
LABEL_47:
    v30 = 0;
    v31 = 1;
    goto LABEL_48;
  }

  if (((MartyEarlyCrashToken > 0) & v20) == 1)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v27 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "acquiring early crash token", buf, 2u);
    }

    getMartyEarlyCrashToken(1);
    goto LABEL_47;
  }

  if (((MartyAlphaCrashToken > 0) & v21) == 1)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v28 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEBUG, "acquiring alpha crash token", buf, 2u);
    }

    getMartyAlphaCrashToken(1);
    goto LABEL_47;
  }

  if (MartyToken >= 1)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v29 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEBUG, "acquiring trigger token", buf, 2u);
    }

    getMartyToken(1);
    goto LABEL_47;
  }

  if (ttrManagedMsl)
  {
    v31 = 0;
    v30 = 0;
  }

  else
  {
    v72 = sub_1002DCCF8(ttrManagedMsl, v24);
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEBUG, "non-ttr collection stopping early", buf, 2u);
    }

    v31 = 0;
    v30 = 1;
  }

LABEL_48:
  v32 = self->_mslRecording;
  v83 = @"martyTokenAllocated";
  v33 = [NSNumber numberWithBool:v31];
  v84 = v33;
  v34 = [NSDictionary dictionaryWithObjects:&v84 forKeys:&v83 count:1];
  [(CSMSLDataRecording *)v32 updateMetadata:v34];

  if (!v25)
  {
    if (!v30)
    {
      goto LABEL_67;
    }

    goto LABEL_62;
  }

  if ((v22 & 1) == 0)
  {
    if ((v21 | v20))
    {
      shouldKeepCrashTTR = [(CSMartyDetectionService *)self shouldKeepCrashTTR];
      if (shouldKeepCrashTTR)
      {
        v35 = self->_details.__ptr_;
        if (v20)
        {
          v36 = 3;
        }

        else
        {
          v36 = 2;
        }

        goto LABEL_51;
      }

      v69 = sub_1002DCCF8(shouldKeepCrashTTR, v42);
      v70 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
      if (v31)
      {
        if (v70)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "[TTR] _mslRecording.shouldDeleteTTR = YES", buf, 2u);
        }

LABEL_88:

        [(CSMSLDataRecording *)self->_mslRecording setShouldDeleteTTR:1];
        goto LABEL_52;
      }

      if (v70)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "[TTR] alpha/early ttr not selected, stopping early", buf, 2u);
      }
    }

    else
    {
      shouldKeepTriggerTTR = [(CSMartyDetectionService *)self shouldKeepTriggerTTR];
      if (shouldKeepTriggerTTR)
      {
        v35 = self->_details.__ptr_;
        v36 = 1;
        goto LABEL_51;
      }

      v69 = sub_1002DCCF8(shouldKeepTriggerTTR, v68);
      v71 = os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG);
      if (v31)
      {
        if (v71)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "[TTR] _mslRecording.shouldDeleteTTR = YES", buf, 2u);
        }

        goto LABEL_88;
      }

      if (v71)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "[TTR] trigger ttr not selected, stopping early", buf, 2u);
      }
    }

    LOBYTE(v30) = 1;
    goto LABEL_52;
  }

  v35 = self->_details.__ptr_;
  v36 = 4;
LABEL_51:
  *(v35 + 7) = v36;
LABEL_52:
  v37 = +[CSPermissions sharedInstance];
  isAuthorizedToCollectData = [v37 isAuthorizedToCollectData];

  if (v30 & 1 | ((isAuthorizedToCollectData & 1) == 0) || ((v31 ^ 1) & 1) != 0)
  {
    [(CSMSLDataRecording *)self->_mslRecording setShouldUpload:0];
    if ((v30 & 1) == 0)
    {
      goto LABEL_67;
    }

LABEL_62:
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v43 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "forcefully stopping aop collection", buf, 2u);
    }

    CSAOPSvc::forceStopCollection(self->_aop);
    goto LABEL_67;
  }

  uUIDString = [(NSUUID *)self->_uuid UUIDString];
  v40 = [CSAnomalyEventService generateMslUrl:uUIDString andSessionType:2 ttrManagedMsl:0];
  [(CSMSLDataRecording *)self->_mslRecording setUrlToCopyToOnStop:v40];

LABEL_67:
  v44 = self->_companionDeviceInfo.__ptr_;
  if (v44)
  {
    *(self->_sessionInfoStats.__ptr_ + 24) = 1;
    v45 = self->_mslRecording;
    v82[0] = &__kCFBooleanTrue;
    v81[0] = @"companionConnected";
    v81[1] = @"companionDeviceModel";
    v46 = (v44 + 8);
    if (*(v44 + 31) < 0)
    {
      v46 = *v46;
    }

    v47 = [NSString stringWithUTF8String:v46];
    v82[1] = v47;
    v81[2] = @"companionKappaDeviceType";
    v73 = [NSNumber numberWithInt:*(self->_companionDeviceInfo.__ptr_ + 8)];
    v82[2] = v73;
    v81[3] = @"companionMartyDeviceType";
    v48 = [NSNumber numberWithInt:*(self->_companionDeviceInfo.__ptr_ + 9)];
    v82[3] = v48;
    v81[4] = @"companionKappaTokenCount";
    v49 = [NSNumber numberWithInt:*(self->_companionDeviceInfo.__ptr_ + 10)];
    v82[4] = v49;
    v81[5] = @"companionMartyTokenCount";
    v50 = [NSNumber numberWithInt:*(self->_companionDeviceInfo.__ptr_ + 11)];
    v82[5] = v50;
    v81[6] = @"companionKappaArmedSeconds";
    v51 = [NSNumber numberWithInt:*(self->_companionDeviceInfo.__ptr_ + 12)];
    v82[6] = v51;
    v81[7] = @"companionMartyArmedSeconds";
    v52 = [NSNumber numberWithInt:*(self->_companionDeviceInfo.__ptr_ + 13)];
    v82[7] = v52;
    v81[8] = @"companionEnableMode";
    v53 = [NSNumber numberWithInt:*(self->_companionDeviceInfo.__ptr_ + 14)];
    v82[8] = v53;
    v54 = [NSDictionary dictionaryWithObjects:v82 forKeys:v81 count:9];
    [(CSMSLDataRecording *)v45 updateMetadata:v54];
  }

  v55 = self->_companionUUID.__ptr_;
  if (v55)
  {
    v56 = self->_mslRecording;
    v77[0] = @"companionUUID";
    if (*(v55 + 23) < 0)
    {
      v55 = *v55;
    }

    uUIDString3 = [NSString stringWithUTF8String:v55];
    v77[1] = @"collectionUUID";
    v78[0] = uUIDString3;
    uUIDString2 = [(NSUUID *)self->_uuid UUIDString];
    v78[1] = uUIDString2;
    v59 = [NSDictionary dictionaryWithObjects:v78 forKeys:v77 count:2];
    [(CSMSLDataRecording *)v56 updateMetadata:v59];
  }

  else
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v60 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEBUG, "no companion marty collection", buf, 2u);
    }

    v61 = self->_mslRecording;
    v79 = @"collectionUUID";
    uUIDString3 = [(NSUUID *)self->_uuid UUIDString];
    v80 = uUIDString3;
    uUIDString2 = [NSDictionary dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    [(CSMSLDataRecording *)v61 updateMetadata:uUIDString2];
  }

  companionTriggerTime = self->_companionTriggerTime;
  if (companionTriggerTime != 0.0)
  {
    companionTriggerTime = [NSNumber numberWithDouble:*self->_details.__ptr_ - companionTriggerTime];
    stringValue = [companionTriggerTime stringValue];

    v65 = self->_mslRecording;
    v75 = @"deltaTrigger";
    v76 = stringValue;
    v66 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    [(CSMSLDataRecording *)v65 updateMetadata:v66];
  }
}

- (void)stop:(unint64_t)stop
{
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v5 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "stop session", buf, 2u);
  }

  CSAOPSvc::suppressTriggers(self->_aop, 1);
  CSAOPSvc::stopDetection(self->_aop);
  v6 = [(CSMartyDetectionService *)self stopSession:stop];
  if (!self->fFlowControl.__ptr_)
  {
    sub_1002E6970(v6, v7);
  }

  v8 = objc_initWeak(buf, self);
  newTimer = [(CLSilo *)self->_silo newTimer];
  sosTimer = self->_sosTimer;
  self->_sosTimer = newTimer;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002DFBD8;
  v12[3] = &unk_100431708;
  v12[4] = self;
  [(CLTimer *)self->_sosTimer setHandler:v12];
  [(CLTimer *)self->_sosTimer setNextFireDelay:0.0 interval:1.79769313e308];
  v11 = +[CSPower sharedInstance];
  [v11 powerlogActivity:7 event:0 isActive:CFAbsoluteTimeGetCurrent()];

  objc_destroyWeak(buf);
}

- (void)finishAnomalyEvent
{
  self->_detectionEvent = 0;
  [(CSMartyDetectionService *)self decideToShowTTR];
  operator new();
}

- (int64_t)daysSinceTimestamp:(double)timestamp
{
  v3 = [NSDate dateWithTimeIntervalSinceReferenceDate:timestamp];
  v4 = +[NSCalendar currentCalendar];
  v5 = +[NSDate now];
  v6 = [v4 components:16 fromDate:v3 toDate:v5 options:0];

  v7 = [v6 day];
  return v7;
}

- (void)decideToShowTTR
{
  if (!self->_aborted)
  {
    if (!self->_details.__ptr_ || ![(CSMSLDataRecording *)self->_mslRecording ttrManagedMsl]|| !*(self->_details.__ptr_ + 7))
    {
      return;
    }

    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v4 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(self->_details.__ptr_ + 7);
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[TTR] show TTR %d", buf, 8u);
    }

    uUIDString = [(NSUUID *)self->_uuid UUIDString];
    v7 = [CSAnomalyEventService generateMslUrl:uUIDString andSessionType:2 ttrManagedMsl:1];

    v8 = *(self->_details.__ptr_ + 7);
    if ((v8 - 2) >= 2)
    {
      if (v8 == 1)
      {
        persist = self->_persist;
        Current = CFAbsoluteTimeGetCurrent();
        v11 = @"MartyLastTTRTriggerTimestamp";
        goto LABEL_19;
      }

      if (v8)
      {
        goto LABEL_20;
      }

      sub_1002E6A9C();

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 959, "[CSMartyDetectionService decideToShowTTR]");
      __break(1u);
    }

    persist = self->_persist;
    Current = CFAbsoluteTimeGetCurrent();
    v11 = @"MartyLastTTREarlyCrashTimestamp";
LABEL_19:
    [(CSPersistentConfiguration *)persist setDouble:v11 forKey:Current];
LABEL_20:
    [(CSMSLDataRecording *)self->_mslRecording writeMetadataToDisk:v7];
    martyTTR = self->_martyTTR;
    uuid = self->_uuid;
    if (*(self->_details.__ptr_ + 7) != 4)
    {
      uUIDString2 = [(NSUUID *)uuid UUIDString];
      [(CSMartyTap2Radar *)martyTTR showTTRWithTriggerUUID:uUIDString2 ttrManagedFiles:[(CSMSLDataRecording *)self->_mslRecording ttrManagedMsl] withEventType:*(self->_details.__ptr_ + 7)];
LABEL_31:

      return;
    }

    uUIDString3 = [(NSUUID *)uuid UUIDString];
    ttrManagedMsl = [(CSMSLDataRecording *)self->_mslRecording ttrManagedMsl];
    v26 = 0;
    [(CSMartyTap2Radar *)martyTTR enqueueTTRWithTriggerUUID:uUIDString3 ttrManagedFiles:ttrManagedMsl error:&v26];
    uUIDString2 = v26;

    if (uUIDString2)
    {
      if (qword_100456828 != -1)
      {
        sub_1002E6708();
      }

      v19 = qword_100456830;
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      ttrManagedMsl2 = [(CSMSLDataRecording *)self->_mslRecording ttrManagedMsl];
      *buf = 138412546;
      *&buf[4] = uUIDString2;
      v28 = 1024;
      v29 = ttrManagedMsl2;
      v21 = "[TTR] Error enqueuing TTR: %@, ttrManaged,%d";
      v22 = v19;
      v23 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      v19 = sub_1002DCCF8(v17, v18);
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
LABEL_30:

        goto LABEL_31;
      }

      v24 = self->_uuid;
      ttrManagedMsl3 = [(CSMSLDataRecording *)self->_mslRecording ttrManagedMsl];
      *buf = 138412546;
      *&buf[4] = v24;
      v28 = 1024;
      v29 = ttrManagedMsl3;
      v21 = "[TTR] Enqueued TTR with UUID %@, ttrManaged,%d";
      v22 = v19;
      v23 = OS_LOG_TYPE_INFO;
    }

    _os_log_impl(&_mh_execute_header, v22, v23, v21, buf, 0x12u);
    goto LABEL_30;
  }

  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v2 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[TTR] do not send ttr on aborted sessions", buf, 2u);
  }
}

- (void)setRecording:(id)recording withUUID:(id)d
{
  recordingCopy = recording;
  dCopy = d;
  if (self->_hsm)
  {
    p_vtable = GPBRootObject.vtable;
    if (qword_100456828 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1002E6BB0();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 986, "[CSMartyDetectionService setRecording:withUUID:]");
    __break(1u);
  }

  sub_1002E66F4();
LABEL_3:
  v10 = qword_100456830;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(CSHSMObjc *)self->_hsm isIn:self->_idleState];
    v12 = [(CSHSMObjc *)self->_hsm isIn:self->_readingState];
    *buf = 67109376;
    *&buf[4] = v11;
    v15 = 1024;
    v16 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "set recording state %d %d", buf, 0xEu);
  }

  if ([(CSHSMObjc *)self->_hsm isIn:self->_idleState])
  {
    objc_storeStrong(&self->_mslRecording, recording);
    objc_storeStrong(&self->_uuid, d);
  }

  else
  {
    if (p_vtable[261] != -1)
    {
      sub_1002E6708();
    }

    v13 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "recording details may only be set in idle", buf, 2u);
    }
  }
}

- (CSMartyDetectionService)initWithSilo:(id)silo vendor:(id)vendor aopService:(void *)service sosStateMachine:(id)machine
{
  siloCopy = silo;
  vendorCopy = vendor;
  machineCopy = machine;
  objc_storeStrong(&self->_silo, silo);
  self->_aop = service;
  mslRecording = self->_mslRecording;
  self->_mslRecording = 0;

  self->_detectionEvent = 0;
  objc_storeStrong(&self->_sosSM, machine);
  v15 = +[CSPersistentConfiguration sharedConfiguration];
  persist = self->_persist;
  self->_persist = v15;

  v17 = [vendorCopy proxyForService:@"CSCompanionService"];
  companionProxy = self->_companionProxy;
  self->_companionProxy = v17;

  v19 = +[NSUserDefaults standardUserDefaults];
  defaults = self->_defaults;
  self->_defaults = v19;

  operator new();
}

- (void)dumpSample:(id)sample
{
  sampleCopy = sample;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sampleCopy;
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v5 = qword_100456830;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v6 = *[v4 c_struct];
    v7 = *([v4 c_struct] + 2);
    v8 = *([v4 c_struct] + 3);
    v9 = *([v4 c_struct] + 4);
    v61 = 134218752;
    v62 = v6;
    v63 = 2048;
    *v64 = v7;
    *&v64[8] = 2048;
    *v65 = v8;
    *&v65[8] = 2048;
    v66 = v9;
    v10 = "accel800 %llu x %.7f y %.7f z %.7f\n";
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = sampleCopy;
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v5 = qword_100456830;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v12 = *[v11 c_struct];
    v13 = *([v11 c_struct] + 2);
    v14 = *([v11 c_struct] + 3);
    v15 = *([v11 c_struct] + 4);
    v61 = 134218752;
    v62 = v12;
    v63 = 2048;
    *v64 = v13;
    *&v64[8] = 2048;
    *v65 = v14;
    *&v65[8] = 2048;
    v66 = v15;
    v10 = "hgaccel %llu x %.7f y %.7f z %.7f\n";
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = sampleCopy;
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v5 = qword_100456830;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v17 = *[v16 c_struct];
    v18 = *([v16 c_struct] + 2);
    v19 = *([v16 c_struct] + 3);
    v20 = *([v16 c_struct] + 4);
    v61 = 134218752;
    v62 = v17;
    v63 = 2048;
    *v64 = v18;
    *&v64[8] = 2048;
    *v65 = v19;
    *&v65[8] = 2048;
    v66 = v20;
    v10 = "accel %llu x %.7f y %.7f z %.7f\n";
LABEL_16:
    v21 = v5;
    v22 = 42;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, v10, &v61, v22);
    goto LABEL_18;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = sampleCopy;
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v5 = qword_100456830;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v24 = *([v23 c_struct] + 1);
    v61 = 134217984;
    v62 = v24;
    v10 = "trigger %llu\n";
    v21 = v5;
    v22 = 12;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = sampleCopy;
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v5 = qword_100456830;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v26 = *([v25 c_struct] + 42);
    v27 = *[v25 c_struct];
    v28 = *([v25 c_struct] + 1);
    v29 = *([v25 c_struct] + 2);
    v30 = *([v25 c_struct] + 3);
    v31 = *([v25 c_struct] + 4);
    v32 = *([v25 c_struct] + 5);
    v33 = *([v25 c_struct] + 6);
    v61 = 134219776;
    v62 = v26;
    v63 = 2048;
    *v64 = v27;
    *&v64[8] = 2048;
    *v65 = v28;
    *&v65[8] = 2048;
    v66 = v29;
    v67 = 2048;
    v68 = v30;
    v69 = 2048;
    v70 = v31;
    v71 = 2048;
    v72 = v32;
    v73 = 2048;
    v74 = v33;
    v10 = "dm6 %llu %.7f %.7f %.7f %.7f %.7f %.7f %.7f\n";
    v21 = v5;
    v22 = 82;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = sampleCopy;
    v5 = sub_1002DCCF8(v34, v35);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v36 = *([v34 c_struct] + 5);
    v37 = *([v34 c_struct] + 8);
    v38 = *[v34 c_struct];
    v39 = *([v34 c_struct] + 1);
    v40 = *([v34 c_struct] + 2);
    v41 = *([v34 c_struct] + 3);
    v61 = 134219264;
    v62 = v36;
    v63 = 2048;
    *v64 = v37;
    *&v64[8] = 2048;
    *v65 = v38;
    *&v65[8] = 2048;
    v66 = v39;
    v67 = 2048;
    v68 = v40;
    v69 = 2048;
    v70 = v41;
    v10 = "gps %llu %f %.7f %.7f %.7f %.7f\n";
    v21 = v5;
    v22 = 62;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v42 = sampleCopy;
    v5 = sub_1002DCCF8(v42, v43);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v44 = *[v42 c_struct];
    v45 = *([v42 c_struct] + 2);
    v46 = *([v42 c_struct] + 3);
    v47 = *([v42 c_struct] + 4);
    v48 = *([v42 c_struct] + 20);
    v61 = 134219008;
    v62 = v44;
    v63 = 1024;
    *v64 = v45;
    *&v64[4] = 1024;
    *&v64[6] = v46;
    *v65 = 2048;
    *&v65[2] = v47;
    LOWORD(v66) = 1024;
    *(&v66 + 2) = v48;
    v10 = "steps %llu %d %d %.7f %d\n";
    v21 = v5;
    v22 = 40;
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = sampleCopy;
    v5 = sub_1002DCCF8(v49, v50);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v51 = *[v49 c_struct];
    v52 = *([v49 c_struct] + 2);
    v61 = 134218240;
    v62 = v51;
    v63 = 2048;
    *v64 = v52;
    v10 = "SPL %llu %f\n";
    goto LABEL_45;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v53 = sampleCopy;
    v5 = sub_1002DCCF8(v53, v54);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v55 = *[v53 c_struct];
    v56 = *([v53 c_struct] + 2);
    v61 = 134218240;
    v62 = v55;
    v63 = 2048;
    *v64 = v56;
    v10 = "pressure %llu %f\n";
    goto LABEL_45;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_19;
  }

  v57 = sampleCopy;
  v5 = sub_1002DCCF8(v57, v58);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v59 = *[v57 c_struct];
    v60 = *([v57 c_struct] + 1);
    v61 = 134218240;
    v62 = v59;
    v63 = 2048;
    *v64 = v60;
    v10 = "roads %llu %f\n";
LABEL_45:
    v21 = v5;
    v22 = 22;
    goto LABEL_17;
  }

LABEL_18:

LABEL_19:
}

- (void)feedAccel800:(id)accel800
{
  accel800Copy = accel800;
  v5 = accel800Copy;
  if (accel800Copy)
  {
    CLKappaAlgFlowController::feedFastAccel(self->fFlowControl.__ptr_, accel800Copy);
  }

  else
  {
    sub_1002E6CC4();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1140, "[CSMartyDetectionService feedAccel800:]");
    __break(1u);
  }
}

- (void)feedHgAccel:(id)accel
{
  accelCopy = accel;
  v5 = accelCopy;
  if (accelCopy)
  {
    CLKappaAlgFlowController::feedHgAccel(self->fFlowControl.__ptr_, accelCopy);
  }

  else
  {
    sub_1002E6DD8();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1148, "[CSMartyDetectionService feedHgAccel:]");
    __break(1u);
  }
}

- (void)feedAccel:(id)accel
{
  accelCopy = accel;
  if (!accelCopy)
  {
    sub_1002E6EEC(0, v4);
  }
}

- (void)feedDeviceMotion:(id)motion
{
  motionCopy = motion;
  v5 = motionCopy;
  if (motionCopy)
  {
    CLKappaAlgFlowController::feedDM(self->fFlowControl.__ptr_, motionCopy);
  }

  else
  {
    sub_1002E7018();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1166, "[CSMartyDetectionService feedDeviceMotion:]");
    __break(1u);
  }
}

- (void)feedGPS:(id)s
{
  sCopy = s;
  v5 = sCopy;
  if (!sCopy)
  {
    sub_1002E712C();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1175, "[CSMartyDetectionService feedGPS:]");
    __break(1u);
LABEL_9:
    sub_1002E66F4();
    goto LABEL_4;
  }

  ptr = self->_details.__ptr_;
  v7 = *(ptr + 12);
  if (v7)
  {
    goto LABEL_7;
  }

  *(self->_sessionInfoStats.__ptr_ + 16) = *([(CSSPUGps *)sCopy c_struct]+ 32);
  if (qword_100456828 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v8 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
  {
    v9 = *(self->_sessionInfoStats.__ptr_ + 16);
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "SessionInfo signal %d", buf, 8u);
  }

  ptr = self->_details.__ptr_;
  v7 = *(ptr + 12);
LABEL_7:
  *(ptr + 12) = v7 + 1;
  CLKappaAlgFlowController::feedGPS(self->fFlowControl.__ptr_, v5);
}

- (void)feedSteps:(id)steps
{
  stepsCopy = steps;
  v5 = stepsCopy;
  if (stepsCopy)
  {
    CLKappaAlgFlowController::feedSteps(self->fFlowControl.__ptr_, stepsCopy);
  }

  else
  {
    sub_1002E7240();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1190, "[CSMartyDetectionService feedSteps:]");
    __break(1u);
  }
}

- (void)feedKappaTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = triggerCopy;
  if (triggerCopy)
  {
    CLKappaAlgFlowController::feedTrigger(self->fFlowControl.__ptr_, triggerCopy);
  }

  else
  {
    sub_1002E7354();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1199, "[CSMartyDetectionService feedKappaTrigger:]");
    __break(1u);
  }
}

- (void)feedMag:(id)mag
{
  magCopy = mag;
  if (!magCopy)
  {
    sub_1002E7468(0, v4);
  }
}

- (void)feedPressure:(id)pressure
{
  pressureCopy = pressure;
  v5 = pressureCopy;
  if (pressureCopy)
  {
    CLKappaAlgFlowController::feedPressure(self->fFlowControl.__ptr_, pressureCopy);
  }

  else
  {
    sub_1002E7594();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1215, "[CSMartyDetectionService feedPressure:]");
    __break(1u);
  }
}

- (void)feedSoundPressureLevel:(id)level
{
  levelCopy = level;
  v5 = levelCopy;
  if (levelCopy)
  {
    CLKappaAlgFlowController::feedAudioRms(self->fFlowControl.__ptr_, levelCopy);
  }

  else
  {
    sub_1002E76A8();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1224, "[CSMartyDetectionService feedSoundPressureLevel:]");
    __break(1u);
  }
}

- (void)feedTrustedAudioResult:(id)result
{
  resultCopy = result;
  v5 = resultCopy;
  if (resultCopy)
  {
    CLKappaAlgFlowController::feedTrustedAudioResult(self->fFlowControl.__ptr_, resultCopy);
  }

  else
  {
    sub_1002E77BC();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1233, "[CSMartyDetectionService feedTrustedAudioResult:]");
    __break(1u);
  }
}

- (void)feedRoads:(id)roads
{
  roadsCopy = roads;
  v5 = roadsCopy;
  if (roadsCopy)
  {
    CLKappaAlgFlowController::feedRoads(self->fFlowControl.__ptr_, roadsCopy);
  }

  else
  {
    sub_1002E78E4();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1241, "[CSMartyDetectionService feedRoads:]");
    __break(1u);
  }
}

- (void)feedHertzSample:(id)sample
{
  sampleCopy = sample;
  v5 = sampleCopy;
  if (sampleCopy)
  {
    CLKappaAlgFlowController::feedHertzSample(self->fFlowControl.__ptr_, sampleCopy);
  }

  else
  {
    sub_1002E79F8();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1249, "[CSMartyDetectionService feedHertzSample:]");
    __break(1u);
  }
}

- (void)feedCompanionStatus:(id)status
{
  statusCopy = status;
  v5 = statusCopy;
  if (statusCopy)
  {
    CLKappaAlgFlowController::feedCompanionStatus(self->fFlowControl.__ptr_, statusCopy);
  }

  else
  {
    sub_1002E7B0C();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1257, "[CSMartyDetectionService feedCompanionStatus:]");
    __break(1u);
  }
}

- (void)feedRemoteSample:(id)sample
{
  sampleCopy = sample;
  v5 = sampleCopy;
  if (sampleCopy)
  {
    CLKappaAlgFlowController::feedRemoteSample(self->fFlowControl.__ptr_, sampleCopy);
  }

  else
  {
    sub_1002E7C20();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1265, "[CSMartyDetectionService feedRemoteSample:]");
    __break(1u);
  }
}

- (void)feedSortedSamples:(id)samples
{
  samplesCopy = samples;
  for (i = 0; [samplesCopy count] > i; ++i)
  {
    ptr = self->fFlowControl.__ptr_;
    if (!ptr)
    {
      sub_1002E7D34();

      abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1274, "[CSMartyDetectionService feedSortedSamples:]");
      __break(1u);
LABEL_49:
      sub_1002E6708();
LABEL_45:
      v13 = qword_100456830;
      if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "stop consuming samples", buf, 2u);
      }

      break;
    }

    if ((*(ptr + 8) & 1) == 0)
    {
      if (qword_100456828 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_49;
    }

    v7 = [samplesCopy objectAtIndexedSubscript:i];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedAccel800:v8];
LABEL_39:

      goto LABEL_40;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedAccel:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedHgAccel:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      if ([v8 meta]< 0)
      {
        if (qword_100456828 != -1)
        {
          sub_1002E6708();
        }

        v9 = qword_100456830;
        if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
        {
          timestamp = [v8 timestamp];
          *buf = 134217984;
          *&buf[4] = timestamp;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "ignoring stop trigger from aop %llu", buf, 0xCu);
        }
      }

      else
      {
        [(CSMartyDetectionService *)self feedKappaTrigger:v8];
      }

      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedDeviceMotion:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedGPS:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedSteps:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedSoundPressureLevel:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedTrustedAudioResult:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedPressure:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedRoads:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedHertzSample:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedCompanionStatus:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
      [(CSMartyDetectionService *)self feedRemoteSample:v8];
      goto LABEL_39;
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if ((isKindOfClass & 1) == 0)
    {
      v8 = sub_1002DCCF8(isKindOfClass, v12);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "CSMartyDetectionService ignoring %@", buf, 0xCu);
      }

      goto LABEL_39;
    }

LABEL_40:
  }
}

- (void)feedLocationManagerResults:(id)results
{
  resultsCopy = results;
  v5 = resultsCopy;
  if (self->_mslRecording)
  {
    firstObject = [resultsCopy firstObject];
    [firstObject coordinate];
    v8 = v7;

    firstObject2 = [v5 firstObject];
    [firstObject2 coordinate];
    v11 = v10 * 1000.0;

    ptr = self->_sessionInfoStats.__ptr_;
    *&v8 = v8 * 1000.0;
    *(ptr + 1) = LODWORD(v8);
    *(ptr + 2) = v11;
  }

  else
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v13 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "coarse location cannot be stored: IS=0 or IS=1 and not the first session in the recording", v14, 2u);
    }
  }
}

- (BOOL)coinflip:(double)coinflip
{
  if (coinflip >= 0.0 && coinflip <= 1.0)
  {
    v7 = drand48();
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v8 = v7 * 100.0;
    v9 = coinflip * 100.0;
    v10 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
    {
      v12 = 134218240;
      v13 = v8;
      v14 = 2048;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "coin flip = %f, rbound = %f", &v12, 0x16u);
    }

    LOBYTE(v6) = v8 <= v9 && v8 >= 0.0;
  }

  else
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v5 = qword_100456830;
    v6 = os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO);
    if (v6)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "invalid rate specified", &v12, 2u);
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (void)printSamplingDefaults
{
  LODWORD(v2) = 981668463;
  [(CSMartyDetectionService *)self querySamplingRate:@"MartyPerfStandaloneScarifAcceptanceRate" withDefault:v2];
  v5 = v4;
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v6 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
  {
    v22 = 134217984;
    v23 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "performance standalone rate %f", &v22, 0xCu);
  }

  LODWORD(v7) = 0.75;
  [(CSMartyDetectionService *)self querySamplingRate:@"MartyPerfPairedScarifAcceptanceRate" withDefault:v7];
  v9 = v8;
  if (qword_100456828 != -1)
  {
    sub_1002E6708();
  }

  v10 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
  {
    v22 = 134217984;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "performance paired sampling rate %f", &v22, 0xCu);
  }

  [(CSMartyDetectionService *)self querySamplingRate:@"MartyCurStandaloneScarifAcceptanceRate" withDefault:0.0];
  v12 = v11;
  if (qword_100456828 != -1)
  {
    sub_1002E6708();
  }

  v13 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
  {
    v22 = 134217984;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "curation standalone rate %f", &v22, 0xCu);
  }

  LODWORD(v14) = 1.0;
  [(CSMartyDetectionService *)self querySamplingRate:@"MartyCurCrashDetectedAcceptanceRatePaired" withDefault:v14];
  v16 = v15;
  if (qword_100456828 != -1)
  {
    sub_1002E6708();
  }

  v17 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
  {
    v22 = 134217984;
    v23 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "curation paired decision rate %f", &v22, 0xCu);
  }

  LODWORD(v18) = 1.0;
  [(CSMartyDetectionService *)self querySamplingRate:@"MartyCurCrashDetectedAcceptanceRateStandalone" withDefault:v18];
  v20 = v19;
  if (qword_100456828 != -1)
  {
    sub_1002E6708();
  }

  v21 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
  {
    v22 = 134217984;
    v23 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "curation standalone decision rate %f", &v22, 0xCu);
  }
}

- (BOOL)getForceDecision:(id)decision
{
  decisionCopy = decision;
  v5 = [(CSPersistentConfiguration *)self->_persist getBooleanDefault:decisionCopy];
  v6 = v5;
  if ((v5 & 0x100) != 0)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v7 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      v9 = 138412546;
      v10 = decisionCopy;
      v11 = 1024;
      v12 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "forcing %@ decision to %d", &v9, 0x12u);
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (int)curationSampling
{
  if (!self->fFlowControl.__ptr_)
  {
    sub_1002E7E48(self, a2);
LABEL_24:
    sub_1002E66F4();
    goto LABEL_10;
  }

  selfCopy = self;
  ptr = self->_companionDeviceInfo.__ptr_;
  if (ptr && *(ptr + 8))
  {
    if (*(self->_details.__ptr_ + 42) != 1)
    {
      return 0;
    }

    LODWORD(v4) = 1.0;
    [(CSMartyDetectionService *)self querySamplingRate:@"MartyCurCrashDetectedAcceptanceRatePaired" withDefault:v4];
    v8 = v7;
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v9 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
      *v18 = 134217984;
      *&v18[4] = v10;
      v11 = "curation paired severe crash decision rate %f";
LABEL_18:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, v11, v18, 0xCu);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  [(CSMartyDetectionService *)self querySamplingRate:@"MartyCurStandaloneScarifAcceptanceRate" withDefault:0.0];
  v5 = v12;
  p_vtable = GPBRootObject.vtable;
  if (qword_100456828 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v13 = qword_100456830;
  v14 = v5;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
  {
    *v18 = 134217984;
    *&v18[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "curation standalone rate %f", v18, 0xCu);
  }

  if ([(CSMartyDetectionService *)selfCopy coinflip:v14])
  {
    return 1;
  }

  if (*(selfCopy->_details.__ptr_ + 42) == 1)
  {
    LODWORD(v15) = 1.0;
    [(CSMartyDetectionService *)selfCopy querySamplingRate:@"MartyCurCrashDetectedAcceptanceRateStandalone" withDefault:v15];
    v8 = v16;
    if (p_vtable[261] != -1)
    {
      sub_1002E6708();
    }

    v9 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
    {
      v10 = v8;
      *v18 = 134217984;
      *&v18[4] = v10;
      v11 = "curation standalone alpha detector decision rate %f";
      goto LABEL_18;
    }

LABEL_19:
    v10 = v8;
LABEL_20:
    if ([(CSMartyDetectionService *)selfCopy coinflip:v10, *v18, *&v18[8]])
    {
      return 1;
    }
  }

  return 0;
}

- (int)performanceSampling
{
  ptr = self->_companionDeviceInfo.__ptr_;
  if (ptr && *(ptr + 8))
  {
    LODWORD(v2) = 0.75;
    [(CSMartyDetectionService *)self querySamplingRate:@"MartyPerfPairedScarifAcceptanceRate" withDefault:v2];
    v6 = v5;
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v7 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
    {
      v8 = v6;
      *v12 = 134217984;
      *&v12[4] = v8;
      v9 = "performance paired sampling rate %f";
LABEL_11:
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, v9, v12, 0xCu);
      goto LABEL_13;
    }
  }

  else
  {
    LODWORD(v2) = 981668463;
    [(CSMartyDetectionService *)self querySamplingRate:@"MartyPerfStandaloneScarifAcceptanceRate" withDefault:v2];
    v6 = v10;
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v7 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
    {
      v8 = v6;
      *v12 = 134217984;
      *&v12[4] = v8;
      v9 = "performance standalone rate %f";
      goto LABEL_11;
    }
  }

  v8 = v6;
LABEL_13:
  if ([(CSMartyDetectionService *)self coinflip:v8, *v12, *&v12[8]])
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)requestDeviceInfo
{
  v5 = rand();
  v4 = MartyCompanion::serializeDeviceInfoRequest(&v5, v3);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v4 type:303];
}

- (void)requestCompanionUpload:(int)upload
{
  ptr = self->_companionUUID.__ptr_;
  if (ptr)
  {
    if (*(ptr + 23) < 0)
    {
      ptr = *ptr;
    }

    sub_10029F5A0(&__p, ptr);
    uploadCopy = upload;
    v7 = MartyCompanion::serializeRequestUpload(&__p, v6);
    [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v7 type:304];

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

- (void)sendDeviceInfo
{
  v3 = +[CSPlatformInfo sharedInstance];
  getSystemHardware = [v3 getSystemHardware];
  getSystemModel = [v3 getSystemModel];
  uTF8String = [getSystemModel UTF8String];

  if ([v3 isKappaLoggingDevice])
  {
    v7 = 0;
  }

  else if ([v3 isKappaDetectionDevice])
  {
    v7 = 1;
  }

  else
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v8 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "invalid kappa device type detected", &v13, 2u);
    }

    v7 = -1;
  }

  v9 = objc_alloc_init(CSArmedClients);
  if ((CSAOPSvc::getArmedClients(self->_aop, v9) & 1) == 0)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v10 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to get armed clients state", &v13, 2u);
    }
  }

  v13 = getSystemHardware;
  sub_10029F5A0(&__p, uTF8String);
  v16 = v7;
  v17 = 0;
  KappaToken = getKappaToken(0);
  MartyToken = getMartyToken(0);
  kappaArmedSeconds = [(CSArmedClients *)v9 kappaArmedSeconds];
  martyArmedSecondsLocal = [(CSArmedClients *)v9 martyArmedSecondsLocal];
  enableMode = [(CSArmedClients *)v9 enableMode];
  v12 = MartyCompanion::serializeDeviceInfo(&v13, v11);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v12 type:300];

  if (v15 < 0)
  {
    operator delete(__p);
  }
}

- (void)sendCompanionUUID:(id)d
{
  uUIDString = [d UUIDString];
  sub_10029F5A0(&__p, [uUIDString UTF8String]);

  v6 = MartyCompanion::serializeCompanionUUID(&__p, v5);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v6 type:302];

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

- (void)receiveCompanionTrigger:(id)trigger
{
  MartyCompanion::deserializeTrigger(trigger, a2, v7);
  v4 = v7[0];
  v7[0] = 0;
  ptr = self->_companionTrigger.__ptr_;
  self->_companionTrigger.__ptr_ = v4;
  if (ptr)
  {
    operator delete();
  }

  v6 = self->_companionTrigger.__ptr_;
  if ((*(v6 + 54) & 4) == 0)
  {
    LOWORD(v7[0]) = 3;
    BYTE2(v7[0]) = 4;
    v7[1] = *(v6 + 2);
    CSAOPSvc::sendCommand(self->_aop, v7, 0x10u);
    self->_companionTriggerTime = *self->_companionTrigger.__ptr_;
  }

  [(CSMartyDetectionService *)self cacheUserInfo];
}

- (void)sendCompanionTrigger:(id)trigger
{
  triggerCopy = trigger;
  if (!triggerCopy)
  {
    sub_1002E7F6C();

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreSafety/SafetyAlgorithms/CSMartyDetectionService.mm", 1623, "[CSMartyDetectionService sendCompanionTrigger:]");
    __break(1u);
  }

  Current = CFAbsoluteTimeGetCurrent();
  c_struct = [triggerCopy c_struct];
  v6 = *c_struct;
  v7 = c_struct[1];
  v16 = c_struct[2];
  v15 = v7;
  v14 = v6;
  v8 = c_struct[3];
  v9 = c_struct[4];
  v10 = c_struct[5];
  v20 = c_struct[6];
  v19 = v10;
  v18 = v9;
  v17 = v8;
  v12 = MartyCompanion::serializeTrigger(&Current, v11);
  [(CSCompanionServiceProtocol *)self->_companionProxy sendData:v12 type:301];
}

- (void)receiveDeviceInfo:(id)info
{
  infoCopy = info;
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v4 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "setting companion device info", buf, 2u);
  }

  MartyCompanion::deserializeDeviceInfo(infoCopy);
}

- (void)onCompanionMessage:(int)message data:(id)data receivedTimestamp:(double)timestamp
{
  dataCopy = data;
  v9 = [[NSString alloc] initWithData:dataCopy encoding:4];
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v10 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
  {
    v13[0] = 67109890;
    v13[1] = message;
    v14 = 2112;
    v15 = v9;
    v16 = 2112;
    v17 = dataCopy;
    v18 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "onCompanionMessage: type: %d, msg: %@ data: %@, receivedTimestamp: %f", v13, 0x26u);
  }

  if (message <= 302)
  {
    switch(message)
    {
      case 300:
        [(CSMartyDetectionService *)self receiveDeviceInfo:dataCopy];
        break;
      case 301:
        [(CSMartyDetectionService *)self receiveCompanionTrigger:dataCopy];
        break;
      case 302:
        [(CSMartyDetectionService *)self receiveUUID:dataCopy];
        break;
    }
  }

  else if (message > 304)
  {
    if (message == 305)
    {
      ptr = self->_sessionInfoStats.__ptr_;
      if (ptr)
      {
        *(ptr + 13) = 1;
      }
    }

    else if (message == 306)
    {
      v11 = self->_sessionInfoStats.__ptr_;
      if (v11)
      {
        *(v11 + 12) = 1;
      }
    }
  }

  else if (message == 303)
  {
    [(CSMartyDetectionService *)self sendDeviceInfo];
  }

  else
  {
    [(CSMartyDetectionService *)self companionDecidedToUpload:dataCopy];
  }
}

- (void)onCompanionStatusUpdate:(BOOL)update pairedDevice:(id)device updatedTimestamp:(double)timestamp
{
  updateCopy = update;
  deviceCopy = device;
  if (qword_100456828 != -1)
  {
    sub_1002E66F4();
  }

  v8 = qword_100456830;
  if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109376;
    *v17 = updateCopy;
    *&v17[4] = 2048;
    *&v17[6] = timestamp;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "onCompanionStatusUpdate: isConnected: %d, updatedTimestamp: %f", &v16, 0x12u);
  }

  if (qword_100456828 != -1)
  {
    sub_1002E6708();
  }

  v9 = qword_100456830;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    name = [deviceCopy name];
    v11 = name;
    uTF8String = [name UTF8String];
    isNearby = [deviceCopy isNearby];
    isDefaultPairedDevice = [deviceCopy isDefaultPairedDevice];
    isConnected = [deviceCopy isConnected];
    v16 = 136315906;
    *v17 = uTF8String;
    *&v17[8] = 1024;
    *&v17[10] = isNearby;
    v18 = 1024;
    v19 = isDefaultPairedDevice;
    v20 = 1024;
    v21 = isConnected;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Paired device info: name %s, isNearby %d, isDefaultPairedDevice %d, isConnected %d", &v16, 0x1Eu);
  }
}

- (void)uploadUserInfoToCoreAnalyticsWithHandler:(id)handler
{
  handlerCopy = handler;
  if (qword_1004568A8 != -1)
  {
    sub_1002E8080();
  }

  v5 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "sendUserInfoToCoreAnalytics", buf, 2u);
  }

  if ([CSCoreAnalyticsUtils shouldAttemptCoreAnalyticsUploadWithInterval:@"CSMartyCoreAnalyticsLastSuccessfulUpload" persistentKey:self->_userInfoUploadCadence])
  {
    v6 = +[CSPermissions sharedInstance];
    isAuthorizedForIS = [v6 isAuthorizedForIS];

    +[CSCoreAnalyticsUtils getSecondsSinceReboot];
    v8 = v7;
    if (v7 > self->_userInfoUploadCadence)
    {
      if (qword_1004568A8 != -1)
      {
        sub_1002E8094();
      }

      v9 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
      {
        userInfoUploadCadence = self->_userInfoUploadCadence;
        *buf = 134217984;
        v49 = userInfoUploadCadence;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "secondsSinceReboot exceeds UserInfo cadence. Capping at cadence pd:%llu", buf, 0xCu);
      }

      v8 = self->_userInfoUploadCadence;
    }

    [(CSMartyDetectionService *)self _updateArmingTimes];
    v11 = +[CSPersistentConfiguration sharedConfiguration];
    v47 = [v11 objectForKey:@"CSMartyCoreAnalyticsLastSuccessfulUpload"];

    if (v47)
    {
      v12 = v47;
      v13 = +[NSDate date];
      [v13 timeIntervalSinceDate:v12];
      v15 = v14;

      v16 = (v15 / 60.0);
    }

    else
    {
      v16 = 0xFFFFFFFFLL;
    }

    if (qword_1004568A8 != -1)
    {
      sub_1002E8094();
    }

    v17 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v49) = v16;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Sending %d mins of Marty userinfo to CA", buf, 8u);
    }

    ptr = self->_userInfoStats.__ptr_;
    if (isAuthorizedForIS)
    {
      if (ptr)
      {
        v54[0] = @"didEnableKappaDetection";
        v45 = [NSNumber numberWithBool:*(ptr + 2)];
        v55[0] = v45;
        v54[1] = @"didEnableKappaDetection_companion";
        v44 = [NSNumber numberWithBool:*(self->_userInfoStats.__ptr_ + 3)];
        v55[1] = v44;
        v54[2] = @"isImproveSafetyEnabled";
        v43 = [NSNumber numberWithBool:*self->_userInfoStats.__ptr_];
        v55[2] = v43;
        v54[3] = @"isImproveSafetyEnabled_companion";
        v42 = [NSNumber numberWithBool:*(self->_userInfoStats.__ptr_ + 1)];
        v55[3] = v42;
        v54[4] = @"numKappaSessions";
        v41 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 3)];
        v55[4] = v41;
        v54[5] = @"numKappaSessions_companion";
        v40 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 4)];
        v55[5] = v40;
        v54[6] = @"numKappaTriggersAllSessions";
        v39 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 1)];
        v55[6] = v39;
        v54[7] = @"numKappaTriggersAllSessions_companion";
        v38 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 2)];
        v55[7] = v38;
        v54[8] = @"numMartySessionsCycle";
        v37 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 6)];
        v55[8] = v37;
        v54[9] = @"numMartySessionsMotorbike";
        v36 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 7)];
        v55[9] = v36;
        v54[10] = @"numMartySessionsCycle_companion";
        v35 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 8)];
        v55[10] = v35;
        v54[11] = @"numMartySessionsMotorbike_companion";
        v34 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 9)];
        v55[11] = v34;
        v54[12] = @"numMartyTriggersAllSessionsCycle";
        v33 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 10)];
        v55[12] = v33;
        v54[13] = @"numMartyTriggersAllSessionsMotorBike";
        v32 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 12)];
        v55[13] = v32;
        v54[14] = @"numMartyTriggersAllSessionsCycle_companion";
        v31 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 11)];
        v55[14] = v31;
        v54[15] = @"numMartyTriggersAllSessionsMotorBike_companion";
        v30 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 13)];
        v55[15] = v30;
        v54[16] = @"totalDrivingTimeCycle";
        v29 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 14)];
        v55[16] = v29;
        v54[17] = @"totalDrivingTimeMotorcycle";
        v28 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 15)];
        v55[17] = v28;
        v54[18] = @"totalKappaDrivingTime";
        v19 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 16)];
        v55[18] = v19;
        v54[19] = @"minutesSinceReboot_capped";
        v20 = [NSNumber numberWithDouble:v8 / 60.0];
        v55[19] = v20;
        v54[20] = @"numCrashesDetectedAllSessionsCycle";
        v21 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 19)];
        v55[20] = v21;
        v54[21] = @"numCrashesDetectedAllSessionsMotorbike";
        v22 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 20)];
        v55[21] = v22;
        v54[22] = @"totalDrivingTimeMotorcycleLocal";
        v23 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 17)];
        v55[22] = v23;
        v54[23] = @"totalDrivingTimeMotorcycleRemote";
        v24 = [NSNumber numberWithInt:*(self->_userInfoStats.__ptr_ + 18)];
        v55[23] = v24;
        v54[24] = @"eventDurationMinutes";
        v25 = [NSNumber numberWithInt:v16];
        v55[24] = v25;
        v26 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:25];

LABEL_26:
        goto LABEL_28;
      }
    }

    else if (ptr)
    {
      v52[0] = @"didEnableKappaDetection";
      v45 = [NSNumber numberWithBool:*(ptr + 2)];
      v53[0] = v45;
      v52[1] = @"didEnableKappaDetection_companion";
      v44 = [NSNumber numberWithBool:*(self->_userInfoStats.__ptr_ + 3)];
      v53[1] = v44;
      v52[2] = @"isImproveSafetyEnabled";
      v43 = [NSNumber numberWithBool:*self->_userInfoStats.__ptr_];
      v53[2] = v43;
      v52[3] = @"isImproveSafetyEnabled_companion";
      v42 = [NSNumber numberWithBool:*(self->_userInfoStats.__ptr_ + 1)];
      v53[3] = v42;
      v52[4] = @"eventDurationMinutes";
      v41 = [NSNumber numberWithInt:v16];
      v53[4] = v41;
      v26 = [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:5];
      goto LABEL_26;
    }

    v26 = 0;
LABEL_28:
    if (qword_1004568A8 != -1)
    {
      sub_1002E8094();
    }

    v27 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      v49 = v26;
      v50 = 1024;
      v51 = isAuthorizedForIS;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, "Marty UserInfo:%@, ImproveSafety:%d", buf, 0x12u);
    }

    v26;
    AnalyticsSendEventLazy();
    operator new();
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 1, 0);
  }
}

- (void)_updateArmingTimes
{
  v3 = +[CSPlatformInfo sharedInstance];
  isKappaLoggingDevice = [v3 isKappaLoggingDevice];

  if (isKappaLoggingDevice)
  {
    if (qword_1004568A8 != -1)
    {
      sub_1002E8080();
    }

    v5 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v14) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "getStat not supported", &v14, 2u);
    }

    *(self->_userInfoStats.__ptr_ + 7) = -1;
  }

  else
  {
    v6 = objc_alloc_init(CSCAStat);
    aop = self->_aop;
    if (aop && self->_userInfoStats.__ptr_)
    {
      CSAOPSvc::getStat(aop, v6);
      *(self->_userInfoStats.__ptr_ + 14) = [(CSCAStat *)v6 armedSecMartyBicycle];
      *(self->_userInfoStats.__ptr_ + 15) = [(CSCAStat *)v6 armedSecMartyLocal];
      *(self->_userInfoStats.__ptr_ + 18) = [(CSCAStat *)v6 armedSecMartyRemote];
      *(self->_userInfoStats.__ptr_ + 17) = [(CSCAStat *)v6 armedSecMartyLocal];
    }

    else
    {
      if (qword_1004568A8 != -1)
      {
        sub_1002E8080();
      }

      v8 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
      {
        v9 = self->_aop != 0;
        v10 = self->_userInfoStats.__ptr_ != 0;
        v14 = 67109376;
        v15 = v9;
        v16 = 1024;
        v17 = v10;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Unable to query AOP, _aop valid:%d, _userInfoStats valid:%d", &v14, 0xEu);
      }
    }
  }

  if (qword_1004568A8 != -1)
  {
    sub_1002E8094();
  }

  v11 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    v12 = *(self->_userInfoStats.__ptr_ + 14);
    v13 = *(self->_userInfoStats.__ptr_ + 15);
    v14 = 67109376;
    v15 = v13;
    v16 = 1024;
    v17 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "martyDrivingTimeMotorcycle:%d, martyDrivingTimeCycle:%d", &v14, 0xEu);
  }
}

- (void)sendSessionInfoToCoreAnalytics
{
  if (qword_1004568A8 != -1)
  {
    sub_1002E8080();
  }

  v3 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "sendSessionInfoToCoreAnalytics", buf, 2u);
  }

  if (self->_aborted)
  {
    if (qword_1004568A8 != -1)
    {
      sub_1002E8094();
    }

    v4 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v5 = "aborted sessions will not be sent";
LABEL_31:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v5, buf, 2u);
    }
  }

  else
  {
    ptr = self->_sessionInfoStats.__ptr_;
    if (ptr)
    {
      if (*ptr)
      {
        v7 = +[CSPermissions sharedInstance];
        isAuthorizedForIS = [v7 isAuthorizedForIS];

        if (qword_1004568A8 != -1)
        {
          sub_1002E8094();
        }

        v9 = qword_1004568B0;
        if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109120;
          LODWORD(v74) = isAuthorizedForIS;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "ImproveSafety:%d", buf, 8u);
        }

        if (isAuthorizedForIS)
        {
          v11 = self->_sessionInfoStats.__ptr_;
          if (v11)
          {
            v129[0] = @"coarseLat";
            LODWORD(v10) = *(v11 + 1);
            v12 = [NSNumber numberWithFloat:v10];
            v130 = v12;
            v129[1] = @"coarseLong";
            LODWORD(v13) = *(self->_sessionInfoStats.__ptr_ + 2);
            v131 = [NSNumber numberWithFloat:v13];
            v129[2] = @"companionEscalationDecisionCycle";
            v71 = v131;
            v132 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 12)];
            v129[3] = @"companionEscalationDecisionMotorbike";
            v70 = v132;
            v133 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 13)];
            v129[4] = @"didCompanionTriggerCycle";
            v69 = v133;
            v134 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 14)];
            v129[5] = @"didCompanionTriggerMotorbike";
            v68 = v134;
            v135 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 15)];
            v129[6] = @"didPlaceCallCycle";
            v67 = v135;
            v66 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 16)];
            v136 = v66;
            v129[7] = @"didPlaceCallMotorbike";
            v65 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 17)];
            v137 = v65;
            v129[8] = @"didRaiseUICycle";
            v64 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 18)];
            v138 = v64;
            v129[9] = @"didRaiseUICycle_companion";
            v63 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 19)];
            v139 = v63;
            v129[10] = @"didRaiseUIMotorbike";
            v62 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 20)];
            v140 = v62;
            v129[11] = @"didRaiseUIMotorbike_companion";
            v61 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 21)];
            v141 = v61;
            v129[12] = @"escalationDecisionCycle";
            v60 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 22)];
            v142 = v60;
            v129[13] = @"escalationDecisionMotorbike";
            v59 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 23)];
            v143 = v59;
            v129[14] = @"isCompanionConnected";
            v58 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 24)];
            v144 = v58;
            v129[15] = @"isSOSAutoInitiatedCycle";
            v57 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 25)];
            v145 = v57;
            v129[16] = @"isSOSAutoInitiatedMotorbike";
            v56 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 26)];
            v146 = v56;
            v129[17] = @"isSOSUserInitiatedCycle";
            v55 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 27)];
            v147 = v55;
            v129[18] = @"isSOSUserInitiatedMotorbike";
            v54 = [NSNumber numberWithBool:*(self->_sessionInfoStats.__ptr_ + 28)];
            v148 = v54;
            v129[19] = @"locallyArmedBitmap";
            v53 = [NSNumber numberWithInt:*(self->_sessionInfoStats.__ptr_ + 8)];
            v149 = v53;
            v129[20] = @"numAlphaDetectedCycle";
            v52 = [NSNumber numberWithInt:*(self->_sessionInfoStats.__ptr_ + 9)];
            v150 = v52;
            v129[21] = @"numAlphaDetectedMotorbike";
            v51 = [NSNumber numberWithInt:*(self->_sessionInfoStats.__ptr_ + 10)];
            v151 = v51;
            v129[22] = @"numEarlyCrashesDetectedCycle";
            v14 = [NSNumber numberWithInt:*(self->_sessionInfoStats.__ptr_ + 11)];
            v152 = v14;
            v129[23] = @"numEarlyCrashesDetectedMotorbike";
            v15 = [NSNumber numberWithInt:*(self->_sessionInfoStats.__ptr_ + 12)];
            v153 = v15;
            v129[24] = @"numTriggersCycle";
            v16 = [NSNumber numberWithInt:*(self->_sessionInfoStats.__ptr_ + 13)];
            v154 = v16;
            v129[25] = @"numTriggersMotorbike";
            v17 = [NSNumber numberWithInt:*(self->_sessionInfoStats.__ptr_ + 14)];
            v155 = v17;
            v129[26] = @"overrideModeBitmap";
            v18 = [NSNumber numberWithInt:*(self->_sessionInfoStats.__ptr_ + 15)];
            v156 = v18;
            v129[27] = @"signalEnvironment";
            v19 = [NSNumber numberWithInt:*(self->_sessionInfoStats.__ptr_ + 16)];
            v157 = v19;
            v50 = [NSDictionary dictionaryWithObjects:&v130 forKeys:v129 count:28];

            v20 = v50;
            AnalyticsSendEventLazy();
            if (qword_1004568A8 != -1)
            {
              sub_1002E8094();
            }

            v21 = qword_1004568B0;
            if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
            {
              v22 = self->_sessionInfoStats.__ptr_;
              v23 = *(v22 + 1);
              v24 = *(v22 + 2);
              v25 = *(v22 + 12);
              v26 = *(v22 + 13);
              v27 = *(v22 + 14);
              v28 = *(v22 + 15);
              v29 = *(v22 + 16);
              v30 = *(v22 + 17);
              v31 = *(v22 + 18);
              v32 = *(v22 + 19);
              v33 = *(v22 + 20);
              v34 = *(v22 + 21);
              v35 = *(v22 + 22);
              v36 = *(v22 + 23);
              v37 = *(v22 + 24);
              v38 = *(v22 + 25);
              v39 = *(v22 + 26);
              v40 = *(v22 + 27);
              v41 = *(v22 + 28);
              v42 = *(v22 + 8);
              v43 = *(v22 + 9);
              v44 = *(v22 + 10);
              v45 = *(v22 + 11);
              v47 = *(v22 + 12);
              v46 = *(v22 + 13);
              v49 = *(v22 + 14);
              v48 = *(v22 + 15);
              v72 = *(v22 + 16);
              *buf = 134552577;
              v74 = v23;
              v75 = 2053;
              v76 = v24;
              v77 = 1024;
              v78 = v25;
              v79 = 1024;
              v80 = v26;
              v81 = 1024;
              v82 = v27;
              v83 = 1024;
              v84 = v28;
              v85 = 1024;
              v86 = v29;
              v87 = 1024;
              v88 = v30;
              v89 = 1024;
              v90 = v31;
              v91 = 1024;
              v92 = v32;
              v93 = 1024;
              v94 = v33;
              v95 = 1024;
              v96 = v34;
              v97 = 1024;
              v98 = v35;
              v99 = 1024;
              v100 = v36;
              v101 = 1024;
              v102 = v37;
              v103 = 1024;
              v104 = v38;
              v105 = 1024;
              v106 = v39;
              v107 = 1024;
              v108 = v40;
              v109 = 1024;
              v110 = v41;
              v111 = 1024;
              v112 = v42;
              v113 = 1024;
              v114 = v43;
              v115 = 1024;
              v116 = v44;
              v117 = 1024;
              v118 = v45;
              v119 = 1024;
              v120 = v47;
              v121 = 1024;
              v122 = v46;
              v123 = 1024;
              v124 = v49;
              v125 = 1024;
              v126 = v48;
              v127 = 1024;
              v128 = v72;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, "Marty Session info coarseLat,%{sensitive}f,coarseLong,%{sensitive}f,companionEscalationDecisionCycle,%d,companionEscalationDecisionMotorbike,%d,didCompanionTriggerCycle,%d,didCompanionTriggerMotorbike,%d,didPlaceCallCycle,%d,didPlaceCallMotorbike,%d,didRaiseUICycle,%d,didRaiseUICycle_companion,%d,didRaiseUIMotorbike,%d,didRaiseUIMotorbike_companion,%d,escalationDecisionCycle,%d,escalationDecisionMotorbike,%d,isCompanionConnected,%d,isSOSAutoInitiatedCycle,%d,isSOSAutoInitiatedMotorbike,%d,isSOSUserInitiatedCycle,%d,isSOSUserInitiatedMotorbike,%d,locallyArmedBitmap,%d,numAlphaDetectedCycle,%d,numAlphaDetectedMotorbike,%d,numEarlyCrashesDetectedCycle,%d,numEarlyCrashesDetectedMotorbike,%d,numTriggersCycle,%d,numTriggersMotorbike,%d,overrideModeBitmap,%d,signalEnvironment,%d", buf, 0xB2u);
            }
          }
        }
      }

      else
      {
        if (qword_1004568A8 != -1)
        {
          sub_1002E8094();
        }

        v4 = qword_1004568B0;
        if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          v5 = "refusing to send a session that was forced or postRiding only";
          goto LABEL_31;
        }
      }
    }

    else
    {
      if (qword_1004568A8 != -1)
      {
        sub_1002E8094();
      }

      v4 = qword_1004568B0;
      if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v5 = "_sessionInfoStats is null";
        goto LABEL_31;
      }
    }
  }
}

- (void)cacheUserInfo
{
  ptr = self->_userInfoStats.__ptr_;
  if (ptr)
  {
    v4 = [NSData dataWithBytes:ptr length:84];
    [NSUserDefaults setObject:"setObject:forKey:" forKey:?];
  }
}

- (void)updateMartyUserInfoWithInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy && self->_userInfoStats.__ptr_)
  {
    v6 = [infoCopy objectForKeyedSubscript:@"isImproveSafetyEnabled"];

    if (v6)
    {
      v7 = [v5 objectForKeyedSubscript:@"isImproveSafetyEnabled"];
      *self->_userInfoStats.__ptr_ = [v7 BOOLValue];
    }

    v8 = [v5 objectForKeyedSubscript:@"isImproveSafetyEnabled_companion"];

    if (v8)
    {
      v9 = [v5 objectForKeyedSubscript:@"isImproveSafetyEnabled_companion"];
      *(self->_userInfoStats.__ptr_ + 1) = [v9 BOOLValue];
    }

    v10 = [v5 objectForKeyedSubscript:@"didEnableKappaDetection"];

    if (v10)
    {
      v11 = [v5 objectForKeyedSubscript:@"didEnableKappaDetection"];
      *(self->_userInfoStats.__ptr_ + 2) = [v11 BOOLValue];
    }

    v12 = [v5 objectForKeyedSubscript:@"didEnableKappaDetection_companion"];

    if (v12)
    {
      v13 = [v5 objectForKeyedSubscript:@"didEnableKappaDetection_companion"];
      *(self->_userInfoStats.__ptr_ + 3) = [v13 BOOLValue];
    }

    v14 = [v5 objectForKeyedSubscript:@"numTriggersAllSessions"];

    if (v14)
    {
      v15 = [v5 objectForKeyedSubscript:@"numTriggersAllSessions"];
      *(self->_userInfoStats.__ptr_ + 1) = [v15 intValue];
    }

    v16 = [v5 objectForKeyedSubscript:@"numTriggersAllSessions_companion"];

    if (v16)
    {
      v17 = [v5 objectForKeyedSubscript:@"numTriggersAllSessions_companion"];
      *(self->_userInfoStats.__ptr_ + 2) = [v17 intValue];
    }

    v18 = [v5 objectForKeyedSubscript:@"numKappaSessions"];

    if (v18)
    {
      v19 = [v5 objectForKeyedSubscript:@"numKappaSessions"];
      *(self->_userInfoStats.__ptr_ + 3) = [v19 intValue];
    }

    v20 = [v5 objectForKeyedSubscript:@"numKappaSessions_companion"];

    if (v20)
    {
      v21 = [v5 objectForKeyedSubscript:@"numKappaSessions_companion"];
      *(self->_userInfoStats.__ptr_ + 4) = [v21 intValue];
    }

    v22 = [v5 objectForKeyedSubscript:@"totalDrivingTime"];

    if (v22)
    {
      v23 = [v5 objectForKeyedSubscript:@"totalDrivingTime"];
      *(self->_userInfoStats.__ptr_ + 16) = [v23 intValue];
    }

    if (qword_1004568A8 != -1)
    {
      sub_1002E8080();
    }

    v24 = qword_1004568B0;
    if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "updateMartyUserInfoWithInfo updated stats", &v26, 2u);
    }
  }

  if (qword_1004568A8 != -1)
  {
    sub_1002E8094();
  }

  v25 = qword_1004568B0;
  if (os_log_type_enabled(qword_1004568B0, OS_LOG_TYPE_DEBUG))
  {
    v26 = 138412290;
    v27 = v5;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "%@", &v26, 0xCu);
  }
}

- (void)clearCAStats
{
  aop = self->_aop;
  if (aop)
  {
    CSAOPSvc::clearStat(aop);
  }
}

- (id)userInfoUploader
{
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002E59EC;
  v5[3] = &unk_100416C50;
  objc_copyWeak(&v6, &location);
  v2 = objc_retainBlock(v5);
  v3 = objc_retainBlock(v2);

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

- (void)didReceiveSOSAck:(int64_t)ack forMode:(unsigned __int8)mode
{
  if (mode == 2)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v6 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      v16 = 134217984;
      ackCopy = ack;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "didReceiveSOSAck response:%ld", &v16, 0xCu);
    }

    if (ack <= 6)
    {
      if (((1 << ack) & 0x65) != 0)
      {
        self->_SOSInProgress = 1;
        if (qword_100456828 != -1)
        {
          sub_1002E6708();
        }

        v7 = qword_100456830;
        if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
        {
          SOSInProgress = self->_SOSInProgress;
          v16 = 67109120;
          LODWORD(ackCopy) = SOSInProgress;
          v9 = "didReceiveSOSAck setting _SOSInProgress to %d";
          v10 = v7;
          v11 = OS_LOG_TYPE_INFO;
          v12 = 8;
LABEL_16:
          _os_log_impl(&_mh_execute_header, v10, v11, v9, &v16, v12);
        }
      }

      else
      {
        self->_SOSInProgress = 0;
        if (qword_100456828 != -1)
        {
          sub_1002E6708();
        }

        v14 = qword_100456830;
        if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_INFO))
        {
          v15 = self->_SOSInProgress;
          v16 = 67109120;
          LODWORD(ackCopy) = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "didReceiveSOSAck setting _SOSInProgress to %d", &v16, 8u);
        }

        [(CSMSLDataRecording *)self->_mslRecording updateMetadata:&off_10043F278];
        [(CSHSMObjc *)self->_hsm signal:5 data:0];
      }
    }
  }

  else
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v13 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v16) = 0;
      v9 = "sos status ack invalid mode";
      v10 = v13;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 2;
      goto LABEL_16;
    }
  }
}

- (void)didReceiveSOSStatusUpdate:(id)update forMode:(unsigned __int8)mode
{
  modeCopy = mode;
  updateCopy = update;
  if (modeCopy == 2)
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v7 = qword_100456830;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sosStatus = [updateCopy sosStatus];
      flowState = [sosStatus flowState];
      isKappaFlow = [updateCopy isKappaFlow];
      isKappaFlowActive = [updateCopy isKappaFlowActive];
      sosStatus2 = [updateCopy sosStatus];
      *buf = 134218752;
      *v42 = flowState;
      *&v42[8] = 1024;
      v43 = isKappaFlow;
      v44 = 1024;
      v45 = isKappaFlowActive;
      v46 = 1024;
      isPairedDeviceStatus = [sosStatus2 isPairedDeviceStatus];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "didReceiveSOSStatusUpdate state:%ld, isKappaFlow:%d, isKappaFlowActive:%d isFromPaired:%d", buf, 0x1Eu);
    }

    if (([updateCopy isKappaFlow] & 1) == 0)
    {
      if (qword_100456828 != -1)
      {
        sub_1002E6708();
      }

      v13 = qword_100456830;
      if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Received non-Kappa flow state from SOS SM (should never happen)", buf, 2u);
      }
    }

    sosStatus3 = [updateCopy sosStatus];
    isPairedDeviceStatus2 = [sosStatus3 isPairedDeviceStatus];

    sosKappaState = [updateCopy sosKappaState];
    if (sosKappaState > 3)
    {
      if (sosKappaState == 4)
      {
        mslRecording = self->_mslRecording;
        v37 = @"userResponse";
        v29 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [updateCopy sosKappaState]);
        v38 = v29;
        v30 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
        [(CSMSLDataRecording *)mslRecording updateMetadata:v30];

        ptr = self->_sessionInfoStats.__ptr_;
        if (*(self->_details.__ptr_ + 8) == 1)
        {
          *(ptr + 16) = 1;
          *(ptr + 25) = 1;
        }

        else
        {
          *(ptr + 17) = 1;
          *(ptr + 26) = 1;
        }
      }

      else if (sosKappaState == 6)
      {
        v22 = self->_mslRecording;
        v23 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [updateCopy sosKappaState]);
        v36 = v23;
        v24 = [NSDictionary dictionaryWithObjects:&v36 forKeys:&v35 count:1];
        [(CSMSLDataRecording *)v22 updateMetadata:v24];
      }
    }

    else if (sosKappaState == 1)
    {
      if (isPairedDeviceStatus2)
      {
        v25 = &off_10043F2C8;
      }

      else
      {
        v25 = &off_10043F2A0;
      }

      [(CSMSLDataRecording *)self->_mslRecording updateMetadata:v25];
      if (qword_100456828 != -1)
      {
        sub_1002E6708();
      }

      v26 = qword_100456830;
      if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *v42 = isPairedDeviceStatus2 ^ 1;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEBUG, "didReceiveSOSStatusUpdate SOSKappaStateUserCheckIn isLocal %d", buf, 8u);
      }

      v27 = self->_sessionInfoStats.__ptr_;
      if (*(self->_details.__ptr_ + 8) == 1)
      {
        if (isPairedDeviceStatus2)
        {
          *(v27 + 19) = 1;
        }

        else
        {
          *(v27 + 18) = 1;
        }
      }

      else if (isPairedDeviceStatus2)
      {
        *(v27 + 21) = 1;
      }

      else
      {
        *(v27 + 20) = 1;
      }
    }

    else if (sosKappaState == 3)
    {
      v17 = self->_mslRecording;
      v39 = @"userResponse";
      v18 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [updateCopy sosKappaState]);
      v40 = v18;
      v19 = [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      [(CSMSLDataRecording *)v17 updateMetadata:v19];

      v20 = self->_sessionInfoStats.__ptr_;
      if (*(self->_details.__ptr_ + 8) == 1)
      {
        *(v20 + 16) = 1;
        *(v20 + 27) = 1;
      }

      else
      {
        *(v20 + 17) = 1;
        *(v20 + 28) = 1;
      }
    }

    SOSInProgress = self->_SOSInProgress;
    isKappaFlowActive2 = SOSInProgress;
    if (!SOSInProgress)
    {
      isKappaFlowActive2 = [updateCopy isKappaFlowActive];
      self->_SOSInProgress = isKappaFlowActive2;
    }

    if (qword_100456828 != -1)
    {
      sub_1002E6708();
    }

    v34 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109376;
      *v42 = SOSInProgress;
      *&v42[4] = 1024;
      *&v42[6] = isKappaFlowActive2;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEBUG, "prev %d, current %d", buf, 0xEu);
    }

    if ((isKappaFlowActive2 & 1) == 0 && SOSInProgress)
    {
      [(CSHSMObjc *)self->_hsm signal:5 data:0];
    }
  }

  else
  {
    if (qword_100456828 != -1)
    {
      sub_1002E66F4();
    }

    v21 = qword_100456830;
    if (os_log_type_enabled(qword_100456830, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "sos status update for invalid mode", buf, 2u);
    }
  }
}

- (id).cxx_construct
{
  *(self + 8) = 0u;
  *(self + 9) = 0u;
  *(self + 22) = 0;
  *(self + 23) = 0;
  *(self + 21) = 0;
  return self;
}

@end