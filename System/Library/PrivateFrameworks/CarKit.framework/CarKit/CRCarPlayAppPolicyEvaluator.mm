@interface CRCarPlayAppPolicyEvaluator
+ (id)_carIntentIdentifiers;
+ (id)allIntentIdentifiers;
- (BOOL)_automakerAppServiceContainsAppDeclaration:(id)declaration;
- (BOOL)_checkIfDeclaration:(id)declaration supportsIntents:(id)intents requireAllIntents:(BOOL)allIntents;
- (BOOL)_vehicleProtocolsIntersectAppProtocols:(id)protocols certificateSerial:(id)serial;
- (BOOL)isGeoSupported;
- (CRCarPlayAppPolicyEvaluator)initWithSession:(id)session;
- (id)_retrievePunchThroughIdentifiersFromInfoResponse;
- (id)_vehicleForCurrentSession;
- (id)_vehicleProtocolsForCertificateSerial:(id)serial;
- (id)currentSession;
- (id)effectivePolicyForAppDeclaration:(id)declaration inVehicleWithCertificateSerial:(id)serial;
- (id)effectivePolicyForAppDeclaration:(id)declaration withVerifiedPunchThroughs:(id)throughs;
- (unint64_t)_applicationCategoryForAppDeclaration:(id)declaration policy:(id)policy;
- (void)_hideAppIfPunchThroughExistsForBundleIdentifier:(id)identifier withPunchThroughsAppData:(id)data andAppPolicy:(id)policy;
- (void)_hideAppIfPunchThroughExistsForBundleIdentifier:(id)identifier withVerifiedPunchThroughs:(id)throughs andAppPolicy:(id)policy;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)fetchApplicationBundleIdentifiersForCarIntents:(id)intents;
- (void)setWantsGeoSupported;
- (void)updateGeoSupportedWithCompletion:(id)completion;
@end

@implementation CRCarPlayAppPolicyEvaluator

- (id)_vehicleForCurrentSession
{
  currentSession = [(CRCarPlayAppPolicyEvaluator *)self currentSession];
  mFiCertificateSerialNumber = [currentSession MFiCertificateSerialNumber];

  pairedVehicleManager = [(CRCarPlayAppPolicyEvaluator *)self pairedVehicleManager];
  v6 = [pairedVehicleManager vehicleForCertificateSerial:mFiCertificateSerialNumber];

  return v6;
}

- (id)currentSession
{
  session = [(CRCarPlayAppPolicyEvaluator *)self session];
  v4 = session;
  if (session)
  {
    currentSession = session;
  }

  else
  {
    sessionStatus = self->_sessionStatus;
    if (!sessionStatus)
    {
      v7 = objc_alloc_init(CARSessionStatus);
      v8 = self->_sessionStatus;
      self->_sessionStatus = v7;

      sessionStatus = self->_sessionStatus;
    }

    [(CARSessionStatus *)sessionStatus waitForSessionInitialization];
    currentSession = [(CARSessionStatus *)self->_sessionStatus currentSession];
  }

  v9 = currentSession;

  return v9;
}

+ (id)_carIntentIdentifiers
{
  v7[7] = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E696E6B0];
  v7[0] = *MEMORY[0x1E696E6A8];
  v7[1] = v2;
  v3 = *MEMORY[0x1E696E6D0];
  v7[2] = *MEMORY[0x1E696E6B8];
  v7[3] = v3;
  v4 = *MEMORY[0x1E696E690];
  v7[4] = *MEMORY[0x1E696E6C0];
  v7[5] = v4;
  v7[6] = *MEMORY[0x1E696E6C8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:7];

  return v5;
}

+ (id)allIntentIdentifiers
{
  v9[4] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696E6E0];
  v9[0] = *MEMORY[0x1E696E6E8];
  v9[1] = v3;
  v4 = *MEMORY[0x1E696E6A0];
  v9[2] = *MEMORY[0x1E696E698];
  v9[3] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:4];
  _carIntentIdentifiers = [self _carIntentIdentifiers];
  v7 = [v5 arrayByAddingObjectsFromArray:_carIntentIdentifiers];

  return v7;
}

- (CRCarPlayAppPolicyEvaluator)initWithSession:(id)session
{
  sessionCopy = session;
  v23.receiver = self;
  v23.super_class = CRCarPlayAppPolicyEvaluator;
  v6 = [(CRCarPlayAppPolicyEvaluator *)&v23 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_session, session);
    v8 = objc_alloc_init(CRCarPlayAppDenylist);
    [(CRCarPlayAppPolicyEvaluator *)v7 setDenylist:v8];

    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__CRCarPlayAppPolicyEvaluator_initWithSession___block_invoke;
    block[3] = &unk_1E82FBF70;
    v9 = v7;
    v22 = v9;
    if (initWithSession__onceToken != -1)
    {
      dispatch_once(&initWithSession__onceToken, block);
    }

    v10 = objc_alloc_init(CRPairedVehicleManager);
    pairedVehicleManager = v9->_pairedVehicleManager;
    v9->_pairedVehicleManager = v10;

    v12 = MEMORY[0x1E695DFA8];
    lockedAppBundleIdentifiers = [MEMORY[0x1E698B0D0] lockedAppBundleIdentifiers];
    v14 = [v12 setWithSet:lockedAppBundleIdentifiers];

    hiddenAppBundleIdentifiers = [MEMORY[0x1E698B0D0] hiddenAppBundleIdentifiers];
    [v14 unionSet:hiddenAppBundleIdentifiers];

    v16 = [MEMORY[0x1E695DFD8] setWithSet:v14];
    lockedOrHiddenApps = v9->_lockedOrHiddenApps;
    v9->_lockedOrHiddenApps = v16;

    subjectMonitorRegistry = [MEMORY[0x1E698B0F0] subjectMonitorRegistry];
    v19 = [subjectMonitorRegistry addMonitor:v9 subjectMask:1 subscriptionOptions:1];
  }

  return v7;
}

void __47__CRCarPlayAppPolicyEvaluator_initWithSession___block_invoke(uint64_t a1)
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v2 = objc_opt_class();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, CRCarPlayAppServicePolicyChangedHandler, @"com.apple.carkit.app.denylist-changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)setWantsGeoSupported
{
  if (![(CRCarPlayAppPolicyEvaluator *)self evaluatorWantsGeoManagement])
  {
    self->_evaluatorWantsGeoManagement = 1;
    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v3 = dispatch_queue_create("com.apple.carplay.policy_geo_queue", v5);
    geoQueue = self->_geoQueue;
    self->_geoQueue = v3;

    [(CRCarPlayAppPolicyEvaluator *)self updateGeoSupported];
  }
}

- (void)updateGeoSupportedWithCompletion:(id)completion
{
  completionCopy = completion;
  if ([(CRCarPlayAppPolicyEvaluator *)self evaluatorWantsGeoManagement])
  {
    geoQueue = self->_geoQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __64__CRCarPlayAppPolicyEvaluator_updateGeoSupportedWithCompletion___block_invoke;
    v6[3] = &unk_1E82FC270;
    v6[4] = self;
    v7 = completionCopy;
    dispatch_async(geoQueue, v6);
  }
}

void __64__CRCarPlayAppPolicyEvaluator_updateGeoSupportedWithCompletion___block_invoke(uint64_t a1)
{
  v4 = [MEMORY[0x1E69A1CD8] sharedConfiguration];
  v2 = [v4 currentCountrySupportsCarIntegration];
  *(*(a1 + 32) + 17) = v2;
  v3 = *(a1 + 40);
  if (v3)
  {
    (*(v3 + 16))(v3, v2);
  }
}

- (BOOL)isGeoSupported
{
  if ([(CRCarPlayAppPolicyEvaluator *)self evaluatorWantsGeoManagement])
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    geoQueue = self->_geoQueue;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __45__CRCarPlayAppPolicyEvaluator_isGeoSupported__block_invoke;
    v6[3] = &unk_1E82FD160;
    v6[4] = self;
    v6[5] = &v7;
    dispatch_sync(geoQueue, v6);
    geoSupported = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  else
  {
    geoSupported = self->_geoSupported;
  }

  return geoSupported & 1;
}

- (id)_vehicleProtocolsForCertificateSerial:(id)serial
{
  serialCopy = serial;
  if (serialCopy)
  {
    mFiCertificateSerialNumber = serialCopy;
    goto LABEL_4;
  }

  currentSession = [(CRCarPlayAppPolicyEvaluator *)self currentSession];
  mFiCertificateSerialNumber = [currentSession MFiCertificateSerialNumber];

  if (mFiCertificateSerialNumber)
  {
LABEL_4:
    v8 = +[CRVehicleAccessoryManager sharedInstance];
    v9 = [v8 vehicleAccessoryForCertificateSerial:mFiCertificateSerialNumber];
    v10 = v9;
    if (v9)
    {
      v11 = MEMORY[0x1E695DFD8];
      accessoryProtocols = [v9 accessoryProtocols];
      accessoryProtocols2 = [v11 setWithArray:accessoryProtocols];
    }

    else
    {
      _vehicleForCurrentSession = [(CRCarPlayAppPolicyEvaluator *)self _vehicleForCurrentSession];
      accessoryProtocols = _vehicleForCurrentSession;
      if (!_vehicleForCurrentSession)
      {
        v15 = 0;
        goto LABEL_9;
      }

      accessoryProtocols2 = [_vehicleForCurrentSession accessoryProtocols];
    }

    v15 = accessoryProtocols2;
LABEL_9:

    v16 = v15;
    goto LABEL_10;
  }

  mFiCertificateSerialNumber = CarGeneralLogging(v7);
  if (os_log_type_enabled(mFiCertificateSerialNumber, OS_LOG_TYPE_ERROR))
  {
    [CRCarPlayAppPolicyEvaluator _vehicleProtocolsForCertificateSerial:mFiCertificateSerialNumber];
  }

  v16 = 0;
LABEL_10:

  return v16;
}

- (BOOL)_vehicleProtocolsIntersectAppProtocols:(id)protocols certificateSerial:(id)serial
{
  v16 = *MEMORY[0x1E69E9840];
  protocolsCopy = protocols;
  serialCopy = serial;
  v8 = CarGeneralLogging(serialCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = protocolsCopy;
    _os_log_impl(&dword_1C81FC000, v8, OS_LOG_TYPE_DEFAULT, "Received app automaker protocols %{public}@", &v14, 0xCu);
  }

  v9 = [(CRCarPlayAppPolicyEvaluator *)self _vehicleProtocolsForCertificateSerial:serialCopy];

  v11 = CarGeneralLogging(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v9;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "Received session automaker protocols %{public}@", &v14, 0xCu);
  }

  if (v9)
  {
    v12 = [protocolsCopy intersectsSet:v9];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_automakerAppServiceContainsAppDeclaration:(id)declaration
{
  declarationCopy = declaration;
  if (_os_feature_enabled_impl())
  {
    bundleIdentifier = [declarationCopy bundleIdentifier];
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__3;
    v21 = __Block_byref_object_dispose__3;
    v22 = 0;
    v5 = dispatch_semaphore_create(0);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    v11 = MEMORY[0x1E69E9820];
    v12 = 3221225472;
    v13 = __74__CRCarPlayAppPolicyEvaluator__automakerAppServiceContainsAppDeclaration___block_invoke;
    v14 = &unk_1E82FC548;
    v16 = &v17;
    v7 = v5;
    v15 = v7;
    [CRAppClipsDeclarationClient fetchSupportedAppClipsForPairedVehicleIdentifier:uUID completion:&v11];
    v8 = dispatch_time(0, 5000000000);
    dispatch_semaphore_wait(v7, v8);
    v9 = [v18[5] containsObject:{bundleIdentifier, v11, v12, v13, v14}];

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __74__CRCarPlayAppPolicyEvaluator__automakerAppServiceContainsAppDeclaration___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    v7 = [MEMORY[0x1E695DFD8] setWithArray:a2];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  else
  {
    v10 = CarGeneralLogging(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __74__CRCarPlayAppPolicyEvaluator__automakerAppServiceContainsAppDeclaration___block_invoke_cold_1();
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (BOOL)_checkIfDeclaration:(id)declaration supportsIntents:(id)intents requireAllIntents:(BOOL)allIntents
{
  allIntentsCopy = allIntents;
  declarationCopy = declaration;
  intentsCopy = intents;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v9 = [MEMORY[0x1E695DFD8] setWithArray:intentsCopy];
  bundleIdentifier = [declarationCopy bundleIdentifier];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2050000000;
  v11 = getLSApplicationRecordClass_softClass;
  v36 = getLSApplicationRecordClass_softClass;
  if (!getLSApplicationRecordClass_softClass)
  {
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __getLSApplicationRecordClass_block_invoke;
    v32[3] = &unk_1E82FC8F8;
    v32[4] = &v33;
    __getLSApplicationRecordClass_block_invoke(v32);
    v11 = v34[3];
  }

  v12 = v11;
  _Block_object_dispose(&v33, 8);
  v27 = 0;
  v13 = [[v11 alloc] initWithBundleIdentifier:bundleIdentifier allowPlaceholder:0 error:&v27];
  v14 = v27;
  v15 = v14;
  if (!v13)
  {
    v18 = CarGeneralLogging(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CRCarPlayAppPolicyEvaluator _checkIfDeclaration:supportsIntents:requireAllIntents:];
    }

    goto LABEL_15;
  }

  v16 = MEMORY[0x1E695DFD8];
  supportedIntents = [v13 supportedIntents];
  v18 = [v16 setWithArray:supportedIntents];

  if (!-[NSObject count](v18, "count") || (!allIntentsCopy ? (v19 = [v9 intersectsSet:v18]) : (v19 = objc_msgSend(v9, "isSubsetOfSet:", v18)), (v19 & 1) == 0))
  {
    applicationExtensionRecords = [v13 applicationExtensionRecords];
    if ([applicationExtensionRecords count])
    {
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __85__CRCarPlayAppPolicyEvaluator__checkIfDeclaration_supportsIntents_requireAllIntents___block_invoke;
      v23[3] = &unk_1E82FD188;
      v26 = allIntentsCopy;
      v25 = &v28;
      v24 = v9;
      [applicationExtensionRecords enumerateObjectsUsingBlock:v23];
    }

LABEL_15:
    v20 = *(v29 + 24);
    goto LABEL_16;
  }

  v20 = 1;
LABEL_16:

  _Block_object_dispose(&v28, 8);
  return v20 & 1;
}

void __85__CRCarPlayAppPolicyEvaluator__checkIfDeclaration_supportsIntents_requireAllIntents___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = MEMORY[0x1E695DFD8];
  v6 = [a2 supportedIntents];
  v9 = [v5 setWithArray:v6];

  v7 = *(a1 + 32);
  if (*(a1 + 48) == 1)
  {
    v8 = [v7 isSubsetOfSet:v9];
  }

  else
  {
    v8 = [v7 intersectsSet:v9];
  }

  *(*(*(a1 + 40) + 8) + 24) = v8;
  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

- (unint64_t)_applicationCategoryForAppDeclaration:(id)declaration policy:(id)policy
{
  declarationCopy = declaration;
  policyCopy = policy;
  _applicationCategory = [declarationCopy _applicationCategory];
  if (!_applicationCategory)
  {
    v8 = CarGeneralLogging(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CRCarPlayAppPolicyEvaluator _applicationCategoryForAppDeclaration:declarationCopy policy:v8];
    }

    if ([policyCopy launchUsingTemplateUI])
    {
      if ([declarationCopy supportsAudio])
      {
        goto LABEL_27;
      }

      if ([declarationCopy supportsMaps])
      {
        _applicationCategory = 8;
        goto LABEL_28;
      }

      if ([declarationCopy supportsCalling])
      {
        _applicationCategory = 4;
        goto LABEL_28;
      }

      if ([declarationCopy supportsMessaging])
      {
        _applicationCategory = 2;
        goto LABEL_28;
      }

      if ([declarationCopy supportsCharging])
      {
        _applicationCategory = 256;
        goto LABEL_28;
      }

      if ([declarationCopy supportsParking])
      {
        _applicationCategory = 512;
        goto LABEL_28;
      }

      if ([declarationCopy supportsQuickOrdering])
      {
        _applicationCategory = 128;
        goto LABEL_28;
      }

      if ([declarationCopy supportsFueling])
      {
        _applicationCategory = 2048;
        goto LABEL_28;
      }

      if ([declarationCopy supportsDrivingTask])
      {
        _applicationCategory = 4096;
        goto LABEL_28;
      }

      if ([declarationCopy supportsPublicSafety])
      {
        _applicationCategory = 0x2000;
        goto LABEL_28;
      }

      if ([declarationCopy supportsVideo])
      {
        _applicationCategory = 0x4000;
        goto LABEL_28;
      }
    }

    if (([policyCopy launchUsingMusicUIService] & 1) == 0)
    {
      goto LABEL_28;
    }

LABEL_27:
    _applicationCategory = 16;
  }

LABEL_28:

  return _applicationCategory;
}

- (id)effectivePolicyForAppDeclaration:(id)declaration inVehicleWithCertificateSerial:(id)serial
{
  v84 = *MEMORY[0x1E69E9840];
  declarationCopy = declaration;
  serialCopy = serial;
  v7 = objc_alloc_init(CRCarPlayAppPolicy);
  if (declarationCopy)
  {
    denylist = [(CRCarPlayAppPolicyEvaluator *)self denylist];
    bundleIdentifier = [declarationCopy bundleIdentifier];
    v10 = [denylist containsBundleIdentifier:bundleIdentifier];

    if ((v10 & 1) == 0)
    {
      launchUsingSiri = [declarationCopy launchUsingSiri];
      launchNotificationsUsingSiri = [declarationCopy launchNotificationsUsingSiri];
      supportsTemplates = [declarationCopy supportsTemplates];
      if ([declarationCopy isSystemApp])
      {
        if ([declarationCopy requiresGeoSupport])
        {
          v64 = supportsTemplates;
          isGeoSupported = [(CRCarPlayAppPolicyEvaluator *)self isGeoSupported];
          v14 = 1;
        }

        else
        {
          isGeoSupported = [declarationCopy supportsVideo] ^ 1;
          v64 = isGeoSupported & supportsTemplates;
          v14 = isGeoSupported;
        }
      }

      else
      {
        v64 = supportsTemplates;
        isGeoSupported = 0;
        v14 = 0;
      }

      supportsPlayableContent = [declarationCopy supportsPlayableContent];
      if ([declarationCopy supportsAutomakerAppService])
      {
        v16 = [(CRCarPlayAppPolicyEvaluator *)self _automakerAppServiceContainsAppDeclaration:declarationCopy];
      }

      else
      {
        v16 = 0;
      }

      *&v65[4] = [declarationCopy autoMakerProtocols];
      if (*&v65[4])
      {
        v17 = [(CRCarPlayAppPolicyEvaluator *)self _vehicleProtocolsIntersectAppProtocols:*&v65[4] certificateSerial:serialCopy];
        *v65 = 1;
      }

      else
      {
        *v65 = [declarationCopy supportsAutomakerAppService];
        v17 = 0;
      }

      if (v16 || v17)
      {
        v18 = +[CRCarPlayAppPolicyEvaluator _carIntentIdentifiers];
        v63 = [(CRCarPlayAppPolicyEvaluator *)self _appWithDeclaration:declarationCopy supportsAnyIntents:v18];

        isGeoSupported = 1;
        v19 = 1;
        v20 = 1;
      }

      else
      {
        v63 = 0;
        v19 = supportsPlayableContent | isGeoSupported;
        v20 = supportsPlayableContent | v14;
      }

      supportsPublicSafety = [declarationCopy supportsPublicSafety];
      v68 = supportsPublicSafety | isGeoSupported;
      v22 = supportsPublicSafety | v19;
      v23 = supportsPublicSafety | v20;
      if (([declarationCopy supportsMessaging] & 1) != 0 || objc_msgSend(declarationCopy, "supportsCommunication"))
      {
        v24 = *MEMORY[0x1E696E6A0];
        v79[0] = *MEMORY[0x1E696E698];
        v79[1] = v24;
        v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v79 count:2];
        v26 = [(CRCarPlayAppPolicyEvaluator *)self _appWithDeclaration:declarationCopy supportsAllIntents:v25];

        supportsTemplates2 = v68;
        if (v26)
        {
          supportsTemplates2 = [declarationCopy supportsTemplates];
          launchNotificationsUsingSiri = 1;
          launchUsingSiri = [declarationCopy supportsTemplates] ^ 1;
          LOBYTE(v68) = 1;
          v22 = 1;
          v23 = 1;
        }
      }

      else
      {
        supportsTemplates2 = v68;
      }

      if (([declarationCopy supportsCalling] & 1) != 0 || objc_msgSend(declarationCopy, "supportsCommunication"))
      {
        v28 = *MEMORY[0x1E696E6E0];
        v78[0] = *MEMORY[0x1E696E6E8];
        v78[1] = v28;
        v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:2];
        v30 = [(CRCarPlayAppPolicyEvaluator *)self _appWithDeclaration:declarationCopy supportsAnyIntents:v29];

        if (v30)
        {
          supportsTemplates2 = [declarationCopy supportsTemplates];
          launchNotificationsUsingSiri = 1;
          launchUsingSiri = [declarationCopy supportsTemplates] ^ 1;
          LOBYTE(v68) = 1;
          v22 = 1;
          v23 = 1;
        }
      }

      if (([declarationCopy supportsMaps] & 1) != 0 || (objc_msgSend(declarationCopy, "supportsAudio") & 1) != 0 || (objc_msgSend(declarationCopy, "supportsCharging") & 1) != 0 || (objc_msgSend(declarationCopy, "supportsParking") & 1) != 0 || (objc_msgSend(declarationCopy, "supportsQuickOrdering") & 1) != 0 || (objc_msgSend(declarationCopy, "supportsFueling") & 1) != 0 || objc_msgSend(declarationCopy, "supportsDrivingTask"))
      {
        supportsTemplates2 = 1;
        v22 = 1;
        v23 = 1;
      }

      if (([declarationCopy supportsParking] & 1) != 0 || (objc_msgSend(declarationCopy, "supportsCharging") & 1) != 0 || (v31 = objc_msgSend(declarationCopy, "supportsDrivingTask"), v32 = v68, v31))
      {
        launchNotificationsUsingSiri = 0;
        v32 = 1;
      }

      v62 = v32;
      if ([declarationCopy supportsVideo])
      {
        currentSession = [(CRCarPlayAppPolicyEvaluator *)self currentSession];
        configuration = [currentSession configuration];
        videoPlaybackSupported = [configuration videoPlaybackSupported];

        v22 |= videoPlaybackSupported;
        supportsTemplates2 |= videoPlaybackSupported;
        *v65 = 1;
        v23 = 1;
      }

      bundleIdentifier2 = [declarationCopy bundleIdentifier];
      if ([bundleIdentifier2 isEqualToString:@"com.apple.Home"])
      {
      }

      else
      {
        bundleIdentifier3 = [declarationCopy bundleIdentifier];
        v38 = [bundleIdentifier3 isEqualToString:@"com.apple.shortcuts"];

        if ((v38 & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      launchUsingSiri = 0;
      launchNotificationsUsingSiri = 1;
LABEL_44:
      bundleIdentifier4 = [declarationCopy bundleIdentifier];
      v40 = [bundleIdentifier4 isEqualToString:@"com.apple.mobilephone"];

      bundleIdentifier5 = [declarationCopy bundleIdentifier];
      v42 = [bundleIdentifier5 isEqualToString:@"com.apple.MobileSMS"];

      if (v42)
      {
        v23 = 1;
        LOBYTE(v22) = 1;
        LOBYTE(supportsTemplates2) = 1;
        v64 = 1;
        v67 = 0;
        LOBYTE(v68) = 1;
        v61 = 1;
      }

      else
      {
        v67 = (v40 ^ 1) & launchUsingSiri;
        v61 = (v40 ^ 1) & launchNotificationsUsingSiri;
        if (((v22 | supportsTemplates2) & 1) == 0)
        {
          v56 = 0;
          LOBYTE(supportsTemplates2) = 0;
          goto LABEL_62;
        }
      }

      lockedOrHiddenApps = self->_lockedOrHiddenApps;
      bundleIdentifier6 = [declarationCopy bundleIdentifier];
      v45 = [(NSSet *)lockedOrHiddenApps containsObject:bundleIdentifier6];

      if (v45)
      {
        bundleIdentifier8 = CarGeneralLogging(v46);
        if (os_log_type_enabled(bundleIdentifier8, OS_LOG_TYPE_DEFAULT))
        {
          bundleIdentifier7 = [declarationCopy bundleIdentifier];
          LODWORD(buf) = 138543362;
          *(&buf + 4) = bundleIdentifier7;
          _os_log_impl(&dword_1C81FC000, bundleIdentifier8, OS_LOG_TYPE_DEFAULT, "Application locked by policy: %{public}@", &buf, 0xCu);
        }

        LOBYTE(supportsTemplates2) = 0;
        v49 = 0;
LABEL_65:

        v56 = !v45;
        goto LABEL_66;
      }

      if (v22)
      {
        bundleIdentifier8 = [declarationCopy bundleIdentifier];
        v70 = 0;
        v71 = &v70;
        v72 = 0x2020000000;
        v50 = getkAssistantDirectActionEventKeySymbolLoc_ptr;
        v73 = getkAssistantDirectActionEventKeySymbolLoc_ptr;
        if (!getkAssistantDirectActionEventKeySymbolLoc_ptr)
        {
          *&buf = MEMORY[0x1E69E9820];
          *(&buf + 1) = 3221225472;
          v81 = __getkAssistantDirectActionEventKeySymbolLoc_block_invoke;
          v82 = &unk_1E82FC8F8;
          v83 = &v70;
          __getkAssistantDirectActionEventKeySymbolLoc_block_invoke(&buf);
          v50 = v71[3];
        }

        _Block_object_dispose(&v70, 8);
        if (!v50)
        {
          [CRCarPlayAppPolicyEvaluator effectivePolicyForAppDeclaration:inVehicleWithCertificateSerial:];
          __break(1u);
        }

        v51 = *v50;
        if (v51)
        {
          v52 = v67;
        }

        else
        {
          v52 = 0;
        }

        if (v52 == 1)
        {
          v77[0] = bundleIdentifier8;
          v76[0] = @"__bundleId";
          v76[1] = @"__supportsCarFullScreen";
          v53 = MEMORY[0x1E696AD98];
          v54 = v51;
          v55 = [v53 numberWithBool:supportsTemplates2 & 1];
          v77[1] = v55;
          v76[2] = v54;
          v77[2] = &unk_1F47F26B8;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:3];
        }

        else
        {
          v74[1] = @"__supportsCarFullScreen";
          v75[0] = bundleIdentifier8;
          v74[0] = @"__bundleId";
          v57 = MEMORY[0x1E696AD98];
          v58 = v51;
          v55 = [v57 numberWithBool:supportsTemplates2 & 1];
          v75[1] = v55;
          [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
        }
        v49 = ;

        goto LABEL_65;
      }

      v56 = 0;
LABEL_62:
      v49 = 0;
LABEL_66:
      [(CRCarPlayAppPolicy *)v7 setCarPlayCapable:v23 & 1];
      [(CRCarPlayAppPolicy *)v7 setCarPlaySupported:v56];
      [(CRCarPlayAppPolicy *)v7 setCanDisplayOnCarScreen:supportsTemplates2 & 1];
      [(CRCarPlayAppPolicy *)v7 setLaunchUsingSiri:v67];
      [(CRCarPlayAppPolicy *)v7 setLaunchNotificationsUsingSiri:v61];
      [(CRCarPlayAppPolicy *)v7 setSiriActivationOptions:v49];
      if (supportsTemplates2)
      {
        supportsPlayableContent2 = 0;
      }

      else
      {
        supportsPlayableContent2 = [declarationCopy supportsPlayableContent];
      }

      [(CRCarPlayAppPolicy *)v7 setLaunchUsingMusicUIService:supportsPlayableContent2];
      [(CRCarPlayAppPolicy *)v7 setBadgesAppIcon:v68 & 1];
      [(CRCarPlayAppPolicy *)v7 setShowsNotifications:v62 & 1];
      [(CRCarPlayAppPolicy *)v7 setHandlesCarIntents:v63];
      [(CRCarPlayAppPolicy *)v7 setLaunchUsingTemplateUI:v64];
      [(CRCarPlayAppPolicy *)v7 setSessionDependentPolicy:*v65];
      [(CRCarPlayAppPolicy *)v7 setApplicationCategory:[(CRCarPlayAppPolicyEvaluator *)self _applicationCategoryForAppDeclaration:declarationCopy policy:v7]];
    }
  }

  return v7;
}

- (id)effectivePolicyForAppDeclaration:(id)declaration withVerifiedPunchThroughs:(id)throughs
{
  declarationCopy = declaration;
  throughsCopy = throughs;
  v8 = [(CRCarPlayAppPolicyEvaluator *)self effectivePolicyForAppDeclaration:declarationCopy inVehicleWithCertificateSerial:0];
  bundleIdentifier = [declarationCopy bundleIdentifier];
  if (throughsCopy)
  {
    [(CRCarPlayAppPolicyEvaluator *)self _hideAppIfPunchThroughExistsForBundleIdentifier:bundleIdentifier withVerifiedPunchThroughs:throughsCopy andAppPolicy:v8];
  }

  else
  {
    _vehicleForCurrentSession = [(CRCarPlayAppPolicyEvaluator *)self _vehicleForCurrentSession];
    oemPunchThroughsAsApp = [_vehicleForCurrentSession oemPunchThroughsAsApp];
    v12 = [oemPunchThroughsAsApp mutableCopy];

    bundleIdentifier2 = [declarationCopy bundleIdentifier];
    v14 = [v12 valueForKey:bundleIdentifier2];

    if (v14)
    {
      [(CRCarPlayAppPolicyEvaluator *)self _hideAppIfPunchThroughExistsForBundleIdentifier:bundleIdentifier withPunchThroughsAppData:v14 andAppPolicy:v8];
    }
  }

  return v8;
}

- (void)fetchApplicationBundleIdentifiersForCarIntents:(id)intents
{
  intentsCopy = intents;
  v5 = MEMORY[0x1E696ABD0];
  v6 = +[CRCarPlayAppPolicyEvaluator _carIntentIdentifiers];
  v7 = [v5 _intents_extensionMatchingAttributesForIntents:v6];

  v8 = MEMORY[0x1E696ABD0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__CRCarPlayAppPolicyEvaluator_fetchApplicationBundleIdentifiersForCarIntents___block_invoke;
  v10[3] = &unk_1E82FD1B0;
  v10[4] = self;
  v11 = intentsCopy;
  v9 = intentsCopy;
  [v8 extensionsWithMatchingAttributes:v7 completion:v10];
}

void __78__CRCarPlayAppPolicyEvaluator_fetchApplicationBundleIdentifiersForCarIntents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v28 = v6;
    v31 = [MEMORY[0x1E695DFA8] set];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
    v10 = a1;
    if (v9)
    {
      v11 = v9;
      v12 = *v33;
      v13 = 0x1E6963000uLL;
      v30 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v15 = [*(*(&v32 + 1) + 8 * i) _plugIn];
          v16 = [v15 containingUrl];

          if (v16)
          {
            v17 = [*(v13 + 1504) applicationProxyForBundleURL:v16];
            if (v17)
            {
              v18 = [CRCarPlayAppDeclaration declarationForAppProxy:v17];
              v19 = [v18 autoMakerProtocols];
              if (v19 && [*(v10 + 32) _vehicleProtocolsIntersectAppProtocols:v19 certificateSerial:0])
              {
                [v18 bundleIdentifier];
                v20 = v8;
                v21 = v13;
                v23 = v22 = v10;
                [v31 addObject:v23];

                v10 = v22;
                v13 = v21;
                v8 = v20;
                v12 = v30;
              }
            }
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v11);
    }

    v25 = CarGeneralLogging(v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = v31;
      _os_log_impl(&dword_1C81FC000, v25, OS_LOG_TYPE_INFO, "car intents applications: %@", buf, 0xCu);
    }

    v26 = *(v10 + 40);
    v7 = v28;
    if (v26)
    {
      (*(v26 + 16))(v26, v31, 0);
    }

    v5 = v29;
  }

  else
  {
    v27 = *(a1 + 40);
    if (v27)
    {
      (*(v27 + 16))(v27, 0, v7);
    }
  }
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  v5 = MEMORY[0x1E695DFA8];
  lockedAppBundleIdentifiers = [MEMORY[0x1E698B0D0] lockedAppBundleIdentifiers];
  v10 = [v5 setWithSet:lockedAppBundleIdentifiers];

  hiddenAppBundleIdentifiers = [MEMORY[0x1E698B0D0] hiddenAppBundleIdentifiers];
  [v10 unionSet:hiddenAppBundleIdentifiers];

  v8 = [MEMORY[0x1E695DFD8] setWithSet:v10];
  lockedOrHiddenApps = self->_lockedOrHiddenApps;
  self->_lockedOrHiddenApps = v8;
}

- (void)_hideAppIfPunchThroughExistsForBundleIdentifier:(id)identifier withPunchThroughsAppData:(id)data andAppPolicy:(id)policy
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dataCopy = data;
  policyCopy = policy;
  v11 = CarGeneralLogging(policyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "AppPolicy infoResponse punchThroughs check", buf, 2u);
  }

  punchThroughs = [dataCopy punchThroughs];
  v13 = punchThroughs;
  if (punchThroughs && (punchThroughs = [punchThroughs count]) != 0)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    _retrievePunchThroughIdentifiersFromInfoResponse = [(CRCarPlayAppPolicyEvaluator *)self _retrievePunchThroughIdentifiersFromInfoResponse];
    v15 = [_retrievePunchThroughIdentifiersFromInfoResponse countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(_retrievePunchThroughIdentifiersFromInfoResponse);
          }

          v19 = [v13 containsObject:*(*(&v21 + 1) + 8 * i)];
          if (v19)
          {
            v20 = CarGeneralLogging(v19);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v27 = identifierCopy;
              _os_log_impl(&dword_1C81FC000, v20, OS_LOG_TYPE_DEFAULT, "AppPolicy hiding app: %@", buf, 0xCu);
            }

            [policyCopy setCarPlaySupported:0];
            goto LABEL_19;
          }
        }

        v16 = [_retrievePunchThroughIdentifiersFromInfoResponse countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    _retrievePunchThroughIdentifiersFromInfoResponse = CarGeneralLogging(punchThroughs);
    if (os_log_type_enabled(_retrievePunchThroughIdentifiersFromInfoResponse, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v27 = identifierCopy;
      _os_log_impl(&dword_1C81FC000, _retrievePunchThroughIdentifiersFromInfoResponse, OS_LOG_TYPE_DEFAULT, "AppPolicy No punchThrough identifier in CRVehicle for app: %@", buf, 0xCu);
    }
  }

LABEL_19:
}

- (void)_hideAppIfPunchThroughExistsForBundleIdentifier:(id)identifier withVerifiedPunchThroughs:(id)throughs andAppPolicy:(id)policy
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  throughsCopy = throughs;
  policyCopy = policy;
  v11 = CarGeneralLogging(policyCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_1C81FC000, v11, OS_LOG_TYPE_DEFAULT, "AppPolicy asset punchThroughs check", &v21, 2u);
  }

  _vehicleForCurrentSession = [(CRCarPlayAppPolicyEvaluator *)self _vehicleForCurrentSession];
  oemPunchThroughsAsApp = [_vehicleForCurrentSession oemPunchThroughsAsApp];
  v14 = [oemPunchThroughsAsApp mutableCopy];

  v15 = throughsCopy;
  v16 = v15;
  if (v15 && (v15 = [v15 count]) != 0)
  {
    v17 = CarGeneralLogging(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412290;
      v22 = identifierCopy;
      _os_log_impl(&dword_1C81FC000, v17, OS_LOG_TYPE_DEFAULT, "AppPolicy hiding app: %@", &v21, 0xCu);
    }

    [policyCopy setCarPlaySupported:0];
    v18 = [[CROEMPunchThroughsAppData alloc] initWithPunchThroughIDs:v16];
    [v14 setValue:v18 forKey:identifierCopy];
  }

  else
  {
    v19 = CarGeneralLogging(v15);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_1C81FC000, v19, OS_LOG_TYPE_DEFAULT, "AppPolicy no punchThroughs match between asset and infoResponse", &v21, 2u);
    }

    [v14 removeObjectForKey:identifierCopy];
  }

  [_vehicleForCurrentSession setOemPunchThroughsAsApp:v14];
  pairedVehicleManager = [(CRCarPlayAppPolicyEvaluator *)self pairedVehicleManager];
  [pairedVehicleManager saveVehicle:_vehicleForCurrentSession completion:&__block_literal_global_22];
}

void __118__CRCarPlayAppPolicyEvaluator__hideAppIfPunchThroughExistsForBundleIdentifier_withVerifiedPunchThroughs_andAppPolicy___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = CarGeneralLogging(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __118__CRCarPlayAppPolicyEvaluator__hideAppIfPunchThroughExistsForBundleIdentifier_withVerifiedPunchThroughs_andAppPolicy___block_invoke_cold_1();
    }
  }
}

- (id)_retrievePunchThroughIdentifiersFromInfoResponse
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  currentSession = [(CRCarPlayAppPolicyEvaluator *)self currentSession];
  configuration = [currentSession configuration];
  displays = [configuration displays];

  v7 = [displays countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(displays);
        }

        v11 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        oemPunchThroughs = [v11 oemPunchThroughs];
        v13 = [oemPunchThroughs countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v20;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v20 != v15)
              {
                objc_enumerationMutation(oemPunchThroughs);
              }

              identifier = [*(*(&v19 + 1) + 8 * j) identifier];
              [v3 addObject:identifier];
            }

            v14 = [oemPunchThroughs countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v14);
        }
      }

      v8 = [displays countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  return v3;
}

void __74__CRCarPlayAppPolicyEvaluator__automakerAppServiceContainsAppDeclaration___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C81FC000, v0, OS_LOG_TYPE_ERROR, "failed to fetch app clip declarations: %@", v1, 0xCu);
}

- (void)_checkIfDeclaration:supportsIntents:requireAllIntents:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1C81FC000, v1, OS_LOG_TYPE_ERROR, "Failed to lookup app %@ with error: %@", v2, 0x16u);
}

- (void)_applicationCategoryForAppDeclaration:(void *)a1 policy:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 bundleIdentifier];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C81FC000, a2, OS_LOG_TYPE_ERROR, "App with unknown category: %@", v4, 0xCu);
}

- (void)effectivePolicyForAppDeclaration:inVehicleWithCertificateSerial:.cold.1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  __118__CRCarPlayAppPolicyEvaluator__hideAppIfPunchThroughExistsForBundleIdentifier_withVerifiedPunchThroughs_andAppPolicy___block_invoke_cold_1();
}

void __118__CRCarPlayAppPolicyEvaluator__hideAppIfPunchThroughExistsForBundleIdentifier_withVerifiedPunchThroughs_andAppPolicy___block_invoke_cold_1()
{
  v2 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_1C81FC000, v0, OS_LOG_TYPE_ERROR, "Failed to save vehicle with OEM PunchThroughs as app with error: %@", v1, 0xCu);
}

@end