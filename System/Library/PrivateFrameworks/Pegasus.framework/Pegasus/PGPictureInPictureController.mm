@interface PGPictureInPictureController
+ (BOOL)isPictureInPictureSupported;
- (BOOL)_hasActiveNonVideoCallRemoteObjectAuthorizedForBackgroundPIP;
- (BOOL)backgroundPIPService:(id)service canAuthorizeBackgroundPIPForActivitySessionWithIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier;
- (BOOL)isStoppingOrCancellingPictureInPictureForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BOOL)pictureInPictureInterruptionBeganWithReason:(int64_t)reason attribution:(id)attribution;
- (BOOL)pictureInPictureRemoteObjectHasBackgroundPIPAuthorization:(id)authorization;
- (BOOL)pictureInPictureRemoteObjectShouldAcceptSetupRequest:(id)request;
- (BOOL)pictureInPictureRemoteObjectShouldCancelActivePictureInPictureOnStart:(id)start;
- (BOOL)shouldStartPictureInPictureForApplicationEnteringBackground:(id)background sceneSessionPersistentIdentifier:(id)identifier;
- (CGRect)initialFrameForInteractivePictureInPictureAnimationEnteringBackgroundForApplication:(id)application;
- (CGRect)initialFrameForInteractivePictureInPictureAnimationEnteringBackgroundForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier;
- (CGSize)preferredContentSizeForActivePictureInPictureWithApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier;
- (CGSize)preferredContentSizeForInteractivePictureInPictureAnimationEnteringBackgroundForApplication:(id)application;
- (CGSize)preferredContentSizeForInteractivelyEnteringBackgroundForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier;
- (NSDictionary)activeSceneSessionIdentifiersByApplication;
- (NSSet)activePictureInPictureApplicationsStoppingOrCancelling;
- (PGPictureInPictureAnalyticsDelegate)analyticsDelegate;
- (PGPictureInPictureController)init;
- (PGPictureInPictureControllerDelegate)delegate;
- (id)_faceTimeVideoCallInterruptionExemption;
- (id)_faceTimeVideoCallRemoteObject;
- (id)_pictureInPictureRemoteObjects;
- (id)_remoteObjectForPictureInPictureApplication:(id)application passingTest:(id)test error:(id *)error;
- (id)_remoteObjectForPictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier error:(id *)error;
- (id)_remoteObjectForTestApplicationWithBundleIdentifier:(id)identifier;
- (id)_remoteObjectThatCanCancelPictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier error:(id *)error;
- (id)_remoteObjectThatCanStopPictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier error:(id *)error;
- (id)_remoteObjectThatShouldStartPictureInPictureEnteringBackgroundForPictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier error:(id *)error;
- (id)_remoteObjectsForPictureInPictureApplication:(id)application;
- (id)existingPictureInPictureApplicationForBundleIdentifier:(id)identifier;
- (id)pictureInPictureRemoteObject:(id)object displayConfigurationForApplication:(id)application;
- (id)pictureInPictureRemoteObjectInterruptionAssistant:(id)assistant;
- (int64_t)contentTypePictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier;
- (int64_t)tetheringModeForSceneSessionPersistentIdentifier:(id)identifier;
- (void)_addRemoteObject:(id)object;
- (void)_removeRemoteObject:(id)object;
- (void)_updateAllRemoteObjectsForPIPPossibleAndExemptAttributions;
- (void)activateBackgroundPIPAuthorizationService;
- (void)backgroundPIPService:(id)service didGrantBackgroundPIPAuthorizationForActivitySessionWithIdentifier:(id)identifier;
- (void)backgroundPIPService:(id)service didRevokeBackgroundPIPAuthorizationForActivitySessionWithIdentifier:(id)identifier;
- (void)beginTwoStageStopPictureInPictureForApplication:(id)application withSceneSessionPersistentIdentifier:(id)identifier animated:(BOOL)animated byRestoringUserInterfaceWithCompletionHandler:(id)handler;
- (void)cancelPictureInPictureForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier;
- (void)dealloc;
- (void)endTwoStageStopPictureInPictureForApplication:(id)application withSceneSessionPersistentIdentifier:(id)identifier animated:(BOOL)animated completionHandler:(id)handler;
- (void)init;
- (void)pagingSkipByNumberOfPages:(int64_t)pages application:(id)application;
- (void)pictureInPictureInterruptionEndedWithReason:(int64_t)reason attribution:(id)attribution;
- (void)pictureInPictureRemoteObject:(id)object didCreatePictureInPictureViewController:(id)controller;
- (void)pictureInPictureRemoteObject:(id)object didHidePictureInPictureViewController:(id)controller;
- (void)pictureInPictureRemoteObject:(id)object didRequestPictureInPictureStopForViewController:(id)controller sourceSceneSessionIdentifier:(id)identifier animated:(BOOL)animated;
- (void)pictureInPictureRemoteObject:(id)object didShowPictureInPictureViewController:(id)controller;
- (void)pictureInPictureRemoteObject:(id)object requestActivationOfSceneWithPersistenceIdentier:(id)identier completion:(id)completion;
- (void)pictureInPictureRemoteObject:(id)object willDestroyPictureInPictureViewController:(id)controller;
- (void)pictureInPictureRemoteObject:(id)object willHidePictureInPictureViewController:(id)controller;
- (void)pictureInPictureRemoteObject:(id)object willShowPictureInPictureViewController:(id)controller;
- (void)restorePictureInPictureTestActionForApplicationWithBundleIdentifier:(id)identifier;
- (void)setDelegate:(id)delegate;
- (void)startPictureInPictureForApplicationEnteringBackground:(id)background sceneSessionPersistentIdentifier:(id)identifier animated:(BOOL)animated completionHandler:(id)handler;
- (void)startPictureInPictureResourcesUsageReductionForApplication:(id)application requestingViewController:(id)controller;
- (void)startPictureInPictureTestActionForApplicationWithBundleIdentifier:(id)identifier;
- (void)stopPictureInPictureForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier animated:(BOOL)animated completionHandler:(id)handler;
- (void)stopPictureInPictureResourcesUsageReductionForApplication:(id)application requestingViewController:(id)controller;
@end

@implementation PGPictureInPictureController

- (id)_pictureInPictureRemoteObjects
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableSet *)self->_lock_pictureInPictureRemoteObjects copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_faceTimeVideoCallRemoteObject
{
  _pictureInPictureRemoteObjects = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
  v3 = [_pictureInPictureRemoteObjects bs_firstObjectPassingTest:&__block_literal_global_58];

  return v3;
}

+ (BOOL)isPictureInPictureSupported
{
  if (isPictureInPictureSupported_onceToken != -1)
  {
    +[PGPictureInPictureController isPictureInPictureSupported];
  }

  return isPictureInPictureSupported_isPictureInPictureSupported;
}

uint64_t __59__PGPictureInPictureController_isPictureInPictureSupported__block_invoke()
{
  result = PGIsPictureInPictureSupported();
  isPictureInPictureSupported_isPictureInPictureSupported = result;
  return result;
}

- (PGPictureInPictureController)init
{
  v3 = PGLogCommon(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureController init];
  }

  v22.receiver = self;
  v22.super_class = PGPictureInPictureController;
  v4 = [(PGPictureInPictureController *)&v22 init];
  v5 = v4;
  if (v4)
  {
    v4->_lock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x1E695DFA8] set];
    lock_pictureInPictureRemoteObjects = v5->_lock_pictureInPictureRemoteObjects;
    v5->_lock_pictureInPictureRemoteObjects = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    pictureInPictureRemoteObjectsSupportingActiveSessionCancellationOnStart = v5->_pictureInPictureRemoteObjectsSupportingActiveSessionCancellationOnStart;
    v5->_pictureInPictureRemoteObjectsSupportingActiveSessionCancellationOnStart = v8;

    v10 = [MEMORY[0x1E695DFA8] set];
    activePictureInPictureRemoteObjects = v5->_activePictureInPictureRemoteObjects;
    v5->_activePictureInPictureRemoteObjects = v10;

    v12 = objc_alloc_init(PGInterruptionAssistant);
    interruptionAssistant = v5->_interruptionAssistant;
    v5->_interruptionAssistant = v12;

    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"com.apple.pegasus.PGPictureInPictureController %p", v5];
    uTF8String = [v14 UTF8String];
    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v17 = dispatch_queue_create(uTF8String, v16);
    listenerQueue = v5->_listenerQueue;
    v5->_listenerQueue = v17;

    v19 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.pegasus"];
    listener = v5->_listener;
    v5->_listener = v19;

    [(NSXPCListener *)v5->_listener setDelegate:v5];
    [(NSXPCListener *)v5->_listener resume];
  }

  return v5;
}

- (void)dealloc
{
  v3 = PGLogCommon([(NSXPCListener *)self->_listener invalidate]);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PGPictureInPictureController init];
  }

  v4.receiver = self;
  v4.super_class = PGPictureInPictureController;
  [(PGPictureInPictureController *)&v4 dealloc];
}

- (PGPictureInPictureControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);

    if (v5)
    {
      *&self->_delegateRespondsTo &= 0x80u;
    }

    v6 = objc_storeWeak(&self->_delegate, obj);

    if (obj)
    {
      v7 = objc_loadWeakRetained(&self->_delegate);
      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFE | objc_opt_respondsToSelector() & 1;

      v8 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFD | v9;

      v10 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v11 = 4;
      }

      else
      {
        v11 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xFB | v11;

      v12 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v13 = 8;
      }

      else
      {
        v13 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xF7 | v13;

      v14 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v15 = 16;
      }

      else
      {
        v15 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xEF | v15;

      v16 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v17 = 32;
      }

      else
      {
        v17 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xDF | v17;

      v18 = objc_loadWeakRetained(&self->_delegate);
      if (objc_opt_respondsToSelector())
      {
        v19 = 64;
      }

      else
      {
        v19 = 0;
      }

      *&self->_delegateRespondsTo = *&self->_delegateRespondsTo & 0xBF | v19;
    }
  }
}

- (CGRect)initialFrameForInteractivePictureInPictureAnimationEnteringBackgroundForApplication:(id)application
{
  [(PGPictureInPictureController *)self initialFrameForInteractivePictureInPictureAnimationEnteringBackgroundForApplication:application sceneSessionPersistentIdentifier:0];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)preferredContentSizeForInteractivePictureInPictureAnimationEnteringBackgroundForApplication:(id)application
{
  [(PGPictureInPictureController *)self preferredContentSizeForInteractivelyEnteringBackgroundForApplication:application sceneSessionPersistentIdentifier:0];
  result.height = v4;
  result.width = v3;
  return result;
}

- (int64_t)contentTypePictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier
{
  v4 = [(PGPictureInPictureController *)self _remoteObjectForPictureInPictureApplication:application sceneSessionPersistentIdentifier:identifier error:0];
  v5 = v4;
  if (v4)
  {
    contentType = [v4 contentType];
  }

  else
  {
    contentType = 0;
  }

  return contentType;
}

- (CGRect)initialFrameForInteractivePictureInPictureAnimationEnteringBackgroundForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier
{
  applicationCopy = application;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(PGPictureInPictureController *)selfCopy _remoteObjectThatShouldStartPictureInPictureEnteringBackgroundForPictureInPictureApplication:applicationCopy sceneSessionPersistentIdentifier:identifierCopy error:0];
  v10 = v9;
  if (v9)
  {
    [v9 initialLayerFrameForInteractiveTransitionAnimationUponBackgrounding];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v12 = *MEMORY[0x1E695F050];
    v14 = *(MEMORY[0x1E695F050] + 8);
    v16 = *(MEMORY[0x1E695F050] + 16);
    v18 = *(MEMORY[0x1E695F050] + 24);
  }

  objc_sync_exit(selfCopy);
  v19 = v12;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (CGSize)preferredContentSizeForInteractivelyEnteringBackgroundForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier
{
  applicationCopy = application;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(PGPictureInPictureController *)selfCopy _remoteObjectThatShouldStartPictureInPictureEnteringBackgroundForPictureInPictureApplication:applicationCopy sceneSessionPersistentIdentifier:identifierCopy error:0];
  v10 = v9;
  if (v9)
  {
    [v9 preferredContentSize];
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v12 = *MEMORY[0x1E695F060];
    v14 = *(MEMORY[0x1E695F060] + 8);
  }

  objc_sync_exit(selfCopy);
  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)preferredContentSizeForActivePictureInPictureWithApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier
{
  applicationCopy = application;
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activePictureInPictureRemoteObjects = selfCopy->_activePictureInPictureRemoteObjects;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __126__PGPictureInPictureController_preferredContentSizeForActivePictureInPictureWithApplication_sceneSessionPersistentIdentifier___block_invoke;
  v22[3] = &unk_1E7F32400;
  v10 = applicationCopy;
  v23 = v10;
  v11 = identifierCopy;
  v24 = v11;
  v12 = [(NSMutableSet *)activePictureInPictureRemoteObjects bs_firstObjectPassingTest:v22];
  if (v12 || (-[PGPictureInPictureController _remoteObjectsForPictureInPictureApplication:](selfCopy, "_remoteObjectsForPictureInPictureApplication:", v10), v13 = objc_claimAutoreleasedReturnValue(), v20[0] = MEMORY[0x1E69E9820], v20[1] = 3221225472, v20[2] = __126__PGPictureInPictureController_preferredContentSizeForActivePictureInPictureWithApplication_sceneSessionPersistentIdentifier___block_invoke_2, v20[3] = &unk_1E7F32428, v21 = v11, [v13 bs_firstObjectPassingTest:v20], v12 = objc_claimAutoreleasedReturnValue(), v21, v13, v12))
  {
    [v12 preferredContentSize];
    v15 = v14;
    v17 = v16;
  }

  else
  {
    v15 = *MEMORY[0x1E695F060];
    v17 = *(MEMORY[0x1E695F060] + 8);
  }

  objc_sync_exit(selfCopy);
  v18 = v15;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

uint64_t __126__PGPictureInPictureController_preferredContentSizeForActivePictureInPictureWithApplication_sceneSessionPersistentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 pictureInPictureApplication];
  if ([v4 isEqual:*(a1 + 32)])
  {
    v5 = [v3 matchesSceneSessionIdentifier:*(a1 + 40)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)shouldStartPictureInPictureForApplicationEnteringBackground:(id)background sceneSessionPersistentIdentifier:(id)identifier
{
  backgroundCopy = background;
  identifierCopy = identifier;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v13 = 0;
  v10 = [(PGPictureInPictureController *)self _remoteObjectThatShouldStartPictureInPictureEnteringBackgroundForPictureInPictureApplication:backgroundCopy sceneSessionPersistentIdentifier:identifierCopy error:&v13];
  v11 = v13 == 0;

  return v11;
}

- (BOOL)isStoppingOrCancellingPictureInPictureForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier
{
  applicationCopy = application;
  identifierCopy = identifier;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __118__PGPictureInPictureController_isStoppingOrCancellingPictureInPictureForApplication_sceneSessionPersistentIdentifier___block_invoke;
  v14[3] = &unk_1E7F32450;
  v15 = identifierCopy;
  v10 = identifierCopy;
  v11 = [(PGPictureInPictureController *)self _remoteObjectForPictureInPictureApplication:applicationCopy passingTest:v14 error:0];
  isStoppingOrCancellingPictureInPicture = [v11 isStoppingOrCancellingPictureInPicture];

  return isStoppingOrCancellingPictureInPicture;
}

- (int64_t)tetheringModeForSceneSessionPersistentIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _pictureInPictureRemoteObjects = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PGPictureInPictureController_tetheringModeForSceneSessionPersistentIdentifier___block_invoke;
  v12[3] = &unk_1E7F32428;
  v13 = identifierCopy;
  v6 = identifierCopy;
  v7 = [_pictureInPictureRemoteObjects bs_firstObjectPassingTest:v12];

  _pictureInPictureRemoteObjects2 = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
  v9 = [_pictureInPictureRemoteObjects2 bs_firstObjectPassingTest:&__block_literal_global_40];

  v10 = 0;
  if (v9 && v7 && v9 != v7)
  {
    v10 = [v9 canTetherRemoteObjectAsMicroPIP:v7];
  }

  return v10;
}

uint64_t __81__PGPictureInPictureController_tetheringModeForSceneSessionPersistentIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 sourceSceneSessionPersistentIdentifier];
  LODWORD(a1) = [v4 isEqual:*(a1 + 32)];

  LODWORD(v4) = [v3 supportsMicroPIP];
  return a1 & v4;
}

- (void)startPictureInPictureForApplicationEnteringBackground:(id)background sceneSessionPersistentIdentifier:(id)identifier animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  backgroundCopy = background;
  identifierCopy = identifier;
  handlerCopy = handler;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v14 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v19 = 0;
  v15 = [(PGPictureInPictureController *)self _remoteObjectThatShouldStartPictureInPictureEnteringBackgroundForPictureInPictureApplication:backgroundCopy sceneSessionPersistentIdentifier:identifierCopy error:&v19];
  v16 = v19;
  if (v15)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __146__PGPictureInPictureController_startPictureInPictureForApplicationEnteringBackground_sceneSessionPersistentIdentifier_animated_completionHandler___block_invoke;
    v17[3] = &unk_1E7F32478;
    v18 = handlerCopy;
    [v15 startPictureInPictureEnteringBackgroundAnimated:animatedCopy withCompletionHandler:v17];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }
}

uint64_t __146__PGPictureInPictureController_startPictureInPictureForApplicationEnteringBackground_sceneSessionPersistentIdentifier_animated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stopPictureInPictureForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier animated:(BOOL)animated completionHandler:(id)handler
{
  animatedCopy = animated;
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v14 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v19 = 0;
  v15 = [(PGPictureInPictureController *)self _remoteObjectThatCanStopPictureInPictureApplication:applicationCopy sceneSessionPersistentIdentifier:identifierCopy error:&v19];
  v16 = v19;
  if (v15)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __127__PGPictureInPictureController_stopPictureInPictureForApplication_sceneSessionPersistentIdentifier_animated_completionHandler___block_invoke;
    v17[3] = &unk_1E7F32478;
    v18 = handlerCopy;
    [v15 stopPictureInPictureAnimated:animatedCopy withCompletionHandler:v17];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v16);
  }
}

uint64_t __127__PGPictureInPictureController_stopPictureInPictureForApplication_sceneSessionPersistentIdentifier_animated_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)beginTwoStageStopPictureInPictureForApplication:(id)application withSceneSessionPersistentIdentifier:(id)identifier animated:(BOOL)animated byRestoringUserInterfaceWithCompletionHandler:(id)handler
{
  applicationCopy = application;
  identifierCopy = identifier;
  handlerCopy = handler;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v13 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v16 = 0;
  v14 = [(PGPictureInPictureController *)self _remoteObjectThatCanStopPictureInPictureApplication:applicationCopy sceneSessionPersistentIdentifier:identifierCopy error:&v16];
  v15 = v16;
  if (v14)
  {
    [v14 beginTwoStageStopPictureInPictureByRestoringUserInterfaceWithCompletionHandler:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, v15);
  }
}

- (void)endTwoStageStopPictureInPictureForApplication:(id)application withSceneSessionPersistentIdentifier:(id)identifier animated:(BOOL)animated completionHandler:(id)handler
{
  applicationCopy = application;
  handlerCopy = handler;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v11 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v14 = 0;
  v12 = [(PGPictureInPictureController *)self _remoteObjectThatCanEndTwoStageStopPictureInPictureApplication:applicationCopy error:&v14];
  v13 = v14;
  if (v12)
  {
    [v12 endTwoStageStopPictureInPictureWithCompletionBlock:handlerCopy];
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0, v13);
  }
}

- (void)cancelPictureInPictureForApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  identifierCopy = identifier;
  v8 = PGLogCommon(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315650;
    v14 = "[PGPictureInPictureController cancelPictureInPictureForApplication:sceneSessionPersistentIdentifier:]";
    v15 = 2114;
    v16 = applicationCopy;
    v17 = 2114;
    v18 = identifierCopy;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "%s %{public}@ %{public}@", &v13, 0x20u);
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

  v11 = [(PGPictureInPictureController *)self _remoteObjectThatCanCancelPictureInPictureApplication:applicationCopy sceneSessionPersistentIdentifier:identifierCopy error:0];
  v12 = v11;
  if (v11)
  {
    [v11 cancel];
  }
}

- (void)startPictureInPictureResourcesUsageReductionForApplication:(id)application requestingViewController:(id)controller
{
  applicationCopy = application;
  controllerCopy = controller;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __116__PGPictureInPictureController_startPictureInPictureResourcesUsageReductionForApplication_requestingViewController___block_invoke;
  v13[3] = &unk_1E7F32450;
  v14 = controllerCopy;
  v10 = controllerCopy;
  v11 = [(PGPictureInPictureController *)self _remoteObjectForPictureInPictureApplication:applicationCopy passingTest:v13 error:0];
  v12 = v11;
  if (v11)
  {
    [v11 setCurrentResourcesUsageReductionReasons:1];
  }
}

BOOL __116__PGPictureInPictureController_startPictureInPictureResourcesUsageReductionForApplication_requestingViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pictureInPictureViewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (void)stopPictureInPictureResourcesUsageReductionForApplication:(id)application requestingViewController:(id)controller
{
  applicationCopy = application;
  controllerCopy = controller;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __115__PGPictureInPictureController_stopPictureInPictureResourcesUsageReductionForApplication_requestingViewController___block_invoke;
  v13[3] = &unk_1E7F32450;
  v14 = controllerCopy;
  v10 = controllerCopy;
  v11 = [(PGPictureInPictureController *)self _remoteObjectForPictureInPictureApplication:applicationCopy passingTest:v13 error:0];
  v12 = v11;
  if (v11)
  {
    [v11 setCurrentResourcesUsageReductionReasons:0];
  }
}

BOOL __115__PGPictureInPictureController_stopPictureInPictureResourcesUsageReductionForApplication_requestingViewController___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pictureInPictureViewController];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)_remoteObjectForTestApplicationWithBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _pictureInPictureRemoteObjects = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
  v6 = [_pictureInPictureRemoteObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(_pictureInPictureRemoteObjects);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        pictureInPictureApplication = [v9 pictureInPictureApplication];
        bundleIdentifier = [pictureInPictureApplication bundleIdentifier];
        v12 = [bundleIdentifier isEqualToString:identifierCopy];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [_pictureInPictureRemoteObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)startPictureInPictureTestActionForApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v6 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v7 = [(PGPictureInPictureController *)self _remoteObjectForTestApplicationWithBundleIdentifier:identifierCopy];
  [v7 sendStartPictureInPictureTestAction];
}

- (void)restorePictureInPictureTestActionForApplicationWithBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v6 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v7 = [(PGPictureInPictureController *)self _remoteObjectForTestApplicationWithBundleIdentifier:identifierCopy];
  pictureInPictureViewController = [v7 pictureInPictureViewController];
  viewModel = [pictureInPictureViewController viewModel];
  [viewModel handleRestoreButtonTapped];
}

- (BOOL)pictureInPictureInterruptionBeganWithReason:(int64_t)reason attribution:(id)attribution
{
  v30 = *MEMORY[0x1E69E9840];
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

  v9 = PGLogCommon(isMainThread);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PGStringFromPictureInPictureInterruptionReason(reason);
    *buf = 136315650;
    v25 = "[PGPictureInPictureController pictureInPictureInterruptionBeganWithReason:attribution:]";
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = attributionCopy;
    _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@ %{public}@", buf, 0x20u);
  }

  [(PGInterruptionAssistant *)self->_interruptionAssistant addReason:reason attribution:attributionCopy];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  _pictureInPictureRemoteObjects = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
  v12 = [_pictureInPictureRemoteObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    isInterrupted = 0;
    v15 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(_pictureInPictureRemoteObjects);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        [v17 pictureInPictureInterruptionBeganWithReason:reason attribution:attributionCopy];
        if (!((reason != 2) | isInterrupted & 1))
        {
          if ([(NSMutableSet *)self->_activePictureInPictureRemoteObjects containsObject:v17])
          {
            isInterrupted = [v17 isInterrupted];
          }

          else
          {
            isInterrupted = 0;
          }
        }
      }

      v13 = [_pictureInPictureRemoteObjects countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  else
  {
    isInterrupted = 0;
  }

  return isInterrupted & 1;
}

- (void)pictureInPictureInterruptionEndedWithReason:(int64_t)reason attribution:(id)attribution
{
  v37 = *MEMORY[0x1E69E9840];
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

  v9 = PGLogCommon(isMainThread);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PGStringFromPictureInPictureInterruptionReason(reason);
    *buf = 136315650;
    v32 = "[PGPictureInPictureController pictureInPictureInterruptionEndedWithReason:attribution:]";
    v33 = 2114;
    v34 = v10;
    v35 = 2114;
    v36 = attributionCopy;
    _os_log_impl(&dword_1BB282000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@ %{public}@", buf, 0x20u);
  }

  v11 = [(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:1];
  [(PGInterruptionAssistant *)self->_interruptionAssistant removeReason:reason attribution:attributionCopy];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  _pictureInPictureRemoteObjects = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
  v13 = [_pictureInPictureRemoteObjects countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(_pictureInPictureRemoteObjects);
        }

        [*(*(&v26 + 1) + 8 * v16++) pictureInPictureInterruptionEndedWithReason:reason attribution:attributionCopy];
      }

      while (v14 != v16);
      v14 = [_pictureInPictureRemoteObjects countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v14);
  }

  if (![(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:1]&& v11 && _os_feature_enabled_impl())
  {
    _faceTimeVideoCallRemoteObject = [(PGPictureInPictureController *)self _faceTimeVideoCallRemoteObject];
    currentState = [_faceTimeVideoCallRemoteObject currentState];
    shouldStartPictureInPictureEnteringBackground = [_faceTimeVideoCallRemoteObject shouldStartPictureInPictureEnteringBackground];
    if (currentState == 2)
    {
      if (shouldStartPictureInPictureEnteringBackground)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v21 = objc_opt_respondsToSelector();

        if (v21)
        {
          v22 = objc_loadWeakRetained(&self->_delegate);
          v23 = [v22 pictureInPictureControllerCanBackgroundStartForFaceTimeVideoCall:self];

          if (v23)
          {
            v25 = PGLogCommon(v24);
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v32 = "[PGPictureInPictureController pictureInPictureInterruptionEndedWithReason:attribution:]";
              _os_log_impl(&dword_1BB282000, v25, OS_LOG_TYPE_DEFAULT, "%s Starting PIP for FaceTime Video Call upon unlock", buf, 0xCu);
            }

            [_faceTimeVideoCallRemoteObject startPictureInPictureFromBackground];
          }
        }
      }
    }
  }
}

- (id)existingPictureInPictureApplicationForBundleIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  _pictureInPictureRemoteObjects = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
  v6 = [_pictureInPictureRemoteObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(_pictureInPictureRemoteObjects);
      }

      pictureInPictureApplication = [*(*(&v14 + 1) + 8 * v9) pictureInPictureApplication];
      bundleIdentifier = [pictureInPictureApplication bundleIdentifier];
      v12 = [bundleIdentifier isEqualToString:identifierCopy];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [_pictureInPictureRemoteObjects countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    pictureInPictureApplication = 0;
  }

  return pictureInPictureApplication;
}

- (NSSet)activePictureInPictureApplicationsStoppingOrCancelling
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

  activePictureInPictureRemoteObjects = self->_activePictureInPictureRemoteObjects;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __86__PGPictureInPictureController_activePictureInPictureApplicationsStoppingOrCancelling__block_invoke;
  v8[3] = &unk_1E7F324E0;
  v8[4] = self;
  v6 = [(NSMutableSet *)activePictureInPictureRemoteObjects bs_compactMap:v8];

  return v6;
}

id __86__PGPictureInPictureController_activePictureInPictureApplicationsStoppingOrCancelling__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pictureInPictureApplication];
  v4 = [*(a1 + 32) _remoteObjectForPictureInPictureApplication:v3 passingTest:&__block_literal_global_50 error:0];
  v5 = 0;
  if ([v4 isStoppingOrCancellingPictureInPicture])
  {
    v5 = v3;
  }

  return v5;
}

- (NSDictionary)activeSceneSessionIdentifiersByApplication
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_activePictureInPictureRemoteObjects count])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSMutableSet count](self->_activePictureInPictureRemoteObjects, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = self->_activePictureInPictureRemoteObjects;
    v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v16;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v16 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v15 + 1) + 8 * i);
          pictureInPictureApplication = [v9 pictureInPictureApplication];
          if (pictureInPictureApplication)
          {
            v11 = [v3 objectForKey:pictureInPictureApplication];

            if (v11)
            {
              [v3 objectForKey:pictureInPictureApplication];
            }

            else
            {
              [MEMORY[0x1E695DF70] array];
            }
            v12 = ;
            sourceSceneSessionPersistentIdentifier = [v9 sourceSceneSessionPersistentIdentifier];
            if (sourceSceneSessionPersistentIdentifier)
            {
              [v12 addObject:sourceSceneSessionPersistentIdentifier];
            }

            if (v12)
            {
              [v3 setObject:v12 forKey:pictureInPictureApplication];
            }
          }
        }

        v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v6);
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)activateBackgroundPIPAuthorizationService
{
  if (!self->_backgroundPIPService)
  {
    v4 = objc_alloc_init(PGBackgroundPIPService);
    backgroundPIPService = self->_backgroundPIPService;
    self->_backgroundPIPService = v4;

    [(PGBackgroundPIPService *)self->_backgroundPIPService setDelegate:self];
    v6 = self->_backgroundPIPService;

    [(PGBackgroundPIPService *)v6 startListener];
  }
}

- (void)pagingSkipByNumberOfPages:(int64_t)pages application:(id)application
{
  v5 = [(PGPictureInPictureController *)self _remoteObjectsForPictureInPictureApplication:application];
  anyObject = [v5 anyObject];

  [anyObject pagingSkipByNumberOfPages:pages];
}

- (id)_remoteObjectsForPictureInPictureApplication:(id)application
{
  applicationCopy = application;
  _pictureInPictureRemoteObjects = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __77__PGPictureInPictureController__remoteObjectsForPictureInPictureApplication___block_invoke;
  v9[3] = &unk_1E7F32450;
  v10 = applicationCopy;
  v6 = applicationCopy;
  v7 = [_pictureInPictureRemoteObjects objectsPassingTest:v9];

  return v7;
}

BOOL __77__PGPictureInPictureController__remoteObjectsForPictureInPictureApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 pictureInPictureApplication];
  v4 = v3 == *(a1 + 32);

  return v4;
}

- (id)_remoteObjectForPictureInPictureApplication:(id)application passingTest:(id)test error:(id *)error
{
  applicationCopy = application;
  testCopy = test;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = [(PGPictureInPictureController *)selfCopy _remoteObjectsForPictureInPictureApplication:applicationCopy];
  if ([v11 count])
  {
    v12 = [v11 objectsPassingTest:testCopy];
    v13 = [v12 count];
    if (v13 >= 2)
    {
      v14 = PGLogCommon(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PGPictureInPictureController _remoteObjectForPictureInPictureApplication:v14 passingTest:? error:?];
      }
    }

    if ([v12 count] == 1)
    {
      anyObject = [v12 anyObject];
      v16 = 0;
    }

    else
    {
      v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1002 userInfo:0];
      anyObject = 0;
    }
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PGPegasusErrorDomain" code:-1000 userInfo:0];
    anyObject = 0;
  }

  objc_sync_exit(selfCopy);
  if (error)
  {
    v17 = v16;
    *error = v16;
  }

  return anyObject;
}

- (id)_remoteObjectForPictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __115__PGPictureInPictureController__remoteObjectForPictureInPictureApplication_sceneSessionPersistentIdentifier_error___block_invoke;
  v12[3] = &unk_1E7F32450;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = [(PGPictureInPictureController *)self _remoteObjectForPictureInPictureApplication:application passingTest:v12 error:error];

  return v10;
}

- (id)_remoteObjectThatShouldStartPictureInPictureEnteringBackgroundForPictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __164__PGPictureInPictureController__remoteObjectThatShouldStartPictureInPictureEnteringBackgroundForPictureInPictureApplication_sceneSessionPersistentIdentifier_error___block_invoke;
  v12[3] = &unk_1E7F32450;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = [(PGPictureInPictureController *)self _remoteObjectForPictureInPictureApplication:application passingTest:v12 error:error];

  return v10;
}

uint64_t __164__PGPictureInPictureController__remoteObjectThatShouldStartPictureInPictureEnteringBackgroundForPictureInPictureApplication_sceneSessionPersistentIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 matchesSceneSessionIdentifier:*(a1 + 32)];
  v5 = [v3 shouldStartPictureInPictureEnteringBackground];
  v6 = v5;
  v7 = v4 & v5;
  v8 = PGLogCommon(v5);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218752;
    v11 = v3;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v4;
    v16 = 1024;
    v17 = v6 & 1;
    _os_log_impl(&dword_1BB282000, v8, OS_LOG_TYPE_DEFAULT, "Could remoteObject{%p} start pip upon backgrounding? %{BOOL}u, since we have at least the following: matchesSceneIdentifier{%{BOOL}u} shouldStartPictureInPictureEnteringBackground{%{BOOL}u}", &v10, 0x1Eu);
  }

  return v7;
}

- (id)_remoteObjectThatCanStopPictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __123__PGPictureInPictureController__remoteObjectThatCanStopPictureInPictureApplication_sceneSessionPersistentIdentifier_error___block_invoke;
  v12[3] = &unk_1E7F32450;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = [(PGPictureInPictureController *)self _remoteObjectForPictureInPictureApplication:application passingTest:v12 error:error];

  return v10;
}

uint64_t __123__PGPictureInPictureController__remoteObjectThatCanStopPictureInPictureApplication_sceneSessionPersistentIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 matchesSceneSessionIdentifier:*(a1 + 32)])
  {
    v4 = [v3 canStopPictureInPicture];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_remoteObjectThatCanCancelPictureInPictureApplication:(id)application sceneSessionPersistentIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __125__PGPictureInPictureController__remoteObjectThatCanCancelPictureInPictureApplication_sceneSessionPersistentIdentifier_error___block_invoke;
  v12[3] = &unk_1E7F32450;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = [(PGPictureInPictureController *)self _remoteObjectForPictureInPictureApplication:application passingTest:v12 error:error];

  return v10;
}

uint64_t __125__PGPictureInPictureController__remoteObjectThatCanCancelPictureInPictureApplication_sceneSessionPersistentIdentifier_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 matchesSceneSessionIdentifier:*(a1 + 32)])
  {
    v4 = [v3 canCancelPictureInPicture];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_hasActiveNonVideoCallRemoteObjectAuthorizedForBackgroundPIP
{
  _faceTimeVideoCallRemoteObject = [(PGPictureInPictureController *)self _faceTimeVideoCallRemoteObject];
  activePictureInPictureRemoteObjects = self->_activePictureInPictureRemoteObjects;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__PGPictureInPictureController__hasActiveNonVideoCallRemoteObjectAuthorizedForBackgroundPIP__block_invoke;
  v12[3] = &unk_1E7F32400;
  v5 = _faceTimeVideoCallRemoteObject;
  v13 = v5;
  selfCopy = self;
  if (([(NSMutableSet *)activePictureInPictureRemoteObjects bs_containsObjectPassingTest:v12]& 1) != 0)
  {
    v6 = 1;
  }

  else
  {
    _pictureInPictureRemoteObjects = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __92__PGPictureInPictureController__hasActiveNonVideoCallRemoteObjectAuthorizedForBackgroundPIP__block_invoke_2;
    v9[3] = &unk_1E7F32400;
    v10 = v5;
    selfCopy2 = self;
    v6 = [_pictureInPictureRemoteObjects bs_containsObjectPassingTest:v9];
  }

  return v6;
}

uint64_t __92__PGPictureInPictureController__hasActiveNonVideoCallRemoteObjectAuthorizedForBackgroundPIP__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) isEqual:v3])
  {
    v4 = 0;
  }

  else
  {
    v5 = *(*(a1 + 40) + 64);
    v6 = [v3 activitySessionIdentifier];
    v7 = [v3 pictureInPictureApplication];
    v8 = [v7 bundleIdentifier];
    v4 = [v5 hasAcquiredAuthorizationForActivitySessionWithIdentifier:v6 appBundleIdentifier:v8];
  }

  return v4;
}

uint64_t __92__PGPictureInPictureController__hasActiveNonVideoCallRemoteObjectAuthorizedForBackgroundPIP__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([*(a1 + 32) isEqual:v3] & 1) != 0 || objc_msgSend(v3, "currentState") == 2)
  {
    v4 = 0;
  }

  else
  {
    v5 = *(*(a1 + 40) + 64);
    v6 = [v3 activitySessionIdentifier];
    v7 = [v3 pictureInPictureApplication];
    v8 = [v7 bundleIdentifier];
    v4 = [v5 hasAcquiredAuthorizationForActivitySessionWithIdentifier:v6 appBundleIdentifier:v8];
  }

  return v4;
}

uint64_t __62__PGPictureInPictureController__faceTimeVideoCallRemoteObject__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isVideoCall])
  {
    v3 = [v2 pictureInPictureApplication];
    v4 = [v3 bundleIdentifier];
    v5 = [v4 isEqualToString:@"com.apple.InCallService"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_faceTimeVideoCallInterruptionExemption
{
  if (_os_feature_enabled_impl())
  {
    v2 = @"com.apple.avconferenced";
  }

  else
  {
    v2 = @"com.apple.mediaserverd";
  }

  return v2;
}

- (void)_updateAllRemoteObjectsForPIPPossibleAndExemptAttributions
{
  v60 = *MEMORY[0x1E69E9840];
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v4 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  _pictureInPictureRemoteObjects = [(PGPictureInPictureController *)self _pictureInPictureRemoteObjects];
  _faceTimeVideoCallRemoteObject = [(PGPictureInPictureController *)self _faceTimeVideoCallRemoteObject];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = _pictureInPictureRemoteObjects;
  v6 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v49;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v49 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v48 + 1) + 8 * i);
        if (v10 == self->_suspendedPictureInPictureRemoteObject || ([(NSMutableSet *)self->_activePictureInPictureRemoteObjects containsObject:*(*(&v48 + 1) + 8 * i)]& 1) != 0)
        {
          v11 = 1;
        }

        else
        {
          activePictureInPictureRemoteObjects = self->_activePictureInPictureRemoteObjects;
          v47[0] = MEMORY[0x1E69E9820];
          v47[1] = 3221225472;
          v47[2] = __90__PGPictureInPictureController__updateAllRemoteObjectsForPIPPossibleAndExemptAttributions__block_invoke;
          v47[3] = &unk_1E7F32400;
          v47[4] = self;
          v47[5] = v10;
          v11 = [(NSMutableSet *)activePictureInPictureRemoteObjects bs_containsObjectPassingTest:v47]^ 1;
        }

        [(PGPictureInPictureRemoteObject *)v10 setPictureInPicturePossible:v11];
        if (-[PGPictureInPictureRemoteObject isVideoCall](v10, "isVideoCall") && (-[PGPictureInPictureRemoteObject pictureInPictureApplication](v10, "pictureInPictureApplication"), v13 = objc_claimAutoreleasedReturnValue(), [v13 bundleIdentifier], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqual:", @"com.apple.InCallService"), v14, v13, v15) || -[PGPictureInPictureRemoteObject isAssociatedWithRemoteObject:](v10, "isAssociatedWithRemoteObject:", _faceTimeVideoCallRemoteObject))
        {
          _faceTimeVideoCallInterruptionExemption = [(PGPictureInPictureController *)self _faceTimeVideoCallInterruptionExemption];
          [(PGPictureInPictureRemoteObject *)v10 setExemptAttribution:_faceTimeVideoCallInterruptionExemption];
        }

        else
        {
          _faceTimeVideoCallInterruptionExemption = [(PGPictureInPictureRemoteObject *)v10 pictureInPictureApplication];
          bundleIdentifier = [_faceTimeVideoCallInterruptionExemption bundleIdentifier];
          [(PGPictureInPictureRemoteObject *)v10 setExemptAttribution:bundleIdentifier];
        }

        if ((v11 & 1) == 0 && [(NSMutableSet *)self->_activePictureInPictureRemoteObjects containsObject:v10]&& [(PGPictureInPictureRemoteObject *)v10 canCancelPictureInPicture])
        {
          [(PGPictureInPictureRemoteObject *)v10 cancel];
        }
      }

      v7 = [obj countByEnumeratingWithState:&v48 objects:v59 count:16];
    }

    while (v7);
  }

  identifiersForAuthorizedActivitySessions = [(PGBackgroundPIPService *)self->_backgroundPIPService identifiersForAuthorizedActivitySessions];
  if (![identifiersForAuthorizedActivitySessions count])
  {
    goto LABEL_54;
  }

  v19 = [(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:1];

  if (v19)
  {
    goto LABEL_55;
  }

  _hasActiveNonVideoCallRemoteObjectAuthorizedForBackgroundPIP = [(PGPictureInPictureController *)self _hasActiveNonVideoCallRemoteObjectAuthorizedForBackgroundPIP];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  identifiersForAuthorizedActivitySessions = obj;
  v21 = [identifiersForAuthorizedActivitySessions countByEnumeratingWithState:&v43 objects:v58 count:16];
  if (!v21)
  {
LABEL_54:

    goto LABEL_55;
  }

  v22 = v21;
  v23 = *v44;
  v40 = identifiersForAuthorizedActivitySessions;
LABEL_29:
  v24 = 0;
  while (1)
  {
    if (*v44 != v23)
    {
      objc_enumerationMutation(v40);
    }

    v25 = *(*(&v43 + 1) + 8 * v24);
    v26 = _hasActiveNonVideoCallRemoteObjectAuthorizedForBackgroundPIP ? [_faceTimeVideoCallRemoteObject isEqual:*(*(&v43 + 1) + 8 * v24)] ^ 1 : 0;
    activitySessionIdentifier = [v25 activitySessionIdentifier];
    pictureInPictureApplication = [v25 pictureInPictureApplication];
    bundleIdentifier2 = [pictureInPictureApplication bundleIdentifier];

    if ((v26 & 1) == 0)
    {
      if ([(PGBackgroundPIPService *)self->_backgroundPIPService hasAcquiredAuthorizationForActivitySessionWithIdentifier:activitySessionIdentifier appBundleIdentifier:bundleIdentifier2])
      {
        break;
      }
    }

    if (v22 == ++v24)
    {
      identifiersForAuthorizedActivitySessions = v40;
      v22 = [v40 countByEnumeratingWithState:&v43 objects:v58 count:16];
      if (v22)
      {
        goto LABEL_29;
      }

      goto LABEL_54;
    }
  }

  delegate = [(PGPictureInPictureController *)self delegate];
  v31 = objc_opt_respondsToSelector();

  if (v31)
  {
    delegate2 = [(PGPictureInPictureController *)self delegate];
    v33 = [delegate2 pictureInPictureController:self shouldAuthorizeBackgroundPIPForAppWithBundleIdentifier:bundleIdentifier2];

    v35 = v40;
    if (v33)
    {
      if ([v25 canStartBackgroundPIPForCurrentActivitySessionIdentifier])
      {
        v36 = v25;
      }

      else
      {
        v36 = 0;
      }

      identifiersForAuthorizedActivitySessions = v36;
    }

    else
    {
      v37 = PGLogCommon(v34);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v53 = "[PGPictureInPictureController _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions]";
        v54 = 2114;
        v55 = activitySessionIdentifier;
        v56 = 2114;
        v57 = bundleIdentifier2;
        _os_log_impl(&dword_1BB282000, v37, OS_LOG_TYPE_DEFAULT, "%s Revoking authorization for %{public}@ because the delegate forbids background pip for the app %{public}@", buf, 0x20u);
      }

      [(PGBackgroundPIPService *)self->_backgroundPIPService revokeAuthorizationActivitySessionWithIdentifier:activitySessionIdentifier];
      identifiersForAuthorizedActivitySessions = 0;
    }
  }

  else
  {
    identifiersForAuthorizedActivitySessions = 0;
    v35 = v40;
  }

  if (identifiersForAuthorizedActivitySessions)
  {
    v39 = PGLogCommon(v38);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v53 = "[PGPictureInPictureController _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions]";
      v54 = 2114;
      v55 = identifiersForAuthorizedActivitySessions;
      _os_log_impl(&dword_1BB282000, v39, OS_LOG_TYPE_DEFAULT, "%s Attempting to start backgroundPIP for %{public}@", buf, 0x16u);
    }

    [identifiersForAuthorizedActivitySessions setPictureInPicturePossible:1];
    [identifiersForAuthorizedActivitySessions startPictureInPictureFromBackground];
    goto LABEL_54;
  }

LABEL_55:
}

uint64_t __90__PGPictureInPictureController__updateAllRemoteObjectsForPIPPossibleAndExemptAttributions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 88));
  if (WeakRetained == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [v3 canPreventOrSuspendRemoteObject:*(a1 + 40)];
  }

  return v5;
}

- (void)_addRemoteObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableSet *)self->_lock_pictureInPictureRemoteObjects addObject:objectCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)_removeRemoteObject:(id)object
{
  if (object)
  {
    objectCopy = object;
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableSet *)self->_lock_pictureInPictureRemoteObjects removeObject:objectCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v27 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = PGLogCommon(connectionCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v22 = "[PGPictureInPictureController listener:shouldAcceptNewConnection:]";
    v23 = 2048;
    selfCopy = self;
    v25 = 2114;
    v26 = connectionCopy;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %p %{public}@", buf, 0x20u);
  }

  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if (isMainThread)
  {
    v8 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController listener:shouldAcceptNewConnection:];
    }
  }

  if (!PGIsPictureInPictureSupported() || (*&self->_delegateRespondsTo & 0x20) != 0 && (-[PGPictureInPictureController delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 pictureInPictureController:self shouldDenyNewConnection:connectionCopy], v9, (v10 & 1) != 0))
  {
    v11 = 0;
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke;
    v20[3] = &unk_1E7F32530;
    v20[4] = self;
    v12 = MEMORY[0x1BFB0C680](v20);
    listenerQueue = self->_listenerQueue;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_4;
    v16[3] = &unk_1E7F32558;
    v17 = connectionCopy;
    selfCopy2 = self;
    v19 = v12;
    v14 = v12;
    dispatch_async(listenerQueue, v16);

    v11 = 1;
  }

  return v11;
}

void __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _pictureInPictureRemoteObjects];
  v3 = [v2 bs_map:&__block_literal_global_64];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_3;
  v5[3] = &unk_1E7F32508;
  v5[4] = *(a1 + 32);
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

uint64_t __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) willChangeValueForKey:@"pictureInPictureApplications"];
  objc_storeStrong((*(a1 + 32) + 104), *(a1 + 40));
  v2 = *(a1 + 32);

  return [v2 didChangeValueForKey:@"pictureInPictureApplications"];
}

void __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_4(uint64_t a1)
{
  v2 = [PGPictureInPictureRemoteObject alloc];
  v3 = *(a1 + 32);
  v4 = [*(*(a1 + 40) + 72) copyWithExemptAttribution:0];
  v5 = [(PGPictureInPictureRemoteObject *)v2 initWithConnection:v3 interruptionAssistant:v4];

  [(PGPictureInPictureRemoteObject *)v5 setDelegate:*(a1 + 40)];
  objc_initWeak(&location, *(a1 + 40));
  v6 = *(a1 + 32);
  v7 = [(PGPictureInPictureRemoteObject *)v5 queue];
  [v6 _setQueue:v7];

  v8 = *(a1 + 32);
  v9 = PGPictureInPictureRemoteObjectInterface();
  [v8 setExportedInterface:v9];

  [*(a1 + 32) setExportedObject:v5];
  v10 = *(a1 + 32);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_5;
  v25[3] = &unk_1E7F32530;
  v11 = v5;
  v26 = v11;
  [v10 setInterruptionHandler:v25];
  v12 = *(a1 + 32);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_69;
  v20[3] = &unk_1E7F32580;
  v13 = v11;
  v21 = v13;
  objc_copyWeak(&v24, &location);
  v14 = *(a1 + 48);
  v22 = *(a1 + 40);
  v23 = v14;
  [v12 setInvalidationHandler:v20];
  v15 = *(a1 + 32);
  v16 = PGPictureInPictureExportedInterface();
  [v15 setRemoteObjectInterface:v16];

  [*(a1 + 40) _addRemoteObject:v13];
  (*(*(a1 + 48) + 16))();
  [*(a1 + 32) resume];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_3_72;
  v18[3] = &unk_1E7F32508;
  v18[4] = *(a1 + 40);
  v19 = v13;
  v17 = v13;
  dispatch_async(MEMORY[0x1E69E96A0], v18);

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

void __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_5(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = PGLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 connection];
    v5 = 134218240;
    v6 = v3;
    v7 = 1024;
    v8 = [v4 processIdentifier];
    _os_log_impl(&dword_1BB282000, v2, OS_LOG_TYPE_DEFAULT, "PGPictureInPictureRemoteObject %p - Connection with PID %d interrupted!", &v5, 0x12u);
  }
}

void __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_69(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = PGLogCommon(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [v3 connection];
    *buf = 134218240;
    v14 = v3;
    v15 = 1024;
    v16 = [v4 processIdentifier];
    _os_log_impl(&dword_1BB282000, v2, OS_LOG_TYPE_DEFAULT, "PGPictureInPictureRemoteObject %p - Connection with PID %d invalidated!", buf, 0x12u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = WeakRetained[5];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_70;
    block[3] = &unk_1E7F32558;
    v9 = *(a1 + 32);
    v8 = v9.i64[0];
    v11 = vextq_s8(v9, v9, 8uLL);
    v12 = *(a1 + 48);
    dispatch_async(v7, block);
  }
}

void __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_70(uint64_t a1)
{
  [*(a1 + 32) _removeRemoteObject:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);
  BSDispatchMain();
}

uint64_t __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_2_71(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(a1 + 40);

  return [v2 _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions];
}

void __67__PGPictureInPictureController_listener_shouldAcceptNewConnection___block_invoke_3_72(uint64_t a1)
{
  [*(a1 + 32) _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) analyticsDelegate];
  [v2 setAnalyticsDelegate:v3];
}

- (BOOL)pictureInPictureRemoteObjectHasBackgroundPIPAuthorization:(id)authorization
{
  backgroundPIPService = self->_backgroundPIPService;
  authorizationCopy = authorization;
  activitySessionIdentifier = [authorizationCopy activitySessionIdentifier];
  pictureInPictureApplication = [authorizationCopy pictureInPictureApplication];

  bundleIdentifier = [pictureInPictureApplication bundleIdentifier];
  LOBYTE(backgroundPIPService) = [(PGBackgroundPIPService *)backgroundPIPService hasAcquiredAuthorizationForActivitySessionWithIdentifier:activitySessionIdentifier appBundleIdentifier:bundleIdentifier];

  return backgroundPIPService;
}

- (BOOL)pictureInPictureRemoteObjectShouldAcceptSetupRequest:(id)request
{
  requestCopy = request;
  v5 = [(NSMutableSet *)self->_activePictureInPictureRemoteObjects containsObject:requestCopy];
  activePictureInPictureRemoteObjects = self->_activePictureInPictureRemoteObjects;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __85__PGPictureInPictureController_pictureInPictureRemoteObjectShouldAcceptSetupRequest___block_invoke;
  v9[3] = &unk_1E7F32428;
  v10 = requestCopy;
  v7 = requestCopy;
  LOBYTE(activePictureInPictureRemoteObjects) = v5 | [(NSMutableSet *)activePictureInPictureRemoteObjects bs_containsObjectPassingTest:v9];

  return (activePictureInPictureRemoteObjects & 1) == 0;
}

- (BOOL)pictureInPictureRemoteObjectShouldCancelActivePictureInPictureOnStart:(id)start
{
  startCopy = start;
  if ((*&self->_delegateRespondsTo & 0x10) != 0 && [(NSMutableSet *)self->_activePictureInPictureRemoteObjects count])
  {
    activePictureInPictureRemoteObjects = self->_activePictureInPictureRemoteObjects;
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __102__PGPictureInPictureController_pictureInPictureRemoteObjectShouldCancelActivePictureInPictureOnStart___block_invoke;
    v12 = &unk_1E7F32400;
    selfCopy = self;
    v6 = startCopy;
    v14 = v6;
    v7 = [(NSMutableSet *)activePictureInPictureRemoteObjects bs_containsObjectPassingTest:&v9];
    if ((v7 & 1) == 0)
    {
      [(NSMutableSet *)self->_pictureInPictureRemoteObjectsSupportingActiveSessionCancellationOnStart addObject:v6, v9, v10, v11, v12, selfCopy];
    }
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

uint64_t __102__PGPictureInPictureController_pictureInPictureRemoteObjectShouldCancelActivePictureInPictureOnStart___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegate];
  v6 = *(a1 + 32);
  v7 = [v4 pictureInPictureApplication];

  v8 = [*(a1 + 40) pictureInPictureApplication];
  v9 = [v5 pictureInPictureController:v6 shouldCancelPictureInPictureForApplication:v7 whenStartingPictureInPictureForApplication:v8];

  return v9;
}

- (void)pictureInPictureRemoteObject:(id)object didRequestPictureInPictureStopForViewController:(id)controller sourceSceneSessionIdentifier:(id)identifier animated:(BOOL)animated
{
  animatedCopy = animated;
  obj = object;
  controllerCopy = controller;
  identifierCopy = identifier;
  objc_storeWeak(&self->_remoteObjectThatRequestedStop, obj);
  [(PGPictureInPictureController *)self _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions];
  if ((*&self->_delegateRespondsTo & 0x40) != 0)
  {
    delegate = [(PGPictureInPictureController *)self delegate];
    [delegate pictureInPictureController:self didRequestStopForPictureInPictureViewController:controllerCopy sourceSceneSessionIdentifier:identifierCopy animated:animatedCopy];
  }

  else
  {
    delegate = [obj pictureInPictureApplication];
    sourceSceneSessionPersistentIdentifier = [obj sourceSceneSessionPersistentIdentifier];
    [(PGPictureInPictureController *)self stopPictureInPictureForApplication:delegate sceneSessionPersistentIdentifier:sourceSceneSessionPersistentIdentifier animated:animatedCopy completionHandler:0];
  }
}

- (void)pictureInPictureRemoteObject:(id)object didCreatePictureInPictureViewController:(id)controller
{
  if (*&self->_delegateRespondsTo)
  {
    controllerCopy = controller;
    delegate = [(PGPictureInPictureController *)self delegate];
    [delegate pictureInPictureController:self didCreatePictureInPictureViewController:controllerCopy];
  }
}

- (void)pictureInPictureRemoteObject:(id)object willShowPictureInPictureViewController:(id)controller
{
  v52 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  controllerCopy = controller;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v10 = [(NSMutableSet *)self->_activePictureInPictureRemoteObjects copy];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
  if (!v12)
  {

    v37 = 0;
    goto LABEL_46;
  }

  v13 = v12;
  v38 = 0;
  v39 = 0;
  v14 = *v42;
  selfCopy = self;
  do
  {
    v15 = 0;
    do
    {
      if (*v42 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v16 = *(*(&v41 + 1) + 8 * v15);
      v17 = [(PGPictureInPictureController *)objectCopy canTetherRemoteObjectAsMicroPIP:v16];
      if (v17)
      {
        v18 = PGLogCommon(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v46 = "[PGPictureInPictureController pictureInPictureRemoteObject:willShowPictureInPictureViewController:]";
          v47 = 2048;
          selfCopy2 = objectCopy;
          v49 = 2048;
          v50 = v16;
          _os_log_impl(&dword_1BB282000, v18, OS_LOG_TYPE_DEFAULT, "%s Will tether because new object %p can tether %p as micropip", buf, 0x20u);
        }

        v19 = v16;
        v20 = objectCopy;
LABEL_18:
        [PGPictureInPictureRemoteObject tetherRemoteObject:v19 toRemoteObject:v20 mode:1];
        goto LABEL_19;
      }

      v21 = [(PGPictureInPictureController *)v16 canTetherRemoteObjectAsMicroPIP:objectCopy];
      if (v21)
      {
        v22 = PGLogCommon(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v46 = "[PGPictureInPictureController pictureInPictureRemoteObject:willShowPictureInPictureViewController:]";
          v47 = 2048;
          selfCopy2 = v16;
          v49 = 2048;
          v50 = objectCopy;
          _os_log_impl(&dword_1BB282000, v22, OS_LOG_TYPE_DEFAULT, "%s Will tether because active object %p can tether %p as micropip", buf, 0x20u);
        }

        v19 = objectCopy;
        v20 = v16;
        goto LABEL_18;
      }

      v23 = [(PGPictureInPictureController *)objectCopy canActivateUntetheredAlongsideOtherObject:v16];
      if (v23)
      {
        v24 = PGLogCommon(v23);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
LABEL_26:
          *buf = 136315650;
          v46 = "[PGPictureInPictureController pictureInPictureRemoteObject:willShowPictureInPictureViewController:]";
          v47 = 2048;
          selfCopy2 = objectCopy;
          v49 = 2048;
          v50 = v16;
          _os_log_impl(&dword_1BB282000, v24, OS_LOG_TYPE_DEFAULT, "%s Allowing remote object %p to coexist with active %p because one is QNBacklink", buf, 0x20u);
        }

LABEL_27:

        goto LABEL_19;
      }

      v25 = [(PGPictureInPictureController *)v16 canActivateUntetheredAlongsideOtherObject:objectCopy];
      if (v25)
      {
        v24 = PGLogCommon(v25);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      v26 = [(PGPictureInPictureController *)objectCopy canPreventOrSuspendRemoteObject:v16];
      if (v26)
      {
        v27 = PGLogCommon(v26);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v46 = "[PGPictureInPictureController pictureInPictureRemoteObject:willShowPictureInPictureViewController:]";
          v47 = 2048;
          selfCopy2 = self;
          v49 = 2048;
          v50 = v16;
          _os_log_impl(&dword_1BB282000, v27, OS_LOG_TYPE_DEFAULT, "%s New object %p suspending active %p", buf, 0x20u);
        }

        [(PGPictureInPictureController *)v16 suspend];
        [(NSMutableSet *)self->_activePictureInPictureRemoteObjects removeObject:v16];
        objc_storeStrong(&self->_suspendedPictureInPictureRemoteObject, v16);
      }

      else
      {
        v28 = [(NSMutableSet *)self->_pictureInPictureRemoteObjectsSupportingActiveSessionCancellationOnStart containsObject:objectCopy];
        v29 = v28;
        v30 = PGLogCommon(v28);
        v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
        if (v29)
        {
          if (v31)
          {
            *buf = 136315138;
            v46 = "[PGPictureInPictureController pictureInPictureRemoteObject:willShowPictureInPictureViewController:]";
            _os_log_impl(&dword_1BB282000, v30, OS_LOG_TYPE_DEFAULT, "%s removing objects for swap", buf, 0xCu);
          }

          v38 = 1;
          self = selfCopy;
        }

        else
        {
          self = selfCopy;
          if (v31)
          {
            *buf = 136315650;
            v46 = "[PGPictureInPictureController pictureInPictureRemoteObject:willShowPictureInPictureViewController:]";
            v47 = 2048;
            selfCopy2 = selfCopy;
            v49 = 2048;
            v50 = v16;
            _os_log_impl(&dword_1BB282000, v30, OS_LOG_TYPE_DEFAULT, "%s New object %p canceling active %p", buf, 0x20u);
          }

          [(PGPictureInPictureController *)v16 cancel];
          v32 = v39;
          if (!v39)
          {
            v33 = MEMORY[0x1E695DFA8];
            v34 = [(NSMutableSet *)selfCopy->_activePictureInPictureRemoteObjects count];
            v35 = v33;
            self = selfCopy;
            v32 = [v35 setWithCapacity:v34];
          }

          v39 = v32;
          [v32 addObject:v16];
        }
      }

LABEL_19:
      ++v15;
    }

    while (v13 != v15);
    v36 = [v11 countByEnumeratingWithState:&v41 objects:v51 count:16];
    v13 = v36;
  }

  while (v36);

  if (v38)
  {
    [(NSMutableSet *)self->_pictureInPictureRemoteObjectsSupportingActiveSessionCancellationOnStart removeObject:objectCopy];
  }

  v37 = v39;
LABEL_46:
  if ([v37 count])
  {
    [(NSMutableSet *)self->_activePictureInPictureRemoteObjects minusSet:v37];
  }

  [(NSMutableSet *)self->_activePictureInPictureRemoteObjects addObject:objectCopy];
  [(PGPictureInPictureController *)self _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions];
  [(PGBackgroundPIPService *)self->_backgroundPIPService pipDidStartForRemoteObject:objectCopy];
}

- (void)pictureInPictureRemoteObject:(id)object didShowPictureInPictureViewController:(id)controller
{
  objectCopy = object;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v7 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ([(NSMutableSet *)self->_activePictureInPictureRemoteObjects containsObject:objectCopy])
  {
    if (self->_pictureInPictureActive)
    {
      [(PGPictureInPictureController *)self willChangeValueForKey:@"activePictureInPictureApplication"];
      self->_pictureInPictureActive = 1;
      pictureInPictureApplication = [objectCopy pictureInPictureApplication];
      activePictureInPictureApplication = self->_activePictureInPictureApplication;
      self->_activePictureInPictureApplication = pictureInPictureApplication;
    }

    else
    {
      [(PGPictureInPictureController *)self willChangeValueForKey:@"pictureInPictureActive"];
      [(PGPictureInPictureController *)self willChangeValueForKey:@"activePictureInPictureApplication"];
      self->_pictureInPictureActive = 1;
      pictureInPictureApplication2 = [objectCopy pictureInPictureApplication];
      v11 = self->_activePictureInPictureApplication;
      self->_activePictureInPictureApplication = pictureInPictureApplication2;

      [(PGPictureInPictureController *)self didChangeValueForKey:@"pictureInPictureActive"];
    }

    [(PGPictureInPictureController *)self didChangeValueForKey:@"activePictureInPictureApplication"];
  }

  [(PGPictureInPictureController *)self _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions];
}

- (void)pictureInPictureRemoteObject:(id)object willHidePictureInPictureViewController:(id)controller
{
  objectCopy = object;
  controllerCopy = controller;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  if ((*&self->_delegateRespondsTo & 4) != 0)
  {
    delegate = [(PGPictureInPictureController *)self delegate];
    [delegate pictureInPictureController:self willHidePictureInPictureViewController:controllerCopy];
  }

  if ([(NSMutableSet *)self->_activePictureInPictureRemoteObjects containsObject:objectCopy])
  {
    suspendedPictureInPictureRemoteObject = self->_suspendedPictureInPictureRemoteObject;
    if (!suspendedPictureInPictureRemoteObject)
    {
      [(PGPictureInPictureController *)self willChangeValueForKey:@"activePictureInPictureApplication"];
      activePictureInPictureApplication = self->_activePictureInPictureApplication;
      self->_activePictureInPictureApplication = 0;
      goto LABEL_12;
    }

    v12 = self->_activePictureInPictureApplication;
    pictureInPictureApplication = [(PGPictureInPictureRemoteObject *)suspendedPictureInPictureRemoteObject pictureInPictureApplication];

    if (v12 != pictureInPictureApplication)
    {
      [(PGPictureInPictureController *)self willChangeValueForKey:@"activePictureInPictureApplication"];
      pictureInPictureApplication2 = [(PGPictureInPictureRemoteObject *)self->_suspendedPictureInPictureRemoteObject pictureInPictureApplication];
      activePictureInPictureApplication = self->_activePictureInPictureApplication;
      self->_activePictureInPictureApplication = pictureInPictureApplication2;
LABEL_12:

      [(PGPictureInPictureController *)self didChangeValueForKey:@"activePictureInPictureApplication"];
    }
  }

  [(PGPictureInPictureController *)self _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions];
}

- (void)pictureInPictureRemoteObject:(id)object didHidePictureInPictureViewController:(id)controller
{
  objectCopy = object;
  controllerCopy = controller;
  isMainThread = [MEMORY[0x1E696AF00] isMainThread];
  if ((isMainThread & 1) == 0)
  {
    v9 = PGLogCommon(isMainThread);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [PGPictureInPictureController shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:];
    }
  }

  v10 = [(NSMutableSet *)self->_activePictureInPictureRemoteObjects containsObject:objectCopy];
  suspendedPictureInPictureRemoteObject = self->_suspendedPictureInPictureRemoteObject;
  if (v10)
  {
    if (suspendedPictureInPictureRemoteObject)
    {
      [(PGPictureInPictureRemoteObject *)suspendedPictureInPictureRemoteObject resume];
      [(NSMutableSet *)self->_activePictureInPictureRemoteObjects addObject:self->_suspendedPictureInPictureRemoteObject];
      v12 = self->_suspendedPictureInPictureRemoteObject;
      self->_suspendedPictureInPictureRemoteObject = 0;
    }

    else
    {
      [(PGPictureInPictureController *)self willChangeValueForKey:@"pictureInPictureActive"];
      self->_pictureInPictureActive = 0;
      [(PGPictureInPictureController *)self didChangeValueForKey:@"pictureInPictureActive"];
    }

    [(NSMutableSet *)self->_activePictureInPictureRemoteObjects removeObject:objectCopy];
  }

  else if (suspendedPictureInPictureRemoteObject == objectCopy)
  {
    self->_suspendedPictureInPictureRemoteObject = 0;
  }

  if ((*&self->_delegateRespondsTo & 8) != 0)
  {
    delegate = [(PGPictureInPictureController *)self delegate];
    [delegate pictureInPictureController:self didHidePictureInPictureViewController:controllerCopy];
  }

  [(PGPictureInPictureController *)self _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions];
  [(PGBackgroundPIPService *)self->_backgroundPIPService pipDidStopForRemoteObject:objectCopy];
}

- (void)pictureInPictureRemoteObject:(id)object willDestroyPictureInPictureViewController:(id)controller
{
  objectCopy = object;
  controllerCopy = controller;
  if ((*&self->_delegateRespondsTo & 2) != 0)
  {
    delegate = [(PGPictureInPictureController *)self delegate];
    [delegate pictureInPictureController:self willDestroyPictureInPictureViewController:controllerCopy];
  }

  WeakRetained = objc_loadWeakRetained(&self->_remoteObjectThatRequestedStop);

  if (WeakRetained == objectCopy)
  {
    objc_storeWeak(&self->_remoteObjectThatRequestedStop, 0);
  }
}

- (id)pictureInPictureRemoteObjectInterruptionAssistant:(id)assistant
{
  v3 = [(PGInterruptionAssistant *)self->_interruptionAssistant copyWithExemptAttribution:0];

  return v3;
}

- (void)pictureInPictureRemoteObject:(id)object requestActivationOfSceneWithPersistenceIdentier:(id)identier completion:(id)completion
{
  objectCopy = object;
  identierCopy = identier;
  completionCopy = completion;
  if (identierCopy && ([(PGPictureInPictureController *)self delegate], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_opt_respondsToSelector(), v10, (v11 & 1) != 0))
  {
    delegate = [(PGPictureInPictureController *)self delegate];
    pictureInPictureViewController = [objectCopy pictureInPictureViewController];
    [delegate pictureInPictureController:self requestActivationOfSceneWithPersistenceIdentier:identierCopy pictureInPictureViewController:pictureInPictureViewController completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }
}

- (id)pictureInPictureRemoteObject:(id)object displayConfigurationForApplication:(id)application
{
  applicationCopy = application;
  delegate = [(PGPictureInPictureController *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(PGPictureInPictureController *)self delegate];
    v9 = [delegate2 pictureInPictureController:self displayConfigurationForApplication:applicationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)backgroundPIPService:(id)service didGrantBackgroundPIPAuthorizationForActivitySessionWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = PGLogCommon(identifierCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PGPictureInPictureController backgroundPIPService:didGrantBackgroundPIPAuthorizationForActivitySessionWithIdentifier:]";
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v7, 0x16u);
  }

  [(PGPictureInPictureController *)self _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions];
}

- (void)backgroundPIPService:(id)service didRevokeBackgroundPIPAuthorizationForActivitySessionWithIdentifier:(id)identifier
{
  v11 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v6 = PGLogCommon(identifierCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[PGPictureInPictureController backgroundPIPService:didRevokeBackgroundPIPAuthorizationForActivitySessionWithIdentifier:]";
    v9 = 2114;
    v10 = identifierCopy;
    _os_log_impl(&dword_1BB282000, v6, OS_LOG_TYPE_DEFAULT, "%s %{public}@", &v7, 0x16u);
  }

  [(PGPictureInPictureController *)self _updateAllRemoteObjectsForPIPPossibleAndExemptAttributions];
}

- (BOOL)backgroundPIPService:(id)service canAuthorizeBackgroundPIPForActivitySessionWithIdentifier:(id)identifier appBundleIdentifier:(id)bundleIdentifier
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  delegate = [(PGPictureInPictureController *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(PGPictureInPictureController *)self delegate];
    v13 = [delegate2 pictureInPictureController:self shouldAuthorizeBackgroundPIPForAppWithBundleIdentifier:bundleIdentifierCopy];
  }

  else
  {
    v13 = 0;
  }

  v14 = PGLogCommon(v11);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v22 = "[PGPictureInPictureController backgroundPIPService:canAuthorizeBackgroundPIPForActivitySessionWithIdentifier:appBundleIdentifier:]";
    v23 = 2114;
    v24 = identifierCopy;
    v25 = 2114;
    v26 = bundleIdentifierCopy;
    v27 = 1024;
    v28 = v13;
    _os_log_impl(&dword_1BB282000, v14, OS_LOG_TYPE_DEFAULT, "%s %{public}@ %{public}@ canAuthorizeBackgroundPIPForActivitySessionWithIdentifier before checking interruptions %{BOOL}u", buf, 0x26u);
  }

  if (v13)
  {
    if ([(PGInterruptionAssistant *)self->_interruptionAssistant hasInterruptionReason:2])
    {
      cameraInterruptionAttributions = [(PGInterruptionAssistant *)self->_interruptionAssistant cameraInterruptionAttributions];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __131__PGPictureInPictureController_backgroundPIPService_canAuthorizeBackgroundPIPForActivitySessionWithIdentifier_appBundleIdentifier___block_invoke;
      v20[3] = &unk_1E7F325A8;
      v20[4] = self;
      v16 = [cameraInterruptionAttributions bs_containsObjectPassingTest:v20];
      v17 = v16 ^ 1;
      if (((v16 ^ 1) & 1) == 0)
      {
        v18 = PGLogCommon(v16);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v22 = "[PGPictureInPictureController backgroundPIPService:canAuthorizeBackgroundPIPForActivitySessionWithIdentifier:appBundleIdentifier:]";
          v23 = 2114;
          v24 = identifierCopy;
          v25 = 2114;
          v26 = bundleIdentifierCopy;
          _os_log_impl(&dword_1BB282000, v18, OS_LOG_TYPE_DEFAULT, "%s Controller changed mind and decided to reject auth due for %{public}@ %{public}@ to camera interruption.", buf, 0x20u);
        }
      }
    }

    else
    {
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

uint64_t __131__PGPictureInPictureController_backgroundPIPService_canAuthorizeBackgroundPIPForActivitySessionWithIdentifier_appBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _faceTimeVideoCallInterruptionExemption];
  if ([v3 isEqualToString:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [*(a1 + 32) _continuityCameraInterruptionExemption];
    v5 = [v3 isEqualToString:v6] ^ 1;
  }

  return v5;
}

- (PGPictureInPictureAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (void)init
{
  OUTLINED_FUNCTION_1();
  v1 = _PGLogMethodProem(v0, 1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v2, v3, "%@", v4, v5, v6, v7);
}

- (void)shouldStartPictureInPictureForApplicationEnteringBackground:sceneSessionPersistentIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  v2 = _PGLogMethodProem(v0, v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v3, v4, "%@ needs to be invoked on the main thread!", v5, v6, v7, v8);
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_3();
  v2 = _PGLogMethodProem(v0, v1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_1BB282000, v3, v4, "%@ may not be invoked on the main thread!", v5, v6, v7, v8);
}

@end