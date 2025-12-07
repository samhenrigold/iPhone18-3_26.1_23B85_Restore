@interface PGPictureInPictureRemoteObject
+ (void)tetherRemoteObject:(id)object toRemoteObject:(id)remoteObject mode:(int64_t)mode;
- (BOOL)_canTransitionToState:(int64_t)state;
- (BOOL)_currentStateAllowsProcessAssertion;
- (BOOL)_isAppICS;
- (BOOL)_isAssociatedWithOtherObject:(id)object;
- (BOOL)_isICSVideoCall;
- (BOOL)_isInActivitySession;
- (BOOL)_wantsProcessAssertion;
- (BOOL)canActivateUntetheredAlongsideOtherObject:(id)object;
- (BOOL)canCancelPictureInPicture;
- (BOOL)canEndTwoStageStopPictureInPicture;
- (BOOL)canPreventOrSuspendRemoteObject:(id)object;
- (BOOL)canStartBackgroundPIPForCurrentActivitySessionIdentifier;
- (BOOL)canStartMicroPIP;
- (BOOL)canTetherRemoteObjectAsMicroPIP:(id)p;
- (BOOL)isStartingStoppingOrCancellingPictureInPicture;
- (BOOL)matchesSceneSessionIdentifier:(id)identifier;
- (BOOL)shouldStartPictureInPictureEnteringBackground;
- (BOOL)supportsMicroPIP;
- (CGRect)initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding;
- (CGSize)preferredContentSize;
- (FBSDisplayConfiguration)sourceSceneSettingsDisplayConfiguration;
- (NSString)activitySessionIdentifier;
- (NSXPCConnection)connection;
- (PGPictureInPictureAnalyticsDelegate)analyticsDelegate;
- (PGPictureInPictureRemoteObject)init;
- (PGPictureInPictureRemoteObject)initWithConnection:(id)connection interruptionAssistant:(id)assistant;
- (PGPictureInPictureRemoteObjectDelegate)delegate;
- (id)_invalidationTimerWithTimeout:(double)timeout block:(id)block;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (int64_t)sourceSceneSettingsInterfaceOrientation;
- (void)_acquireOrInvalidateProcessAssertionIfNeeded;
- (void)_finishCleanup;
- (void)_invalidateAllAssertions;
- (void)_invalidateForFailureToStartStopOrCancel;
- (void)_invalidateInterruptionBeganFinishTaskAssertion;
- (void)_notifyProxyOfStashedOrUnderLock:(BOOL)lock;
- (void)_queue_notifyProxyOfInterruptionBegan;
- (void)_queue_notifyProxyOfInterruptionEnded;
- (void)_setCurrentState:(int64_t)state;
- (void)_setResolvedResourcesUsageReductionReasons:(unint64_t)reasons;
- (void)_setUILockedResourcesUsageReductionReasons:(unint64_t)reasons;
- (void)_stopTethering;
- (void)_updateActiveProxyAndViewControllerOfInterruptionIfNeeded;
- (void)_updatePreferredContentSize:(CGSize)size withCompletionHandler:(id)handler;
- (void)beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler:(id)handler;
- (void)cancel;
- (void)checkActivePictureInPictureCancellationPolicyWithCompletion:(id)completion;
- (void)cleanupWithCompletionHandler:(id)handler;
- (void)dealloc;
- (void)endTwoStageStopPictureInPictureWithCompletionBlock:(id)block;
- (void)initializePictureInPictureWithControlsStyle:(int64_t)style preferredContentSize:(CGSize)size sceneIdentifier:(id)identifier affectsAppLifeCycle:(BOOL)cycle completionHandler:(id)handler;
- (void)invalidate;
- (void)pagingAccessorySetCurrentPage:(unint64_t)page numberOfPages:(unint64_t)pages;
- (void)pagingSkipByNumberOfPages:(int64_t)pages;
- (void)pictureInPictureInterruptionBeganWithReason:(int64_t)reason attribution:(id)attribution;
- (void)pictureInPictureInterruptionEndedWithReason:(int64_t)reason attribution:(id)attribution;
- (void)pictureInPictureViewController:(id)controller didReceiveCommand:(id)command;
- (void)pictureInPictureViewController:(id)controller didTransitionToStashed:(BOOL)stashed;
- (void)pictureInPictureViewController:(id)controller updateHostedWindowSize:(CGSize)size animationType:(int64_t)type initialSpringVelocity:(double)velocity;
- (void)pictureInPictureViewControllerDidRequestCancel:(id)cancel;
- (void)pictureInPictureViewControllerDidRequestStop:(id)stop;
- (void)pictureInPictureViewControllerHostedWindowSizeChangeBegan:(id)began;
- (void)pictureInPictureViewControllerHostedWindowSizeChangeEnded:(id)ended;
- (void)resume;
- (void)rotateContentContainer:(int64_t)container withCompletionHandler:(id)handler;
- (void)sendStartPictureInPictureTestAction;
- (void)setActivitySessionIdentifier:(id)identifier;
- (void)setAnalyticsDelegate:(id)delegate;
- (void)setCurrentResourcesUsageReductionReasons:(unint64_t)reasons;
- (void)setExemptAttribution:(id)attribution;
- (void)setExemptAttributionOverride:(id)override;
- (void)setPictureInPicturePossible:(BOOL)possible;
- (void)setPictureInPictureShouldStartWhenEnteringBackground:(BOOL)background completionHandler:(id)handler;
- (void)setSourceSceneSessionPersistentIdentifier:(id)identifier;
- (void)setupStartAnimated:(BOOL)animated hostedWindowHostingHandle:(id)handle sceneSessionPersistentIdentifier:(id)identifier preferredContentSize:(CGSize)size initialInterfaceOrientation:(int64_t)orientation initialLayerFrame:(CGRect)frame completionHandler:(id)handler;
- (void)setupStopAnimated:(BOOL)animated needsApplicationActivation:(BOOL)activation completionHandler:(id)handler;
- (void)startPictureInPictureAnimated:(BOOL)animated completionHandler:(id)handler;
- (void)startPictureInPictureEnteringBackgroundAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)startPictureInPictureFromBackground;
- (void)stopPictureInPictureAndRestoreUserInterface;
- (void)stopPictureInPictureAnimated:(BOOL)animated withCompletionHandler:(id)handler;
- (void)stopPictureInPictureAnimated:(BOOL)animated withFinalInterfaceOrientation:(int64_t)orientation finalLayerFrame:(CGRect)frame completionHandler:(id)handler;
- (void)suspend;
- (void)updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding:(CGRect)backgrounding withCompletionHandler:(id)handler;
- (void)updateMenuItems:(id)items;
- (void)updatePlaybackStateWithDiff:(id)diff;
- (void)updatePreferredContentSize:(CGSize)size withCompletionHandler:(id)handler;
- (void)updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding:(id)backgrounding withCompletionHandler:(id)handler;
@end

@implementation PGPictureInPictureRemoteObject

- (BOOL)matchesSceneSessionIdentifier:(id)identifier
{
  if (!identifier)
  {
    return 1;
  }

  identifierCopy = identifier;
  sourceSceneSessionPersistentIdentifier = [(PGPictureInPictureRemoteObject *)self sourceSceneSessionPersistentIdentifier];
  v6 = [sourceSceneSessionPersistentIdentifier isEqualToString:identifierCopy];

  return v6;
}

- (PGPictureInPictureRemoteObject)initWithConnection:(id)connection interruptionAssistant:(id)assistant
{
  connectionCopy = connection;
  assistantCopy = assistant;
  v8 = PGLogCommon(assistantCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject initWithConnection:interruptionAssistant:];
  }

  v27.receiver = self;
  v27.super_class = PGPictureInPictureRemoteObject;
  v9 = [(PGPictureInPictureRemoteObject *)&v27 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_connection, connectionCopy);
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pegasus.PGPictureInPictureRemoteObject %p", v10];
    uTF8String = [v11 UTF8String];
    v13 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v14 = dispatch_queue_create(uTF8String, v13);
    queue = v10->_queue;
    v10->_queue = v14;

    v16 = +[PGPictureInPictureApplication pictureInPictureApplicationWithProcessIdentifier:](PGPictureInPictureApplication, "pictureInPictureApplicationWithProcessIdentifier:", [connectionCopy processIdentifier]);
    pictureInPictureApplication = v10->_pictureInPictureApplication;
    v10->_pictureInPictureApplication = v16;

    v10->_currentState = 0;
    objc_initWeak(&location, v10);
    v18 = MEMORY[0x1E69E96A0];
    v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PictureInPicture - PGPictureInPictureRemoteObject - %p", v10];
    objc_copyWeak(&v25, &location);
    v20 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureInvalidatable = v10->_stateCaptureInvalidatable;
    v10->_stateCaptureInvalidatable = v20;

    objc_storeStrong(&v10->_interruptionAssistant, assistant);
    interruptionAssistant = v10->_interruptionAssistant;
    bundleIdentifier = [(PGPictureInPictureApplication *)v10->_pictureInPictureApplication bundleIdentifier];
    [(PGInterruptionAssistant *)interruptionAssistant setExemptAttribution:bundleIdentifier];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v10;
}

__CFString *__75__PGPictureInPictureRemoteObject_initWithConnection_interruptionAssistant___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained description];
  }

  else
  {
    v3 = &stru_1F394B800;
  }

  return v3;
}

- (PGPictureInPictureRemoteObject)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D920];
  v5 = _PGLogMethodProem(self, 0);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [v3 raise:v4 format:{@"%@ is not a valid initializer. You must call -[%@ initWithConnection:].", v5, v7}];

  return [(PGPictureInPictureRemoteObject *)self initWithConnection:0 interruptionAssistant:0];
}

- (void)dealloc
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_4();
  v2 = _PGLogMethodProem(v0, v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v3, v4, "%@", v5, v6, v7, v8);
}

uint64_t __41__PGPictureInPictureRemoteObject_dealloc__block_invoke(uint64_t a1)
{
  [*(a1 + 32) deactivateAnalyticsSessionIfNeeded];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);

  return [v2 pictureInPictureDidDestroyAnalyticsSourceWithUUID:v3];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(PGPictureInPictureRemoteObject *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(PGPictureInPictureRemoteObject *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  succinctDescriptionBuilder = [(PGPictureInPictureRemoteObject *)self succinctDescriptionBuilder];
  v5 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication description];
  [succinctDescriptionBuilder appendString:v5 withName:@"application"];

  [succinctDescriptionBuilder appendString:self->_sourceSceneSessionPersistentIdentifier withName:@"sourceSceneSessionPersistentIdentifier"];
  activitySessionIdentifier = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
  [succinctDescriptionBuilder appendString:activitySessionIdentifier withName:@"activitySessionIdentifier"];

  v7 = PGStringFromPictureInPictureControlsStyle(self->_controlsStyle);
  [succinctDescriptionBuilder appendString:v7 withName:@"controlsStyle"];

  v8 = [succinctDescriptionBuilder appendBool:self->_isPictureInPicturePossible withName:@"isPictureInPicturePossible"];
  [succinctDescriptionBuilder appendString:self->_exemptAttribution withName:@"exemptAttribution"];
  [succinctDescriptionBuilder appendString:self->_exemptAttributionOverride withName:@"exemptAttributionOverride"];
  v9 = [succinctDescriptionBuilder appendBool:-[PGPictureInPictureRemoteObject isInterrupted](self withName:{"isInterrupted"), @"isInterrupted"}];
  v10 = PGStringFromPictureInPictureRemoteObjectState(self->_currentState);
  [succinctDescriptionBuilder appendString:v10 withName:@"currentState"];

  v11 = [succinctDescriptionBuilder appendBool:self->_pictureInPictureShouldStartWhenEnteringBackground withName:@"pictureInPictureShouldStartWhenEnteringBackground"];
  v12 = [succinctDescriptionBuilder appendBool:self->_stashed withName:@"stashed"];
  if (self->_tetheringRemoteObject)
  {
    v13 = 1;
  }

  else
  {
    v13 = self->_tetheredRemoteObject != 0;
  }

  v14 = [succinctDescriptionBuilder appendBool:v13 withName:@"isInMicroPIP"];
  v15 = [succinctDescriptionBuilder appendBool:-[PGPictureInPictureRemoteObject _isUnderLock](self withName:{"_isUnderLock"), @"isUnderLock"}];
  v16 = NSStringFromCGRect(self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding);
  [succinctDescriptionBuilder appendString:v16 withName:@"initialLayerFrame"];

  return succinctDescriptionBuilder;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

- (void)setAnalyticsDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_analyticsDelegate, delegateCopy);
    analyticsSourceUUID = self->_analyticsSourceUUID;
    p_analyticsSourceUUID = &self->_analyticsSourceUUID;
    uUID = analyticsSourceUUID;
    bundleIdentifier = [p_analyticsSourceUUID[18] bundleIdentifier];
    v10 = bundleIdentifier;
    v11 = @"com.apple.MissingBundleIdentifier";
    if (bundleIdentifier)
    {
      v11 = bundleIdentifier;
    }

    v12 = v11;

    [(__CFString *)v12 isEqualToString:@"com.apple.InCallService"];
    if (!uUID)
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      objc_storeStrong(p_analyticsSourceUUID, uUID);
    }

    v15 = delegateCopy;
    v16 = uUID;
    v13 = v12;
    v14 = uUID;
    BSDispatchMain();
  }
}

- (BOOL)shouldStartPictureInPictureEnteringBackground
{
  v29 = *MEMORY[0x1E69E9840];
  isPictureInPicturePossible = [(PGPictureInPictureRemoteObject *)self isPictureInPicturePossible];
  pictureInPictureShouldStartWhenEnteringBackground = self->_pictureInPictureShouldStartWhenEnteringBackground;
  v5 = [(PGPictureInPictureRemoteObject *)self _canTransitionToState:3];
  v6 = (self->_currentState - 3) <= 2 && self->_pictureInPictureStartedAutomatically;
  v7 = v5 || v6;
  isInterrupted = [(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted];
  v9 = isInterrupted;
  if (isPictureInPicturePossible && pictureInPictureShouldStartWhenEnteringBackground)
  {
    v10 = v7 & (isInterrupted ^ 1);
  }

  else
  {
    v10 = 0;
  }

  v11 = PGLogCommon(isInterrupted);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v7;
    if (v9)
    {
      v13 = [(PGInterruptionAssistant *)self->_interruptionAssistant description];
    }

    else
    {
      v13 = &stru_1F394B800;
    }

    v15 = 134219522;
    selfCopy = self;
    v17 = 1024;
    v18 = v10 & 1;
    v19 = 1024;
    v20 = isPictureInPicturePossible;
    v21 = 1024;
    v22 = pictureInPictureShouldStartWhenEnteringBackground;
    v23 = 1024;
    v24 = v12;
    v25 = 1024;
    v26 = v9;
    v27 = 2114;
    v28 = v13;
    _os_log_impl(&dword_1BB282000, v11, OS_LOG_TYPE_DEFAULT, "Remote object(%p) shouldStartPictureInPictureEnteringBackground check result:%{BOOL}u. State: possible(%{BOOL}u) shouldStartEnteringBackground(%{BOOL}u) canStartAutomaticallyOrIsStartingAutomatically(%{BOOL}u) isInterrupted(%{BOOL}u) %{public}@", &v15, 0x34u);
    if (v9)
    {
    }
  }

  return v10 & 1;
}

- (BOOL)canCancelPictureInPicture
{
  currentState = self->_currentState;
  if (currentState > 0xE)
  {
    return 0;
  }

  if (((1 << currentState) & 0x73C7) != 0)
  {
    return [(PGPictureInPictureRemoteObject *)self _canTransitionToState:7];
  }

  return 1;
}

- (BOOL)isStartingStoppingOrCancellingPictureInPicture
{
  if ([(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture])
  {
    return 1;
  }

  return [(PGPictureInPictureRemoteObject *)self isStoppingOrCancellingPictureInPicture];
}

- (BOOL)canEndTwoStageStopPictureInPicture
{
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v4 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  return self->_hasBegunTwoStageStop;
}

- (void)setPictureInPicturePossible:(BOOL)possible
{
  possibleCopy = possible;
  v18 = *MEMORY[0x1E69E9840];
  v6 = PGLogCommon(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v8 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (self->_isPictureInPicturePossible != possibleCopy)
  {
    self->_isPictureInPicturePossible = possibleCopy;
    if (possibleCopy)
    {
      isMainThread = [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists activateIfNeeded];
    }

    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [MEMORY[0x1E696AD98] numberWithBool:possibleCopy];
      *buf = 138543618;
      selfCopy = self;
      v16 = 2112;
      v17 = v10;
      _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "isPictureInPicturePossible - %{public}@ %@", buf, 0x16u);
    }

    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__PGPictureInPictureRemoteObject_setPictureInPicturePossible___block_invoke;
    block[3] = &unk_1E7F32A80;
    block[4] = self;
    block[5] = a2;
    v13 = possibleCopy;
    dispatch_async(queue, block);
  }
}

void __62__PGPictureInPictureRemoteObject_setPictureInPicturePossible___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 updatePictureInPicturePossible:*(a1 + 48)];
}

- (void)setSourceSceneSessionPersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->_sourceSceneSessionPersistentIdentifier != identifierCopy && ![(NSString *)identifierCopy isEqualToString:?])
  {
    v6 = [(NSString *)v5 copy];
    sourceSceneSessionPersistentIdentifier = self->_sourceSceneSessionPersistentIdentifier;
    self->_sourceSceneSessionPersistentIdentifier = v6;

    if (v5)
    {
      v19 = 0;
      v20 = &v19;
      v21 = 0x2050000000;
      v8 = getFBSceneManagerClass_softClass;
      v22 = getFBSceneManagerClass_softClass;
      if (!getFBSceneManagerClass_softClass)
      {
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __getFBSceneManagerClass_block_invoke;
        v18[3] = &unk_1E7F32FC8;
        v18[4] = &v19;
        __getFBSceneManagerClass_block_invoke(v18);
        v8 = v20[3];
      }

      v9 = v8;
      _Block_object_dispose(&v19, 8);
      sharedInstance = [v8 sharedInstance];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __76__PGPictureInPictureRemoteObject_setSourceSceneSessionPersistentIdentifier___block_invoke;
      v16 = &unk_1E7F32AA8;
      v17 = v5;
      v11 = [sharedInstance scenesPassingTest:&v13];
      anyObject = [v11 anyObject];
      objc_storeWeak(&self->_sourceScene, anyObject);

      [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists updateInterfaceOrientation];
    }
  }
}

uint64_t __76__PGPictureInPictureRemoteObject_setSourceSceneSessionPersistentIdentifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 settings];
  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [v9 persistenceIdentifier];

  v11 = [v10 isEqualToString:*(a1 + 32)];
  *a3 = v11;
  return v11;
}

- (int64_t)sourceSceneSettingsInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_sourceScene);
  isStartingPictureInPicture = [(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture];
  interfaceOrientation = 1;
  if (!isStartingPictureInPicture && WeakRetained)
  {
    settings = [WeakRetained settings];
    interfaceOrientation = [settings interfaceOrientation];
  }

  return interfaceOrientation;
}

- (FBSDisplayConfiguration)sourceSceneSettingsDisplayConfiguration
{
  delegate = [(PGPictureInPictureRemoteObject *)self delegate];
  v4 = [delegate pictureInPictureRemoteObject:self displayConfigurationForApplication:self->_pictureInPictureApplication];

  return v4;
}

- (void)startPictureInPictureEnteringBackgroundAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v8 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v18 = "[PGPictureInPictureRemoteObject startPictureInPictureEnteringBackgroundAnimated:withCompletionHandler:]";
    v19 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v10 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:3])
  {
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:3];
    [(PGPictureInPictureViewController *)self->_pictureInPictureViewController notePictureInPictureStartedAutomatically:1];
    queue = self->_queue;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke;
    v13[3] = &unk_1E7F32B70;
    v13[4] = self;
    v15 = a2;
    v14 = handlerCopy;
    animatedCopy = animated;
    dispatch_async(queue, v13);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

void __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_2;
  v10[3] = &unk_1E7F32AF8;
  v4 = *(a1 + 40);
  v10[4] = *(a1 + 32);
  v11 = v4;
  v5 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3 errorHandler:v10];
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_4;
  v8[3] = &unk_1E7F32B48;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v7;
  [v5 pictureInPictureStartRequestedAnimated:v6 withCompletionHandler:v8];
}

void __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7F32AD0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v10 = v4;
  v6 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_3(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, 0, a1[4]);
  }

  WeakRetained = objc_loadWeakRetained((a1[5] + 8));
  [WeakRetained invalidate];
}

void __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_4(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_5;
  v9[3] = &unk_1E7F32B20;
  v6 = *(a1 + 40);
  v13 = a2;
  v7 = *(a1 + 32);
  v10 = v5;
  v11 = v7;
  v12 = v6;
  v8 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v9);
}

void *__104__PGPictureInPictureRemoteObject_startPictureInPictureEnteringBackgroundAnimated_withCompletionHandler___block_invoke_5(uint64_t a1)
{
  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 2))(result, *(a1 + 56), *(a1 + 32));
  }

  if ((*(a1 + 56) & 1) == 0)
  {
    v3 = *(a1 + 40);

    return [v3 _invalidateForFailureToStartStopOrCancel];
  }

  return result;
}

- (void)stopPictureInPictureAnimated:(BOOL)animated withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:8])
  {
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:8];
    queue = self->_queue;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke;
    v12[3] = &unk_1E7F32B70;
    v12[4] = self;
    v14 = a2;
    animatedCopy = animated;
    v13 = handlerCopy;
    dispatch_async(queue, v12);
  }

  else if (handlerCopy)
  {
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v11);
  }
}

void __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E7F32478;
  v7 = *(a1 + 40);
  [v4 pictureInPictureStopRequestedAnimated:v5 withCompletionHandler:v6];
}

void __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7F32B98;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:9])
  {
    self->_hasBegunTwoStageStop = 1;
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:9];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke;
    block[3] = &unk_1E7F32C10;
    block[4] = self;
    v12 = a2;
    v11 = handlerCopy;
    dispatch_async(queue, block);
  }

  else if (handlerCopy)
  {
    if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:6])
    {
      [(PGPictureInPictureRemoteObject *)self _setCurrentState:6];
    }

    self->_hasBegunTwoStageStop = 0;
    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
  }
}

void __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke_2;
  v6[3] = &unk_1E7F32BE8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v4 beginTwoStagePictureInPictureStopByRestoringUserInterfaceWithCompletionHandler:v6];
}

void __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E7F32BC0;
  v11 = a2;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

uint64_t __113__PGPictureInPictureRemoteObject_beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    if ([*(a1 + 32) _canTransitionToState:6])
    {
      [*(a1 + 32) _setCurrentState:6];
    }

    *(*(a1 + 32) + 160) = 0;
  }

  result = *(a1 + 48);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)endTwoStageStopPictureInPictureWithCompletionBlock:(id)block
{
  blockCopy = block;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if (self->_hasBegunTwoStageStop)
  {
    goto LABEL_9;
  }

  v8 = PGLogCommon(isMainThread);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject endTwoStageStopPictureInPictureWithCompletionBlock:v8];
  }

  if (self->_hasBegunTwoStageStop)
  {
LABEL_9:
    self->_hasBegunTwoStageStop = 0;
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke;
    block[3] = &unk_1E7F32C10;
    block[4] = self;
    v13 = a2;
    v12 = blockCopy;
    dispatch_async(queue, block);
  }

  else if (blockCopy)
  {
    v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
    (*(blockCopy + 2))(blockCopy, 0, v10);
  }
}

void __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke_2;
  v5[3] = &unk_1E7F32478;
  v6 = *(a1 + 40);
  [v4 endTwoStagePictureInPictureStopWithCompletionBlock:v5];
}

void __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke_3;
  block[3] = &unk_1E7F32B98;
  v6 = *(a1 + 32);
  v11 = a2;
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __85__PGPictureInPictureRemoteObject_endTwoStageStopPictureInPictureWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)sendStartPictureInPictureTestAction
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = PGLogCommon(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[PGPictureInPictureRemoteObject sendStartPictureInPictureTestAction]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v6 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__PGPictureInPictureRemoteObject_sendStartPictureInPictureTestAction__block_invoke;
  v8[3] = &unk_1E7F32870;
  v8[4] = self;
  v8[5] = a2;
  dispatch_async(queue, v8);
}

void __69__PGPictureInPictureRemoteObject_sendStartPictureInPictureTestAction__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = +[PGCommand commandForTestStartPIP];
  v5 = [v4 dictionaryRepresentation];
  [v3 handleCommand:v5];
}

- (void)startPictureInPictureFromBackground
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"PGPictureInPictureRemoteObject.m" lineNumber:534 description:{@"Tried to BG PIP a remote object %@ that has NO for pip is possible", a2}];
}

void *__69__PGPictureInPictureRemoteObject_startPictureInPictureFromBackground__block_invoke(void *result)
{
  v2 = result[4];
  v3 = *(v2 + 64);
  if (v3 == result[5])
  {
    v4 = result;
    *(v2 + 64) = 0;

    v5 = v4[5];

    return [v5 invalidate];
  }

  return result;
}

void __69__PGPictureInPictureRemoteObject_startPictureInPictureFromBackground__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = +[PGCommand commandForStartPIP];
  v5 = [v4 dictionaryRepresentation];
  [v3 handleCommand:v5];
}

- (void)pictureInPictureInterruptionBeganWithReason:(int64_t)reason attribution:(id)attribution
{
  v23 = *MEMORY[0x1E69E9840];
  attributionCopy = attribution;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v8 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v9 = [(PGInterruptionAssistant *)self->_interruptionAssistant addReason:reason attribution:attributionCopy];
  if (reason == 2)
  {
    exemptAttributionOverride = self->_exemptAttributionOverride;
    if (!exemptAttributionOverride)
    {
      exemptAttributionOverride = self->_exemptAttribution;
    }

    v9 = [attributionCopy isEqualToString:exemptAttributionOverride];
    if (v9)
    {
      v9 = [(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:4];
      if (v9)
      {
        v9 = [(PGPictureInPictureRemoteObject *)self pictureInPictureInterruptionEndedWithReason:4 attribution:0];
      }
    }
  }

  v11 = PGLogCommon(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (reason > 4)
    {
      v12 = @"invalid";
    }

    else
    {
      v12 = off_1E7F33090[reason];
    }

    isInterrupted = [(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted];
    v15 = 136315906;
    v16 = "[PGPictureInPictureRemoteObject pictureInPictureInterruptionBeganWithReason:attribution:]";
    v17 = 2048;
    selfCopy = self;
    v19 = 2114;
    v20 = v12;
    v21 = 1024;
    v22 = isInterrupted;
    _os_log_impl(&dword_1BB282000, v11, OS_LOG_TYPE_DEFAULT, "%s %p: %{public}@ isInterrupted %{BOOL}u ", &v15, 0x26u);
  }

  if ([(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:1])
  {
    [(PGPictureInPictureRemoteObject *)self _setUILockedResourcesUsageReductionReasons:1];
  }

  if (reason == 1)
  {
    v14 = self->_stashed || [(PGPictureInPictureRemoteObject *)self _isUnderLock];
    [(PGPictureInPictureRemoteObject *)self _notifyProxyOfStashedOrUnderLock:v14];
  }

  [(PGPictureInPictureRemoteObject *)self _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
}

- (void)pictureInPictureInterruptionEndedWithReason:(int64_t)reason attribution:(id)attribution
{
  v20 = *MEMORY[0x1E69E9840];
  attributionCopy = attribution;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v8 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v9 = [(PGInterruptionAssistant *)self->_interruptionAssistant removeReason:reason attribution:attributionCopy];
  if (reason == 1)
  {
    v10 = self->_stashed || [(PGPictureInPictureRemoteObject *)self _isUnderLock];
    v9 = [(PGPictureInPictureRemoteObject *)self _notifyProxyOfStashedOrUnderLock:v10];
  }

  v11 = PGLogCommon(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    if (reason > 4)
    {
      v12 = @"invalid";
    }

    else
    {
      v12 = off_1E7F33090[reason];
    }

    isInterrupted = [(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted];
    v14 = 138543874;
    v15 = v12;
    v16 = 1024;
    v17 = isInterrupted;
    v18 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v11, OS_LOG_TYPE_DEFAULT, "pictureInPictureInterruptionEndedWithReason: %{public}@ isInterrupted %{BOOL}u %p", &v14, 0x1Cu);
  }

  [(PGPictureInPictureRemoteObject *)self _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
  if (![(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:1])
  {
    [(PGPictureInPictureRemoteObject *)self _setUILockedResourcesUsageReductionReasons:0];
  }

  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController flashControls];
}

- (void)_notifyProxyOfStashedOrUnderLock:(BOOL)lock
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__PGPictureInPictureRemoteObject__notifyProxyOfStashedOrUnderLock___block_invoke;
  block[3] = &unk_1E7F32A80;
  block[4] = self;
  block[5] = a2;
  lockCopy = lock;
  dispatch_async(queue, block);
}

void __67__PGPictureInPictureRemoteObject__notifyProxyOfStashedOrUnderLock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 setStashedOrUnderLock:*(a1 + 48)];
}

- (void)suspend
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = PGLogCommon(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[PGPictureInPictureRemoteObject suspend]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v6 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:12])
  {
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:12];
    queue = self->_queue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__PGPictureInPictureRemoteObject_suspend__block_invoke;
    v8[3] = &unk_1E7F32870;
    v8[4] = self;
    v8[5] = a2;
    dispatch_async(queue, v8);
  }
}

void __41__PGPictureInPictureRemoteObject_suspend__block_invoke(uint64_t a1)
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __41__PGPictureInPictureRemoteObject_suspend__block_invoke_2;
  v1[3] = &unk_1E7F32870;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], v1);
}

uint64_t __41__PGPictureInPictureRemoteObject_suspend__block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __41__PGPictureInPictureRemoteObject_suspend__block_invoke_3;
  v2[3] = &unk_1E7F32870;
  v3 = *(a1 + 32);
  return [*(v3 + 256) performSuspendAnimationWithCompletionHandler:v2];
}

void __41__PGPictureInPictureRemoteObject_suspend__block_invoke_3(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v1 = *(a1 + 32);
  v2 = *(*(a1 + 32) + 16);
  v3[2] = __41__PGPictureInPictureRemoteObject_suspend__block_invoke_4;
  v3[3] = &unk_1E7F32870;
  v4 = v1;
  dispatch_async(v2, v3);
}

void __41__PGPictureInPictureRemoteObject_suspend__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = [PGCommand commandForSetSuspended:1];
  v5 = [v4 dictionaryRepresentation];
  [v3 handleCommand:v5];
}

- (void)resume
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = PGLogCommon(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[PGPictureInPictureRemoteObject resume]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v6 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  queue = self->_queue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__PGPictureInPictureRemoteObject_resume__block_invoke;
  v8[3] = &unk_1E7F32870;
  v8[4] = self;
  v8[5] = a2;
  dispatch_async(queue, v8);
}

void __40__PGPictureInPictureRemoteObject_resume__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  v5 = [PGCommand commandForSetSuspended:0];
  v6 = [v5 dictionaryRepresentation];
  [v4 handleCommand:v6];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PGPictureInPictureRemoteObject_resume__block_invoke_2;
  block[3] = &unk_1E7F32530;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __40__PGPictureInPictureRemoteObject_resume__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 256);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__PGPictureInPictureRemoteObject_resume__block_invoke_3;
  v4[3] = &unk_1E7F32530;
  v4[4] = v1;
  return [v2 performResumeAnimationWithCompletionHandler:v4];
}

void *__40__PGPictureInPictureRemoteObject_resume__block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[5] == 12)
  {
    return [result _setCurrentState:6];
  }

  return result;
}

- (void)cancel
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = PGLogCommon(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[PGPictureInPictureRemoteObject cancel]";
    v12 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v6 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:7])
  {
    *&self->_hasPendingCancellationRequest = 0;
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:7];
    [(PGPictureInPictureViewController *)self->_pictureInPictureViewController notePictureInPictureWillStopForAppRequest:0 preferredFullScreenRestore:0];
    queue = self->_queue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__PGPictureInPictureRemoteObject_cancel__block_invoke;
    v9[3] = &unk_1E7F32870;
    v9[4] = self;
    v9[5] = a2;
    dispatch_async(queue, v9);
  }

  else
  {
    isStartingPictureInPicture = [(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture];
    if (isStartingPictureInPicture)
    {
      LOBYTE(isStartingPictureInPicture) = [(PGPictureInPictureRemoteObject *)self canCancelPictureInPicture];
    }

    self->_hasPendingCancellationRequest = isStartingPictureInPicture;
    self->_hasPendingStopRequest = 0;
  }
}

void __40__PGPictureInPictureRemoteObject_cancel__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 pictureInPictureCancelRequestedAnimated:1 withCompletionHandler:&__block_literal_global_9];
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = BSDispatchQueueAssertMain();
  v4 = PGLogCommon(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v10 = "[PGPictureInPictureRemoteObject invalidate]";
    v11 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:13])
  {
    [(PGPictureInPictureRemoteObject *)self _setCurrentState:13];
    parentViewController = [(PGPictureInPictureViewController *)self->_pictureInPictureViewController parentViewController];

    if (parentViewController)
    {
      delegate = [(PGPictureInPictureRemoteObject *)self delegate];
      [delegate pictureInPictureRemoteObject:self willHidePictureInPictureViewController:self->_pictureInPictureViewController];

      [(PGPictureInPictureRemoteObject *)self _stopTethering];
      pictureInPictureViewController = self->_pictureInPictureViewController;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __44__PGPictureInPictureRemoteObject_invalidate__block_invoke;
      v8[3] = &unk_1E7F32530;
      v8[4] = self;
      [(PGPictureInPictureViewController *)pictureInPictureViewController performStopAnimated:1 withFinalInterfaceOrientation:0 finalLayerFrame:v8 completionHandler:*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)];
    }

    else if ([(PGPictureInPictureRemoteObject *)self _canTransitionToState:14])
    {
      [(PGPictureInPictureRemoteObject *)self _setCurrentState:14];
      [(PGPictureInPictureRemoteObject *)self _finishCleanup];
    }
  }

  [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists invalidate];
}

void *__44__PGPictureInPictureRemoteObject_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) setHostedWindowHostingHandle:0];
  [*(*(a1 + 32) + 256) setSceneView:0];
  v2 = [*(a1 + 32) delegate];
  [v2 pictureInPictureRemoteObject:*(a1 + 32) didHidePictureInPictureViewController:*(*(a1 + 32) + 256)];

  result = [*(a1 + 32) _canTransitionToState:14];
  if (result)
  {
    [*(a1 + 32) _setCurrentState:14];
    v4 = *(a1 + 32);

    return [v4 _finishCleanup];
  }

  return result;
}

- (void)setCurrentResourcesUsageReductionReasons:(unint64_t)reasons
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = PGLogCommon(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[PGPictureInPictureRemoteObject setCurrentResourcesUsageReductionReasons:]";
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p ", &v8, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  self->_externalResourcesUsageReductionReasons = reasons;
  [(PGPictureInPictureRemoteObject *)self _setResolvedResourcesUsageReductionReasons:self->_UILockedResourcesUsageReductionReasons | reasons];
}

- (void)_setUILockedResourcesUsageReductionReasons:(unint64_t)reasons
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = PGLogCommon(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[PGPictureInPictureRemoteObject _setUILockedResourcesUsageReductionReasons:]";
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p ", &v8, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  self->_UILockedResourcesUsageReductionReasons = reasons;
  [(PGPictureInPictureRemoteObject *)self _setResolvedResourcesUsageReductionReasons:self->_externalResourcesUsageReductionReasons | reasons];
}

- (void)_setResolvedResourcesUsageReductionReasons:(unint64_t)reasons
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PGPictureInPictureRemoteObject__setResolvedResourcesUsageReductionReasons___block_invoke;
  block[3] = &unk_1E7F32C58;
  block[4] = self;
  block[5] = reasons;
  block[6] = a2;
  dispatch_async(queue, block);
}

void __77__PGPictureInPictureRemoteObject__setResolvedResourcesUsageReductionReasons___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v2 + 184) != v3)
  {
    *(v2 + 184) = v3;
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v5 = _PGLogMethodProem(*(a1 + 32), 1);
    v6 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v5];
    [v6 setResourcesUsageReductionReasons:*(a1 + 40)];
  }
}

- (NSString)activitySessionIdentifier
{
  activitySessionIdentifier = self->_activitySessionIdentifier;
  if (activitySessionIdentifier)
  {
    bundleIdentifier = activitySessionIdentifier;
  }

  else
  {
    bundleIdentifier = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
  }

  return bundleIdentifier;
}

- (BOOL)canStartBackgroundPIPForCurrentActivitySessionIdentifier
{
  if (self->_currentState != 2 || self->_pictureInPictureViewController)
  {
    return 0;
  }

  activitySessionIdentifierForLastActivePIPSession = self->_activitySessionIdentifierForLastActivePIPSession;
  activitySessionIdentifier = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
  if ([(NSString *)activitySessionIdentifierForLastActivePIPSession isEqualToString:activitySessionIdentifier])
  {
    _isICSVideoCall = [(PGPictureInPictureRemoteObject *)self _isICSVideoCall];
  }

  else
  {
    _isICSVideoCall = 1;
  }

  return _isICSVideoCall;
}

- (BOOL)supportsMicroPIP
{
  supportsMicroPIP = [(PGPlaybackState *)self->_playbackState supportsMicroPIP];
  if (supportsMicroPIP)
  {

    LOBYTE(supportsMicroPIP) = [(PGPictureInPictureRemoteObject *)self _isAppICS];
  }

  return supportsMicroPIP;
}

- (BOOL)canStartMicroPIP
{
  supportsMicroPIP = [(PGPictureInPictureRemoteObject *)self supportsMicroPIP];
  if (supportsMicroPIP)
  {
    if (self->_hasPendingStopRequest)
    {
      v4 = 0;
    }

    else
    {
      v4 = !self->_hasPendingCancellationRequest;
      if (!self->_hasPendingCancellationRequest && (self->_currentState - 2) >= 5)
      {
        delegate = [(PGPictureInPictureRemoteObject *)self delegate];
        v4 = [delegate pictureInPictureRemoteObjectHasBackgroundPIPAuthorization:self];
      }
    }

    LOBYTE(supportsMicroPIP) = [(PGPictureInPictureRemoteObject *)self supportsMicroPIP]& v4;
  }

  return supportsMicroPIP;
}

- (BOOL)canTetherRemoteObjectAsMicroPIP:(id)p
{
  v32 = *MEMORY[0x1E69E9840];
  pCopy = p;
  v5 = pCopy;
  if (self->_currentState - 3) > 3 || (pCopy = [pCopy canStartMicroPIP], !pCopy) || (pCopy = -[PGPictureInPictureRemoteObject canStartMicroPIP](self, "canStartMicroPIP"), (pCopy) || self->_tetheredRemoteObject)
  {
    v6 = 0;
  }

  else
  {
    pCopy = [(PGPictureInPictureRemoteObject *)self _isAssociatedWithOtherObject:v5];
    v6 = pCopy;
  }

  v7 = PGLogCommon(pCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
    v9 = PGStringFromPictureInPictureRemoteObjectState(self->_currentState);
    canStartMicroPIP = [v5 canStartMicroPIP];
    v11 = ![(PGPictureInPictureRemoteObject *)self canStartMicroPIP];
    v12 = self->_tetheredRemoteObject == 0;
    v14 = 136317186;
    v15 = "[PGPictureInPictureRemoteObject canTetherRemoteObjectAsMicroPIP:]";
    v16 = 2048;
    selfCopy = self;
    v18 = 2114;
    v19 = bundleIdentifier;
    v20 = 1024;
    v21 = v6;
    v22 = 2114;
    v23 = v9;
    v24 = 1024;
    v25 = canStartMicroPIP;
    v26 = 1024;
    v27 = v11;
    v28 = 1024;
    v29 = v12;
    v30 = 1024;
    v31 = [(PGPictureInPictureRemoteObject *)self _isAssociatedWithOtherObject:v5];
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ %{BOOL}u || _currentState: %{public}@ [otherObject canStartMicroPIP] %{BOOL}u ![self canStartMicroPIP] %{BOOL}u _tetheredMicroPIP == nil %{BOOL}u [self _isAssociatedWithOtherObject:otherObject] %{BOOL}u", &v14, 0x48u);
  }

  return v6;
}

- (BOOL)canActivateUntetheredAlongsideOtherObject:(id)object
{
  objectCopy = object;
  v5 = -[PGPictureInPictureRemoteObject contentType](self, "contentType") == 6 || [objectCopy contentType] == 6;

  return v5;
}

+ (void)tetherRemoteObject:(id)object toRemoteObject:(id)remoteObject mode:(int64_t)mode
{
  v26 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  remoteObjectCopy = remoteObject;
  v11 = PGLogCommon(remoteObjectCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    v16 = 136316162;
    v17 = "+[PGPictureInPictureRemoteObject tetherRemoteObject:toRemoteObject:mode:]";
    v18 = 2048;
    selfCopy = self;
    v20 = 2048;
    v21 = objectCopy;
    v22 = 2048;
    v23 = remoteObjectCopy;
    v24 = 2112;
    v25 = v12;
    _os_log_impl(&dword_1BB282000, v11, OS_LOG_TYPE_DEFAULT, "%s %p tether %p to %p for mode %@", &v16, 0x34u);
  }

  if (objectCopy | remoteObjectCopy)
  {
    v13 = [remoteObjectCopy canTetherRemoteObjectAsMicroPIP:objectCopy];
    if (objectCopy && remoteObjectCopy && (v13 & 1) == 0)
    {
      +[PGPictureInPictureRemoteObject tetherRemoteObject:toRemoteObject:mode:];
    }

    else
    {
      [objectCopy setTetheringRemoteObject:remoteObjectCopy];
      if (!objectCopy)
      {
        goto LABEL_11;
      }
    }

    if ([objectCopy[32] stashed] && (objc_msgSend(objectCopy[19], "hasInterruptionReason:", 4) & 1) == 0)
    {
      [objectCopy pictureInPictureInterruptionBeganWithReason:4 attribution:0];
    }
  }

  else
  {
    [PGPictureInPictureRemoteObject tetherRemoteObject:a2 toRemoteObject:self mode:?];
  }

LABEL_11:
  [remoteObjectCopy setTetheredRemoteObject:objectCopy];
  pictureInPictureViewController = [objectCopy pictureInPictureViewController];
  pictureInPictureViewController2 = [remoteObjectCopy pictureInPictureViewController];
  if (pictureInPictureViewController | pictureInPictureViewController2)
  {
    [PGPictureInPictureViewController tetherViewController:pictureInPictureViewController toViewController:pictureInPictureViewController2 mode:mode];
  }
}

- (void)_stopTethering
{
  if (self->_tetheredRemoteObject)
  {
    [objc_opt_class() tetherRemoteObject:self->_tetheredRemoteObject toRemoteObject:0 mode:0];
    [objc_opt_class() tetherRemoteObject:0 toRemoteObject:self mode:0];
  }

  if (self->_tetheringRemoteObject)
  {
    [objc_opt_class() tetherRemoteObject:0 toRemoteObject:self->_tetheringRemoteObject mode:0];
    v3 = objc_opt_class();

    [v3 tetherRemoteObject:self toRemoteObject:0 mode:1];
  }
}

- (void)_setCurrentState:(int64_t)state
{
  v35 = *MEMORY[0x1E69E9840];
  currentState = self->_currentState;
  BSDispatchQueueAssertMain();
  v6 = [(PGPictureInPictureRemoteObject *)self _canTransitionToState:state];
  if ((v6 & 1) == 0)
  {
    [PGPictureInPictureRemoteObject _setCurrentState:];
  }

  if (currentState == state)
  {
    return;
  }

  self->_currentState = state;
  v7 = PGLogCommon(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PGStringFromPictureInPictureRemoteObjectState(currentState);
    v9 = PGStringFromPictureInPictureRemoteObjectState(state);
    *buf = 136315906;
    v28 = "[PGPictureInPictureRemoteObject _setCurrentState:]";
    v29 = 2048;
    selfCopy = self;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v9;
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ -> %{public}@", buf, 0x2Au);
  }

  isProxyActive = [(PGInterruptionAssistant *)self->_interruptionAssistant isProxyActive];
  v11 = self->_currentState;
  if (v11 <= 0xC)
  {
    if (((1 << v11) & 0x1070) != 0)
    {
LABEL_14:
      isProxyActive = 1;
      goto LABEL_15;
    }

    if (((1 << v11) & 7) != 0)
    {
      if ([(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:4])
      {
        [(PGPictureInPictureRemoteObject *)self pictureInPictureInterruptionEndedWithReason:4 attribution:0];
      }

      isProxyActive = 0;
      self->_pictureInPictureStartedAutomatically = 0;
      goto LABEL_15;
    }

    if (v11 == 3)
    {
      self->_pictureInPictureStartedAutomatically = 1;
      goto LABEL_14;
    }
  }

LABEL_15:
  [(PGInterruptionAssistant *)self->_interruptionAssistant setProxyActive:isProxyActive];
  [(PGPictureInPictureRemoteObject *)self _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
  if (state == 6)
  {
    activitySessionIdentifier = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
    v13 = [activitySessionIdentifier copy];
    activitySessionIdentifierForLastActivePIPSession = self->_activitySessionIdentifierForLastActivePIPSession;
    self->_activitySessionIdentifierForLastActivePIPSession = v13;

    isStartingPictureInPicture = 1;
  }

  else
  {
    isStartingPictureInPicture = [(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture];
  }

  v16 = self->_hasPendingStopRequest || self->_hasPendingCancellationRequest;
  isStoppingOrCancellingPictureInPicture = [(PGPictureInPictureRemoteObject *)self isStoppingOrCancellingPictureInPicture];
  cancelPictureInPictureFinishTaskAssertion = self->_cancelPictureInPictureFinishTaskAssertion;
  if (!isStoppingOrCancellingPictureInPicture && (!isStartingPictureInPicture || !v16))
  {
    [(PGProcessAssertion *)cancelPictureInPictureFinishTaskAssertion invalidate];
    v19 = self->_cancelPictureInPictureFinishTaskAssertion;
    self->_cancelPictureInPictureFinishTaskAssertion = 0;

    [(NSTimer *)self->_timerForInvalidatingIfStopOrCancelFails invalidate];
    timerForInvalidatingIfStopOrCancelFails = self->_timerForInvalidatingIfStopOrCancelFails;
    self->_timerForInvalidatingIfStopOrCancelFails = 0;
LABEL_27:

    return;
  }

  if (!cancelPictureInPictureFinishTaskAssertion || !self->_timerForInvalidatingIfStopOrCancelFails)
  {
    [(PGProcessAssertion *)cancelPictureInPictureFinishTaskAssertion invalidate];
    [(NSTimer *)self->_timerForInvalidatingIfStopOrCancelFails invalidate];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v22 = +[PGProcessAssertion transientTaskAssertionForProcessWithIdentifier:explanation:](PGProcessAssertion, "transientTaskAssertionForProcessWithIdentifier:explanation:", [WeakRetained processIdentifier], @"Cancel PIP Task Assertion");

    objc_storeStrong(&self->_cancelPictureInPictureFinishTaskAssertion, v22);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __51__PGPictureInPictureRemoteObject__setCurrentState___block_invoke;
    v25[3] = &unk_1E7F32C80;
    v25[4] = self;
    v26 = v22;
    timerForInvalidatingIfStopOrCancelFails = v22;
    v23 = [(PGPictureInPictureRemoteObject *)self _invalidationTimerWithTimeout:v25 block:5.0];
    v24 = self->_timerForInvalidatingIfStopOrCancelFails;
    self->_timerForInvalidatingIfStopOrCancelFails = v23;

    goto LABEL_27;
  }
}

uint64_t __51__PGPictureInPictureRemoteObject__setCurrentState___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (*(v5 + 96) == v3)
  {
    v12 = v3;
    if ([v3 isValid])
    {
      [*(a1 + 32) _invalidateForFailureToStartStopOrCancel];
    }

    v6 = *(a1 + 32);
    v7 = *(v6 + 96);
    *(v6 + 96) = 0;

    v5 = *(a1 + 32);
    v4 = v12;
  }

  v8 = *(a1 + 40);
  if (v8 == *(v5 + 80))
  {
    v13 = v4;
    [v8 invalidate];
    v9 = *(a1 + 32);
    v10 = *(v9 + 80);
    *(v9 + 80) = 0;

    v4 = v13;
  }

  return MEMORY[0x1EEE66BB8](v8, v4);
}

- (BOOL)_canTransitionToState:(int64_t)state
{
  currentState = self->_currentState;
  hasBegunTwoStageStop = currentState == state;
  switch(state)
  {
    case 0:
      return hasBegunTwoStageStop;
    case 1:
      v7 = currentState == state || currentState == 0;
      goto LABEL_23;
    case 2:
      v7 = currentState == 1 || currentState == 11;
      goto LABEL_23;
    case 3:
      if (currentState != 2)
      {
        goto LABEL_35;
      }

      return self->_isPictureInPicturePossible;
    case 4:
      if (currentState == 2 && self->_isPictureInPicturePossible)
      {
        return 1;
      }

      v7 = currentState == 3;
      goto LABEL_23;
    case 5:
      v7 = currentState == 4;
      goto LABEL_23;
    case 6:
      if (currentState == 5 || currentState == 12)
      {
        return 1;
      }

      else
      {
        hasBegunTwoStageStop = self->_hasBegunTwoStageStop;
        if (currentState != 9)
        {
          return 0;
        }
      }

      return hasBegunTwoStageStop;
    case 7:
      v7 = currentState == 6 || currentState == 12;
      goto LABEL_23;
    case 8:
      if (currentState != 6)
      {
        goto LABEL_35;
      }

      hasBegunTwoStageStop = [(PGPlaybackState *)self->_playbackState contentType:v3]!= 6;
      break;
    case 9:
    case 12:
      v7 = currentState == 6;
      goto LABEL_23;
    case 10:
      return (currentState - 6) < 4;
    case 11:
      v7 = currentState == 10;
      goto LABEL_23;
    case 13:
      return currentState != 14 && currentState != state;
    case 14:
      v7 = currentState == state || currentState == 13;
LABEL_23:
      hasBegunTwoStageStop = v7;
      break;
    default:
LABEL_35:
      hasBegunTwoStageStop = 0;
      break;
  }

  return hasBegunTwoStageStop;
}

- (void)_invalidateInterruptionBeganFinishTaskAssertion
{
  interruptionBeganFinishTaskAssertion = self->_interruptionBeganFinishTaskAssertion;
  if (interruptionBeganFinishTaskAssertion)
  {
    [(PGProcessAssertion *)interruptionBeganFinishTaskAssertion invalidate];
    v4 = self->_interruptionBeganFinishTaskAssertion;
    self->_interruptionBeganFinishTaskAssertion = 0;

    finishTaskInvalidationUUID = self->_finishTaskInvalidationUUID;
    self->_finishTaskInvalidationUUID = 0;
  }
}

- (void)_invalidateAllAssertions
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PGPictureInPictureRemoteObject _invalidateAllAssertions]";
    v9 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s %p ", &v7, 0x16u);
  }

  [(PGProcessAssertion *)self->_startBackgroundPIPAssertion invalidate];
  startBackgroundPIPAssertion = self->_startBackgroundPIPAssertion;
  self->_startBackgroundPIPAssertion = 0;

  [(PGProcessAssertion *)self->_processAssertion invalidate];
  processAssertion = self->_processAssertion;
  self->_processAssertion = 0;

  [(PGProcessAssertion *)self->_cancelPictureInPictureFinishTaskAssertion invalidate];
  cancelPictureInPictureFinishTaskAssertion = self->_cancelPictureInPictureFinishTaskAssertion;
  self->_cancelPictureInPictureFinishTaskAssertion = 0;

  [(PGPictureInPictureRemoteObject *)self _invalidateInterruptionBeganFinishTaskAssertion];
}

- (void)_finishCleanup
{
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v4 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  delegate = [(PGPictureInPictureRemoteObject *)self delegate];
  [delegate pictureInPictureRemoteObject:self willDestroyPictureInPictureViewController:self->_pictureInPictureViewController];

  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController deactivateAnalyticsSessionIfNeeded];
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setDelegate:0];
  pictureInPictureViewController = self->_pictureInPictureViewController;
  self->_pictureInPictureViewController = 0;

  [(PGPictureInPictureRemoteObject *)self _invalidateAllAssertions];
  [(PGPictureInPictureRemoteObject *)self pictureInPictureViewController:0 didTransitionToStashed:0];
}

- (id)_invalidationTimerWithTimeout:(double)timeout block:(id)block
{
  blockCopy = block;
  objc_initWeak(&location, self);
  v7 = MEMORY[0x1E695DFF0];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__PGPictureInPictureRemoteObject__invalidationTimerWithTimeout_block___block_invoke;
  v11[3] = &unk_1E7F32CA8;
  objc_copyWeak(&v13, &location);
  v8 = blockCopy;
  v12 = v8;
  v9 = [v7 scheduledTimerWithTimeInterval:0 repeats:v11 block:timeout];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);

  return v9;
}

void __70__PGPictureInPictureRemoteObject__invalidationTimerWithTimeout_block___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    v7 = PGLogCommon(WeakRetained);
    v8 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11[0] = 67109120;
      v11[1] = v8 == 10;
      _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "Invalidation timeout fired while isStoppingOrCancelling: %{BOOL}u.", v11, 8u);
    }

    if (v8 == 10)
    {
      v9 = [v5 connection];
      [v9 invalidate];
    }
  }

  v10 = *(a1 + 32);
  if (v10)
  {
    (*(v10 + 16))(v10, v3);
  }
}

- (BOOL)_isICSVideoCall
{
  isVideoCall = [(PGPictureInPictureRemoteObject *)self isVideoCall];
  if (isVideoCall)
  {

    LOBYTE(isVideoCall) = [(PGPictureInPictureRemoteObject *)self _isAppICS];
  }

  return isVideoCall;
}

- (BOOL)_isAppICS
{
  bundleIdentifier = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
  v3 = [bundleIdentifier isEqualToString:@"com.apple.InCallService"];

  return v3;
}

- (BOOL)_isAssociatedWithOtherObject:(id)object
{
  v39 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  if (![(PGPictureInPictureRemoteObject *)self _isICSVideoCall]&& ![(PGPictureInPictureRemoteObject *)objectCopy _isICSVideoCall])
  {
    v18 = 0;
    goto LABEL_24;
  }

  if ([(PGPictureInPictureRemoteObject *)self _isICSVideoCall])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = objectCopy;
  }

  activitySessionIdentifier = [(PGPictureInPictureRemoteObject *)selfCopy activitySessionIdentifier];
  if ([(PGPictureInPictureRemoteObject *)self _isICSVideoCall])
  {
    selfCopy2 = objectCopy;
  }

  else
  {
    selfCopy2 = self;
  }

  pictureInPictureApplication = [(PGPictureInPictureRemoteObject *)selfCopy2 pictureInPictureApplication];
  bundleIdentifier = [pictureInPictureApplication bundleIdentifier];

  v10 = [activitySessionIdentifier isEqualToString:bundleIdentifier];
  if (v10)
  {
    v11 = PGLogCommon(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
      pictureInPictureApplication2 = [(PGPictureInPictureRemoteObject *)objectCopy pictureInPictureApplication];
      bundleIdentifier3 = [pictureInPictureApplication2 bundleIdentifier];
      v29 = 136316162;
      v30 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
      v31 = 2048;
      selfCopy7 = self;
      v33 = 2114;
      v34 = bundleIdentifier2;
      v35 = 2048;
      v36 = objectCopy;
      v37 = 2114;
      v38 = bundleIdentifier3;
      v15 = "%s Associating %p %{public}@ with %p %{public}@ because hasMatchingSessionIdentifierAndBundleIdentifier";
LABEL_20:
      _os_log_impl(&dword_1BB282000, v11, OS_LOG_TYPE_DEFAULT, v15, &v29, 0x34u);
    }
  }

  else if ([(PGPictureInPictureRemoteObject *)self _isAppICS]&& (v16 = [(PGPictureInPictureRemoteObject *)objectCopy _isAppICS], v16))
  {
    v11 = PGLogCommon(v16);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
      pictureInPictureApplication2 = [(PGPictureInPictureRemoteObject *)objectCopy pictureInPictureApplication];
      bundleIdentifier3 = [pictureInPictureApplication2 bundleIdentifier];
      v29 = 136316162;
      v30 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
      v31 = 2048;
      selfCopy7 = self;
      v33 = 2114;
      v34 = bundleIdentifier2;
      v35 = 2048;
      v36 = objectCopy;
      v37 = 2114;
      v38 = bundleIdentifier3;
      v15 = "%s Associating %p %{public}@ with %p %{public}@ because one of them is a video call and we always associate ICS with itself";
      goto LABEL_20;
    }
  }

  else
  {
    v17 = [(PGPictureInPictureRemoteObject *)objectCopy isEqual:self->_tetheringRemoteObject];
    if ((v17 & 1) == 0)
    {
      v17 = [(PGPictureInPictureRemoteObject *)objectCopy isEqual:self->_tetheredRemoteObject];
      if (!v17)
      {
        if ([(PGPictureInPictureRemoteObject *)objectCopy _isICSVideoCall])
        {
          WeakRetained = objc_loadWeakRetained(&self->_delegate);
          v21 = [WeakRetained pictureInPictureRemoteObjectHasBackgroundPIPAuthorization:self];

          if (v21)
          {
            v11 = PGLogCommon(v22);
            if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_21;
            }

            bundleIdentifier2 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
            pictureInPictureApplication2 = [(PGPictureInPictureRemoteObject *)objectCopy pictureInPictureApplication];
            bundleIdentifier3 = [pictureInPictureApplication2 bundleIdentifier];
            v29 = 136316162;
            v30 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
            v31 = 2048;
            selfCopy7 = self;
            v33 = 2114;
            v34 = bundleIdentifier2;
            v35 = 2048;
            v36 = objectCopy;
            v37 = 2114;
            v38 = bundleIdentifier3;
            v15 = "%s Associating %p %{public}@ with %p %{public}@ because it has backgroundPIPAuthorization.";
            goto LABEL_20;
          }
        }

        if ([(PGPictureInPictureRemoteObject *)objectCopy _isICSVideoCall])
        {
          activitySessionIdentifier2 = [(PGPictureInPictureRemoteObject *)objectCopy activitySessionIdentifier];
          if ([activitySessionIdentifier2 isEqualToString:@"com.apple.InCallService"])
          {
            activitySessionIdentifier3 = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
            pictureInPictureApplication3 = [(PGPictureInPictureRemoteObject *)self pictureInPictureApplication];
            bundleIdentifier4 = [pictureInPictureApplication3 bundleIdentifier];
            v27 = [activitySessionIdentifier3 isEqualToString:bundleIdentifier4];

            if ((v27 & 1) == 0)
            {
              v11 = PGLogCommon(v28);
              if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_21;
              }

              bundleIdentifier2 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
              pictureInPictureApplication2 = [(PGPictureInPictureRemoteObject *)objectCopy pictureInPictureApplication];
              bundleIdentifier3 = [pictureInPictureApplication2 bundleIdentifier];
              v29 = 136316162;
              v30 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
              v31 = 2048;
              selfCopy7 = self;
              v33 = 2114;
              v34 = bundleIdentifier2;
              v35 = 2048;
              v36 = objectCopy;
              v37 = 2114;
              v38 = bundleIdentifier3;
              v15 = "%s Associating %p %{public}@ with %p %{public}@ because it has an expanse-like activity session identifier and the facetime video call has an ICS bundle for its activity session identifier.";
              goto LABEL_20;
            }
          }

          else
          {
          }
        }

        v18 = 0;
        goto LABEL_22;
      }
    }

    v11 = PGLogCommon(v17);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier2 = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
      pictureInPictureApplication2 = [(PGPictureInPictureRemoteObject *)objectCopy pictureInPictureApplication];
      bundleIdentifier3 = [pictureInPictureApplication2 bundleIdentifier];
      v29 = 136316162;
      v30 = "[PGPictureInPictureRemoteObject _isAssociatedWithOtherObject:]";
      v31 = 2048;
      selfCopy7 = self;
      v33 = 2114;
      v34 = bundleIdentifier2;
      v35 = 2048;
      v36 = objectCopy;
      v37 = 2114;
      v38 = bundleIdentifier3;
      v15 = "%s Associating %p %{public}@ with %p %{public}@ because micropip is active between the objects";
      goto LABEL_20;
    }
  }

LABEL_21:

  v18 = 1;
LABEL_22:

LABEL_24:
  return v18;
}

- (BOOL)_isInActivitySession
{
  BSDispatchQueueAssertMain();
  contentType = [(PGPictureInPictureRemoteObject *)self contentType];
  if ([(PGPictureInPictureRemoteObject *)self contentType]== 6)
  {
    LOBYTE(v4) = 0;
  }

  else if (contentType == 5)
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    activitySessionIdentifier = [(PGPictureInPictureRemoteObject *)self activitySessionIdentifier];
    pictureInPictureApplication = [(PGPictureInPictureRemoteObject *)self pictureInPictureApplication];
    bundleIdentifier = [pictureInPictureApplication bundleIdentifier];
    v4 = [activitySessionIdentifier isEqualToString:bundleIdentifier] ^ 1;
  }

  return v4;
}

- (void)_invalidateForFailureToStartStopOrCancel
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v4 = +[PGProcessAssertion transientTaskAssertionForProcessWithIdentifier:explanation:](PGProcessAssertion, "transientTaskAssertionForProcessWithIdentifier:explanation:", [WeakRetained processIdentifier], @"Invalidate for failure to start stop or cancel");

  objc_initWeak(&location, self);
  v5 = objc_loadWeakRetained(&self->_connection);
  v6 = _PGLogMethodProem(self, 1);
  v7 = [v5 PG_appProxyWithDebugMethodAndPointerProem:v6];
  v8 = +[PGCommand commandForInvalidateFromProxy];
  dictionaryRepresentation = [v8 dictionaryRepresentation];
  [v7 handleCommand:dictionaryRepresentation];

  v10 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__PGPictureInPictureRemoteObject__invalidateForFailureToStartStopOrCancel__block_invoke;
  block[3] = &unk_1E7F32CD0;
  v13 = v4;
  v11 = v4;
  objc_copyWeak(&v14, &location);
  dispatch_after(v10, MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v14);

  objc_destroyWeak(&location);
}

void __74__PGPictureInPictureRemoteObject__invalidateForFailureToStartStopOrCancel__block_invoke(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PGPictureInPictureRemoteObject__invalidateForFailureToStartStopOrCancel__block_invoke_2;
    block[3] = &unk_1E7F32530;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __74__PGPictureInPictureRemoteObject__invalidateForFailureToStartStopOrCancel__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained invalidate];
}

- (void)initializePictureInPictureWithControlsStyle:(int64_t)style preferredContentSize:(CGSize)size sceneIdentifier:(id)identifier affectsAppLifeCycle:(BOOL)cycle completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v16 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v22 = _PGLogMethodProem(self, 1);
    v37.width = width;
    v37.height = height;
    v23 = NSStringFromCGSize(v37);
    *buf = 138412546;
    v33 = v22;
    v34 = 2114;
    v35 = v23;
    _os_log_debug_impl(&dword_1BB282000, v16, OS_LOG_TYPE_DEBUG, "%@ preferredContentSize:%{public}@", buf, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v18 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke;
    v24[3] = &unk_1E7F32D48;
    v24[4] = self;
    v26 = handlerCopy;
    styleCopy = style;
    v28 = width;
    v29 = height;
    cycleCopy = cycle;
    v25 = identifierCopy;
    v30 = a2;
    dispatch_async(MEMORY[0x1E69E96A0], v24);
  }

  else
  {
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v21);
  }
}

void __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _canTransitionToState:1];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _setCurrentState:1];
    *(*(a1 + 32) + 32) = *(a1 + 56);
    *(*(a1 + 32) + 304) = *(a1 + 64);
    v4 = *(a1 + 32);
    if (*(a1 + 40) && !*(v4 + 48))
    {
      v5 = [[PGPIPRemoteObjectSceneController alloc] initWithRemoteObject:*(a1 + 32) requestedSceneIdentifier:*(a1 + 40) affectsAppLifeCycle:*(a1 + 88)];
      v6 = *(a1 + 32);
      v7 = *(v6 + 48);
      *(v6 + 48) = v5;

      v4 = *(a1 + 32);
    }

    v8 = *(v4 + 113);
    if (v8 == 1)
    {
      [*(v4 + 48) activateIfNeeded];
      v4 = *(a1 + 32);
    }

    [v4 _setCurrentState:2];
    v9 = *(*(a1 + 32) + 16);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_3;
    v13[3] = &unk_1E7F32D20;
    v10 = v14;
    v11 = *(a1 + 48);
    v13[4] = *(a1 + 32);
    v14[0] = v11;
    v14[1] = *(a1 + 80);
    v15 = v8;
    v12 = v13;
  }

  else
  {
    v9 = v3[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_2;
    block[3] = &unk_1E7F32CF8;
    v10 = &v17;
    v17 = *(a1 + 48);
    v12 = block;
  }

  dispatch_async(v9, v12);
}

void __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v3 = _PGLogMethodProem(*(a1 + 32), 1);
  v4 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v3];
  [v4 updatePictureInPicturePossible:*(a1 + 56)];

  return BSDispatchMain();
}

void __153__PGPictureInPictureRemoteObject_initializePictureInPictureWithControlsStyle_preferredContentSize_sceneIdentifier_affectsAppLifeCycle_completionHandler___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  [WeakRetained pictureInPictureRemoteObjectNeedsActivationAndInterruptionPolicyUpdate:*(a1 + 32)];
}

- (void)setupStartAnimated:(BOOL)animated hostedWindowHostingHandle:(id)handle sceneSessionPersistentIdentifier:(id)identifier preferredContentSize:(CGSize)size initialInterfaceOrientation:(int64_t)orientation initialLayerFrame:(CGRect)frame completionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v15 = size.height;
  v16 = size.width;
  handleCopy = handle;
  identifierCopy = identifier;
  handlerCopy = handler;
  v24 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v26 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke;
    block[3] = &unk_1E7F32DC0;
    v34 = v16;
    v35 = v15;
    block[4] = self;
    v36 = a2;
    v33 = handlerCopy;
    v31 = identifierCopy;
    animatedCopy = animated;
    v32 = handleCopy;
    orientationCopy = orientation;
    v38 = x;
    v39 = y;
    v40 = width;
    v41 = height;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v29 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v29);
  }
}

void __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 64);
  v2 = *(a1 + 72);
  if (![*(a1 + 32) _canTransitionToState:4])
  {
    v30 = -1002;
LABEL_16:
    v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:v30 userInfo:0];
    v32 = *(*(a1 + 32) + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke_173;
    block[3] = &unk_1E7F32D70;
    v33 = *(a1 + 56);
    v44 = v31;
    v45 = v33;
    v34 = v31;
    dispatch_async(v32, block);

    return;
  }

  if (!PGSizeIsValid() || (v4.n128_f64[0] = v3, (PGSizeIsPositive(v4, v2) & 1) == 0))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
    v6 = [WeakRetained pictureInPictureRemoteObjectHasBackgroundPIPAuthorization:*(a1 + 32)];

    v8 = PGLogCommon(v7);
    v9 = v8;
    if (!v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *v46 = v3;
        *&v46[1] = v2;
        v35 = [MEMORY[0x1E696B098] valueWithBytes:v46 objCType:"{CGSize=dd}"];
        v36 = _PGLogMethodProem(*(a1 + 32), 1);
        *buf = 138543618;
        v48 = v35;
        v49 = 2112;
        v50 = v36;
        _os_log_error_impl(&dword_1BB282000, v9, OS_LOG_TYPE_ERROR, "invalid preferredContentSize %{public}@ %@", buf, 0x16u);
      }

      v30 = -1003;
      goto LABEL_16;
    }

    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = _PGLogMethodProem(*(a1 + 32), 1);
      *buf = 138412290;
      v48 = v10;
      _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "Using default initial preferred content size due to background PIP authorization %@", buf, 0xCu);
    }

    v3 = 16.0;
    v2 = 9.0;
  }

  v11 = [*(a1 + 32) delegate];
  v12 = [v11 pictureInPictureRemoteObjectShouldAcceptSetupRequest:*(a1 + 32)];

  if ((v12 & 1) == 0)
  {
    v30 = -1007;
    goto LABEL_16;
  }

  [*(a1 + 32) _setCurrentState:4];
  v13 = [[PGPictureInPictureViewController alloc] initWithApplication:*(*(a1 + 32) + 248) sourceSceneSessionPersistentIdentifier:*(a1 + 40) controlsStyle:*(*(a1 + 32) + 32)];
  v14 = *(a1 + 32);
  v15 = *(v14 + 256);
  *(v14 + 256) = v13;

  v16 = [*(*(a1 + 32) + 256) view];
  [v16 setHidden:(*(a1 + 128) & 1) == 0];

  [*(*(a1 + 32) + 256) setDelegate:?];
  v17 = *(a1 + 32);
  v18 = *(v17 + 256);
  v19 = objc_loadWeakRetained((v17 + 264));
  [v18 setAnalyticsDelegate:v19 analyticsSourceUUID:*(*(a1 + 32) + 104)];

  [*(*(a1 + 32) + 256) notePictureInPictureStartedAutomatically:*(*(a1 + 32) + 112)];
  [*(*(a1 + 32) + 256) setPreferredContentSize:{v3, v2}];
  v20 = *(a1 + 32);
  v21 = *(v20 + 256);
  v22 = [*(v20 + 144) dictionaryRepresentation];
  [v21 updatePlaybackStateWithDiff:v22];

  v23 = [*(*(a1 + 32) + 256) viewModel];
  [v23 setInActivitySession:{objc_msgSend(*(a1 + 32), "_isInActivitySession")}];

  [*(*(a1 + 32) + 256) pagingAccessorySetCurrentPage:*(*(a1 + 32) + 168) numberOfPages:*(*(a1 + 32) + 176)];
  v24 = [*(a1 + 32) delegate];
  [v24 pictureInPictureRemoteObject:*(a1 + 32) didCreatePictureInPictureViewController:*(*(a1 + 32) + 256)];

  [*(*(a1 + 32) + 256) setHostedWindowHostingHandle:*(a1 + 48)];
  v25 = *(a1 + 32);
  v26 = *(v25 + 256);
  v27 = [*(v25 + 48) sceneView];
  [v26 setSceneView:v27];

  [*(a1 + 32) setSourceSceneSessionPersistentIdentifier:*(a1 + 40)];
  v37 = MEMORY[0x1E69E9820];
  v38 = 3221225472;
  v39 = __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke_2;
  v40 = &unk_1E7F32D98;
  v41 = *(a1 + 32);
  v42 = *(a1 + 56);
  v28 = MEMORY[0x1BFB0C680](&v37);
  v29 = v28;
  if (*(a1 + 128) == 1)
  {
    [*(*(a1 + 32) + 256) prepareStartAnimationWithInitialInterfaceOrientation:*(a1 + 88) initialLayerFrame:v28 completionHandler:{*(a1 + 96), *(a1 + 104), *(a1 + 112), *(a1 + 120), v37, v38, v39, v40, v41}];
  }

  else
  {
    (*(v28 + 16))(v28);
  }
}

void __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __197__PGPictureInPictureRemoteObject_setupStartAnimated_hostedWindowHostingHandle_sceneSessionPersistentIdentifier_preferredContentSize_initialInterfaceOrientation_initialLayerFrame_completionHandler___block_invoke_3;
  block[3] = &unk_1E7F32CF8;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)startPictureInPictureAnimated:(BOOL)animated completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v17 = "[PGPictureInPictureRemoteObject startPictureInPictureAnimated:completionHandler:]";
    v18 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke;
    block[3] = &unk_1E7F32DE8;
    block[4] = self;
    v14 = handlerCopy;
    animatedCopy = animated;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v12);
  }
}

void __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _canTransitionToState:5];
  v3 = *(a1 + 32);
  if (v2)
  {
    if (*(v3 + 113))
    {
      [v3 _setCurrentState:5];
      [*(*(a1 + 32) + 48) updateInterfaceOrientation];
      v4 = [*(a1 + 32) delegate];
      [v4 pictureInPictureRemoteObject:*(a1 + 32) willShowPictureInPictureViewController:*(*(a1 + 32) + 256)];

      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_4;
      v13 = &unk_1E7F32D98;
      v5 = *(a1 + 40);
      v14 = *(a1 + 32);
      v15 = v5;
      v6 = MEMORY[0x1BFB0C680](&v10);
      [*(*(a1 + 32) + 256) performStartAnimated:*(a1 + 48) withCompletionHandler:{v6, v10, v11, v12, v13, v14}];

      v7 = v15;
    }

    else
    {
      v9 = *(v3 + 16);
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_3;
      v16[3] = &unk_1E7F32CF8;
      v17 = *(a1 + 40);
      dispatch_async(v9, v16);
      v7 = v17;
    }
  }

  else
  {
    v8 = *(v3 + 16);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_2;
    block[3] = &unk_1E7F32CF8;
    v19 = *(a1 + 40);
    dispatch_async(v8, block);
    v7 = v19;
  }
}

void __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1007 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

void __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pictureInPictureRemoteObject:*(a1 + 32) didShowPictureInPictureViewController:*(*(a1 + 32) + 256)];

  if ([*(a1 + 32) _canTransitionToState:6])
  {
    [*(a1 + 32) _setCurrentState:6];
  }

  v3 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_5;
  v5[3] = &unk_1E7F32D70;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  dispatch_async(v3, v5);
}

void *__82__PGPictureInPictureRemoteObject_startPictureInPictureAnimated_completionHandler___block_invoke_6(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 114) == 1 && (v3 = [result canCancelPictureInPicture], result = *(a1 + 32), v3))
  {
    result = [result cancel];
  }

  else if (*(result + 115) == 1)
  {
    result = [result pictureInPictureViewControllerDidRequestStop:*(result + 32)];
  }

  *(*(a1 + 32) + 115) = 0;
  *(*(a1 + 32) + 114) = 0;
  return result;
}

- (void)updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding:(CGRect)backgrounding withCompletionHandler:(id)handler
{
  height = backgrounding.size.height;
  width = backgrounding.size.width;
  y = backgrounding.origin.y;
  x = backgrounding.origin.x;
  v33 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v10 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v12 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection != WeakRetained)
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = -1001;
LABEL_14:
    v19 = [v15 errorWithDomain:@"PGPegasusErrorDomain" code:v16 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v19);

    goto LABEL_15;
  }

  IsValid = PGRectIsValid();
  if ((IsValid & 1) == 0)
  {
    v18 = PGLogCommon(IsValid);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *v28 = x;
      *&v28[1] = y;
      *&v28[2] = width;
      *&v28[3] = height;
      v20 = [MEMORY[0x1E696B098] valueWithBytes:v28 objCType:"{CGRect={CGPoint=dd}{CGSize=dd}}"];
      v21 = _PGLogMethodProem(self, 1);
      *buf = 138543618;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_error_impl(&dword_1BB282000, v18, OS_LOG_TYPE_ERROR, "invalid initialLayerFrame %{public}@ %@", buf, 0x16u);
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = -1003;
    goto LABEL_14;
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __130__PGPictureInPictureRemoteObject_updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke;
  v22[3] = &unk_1E7F32E10;
  v22[4] = self;
  v24 = x;
  v25 = y;
  v26 = width;
  v27 = height;
  v23 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v22);

LABEL_15:
}

void __130__PGPictureInPictureRemoteObject_updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 64);
  *(v1 + 320) = *(a1 + 48);
  *(v1 + 336) = v2;
  v3 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__PGPictureInPictureRemoteObject_updateInitialLayerFrameForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7F32CF8;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

- (void)updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding:(id)backgrounding withCompletionHandler:(id)handler
{
  backgroundingCopy = backgrounding;
  handlerCopy = handler;
  v8 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v10 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __151__PGPictureInPictureRemoteObject_updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke;
    block[3] = &unk_1E7F32558;
    block[4] = self;
    v15 = backgroundingCopy;
    v16 = handlerCopy;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

void __151__PGPictureInPictureRemoteObject_updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSourceSceneSessionPersistentIdentifier:*(a1 + 40)];
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __151__PGPictureInPictureRemoteObject_updateSourceSceneSessionPersistentIdentifierForInteractiveTransitionAnimationUponBackgrounding_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7F32CF8;
  v4 = *(a1 + 48);
  dispatch_async(v2, block);
}

- (void)updatePreferredContentSize:(CGSize)size withCompletionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v8 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = _PGLogMethodProem(self, 1);
    v23.width = width;
    v23.height = height;
    v10 = NSStringFromCGSize(v23);
    v18 = 138412546;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%@ preferredContentSize:%{public}@", &v18, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v12 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    if (!self->_queue_outstandingRotationAnimationsCount)
    {
      [(PGPictureInPictureRemoteObject *)self _updatePreferredContentSize:handlerCopy withCompletionHandler:width, height];
      goto LABEL_12;
    }

    v15 = MEMORY[0x1E696ABC0];
    v16 = -1002;
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = -1001;
  }

  v17 = [v15 errorWithDomain:@"PGPegasusErrorDomain" code:v16 userInfo:0];
  handlerCopy[2](handlerCopy, 0, v17);

LABEL_12:
}

- (void)_updatePreferredContentSize:(CGSize)size withCompletionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  IsValid = PGSizeIsValid();
  if (IsValid && (v11.n128_f64[0] = width, IsValid = PGSizeIsPositive(v11, height), (IsValid & 1) != 0))
  {
    if (self->_currentState == 6)
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke;
      block[3] = &unk_1E7F32E38;
      block[4] = self;
      v23 = width;
      v24 = height;
      v22 = handlerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], block);
      v12 = v22;
    }

    else
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke_3;
      v17[3] = &unk_1E7F32E38;
      v17[4] = self;
      v19 = width;
      v20 = height;
      v18 = handlerCopy;
      dispatch_async(MEMORY[0x1E69E96A0], v17);
      v12 = v18;
    }
  }

  else
  {
    v13 = PGLogCommon(IsValid);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *v25 = width;
      *&v25[1] = height;
      v15 = [MEMORY[0x1E696B098] valueWithBytes:v25 objCType:"{CGSize=dd}"];
      v16 = _PGLogMethodProem(self, 1);
      *buf = 138543618;
      v27 = v15;
      v28 = 2112;
      v29 = v16;
      _os_log_error_impl(&dword_1BB282000, v13, OS_LOG_TYPE_ERROR, "invalid preferredContentSize %{public}@ %@", buf, 0x16u);
    }

    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1003 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

void __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 304) = *(a1 + 48);
  [*(*(a1 + 32) + 256) setPreferredContentSize:{*(a1 + 48), *(a1 + 56)}];
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke_2;
  block[3] = &unk_1E7F32CF8;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

void __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  *(*(a1 + 32) + 304) = *(a1 + 48);
  v1 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__PGPictureInPictureRemoteObject__updatePreferredContentSize_withCompletionHandler___block_invoke_4;
  block[3] = &unk_1E7F32CF8;
  v3 = *(a1 + 40);
  dispatch_async(v1, block);
}

- (void)checkActivePictureInPictureCancellationPolicyWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = PGLogCommon(completionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection != WeakRetained)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = -1001;
LABEL_12:
    v12 = [v10 errorWithDomain:@"PGPegasusErrorDomain" code:v11 userInfo:0];
    completionCopy[2](completionCopy, 0, v12, 1, 1);

    goto LABEL_13;
  }

  if ((self->_currentState & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = -1002;
    goto LABEL_12;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __94__PGPictureInPictureRemoteObject_checkActivePictureInPictureCancellationPolicyWithCompletion___block_invoke;
  v13[3] = &unk_1E7F32D98;
  v13[4] = self;
  v14 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

LABEL_13:
}

uint64_t __94__PGPictureInPictureRemoteObject_checkActivePictureInPictureCancellationPolicyWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pictureInPictureRemoteObjectShouldCancelActivePictureInPictureOnStart:*(a1 + 32)];

  v3 = [*(a1 + 32) delegate];
  [v3 pictureInPictureRemoteObjectShouldUpdateCancellationPolicyOnStart:*(a1 + 32)];

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)rotateContentContainer:(int64_t)container withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection != WeakRetained)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = -1001;
LABEL_12:
    v14 = [v12 errorWithDomain:@"PGPegasusErrorDomain" code:v13 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14, 0);

    goto LABEL_13;
  }

  if (self->_currentState != 6)
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = -1002;
    goto LABEL_12;
  }

  ++self->_queue_outstandingRotationAnimationsCount;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke;
  block[3] = &unk_1E7F32C10;
  block[4] = self;
  containerCopy = container;
  v16 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], block);

LABEL_13:
}

void __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v3 = *(v2 + 256);
  v4 = a1[6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_2;
  v5[3] = &unk_1E7F32C10;
  v5[4] = v2;
  v7 = v4;
  v6 = v1;
  [v3 performRotateAnimationWithRotation:v4 completionHandler:v5];
}

void __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_2(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
  v4 = a1[4];
  v5 = *(v4 + 16);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_3;
  v8[3] = &unk_1E7F32E88;
  v6 = a1[5];
  v11 = a1[6];
  v8[4] = v4;
  v9 = v3;
  v10 = v6;
  v7 = v3;
  dispatch_async(v5, v8);

  objc_autoreleasePoolPop(v2);
}

void __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(a1 + 56) > 1uLL)
  {
    --*(v2 + 3);
    v5 = *(*(a1 + 48) + 16);

    v5();
  }

  else
  {
    v4 = v2[38];
    v3 = v2[39];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __79__PGPictureInPictureRemoteObject_rotateContentContainer_withCompletionHandler___block_invoke_4;
    v6[3] = &unk_1E7F32E60;
    v6[4] = v2;
    v8 = *(a1 + 48);
    v7 = *(a1 + 40);
    [v2 _updatePreferredContentSize:v6 withCompletionHandler:{v3, v4}];
  }
}

- (void)setupStopAnimated:(BOOL)animated needsApplicationActivation:(BOOL)activation completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v11 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke;
    v22[3] = &unk_1E7F32DE8;
    v22[4] = self;
    v15 = handlerCopy;
    v23 = v15;
    activationCopy = activation;
    v16 = MEMORY[0x1BFB0C680](v22);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_7;
    block[3] = &unk_1E7F32ED8;
    block[4] = self;
    animatedCopy = animated;
    v19 = v15;
    v20 = v16;
    v17 = v16;
    dispatch_async(MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_2;
  block[3] = &unk_1E7F32B98;
  v3 = *(a1 + 40);
  v6 = *(a1 + 48);
  block[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, block);
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_2(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_3;
  v5[3] = &unk_1E7F32478;
  v6 = *(a1 + 40);
  v2 = MEMORY[0x1BFB0C680](v5);
  v3 = v2;
  if (*(a1 + 48) == 1)
  {
    v4 = v2;
    BSDispatchMain();
  }

  else
  {
    v2[2](v2, 1, 0);
  }
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_3(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = *(v2 + 16);
    v4 = *(a1 + 32);

    v3(v4, 1, 0);
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1005 userInfo:0];
    (*(v2 + 16))(v2, 0, v5);
  }
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);
  v4 = [v3 sourceSceneSessionPersistentIdentifier];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_5;
  v6[3] = &unk_1E7F32EB0;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = v5;
  [v2 pictureInPictureRemoteObject:v3 requestActivationOfSceneWithPersistenceIdentier:v4 completion:v6];
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_5(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(*(a1 + 40) + 16);

    v3();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    v5 = [WeakRetained processIdentifier];
    v6 = *(*(a1 + 32) + 288);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_6;
    v7[3] = &unk_1E7F32478;
    v8 = *(a1 + 40);
    PGActivateApplication(v5, v6, v7);
  }
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_7(uint64_t a1)
{
  v2 = [*(a1 + 32) _canTransitionToState:10];
  v3 = *(a1 + 32);
  if ((v2 & 1) == 0)
  {
    v6 = v3[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_8;
    block[3] = &unk_1E7F32CF8;
    v11 = *(a1 + 40);
    dispatch_async(v6, block);
    v5 = v11;
    goto LABEL_5;
  }

  [v3 _setCurrentState:10];
  if (*(a1 + 56) == 1)
  {
    v4 = *(*(a1 + 32) + 256);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_9;
    v8[3] = &unk_1E7F32CF8;
    v9 = *(a1 + 48);
    [v4 prepareStopAnimationWithCompletionHandler:v8];
    v5 = v9;
LABEL_5:

    return;
  }

  v7 = *(*(a1 + 48) + 16);

  v7();
}

void __97__PGPictureInPictureRemoteObject_setupStopAnimated_needsApplicationActivation_completionHandler___block_invoke_8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)stopPictureInPictureAnimated:(BOOL)animated withFinalInterfaceOrientation:(int64_t)orientation finalLayerFrame:(CGRect)frame completionHandler:(id)handler
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v32 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v14 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[PGPictureInPictureRemoteObject stopPictureInPictureAnimated:withFinalInterfaceOrientation:finalLayerFrame:completionHandler:]";
    v30 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v14, OS_LOG_TYPE_DEFAULT, "%s %p ", buf, 0x16u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v16 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke;
    v20[3] = &unk_1E7F32F00;
    v20[4] = self;
    v21 = handlerCopy;
    v22 = x;
    v23 = y;
    v24 = width;
    v25 = height;
    animatedCopy = animated;
    orientationCopy = orientation;
    dispatch_async(MEMORY[0x1E69E96A0], v20);
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v19, 0);
  }
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _canTransitionToState:11];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3 _setCurrentState:11];
    v4 = [*(a1 + 32) delegate];
    [v4 pictureInPictureRemoteObject:*(a1 + 32) willHidePictureInPictureViewController:*(*(a1 + 32) + 256)];

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_3;
    v9[3] = &unk_1E7F32D98;
    v5 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v5;
    v6 = MEMORY[0x1BFB0C680](v9);
    [*(a1 + 32) _stopTethering];
    [*(*(a1 + 32) + 256) notePictureInPictureWillStopForAppRequest:1 preferredFullScreenRestore:!CGRectIsNull(*(a1 + 48))];
    [*(*(a1 + 32) + 256) performStopAnimated:*(a1 + 88) withFinalInterfaceOrientation:*(a1 + 80) finalLayerFrame:v6 completionHandler:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72)}];

    v7 = v10;
  }

  else
  {
    v8 = v3[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2;
    block[3] = &unk_1E7F32CF8;
    v12 = *(a1 + 40);
    dispatch_async(v8, block);
    v7 = v12;
  }
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
  (*(v1 + 16))(v1, 0, v2, 0);
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 pictureInPictureRemoteObject:*(a1 + 32) didHidePictureInPictureViewController:*(*(a1 + 32) + 256)];

  v3 = *(*(a1 + 32) + 16);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_4;
  block[3] = &unk_1E7F32CF8;
  v5 = *(a1 + 40);
  dispatch_async(v3, block);
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_4(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_5;
  block[3] = &unk_1E7F32CF8;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __127__PGPictureInPictureRemoteObject_stopPictureInPictureAnimated_withFinalInterfaceOrientation_finalLayerFrame_completionHandler___block_invoke_5(uint64_t a1)
{
  v2 = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
  (*(*(a1 + 32) + 16))();
}

- (void)cleanupWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = PGLogCommon(handlerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection != WeakRetained)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = -1001;
LABEL_12:
    v12 = [v10 errorWithDomain:@"PGPegasusErrorDomain" code:v11 userInfo:0];
    handlerCopy[2](handlerCopy, 0, v12);

    goto LABEL_13;
  }

  if (self->_currentState != 11)
  {
    v10 = MEMORY[0x1E696ABC0];
    v11 = -1002;
    goto LABEL_12;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke;
  v13[3] = &unk_1E7F32D98;
  v13[4] = self;
  v14 = handlerCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v13);

LABEL_13:
}

void __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 256) setHostedWindowHostingHandle:0];
  [*(*(a1 + 32) + 256) setSceneView:0];
  [*(a1 + 32) _setCurrentState:2];
  v2 = *(*(a1 + 32) + 16);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7F32D70;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(v2, v4);
}

void __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke_3;
  block[3] = &unk_1E7F32530;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __63__PGPictureInPictureRemoteObject_cleanupWithCompletionHandler___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _finishCleanup];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
  [WeakRetained pictureInPictureRemoteObjectNeedsActivationAndInterruptionPolicyUpdate:*(a1 + 32)];
}

- (void)setPictureInPictureShouldStartWhenEnteringBackground:(BOOL)background completionHandler:(id)handler
{
  backgroundCopy = background;
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v7 = handlerCopy;
  if (self->_pictureInPictureShouldStartWhenEnteringBackground != backgroundCopy)
  {
    v8 = PGLogCommon(handlerCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315650;
      v15 = "[PGPictureInPictureRemoteObject setPictureInPictureShouldStartWhenEnteringBackground:completionHandler:]";
      v16 = 2048;
      selfCopy = self;
      v18 = 1024;
      v19 = backgroundCopy;
      _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p %{BOOL}u", &v14, 0x1Cu);
    }
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v10 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    self->_pictureInPictureShouldStartWhenEnteringBackground = backgroundCopy;
    v7[2](v7, 1, 0);
  }

  else
  {
    v13 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1001 userInfo:0];
    (v7)[2](v7, 0, v13);
  }
}

- (void)updatePlaybackStateWithDiff:(id)diff
{
  v18 = *MEMORY[0x1E69E9840];
  diffCopy = diff;
  v5 = PGLogCommon(diffCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v13 = "[PGPictureInPictureRemoteObject updatePlaybackStateWithDiff:]";
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = diffCopy;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p %@", buf, 0x20u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__PGPictureInPictureRemoteObject_updatePlaybackStateWithDiff___block_invoke;
    v10[3] = &unk_1E7F32508;
    v10[4] = self;
    v11 = diffCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v10);
  }
}

void __62__PGPictureInPictureRemoteObject_updatePlaybackStateWithDiff___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) contentType];
  v3 = *(*(a1 + 32) + 144);
  if (v3)
  {
    [v3 updatePlaybackStateWithDiff:*(a1 + 40)];
  }

  else
  {
    v4 = [[PGPlaybackState alloc] initWithDictionary:*(a1 + 40)];
    v5 = *(a1 + 32);
    v6 = *(v5 + 144);
    *(v5 + 144) = v4;
  }

  [*(*(a1 + 32) + 256) updatePlaybackStateWithDiff:*(a1 + 40)];
  v7 = [*(*(a1 + 32) + 144) backgroundAudioPolicy] == 1 || objc_msgSend(*(*(a1 + 32) + 144), "backgroundAudioPolicy") == 3;
  if (v7 != [*(*(a1 + 32) + 152) isExemptFromUILockInterruptionsWhenActive])
  {
    [*(*(a1 + 32) + 152) setExemptFromUILockInterruptionsWhenActive:v7];
    [*(a1 + 32) _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
  }

  if (v2 != [*(*(a1 + 32) + 144) contentType])
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 240));
    [WeakRetained pictureInPictureRemoteObjectNeedsActivationAndInterruptionPolicyUpdate:*(a1 + 32)];
  }
}

- (void)updateMenuItems:(id)items
{
  v26 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureRemoteObject updateMenuItems:];
    }
  }

  v8 = PGLogCommon(isMainThread);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v21 = "[PGPictureInPictureRemoteObject updateMenuItems:]";
    v22 = 2048;
    selfCopy = self;
    v24 = 2112;
    v25 = itemsCopy;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p %@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v11 = currentConnection == WeakRetained;

  if (v11)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke;
    v18[3] = &unk_1E7F32F50;
    objc_copyWeak(v19, buf);
    v18[4] = self;
    v19[1] = a2;
    v12 = [itemsCopy bs_map:v18];
    v13 = objc_loadWeakRetained(&self->_connection);
    pG_hasMenuItemProviderEntitlement = [v13 PG_hasMenuItemProviderEntitlement];

    if (pG_hasMenuItemProviderEntitlement)
    {
      v17 = v12;
      BSDispatchMain();
    }

    else
    {
      v16 = PGLogCommon(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PGPictureInPictureRemoteObject updateMenuItems:v16];
      }
    }

    objc_destroyWeak(v19);
  }

  objc_destroyWeak(buf);
}

PGMenuItem *__50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [PGMenuItem alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_2;
  v8[3] = &unk_1E7F32F28;
  objc_copyWeak(v9, (a1 + 40));
  v5 = *(a1 + 48);
  v8[4] = *(a1 + 32);
  v9[1] = v5;
  v6 = [(PGMenuItem *)v4 initWithDictionary:v3 action:v8];
  objc_destroyWeak(v9);

  return v6;
}

void __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[2];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_3;
    v8[3] = &unk_1E7F32A58;
    v7 = *(a1 + 32);
    v8[4] = WeakRetained;
    v8[5] = v7;
    v10 = *(a1 + 48);
    v9 = v3;
    dispatch_async(v6, v8);
  }
}

void __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 40), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = +[PGCommand commandForMenuItemSelected:](PGCommand, "commandForMenuItemSelected:", [*(a1 + 48) identifier]);
  v5 = [v4 dictionaryRepresentation];
  [v3 handleCommand:v5];
}

uint64_t __50__PGPictureInPictureRemoteObject_updateMenuItems___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 120);
  *(v3 + 120) = v2;

  v5 = *(a1 + 40);
  v6 = *(*(a1 + 32) + 256);

  return [v6 setMenuItems:v5];
}

- (void)setActivitySessionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v6 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PGPictureInPictureRemoteObject_setActivitySessionIdentifier___block_invoke;
    v9[3] = &unk_1E7F32508;
    v10 = identifierCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void __63__PGPictureInPictureRemoteObject_setActivitySessionIdentifier___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = [*(*(a1 + 40) + 248) bundleIdentifier];
  }

  v4 = v3;
  v5 = [*(a1 + 40) activitySessionIdentifier];
  v6 = [v4 isEqualToString:v5];

  if ((v6 & 1) == 0)
  {
    v8 = PGLogCommon(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 40);
      v10 = [v9 activitySessionIdentifier];
      v21 = 136315906;
      v22 = "[PGPictureInPictureRemoteObject setActivitySessionIdentifier:]_block_invoke";
      v23 = 2048;
      v24 = v9;
      v25 = 2114;
      v26 = v4;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@ --> %{public}@", &v21, 0x2Au);
    }

    v11 = [v4 copy];
    v12 = *(a1 + 40);
    v13 = *(v12 + 128);
    *(v12 + 128) = v11;

    v14 = *(a1 + 40);
    v15 = *(v14 + 232);
    *(v14 + 232) = 0;

    if ([*(a1 + 40) currentState] == 6)
    {
      v16 = [v4 copy];
      v17 = *(a1 + 40);
      v18 = *(v17 + 232);
      *(v17 + 232) = v16;
    }

    WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 240));
    [WeakRetained pictureInPictureRemoteObjectNeedsActivationAndInterruptionPolicyUpdate:*(a1 + 40)];

    v20 = [*(*(a1 + 40) + 256) viewModel];
    [v20 setInActivitySession:{objc_msgSend(*(a1 + 40), "_isInActivitySession")}];
  }
}

- (void)setExemptAttributionOverride:(id)override
{
  overrideCopy = override;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v6 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  if (currentConnection == WeakRetained)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __63__PGPictureInPictureRemoteObject_setExemptAttributionOverride___block_invoke;
    v9[3] = &unk_1E7F32508;
    v9[4] = self;
    v10 = overrideCopy;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

uint64_t __63__PGPictureInPictureRemoteObject_setExemptAttributionOverride___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 136);
  *(v3 + 136) = v2;

  v6 = PGLogCommon(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v11 = 136315394;
    v12 = "[PGPictureInPictureRemoteObject setExemptAttributionOverride:]_block_invoke";
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v11, 0x16u);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 136);
  if (!v9)
  {
    v9 = *(v8 + 296);
  }

  [*(v8 + 152) setExemptAttribution:v9];
  return [*(a1 + 32) _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
}

- (void)stopPictureInPictureAndRestoreUserInterface
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = PGLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(PGPictureInPictureApplication *)self->_pictureInPictureApplication bundleIdentifier];
    *buf = 136315650;
    v6 = "[PGPictureInPictureRemoteObject stopPictureInPictureAndRestoreUserInterface]";
    v7 = 2048;
    selfCopy = self;
    v9 = 2112;
    v10 = bundleIdentifier;
    _os_log_impl(&dword_1BB282000, v3, OS_LOG_TYPE_DEFAULT, "%s %p %@", buf, 0x20u);
  }

  if ([(PGPictureInPictureRemoteObject *)self _isAppICS])
  {
    BSDispatchMain();
  }
}

- (void)pagingAccessorySetCurrentPage:(unint64_t)page numberOfPages:(unint64_t)pages
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__PGPictureInPictureRemoteObject_pagingAccessorySetCurrentPage_numberOfPages___block_invoke;
  block[3] = &unk_1E7F32C58;
  block[4] = self;
  block[5] = page;
  block[6] = pages;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __78__PGPictureInPictureRemoteObject_pagingAccessorySetCurrentPage_numberOfPages___block_invoke(void *a1)
{
  *(a1[4] + 168) = a1[5];
  *(a1[4] + 176) = a1[6];
  return [*(a1[4] + 256) pagingAccessorySetCurrentPage:a1[5] numberOfPages:?];
}

- (void)setExemptAttribution:(id)attribution
{
  v14 = *MEMORY[0x1E69E9840];
  attributionCopy = attribution;
  BSDispatchQueueAssertMain();
  exemptAttribution = self->_exemptAttribution;
  if (exemptAttribution != attributionCopy && ![(NSString *)exemptAttribution isEqualToString:attributionCopy])
  {
    v6 = [(NSString *)attributionCopy copy];
    v7 = self->_exemptAttribution;
    self->_exemptAttribution = v6;

    if (!self->_exemptAttributionOverride)
    {
      v9 = PGLogCommon(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315394;
        v11 = "[PGPictureInPictureRemoteObject setExemptAttribution:]";
        v12 = 2114;
        selfCopy = self;
        _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v10, 0x16u);
      }

      [(PGInterruptionAssistant *)self->_interruptionAssistant setExemptAttribution:attributionCopy];
      [(PGPictureInPictureRemoteObject *)self _updateActiveProxyAndViewControllerOfInterruptionIfNeeded];
    }
  }
}

- (void)_updateActiveProxyAndViewControllerOfInterruptionIfNeeded
{
  BSDispatchQueueAssertMain();
  [(PGPictureInPictureViewController *)self->_pictureInPictureViewController setInterrupted:[(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted]];
  [(PGPictureInPictureRemoteObject *)self _acquireOrInvalidateProcessAssertionIfNeeded];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__PGPictureInPictureRemoteObject__updateActiveProxyAndViewControllerOfInterruptionIfNeeded__block_invoke;
  block[3] = &unk_1E7F32530;
  block[4] = self;
  dispatch_async(queue, block);
}

void *__91__PGPictureInPictureRemoteObject__updateActiveProxyAndViewControllerOfInterruptionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 152) shouldNotifyProxyOfInterruptionBegan];
  v3 = *(a1 + 32);
  if (v2)
  {

    return [v3 _queue_notifyProxyOfInterruptionBegan];
  }

  else
  {
    result = [v3[19] shouldNotifyProxyOfInterruptionEnded];
    if (result)
    {
      v5 = *(a1 + 32);

      return [v5 _queue_notifyProxyOfInterruptionEnded];
    }
  }

  return result;
}

- (BOOL)_currentStateAllowsProcessAssertion
{
  BSDispatchQueueAssertMain();
  currentState = self->_currentState;
  if (currentState > 0xD)
  {
    return 0;
  }

  if (((1 << currentState) & 0x2F80) != 0)
  {
    return self->_processAssertion != 0;
  }

  return ((1 << currentState) & 0x78) != 0;
}

- (BOOL)_wantsProcessAssertion
{
  BSDispatchQueueAssertMain();
  _currentStateAllowsProcessAssertion = [(PGPictureInPictureRemoteObject *)self _currentStateAllowsProcessAssertion];
  if (_currentStateAllowsProcessAssertion)
  {
    isInterrupted = [(PGInterruptionAssistant *)self->_interruptionAssistant isInterrupted];
    v5 = [(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:1];
    LOBYTE(_currentStateAllowsProcessAssertion) = !v5;
    if (!v5 && isInterrupted)
    {

      LOBYTE(_currentStateAllowsProcessAssertion) = [(PGPictureInPictureRemoteObject *)self isVideoCall];
    }
  }

  return _currentStateAllowsProcessAssertion;
}

- (void)_acquireOrInvalidateProcessAssertionIfNeeded
{
  v27 = *MEMORY[0x1E69E9840];
  BSDispatchQueueAssertMain();
  _wantsProcessAssertion = [(PGPictureInPictureRemoteObject *)self _wantsProcessAssertion];
  processAssertion = self->_processAssertion;
  if (_wantsProcessAssertion)
  {
    if (processAssertion)
    {
      return;
    }

    v5 = PGLogCommon(_wantsProcessAssertion);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[PGPictureInPictureRemoteObject _acquireOrInvalidateProcessAssertionIfNeeded]";
      v25 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "%s %p Acquiring process assertion", buf, 0x16u);
    }

    [(PGPictureInPictureRemoteObject *)self _invalidateInterruptionBeganFinishTaskAssertion];
    WeakRetained = objc_loadWeakRetained(&self->_connection);
    v7 = +[PGProcessAssertion pipVisibleAssertionForProcessWithIdentifier:explanation:legacy:](PGProcessAssertion, "pipVisibleAssertionForProcessWithIdentifier:explanation:legacy:", [WeakRetained processIdentifier], @"PIP Visible Assertion", self->_sceneControllerIfExists == 0);
    v8 = self->_processAssertion;
    self->_processAssertion = v7;

    [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists setForeground:1];
    [(PGProcessAssertion *)self->_startBackgroundPIPAssertion invalidate];
    startBackgroundPIPAssertion = self->_startBackgroundPIPAssertion;
    self->_startBackgroundPIPAssertion = 0;
  }

  else
  {
    if (!processAssertion)
    {
      return;
    }

    v10 = PGLogCommon(_wantsProcessAssertion);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[PGPictureInPictureRemoteObject _acquireOrInvalidateProcessAssertionIfNeeded]";
      v25 = 2048;
      selfCopy2 = self;
      _os_log_impl(&dword_1BB282000, v10, OS_LOG_TYPE_DEFAULT, "%s %p Invalidating process assertion", buf, 0x16u);
    }

    [(PGPictureInPictureRemoteObject *)self _invalidateInterruptionBeganFinishTaskAssertion];
    v11 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    objc_storeStrong(&self->_finishTaskInvalidationUUID, v11);
    v12 = objc_loadWeakRetained(&self->_connection);
    v13 = +[PGProcessAssertion transientTaskAssertionForProcessWithIdentifier:explanation:](PGProcessAssertion, "transientTaskAssertionForProcessWithIdentifier:explanation:", [v12 processIdentifier], @"interruption began assertion");
    interruptionBeganFinishTaskAssertion = self->_interruptionBeganFinishTaskAssertion;
    self->_interruptionBeganFinishTaskAssertion = v13;

    v15 = dispatch_time(0, 3000000000);
    v17 = MEMORY[0x1E69E9820];
    v18 = 3221225472;
    v19 = __78__PGPictureInPictureRemoteObject__acquireOrInvalidateProcessAssertionIfNeeded__block_invoke;
    v20 = &unk_1E7F32508;
    v21 = v11;
    selfCopy3 = self;
    startBackgroundPIPAssertion = v11;
    dispatch_after(v15, MEMORY[0x1E69E96A0], &v17);
    [(PGProcessAssertion *)self->_processAssertion invalidate:v17];
    v16 = self->_processAssertion;
    self->_processAssertion = 0;

    [(PGPIPRemoteObjectSceneController *)self->_sceneControllerIfExists setForeground:0];
  }
}

void *__78__PGPictureInPictureRemoteObject__acquireOrInvalidateProcessAssertionIfNeeded__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[11])
  {
    return [result _invalidateInterruptionBeganFinishTaskAssertion];
  }

  return result;
}

- (void)_queue_notifyProxyOfInterruptionBegan
{
  v11 = *MEMORY[0x1E69E9840];
  [(PGInterruptionAssistant *)self->_interruptionAssistant noteDidNotifyProxyOfInterruptionBegan];
  v3 = +[PGCommand commandForBeginInterruption];
  v4 = PGLogCommon(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1BB282000, v4, OS_LOG_TYPE_DEFAULT, "remote object %p notifying proxy of pictureInPictureInterruptionBegan", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v6 = _PGLogMethodProem(self, 1);
  v7 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v6];
  dictionaryRepresentation = [v3 dictionaryRepresentation];
  [v7 handleCommand:dictionaryRepresentation];
}

- (void)_queue_notifyProxyOfInterruptionEnded
{
  v14 = *MEMORY[0x1E69E9840];
  allowsResumingAfterInterruptionEnds = [(PGInterruptionAssistant *)self->_interruptionAssistant allowsResumingAfterInterruptionEnds];
  [(PGInterruptionAssistant *)self->_interruptionAssistant noteDidNotifyProxyOfInterruptionEnded];
  v4 = [PGCommand commandForEndInterruptionWithShouldResumeSuggestion:allowsResumingAfterInterruptionEnds];
  v5 = PGLogCommon(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218240;
    selfCopy = self;
    v12 = 1024;
    v13 = allowsResumingAfterInterruptionEnds;
    _os_log_impl(&dword_1BB282000, v5, OS_LOG_TYPE_DEFAULT, "remote object %p notifying proxy of pictureInPictureInterruptionEnded shouldResumeSuggestion %{BOOL}u", &v10, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_connection);
  v7 = _PGLogMethodProem(self, 1);
  v8 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v7];
  dictionaryRepresentation = [v4 dictionaryRepresentation];
  [v8 handleCommand:dictionaryRepresentation];
}

- (void)pictureInPictureViewController:(id)controller updateHostedWindowSize:(CGSize)size animationType:(int64_t)type initialSpringVelocity:(double)velocity
{
  height = size.height;
  width = size.width;
  controllerCopy = controller;
  v13 = PGLogCommon(controllerCopy);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v15 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  sceneControllerIfExists = self->_sceneControllerIfExists;
  if (sceneControllerIfExists)
  {
    [(PGPIPRemoteObjectSceneController *)sceneControllerIfExists updateSize:type animationType:width initialSpringVelocity:height, velocity];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    _synchronizedDrawingFence = [MEMORY[0x1E69DCE70] _synchronizedDrawingFence];
    queue = self->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __124__PGPictureInPictureRemoteObject_pictureInPictureViewController_updateHostedWindowSize_animationType_initialSpringVelocity___block_invoke;
    block[3] = &unk_1E7F32F78;
    v22 = _synchronizedDrawingFence;
    v23 = a2;
    v24 = width;
    v25 = height;
    typeCopy = type;
    velocityCopy = velocity;
    block[4] = self;
    v20 = _synchronizedDrawingFence;
    dispatch_async(queue, block);

    objc_autoreleasePoolPop(v17);
  }
}

void __124__PGPictureInPictureRemoteObject_pictureInPictureViewController_updateHostedWindowSize_animationType_initialSpringVelocity___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 updateHostedWindowSize:*(a1 + 72) animationType:*(a1 + 40) initialSpringVelocity:*(a1 + 56) synchronizationFence:{*(a1 + 64), *(a1 + 80)}];
}

- (void)pictureInPictureViewControllerHostedWindowSizeChangeBegan:(id)began
{
  v5 = PGLogCommon(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__PGPictureInPictureRemoteObject_pictureInPictureViewControllerHostedWindowSizeChangeBegan___block_invoke;
  v9[3] = &unk_1E7F32870;
  v9[4] = self;
  v9[5] = a2;
  dispatch_async(queue, v9);
}

void __92__PGPictureInPictureRemoteObject_pictureInPictureViewControllerHostedWindowSizeChangeBegan___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 hostedWindowSizeChangeBegan];
}

- (void)pictureInPictureViewControllerHostedWindowSizeChangeEnded:(id)ended
{
  v5 = PGLogCommon(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__PGPictureInPictureRemoteObject_pictureInPictureViewControllerHostedWindowSizeChangeEnded___block_invoke;
  v9[3] = &unk_1E7F32870;
  v9[4] = self;
  v9[5] = a2;
  dispatch_async(queue, v9);
}

void __92__PGPictureInPictureRemoteObject_pictureInPictureViewControllerHostedWindowSizeChangeEnded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 hostedWindowSizeChangeEnded];
}

- (void)pictureInPictureViewControllerDidRequestStop:(id)stop
{
  v17 = *MEMORY[0x1E69E9840];
  stopCopy = stop;
  canStopPictureInPicture = [(PGPictureInPictureRemoteObject *)self canStopPictureInPicture];
  v6 = canStopPictureInPicture;
  v7 = PGLogCommon(canStopPictureInPicture);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315650;
    v12 = "[PGPictureInPictureRemoteObject pictureInPictureViewControllerDidRequestStop:]";
    v13 = 2048;
    selfCopy = self;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%s %p canStop: %{BOOL}u", &v11, 0x1Cu);
  }

  if (v6)
  {
    self->_hasPendingStopRequest = 0;
    [(PGPictureInPictureViewController *)self->_pictureInPictureViewController notePictureInPictureWillStopForAppRequest:0 preferredFullScreenRestore:1];
    delegate = [(PGPictureInPictureRemoteObject *)self delegate];
    sourceSceneSessionPersistentIdentifier = [(PGPictureInPictureRemoteObject *)self sourceSceneSessionPersistentIdentifier];
    [delegate pictureInPictureRemoteObject:self didRequestPictureInPictureStopForViewController:stopCopy sourceSceneSessionIdentifier:sourceSceneSessionPersistentIdentifier animated:1];
  }

  else
  {
    v10 = !self->_hasPendingCancellationRequest && [(PGPictureInPictureRemoteObject *)self isStartingPictureInPicture];
    self->_hasPendingStopRequest = v10;
  }
}

- (void)pictureInPictureViewController:(id)controller didReceiveCommand:(id)command
{
  controllerCopy = controller;
  commandCopy = command;
  v9 = PGLogCommon(commandCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureRemoteObject dealloc];
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v11 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  systemAction = [commandCopy systemAction];
  if (systemAction > 1)
  {
    if (systemAction == 2)
    {
      [(PGPictureInPictureRemoteObject *)self _stopTethering];
      [(PGPictureInPictureRemoteObject *)self pictureInPictureViewControllerDidRequestStop:controllerCopy];
    }

    else if (systemAction == 3)
    {
      [(PGPictureInPictureRemoteObject *)self _stopTethering];
      [(PGPictureInPictureRemoteObject *)self pictureInPictureViewControllerDidRequestCancel:controllerCopy];
    }
  }

  else if (systemAction)
  {
    if (systemAction == 1)
    {
      queue = self->_queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __83__PGPictureInPictureRemoteObject_pictureInPictureViewController_didReceiveCommand___block_invoke_2;
      block[3] = &unk_1E7F32870;
      block[4] = self;
      block[5] = a2;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v14 = self->_queue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __83__PGPictureInPictureRemoteObject_pictureInPictureViewController_didReceiveCommand___block_invoke;
    v16[3] = &unk_1E7F32FA0;
    v16[4] = self;
    v18 = a2;
    v17 = commandCopy;
    dispatch_async(v14, v16);
  }
}

void __83__PGPictureInPictureRemoteObject_pictureInPictureViewController_didReceiveCommand___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  v4 = [*(a1 + 40) dictionaryRepresentation];
  [v3 handleCommand:v4];
}

void __83__PGPictureInPictureRemoteObject_pictureInPictureViewController_didReceiveCommand___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 actionButtonTapped];
}

- (void)pictureInPictureViewControllerDidRequestCancel:(id)cancel
{
  v15 = *MEMORY[0x1E69E9840];
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v5 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  canCancelPictureInPicture = [(PGPictureInPictureRemoteObject *)self canCancelPictureInPicture];
  v7 = canCancelPictureInPicture;
  v8 = PGLogCommon(canCancelPictureInPicture);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315650;
    v10 = "[PGPictureInPictureRemoteObject pictureInPictureViewControllerDidRequestCancel:]";
    v11 = 2048;
    selfCopy = self;
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %p canCancel: %{BOOL}u", &v9, 0x1Cu);
  }

  if (v7)
  {
    [(PGPictureInPictureRemoteObject *)self cancel];
  }
}

- (void)pictureInPictureViewController:(id)controller didTransitionToStashed:(BOOL)stashed
{
  stashedCopy = stashed;
  v21 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  v7 = PGLogCommon(controllerCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _PGLogMethodProem(self, 1);
    *buf = 138543874;
    v16 = v8;
    v17 = 1024;
    v18 = stashedCopy;
    v19 = 1024;
    _isUnderLock = [(PGPictureInPictureRemoteObject *)self _isUnderLock];
    _os_log_impl(&dword_1BB282000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ setStashed:%{BOOL}u [self _isUnderLock]:%{BOOL}u", buf, 0x18u);
  }

  self->_stashed = stashedCopy;
  if (stashedCopy)
  {
    [(PGPictureInPictureRemoteObject *)self _notifyProxyOfStashedOrUnderLock:1];
    if ([(PGPlaybackState *)self->_playbackState backgroundAudioPolicy]== 2 && !self->_considerStashedPlaybackAsBackgroundAudioTimer)
    {
      objc_initWeak(buf, self);
      v9 = MEMORY[0x1E695DFF0];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __88__PGPictureInPictureRemoteObject_pictureInPictureViewController_didTransitionToStashed___block_invoke;
      v13[3] = &unk_1E7F32990;
      objc_copyWeak(&v14, buf);
      v10 = [v9 scheduledTimerWithTimeInterval:0 repeats:v13 block:30.0];
      considerStashedPlaybackAsBackgroundAudioTimer = self->_considerStashedPlaybackAsBackgroundAudioTimer;
      self->_considerStashedPlaybackAsBackgroundAudioTimer = v10;

      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    [(PGPictureInPictureRemoteObject *)self _notifyProxyOfStashedOrUnderLock:[(PGPictureInPictureRemoteObject *)self _isUnderLock]];
    [(NSTimer *)self->_considerStashedPlaybackAsBackgroundAudioTimer invalidate];
    v12 = self->_considerStashedPlaybackAsBackgroundAudioTimer;
    self->_considerStashedPlaybackAsBackgroundAudioTimer = 0;

    [(PGPictureInPictureRemoteObject *)self pictureInPictureInterruptionEndedWithReason:3 attribution:0];
  }
}

void __88__PGPictureInPictureRemoteObject_pictureInPictureViewController_didTransitionToStashed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained pictureInPictureInterruptionBeganWithReason:3 attribution:0];
    WeakRetained = v2;
  }
}

- (BOOL)canPreventOrSuspendRemoteObject:(id)object
{
  objectCopy = object;
  if (-[PGPictureInPictureRemoteObject _isICSVideoCall](self, "_isICSVideoCall") && [objectCopy isVideoCall])
  {
    v5 = [objectCopy _isAppICS] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)pagingSkipByNumberOfPages:(int64_t)pages
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__PGPictureInPictureRemoteObject_pagingSkipByNumberOfPages___block_invoke;
  block[3] = &unk_1E7F32C58;
  block[4] = self;
  block[5] = a2;
  block[6] = pages;
  dispatch_async(queue, block);
}

void __60__PGPictureInPictureRemoteObject_pagingSkipByNumberOfPages___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v2 = _PGLogMethodProem(*(a1 + 32), 1);
  v3 = [WeakRetained PG_appProxyWithDebugMethodAndPointerProem:v2];
  [v3 pagingSkipByNumberOfPages:*(a1 + 48)];
}

- (PGPictureInPictureRemoteObjectDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (PGPictureInPictureAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (CGRect)initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding
{
  x = self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding.origin.x;
  y = self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding.origin.y;
  width = self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding.size.width;
  height = self->_initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)preferredContentSize
{
  width = self->_preferredContentSize.width;
  height = self->_preferredContentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)initWithConnection:interruptionAssistant:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = _PGLogMethodProem(v0, 1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v2, v3, "%@", v4, v5, v6, v7);
}

+ (uint64_t)tetherRemoteObject:toRemoteObject:mode:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:v3 object:v2 file:@"PGPictureInPictureRemoteObject.m" lineNumber:816 description:{@"Failed to tether [%@] to [%@]. isStoppingTethering[%u] canStartTethering[%u]", v1, v0, 0, 0}];

  return [v1 setTetheringRemoteObject:v0];
}

+ (uint64_t)tetherRemoteObject:(uint64_t)a1 toRemoteObject:(uint64_t)a2 mode:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PGPictureInPictureRemoteObject.m" lineNumber:813 description:{@"Invalid parameter not satisfying: %@", @"tetheredObject != nil || tetheringObject != nil"}];

  [0 canTetherRemoteObjectAsMicroPIP:0];
  return [0 setTetheringRemoteObject:0];
}

- (void)_setCurrentState:.cold.1()
{
  OUTLINED_FUNCTION_5();
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v4 = PGStringFromPictureInPictureRemoteObjectState(v3);
  v5 = PGStringFromPictureInPictureRemoteObjectState(v2);
  [v6 handleFailureInMethod:v1 object:v0 file:@"PGPictureInPictureRemoteObject.m" lineNumber:853 description:{@"%@ attempted transition from %@ to %@, which is not allowed.", v0, v4, v5}];
}

- (void)updateMenuItems:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = _PGLogMethodProem(v0, 0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v2, v3, "%@ may not be invoked on the main thread!", v4, v5, v6, v7);
}

@end