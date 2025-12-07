@interface PearlCoreAnalytics
+ (void)sendDisplayPearlGlassesBannerNotificationEvent;
+ (void)sendEnrollPearlGlassesBannerNotificationEvent;
- (BOOL)postSimpleCoreAnalyticsEvent:(id)event fromAWDMetric:(id)metric;
- (BOOL)setupDailyUpdateTimer;
- (PearlCoreAnalytics)init;
- (id)isBacklitSun:(id *)sun;
- (int)sequenceTypeToCaptureMethod:(unsigned __int8)method forSequence:(unsigned __int8)sequence;
- (void)analyzeSecureFaceDetectStart:(unsigned int)start sessionID:(unsigned int)d;
- (void)analyzeSecureFaceDetectStop;
- (void)analyzeSecureFrameMeta:(id)meta faceDetected:(BOOL)detected;
- (void)checkDailyUpdate;
- (void)checkYogiError:(int)error;
- (void)getDailyUpdateAnalytics;
- (void)lockStateUpdated:(unsigned int)updated forUser:(unsigned int)user;
- (void)sendBioLockoutEventAnalytics:(id)analytics;
- (void)sendEnrollEventAnalytics:(id)analytics orientation:(unint64_t)orientation;
- (void)sendFaceDetectEventAnalytics:(id)analytics fromMatch:(BOOL)match orientation:(unint64_t)orientation;
- (void)sendMatchEventAnalytics:(id)analytics orientation:(unint64_t)orientation identities:(id)identities;
- (void)sendPasscodeChallengeEventAnalytics:(id)analytics orientation:(unint64_t)orientation;
- (void)sendPearlAbcEvent:(unint64_t)event;
- (void)serviceMatchWithServer:(id)server;
- (void)setupDailyUpdateTimer;
@end

@implementation PearlCoreAnalytics

- (PearlCoreAnalytics)init
{
  v12.receiver = self;
  v12.super_class = PearlCoreAnalytics;
  v2 = [(PearlCoreAnalytics *)&v12 init];
  if (v2)
  {
    v2->_isInternalBuild = isInternalBuild();
    initWithPersistedData = [[PearlCoreAnalyticsDailyUpdateEvent alloc] initWithPersistedData];
    dailyEvent = v2->_dailyEvent;
    v2->_dailyEvent = initWithPersistedData;

    v5 = objc_alloc(MEMORY[0x29EDBFD68]);
    v6 = [v5 initWithPersistedDataWithName:*MEMORY[0x29EDBFDE0]];
    lockState = v2->_lockState;
    v2->_lockState = v6;

    [(PearlCoreAnalytics *)v2 setupDailyUpdateTimer];
    v8 = objc_alloc_init(PearlCoreAnalyticsSecureFaceDetectEvent);
    secureFaceDetect = v2->_secureFaceDetect;
    v2->_secureFaceDetect = v8;

    previousSecureFaceDetect = v2->_previousSecureFaceDetect;
    v2->_previousSecureFaceDetect = 0;
  }

  return v2;
}

- (void)checkDailyUpdate
{
  currentCalendar = [MEMORY[0x29EDB8D98] currentCalendar];
  previousEventDate = [(BiometricKitCoreAnalyticsEvent *)self->_dailyEvent previousEventDate];
  v5 = [currentCalendar isDateInToday:previousEventDate];

  if ((v5 & 1) == 0)
  {

    [(PearlCoreAnalytics *)self getDailyUpdateAnalytics];
  }
}

- (void)setupDailyUpdateTimer
{
  v3 = dispatch_get_global_queue(-2, 0);
  v4 = dispatch_source_create(MEMORY[0x29EDCA5D0], 0, 0, v3);
  dailyUpdateTimer = self->_dailyUpdateTimer;
  self->_dailyUpdateTimer = v4;

  v6 = self->_dailyUpdateTimer;
  if (v6)
  {
    goto LABEL_2;
  }

  if (![(PearlCoreAnalytics *)&self->_dailyUpdateTimer setupDailyUpdateTimer])
  {
    v6 = v10;
LABEL_2:
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __43__PearlCoreAnalytics_setupDailyUpdateTimer__block_invoke;
    v9[3] = &unk_29EE54570;
    v9[4] = self;
    dispatch_source_set_event_handler(v6, v9);
    v7 = self->_dailyUpdateTimer;
    v8 = dispatch_walltime(0, 60000000000);
    dispatch_source_set_timer(v7, v8, 0x4E94914F0000uLL, 0xDF8475800uLL);
    dispatch_resume(self->_dailyUpdateTimer);
  }
}

- (void)serviceMatchWithServer:(id)server
{
  serverCopy = server;
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics serviceMatch\n", v6, 2u);
  }

  [(BiometricKitCoreAnalyticsLockState *)self->_lockState serviceMatchWithServer:serverCopy];
}

- (void)lockStateUpdated:(unsigned int)updated forUser:(unsigned int)user
{
  v4 = *&user;
  v5 = *&updated;
  v11 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics lockStateUpdated: %u forUser: %u\n", v8, 0xEu);
  }

  [(BiometricKitCoreAnalyticsLockState *)self->_lockState lockStateUpdated:v5 forUser:v4];
  [(BiometricKitCoreAnalyticsLockState *)self->_lockState persistData];
}

- (void)sendMatchEventAnalytics:(id)analytics orientation:(unint64_t)orientation identities:(id)identities
{
  v181 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
  identitiesCopy = identities;
  v8 = __osLog;
  if (!__osLog)
  {
    v8 = MEMORY[0x29EDCA988];
  }

  v9 = v8;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendMatchEventAnalytics: matchMessage: %d\n", buf, 8u);
  }

  v158 = analyticsCopy;

  v160 = objc_alloc_init(PearlCoreAnalyticsMatchEvent);
  getAWDMetric = [(PearlCoreAnalyticsEvent *)v160 getAWDMetric];
  v179 = 0u;
  memset(v180, 0, 90);
  *buf = 0u;
  if (!analyticsCopy)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_177;
  }

  if ([analyticsCopy length] <= 0x18A)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_177;
  }

  v11 = analyticsCopy;
  bytes = [analyticsCopy bytes];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  [getAWDMetric setCaptureMethod:{-[PearlCoreAnalytics sequenceTypeToCaptureMethod:forSequence:](selfCopy, "sequenceTypeToCaptureMethod:forSequence:", *(bytes + 350), *(bytes + 15))}];
  if (selfCopy->_isInternalBuild)
  {
    [getAWDMetric setCombinedSequenceEnabled:*(bytes + 300)];
  }

  [getAWDMetric setMatchType:*(bytes + 359)];
  v14 = *(bytes + 51);
  v15 = *(bytes + 55);
  v16 = *(bytes + 59);
  v17 = *(bytes + 105);
  v18 = *(bytes + 109);
  v19 = *(bytes + 113);
  v150 = *(bytes + 157);
  v20 = *(bytes + 161);
  v156 = *(bytes + 165);
  v154 = (bytes + 51);
  [getAWDMetric setOverallResult:*(bytes + 13)];
  [getAWDMetric setOverallTime:absoluteToMiliseconds()];
  [getAWDMetric setOverallTimeWithRetries:absoluteToMiliseconds()];
  [getAWDMetric setMatchCancelled:*(bytes + 332)];
  if (*(bytes + 351))
  {
    [getAWDMetric setTimeSinceSleep:absoluteToMiliseconds()];
  }

  v21 = absoluteToMiliseconds();
  if (v21)
  {
    [getAWDMetric setFaceDetectEndTime:v21];
  }

  [getAWDMetric setFaceDetectResult:*(bytes + 49)];
  v22 = v15 + v14 + v16;
  [getAWDMetric setFaceDetectFrameCount:v22];
  [getAWDMetric setFaceDetectFrameFloodCount:*v154];
  [getAWDMetric setFaceDetectFrameSparseCount:*(bytes + 55)];
  [getAWDMetric setFaceDetectFrameDenseCount:*(bytes + 59)];
  v23 = absoluteToMiliseconds();
  if (v23)
  {
    [getAWDMetric setBioCheckEndTime:v23];
  }

  [getAWDMetric setBioCheckResult:*(bytes + 51)];
  if (*(bytes + 51) == -1)
  {
    [getAWDMetric setHasBioCheckResult:0];
  }

  [getAWDMetric setBioCheckFrameCount:(v18 + v17 + v19)];
  [getAWDMetric setBioCheckFrameFloodCount:*(bytes + 105)];
  [getAWDMetric setBioCheckFrameSparseCount:*(bytes + 109)];
  [getAWDMetric setBioCheckFrameDenseCount:*(bytes + 113)];
  v24 = absoluteToMiliseconds();
  if (v24)
  {
    [getAWDMetric setProbingPatternEndTime:v24];
  }

  [getAWDMetric setProbingPatternResult:*(bytes + 155)];
  if (*(bytes + 155) == -1)
  {
    [getAWDMetric setHasProbingPatternResult:0];
  }

  [getAWDMetric setProbingPatternFrameCount:(v20 + v150 + v156)];
  [getAWDMetric setProbingPatternFrameFloodCount:*(bytes + 157)];
  [getAWDMetric setProbingPatternFrameSparseCount:*(bytes + 161)];
  [getAWDMetric setProbingPatternFrameDenseCount:*(bytes + 165)];
  [getAWDMetric setAmbientLux:*bytes];
  [getAWDMetric setMatchForUnlock:*(bytes + 277) & 1];
  [getAWDMetric setFailedUnlockAttemptsFromFD:*(bytes + 281)];
  [getAWDMetric setFailedUnlockAttemptsFromBiocheck:*(bytes + 285)];
  [getAWDMetric setFailedMatchAttemptsFromFD:*(bytes + 289)];
  [getAWDMetric setFailedMatchAttemptsFromBiocheck:*(bytes + 293)];
  if (*(bytes + 232) == 2)
  {
    v25 = *(bytes + 233);
    v26 = *(bytes + 234);
    v27 = *(bytes + 225) == 0;
    if (*(bytes + 234))
    {
      v157 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v31 = 0;
    }

    else
    {
      v31 = *(bytes + 226) == 0;
      v30 = *(bytes + 227) == 0;
      v29 = *(bytes + 236) == 0;
      v28 = *(bytes + 237) == 0;
      v157 = *(bytes + 235) == 0;
    }
  }

  else
  {
    v157 = 0;
    v26 = 0;
    v25 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v27 = 0;
  }

  if (*(bytes + 252) == 3)
  {
    if (*(bytes + 155) >= 1)
    {
      [getAWDMetric setProbingPatternFailure:1];
    }

    if (*(bytes + 253) && ([getAWDMetric captureMethod] != 3 || !v25))
    {
      v25 = *(bytes + 253);
    }

    if (*(bytes + 254))
    {
      captureMethod = [getAWDMetric captureMethod];
      if (v26 && captureMethod == 3)
      {
        if (*(bytes + 245))
        {
          v27 = v27;
        }

        else
        {
          v27 = 1;
        }

        goto LABEL_60;
      }

      v26 = *(bytes + 254);
    }

    if (*(bytes + 245))
    {
      v27 = v27;
    }

    else
    {
      v27 = 1;
    }

    if (!v26)
    {
      if (*(bytes + 246))
      {
        v31 = v31;
      }

      else
      {
        v31 = 1;
      }

      if (*(bytes + 247))
      {
        v30 = v30;
      }

      else
      {
        v30 = 1;
      }

      if (*(bytes + 256))
      {
        v29 = v29;
      }

      else
      {
        v29 = 1;
      }

      if (*(bytes + 257))
      {
        v28 = v28;
      }

      else
      {
        v28 = 1;
      }

      if (*(bytes + 255))
      {
        v33 = v157;
      }

      else
      {
        v33 = 1;
      }

      v157 = v33;
    }
  }

LABEL_60:
  [getAWDMetric setMatcherFailure:v27];
  [getAWDMetric setMatchDepthFailure:v30];
  [getAWDMetric setMatchFloodFailure:v31];
  [getAWDMetric setAsFloodFailure:v29];
  [getAWDMetric setAsDepthFailure:v28];
  [getAWDMetric setFeatureGenerationError:v25];
  [getAWDMetric setMatchFeatureVectorError:v26];
  [getAWDMetric setAsFailure:v157];
  [getAWDMetric setOnlineTemplateUpdated:*(bytes + 199) != 0];
  [getAWDMetric setPasscodeChallengeAllowed:*(bytes + 200) != 0];
  v151 = bytes + 63;
  if (*(bytes + 63) == 1)
  {
    [getAWDMetric setFaceDetectFaceDistance:*(bytes + 69)];
    [getAWDMetric setFaceDetectCamRectX:*(bytes + 71)];
    [getAWDMetric setFaceDetectCamRectY:*(bytes + 73)];
    [getAWDMetric setFaceDetectCamRectW:*(bytes + 75)];
    [getAWDMetric setFaceDetectCamRectH:*(bytes + 77)];
    [getAWDMetric setFaceDetectPPMRequestedBudget:*(bytes + 79)];
    [getAWDMetric setFaceDetectPPMAllocatedBudget:*(bytes + 80)];
    v34 = bytes + 63;
    if (*(bytes + 81) != -1)
    {
      v35 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:?];
      [(PearlCoreAnalyticsMatchEvent *)v160 setCamLux:v35];

      v34 = bytes + 63;
    }
  }

  else
  {
    v34 = 0;
  }

  if (*(bytes + 117) == 1)
  {
    [getAWDMetric setBioCheckFaceDistance:*(bytes + 123)];
    [getAWDMetric setBioCheckCamRectX:*(bytes + 125)];
    [getAWDMetric setBioCheckCamRectY:*(bytes + 127)];
    [getAWDMetric setBioCheckCamRectW:*(bytes + 129)];
    [getAWDMetric setBioCheckCamRectH:*(bytes + 131)];
    [getAWDMetric setBioCheckPPMRequestedBudget:*(bytes + 133)];
    [getAWDMetric setBioCheckPPMAllocatedBudget:*(bytes + 134)];
    if ([getAWDMetric captureMethod] != 3)
    {
      v36 = [(PearlCoreAnalytics *)obj isBacklitSun:bytes + 117];
      [(PearlCoreAnalyticsMatchEvent *)v160 setBacklitSun:v36];
    }

    v34 = bytes + 117;
  }

  if (*(bytes + 169) == 1)
  {
    [getAWDMetric setProbingPatternFaceDistance:*(bytes + 175)];
    [getAWDMetric setProbingPatternCamRectX:*(bytes + 177)];
    [getAWDMetric setProbingPatternCamRectY:*(bytes + 179)];
    [getAWDMetric setProbingPatternCamRectW:*(bytes + 181)];
    [getAWDMetric setProbingPatternCamRectH:*(bytes + 183)];
    if ([getAWDMetric captureMethod] != 3)
    {
      v34 = bytes + 117;
    }

    backlitSun = [(PearlCoreAnalyticsMatchEvent *)v160 backlitSun];
    v38 = backlitSun == 0;

    if (v38)
    {
      v39 = [(PearlCoreAnalytics *)obj isBacklitSun:bytes + 169];
      [(PearlCoreAnalyticsMatchEvent *)v160 setBacklitSun:v39];
    }
  }

  if (v34)
  {
    [getAWDMetric setSensorTemperature:*(v34 + 2)];
    if (*(v34 + 2) == -273)
    {
      [getAWDMetric setHasSensorTemperature:0];
    }

    [getAWDMetric setFaceDistance:{*(v34 + 3), v151}];
    [getAWDMetric setHasOcclusion:v34[1]];
    [getAWDMetric setCamRectX:*(v34 + 4)];
    [getAWDMetric setCamRectY:*(v34 + 5)];
    [getAWDMetric setCamRectW:*(v34 + 6)];
    [getAWDMetric setCamRectH:*(v34 + 7)];
  }

  if (*(bytes + 204))
  {
    v40 = *(bytes + 213);
    v41 = *(bytes + 205);
  }

  else
  {
    v41 = -1;
    v40 = -1;
  }

  [getAWDMetric setRfcSetIndex:{v41, v151}];
  [getAWDMetric setRfcFrameIndex:v40];
  if (v41 == -1)
  {
    [getAWDMetric setHasRfcSetIndex:0];
  }

  if (v40 == -1)
  {
    [getAWDMetric setHasRfcFrameIndex:0];
  }

  if (*(bytes + 202) == 1 && *(bytes + 265))
  {
    v42 = *(bytes + 266);
    v43 = 1;
  }

  else
  {
    v42 = 0;
    v43 = 0;
  }

  [getAWDMetric setBioLockout:v43];
  [getAWDMetric setBioLockoutReason:v42];
  [getAWDMetric setCameraErr:*(bytes + 4)];
  if (*(bytes + 202) == 1)
  {
    if ((bytes[67] & 0x80000000) == 0)
    {
      [getAWDMetric setOnlineTemplateAge:?];
    }

    if ((bytes[68] & 0x80000000) == 0)
    {
      [getAWDMetric setShortTermTemplateAge:?];
    }
  }

  [getAWDMetric setAutoRetry:*(bytes + 297)];
  [getAWDMetric setAutoRetryAllowed:*(bytes + 298)];
  if (obj->_isInternalBuild)
  {
    [getAWDMetric setAutoRetryEnabled:*(bytes + 301)];
  }

  [getAWDMetric setMatchIdentityCount:*(bytes + 299)];
  v167 = 0u;
  v168 = 0u;
  v165 = 0u;
  v166 = 0u;
  v44 = identitiesCopy;
  v45 = [v44 countByEnumeratingWithState:&v165 objects:v177 count:16];
  if (v45)
  {
    v46 = *v166;
    do
    {
      for (i = 0; i != v45; ++i)
      {
        if (*v166 != v46)
        {
          objc_enumerationMutation(v44);
        }

        creationTime = [*(*(&v165 + 1) + 8 * i) creationTime];
        [creationTime timeIntervalSince1970];
        [getAWDMetric addIdentityCreationTime:(v49 * 1000.0)];
      }

      v45 = [v44 countByEnumeratingWithState:&v165 objects:v177 count:16];
    }

    while (v45);
  }

  v50 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 302)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackNoFaceDetected:v50];

  v51 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 303)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackFaceTooClose:v51];

  v52 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 304)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackFaceTooFar:v52];

  v53 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 305)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackPoseOutOfRange:v53];

  v54 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 306)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackNoAttention:v54];

  v55 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 307)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackFaceOccluded:v55];

  v56 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 308)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackCameraObstructed:v56];

  v57 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 309)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackPartialOutOfFOV:v57];

  v58 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 310)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackPoseMarginal:v58];

  v59 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 311)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackNoseAndMouthOccluded:v59];

  v60 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 312)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementInfoFeedbackDepthCameraObstructed:v60];

  v61 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 367)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusNoFaceDetected:v61];

  v62 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 368)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusFaceTooClose:v62];

  v63 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 369)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusFaceTooFar:v63];

  v64 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 370)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusPoseOutOfRange:v64];

  v65 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 371)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusNoAttention:v65];

  v66 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 372)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusFaceOccluded:v66];

  v67 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 373)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusCameraObstructed:v67];

  v68 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 374)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusPartialOutOfFOV:v68];

  v69 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 375)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusPoseMarginal:v69];

  v70 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 376)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusNoseAndMouthOccluded:v70];

  v71 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 377)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusDepthCameraObstructed:v71];

  v72 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 378)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEngagementStatusFPDFailure:v72];

  if (*(bytes + 314) == 1)
  {
    v73 = [MEMORY[0x29EDBA0F8] stringWithCString:bytes + 315 encoding:1];
    [getAWDMetric setCameraHWParameters:v73];
  }

  [getAWDMetric setDeviceOrientation:orientation];
  if (*(bytes + 349) == 1)
  {
    [getAWDMetric setFaceOrientation:*(bytes + 333)];
    [getAWDMetric setFacePitch:*(bytes + 337)];
    [getAWDMetric setFaceYaw:*(bytes + 341)];
    [getAWDMetric setFaceRoll:*(bytes + 345)];
    BKLogCode();
  }

  if (v22 || *(bytes + 4))
  {
    [(PearlCoreAnalytics *)obj checkYogiError:*(bytes + 4)];
  }

  v74 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 360)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setGlassesDetected:v74];

  v75 = *(bytes + 362) + *(bytes + 361) + *(bytes + 363);
  v76 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v75];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEnrolledTemplateCountType0:v76];

  v77 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 361)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEnrolledTemplateCountType0NoGlasses:v77];

  v78 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 362)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEnrolledTemplateCountType0WithGlasses:v78];

  v79 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 363)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEnrolledTemplateCountType0Unknown:v79];

  LODWORD(v79) = *(bytes + 365) + *(bytes + 364) + *(bytes + 366);
  v80 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v79];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEnrolledTemplateCountType1:v80];

  v81 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 364)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEnrolledTemplateCountType1NoGlasses:v81];

  v82 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 365)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEnrolledTemplateCountType1WithGlasses:v82];

  v83 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 366)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEnrolledTemplateCountType1Unknown:v83];

  v84 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v79 + v75];
  [(PearlCoreAnalyticsMatchEvent *)v160 setEnrolledTemplateCountTotal:v84];

  v85 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 93)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setGmcRun:v85];

  v86 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 394)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setMatchTrigger:v86];

  v87 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 392)];
  [(PearlCoreAnalyticsMatchEvent *)v160 setUnsupportedOrientation:v87];

  if (obj->_isInternalBuild)
  {
    v88 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 393)];
    [(PearlCoreAnalyticsMatchEvent *)v160 setSecureFaceDetectBootArgsUsed:v88];
  }

  if (obj->_secureFaceDetectSupported && *(bytes + 394) == 1 && !*(bytes + 387) && (*(bytes + 393) & 1) == 0 && (*(bytes + 297) & 1) == 0)
  {
    array = [MEMORY[0x29EDB8DE8] array];
    v90 = __osLog;
    if (!__osLog)
    {
      v90 = MEMORY[0x29EDCA988];
    }

    v91 = v90;
    if (os_log_type_enabled(v91, OS_LOG_TYPE_ERROR))
    {
      *v170 = 0;
      _os_log_impl(&dword_296CA4000, v91, OS_LOG_TYPE_ERROR, "PearlCoreAnalytics sendMatchEventAnalytics: unexpected legacy precheck for device initiated match!\n", v170, 2u);
    }

    v92 = __osLog;
    if (!__osLog)
    {
      v92 = MEMORY[0x29EDCA988];
    }

    v93 = v92;
    if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
    {
      v94 = *(bytes + 379);
      v95 = *(bytes + 383);
      v96 = *(bytes + 387);
      v97 = *(bytes + 391);
      v98 = *(bytes + 392);
      *v170 = 67110144;
      *&v170[4] = v94;
      *&v170[8] = 1024;
      *&v170[10] = v95;
      v171 = 1024;
      v172 = v96;
      v173 = 1024;
      v174 = v97;
      v175 = 1024;
      v176 = v98;
      _os_log_impl(&dword_296CA4000, v93, OS_LOG_TYPE_ERROR, "PearlCoreAnalytics sendMatchEventAnalytics: SecureFaceDetectInfo: state: %u sessionID: %u reason: %u timeout: %u unsupportedOrientation: %u\n", v170, 0x20u);
    }

    getPrintableArray = [(PearlCoreAnalyticsEvent *)obj->_secureFaceDetect getPrintableArray];
    [array addObjectsFromArray:getPrintableArray];

    getPrintableArray2 = [(PearlCoreAnalyticsEvent *)obj->_previousSecureFaceDetect getPrintableArray];
    [array addObjectsFromArray:getPrintableArray2];

    getPrintableArray3 = [(PearlCoreAnalyticsEvent *)v160 getPrintableArray];
    [array addObjectsFromArray:getPrintableArray3];

    v102 = __osLog;
    if (!__osLog)
    {
      v102 = MEMORY[0x29EDCA988];
    }

    v103 = v102;
    if (os_log_type_enabled(v103, OS_LOG_TYPE_ERROR))
    {
      *v170 = 0;
      _os_log_impl(&dword_296CA4000, v103, OS_LOG_TYPE_ERROR, "PearlCoreAnalytics sendMatchEventAnalytics: _secureFaceDetect, _previousSecureFaceDetect matchCAEvent:\n", v170, 2u);
    }

    v163 = 0u;
    v164 = 0u;
    v161 = 0u;
    v162 = 0u;
    v104 = array;
    v105 = [v104 countByEnumeratingWithState:&v161 objects:v169 count:16];
    if (v105)
    {
      v106 = *v162;
      do
      {
        for (j = 0; j != v105; ++j)
        {
          if (*v162 != v106)
          {
            objc_enumerationMutation(v104);
          }

          v108 = *(*(&v161 + 1) + 8 * j);
          v109 = __osLog;
          if (!__osLog)
          {
            v109 = MEMORY[0x29EDCA988];
          }

          v110 = v109;
          if (os_log_type_enabled(v110, OS_LOG_TYPE_ERROR))
          {
            *v170 = 138412290;
            *&v170[4] = v108;
            _os_log_impl(&dword_296CA4000, v110, OS_LOG_TYPE_ERROR, "%@\n", v170, 0xCu);
          }
        }

        v105 = [v104 countByEnumeratingWithState:&v161 objects:v169 count:16];
      }

      while (v105);
    }

    [(PearlCoreAnalytics *)obj sendPearlAbcEvent:9];
  }

  v111 = *(bytes + 383);
  if (!v111)
  {
    goto LABEL_162;
  }

  secureFaceDetect = obj->_secureFaceDetect;
  if (!secureFaceDetect)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
LABEL_195:

    objc_sync_exit(obj);
    goto LABEL_177;
  }

  sessionID = [(PearlCoreAnalyticsSecureFaceDetectEvent *)secureFaceDetect sessionID];
  if ([sessionID unsignedIntValue] == v111)
  {
  }

  else
  {
    sessionID2 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sessionID];
    v115 = [sessionID2 unsignedIntValue] == v111;

    if (!v115)
    {
      if (*(bytes + 379) == 1)
      {
        [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
        goto LABEL_195;
      }

      if (*(bytes + 51) != -1)
      {
        [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
        goto LABEL_195;
      }

      if (*(bytes + 155) != -1)
      {
        [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
        goto LABEL_195;
      }

      v121 = objc_alloc_init(PearlCoreAnalyticsSecureFaceDetectEvent);
      previousSecureFaceDetect = obj->_previousSecureFaceDetect;
      obj->_previousSecureFaceDetect = v121;

      v123 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
      [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSequenceStartDate:v123];

      v124 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
      [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSequenceEndDate:v124];

      sessionID3 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v111];
      [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSessionID:sessionID3];
      goto LABEL_156;
    }
  }

  sessionID3 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_secureFaceDetect sessionID];
  if ([sessionID3 unsignedIntValue] != v111)
  {
LABEL_156:

    goto LABEL_157;
  }

  sessionID4 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sessionID];
  v118 = [sessionID4 unsignedIntValue] == v111;

  if (!v118)
  {
    sequenceStartDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_secureFaceDetect sequenceStartDate];
    v120 = sequenceStartDate == 0;

    if (v120)
    {
      [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
      goto LABEL_195;
    }

    if (*(bytes + 51) != -1)
    {
      [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
      goto LABEL_195;
    }

    if (*(bytes + 155) != -1)
    {
      [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
      goto LABEL_195;
    }

    [(PearlCoreAnalytics *)obj analyzeSecureFaceDetectStop];
    if (*(bytes + 49) == 255)
    {
      [getAWDMetric setHasFaceDetectResult:0];
    }
  }

LABEL_157:
  v125 = obj->_previousSecureFaceDetect;
  if (!v125)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  sequenceStartDate2 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v125 sequenceStartDate];
  v127 = sequenceStartDate2 == 0;

  if (v127)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  sequenceEndDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sequenceEndDate];
  v129 = sequenceEndDate == 0;

  if (v129)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  sessionID5 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect sessionID];
  v131 = [sessionID5 unsignedIntValue] == v111;

  if (!v131)
  {
    [PearlCoreAnalytics sendMatchEventAnalytics:orientation:identities:];
    goto LABEL_195;
  }

  v132 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 379)];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSecureFaceDetectState:v132];

  v133 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 387)];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)obj->_previousSecureFaceDetect setSecureFaceDetectReason:v133];

  dictionaryRepresentation = [(BiometricKitCoreAnalyticsEvent *)obj->_previousSecureFaceDetect dictionaryRepresentation];
  [(PearlCoreAnalyticsMatchEvent *)v160 setSecureFaceDetectDict:dictionaryRepresentation];

LABEL_162:
  if ([getAWDMetric hasFaceDetectResult] && !objc_msgSend(getAWDMetric, "faceDetectResult"))
  {
    v135 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(getAWDMetric, "overallTime") - objc_msgSend(getAWDMetric, "faceDetectEndTime")}];
    [(PearlCoreAnalyticsMatchEvent *)v160 setOverallTimeFaceDetected:v135];
  }

  v136 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(getAWDMetric, "overallTime") / 0xAuLL}];
  [(PearlCoreAnalyticsMatchEvent *)v160 setOverallTimeBounded:v136];

  overallTimeFaceDetected = [(PearlCoreAnalyticsMatchEvent *)v160 overallTimeFaceDetected];

  if (overallTimeFaceDetected)
  {
    v138 = MEMORY[0x29EDBA070];
    overallTimeFaceDetected2 = [(PearlCoreAnalyticsMatchEvent *)v160 overallTimeFaceDetected];
    v140 = [v138 numberWithUnsignedInt:{objc_msgSend(overallTimeFaceDetected2, "unsignedIntValue") / 0xAuLL}];
    [(PearlCoreAnalyticsMatchEvent *)v160 setOverallTimeFaceDetectedBounded:v140];
  }

  if ([getAWDMetric hasFaceDetectEndTime])
  {
    v141 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:{objc_msgSend(getAWDMetric, "faceDetectEndTime") / 0xAuLL}];
    [(PearlCoreAnalyticsMatchEvent *)v160 setFaceDetectEndTimeBounded:v141];
  }

  objc_sync_exit(obj);

  if (*(bytes + 221))
  {
    [(PearlCoreAnalytics *)obj sendPearlAbcEvent:?];
  }

  [(BiometricKitCoreAnalyticsEvent *)v160 postEvent];
  v142 = *(bytes + 41);
  *buf = *(bytes + 4);
  *&buf[8] = v142;
  BYTE1(v179) = *(bytes + 49);
  v143 = *bytes;
  HIDWORD(v179) = *(bytes + 59);
  LODWORD(v180[0]) = v143;
  *(&v179 + 4) = *v154;
  v144 = *v152;
  *(&v180[1] + 2) = *(v152 + 14);
  *(v180 + 4) = v144;
  *(&v180[2] + 10) = *(bytes + 310);
  *(&v180[2] + 2) = *(bytes + 302);
  *(&v180[4] + 7) = *(bytes + 375);
  *(&v180[3] + 15) = *(bytes + 367);
  v145 = *(bytes + 333);
  BYTE14(v180[3]) = *(bytes + 349);
  *(&v180[2] + 14) = v145;
  v146 = *(bytes + 379);
  *(&v180[5] + 2) = *(bytes + 386);
  *(&v180[4] + 11) = v146;
  if (*(bytes + 4) && v142 >= *(bytes + 5))
  {
    BYTE2(v179) = *(bytes + 4);
  }

  v147 = [MEMORY[0x29EDB8DA0] dataWithBytes:buf length:122];
  [(PearlCoreAnalytics *)obj sendFaceDetectEventAnalytics:v147 fromMatch:1 orientation:orientation];
  BKLogCode();
  BKLogCode();
  BKLogCode();
  BKLogEvent();
  if ((*bytes & 0x80000000) == 0)
  {
    BKLogCode();
  }

  [(PearlCoreAnalyticsDailyUpdateEvent *)obj->_dailyEvent updateDailyMatchValues:bytes];

LABEL_177:
  v148 = __osLog;
  if (!__osLog)
  {
    v148 = MEMORY[0x29EDCA988];
  }

  v149 = v148;
  if (os_log_type_enabled(v149, OS_LOG_TYPE_DEBUG))
  {
    *v170 = 0;
    _os_log_impl(&dword_296CA4000, v149, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendMatchEventAnalytics: -> void\n", v170, 2u);
  }
}

- (void)sendFaceDetectEventAnalytics:(id)analytics fromMatch:(BOOL)match orientation:(unint64_t)orientation
{
  v88 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
  if (__osLog)
  {
    v8 = __osLog;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendFaceDetectEventAnalytics: fdMessage: %d\n", buf, 8u);
  }

  v85 = analyticsCopy;
  v9 = objc_alloc_init(PearlCoreAnalyticsFaceDetectEvent);
  if (!analyticsCopy)
  {
    [PearlCoreAnalytics sendFaceDetectEventAnalytics:buf fromMatch:? orientation:?];
LABEL_50:
    v81 = v86;
    dictionaryRepresentation = *buf;
    goto LABEL_42;
  }

  if ([analyticsCopy length] <= 0x79)
  {
    [PearlCoreAnalytics sendFaceDetectEventAnalytics:buf fromMatch:? orientation:?];
    goto LABEL_50;
  }

  v10 = analyticsCopy;
  bytes = [analyticsCopy bytes];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = *(bytes + 20);
  v14 = *(bytes + 24);
  v15 = *(bytes + 28);
  v16 = [MEMORY[0x29EDBA070] numberWithUnsignedLongLong:absoluteToMiliseconds()];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setOverallTime:v16];

  v17 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 32)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setAmbientLux:v17];

  v18 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:orientation];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setDeviceOrientation:v18];

  v19 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 120)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setUnsupportedOrientation:v19];

  if (selfCopy->_isInternalBuild)
  {
    v20 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 121)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setSecureFaceDetectBootArgsUsed:v20];
  }

  v21 = (v14 + v13 + v15);
  if (*(bytes + 115))
  {
    secureFaceDetect = selfCopy->_secureFaceDetect;
    if (!secureFaceDetect)
    {
      [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
      goto LABEL_57;
    }

    v23 = *(bytes + 111);
    sessionID = [(PearlCoreAnalyticsSecureFaceDetectEvent *)secureFaceDetect sessionID];
    unsignedIntValue = [sessionID unsignedIntValue];
    sessionID2 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect sessionID];
    if (unsignedIntValue == [sessionID2 unsignedIntValue])
    {
      sessionID3 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect sessionID];
      v28 = [sessionID3 unsignedIntValue] == v23;

      if (!v28)
      {
        if (*(bytes + 107) == 1)
        {
          [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
          goto LABEL_57;
        }

        v29 = objc_alloc_init(PearlCoreAnalyticsSecureFaceDetectEvent);
        previousSecureFaceDetect = selfCopy->_previousSecureFaceDetect;
        selfCopy->_previousSecureFaceDetect = v29;

        v31 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSequenceStartDate:v31];

        v32 = [MEMORY[0x29EDB8DB0] dateWithTimeIntervalSince1970:0.0];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSequenceEndDate:v32];

        v33 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v23];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSessionID:v33];

        goto LABEL_20;
      }
    }

    else
    {
    }

    sessionID4 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_secureFaceDetect sessionID];
    v36 = [sessionID4 unsignedIntValue] == v23;

    if (v36)
    {
      [(PearlCoreAnalytics *)selfCopy analyzeSecureFaceDetectStop];
    }

LABEL_20:
    v37 = selfCopy->_previousSecureFaceDetect;
    if (v37)
    {
      sequenceStartDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)v37 sequenceStartDate];
      v39 = sequenceStartDate == 0;

      if (v39)
      {
        [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
      }

      else
      {
        sequenceEndDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect sequenceEndDate];
        v41 = sequenceEndDate == 0;

        if (v41)
        {
          [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
        }

        else
        {
          sessionID5 = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect sessionID];
          v43 = [sessionID5 unsignedIntValue] == v23;

          if (v43)
          {
            v44 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 107)];
            [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSecureFaceDetectState:v44];

            v45 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 115)];
            [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect setSecureFaceDetectReason:v45];

            if (v21)
            {
              v46 = 0;
            }

            else
            {
              v46 = *(bytes + 17) == 255;
            }

            secureFaceDetectFaceDetected = [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_previousSecureFaceDetect secureFaceDetectFaceDetected];
            bOOLValue = [secureFaceDetectFaceDetected BOOLValue];

            if ((bOOLValue & 1) == 0)
            {
              [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFailed:MEMORY[0x29EDB8EB0]];
            }

            dictionaryRepresentation = [(BiometricKitCoreAnalyticsEvent *)selfCopy->_previousSecureFaceDetect dictionaryRepresentation];
            [(PearlCoreAnalyticsFaceDetectEvent *)v9 setSecureFaceDetectDict:dictionaryRepresentation];
            if (v46)
            {
              goto LABEL_36;
            }

            goto LABEL_30;
          }

          [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
        }
      }
    }

    else
    {
      [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
    }

LABEL_57:
    objc_sync_exit(selfCopy);

    v81 = 0;
    dictionaryRepresentation = 0;
    goto LABEL_42;
  }

  dictionaryRepresentation = 0;
LABEL_30:
  v49 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 17)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectResult:v49];

  v50 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v21];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameCount:v50];

  v51 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 20)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameFloodCount:v51];

  v52 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 24)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameSparseCount:v52];

  v53 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 28)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFrameDenseCount:v53];

  v54 = [MEMORY[0x29EDBA070] numberWithChar:*(bytes + 18)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCameraErr:v54];

  if (*(bytes + 38) != -273)
  {
    v55 = [MEMORY[0x29EDBA070] numberWithInt:?];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setSensorTemperature:v55];
  }

  v56 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 42)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDistance:v56];

  v57 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 37)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setHasOcclusion:v57];

  v58 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 44)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectX:v58];

  v59 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 46)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectY:v59];

  v60 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 48)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectW:v60];

  v61 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:*(bytes + 50)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamRectH:v61];

  v62 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 52)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setPPMRequestedBudget:v62];

  v63 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:*(bytes + 53)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setPPMAllocatedBudget:v63];

  if (*(bytes + 54) != -1)
  {
    v64 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:?];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setCamLux:v64];
  }

  v65 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 66)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackNoFaceDetected:v65];

  v66 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 67)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackFaceTooClose:v66];

  v67 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 68)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackFaceTooFar:v67];

  v68 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 69)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackPoseOutOfRange:v68];

  v69 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 70)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackNoAttention:v69];

  v70 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 71)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackFaceOccluded:v70];

  v71 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 72)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackCameraObstructed:v71];

  v72 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 73)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackPartialOutOfFOV:v72];

  v73 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 74)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackPoseMarginal:v73];

  v74 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 75)];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setEngagementInfoFeedbackNoseAndMouthOccluded:v74];

  v75 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 17) > 1u];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceDetectFailed:v75];

  v76 = [MEMORY[0x29EDBA070] numberWithBool:(*(bytes + 17) < 0x13uLL) & (0x41040u >> *(bytes + 17))];
  [(PearlCoreAnalyticsFaceDetectEvent *)v9 setAttentionDetectFailed:v76];

  if (*(bytes + 94) == 1)
  {
    v77 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:*(bytes + 78)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceOrientation:v77];

    v78 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 82)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFacePitch:v78];

    v79 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 86)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceYaw:v79];

    v80 = [MEMORY[0x29EDBA070] numberWithInt:*(bytes + 90)];
    [(PearlCoreAnalyticsFaceDetectEvent *)v9 setFaceRoll:v80];
  }

LABEL_36:
  objc_sync_exit(selfCopy);

  v81 = [(BiometricKitCoreAnalyticsEvent *)v9 dictionaryRepresentationArchiving:0];
  if (![(BiometricKitCoreAnalyticsEvent *)v9 postEvent])
  {
    [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
  }

  if (!match)
  {
    v82 = [(BiometricKitCoreAnalyticsEvent *)[PearlCoreAnalyticsFaceDetectEvent alloc] initWithName:@"com.apple.biometrickit.pearl.attentionCheck" dictionary:v81];
    [(PearlCoreAnalyticsFaceDetectEvent *)v82 setSecureFaceDetectDict:dictionaryRepresentation];
    if (![(BiometricKitCoreAnalyticsEvent *)v82 postEvent])
    {
      [PearlCoreAnalytics sendFaceDetectEventAnalytics:fromMatch:orientation:];
    }
  }

LABEL_42:
  if (__osLog)
  {
    v83 = __osLog;
  }

  else
  {
    v83 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v83, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendFaceDetectEventAnalytics: -> void\n", buf, 2u);
  }
}

- (void)sendEnrollEventAnalytics:(id)analytics orientation:(unint64_t)orientation
{
  v28 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
  v7 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v8 = __osLog;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v27[0] = 67109120;
    v27[1] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendEnrollEventAnalytics: enrollMessage: %d\n", v27, 8u);
  }

  v9 = objc_alloc_init(PearlCoreAnalyticsEnrollEvent);
  getAWDMetric = [(PearlCoreAnalyticsEvent *)v9 getAWDMetric];
  if (analyticsCopy)
  {
    if ([analyticsCopy length] <= 0xF9)
    {
      [PearlCoreAnalytics sendEnrollEventAnalytics:orientation:];
    }

    else
    {
      v11 = analyticsCopy;
      bytes = [analyticsCopy bytes];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [getAWDMetric setOverallResult:*bytes];
      [getAWDMetric setOverallTime:absoluteToMiliseconds()];
      [getAWDMetric setDoubleErrorCountsOK:*(bytes + 5)];
      [getAWDMetric setDoubleErrorCountsMoreFrames:*(bytes + 6)];
      [getAWDMetric setDoubleErrorCountsNoFace:*(bytes + 7)];
      [getAWDMetric setDoubleErrorCountsFaceOutOfFOV:*(bytes + 9)];
      [getAWDMetric setDoubleErrorCountsMultipleFaces:*(bytes + 8)];
      [getAWDMetric setDoubleErrorCountsFaceTooClose:*(bytes + 10)];
      [getAWDMetric setDoubleErrorCountsFaceTooFar:*(bytes + 11)];
      [getAWDMetric setDoubleErrorCountsPoseOutRange:*(bytes + 12)];
      [getAWDMetric setDoubleErrorCountsBinCovered:*(bytes + 13)];
      [getAWDMetric setDoubleErrorCountsOccluded:*(bytes + 14)];
      [getAWDMetric setDoubleErrorCountsUpperFaceOccluded:*(bytes + 15)];
      [getAWDMetric setDoubleErrorCountsLowerFaceOccluded:*(bytes + 16)];
      [getAWDMetric setFrameErrorCountsOK:*(bytes + 17)];
      [getAWDMetric setFrameErrorCountsMoreFrames:*(bytes + 18)];
      [getAWDMetric setFrameErrorCountsNoFace:*(bytes + 19)];
      [getAWDMetric setFrameErrorCountsFaceOutOfFOV:*(bytes + 21)];
      [getAWDMetric setFrameErrorCountsMultipleFaces:*(bytes + 20)];
      [getAWDMetric setFrameErrorCountsFaceTooClose:*(bytes + 22)];
      [getAWDMetric setFrameErrorCountsFaceTooFar:*(bytes + 23)];
      [getAWDMetric setFrameErrorCountsPoseOutRange:*(bytes + 24)];
      [getAWDMetric setFrameErrorCountsBinCovered:*(bytes + 25)];
      [getAWDMetric setFrameErrorCountsOccluded:*(bytes + 26)];
      [getAWDMetric setFrameErrorCountsUpperFaceOccluded:*(bytes + 27)];
      [getAWDMetric setFrameErrorCountsLowerFaceOccluded:*(bytes + 28)];
      [getAWDMetric setFrameCountBin00:*(bytes + 37)];
      [getAWDMetric setFrameCountBin01:*(bytes + 38)];
      [getAWDMetric setFrameCountBin02:*(bytes + 39)];
      [getAWDMetric setFrameCountBin10:*(bytes + 40)];
      [getAWDMetric setFrameCountBin11:*(bytes + 41)];
      [getAWDMetric setFrameCountBin12:*(bytes + 42)];
      [getAWDMetric setFrameCountBin20:*(bytes + 43)];
      [getAWDMetric setFrameCountBin21:*(bytes + 44)];
      [getAWDMetric setFrameCountBin22:*(bytes + 45)];
      [getAWDMetric setBioCaptureSequenceCount:*(bytes + 29)];
      [getAWDMetric setAmbientLux:*(bytes + 30)];
      [getAWDMetric setFeatureGenerationError:bytes[184]];
      [getAWDMetric setEnrollFeatureVectorError:bytes[185]];
      [getAWDMetric setCameraErr:bytes[19]];
      [getAWDMetric setEnrollResult:bytes[1]];
      [getAWDMetric setFaceDistance:*(bytes + 103)];
      [getAWDMetric setSensorTemperature:*(bytes + 202)];
      if (*(bytes + 202) == -273)
      {
        [getAWDMetric setHasSensorTemperature:0];
      }

      [getAWDMetric setEnrollType:bytes[248]];
      [getAWDMetric setNoseAndMouthOccluded:bytes[239]];
      if (*(bytes + 218) != -1)
      {
        v14 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:?];
        [(PearlCoreAnalyticsEnrollEvent *)v9 setCamLux:v14];
      }

      v15 = [(PearlCoreAnalytics *)selfCopy isBacklitSun:bytes + 200];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setBacklitSun:v15];

      [getAWDMetric setEnrolledTemplateCountType0:0];
      [getAWDMetric setEnrolledTemplateCountType0:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType0") + bytes[242]}];
      [getAWDMetric setEnrolledTemplateCountType0:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType0") + bytes[243]}];
      [getAWDMetric setEnrolledTemplateCountType0:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType0") + bytes[244]}];
      v16 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[242]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType0NoGlasses:v16];

      v17 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[243]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType0WithGlasses:v17];

      v18 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[244]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType0Unknown:v18];

      [getAWDMetric setEnrolledTemplateCountType1:0];
      [getAWDMetric setEnrolledTemplateCountType1:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType1") + bytes[245]}];
      [getAWDMetric setEnrolledTemplateCountType1:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType1") + bytes[246]}];
      [getAWDMetric setEnrolledTemplateCountType1:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType1") + bytes[247]}];
      v19 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[245]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType1NoGlasses:v19];

      v20 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[246]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType1WithGlasses:v20];

      v21 = [MEMORY[0x29EDBA070] numberWithUnsignedChar:bytes[247]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setEnrolledTemplateCountType1Unknown:v21];

      [getAWDMetric setEnrolledTemplateCountTotal:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType1") + objc_msgSend(getAWDMetric, "enrolledTemplateCountType0")}];
      [getAWDMetric setEnrolledIdentityCount:{objc_msgSend(getAWDMetric, "enrolledTemplateCountType0")}];
      if (bytes[127])
      {
        v23 = *(bytes + 16);
        v22 = *(bytes + 17);
      }

      else
      {
        v23 = -1;
        v22 = -1;
      }

      [getAWDMetric setRfcSetIndex:v23];
      [getAWDMetric setRfcFrameIndex:v22];
      if (v23 == -1)
      {
        [getAWDMetric setHasRfcSetIndex:0];
      }

      if (v22 == -1)
      {
        [getAWDMetric setHasRfcFrameIndex:0];
      }

      v24 = !*(bytes + 17) && *(bytes + 19) && *(bytes + 103) == 0;
      [getAWDMetric setFailedNoFace:v24];
      [getAWDMetric setDeviceOrientation:orientation];
      if (*(bytes + 36))
      {
        [(PearlCoreAnalytics *)selfCopy sendPearlAbcEvent:?];
      }

      [(PearlCoreAnalytics *)selfCopy checkYogiError:bytes[19]];
      v25 = [MEMORY[0x29EDBA070] numberWithBool:bytes[249]];
      [(PearlCoreAnalyticsEnrollEvent *)v9 setGlassesDetected:v25];

      objc_sync_exit(selfCopy);
      if (![(BiometricKitCoreAnalyticsEvent *)v9 postEvent])
      {
        [PearlCoreAnalytics sendEnrollEventAnalytics:orientation:];
      }

      [(BiometricKitCoreAnalyticsEvent *)selfCopy->_dailyEvent persistData];
    }
  }

  else
  {
    [PearlCoreAnalytics sendEnrollEventAnalytics:orientation:];
  }

  if (__osLog)
  {
    v26 = __osLog;
  }

  else
  {
    v26 = v7;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v27[0]) = 0;
    _os_log_impl(&dword_296CA4000, v26, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendEnrollEventAnalytics: -> void\n", v27, 2u);
  }
}

- (void)sendPasscodeChallengeEventAnalytics:(id)analytics orientation:(unint64_t)orientation
{
  v17 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
  v7 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v8 = __osLog;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v16[0] = 67109120;
    v16[1] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendPasscodeChallengeEventAnalytics: passChallengeMessage: %d\n", v16, 8u);
  }

  v9 = objc_alloc_init(PearlCoreAnalyticsPasscodeChallengeEvent);
  getAWDMetric = [(PearlCoreAnalyticsEvent *)v9 getAWDMetric];
  if (analyticsCopy)
  {
    if ([analyticsCopy length] <= 0x3D)
    {
      [PearlCoreAnalytics sendPasscodeChallengeEventAnalytics:orientation:];
    }

    else
    {
      v11 = analyticsCopy;
      bytes = [analyticsCopy bytes];
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [getAWDMetric setOverallTime:absoluteToMiliseconds()];
      [getAWDMetric setPasscodeChallengeResult:*(bytes + 26)];
      [getAWDMetric setPasscodeChallengeTemplateUpdated:*(bytes + 28) != 0];
      [getAWDMetric setAmbientLux:*bytes];
      [getAWDMetric setSensorTemperature:bytes[8]];
      if (bytes[8] == -273)
      {
        [getAWDMetric setHasSensorTemperature:0];
      }

      [getAWDMetric setFaceDistance:*(bytes + 18)];
      [getAWDMetric setAttentionScore:bytes[1]];
      [getAWDMetric setHasOcclusion:*(bytes + 31)];
      [getAWDMetric setPpmRequestedBudget:*(bytes + 46)];
      [getAWDMetric setPpmAllocatedBudget:*(bytes + 47)];
      [getAWDMetric setMatchIdentityCount:*(bytes + 29)];
      [getAWDMetric setDeviceOrientation:orientation];
      [getAWDMetric setMatchType:*(bytes + 60)];
      v14 = [MEMORY[0x29EDBA070] numberWithBool:*(bytes + 61)];
      [(PearlCoreAnalyticsPasscodeChallengeEvent *)v9 setGlassesDetected:v14];

      objc_sync_exit(selfCopy);
      if (![(BiometricKitCoreAnalyticsEvent *)v9 postEvent])
      {
        [PearlCoreAnalytics sendPasscodeChallengeEventAnalytics:orientation:];
      }
    }
  }

  else
  {
    [PearlCoreAnalytics sendPasscodeChallengeEventAnalytics:orientation:];
  }

  if (__osLog)
  {
    v15 = __osLog;
  }

  else
  {
    v15 = v7;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16[0]) = 0;
    _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendPasscodeChallengeEventAnalytics: -> void\n", v16, 2u);
  }
}

- (void)sendBioLockoutEventAnalytics:(id)analytics
{
  v13 = *MEMORY[0x29EDCA608];
  analyticsCopy = analytics;
  v5 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 67109120;
    v12[1] = analyticsCopy != 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendPasscodeChallengeEventAnalytics: sendBioLockoutEventAnalytics: %d\n", v12, 8u);
  }

  v7 = objc_alloc_init(AWDBiometricKitBioLockoutEvent);
  if (analyticsCopy)
  {
    if ([analyticsCopy length])
    {
      v8 = analyticsCopy;
      bytes = [analyticsCopy bytes];
      if (bytes)
      {
        selfCopy = self;
        objc_sync_enter(selfCopy);
        [(AWDBiometricKitBioLockoutEvent *)v7 setBioLockoutReason:*bytes];
        objc_sync_exit(selfCopy);

        if (![(PearlCoreAnalytics *)selfCopy postSimpleCoreAnalyticsEvent:@"com.apple.biometrickit.pearl.bioLockoutEvent" fromAWDMetric:v7])
        {
          [PearlCoreAnalytics sendBioLockoutEventAnalytics:];
        }
      }

      else
      {
        [PearlCoreAnalytics sendBioLockoutEventAnalytics:];
      }
    }

    else
    {
      [PearlCoreAnalytics sendBioLockoutEventAnalytics:];
    }
  }

  else
  {
    [PearlCoreAnalytics sendBioLockoutEventAnalytics:];
  }

  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12[0]) = 0;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics sendBioLockoutEventAnalytics: -> void\n", v12, 2u);
  }
}

- (void)getDailyUpdateAnalytics
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)analyzeSecureFrameMeta:(id)meta faceDetected:(BOOL)detected
{
  detectedCopy = detected;
  v80 = *MEMORY[0x29EDCA608];
  metaCopy = meta;
  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics analyzeSecureFrameMeta\n", buf, 2u);
  }

  sequenceStartDate = [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect sequenceStartDate];
  v9 = sequenceStartDate == 0;

  if (v9)
  {
    [PearlCoreAnalytics analyzeSecureFrameMeta:faceDetected:];
    goto LABEL_83;
  }

  v10 = metaCopy;
  if (!metaCopy)
  {
    [PearlCoreAnalytics analyzeSecureFrameMeta:faceDetected:];
    goto LABEL_83;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = metaCopy;
  v11 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
  if (!v11)
  {
    goto LABEL_80;
  }

  v72 = *v75;
  v71 = *MEMORY[0x29EDBD598];
  v70 = *MEMORY[0x29EDBD590];
  v68 = *MEMORY[0x29EDBD5A0];
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v75 != v72)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v74 + 1) + 8 * i);
      type = [v13 type];
      v15 = type == v71;

      if (v15)
      {
        v22 = v13;
        if ([v22 coachingStatus])
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusNoFaceDetected:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 2) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusFaceTooClose:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 4) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusFaceTooFar:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 8) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusPoseOutOfRange:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x10) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusNoAttention:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x20) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusFaceOccluded:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x40) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusCameraObstructed:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x80) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusPartialOutOfFOV:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x100) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusDepthCameraObstructed:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x200) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusFPDFailure:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x400) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusPoseMarginal:MEMORY[0x29EDB8EB0]];
        }

        if (([v22 coachingStatus] & 0x800) != 0)
        {
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCoachingStatusNoseAndMouthOccluded:MEMORY[0x29EDB8EB0]];
        }

        v21 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(v22, "coachingStatus")}];
        [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setLastFeedback:v21];
      }

      else
      {
        type2 = [v13 type];
        v17 = type2 == v70;

        if (v17)
        {
          v23 = v13;
          hasPayingAttention = [v23 hasPayingAttention];
          if (hasPayingAttention)
          {
            v5 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v23, "payingAttention")}];
            v25 = v5;
          }

          else
          {
            v25 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectPayingAttention:v25];
          if (hasPayingAttention)
          {
          }

          hasOccludedFeatures = [v23 hasOccludedFeatures];
          if (hasOccludedFeatures)
          {
            v10 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(v23, "occludedFeatures")}];
            v27 = v10;
          }

          else
          {
            v27 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectOccludedFeatures:v27];
          if (hasOccludedFeatures)
          {
          }

          hasPitchAngle = [v23 hasPitchAngle];
          if (hasPitchAngle)
          {
            v29 = MEMORY[0x29EDBA070];
            [v23 pitchAngle];
            v4 = [v29 numberWithInt:v30];
            v31 = v4;
          }

          else
          {
            v31 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFacePitch:v31];
          if (hasPitchAngle)
          {
          }

          hasYawAngle = [v23 hasYawAngle];
          if (hasYawAngle)
          {
            v33 = MEMORY[0x29EDBA070];
            [v23 yawAngle];
            v67 = [v33 numberWithInt:v34];
            v35 = v67;
          }

          else
          {
            v35 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceYaw:v35];
          if (hasYawAngle)
          {
          }

          hasRollAngle = [v23 hasRollAngle];
          if (hasRollAngle)
          {
            v37 = MEMORY[0x29EDBA070];
            [v23 rollAngle];
            v66 = [v37 numberWithInt:v38];
            v39 = v66;
          }

          else
          {
            v39 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceRoll:v39];
          if (hasRollAngle)
          {
          }

          hasDistance = [v23 hasDistance];
          if (hasDistance)
          {
            v41 = MEMORY[0x29EDBA070];
            [v23 distance];
            v65 = [v41 numberWithUnsignedInt:v42];
            v43 = v65;
          }

          else
          {
            v43 = 0;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceDistance:v43];
          if (hasDistance)
          {
          }

          v44 = MEMORY[0x29EDBA070];
          [v23 bounds];
          v46 = [v44 numberWithUnsignedInt:v45];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCamRectX:v46];

          v47 = MEMORY[0x29EDBA070];
          [v23 bounds];
          v49 = [v47 numberWithUnsignedInt:v48];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCamRectY:v49];

          v50 = MEMORY[0x29EDBA070];
          [v23 bounds];
          v52 = [v50 numberWithUnsignedInt:v51];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCamRectW:v52];

          v53 = MEMORY[0x29EDBA070];
          [v23 bounds];
          v55 = [v53 numberWithUnsignedInt:v54];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectCamRectH:v55];

          hasOrientation = [v23 hasOrientation];
          v57 = hasOrientation;
          if (hasOrientation)
          {
            v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v23, "orientation")}];
            v58 = v21;
          }

          else
          {
            v58 = 0;
            v21 = v73;
          }

          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceOrientation:v58];
          v73 = v21;
          if ((v57 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        else
        {
          type3 = [v13 type];
          v19 = type3 == v68;

          if (!v19)
          {
            continue;
          }

          v20 = v13;
          v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v20, "detectedMotion")}];
          [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectDetectedMotion:v21];
        }
      }

      v21 = v73;
LABEL_77:

      v73 = v21;
    }

    v11 = [obj countByEnumeratingWithState:&v74 objects:v79 count:16];
  }

  while (v11);
LABEL_80:

  v59 = MEMORY[0x29EDBA070];
  secureFaceDetectFrameCount = [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect secureFaceDetectFrameCount];
  v61 = [v59 numberWithUnsignedInt:{objc_msgSend(secureFaceDetectFrameCount, "unsignedIntValue") + 1}];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFrameCount:v61];

  if (detectedCopy)
  {
    [(PearlCoreAnalyticsSecureFaceDetectEvent *)self->_secureFaceDetect setSecureFaceDetectFaceDetected:MEMORY[0x29EDB8EB0]];
  }

  objc_sync_exit(selfCopy);

LABEL_83:
}

- (void)analyzeSecureFaceDetectStart:(unsigned int)start sessionID:(unsigned int)d
{
  v4 = *&d;
  v5 = *&start;
  v13 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v12[0] = 67109120;
    v12[1] = v5;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics analyzeSecureFaceDetectStart: %u\n", v12, 8u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_secureFaceDetect reset];
  date = [MEMORY[0x29EDB8DB0] date];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_secureFaceDetect setSequenceStartDate:date];

  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v5];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_secureFaceDetect setSecureFaceDetectRequestType:v10];

  v11 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v4];
  [(PearlCoreAnalyticsSecureFaceDetectEvent *)selfCopy->_secureFaceDetect setSessionID:v11];

  objc_sync_exit(selfCopy);
}

- (void)analyzeSecureFaceDetectStop
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendPearlAbcEvent:(unint64_t)event
{
  v7 = *MEMORY[0x29EDCA608];
  if (![(BiometricAutoBugCapture *)self->_pearlAbc sendAutoBugCaptureEvent:?])
  {
    if (__osLog)
    {
      v4 = __osLog;
    }

    else
    {
      v4 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      eventCopy = event;
      _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_ERROR, "Failed to send auto bug capture event: %llu\n", &v5, 0xCu);
    }
  }
}

- (int)sequenceTypeToCaptureMethod:(unsigned __int8)method forSequence:(unsigned __int8)sequence
{
  if (sequence == 2)
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  if (method == 3)
  {
    return v4;
  }

  else
  {
    return method == 2;
  }
}

- (void)checkYogiError:(int)error
{
  v14 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    dailyEvent = self->_dailyEvent;
    v7 = v5;
    yogiErrorDate = [(PearlCoreAnalyticsDailyUpdateEvent *)dailyEvent yogiErrorDate];
    v11[0] = 67109378;
    v11[1] = error;
    v12 = 2112;
    v13 = yogiErrorDate;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics checkYogiError cameraErr: %d _yogiErrorDate: %@\n", v11, 0x12u);
  }

  yogiErrorDate2 = [(PearlCoreAnalyticsDailyUpdateEvent *)self->_dailyEvent yogiErrorDate];

  if (error == 1)
  {
    if (!yogiErrorDate2)
    {
      date = [MEMORY[0x29EDB8DB0] date];
      [(PearlCoreAnalyticsDailyUpdateEvent *)self->_dailyEvent setYogiErrorDate:date];

      [(BiometricKitCoreAnalyticsEvent *)self->_dailyEvent persistData];
    }
  }

  else if (yogiErrorDate2)
  {
    [(PearlCoreAnalyticsDailyUpdateEvent *)self->_dailyEvent setYogiErrorDate:0];
  }
}

- (BOOL)postSimpleCoreAnalyticsEvent:(id)event fromAWDMetric:(id)metric
{
  v15 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  metricCopy = metric;
  if (__osLog)
  {
    v7 = __osLog;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138412546;
    v12 = eventCopy;
    v13 = 2048;
    v14 = metricCopy;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics postSimpleCoreAnalyticsEvent eventName: %@ awdMetric: %p\n", &v11, 0x16u);
  }

  v8 = [[PearlCoreAnalyticsEvent alloc] initWithName:eventCopy awdMetric:metricCopy];
  postEvent = [(BiometricKitCoreAnalyticsEvent *)v8 postEvent];

  return postEvent;
}

+ (void)sendDisplayPearlGlassesBannerNotificationEvent
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

+ (void)sendEnrollPearlGlassesBannerNotificationEvent
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (id)isBacklitSun:(id *)sun
{
  v23 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (sun)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(&sun->var11 + 2);
      v6 = *(&sun->var10 + 2);
      v18[0] = 67109376;
      v18[1] = v5;
      v19 = 1024;
      v20 = v6;
      _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "PearlCoreAnalytics isBacklitSun frameInfo->ambientLux: %u frameInfo->floodExposure: %u\n", v18, 0xEu);
    }

    v7 = *(&sun->var11 + 2);
    if (v7 != -1)
    {
      v8 = *(&sun->var10 + 2);
      if (v8 != -1)
      {
        v9 = exp(v7 * 0.000230175689 + v8 * 0.000196729648 + -2.28890686);
        v10 = [MEMORY[0x29EDBA070] numberWithBool:v9 / (v9 + 1.0) > 0.5];
        goto LABEL_10;
      }
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    OUTLINED_FUNCTION_0();
    v21 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v22 = 1481;
    OUTLINED_FUNCTION_15(&dword_296CA4000, v12, v13, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v14, v15, v16, v17);
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (BOOL)setupDailyUpdateTimer
{
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  v10 = *self;
  *a2 = *self;
  return v10 == 0;
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.1()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.2()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.3()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.4()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.5()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.6()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.7()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.8()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.9()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.10()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.11()
{
  v0 = OUTLINED_FUNCTION_9_0(__osLog);
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7_0(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  OUTLINED_FUNCTION_5_1();
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.12()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendMatchEventAnalytics:orientation:identities:.cold.13()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.3()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.4()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.5()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.6()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.7()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFaceDetectEventAnalytics:fromMatch:orientation:.cold.8()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFaceDetectEventAnalytics:(void *)a1 fromMatch:(void *)a2 orientation:.cold.9(void *a1, void *a2)
{
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *a2 = 0;
  *a1 = 0;
}

- (void)sendFaceDetectEventAnalytics:(void *)a1 fromMatch:(void *)a2 orientation:.cold.10(void *a1, void *a2)
{
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *a2 = 0;
  *a1 = 0;
}

- (void)sendEnrollEventAnalytics:orientation:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendEnrollEventAnalytics:orientation:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendEnrollEventAnalytics:orientation:.cold.3()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendPasscodeChallengeEventAnalytics:orientation:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendPasscodeChallengeEventAnalytics:orientation:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendPasscodeChallengeEventAnalytics:orientation:.cold.3()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendBioLockoutEventAnalytics:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendBioLockoutEventAnalytics:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendBioLockoutEventAnalytics:.cold.3()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendBioLockoutEventAnalytics:.cold.4()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)analyzeSecureFrameMeta:faceDetected:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)analyzeSecureFrameMeta:faceDetected:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

@end