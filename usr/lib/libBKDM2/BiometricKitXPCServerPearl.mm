@interface BiometricKitXPCServerPearl
+ (BOOL)platformProvidesPSD3;
+ (BOOL)platformProvidesPlCl;
+ (id)getSHA384FromData:(id)data;
+ (unsigned)getDeviceTreeProperty:(id)property fromPath:(id)path;
+ (void)reportPearlHardwarePass:(BOOL)pass fallbackAction:(id)action;
+ (void)reportPearlInterlock:(BOOL)interlock;
+ (void)reportPearlIssue;
- ($1AB5FA073B851C12C2339EC22442E995)deviceGravity;
- ($1AB5FA073B851C12C2339EC22442E995)deviceRotationRate;
- ($1AB5FA073B851C12C2339EC22442E995)deviceUserAcceleration;
- (BOOL)cameraIndicatorControlAllowedForClient:(id)client;
- (BOOL)hasFDREntitlement;
- (BOOL)hasManifestEntitlement:(unsigned int)entitlement;
- (BOOL)unwrapBrunorEncryptionKey;
- (BiometricKitXPCServerPearl)init;
- (id)classStringForEnum:(unsigned __int16)enum;
- (id)createEnrollOperation;
- (id)createMatchOperation;
- (id)createPresenceDetectOperation;
- (id)detailsForFaceDetectInfo:(id *)info;
- (id)deviceAttitude;
- (id)filenameForSavageCertType:(id)type;
- (id)getDisplayTrustStatusAttempt;
- (id)getFDRClassFromFDR:(unsigned __int16)r;
- (id)getFDRClassFromFDR:(unsigned __int16)r withOptions:(id)options withError:(id *)error;
- (id)getFDRClassFromFile:(id)file;
- (id)getProjectorSerialNumberIOReg;
- (id)getProjectorSerialNumberIORegAttempt;
- (id)getRomeoSerialNumberFDR;
- (int)cancelWithClient:(id)client;
- (int)completeEnrollmentWithClient:(id)client;
- (int)enableMatchAutoRetry:(BOOL)retry withClient:(id)client;
- (int)getBioLockoutState:(int64_t *)state forUser:(unsigned int)user withClient:(id)client;
- (int)getCommProtocolVersion;
- (int)getPeriocularMatchStateForUser:(unsigned int)user state:(int64_t *)state withClient:(id)client;
- (int)getSPRLInfo:(id *)info;
- (int)getSensorFamily:(unsigned __int8 *)family;
- (int)initAutoBugCapture;
- (int)initEnrollOperation:(id)operation biometricType:(int)type userID:(unsigned int)d options:(id)options client:(id)client;
- (int)initMatchOperation:(id)operation filter:(id)filter options:(id)options client:(id)client;
- (int)initPresenceDetectOperation:(id)operation options:(id)options client:(id)client;
- (int)initSecureFaceDetect;
- (int)initializeEngineWithOptions:(unsigned __int16)options;
- (int)isPeriocularEnrollmentSupported:(BOOL *)supported withClient:(id)client;
- (int)loadCatacombForComponent:(id)component;
- (int)loadDCNKernels;
- (int)loadFDRCalibrationData:(BOOL)data;
- (int)loadFDRClass:(unsigned __int16)class alternative:(BOOL)alternative;
- (int)loadFDRClassCommand:(int)command withClass:(unsigned __int16)class withData:(id)data isAlternative:(BOOL)alternative;
- (int)loadPCECalibrationOverride:(id)override;
- (int)loadSavageFWCertificate;
- (int)pauseFaceDetectTimer:(BOOL)timer withClient:(id)client;
- (int)performCancelCommand;
- (int)performCommand:(unsigned __int16)command inValue:(unsigned __int16)value inData:(const void *)data inSize:(unint64_t)size outData:(char *)outData outSize:(unint64_t *)outSize;
- (int)performCommand:(unsigned __int16)command version:(unsigned __int16)version inValue:(unsigned __int16)value inData:(const void *)data inSize:(unint64_t)size outData:(char *)outData outSize:(unint64_t *)outSize;
- (int)performCompleteSaveCatacombCommand:(id)command outBuffer:(id)buffer;
- (int)performConfirmSaveCatacombCommand:(id)command;
- (int)performDisplayStatusChangedCommand:(BOOL)command;
- (int)performDropUnlockTokenCommand;
- (int)performEnrollCommand:(id)command;
- (int)performForceBioLockoutCommand:(unsigned int)command;
- (int)performGetBiometrickitdInfoCommand:(id *)command;
- (int)performGetCatacombHashCommand:(unsigned int)command outHash:(id *)hash;
- (int)performGetCatacombStateCommand:(id)command;
- (int)performGetCatacombUUIDCommand:(unsigned int)command outUUID:(id *)d;
- (int)performGetDeviceHardwareStateCommand:(unsigned int *)command;
- (int)performGetFreeIdentityCountCommand:(unsigned int)command outCount:(unsigned int *)count;
- (int)performGetIdentitiesListCommand:(unsigned int)command outBuffer:(id)buffer;
- (int)performGetLastMatchEventCommand:(id *)command;
- (int)performGetProtectedConfigCommand:(unsigned int)command outSetCfg:(id *)cfg outEffectiveCfg:(id *)effectiveCfg;
- (int)performGetSKSLockStateCommand:(unsigned int)command outState:(unsigned int *)state;
- (int)performGetSystemProtectedConfigCommand:(id *)command;
- (int)performGetTemplatesValidityCommand:(unsigned int)command isValid:(BOOL *)valid;
- (int)performLoadCatacombCommand:(id)command inData:(id)data;
- (int)performMatchCommand:(id)command;
- (int)performNoCatacombCommand:(unsigned int)command;
- (int)performPrepareSaveCatacombCommand:(id)command outDataSize:(unsigned int *)size;
- (int)performPresenceDetectCommand:(id)command restart:(BOOL)restart;
- (int)performRemoveIdentityCommand:(id *)command;
- (int)performRemoveUserDataCommand:(unsigned int)command;
- (int)performRequestMaxIdentityCountCommand:(unsigned int *)command;
- (int)performRequestMessageDataCommand:(unint64_t)command size:(unint64_t)size outData:(id *)data;
- (int)performSetProtectedConfigCommand:(unsigned int)command cfg:(id)cfg authData:(id *)data;
- (int)performSetSystemProtectedConfigCommand:(id)command authData:(id *)data;
- (int)prewarmCamera:(unint64_t)camera withClient:(id)client;
- (int)queryGuadalupeSerialNumberFDR:(id *)r;
- (int)queryIdentityMigrationFailureForUser:(unsigned int)user failed:(BOOL *)failed clear:(BOOL)clear withClient:(id)client;
- (int)queryPeriocularMigrationState:(BOOL *)state clear:(BOOL)clear;
- (int)removeIdentity:(id)identity withOptions:(id)options withClient:(id)client;
- (int)removePeriocularTemplatesWithOptions:(id)options withClient:(id)client;
- (int)restoreAndSyncTemplates;
- (int)saveTemplateListAfterTemplateUpdate;
- (int)sendDCNKernelsCheckResult:(int)result;
- (int)sendDisplayCheckResult:(int)result;
- (int)sendFDRDataCheckResult:(int)result;
- (int)sendRomeoSNCheckResult:(int)result;
- (int)sendSavageFWCertCheckResult:(int)result;
- (int)sendSelfCheckResult:(id *)result;
- (int)serviceStatus:(unsigned int)status version:(unsigned int)version ordinal:(unint64_t)ordinal data:(id)data timestamp:(unint64_t)timestamp;
- (int)setSecureFaceDetectState:(int)state sessionID:(unsigned int)d;
- (int)setTemplate:(id)template forIdentity:(id)identity withClient:(id)client;
- (int)startNewMatchAttemptWithClient:(id)client;
- (int)startSecureFaceDetect;
- (int)suspendEnrollment:(BOOL)enrollment withClient:(id)client;
- (int)unwrapBrunorEncryptionKey;
- (int)updateIdentity:(id)identity withOptions:(id)options withClient:(id)client;
- (int)updatePropertiesOfIdentities;
- (int)verifyDisplayTrust;
- (int)verifyGuadalupeSerialNumberAgainstFDR;
- (int)verifyProjectorSerialNumber;
- (int)verifyRomeoSerialNumberAgainstFDR;
- (int64_t)getDeviceStateWithClient:(id)client;
- (uint64_t)startSecureFaceDetect;
- (unint64_t)deviceOrientation;
- (void)analyticsKernelMessage:(id)message;
- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection;
- (void)checkBioLogConsent;
- (void)clearSecureFaceDetectContext;
- (void)dealloc;
- (void)deinitSecureFaceDetect;
- (void)donateBiomeEvent:(id)event;
- (void)enrollFeedback:(id)feedback withTimestamp:(unint64_t)timestamp;
- (void)enrollResult:(id)result withTimestamp:(unint64_t)timestamp;
- (void)enrollUpdate:(id)update withTimestamp:(unint64_t)timestamp;
- (void)faceDetectMessage:(unsigned int)message info:(id *)info fromSecureFD:(BOOL)d;
- (void)firstUnlockCallback;
- (void)getCommProtocolVersion;
- (void)getProjectorSerialNumberIORegAttempt;
- (void)getRomeoSerialNumberFDR;
- (void)handleSharedMemoryTransfer:(unsigned int)transfer withHeader:(id)header data:(id)data;
- (void)init;
- (void)initAutoBugCapture;
- (void)initSecureFaceDetect;
- (void)loadCalibrationData;
- (void)loadDCNKernels;
- (void)loadSavageFWCertificate;
- (void)logKernelMessage:(id)message;
- (void)logRemoveIdentity:(id)identity withClient:(id)client;
- (void)logSequenceDebugWithContext:(id *)context;
- (void)matchEventMessage:(id *)message;
- (void)matchResult:(id)result withTimestamp:(unint64_t)timestamp;
- (void)motionDetectMessage:(unsigned int)message info:(id *)info state:(int)state;
- (void)performCancelCommand;
- (void)performDropUnlockTokenCommand;
- (void)processMetadataObjects:(id)objects;
- (void)processSecureFaceDetectRequestMessage;
- (void)registerForLiftToWakeNotifications:(BOOL)notifications;
- (void)restoreAndSyncTemplates;
- (void)saveTemplateListAfterTemplateUpdate;
- (void)secureFaceDetectRequestMessage:(id *)message;
- (void)serviceMatch:(unsigned int)match;
- (void)statusMessage:(unsigned int)message withData:(id)data timestamp:(unint64_t)timestamp;
- (void)stopSecureFaceDetect;
- (void)unwrapBrunorEncryptionKey;
- (void)updateAutoRetryMode;
- (void)updateCoachingHintsEnabled;
- (void)updateCombinedSequenceMode;
- (void)updateEntitlementOverrideFlags;
- (void)updateLoggingState;
- (void)updatePropertiesOfIdentities;
- (void)verifyDisplayTrust;
- (void)verifyGuadalupeSerialNumberAgainstFDR;
- (void)verifyProjectorSerialNumber;
- (void)verifyRomeoSerialNumberAgainstFDR;
- (void)wakeGestureManager:(id)manager didUpdateWakeGesture:(int64_t)gesture;
@end

@implementation BiometricKitXPCServerPearl

- (int)performCancelCommand
{
  v2 = [(BiometricKitXPCServerPearl *)self performCommand:6 inValue:0 inData:0 inSize:0 outData:0 outSize:0];
  if (v2)
  {
    [BiometricKitXPCServerPearl performCancelCommand];
  }

  return v2;
}

void __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_2(uint64_t a1, int a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = [v3 bioOpsQueue];
    objc_sync_enter(v4);
    v5 = [*(a1 + 32) runningBioOp];
    v6 = [v5 type];

    objc_sync_exit(v4);
    v7 = *(a1 + 32);
    v8 = *(v7 + 400);
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_3;
    v12[3] = &unk_29EE54630;
    v12[4] = v7;
    v13 = v6;
    v9 = v12;
  }

  else
  {
    v10 = v3[50];
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_5;
    block[3] = &unk_29EE54570;
    block[4] = v3;
    v9 = block;
    v8 = v10;
  }

  dispatch_async(v8, v9);
}

uint64_t __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = [MEMORY[0x29EDBA070] numberWithBool:{objc_msgSend(a2, "stationary")}];
  [*(*(a1 + 32) + 312) setInitialDeviceStationary:v3];

  v4 = *(*(a1 + 32) + 392);

  return [v4 stopActivityUpdates];
}

- (unint64_t)deviceOrientation
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  motionActivityManager = self->_motionActivityManager;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __47__BiometricKitXPCServerPearl_deviceOrientation__block_invoke;
  v5[3] = &unk_29EE546D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(&motionActivityManager->super, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __47__BiometricKitXPCServerPearl_deviceOrientation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 409) == 1)
  {
    v3 = [*(v2 + 376) deviceOrientationBlocking];
    *(*(*(a1 + 40) + 8) + 24) = [v3 orientation];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = *(v2 + 416);
  }
}

- (id)createPresenceDetectOperation
{
  v2 = objc_alloc_init(BiometricPresenceDetectOperationPearl);

  return v2;
}

void __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_3(uint64_t a1)
{
  v2 = os_transaction_create();
  v3 = kSpringBoardBundleIdentifier_block_invoke_motionTransaction;
  kSpringBoardBundleIdentifier_block_invoke_motionTransaction = v2;

  v4 = *(a1 + 32);
  if ((*(v4 + 408) & 1) == 0)
  {
    [*(v4 + 376) startDeviceOrientationUpdatesToQueue:0 withHandler:0];
    *(*(a1 + 32) + 409) = 1;
  }

  v5 = *(a1 + 32);
  if (*(a1 + 40) == 2)
  {
    [*(v5 + 384) startDeviceMotionUpdates];
    [*(*(a1 + 32) + 312) setInitialDeviceStationary:0];
    v6 = *(*(a1 + 32) + 392);
    v7 = [MEMORY[0x29EDBA088] mainQueue];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_4;
    v12[3] = &unk_29EE54608;
    v12[4] = *(a1 + 32);
    [v6 startActivityUpdatesToQueue:v7 withHandler:v12];
  }

  else
  {
    v8 = *(v5 + 424);
    *(v5 + 424) = 0;

    v9 = (*(a1 + 32) + 432);
    v9[1] = 0;
    v9[2] = 0;
    *v9 = 0;
    v10 = (*(a1 + 32) + 456);
    v10[1] = 0;
    v10[2] = 0;
    *v10 = 0;
    v11 = (*(a1 + 32) + 480);
    v11[1] = 0;
    v11[2] = 0;
    *v11 = 0;
  }
}

- (BiometricKitXPCServerPearl)init
{
  v80[19] = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEFAULT, "init\n", buf, 2u);
  }

  v76.receiver = self;
  v76.super_class = BiometricKitXPCServerPearl;
  v4 = [(BiometricKitXPCServer *)&v76 init];
  if (v4)
  {
    isInternalBuild();
    if (isInternalBuild())
    {
      v5 = 1;
    }

    else
    {
      v5 = v4[320];
    }

    v4[321] = MGGetBoolAnswer();
    mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
    v79[0] = @"autoRetryMode";
    v79[1] = @"combinedSequenceMode";
    v80[0] = &unk_2A1E03630;
    v80[1] = &unk_2A1E03648;
    v79[2] = @"entitlementOverrideFlags";
    v79[3] = @"coachingHintsEnabled";
    v6 = MEMORY[0x29EDB8EB0];
    v80[2] = &unk_2A1E03660;
    v80[3] = MEMORY[0x29EDB8EB0];
    v79[4] = @"loggingDisabled";
    v70 = [MEMORY[0x29EDBA070] numberWithBool:v4[320]];
    v80[4] = v70;
    v7 = MEMORY[0x29EDB8EA8];
    v79[5] = @"analyticsDisabled";
    v79[6] = @"fakeNonInternal";
    v80[5] = MEMORY[0x29EDB8EA8];
    v80[6] = MEMORY[0x29EDB8EA8];
    v80[7] = MEMORY[0x29EDB8EA8];
    v79[7] = @"customerLoggingEnabled";
    v79[8] = @"dataLoggingEnabled";
    v69 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v80[8] = v69;
    v79[9] = @"framesLoggingEnabled";
    v8 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v80[9] = v8;
    v80[10] = v6;
    v79[10] = @"framesRawLoggingDisabled";
    v79[11] = @"framesDebugLoggingEnabled";
    v9 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v80[11] = v9;
    v79[12] = @"faceDetectFailureLoggingEnabled";
    v10 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v80[12] = v10;
    v79[13] = @"faceDetectSequencesLoggingEnabled";
    v79[14] = @"faceDetectNoFaceLoggingEnabled";
    v80[13] = v7;
    v80[14] = v7;
    v79[15] = @"faceDetectDepthLoggingEnabled";
    v11 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v80[15] = v11;
    v79[16] = @"sequenceInfoLoggingEnabled";
    v12 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v80[16] = v12;
    v79[17] = @"sequenceDebugLoggingEnabled";
    v13 = [MEMORY[0x29EDBA070] numberWithBool:v5 & 1];
    v80[17] = v13;
    v79[18] = @"SuppressPearlIssuePopup";
    v80[18] = v7;
    v14 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v80 forKeys:v79 count:19];
    [mEMORY[0x29EDBFD50] registerDefaults:v14];

    v15 = [MEMORY[0x29EDB8DF8] dataWithLength:*MEMORY[0x29EDCA6D0]];
    v16 = *(v4 + 65);
    *(v4 + 65) = v15;

    if (*(v4 + 65))
    {
      v17 = dispatch_queue_create("com.apple.pearld.smt", 0);
      v18 = *(v4 + 41);
      *(v4 + 41) = v17;

      if (!*(v4 + 41))
      {
        [BiometricKitXPCServerPearl init];
      }

      v19 = dispatch_queue_create("com.apple.pearld.motion", 0);
      v20 = *(v4 + 50);
      *(v4 + 50) = v19;

      if (!*(v4 + 50))
      {
        [BiometricKitXPCServerPearl init];
      }

      v21 = dispatch_queue_create("com.apple.pearld.logging", 0);
      v22 = *(v4 + 42);
      *(v4 + 42) = v21;

      if (!*(v4 + 42))
      {
        [BiometricKitXPCServerPearl init];
      }

      v23 = dispatch_queue_create("com.apple.pearld.analytics", 0);
      v24 = *(v4 + 45);
      *(v4 + 45) = v23;

      if (!*(v4 + 45))
      {
        [BiometricKitXPCServerPearl init];
      }

      BoolAnswer = AVGestaltGetBoolAnswer();
      v4[532] = BoolAnswer;
      if (BoolAnswer)
      {
        v26 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v27 = dispatch_queue_attr_make_with_qos_class(v26, QOS_CLASS_USER_INITIATED, 0);
        v28 = dispatch_queue_create("com.apple.pearld.avc", v27);
        v29 = *(v4 + 74);
        *(v4 + 74) = v28;

        if (!*(v4 + 74))
        {
          [BiometricKitXPCServerPearl init];
          goto LABEL_54;
        }

        v30 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x29EDCA580], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v31 = dispatch_queue_attr_make_with_qos_class(v30, QOS_CLASS_USER_INITIATED, 0);
        v32 = dispatch_queue_create("com.apple.pearld.avcStartStop", v31);
        v33 = *(v4 + 75);
        *(v4 + 75) = v32;

        if (!*(v4 + 74))
        {
          [BiometricKitXPCServerPearl init];
          goto LABEL_54;
        }

        v34 = objc_alloc_init(MEMORY[0x29EDBA0C8]);
        v35 = *(v4 + 76);
        *(v4 + 76) = v34;

        if (!*(v4 + 76))
        {
          [BiometricKitXPCServerPearl init];
          goto LABEL_54;
        }

        v36 = objc_alloc_init(MEMORY[0x29EDBA0C8]);
        v37 = *(v4 + 77);
        *(v4 + 77) = v36;

        if (!*(v4 + 77))
        {
          [BiometricKitXPCServerPearl init];
          goto LABEL_54;
        }

        v38 = dispatch_source_create(MEMORY[0x29EDCA598], 0, 0, *(v4 + 74));
        v39 = *(v4 + 81);
        *(v4 + 81) = v38;

        objc_initWeak(&location, v4);
        v40 = *(v4 + 81);
        handler[0] = MEMORY[0x29EDCA5F8];
        handler[1] = 3221225472;
        handler[2] = __34__BiometricKitXPCServerPearl_init__block_invoke;
        handler[3] = &unk_29EE54528;
        objc_copyWeak(&v74, &location);
        dispatch_source_set_event_handler(v40, handler);
        dispatch_activate(*(v4 + 81));
        v41 = MGGetSInt32Answer();
        *(v4 + 85) = v41;
        if (v41 && v41 != 180 && v41 != 270)
        {
          v42 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            v43 = *(v4 + 85);
            *buf = 134217984;
            v78 = v43;
            _os_log_impl(&dword_296CA4000, v42, OS_LOG_TYPE_ERROR, "Unexpected value of kMGQFrontCameraRotationForISP: %f\n", buf, 0xCu);
          }
        }

        objc_destroyWeak(&v74);
        objc_destroyWeak(&location);
      }

      *(v4 + 146) = 1;
      *(v4 + 38) = 1011;
      v4[300] = notify_register_dispatch("com.apple.system.peakpowerpressurelevel", v4 + 74, MEMORY[0x29EDCA578], &__block_literal_global) == 0;
      v44 = *(v4 + 39);
      *(v4 + 39) = 0;

      if ((v4[321] & 1) == 0)
      {
        v45 = objc_alloc_init(PearlCoreAnalytics);
        v46 = *(v4 + 44);
        *(v4 + 44) = v45;

        v47 = *(v4 + 44);
        biometricABC = [v4 biometricABC];
        [v47 setPearlAbc:biometricABC];

        [*(v4 + 44) setSecureFaceDetectSupported:v4[532]];
      }

      v49 = *(v4 + 50);
      block[0] = MEMORY[0x29EDCA5F8];
      block[1] = 3221225472;
      block[2] = __34__BiometricKitXPCServerPearl_init__block_invoke_221;
      block[3] = &unk_29EE54570;
      v50 = v4;
      v72 = v50;
      dispatch_async(v49, block);

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v50, __LoggingStateNotificationCallback, @"com.apple.ManagedConfiguration.profileListChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v52 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v52, v50, __LoggingStateNotificationCallback, @"com.apple.biometrickitd.loggingStateChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v53 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v53, v50, __AutoRetryModeNotificationCallback, @"com.apple.biometrickitd.autoRetryModeChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v54 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v54, v50, __CombinedSequenceModeNotificationCallback, @"com.apple.biometrickitd.combinedSequenceModeChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v55 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v55, v50, __CoachingHintsEnabledNotificationCallback, @"com.apple.biometrickitd.coachingHintsEnabledChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      v56 = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(v56, v50, __EntitlementOverrideFlagsNotificationCallback, @"com.apple.biometrickitd.entitlementOverrideFlagsChanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
      signal(15, 1);
      v57 = dispatch_source_create(MEMORY[0x29EDCA5C0], 0xFuLL, 0, MEMORY[0x29EDCA578]);
      v58 = *(v50 + 63);
      *(v50 + 63) = v57;

      dispatch_source_set_event_handler(*(v50 + 63), &__block_literal_global_242);
      dispatch_resume(*(v50 + 63));
      v59 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v60 = dispatch_queue_attr_make_with_qos_class(v59, QOS_CLASS_USER_INITIATED, 0);
      v61 = dispatch_queue_create("com.apple.biometrickitd.driverNotify", v60);
      v62 = *(v50 + 34);
      *(v50 + 34) = v61;

      if (*(v50 + 34))
      {
        v63 = IONotificationPortCreate(*MEMORY[0x29EDBB110]);
        *(v50 + 33) = v63;
        if (v63)
        {
          IONotificationPortSetDispatchQueue(v63, *(v50 + 34));
          v64 = *(v50 + 33);
          v65 = IOServiceMatching("ApplePearlSEPDriver");
          if (!IOServiceAddMatchingNotification(v64, "IOServiceFirstMatch", v65, __serviceMatch, v50, v50 + 70))
          {
            __serviceMatch(v50, *(v50 + 70));
            [v50 checkBioLogConsent];
            goto LABEL_39;
          }

          [BiometricKitXPCServerPearl init];
        }

        else
        {
          [BiometricKitXPCServerPearl init];
        }
      }

      else
      {
        [BiometricKitXPCServerPearl init];
      }
    }

    else
    {
      [BiometricKitXPCServerPearl init];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl init];
  }

LABEL_54:

  v50 = 0;
LABEL_39:
  if (__osLogTrace)
  {
    v66 = __osLogTrace;
  }

  else
  {
    v66 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v78 = v50;
    _os_log_impl(&dword_296CA4000, v66, OS_LOG_TYPE_DEFAULT, "init -> %@\n", buf, 0xCu);
  }

  return v50;
}

void __34__BiometricKitXPCServerPearl_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained processSecureFaceDetectRequestMessage];
}

void __34__BiometricKitXPCServerPearl_init__block_invoke_218(int a1, int token)
{
  v6 = *MEMORY[0x29EDCA608];
  state64 = 0;
  if (!notify_get_state(token, &state64))
  {
    if (__osLog)
    {
      v2 = __osLog;
    }

    else
    {
      v2 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v5 = state64;
      _os_log_impl(&dword_296CA4000, v2, OS_LOG_TYPE_DEFAULT, "Pearl: New PeakPowerPressureLevel: %llu\n", buf, 0xCu);
    }
  }
}

void *__34__BiometricKitXPCServerPearl_init__block_invoke_221(uint64_t a1)
{
  result = [*(a1 + 32) registerForLiftToWakeNotifications:1];
  if (*(*(a1 + 32) + 532) == 1)
  {
    result = [MEMORY[0x29EDB93B0] isAvailable];
    if (result)
    {
      *(*(a1 + 32) + 408) = 1;
      v3 = objc_alloc_init(MEMORY[0x29EDB93B0]);
      v4 = *(a1 + 32);
      v5 = *(v4 + 376);
      *(v4 + 376) = v3;

      result = [*(*(a1 + 32) + 376) startDeviceOrientationUpdatesToQueue:0 withHandler:0];
      *(*(a1 + 32) + 409) = 1;
    }
  }

  return result;
}

void __34__BiometricKitXPCServerPearl_init__block_invoke_2()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "SIGTERM received\n", v1, 2u);
  }

  exit(0);
}

- (int)initAutoBugCapture
{
  v3 = [PearlAutoBugCapture alloc];
  biometricABCDispatchQueue = [(BiometricKitXPCServer *)self biometricABCDispatchQueue];
  v5 = [(BiometricAutoBugCapture *)v3 initWithDomain:@"FaceID" process:@"biometrickitd" dispatchQueue:biometricABCDispatchQueue];
  [(BiometricKitXPCServer *)self setBiometricABC:v5];

  biometricABC = [(BiometricKitXPCServer *)self biometricABC];

  if (biometricABC)
  {
    return 0;
  }

  [BiometricKitXPCServerPearl initAutoBugCapture];
  return v8;
}

- (void)dealloc
{
  [(BiometricKitXPCServerPearl *)self registerForLiftToWakeNotifications:0];
  driverNotifyQueue = self->_driverNotifyQueue;
  if (driverNotifyQueue)
  {
    IOObjectRelease(driverNotifyQueue);
  }

  driverNotifyQueue_high = HIDWORD(self->_driverNotifyQueue);
  if (driverNotifyQueue_high)
  {
    IOServiceClose(driverNotifyQueue_high);
  }

  services = self->_services;
  if (services)
  {
    IOObjectRelease(services);
  }

  v6 = HIDWORD(self->_driverNotifyQueue);
  if (v6)
  {
    IOObjectRelease(v6);
  }

  if (LOBYTE(self->_commProtocolVersion) == 1)
  {
    notify_cancel(self->_status);
  }

  reporter = self->super._reporter;
  if (reporter)
  {
    IONotificationPortDestroy(reporter);
  }

  [*&self->_logSequenceDebug setAnalyticsPerformCommandBlock:0];
  analytics = self->_analytics;
  self->_analytics = 0;

  v9 = *&self->_logSequenceDebug;
  *&self->_logSequenceDebug = 0;

  v10.receiver = self;
  v10.super_class = BiometricKitXPCServerPearl;
  [(BiometricKitXPCServer *)&v10 dealloc];
}

- (void)serviceMatch:(unsigned int)match
{
  v42 = *MEMORY[0x29EDCA608];
  v27 = os_transaction_create();
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v33) = match;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "serviceMatch: %u\n", buf, 8u);
  }

  context = objc_autoreleasePoolPush();
  v6 = IOIteratorNext(match);
  if (v6)
  {
    v8 = MEMORY[0x29EDCA5F8];
    *&v7 = 136316162;
    v26 = v7;
    do
    {
      v9 = IOServiceOpen(v6, *MEMORY[0x29EDCA6B0], 0, &self->_driverNotifyQueue + 1);
      if (v9)
      {
        v19 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = v26;
          v33 = "err == 0 ";
          v34 = 2048;
          v35 = v9;
          v36 = 2080;
          v37 = &unk_296D32C0B;
          v38 = 2080;
          v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v40 = 1024;
          v41 = 655;
          _os_log_impl(&dword_296CA4000, v19, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }
      }

      self->_services = 0;
      v10 = IOServiceAddInterestNotification(self->super._reporter, v6, "IOGeneralInterest", __serviceStatus, self, &self->_services);
      if (v10)
      {
        v20 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = v26;
          v33 = "err == 0 ";
          v34 = 2048;
          v35 = v10;
          v36 = 2080;
          v37 = &unk_296D32C0B;
          v38 = 2080;
          v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v40 = 1024;
          v41 = 677;
          _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }
      }

      IOObjectRelease(v6);
      [(BiometricKitXPCServerPearl *)self getCommProtocolVersion];
      v11 = [(BiometricKitXPCServerPearl *)self initializeEngineWithOptions:BYTE1(self->_log)];
      if (v11)
      {
        v21 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = v26;
          v33 = "[self initializeEngineWithOptions:(_inDiagnosticMode ? kInitEngineOptionSkipMemoryAllocation : kInitEngineOptionNone)] == 0 ";
          v34 = 2048;
          v35 = v11;
          v36 = 2080;
          v37 = &unk_296D32C0B;
          v38 = 2080;
          v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v40 = 1024;
          v41 = 684;
          _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }
      }

      [(BiometricKitXPCServer *)self cacheCatacombInfo:v26];
      v12 = dispatch_get_global_queue(0, 0);
      block[0] = v8;
      block[1] = 3221225472;
      block[2] = __43__BiometricKitXPCServerPearl_serviceMatch___block_invoke;
      block[3] = &unk_29EE54570;
      block[4] = self;
      dispatch_async(v12, block);

      [(BiometricKitXPCServerPearl *)self performCancelCommand];
      if (BYTE1(self->_log) == 1)
      {
        [(BiometricKitXPCServerPearl *)self performNoCatacombCommand:0xFFFFFFFFLL];
        [(BiometricKitXPCServer *)self setCatacombFileAccessed:0];
      }

      else if (isEphemeralMultiUser())
      {
        [(BiometricKitXPCServer *)self syncTemplateListForUser:0xFFFFFFFFLL];
        [(BiometricKitXPCServer *)self setCatacombFileAccessed:1];
      }

      else
      {
        if ([(BiometricKitXPCServer *)self isClassCFileAccessible])
        {
          [(BiometricKitXPCServer *)self setCatacombFileAccessed:1];
          restoreAndSyncTemplates = [(BiometricKitXPCServerPearl *)self restoreAndSyncTemplates];
          if (!restoreAndSyncTemplates)
          {
            goto LABEL_23;
          }

          v14 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
          if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = v26;
          v33 = "err == 0 ";
          v34 = 2048;
          v35 = restoreAndSyncTemplates;
          v36 = 2080;
          v37 = &unk_296D32C0B;
          v38 = 2080;
          v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v40 = 1024;
          v41 = 718;
          v15 = v14;
        }

        else
        {
          DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
          CFNotificationCenterAddObserver(DarwinNotifyCenter, self, __firstUnlockCallback, @"com.apple.mobile.keybagd.first_unlock", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
          [(BiometricKitXPCServer *)self setTemplatesAtBoot:[(BiometricKitXPCServer *)self templatesExistAtBoot]];
          v17 = [(BiometricKitXPCServerPearl *)self performCommand:23 inValue:[(BiometricKitXPCServer *)self templatesAtBoot] inData:0 inSize:0 outData:0 outSize:0];
          if (!v17)
          {
            goto LABEL_23;
          }

          v22 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
          if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_23;
          }

          *buf = v26;
          v33 = "err == 0 ";
          v34 = 2048;
          v35 = v17;
          v36 = 2080;
          v37 = &unk_296D32C0B;
          v38 = 2080;
          v39 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v40 = 1024;
          v41 = 730;
          v15 = v22;
        }

        _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

LABEL_23:
      [(BiometricKitXPCServer *)self displayStateChanged:[(BiometricKitXPCServer *)self isDisplayOn]];
      [(BiometricKitXPCServer *)self postGeneralLockoutStateNotification];
      [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
      if (__osLog)
      {
        v18 = __osLog;
      }

      else
      {
        v18 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEFAULT, "serviceMatch: initialized\n", buf, 2u);
      }

      v6 = IOIteratorNext(match);
    }

    while (v6);
  }

  mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
  [mEMORY[0x29EDBFD50] synchronize];

  [(BiometricKitXPCServerPearl *)self updateLoggingState];
  [(BiometricKitXPCServerPearl *)self updateAutoRetryMode];
  [(BiometricKitXPCServerPearl *)self updateCombinedSequenceMode];
  [(BiometricKitXPCServerPearl *)self updateCoachingHintsEnabled];
  [(BiometricKitXPCServerPearl *)self updateEntitlementOverrideFlags];
  objc_initWeak(buf, self);
  v24 = *&self->_logSequenceDebug;
  v29[0] = MEMORY[0x29EDCA5F8];
  v29[1] = 3221225472;
  v29[2] = __43__BiometricKitXPCServerPearl_serviceMatch___block_invoke_258;
  v29[3] = &unk_29EE545B8;
  objc_copyWeak(&v30, buf);
  [v24 setAnalyticsPerformCommandBlock:v29];
  [*&self->_logSequenceDebug serviceMatchWithServer:self];
  objc_destroyWeak(&v30);
  objc_destroyWeak(buf);
  objc_autoreleasePoolPop(context);
  if (__osLogTrace)
  {
    v25 = __osLogTrace;
  }

  else
  {
    v25 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v25, OS_LOG_TYPE_DEFAULT, "serviceMatch: -> void\n", buf, 2u);
  }
}

uint64_t __43__BiometricKitXPCServerPearl_serviceMatch___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((v2[321] & 1) == 0)
  {
    [v2 loadSavageFWCertificate];
    [*(a1 + 32) loadCalibrationData];
    [*(a1 + 32) loadDCNKernels];
    v2 = *(a1 + 32);
  }

  if ([v2 identitiesCount])
  {
    [*(a1 + 32) syncTemplateListForUser:0xFFFFFFFFLL];
  }

  v3 = *(a1 + 32);

  return [v3 verifyDisplayTrust];
}

uint64_t __43__BiometricKitXPCServerPearl_serviceMatch___block_invoke_258(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained performCommand:a2 inValue:a3 inData:a4 inSize:a5 outData:a6 outSize:a7];

  return v14;
}

- (void)firstUnlockCallback
{
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "firstUnlockCallback\n", buf, 2u);
  }

  [(BiometricKitXPCServer *)self setTemplatesAtBoot:0];
  [(BiometricKitXPCServerPearl *)self restoreAndSyncTemplates];
  [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:0];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = v3;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "firstUnlockCallback -> void\n", v6, 2u);
  }
}

- (int)serviceStatus:(unsigned int)status version:(unsigned int)version ordinal:(unint64_t)ordinal data:(id)data timestamp:(unint64_t)timestamp
{
  v9 = *&version;
  v10 = *&status;
  v74 = *MEMORY[0x29EDCA608];
  dataCopy = data;
  v13 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v14 = __osLog;
  }

  else
  {
    v14 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67110146;
    *&buf[4] = v10;
    *&buf[8] = 1024;
    *&buf[10] = v9;
    v68 = 2048;
    ordinalCopy = ordinal;
    v70 = 2112;
    v71 = dataCopy;
    v72 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_DEBUG, "serviceStatus:version:ordinal:data:timestamp: 0x%x 0x%x 0x%llx %@ %llu\n", buf, 0x2Cu);
  }

  if (v10 <= -469794811)
  {
    if (v10 > -469794813)
    {
      if (v10 == -469794812)
      {
        if (v9 != 1)
        {
          [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
          goto LABEL_131;
        }

        [(BiometricKitXPCServerPearl *)self enrollUpdate:dataCopy withTimestamp:timestamp];
      }

      else
      {
        if (v9 != 1)
        {
          [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
          goto LABEL_131;
        }

        [(BiometricKitXPCServerPearl *)self enrollFeedback:dataCopy withTimestamp:timestamp];
      }
    }

    else if (v10 == -469794814)
    {
      if (v9 != 1)
      {
        [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
        goto LABEL_131;
      }

      [(BiometricKitXPCServerPearl *)self matchResult:dataCopy withTimestamp:timestamp];
    }

    else
    {
      if (v10 != -469794813)
      {
        goto LABEL_79;
      }

      if (v9 != 1)
      {
        [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
        goto LABEL_131;
      }

      [(BiometricKitXPCServerPearl *)self enrollResult:dataCopy withTimestamp:timestamp];
    }

    goto LABEL_111;
  }

  if (v10 > -469794807)
  {
    switch(v10)
    {
      case 0xE3FF800A:
        if (v9 != 1)
        {
          [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
          goto LABEL_131;
        }

        if ([dataCopy length] <= 0x1C)
        {
          [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
          goto LABEL_131;
        }

        -[BiometricKitXPCServerPearl matchEventMessage:](self, "matchEventMessage:", [dataCopy bytes]);
        break;
      case 0xE3FF800B:
        if (v9 != 1)
        {
          [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
          goto LABEL_131;
        }

        if ([dataCopy length] <= 0x16)
        {
          [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
          goto LABEL_131;
        }

        -[BiometricKitXPCServerPearl secureFaceDetectRequestMessage:](self, "secureFaceDetectRequestMessage:", [dataCopy bytes]);
        break;
      case 0xE3FF8400:
        if (__osLog)
        {
          v15 = __osLog;
        }

        else
        {
          v15 = v13;
        }

        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          v16 = *&self->_loggingOnRelease;
          *buf = 138412290;
          *&buf[4] = v16;
          _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_INFO, "kAppleBiometricSharedMemoryTransfer: dispatching %@\n", buf, 0xCu);
        }

        v17 = *&self->_loggingOnRelease;
        block[0] = MEMORY[0x29EDCA5F8];
        block[1] = 3221225472;
        block[2] = __75__BiometricKitXPCServerPearl_serviceStatus_version_ordinal_data_timestamp___block_invoke;
        block[3] = &unk_29EE54570;
        block[4] = self;
        dispatch_async(v17, block);
        break;
      default:
        goto LABEL_79;
    }

LABEL_111:
    if (__osLogTrace)
    {
      v55 = __osLogTrace;
    }

    else
    {
      v55 = v13;
    }

    if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      _os_log_impl(&dword_296CA4000, v55, OS_LOG_TYPE_DEBUG, "serviceStatus:type:inValue: -> 0x%x\n", buf, 8u);
    }

    v56 = 0;
    goto LABEL_117;
  }

  if (v10 == -469794810)
  {
    *buf = 0;
    if (v9 == 1)
    {
      if (dataCopy)
      {
        [dataCopy getBytes:buf length:4];
        if (*buf > 0x3E7u)
        {
          v54 = os_transaction_create();
          p_super = &self->_analytics->super;
          v60[0] = MEMORY[0x29EDCA5F8];
          v60[1] = 3221225472;
          v60[2] = __75__BiometricKitXPCServerPearl_serviceStatus_version_ordinal_data_timestamp___block_invoke_2;
          v60[3] = &unk_29EE545E0;
          v32 = v61;
          v61[0] = v54;
          v61[1] = self;
          v33 = &v62;
          v62 = dataCopy;
          v34 = v54;
          v35 = v60;
        }

        else
        {
          v30 = os_transaction_create();
          p_super = self->_sharedMemoryTransferQueue;
          v63[0] = MEMORY[0x29EDCA5F8];
          v63[1] = 3221225472;
          v63[2] = __75__BiometricKitXPCServerPearl_serviceStatus_version_ordinal_data_timestamp___block_invoke_263;
          v63[3] = &unk_29EE545E0;
          v32 = v64;
          v64[0] = v30;
          v64[1] = self;
          v33 = &v65;
          v65 = dataCopy;
          v34 = v30;
          v35 = v63;
        }

        dispatch_async(p_super, v35);

        goto LABEL_111;
      }

      [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
    }

    else
    {
      [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
    }

    v56 = 263;
    goto LABEL_132;
  }

  if (v10 == -469794809)
  {
    if (v9 != 1)
    {
      [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
      goto LABEL_131;
    }

    if ([dataCopy length] <= 5)
    {
      [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
      goto LABEL_131;
    }

    bytes = [dataCopy bytes];
    v19 = bytes;
    if ((bytes[1] & 0x80) != 0)
    {
      [(BiometricKitXPCServer *)self syncTemplateListForUser:*bytes];
    }

    [(BiometricKitXPCServer *)self postGeneralLockoutStateNotification];
    [(BiometricKitXPCServer *)self updateLockoutStateNotification:*(v19 + 2)];
    if ((v19[1] & 0x21) == 0x20)
    {
      if (BYTE2(self->_performCommandBufferData) == 1 && (BYTE3(self->_performCommandBufferData) & 1) == 0)
      {
        ++BYTE1(self->_performCommandBufferData);
        if (__osLog)
        {
          v20 = __osLog;
        }

        else
        {
          v20 = v13;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = BYTE1(self->_performCommandBufferData);
          *buf = 67109120;
          *&buf[4] = v21;
          _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_DEFAULT, "Glasses banner check: failCount:%u\n", buf, 8u);
        }

        if (BYTE1(self->_performCommandBufferData) >= 3u)
        {
          if ([MEMORY[0x29EDBFD70] displayPearlGlassesBannerNotification])
          {
            +[PearlCoreAnalytics sendDisplayPearlGlassesBannerNotificationEvent];
          }

          BYTE3(self->_performCommandBufferData) = 1;
        }
      }

      BYTE2(self->_performCommandBufferData) = 0;
    }

    string = [MEMORY[0x29EDBA050] string];
    v23 = string;
    v24 = *(v19 + 2);
    if (v24)
    {
      v36 = [string length];
      v37 = ",";
      if (!v36)
      {
        v37 = &unk_296D32C0B;
      }

      [v23 appendFormat:@"%sDeviceLocked", v37];
      v24 = *(v19 + 2);
      if ((v24 & 2) == 0)
      {
LABEL_46:
        if ((v24 & 4) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_87;
      }
    }

    else if ((v24 & 2) == 0)
    {
      goto LABEL_46;
    }

    v38 = [v23 length];
    v39 = ",";
    if (!v38)
    {
      v39 = &unk_296D32C0B;
    }

    [v23 appendFormat:@"%sPasscodeLockout", v39];
    v24 = *(v19 + 2);
    if ((v24 & 4) == 0)
    {
LABEL_47:
      if ((v24 & 8) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_90;
    }

LABEL_87:
    v40 = [v23 length];
    v41 = ",";
    if (!v40)
    {
      v41 = &unk_296D32C0B;
    }

    [v23 appendFormat:@"%sBioLockout", v41];
    v24 = *(v19 + 2);
    if ((v24 & 8) == 0)
    {
LABEL_48:
      if ((v24 & 0x200) == 0)
      {
        goto LABEL_49;
      }

      goto LABEL_93;
    }

LABEL_90:
    v42 = [v23 length];
    v43 = ",";
    if (!v42)
    {
      v43 = &unk_296D32C0B;
    }

    [v23 appendFormat:@"%sUnlockTokenPresent", v43];
    v24 = *(v19 + 2);
    if ((v24 & 0x200) == 0)
    {
LABEL_49:
      if ((v24 & 0x10) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_96;
    }

LABEL_93:
    v44 = [v23 length];
    v45 = ",";
    if (!v44)
    {
      v45 = &unk_296D32C0B;
    }

    [v23 appendFormat:@"%sApplePayTokenPresent", v45];
    v24 = *(v19 + 2);
    if ((v24 & 0x10) == 0)
    {
LABEL_50:
      if ((v24 & 0x20) == 0)
      {
        goto LABEL_51;
      }

      goto LABEL_99;
    }

LABEL_96:
    v46 = [v23 length];
    v47 = ",";
    if (!v46)
    {
      v47 = &unk_296D32C0B;
    }

    [v23 appendFormat:@"%sBeforeFirstUnlock", v47];
    v24 = *(v19 + 2);
    if ((v24 & 0x20) == 0)
    {
LABEL_51:
      if ((v24 & 0x40) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_102;
    }

LABEL_99:
    v48 = [v23 length];
    v49 = ",";
    if (!v48)
    {
      v49 = &unk_296D32C0B;
    }

    [v23 appendFormat:@"%sPasscodeValidated", v49];
    v24 = *(v19 + 2);
    if ((v24 & 0x40) == 0)
    {
LABEL_52:
      if ((v24 & 0x80) == 0)
      {
        goto LABEL_53;
      }

      goto LABEL_105;
    }

LABEL_102:
    v50 = [v23 length];
    v51 = ",";
    if (!v50)
    {
      v51 = &unk_296D32C0B;
    }

    [v23 appendFormat:@"%sIdentificationLockout", v51];
    v24 = *(v19 + 2);
    if ((v24 & 0x80) == 0)
    {
LABEL_53:
      if ((v24 & 0x400) == 0)
      {
LABEL_57:
        if (__osLog)
        {
          v27 = __osLog;
        }

        else
        {
          v27 = v13;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = *v19;
          v29 = *(v19 + 2);
          *buf = 67109634;
          *&buf[4] = v28;
          *&buf[8] = 1024;
          *&buf[10] = v29;
          v68 = 2112;
          ordinalCopy = v23;
          _os_log_impl(&dword_296CA4000, v27, OS_LOG_TYPE_DEFAULT, "SKS state: %u: 0x%x (%@)\n", buf, 0x18u);
        }

        [*&self->_logSequenceDebug lockStateUpdated:*(v19 + 2) forUser:*v19];
        if ((v19[1] & 0x20) != 0)
        {
          [self->_pearlDeviceState logPasscodeValidatedWithUserID:*v19];
        }

        goto LABEL_111;
      }

LABEL_54:
      v25 = [v23 length];
      v26 = ",";
      if (!v25)
      {
        v26 = &unk_296D32C0B;
      }

      [v23 appendFormat:@"%sRemoteUnlocked", v26];
      goto LABEL_57;
    }

LABEL_105:
    v52 = [v23 length];
    v53 = ",";
    if (!v52)
    {
      v53 = &unk_296D32C0B;
    }

    [v23 appendFormat:@"%sCatacombCorrupted", v53];
    if ((v19[1] & 0x400) == 0)
    {
      goto LABEL_57;
    }

    goto LABEL_54;
  }

LABEL_79:
  v59.receiver = self;
  v59.super_class = BiometricKitXPCServerPearl;
  if (![(BiometricKitXPCServer *)&v59 serviceStatus:v10 version:v9 ordinal:ordinal data:dataCopy timestamp:timestamp])
  {
    goto LABEL_111;
  }

  [BiometricKitXPCServerPearl serviceStatus:version:ordinal:data:timestamp:];
LABEL_131:
  v56 = *buf;
LABEL_132:
  if (__osLogTrace)
  {
    v58 = __osLogTrace;
  }

  else
  {
    v58 = v13;
  }

  if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v56;
    _os_log_impl(&dword_296CA4000, v58, OS_LOG_TYPE_ERROR, "serviceStatus:type:inValue: -> 0x%x\n", buf, 8u);
  }

LABEL_117:

  return v56;
}

void __75__BiometricKitXPCServerPearl_serviceStatus_version_ordinal_data_timestamp___block_invoke_263(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) logKernelMessage:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void __75__BiometricKitXPCServerPearl_serviceStatus_version_ordinal_data_timestamp___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 40) analyticsKernelMessage:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

- (void)updateAutoRetryMode
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)updateCombinedSequenceMode
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)updateEntitlementOverrideFlags
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)updateCoachingHintsEnabled
{
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "updateCoachingHintsEnabled\n", buf, 2u);
  }

  mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
  LOBYTE(self->_sigTERMDispatchSource) = [mEMORY[0x29EDBFD50] BOOLForKey:@"coachingHintsEnabled"];

  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = v3;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *v7 = 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "updateCoachingHintsEnabled -> void\n", v7, 2u);
  }
}

- (void)updateLoggingState
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 408) & 1) == 0)
  {
    if ((*(a1 + 40) & 0x8200) == 0)
    {
      *(v2 + 409) = 0;
      [*(*(a1 + 32) + 376) stopDeviceOrientationUpdates];
      v3 = 0;
      goto LABEL_7;
    }

    if (!*(v2 + 376) && [MEMORY[0x29EDB93B0] isAvailable])
    {
      v3 = objc_alloc_init(MEMORY[0x29EDB93B0]);
LABEL_7:
      v4 = *(a1 + 32);
      v5 = *(v4 + 376);
      *(v4 + 376) = v3;
    }
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 384);
  if ((*(a1 + 40) & 0x200) == 0)
  {
    [v7 stopDeviceMotionUpdates];
    v8 = 0;
    v9 = 384;
LABEL_10:
    v10 = *(a1 + 32);
    v11 = *(v10 + v9);
    *(v10 + v9) = v8;

    goto LABEL_17;
  }

  if (!v7)
  {
    v12 = objc_alloc_init(MEMORY[0x29EDB93C0]);
    v13 = *(a1 + 32);
    v14 = *(v13 + 384);
    *(v13 + 384) = v12;

    v15 = [*(*(a1 + 32) + 384) isDeviceMotionAvailable];
    v6 = *(a1 + 32);
    if ((v15 & 1) == 0)
    {
      v16 = *(v6 + 384);
      *(v6 + 384) = 0;

      v6 = *(a1 + 32);
    }
  }

  v9 = 392;
  if (!*(v6 + 392) && [MEMORY[0x29EDB93B8] isActivityAvailable])
  {
    v8 = objc_alloc_init(MEMORY[0x29EDB93B8]);
    goto LABEL_10;
  }

LABEL_17:
  v17 = *(a1 + 32);
  if (v17[47] || v17[48])
  {
    v18 = [v17 ongoingBiometricOperation];
    v19[0] = MEMORY[0x29EDCA5F8];
    v19[1] = 3221225472;
    v19[2] = __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_2;
    v19[3] = &unk_29EE54658;
    v19[4] = *(a1 + 32);
    [v18 setActivityUpdateBlock:v19];
  }
}

void __48__BiometricKitXPCServerPearl_updateLoggingState__block_invoke_5(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 376) deviceOrientationBlocking];
  *(*(a1 + 32) + 416) = [v2 orientation];

  v3 = [*(*(a1 + 32) + 384) deviceMotion];
  v4 = [v3 attitude];
  v5 = *(a1 + 32);
  v6 = *(v5 + 424);
  *(v5 + 424) = v4;

  v7 = *(a1 + 32);
  v8 = (v7 + 432);
  v9 = [*(v7 + 384) deviceMotion];
  [v9 rotationRate];
  *v8 = v10;
  v8[1] = v11;
  v8[2] = v12;

  v13 = *(a1 + 32);
  v14 = (v13 + 456);
  v15 = [*(v13 + 384) deviceMotion];
  [v15 userAcceleration];
  *v14 = v16;
  v14[1] = v17;
  v14[2] = v18;

  v19 = *(a1 + 32);
  v20 = (v19 + 480);
  v21 = [*(v19 + 384) deviceMotion];
  [v21 gravity];
  *v20 = v22;
  v20[1] = v23;
  v20[2] = v24;

  v25 = *(a1 + 32);
  if ((*(v25 + 408) & 1) == 0)
  {
    *(v25 + 409) = 0;
    [*(*(a1 + 32) + 376) stopDeviceOrientationUpdates];
    v25 = *(a1 + 32);
  }

  [*(v25 + 384) stopDeviceMotionUpdates];
  v26 = kSpringBoardBundleIdentifier_block_invoke_motionTransaction;
  kSpringBoardBundleIdentifier_block_invoke_motionTransaction = 0;
}

- (void)handleSharedMemoryTransfer:(unsigned int)transfer withHeader:(id)header data:(id)data
{
  headerCopy = header;
  dataCopy = data;
  v9 = dataCopy;
  if (transfer == 2)
  {
    pearlDeviceState = self->_pearlDeviceState;
    firstObject = [dataCopy firstObject];
    [pearlDeviceState logFrameDebug:headerCopy withBuffer:firstObject];
  }

  else if (transfer == 1)
  {
    [self->_pearlDeviceState logCameraFrame:headerCopy withBuffers:dataCopy];
  }
}

void __58__BiometricKitXPCServerPearl_logSequenceDebugWithContext___block_invoke(uint64_t a1)
{
  if (MEMORY[0x29C2622A0](*(*(a1 + 32) + 284), 2, *MEMORY[0x29EDCA6B0], *(a1 + 40)))
  {
    __58__BiometricKitXPCServerPearl_logSequenceDebugWithContext___block_invoke_cold_1();
  }
}

- (id)deviceAttitude
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy_;
  v10 = __Block_byref_object_dispose_;
  v11 = 0;
  motionActivityManager = self->_motionActivityManager;
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __44__BiometricKitXPCServerPearl_deviceAttitude__block_invoke;
  v5[3] = &unk_29EE546D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(&motionActivityManager->super, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __44__BiometricKitXPCServerPearl_deviceAttitude__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 384) isDeviceMotionActive];
  v3 = *(a1 + 32);
  if (v2)
  {
    [*(v3 + 384) deviceMotion];
    v4 = [objc_claimAutoreleasedReturnValue() attitude];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    *(v7 + 40) = *(v3 + 424);
  }

  return MEMORY[0x2A1C71028]();
}

- ($1AB5FA073B851C12C2339EC22442E995)deviceRotationRate
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3810000000;
  v13 = "";
  v14 = 0;
  v15 = 0;
  v16 = 0;
  motionActivityManager = self->_motionActivityManager;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __48__BiometricKitXPCServerPearl_deviceRotationRate__block_invoke;
  block[3] = &unk_29EE546D0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(&motionActivityManager->super, block);
  v3 = v11[4];
  v4 = v11[5];
  v5 = v11[6];
  _Block_object_dispose(&v10, 8);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

__n128 __48__BiometricKitXPCServerPearl_deviceRotationRate__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 384) isDeviceMotionActive])
  {
    v10 = [*(*(a1 + 32) + 384) deviceMotion];
    [v10 rotationRate];
    v2 = *(*(a1 + 40) + 8);
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v5;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = (*(a1 + 32) + 432);
    v9 = *(*(a1 + 32) + 448);
    result = *v8;
    v7[2] = *v8;
    v7[3].n128_u64[0] = v9;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)deviceUserAcceleration
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3810000000;
  v13 = "";
  v14 = 0;
  v15 = 0;
  v16 = 0;
  motionActivityManager = self->_motionActivityManager;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __52__BiometricKitXPCServerPearl_deviceUserAcceleration__block_invoke;
  block[3] = &unk_29EE546D0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(&motionActivityManager->super, block);
  v3 = v11[4];
  v4 = v11[5];
  v5 = v11[6];
  _Block_object_dispose(&v10, 8);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

__n128 __52__BiometricKitXPCServerPearl_deviceUserAcceleration__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 384) isDeviceMotionActive])
  {
    v10 = [*(*(a1 + 32) + 384) deviceMotion];
    [v10 userAcceleration];
    v2 = *(*(a1 + 40) + 8);
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v5;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = (*(a1 + 32) + 456);
    v9 = *(*(a1 + 32) + 472);
    result = *v8;
    v7[2] = *v8;
    v7[3].n128_u64[0] = v9;
  }

  return result;
}

- ($1AB5FA073B851C12C2339EC22442E995)deviceGravity
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3810000000;
  v13 = "";
  v14 = 0;
  v15 = 0;
  v16 = 0;
  motionActivityManager = self->_motionActivityManager;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __43__BiometricKitXPCServerPearl_deviceGravity__block_invoke;
  block[3] = &unk_29EE546D0;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(&motionActivityManager->super, block);
  v3 = v11[4];
  v4 = v11[5];
  v5 = v11[6];
  _Block_object_dispose(&v10, 8);
  v6 = v3;
  v7 = v4;
  v8 = v5;
  result.var2 = v8;
  result.var1 = v7;
  result.var0 = v6;
  return result;
}

__n128 __43__BiometricKitXPCServerPearl_deviceGravity__block_invoke(uint64_t a1)
{
  if ([*(*(a1 + 32) + 384) isDeviceMotionActive])
  {
    v10 = [*(*(a1 + 32) + 384) deviceMotion];
    [v10 gravity];
    v2 = *(*(a1 + 40) + 8);
    v2[4] = v3;
    v2[5] = v4;
    v2[6] = v5;
  }

  else
  {
    v7 = *(*(a1 + 40) + 8);
    v8 = (*(a1 + 32) + 480);
    v9 = *(*(a1 + 32) + 496);
    result = *v8;
    v7[2] = *v8;
    v7[3].n128_u64[0] = v9;
  }

  return result;
}

- (void)logKernelMessage:(id)message
{
  v45 = *MEMORY[0x29EDCA608];
  messageCopy = message;
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
    *buf = 138412290;
    *&buf[4] = messageCopy;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "logKernelMessage: %@\n", buf, 0xCu);
  }

  if ([messageCopy length] < 0x23)
  {
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v5;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "logKernelMessage: NO DATA!\n", buf, 2u);
    }
  }

  else
  {
    bytes = [messageCopy bytes];
    v8 = bytes;
    v9 = *bytes;
    if (*bytes <= 2)
    {
      if (!v9)
      {
        pearlDeviceState = self->_pearlDeviceState;
        identities = [MEMORY[0x29EDB8DA0] dataWithBytes:bytes + 35 length:*(bytes + 31)];
        [pearlDeviceState logData:identities withContext:v8 + 1];
        goto LABEL_24;
      }

      if (v9 == 2)
      {
        v17 = self->_pearlDeviceState;
        identities = [MEMORY[0x29EDB8DA0] dataWithBytes:bytes + 35 length:*(bytes + 31)];
        v12 = v8 + 1;
        v13 = v17;
        v14 = identities;
        v15 = 0;
        goto LABEL_20;
      }
    }

    else
    {
      switch(v9)
      {
        case 3:
          identities = [(BiometricKitXPCServer *)self identities];
          deviceAttitude = [(BiometricKitXPCServerPearl *)self deviceAttitude];
          [(BiometricKitXPCServerPearl *)self deviceRotationRate];
          v20 = v19;
          v22 = v21;
          [(BiometricKitXPCServerPearl *)self deviceUserAcceleration];
          v24 = v23;
          v26 = v25;
          [(BiometricKitXPCServerPearl *)self deviceGravity];
          v28 = v27;
          v30 = v29;
          *buf = [(BiometricKitXPCServerPearl *)self deviceOrientation];
          [deviceAttitude roll];
          *&buf[8] = v31;
          [deviceAttitude yaw];
          *&buf[24] = v32;
          [deviceAttitude pitch];
          *&buf[16] = v33;
          *&buf[32] = v20;
          *&buf[40] = v22;
          *&buf[48] = v22;
          *&buf[56] = v24;
          *&buf[64] = v26;
          *&buf[72] = v26;
          v42 = v28;
          v43 = v30;
          v44 = v30;
          v34 = self->_pearlDeviceState;
          v35 = [MEMORY[0x29EDB8DA0] dataWithBytes:v8 + 35 length:*(v8 + 31)];
          [v34 logSequenceInfo:v35 withContext:v8 + 1 orientation:buf identities:identities];

          [(BiometricKitXPCServerPearl *)self logSequenceDebugWithContext:v8 + 1];
          goto LABEL_24;
        case 8:
          memset(&buf[12], 0, 67);
          *buf = *(bytes + 1);
          *&buf[8] = *(bytes + 14);
          *&buf[10] = *(bytes + 6);
          buf[14] = *(bytes + 30);
          buf[15] = *(bytes + 14);
          v36 = *(bytes + 5);
          *&buf[23] = *(bytes + 27);
          *&buf[16] = v36;
          v37 = self->_pearlDeviceState;
          v38 = [MEMORY[0x29EDB8DA0] dataWithBytes:bytes + 35 length:*(bytes + 31)];
          [v37 logCameraFrame:buf sensorRawData:0 metaData:v38];

          goto LABEL_25;
        case 10:
          v10 = self->_pearlDeviceState;
          identities = [MEMORY[0x29EDB8DA0] dataWithBytes:bytes + 35 length:*(bytes + 31)];
          v12 = v8 + 1;
          v13 = v10;
          v14 = identities;
          v15 = 1;
LABEL_20:
          [v13 logTemplateList:v14 withContext:v12 isPO:v15];
LABEL_24:

          goto LABEL_25;
      }
    }

    NSLog(&cfstr_BiologWarningU.isa, *bytes, *(bytes + 31));
  }

LABEL_25:
  if (__osLog)
  {
    v40 = __osLog;
  }

  else
  {
    v40 = v5;
  }

  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v40, OS_LOG_TYPE_DEBUG, "logKernelMessage: -> void\n", buf, 2u);
  }
}

- (void)analyticsKernelMessage:(id)message
{
  v20 = *MEMORY[0x29EDCA608];
  messageCopy = message;
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
    v16 = 67109120;
    v17 = messageCopy != 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "analyticsKernelMessage: %d\n", &v16, 8u);
  }

  deviceOrientation = [(BiometricKitXPCServerPearl *)self deviceOrientation];
  if ([messageCopy length] > 0x22)
  {
    bytes = [messageCopy bytes];
    v9 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:bytes + 35 length:*(bytes + 31) freeWhenDone:0];
    v10 = *bytes;
    if (*bytes <= 1002)
    {
      if (v10 == 1001)
      {
        identities = [(BiometricKitXPCServer *)self identities];
        [*&self->_logSequenceDebug sendMatchEventAnalytics:v9 orientation:deviceOrientation identities:identities];

        goto LABEL_24;
      }

      if (v10 == 1002)
      {
        [*&self->_logSequenceDebug sendEnrollEventAnalytics:v9 orientation:deviceOrientation];
        goto LABEL_23;
      }
    }

    else
    {
      switch(v10)
      {
        case 1003:
          [*&self->_logSequenceDebug sendFaceDetectEventAnalytics:v9 fromMatch:0 orientation:deviceOrientation];
          goto LABEL_23;
        case 1004:
          [*&self->_logSequenceDebug sendPasscodeChallengeEventAnalytics:v9 orientation:deviceOrientation];
          goto LABEL_23;
        case 1005:
          [*&self->_logSequenceDebug sendBioLockoutEventAnalytics:v9];
LABEL_23:

          goto LABEL_24;
      }
    }

    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = v5;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *bytes;
      v14 = *(bytes + 31);
      v16 = 67109376;
      v17 = v13;
      v18 = 1024;
      v19 = v14;
      _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "analyticsKernelMessage: Unknown kernel analytics message (%d) received! (Length: %u)\n", &v16, 0xEu);
    }

    goto LABEL_23;
  }

  [BiometricKitXPCServerPearl analyticsKernelMessage:];
LABEL_24:
  if (__osLog)
  {
    v15 = __osLog;
  }

  else
  {
    v15 = v5;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEBUG, "analyticsKernelMessage: -> void\n", &v16, 2u);
  }
}

- (void)registerForLiftToWakeNotifications:(BOOL)notifications
{
  notificationsCopy = notifications;
  v12 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11[0] = 67109120;
    v11[1] = notificationsCopy;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "registerForLiftToWakeNotifications: %d\n", v11, 8u);
  }

  if (notificationsCopy && [MEMORY[0x29EDB93E0] isWakeGestureAvailable])
  {
    mEMORY[0x29EDB93E0] = [MEMORY[0x29EDB93E0] sharedManager];
    analyticsDispatchQueue = self->_analyticsDispatchQueue;
    self->_analyticsDispatchQueue = mEMORY[0x29EDB93E0];

    [(OS_dispatch_queue *)self->_analyticsDispatchQueue setDelegate:self];
    [(OS_dispatch_queue *)self->_analyticsDispatchQueue startWakeGestureUpdates];
  }

  else
  {
    [(OS_dispatch_queue *)self->_analyticsDispatchQueue stopWakeGestureUpdates];
    [(OS_dispatch_queue *)self->_analyticsDispatchQueue setDelegate:0];
    v9 = self->_analyticsDispatchQueue;
    self->_analyticsDispatchQueue = 0;
  }

  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11[0]) = 0;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "registerForLiftToWakeNotifications: -> void\n", v11, 2u);
  }
}

- (void)wakeGestureManager:(id)manager didUpdateWakeGesture:(int64_t)gesture
{
  v15 = *MEMORY[0x29EDCA608];
  managerCopy = manager;
  if (gesture == 1)
  {
    activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    objc_sync_enter(activeBioOpsQueue);
    activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    firstObject = [activeBioOpsQueue2 firstObject];
    type = [firstObject type];

    objc_sync_exit(activeBioOpsQueue);
    v11 = MEMORY[0x29EDCA988];
    if (__osLog)
    {
      v12 = __osLog;
    }

    else
    {
      v12 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 67109120;
      v14[1] = type == 2;
      _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEBUG, "wakeGestureManager:didUpdateWakeGesture: CMWakeGestureStateDetected, matchRunning = %u\n", v14, 8u);
    }

    if (type == 2)
    {
      if (__osLog)
      {
        v13 = __osLog;
      }

      else
      {
        v13 = v11;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14[0]) = 0;
        _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEFAULT, "wakeGestureManager:didUpdateWakeGesture: CMWakeGestureStateDetected -> start new match attempt\n", v14, 2u);
      }

      if ([(BiometricKitXPCServerPearl *)self performCommand:33 inValue:0 inData:0 inSize:0 outData:0 outSize:0])
      {
        [BiometricKitXPCServerPearl wakeGestureManager:didUpdateWakeGesture:];
      }
    }
  }
}

- (void)donateBiomeEvent:(id)event
{
  v11 = *MEMORY[0x29EDCA608];
  eventCopy = event;
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v10 = eventCopy;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "donateBiomeEvent: %@\n", buf, 0xCu);
  }

  v5 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __47__BiometricKitXPCServerPearl_donateBiomeEvent___block_invoke;
  block[3] = &unk_29EE54570;
  v8 = eventCopy;
  v6 = eventCopy;
  dispatch_async(v5, block);
}

void __47__BiometricKitXPCServerPearl_donateBiomeEvent___block_invoke(uint64_t a1)
{
  v6 = os_transaction_create();
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x29EDBFD48] discoverabilitySignal];
  v4 = [v3 source];

  v5 = [objc_alloc(MEMORY[0x29EDBFD40]) initWithIdentifier:*(a1 + 32) bundleID:@"com.apple.biometrickitd" context:0];
  [v4 sendEvent:v5];

  objc_autoreleasePoolPop(v2);
}

- (void)statusMessage:(unsigned int)message withData:(id)data timestamp:(unint64_t)timestamp
{
  cancelledMessage = *&message;
  v91 = *MEMORY[0x29EDCA608];
  dataCopy = data;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    *&buf[4] = cancelledMessage;
    *&buf[8] = 2112;
    *&buf[10] = dataCopy;
    v89 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "statusMessage:withData:timestamp: %d %@ %llu\n", buf, 0x1Cu);
  }

  array = [MEMORY[0x29EDB8DE8] array];
  activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(activeBioOpsQueue);
  activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  firstObject = [activeBioOpsQueue2 firstObject];
  client = [firstObject client];

  activeBioOpsQueue3 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  firstObject2 = [activeBioOpsQueue3 firstObject];

  objc_sync_exit(activeBioOpsQueue);
  if ([firstObject2 type] == 2)
  {
    BKLogCode();
  }

  v12 = 0;
  if (cancelledMessage > 1000)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    switch(cancelledMessage)
    {
      case 1001:
      case 1002:
      case 1004:
      case 1005:
      case 1007:
      case 1008:
      case 1010:
      case 1017:
      case 1018:
      case 1019:
      case 1020:
      case 1021:
      case 1066:
      case 1070:
        break;
      case 1003:
      case 1006:
      case 1009:
        [objc_opt_class() reportPearlInterlock:0];
        break;
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
        v12 = 0;
        v13 = 0;
        v15 = 0;
        v16 = 0;
        v14 = 1;
        goto LABEL_31;
      case 1056:
      case 1057:
      case 1061:
      case 1062:
      case 1064:
      case 1068:
      case 1073:
      case 1074:
      case 1077:
      case 1079:
      case 1081:
      case 1083:
        goto LABEL_15;
      case 1059:
      case 1060:
      case 1063:
      case 1065:
      case 1069:
      case 1078:
      case 1080:
      case 1082:
      case 1084:
        goto LABEL_30;
      default:
        goto LABEL_31;
    }

    v12 = 0;
    v13 = 0;
    v14 = 0;
    v16 = 0;
    v15 = 1;
    goto LABEL_31;
  }

  v17 = (cancelledMessage - 65);
  if (v17 <= 0x22)
  {
    if (((1 << (cancelledMessage - 65)) & 0xD) != 0)
    {
LABEL_15:
      if (client)
      {
        [client delegateRegistered];
        [client statusMessage:cancelledMessage];
        [array addObject:client];
      }

      v18 = cancelledMessage != 66;
      [(BiometricKitXPCServer *)self saveCatacomb];
      if (cancelledMessage == 1064)
      {
        [objc_opt_class() reportPearlInterlock:1];
        v12 = 0;
        cancelledMessage = 1064;
        v19 = 1;
        v18 = 1;
LABEL_40:
        bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
        objc_sync_enter(bioOpsQueue);
        activeBioOpsQueue4 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
        objc_sync_enter(activeBioOpsQueue4);
        if (v12)
        {
          activeBioOpsQueue5 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
          firstObject3 = [activeBioOpsQueue5 firstObject];
          client2 = [firstObject3 client];

          activeBioOpsQueue6 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
          firstObject4 = [activeBioOpsQueue6 firstObject];
          status = [firstObject4 status];

          if (client2 && (v19 | [client2 delegateRegistered]) == 1 && status != 3)
          {
            [client2 statusMessage:cancelledMessage];
            [array addObject:client2];
          }
        }

        else
        {
          client2 = client;
        }

        [(BiometricKitXPCServer *)self switchToNextBioOperation:v18];
        objc_sync_exit(activeBioOpsQueue4);

        objc_sync_exit(bioOpsQueue);
        client = client2;
        goto LABEL_47;
      }

      v12 = 0;
LABEL_20:
      v19 = 1;
      goto LABEL_40;
    }

    if (((1 << (cancelledMessage - 65)) & 0x400008000) != 0)
    {
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v12 = 1;
      goto LABEL_31;
    }

    if (v17 == 1)
    {
      if (client)
      {
        [client delegateRegistered];
      }

      [(BiometricKitXPCServer *)self saveCatacomb];
      v18 = 0;
      cancelledMessage = 66;
      v12 = 1;
      goto LABEL_20;
    }
  }

  if ((cancelledMessage - 63) >= 2)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    if (cancelledMessage == 51)
    {
LABEL_30:
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = 0;
      v16 = 1;
    }
  }

  else
  {
    v12 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v13 = 1;
  }

LABEL_31:
  if (cancelledMessage == 58 || cancelledMessage == 80 || v16)
  {
    if (client && ((v12 | [client delegateRegistered] ^ 1) & 1) == 0)
    {
      [client statusMessage:cancelledMessage];
      [array addObject:client];
    }

    [(BiometricKitXPCServer *)self saveCatacombIfDirtyWithInterval:900.0 andDelay:1.0];
    v18 = (cancelledMessage == 58) | v16;
    if (cancelledMessage == 1065)
    {
      [objc_opt_class() reportPearlInterlock:1];
      v19 = 0;
      cancelledMessage = 1065;
    }

    else
    {
      v19 = 0;
    }

    goto LABEL_40;
  }

  if (cancelledMessage == 99)
  {
    if ([firstObject2 type] == 3)
    {
      cancelledMessage = [firstObject2 cancelledMessage];
      v19 = 0;
      v18 = 0;
    }

    else
    {
      v19 = 0;
      v18 = 0;
      cancelledMessage = 99;
    }

    goto LABEL_40;
  }

  if ((v14 | v15) == 1)
  {
    v68 = v14;
    allClients = [(BiometricKitXPCServer *)self allClients];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v33 = [allClients countByEnumeratingWithState:&v74 objects:v87 count:16];
    if (v33)
    {
      v34 = *v75;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v75 != v34)
          {
            objc_enumerationMutation(allClients);
          }

          v36 = *(*(&v74 + 1) + 8 * i);
          clientInfo = [v36 clientInfo];
          v38 = [clientInfo objectForKeyedSubscript:@"BKClientType"];
          if ([v38 integerValue] == 2)
          {
            delegateRegistered = [v36 delegateRegistered];

            if (delegateRegistered)
            {
              [v36 statusMessage:cancelledMessage];
              [array addObject:v36];
            }
          }

          else
          {
          }
        }

        v33 = [allClients countByEnumeratingWithState:&v74 objects:v87 count:16];
      }

      while (v33);
    }

    if (v68)
    {
      *&self->_peakPowerPressureLevelNtfToken = cancelledMessage;
    }

    goto LABEL_47;
  }

  if (v13)
  {
    if (cancelledMessage == 63)
    {
      clientInfo2 = [client clientInfo];
      v41 = [clientInfo2 objectForKeyedSubscript:@"BKClientBundleIdentifier"];
      v42 = [v41 isEqualToString:@"com.apple.springboard"];

      if (v42)
      {
        analyticsDispatchQueue = self->_analyticsDispatchQueue;
        if (analyticsDispatchQueue)
        {
          [(OS_dispatch_queue *)analyticsDispatchQueue reenableDetectedStateRecognition];
          v44 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_296CA4000, v44, OS_LOG_TYPE_DEBUG, "wakeGestureManager reenableDetectedStateRecognition\n", buf, 2u);
          }
        }
      }
    }

    if ([dataCopy length] >= 0x2A)
    {
      v45 = dataCopy;
      -[BiometricKitXPCServerPearl faceDetectMessage:info:fromSecureFD:](self, "faceDetectMessage:info:fromSecureFD:", cancelledMessage, [dataCopy bytes], 0);
    }

    goto LABEL_47;
  }

  if (cancelledMessage <= 1071)
  {
    if (cancelledMessage != 1016)
    {
      if (cancelledMessage != 1067)
      {
        if (cancelledMessage == 1071)
        {
          if ([dataCopy length])
          {
            v46 = dataCopy;
            v47 = *[dataCopy bytes];
            if (client && [client delegateRegistered] && (objc_msgSend(client, "clientAppIsBackground") & 1) == 0)
            {
              v83 = @"BKStatusDetailFaceOcclusionState";
              v48 = [MEMORY[0x29EDBA070] numberWithBool:v47 != 0];
              v84 = v48;
              v49 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v84 forKeys:&v83 count:1];

              [client statusMessage:1071 details:v49];
              [array addObject:client];
            }

            if (v47)
            {
              [(BiometricKitXPCServerPearl *)self donateBiomeEvent:@"com.apple.faceid.any-face-covering.detected"];
            }
          }

          LODWORD(cancelledMessage) = 1071;
          goto LABEL_47;
        }

        goto LABEL_121;
      }

      if (LOBYTE(self->_sigTERMDispatchSource) == 1 && [dataCopy length] >= 4)
      {
        v59 = dataCopy;
        v60 = *[dataCopy bytes];
        if (client && [client delegateRegistered] && (objc_msgSend(client, "clientAppIsBackground") & 1) == 0)
        {
          v85 = @"BKStatusDetailFaceDetectFeedback";
          v61 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v60];
          v86 = v61;
          v62 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v86 forKeys:&v85 count:1];

          [client statusMessage:1067 details:v62];
          [array addObject:client];
        }

        if (v60 == 11)
        {
          [(BiometricKitXPCServerPearl *)self donateBiomeEvent:@"com.apple.faceid.face-covering.detected"];
        }
      }

      LODWORD(cancelledMessage) = 1067;
      goto LABEL_47;
    }

    if ([dataCopy length] <= 1)
    {
      [BiometricKitXPCServerPearl statusMessage:withData:timestamp:];
    }

    if ([dataCopy length] < 2)
    {
      LOBYTE(v52) = 0;
    }

    else
    {
      v51 = dataCopy;
      v52 = *[dataCopy bytes];
      if (__osLog)
      {
        v53 = __osLog;
      }

      else
      {
        v53 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v52;
        _os_log_impl(&dword_296CA4000, v53, OS_LOG_TYPE_DEFAULT, "Received kStatusDeviceEventNeedsSprlInitialization with mask: 0x%04x\n", buf, 8u);
      }

      if (v52 >= 0x40)
      {
        [BiometricKitXPCServerPearl statusMessage:withData:timestamp:];
LABEL_157:
        if ([(BiometricKitXPCServerPearl *)self performCommand:50 inValue:0 inData:0 inSize:0 outData:0 outSize:0])
        {
          [BiometricKitXPCServerPearl statusMessage:withData:timestamp:];
          LODWORD(cancelledMessage) = v78;
          client = *buf;
        }

        else
        {
          LODWORD(cancelledMessage) = 1016;
        }

        goto LABEL_47;
      }
    }

    if ((BYTE1(self->_log) & 1) != 0 || ([BiometricKitXPCServerPearl statusMessage:? withData:? timestamp:?]& 1) != 0)
    {
      if ((v52 & 1) != 0 && [(BiometricKitXPCServerPearl *)self initializeEngineWithOptions:0])
      {
        [BiometricKitXPCServerPearl statusMessage:withData:timestamp:];
      }

      if ((v52 & 2) != 0 && [(BiometricKitXPCServerPearl *)self loadSavageFWCertificate])
      {
        [BiometricKitXPCServerPearl statusMessage:withData:timestamp:];
      }

      if ((v52 & 4) != 0)
      {
        [(BiometricKitXPCServerPearl *)self loadCalibrationData];
        if ((v52 & 8) != 0)
        {
          [BiometricKitXPCServerPearl statusMessage:withData:timestamp:];
        }

        LOBYTE(v52) = v52 & 0x37;
      }

      if ((v52 & 8) != 0 && [(BiometricKitXPCServerPearl *)self loadFDRClass:16 alternative:0])
      {
        [BiometricKitXPCServerPearl statusMessage:withData:timestamp:];
      }

      if ((v52 & 0x10) != 0 && [(BiometricKitXPCServerPearl *)self loadDCNKernels])
      {
        [BiometricKitXPCServerPearl statusMessage:withData:timestamp:];
      }
    }

    goto LABEL_157;
  }

  switch(cancelledMessage)
  {
    case 0x430:
      if ([dataCopy length])
      {
        v54 = dataCopy;
        bytes = [dataCopy bytes];
        if (client)
        {
          v56 = *bytes;
          if ([client delegateRegistered] && (objc_msgSend(client, "clientAppIsBackground") & 1) == 0)
          {
            v81 = @"BKStatusDetailFaceWUPoseEligible";
            v57 = [MEMORY[0x29EDBA070] numberWithBool:v56 != 0];
            v82 = v57;
            v58 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];

            [client statusMessage:1072 details:v58];
            [array addObject:client];
          }
        }

        else
        {
          client = 0;
        }
      }

      LODWORD(cancelledMessage) = 1072;
      break;
    case 0x433:
      if ([dataCopy length] >= 4)
      {
        v63 = dataCopy;
        bytes2 = [dataCopy bytes];
        if (client)
        {
          v65 = *bytes2;
          if ([client delegateRegistered] && (objc_msgSend(client, "clientAppIsBackground") & 1) == 0)
          {
            v79 = @"BKStatusDetailPSRequestReason";
            v66 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v65];
            v80 = v66;
            v67 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];

            [client statusMessage:1075 details:v67];
            [array addObject:client];
          }
        }

        else
        {
          client = 0;
        }
      }

      LODWORD(cancelledMessage) = 1075;
      break;
    case 0x434:
      if ([dataCopy length] >= 0x40)
      {
        v50 = dataCopy;
        -[BiometricKitXPCServerPearl motionDetectMessage:info:state:](self, "motionDetectMessage:info:state:", 1076, [dataCopy bytes], 0);
      }

      LODWORD(cancelledMessage) = 1076;
      break;
    default:
LABEL_121:
      if (client)
      {
        if ([client delegateRegistered] && (objc_msgSend(client, "clientAppIsBackground") & 1) == 0)
        {
          [client statusMessage:cancelledMessage];
          [array addObject:client];
        }
      }

      else
      {
        client = 0;
      }

      break;
  }

LABEL_47:
  if (__osLog)
  {
    v28 = __osLog;
  }

  else
  {
    v28 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v28;
    v30 = [array componentsJoinedByString:{@", "}];
    *buf = 67109378;
    *&buf[4] = cancelledMessage;
    *&buf[8] = 2112;
    *&buf[10] = v30;
    _os_log_impl(&dword_296CA4000, v29, OS_LOG_TYPE_DEFAULT, "sending status message %u to %@\n", buf, 0x12u);
  }

  if (__osLogTrace)
  {
    v31 = __osLogTrace;
  }

  else
  {
    v31 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = client;
    _os_log_impl(&dword_296CA4000, v31, OS_LOG_TYPE_DEBUG, "statusMessage:withData:timestamp: -> void (_ %@)\n", buf, 0xCu);
  }
}

- (void)enrollResult:(id)result withTimestamp:(unint64_t)timestamp
{
  v27 = *MEMORY[0x29EDCA608];
  resultCopy = result;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = resultCopy;
    v23 = 2112;
    v24 = resultCopy;
    v25 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "enrollResult:withTimestamp: %p(%@) %llu\n", buf, 0x20u);
  }

  if ([resultCopy length] <= 0x19)
  {
    [BiometricKitXPCServerPearl enrollResult:withTimestamp:];
    goto LABEL_35;
  }

  v9 = resultCopy;
  bytes = [resultCopy bytes];
  if (*(bytes + 24))
  {
    biometricKitIdentity = [(BiometricKitXPCServer *)self getIdentityObject:bytes];
    if (!biometricKitIdentity)
    {
      [BiometricKitXPCServerPearl enrollResult:withTimestamp:];
LABEL_35:
      client = v21;
      biometricKitIdentity = *buf;
      goto LABEL_28;
    }
  }

  else
  {
    biometricKitIdentity = [MEMORY[0x29EDBFD58] biometricKitIdentity];
    v12 = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:bytes + 1];
    [biometricKitIdentity setUuid:v12];

    [biometricKitIdentity setType:4];
    [biometricKitIdentity setUserID:*bytes];
    [biometricKitIdentity setAttribute:0];
    [biometricKitIdentity setEntity:0];
    date = [MEMORY[0x29EDB8DB0] date];
    [biometricKitIdentity setCreationTime:date];

    [(BiometricKitXPCServer *)self addIdentityObject:biometricKitIdentity];
  }

  [biometricKitIdentity setFlags:bytes[5]];
  if (*(bytes + 24))
  {
    [(BiometricKitXPCServerPearl *)self updatePropertiesOfIdentities];
  }

  if (*(bytes + 25))
  {
    v14 = &unk_2A1E039A8;
  }

  else
  {
    v14 = 0;
  }

  [(BiometricKitXPCServer *)self saveCatacomb];
  if (biometricKitIdentity)
  {
    [(BiometricKitXPCServer *)self setGracePeriod:0];
    if (!*(bytes + 24))
    {
      [(BiometricKitXPCServerPearl *)self donateBiomeEvent:@"com.apple.faceid.enrolled"];
    }
  }

  [(BiometricKitXPCServer *)self updateEnrollmentChangedNotification:1];
  activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(activeBioOpsQueue);
  activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  firstObject = [activeBioOpsQueue2 firstObject];
  client = [firstObject client];

  objc_sync_exit(activeBioOpsQueue);
  if (client && [client delegateRegistered] && (objc_msgSend(client, "clientAppIsBackground") & 1) == 0)
  {
    [client enrollResult:biometricKitIdentity details:v14];
    v19 = (__osLog ? __osLog : v7);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = client;
      _os_log_impl(&dword_296CA4000, v19, OS_LOG_TYPE_DEFAULT, "sending enroll result to %@\n", buf, 0xCu);
    }
  }

  [(BiometricKitXPCServer *)self switchToNextBioOperation:1];
LABEL_28:
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v7;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = client;
    _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_DEBUG, "enrollResult:withTimestamp: -> void (_ %@)\n", buf, 0xCu);
  }
}

- (void)enrollUpdate:(id)update withTimestamp:(unint64_t)timestamp
{
  v30 = *MEMORY[0x29EDCA608];
  updateCopy = update;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = updateCopy;
    *&buf[12] = 2112;
    *&buf[14] = updateCopy;
    v28 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "enrollUpdate:withTimestamp: %p(%@) %llu\n", buf, 0x20u);
  }

  if (!updateCopy)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
LABEL_33:
    client = v26;
    v18 = *buf;
    goto LABEL_22;
  }

  v9 = [updateCopy length];
  if (v9 <= 0x4F)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    goto LABEL_33;
  }

  v10 = updateCopy;
  bytes = [updateCopy bytes];
  v12 = bytes;
  if (!bytes)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    goto LABEL_33;
  }

  v13 = *(bytes + 78) * *(bytes + 76);
  if (v9 < v13 + 80)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    goto LABEL_33;
  }

  v14 = malloc_type_malloc(v13 + 50, 0x245CC36EuLL);
  v15 = v14;
  if (!v14)
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    goto LABEL_33;
  }

  *v14 = *v12;
  *(v14 + 1) = *(v12 + 2);
  v16 = *(v12 + 4);
  v17 = *(v12 + 20);
  *(v14 + 30) = *(v12 + 30);
  *(v14 + 20) = v17;
  *(v14 + 4) = v16;
  *(v14 + 23) = *(v12 + 76);
  *(v14 + 24) = *(v12 + 78);
  memcpy(v14 + 50, (v12 + 80), *(v12 + 78) * *(v12 + 76));
  v18 = [MEMORY[0x29EDB8DA0] dataWithBytes:v15 length:v13 + 50];
  if (v18)
  {
    activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    objc_sync_enter(activeBioOpsQueue);
    activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    firstObject = [activeBioOpsQueue2 firstObject];
    client = [firstObject client];

    objc_sync_exit(activeBioOpsQueue);
    if (client && [client delegateRegistered] && (objc_msgSend(client, "clientAppIsBackground") & 1) == 0)
    {
      if (__osLog)
      {
        v23 = __osLog;
      }

      else
      {
        v23 = v7;
      }

      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v15[1];
        *buf = 67109378;
        *&buf[4] = v24;
        *&buf[8] = 2112;
        *&buf[10] = client;
        _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_DEFAULT, "sending enroll update (progress = %d) to %@\n", buf, 0x12u);
      }

      [client enrollUpdate:v18];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl enrollUpdate:withTimestamp:];
    client = *buf;
  }

  free(v15);
LABEL_22:
  if (__osLogTrace)
  {
    v25 = __osLogTrace;
  }

  else
  {
    v25 = v7;
  }

  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = client;
    _os_log_impl(&dword_296CA4000, v25, OS_LOG_TYPE_DEBUG, "enrollUpdate:withTimestamp: -> void (_ %@)\n", buf, 0xCu);
  }
}

- (void)enrollFeedback:(id)feedback withTimestamp:(unint64_t)timestamp
{
  v23 = *MEMORY[0x29EDCA608];
  feedbackCopy = feedback;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = feedbackCopy;
    *&buf[12] = 2112;
    *&buf[14] = feedbackCopy;
    v21 = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "enrollFeedback:withTimestamp: %p(%@) %llu\n", buf, 0x20u);
  }

  if (!feedbackCopy)
  {
    [BiometricKitXPCServerPearl enrollFeedback:withTimestamp:];
LABEL_29:
    v11 = v19;
    client = *buf;
    goto LABEL_19;
  }

  if ([feedbackCopy length] <= 0x2B)
  {
    [BiometricKitXPCServerPearl enrollFeedback:withTimestamp:];
    goto LABEL_29;
  }

  v9 = feedbackCopy;
  bytes = [feedbackCopy bytes];
  if (!bytes)
  {
    [BiometricKitXPCServerPearl enrollFeedback:withTimestamp:];
    goto LABEL_29;
  }

  v11 = [MEMORY[0x29EDB8DA0] dataWithBytes:bytes + 2 length:42];
  if (!v11)
  {
    [BiometricKitXPCServerPearl enrollFeedback:withTimestamp:];
    goto LABEL_29;
  }

  activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(activeBioOpsQueue);
  activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  firstObject = [activeBioOpsQueue2 firstObject];
  client = [firstObject client];

  objc_sync_exit(activeBioOpsQueue);
  if (client && [client delegateRegistered] && (objc_msgSend(client, "clientAppIsBackground") & 1) == 0)
  {
    if (__osLog)
    {
      v16 = __osLog;
    }

    else
    {
      v16 = v7;
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(bytes + 3);
      *buf = 67109378;
      *&buf[4] = v17;
      *&buf[8] = 2112;
      *&buf[10] = client;
      _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_DEFAULT, "sending enroll feedback (feedback = %d) to %@\n", buf, 0x12u);
    }

    [client enrollFeedback:v11];
  }

LABEL_19:
  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v7;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = client;
    _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEBUG, "enrollFeedback:withTimestamp: -> void (_ %@)\n", buf, 0xCu);
  }
}

- (void)matchResult:(id)result withTimestamp:(unint64_t)timestamp
{
  v60 = *MEMORY[0x29EDCA608];
  resultCopy = result;
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    *&buf[4] = resultCopy;
    *&buf[12] = 2112;
    *v58 = resultCopy;
    *&v58[8] = 2048;
    timestampCopy = timestamp;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "matchResult:withTimestamp: %p(%@) %llu\n", buf, 0x20u);
  }

  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v54[0] = 0;
  if (!resultCopy)
  {
    [BiometricKitXPCServerPearl matchResult:withTimestamp:];
LABEL_94:
    v15 = v55;
    client = v54[1];
    v18 = *buf;
    goto LABEL_84;
  }

  if ([resultCopy length] <= 0x27)
  {
    [BiometricKitXPCServerPearl matchResult:withTimestamp:];
    goto LABEL_94;
  }

  v9 = resultCopy;
  bytes = [resultCopy bytes];
  if (isInternalBuild())
  {
    BKLogCode();
  }

  activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(activeBioOpsQueue);
  activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  firstObject = [activeBioOpsQueue2 firstObject];

  type = [firstObject type];
  if (type == 2)
  {
    v15 = firstObject;
    client = [v15 client];
  }

  else
  {
    [BiometricKitXPCServerPearl matchResult:withTimestamp:];
    client = v55;
    v15 = *buf;
  }

  objc_sync_exit(activeBioOpsQueue);
  if (type != 2)
  {
LABEL_83:
    v18 = 0;
    goto LABEL_84;
  }

  if ((*(bytes + 23) & 0x10) != 0)
  {
    v16 = [MEMORY[0x29EDBA070] numberWithBool:1];
    [dictionary setObject:v16 forKeyedSubscript:@"BKMatchDetailPreArm"];
  }

  v17 = (bytes + 3);
  if (*(bytes + 3) == -1)
  {
    goto LABEL_24;
  }

  v18 = [(BiometricKitXPCServer *)self getIdentityObject:bytes + 3];
  if ([v18 userID] != *v17)
  {
    [BiometricKitXPCServerPearl matchResult:withTimestamp:];
    goto LABEL_94;
  }

  if (!v18)
  {
LABEL_24:
    identities = [(BiometricKitXPCServer *)self identities];
    firstObject2 = [identities firstObject];

    if (firstObject2)
    {
      userID = [firstObject2 userID];
      if (userID != -1)
      {
        [(BiometricKitXPCServerPearl *)self getBioLockoutState:v54 forUser:userID withClient:0];
        if ((v54[0] & 0x40) != 0)
        {
          v54[0] = v54[0] & 0xFFFFFFFFFFFFFFBBLL | 4;
        }
      }
    }

    v27 = [MEMORY[0x29EDBA070] numberWithInteger:{v54[0], userID}];
    [dictionary setObject:v27 forKeyedSubscript:@"BKMatchDetailLockoutState"];

    if (LOBYTE(self->_sigTERMDispatchSource) == 1 && *(bytes + 35))
    {
      v28 = [MEMORY[0x29EDBA070] numberWithInteger:?];
      [dictionary setObject:v28 forKeyedSubscript:@"BKMatchDetailFaceDetectFeedback"];
    }

    v23 = 0;
    v18 = 0;
    goto LABEL_33;
  }

  -[BiometricKitXPCServerPearl getBioLockoutState:forUser:withClient:](self, "getBioLockoutState:forUser:withClient:", v54, [v18 userID], 0);
  v19 = [MEMORY[0x29EDBA070] numberWithInteger:v54[0]];
  [dictionary setObject:v19 forKeyedSubscript:@"BKMatchDetailLockoutState"];

  v20 = *(bytes + 23);
  if ((v20 & 0x20) != 0)
  {
    v21 = [MEMORY[0x29EDBA070] numberWithBool:1];
    [dictionary setObject:v21 forKeyedSubscript:@"BKMatchDetailUnlocked"];

    v20 = *(bytes + 23);
  }

  if ((v20 & 0x40) != 0)
  {
    v22 = [MEMORY[0x29EDBA070] numberWithBool:1];
    [dictionary setObject:v22 forKeyedSubscript:@"BKMatchDetailCredentialAdded"];

    v20 = *(bytes + 23);
  }

  if ((v20 & 0x200) == 0)
  {
    v23 = 1;
    goto LABEL_34;
  }

  firstObject2 = [MEMORY[0x29EDBA070] numberWithBool:1];
  [dictionary setObject:firstObject2 forKeyedSubscript:@"BKMatchDetailResultIgnored"];
  v23 = 1;
LABEL_33:

LABEL_34:
  v29 = [MEMORY[0x29EDBA070] numberWithInteger:*(bytes + 27)];
  [dictionary setObject:v29 forKeyedSubscript:@"BKMatchDetailPOMatchState"];

  v30 = *(bytes + 23);
  if (__osLog)
  {
    v31 = __osLog;
  }

  else
  {
    v31 = MEMORY[0x29EDCA988];
  }

  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if ((v30 & 0x100) != 0)
  {
    if (v32)
    {
      v39 = *v17;
      v40 = v31;
      uuid = [v18 uuid];
      *buf = 67109634;
      *&buf[4] = v23;
      *&buf[8] = 1024;
      *&buf[10] = v39;
      *v58 = 2112;
      *&v58[2] = uuid;
      _os_log_impl(&dword_296CA4000, v40, OS_LOG_TYPE_DEFAULT, "Passcode Challenge match result: %d [%d:%@]\n", buf, 0x18u);
    }
  }

  else
  {
    if (v32)
    {
      *buf = 0;
      _os_log_impl(&dword_296CA4000, v31, OS_LOG_TYPE_DEFAULT, "about to send match result\n", buf, 2u);
    }

    if (client && [client delegateRegistered] && (objc_msgSend(client, "clientAppIsBackground") & 1) == 0)
    {
      [client matchResult:v18 details:dictionary];
      v33 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v18;
        *&buf[12] = 2112;
        *v58 = client;
        _os_log_impl(&dword_296CA4000, v33, OS_LOG_TYPE_DEFAULT, "sending match result %@ to %@\n", buf, 0x16u);
      }
    }

    if (v23)
    {
      BYTE2(self->_performCommandBufferData) = 0;
    }

    if ((BYTE3(self->_performCommandBufferData) & 1) == 0)
    {
      if (__osLog)
      {
        v34 = __osLog;
      }

      else
      {
        v34 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v34;
        forUnlock = [v15 forUnlock];
        v37 = *(bytes + 31);
        v38 = *(bytes + 39);
        *buf = 67109632;
        *&buf[4] = forUnlock;
        *&buf[8] = 1024;
        *&buf[10] = v37;
        *v58 = 1024;
        *&v58[2] = v38;
        _os_log_impl(&dword_296CA4000, v35, OS_LOG_TYPE_DEFAULT, "Glasses banner check: unlock:%u periocular:%u glassesDetected:%u\n", buf, 0x14u);
      }

      if (!v18)
      {
        if ([v15 forUnlock] && *(bytes + 31) && *(bytes + 39))
        {
          if ([v15 userID] == -1)
          {
            [(BiometricKitXPCServer *)self identities];
          }

          else
          {
            -[BiometricKitXPCServer identitiesOfUser:](self, "identitiesOfUser:", [v15 userID]);
          }

          v52 = 0u;
          v53 = 0u;
          v50 = 0u;
          v42 = v51 = 0u;
          v43 = [v42 countByEnumeratingWithState:&v50 objects:v56 count:16];
          if (v43)
          {
            v44 = *v51;
            while (2)
            {
              for (i = 0; i != v43; ++i)
              {
                if (*v51 != v44)
                {
                  objc_enumerationMutation(v42);
                }

                if (([*(*(&v50 + 1) + 8 * i) flags] & 0x380000) != 0)
                {
                  v46 = 1;
                  goto LABEL_75;
                }
              }

              v43 = [v42 countByEnumeratingWithState:&v50 objects:v56 count:16];
              if (v43)
              {
                continue;
              }

              break;
            }
          }

          v46 = 0;
LABEL_75:

          if (__osLog)
          {
            v47 = __osLog;
          }

          else
          {
            v47 = MEMORY[0x29EDCA988];
          }

          if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v46;
            _os_log_impl(&dword_296CA4000, v47, OS_LOG_TYPE_DEFAULT, "Glasses banner check: hasGlassesTemplate:%u\n", buf, 8u);
          }

          if ((v46 & 1) == 0)
          {
            BYTE2(self->_performCommandBufferData) = 1;
          }
        }

        goto LABEL_83;
      }
    }
  }

LABEL_84:
  if (__osLogTrace)
  {
    v48 = __osLogTrace;
  }

  else
  {
    v48 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v48, OS_LOG_TYPE_DEBUG, "matchResult:withTimestamp: -> void\n", buf, 2u);
  }
}

- (void)matchEventMessage:(id *)message
{
  v30 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (message)
    {
      var1 = message->var1;
      var0 = message->var0;
    }

    else
    {
      var1 = 0;
      var0 = 0;
    }

    *buf = 134218496;
    messageCopy = message;
    v26 = 1024;
    v27 = var1;
    v28 = 2048;
    v29 = var0;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "matchEventMessage: %p (r=%u, ts=%llu)\n", buf, 0x1Cu);
  }

  if (message)
  {
    allClients = [(BiometricKitXPCServer *)self allClients];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [allClients countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = v9;
    v11 = *v20;
    while (1)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(allClients);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        clientInfo = [v13 clientInfo];
        v15 = [clientInfo objectForKeyedSubscript:@"BKClientType"];
        if ([v15 integerValue] == 2)
        {
          delegateRegistered = [v13 delegateRegistered];

          if (!delegateRegistered)
          {
            continue;
          }

          clientInfo = [(BiometricKitXPCServer *)self createMatchEventDictionary:message];
          [v13 statusMessage:500 details:clientInfo];
        }

        else
        {
        }
      }

      v10 = [allClients countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v10)
      {
LABEL_22:

        v4 = MEMORY[0x29EDCA988];
        goto LABEL_23;
      }
    }
  }

  [BiometricKitXPCServerPearl matchEventMessage:];
LABEL_23:
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v4;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_DEBUG, "matchEventMessage: -> void\n", buf, 2u);
  }
}

- (id)detailsForFaceDetectInfo:(id *)info
{
  v40 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    infoCopy = info;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "faceInfo:%p\n", buf, 0xCu);
  }

  if (info)
  {
    LODWORD(v5) = *(&info->var5 + 1);
    v7 = *(&info->var6 + 1);
    v8 = *(&info->var7 + 1);
    LOWORD(v6) = *(&info->var2 + 1);
    v9 = v6;
    v10 = *(&info->var4 + 1);
    v11 = *(&info->var3 + 1);
    v12 = *(&info->var8 + 1);
    v13 = *(&info->var9 + 1);
    v14 = *(&info->var10 + 1);
    v15 = *(&info->var11 + 2);
    LOBYTE(info) = BYTE1(info->var11);
  }

  else
  {
    v12 = 0;
    v10 = 0;
    v11 = 0;
    v9 = 0.0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v8 = 0;
    v7 = 0;
    v5 = 0.0;
  }

  v36[0] = @"BKStatusDetailFaceDetectPitch";
  v35 = [MEMORY[0x29EDBA070] numberWithFloat:v5];
  v37[0] = v35;
  v36[1] = @"BKStatusDetailFaceDetectYaw";
  LODWORD(v16) = v7;
  v34 = [MEMORY[0x29EDBA070] numberWithFloat:v16];
  v37[1] = v34;
  v36[2] = @"BKStatusDetailFaceDetectRoll";
  LODWORD(v17) = v8;
  v18 = [MEMORY[0x29EDBA070] numberWithFloat:v17];
  v37[2] = v18;
  v36[3] = @"BKStatusDetailFaceDistance";
  *&v19 = v9;
  v20 = [MEMORY[0x29EDBA070] numberWithFloat:v19];
  v37[3] = v20;
  v36[4] = @"BKStatusDetailEyeReliefStatus";
  v21 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v11];
  v37[4] = v21;
  v36[5] = @"BKStatusDetailFaceDetectOrientation";
  v22 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v10];
  v37[5] = v22;
  v36[6] = @"BKStatusDetailFrameNumber";
  v23 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v12];
  v37[6] = v23;
  v36[7] = @"BKStatusDetailAttentionScore";
  LODWORD(v24) = v13;
  v25 = [MEMORY[0x29EDBA070] numberWithFloat:v24];
  v37[7] = v25;
  v36[8] = @"BKStatusDetailFaceDetectionScore";
  LODWORD(v26) = v14;
  v27 = [MEMORY[0x29EDBA070] numberWithFloat:v26];
  v37[8] = v27;
  v36[9] = @"BKStatusDetailFaceOcclusionState";
  v28 = [MEMORY[0x29EDBA070] numberWithBool:info & 1];
  v37[9] = v28;
  v36[10] = @"BKStatusDetailFaceOcclusionScore";
  LODWORD(v29) = v15;
  v30 = [MEMORY[0x29EDBA070] numberWithFloat:v29];
  v37[10] = v30;
  v31 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v37 forKeys:v36 count:11];

  if (__osLog)
  {
    v32 = __osLog;
  }

  else
  {
    v32 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    infoCopy = v31;
    _os_log_impl(&dword_296CA4000, v32, OS_LOG_TYPE_DEBUG, "details:%@\n", buf, 0xCu);
  }

  return v31;
}

- (void)faceDetectMessage:(unsigned int)message info:(id *)info fromSecureFD:(BOOL)d
{
  dCopy = d;
  v60 = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  array2 = [MEMORY[0x29EDB8DE8] array];
  array3 = [MEMORY[0x29EDB8DE8] array];
  obj = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(obj);
  activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(activeBioOpsQueue);
  activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  v9 = [activeBioOpsQueue2 count];
  v10 = v9 != 0;

  if (v9)
  {
    activeBioOpsQueue3 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    [array addObjectsFromArray:activeBioOpsQueue3];
  }

  bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
  [array addObjectsFromArray:bioOpsQueue];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v43 = array;
  v13 = [v43 countByEnumeratingWithState:&v50 objects:v59 count:16];
  if (v13)
  {
    v14 = *v51;
    v15 = !dCopy;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(v43);
        }

        v17 = *(*(&v50 + 1) + 8 * i);
        if ([v17 type] == 3)
        {
          v18 = 1;
        }

        else
        {
          v18 = v15;
        }

        if ([v17 type] == 3)
        {
          v19 = v17;
          v20 = v19;
          if (info->var0 && ([v19 continuous] & 1) == 0)
          {
            v21 = [v20 checked] ^ 1;
            if (message == 63)
            {
              v21 = 1;
            }

            v18 &= v21;
          }

          motionDetect = [v20 motionDetect];

          v18 &= motionDetect ^ 1;
        }

        if (v10 || (v18 & 1) == 0)
        {
          if ((v18 & 1) == 0)
          {
            continue;
          }
        }

        else
        {
          if ([v17 type] != 3)
          {
            goto LABEL_24;
          }

          client = [v17 client];
          delegateRegistered = [client delegateRegistered];

          if (!delegateRegistered)
          {
            goto LABEL_24;
          }
        }

        client2 = [v17 client];
        v26 = [(BiometricKitXPCServerPearl *)self detailsForFaceDetectInfo:info];
        [client2 statusMessage:message details:v26];

        client3 = [v17 client];
        [array2 addObject:client3];

LABEL_24:
        if (v18 && [v17 type] == 3)
        {
          v28 = v17;
          [v28 setChecked:1];
          continuous = [v28 continuous];
          if (message == 63)
          {
            v30 = continuous;
          }

          else
          {
            v30 = 1;
          }

          if ((v30 & 1) == 0)
          {
            [v28 setFinished:1];
          }

          if (([v28 timeouted] & 1) != 0 || objc_msgSend(v28, "finished"))
          {
            [array3 insertObject:v28 atIndex:0];
          }
        }

        v10 = 0;
      }

      v13 = [v43 countByEnumeratingWithState:&v50 objects:v59 count:16];
    }

    while (v13);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v31 = array3;
  v32 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
  if (v32)
  {
    v33 = *v47;
    do
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v31);
        }

        client4 = [*(*(&v46 + 1) + 8 * j) client];
        [(BiometricKitXPCServerPearl *)self cancelWithClient:client4];
      }

      v32 = [v31 countByEnumeratingWithState:&v46 objects:v58 count:16];
    }

    while (v32);
  }

  objc_sync_exit(activeBioOpsQueue);
  objc_sync_exit(obj);

  if (__osLog)
  {
    v36 = __osLog;
  }

  else
  {
    v36 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = v36;
    v38 = [array2 componentsJoinedByString:{@", "}];
    *buf = 67109378;
    messageCopy = message;
    v56 = 2112;
    v57 = v38;
    _os_log_impl(&dword_296CA4000, v37, OS_LOG_TYPE_DEFAULT, "sending status message %u to %@\n", buf, 0x12u);
  }
}

- (void)motionDetectMessage:(unsigned int)message info:(id *)info state:(int)state
{
  v5 = *&state;
  v57[1] = *MEMORY[0x29EDCA608];
  array = [MEMORY[0x29EDB8DE8] array];
  array2 = [MEMORY[0x29EDB8DE8] array];
  array3 = [MEMORY[0x29EDB8DE8] array];
  if (info)
  {
    v40 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:16];
    if (!v40)
    {
      [BiometricKitXPCServerPearl motionDetectMessage:info:state:];
      goto LABEL_40;
    }

    for (i = 0; i != 16; ++i)
    {
      *&v9 = info->var0[i];
      v11 = [MEMORY[0x29EDBA070] numberWithFloat:v9];
      [v40 addObject:v11];
    }

    v56 = @"BKStatusDetailMotionDetectMatrix";
    v57[0] = v40;
    v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    if (!v12)
    {
      [BiometricKitXPCServerPearl motionDetectMessage:info:state:];
LABEL_40:
      v40 = *buf;
      goto LABEL_32;
    }
  }

  else
  {
    v54 = @"BKStatusDetailMotionDetectState";
    v13 = [MEMORY[0x29EDBA070] numberWithUnsignedInt:v5];
    v55 = v13;
    v12 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];

    if (!v12)
    {
      [BiometricKitXPCServerPearl motionDetectMessage:info:state:];
      goto LABEL_40;
    }

    v40 = 0;
  }

  obj = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(obj);
  activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(activeBioOpsQueue);
  activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  v15 = [activeBioOpsQueue2 count] == 0;

  if (!v15)
  {
    activeBioOpsQueue3 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    [array addObjectsFromArray:activeBioOpsQueue3];
  }

  bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
  [array addObjectsFromArray:bioOpsQueue];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v18 = array;
  v19 = [v18 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v19)
  {
    v20 = *v48;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v47 + 1) + 8 * j);
        if ([v22 type] == 3)
        {
          v23 = v22;
          if ([v23 motionDetect])
          {
            [v23 setChecked:1];
            [v23 setFinished:1];
            client = [v23 client];
            delegateRegistered = [client delegateRegistered];

            if (delegateRegistered)
            {
              client2 = [v23 client];
              [client2 statusMessage:message details:v12];

              client3 = [v23 client];
              [array2 addObject:client3];
            }

            [array3 insertObject:v23 atIndex:0];
          }
        }
      }

      v19 = [v18 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v19);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v28 = array3;
  v29 = [v28 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v29)
  {
    v30 = *v44;
    do
    {
      for (k = 0; k != v29; ++k)
      {
        if (*v44 != v30)
        {
          objc_enumerationMutation(v28);
        }

        client4 = [*(*(&v43 + 1) + 8 * k) client];
        [(BiometricKitXPCServerPearl *)self cancelWithClient:client4];
      }

      v29 = [v28 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v29);
  }

  objc_sync_exit(v37);
  objc_sync_exit(obj);

LABEL_32:
  if (__osLog)
  {
    v33 = __osLog;
  }

  else
  {
    v33 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v33;
    v35 = [array2 componentsJoinedByString:{@", "}];
    *buf = 138412290;
    *&buf[4] = v35;
    _os_log_impl(&dword_296CA4000, v34, OS_LOG_TYPE_DEFAULT, "sending motion detect message to %@\n", buf, 0xCu);
  }
}

- (int)performCommand:(unsigned __int16)command version:(unsigned __int16)version inValue:(unsigned __int16)value inData:(const void *)data inSize:(unint64_t)size outData:(char *)outData outSize:(unint64_t *)outSize
{
  versionCopy = version;
  valueCopy = value;
  commandCopy = command;
  v44 = *MEMORY[0x29EDCA608];
  if (__osLog)
  {
    v13 = __osLog;
  }

  else
  {
    v13 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67110656;
    *&buf[4] = commandCopy;
    v32 = 1024;
    v33 = versionCopy;
    v34 = 1024;
    v35 = valueCopy;
    v36 = 2048;
    dataCopy = data;
    v38 = 2048;
    sizeCopy = size;
    v40 = 2048;
    outDataCopy = outData;
    v42 = 2048;
    outSizeCopy = outSize;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "performCommand:version:inValue:inData:inSize:outData:outSize: %u %u %u %p %lu %p %p\n", buf, 0x3Cu);
  }

  v25 = os_transaction_create();
  outputStructCnt = 0;
  v14 = size + 8;
  if (size >= 0xFFFFFFFFFFFFFFF8)
  {
    [BiometricKitXPCServerPearl performCommand:&v30 version:buf inValue:? inData:? inSize:? outData:? outSize:?];
    v21 = v30;
    v18 = *buf;
    goto LABEL_25;
  }

  v15 = *&self->_coachingHintsEnabled;
  objc_sync_enter(v15);
  if (v14 > [*&self->_coachingHintsEnabled length] || (self->_performCommandBufferData & 1) != 0)
  {
    v16 = 0;
    mutableBytes = 0;
  }

  else
  {
    v16 = 1;
    LOBYTE(self->_performCommandBufferData) = 1;
    mutableBytes = [*&self->_coachingHintsEnabled mutableBytes];
  }

  objc_sync_exit(v15);

  if (mutableBytes)
  {
    v18 = 0;
LABEL_14:
    *mutableBytes = 21072;
    mutableBytes[1] = commandCopy;
    mutableBytes[2] = versionCopy;
    mutableBytes[3] = valueCopy;
    if (data && size)
    {
      memcpy(mutableBytes + 4, data, size);
    }

    if (outSize)
    {
      v20 = *outSize;
    }

    else
    {
      v20 = 0;
    }

    outputStructCnt = v20;
    v21 = IOConnectCallStructMethod(HIDWORD(self->_driverNotifyQueue), 0, mutableBytes, v14, outData, &outputStructCnt);
    if (outSize)
    {
      *outSize = outputStructCnt;
      if ((v16 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else if (!v16)
    {
      goto LABEL_25;
    }

LABEL_24:
    v22 = *&self->_coachingHintsEnabled;
    objc_sync_enter(v22);
    LOBYTE(self->_performCommandBufferData) = 0;
    objc_sync_exit(v22);

    goto LABEL_25;
  }

  v18 = [MEMORY[0x29EDB8DF8] dataWithLength:size + 8];
  v19 = v18;
  mutableBytes = [v18 mutableBytes];
  if (mutableBytes)
  {
    goto LABEL_14;
  }

  v21 = 12;
  if (([BiometricKitXPCServerPearl performCommand:v16 version:? inValue:? inData:? inSize:? outData:? outSize:?]& 1) != 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  if (__osLog)
  {
    v23 = __osLog;
  }

  else
  {
    v23 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = v21;
    _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_DEBUG, "performCommand:version:inValue:inData:inSize:outData:outSize: -> %{errno}d\n", buf, 8u);
  }

  return v21;
}

- (int)performCommand:(unsigned __int16)command inValue:(unsigned __int16)value inData:(const void *)data inSize:(unint64_t)size outData:(char *)outData outSize:(unint64_t *)outSize
{
  valueCopy = value;
  commandCopy = command;
  if (__osLog)
  {
    v15 = __osLog;
  }

  else
  {
    v15 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEBUG, "performCommand:inValue:inData:inSize:outData:outSize: --> performCommand:version:inValue:inData:inSize:outData:outSize:\n", buf, 2u);
  }

  return [(BiometricKitXPCServerPearl *)self performCommand:commandCopy version:1 inValue:valueCopy inData:data inSize:size outData:outData outSize:outSize];
}

- (int)getCommProtocolVersion
{
  v14 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "getCommProtocolVersion\n", &v9, 2u);
  }

  v9 = 4;
  v10 = 0;
  v11 = 1;
  if ([(BiometricKitXPCServerPearl *)self performCommand:1 inValue:0 inData:&v11 inSize:4 outData:&v10 outSize:&v9])
  {
    [BiometricKitXPCServerPearl getCommProtocolVersion];
  }

  else
  {
    if (v9 == 4)
    {
      LOWORD(self->_connect) = v10 != 0;
      if (__osLogTrace)
      {
        v5 = __osLogTrace;
      }

      else
      {
        v5 = v3;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        v13 = 0;
        _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "getCommProtocolVersion -> %{errno}d\n", buf, 8u);
      }

      return 0;
    }

    [BiometricKitXPCServerPearl getCommProtocolVersion];
  }

  v6 = *buf;
  LOWORD(self->_connect) = 1;
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = v3;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v13 = v6;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_ERROR, "getCommProtocolVersion -> %{errno}d\n", buf, 8u);
  }

  return v6;
}

- (int)getSPRLInfo:(id *)info
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = info;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "getSPRLInfo: %p\n", buf, 0xCu);
  }

  v11 = 0;
  *buf = 4;
  if (info)
  {
    if ([(BiometricKitXPCServerPearl *)self performCommand:37 inValue:0 inData:0 inSize:0 outData:&v11 outSize:buf])
    {
      [BiometricKitXPCServerPearl getSPRLInfo:];
    }

    else
    {
      if (*buf == 4)
      {
        *info = v11;
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v12 = 67109120;
          v13 = 0;
          _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "getSPRLInfo: -> %{errno}d\n", v12, 8u);
        }

        return 0;
      }

      [BiometricKitXPCServerPearl getSPRLInfo:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl getSPRLInfo:];
  }

  v8 = *v12;
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v12 = 67109120;
    v13 = v8;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "getSPRLInfo: -> %{errno}d\n", v12, 8u);
  }

  return v8;
}

- (int)restoreAndSyncTemplates
{
  selfCopy = self;
  v55 = *MEMORY[0x29EDCA608];
  catacombLock = [(BiometricKitXPCServer *)self catacombLock];
  [catacombLock lock];

  v47.receiver = selfCopy;
  v47.super_class = BiometricKitXPCServerPearl;
  restoreAndSyncTemplates = [(BiometricKitXPCServer *)&v47 restoreAndSyncTemplates];
  if (restoreAndSyncTemplates)
  {
    [BiometricKitXPCServerPearl restoreAndSyncTemplates];
    goto LABEL_29;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  catacombStateCache = [(BiometricKitXPCServer *)selfCopy catacombStateCache];
  cachedComponents = [catacombStateCache cachedComponents];

  obj = cachedComponents;
  v7 = [cachedComponents countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (!v7)
  {
    goto LABEL_28;
  }

  v8 = v7;
  v9 = *v44;
  v10 = *MEMORY[0x29EDB9E80];
  v11 = *MEMORY[0x29EDB9E78];
  v36 = *v44;
  v37 = *MEMORY[0x29EDB9E78];
  v35 = *MEMORY[0x29EDB9E80];
  v40 = selfCopy;
  do
  {
    v12 = 0;
    v38 = v8;
    do
    {
      if (*v44 != v9)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(*(&v43 + 1) + 8 * v12);
      catacomb = [(BiometricKitXPCServer *)selfCopy catacomb];
      catacombDir = [catacomb catacombDir];
      v16 = [(BiometricKitXPCServer *)selfCopy catacombFileNameForComponent:v13];
      v17 = [catacombDir stringByAppendingPathComponent:v16];

      defaultManager = [MEMORY[0x29EDB9FB8] defaultManager];
      v42 = 0;
      v19 = [defaultManager attributesOfItemAtPath:v17 error:&v42];
      v20 = v42;

      if (v19)
      {
        v21 = [v19 objectForKeyedSubscript:v10];
        v22 = [v21 isEqual:v11];

        if (v22)
        {
          v23 = v19;
          selfCopy = v40;
          goto LABEL_26;
        }

        v48 = v10;
        v49 = v11;
        v23 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];

        defaultManager2 = [MEMORY[0x29EDB9FB8] defaultManager];
        v41 = v20;
        v26 = [defaultManager2 setAttributes:v23 ofItemAtPath:v17 error:&v41];
        v27 = v41;

        if (__osLog)
        {
          v28 = __osLog;
        }

        else
        {
          v28 = MEMORY[0x29EDCA988];
        }

        if (v26)
        {
          selfCopy = v40;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v51 = v17;
            v29 = v28;
            v30 = OS_LOG_TYPE_DEFAULT;
            v31 = "Successfully updated attributes of %@\n";
            v32 = 12;
            goto LABEL_24;
          }
        }

        else
        {
          selfCopy = v40;
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v51 = v17;
            v52 = 2112;
            v53 = v27;
            v29 = v28;
            v30 = OS_LOG_TYPE_ERROR;
            v31 = "setAttributes:ofItemAtPath:%@ failed, err = %@\n";
            v32 = 22;
LABEL_24:
            _os_log_impl(&dword_296CA4000, v29, v30, v31, buf, v32);
          }
        }

        v20 = v27;
        v10 = v35;
        v9 = v36;
        v11 = v37;
        v8 = v38;
        goto LABEL_26;
      }

      if (__osLog)
      {
        v24 = __osLog;
      }

      else
      {
        v24 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v51 = v17;
        v52 = 2112;
        v53 = v20;
        _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_ERROR, "attributesOfItemAtPath:%@ failed, err = %@\n", buf, 0x16u);
      }

      v23 = 0;
LABEL_26:

      ++v12;
    }

    while (v8 != v12);
    v8 = [obj countByEnumeratingWithState:&v43 objects:v54 count:16];
  }

  while (v8);
LABEL_28:

  restoreAndSyncTemplates = 0;
LABEL_29:
  catacombLock2 = [(BiometricKitXPCServer *)selfCopy catacombLock];
  [catacombLock2 unlock];

  return restoreAndSyncTemplates;
}

- (int)loadCatacombForComponent:(id)component
{
  componentCopy = component;
  if (!componentCopy)
  {
    [BiometricKitXPCServerPearl loadCatacombForComponent:];
LABEL_9:
    v6 = v11;
    goto LABEL_6;
  }

  v10.receiver = self;
  v10.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v10 loadCatacombForComponent:componentCopy])
  {
    [BiometricKitXPCServerPearl loadCatacombForComponent:];
    goto LABEL_9;
  }

  if ([componentCopy isUserComponent])
  {
    v5 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x29EDCA5F8];
    block[1] = 3221225472;
    block[2] = __55__BiometricKitXPCServerPearl_loadCatacombForComponent___block_invoke;
    block[3] = &unk_29EE546F8;
    block[4] = self;
    v9 = componentCopy;
    dispatch_async(v5, block);
  }

  v6 = 0;
LABEL_6:

  return v6;
}

void __55__BiometricKitXPCServerPearl_loadCatacombForComponent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) userID];
  v7 = 0;
  v8 = 0;
  v4 = [v2 performGetProtectedConfigCommand:v3 outSetCfg:&v8 outEffectiveCfg:&v7];
  v5 = v8;
  v6 = v7;
  if (v4)
  {
    __55__BiometricKitXPCServerPearl_loadCatacombForComponent___block_invoke_cold_1();
  }

  else if (v5 && [v5 periocularMatchEnabled] == 1)
  {
    [*(a1 + 32) donateBiomeEvent:@"com.apple.faceid.matching-with-mask.enabled"];
  }
}

- (int)saveTemplateListAfterTemplateUpdate
{
  v18 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "saveTemplateListAfterTemplateUpdate\n", buf, 2u);
  }

  activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(activeBioOpsQueue);
  activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  firstObject = [activeBioOpsQueue2 firstObject];

  objc_sync_exit(activeBioOpsQueue);
  if (firstObject && ([firstObject type] == 2 || objc_msgSend(firstObject, "type") == 1))
  {
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = v3;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      type = [firstObject type];
      *buf = 67109120;
      v17 = type;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEFAULT, "saveTemplateListAfterTemplateUpdate : save skipped (activeOperation=%u)\n", buf, 8u);
    }

    v11 = 257;
    goto LABEL_15;
  }

  v15.receiver = self;
  v15.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v15 saveTemplateListAfterTemplateUpdate])
  {
    [BiometricKitXPCServerPearl saveTemplateListAfterTemplateUpdate];
    v11 = *buf;
LABEL_15:
    if (__osLogTrace)
    {
      v12 = __osLogTrace;
    }

    else
    {
      v12 = v3;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v17 = v11;
      _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "saveTemplateListAfterTemplateUpdate -> %d\n", buf, 8u);
    }

    goto LABEL_27;
  }

  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v3;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v17 = 0;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "saveTemplateListAfterTemplateUpdate -> %d\n", buf, 8u);
  }

  v11 = 0;
LABEL_27:

  return v11;
}

- (int)updatePropertiesOfIdentities
{
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "updatePropertiesOfIdentities\n", &v16, 2u);
  }

  v17.receiver = self;
  v17.super_class = BiometricKitXPCServerPearl;
  if (![(BiometricKitXPCServer *)&v17 updatePropertiesOfIdentities])
  {
    identitiesCount = [(BiometricKitXPCServer *)self identitiesCount];
    if (!identitiesCount)
    {
      goto LABEL_15;
    }

    v6 = [MEMORY[0x29EDB8DF8] dataWithLength:24 * identitiesCount];
    v16 = [v6 length];
    if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 68, 0, 0, 0, [v6 mutableBytes], &v16))
    {
      [BiometricKitXPCServerPearl updatePropertiesOfIdentities];
    }

    else
    {
      v7 = v16;
      v8 = v16 / 0x18;
      if (!(v16 % 0x18))
      {
        mutableBytes = [v6 mutableBytes];
        if (v7 >= 0x18)
        {
          v10 = mutableBytes;
          while (1)
          {
            v11 = [(BiometricKitXPCServer *)self getIdentityObject:v10];
            if (!v11)
            {
              break;
            }

            v12 = v11;
            [v11 setFlags:*(v10 + 20)];

            v10 += 24;
            if (!--v8)
            {
              goto LABEL_14;
            }
          }

          [BiometricKitXPCServerPearl updatePropertiesOfIdentities];
          goto LABEL_23;
        }

LABEL_14:

LABEL_15:
        v13 = 0;
        goto LABEL_16;
      }

      [BiometricKitXPCServerPearl updatePropertiesOfIdentities];
    }

LABEL_23:
    v13 = v18;

    goto LABEL_16;
  }

  [BiometricKitXPCServerPearl updatePropertiesOfIdentities];
  v13 = v16;
LABEL_16:
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v3;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_DEBUG, "updatePropertiesOfIdentities: -> void\n", &v16, 2u);
  }

  return v13;
}

- (int)performGetIdentitiesListCommand:(unsigned int)command outBuffer:(id)buffer
{
  v17 = *MEMORY[0x29EDCA608];
  bufferCopy = buffer;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = bufferCopy;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetIdentitiesListCommand: %p\n", buf, 0xCu);
  }

  commandCopy = 0;
  *buf = 0;
  if (bufferCopy)
  {
    commandCopy = command;
    *buf = [bufferCopy length];
    if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 20, 0, &commandCopy, 4, [bufferCopy bytes], buf))
    {
      [BiometricKitXPCServerPearl performGetIdentitiesListCommand:outBuffer:];
    }

    else
    {
      if (__ROR8__(0xCCCCCCCCCCCCCCCDLL * *buf, 2) < 0xCCCCCCCCCCCCCCDuLL)
      {
        [bufferCopy setLength:?];
        if (__osLogTrace)
        {
          v9 = __osLogTrace;
        }

        else
        {
          v9 = v7;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 67109120;
          v15 = 0;
          _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performGetIdentitiesListCommand: -> %d\n", v14, 8u);
        }

        v10 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performGetIdentitiesListCommand:outBuffer:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performGetIdentitiesListCommand:outBuffer:];
  }

  v10 = *v14;
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v7;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v14 = 67109120;
    v15 = v10;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "performGetIdentitiesListCommand: -> %d\n", v14, 8u);
  }

LABEL_15:

  return v10;
}

- (int)performGetCatacombStateCommand:(id)command
{
  v14 = *MEMORY[0x29EDCA608];
  commandCopy = command;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = commandCopy;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetCatacombStateCommand: %p\n", buf, 0xCu);
  }

  *buf = 0;
  if (commandCopy)
  {
    *buf = [commandCopy length];
    if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 14, 0, 0, 0, [commandCopy bytes], buf))
    {
      [BiometricKitXPCServerPearl performGetCatacombStateCommand:];
    }

    else
    {
      if ((buf[0] & 7) == 0)
      {
        [commandCopy setLength:?];
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 67109120;
          v12 = 0;
          _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performGetCatacombStateCommand: -> %d\n", &v11, 8u);
        }

        v8 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performGetCatacombStateCommand:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performGetCatacombStateCommand:];
  }

  v8 = v11;
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 67109120;
    v12 = v8;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "performGetCatacombStateCommand: -> %d\n", &v11, 8u);
  }

LABEL_15:

  return v8;
}

- (int)performGetTemplatesValidityCommand:(unsigned int)command isValid:(BOOL *)valid
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = command;
    v17 = 2048;
    validCopy = valid;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetTemplatesValidityCommand: %d %p\n", buf, 0x12u);
  }

  v12 = 0;
  *buf = 1;
  commandCopy = command;
  v9 = [(BiometricKitXPCServerPearl *)self performCommand:66 inValue:0 inData:&commandCopy inSize:4 outData:&v12 outSize:buf];
  if (v9)
  {
    [BiometricKitXPCServerPearl performGetTemplatesValidityCommand:isValid:];
  }

  else
  {
    if (*buf == 1)
    {
      if (valid)
      {
        *valid = v12 != 0;
      }
    }

    else
    {
      [BiometricKitXPCServerPearl performGetTemplatesValidityCommand:isValid:];
    }

    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v7;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 67109120;
      v15 = 0;
      _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performGetTemplatesValidityCommand: -> %d\n", v14, 8u);
    }
  }

  return v9;
}

- (int)performRemoveIdentityCommand:(id *)command
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = command;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performRemoveIdentityCommand: %p\n", buf, 0xCu);
  }

  memset(buf, 0, sizeof(buf));
  v14 = 0;
  if (command)
  {
    *buf = *&command->var0;
    v14 = *&command->var1[12];
    if ([(BiometricKitXPCServerPearl *)self performCommand:21 inValue:0 inData:buf inSize:20 outData:0 outSize:0])
    {
      [BiometricKitXPCServerPearl performRemoveIdentityCommand:];
    }

    else
    {
      if (![(BiometricKitXPCServerPearl *)self updatePropertiesOfIdentities])
      {
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v11 = 67109120;
          v12 = 0;
          _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performRemoveIdentityCommand: -> %d\n", &v11, 8u);
        }

        return 0;
      }

      [BiometricKitXPCServerPearl performRemoveIdentityCommand:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performRemoveIdentityCommand:];
  }

  v8 = v11;
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 67109120;
    v12 = v8;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "performRemoveIdentityCommand: -> %d\n", &v11, 8u);
  }

  return v8;
}

- (int)performGetBiometrickitdInfoCommand:(id *)command
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = command;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetBiometrickitdInfoCommand: %p\n", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[15] = 0;
  v11 = 23;
  if (command)
  {
    if ([(BiometricKitXPCServerPearl *)self performCommand:13 inValue:0 inData:0 inSize:0 outData:buf outSize:&v11])
    {
      [BiometricKitXPCServerPearl performGetBiometrickitdInfoCommand:];
    }

    else
    {
      if (v11 == 23)
      {
        *&command->var0 = *buf;
        *(&command->var2 + 7) = *&buf[15];
        if (__osLogTrace)
        {
          v7 = __osLogTrace;
        }

        else
        {
          v7 = v5;
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          *v12 = 67109120;
          v13 = 0;
          _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performGetBiometrickitdInfoCommand: -> %d\n", v12, 8u);
        }

        return 0;
      }

      [BiometricKitXPCServerPearl performGetBiometrickitdInfoCommand:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performGetBiometrickitdInfoCommand:];
  }

  v8 = *v12;
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v12 = 67109120;
    v13 = v8;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "performGetBiometrickitdInfoCommand: -> %d\n", v12, 8u);
  }

  return v8;
}

- (int)performRemoveUserDataCommand:(unsigned int)command
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    commandCopy = command;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performRemoveUserDataCommand: %d\n", buf, 8u);
  }

  commandCopy2 = command;
  v7 = [(BiometricKitXPCServerPearl *)self performCommand:22 inValue:0 inData:&commandCopy2 inSize:4 outData:0 outSize:0];
  if (v7)
  {
    [BiometricKitXPCServerPearl performRemoveUserDataCommand:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      commandCopy = 0;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performRemoveUserDataCommand: -> %d\n", buf, 8u);
    }
  }

  return v7;
}

- (int)performPrepareSaveCatacombCommand:(id)command outDataSize:(unsigned int *)size
{
  v19 = *MEMORY[0x29EDCA608];
  commandCopy = command;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = commandCopy;
    v17 = 2048;
    sizeCopy = size;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performPrepareSaveCatacombCommand:outDataSize: %@, %p\n", buf, 0x16u);
  }

  v13 = 0;
  *buf = 4;
  if (commandCopy)
  {
    HIDWORD(v13) = [commandCopy userID];
    if ([(BiometricKitXPCServerPearl *)self performCommand:15 inValue:0 inData:&v13 + 4 inSize:4 outData:&v13 outSize:buf])
    {
      [BiometricKitXPCServerPearl performPrepareSaveCatacombCommand:outDataSize:];
    }

    else
    {
      if (*buf == 4)
      {
        if (size)
        {
          *size = v13;
        }

        if (__osLogTrace)
        {
          v9 = __osLogTrace;
        }

        else
        {
          v9 = v7;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          *v14 = 67109120;
          v15 = 0;
          _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performPrepareSaveCatacombCommand:outDataSize: -> %d\n", v14, 8u);
        }

        v10 = 0;
        goto LABEL_17;
      }

      [BiometricKitXPCServerPearl performPrepareSaveCatacombCommand:outDataSize:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performPrepareSaveCatacombCommand:outDataSize:];
  }

  v10 = *v14;
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v7;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v14 = 67109120;
    v15 = v10;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "performPrepareSaveCatacombCommand:outDataSize: -> %d\n", v14, 8u);
  }

LABEL_17:

  return v10;
}

- (int)performCompleteSaveCatacombCommand:(id)command outBuffer:(id)buffer
{
  v20 = *MEMORY[0x29EDCA608];
  commandCopy = command;
  bufferCopy = buffer;
  v8 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = commandCopy;
    v18 = 2048;
    v19 = bufferCopy;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performCompleteSaveCatacombCommand:outBuffer: %@, %p\n", buf, 0x16u);
  }

  userID = 0;
  *buf = 0;
  if (commandCopy)
  {
    if (bufferCopy)
    {
      userID = [commandCopy userID];
      *buf = [bufferCopy length];
      if (!-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 16, 0, &userID, 4, [bufferCopy bytes], buf))
      {
        [bufferCopy setLength:*buf];
        if (__osLogTrace)
        {
          v10 = __osLogTrace;
        }

        else
        {
          v10 = v8;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          *v15 = 67109120;
          v16 = 0;
          _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performCompleteSaveCatacombCommand:outBuffer: -> %d\n", v15, 8u);
        }

        v11 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performCompleteSaveCatacombCommand:outBuffer:];
    }

    else
    {
      [BiometricKitXPCServerPearl performCompleteSaveCatacombCommand:outBuffer:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performCompleteSaveCatacombCommand:outBuffer:];
  }

  v11 = *v15;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v8;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v15 = 67109120;
    v16 = v11;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_ERROR, "performCompleteSaveCatacombCommand:outBuffer: -> %d\n", v15, 8u);
  }

LABEL_15:

  return v11;
}

- (int)performConfirmSaveCatacombCommand:(id)command
{
  v14 = *MEMORY[0x29EDCA608];
  commandCopy = command;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v13 = commandCopy;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performConfirmSaveCatacombCommand: %@\n", buf, 0xCu);
  }

  userID = 0;
  if (commandCopy)
  {
    userID = [commandCopy userID];
    if (![(BiometricKitXPCServerPearl *)self performCommand:17 inValue:0 inData:&userID inSize:4 outData:0 outSize:0])
    {
      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      else
      {
        v7 = v5;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v13) = 0;
        _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performConfirmSaveCatacombCommand: -> %d\n", buf, 8u);
      }

      v8 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServerPearl performConfirmSaveCatacombCommand:];
  }

  else
  {
    [BiometricKitXPCServerPearl performConfirmSaveCatacombCommand:];
  }

  v8 = *buf;
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v13) = v8;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "performConfirmSaveCatacombCommand: -> %d\n", buf, 8u);
  }

LABEL_14:

  return v8;
}

- (int)performNoCatacombCommand:(unsigned int)command
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    commandCopy = command;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performNoCatacombCommand: %d\n", buf, 8u);
  }

  commandCopy2 = command;
  v7 = [(BiometricKitXPCServerPearl *)self performCommand:19 inValue:0 inData:&commandCopy2 inSize:4 outData:0 outSize:0];
  if (v7)
  {
    [BiometricKitXPCServerPearl performNoCatacombCommand:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      commandCopy = 0;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performNoCatacombCommand: -> %d\n", buf, 8u);
    }
  }

  return v7;
}

- (int)performLoadCatacombCommand:(id)command inData:(id)data
{
  v24 = *MEMORY[0x29EDCA608];
  commandCopy = command;
  dataCopy = data;
  v8 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v18 = 138412802;
    v19 = commandCopy;
    v20 = 2048;
    v21 = dataCopy;
    v22 = 2048;
    v23 = [dataCopy length];
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performLoadCatacombCommand:inData: %@, %p[%lu]\n", &v18, 0x20u);
  }

  if (commandCopy)
  {
    v11 = -[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 18, 0, [dataCopy bytes], objc_msgSend(dataCopy, "length"), 0, 0);
    v12 = 0;
    if (!v11)
    {
      goto LABEL_8;
    }

    [BiometricKitXPCServerPearl performLoadCatacombCommand:inData:];
  }

  else
  {
    [BiometricKitXPCServerPearl performLoadCatacombCommand:inData:];
  }

  v12 = v18;
LABEL_8:
  if ((v12 - 28673) >= 3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 269;
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v8;
  }

  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = 67109120;
      LODWORD(v19) = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_19:
      _os_log_impl(&dword_296CA4000, v15, v16, "performLoadCatacombCommand:inData: -> %d\n", &v18, 8u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v18 = 67109120;
    LODWORD(v19) = 0;
    v15 = v14;
    v16 = OS_LOG_TYPE_DEBUG;
    goto LABEL_19;
  }

  return v13;
}

- (int)performRequestMaxIdentityCountCommand:(unsigned int *)command
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = command;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performRequestMaxIdentityCountCommand: %p\n", buf, 0xCu);
  }

  v11 = 0;
  *buf = 4;
  if ([(BiometricKitXPCServerPearl *)self performCommand:38 inValue:0 inData:0 inSize:0 outData:&v11 outSize:buf])
  {
    [BiometricKitXPCServerPearl performRequestMaxIdentityCountCommand:];
  }

  else
  {
    if (*buf == 4)
    {
      if (command)
      {
        *command = v11;
      }

      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      else
      {
        v7 = v5;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 67109120;
        v13 = 0;
        _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performRequestMaxIdentityCountCommand -> %d\n", v12, 8u);
      }

      return 0;
    }

    [BiometricKitXPCServerPearl performRequestMaxIdentityCountCommand:];
  }

  v8 = *v12;
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v12 = 67109120;
    v13 = v8;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "performRequestMaxIdentityCountCommand -> %d\n", v12, 8u);
  }

  return v8;
}

- (int)performGetFreeIdentityCountCommand:(unsigned int)command outCount:(unsigned int *)count
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = command;
    v17 = 2048;
    countCopy = count;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performRequestMaxIdentityCountCommand: %d, %p\n", buf, 0x12u);
  }

  v12 = 0;
  commandCopy = command;
  *buf = 4;
  v9 = [(BiometricKitXPCServerPearl *)self performCommand:12 inValue:0 inData:&commandCopy inSize:4 outData:&v12 outSize:buf];
  if (v9)
  {
    [BiometricKitXPCServerPearl performGetFreeIdentityCountCommand:outCount:];
  }

  else
  {
    if (*buf == 4)
    {
      if (count)
      {
        *count = v12;
      }
    }

    else
    {
      [BiometricKitXPCServerPearl performGetFreeIdentityCountCommand:? outCount:?];
    }

    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v7;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *v14 = 67109120;
      v15 = 0;
      _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performRequestMaxIdentityCountCommand -> %d\n", v14, 8u);
    }
  }

  return v9;
}

- (int)performGetCatacombUUIDCommand:(unsigned int)command outUUID:(id *)d
{
  v18[2] = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = command;
    LOWORD(v18[0]) = 2048;
    *(v18 + 2) = d;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetCatacombUUIDCommand: %d, %p\n", buf, 0x12u);
  }

  *buf = 0;
  v18[0] = 0;
  v13 = 16;
  commandCopy = command;
  if ([(BiometricKitXPCServerPearl *)self performCommand:24 inValue:0 inData:&commandCopy inSize:4 outData:buf outSize:&v13])
  {
    [BiometricKitXPCServerPearl performGetCatacombUUIDCommand:outUUID:];
  }

  else
  {
    if (v13 == 16)
    {
      if (d)
      {
        *d = [objc_alloc(MEMORY[0x29EDBA140]) initWithUUIDBytes:buf];
      }

      if (__osLogTrace)
      {
        v9 = __osLogTrace;
      }

      else
      {
        v9 = v7;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 67109120;
        v16 = 0;
        _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performGetCatacombUUIDCommand -> %d\n", v15, 8u);
      }

      return 0;
    }

    [BiometricKitXPCServerPearl performGetCatacombUUIDCommand:outUUID:];
  }

  v10 = *v15;
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v7;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v15 = 67109120;
    v16 = v10;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "performGetCatacombUUIDCommand -> %d\n", v15, 8u);
  }

  return v10;
}

- (int)performGetCatacombHashCommand:(unsigned int)command outHash:(id *)hash
{
  v19 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = command;
    *&buf[8] = 2048;
    *&buf[10] = hash;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetCatacombHashCommand: %d, %p\n", buf, 0x12u);
  }

  memset(buf, 0, 33);
  v14 = 33;
  commandCopy = command;
  if ([(BiometricKitXPCServerPearl *)self performCommand:25 inValue:0 inData:&commandCopy inSize:4 outData:buf outSize:&v14])
  {
    [BiometricKitXPCServerPearl performGetCatacombHashCommand:outHash:];
  }

  else
  {
    if (v14 == 33)
    {
      if (hash)
      {
        if (buf[0])
        {
          v9 = [MEMORY[0x29EDB8DA0] dataWithBytes:&buf[1] length:32];
        }

        else
        {
          v9 = 0;
        }

        *hash = v9;
      }

      if (__osLogTrace)
      {
        v10 = __osLogTrace;
      }

      else
      {
        v10 = v7;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v16 = 67109120;
        v17 = 0;
        _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performGetCatacombHashCommand -> %d\n", v16, 8u);
      }

      return 0;
    }

    [BiometricKitXPCServerPearl performGetCatacombHashCommand:outHash:];
  }

  v11 = *v16;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v7;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v16 = 67109120;
    v17 = v11;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_ERROR, "performGetCatacombHashCommand -> %d\n", v16, 8u);
  }

  return v11;
}

- (int)performDropUnlockTokenCommand
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v8[0]) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "performDropUnlockTokenCommand:\n", v8, 2u);
  }

  v5 = [(BiometricKitXPCServerPearl *)self performCommand:39 inValue:0 inData:0 inSize:0 outData:0 outSize:0];
  if (v5)
  {
    [BiometricKitXPCServerPearl performDropUnlockTokenCommand];
  }

  else
  {
    if (__osLogTrace)
    {
      v6 = __osLogTrace;
    }

    else
    {
      v6 = v3;
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8[0] = 67109120;
      v8[1] = 0;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performDropUnlockTokenCommand -> %d\n", v8, 8u);
    }
  }

  return v5;
}

- (int)performForceBioLockoutCommand:(unsigned int)command
{
  v13 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    commandCopy = command;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performForceBioLockoutCommand: %d\n", buf, 8u);
  }

  commandCopy2 = command;
  v7 = [(BiometricKitXPCServerPearl *)self performCommand:40 inValue:0 inData:&commandCopy2 inSize:4 outData:0 outSize:0];
  if (v7)
  {
    [BiometricKitXPCServerPearl performForceBioLockoutCommand:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      commandCopy = 0;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performForceBioLockoutCommand -> %d\n", buf, 8u);
    }
  }

  return v7;
}

- (int)performGetSKSLockStateCommand:(unsigned int)command outState:(unsigned int *)state
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = command;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetSKSLockStateCommand: %d\n", buf, 8u);
  }

  v13 = 0;
  commandCopy = command;
  *buf = 4;
  if ([(BiometricKitXPCServerPearl *)self performCommand:41 inValue:0 inData:&commandCopy inSize:4 outData:&v13 outSize:buf])
  {
    [BiometricKitXPCServerPearl performGetSKSLockStateCommand:outState:];
  }

  else
  {
    if (*buf == 4)
    {
      if (state)
      {
        *state = v13;
      }

      if (__osLogTrace)
      {
        v9 = __osLogTrace;
      }

      else
      {
        v9 = v7;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 67109120;
        v16 = 0;
        _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "performGetSKSLockStateCommand -> %d\n", v15, 8u);
      }

      return 0;
    }

    [BiometricKitXPCServerPearl performGetSKSLockStateCommand:outState:];
  }

  v10 = *v15;
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v7;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v15 = 67109120;
    v16 = v10;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "performGetSKSLockStateCommand -> %d\n", v15, 8u);
  }

  return v10;
}

- (int)performGetLastMatchEventCommand:(id *)command
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = command;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetLastMatchEventCommand: %p\n", buf, 0xCu);
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[21] = 0;
  *&buf[16] = 0;
  v11 = 29;
  if ([(BiometricKitXPCServerPearl *)self performCommand:65 inValue:0 inData:0 inSize:0 outData:buf outSize:&v11])
  {
    [BiometricKitXPCServerPearl performGetLastMatchEventCommand:];
  }

  else
  {
    if (v11 == 29)
    {
      if (command)
      {
        *&command->var0 = *buf;
        *(&command->var2.var0 + 1) = *&buf[13];
      }

      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      else
      {
        v7 = v5;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *v12 = 67109120;
        v13 = 0;
        _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "performGetLastMatchEventCommand -> %d\n", v12, 8u);
      }

      return 0;
    }

    [BiometricKitXPCServerPearl performGetLastMatchEventCommand:];
  }

  v8 = *v12;
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *v12 = 67109120;
    v13 = v8;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "performGetLastMatchEventCommand -> %d\n", v12, 8u);
  }

  return v8;
}

- (int)performGetDeviceHardwareStateCommand:(unsigned int *)command
{
  v16 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = command;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetDeviceHardwareStateCommand: %p\n", buf, 0xCu);
  }

  *buf = 0;
  v12 = 8;
  if (BYTE1(self->_log) == 1)
  {
    [BiometricKitXPCServerPearl performGetDeviceHardwareStateCommand:];
  }

  else if ([(BiometricKitXPCServerPearl *)self performCommand:58 inValue:0 inData:0 inSize:0 outData:buf outSize:&v12])
  {
    [BiometricKitXPCServerPearl performGetDeviceHardwareStateCommand:];
  }

  else
  {
    if (v12 == 8)
    {
      if (command)
      {
        if (*buf)
        {
          v7 = 1;
        }

        else
        {
          v7 = 2;
        }

        *command = v7;
      }

      if (__osLogTrace)
      {
        v8 = __osLogTrace;
      }

      else
      {
        v8 = v5;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *v13 = 67109120;
        v14 = 0;
        _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performGetDeviceHardwareStateCommand -> %d\n", v13, 8u);
      }

      return 0;
    }

    [BiometricKitXPCServerPearl performGetDeviceHardwareStateCommand:];
  }

  v9 = *v13;
  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v13 = 67109120;
    v14 = v9;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "performGetDeviceHardwareStateCommand -> %d\n", v13, 8u);
  }

  return v9;
}

- (int)performGetProtectedConfigCommand:(unsigned int)command outSetCfg:(id *)cfg outEffectiveCfg:(id *)effectiveCfg
{
  v27 = *MEMORY[0x29EDCA608];
  v9 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    *&buf[4] = command;
    *&buf[8] = 2048;
    *&buf[10] = cfg;
    *&buf[18] = 2048;
    *&buf[20] = effectiveCfg;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performGetProtectedConfigCommand: %d %p %p\n", buf, 0x1Cu);
  }

  v26 = 0u;
  memset(buf, 0, sizeof(buf));
  v21 = 48;
  commandCopy = command;
  if ([(BiometricKitXPCServerPearl *)self performCommand:26 inValue:0 inData:&commandCopy inSize:4 outData:buf outSize:&v21])
  {
    [BiometricKitXPCServerPearl performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:];
    goto LABEL_25;
  }

  if (v21 != 48)
  {
    [BiometricKitXPCServerPearl performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:];
    goto LABEL_14;
  }

  if (cfg)
  {
    v11 = objc_alloc_init(MEMORY[0x29EDBFD80]);
    if (!v11)
    {
      [BiometricKitXPCServerPearl performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:];
      goto LABEL_25;
    }

    v12 = v11;
    [v11 setUnlockEnabled:*buf];
    [v12 setIdentificationEnabled:*&buf[4]];
    [v12 setLoginEnabled:*&buf[8]];
    [v12 setApplePayEnabled:*&buf[12]];
    [v12 setAttentionDetectionEnabled:*&buf[16]];
    [v12 setPeriocularMatchEnabled:*&buf[20]];
    v13 = v12;
    *cfg = v12;
  }

  if (!effectiveCfg)
  {
LABEL_14:
    if (__osLogTrace)
    {
      v17 = __osLogTrace;
    }

    else
    {
      v17 = v9;
    }

    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v23 = 67109120;
      v24 = 0;
      _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_DEBUG, "performGetProtectedConfigCommand -> %d\n", v23, 8u);
    }

    return 0;
  }

  v14 = objc_alloc_init(MEMORY[0x29EDBFD80]);
  if (v14)
  {
    v15 = v14;
    [v14 setUnlockEnabled:*&buf[24]];
    [v15 setIdentificationEnabled:*&buf[28]];
    [v15 setLoginEnabled:v26];
    [v15 setApplePayEnabled:DWORD1(v26)];
    [v15 setAttentionDetectionEnabled:DWORD2(v26)];
    [v15 setPeriocularMatchEnabled:HIDWORD(v26)];
    v16 = v15;
    *effectiveCfg = v15;

    goto LABEL_14;
  }

  [BiometricKitXPCServerPearl performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:];
LABEL_25:
  v18 = *v23;
  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v9;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    *v23 = 67109120;
    v24 = v18;
    _os_log_impl(&dword_296CA4000, v20, OS_LOG_TYPE_ERROR, "performGetProtectedConfigCommand -> %d\n", v23, 8u);
  }

  return v18;
}

- (int)performGetSystemProtectedConfigCommand:(id *)command
{
  v20 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = command;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "performGetSystemProtectedConfigCommand: %p\n", buf, 0xCu);
  }

  v19 = 0;
  *buf = 0u;
  v18 = 0u;
  v14 = 36;
  if ([(BiometricKitXPCServerPearl *)self performCommand:28 inValue:0 inData:0 inSize:0 outData:buf outSize:&v14])
  {
    [BiometricKitXPCServerPearl performGetSystemProtectedConfigCommand:];
  }

  else
  {
    if (v14 != 36)
    {
      [BiometricKitXPCServerPearl performGetSystemProtectedConfigCommand:];
      goto LABEL_11;
    }

    if (!command)
    {
LABEL_11:
      if (__osLogTrace)
      {
        v10 = __osLogTrace;
      }

      else
      {
        v10 = v5;
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        *v15 = 67109120;
        v16 = 0;
        _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performGetSystemProtectedConfigCommand -> %d\n", v15, 8u);
      }

      return 0;
    }

    v7 = objc_alloc_init(MEMORY[0x29EDBFD78]);
    if (v7)
    {
      v8 = v7;
      [v7 setBiometryEnabled:*&buf[8]];
      [v8 setUnlockEnabled:*&buf[12]];
      [v8 setIdentificationEnabled:v18];
      [v8 setLoginEnabled:DWORD1(v18)];
      [v8 setUnlockTokenMaxLifetime:*buf];
      [v8 setBioMatchLifespan:HIDWORD(v18)];
      [v8 setPasscodeInputLifespan:v19];
      [v8 setPeriocularMatchEnabled:DWORD2(v18)];
      v9 = v8;
      *command = v8;

      goto LABEL_11;
    }

    [BiometricKitXPCServerPearl performGetSystemProtectedConfigCommand:];
  }

  v11 = *v15;
  if (__osLogTrace)
  {
    v13 = __osLogTrace;
  }

  else
  {
    v13 = v5;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *v15 = 67109120;
    v16 = v11;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_ERROR, "performGetSystemProtectedConfigCommand -> %d\n", v15, 8u);
  }

  return v11;
}

- (int)performSetProtectedConfigCommand:(unsigned int)command cfg:(id)cfg authData:(id *)data
{
  v22 = *MEMORY[0x29EDCA608];
  cfgCopy = cfg;
  v9 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109632;
    LODWORD(v17) = command;
    WORD2(v17) = 2048;
    *(&v17 + 6) = cfgCopy;
    HIWORD(v17) = 2048;
    dataCopy = data;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performSetProtectedConfigCommand: %d %p %p\n", buf, 0x1Cu);
  }

  v21 = 0;
  v20 = 0u;
  v19 = 0u;
  *buf = command;
  *&v17 = -1;
  *(&v17 + 1) = -1;
  dataCopy = -1;
  if (cfgCopy)
  {
    LODWORD(v17) = [cfgCopy unlockEnabled];
    DWORD1(v17) = [cfgCopy identificationEnabled];
    DWORD2(v17) = [cfgCopy loginEnabled];
    HIDWORD(v17) = [cfgCopy applePayEnabled];
    LODWORD(dataCopy) = [cfgCopy attentionDetectionEnabled];
    HIDWORD(dataCopy) = [cfgCopy periocularMatchEnabled];
  }

  if (data)
  {
    v11 = *&data->var2[8];
    v19 = *&data->var0;
    v20 = v11;
    v21 = *&data->var2[24];
  }

  v12 = [(BiometricKitXPCServerPearl *)self performCommand:27 inValue:0 inData:buf inSize:68 outData:0 outSize:0];
  if (v12)
  {
    [BiometricKitXPCServerPearl performSetProtectedConfigCommand:cfg:authData:];
  }

  else
  {
    if (cfgCopy && [cfgCopy periocularMatchEnabled] == 1)
    {
      [(BiometricKitXPCServerPearl *)self donateBiomeEvent:@"com.apple.faceid.matching-with-mask.enabled"];
    }

    if (__osLogTrace)
    {
      v13 = __osLogTrace;
    }

    else
    {
      v13 = v9;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v15[0] = 67109120;
      v15[1] = 0;
      _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "performSetProtectedConfigCommand -> %d\n", v15, 8u);
    }
  }

  return v12;
}

- (int)performSetSystemProtectedConfigCommand:(id)command authData:(id *)data
{
  v20 = *MEMORY[0x29EDCA608];
  commandCopy = command;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218240;
    *&buf[4] = commandCopy;
    *&buf[12] = 2048;
    *&buf[14] = data;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "performSetSystemProtectedConfigCommand: %p %p\n", buf, 0x16u);
  }

  v19 = 0;
  v18 = 0u;
  v17 = 0u;
  *&v9 = -1;
  *(&v9 + 1) = -1;
  *buf = v9;
  *&buf[16] = v9;
  passcodeInputLifespan = -1;
  if (commandCopy)
  {
    *&buf[8] = [commandCopy biometryEnabled];
    *&buf[12] = [commandCopy unlockEnabled];
    *&buf[16] = [commandCopy identificationEnabled];
    *&buf[20] = [commandCopy loginEnabled];
    *buf = [commandCopy unlockTokenMaxLifetime];
    *&buf[28] = [commandCopy bioMatchLifespan];
    passcodeInputLifespan = [commandCopy passcodeInputLifespan];
    *&buf[24] = [commandCopy periocularMatchEnabled];
  }

  if (data)
  {
    v10 = *&data->var2[8];
    v17 = *&data->var0;
    v18 = v10;
    v19 = *&data->var2[24];
  }

  v11 = [(BiometricKitXPCServerPearl *)self performCommand:29 inValue:0 inData:buf inSize:76 outData:0 outSize:0];
  if (v11)
  {
    [BiometricKitXPCServerPearl performSetSystemProtectedConfigCommand:authData:];
  }

  else
  {
    if (__osLogTrace)
    {
      v12 = __osLogTrace;
    }

    else
    {
      v12 = v7;
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14[0] = 67109120;
      v14[1] = 0;
      _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEBUG, "performSetSystemProtectedConfigCommand -> %d\n", v14, 8u);
    }
  }

  return v11;
}

- (int)performRequestMessageDataCommand:(unint64_t)command size:(unint64_t)size outData:(id *)data
{
  v26 = *MEMORY[0x29EDCA608];
  v9 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    *&buf[4] = command;
    v22 = 2048;
    sizeCopy = size;
    v24 = 2048;
    dataCopy = data;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "performRequestMessageDataCommand:size:outData: 0x%llx %zu %p\n", buf, 0x20u);
  }

  *buf = command;
  sizeCopy2 = size;
  v11 = [MEMORY[0x29EDB8DF8] dataWithLength:size];
  v12 = v11;
  if (v11)
  {
    if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 7, 0, buf, 8, [v11 mutableBytes], &sizeCopy2))
    {
      [BiometricKitXPCServerPearl performRequestMessageDataCommand:size:outData:];
    }

    else
    {
      if (sizeCopy2 == size)
      {
        v13 = v12;
        *data = v12;
        if (__osLogTrace)
        {
          v14 = __osLogTrace;
        }

        else
        {
          v14 = v9;
        }

        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
        {
          *v19 = 67109120;
          v20 = 0;
          _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_DEBUG, "performRequestMessageDataCommand -> %d\n", v19, 8u);
        }

        v15 = 0;
        goto LABEL_15;
      }

      [BiometricKitXPCServerPearl performRequestMessageDataCommand:size:outData:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl performRequestMessageDataCommand:size:outData:];
  }

  v15 = *v19;
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = v9;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *v19 = 67109120;
    v20 = v15;
    _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_ERROR, "performRequestMessageDataCommand -> %d\n", v19, 8u);
  }

LABEL_15:

  return v15;
}

- (int)initializeEngineWithOptions:(unsigned __int16)options
{
  optionsCopy = options;
  v13 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v12 = optionsCopy;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "initializeEngineWithOptions:0x%04x\n", buf, 8u);
  }

  v10 = optionsCopy;
  v7 = [(BiometricKitXPCServerPearl *)self performCommand:8 inValue:0 inData:&v10 inSize:2 outData:0 outSize:0];
  if (v7)
  {
    [BiometricKitXPCServerPearl initializeEngineWithOptions:];
  }

  else
  {
    if (__osLogTrace)
    {
      v8 = __osLogTrace;
    }

    else
    {
      v8 = v5;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v12 = 0;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "initializeEngineWithOptions -> %{errno}d\n", buf, 8u);
    }
  }

  return v7;
}

+ (void)reportPearlHardwarePass:(BOOL)pass fallbackAction:(id)action
{
  passCopy = pass;
  v18 = *MEMORY[0x29EDCA608];
  actionCopy = action;
  mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
  v7 = [mEMORY[0x29EDBFD50] BOOLForKey:@"SuppressPearlIssuePopup"];

  v8 = v7 | passCopy;
  if (reportPearlHardwarePass_fallbackAction__alreadyReported != 1 || reportPearlHardwarePass_fallbackAction__lastHardwarePass != v8)
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v15 = v8;
      v16 = 1024;
      v17 = v7;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEFAULT, "reportPearlHardwarePass: %d, suppress: %d\n", buf, 0xEu);
    }

    reportPearlHardwarePass_fallbackAction__alreadyReported = 1;
    reportPearlHardwarePass_fallbackAction__lastHardwarePass = v8;
    v10 = dispatch_get_global_queue(0, 0);
    v11[0] = MEMORY[0x29EDCA5F8];
    v11[1] = 3221225472;
    v11[2] = __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke;
    v11[3] = &unk_29EE54748;
    v13 = v8;
    v12 = actionCopy;
    dispatch_async(v10, v11);
  }
}

void __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke(uint64_t a1)
{
  if (objc_opt_class())
  {
    v2 = objc_alloc_init(MEMORY[0x29EDC91B0]);
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    v5[0] = MEMORY[0x29EDCA5F8];
    v5[1] = 3221225472;
    v5[2] = __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke_2;
    v5[3] = &unk_29EE54720;
    v7 = v3;
    v6 = *(a1 + 32);
    [v2 postComponentStatusEventFor:9 status:v4 withReply:v5];
  }
}

void __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke_2_cold_1(a1);
  }
}

+ (void)reportPearlInterlock:(BOOL)interlock
{
  interlockCopy = interlock;
  v10 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v9 = interlockCopy;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "reportPearlInterlock: %d\n", buf, 8u);
  }

  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __51__BiometricKitXPCServerPearl_reportPearlInterlock___block_invoke;
  v6[3] = &__block_descriptor_33_e5_v8__0l;
  v7 = interlockCopy;
  [self reportPearlHardwarePass:!interlockCopy fallbackAction:v6];
  if (!interlockCopy)
  {
    [MEMORY[0x29EDBFD70] displayPearlInterlockIssueNotification:0];
  }
}

+ (void)reportPearlIssue
{
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "reportPearlIssue\n", v4, 2u);
  }

  [self reportPearlHardwarePass:0 fallbackAction:&__block_literal_global_492];
}

+ (unsigned)getDeviceTreeProperty:(id)property fromPath:(id)path
{
  propertyCopy = property;
  v6 = *MEMORY[0x29EDBB118];
  v7 = [MEMORY[0x29EDBA0F8] stringWithFormat:@"%s%s", "IODeviceTree", objc_msgSend(path, "UTF8String")];
  v8 = IORegistryEntryFromPath(v6, [v7 UTF8String]);

  if (v8)
  {
    CFProperty = IORegistryEntryCreateCFProperty(v8, propertyCopy, *MEMORY[0x29EDB8ED8], 0);
    if (CFProperty)
    {
      v10 = CFProperty;
      v11 = *CFDataGetBytePtr(CFProperty);
      CFRelease(v10);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    [BiometricKitXPCServerPearl getDeviceTreeProperty:? fromPath:?];
    v11 = v13;
  }

  return v11;
}

+ (id)getSHA384FromData:(id)data
{
  v8 = *MEMORY[0x29EDCA608];
  dataCopy = data;
  if (dataCopy)
  {
    ccsha384_di();
    [dataCopy length];
    [dataCopy bytes];
    ccdigest();
    v4 = [MEMORY[0x29EDB8DA0] dataWithBytes:v7 length:48];
  }

  else
  {
    +[BiometricKitXPCServerPearl getSHA384FromData:];
    v4 = v6;
  }

  return v4;
}

- (int)getSensorFamily:(unsigned __int8 *)family
{
  v15 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "getSensorFamily\n", buf, 2u);
  }

  if (family)
  {
    v7 = getSensorFamily__sensorFamily;
    if (getSensorFamily__sensorFamily)
    {
LABEL_13:
      *family = v7;
      if (__osLogTrace)
      {
        v8 = __osLogTrace;
      }

      else
      {
        v8 = v5;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        *&buf[4] = 0;
        _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "getSensorFamily -> 0x%x\n", buf, 8u);
      }

      return 0;
    }

    v12 = 0;
    *buf = 1;
    if ([(BiometricKitXPCServerPearl *)self performCommand:53 inValue:0 inData:0 inSize:0 outData:&v12 outSize:buf])
    {
      [BiometricKitXPCServerPearl getSensorFamily:];
    }

    else if (*buf == 1)
    {
      v7 = v12;
      if (v12)
      {
        if (v12 < 4u)
        {
          getSensorFamily__sensorFamily = v12;
          goto LABEL_13;
        }

        [BiometricKitXPCServerPearl getSensorFamily:];
      }

      else
      {
        [BiometricKitXPCServerPearl getSensorFamily:];
      }
    }

    else
    {
      [BiometricKitXPCServerPearl getSensorFamily:];
    }

    v9 = v13;
  }

  else
  {
    [BiometricKitXPCServerPearl getSensorFamily:];
    v9 = *buf;
  }

  if (__osLogTrace)
  {
    v11 = __osLogTrace;
  }

  else
  {
    v11 = v5;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v9;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_ERROR, "getSensorFamily -> 0x%x\n", buf, 8u);
  }

  return v9;
}

+ (BOOL)platformProvidesPlCl
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __50__BiometricKitXPCServerPearl_platformProvidesPlCl__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (platformProvidesPlCl_onceToken != -1)
  {
    dispatch_once(&platformProvidesPlCl_onceToken, block);
  }

  return (platformProvidesPlCl_providesPlCl & 1) == 0;
}

void __50__BiometricKitXPCServerPearl_platformProvidesPlCl__block_invoke(uint64_t a1)
{
  v1 = [objc_opt_class() getChipID];
  v2 = [objc_opt_class() getBoardID];
  v3 = v2;
  if (v1)
  {
    v4 = v2 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    __50__BiometricKitXPCServerPearl_platformProvidesPlCl__block_invoke_cold_1();
  }

  v5 = (v1 - 33025);
  if (v5 <= 0x2F)
  {
    if (((1 << (v1 - 1)) & 0x28005) != 0)
    {
      goto LABEL_17;
    }

    if (v5 == 31)
    {
      if ((v3 - 12) >= 0xFFFFFFFC)
      {
        return;
      }

      goto LABEL_17;
    }

    if (v5 == 47)
    {
      if ((v3 - 8) > 0xFFFFFFFB)
      {
        return;
      }

LABEL_17:
      platformProvidesPlCl_providesPlCl = 1;
      return;
    }
  }

  if (v1 == 32807 || v1 == 32816)
  {
    goto LABEL_17;
  }
}

+ (BOOL)platformProvidesPSD3
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __50__BiometricKitXPCServerPearl_platformProvidesPSD3__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (platformProvidesPSD3_onceToken != -1)
  {
    dispatch_once(&platformProvidesPSD3_onceToken, block);
  }

  return (platformProvidesPSD3_providesPSD3 & 1) == 0;
}

void __50__BiometricKitXPCServerPearl_platformProvidesPSD3__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x29EDCA608];
  v1 = [objc_opt_class() getChipID];
  if (v1 <= 33024)
  {
    if (v1 == 32807 || v1 == 32816)
    {
      goto LABEL_13;
    }

    if (!v1)
    {
      v4 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = 136316162;
        v6 = "chipID";
        v7 = 2048;
        v8 = 0;
        v9 = 2080;
        v10 = &unk_296D32C0B;
        v11 = 2080;
        v12 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
        v13 = 1024;
        v14 = 3952;
        _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &v5, 0x30u);
      }
    }
  }

  else if ((v1 - 33025) <= 0x31 && ((1 << (v1 - 1)) & 0x2800080028005) != 0)
  {
LABEL_13:
    platformProvidesPSD3_providesPSD3 = 1;
  }
}

- (int)loadDCNKernels
{
  v27 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "loadDCNKernels\n", buf, 2u);
  }

  v5 = os_transaction_create();
  v22 = 0;
  v6 = objc_autoreleasePoolPush();
  if ([(BiometricKitXPCServerPearl *)self getSPRLInfo:&v22])
  {
    [BiometricKitXPCServerPearl loadDCNKernels];
    v16 = *buf;
    goto LABEL_48;
  }

  if (BYTE2(v22))
  {
LABEL_47:
    v16 = 0;
    goto LABEL_48;
  }

  getChipID = [objc_opt_class() getChipID];
  if (getChipID <= 33041)
  {
    if (getChipID <= 33024)
    {
      if (getChipID == 32807)
      {
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H11_iPad.bin";
        goto LABEL_34;
      }

      if (getChipID == 32816)
      {
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H12_iPhone.bin";
        goto LABEL_34;
      }
    }

    else
    {
      switch(getChipID)
      {
        case 33025:
          v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H13_iPhone.bin";
          goto LABEL_34;
        case 33027:
          v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H13_iPad.bin";
          goto LABEL_34;
        case 33040:
          v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H14_iPhone.bin";
          goto LABEL_34;
      }
    }

LABEL_33:
    v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H17_iPhone.bin";
    goto LABEL_34;
  }

  if (getChipID > 33073)
  {
    switch(getChipID)
    {
      case 33074:
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H16_iPad.bin";
        goto LABEL_34;
      case 33090:
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H17_iPad.bin";
        goto LABEL_34;
      case 33104:
        v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H18_iPhone.bin";
        goto LABEL_34;
    }

    goto LABEL_33;
  }

  if (getChipID == 33042)
  {
    v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H14_iPad.bin";
    goto LABEL_34;
  }

  if (getChipID == 33056)
  {
    v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H15_iPhone.bin";
    goto LABEL_34;
  }

  if (getChipID != 33072)
  {
    goto LABEL_33;
  }

  v8 = @"/System/Library/Pearl/DCNKernels/DCNKernels_H16_iPhone.bin";
LABEL_34:
  if (__osLog)
  {
    v9 = __osLog;
  }

  else
  {
    v9 = v3;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v8;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEFAULT, "DCNKernels not loaded yet, loading from %@\n", buf, 0xCu);
  }

  v10 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v8];
  v11 = v10;
  if (__osLog)
  {
    v12 = __osLog;
  }

  else
  {
    v12 = v3;
  }

  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v11 length];
      v15 = [objc_opt_class() getSHA384FromData:v11];
      *buf = 134218242;
      v24 = v14;
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEFAULT, "DCNKernels: Size: %lu SHA384: %@\n", buf, 0x16u);
    }

    if (!-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 35, 0, [v11 bytes], objc_msgSend(v11, "length"), 0, 0))
    {

      goto LABEL_47;
    }

    [BiometricKitXPCServerPearl loadDCNKernels];
  }

  else
  {
    [BiometricKitXPCServerPearl loadDCNKernels];
  }

  v16 = *buf;

LABEL_48:
  objc_autoreleasePoolPop(v6);
  if ([(BiometricKitXPCServerPearl *)self sendDCNKernelsCheckResult:v16 == 0])
  {
    [BiometricKitXPCServerPearl loadDCNKernels];
    if (v16)
    {
LABEL_50:
      [objc_opt_class() reportPearlIssue];
      if (__osLogTrace)
      {
        v17 = __osLogTrace;
      }

      else
      {
        v17 = v3;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v24) = v16;
        v18 = v17;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_62:
        _os_log_impl(&dword_296CA4000, v18, v19, "loadDCNKernels -> %{errno}d\n", buf, 8u);
        goto LABEL_63;
      }

      goto LABEL_63;
    }
  }

  else if (v16)
  {
    goto LABEL_50;
  }

  if (__osLogTrace)
  {
    v20 = __osLogTrace;
  }

  else
  {
    v20 = v3;
  }

  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v24) = 0;
    v18 = v20;
    v19 = OS_LOG_TYPE_DEBUG;
    goto LABEL_62;
  }

LABEL_63:

  return v16;
}

- (id)getProjectorSerialNumberIORegAttempt
{
  v2 = IOServiceNameMatching("AppleH10CamIn");
  if (v2)
  {
    v3 = *MEMORY[0x29EDBB118];
    MatchingService = IOServiceGetMatchingService(*MEMORY[0x29EDBB118], v2);
    if (MatchingService)
    {
      goto LABEL_7;
    }

    v5 = IOServiceNameMatching("AppleH13CamIn");
    if (!v5)
    {
      [BiometricKitXPCServerPearl getProjectorSerialNumberIORegAttempt];
      goto LABEL_15;
    }

    MatchingService = IOServiceGetMatchingService(v3, v5);
    if (MatchingService)
    {
LABEL_7:
      v7 = MatchingService;
      CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"FrontIRStructuredLightProjectorSerialNumString", *MEMORY[0x29EDB8ED8], 0);
      IOObjectRelease(v7);
      goto LABEL_8;
    }

    v6 = IOServiceNameMatching("AppleH16CamIn");
    if (v6)
    {
      MatchingService = IOServiceGetMatchingService(v3, v6);
      if (MatchingService)
      {
        goto LABEL_7;
      }

      [BiometricKitXPCServerPearl getProjectorSerialNumberIORegAttempt];
    }

    else
    {
      [BiometricKitXPCServerPearl getProjectorSerialNumberIORegAttempt];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl getProjectorSerialNumberIORegAttempt];
  }

LABEL_15:
  CFProperty = v10;
LABEL_8:

  return CFProperty;
}

- (id)getProjectorSerialNumberIOReg
{
  v11 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "getProjectorSerialNumberIOReg\n", &v9, 2u);
  }

  mach_absolute_time();
  getProjectorSerialNumberIORegAttempt = [(BiometricKitXPCServerPearl *)self getProjectorSerialNumberIORegAttempt];
  if (getProjectorSerialNumberIORegAttempt)
  {
LABEL_9:
    v6 = getProjectorSerialNumberIORegAttempt;
  }

  else
  {
    while (1)
    {
      mach_absolute_time();
      if (absoluteToMiliseconds() > 0x36EE80)
      {
        break;
      }

      sleep(1u);
      getProjectorSerialNumberIORegAttempt = [(BiometricKitXPCServerPearl *)self getProjectorSerialNumberIORegAttempt];
      if (getProjectorSerialNumberIORegAttempt)
      {
        goto LABEL_9;
      }
    }

    v6 = 0;
  }

  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = v3;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "getProjectorSerialNumberIOReg -> %@\n", &v9, 0xCu);
  }

  return v6;
}

- (id)getRomeoSerialNumberFDR
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "getRomeoSerialNumberFDR\n", buf, 2u);
  }

  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (isInternalBuild())
  {
    [dictionary setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"APTicketAllowUntrusted"];
  }

  v18 = 0;
  v6 = [(BiometricKitXPCServerPearl *)self getFDRClassFromFDR:13 withOptions:dictionary withError:&v18];
  v7 = v18;
  if (!v6)
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
LABEL_32:
    v14 = *buf;
    goto LABEL_22;
  }

  if ([v6 length] <= 0xB9)
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
    goto LABEL_32;
  }

  if (v7)
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
    goto LABEL_32;
  }

  bytes = [v6 bytes];
  v9 = malloc_type_malloc(0x12uLL, 0x57DB8BB0uLL);
  if (__osLog)
  {
    v10 = __osLog;
  }

  else
  {
    v10 = v3;
  }

  if (!v9)
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
    goto LABEL_32;
  }

  v11 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(bytes + 129);
    *buf = 67109120;
    *&buf[4] = v12;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEFAULT, "OTP Version: %d\n", buf, 8u);
  }

  v13 = 101;
  if (*(bytes + 129) > 4u)
  {
    v13 = 175;
  }

  if (getSensorSerialNumStringUT(v11, 0x12uLL, bytes + v13))
  {
    [BiometricKitXPCServerPearl getRomeoSerialNumberFDR];
    v14 = *buf;
  }

  else
  {
    v14 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:v11];
  }

  free(v11);
LABEL_22:
  if (__osLogTrace)
  {
    v15 = __osLogTrace;
  }

  else
  {
    v15 = v3;
  }

  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *&buf[4] = v14;
    _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEBUG, "getRomeoSerialNumberFDR -> %@\n", buf, 0xCu);
  }

  v16 = v14;

  return v14;
}

- (int)verifyRomeoSerialNumberAgainstFDR
{
  v16 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "verifyRomeoSerialNumberAgainstFDR\n", &v12, 2u);
  }

  getRomeoSerialNumberFDR = [(BiometricKitXPCServerPearl *)self getRomeoSerialNumberFDR];
  getProjectorSerialNumberIOReg = [(BiometricKitXPCServerPearl *)self getProjectorSerialNumberIOReg];
  v7 = getProjectorSerialNumberIOReg;
  if (getRomeoSerialNumberFDR)
  {
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = v3;
    }

    if (getProjectorSerialNumberIOReg)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412546;
        v13 = getRomeoSerialNumberFDR;
        v14 = 2112;
        v15 = v7;
        _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEFAULT, "Romeo serial: FDR: %@, IOReg: %@\n", &v12, 0x16u);
      }

      if ([getRomeoSerialNumberFDR isEqualToString:v7])
      {
        if (__osLogTrace)
        {
          v9 = __osLogTrace;
        }

        else
        {
          v9 = v3;
        }

        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = 67109120;
          LODWORD(v13) = 0;
          _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "verifyRomeoSerialNumberAgainstFDR -> 0x%x\n", &v12, 8u);
        }

        v10 = 0;
        goto LABEL_20;
      }

      [BiometricKitXPCServerPearl verifyRomeoSerialNumberAgainstFDR];
    }

    else
    {
      [(BiometricKitXPCServerPearl *)v8 verifyRomeoSerialNumberAgainstFDR];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl verifyRomeoSerialNumberAgainstFDR];
  }

  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  v10 = 261;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    v12 = 67109120;
    LODWORD(v13) = 261;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_ERROR, "verifyRomeoSerialNumberAgainstFDR -> 0x%x\n", &v12, 8u);
  }

LABEL_20:

  return v10;
}

- (int)queryGuadalupeSerialNumberFDR:(id *)r
{
  v24 = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "queryGuadalupeSerialNumberFDR\n", buf, 2u);
  }

  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (isInternalBuild())
  {
    [dictionary setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"APTicketAllowUntrusted"];
  }

  v19 = 0;
  v8 = [(BiometricKitXPCServerPearl *)self getFDRClassFromFDR:13 withOptions:dictionary withError:&v19];
  v9 = v19;
  if (v8)
  {
    if ([v8 length])
    {
      if (v9)
      {
        [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
      }

      else
      {
        bytes = [v8 bytes];
        if (__osLog)
        {
          v11 = __osLog;
        }

        else
        {
          v11 = v5;
        }

        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *bytes;
          *buf = 67109120;
          v21 = v12;
          _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEFAULT, "pwcl version: %d\n", buf, 8u);
        }

        if (*bytes < 3u)
        {
          v14 = 0;
          goto LABEL_21;
        }

        if ([v8 length] <= 0x15)
        {
          [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
        }

        else
        {
          v13 = [MEMORY[0x29EDBA0F8] stringWithUTF8String:bytes + 4];
          if (v13)
          {
            v14 = v13;
            *r = v13;
LABEL_21:
            if (__osLogTrace)
            {
              v15 = __osLogTrace;
            }

            else
            {
              v15 = v5;
            }

            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109378;
              v21 = 0;
              v22 = 2112;
              v23 = v14;
              _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEBUG, "queryGuadalupeSerialNumberFDR -> 0x%x (%@)\n", buf, 0x12u);
            }

            v16 = 0;
            goto LABEL_27;
          }

          [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
        }
      }
    }

    else
    {
      [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl queryGuadalupeSerialNumberFDR:];
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v5;
  }

  v16 = 261;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109378;
    v21 = 261;
    v22 = 2112;
    v23 = 0;
    _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_ERROR, "queryGuadalupeSerialNumberFDR -> 0x%x (%@)\n", buf, 0x12u);
  }

  v14 = 0;
LABEL_27:

  return v16;
}

- (int)verifyGuadalupeSerialNumberAgainstFDR
{
  v20 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "verifyGuadalupeSerialNumberAgainstFDR\n", buf, 2u);
  }

  v15 = 0;
  v5 = [(BiometricKitXPCServerPearl *)self queryGuadalupeSerialNumberFDR:&v15];
  v6 = v15;
  v7 = v6;
  if (v5)
  {
    [BiometricKitXPCServerPearl verifyGuadalupeSerialNumberAgainstFDR];
    v12 = *buf;
  }

  else
  {
    if (!v6)
    {
LABEL_16:
      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v3;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109120;
        LODWORD(v17) = 0;
        _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEBUG, "verifyGuadalupeSerialNumberAgainstFDR -> 0x%x\n", buf, 8u);
      }

      v12 = 0;
      goto LABEL_22;
    }

    getProjectorSerialNumberIOReg = [(BiometricKitXPCServerPearl *)self getProjectorSerialNumberIOReg];
    v9 = getProjectorSerialNumberIOReg;
    if (__osLog)
    {
      v10 = __osLog;
    }

    else
    {
      v10 = v3;
    }

    if (getProjectorSerialNumberIOReg)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v17 = v7;
        v18 = 2112;
        v19 = v9;
        _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEFAULT, "Guadalupe serial: FDR: %@, IOReg: %@\n", buf, 0x16u);
      }

      if ([v7 isEqualToString:v9])
      {

        goto LABEL_16;
      }

      [BiometricKitXPCServerPearl verifyGuadalupeSerialNumberAgainstFDR];
    }

    else
    {
      [BiometricKitXPCServerPearl verifyGuadalupeSerialNumberAgainstFDR];
    }

    v12 = *buf;
  }

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v3;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    LODWORD(v17) = v12;
    _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_ERROR, "verifyGuadalupeSerialNumberAgainstFDR -> 0x%x\n", buf, 8u);
  }

LABEL_22:

  return v12;
}

- (int)verifyProjectorSerialNumber
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v21[0]) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "verifyProjectorSerialNumber\n", v21, 2u);
  }

  memset(v21, 0, 23);
  if ([(BiometricKitXPCServerPearl *)self performGetBiometrickitdInfoCommand:v21])
  {
    [BiometricKitXPCServerPearl verifyProjectorSerialNumber];
  }

  else
  {
    if (BYTE6(v21[2]))
    {
      if (__osLog)
      {
        v5 = __osLog;
      }

      else
      {
        v5 = v3;
      }

      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_35;
      }

      *buf = 0;
      v6 = "Projector SN already checked\n";
      goto LABEL_13;
    }

    if (isInternalBuild())
    {
      v7 = getBootArgs();
      v8 = v7;
      if (v7 && (v9 = [v7 rangeOfString:@"pearl-skip-projector-checks"], v10) && (v11 = v10 + v9 + 1, v11 < objc_msgSend(v8, "length")))
      {
        v12 = [v8 substringWithRange:{v11, 1}];
        bOOLValue = [v12 BOOLValue];
      }

      else
      {
        bOOLValue = 0;
      }

      if (isInternalBuild() && (bOOLValue & 1) != 0)
      {
        if (__osLog)
        {
          v5 = __osLog;
        }

        else
        {
          v5 = v3;
        }

        if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_35;
        }

        *buf = 0;
        v6 = "Skipping projector SN check\n";
LABEL_13:
        _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, v6, buf, 2u);
LABEL_35:
        v15 = 0;
        goto LABEL_36;
      }
    }

    else
    {
      isInternalBuild();
    }

    getChipID = [objc_opt_class() getChipID];
    if ((getChipID - 33056) <= 0x30 && ((1 << (getChipID - 32)) & 0x1000500050001) != 0 || getChipID == 33040)
    {
      if (![(BiometricKitXPCServerPearl *)self verifyGuadalupeSerialNumberAgainstFDR])
      {
        goto LABEL_35;
      }
    }

    else if (![(BiometricKitXPCServerPearl *)self verifyRomeoSerialNumberAgainstFDR])
    {
      goto LABEL_35;
    }

    if ([(BiometricKitXPCServerPearl *)self hasFDREntitlement])
    {
      goto LABEL_35;
    }

    [BiometricKitXPCServerPearl verifyProjectorSerialNumber];
  }

  v15 = *buf;
LABEL_36:
  if ([(BiometricKitXPCServerPearl *)self sendRomeoSNCheckResult:v15 == 0])
  {
    [BiometricKitXPCServerPearl verifyProjectorSerialNumber];
    if (v15)
    {
LABEL_38:
      [objc_opt_class() reportPearlIssue];
      if (__osLogTrace)
      {
        v16 = __osLogTrace;
      }

      else
      {
        v16 = v3;
      }

      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v23 = v15;
        v17 = v16;
        v18 = OS_LOG_TYPE_ERROR;
LABEL_51:
        _os_log_impl(&dword_296CA4000, v17, v18, "verifyProjectorSerialNumber -> 0x%x\n", buf, 8u);
        return v15;
      }

      return v15;
    }
  }

  else if (v15)
  {
    goto LABEL_38;
  }

  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v3;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v23 = 0;
    v17 = v19;
    v18 = OS_LOG_TYPE_DEBUG;
    goto LABEL_51;
  }

  return v15;
}

- (BOOL)hasFDREntitlement
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = [(BiometricKitXPCServerPearl *)self hasManifestEntitlement:1717663091];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "false";
    if (v2)
    {
      v4 = "true";
    }

    v6 = 136315138;
    v7 = v4;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEFAULT, "hasFDREntitlement: 'faus':%s\n", &v6, 0xCu);
  }

  return v2;
}

- (BOOL)hasManifestEntitlement:(unsigned int)entitlement
{
  v75 = *MEMORY[0x29EDCA608];
  v4 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = entitlement;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "hasManifestEntitlement: 0x%x\n", buf, 8u);
  }

  HIBYTE(v32) = 0;
  v65 = 0;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v42 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  *buf = 0u;
  mEMORY[0x29EDC5808] = [MEMORY[0x29EDC5808] sharedDataAccessor];
  v7 = [mEMORY[0x29EDC5808] copyPathForPersonalizedData:2 error:0];

  if (!v7)
  {
    [BiometricKitXPCServerPearl hasManifestEntitlement:];
LABEL_25:
    v16 = v33;
    v9 = *v34;
    v11 = *__s1;
    goto LABEL_15;
  }

  v8 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v7];
  if (!v8)
  {
    [BiometricKitXPCServerPearl hasManifestEntitlement:];
    goto LABEL_25;
  }

  v9 = v8;
  v10 = MGCopyAnswer();
  if (!v10)
  {
    [BiometricKitXPCServerPearl hasManifestEntitlement:];
    goto LABEL_25;
  }

  v11 = v10;
  v12 = MGCopyAnswer();
  if (!v12)
  {
    [(BiometricKitXPCServerPearl *)v9 hasManifestEntitlement:v11, &v33, v34, __s1, v13, v14, v15, v32, v33, *v34, *&v34[8], *&v34[16], v35, SHIDWORD(v35), v36, *(&v36 + 1), *buf, *&buf[8], v38, *(&v38 + 1), v39, *(&v39 + 1), v40, *(&v40 + 1)];
    goto LABEL_25;
  }

  v16 = v12;
  v17 = [v12 isEqualToString:@"sha2-384"];
  if (v17)
  {
    [v9 length];
    [v9 bytes];
    ccdigest();
    if ((isInternalBuild() & 1) == 0 && (v18 = memcmp(__s1, [v11 bytes], 0x30uLL)) != 0)
    {
      v31 = v18;
      if (__osLog)
      {
        v27 = __osLog;
      }

      else
      {
        v27 = v4;
      }

      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *v34 = 136316162;
        *&v34[4] = "err == 0 ";
        *&v34[12] = 2048;
        *&v34[14] = v31;
        *&v34[22] = 2080;
        v35 = &unk_296D32C0B;
        LOWORD(v36) = 2080;
        *(&v36 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
        WORD5(v36) = 1024;
        HIDWORD(v36) = 4617;
        goto LABEL_46;
      }
    }

    else
    {
      inited = Img4DecodeInitManifest([v9 bytes], objc_msgSend(v9, "length"), buf);
      if (inited)
      {
        v29 = inited;
        if (__osLog)
        {
          v27 = __osLog;
        }

        else
        {
          v27 = v4;
        }

        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          *v34 = 136316162;
          *&v34[4] = "err == 0 ";
          *&v34[12] = 2048;
          *&v34[14] = v29;
          *&v34[22] = 2080;
          v35 = &unk_296D32C0B;
          LOWORD(v36) = 2080;
          *(&v36 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          WORD5(v36) = 1024;
          HIDWORD(v36) = 4622;
LABEL_46:
          v28 = v34;
          goto LABEL_47;
        }
      }

      else
      {
        BooleanFromSection = Img4DecodeGetBooleanFromSection(buf, 0, entitlement, &v32 + 7, v20, v21);
        if (BooleanFromSection)
        {
          v30 = BooleanFromSection;
          v27 = (__osLog ? __osLog : v4);
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *v34 = 136316162;
            *&v34[4] = "err == 0 ";
            *&v34[12] = 2048;
            *&v34[14] = v30;
            *&v34[22] = 2080;
            v35 = &unk_296D32C0B;
            LOWORD(v36) = 2080;
            *(&v36 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            WORD5(v36) = 1024;
            HIDWORD(v36) = 4625;
            goto LABEL_46;
          }
        }
      }
    }
  }

  else
  {
    v26 = v17;
    if (__osLog)
    {
      v27 = __osLog;
    }

    else
    {
      v27 = v4;
    }

    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *__s1 = 136316162;
      *&__s1[4] = "err == 0 ";
      v67 = 2048;
      v68 = v26 ^ 1u;
      v69 = 2080;
      v70 = &unk_296D32C0B;
      v71 = 2080;
      v72 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v73 = 1024;
      v74 = 4608;
      v28 = __s1;
LABEL_47:
      _os_log_impl(&dword_296CA4000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v28, 0x30u);
    }
  }

LABEL_15:
  if (__osLogTrace)
  {
    v23 = __osLogTrace;
  }

  else
  {
    v23 = v4;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
  {
    *v34 = 67109120;
    *&v34[4] = HIBYTE(v32);
    _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_DEBUG, "hasManifestEntitlement -> %d\n", v34, 8u);
  }

  v24 = HIBYTE(v32);

  return v24;
}

- (id)getDisplayTrustStatusAttempt
{
  v39 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "getDisplayTrustStatusAttempt\n", buf, 2u);
  }

  v27 = 0;
  InternalComponents = cpGetInternalComponents(&v27);
  if (InternalComponents)
  {
    v21 = InternalComponents;
    if (__osLog)
    {
      v22 = __osLog;
    }

    else
    {
      v22 = v2;
    }

    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      v30 = "err == 0 ";
      v31 = 2048;
      v32 = v21;
      v33 = 2080;
      v34 = &unk_296D32C0B;
      v35 = 2080;
      v36 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v37 = 1024;
      v38 = 4647;
      _os_log_impl(&dword_296CA4000, v22, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v14 = 0;
    v7 = 0;
    v16 = 0;
  }

  else
  {
    v5 = v27;
    v6 = [v27 copy];

    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v24;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          v13 = [v12 objectForKey:{@"ComponentName", v23}];
          if ([v13 isEqualToString:@"TouchController"])
          {
            v14 = v12;

            goto LABEL_18;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v23 objects:v28 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }

      v14 = 0;
    }

    else
    {
      v14 = 0;
    }

LABEL_18:

    v15 = [v14 objectForKey:@"isTrustedForUI"];
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v17 = [v14 objectForKey:@"isTrusted"];
      if ([v17 BOOLValue])
      {
        v16 = v17;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  if (__osLogTrace)
  {
    v18 = __osLogTrace;
  }

  else
  {
    v18 = v2;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v30 = v16;
    _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEBUG, "getDisplayTrustStatusAttempt -> %@\n", buf, 0xCu);
  }

  v19 = v16;

  return v19;
}

- (int)verifyDisplayTrust
{
  v8 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7[0]) = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "verifyDisplayTrust\n", v7, 2u);
  }

  if ([(BiometricKitXPCServerPearl *)self sendDisplayCheckResult:1])
  {
    [BiometricKitXPCServerPearl verifyDisplayTrust];
  }

  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = v3;
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v7[0] = 67109120;
    v7[1] = 0;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "verifyDisplayTrust -> 0x%x\n", v7, 8u);
  }

  return 0;
}

- (int)sendSelfCheckResult:(id *)result
{
  v3 = [(BiometricKitXPCServerPearl *)self performCommand:44 inValue:0 inData:result inSize:28 outData:0 outSize:0];
  if (v3)
  {
    [BiometricKitXPCServerPearl sendSelfCheckResult:];
  }

  return v3;
}

- (int)sendSavageFWCertCheckResult:(int)result
{
  v13 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v8 = 67109120;
    resultCopy2 = result;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendSavageFWCertCheckResult, passed: %d\n", &v8, 8u);
  }

  v10 = -1;
  v11 = -1;
  v8 = -1;
  v12 = -1;
  resultCopy2 = result;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:&v8];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendSavageFWCertCheckResult:];
  }

  return v6;
}

- (int)sendFDRDataCheckResult:(int)result
{
  v13 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v8) = 67109120;
    HIDWORD(v8) = result;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendFDRDataCheckResult, passed: %d\n", &v8, 8u);
  }

  v10 = -1;
  v11 = -1;
  v8 = -1;
  v12 = -1;
  resultCopy = result;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:&v8];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendFDRDataCheckResult:];
  }

  return v6;
}

- (int)sendRomeoSNCheckResult:(int)result
{
  v13 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v8) = 67109120;
    HIDWORD(v8) = result;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendRomeoSNCheckResult, passed: %d\n", &v8, 8u);
  }

  v9 = -1;
  v11 = -1;
  v8 = -1;
  v12 = -1;
  resultCopy = result;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:&v8];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendRomeoSNCheckResult:];
  }

  return v6;
}

- (int)sendDCNKernelsCheckResult:(int)result
{
  v12 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v8[0]) = 67109120;
    HIDWORD(v8[0]) = result;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendDCNKernelsCheckResult, passed: %d\n", v8, 8u);
  }

  v8[1] = -1;
  v10 = -1;
  v8[0] = -1;
  v11 = -1;
  resultCopy = result;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:v8];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendDCNKernelsCheckResult:];
  }

  return v6;
}

- (int)sendDisplayCheckResult:(int)result
{
  v12 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v5 = __osLogTrace;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v8[0]) = 67109120;
    HIDWORD(v8[0]) = result;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEBUG, "sendDisplayCheckResult, passed: %d\n", v8, 8u);
  }

  v8[1] = -1;
  v9 = -1;
  v8[0] = -1;
  resultCopy = result;
  v11 = -1;
  v6 = [(BiometricKitXPCServerPearl *)self sendSelfCheckResult:v8];
  if (v6)
  {
    [BiometricKitXPCServerPearl sendDisplayCheckResult:];
  }

  return v6;
}

- (id)classStringForEnum:(unsigned __int16)enum
{
  if (enum > 0x12u)
  {
    return 0;
  }

  else
  {
    return off_29EE54888[enum];
  }
}

- (int)loadFDRClassCommand:(int)command withClass:(unsigned __int16)class withData:(id)data isAlternative:(BOOL)alternative
{
  commandCopy = command;
  dataCopy = data;
  v11 = [dataCopy length] + 9;
  v12 = malloc_type_malloc(v11, 0xC606EA9CuLL);
  if (v12)
  {
    v13 = v12;
    *v12 = commandCopy;
    *(v12 + 1) = class;
    v12[4] = alternative;
    *(v12 + 5) = [dataCopy length];
    memcpy(v13 + 9, [dataCopy bytes], objc_msgSend(dataCopy, "length"));
    v14 = [(BiometricKitXPCServerPearl *)self performCommand:36 inValue:0 inData:v13 inSize:v11 outData:0 outSize:0];
    if (v14)
    {
      [BiometricKitXPCServerPearl loadFDRClassCommand:withClass:withData:isAlternative:];
    }

    free(v13);
  }

  else
  {
    [BiometricKitXPCServerPearl loadFDRClassCommand:withClass:withData:isAlternative:];
    v14 = v16;
  }

  return v14;
}

- (id)getFDRClassFromFile:(id)file
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = [(BiometricKitXPCServerPearl *)self pathForAlternateFDRClass:file];
  v4 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v3];
  v5 = v4;
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (v4)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEFAULT, "Loaded FDR data from file: %@\n", &v8, 0xCu);
    }
  }

  else
  {
    [BiometricKitXPCServerPearl getFDRClassFromFile:v6];
  }

  return v5;
}

- (id)getFDRClassFromFDR:(unsigned __int16)r withOptions:(id)options withError:(id *)error
{
  rCopy = r;
  v31 = *MEMORY[0x29EDCA608];
  optionsCopy = options;
  v9 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109634;
    *&buf[4] = rCopy;
    *&buf[8] = 2112;
    *&buf[10] = optionsCopy;
    *&buf[18] = 2048;
    *&buf[20] = error;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "getFDRClassFromFDR:withOptions:withError: %d %@ %p\n", buf, 0x1Cu);
  }

  platformProvidesPlCl = [objc_opt_class() platformProvidesPlCl];
  v12 = 0;
  if (rCopy > 0xF)
  {
    v13 = 0;
  }

  else
  {
    v13 = 0;
    if (((1 << rCopy) & 0xA0E5) != 0)
    {
      if (platformProvidesPlCl)
      {
        [(BiometricKitXPCServerPearl *)self classStringForEnum:18];
        v14 = AMFDRSealingMapCopyLocalDictForClass();
        v13 = 0;
        if (!v14)
        {
          [BiometricKitXPCServerPearl getFDRClassFromFDR:withOptions:withError:];
          goto LABEL_37;
        }

        v12 = v14;
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }
    }
  }

  v15 = [(BiometricKitXPCServerPearl *)self classStringForEnum:rCopy];
  if (!v15)
  {
    [(BiometricKitXPCServerPearl *)v12 getFDRClassFromFDR:&v27 withOptions:&v28 withError:buf, v16, v17, v18, v26, 0, v27, v28, *buf, *&buf[8], *&buf[12], *&buf[16], *&buf[24], v30, v31, v32, v33, v34, v35, v36, v37];
    goto LABEL_37;
  }

  v19 = v15;
  if (!v12)
  {
    v20 = AMFDRSealingMapCopyLocalDataForClass();

    v13 = 0;
    if (v20)
    {
      goto LABEL_15;
    }

    goto LABEL_23;
  }

  v20 = [v12 objectForKeyedSubscript:v15];
  if (!v20)
  {
LABEL_23:
    [BiometricKitXPCServerPearl getFDRClassFromFDR:withOptions:withError:];
LABEL_37:
    v12 = v27;
    v19 = v28;
    v13 = *buf;
    goto LABEL_38;
  }

LABEL_15:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = 0;
    *error = 0;
    if (__osLogTrace)
    {
      v23 = __osLogTrace;
    }

    else
    {
      v23 = v9;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218242;
      *&buf[4] = v20;
      *&buf[12] = 2112;
      *&buf[14] = 0;
      _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_DEBUG, "getFDRClassFromFDR:withOptions:withError: -> %p (%@)\n", buf, 0x16u);
    }

    v13 = 0;
    goto LABEL_30;
  }

  [BiometricKitXPCServerPearl getFDRClassFromFDR:v20 withOptions:? withError:?];
LABEL_38:
  v25 = v13;
  v20 = 0;
  *error = v13;
  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = v9;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    *&buf[4] = 0;
    *&buf[12] = 2112;
    *&buf[14] = v13;
    _os_log_impl(&dword_296CA4000, v22, OS_LOG_TYPE_ERROR, "getFDRClassFromFDR:withOptions:withError: -> %p (%@)\n", buf, 0x16u);
  }

LABEL_30:

  return v20;
}

- (id)getFDRClassFromFDR:(unsigned __int16)r
{
  rCopy = r;
  v20[2] = *MEMORY[0x29EDCA608];
  v5 = MEMORY[0x29EDB8E00];
  v19[0] = @"GetCombined";
  v19[1] = @"StripImg4";
  v20[0] = MEMORY[0x29EDB8EB0];
  v20[1] = MEMORY[0x29EDB8EA8];
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v7 = [v5 dictionaryWithDictionary:v6];

  if (isInternalBuild())
  {
    [v7 setObject:MEMORY[0x29EDB8EB0] forKeyedSubscript:@"APTicketAllowUntrusted"];
  }

  v15 = 0;
  v8 = [(BiometricKitXPCServerPearl *)self getFDRClassFromFDR:rCopy withOptions:v7 withError:&v15];
  v9 = v15;
  if (__osLog)
  {
    v10 = __osLog;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = [(BiometricKitXPCServerPearl *)self classStringForEnum:rCopy];
    *buf = 138412546;
    *&buf[4] = v12;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEFAULT, "Loading FDR: Class: %@ -> %@\n", buf, 0x16u);
  }

  if (v8)
  {
    if (!v9 || [(BiometricKitXPCServerPearl *)self hasFDREntitlement])
    {
      v13 = v8;
      goto LABEL_12;
    }

    [BiometricKitXPCServerPearl getFDRClassFromFDR:];
  }

  else
  {
    [BiometricKitXPCServerPearl getFDRClassFromFDR:];
  }

  v13 = *buf;
LABEL_12:

  return v13;
}

- (int)loadFDRClass:(unsigned __int16)class alternative:(BOOL)alternative
{
  alternativeCopy = alternative;
  classCopy = class;
  v31 = *MEMORY[0x29EDCA608];
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109376;
    *&buf[4] = classCopy;
    *&buf[8] = 1024;
    *&buf[10] = alternativeCopy;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "loadFDRClass:alternative: %d %d\n", buf, 0xEu);
  }

  if (classCopy >= 0x13)
  {
    [BiometricKitXPCServerPearl loadFDRClass:alternative:];
    goto LABEL_42;
  }

  v9 = [(BiometricKitXPCServerPearl *)self classStringForEnum:classCopy];
  if (__osLog)
  {
    v10 = __osLog;
  }

  else
  {
    v10 = v7;
  }

  if (!v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "classString";
      *&buf[12] = 2048;
      *v25 = 0;
      *&v25[8] = 2080;
      v26 = &unk_296D32C0B;
      v27 = 2080;
      v28 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v29 = 1024;
      v30 = 5064;
      _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v12 = 0;
    v11 = 0;
    v17 = 261;
    goto LABEL_43;
  }

  v11 = v9;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    *&buf[4] = v11;
    *&buf[12] = 1024;
    *v25 = classCopy;
    *&v25[4] = 1024;
    *&v25[6] = alternativeCopy;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEFAULT, "Trying to load %@ (%d) FDR Class, Alternative = %d\n", buf, 0x18u);
  }

  if (alternativeCopy)
  {
    [(BiometricKitXPCServerPearl *)self getFDRClassFromFile:v11];
  }

  else
  {
    [(BiometricKitXPCServerPearl *)self getFDRClassFromFDR:classCopy];
  }
  v12 = ;
  if (!v12)
  {
    if ([(BiometricKitXPCServerPearl *)self hasFDREntitlement])
    {
      goto LABEL_30;
    }

    [BiometricKitXPCServerPearl loadFDRClass:alternative:];
LABEL_42:
    v12 = v22;
    v11 = *buf;
    v17 = v23;
LABEL_43:
    if (__osLogTrace)
    {
      v21 = __osLogTrace;
    }

    else
    {
      v21 = v7;
    }

    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v17;
      _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_ERROR, "loadFDRClass -> %{errno}d\n", buf, 8u);
    }

    goto LABEL_36;
  }

  v13 = [MEMORY[0x29EDBA070] numberWithUnsignedShort:classCopy];
  v14 = [&unk_2A1E03A48 containsObject:v13];

  if (v14)
  {
    if (__osLog)
    {
      v15 = __osLog;
    }

    else
    {
      v15 = v7;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v11;
      *&buf[12] = 1024;
      *v25 = classCopy;
      _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEFAULT, "Sending class %@ (%d) to SPRL\n", buf, 0x12u);
    }

    v16 = [(BiometricKitXPCServerPearl *)self loadFDRClassCommand:3 withClass:classCopy withData:v12 isAlternative:alternativeCopy];
    if (v16)
    {
      v17 = v16;
      if (__osLog)
      {
        v18 = __osLog;
      }

      else
      {
        v18 = v7;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        *&buf[4] = "err == 0 ";
        *&buf[12] = 2048;
        *v25 = v17;
        *&v25[8] = 2080;
        v26 = &unk_296D32C0B;
        v27 = 2080;
        v28 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
        v29 = 1024;
        v30 = 5102;
        _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
      }

      goto LABEL_43;
    }
  }

LABEL_30:
  if (__osLogTrace)
  {
    v19 = __osLogTrace;
  }

  else
  {
    v19 = v7;
  }

  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    *&buf[4] = 0;
    _os_log_impl(&dword_296CA4000, v19, OS_LOG_TYPE_DEBUG, "loadFDRClass -> %{errno}d\n", buf, 8u);
  }

  v17 = 0;
LABEL_36:

  return v17;
}

- (int)loadFDRCalibrationData:(BOOL)data
{
  dataCopy = data;
  v50 = *MEMORY[0x29EDCA608];
  v5 = 0x2A18B8000uLL;
  v6 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v7 = __osLogTrace;
  }

  else
  {
    v7 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "loadFDRCalibrationData\n", buf, 2u);
  }

  v39 = 0;
  memset(v38, 0, 23);
  v8 = objc_autoreleasePoolPush();
  if ([(BiometricKitXPCServerPearl *)self getSPRLInfo:&v39])
  {
    [BiometricKitXPCServerPearl loadFDRCalibrationData:];
  }

  else if ([(BiometricKitXPCServerPearl *)self performGetBiometrickitdInfoCommand:v38])
  {
    [BiometricKitXPCServerPearl loadFDRCalibrationData:];
  }

  else
  {
    if (v39 && BYTE6(v38[2]))
    {
      if (__osLog)
      {
        v9 = __osLog;
      }

      else
      {
        v9 = v6;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEFAULT, "FDR Data already loaded.\n", buf, 2u);
      }

LABEL_60:
      v25 = 0;
      goto LABEL_61;
    }

    getChipID = [objc_opt_class() getChipID];
    getBoardID = [objc_opt_class() getBoardID];
    if (getChipID && getBoardID)
    {
      platformProvidesPlCl = [objc_opt_class() platformProvidesPlCl];
      if ([(BiometricKitXPCServerPearl *)self loadFDRClassCommand:1 withClass:0 withData:0 isAlternative:0])
      {
        [BiometricKitXPCServerPearl loadFDRCalibrationData:];
      }

      else
      {
        v37 = v8;
        v13 = 0;
        while (2)
        {
          switch(v13)
          {
            case 0:
            case 2:
            case 5:
            case 6:
            case 7:
            case 13:
            case 15:
              if (!platformProvidesPlCl)
              {
                goto LABEL_37;
              }

              if (__osLog)
              {
                v14 = __osLog;
              }

              else
              {
                v14 = v6;
              }

              if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
              {
                v15 = v14;
                v16 = [(BiometricKitXPCServerPearl *)self classStringForEnum:v13];
                *buf = 138412546;
                v41 = v16;
                v42 = 1024;
                LODWORD(v43) = v13;
                _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_DEFAULT, "Skipping legacy FDR Class: %@ (%d)\n", buf, 0x12u);

                v6 = MEMORY[0x29EDCA988];
              }

              goto LABEL_38;
            case 1:
            case 3:
            case 4:
            case 17:
              goto LABEL_38;
            case 8:
            case 10:
            case 11:
              if (getChipID != 32807 && getChipID != 32816)
              {
                goto LABEL_38;
              }

              goto LABEL_37;
            case 12:
              if ([objc_opt_class() platformProvidesPSD3])
              {
                goto LABEL_38;
              }

              goto LABEL_37;
            case 14:
              if (getChipID == 32807 || getChipID == 32816 || getChipID == 33025 && ![objc_opt_class() getSkipBane])
              {
                goto LABEL_37;
              }

              goto LABEL_38;
            case 18:
              if (platformProvidesPlCl)
              {
                goto LABEL_37;
              }

              goto LABEL_39;
            default:
LABEL_37:
              v17 = [(BiometricKitXPCServerPearl *)self loadFDRClass:v13 alternative:dataCopy];
              if (v17)
              {
                [(BiometricKitXPCServerPearl *)v17 loadFDRCalibrationData:buf];
                goto LABEL_69;
              }

LABEL_38:
              if (++v13 != 19)
              {
                continue;
              }

LABEL_39:
              if (![objc_opt_class() platformProvidesPSD3])
              {
                goto LABEL_54;
              }

              if (dataCopy)
              {
                v18 = [(BiometricKitXPCServerPearl *)self classStringForEnum:17];
                v19 = [(BiometricKitXPCServerPearl *)self pathForAlternateFDRClass:v18];

                v20 = [MEMORY[0x29EDB8E70] fileURLWithPath:v19];
                v21 = [v20 checkResourceIsReachableAndReturnError:0];

                if (v21)
                {
                  if ([(BiometricKitXPCServerPearl *)self loadFDRClass:17 alternative:1])
                  {
                    [BiometricKitXPCServerPearl loadFDRCalibrationData:];
LABEL_102:
                    v25 = *buf;

LABEL_70:
                    v5 = 0x2A18B8000;
                    v8 = v37;
                    goto LABEL_61;
                  }
                }

                else
                {
                  if (__osLog)
                  {
                    v23 = __osLog;
                  }

                  else
                  {
                    v23 = v6;
                  }

                  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_DEFAULT, "Alternative PSD3 not found, trying fallback solution - PSD2\n", buf, 2u);
                  }

                  if ([(BiometricKitXPCServerPearl *)self loadFDRClass:12 alternative:1])
                  {
                    [BiometricKitXPCServerPearl loadFDRCalibrationData:];
                    goto LABEL_102;
                  }
                }
              }

              else
              {
                unwrapBrunorEncryptionKey = [(BiometricKitXPCServerPearl *)self unwrapBrunorEncryptionKey];
                if (unwrapBrunorEncryptionKey)
                {
                  v25 = unwrapBrunorEncryptionKey;
                  v31 = unwrapBrunorEncryptionKey;
                  if (__osLog)
                  {
                    v32 = __osLog;
                  }

                  else
                  {
                    v32 = v6;
                  }

                  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136316162;
                    v41 = "err == 0 ";
                    v42 = 2048;
                    v43 = v31;
                    v44 = 2080;
                    v45 = &unk_296D32C0B;
                    v46 = 2080;
                    v47 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
                    v48 = 1024;
                    v49 = 5225;
                    _os_log_impl(&dword_296CA4000, v32, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                  }

                  if (v25 != 266 && v25 != 259)
                  {
                    if (__osLog)
                    {
                      v36 = __osLog;
                    }

                    else
                    {
                      v36 = MEMORY[0x29EDCA988];
                    }

                    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 136316162;
                      v41 = "err == 0 ";
                      v42 = 2048;
                      v43 = v31;
                      v44 = 2080;
                      v45 = &unk_296D32C0B;
                      v46 = 2080;
                      v47 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
                      v48 = 1024;
                      v49 = 5236;
                      _os_log_impl(&dword_296CA4000, v36, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                    }

                    v6 = MEMORY[0x29EDCA988];
                    goto LABEL_70;
                  }

                  if (__osLog)
                  {
                    v33 = __osLog;
                  }

                  else
                  {
                    v33 = MEMORY[0x29EDCA988];
                  }

                  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
                  {
                    v34 = "PSD3 not found";
                    if (v25 == 266)
                    {
                      v34 = "Unsupported PSD3";
                    }

                    *buf = 136315138;
                    v41 = v34;
                    _os_log_impl(&dword_296CA4000, v33, OS_LOG_TYPE_DEFAULT, "%s, trying fallback solution - PSD2\n", buf, 0xCu);
                  }

                  v35 = [(BiometricKitXPCServerPearl *)self loadFDRClass:12 alternative:0];
                  v6 = MEMORY[0x29EDCA988];
                  if (v35)
                  {
                    [BiometricKitXPCServerPearl loadFDRCalibrationData:];
LABEL_69:
                    v25 = *buf;
                    goto LABEL_70;
                  }
                }

                else if ([(BiometricKitXPCServerPearl *)self loadFDRClass:17 alternative:0])
                {
                  [BiometricKitXPCServerPearl loadFDRCalibrationData:];
                  goto LABEL_69;
                }
              }

LABEL_54:
              if (__osLog)
              {
                v24 = __osLog;
              }

              else
              {
                v24 = v6;
              }

              if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_DEFAULT, "All FDR Classes verified\n", buf, 2u);
              }

              v5 = 0x2A18B8000uLL;
              v8 = v37;
              if (![(BiometricKitXPCServerPearl *)self loadFDRClassCommand:2 withClass:0 withData:0 isAlternative:0])
              {
                goto LABEL_60;
              }

              [BiometricKitXPCServerPearl loadFDRCalibrationData:];
              break;
          }

          break;
        }
      }
    }

    else
    {
      [BiometricKitXPCServerPearl loadFDRCalibrationData:];
    }
  }

  v25 = *buf;
LABEL_61:
  objc_autoreleasePoolPop(v8);
  if ([(BiometricKitXPCServerPearl *)self sendFDRDataCheckResult:v25 == 0])
  {
    [BiometricKitXPCServerPearl loadFDRCalibrationData:];
    if (v25)
    {
LABEL_63:
      [objc_opt_class() reportPearlIssue];
      if (*(v5 + 2040))
      {
        v26 = *(v5 + 2040);
      }

      else
      {
        v26 = v6;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        LODWORD(v41) = v25;
        v27 = v26;
        v28 = OS_LOG_TYPE_ERROR;
LABEL_78:
        _os_log_impl(&dword_296CA4000, v27, v28, "loadFDRCalibrationData -> 0x%x\n", buf, 8u);
        return v25;
      }

      return v25;
    }
  }

  else if (v25)
  {
    goto LABEL_63;
  }

  if (*(v5 + 2040))
  {
    v29 = *(v5 + 2040);
  }

  else
  {
    v29 = v6;
  }

  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v41) = 0;
    v27 = v29;
    v28 = OS_LOG_TYPE_DEBUG;
    goto LABEL_78;
  }

  return v25;
}

- (int)loadPCECalibrationOverride:(id)override
{
  v13 = *MEMORY[0x29EDCA608];
  overrideCopy = override;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "loadPCECalibrationOverride\n", &v11, 2u);
  }

  if (overrideCopy)
  {
    if (!-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 34, 0, [overrideCopy bytes], objc_msgSend(overrideCopy, "length"), 0, 0))
    {
      if (__osLogTrace)
      {
        v7 = __osLogTrace;
      }

      else
      {
        v7 = v5;
      }

      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v11 = 67109120;
        v12 = 0;
        _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEBUG, "loadPCECalibrationOverride -> %{errno}d\n", &v11, 8u);
      }

      v8 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServerPearl loadPCECalibrationOverride:];
  }

  else
  {
    [BiometricKitXPCServerPearl loadPCECalibrationOverride:];
  }

  v8 = v11;
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = v5;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = 67109120;
    v12 = v8;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_ERROR, "loadPCECalibrationOverride -> %{errno}d\n", &v11, 8u);
  }

LABEL_14:

  return v8;
}

- (int)unwrapBrunorEncryptionKey
{
  v27 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "unwrapBrunorEncryptionKey\n", buf, 2u);
  }

  v20 = 0;
  v4 = [(BiometricKitXPCServerPearl *)self getFDRClassFromFDR:17 withOptions:0 withError:&v20];
  v5 = v20;
  if (!v4)
  {
    [BiometricKitXPCServerPearl unwrapBrunorEncryptionKey];
    goto LABEL_48;
  }

  if ([v4 length] <= 0x5B)
  {
    [BiometricKitXPCServerPearl unwrapBrunorEncryptionKey];
    goto LABEL_48;
  }

  if (v5)
  {
    [BiometricKitXPCServerPearl unwrapBrunorEncryptionKey];
LABEL_48:
    v11 = *buf;
LABEL_32:
    if (__osLogTrace)
    {
      v15 = __osLogTrace;
    }

    else
    {
      v15 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v22) = v11;
      _os_log_impl(&dword_296CA4000, v15, OS_LOG_TYPE_ERROR, "unwrapBrunorEncryptionKey -> 0x%x\n", buf, 8u);
    }

    goto LABEL_44;
  }

  v18 = 0;
  v6 = 1000000;
  v19 = v4;
  bytes = [v4 bytes];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 263;
  while (1)
  {
    if (v5 || v8 || v9)
    {
      if (__osLog)
      {
        v12 = __osLog;
      }

      else
      {
        v12 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = "unknown reason";
        if (v10)
        {
          v13 = v10;
        }

        *buf = 136315650;
        v22 = v13;
        v23 = 1024;
        v24 = v11;
        v25 = 2048;
        v26 = v6 / 1000000.0;
        _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEFAULT, "FDR encryption key unwrapping failed due to %s (%d). Retrying after %.2fs.\n", buf, 0x1Cu);
      }

      usleep(v6);
    }

    v14 = [(BiometricKitXPCServerPearl *)self performCommand:81 inValue:0 inData:bytes inSize:92 outData:0 outSize:0, v18];
    v11 = v14;
    if (v14 == 264)
    {
      ++v9;
      v10 = "camera response timeout";
      goto LABEL_27;
    }

    if (v14 != 17)
    {
      break;
    }

    ++v8;
    v10 = "camera error";
LABEL_27:
    v6 = 1000000;
LABEL_28:
    if (v5 > 0x78 || v8 > 0x3C || v9 >= 6)
    {
      goto LABEL_31;
    }
  }

  if (v14 == 16)
  {
    ++v5;
    v6 = 500000;
    v10 = "camera being busy";
    goto LABEL_28;
  }

  v5 = v18;
  v4 = v19;
  if (!v14)
  {
    goto LABEL_38;
  }

LABEL_31:
  v5 = v18;
  v4 = v19;
  if (![BiometricKitXPCServerPearl unwrapBrunorEncryptionKey])
  {
    goto LABEL_32;
  }

LABEL_38:
  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    LODWORD(v22) = 0;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_DEBUG, "unwrapBrunorEncryptionKey -> 0x%x\n", buf, 8u);
  }

  v11 = 0;
LABEL_44:

  return v11;
}

- (void)loadCalibrationData
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (id)filenameForSavageCertType:(id)type
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = [type unsignedIntValue] - 1;
  if (v3 >= 6)
  {
    if (__osLog)
    {
      v9 = __osLog;
    }

    else
    {
      v9 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136316162;
      *&buf[4] = "0";
      v13 = 2048;
      v14 = 0;
      v15 = 2080;
      v16 = &unk_296D32C0B;
      v17 = 2080;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v19 = 1024;
      v20 = 5463;
      _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    }

    v8 = 0;
    v6 = 0;
  }

  else
  {
    v4 = off_29EE54920[v3];
    mEMORY[0x29EDC5808] = [MEMORY[0x29EDC5808] sharedDataAccessor];
    v6 = [mEMORY[0x29EDC5808] copyPathForPersonalizedData:0 error:0];

    if (v6)
    {
      v7 = [v6 stringByAppendingPathComponent:v4];
      if (v7)
      {
        v8 = v7;
        goto LABEL_11;
      }

      [(BiometricKitXPCServerPearl *)v6 filenameForSavageCertType:buf];
    }

    else
    {
      [BiometricKitXPCServerPearl filenameForSavageCertType:];
    }

    v8 = v11;
    v6 = *buf;
  }

LABEL_11:

  return v8;
}

- (int)loadSavageFWCertificate
{
  v34 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEBUG, "loadSavageFWCertificate\n", buf, 2u);
  }

  v30 = 0;
  if ([(BiometricKitXPCServerPearl *)self getSPRLInfo:&v30])
  {
    [BiometricKitXPCServerPearl loadSavageFWCertificate];
    LODWORD(v5) = *buf;
  }

  else if (HIBYTE(v30))
  {
    LODWORD(v5) = 0;
  }

  else
  {
    v29 = 0;
    v6 = [(BiometricKitXPCServerPearl *)self getSensorFamily:&v29];
    if (v6)
    {
      LODWORD(v5) = v6;
      [BiometricKitXPCServerPearl loadSavageFWCertificate];
    }

    else
    {
      v25 = 0u;
      v26 = 0u;
      if (v29 == 3)
      {
        v7 = &unk_2A1E03A78;
      }

      else
      {
        v7 = &unk_2A1E03A60;
      }

      v27 = 0uLL;
      v28 = 0uLL;
      v8 = v7;
      v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
LABEL_15:
        v12 = 0;
        while (1)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v25 + 1) + 8 * v12);
          v14 = [(BiometricKitXPCServerPearl *)self filenameForSavageCertType:v13, v25];
          if (!v14)
          {
            break;
          }

          v15 = [MEMORY[0x29EDB8DA0] dataWithContentsOfFile:v14];
          if (!v15)
          {
            [BiometricKitXPCServerPearl loadSavageFWCertificate];
            goto LABEL_28;
          }

          v16 = v15;
          v17 = [v15 length];
          v18 = v17 + 8;
          if (v17 >= 0xFFFFFFFFFFFFFFF8)
          {
            [(BiometricKitXPCServerPearl *)v16 loadSavageFWCertificate];
            LODWORD(v5) = 1;
            goto LABEL_32;
          }

          v19 = malloc_type_malloc(v17 + 8, 0x309DEF15uLL);
          if (!v19)
          {
            [(BiometricKitXPCServerPearl *)v16 loadSavageFWCertificate];
            LODWORD(v5) = 260;
            goto LABEL_32;
          }

          v20 = v19;
          *v19 = [v13 unsignedIntValue];
          v20[1] = [v16 length];
          memcpy(v20 + 2, [v16 bytes], objc_msgSend(v16, "length"));
          v5 = [(BiometricKitXPCServerPearl *)self performCommand:47 inValue:0 inData:v20 inSize:v18 outData:0 outSize:0];
          free(v20);
          if (v5)
          {
            [(BiometricKitXPCServerPearl *)v5 loadSavageFWCertificate];
            goto LABEL_32;
          }

          if (v10 == ++v12)
          {
            v10 = [v8 countByEnumeratingWithState:&v25 objects:v33 count:16];
            if (v10)
            {
              goto LABEL_15;
            }

            goto LABEL_25;
          }
        }

        [BiometricKitXPCServerPearl loadSavageFWCertificate];
LABEL_28:
        LODWORD(v5) = *buf;
LABEL_32:

        goto LABEL_33;
      }

LABEL_25:
      LODWORD(v5) = 0;
LABEL_33:
      v3 = MEMORY[0x29EDCA988];
    }
  }

  if ([(BiometricKitXPCServerPearl *)self sendSavageFWCertCheckResult:v5 == 0])
  {
    [BiometricKitXPCServerPearl loadSavageFWCertificate];
  }

  if (__osLogTrace)
  {
    v21 = __osLogTrace;
  }

  else
  {
    v21 = v3;
  }

  if (v5)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v32 = v5;
      v22 = v21;
      v23 = OS_LOG_TYPE_ERROR;
LABEL_44:
      _os_log_impl(&dword_296CA4000, v22, v23, "loadSavageFWCertificate -> %{errno}d\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v32 = 0;
    v22 = v21;
    v23 = OS_LOG_TYPE_DEBUG;
    goto LABEL_44;
  }

  return v5;
}

- (BOOL)cameraIndicatorControlAllowedForClient:(id)client
{
  clientCopy = client;
  if (isInternalBuild() && MGGetBoolAnswer())
  {
    exportedObject = [clientCopy exportedObject];
    connection = [exportedObject connection];
    v6 = [connection valueForEntitlement:@"com.apple.private.biometrickit.camera-indicator-control"];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)createEnrollOperation
{
  v2 = objc_alloc_init(BiometricEnrollOperationPearl);

  return v2;
}

- (int)initEnrollOperation:(id)operation biometricType:(int)type userID:(unsigned int)d options:(id)options client:(id)client
{
  v9 = *&d;
  v10 = *&type;
  operationCopy = operation;
  optionsCopy = options;
  clientCopy = client;
  v25 = 0;
  v24 = 0;
  if (!operationCopy)
  {
    [BiometricKitXPCServerPearl initEnrollOperation:biometricType:userID:options:client:];
    goto LABEL_21;
  }

  v23.receiver = self;
  v23.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v23 initEnrollOperation:operationCopy biometricType:v10 userID:v9 options:optionsCopy client:clientCopy])
  {
    [BiometricKitXPCServerPearl initEnrollOperation:biometricType:userID:options:client:];
    goto LABEL_21;
  }

  if (optionsCopy)
  {
    if (!dictionaryGetInteger())
    {
      v15 = [optionsCopy objectForKeyedSubscript:@"BKOptionEnrollAugmentedIdentity"];
      if (v15)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [BiometricKitXPCServerPearl initEnrollOperation:biometricType:userID:options:client:];
          goto LABEL_25;
        }

        userID = [v15 userID];
        *[operationCopy augmentedIdentity] = userID;
        uuid = [v15 uuid];
        [uuid getUUIDBytes:{objc_msgSend(operationCopy, "augmentedIdentity") + 4}];
      }

      if (!dictionaryGetBool())
      {
        v22 = 0;
        Integer = dictionaryGetInteger();
        if (Integer)
        {
          v20 = Integer;
          [BiometricKitXPCServerPearl initEnrollOperation:&v22 biometricType:v15 userID:? options:? client:?];
          goto LABEL_17;
        }

        [operationCopy setPeriocularGlassesRequirement:v22];

        v19 = v25;
        goto LABEL_12;
      }

      [BiometricKitXPCServerPearl initEnrollOperation:biometricType:userID:options:client:];
LABEL_25:
      v20 = v22;

      goto LABEL_17;
    }

    [BiometricKitXPCServerPearl initEnrollOperation:biometricType:userID:options:client:];
LABEL_21:
    v20 = v22;
    goto LABEL_17;
  }

  v19 = 0;
LABEL_12:
  [operationCopy setEnrollmentType:v19];
  [operationCopy setClientToComplete:v24];
  if (v24 == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 2}];
  }

  if ([(BiometricKitXPCServerPearl *)self cameraIndicatorControlAllowedForClient:clientCopy])
  {
    [operationCopy activateCameraIndicator];
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (int)performEnrollCommand:(id)command
{
  v23 = *MEMORY[0x29EDCA608];
  commandCopy = command;
  v5 = commandCopy;
  v22 = 0;
  v21 = 0;
  if (!commandCopy)
  {
    [BiometricKitXPCServerPearl performEnrollCommand:];
LABEL_9:
    v11 = v13;
    goto LABEL_6;
  }

  v14[0] = [commandCopy processedFlags];
  v14[1] = [v5 userID];
  v14[2] = [v5 enrollmentType];
  augmentedIdentity = [v5 augmentedIdentity];
  v7 = *(augmentedIdentity + 16);
  v15 = *augmentedIdentity;
  v16 = v7;
  authData = [v5 authData];
  v9 = *(authData + 32);
  v10 = *(authData + 16);
  v17 = *authData;
  v18 = v10;
  v19 = v9;
  periocularGlassesRequirement = [v5 periocularGlassesRequirement];
  if ([(BiometricKitXPCServerPearl *)self performCommand:3 inValue:0 inData:v14 inSize:76 outData:0 outSize:0])
  {
    [BiometricKitXPCServerPearl performEnrollCommand:];
    goto LABEL_9;
  }

  if ([MEMORY[0x29EDBFD70] didDisplayPearlGlassesBannerNotificationRecently:180.0])
  {
    +[PearlCoreAnalytics sendEnrollPearlGlassesBannerNotificationEvent];
  }

  [(BiometricKitXPCServerPearl *)self checkBioLogConsent];
  v11 = 0;
LABEL_6:

  return v11;
}

- (id)createMatchOperation
{
  v2 = objc_alloc_init(BiometricMatchOperationPearl);

  return v2;
}

- (int)initMatchOperation:(id)operation filter:(id)filter options:(id)options client:(id)client
{
  operationCopy = operation;
  filterCopy = filter;
  optionsCopy = options;
  clientCopy = client;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  if (!operationCopy)
  {
    [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    goto LABEL_37;
  }

  v19.receiver = self;
  v19.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v19 initMatchOperation:operationCopy filter:filterCopy options:optionsCopy client:clientCopy])
  {
    [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    goto LABEL_37;
  }

  if (optionsCopy)
  {
    if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    }

    else if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    }

    else if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
    }

    else
    {
      if (HIBYTE(v22) == 1)
      {
        v14 = [optionsCopy objectForKeyedSubscript:@"BKOptionMatchPreAugmentationCheckIdentity"];
        if (v14)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [BiometricKitXPCServerPearl initMatchOperation:v14 filter:? options:? client:?];
            v17 = 258;
            goto LABEL_28;
          }

          userID = [v14 userID];
          *[operationCopy preAugmentationCheckIdentity] = userID;
          uuid = [v14 uuid];
          [uuid getUUIDBytes:{objc_msgSend(operationCopy, "preAugmentationCheckIdentity") + 4}];
        }
      }

      if (dictionaryGetBool())
      {
        [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
      }

      else if (dictionaryGetInteger())
      {
        [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
      }

      else
      {
        if (!dictionaryGetBool())
        {
          goto LABEL_15;
        }

        [BiometricKitXPCServerPearl initMatchOperation:filter:options:client:];
      }
    }

LABEL_37:
    v17 = v24;
    goto LABEL_28;
  }

LABEL_15:
  [operationCopy setLongTimeout:HIBYTE(v23)];
  [operationCopy setAutoRetry:v23];
  [operationCopy setPreAugmentationCheck:HIBYTE(v22)];
  [operationCopy setFullFaceOnly:v22];
  [operationCopy setTrigger:v21];
  if (HIBYTE(v23) == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 0x800}];
  }

  if (v23 == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 0x1000}];
  }

  if (HIBYTE(v22) == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 0x8000}];
  }

  if (v22 == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 0x10000}];
  }

  if (v20 == 1)
  {
    [operationCopy setProcessedFlags:{objc_msgSend(operationCopy, "processedFlags") | 0x40000}];
  }

  if ([(BiometricKitXPCServerPearl *)self cameraIndicatorControlAllowedForClient:clientCopy])
  {
    [operationCopy activateCameraIndicator];
  }

  v17 = 0;
LABEL_28:

  return v17;
}

- (int)setSecureFaceDetectState:(int)state sessionID:(unsigned int)d
{
  v5 = *&state;
  kdebug_trace();
  LODWORD(v9) = self->_secureFaceDetectRequestDispatchSource;
  WORD2(v9) = WORD2(self->_secureFaceDetectRequestDispatchSource);
  [self->_pearlDeviceState logSecureFaceDetectState:{v5, __PAIR64__(v5, d), v9}];
  return [(BiometricKitXPCServerPearl *)self performCommand:83 inValue:0 inData:&v8 inSize:14 outData:0 outSize:0];
}

- (void)processMetadataObjects:(id)objects
{
  v96 = *MEMORY[0x29EDCA608];
  objectsCopy = objects;
  if (__osLog)
  {
    v5 = __osLog;
  }

  else
  {
    v5 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v84 = objectsCopy;
    _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "processMetadataObjects:%@\n", buf, 0xCu);
  }

  date = [MEMORY[0x29EDB8DB0] date];
  memset(v82, 0, 42);
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v7 = objectsCopy;
  v8 = [v7 countByEnumeratingWithState:&v78 objects:v95 count:16];
  if (!v8)
  {

LABEL_119:
    v65 = 0;
    LOBYTE(v82[0]) = 1;
    v66 = 64;
LABEL_131:
    [(BiometricKitXPCServerPearl *)self faceDetectMessage:v66 info:v82 fromSecureFD:1];
    goto LABEL_132;
  }

  v9 = v8;
  v68 = date;
  v72 = 0;
  v75 = 0;
  v10 = *v79;
  v11 = *MEMORY[0x29EDBD598];
  v12 = *MEMORY[0x29EDBD590];
  v76 = *MEMORY[0x29EDBD588];
  v74 = *MEMORY[0x29EDBD5A0];
  v73 = v7;
  do
  {
    v13 = 0;
    do
    {
      if (*v79 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v14 = *(*(&v78 + 1) + 8 * v13);
      type = [v14 type];

      if (type != v11)
      {
        type2 = [v14 type];

        if (type2 != v12)
        {
          type3 = [v14 type];

          if (type3 == v76)
          {
            v41 = v14;
            eyeReliefStatus = [v41 eyeReliefStatus];
            if ((eyeReliefStatus - 1) < 5)
            {
              v43 = eyeReliefStatus;
            }

            else
            {
              v43 = 0;
            }

            *(v82 + 7) = v43;
            if ([v41 hasDistance])
            {
              [v41 distance];
              *(v82 + 5) = v44;
            }

            goto LABEL_95;
          }

          type4 = [v14 type];

          if (type4 == v74 && HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) == 2 && (self->_secureFaceDetectRequestMessage.loggingSequenceId.number & 8) != 0)
          {
            v19 = v14;
            detectedMotion = [v19 detectedMotion];
            if (detectedMotion)
            {
              if (detectedMotion == 2)
              {
                LODWORD(v72) = 2;
              }

              else
              {
                if (detectedMotion == 1)
                {
                  v72 = 0x100000001;
                  goto LABEL_95;
                }

                if (__osLog)
                {
                  v54 = __osLog;
                }

                else
                {
                  v54 = MEMORY[0x29EDCA988];
                }

                if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
                {
                  v55 = v54;
                  detectedMotion2 = [v19 detectedMotion];
                  *buf = 134217984;
                  *v84 = detectedMotion2;
                  _os_log_impl(&dword_296CA4000, v55, OS_LOG_TYPE_ERROR, "Unknown value of 'detectedMotion': %lu\n", buf, 0xCu);
                }
              }
            }

            else
            {
              LODWORD(v72) = 0;
            }

            BYTE4(v72) = 1;
            goto LABEL_95;
          }

          goto LABEL_96;
        }

        v23 = v14;
        v24 = 0.0;
        if ([v23 hasRollAngle])
        {
          [v23 rollAngle];
          v24 = v25 - *&self->_secureFaceDetectSessionID;
          if (v24 <= -180.0)
          {
            v24 = v24 + 360.0;
          }
        }

        nanotime_high = HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime);
        if (nanotime_high != 2)
        {
          if (nanotime_high == 1 && (*(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) & 1) == 0)
          {
            if ([v23 hasOccludedFeatures])
            {
              occludedFeatures = [v23 occludedFeatures];
              buf[0] = occludedFeatures;
              if (BYTE4(self->_secureFaceDetectRequestDispatchSource) != occludedFeatures)
              {
                v28 = [MEMORY[0x29EDB8DA0] dataWithBytes:buf length:1];
                [(BiometricKitXPCServerPearl *)self statusMessage:1071 withData:v28 timestamp:0];

                BYTE4(self->_secureFaceDetectRequestDispatchSource) = buf[0];
              }

              v7 = v73;
            }

            if ([v23 hasPitchAngle] && objc_msgSend(v23, "hasYawAngle") && objc_msgSend(v23, "hasRollAngle") && objc_msgSend(v23, "hasDistance"))
            {
              v77 = 0;
              [v23 pitchAngle];
              if (v29 >= -55.0)
              {
                [v23 pitchAngle];
                if (v30 <= 5.0)
                {
                  [v23 yawAngle];
                  if (v31 >= -25.0)
                  {
                    [v23 yawAngle];
                    if (v24 <= 15.0 && v24 >= -15.0 && v57 <= 25.0)
                    {
                      [v23 distance];
                      if (v58 >= 200.0)
                      {
                        [v23 distance];
                        if (v59 <= 490.0)
                        {
                          [v23 bounds];
                          if (v60 >= 165.0)
                          {
                            [v23 bounds];
                            if (v61 <= 550.0)
                            {
                              [v23 bounds];
                              if (v62 >= 165.0)
                              {
                                [v23 bounds];
                                if (v63 <= 550.0)
                                {
                                  v77 = 1;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }

              if (__osLog)
              {
                v32 = __osLog;
              }

              else
              {
                v32 = MEMORY[0x29EDCA988];
              }

              if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
              {
                log = v32;
                [v23 pitchAngle];
                v70 = v33;
                [v23 yawAngle];
                v69 = v34;
                [v23 distance];
                v36 = v35;
                [v23 bounds];
                v38 = v37;
                [v23 bounds];
                *buf = 67110656;
                *v84 = v70;
                *&v84[4] = 1024;
                *&v84[6] = v69;
                v85 = 1024;
                v86 = v24;
                v87 = 1024;
                v88 = v36;
                v89 = 1024;
                v90 = v38;
                v91 = 1024;
                v92 = v39;
                v93 = 1024;
                v94 = v77;
                _os_log_impl(&dword_296CA4000, log, OS_LOG_TYPE_DEFAULT, "pitch=%d, yaw=%d, roll=%d, distance=%d, faceRectW=%d, faceRectH=%d --> wuPoseEligible: %u\n", buf, 0x2Cu);
              }

              if (v77 != BYTE5(self->_secureFaceDetectRequestDispatchSource))
              {
                v40 = [MEMORY[0x29EDB8DA0] dataWithBytes:&v77 length:1];
                [(BiometricKitXPCServerPearl *)self statusMessage:1072 withData:v40 timestamp:0];

                BYTE5(self->_secureFaceDetectRequestDispatchSource) = v77;
              }

              goto LABEL_86;
            }
          }

          goto LABEL_95;
        }

        if ((self->_secureFaceDetectRequestMessage.loggingSequenceId.number & 1) == 0)
        {
          v45 = 1;
          goto LABEL_65;
        }

        if ([v23 hasPayingAttention])
        {
          v45 = [v23 payingAttention] | v75;
LABEL_65:
          v75 = v45;
        }

        if ([v23 hasPitchAngle])
        {
          [v23 pitchAngle];
          *&v46 = v46;
          *(v82 + 13) = LODWORD(v46);
        }

        if ([v23 hasYawAngle])
        {
          [v23 yawAngle];
          *&v47 = v47;
          *(&v82[1] + 1) = LODWORD(v47);
        }

        if ([v23 hasRollAngle])
        {
          v48 = v24;
          *(&v82[1] + 5) = v48;
        }

        if ([v23 hasDistance])
        {
          [v23 distance];
          *(v82 + 3) = v49;
        }

        if ([v23 hasOrientation])
        {
          orientation = [v23 orientation];
          if ((orientation - 1) < 4)
          {
            v51 = orientation;
          }

          else
          {
            v51 = 0;
          }

          *(v82 + 9) = v51;
        }

        if ([v23 hasConfidence])
        {
          [v23 confidence];
          *&v52 = v52 * 100.0;
          *(&v82[2] + 1) = LODWORD(v52);
        }

        goto LABEL_95;
      }

      if (HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) == 1 && (*(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) & 1) == 0)
      {
        v21 = v14;
        v75 |= [v21 isReady];
        if ([v21 coachingStatus] == -1)
        {
          goto LABEL_95;
        }

        *buf = [v21 coachingStatus] == 0;
        if (([v21 coachingStatus] & 4) != 0)
        {
          v22 = 4;
        }

        else if (([v21 coachingStatus] & 0x40) != 0 || (objc_msgSend(v21, "coachingStatus") & 0x100) != 0)
        {
          v22 = 8;
        }

        else if (([v21 coachingStatus] & 0x800) != 0)
        {
          v22 = 11;
        }

        else if (([v21 coachingStatus] & 0x400) != 0)
        {
          v22 = 10;
        }

        else
        {
          if (([v21 coachingStatus] & 8) == 0)
          {
            v22 = *buf;
            if (!*buf)
            {
              goto LABEL_86;
            }

LABEL_84:
            if (v22 != LODWORD(self->_secureFaceDetectRequestDispatchSource))
            {
              v53 = [MEMORY[0x29EDB8DA0] dataWithBytes:buf length:4];
              [(BiometricKitXPCServerPearl *)self statusMessage:1067 withData:v53 timestamp:0];

              LODWORD(self->_secureFaceDetectRequestDispatchSource) = *buf;
            }

LABEL_86:
            v7 = v73;
LABEL_95:

            goto LABEL_96;
          }

          v22 = 13;
        }

        *buf = v22;
        goto LABEL_84;
      }

LABEL_96:
      ++v13;
    }

    while (v9 != v13);
    v64 = [v7 countByEnumeratingWithState:&v78 objects:v95 count:16];
    v9 = v64;
  }

  while (v64);

  v65 = v75;
  if ((v75 & 1) == 0)
  {
    date = v68;
    if ((v72 & 0x100000000) != 0)
    {
      v65 = 0;
      goto LABEL_129;
    }

    goto LABEL_119;
  }

  date = v68;
  if ((*(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) & 1) == 0)
  {
    *(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) = 1;
    if (HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) == 1)
    {
      if (__osLog)
      {
        v67 = __osLog;
      }

      else
      {
        v67 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296CA4000, v67, OS_LOG_TYPE_DEFAULT, "Secure face detect succeeded\n", buf, 2u);
      }

      if ([(BiometricKitXPCServerPearl *)self setSecureFaceDetectState:1 sessionID:LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime)])
      {
        [BiometricKitXPCServerPearl processMetadataObjects:];
      }
    }

    [objc_opt_class() reportPearlInterlock:0];
    v65 = 1;
    if ((v72 & 0x100000000) != 0)
    {
      goto LABEL_129;
    }

LABEL_130:
    LOBYTE(v82[0]) = 1;
    v66 = 63;
    goto LABEL_131;
  }

  if ((v72 & 0x100000000) == 0)
  {
    v65 = 1;
    goto LABEL_130;
  }

LABEL_129:
  [(BiometricKitXPCServerPearl *)self motionDetectMessage:1076 info:0 state:v72];
LABEL_132:
  *(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 2) = [v7 count] == 0;
  [self->_pearlDeviceState logSecureFrameMeta:v7 timestamp:date];
  [*&self->_logSequenceDebug analyzeSecureFrameMeta:v7 faceDetected:v65 & 1];
}

- (void)captureOutput:(id)output didOutputMetadataObjects:(id)objects fromConnection:(id)connection
{
  v20 = *MEMORY[0x29EDCA608];
  outputCopy = output;
  objectsCopy = objects;
  connectionCopy = connection;
  kdebug_trace();
  if (__osLog)
  {
    v11 = __osLog;
  }

  else
  {
    v11 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412802;
    v15 = outputCopy;
    v16 = 2112;
    v17 = objectsCopy;
    v18 = 2112;
    v19 = connectionCopy;
    _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEFAULT, "AVC delegate: captureOutput:%@ didOutputMetadataObjects:%@ fromConnection:%@\n", &v14, 0x20u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  if (*&self->_performCommandBufferInUse)
  {
    [(BiometricKitXPCServerPearl *)self processMetadataObjects:objectsCopy];
    captureOutput_didOutputMetadataObjects_fromConnection__unexpectedCallsCount = 0;
  }

  else if ((captureOutput_didOutputMetadataObjects_fromConnection__abcEventSent & 1) == 0 && ++captureOutput_didOutputMetadataObjects_fromConnection__unexpectedCallsCount >= 0x32)
  {
    biometricABC = [(BiometricKitXPCServer *)self biometricABC];
    v13 = [biometricABC sendAutoBugCaptureEvent:8];

    if ((v13 & 1) == 0)
    {
      [BiometricKitXPCServerPearl captureOutput:didOutputMetadataObjects:fromConnection:];
    }

    captureOutput_didOutputMetadataObjects_fromConnection__abcEventSent = 1;
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue unlock];
}

- (int)initSecureFaceDetect
{
  v52[2] = *MEMORY[0x29EDCA608];
  kdebug_trace();
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "initSecureFaceDetect\n", buf, 2u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  if (*&self->_performCommandBufferInUse)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  if ((BYTE4(self->_performCommandBufferData) & 1) == 0)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  v4 = os_transaction_create();
  v5 = *&self->_avcSessionState;
  *&self->_avcSessionState = v4;

  v6 = [MEMORY[0x29EDBD5A8] defaultDeviceWithDeviceType:*MEMORY[0x29EDBD530] mediaType:*MEMORY[0x29EDBD5C8] position:2];
  avcSessionTransaction = self->_avcSessionTransaction;
  self->_avcSessionTransaction = v6;

  if (!self->_avcSessionTransaction)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  v8 = objc_alloc_init(MEMORY[0x29EDBD5C0]);
  avcOutput = self->_avcOutput;
  self->_avcOutput = v8;

  v10 = self->_avcOutput;
  if (!v10)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  [(AVCaptureMetadataOutput *)v10 beginConfiguration];
  v11 = [objc_alloc(MEMORY[0x29EDBD5B0]) initWithDevice:self->_avcSessionTransaction error:0];
  avcDevice = self->_avcDevice;
  self->_avcDevice = v11;

  if (!self->_avcDevice)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  if (([(AVCaptureMetadataOutput *)self->_avcOutput canAddInput:?]& 1) == 0)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  [(AVCaptureMetadataOutput *)self->_avcOutput addInput:self->_avcDevice];
  v13 = objc_alloc_init(MEMORY[0x29EDBD5B8]);
  avcInput = self->_avcInput;
  self->_avcInput = v13;

  v15 = self->_avcInput;
  if (!v15)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  [(AVCaptureDeviceInput *)v15 setMetadataObjectsDelegate:self queue:self->_avcObservers];
  if (([(AVCaptureMetadataOutput *)self->_avcOutput canAddOutput:self->_avcInput]& 1) == 0)
  {
    [BiometricKitXPCServerPearl initSecureFaceDetect];
    goto LABEL_45;
  }

  [(AVCaptureMetadataOutput *)self->_avcOutput addOutput:self->_avcInput];
  [(AVCaptureDeviceInput *)self->_avcInput setAttentionDetectionEnabled:1];
  nanotime_high = HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime);
  if (nanotime_high == 2)
  {
    v20 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
    if ((v20 & 4) != 0)
    {
      v21 = *MEMORY[0x29EDBD588];
      v51[0] = *MEMORY[0x29EDBD590];
      v51[1] = v21;
      v19 = [MEMORY[0x29EDB8D80] arrayWithObjects:v51 count:2];
    }

    else
    {
      if ((v20 & 8) != 0)
      {
        v50 = *MEMORY[0x29EDBD5A0];
        [MEMORY[0x29EDB8D80] arrayWithObjects:&v50 count:1];
      }

      else
      {
        v49 = *MEMORY[0x29EDBD590];
        [MEMORY[0x29EDB8D80] arrayWithObjects:&v49 count:1];
      }
      v19 = ;
    }

LABEL_27:
    v22 = v19;
    [(AVCaptureDeviceInput *)self->_avcInput setMetadataObjectTypes:v19];

    goto LABEL_28;
  }

  if (nanotime_high == 1)
  {
    v17 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
    if ((v17 & 2) != 0)
    {
      [(AVCaptureDeviceInput *)self->_avcInput setPeriocularForFaceIDReadinessEnabled:1];
      v17 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
    }

    if (v17)
    {
      [(AVCaptureDeviceInput *)self->_avcInput setAttentionForFaceIDReadinessRequired:1];
    }

    [(AVCaptureDeviceInput *)self->_avcInput setFaceOcclusionDetectionEnabled:1];
    v18 = *MEMORY[0x29EDBD598];
    v52[0] = *MEMORY[0x29EDBD590];
    v52[1] = v18;
    v19 = [MEMORY[0x29EDB8D80] arrayWithObjects:v52 count:2];
    goto LABEL_27;
  }

LABEL_28:
  [(AVCaptureMetadataOutput *)self->_avcOutput commitConfiguration];
  array = [MEMORY[0x29EDB8DE8] array];
  avcSession = self->_avcSession;
  self->_avcSession = array;

  if (self->_avcSession)
  {
    objc_initWeak(buf, self);
    v46[0] = MEMORY[0x29EDCA5F8];
    v46[1] = 3221225472;
    v46[2] = __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke;
    v46[3] = &unk_29EE547D8;
    objc_copyWeak(&v47, buf);
    v46[4] = self;
    v25 = MEMORY[0x29C262C70](v46);
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    v27 = *MEMORY[0x29EDBD570];
    v28 = self->_avcOutput;
    v44[0] = MEMORY[0x29EDCA5F8];
    v44[1] = 3221225472;
    v44[2] = __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_846;
    v44[3] = &unk_29EE54800;
    v29 = v25;
    v45 = v29;
    v30 = [defaultCenter addObserverForName:v27 object:v28 queue:0 usingBlock:v44];

    [(AVCaptureSession *)self->_avcSession addObject:v30];
    defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
    v32 = [defaultCenter2 addObserverForName:*MEMORY[0x29EDBD558] object:self->_avcOutput queue:0 usingBlock:&__block_literal_global_849];

    [(AVCaptureSession *)self->_avcSession addObject:v32];
    defaultCenter3 = [MEMORY[0x29EDBA068] defaultCenter];
    v34 = [defaultCenter3 addObserverForName:*MEMORY[0x29EDBD560] object:self->_avcOutput queue:0 usingBlock:&__block_literal_global_852];

    [(AVCaptureSession *)self->_avcSession addObject:v34];
    defaultCenter4 = [MEMORY[0x29EDBA068] defaultCenter];
    v36 = [defaultCenter4 addObserverForName:*MEMORY[0x29EDBD578] object:self->_avcOutput queue:0 usingBlock:&__block_literal_global_855];

    [(AVCaptureSession *)self->_avcSession addObject:v36];
    defaultCenter5 = [MEMORY[0x29EDBA068] defaultCenter];
    v38 = [defaultCenter5 addObserverForName:*MEMORY[0x29EDBD568] object:self->_avcOutput queue:0 usingBlock:&__block_literal_global_858];

    [(AVCaptureSession *)self->_avcSession addObject:v38];
    objc_destroyWeak(&v47);
    objc_destroyWeak(buf);
    [(BiometricKitXPCServerPearl *)self clearSecureFaceDetectContext];
    *&self->_performCommandBufferInUse = 1;
    [*(&self->super.super.isa + v43) unlock];
    if (__osLogTrace)
    {
      v39 = __osLogTrace;
    }

    else
    {
      v39 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = 0;
      _os_log_impl(&dword_296CA4000, v39, OS_LOG_TYPE_DEBUG, "initSecureFaceDetect: -> %d\n", buf, 8u);
    }

    v40 = 0;
    goto LABEL_35;
  }

  [BiometricKitXPCServerPearl initSecureFaceDetect];
LABEL_45:
  v40 = *buf;
  [(BiometricKitXPCServerPearl *)self deinitSecureFaceDetect];
  [*(&self->super.super.isa + v43) unlock];
  if (__osLogTrace)
  {
    v42 = __osLogTrace;
  }

  else
  {
    v42 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v40;
    _os_log_impl(&dword_296CA4000, v42, OS_LOG_TYPE_ERROR, "initSecureFaceDetect: -> %d\n", buf, 8u);
  }

LABEL_35:
  kdebug_trace();
  return v40;
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained[74];
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2;
  block[3] = &unk_29EE547B0;
  objc_copyWeak(&v11, (a1 + 40));
  v6 = *(a1 + 32);
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, block);

  objc_destroyWeak(&v11);
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained[76] lock];
  if (*(WeakRetained + 134))
  {
    v3 = [a1[4] object];
    v4 = WeakRetained[72];

    if (v3 == v4)
    {
      if ([WeakRetained setSecureFaceDetectState:2 sessionID:*(WeakRetained + 164)])
      {
        __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2_cold_2();
      }

      [a1[5] stopSecureFaceDetect];
    }

    else
    {
      v5 = [a1[4] object];
      v6 = WeakRetained[72];

      if (v5 != v6)
      {
        __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2_cold_1();
      }
    }
  }

  [WeakRetained[76] unlock];
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_846(uint64_t a1, void *a2)
{
  v3 = a2;
  kdebug_trace();
  if (__osLog)
  {
    v4 = __osLog;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionRuntimeErrorNotification\n", v5, 2u);
  }

  (*(*(a1 + 32) + 16))();
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_847()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionDidStartRunningNotification\n", v1, 2u);
  }
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_850()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionDidStopRunningNotification\n", v1, 2u);
  }
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_853()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionWasInterruptedNotification\n", v1, 2u);
  }
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_856()
{
  if (__osLog)
  {
    v0 = __osLog;
  }

  else
  {
    v0 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_296CA4000, v0, OS_LOG_TYPE_DEFAULT, "AVF notification: AVCaptureSessionInterruptionEndedNotification\n", v1, 2u);
  }
}

- (void)deinitSecureFaceDetect
{
  v24 = *MEMORY[0x29EDCA608];
  if (__osLogTrace)
  {
    v3 = __osLogTrace;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEBUG, "deinitSecureFaceDetect\n", buf, 2u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = self->_avcSession;
  v5 = [(AVCaptureSession *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v18 + 1) + 8 * i);
        defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
        [defaultCenter removeObserver:v9];
      }

      v6 = [(AVCaptureSession *)v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  avcSession = self->_avcSession;
  self->_avcSession = 0;

  avcOutput = self->_avcOutput;
  self->_avcOutput = 0;

  avcInput = self->_avcInput;
  self->_avcInput = 0;

  avcDevice = self->_avcDevice;
  self->_avcDevice = 0;

  avcSessionTransaction = self->_avcSessionTransaction;
  self->_avcSessionTransaction = 0;

  *&self->_performCommandBufferInUse = 0;
  LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = 0;
  HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = 0;
  *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number = 0;
  *(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 2) = 0;
  [(BiometricKitXPCServerPearl *)self clearSecureFaceDetectContext];
  v16 = *&self->_avcSessionState;
  *&self->_avcSessionState = 0;

  [(OS_dispatch_queue *)self->_avcStartStopQueue unlock];
  if (__osLogTrace)
  {
    v17 = __osLogTrace;
  }

  else
  {
    v17 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v17, OS_LOG_TYPE_DEBUG, "deinitSecureFaceDetect: -> void\n", buf, 2u);
  }
}

- (void)clearSecureFaceDetectContext
{
  *(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 3) = 0;
  LODWORD(self->_secureFaceDetectRequestDispatchSource) = 1;
  BYTE4(self->_secureFaceDetectRequestDispatchSource) = 0;
  BYTE5(self->_secureFaceDetectRequestDispatchSource) = 0;
}

- (void)stopSecureFaceDetect
{
  v21 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect\n", buf, 2u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  v5 = *&self->_performCommandBufferInUse;
  if (v5)
  {
    if (v5 != 1)
    {
      v6 = self->_avcOutput;
      v7 = *&self->_avcSessionState;
      if (__osLog)
      {
        v8 = __osLog;
      }

      else
      {
        v8 = v3;
      }

      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v20 = v6;
        _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect: dispatch stopRunning (%p)\n", buf, 0xCu);
      }

      avcQueue = self->_avcQueue;
      v13 = MEMORY[0x29EDCA5F8];
      v14 = 3221225472;
      v15 = __50__BiometricKitXPCServerPearl_stopSecureFaceDetect__block_invoke;
      v16 = &unk_29EE546F8;
      v17 = v7;
      v18 = v6;
      v10 = v6;
      v11 = v7;
      dispatch_async(avcQueue, &v13);
      [self->_pearlDeviceState logSecureFaceDetectStop];
      [*&self->_logSequenceDebug analyzeSecureFaceDetectStop];
    }

    [(BiometricKitXPCServerPearl *)self deinitSecureFaceDetect];
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue unlock];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v3;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect: -> void\n", buf, 2u);
  }
}

void __50__BiometricKitXPCServerPearl_stopSecureFaceDetect__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDCA988];
  if (__osLog)
  {
    v3 = __osLog;
  }

  else
  {
    v3 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v10 = 134217984;
    v11 = v4;
    _os_log_impl(&dword_296CA4000, v3, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect: calling stopRunning (%p)\n", &v10, 0xCu);
  }

  v5 = [MEMORY[0x29EDB8DB0] date];
  kdebug_trace();
  [*(a1 + 40) stopRunning];
  kdebug_trace();
  if (__osLog)
  {
    v6 = __osLog;
  }

  else
  {
    v6 = v2;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 40);
    v8 = v6;
    [v5 timeIntervalSinceNow];
    v10 = 134218240;
    v11 = v7;
    v12 = 2048;
    v13 = v9 * -1000.0;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEFAULT, "stopSecureFaceDetect: stopRunning (%p) (dt = %f ms)\n", &v10, 0x16u);
  }
}

- (int)startSecureFaceDetect
{
  v24 = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v4 = __osLogTrace;
  }

  else
  {
    v4 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_296CA4000, v4, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect\n", buf, 2u);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
  initSecureFaceDetect = [(BiometricKitXPCServerPearl *)self initSecureFaceDetect];
  if (initSecureFaceDetect)
  {
    [BiometricKitXPCServerPearl startSecureFaceDetect];
  }

  else
  {
    *&self->_performCommandBufferInUse = 2;
    v6 = self->_avcOutput;
    v7 = *&self->_avcSessionState;
    objc_initWeak(&location, self);
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = v3;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v23 = v6;
      _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: dispatch startRunning (%p)\n", buf, 0xCu);
    }

    avcQueue = self->_avcQueue;
    v14 = MEMORY[0x29EDCA5F8];
    v15 = 3221225472;
    v16 = __51__BiometricKitXPCServerPearl_startSecureFaceDetect__block_invoke;
    v17 = &unk_29EE547B0;
    objc_copyWeak(&v20, &location);
    v18 = v7;
    v19 = v6;
    v10 = v6;
    v11 = v7;
    dispatch_async(avcQueue, &v14);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  [(OS_dispatch_queue *)self->_avcStartStopQueue unlock:v14];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v3;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v23) = initSecureFaceDetect;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: -> %d\n", buf, 8u);
  }

  return initSecureFaceDetect;
}

void __51__BiometricKitXPCServerPearl_startSecureFaceDetect__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x29EDCA608];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained[76] lock];
  if (*(a1 + 40) == WeakRetained[72])
  {
    v3 = *(WeakRetained + 134);
    if (v3 != 2)
    {
      if (v3 == 4)
      {
        *(WeakRetained + 134) = 0;
      }

      goto LABEL_2;
    }

    [WeakRetained[76] unlock];
    v4 = MEMORY[0x29EDCA988];
    if (__osLog)
    {
      v5 = __osLog;
    }

    else
    {
      v5 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v19 = 134217984;
      v20 = v6;
      _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: calling startRunning (%p)\n", &v19, 0xCu);
    }

    v7 = [MEMORY[0x29EDB8DB0] date];
    kdebug_trace();
    [*(a1 + 40) startRunning];
    kdebug_trace();
    if (__osLog)
    {
      v8 = __osLog;
    }

    else
    {
      v8 = v4;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = v8;
      [v7 timeIntervalSinceNow];
      v12 = v11 * -1000.0;
      v13 = [*(a1 + 40) isRunning];
      v14 = [*(a1 + 40) isInterrupted];
      v19 = 134218752;
      v20 = v9;
      v4 = MEMORY[0x29EDCA988];
      v21 = 2048;
      v22 = v12;
      v23 = 1024;
      v24 = v13;
      v25 = 1024;
      v26 = v14;
      _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: startRunning (%p) (dt = %f ms), running:%u, interrupted:%u\n", &v19, 0x22u);
    }

    [WeakRetained[76] lock];
    v15 = *(a1 + 40);
    if (WeakRetained[72] != v15)
    {
      goto LABEL_18;
    }

    v18 = *(WeakRetained + 134);
    if (v18 != 4)
    {
      if (v18 != 2)
      {
LABEL_18:
        [WeakRetained[76] unlock];
        if (__osLog)
        {
          v16 = __osLog;
        }

        else
        {
          v16 = v4;
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 40);
          v19 = 134217984;
          v20 = v17;
          _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_DEFAULT, "startSecureFaceDetect: session abandoned, calling stopRunning (%p)\n", &v19, 0xCu);
        }

        [*(a1 + 40) stopRunning];
        goto LABEL_33;
      }

      if (([v15 isRunning] & 1) != 0 || objc_msgSend(*(a1 + 40), "isInterrupted"))
      {
        *(WeakRetained + 134) = 3;
LABEL_32:
        [WeakRetained[76] unlock];
LABEL_33:

        goto LABEL_3;
      }

      if ([WeakRetained setSecureFaceDetectState:2 sessionID:*(WeakRetained + 164)])
      {
        __51__BiometricKitXPCServerPearl_startSecureFaceDetect__block_invoke_cold_1();
      }
    }

    [WeakRetained stopSecureFaceDetect];
    goto LABEL_32;
  }

LABEL_2:
  [WeakRetained[76] unlock];
LABEL_3:
}

- (void)processSecureFaceDetectRequestMessage
{
  v30 = *MEMORY[0x29EDCA608];
  [(NSRecursiveLock *)self->_avcLock lock];
  if (self->_secureFaceDetectRequestMessageLock)
  {
    v3 = *(&self->_secureFaceDetectRequestMessageLock + 1);
    v4 = *(&self->_secureFaceDetectRequestMessageLock + 5);
    v5 = *(&self->_secureFaceDetectRequestMessageValid + 1);
    *v23 = *(&self->_secureFaceDetectRequestMessageValid + 5);
    flags = self->_secureFaceDetectRequestMessage.flags;
    LOBYTE(self->_secureFaceDetectRequestMessageLock) = 0;
    *&v23[7] = flags;
    *(&self->_secureFaceDetectRequestMessageLock + 1) = 0;
    *(&self->_secureFaceDetectRequestMessageValid + 1) = 0;
    *&self->_secureFaceDetectRequestMessage.request = 0;
    [(NSRecursiveLock *)self->_avcLock unlock];
    [(OS_dispatch_queue *)self->_avcStartStopQueue lock];
    if (__osLog)
    {
      v7 = __osLog;
    }

    else
    {
      v7 = MEMORY[0x29EDCA988];
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *&self->_performCommandBufferInUse;
      *buf = 67109888;
      *v25 = v3;
      *&v25[4] = 1024;
      *&v25[6] = v4;
      *&v25[10] = 1024;
      *&v25[12] = v5;
      *&v25[16] = 1024;
      *&v25[18] = v8;
      _os_log_impl(&dword_296CA4000, v7, OS_LOG_TYPE_DEFAULT, "processSecureFaceDetectRequestMessage: request:%u, flags:0x%x, sessionID:%u (_avcSessionState:%u)\n", buf, 0x1Au);
    }

    if (!v3)
    {
      v11 = *&self->_performCommandBufferInUse;
      if (v11 == 2 || v11 == 4)
      {
        *&self->_performCommandBufferInUse = 4;
      }

      else
      {
        [(BiometricKitXPCServerPearl *)self stopSecureFaceDetect];
      }

LABEL_38:
      [(OS_dispatch_queue *)self->_avcStartStopQueue unlock];
      return;
    }

    if (v5 == LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime))
    {
      v9 = 0;
    }

    else
    {
      if (*&self->_performCommandBufferInUse)
      {
        if (v3 == 2 && HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) == 2)
        {
          v12 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
          if (((v12 ^ v4) & 0xFFFFFFFB) == 0 && ((v12 & 4) != 0 || (v4 & 4) == 0))
          {
            if (__osLog)
            {
              v18 = __osLog;
            }

            else
            {
              v18 = MEMORY[0x29EDCA988];
            }

            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              nanotime_high = HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime);
              v20 = *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number;
              *buf = 67109376;
              *v25 = nanotime_high;
              *&v25[4] = 1024;
              *&v25[6] = v20;
              _os_log_impl(&dword_296CA4000, v18, OS_LOG_TYPE_DEFAULT, "currentRequest:%u currentFlags:0x%x -> can reuse current AVC session\n", buf, 0xEu);
            }

            LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = v5;
            v9 = 1;
            goto LABEL_24;
          }
        }

        [(BiometricKitXPCServerPearl *)self stopSecureFaceDetect];
      }

      v9 = 0;
      LODWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = v5;
      HIDWORD(self->_secureFaceDetectRequestMessage.loggingSequenceId.nanotime) = v3;
      *&self->_secureFaceDetectRequestMessage.loggingSequenceId.number = v4;
    }

LABEL_24:
    pearlDeviceState = self->_pearlDeviceState;
    *buf = v3;
    *v25 = v4;
    *&v25[4] = v5;
    *&v25[8] = *v23;
    *&v25[15] = *&v23[7];
    [pearlDeviceState logSecureFaceDetectStart:buf];
    [*&self->_logSequenceDebug analyzeSecureFaceDetectStart:v3 sessionID:v5];
    if (v9)
    {
      if (*&self->_performCommandBufferInUse == 4)
      {
        *&self->_performCommandBufferInUse = 2;
      }

      if (*(&self->_secureFaceDetectRequestMessage.loggingSequenceId.type + 2) == 1)
      {
        [(BiometricKitXPCServerPearl *)self processMetadataObjects:0];
      }
    }

    else
    {
      startSecureFaceDetect = [(BiometricKitXPCServerPearl *)self startSecureFaceDetect];
      if (startSecureFaceDetect)
      {
        v15 = startSecureFaceDetect;
        if (__osLog)
        {
          v16 = __osLog;
        }

        else
        {
          v16 = MEMORY[0x29EDCA988];
        }

        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          *v25 = "err == 0 ";
          *&v25[8] = 2048;
          *&v25[10] = v15;
          *&v25[18] = 2080;
          *&v25[20] = &unk_296D32C0B;
          v26 = 2080;
          v27 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v28 = 1024;
          v29 = 6356;
          _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
        }

        v17 = [(BiometricKitXPCServerPearl *)self setSecureFaceDetectState:2 sessionID:v5];
        if (v17)
        {
          v21 = v17;
          v22 = (__osLog ? __osLog : MEMORY[0x29EDCA988]);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            *buf = 136316162;
            *v25 = "err == 0 ";
            *&v25[8] = 2048;
            *&v25[10] = v21;
            *&v25[18] = 2080;
            *&v25[20] = &unk_296D32C0B;
            v26 = 2080;
            v27 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v28 = 1024;
            v29 = 6359;
            _os_log_impl(&dword_296CA4000, v22, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          }
        }

        [self->_pearlDeviceState logSecureFaceDetectStop];
        [*&self->_logSequenceDebug analyzeSecureFaceDetectStop];
      }
    }

    goto LABEL_38;
  }

  avcLock = self->_avcLock;

  [(NSRecursiveLock *)avcLock unlock];
}

- (void)secureFaceDetectRequestMessage:(id *)message
{
  v15 = *MEMORY[0x29EDCA608];
  if (message)
  {
    if (message->var2)
    {
      kdebug_trace();
      if (__osLog)
      {
        v5 = __osLog;
      }

      else
      {
        v5 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        var0 = message->var0;
        var1 = message->var1;
        var2 = message->var2;
        v10[0] = 67109632;
        v10[1] = var0;
        v11 = 1024;
        v12 = var1;
        v13 = 1024;
        v14 = var2;
        _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "secureFaceDetectRequestMessage: request:%u, flags:0x%x, sessionID:%u\n", v10, 0x14u);
      }

      if (BYTE4(self->_performCommandBufferData))
      {
        [(NSRecursiveLock *)self->_avcLock lock];
        v9 = *(&message->var2 + 7);
        *(&self->_secureFaceDetectRequestMessageLock + 1) = *&message->var0;
        *&self->_secureFaceDetectRequestMessage.request = v9;
        LOBYTE(self->_secureFaceDetectRequestMessageLock) = 1;
        dispatch_source_merge_data(*&self->_secureFaceDetectRequestMessage.sessionID, 1uLL);
        [(NSRecursiveLock *)self->_avcLock unlock];
      }

      else
      {
        [BiometricKitXPCServerPearl secureFaceDetectRequestMessage:];
      }
    }

    else
    {
      [BiometricKitXPCServerPearl secureFaceDetectRequestMessage:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl secureFaceDetectRequestMessage:];
  }
}

- (int)performMatchCommand:(id)command
{
  commandCopy = command;
  v5 = [MEMORY[0x29EDB8DF8] dataWithLength:76];
  v6 = v5;
  if (!commandCopy)
  {
    [BiometricKitXPCServerPearl performMatchCommand:];
LABEL_23:
    v23 = v25;
    goto LABEL_18;
  }

  mutableBytes = [v5 mutableBytes];
  if (!mutableBytes)
  {
    [BiometricKitXPCServerPearl performMatchCommand:];
    goto LABEL_23;
  }

  v8 = mutableBytes;
  *mutableBytes = [commandCopy processedFlags];
  v8[1] = [commandCopy userID];
  *(v8 + 8) = [commandCopy trigger];
  deviceOrientation = [(BiometricKitXPCServerPearl *)self deviceOrientation];
  if (BYTE4(self->_performCommandBufferData) == 1 && [commandCopy longTimeout] && deviceOrientation == 5)
  {
    *(v8 + 9) = 1;
  }

  v10 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:deviceOrientation];
  [self->_pearlDeviceState setInitialDeviceOrientation:v10];

  if ([commandCopy forCredentialSet])
  {
    acmContext = [commandCopy acmContext];
    v12 = [acmContext length];

    if (v12 >= 0x21)
    {
      [BiometricKitXPCServerPearl performMatchCommand:];
      goto LABEL_23;
    }

    acmContext2 = [commandCopy acmContext];
    v8[8] = [acmContext2 length];

    acmContext3 = [commandCopy acmContext];
    acmContext4 = [commandCopy acmContext];
    [acmContext3 getBytes:v8 + 9 length:{objc_msgSend(acmContext4, "length")}];
  }

  else if ([commandCopy noBioLockout])
  {
    v8[8] = [commandCopy noBioLockoutUserID];
    noBioLockoutAuthData = [commandCopy noBioLockoutAuthData];
    v17 = *(noBioLockoutAuthData + 32);
    v18 = *(noBioLockoutAuthData + 16);
    *(v8 + 9) = *noBioLockoutAuthData;
    *(v8 + 13) = v18;
    *(v8 + 17) = v17;
  }

  if ([commandCopy preAugmentationCheck])
  {
    preAugmentationCheckIdentity = [commandCopy preAugmentationCheckIdentity];
    v20 = *(preAugmentationCheckIdentity + 16);
    *(v8 + 10) = *preAugmentationCheckIdentity;
    *(v8 + 26) = v20;
  }

  selectedIdentitiesBlob = [commandCopy selectedIdentitiesBlob];

  if (selectedIdentitiesBlob)
  {
    selectedIdentitiesBlob2 = [commandCopy selectedIdentitiesBlob];
    [v6 appendData:selectedIdentitiesBlob2];
  }

  if (-[BiometricKitXPCServerPearl performCommand:inValue:inData:inSize:outData:outSize:](self, "performCommand:inValue:inData:inSize:outData:outSize:", 4, 0, [v6 bytes], objc_msgSend(v6, "length"), 0, 0))
  {
    [BiometricKitXPCServerPearl performMatchCommand:];
    goto LABEL_23;
  }

  [(BiometricKitXPCServerPearl *)self checkBioLogConsent];
  v23 = 0;
LABEL_18:

  return v23;
}

- (void)checkBioLogConsent
{
  if (isInternalBuild() && (BYTE1(self->_log) & 1) == 0)
  {
    mEMORY[0x29EDBFD50] = [MEMORY[0x29EDBFD50] sharedInstance];
    if (([mEMORY[0x29EDBFD50] BOOLForKey:@"oldBioLogPurgedAfterUpdate"] & 1) == 0)
    {
      v4 = MEMORY[0x29EDCA988];
      if (__osLog)
      {
        v5 = __osLog;
      }

      else
      {
        v5 = MEMORY[0x29EDCA988];
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_296CA4000, v5, OS_LOG_TYPE_DEFAULT, "Removing old BioLogs due to missing oldBioLogPurgedAfterUpdate key\n", buf, 2u);
      }

      +[BioLog removeBioLogAsync];
      [mEMORY[0x29EDBFD50] setBool:1 forKey:@"framesRawLoggingDisabled"];
      [mEMORY[0x29EDBFD50] setBool:1 forKey:@"oldBioLogPurgedAfterUpdate"];
      [mEMORY[0x29EDBFD50] setBool:1 forKey:@"bioLogMatchFailureSettingsPrompt"];
      [mEMORY[0x29EDBFD50] synchronize];
      [(BiometricKitXPCServerPearl *)self updateLoggingState];
      if (__osLog)
      {
        v6 = __osLog;
      }

      else
      {
        v6 = v4;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *v7 = 0;
        _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEFAULT, "Removing old BioLogs done\n", v7, 2u);
      }
    }
  }
}

- (int)initPresenceDetectOperation:(id)operation options:(id)options client:(id)client
{
  operationCopy = operation;
  optionsCopy = options;
  clientCopy = client;
  v32 = 0.0;
  v31 = 0;
  v30 = 0;
  v29 = 0;
  v11 = mach_continuous_time();
  if (!operationCopy)
  {
    [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
    goto LABEL_36;
  }

  v12 = v11;
  v28.receiver = self;
  v28.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v28 initPresenceDetectOperation:operationCopy options:optionsCopy client:clientCopy])
  {
    [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
    goto LABEL_36;
  }

  if (optionsCopy)
  {
    if (dictionaryGetDouble())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (dictionaryGetBool())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (v30 == 1)
    {
      if (v31 == 1)
      {
        [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
        goto LABEL_36;
      }

      if (initPresenceDetectOperation_options_client__checked == 1)
      {
        if ((initPresenceDetectOperation_options_client__motionDetectSupported & 1) == 0)
        {
LABEL_12:
          [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
LABEL_36:
          v21 = location;
          goto LABEL_26;
        }
      }

      else
      {
        initPresenceDetectOperation_options_client__motionDetectSupported = MGGetBoolAnswer();
        initPresenceDetectOperation_options_client__checked = 1;
        if ((initPresenceDetectOperation_options_client__motionDetectSupported & 1) == 0)
        {
          goto LABEL_12;
        }
      }
    }

    if (dictionaryGetInteger())
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }

    if (v29 == 1 && v30 == 1)
    {
      [BiometricKitXPCServerPearl initPresenceDetectOperation:options:client:];
      goto LABEL_36;
    }
  }

  v13 = v32;
  if (v32 >= 0.0)
  {
    v14 = nanosecondsToAbsolute() + v12;
  }

  else
  {
    v14 = -1;
  }

  if (v14 < v12)
  {
    v15 = -1;
  }

  else
  {
    v15 = v14;
  }

  [operationCopy setPriority:{0x8000000000000000, v13}];
  [operationCopy setContinuous:v29 == 1];
  [operationCopy setEndTime:v15];
  [operationCopy setHighPriority:HIBYTE(v31)];
  [operationCopy setEyeRelief:v31];
  [operationCopy setMotionDetect:v30];
  if (v32 >= 0.0)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, operationCopy);
    v16 = MEMORY[0x29EDB8E68];
    v17 = v32;
    v23[0] = MEMORY[0x29EDCA5F8];
    v23[1] = 3221225472;
    v23[2] = __73__BiometricKitXPCServerPearl_initPresenceDetectOperation_options_client___block_invoke;
    v23[3] = &unk_29EE54848;
    objc_copyWeak(&v24, &location);
    objc_copyWeak(&v25, &from);
    v18 = [v16 timerWithTimeInterval:0 repeats:v23 block:v17];
    [operationCopy setTimer:v18];

    mainRunLoop = [MEMORY[0x29EDB8E48] mainRunLoop];
    timer = [operationCopy timer];
    [mainRunLoop addTimer:timer forMode:*MEMORY[0x29EDB8CC0]];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }

  v21 = 0;
LABEL_26:

  return v21;
}

void __73__BiometricKitXPCServerPearl_initPresenceDetectOperation_options_client___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [v3 isValid];

  v6 = 0;
  if (v5 && v4)
  {
    [v4 setTimeouted:1];
    if ([v4 checked])
    {
      v6 = [v4 client];
      if (v6 && WeakRetained)
      {
        [WeakRetained cancelWithClient:v6];
      }
    }

    else
    {
      v6 = 0;
    }
  }
}

- (int)performPresenceDetectCommand:(id)command restart:(BOOL)restart
{
  restartCopy = restart;
  v43 = *MEMORY[0x29EDCA608];
  commandCopy = command;
  v41 = 0;
  v40 = 0;
  v7 = mach_continuous_time();
  obj = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(obj);
  activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(activeBioOpsQueue);
  activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
  v10 = [activeBioOpsQueue2 arrayByAddingObjectsFromArray:bioOpsQueue];
  v11 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_898];
  v12 = [v10 filteredArrayUsingPredicate:v11];

  v13 = [MEMORY[0x29EDBA0A8] predicateWithBlock:&__block_literal_global_900];
  v14 = [v12 filteredArrayUsingPredicate:v13];

  if ([v14 count])
  {
    v15 = v14;

    v12 = v15;
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v36 objects:v42 count:16];
  v30 = v14;
  v31 = restartCopy;
  selfCopy = self;
  v33 = commandCopy;
  if (!v17)
  {
    v22 = -1;
    goto LABEL_30;
  }

  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = *v37;
  v22 = -1;
  do
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v37 != v21)
      {
        objc_enumerationMutation(v16);
      }

      v24 = *(*(&v36 + 1) + 8 * i);
      endTime = [v24 endTime];
      if (v22 >= endTime)
      {
        v22 = endTime;
      }

      if (v20)
      {
        goto LABEL_13;
      }

      if ([v24 highPriority])
      {
        v20 = 1;
        BYTE4(v40) = 1;
LABEL_13:
        if (v19)
        {
          goto LABEL_18;
        }

        goto LABEL_14;
      }

      v20 = 0;
      if (v19)
      {
LABEL_18:
        if (v18)
        {
          goto LABEL_24;
        }

        goto LABEL_19;
      }

LABEL_14:
      if ([v24 continuous])
      {
        v19 = 1;
        BYTE5(v40) = 1;
        if (v18)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v19 = 0;
        if (v18)
        {
          goto LABEL_24;
        }
      }

LABEL_19:
      if ([v24 eyeRelief])
      {
        v18 = 1;
        BYTE6(v40) = 1;
      }

      else
      {
        v18 = 0;
      }

LABEL_24:
      if ([v24 motionDetect])
      {
        HIBYTE(v40) = 1;
      }
    }

    v17 = [v16 countByEnumeratingWithState:&v36 objects:v42 count:16];
  }

  while (v17);
LABEL_30:

  objc_sync_exit(activeBioOpsQueue);
  objc_sync_exit(obj);

  if (v22 <= v7)
  {
    v27 = 0;
  }

  else
  {
    v26 = absoluteToMiliseconds();
    v27 = -1;
    if (v26 < 0xFFFFFFFF)
    {
      v27 = v26;
    }
  }

  LODWORD(v40) = v27;
  if (v31)
  {
    v41 = 1;
  }

  v28 = [(BiometricKitXPCServerPearl *)selfCopy performCommand:5 inValue:0 inData:&v40 inSize:9 outData:0 outSize:0];
  if (v28)
  {
    [BiometricKitXPCServerPearl performPresenceDetectCommand:restart:];
  }

  return v28;
}

uint64_t __67__BiometricKitXPCServerPearl_performPresenceDetectCommand_restart___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 type] != 3 || objc_msgSend(v2, "status") == 4)
  {
    goto LABEL_3;
  }

  if (![v2 checked])
  {
    v3 = 1;
    goto LABEL_4;
  }

  if ([v2 finished])
  {
LABEL_3:
    v3 = 0;
  }

  else
  {
    v3 = [v2 timeouted] ^ 1;
  }

LABEL_4:

  return v3;
}

- (int)cancelWithClient:(id)client
{
  v31 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(bioOpsQueue);
  activeBioOpsQueue = [(BiometricKitXPCServer *)self activeBioOpsQueue];
  objc_sync_enter(activeBioOpsQueue);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  bioOpsQueue2 = [(BiometricKitXPCServer *)self bioOpsQueue];
  v8 = [bioOpsQueue2 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v8)
  {
    v9 = *v27;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(bioOpsQueue2);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        client = [v11 client];
        v13 = client;
        if (client == clientCopy)
        {
          v14 = [v11 type] == 3;

          if (v14)
          {
            LODWORD(v8) = 1;
            goto LABEL_13;
          }
        }

        else
        {
        }
      }

      v8 = [bioOpsQueue2 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v25.receiver = self;
  v25.super_class = BiometricKitXPCServerPearl;
  v15 = [(BiometricKitXPCServer *)&v25 cancelWithClient:clientCopy];
  if (v15)
  {
    [BiometricKitXPCServerPearl cancelWithClient:];
    goto LABEL_26;
  }

  if (v8)
  {
    runningBioOp = [(BiometricKitXPCServer *)self runningBioOp];
    if ([runningBioOp type] != 3)
    {
LABEL_23:

      goto LABEL_26;
    }

    runningBioOp2 = [(BiometricKitXPCServer *)self runningBioOp];
    if ([runningBioOp2 status] != 2)
    {

      goto LABEL_26;
    }

    activeBioOpsQueue2 = [(BiometricKitXPCServer *)self activeBioOpsQueue];
    v19 = [activeBioOpsQueue2 count] == 1;

    if (v19)
    {
      runningBioOp = [(BiometricKitXPCServer *)self runningBioOp];
      if (![runningBioOp checked] || (objc_msgSend(runningBioOp, "finished") & 1) == 0 && (objc_msgSend(runningBioOp, "timeouted") & 1) == 0)
      {
        runningBioOp3 = [(BiometricKitXPCServer *)self runningBioOp];
        v21 = [(BiometricKitXPCServerPearl *)self performPresenceDetectCommand:runningBioOp3 restart:1];

        if (v21)
        {
          [BiometricKitXPCServerPearl cancelWithClient:];
          runningBioOp4 = [(BiometricKitXPCServer *)self runningBioOp];
          client2 = [runningBioOp4 client];
          [(BiometricKitXPCServerPearl *)self cancelWithClient:client2];
        }
      }

      goto LABEL_23;
    }
  }

LABEL_26:
  objc_sync_exit(activeBioOpsQueue);

  objc_sync_exit(bioOpsQueue);
  return v15;
}

- (int)updateIdentity:(id)identity withOptions:(id)options withClient:(id)client
{
  identityCopy = identity;
  optionsCopy = options;
  clientCopy = client;
  if ([identityCopy type] != 4)
  {
    [BiometricKitXPCServerPearl updateIdentity:withOptions:withClient:];
LABEL_7:
    v11 = v14;
    goto LABEL_4;
  }

  v13.receiver = self;
  v13.super_class = BiometricKitXPCServerPearl;
  if ([(BiometricKitXPCServer *)&v13 updateIdentity:identityCopy withOptions:optionsCopy withClient:clientCopy])
  {
    [BiometricKitXPCServerPearl updateIdentity:withOptions:withClient:];
    goto LABEL_7;
  }

  v11 = 0;
LABEL_4:

  return v11;
}

- (void)logRemoveIdentity:(id)identity withClient:(id)client
{
  v41 = *MEMORY[0x29EDCA608];
  if (BYTE1(self->_loggingDispatchQueue) == 1)
  {
    v29 = 0;
    v30 = 0;
    v28 = 8;
    clientCopy = client;
    identityCopy = identity;
    v8 = [(BiometricKitXPCServerPearl *)self performCommand:61 inValue:1 inData:0 inSize:0 outData:&v29 outSize:&v28];
    if (v8)
    {
      v20 = v8;
      if (__osLog)
      {
        v21 = __osLog;
      }

      else
      {
        v21 = MEMORY[0x29EDCA988];
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 136316162;
      v32 = "err == 0 ";
      v33 = 2048;
      v34 = v20;
      v35 = 2080;
      v36 = &unk_296D32C0B;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v39 = 1024;
      v40 = 6764;
    }

    else
    {
      if (v28 == 8)
      {
        v9 = HIDWORD(v29);
        v30 = v29;
        if (!v29)
        {
          v13 = 0;
LABEL_10:
          v29 = 0;
          v14 = [(BiometricKitXPCServerPearl *)self performCommand:61 inValue:9 inData:0 inSize:0 outData:&v29 outSize:&v28];
          if (v14)
          {
            v22 = v14;
            if (__osLog)
            {
              v23 = __osLog;
            }

            else
            {
              v23 = MEMORY[0x29EDCA988];
            }

            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_40;
            }

            *buf = 136316162;
            v32 = "err == 0 ";
            v33 = 2048;
            v34 = v22;
            v35 = 2080;
            v36 = &unk_296D32C0B;
            v37 = 2080;
            v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v39 = 1024;
            v40 = 6785;
          }

          else
          {
            if (v28 == 8)
            {
              v15 = HIDWORD(v29);
              v30 = v29;
              if (v29)
              {
                if (HIDWORD(v29) > v29)
                {
                  if (__osLog)
                  {
                    v26 = __osLog;
                  }

                  else
                  {
                    v26 = MEMORY[0x29EDCA988];
                  }

                  if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_75;
                  }

                  *buf = 136316162;
                  v32 = "templatePOSize <= bufferSize";
                  v33 = 2048;
                  v34 = 0;
                  v35 = 2080;
                  v36 = &unk_296D32C0B;
                  v37 = 2080;
                  v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
                  v39 = 1024;
                  v40 = 6793;
                  goto LABEL_74;
                }

                v16 = malloc_type_malloc(v29, 0xBE83F8D9uLL);
                if (!v16)
                {
                  if (__osLog)
                  {
                    v26 = __osLog;
                  }

                  else
                  {
                    v26 = MEMORY[0x29EDCA988];
                  }

                  if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                  {
                    goto LABEL_75;
                  }

                  *buf = 136316162;
                  v32 = "buffer";
                  v33 = 2048;
                  v34 = 0;
                  v35 = 2080;
                  v36 = &unk_296D32C0B;
                  v37 = 2080;
                  v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
                  v39 = 1024;
                  v40 = 6796;
                  goto LABEL_74;
                }

                v17 = v16;
                v18 = [(BiometricKitXPCServerPearl *)self performCommand:61 inValue:10 inData:0 inSize:0 outData:v16 outSize:&v30];
                if (!v18)
                {
                  v19 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:v17 length:v30 freeWhenDone:1];
LABEL_76:
                  [self->_pearlDeviceState logRemoveIdentity:identityCopy withTemplateListData:v13 templateSize:v9 client:clientCopy isPO:0];
                  [self->_pearlDeviceState logRemoveIdentity:identityCopy withTemplateListData:v19 templateSize:v15 client:clientCopy isPO:1];

                  return;
                }

                v27 = v18;
                if (__osLog)
                {
                  v26 = __osLog;
                }

                else
                {
                  v26 = MEMORY[0x29EDCA988];
                }

                if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136316162;
                  v32 = "err == 0 ";
                  v33 = 2048;
                  v34 = v27;
                  v35 = 2080;
                  v36 = &unk_296D32C0B;
                  v37 = 2080;
                  v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
                  v39 = 1024;
                  v40 = 6798;
LABEL_74:
                  _os_log_impl(&dword_296CA4000, v26, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
                }
              }

LABEL_75:
              v19 = 0;
              goto LABEL_76;
            }

            if (__osLog)
            {
              v23 = __osLog;
            }

            else
            {
              v23 = MEMORY[0x29EDCA988];
            }

            if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
LABEL_40:
              v15 = 0;
              goto LABEL_75;
            }

            *buf = 136316162;
            v32 = "size == sizeof(outData)";
            v33 = 2048;
            v34 = 0;
            v35 = 2080;
            v36 = &unk_296D32C0B;
            v37 = 2080;
            v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v39 = 1024;
            v40 = 6786;
          }

          _os_log_impl(&dword_296CA4000, v23, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
          goto LABEL_40;
        }

        if (HIDWORD(v29) > v29)
        {
          if (__osLog)
          {
            v24 = __osLog;
          }

          else
          {
            v24 = MEMORY[0x29EDCA988];
          }

          if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_57;
          }

          *buf = 136316162;
          v32 = "templateSize <= bufferSize";
          v33 = 2048;
          v34 = 0;
          v35 = 2080;
          v36 = &unk_296D32C0B;
          v37 = 2080;
          v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
          v39 = 1024;
          v40 = 6772;
        }

        else
        {
          v10 = malloc_type_malloc(v29, 0x3AF6DA31uLL);
          if (v10)
          {
            v11 = v10;
            v12 = [(BiometricKitXPCServerPearl *)self performCommand:61 inValue:2 inData:0 inSize:0 outData:v10 outSize:&v30];
            if (!v12)
            {
              v13 = [MEMORY[0x29EDB8DA0] dataWithBytesNoCopy:v11 length:v30 freeWhenDone:1];
              goto LABEL_10;
            }

            v25 = v12;
            if (__osLog)
            {
              v24 = __osLog;
            }

            else
            {
              v24 = MEMORY[0x29EDCA988];
            }

            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            *buf = 136316162;
            v32 = "err == 0 ";
            v33 = 2048;
            v34 = v25;
            v35 = 2080;
            v36 = &unk_296D32C0B;
            v37 = 2080;
            v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v39 = 1024;
            v40 = 6777;
          }

          else
          {
            if (__osLog)
            {
              v24 = __osLog;
            }

            else
            {
              v24 = MEMORY[0x29EDCA988];
            }

            if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_57;
            }

            *buf = 136316162;
            v32 = "buffer";
            v33 = 2048;
            v34 = 0;
            v35 = 2080;
            v36 = &unk_296D32C0B;
            v37 = 2080;
            v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
            v39 = 1024;
            v40 = 6775;
          }
        }

        _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
LABEL_57:
        v15 = 0;
        v19 = 0;
        goto LABEL_58;
      }

      if (__osLog)
      {
        v21 = __osLog;
      }

      else
      {
        v21 = MEMORY[0x29EDCA988];
      }

      if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
LABEL_28:
        v15 = 0;
        v19 = 0;
        v9 = 0;
LABEL_58:
        v13 = 0;
        goto LABEL_76;
      }

      *buf = 136316162;
      v32 = "size == sizeof(outData)";
      v33 = 2048;
      v34 = 0;
      v35 = 2080;
      v36 = &unk_296D32C0B;
      v37 = 2080;
      v38 = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
      v39 = 1024;
      v40 = 6765;
    }

    _os_log_impl(&dword_296CA4000, v21, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    goto LABEL_28;
  }
}

- (int)removeIdentity:(id)identity withOptions:(id)options withClient:(id)client
{
  identityCopy = identity;
  clientCopy = client;
  v12.receiver = self;
  v12.super_class = BiometricKitXPCServerPearl;
  v10 = [(BiometricKitXPCServer *)&v12 removeIdentity:identityCopy withOptions:options withClient:clientCopy];
  if (v10)
  {
    [BiometricKitXPCServerPearl removeIdentity:withOptions:withClient:];
  }

  else
  {
    [(BiometricKitXPCServerPearl *)self logRemoveIdentity:identityCopy withClient:clientCopy];
  }

  return v10;
}

- (int)getBioLockoutState:(int64_t *)state forUser:(unsigned int)user withClient:(id)client
{
  v8.receiver = self;
  v8.super_class = BiometricKitXPCServerPearl;
  v6 = [(BiometricKitXPCServer *)&v8 getBioLockoutState:state forUser:*&user withClient:client];
  if (v6)
  {
    [BiometricKitXPCServerPearl getBioLockoutState:forUser:withClient:];
  }

  else if (state && (*(state + 1) & 1) != 0)
  {
    [objc_opt_class() reportPearlInterlock:1];
  }

  return v6;
}

- (int64_t)getDeviceStateWithClient:(id)client
{
  v12 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = clientCopy;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "getDeviceStateWithClient: %@\n", &v10, 0xCu);
  }

  v7 = *&self->_peakPowerPressureLevelNtfToken;
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = v5;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 134217984;
    v11 = v7;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "getDeviceStateWithClient: -> %lu\n", &v10, 0xCu);
  }

  return v7;
}

- (int)startNewMatchAttemptWithClient:(id)client
{
  v18 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v16 = 138412290;
    v17 = clientCopy;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "startNewMatchAttemptWithClient: %@\n", &v16, 0xCu);
  }

  bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(bioOpsQueue);
  runningBioOp = [(BiometricKitXPCServer *)self runningBioOp];
  client = [runningBioOp client];
  v10 = client == clientCopy;

  if (v10)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:33 inValue:0 inData:0 inSize:0 outData:0 outSize:0])
    {
      v11 = 0;
      goto LABEL_9;
    }

    [BiometricKitXPCServerPearl startNewMatchAttemptWithClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl startNewMatchAttemptWithClient:];
  }

  v11 = v16;
LABEL_9:
  objc_sync_exit(bioOpsQueue);

  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v5;
  }

  if (v11)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v16 = 67109120;
      LODWORD(v17) = v11;
      v13 = v12;
      v14 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_296CA4000, v13, v14, "startNewMatchAttemptWithClient: -> (%{errno}d)\n", &v16, 8u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v16 = 67109120;
    LODWORD(v17) = 0;
    v13 = v12;
    v14 = OS_LOG_TYPE_DEBUG;
    goto LABEL_17;
  }

  return 0;
}

- (int)completeEnrollmentWithClient:(id)client
{
  v17 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v5 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v6 = __osLogTrace;
  }

  else
  {
    v6 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v15 = 138412290;
    v16 = clientCopy;
    _os_log_impl(&dword_296CA4000, v6, OS_LOG_TYPE_DEBUG, "completeEnrollmentWithClient: %@\n", &v15, 0xCu);
  }

  bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(bioOpsQueue);
  runningBioOp = [(BiometricKitXPCServer *)self runningBioOp];
  client = [runningBioOp client];
  v10 = client == clientCopy;

  if (v10)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:42 inValue:0 inData:0 inSize:0 outData:0 outSize:0])
    {
      objc_sync_exit(bioOpsQueue);

      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v5;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v15 = 67109120;
        LODWORD(v16) = 0;
        _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEBUG, "completeEnrollmentWithClient: -> (%{errno}d)\n", &v15, 8u);
      }

      v12 = 0;
      goto LABEL_14;
    }

    [BiometricKitXPCServerPearl completeEnrollmentWithClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl completeEnrollmentWithClient:];
  }

  v12 = v15;
  objc_sync_exit(bioOpsQueue);

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v5;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v15 = 67109120;
    LODWORD(v16) = v12;
    _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_ERROR, "completeEnrollmentWithClient: -> (%{errno}d)\n", &v15, 8u);
  }

LABEL_14:

  return v12;
}

- (int)setTemplate:(id)template forIdentity:(id)identity withClient:(id)client
{
  v29 = *MEMORY[0x29EDCA608];
  templateCopy = template;
  identityCopy = identity;
  clientCopy = client;
  v11 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    v23 = 134218498;
    v24 = [templateCopy length];
    v25 = 2112;
    v26 = identityCopy;
    v27 = 2112;
    v28 = clientCopy;
    _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "setTemplate: [%ld] %@ %@\n", &v23, 0x20u);
  }

  if (!templateCopy)
  {
    [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
LABEL_22:
    v20 = v23;
    goto LABEL_23;
  }

  if (!identityCopy)
  {
    [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
    goto LABEL_22;
  }

  if (-[BiometricKitXPCServer checkCatacombForUser:](self, "checkCatacombForUser:", [identityCopy userID]))
  {
    [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
    goto LABEL_22;
  }

  v14 = [templateCopy length];
  v15 = malloc_type_malloc(v14 + 24, 0x1000040504FFAC1uLL);
  if (!v15)
  {
    [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
    goto LABEL_22;
  }

  v16 = v15;
  *v15 = [identityCopy userID];
  uuid = [identityCopy uuid];
  [uuid getUUIDBytes:v16 + 1];

  v16[5] = v14;
  memcpy(v16 + 6, [templateCopy bytes], v14);
  v18 = [(BiometricKitXPCServerPearl *)self performCommand:49 inValue:0 inData:v16 inSize:v14 + 24 outData:0 outSize:0];
  if (!v18)
  {
    [(BiometricKitXPCServer *)self saveCatacomb];
    free(v16);
    if (__osLogTrace)
    {
      v19 = __osLogTrace;
    }

    else
    {
      v19 = v11;
    }

    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      v23 = 67109120;
      LODWORD(v24) = 0;
      _os_log_impl(&dword_296CA4000, v19, OS_LOG_TYPE_DEBUG, "setTemplate: -> (%{errno}d)\n", &v23, 8u);
    }

    v20 = 0;
    goto LABEL_17;
  }

  v20 = v18;
  [BiometricKitXPCServerPearl setTemplate:forIdentity:withClient:];
LABEL_23:
  if (__osLogTrace)
  {
    v22 = __osLogTrace;
  }

  else
  {
    v22 = v11;
  }

  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v23 = 67109120;
    LODWORD(v24) = v20;
    _os_log_impl(&dword_296CA4000, v22, OS_LOG_TYPE_ERROR, "setTemplate: -> (%{errno}d)\n", &v23, 8u);
  }

LABEL_17:

  return v20;
}

- (int)isPeriocularEnrollmentSupported:(BOOL *)supported withClient:(id)client
{
  *&v16[5] = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    *v16 = clientCopy;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "isPeriocularEnrollmentSupported: %@\n", buf, 0xCu);
  }

  v14 = 0;
  v13 = 1;
  if (supported)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:67 inValue:0 inData:0 inSize:0 outData:&v14 outSize:&v13])
    {
      if (v13 == 1)
      {
        *supported = v14 != 0;
      }

      else
      {
        [BiometricKitXPCServerPearl isPeriocularEnrollmentSupported:withClient:];
      }

      if (__osLogTrace)
      {
        v9 = __osLogTrace;
      }

      else
      {
        v9 = v7;
      }

      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        v16[0] = 0;
        LOWORD(v16[1]) = 1024;
        *(&v16[1] + 2) = v14;
        _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "isPeriocularEnrollmentSupported: -> (%{errno}d), isSupported=%u\n", buf, 0xEu);
      }

      v10 = 0;
      goto LABEL_16;
    }

    [BiometricKitXPCServerPearl isPeriocularEnrollmentSupported:withClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl isPeriocularEnrollmentSupported:withClient:];
  }

  v10 = *buf;
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = v7;
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    v16[0] = v10;
    LOWORD(v16[1]) = 1024;
    *(&v16[1] + 2) = v14;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_ERROR, "isPeriocularEnrollmentSupported: -> (%{errno}d), isSupported=%u\n", buf, 0xEu);
  }

LABEL_16:

  return v10;
}

- (int)getPeriocularMatchStateForUser:(unsigned int)user state:(int64_t *)state withClient:(id)client
{
  v22 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v9 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v10 = __osLogTrace;
  }

  else
  {
    v10 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    userCopy = user;
    v20 = 2112;
    v21 = clientCopy;
    _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "getPeriocularMatchStateForUser: %u %@\n", buf, 0x12u);
  }

  v16 = 0;
  userCopy2 = user;
  v15 = 4;
  if (state)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:69 inValue:0 inData:&userCopy2 inSize:4 outData:&v16 outSize:&v15])
    {
      if (v15 == 4)
      {
        *state = v16;
      }

      else
      {
        [BiometricKitXPCServerPearl getPeriocularMatchStateForUser:state:withClient:];
      }

      if (__osLogTrace)
      {
        v11 = __osLogTrace;
      }

      else
      {
        v11 = v9;
      }

      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        *buf = 67109376;
        userCopy = 0;
        v20 = 1024;
        LODWORD(v21) = v16;
        _os_log_impl(&dword_296CA4000, v11, OS_LOG_TYPE_DEBUG, "getPeriocularMatchStateForUser: -> (%{errno}d), state=0x%x\n", buf, 0xEu);
      }

      v12 = 0;
      goto LABEL_16;
    }

    [BiometricKitXPCServerPearl getPeriocularMatchStateForUser:state:withClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl getPeriocularMatchStateForUser:state:withClient:];
  }

  v12 = *buf;
  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v9;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109376;
    userCopy = v12;
    v20 = 1024;
    LODWORD(v21) = v16;
    _os_log_impl(&dword_296CA4000, v14, OS_LOG_TYPE_ERROR, "getPeriocularMatchStateForUser: -> (%{errno}d), state=0x%x\n", buf, 0xEu);
  }

LABEL_16:

  return v12;
}

- (int)removePeriocularTemplatesWithOptions:(id)options withClient:(id)client
{
  v36 = *MEMORY[0x29EDCA608];
  optionsCopy = options;
  clientCopy = client;
  v8 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v9 = __osLogTrace;
  }

  else
  {
    v9 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    *&buf[4] = optionsCopy;
    *&buf[12] = 2112;
    *&buf[14] = clientCopy;
    _os_log_impl(&dword_296CA4000, v9, OS_LOG_TYPE_DEBUG, "removePeriocularTemplatesWithOptions: %@ %@\n", buf, 0x16u);
  }

  v34 = 0;
  *&v35 = 0;
  *(&v35 + 6) = 0;
  if (!optionsCopy)
  {
    [BiometricKitXPCServerPearl removePeriocularTemplatesWithOptions:withClient:];
    goto LABEL_54;
  }

  v10 = [optionsCopy objectForKeyedSubscript:@"BKRemovePOTemplatesIdentityUserID"];
  if (!v10)
  {
    [BiometricKitXPCServerPearl removePeriocularTemplatesWithOptions:withClient:];
    goto LABEL_54;
  }

  v11 = v10;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [BiometricKitXPCServerPearl removePeriocularTemplatesWithOptions:withClient:];
    goto LABEL_54;
  }

  unsignedIntValue = [v11 unsignedIntValue];
  if (unsignedIntValue == -1)
  {
    [BiometricKitXPCServerPearl removePeriocularTemplatesWithOptions:withClient:];
    goto LABEL_54;
  }

  v13 = unsignedIntValue;
  v14 = [optionsCopy objectForKeyedSubscript:@"BKRemovePOTemplatesIdentityUUID"];

  if (v14)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [BiometricKitXPCServerPearl removePeriocularTemplatesWithOptions:withClient:];
      goto LABEL_54;
    }

    v15 = v14;
  }

  v16 = [optionsCopy objectForKeyedSubscript:@"BKRemovePOTemplatesRemoveAll"];

  if (v16)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      bOOLValue = [v16 BOOLValue];
      goto LABEL_17;
    }

    [(BiometricKitXPCServerPearl *)v14 removePeriocularTemplatesWithOptions:v16 withClient:&v29, buf, &v30 + 4, v17, v18, v19, v29, v30, *buf, *&buf[8], *&buf[16], v32, SHIDWORD(v32), v33, *(&v33 + 1), v34, v35, *(&v35 + 1), v36, v37, v38, v39, v40];
LABEL_54:
    v14 = v29;
    v16 = *buf;
    v25 = HIDWORD(v30);
    goto LABEL_55;
  }

  bOOLValue = 0;
LABEL_17:
  LODWORD(v34) = v13;
  if (v14)
  {
    [v14 getUUIDBytes:&v34 + 4];
    if (!bOOLValue)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  BYTE12(v35) = 1;
  if (bOOLValue)
  {
LABEL_19:
    BYTE13(v35) = 1;
  }

LABEL_20:
  v21 = [(BiometricKitXPCServerPearl *)self performCommand:71 inValue:0 inData:&v34 inSize:22 outData:0 outSize:0];
  if (v21)
  {
    v25 = v21;
    if (__osLog)
    {
      v27 = __osLog;
    }

    else
    {
      v27 = v8;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 136316162;
    *&buf[4] = "err == 0 ";
    *&buf[12] = 2048;
    *&buf[14] = v25;
    *&buf[22] = 2080;
    v32 = &unk_296D32C0B;
    LOWORD(v33) = 2080;
    *(&v33 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
    WORD5(v33) = 1024;
    HIDWORD(v33) = 7089;
LABEL_51:
    _os_log_impl(&dword_296CA4000, v27, OS_LOG_TYPE_ERROR, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf, 0x30u);
    goto LABEL_55;
  }

  updatePropertiesOfIdentities = [(BiometricKitXPCServerPearl *)self updatePropertiesOfIdentities];
  if (updatePropertiesOfIdentities)
  {
    v25 = updatePropertiesOfIdentities;
    if (__osLog)
    {
      v27 = __osLog;
    }

    else
    {
      v27 = v8;
    }

    if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_55;
    }

    *buf = 136316162;
    *&buf[4] = "err == 0 ";
    *&buf[12] = 2048;
    *&buf[14] = v25;
    *&buf[22] = 2080;
    v32 = &unk_296D32C0B;
    LOWORD(v33) = 2080;
    *(&v33 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
    WORD5(v33) = 1024;
    HIDWORD(v33) = 7093;
    goto LABEL_51;
  }

  saveCatacomb = [(BiometricKitXPCServer *)self saveCatacomb];
  if (!saveCatacomb)
  {
    if (__osLogTrace)
    {
      v24 = __osLogTrace;
    }

    else
    {
      v24 = v8;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *&buf[4] = 0;
      _os_log_impl(&dword_296CA4000, v24, OS_LOG_TYPE_DEBUG, "removePeriocularTemplatesWithOptions: -> %d\n", buf, 8u);
    }

    v25 = 0;
    goto LABEL_29;
  }

  v25 = saveCatacomb;
  if (__osLog)
  {
    v27 = __osLog;
  }

  else
  {
    v27 = v8;
  }

  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136316162;
    *&buf[4] = "err == 0 ";
    *&buf[12] = 2048;
    *&buf[14] = v25;
    *&buf[22] = 2080;
    v32 = &unk_296D32C0B;
    LOWORD(v33) = 2080;
    *(&v33 + 2) = "/Library/Caches/com.apple.xbs/Sources/Pearl/pearld/BiometricKitXPCServerPearl.m";
    WORD5(v33) = 1024;
    HIDWORD(v33) = 7097;
    goto LABEL_51;
  }

LABEL_55:
  if (__osLogTrace)
  {
    v28 = __osLogTrace;
  }

  else
  {
    v28 = v8;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v25;
    _os_log_impl(&dword_296CA4000, v28, OS_LOG_TYPE_ERROR, "removePeriocularTemplatesWithOptions: -> %d\n", buf, 8u);
  }

LABEL_29:

  return v25;
}

- (int)queryPeriocularMigrationState:(BOOL *)state clear:(BOOL)clear
{
  v9 = 0;
  v7 = 0;
  v6 = 1;
  v8 = 1;
  clearCopy = clear;
  if ([(BiometricKitXPCServerPearl *)self performCommand:57 inValue:0 inData:&v8 inSize:6 outData:&v7 outSize:&v6])
  {
    [BiometricKitXPCServerPearl queryPeriocularMigrationState:clear:];
    return v11;
  }

  if (v6 != 1)
  {
    [BiometricKitXPCServerPearl queryPeriocularMigrationState:clear:];
    return v11;
  }

  result = 0;
  if (state)
  {
    *state = v7 != 0;
  }

  return result;
}

- (int)suspendEnrollment:(BOOL)enrollment withClient:(id)client
{
  enrollmentCopy = enrollment;
  v23 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v20 = enrollmentCopy;
    v21 = 2112;
    v22 = clientCopy;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "suspendEnrollment: %u %@\n", buf, 0x12u);
  }

  v18 = 0;
  bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(bioOpsQueue);
  runningBioOp = [(BiometricKitXPCServer *)self runningBioOp];
  client = [runningBioOp client];
  v12 = client == clientCopy;

  if (v12)
  {
    v18 = enrollmentCopy;
    if (![(BiometricKitXPCServerPearl *)self performCommand:48 inValue:0 inData:&v18 inSize:1 outData:0 outSize:0])
    {
      v13 = 0;
      goto LABEL_9;
    }

    [BiometricKitXPCServerPearl suspendEnrollment:withClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl suspendEnrollment:withClient:];
  }

  v13 = *buf;
LABEL_9:
  objc_sync_exit(bioOpsQueue);

  if (__osLogTrace)
  {
    v14 = __osLogTrace;
  }

  else
  {
    v14 = v7;
  }

  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v20 = v13;
      v15 = v14;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_17:
      _os_log_impl(&dword_296CA4000, v15, v16, "suspendEnrollment: -> (%{errno}d)\n", buf, 8u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v20 = 0;
    v15 = v14;
    v16 = OS_LOG_TYPE_DEBUG;
    goto LABEL_17;
  }

  return v13;
}

- (int)queryIdentityMigrationFailureForUser:(unsigned int)user failed:(BOOL *)failed clear:(BOOL)clear withClient:(id)client
{
  clearCopy = clear;
  v28 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v11 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v12 = __osLogTrace;
  }

  else
  {
    v12 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109890;
    *&buf[4] = user;
    v22 = 2048;
    failedCopy = failed;
    v24 = 1024;
    v25 = clearCopy;
    v26 = 2112;
    v27 = clientCopy;
    _os_log_impl(&dword_296CA4000, v12, OS_LOG_TYPE_DEBUG, "queryIdentityMigrationFailureForUser: %u %p %u %@\n", buf, 0x22u);
  }

  memset(v18, 0, 6);
  v17 = 0;
  *buf = 1;
  if ([(BiometricKitXPCServer *)self isClassCFileAccessible])
  {
    *(v18 + 1) = user;
    BYTE1(v18[1]) = clearCopy;
    if ([(BiometricKitXPCServerPearl *)self performCommand:57 inValue:0 inData:v18 inSize:6 outData:&v17 outSize:buf])
    {
      [BiometricKitXPCServerPearl queryIdentityMigrationFailureForUser:failed:clear:withClient:];
    }

    else
    {
      if (*buf == 1)
      {
        if (clearCopy)
        {
          [(BiometricKitXPCServer *)self saveCatacomb];
        }

        if (failed)
        {
          *failed = v17 != 0;
        }

        if (__osLogTrace)
        {
          v13 = __osLogTrace;
        }

        else
        {
          v13 = v11;
        }

        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          *v19 = 67109120;
          v20 = 0;
          _os_log_impl(&dword_296CA4000, v13, OS_LOG_TYPE_DEBUG, "queryIdentityMigrationFailureForUser: -> (%{errno}d)\n", v19, 8u);
        }

        v14 = 0;
        goto LABEL_19;
      }

      [BiometricKitXPCServerPearl queryIdentityMigrationFailureForUser:failed:clear:withClient:];
    }
  }

  else
  {
    [BiometricKitXPCServerPearl queryIdentityMigrationFailureForUser:failed:clear:withClient:];
  }

  v14 = *v19;
  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v11;
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v19 = 67109120;
    v20 = v14;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "queryIdentityMigrationFailureForUser: -> (%{errno}d)\n", v19, 8u);
  }

LABEL_19:

  return v14;
}

- (int)enableMatchAutoRetry:(BOOL)retry withClient:(id)client
{
  retryCopy = retry;
  v23 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v20 = retryCopy;
    v21 = 2112;
    v22 = clientCopy;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "enableMatchAutoRetry: %u %@\n", buf, 0x12u);
  }

  v18[0] = retryCopy;
  bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(bioOpsQueue);
  runningBioOp = [(BiometricKitXPCServer *)self runningBioOp];
  client = [runningBioOp client];
  v12 = client == clientCopy;

  if (v12)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:32 inValue:0 inData:v18 inSize:1 outData:0 outSize:0])
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_9;
    }

    [BiometricKitXPCServerPearl enableMatchAutoRetry:withClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl enableMatchAutoRetry:withClient:];
  }

  v14 = v18[1];
  v13 = *buf;
LABEL_9:
  objc_sync_exit(bioOpsQueue);

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v20 = 0;
      _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_DEBUG, "enableMatchAutoRetry: -> (%{errno}d)\n", buf, 8u);
    }

    v13 = 0;
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v20 = v13;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "enableMatchAutoRetry: -> (%{errno}d)\n", buf, 8u);
  }

  return v13;
}

- (int)pauseFaceDetectTimer:(BOOL)timer withClient:(id)client
{
  timerCopy = timer;
  v23 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109378;
    v20 = timerCopy;
    v21 = 2112;
    v22 = clientCopy;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "pauseFaceDetectTimer: %u %@\n", buf, 0x12u);
  }

  bioOpsQueue = [(BiometricKitXPCServer *)self bioOpsQueue];
  objc_sync_enter(bioOpsQueue);
  runningBioOp = [(BiometricKitXPCServer *)self runningBioOp];
  client = [runningBioOp client];
  v12 = client == clientCopy;

  if (v12)
  {
    if (![(BiometricKitXPCServerPearl *)self performCommand:63 inValue:timerCopy inData:0 inSize:0 outData:0 outSize:0])
    {
      v13 = 0;
      v14 = 1;
      goto LABEL_9;
    }

    [BiometricKitXPCServerPearl pauseFaceDetectTimer:withClient:];
  }

  else
  {
    [BiometricKitXPCServerPearl pauseFaceDetectTimer:withClient:];
  }

  v14 = v18;
  v13 = *buf;
LABEL_9:
  objc_sync_exit(bioOpsQueue);

  if (v13)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (__osLogTrace)
  {
    v16 = __osLogTrace;
  }

  else
  {
    v16 = v7;
  }

  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      v20 = 0;
      _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_DEBUG, "pauseFaceDetectTimer: -> (%{errno}d)\n", buf, 8u);
    }

    v13 = 0;
  }

  else if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v20 = v13;
    _os_log_impl(&dword_296CA4000, v16, OS_LOG_TYPE_ERROR, "pauseFaceDetectTimer: -> (%{errno}d)\n", buf, 8u);
  }

  return v13;
}

- (int)prewarmCamera:(unint64_t)camera withClient:(id)client
{
  v16 = *MEMORY[0x29EDCA608];
  clientCopy = client;
  v7 = MEMORY[0x29EDCA988];
  if (__osLogTrace)
  {
    v8 = __osLogTrace;
  }

  else
  {
    v8 = MEMORY[0x29EDCA988];
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 134218242;
    cameraCopy = camera;
    v14 = 2112;
    v15 = clientCopy;
    _os_log_impl(&dword_296CA4000, v8, OS_LOG_TYPE_DEBUG, "prewarmCamera: %lu %@\n", &v12, 0x16u);
  }

  v9 = [(BiometricKitXPCServerPearl *)self performCommand:43 inValue:camera inData:0 inSize:0 outData:0 outSize:0];
  if (v9)
  {
    [BiometricKitXPCServerPearl prewarmCamera:withClient:];
  }

  else
  {
    if (__osLogTrace)
    {
      v10 = __osLogTrace;
    }

    else
    {
      v10 = v7;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = 67109120;
      LODWORD(cameraCopy) = 0;
      _os_log_impl(&dword_296CA4000, v10, OS_LOG_TYPE_DEBUG, "prewarmCamera: -> (%{errno}d)\n", &v12, 8u);
    }
  }

  return v9;
}

- (int)performDisplayStatusChangedCommand:(BOOL)command
{
  v3 = [(BiometricKitXPCServerPearl *)self performCommand:52 inValue:command inData:0 inSize:0 outData:0 outSize:0];
  if (v3)
  {
    [BiometricKitXPCServerPearl performDisplayStatusChangedCommand:];
  }

  return v3;
}

- (void)logSequenceDebugWithContext:(id *)context
{
  v46 = *MEMORY[0x29EDCA608];
  v6 = MEMORY[0x29EDCA988];
  v7 = OUTLINED_FUNCTION_40(__osLogTrace);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    OUTLINED_FUNCTION_49(&dword_296CA4000, v8, v9, "logSequenceDebugWithContext:\n", v10, v11, v12, v13, v31, v32, v33, v34, selfCopy, v36, v37, v38);
  }

  v37 = 0;
  v38 = 0;
  if (LOBYTE(self->_loggingDispatchQueue) == 1 && context->var1)
  {
    v14 = MEMORY[0x29C262290](HIDWORD(self->_driverNotifyQueue), 2, *MEMORY[0x29EDCA6B0], &v38, &v37, 4097);
    if (v14)
    {
      v26 = v14;
      v27 = OUTLINED_FUNCTION_40(__osLog);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        *buf = 136316162;
        v40 = "err == 0 ";
        v41 = 2048;
        v42 = v26;
        v43 = 2080;
        v44 = &unk_296D32C0B;
        OUTLINED_FUNCTION_47();
        v45 = 1388;
        OUTLINED_FUNCTION_34(&dword_296CA4000, v3, v28, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf);
      }
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v31 = MEMORY[0x29EDCA5F8];
      v32 = 3221225472;
      v33 = __58__BiometricKitXPCServerPearl_logSequenceDebugWithContext___block_invoke;
      v34 = &unk_29EE546A8;
      selfCopy = self;
      v36 = v38;
      v16 = MEMORY[0x29C262C70](&v31);
      v17 = objc_alloc(MEMORY[0x29EDB8DA0]);
      v18 = [v17 initWithBytesNoCopy:v38 length:v37 deallocator:v16];
      if (v18)
      {
        [self->_pearlDeviceState logSequenceDebug:v18 withContext:context];
      }

      else
      {
        if (__osLog)
        {
          v29 = __osLog;
        }

        else
        {
          v29 = v6;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 136316162;
          v40 = "debugData";
          v41 = 2048;
          v42 = 0;
          v43 = 2080;
          v44 = &unk_296D32C0B;
          OUTLINED_FUNCTION_47();
          v45 = 1397;
          OUTLINED_FUNCTION_34(&dword_296CA4000, v29, v30, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", buf);
        }

        v16[2](v16, 0, 0);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  v19 = OUTLINED_FUNCTION_40(__osLogTrace);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    OUTLINED_FUNCTION_49(&dword_296CA4000, v20, v21, "logSequenceDebugWithContext: -> void\n", v22, v23, v24, v25, v31, v32, v33, v34, selfCopy, v36, v37, v38);
  }
}

- (void)init
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)initAutoBugCapture
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.1()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.4()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.5()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.6()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.7()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.8()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.9()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.10()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.11()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.12()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)serviceStatus:version:ordinal:data:timestamp:.cold.13()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

void __58__BiometricKitXPCServerPearl_logSequenceDebugWithContext___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)analyticsKernelMessage:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)wakeGestureManager:didUpdateWakeGesture:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)statusMessage:withData:timestamp:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (uint64_t)statusMessage:(_BYTE *)a1 withData:timestamp:.cold.2(_BYTE *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  return *a1 & 1;
}

- (void)statusMessage:withData:timestamp:.cold.3()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)statusMessage:withData:timestamp:.cold.4()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)statusMessage:withData:timestamp:.cold.5()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)statusMessage:withData:timestamp:.cold.6()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)statusMessage:withData:timestamp:.cold.7()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)statusMessage:withData:timestamp:.cold.8()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)statusMessage:withData:timestamp:.cold.9()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11);
  }

  *v1 = v5;
  *v3 = 1016;
  OUTLINED_FUNCTION_41();
}

- (void)enrollResult:withTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollResult:withTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollUpdate:withTimestamp:.cold.1()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
}

- (void)enrollUpdate:withTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollUpdate:withTimestamp:.cold.3()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollUpdate:withTimestamp:.cold.4()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollUpdate:withTimestamp:.cold.5()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollUpdate:withTimestamp:.cold.6()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollFeedback:withTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollFeedback:withTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollFeedback:withTimestamp:.cold.3()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)enrollFeedback:withTimestamp:.cold.4()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)matchResult:withTimestamp:.cold.1()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)matchResult:withTimestamp:.cold.2()
{
  OUTLINED_FUNCTION_38();
  v7 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_50(__osLog))
  {
    OUTLINED_FUNCTION_0();
    v5 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v6 = 2289;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_39();
}

- (void)matchResult:withTimestamp:.cold.3()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
}

- (void)matchResult:withTimestamp:.cold.4()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
}

- (void)matchEventMessage:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)motionDetectMessage:info:state:.cold.1()
{
  OUTLINED_FUNCTION_37();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_48();
}

- (void)motionDetectMessage:info:state:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
}

- (void)motionDetectMessage:info:state:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
}

- (uint64_t)performCommand:(char)a1 version:inValue:inData:inSize:outData:outSize:.cold.1(char a1)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  return a1 & 1;
}

- (void)performCommand:(void *)a3 version:inValue:inData:inSize:outData:outSize:.cold.2(uint64_t a1, _DWORD *a2, void *a3)
{
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v5, v6, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v7, v8, v9, v10);
  }

  *a3 = 0;
  *a2 = 1;
}

- (void)getCommProtocolVersion
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870212);
}

- (void)getSPRLInfo:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)getSPRLInfo:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870212);
}

- (void)getSPRLInfo:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870206);
}

- (void)restoreAndSyncTemplates
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)loadCatacombForComponent:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadCatacombForComponent:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

void __55__BiometricKitXPCServerPearl_loadCatacombForComponent___block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)saveTemplateListAfterTemplateUpdate
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)updatePropertiesOfIdentities
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetIdentitiesListCommand:outBuffer:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetIdentitiesListCommand:outBuffer:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetIdentitiesListCommand:outBuffer:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performGetCatacombStateCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetCatacombStateCommand:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetCatacombStateCommand:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performGetTemplatesValidityCommand:isValid:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)performGetTemplatesValidityCommand:isValid:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)performRemoveIdentityCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performRemoveIdentityCommand:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performRemoveIdentityCommand:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performGetBiometrickitdInfoCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetBiometrickitdInfoCommand:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetBiometrickitdInfoCommand:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performRemoveUserDataCommand:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)performPrepareSaveCatacombCommand:outDataSize:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performPrepareSaveCatacombCommand:outDataSize:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performPrepareSaveCatacombCommand:outDataSize:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performCompleteSaveCatacombCommand:outBuffer:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performCompleteSaveCatacombCommand:outBuffer:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performCompleteSaveCatacombCommand:outBuffer:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performConfirmSaveCatacombCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performConfirmSaveCatacombCommand:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performNoCatacombCommand:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)performLoadCatacombCommand:inData:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performLoadCatacombCommand:inData:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performRequestMaxIdentityCountCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performRequestMaxIdentityCountCommand:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetFreeIdentityCountCommand:outCount:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)performGetFreeIdentityCountCommand:(_DWORD *)a1 outCount:.cold.2(_DWORD *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
}

- (void)performGetCatacombUUIDCommand:outUUID:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetCatacombUUIDCommand:outUUID:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870212);
}

- (void)performGetCatacombHashCommand:outHash:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetCatacombHashCommand:outHash:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(-536870212);
}

- (void)performDropUnlockTokenCommand
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)performForceBioLockoutCommand:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)performGetSKSLockStateCommand:outState:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetSKSLockStateCommand:outState:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetLastMatchEventCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetLastMatchEventCommand:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetDeviceHardwareStateCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetDeviceHardwareStateCommand:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetDeviceHardwareStateCommand:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
}

- (void)performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetProtectedConfigCommand:outSetCfg:outEffectiveCfg:.cold.4()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performGetSystemProtectedConfigCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performGetSystemProtectedConfigCommand:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)performGetSystemProtectedConfigCommand:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)performSetProtectedConfigCommand:cfg:authData:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)performSetSystemProtectedConfigCommand:authData:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)performRequestMessageDataCommand:size:outData:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performRequestMessageDataCommand:size:outData:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performRequestMessageDataCommand:size:outData:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_17();
}

- (void)initializeEngineWithOptions:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

void __69__BiometricKitXPCServerPearl_reportPearlHardwarePass_fallbackAction___block_invoke_2_cold_1(uint64_t a1)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (void)getDeviceTreeProperty:(_DWORD *)a1 fromPath:.cold.1(_DWORD *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }

  *a1 = 0;
}

+ (void)getSHA384FromData:.cold.1()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
}

- (void)getSensorFamily:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)getSensorFamily:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)getSensorFamily:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)getSensorFamily:.cold.4()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)getSensorFamily:.cold.5()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

void __50__BiometricKitXPCServerPearl_platformProvidesPlCl__block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)loadDCNKernels
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getProjectorSerialNumberIORegAttempt
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
}

- (void)getRomeoSerialNumberFDR
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
}

- (void)verifyRomeoSerialNumberAgainstFDR
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)queryGuadalupeSerialNumberFDR:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)queryGuadalupeSerialNumberFDR:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)queryGuadalupeSerialNumberFDR:.cold.3()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)queryGuadalupeSerialNumberFDR:.cold.4()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)queryGuadalupeSerialNumberFDR:.cold.5()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)verifyGuadalupeSerialNumberAgainstFDR
{
  OUTLINED_FUNCTION_37();
  if (OUTLINED_FUNCTION_43(v0, *MEMORY[0x29EDCA608]))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  OUTLINED_FUNCTION_23(259);
}

- (void)verifyProjectorSerialNumber
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)hasManifestEntitlement:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_42();
  a24 = v28;
  a25 = v29;
  OUTLINED_FUNCTION_30();
  a17 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_36(__osLog))
  {
    OUTLINED_FUNCTION_0();
    a12 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    a15 = 4605;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v27, v30, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &a9);
  }

  *v25 = v26;
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41();
}

- (void)hasManifestEntitlement:.cold.2()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19();
  if (OUTLINED_FUNCTION_28(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_27(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41();
}

- (void)hasManifestEntitlement:.cold.3()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
}

- (void)hasManifestEntitlement:.cold.4()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 0;
  OUTLINED_FUNCTION_11();
}

- (void)verifyDisplayTrust
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendSelfCheckResult:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendSavageFWCertCheckResult:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendFDRDataCheckResult:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendRomeoSNCheckResult:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendDCNKernelsCheckResult:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)sendDisplayCheckResult:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)loadFDRClassCommand:withClass:withData:isAlternative:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)loadFDRClassCommand:withClass:withData:isAlternative:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(260);
}

- (void)getFDRClassFromFile:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (OUTLINED_FUNCTION_43(a1, *MEMORY[0x29EDCA608]))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }
}

- (void)getFDRClassFromFDR:withOptions:withError:.cold.1()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19();
  if (OUTLINED_FUNCTION_28(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_27(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9);
  }

  *v2 = v3;
  *v1 = 0;
  *v0 = 0;
  OUTLINED_FUNCTION_41();
}

- (void)getFDRClassFromFDR:(void *)a1 withOptions:withError:.cold.2(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)getFDRClassFromFDR:withOptions:withError:.cold.3()
{
  OUTLINED_FUNCTION_38();
  v7 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_50(__osLog))
  {
    OUTLINED_FUNCTION_0();
    v5 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    v6 = 4998;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4);
  }

  *v0 = v1;
  OUTLINED_FUNCTION_39();
}

- (void)getFDRClassFromFDR:(uint64_t)a3 withOptions:(uint64_t)a4 withError:(uint64_t)a5 .cold.4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_42();
  a24 = v31;
  a25 = v32;
  OUTLINED_FUNCTION_30();
  a17 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_36(__osLog))
  {
    OUTLINED_FUNCTION_0();
    a12 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    a15 = 4984;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v30, v33, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &a9);
  }

  *v27 = v29;
  *v26 = 0;
  *v25 = v28;
  OUTLINED_FUNCTION_41();
}

- (void)getFDRClassFromFDR:.cold.1()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
}

- (void)getFDRClassFromFDR:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_31();
}

- (void)loadFDRClass:alternative:.cold.1()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19();
  if (OUTLINED_FUNCTION_28(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_27(&dword_296CA4000, v1, v2, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v3, v4, v5, v6);
  }

  *v0 = 261;
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41();
}

- (void)loadFDRClass:alternative:.cold.2()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_11();
}

- (void)loadFDRCalibrationData:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadFDRCalibrationData:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadFDRCalibrationData:.cold.3()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadFDRCalibrationData:(int)a1 .cold.4(int a1, _DWORD *a2)
{
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    v10 = 136316162;
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v4, v5, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v6, v7, v8, v9, v10);
  }

  *a2 = a1;
}

- (void)loadFDRCalibrationData:.cold.5()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadFDRCalibrationData:.cold.6()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadFDRCalibrationData:.cold.7()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadFDRCalibrationData:.cold.8()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadFDRCalibrationData:.cold.9()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadFDRCalibrationData:.cold.10()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)loadFDRCalibrationData:.cold.11()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)loadPCECalibrationOverride:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)loadPCECalibrationOverride:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)unwrapBrunorEncryptionKey
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(259);
}

- (BOOL)unwrapBrunorEncryptionKey
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  return v0 == 0;
}

- (void)filenameForSavageCertType:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v6, v7, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v8, v9, v10, v11);
  }

  *a3 = v4;
  *v3 = 0;
}

- (void)filenameForSavageCertType:.cold.2()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_11();
}

- (void)loadSavageFWCertificate
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.4()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initEnrollOperation:(void *)a3 biometricType:userID:options:client:.cold.5(uint64_t a1, uint64_t a2, void *a3)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v4, v5, v6, v7, v8, 0x30u);
  }
}

- (void)initEnrollOperation:biometricType:userID:options:client:.cold.6()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performEnrollCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performEnrollCommand:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)initMatchOperation:filter:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initMatchOperation:filter:options:client:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initMatchOperation:filter:options:client:.cold.3()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initMatchOperation:filter:options:client:.cold.4()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initMatchOperation:(void *)a1 filter:options:client:.cold.5(void *a1)
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v2, v3, v4, v5, v6, 0x30u);
  }
}

- (void)initMatchOperation:filter:options:client:.cold.6()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initMatchOperation:filter:options:client:.cold.7()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initMatchOperation:filter:options:client:.cold.8()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initMatchOperation:filter:options:client:.cold.9()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)processMetadataObjects:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)captureOutput:didOutputMetadataObjects:fromConnection:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)initSecureFaceDetect
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2_cold_1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

void __50__BiometricKitXPCServerPearl_initSecureFaceDetect__block_invoke_2_cold_2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (uint64_t)startSecureFaceDetect
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  return [v0 stopSecureFaceDetect];
}

void __51__BiometricKitXPCServerPearl_startSecureFaceDetect__block_invoke_cold_1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (uint64_t)secureFaceDetectRequestMessage:.cold.1()
{
  OUTLINED_FUNCTION_37();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v2, v3, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v4, v5, v6, v7);
  }

  return [v0 setSecureFaceDetectState:2 sessionID:*v1];
}

- (void)secureFaceDetectRequestMessage:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)secureFaceDetectRequestMessage:.cold.3()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)performMatchCommand:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)performMatchCommand:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performMatchCommand:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(260);
}

- (void)performMatchCommand:.cold.4()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)initPresenceDetectOperation:options:client:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initPresenceDetectOperation:options:client:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initPresenceDetectOperation:options:client:.cold.3()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initPresenceDetectOperation:options:client:.cold.4()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initPresenceDetectOperation:options:client:.cold.5()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initPresenceDetectOperation:options:client:.cold.6()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(266);
}

- (void)initPresenceDetectOperation:options:client:.cold.7()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)initPresenceDetectOperation:options:client:.cold.8()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)initPresenceDetectOperation:options:client:.cold.9()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)initPresenceDetectOperation:options:client:.cold.10()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)performPresenceDetectCommand:restart:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)cancelWithClient:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)cancelWithClient:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)updateIdentity:withOptions:withClient:.cold.1()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)updateIdentity:withOptions:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)removeIdentity:withOptions:withClient:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getBioLockoutState:forUser:withClient:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)startNewMatchAttemptWithClient:.cold.1()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
}

- (void)startNewMatchAttemptWithClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)completeEnrollmentWithClient:.cold.1()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
}

- (void)completeEnrollmentWithClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)setTemplate:forIdentity:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)setTemplate:forIdentity:withClient:.cold.2()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v1, v2, v3, v4, v5, 0x30u);
  }

  free(v0);
}

- (void)setTemplate:forIdentity:withClient:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(260);
}

- (void)setTemplate:forIdentity:withClient:.cold.4()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)setTemplate:forIdentity:withClient:.cold.5()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)isPeriocularEnrollmentSupported:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)isPeriocularEnrollmentSupported:withClient:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)isPeriocularEnrollmentSupported:withClient:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)getPeriocularMatchStateForUser:state:withClient:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)getPeriocularMatchStateForUser:state:withClient:.cold.2()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)getPeriocularMatchStateForUser:state:withClient:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_10();
}

- (void)removePeriocularTemplatesWithOptions:withClient:.cold.1()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19();
  if (OUTLINED_FUNCTION_28(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_27(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41();
}

- (void)removePeriocularTemplatesWithOptions:withClient:.cold.2()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19();
  if (OUTLINED_FUNCTION_28(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_27(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41();
}

- (void)removePeriocularTemplatesWithOptions:(uint64_t)a3 withClient:(uint64_t)a4 .cold.3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_42();
  a24 = v26;
  a25 = v27;
  OUTLINED_FUNCTION_30();
  a17 = *MEMORY[0x29EDCA608];
  if (OUTLINED_FUNCTION_36(__osLog))
  {
    OUTLINED_FUNCTION_0();
    a12 = &unk_296D32C0B;
    OUTLINED_FUNCTION_4();
    a15 = 7070;
    OUTLINED_FUNCTION_34(&dword_296CA4000, v25, v28, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", &a9);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_41();
}

- (void)removePeriocularTemplatesWithOptions:withClient:.cold.4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_19();
  if (OUTLINED_FUNCTION_28(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_27(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_41();
}

- (void)removePeriocularTemplatesWithOptions:withClient:.cold.5()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_11();
}

- (void)removePeriocularTemplatesWithOptions:withClient:.cold.6()
{
  OUTLINED_FUNCTION_25();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_35();
  OUTLINED_FUNCTION_11();
}

- (void)queryPeriocularMigrationState:clear:.cold.1()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)queryPeriocularMigrationState:clear:.cold.2()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)suspendEnrollment:withClient:.cold.1()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
}

- (void)suspendEnrollment:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)queryIdentityMigrationFailureForUser:failed:clear:withClient:.cold.1()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_23(257);
}

- (void)queryIdentityMigrationFailureForUser:failed:clear:withClient:.cold.2()
{
  OUTLINED_FUNCTION_8();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_24();
}

- (void)queryIdentityMigrationFailureForUser:failed:clear:withClient:.cold.3()
{
  if (OUTLINED_FUNCTION_12(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  OUTLINED_FUNCTION_9();
}

- (void)enableMatchAutoRetry:withClient:.cold.1()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_46();
}

- (void)enableMatchAutoRetry:withClient:.cold.2()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_44();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v3, v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, v6, v7, v8);
  }

  *v1 = v2;
  *v0 = 0;
  OUTLINED_FUNCTION_41();
}

- (void)pauseFaceDetectTimer:withClient:.cold.1()
{
  OUTLINED_FUNCTION_29();
  if (OUTLINED_FUNCTION_14(__osLog))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_13(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }

  OUTLINED_FUNCTION_46();
}

- (void)pauseFaceDetectTimer:withClient:.cold.2()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_44();
  if (OUTLINED_FUNCTION_21(__osLog))
  {
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_22();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_20(&dword_296CA4000, v3, v4, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v5, v6, v7, v8);
  }

  *v1 = v2;
  *v0 = 0;
  OUTLINED_FUNCTION_41();
}

- (void)prewarmCamera:withClient:.cold.1()
{
  OUTLINED_FUNCTION_32();
  if (OUTLINED_FUNCTION_18(__osLog))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v0, v1, v2, v3, v4, 0x30u);
  }

  if (OUTLINED_FUNCTION_18(__osLogTrace))
  {
    OUTLINED_FUNCTION_33();
    OUTLINED_FUNCTION_7();
    _os_log_impl(v5, v6, v7, v8, v9, 8u);
  }
}

- (void)performCancelCommand
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

- (void)performDisplayStatusChangedCommand:.cold.1()
{
  if (OUTLINED_FUNCTION_16(__osLog))
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_15(&dword_296CA4000, v0, v1, "AssertMacros: %s (value = 0x%lx), %s file: %s, line: %d\n\n", v2, v3, v4, v5);
  }
}

@end