@interface WRM_CTService
+ (id)WRM_CTServiceControllerSingleton;
- (WRM_CTService)init;
- (__CTServerConnection)configureLaunchableCommCenter;
- (double)getServingCellFilteredMeasurements;
- (double)getServingCellRSRP;
- (void)configureCTNotificationCallBacks;
- (void)dealloc;
- (void)getCurrentCTMetrics:(__CTServerConnection *)metrics;
- (void)setCurrentSignalBars:(int64_t)bars;
- (void)setLteVoiceLQM:(int)m;
- (void)setServingCellECIO:(double)o;
- (void)setServingCellRSCP:(double)p;
- (void)setServingCellRSRP:(double)p;
- (void)setServingCellRSRQ:(double)q;
- (void)setServingCellRSSI:(double)i;
- (void)setServingCellSNR:(double)r;
- (void)setSrvccHandoverState:(BOOL)state;
- (void)tiggerEnhanceLQMConfiguration;
- (void)updateAudioQuality:(id)quality;
- (void)updateAudioQualityKaroo:(id *)karoo;
- (void)updateMovAverageOfSignalBar;
@end

@implementation WRM_CTService

+ (id)WRM_CTServiceControllerSingleton
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E6F68;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B81C8 != -1)
  {
    dispatch_once(&qword_1002B81C8, block);
  }

  return qword_1002B81C0;
}

- (WRM_CTService)init
{
  v5.receiver = self;
  v5.super_class = WRM_CTService;
  v2 = [(WRM_CTService *)&v5 init];
  if (v2)
  {
    *(v2 + 3) = dispatch_queue_create("com.apple.WirelessRadioManager.CTClient", 0);
    v3 = dispatch_queue_create("com.apple.WirelessRadioManager.CTServerQueue", 0);
    *(v2 + 1) = 0;
    *(v2 + 2) = 0;
    *(v2 + 4) = v3;
    *(v2 + 5) = 0;
    *(v2 + 45) = 0;
    *(v2 + 30) = 10;
    *(v2 + 53) = 0;
    *(v2 + 124) = 0;
    *(v2 + 86) = 0;
    *(v2 + 7) = 0;
    *(v2 + 32) = 0;
    *(v2 + 33) = 0;
    v2[65] = 1;
    *(v2 + 38) = 0;
    *(v2 + 136) = 0u;
    *(v2 + 120) = 0u;
    *(v2 + 104) = 0u;
    *(v2 + 23) = 0;
    *(v2 + 24) = 0;
    *(v2 + 25) = 0;
    v2[164] = 1;
    *(v2 + 165) = 0;
    *(v2 + 42) = 0;
    *(v2 + 22) = 1084227584;
    *(v2 + 9) = 0;
    *(v2 + 10) = 5;
    *(v2 + 13) = 0u;
    *(v2 + 14) = 0u;
    v2[272] = 1;
    *(v2 + 276) = 0;
  }

  return v2;
}

- (void)dealloc
{
  mQueue = self->mQueue;
  if (mQueue)
  {
    dispatch_release(mQueue);
    self->mQueue = 0;
  }

  mServerQueue = self->mServerQueue;
  if (mServerQueue)
  {
    dispatch_release(mServerQueue);
    self->mServerQueue = 0;
  }

  mCoreTelephonyConnection = self->mCoreTelephonyConnection;
  if (mCoreTelephonyConnection)
  {
    CFRelease(mCoreTelephonyConnection);
  }

  mCTLaunchableConnection = self->mCTLaunchableConnection;
  if (mCTLaunchableConnection)
  {
    CFRelease(mCTLaunchableConnection);
  }

  [WCM_Logging logLevel:22 message:@"WRM_CTService dealloc"];
  self->mCellularActive = 0;
  *&self->mDataAttached = 0;
  self->mRoaming = 0;
  self->mServingCellId = 0;
  self->mCoreTelephonyConnection = 0;
  self->mCTLaunchableConnection = 0;
  *&self->mServCellRadioTechnologyType = 10;
  *&self->mValidRsrpMeasurement = 0;
  self->mCommCenterKeepAliveAssertion = 0;
  self->mCommCenterPDPActiveAssertion = 0;
  self->mMovingAverageSignalBar = 5.0;
  self->mCurrentSignalBars = 5;
  *&self->mPrevAudioQualityWasGood = 1;
  self->mIMSVoiceOverPSMetricsValid = 0;
  self->mBBLongSessionStatus = 0;
  *&self->mBBHighPowerState = 0;
  self->mDataEnabled = 1;
  self->mLqm = 0;
  self->mRsrp = 0.0;
  self->mSnr = 0.0;
  self->mRsrq = 0.0;
  *&self->mRsrpDelta = 0u;
  *&self->mRsrqDelta = 0u;
  *&self->mEcio = 0u;
  self->mEcioDelta = 0.0;
  self->mIsSimActive = 1;
  *&self->m_CommCenterAssertionRefCount = 0;
  v7.receiver = self;
  v7.super_class = WRM_CTService;
  [(WRM_CTService *)&v7 dealloc];
}

- (__CTServerConnection)configureLaunchableCommCenter
{
  v2 = getprogname();
  v3 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s-iRAT Manager", v2);
  v4 = _CTServerConnectionCreateAndLaunchWithIdentifier();
  _CTServerConnectionSetTargetQueue();
  if (v3)
  {
    CFRelease(v3);
  }

  return v4;
}

- (void)getCurrentCTMetrics:(__CTServerConnection *)metrics
{
  v17 = 0;
  cf = 0;
  VoiceLinkQualityMetric = _CTServerConnectionGetVoiceLinkQualityMetric();
  [WCM_Logging logLevel:22 message:@"_CTServerConnectionGetVoiceLinkQualityMetric: error: %d, domain: %d", HIDWORD(VoiceLinkQualityMetric), VoiceLinkQualityMetric];
  EnhancedVoiceLinkQualityMetric = _CTServerConnectionGetEnhancedVoiceLinkQualityMetric();
  [WCM_Logging logLevel:22 message:@"LQM Blob Pointer: %p, error:%d, domain:%d", 0, HIDWORD(EnhancedVoiceLinkQualityMetric), EnhancedVoiceLinkQualityMetric];
  [WCM_Logging logLevel:22 message:@"Did not receive LQM BLOB from CT"];
  sub_1000E8210(0, self, metrics);
  LOBYTE(theString1) = 1;
  if (metrics)
  {
    if (_CTServerConnectionIsDataAttached())
    {
      [WCM_Logging logLevel:22 message:@"Unable to retrieve data attach status"];
    }

    else
    {
      [WCM_Logging logLevel:22 message:@"isDataAttached status: %d", theString1];
      [(WRM_CTService *)self updatePSAttachStatus:theString1 != 0];
    }

    LOBYTE(theString1) = 0;
    if (!_CTServerConnectionGetCellularDataIsEnabled())
    {
      [WCM_Logging logLevel:22 message:@"isDataEnabled status: %d", theString1];
      [(WRM_CTService *)self updateDataEnableStatus:theString1 != 0];
      goto LABEL_10;
    }

    v7 = @"Unable to retrieve data enable status";
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"iRAT currently not connected to telephony service"];
    v7 = @"iRAT currently not connected to telephony service";
  }

  [WCM_Logging logLevel:22 message:v7];
LABEL_10:
  theString1 = 0;
  RegistrationStatus = _CTServerConnectionGetRegistrationStatus();
  if (HIDWORD(RegistrationStatus) || RegistrationStatus)
  {
    [WCM_Logging logLevel:22 message:@"_CTServerConnectionGetRegistrationStatus error %d domain %d", HIDWORD(RegistrationStatus), RegistrationStatus];
  }

  else
  {
    v9 = CFStringCompare(theString1, kCTRegistrationStatusRegisteredHome, 0);
    v10 = kCTRegistrationStatusRegisteredRoaming;
    if (v9)
    {
      v11 = CFStringCompare(theString1, kCTRegistrationStatusRegisteredRoaming, 0) == kCFCompareEqualTo;
    }

    else
    {
      v11 = 1;
    }

    v12 = CFStringCompare(theString1, v10, 0) == kCFCompareEqualTo;
    [(WRM_CTService *)self updateRegistrationStatus:v11];
    [WCM_Logging logLevel:22 message:@"WRM_CTService:_CTServerConnectionGetRegistrationStatus reg status %d, roaming Status %d", v11, v12];
  }

  sub_1000E833C(metrics, self);
  CapabilityStatusExtended = _CTServerConnectionGetCapabilityStatusExtended();
  if (HIDWORD(CapabilityStatusExtended))
  {
    [WCM_Logging logLevel:22 message:@"_CTServerConnectionGetCapabilityStatusExtended: error: %d, domain: %d", HIDWORD(CapabilityStatusExtended), CapabilityStatusExtended];
    v14 = 0;
    v17 = 0;
  }

  else
  {
    v14 = v17 != 0;
  }

  [(WRM_CTService *)self updateVoLTEEnableStatus:v14];
  if (v17)
  {
    v15 = @"_CTServerConnectionGetCapabilityStatusExtended: volteSupported";
  }

  else
  {
    v15 = @"_CTServerConnectionGetCapabilityStatusExtended: volte not Supported";
  }

  [WCM_Logging logLevel:22 message:v15];
  if (cf)
  {
    CFRelease(cf);
  }
}

- (void)configureCTNotificationCallBacks
{
  [WCM_Logging logLevel:22 message:@"WRM_CTService:configureCTNotificationCallBacks"];
  v3 = getprogname();
  v4 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s-iRAT Manager", v3);
  self->mCoreTelephonyConnection = _CTServerConnectionCreateOnTargetQueue();
  _CTServerConnectionRegisterForNotification();
  _CTServerConnectionRegisterForNotification();
  _CTServerConnectionRegisterForNotification();
  _CTServerConnectionRegisterForNotification();
  _CTServerConnectionRegisterForNotification();
  _CTServerConnectionRegisterForNotification();
  _CTServerConnectionRegisterForNotification();
  _CTServerConnectionRegisterForNotification();
  [(WRM_CTService *)self getCurrentCTMetrics:self->mCoreTelephonyConnection];
  if (v4)
  {
    CFRelease(v4);
  }

  [WCM_Logging logLevel:22 message:@"WRM_CTService:configureCTNotificationCallBacks completed"];
}

- (void)tiggerEnhanceLQMConfiguration
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E9010;
  block[3] = &unk_10023DB28;
  block[4] = self;
  if (qword_1002B81D0 != -1)
  {
    dispatch_once(&qword_1002B81D0, block);
  }
}

- (double)getServingCellRSRP
{
  if (self->mValidRsrpMeasurement)
  {
    return self->mRsrp;
  }

  else
  {
    return self->mRawFilteredMeasurements;
  }
}

- (double)getServingCellFilteredMeasurements
{
  if (self->mValidRsrpMeasurement)
  {
    return self->mRsrp;
  }

  else
  {
    return self->mRawFilteredMeasurements;
  }
}

- (void)setServingCellRSSI:(double)i
{
  if (self->mValidRssiMeasurement)
  {
    self->mRssiDelta = self->mRssi - i;
    self->mRssi = i;
  }

  else
  {
    self->mRssi = i;
    self->mValidRssiMeasurement = 1;
  }
}

- (void)setServingCellRSRP:(double)p
{
  if (self->mValidRsrpMeasurement)
  {
    self->mRsrpDelta = self->mRsrp - p;
    self->mRsrp = p;
  }

  else
  {
    self->mRsrp = p;
    self->mValidRsrpMeasurement = 1;
  }
}

- (void)setServingCellRSRQ:(double)q
{
  if (self->mValidRsrqMeasurement)
  {
    self->mRsrqDelta = self->mRsrq - q;
    self->mRsrq = q;
  }

  else
  {
    self->mRsrq = q;
    self->mValidRsrqMeasurement = 1;
  }
}

- (void)setServingCellSNR:(double)r
{
  if (self->mValidSnrMeasurement)
  {
    self->mSnrDelta = self->mSnr - r;
    self->mSnr = r;
  }

  else
  {
    self->mSnr = r;
    self->mValidSnrMeasurement = 1;
  }
}

- (void)setServingCellRSCP:(double)p
{
  if (self->mValidRscpMeasurement)
  {
    self->mRscpDelta = self->mRscp - p;
    self->mRscp = p;
  }

  else
  {
    self->mRscp = p;
    self->mValidRscpMeasurement = 1;
  }
}

- (void)setServingCellECIO:(double)o
{
  if (self->mValidEcioMeasurement)
  {
    self->mEcioDelta = self->mEcio - o;
    self->mEcio = o;
  }

  else
  {
    self->mEcio = o;
    self->mValidEcioMeasurement = 1;
  }
}

- (void)setLteVoiceLQM:(int)m
{
  if (m && (m + 2) <= 0x66)
  {
    self->mLTEVoiceLQM = m;
    self->mValidLTEVoIPLqm = 1;
  }

  else
  {
    [WCM_Logging logLevel:22 message:@"setLteVoiceLQM, discarding invalid voiceLQM %d", *&m];
  }
}

- (void)setCurrentSignalBars:(int64_t)bars
{
  if (bars)
  {
    self->mCurrentSignalBars = bars;
  }

  else
  {
    self->mCurrentSignalBars = 5;
    [WCM_Logging logLevel:22 message:@"Ignorning signal bar: %d", 0];
  }
}

- (void)setSrvccHandoverState:(BOOL)state
{
  mQueue = self->mQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E9500;
  v4[3] = &unk_10023E008;
  v4[4] = self;
  stateCopy = state;
  dispatch_async(mQueue, v4);
}

- (void)updateAudioQuality:(id)quality
{
  v4 = (100 * quality.var0) / (quality.var1 + 0.000001) < 80.0 || quality.var1 < 0x1F5uLL;
  self->mPrevAudioQualityWasGood = v4;
  [WCM_Logging logLevel:22 message:@"BB Audio Metrics, CodecType: %d, Total Erasures: %d, Total playbacks: %d, Percent Erasures: %f, RSCP: %f, ECIO:%f, Eval Quality: %d", *&quality.var2, *&quality.var0, quality.var1, (100 * quality.var0) / (quality.var1 + 0.000001), *&self->mRscp, *&self->mEcio, v4];
}

- (void)updateAudioQualityKaroo:(id *)karoo
{
  var0 = karoo->var0;
  var1 = karoo->var1;
  v6 = (100 * var0) / (var1 + 0.000001) < 80.0 || var1 < 0x1F5;
  self->mPrevAudioQualityWasGood = v6;
  [WCM_Logging logLevel:22 message:@"BB Audio Metrics, CodecType: %d, Total Erasures: %d, Total playbacks: %d, Percent Erasures: %f, RSCP: %f, ECIO:%f, Eval Quality: %d", karoo->var2, var0, var1, (100 * var0) / (var1 + 0.000001), *&self->mRscp, *&self->mEcio, v6];
}

- (void)updateMovAverageOfSignalBar
{
  mCurrentSignalBars = self->mCurrentSignalBars;
  v3 = (mCurrentSignalBars + (self->mMovingAverageSignalBar * 23.0)) / 24.0;
  self->mMovingAverageSignalBar = v3;
  [WCM_Logging logLevel:24 message:@"Sampled Moving Average: %f, CurrentSignal Bars:%d", v3, mCurrentSignalBars];
}

@end