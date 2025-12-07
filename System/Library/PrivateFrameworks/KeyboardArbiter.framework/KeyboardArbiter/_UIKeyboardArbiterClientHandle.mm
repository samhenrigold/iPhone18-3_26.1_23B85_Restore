@interface _UIKeyboardArbiterClientHandle
+ (id)handlerWithArbiter:(id)arbiter forConnection:(id)connection;
- (BOOL)_isKeyboardOnScreen:(id)screen;
- (BOOL)_shouldRejectSceneIdentityUpdateCorrectingClientIfNeeded:(id)needed fromSelector:(SEL)selector;
- (BOOL)isHandlerShowableWithHandler:(id)handler;
- (BOOL)isHostingPID:(int)d;
- (BOOL)isKeyboardOnScreen;
- (BOOL)takeProcessAssertionOnRemoteWithQueue:(id)queue;
- (id)description;
- (id)descriptionForLog;
- (id)sceneDescription;
- (void)_deactivateScene;
- (void)_reevaluateRemoteFocusContext:(id)context;
- (void)activeProcessResign;
- (void)addHostedPids:(id)pids;
- (void)applicationShouldFocusWithBundle:(id)bundle onCompletion:(id)completion;
- (void)beginAcquiringFocusOnQueue:(id)queue;
- (void)cacheWindowContext;
- (void)checkActivation:(unint64_t)activation;
- (void)clearAcquiringFocus;
- (void)dealloc;
- (void)didAttachLayer;
- (void)didDetachLayer;
- (void)focusApplicationWithProcessIdentifier:(int)identifier context:(id)context stealingKeyboard:(BOOL)keyboard onCompletion:(id)completion;
- (void)invalidate;
- (void)notifyHostedPIDsOfSuppression:(BOOL)suppression active:(BOOL)active;
- (void)notifyIAVHeight:(double)height;
- (void)pointIsWithinKeyboardContent:(CGPoint)content onCompletion:(id)completion;
- (void)releaseProcessAssertion;
- (void)retrieveDebugInformation:(id)information;
- (void)retrieveMoreDebugInformationWithCompletion:(id)completion;
- (void)setAllVisibleFrames:(id)frames;
- (void)setClientFocusContext:(id)context;
- (void)setDeactivating:(BOOL)deactivating;
- (void)setKeyboardTotalDisable:(BOOL)disable withFence:(id)fence completionHandler:(id)handler;
- (void)setWantsFencing:(BOOL)fencing;
- (void)setWindowContextID:(unsigned int)d focusContext:(id)context windowState:(unint64_t)state withLevel:(double)level;
- (void)setWindowHostingPID:(int)d active:(BOOL)active;
- (void)signalAutofillUIBringupWithCompletion:(id)completion;
- (void)signalEventSourceChanged:(int64_t)changed completionHandler:(id)handler;
- (void)signalKeyboardChangeComplete;
- (void)signalKeyboardChanged:(id)changed onCompletion:(id)completion;
- (void)signalKeyboardClientChanged:(id)changed onCompletion:(id)completion;
- (void)signalKeyboardUIDidChange:(id)change onCompletion:(id)completion;
- (void)startArbitrationWithExpectedState:(id)state focusContext:(id)context hostingPIDs:(id)ds usingFence:(BOOL)fence withSuppression:(int)suppression onConnected:(id)connected;
- (void)transition:(id)transition eventStage:(unint64_t)stage withInfo:(id)info;
- (void)uncacheWindowContext;
- (void)updateSuspensionCountForPids:(id)pids active:(BOOL)active;
- (void)userFirstTapOnKeyboard;
@end

@implementation _UIKeyboardArbiterClientHandle

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  if (self->_running)
  {
    v5 = &stru_2867933A0;
  }

  else
  {
    v5 = @" (suspended)";
  }

  v6 = @"NO";
  if (self->_active)
  {
    v7 = @"YES";
  }

  else
  {
    v7 = @"NO";
  }

  if (self->_wantedState)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (self->_keyboardOnScreen)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  if (self->_acquiringFocus)
  {
    v6 = @"YES";
  }

  return [v3 stringWithFormat:@"<%@: %p; %@ <%@>%@; hosting PIDs %@; level %f; active %@ [wants %@]; suppression %i; iav %f; on screen %@; isAcquiringFocus: %@>", v4, self, self->_processHandle, self->_remoteFocusContext, v5, self->_hostedPids, *&self->_level, v7, v8, self->_suppressionCount, *&self->_iavHeight, v9, v6];
}

- (id)descriptionForLog
{
  v3 = MEMORY[0x277CCACA8];
  bundleIdentifier = self->_bundleIdentifier;
  descriptionForLog = [(UIKBArbiterClientFocusContext *)self->_remoteFocusContext descriptionForLog];
  if (self->_running)
  {
    v6 = "Y";
  }

  else
  {
    v6 = "N";
  }

  allObjects = [(NSMutableSet *)self->_hostedPids allObjects];
  v8 = numberArrayToString(allObjects);

  level = self->_level;
  if (self->_active)
  {
    v10 = "Y";
  }

  else
  {
    v10 = "N";
  }

  v11 = _UIKeyboardWindowStateToString();
  v12 = v11;
  if (self->_keyboardOnScreen)
  {
    v13 = "Y";
  }

  else
  {
    v13 = "N";
  }

  v14 = [v3 stringWithFormat:@"<%@ focus:%@ run:%s hosting:%@ level:%.0f active:%s wantedState:%@ #suppr:%d iavHeight:%.0f onScreen:%s>", bundleIdentifier, descriptionForLog, v6, v8, *&level, v10, v11, self->_suppressionCount, *&self->_iavHeight, v13];

  return v14;
}

- (void)clearAcquiringFocus
{
  v20 = *MEMORY[0x277D85DE8];
  memset(v19, 0, sizeof(v19));
  v4 = _UIArbiterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = NSStringFromSelector(a2);
  remoteFocusContext = [(_UIKeyboardArbiterClientHandle *)self remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];
  stringRepresentation = [sceneIdentity stringRepresentation];
  v13 = 138412802;
  selfCopy = self;
  v15 = 2112;
  v16 = v6;
  v17 = 2112;
  v18 = stringRepresentation;
  v10 = _os_log_send_and_compose_impl(v5, 0, v19, 512, &dword_2557BA000, v4, 2, "[%@] %@ sceneIdentity: %@", &v13, 32);

  v11 = +[_UIKeyboardArbiterDebug sharedInstance];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v19];
  [v11 debugWithMessage:v12];

  if (v10 != v19)
  {
    free(v10);
  }

  self->_acquiringFocus = 0;
  [(_UIKeyboardArbiterClientHandle *)self setRequestedCorrectionOfClientSceneIdentityWhileAcquiringFocus:0];
  [(BSAbsoluteMachTimer *)self->_acquiringFocusTimer cancel];
}

- (void)releaseProcessAssertion
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = self->_remoteKeepAliveAssertionCount - 1;
  self->_remoteKeepAliveAssertionCount = v3;
  if (!v3)
  {
    [(RBSAssertion *)self->_remoteKeepAliveAssertion invalidate];
    remoteKeepAliveAssertion = self->_remoteKeepAliveAssertion;
    self->_remoteKeepAliveAssertion = 0;
  }

  memset(v16, 0, sizeof(v16));
  v5 = _UIArbiterLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  remoteKeepAliveAssertionCount = self->_remoteKeepAliveAssertionCount;
  if (v6)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v12 = 138412546;
  selfCopy = self;
  v14 = 2048;
  v15 = remoteKeepAliveAssertionCount;
  v9 = _os_log_send_and_compose_impl(v8, 0, v16, 512, &dword_2557BA000, v5, 2, "[%@] released process assertion (count=%lu)", &v12, 22);

  v10 = +[_UIKeyboardArbiterDebug sharedInstance];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v16];
  [v10 debugWithMessage:v11];

  if (v9 != v16)
  {
    free(v9);
  }
}

- (id)sceneDescription
{
  v3 = MEMORY[0x277CCACA8];
  processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
  sceneIdentity = [(UIKBArbiterClientFocusContext *)self->_remoteFocusContext sceneIdentity];
  stringRepresentation = [sceneIdentity stringRepresentation];
  v7 = [v3 stringWithFormat:@"<pid: %d scene: %@>", processIdentifier, stringRepresentation];;

  return v7;
}

- (BOOL)isKeyboardOnScreen
{
  if (self->_keyboardOnScreen)
  {
    return 1;
  }

  selfCopy = self;
  array = [MEMORY[0x277CBEB18] array];
  LOBYTE(selfCopy) = [(_UIKeyboardArbiterClientHandle *)selfCopy _isKeyboardOnScreen:array];

  return selfCopy;
}

- (void)didAttachLayer
{
  if (!self->_sceneLayer)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIKeyboardArbiter.m" lineNumber:2506 description:@"Layer must exist for us to attach visibility to."];
  }

  if (self->_endpointGrantInjector)
  {
    [(_UIKeyboardArbiterClientHandle *)self didDetachLayer];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2557BA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Keyboard attaching layer before removing prior layer...", buf, 2u);
    }
  }

  v3 = [MEMORY[0x277D0ADC0] identityForIdentifier:@"com.apple.UIKit.remote-keyboard"];
  sharedInstance = [getFBSceneManagerClass() sharedInstance];
  v5 = [sharedInstance newSceneIdentityTokenForIdentity:v3];

  stringRepresentation = [v5 stringRepresentation];
  v7 = _UISVisibilityEnvironmentForSceneIdentityTokenString();

  [(FBSCAContextSceneLayer *)self->_sceneLayer contextID];
  v8 = _UISVisibilityEnvironmentForUIHostedWindowContextID();
  v9 = MEMORY[0x277CF3290];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __48___UIKeyboardArbiterClientHandle_didAttachLayer__block_invoke;
  v16[3] = &unk_2797F4BE0;
  v16[4] = self;
  v17 = v8;
  v18 = v7;
  v10 = v7;
  v11 = v8;
  v12 = [v9 injectorWithConfigurator:v16];
  endpointGrantInjector = self->_endpointGrantInjector;
  self->_endpointGrantInjector = v12;
}

- (void)signalKeyboardChangeComplete
{
  v47 = *MEMORY[0x277D85DE8];
  v4 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    *buf = 138543618;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    _os_log_impl(&dword_2557BA000, v4, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) signalKeyboardChangeComplete", buf, 0x12u);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(buf, 0, sizeof(buf));
  v6 = _UIArbiterLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = NSStringFromSelector(a2);
  v12 = 138412546;
  selfCopy = self;
  v14 = 2112;
  v15 = v8;
  v9 = _os_log_send_and_compose_impl(v7, 0, buf, 512, &dword_2557BA000, v6, 2, "[%@] %@", &v12, 22);

  v10 = +[_UIKeyboardArbiterDebug sharedInstance];
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v10 debugWithMessage:v11];

  if (v9 != buf)
  {
    free(v9);
  }

  [(_UIKeyboardArbiter *)self->_owner completeKeyboardStatusChangedFromHandler:self];
}

- (void)invalidate
{
  v24 = *MEMORY[0x277D85DE8];
  memset(v23, 0, sizeof(v23));
  v4 = _UIArbiterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v6 = NSStringFromSelector(a2);
  v19 = 138412546;
  selfCopy = self;
  v21 = 2112;
  v22 = v6;
  v7 = _os_log_send_and_compose_impl(v5, 0, v23, 512, &dword_2557BA000, v4, 2, "[%@] %@", &v19, 22);

  v8 = +[_UIKeyboardArbiterDebug sharedInstance];
  v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v23];
  [v8 debugWithMessage:v9];

  if (v7 != v23)
  {
    free(v7);
  }

  v10 = [(_UIKeyboardArbiterClientHandle *)self description];
  owner = self->_owner;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __44___UIKeyboardArbiterClientHandle_invalidate__block_invoke;
  v17[3] = &unk_2797F4C30;
  v18 = v10;
  v12 = v10;
  [(_UIKeyboardArbiter *)owner setKeyboardTotalDisable:0 withFence:0 fromHandler:self completionHandler:v17];
  self->_iavHeight = 0.0;
  self->_keyboardOnScreen = 0;
  [(_UIKeyboardArbiter *)self->_owner notifyHeightUpdated:self];
  [(_UIKeyboardArbiterClientHandle *)self setWindowContextID:0 focusContext:0 windowState:0 withLevel:0.0];
  v13 = self->_owner;
  self->_owner = 0;

  self->_connection = 0;
  remoteFocusContext = self->_remoteFocusContext;
  self->_remoteFocusContext = 0;

  bundleIdentifier = self->_bundleIdentifier;
  self->_bundleIdentifier = 0;

  [(RBSAssertion *)self->_remoteKeepAliveAssertion invalidate];
  remoteKeepAliveAssertion = self->_remoteKeepAliveAssertion;
  self->_remoteKeepAliveAssertion = 0;

  self->_invalidated = 1;
}

+ (id)handlerWithArbiter:(id)arbiter forConnection:(id)connection
{
  v70 = *MEMORY[0x277D85DE8];
  arbiterCopy = arbiter;
  connectionCopy = connection;
  v9 = objc_alloc_init(_UIKeyboardArbiterClientHandle);
  objc_storeStrong(&v9->_owner, arbiter);
  v9->_connection = connectionCopy;
  v10 = [MEMORY[0x277CBEB58] set];
  hostedPids = v9->_hostedPids;
  v9->_hostedPids = v10;

  v9->_running = 1;
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(&atoken, 0, sizeof(atoken));
  }

  v12 = audit_token_to_pid(&atoken);
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x277D46F50] identifierWithPid:v12];
    v34 = 0;
    v15 = [MEMORY[0x277D46F48] handleForIdentifier:v14 error:&v34];
    v16 = v34;
    if (v16)
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      memset(&atoken, 0, sizeof(atoken));
      v17 = _UIArbiterLog();
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
      v35 = 138412802;
      if (v18)
      {
        v19 = 3;
      }

      else
      {
        v19 = 2;
      }

      selfCopy2 = self;
      v37 = 1024;
      LODWORD(v38[0]) = v13;
      WORD2(v38[0]) = 2112;
      *(v38 + 6) = v16;
      v20 = _os_log_send_and_compose_impl(v19, 0, &atoken, 512, &dword_2557BA000, v17, 16, "%@ failed to create process handle for pid %i: %@", &v35, 28);

      v21 = +[_UIKeyboardArbiterDebug sharedInstance];
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&atoken];
      [v21 errorWithMessage:v22];

      if (v20 != &atoken)
      {
        free(v20);
      }
    }

    else
    {
      objc_storeStrong(&v9->_processHandle, v15);
      bundle = [v15 bundle];
      identifier = [bundle identifier];
      bundleIdentifier = v9->_bundleIdentifier;
      v9->_bundleIdentifier = identifier;
    }
  }

  else
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    memset(&atoken, 0, sizeof(atoken));
    v23 = _UIArbiterLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 3;
    }

    else
    {
      v24 = 2;
    }

    v35 = 138412546;
    selfCopy2 = self;
    v37 = 2112;
    v38[0] = connectionCopy;
    v25 = _os_log_send_and_compose_impl(v24, 0, &atoken, 512, &dword_2557BA000, v23, 16, "%@ failed to get pid from connection: %@", &v35, 22);

    v26 = +[_UIKeyboardArbiterDebug sharedInstance];
    v27 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&atoken];
    [v26 errorWithMessage:v27];

    if (v25 != &atoken)
    {
      free(v25);
    }
  }

  v31 = [(NSXPCConnection *)connectionCopy valueForEntitlement:@"com.apple.KeyboardArbiter.client.debuginfo"];
  bOOLValue = [v31 BOOLValue];

  if (bOOLValue)
  {
    v9->_hasDebugInformationEntitlement = 1;
  }

  return v9;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if (!self->_invalidated)
  {
    memset(v11, 0, sizeof(v11));
    v3 = _UIArbiterLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 3;
    }

    else
    {
      v4 = 2;
    }

    v9 = 138412290;
    selfCopy = self;
    v5 = _os_log_send_and_compose_impl(v4, 0, v11, 512, &dword_2557BA000, v3, 16, "%@ was not invalidated before release", &v9, 12);

    v6 = +[_UIKeyboardArbiterDebug sharedInstance];
    v7 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v11];
    [v6 errorWithMessage:v7];

    if (v5 != v11)
    {
      free(v5);
    }

    [(_UIKeyboardArbiter *)self->_owner handleUnexpectedDeallocForHandler:self];
  }

  if (self->_endpointGrantInjector)
  {
    [(_UIKeyboardArbiterClientHandle *)self didDetachLayer];
  }

  [(BSAbsoluteMachTimer *)self->_acquiringFocusTimer invalidate];
  v8.receiver = self;
  v8.super_class = _UIKeyboardArbiterClientHandle;
  [(_UIKeyboardArbiterClientHandle *)&v8 dealloc];
}

- (void)setDeactivating:(BOOL)deactivating
{
  deactivatingCopy = deactivating;
  v17 = *MEMORY[0x277D85DE8];
  if (self->_deactivating != deactivating)
  {
    v5 = _UIArbiterClientHandleLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
      processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
      v8 = "N";
      v11 = 138543874;
      v12 = bundleIdentifier;
      if (deactivatingCopy)
      {
        v8 = "Y";
      }

      v13 = 1024;
      v14 = processIdentifier;
      v15 = 2080;
      v16 = v8;
      _os_log_impl(&dword_2557BA000, v5, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) setDeactivating:%s", &v11, 0x1Cu);
    }
  }

  self->_deactivating = deactivatingCopy;
  if (!deactivatingCopy)
  {
    pendingNotifyKeyboardChanged = [(_UIKeyboardArbiterClientHandle *)self pendingNotifyKeyboardChanged];

    if (pendingNotifyKeyboardChanged)
    {
      pendingNotifyKeyboardChanged2 = [(_UIKeyboardArbiterClientHandle *)self pendingNotifyKeyboardChanged];
      (pendingNotifyKeyboardChanged2)[2](pendingNotifyKeyboardChanged2, self);

      [(_UIKeyboardArbiterClientHandle *)self setPendingNotifyKeyboardChanged:0];
    }
  }
}

- (void)updateSuspensionCountForPids:(id)pids active:(BOOL)active
{
  suppressionCount = self->_suppressionCount;
  childrenSuppressionCount = self->_childrenSuppressionCount;
  v6 = suppressionCount - childrenSuppressionCount;
  if (suppressionCount != childrenSuppressionCount)
  {
    activeCopy = active;
    self->_childrenSuppressionCount = suppressionCount;
    if (v6 >= 0)
    {
      v10 = suppressionCount - childrenSuppressionCount;
    }

    else
    {
      v10 = childrenSuppressionCount - suppressionCount;
    }

    if (v10 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v10;
    }

    do
    {
      [(_UIKeyboardArbiter *)self->_owner updateSuppression:v6 > 0 ofPIDs:pids active:activeCopy];
      --v11;
    }

    while (v11);
  }
}

- (void)addHostedPids:(id)pids
{
  v19 = *MEMORY[0x277D85DE8];
  pidsCopy = pids;
  [(NSMutableSet *)self->_hostedPids addObjectsFromArray:pidsCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_hostedPids;
  v6 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = -[_UIKeyboardArbiter handlerForPID:](self->_owner, "handlerForPID:", [*(*(&v14 + 1) + 8 * v9) intValue]);
        [v10 setIsViewService:1];

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableSet *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  owner = self->_owner;
  childrenSuppressionCount = self->_childrenSuppressionCount;
  v13 = [MEMORY[0x277CBEB98] setWithArray:pidsCopy];
  [(_UIKeyboardArbiter *)owner setSuppressionCount:childrenSuppressionCount ofPIDs:v13];
}

- (void)startArbitrationWithExpectedState:(id)state focusContext:(id)context hostingPIDs:(id)ds usingFence:(BOOL)fence withSuppression:(int)suppression onConnected:(id)connected
{
  fenceCopy = fence;
  v75 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  obj = context;
  contextCopy = context;
  dsCopy = ds;
  connectedCopy = connected;
  v16 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    [stateCopy descriptionForLog];
    v19 = v30 = a2;
    descriptionForLog = [contextCopy descriptionForLog];
    v21 = numberArrayToString(dsCopy);
    v22 = v21;
    *buf = 138544899;
    v23 = "N";
    *&buf[4] = bundleIdentifier;
    if (fenceCopy)
    {
      v23 = "Y";
    }

    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2114;
    *&buf[20] = v19;
    *&buf[28] = 2113;
    *&buf[30] = descriptionForLog;
    *&buf[38] = 2112;
    *&buf[40] = v21;
    LOWORD(v46) = 2080;
    *(&v46 + 2) = v23;
    WORD5(v46) = 1024;
    HIDWORD(v46) = suppression;
    _os_log_impl(&dword_2557BA000, v16, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) startArbitration\n    expectedState:%{public}@\n    focusContext:%{private}@\n    hostingPIDs:%@ usingFence:%s withSuppression:%d", buf, 0x40u);

    a2 = v30;
  }

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
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
  v46 = 0u;
  memset(buf, 0, sizeof(buf));
  v24 = _UIArbiterLog();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    v25 = 3;
  }

  else
  {
    v25 = 2;
  }

  v26 = NSStringFromSelector(a2);
  v35 = 138413314;
  selfCopy = self;
  v37 = 2112;
  v38 = v26;
  v39 = 2112;
  v40 = stateCopy;
  v41 = 2112;
  v42 = contextCopy;
  v43 = 2112;
  v44 = dsCopy;
  v27 = _os_log_send_and_compose_impl(v25, 0, buf, 512, &dword_2557BA000, v24, 2, "[%@] %@: currentKeyboard: %@; focusContext: %@; pids: %@", &v35, 52);

  v28 = +[_UIKeyboardArbiterDebug sharedInstance];
  v29 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v28 debugWithMessage:v29];

  if (v27 != buf)
  {
    free(v27);
  }

  self->_suppressionCount = suppression;
  self->_wantsFence = fenceCopy;
  objc_storeStrong(&self->_remoteFocusContext, obj);
  self->_keyboardOnScreen = [stateCopy keyboardOnScreen];
  self->_multipleScenes = [stateCopy multipleScenes];
  if (dsCopy)
  {
    [(_UIKeyboardArbiterClientHandle *)self addHostedPids:dsCopy];
  }

  [(_UIKeyboardArbiter *)self->_owner newClientConnected:self withExpectedState:stateCopy onConnected:connectedCopy];
  if (self->_active)
  {
    [(_UIKeyboardArbiterClientHandle *)self updateSuspensionCountForPids:self->_hostedPids active:1];
  }
}

- (void)_deactivateScene
{
  v3 = [(_UIKeyboardArbiter *)self->_owner deactivateHandle:self];
  self->_active = v3;
  if (v3)
  {
    return;
  }

  [(_UIKeyboardArbiterClientHandle *)self updateSuspensionCountForPids:self->_hostedPids active:0];
  activeInputDestinationHandle = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
  if (activeInputDestinationHandle == self)
  {
    goto LABEL_7;
  }

  focusRequestedHandle = [(_UIKeyboardArbiter *)self->_owner focusRequestedHandle];
  v6 = focusRequestedHandle;
  if (focusRequestedHandle != self)
  {

LABEL_7:
    goto LABEL_8;
  }

  activeInputDestinationHandle2 = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
  active = [activeInputDestinationHandle2 active];

  if (active)
  {
    owner = self->_owner;
    activeInputDestinationHandle = [(_UIKeyboardArbiter *)owner activeInputDestinationHandle];
    [(_UIKeyboardArbiter *)owner activateHandle:activeInputDestinationHandle];
    goto LABEL_7;
  }

LABEL_8:

  [(_UIKeyboardArbiterClientHandle *)self activeProcessResign];
}

- (void)activeProcessResign
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = [(_UIKeyboardArbiter *)self->_owner handlerForPID:[(_UIKeyboardArbiterClientHandle *)self prevActiveIdentifier]];
  activeInputDestinationHandle = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
  if (!activeInputDestinationHandle || (v6 = activeInputDestinationHandle, [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7 == self))
  {
    v12 = 1;
  }

  else
  {
    hostedPids = self->_hostedPids;
    v9 = MEMORY[0x277CCABB0];
    activeInputDestinationHandle2 = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
    v11 = [v9 numberWithInt:{objc_msgSend(activeInputDestinationHandle2, "processIdentifier")}];
    v12 = [(NSMutableSet *)hostedPids containsObject:v11];
  }

  if ([v4 running] && (objc_msgSend(v4, "isKeyboardOnScreen") & v12) == 1 && (objc_msgSend(v4, "inputUIHost") & 1) == 0)
  {
    memset(v27, 0, sizeof(v27));
    v13 = _UIArbiterLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v15 = NSStringFromSelector(a2);
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    bundleIdentifier2 = [v4 bundleIdentifier];
    v21 = 138412802;
    v22 = v15;
    v23 = 2112;
    v24 = bundleIdentifier;
    v25 = 2112;
    v26 = bundleIdentifier2;
    v18 = _os_log_send_and_compose_impl(v14, 0, v27, 512, &dword_2557BA000, v13, 2, "[%@] %@ Resigns and informs previous active %@", &v21, 32);

    v19 = +[_UIKeyboardArbiterDebug sharedInstance];
    v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v27];
    [v19 debugWithMessage:v20];

    if (v18 != v27)
    {
      free(v18);
    }

    [(_UIKeyboardArbiter *)self->_owner runOperations:&__block_literal_global_539 onHandler:v4 fromFunction:"[_UIKeyboardArbiterClientHandle activeProcessResign]"];
  }
}

- (BOOL)_isKeyboardOnScreen:(id)screen
{
  v19 = *MEMORY[0x277D85DE8];
  screenCopy = screen;
  if ([screenCopy containsObject:self])
  {
    v5 = 0;
  }

  else
  {
    [screenCopy addObject:self];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = self->_hostedPids;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = -[_UIKeyboardArbiter handlerForPID:](self->_owner, "handlerForPID:", [*(*(&v14 + 1) + 8 * i) intValue]);
          v12 = [v11 _isKeyboardOnScreen:screenCopy];

          if (v12)
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  return v5;
}

- (void)beginAcquiringFocusOnQueue:(id)queue
{
  v59 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *location = 0u;
  v28 = 0u;
  v6 = _UIArbiterLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = 3;
  }

  else
  {
    v7 = 2;
  }

  v8 = NSStringFromSelector(a2);
  remoteFocusContext = [(_UIKeyboardArbiterClientHandle *)self remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];
  stringRepresentation = [sceneIdentity stringRepresentation];
  v21 = 138412802;
  selfCopy = self;
  v23 = 2112;
  v24 = v8;
  v25 = 2112;
  v26 = stringRepresentation;
  v18 = 32;
  v12 = _os_log_send_and_compose_impl(v7, 0, location, 512, &dword_2557BA000, v6, 2, "[%@] %@ sceneIdentity: %@", &v21, v18);

  v13 = +[_UIKeyboardArbiterDebug sharedInstance];
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:location];
  [v13 debugWithMessage:v14];

  if (v12 != location)
  {
    free(v12);
  }

  self->_acquiringFocus = 1;
  objc_initWeak(location, self);
  acquiringFocusTimer = self->_acquiringFocusTimer;
  if (!acquiringFocusTimer)
  {
    v16 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"com.apple.KeyboardArbiter.AcquiringFocusTimer"];
    v17 = self->_acquiringFocusTimer;
    self->_acquiringFocusTimer = v16;

    acquiringFocusTimer = self->_acquiringFocusTimer;
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __61___UIKeyboardArbiterClientHandle_beginAcquiringFocusOnQueue___block_invoke;
  v19[3] = &unk_2797F4BB8;
  objc_copyWeak(&v20, location);
  v19[4] = self;
  [(BSAbsoluteMachTimer *)acquiringFocusTimer scheduleWithFireInterval:queueCopy leewayInterval:v19 queue:5.0 handler:0.1];
  objc_destroyWeak(&v20);
  objc_destroyWeak(location);
}

- (BOOL)_shouldRejectSceneIdentityUpdateCorrectingClientIfNeeded:(id)needed fromSelector:(SEL)selector
{
  v70 = *MEMORY[0x277D85DE8];
  neededCopy = needed;
  remoteFocusContext = [(_UIKeyboardArbiterClientHandle *)self remoteFocusContext];
  sceneIdentity = [remoteFocusContext sceneIdentity];

  isAcquiringFocus = [(_UIKeyboardArbiterClientHandle *)self isAcquiringFocus];
  v10 = BSEqualObjects();
  omniscientDelegate = [(_UIKeyboardArbiter *)self->_owner omniscientDelegate];
  v12 = omniscientDelegate;
  if (!omniscientDelegate || !isAcquiringFocus || (neededCopy == 0) != (sceneIdentity == 0) || v10)
  {
  }

  else
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v14 = [bundleIdentifier isEqualToString:@"com.apple.Spotlight"];

    if (!v14)
    {
      requestedCorrectionOfClientSceneIdentityWhileAcquiringFocus = [(_UIKeyboardArbiterClientHandle *)self requestedCorrectionOfClientSceneIdentityWhileAcquiringFocus];
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v16 = _UIArbiterLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = 3;
      }

      else
      {
        v17 = 2;
      }

      v18 = NSStringFromSelector(selector);
      stringRepresentation = [neededCopy stringRepresentation];
      v32 = 138412802;
      selfCopy2 = self;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = stringRepresentation;
      v20 = _os_log_send_and_compose_impl(v17, 0, &v38, 512, &dword_2557BA000, v16, 16, "[%@] %@ Rejecting update as the handle is currently acquiring focus and this update could lead to a loop: updated sceneIdentity: %@", &v32, 32);

      v21 = +[_UIKeyboardArbiterDebug sharedInstance];
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v38];
      [v21 errorWithMessage:v22];

      if (v20 != &v38)
      {
        free(v20);
      }

      if (!requestedCorrectionOfClientSceneIdentityWhileAcquiringFocus)
      {
        [(_UIKeyboardArbiter *)self->_owner handlerRequestedForcedClientSceneIdentityUpdate:self];
      }

      v23 = 1;
      goto LABEL_23;
    }
  }

  if (isAcquiringFocus)
  {
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v24 = _UIArbiterLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      v25 = 3;
    }

    else
    {
      v25 = 2;
    }

    v26 = NSStringFromSelector(selector);
    stringRepresentation2 = [neededCopy stringRepresentation];
    v32 = 138412802;
    selfCopy2 = self;
    v34 = 2112;
    v35 = v26;
    v36 = 2112;
    v37 = stringRepresentation2;
    v28 = _os_log_send_and_compose_impl(v25, 0, &v38, 512, &dword_2557BA000, v24, 2, "[%@] %@ Clearing acquiring focus state for update: sceneIdentity: %@", &v32, 32);

    v29 = +[_UIKeyboardArbiterDebug sharedInstance];
    v30 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v38];
    [v29 debugWithMessage:v30];

    if (v28 != &v38)
    {
      free(v28);
    }

    [(_UIKeyboardArbiterClientHandle *)self clearAcquiringFocus];
  }

  v23 = 0;
LABEL_23:

  return v23;
}

- (void)setWindowContextID:(unsigned int)d focusContext:(id)context windowState:(unint64_t)state withLevel:(double)level
{
  v8 = *&d;
  v94 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  obj = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(obj);
  v12 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v15 = _UIKeyboardWindowStateToString();
    descriptionForLog = [contextCopy descriptionForLog];
    *buf = 138544642;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 1024;
    *&buf[20] = v8;
    *&buf[24] = 2114;
    *&buf[26] = v15;
    *&buf[34] = 2048;
    *&buf[36] = level;
    *&buf[44] = 2114;
    *&buf[46] = descriptionForLog;
    _os_log_impl(&dword_2557BA000, v12, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) setWindowContextID:%u windowState:%{public}@ level:%.1f\n    focusContext:%{public}@", buf, 0x36u);
  }

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  memset(buf, 0, sizeof(buf));
  v17 = _UIArbiterLog();
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
  v19 = NSStringFromSelector(a2);
  if (v18)
  {
    v20 = 3;
  }

  else
  {
    v20 = 2;
  }

  v55 = 138413570;
  v21 = @"YES";
  selfCopy3 = v19;
  v57 = 2112;
  v58 = contextCopy;
  if (!state)
  {
    v21 = @"NO";
  }

  v59 = 1024;
  *v60 = v8;
  *&v60[4] = 2112;
  *&v60[6] = v21;
  v61 = 2048;
  levelCopy = level;
  v63 = 2112;
  selfCopy = self;
  v22 = _os_log_send_and_compose_impl(v20, 0, buf, 512, &dword_2557BA000, v17, 2, "[%@] focusContext: %@; %i/%@/%f %@", COERCE_DOUBLE(138413570), &v55, 58);

  v23 = +[_UIKeyboardArbiterDebug sharedInstance];
  v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v23 debugWithMessage:v24];

  if (v22 != buf)
  {
    free(v22);
  }

  sceneIdentity = [contextCopy sceneIdentity];
  v26 = [(_UIKeyboardArbiterClientHandle *)self _shouldRejectSceneIdentityUpdateCorrectingClientIfNeeded:sceneIdentity fromSelector:a2];

  if (!v26)
  {
    if (state == 2 && ![(_UIKeyboardArbiterClientHandle *)self isKeyboardOnScreen])
    {
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      memset(buf, 0, sizeof(buf));
      v45 = _UIArbiterLog();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        v46 = 3;
      }

      else
      {
        v46 = 2;
      }

      v47 = NSStringFromSelector(a2);
      sceneIdentity2 = [contextCopy sceneIdentity];
      stringRepresentation = [sceneIdentity2 stringRepresentation];
      v55 = 138412802;
      selfCopy3 = v47;
      v57 = 2112;
      v58 = stringRepresentation;
      v59 = 2112;
      *v60 = self;
      LODWORD(v53) = 32;
      v50 = _os_log_send_and_compose_impl(v46, 0, buf, 512, &dword_2557BA000, v45, 16, "[%@] Rejecting update as the handle or its hosted services are not on screen: sceneIdentity: %@ %@", &v55, v53);

      v51 = +[_UIKeyboardArbiterDebug sharedInstance];
      v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      [v51 errorWithMessage:v52];

      if (v50 != buf)
      {
        free(v50);
      }
    }

    else
    {
      if (([MEMORY[0x277D75658] inputUIOOP] & 1) == 0)
      {
        sceneLayer = self->_sceneLayer;
        if (sceneLayer)
        {
          if ([(FBSCAContextSceneLayer *)sceneLayer contextID]!= v8)
          {
            if (self->_active)
            {
              [(_UIKeyboardArbiterClientHandle *)self _deactivateScene];
            }

            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            v74 = 0u;
            v75 = 0u;
            v72 = 0u;
            v73 = 0u;
            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v66 = 0u;
            v67 = 0u;
            memset(buf, 0, sizeof(buf));
            v28 = _UIArbiterLog();
            v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
            v30 = self->_sceneLayer;
            if (v29)
            {
              v31 = 3;
            }

            else
            {
              v31 = 2;
            }

            v55 = 138412546;
            selfCopy3 = self;
            v57 = 2112;
            v58 = v30;
            LODWORD(v53) = 22;
            v32 = _os_log_send_and_compose_impl(v31, 0, buf, 512, &dword_2557BA000, v28, 2, "[%@] Releasing: %@", &v55, v53);

            v33 = +[_UIKeyboardArbiterDebug sharedInstance];
            v34 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
            [v33 debugWithMessage:v34];

            if (v32 != buf)
            {
              free(v32);
            }

            v35 = self->_sceneLayer;
            self->_sceneLayer = 0;
          }
        }
      }

      self->_wantedState = state;
      self->_level = level;
      if (([MEMORY[0x277D75658] inputUIOOP] & 1) == 0 && v8 && !self->_sceneLayer && self->_owner)
      {
        v36 = [objc_alloc(MEMORY[0x277D0ACD0]) initWithCAContextID:v8 level:0.0];
        v37 = self->_sceneLayer;
        self->_sceneLayer = v36;

        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v76 = 0u;
        v77 = 0u;
        v74 = 0u;
        v75 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v68 = 0u;
        v69 = 0u;
        v66 = 0u;
        v67 = 0u;
        memset(buf, 0, sizeof(buf));
        v38 = _UIArbiterLog();
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG);
        v40 = self->_sceneLayer;
        if (v39)
        {
          v41 = 3;
        }

        else
        {
          v41 = 2;
        }

        v55 = 138412546;
        selfCopy3 = self;
        v57 = 2112;
        v58 = v40;
        LODWORD(v53) = 22;
        v42 = _os_log_send_and_compose_impl(v41, 0, buf, 512, &dword_2557BA000, v38, 2, "[%@] Created: %@", &v55, v53);

        v43 = +[_UIKeyboardArbiterDebug sharedInstance];
        v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
        [v43 debugWithMessage:v44];

        if (v42 != buf)
        {
          free(v42);
        }
      }

      [(_UIKeyboardArbiterClientHandle *)self _reevaluateRemoteFocusContext:contextCopy];
    }
  }

  objc_sync_exit(obj);
}

- (void)setClientFocusContext:(id)context
{
  v57 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v6 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    descriptionForLog = [contextCopy descriptionForLog];
    *buf = 138543874;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2114;
    *&buf[20] = descriptionForLog;
    _os_log_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) setClientFocusContext\n    focusContext:%{public}@", buf, 0x1Cu);
  }

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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = _UIArbiterLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = NSStringFromSelector(a2);
  sceneIdentity = [contextCopy sceneIdentity];
  stringRepresentation = [sceneIdentity stringRepresentation];
  v20 = 138412802;
  selfCopy = self;
  v22 = 2112;
  v23 = v12;
  v24 = 2112;
  v25 = stringRepresentation;
  v15 = _os_log_send_and_compose_impl(v11, 0, buf, 512, &dword_2557BA000, v10, 2, "[%@] %@ sceneIdentity: %@", &v20, 32);

  v16 = +[_UIKeyboardArbiterDebug sharedInstance];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v16 debugWithMessage:v17];

  if (v15 != buf)
  {
    free(v15);
  }

  sceneIdentity2 = [contextCopy sceneIdentity];
  v19 = [(_UIKeyboardArbiterClientHandle *)self _shouldRejectSceneIdentityUpdateCorrectingClientIfNeeded:sceneIdentity2 fromSelector:a2];

  if (!v19)
  {
    [(_UIKeyboardArbiterClientHandle *)self _reevaluateRemoteFocusContext:contextCopy];
    [(_UIKeyboardArbiter *)self->_owner reevaluateFocusedSceneIdentityForKeyboardFocusStealingKeyboardOnSuccess:0];
  }
}

- (void)_reevaluateRemoteFocusContext:(id)context
{
  contextCopy = context;
  v5 = +[_UIKeyboardArbiterDebug sharedInstance];
  objc_sync_enter(v5);
  objc_storeStrong(&self->_remoteFocusContext, context);
  if (([MEMORY[0x277D75658] inputUIOOP] & 1) != 0 || self->_sceneLayer)
  {
    [(_UIKeyboardArbiterClientHandle *)self checkActivation:self->_wantedState];
  }

  [(_UIKeyboardArbiter *)self->_owner reevaluateSceneClientSettings];
  [(_UIKeyboardArbiter *)self->_owner updateKeyboardSceneSettings];
  objc_sync_exit(v5);
}

- (void)checkActivation:(unint64_t)activation
{
  inputUIOOP = [MEMORY[0x277D75658] inputUIOOP];
  owner = self->_owner;
  if (inputUIOOP)
  {
    lastActivatedHandle = [(_UIKeyboardArbiter *)owner lastActivatedHandle];
    v8 = lastActivatedHandle != self;
  }

  else
  {
    lastActivatedHandle = [(_UIKeyboardArbiter *)owner sceneLayer];
    sceneLayer = [(_UIKeyboardArbiterClientHandle *)self sceneLayer];
    v8 = lastActivatedHandle != sceneLayer;
  }

  if (self->_active)
  {
    v10 = activation == 1 && v8;
    if (activation != 2 && !v10)
    {
      if (!activation)
      {

        [(_UIKeyboardArbiterClientHandle *)self _deactivateScene];
      }

      return;
    }
  }

  else if (activation - 1 > 1)
  {
    return;
  }

  v11 = [(_UIKeyboardArbiter *)self->_owner activateHandle:self];
  self->_active = v11;
  if (v11)
  {
    hostedPids = self->_hostedPids;

    [(_UIKeyboardArbiterClientHandle *)self updateSuspensionCountForPids:hostedPids active:1];
  }
}

- (void)didDetachLayer
{
  [(BSServiceConnectionEndpointInjector *)self->_endpointGrantInjector invalidate];
  endpointGrantInjector = self->_endpointGrantInjector;
  self->_endpointGrantInjector = 0;
}

- (void)setWantsFencing:(BOOL)fencing
{
  fencingCopy = fencing;
  v55 = *MEMORY[0x277D85DE8];
  v6 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v9 = "N";
    *buf = 138543874;
    *&buf[4] = bundleIdentifier;
    if (fencingCopy)
    {
      v9 = "Y";
    }

    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2080;
    *&buf[20] = v9;
    _os_log_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) setWantsFencing:%s", buf, 0x1Cu);
  }

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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(buf, 0, sizeof(buf));
  v10 = _UIArbiterLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  v12 = NSStringFromSelector(a2);
  v13 = v12;
  v14 = @"NO";
  v18 = 138412802;
  selfCopy = self;
  v20 = 2112;
  if (fencingCopy)
  {
    v14 = @"YES";
  }

  v21 = v12;
  v22 = 2112;
  v23 = v14;
  v15 = _os_log_send_and_compose_impl(v11, 0, buf, 512, &dword_2557BA000, v10, 2, "[%@] %@: %@", &v18, 32);

  v16 = +[_UIKeyboardArbiterDebug sharedInstance];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v16 debugWithMessage:v17];

  if (v15 != buf)
  {
    free(v15);
  }

  self->_wantsFence = fencingCopy;
}

- (void)signalKeyboardUIDidChange:(id)change onCompletion:(id)completion
{
  v26 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  completionCopy = completion;
  if (+[_UIKeyboardArbiter unitTestEnvironment])
  {
    [(_UIKeyboardArbiter *)self->_owner setKeyboardUIHandle:self];
    [(_UIKeyboardArbiterClientHandle *)self setInputUIHost:1];
  }

  if ([MEMORY[0x277D75658] inputUIOOP])
  {
    memset(v25, 0, sizeof(v25));
    v9 = _UIArbiterLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = NSStringFromSelector(a2);
    v19 = 138412802;
    selfCopy = self;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = changeCopy;
    v12 = _os_log_send_and_compose_impl(v10, 0, v25, 512, &dword_2557BA000, v9, 2, "[%@] %@: %@", &v19, 32);

    v13 = +[_UIKeyboardArbiterDebug sharedInstance];
    v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v25];
    [v13 debugWithMessage:v14];

    if (v12 != v25)
    {
      free(v12);
    }

    self->_keyboardOnScreen = [changeCopy keyboardOnScreen];
    -[_UIKeyboardArbiter setKeyboardScenePresentationMode:](self->_owner, "setKeyboardScenePresentationMode:", [changeCopy keyboardScenePresentationMode]);
    [(_UIKeyboardArbiter *)self->_owner updateKeyboardUIStatus:changeCopy fromHandler:self];
    sceneDelegate = [(_UIKeyboardArbiter *)self->_owner sceneDelegate];
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      sceneDelegate2 = [(_UIKeyboardArbiter *)self->_owner sceneDelegate];
      focusContext = [(_UIKeyboardArbiter *)self->_owner focusContext];
      [sceneDelegate2 focusContext:focusContext didChangeKeyboardScenePresentationMode:{-[_UIKeyboardArbiter keyboardScenePresentationMode](self->_owner, "keyboardScenePresentationMode")}];
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)signalKeyboardClientChanged:(id)changed onCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  completionCopy = completion;
  memset(v21, 0, sizeof(v21));
  v9 = _UIArbiterLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = 3;
  }

  else
  {
    v10 = 2;
  }

  v11 = NSStringFromSelector(a2);
  v15 = 138412802;
  selfCopy = self;
  v17 = 2112;
  v18 = v11;
  v19 = 2112;
  v20 = changedCopy;
  v12 = _os_log_send_and_compose_impl(v10, 0, v21, 512, &dword_2557BA000, v9, 2, "[%@] %@: %@", &v15, 32);

  v13 = +[_UIKeyboardArbiterDebug sharedInstance];
  v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v21];
  [v13 debugWithMessage:v14];

  if (v12 != v21)
  {
    free(v12);
  }

  self->_keyboardOnScreen = [changedCopy keyboardOnScreen];
  self->_multipleScenes = [changedCopy multipleScenes];
  [(_UIKeyboardArbiter *)self->_owner updateKeyboardStatus:changedCopy fromHandler:self];
  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)signalKeyboardChanged:(id)changed onCompletion:(id)completion
{
  v57 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  completionCopy = completion;
  v9 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    descriptionForLog = [changedCopy descriptionForLog];
    *buf = 138543874;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2114;
    *&buf[20] = descriptionForLog;
    _os_log_impl(&dword_2557BA000, v9, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) signalKeyboardChanged\n    keyboardChanges:%{public}@", buf, 0x1Cu);
  }

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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  memset(buf, 0, sizeof(buf));
  v13 = _UIArbiterLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = NSStringFromSelector(a2);
  v20 = 138412802;
  selfCopy = self;
  v22 = 2112;
  v23 = v15;
  v24 = 2112;
  v25 = changedCopy;
  v16 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_2557BA000, v13, 2, "[%@] %@: %@", &v20, 32);

  v17 = +[_UIKeyboardArbiterDebug sharedInstance];
  v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v17 debugWithMessage:v18];

  if (v16 != buf)
  {
    free(v16);
  }

  self->_keyboardOnScreen = [changedCopy keyboardOnScreen];
  self->_multipleScenes = [changedCopy multipleScenes];
  [(_UIKeyboardArbiter *)self->_owner updateKeyboardStatus:changedCopy fromHandler:self];
  if (!self->_keyboardOnScreen)
  {
    if ([(_UIKeyboardArbiterClientHandle *)self isViewService])
    {
      if ([(_UIKeyboardArbiterClientHandle *)self prevActiveIdentifier])
      {
        hostProcessIdentifier = [changedCopy hostProcessIdentifier];
        if (hostProcessIdentifier == getpid())
        {
          [(_UIKeyboardArbiterClientHandle *)self activeProcessResign];
        }
      }
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)signalAutofillUIBringupWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    v7 = 138543618;
    v8 = bundleIdentifier;
    v9 = 1024;
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    _os_log_impl(&dword_2557BA000, v5, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) signalAutofillUIBringup", &v7, 0x12u);
  }

  if ([MEMORY[0x277D75658] usesInputSystemUIForAutoFillOnly])
  {
    [(_UIKeyboardArbiterClientHandle *)self setRequiresInputUIForAutofillUIOnly:1];
    [(_UIKeyboardArbiter *)self->_owner reevaluateSceneClientSettings];
    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)notifyIAVHeight:(double)height
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = _UIArbiterLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v11 = NSStringFromSelector(a2);
    v12 = 138412802;
    selfCopy = self;
    v14 = 2112;
    *v15 = v11;
    *&v15[8] = 2048;
    *&v15[10] = height;
    _os_log_debug_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEBUG, "[%@] %@: %f", &v12, 0x20u);
  }

  if (self->_iavHeight != height)
  {
    v7 = _UIArbiterClientHandleLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
      processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
      iavHeight = self->_iavHeight;
      v12 = 138544130;
      selfCopy = bundleIdentifier;
      v14 = 1024;
      *v15 = processIdentifier;
      *&v15[4] = 2048;
      *&v15[6] = height;
      *&v15[14] = 2048;
      *&v15[16] = iavHeight;
      _os_log_impl(&dword_2557BA000, v7, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) notifyIAVHeight:%.1f (was %.1f)", &v12, 0x26u);
    }

    self->_iavHeight = height;
    [(_UIKeyboardArbiter *)self->_owner notifyHeightUpdated:self];
  }
}

- (void)setWindowHostingPID:(int)d active:(BOOL)active
{
  activeCopy = active;
  v5 = *&d;
  v71 = *MEMORY[0x277D85DE8];
  v8 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v11 = "N";
    *buf = 138544130;
    *&buf[4] = bundleIdentifier;
    if (activeCopy)
    {
      v11 = "Y";
    }

    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 1024;
    *&buf[20] = v5;
    *&buf[24] = 2080;
    *&buf[26] = v11;
    _os_log_impl(&dword_2557BA000, v8, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) setWindowHostingPID:%d active:%s", buf, 0x22u);
  }

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
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
  v44 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(buf, 0, sizeof(buf));
  v12 = _UIArbiterLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = NSStringFromSelector(a2);
  v15 = v14;
  v16 = @"NO";
  v33 = 138413058;
  selfCopy = self;
  v35 = 2112;
  if (activeCopy)
  {
    v16 = @"YES";
  }

  v36 = v14;
  v37 = 1024;
  v38 = v5;
  v39 = 2112;
  v40 = v16;
  v17 = _os_log_send_and_compose_impl(v13, 0, buf, 512, &dword_2557BA000, v12, 2, "[%@] %@: %i/%@", &v33, 38);

  v18 = +[_UIKeyboardArbiterDebug sharedInstance];
  v19 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v18 debugWithMessage:v19];

  if (v17 != buf)
  {
    free(v17);
  }

  v20 = [MEMORY[0x277CCABB0] numberWithInt:v5];
  v21 = v20;
  if (activeCopy)
  {
    if (v20 && ([(NSMutableSet *)self->_hostedPids containsObject:v20]& 1) == 0)
    {
      v32 = v21;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
      [(_UIKeyboardArbiterClientHandle *)self addHostedPids:v22];

      [(_UIKeyboardArbiter *)self->_owner reevaluateSceneClientSettings];
      if (self->_active)
      {
        v23 = [MEMORY[0x277CBEB98] setWithObject:v21];
        [(_UIKeyboardArbiterClientHandle *)self updateSuspensionCountForPids:v23 active:self->_active];
      }

      [(_UIKeyboardArbiter *)self->_owner notifyHeightUpdated:self];
    }
  }

  else if ([(NSMutableSet *)self->_hostedPids containsObject:v20])
  {
    v24 = [(_UIKeyboardArbiter *)self->_owner handlerForPID:v5];
    [v24 notifyIAVHeight:0.0];

    [(NSMutableSet *)self->_hostedPids removeObject:v21];
    if (self->_active)
    {
      v25 = [MEMORY[0x277CBEB98] setWithObject:v21];
      [(_UIKeyboardArbiterClientHandle *)self updateSuspensionCountForPids:v25 active:self->_active];
    }

    v26 = [(_UIKeyboardArbiter *)self->_owner handlerForPID:v5];
    activeInputDestinationHandle = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
    v28 = activeInputDestinationHandle;
    if (v26 == activeInputDestinationHandle)
    {
      prevActiveIdentifier = [v26 prevActiveIdentifier];

      if (prevActiveIdentifier)
      {
        [v26 activeProcessResign];
        [v26 setPrevActiveIdentifier:0];
      }
    }

    else
    {
    }

    [(_UIKeyboardArbiter *)self->_owner notifyHeightUpdated:self];
    owner = self->_owner;
    v31 = [(_UIKeyboardArbiter *)owner handlerForPID:v5];
    [(_UIKeyboardArbiter *)owner notifyHeightUpdated:v31];
  }

  [(_UIKeyboardArbiter *)self->_owner checkHostingState];
}

- (void)notifyHostedPIDsOfSuppression:(BOOL)suppression active:(BOOL)active
{
  activeCopy = active;
  suppressionCopy = suppression;
  v59 = *MEMORY[0x277D85DE8];
  v8 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v11 = "N";
    *buf = 138413058;
    *&buf[12] = 1024;
    if (suppressionCopy)
    {
      v12 = "Y";
    }

    else
    {
      v12 = "N";
    }

    *&buf[4] = bundleIdentifier;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2080;
    if (activeCopy)
    {
      v11 = "Y";
    }

    *&buf[20] = v12;
    *&buf[28] = 2080;
    *&buf[30] = v11;
    _os_log_impl(&dword_2557BA000, v8, OS_LOG_TYPE_DEFAULT, "RX %@(%d) notifyHostedPIDsOfSuppression:%s active:%s", buf, 0x26u);
  }

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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  memset(buf, 0, sizeof(buf));
  v13 = _UIArbiterLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = 3;
  }

  else
  {
    v14 = 2;
  }

  v15 = NSStringFromSelector(a2);
  v16 = v15;
  v17 = @"NO";
  v23 = 138412802;
  selfCopy = self;
  v25 = 2112;
  if (suppressionCopy)
  {
    v17 = @"YES";
  }

  v26 = v15;
  v27 = 2112;
  v28 = v17;
  v18 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_2557BA000, v13, 2, "[%@] %@: %@", &v23, 32);

  v19 = +[_UIKeyboardArbiterDebug sharedInstance];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v19 debugWithMessage:v20];

  if (v18 != buf)
  {
    free(v18);
  }

  suppressionCount = self->_suppressionCount;
  if (!suppressionCopy)
  {
    v22 = suppressionCount - 1;
    self->_suppressionCount = v22;
    if (v22)
    {
      return;
    }

    goto LABEL_20;
  }

  self->_suppressionCount = suppressionCount + 1;
  if (activeCopy && !suppressionCount)
  {
    activeCopy = 1;
LABEL_20:
    [(_UIKeyboardArbiterClientHandle *)self updateSuspensionCountForPids:self->_hostedPids active:activeCopy];
  }
}

- (void)transition:(id)transition eventStage:(unint64_t)stage withInfo:(id)info
{
  v61 = *MEMORY[0x277D85DE8];
  transitionCopy = transition;
  infoCopy = info;
  v11 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v14 = _UIKeyboardTransitionStageToString();
    *buf = 138544130;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2114;
    *&buf[20] = transitionCopy;
    *&buf[28] = 2114;
    *&buf[30] = v14;
    _os_log_impl(&dword_2557BA000, v11, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) transition:%{public}@ eventStage:%{public}@", buf, 0x26u);
  }

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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v32 = 0u;
  memset(buf, 0, sizeof(buf));
  v15 = _UIArbiterLog();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    v16 = 3;
  }

  else
  {
    v16 = 2;
  }

  v17 = NSStringFromSelector(a2);
  v21 = 138413314;
  selfCopy = self;
  v23 = 2112;
  v24 = v17;
  v25 = 2112;
  v26 = transitionCopy;
  v27 = 1024;
  stageCopy = stage;
  v29 = 2112;
  v30 = infoCopy;
  v18 = _os_log_send_and_compose_impl(v16, 0, buf, 512, &dword_2557BA000, v15, 2, "[%@] %@: %@/%i/%@", &v21, 48);

  v19 = +[_UIKeyboardArbiterDebug sharedInstance];
  v20 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v19 debugWithMessage:v20];

  if (v18 != buf)
  {
    free(v18);
  }

  [(_UIKeyboardArbiter *)self->_owner transition:transitionCopy eventStage:stage withInfo:infoCopy fromHandler:self];
}

- (void)retrieveDebugInformation:(id)information
{
  v56 = *MEMORY[0x277D85DE8];
  informationCopy = information;
  v6 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    *buf = 138543618;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    _os_log_debug_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEBUG, "RX %{public}@(%d) retrieveDebugInfo", buf, 0x12u);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  memset(buf, 0, sizeof(buf));
  v7 = _UIArbiterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = NSStringFromSelector(a2);
  v21 = 138412546;
  selfCopy2 = self;
  v23 = 2112;
  v24 = v9;
  v10 = _os_log_send_and_compose_impl(v8, 0, buf, 512, &dword_2557BA000, v7, 2, "[%@] %@", &v21, 22);

  v11 = +[_UIKeyboardArbiterDebug sharedInstance];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v11 debugWithMessage:v12];

  if (v10 != buf)
  {
    free(v10);
  }

  if ([(_UIKeyboardArbiterClientHandle *)self hasDebugInformationEntitlement])
  {
    if (informationCopy)
    {
      v13 = [(_UIKeyboardArbiter *)self->_owner description];
      informationCopy[2](informationCopy, v13);
    }
  }

  else
  {
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    memset(buf, 0, sizeof(buf));
    v14 = _UIArbiterLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v21 = 138412290;
    selfCopy2 = self;
    LODWORD(v20) = 12;
    v16 = _os_log_send_and_compose_impl(v15, 0, buf, 512, &dword_2557BA000, v14, 16, "[%@] denied debug information request", &v21, v20);

    v17 = +[_UIKeyboardArbiterDebug sharedInstance];
    v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v17 errorWithMessage:v18];

    if (v16 != buf)
    {
      free(v16);
    }

    informationCopy[2](informationCopy, 0);
  }
}

- (void)retrieveMoreDebugInformationWithCompletion:(id)completion
{
  v55 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v6 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    *buf = 138543618;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    _os_log_debug_impl(&dword_2557BA000, v6, OS_LOG_TYPE_DEBUG, "RX %{public}@(%d) retrieveMoreDebugInfo", buf, 0x12u);
  }

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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(buf, 0, sizeof(buf));
  v7 = _UIArbiterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v9 = NSStringFromSelector(a2);
  v20 = 138412546;
  selfCopy2 = self;
  v22 = 2112;
  v23 = v9;
  v10 = _os_log_send_and_compose_impl(v8, 0, buf, 512, &dword_2557BA000, v7, 2, "[%@] %@", &v20, 22);

  v11 = +[_UIKeyboardArbiterDebug sharedInstance];
  v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v11 debugWithMessage:v12];

  if (v10 != buf)
  {
    free(v10);
  }

  if ([(_UIKeyboardArbiterClientHandle *)self hasDebugInformationEntitlement])
  {
    [(_UIKeyboardArbiter *)self->_owner retrieveDebugInformationWithCompletion:completionCopy];
  }

  else
  {
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
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    memset(buf, 0, sizeof(buf));
    v13 = _UIArbiterLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = 3;
    }

    else
    {
      v14 = 2;
    }

    v20 = 138412290;
    selfCopy2 = self;
    LODWORD(v19) = 12;
    v15 = _os_log_send_and_compose_impl(v14, 0, buf, 512, &dword_2557BA000, v13, 16, "[%@] denied more debug information request", &v20, v19);

    v16 = +[_UIKeyboardArbiterDebug sharedInstance];
    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
    [v16 errorWithMessage:v17];

    if (v15 != buf)
    {
      free(v15);
    }

    completionCopy[2](completionCopy, 0);
  }
}

- (BOOL)isHandlerShowableWithHandler:(id)handler
{
  v18 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v5 = handlerCopy;
  if (handlerCopy && !self->_checkingShowability)
  {
    LOBYTE(v6) = 1;
    if (handlerCopy != self)
    {
      self->_checkingShowability = 1;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = self->_hostedPids;
      v6 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        v8 = *v14;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v14 != v8)
            {
              objc_enumerationMutation(v7);
            }

            v10 = -[_UIKeyboardArbiter handlerForPID:](self->_owner, "handlerForPID:", [*(*(&v13 + 1) + 8 * i) intValue]);
            v11 = [v10 isHandlerShowableWithHandler:v5];

            if (v11)
            {
              LOBYTE(v6) = 1;
              goto LABEL_15;
            }
          }

          v6 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:

      self->_checkingShowability = 0;
    }
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (BOOL)isHostingPID:(int)d
{
  hostedPids = self->_hostedPids;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&d];
  LOBYTE(hostedPids) = [(NSMutableSet *)hostedPids containsObject:v4];

  return hostedPids;
}

- (BOOL)takeProcessAssertionOnRemoteWithQueue:(id)queue
{
  v114 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  remoteKeepAliveAssertionCount = self->_remoteKeepAliveAssertionCount;
  self->_remoteKeepAliveAssertionCount = remoteKeepAliveAssertionCount + 1;
  v6 = &off_2557D5000;
  if (!remoteKeepAliveAssertionCount)
  {
    processIdentifier = [(NSXPCConnection *)self->_connection processIdentifier];
    if (processIdentifier != getpid())
    {
      v8 = [(_UIKeyboardArbiterClientHandle *)self description];
      if (takeProcessAssertionOnRemoteWithQueue____needsStaging == 1)
      {
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v9 = _UIArbiterLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v10 = 3;
        }

        else
        {
          v10 = 2;
        }

        v77 = 138412290;
        selfCopy = v8;
        v11 = _os_log_send_and_compose_impl(v10, 0, &v82, 512, &dword_2557BA000, v9, 2, "[%@] legacy path was taken for takeProcessAssertionOnRemoteWithQueue", &v77, 12);

        v12 = +[_UIKeyboardArbiterDebug sharedInstance];
        v13 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v82];
        [v12 debugWithMessage:v13];

        if (v11 != &v82)
        {
          free(v11);
        }

        v14 = objc_alloc(MEMORY[0x277CEEEA8]);
        processIdentifier2 = [(NSXPCConnection *)self->_connection processIdentifier];
        v75[0] = MEMORY[0x277D85DD0];
        v75[1] = 3221225472;
        v75[2] = __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke;
        v75[3] = &unk_2797F4810;
        v76 = v8;
        v16 = [v14 initWithPID:processIdentifier2 flags:39 reason:4 name:@"com.apple.UIKit.KeyboardManagement.message" withHandler:v75];
        remoteKeepAliveAssertion = self->_remoteKeepAliveAssertion;
        self->_remoteKeepAliveAssertion = v16;

        v18 = v76;
        v6 = &off_2557D5000;
LABEL_41:

        goto LABEL_42;
      }

      v19 = [MEMORY[0x277D47008] targetWithPid:{-[NSXPCConnection processIdentifier](self->_connection, "processIdentifier")}];
      v20 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.UIKit.KeyboardManagement.xpc" name:@"Arbiter"];
      v21 = objc_alloc(MEMORY[0x277D46DB8]);
      v69 = v20;
      v81 = v20;
      v22 = [MEMORY[0x277CBEA60] arrayWithObjects:&v81 count:1];
      v68 = v19;
      v23 = [v21 initWithExplanation:@"com.apple.UIKit.KeyboardManagement.message" target:v19 attributes:v22];
      v24 = self->_remoteKeepAliveAssertion;
      self->_remoteKeepAliveAssertion = v23;

      v25 = self->_remoteKeepAliveAssertion;
      v73[0] = MEMORY[0x277D85DD0];
      v73[1] = 3221225472;
      v73[2] = __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke_577;
      v73[3] = &unk_2797F4C08;
      v26 = v8;
      v74 = v26;
      [(RBSAssertion *)v25 setInvalidationHandler:v73];
      v27 = self->_remoteKeepAliveAssertion;
      v72 = 0;
      v28 = [(RBSAssertion *)v27 acquireWithError:&v72];
      v29 = v72;
      v70 = v29;
      if (v28)
      {
        v30 = &off_2557D5000;
LABEL_35:
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v108 = 0u;
        v109 = 0u;
        v106 = 0u;
        v107 = 0u;
        v104 = 0u;
        v105 = 0u;
        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        v90 = 0u;
        v91 = 0u;
        v88 = 0u;
        v89 = 0u;
        v86 = 0u;
        v87 = 0u;
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v53 = _UIArbiterLog();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
        {
          v54 = 3;
        }

        else
        {
          v54 = 2;
        }

        v77 = *(v30 + 506);
        selfCopy = v26;
        LODWORD(v66) = 12;
        v55 = _os_log_send_and_compose_impl(v54, 0, &v82, 512, &dword_2557BA000, v53, 2, "[%@] took process assertion", &v77, v66);

        v56 = +[_UIKeyboardArbiterDebug sharedInstance];
        v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v82];
        [v56 debugWithMessage:v57];

        if (v55 != &v82)
        {
          free(v55);
        }

        v6 = &off_2557D5000;
        v18 = v68;
        goto LABEL_41;
      }

      v31 = v29;
      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v32 = _UIArbiterLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = 3;
      }

      else
      {
        v33 = 2;
      }

      v77 = 138412546;
      selfCopy = v26;
      v79 = 2112;
      v80 = v31;
      v34 = _os_log_send_and_compose_impl(v33, 0, &v82, 512, &dword_2557BA000, v32, 16, "[%@] could not take process assertion: %@", &v77, 22);

      v35 = +[_UIKeyboardArbiterDebug sharedInstance];
      v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v82];
      [v35 errorWithMessage:v36];

      if (v34 != &v82)
      {
        free(v34);
      }

      domain = [v70 domain];
      v38 = *MEMORY[0x277D47098];
      v30 = &off_2557D5000;
      if ([domain isEqual:*MEMORY[0x277D47098]])
      {
        code = [v70 code];

        if (code == 1)
        {
          v112 = 0u;
          v113 = 0u;
          v110 = 0u;
          v111 = 0u;
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v100 = 0u;
          v101 = 0u;
          v98 = 0u;
          v99 = 0u;
          v96 = 0u;
          v97 = 0u;
          v94 = 0u;
          v95 = 0u;
          v92 = 0u;
          v93 = 0u;
          v90 = 0u;
          v91 = 0u;
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v40 = _UIArbiterLog();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            v41 = 3;
          }

          else
          {
            v41 = 2;
          }

          v77 = 138412290;
          selfCopy = v26;
          LODWORD(v67) = 12;
          v42 = _os_log_send_and_compose_impl(v41, 0, &v82, 512, &dword_2557BA000, v40, 16, "[%@] entitlement is missing: com.apple.runningboard.UIKitKeyboardManagement", &v77, v67);

          v43 = +[_UIKeyboardArbiterDebug sharedInstance];
          v44 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v82];
          [v43 errorWithMessage:v44];

          if (v42 == &v82)
          {
            goto LABEL_34;
          }

          goto LABEL_33;
        }
      }

      else
      {
      }

      domain2 = [v70 domain];
      if ([domain2 isEqual:v38])
      {
        localizedFailureReason = [v70 localizedFailureReason];
        v47 = [localizedFailureReason isEqual:@"Could not find plist for domain attribute"];

        if (v47)
        {

          v48 = 0;
          goto LABEL_48;
        }
      }

      else
      {
      }

      v112 = 0u;
      v113 = 0u;
      v110 = 0u;
      v111 = 0u;
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      v90 = 0u;
      v91 = 0u;
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v49 = _UIArbiterLog();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v50 = 3;
      }

      else
      {
        v50 = 2;
      }

      v77 = 138412290;
      selfCopy = v26;
      LODWORD(v67) = 12;
      v42 = _os_log_send_and_compose_impl(v50, 0, &v82, 512, &dword_2557BA000, v49, 16, "[%@] life cycle domain is missing: com.apple.UIKit.KeyboardManagement.xpc", &v77, v67);

      v51 = +[_UIKeyboardArbiterDebug sharedInstance];
      v52 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v82];
      [v51 errorWithMessage:v52];

      if (v42 == &v82)
      {
        goto LABEL_34;
      }

LABEL_33:
      free(v42);
LABEL_34:
      takeProcessAssertionOnRemoteWithQueue____needsStaging = 1;
      goto LABEL_35;
    }
  }

LABEL_42:
  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v58 = _UIArbiterLog();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEBUG))
  {
    v59 = 3;
  }

  else
  {
    v59 = 2;
  }

  v60 = self->_remoteKeepAliveAssertionCount;
  v77 = *(v6 + 508);
  selfCopy = self;
  v79 = 2048;
  v80 = v60;
  LODWORD(v66) = 22;
  v61 = _os_log_send_and_compose_impl(v59, 0, &v82, 512, &dword_2557BA000, v58, 2, "[%@] requested process assertion (count=%lu)", &v77, v66);

  v62 = +[_UIKeyboardArbiterDebug sharedInstance];
  v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v82];
  [v62 debugWithMessage:v63];

  if (v61 != &v82)
  {
    free(v61);
  }

  ++self->_remoteKeepAliveTimerCount;
  v64 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke_582;
  block[3] = &unk_2797F4630;
  block[4] = self;
  dispatch_after(v64, queueCopy, block);
  v48 = 1;
LABEL_48:

  return v48;
}

- (void)cacheWindowContext
{
  v9[3] = *MEMORY[0x277D85DE8];
  if ([(_UIKeyboardArbiterClientHandle *)self active])
  {
    if (self->_wantedState)
    {
      v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[FBSCAContextSceneLayer contextID](self->_sceneLayer, "contextID")}];
      v9[0] = v3;
      remoteFocusContext = self->_remoteFocusContext;
      null = remoteFocusContext;
      if (!remoteFocusContext)
      {
        null = [MEMORY[0x277CBEB68] null];
      }

      v6 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_level, v9[0], null}];
      v9[2] = v6;
      v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
      cachedContext = self->_cachedContext;
      self->_cachedContext = v7;

      if (!remoteFocusContext)
      {
      }
    }

    [(_UIKeyboardArbiterClientHandle *)self setWindowContextID:0 focusContext:0 windowState:0 withLevel:0.0];
  }
}

- (void)uncacheWindowContext
{
  if (self->_cachedContext)
  {
    if (![(_UIKeyboardArbiterClientHandle *)self active])
    {
      v3 = [(NSArray *)self->_cachedContext objectAtIndexedSubscript:0];
      intValue = [v3 intValue];
      v5 = [(NSArray *)self->_cachedContext objectAtIndexedSubscript:1];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v7 = [(NSArray *)self->_cachedContext objectAtIndexedSubscript:1];
      }

      else
      {
        v7 = 0;
      }

      v8 = [(NSArray *)self->_cachedContext objectAtIndexedSubscript:2];
      -[_UIKeyboardArbiterClientHandle setWindowContextID:focusContext:windowState:withLevel:](self, "setWindowContextID:focusContext:windowState:withLevel:", intValue, v7, 1, [v8 intValue]);

      if (isKindOfClass)
      {
      }
    }

    cachedContext = self->_cachedContext;
    self->_cachedContext = 0;
  }
}

- (void)pointIsWithinKeyboardContent:(CGPoint)content onCompletion:(id)completion
{
  if (completion)
  {
    y = content.y;
    x = content.x;
    v6 = MEMORY[0x277D75830];
    completionCopy = completion;
    completionCopy[2](completionCopy, [v6 pointIsWithinKeyboardContent:{x, y}]);
  }
}

- (void)setAllVisibleFrames:(id)frames
{
  framesCopy = frames;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54___UIKeyboardArbiterClientHandle_setAllVisibleFrames___block_invoke;
  v6[3] = &unk_2797F45E0;
  v6[4] = self;
  v7 = framesCopy;
  v5 = framesCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

- (void)userFirstTapOnKeyboard
{
  v37 = *MEMORY[0x277D85DE8];
  activeInputDestinationHandle = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
  if (activeInputDestinationHandle != self)
  {
    goto LABEL_2;
  }

  if ([(_UIKeyboardArbiterClientHandle *)self isViewService])
  {
  }

  else
  {
    focusRequestedHandle = [(_UIKeyboardArbiter *)self->_owner focusRequestedHandle];
    v23 = focusRequestedHandle;
    if (focusRequestedHandle != self)
    {

LABEL_2:
LABEL_3:
      v5 = _UIArbiterEventsLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = NSStringFromSelector(a2);
        bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
        if ([(_UIKeyboardArbiterClientHandle *)self active])
        {
          v8 = @"YES";
        }

        else
        {
          v8 = @"NO";
        }

        activeInputDestinationHandle2 = [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle];
        bundleIdentifier2 = [activeInputDestinationHandle2 bundleIdentifier];
        focusRequestedHandle2 = [(_UIKeyboardArbiter *)self->_owner focusRequestedHandle];
        bundleIdentifier3 = [focusRequestedHandle2 bundleIdentifier];
        *buf = 138413314;
        v28 = v6;
        v29 = 2112;
        v30 = bundleIdentifier;
        v31 = 2112;
        v32 = v8;
        v33 = 2112;
        v34 = bundleIdentifier2;
        v35 = 2112;
        v36 = bundleIdentifier3;
        _os_log_impl(&dword_2557BA000, v5, OS_LOG_TYPE_DEFAULT, "[%@] %@(active=%@) taps on blank keyboard, activeInputDestinationHandle: %@, focusRequestedHandle: %@", buf, 0x34u);
      }

      [(_UIKeyboardArbiter *)self->_owner setBlankKeyboardLogs:0];
      [(_UIKeyboardArbiter *)self->_owner setBlankKeyboardRecordTime:CFAbsoluteTimeGetCurrent()];
      owner = self->_owner;
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __56___UIKeyboardArbiterClientHandle_userFirstTapOnKeyboard__block_invoke;
      v25[3] = &unk_2797F4C58;
      v25[4] = self;
      [(_UIKeyboardArbiter *)owner retrieveDebugInformationWithCompletion:v25];
      [(_UIKeyboardArbiter *)self->_owner runOperations:&__block_literal_global_589 onHandler:self fromFunction:"[_UIKeyboardArbiterClientHandle userFirstTapOnKeyboard]"];
      return;
    }

    active = [(_UIKeyboardArbiterClientHandle *)self active];

    if (!active)
    {
      goto LABEL_3;
    }
  }

  [(_UIKeyboardArbiter *)self->_owner blankKeyboardRecordTime];
  if (v14 > 0.0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(_UIKeyboardArbiter *)self->_owner blankKeyboardRecordTime];
    if (Current - v16 > 1800.0)
    {
      [(_UIKeyboardArbiter *)self->_owner setBlankKeyboardRecordTime:0.0];
      blankKeyboardLogs = [(_UIKeyboardArbiter *)self->_owner blankKeyboardLogs];
      v18 = [blankKeyboardLogs count];

      if (v18)
      {
        blankKeyboardLogs2 = [(_UIKeyboardArbiter *)self->_owner blankKeyboardLogs];
        v20 = [blankKeyboardLogs2 objectAtIndexedSubscript:0];
        v26 = v20;
        v21 = [MEMORY[0x277CBEA60] arrayWithObjects:&v26 count:1];
        [(_UIKeyboardArbiter *)self->_owner setBlankKeyboardLogs:v21];
      }
    }
  }
}

- (void)applicationShouldFocusWithBundle:(id)bundle onCompletion:(id)completion
{
  v72 = *MEMORY[0x277D85DE8];
  bundleCopy = bundle;
  completionCopy = completion;
  v9 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v12 = @"(self)";
    *buf = 138543874;
    *&buf[4] = bundleIdentifier;
    if (bundleCopy)
    {
      v12 = bundleCopy;
    }

    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2114;
    *&buf[20] = v12;
    _os_log_impl(&dword_2557BA000, v9, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) applicationShouldFocusWithBundle:%{public}@", buf, 0x1Cu);
  }

  if (!bundleCopy)
  {
    goto LABEL_10;
  }

  bundleIdentifier2 = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
  if ([bundleIdentifier2 isEqual:bundleCopy])
  {

    goto LABEL_9;
  }

  hasDebugInformationEntitlement = [(_UIKeyboardArbiterClientHandle *)self hasDebugInformationEntitlement];

  if (hasDebugInformationEntitlement)
  {
LABEL_9:
    if (([(__CFString *)bundleCopy isEqualToString:&stru_2867933A0]& 1) == 0)
    {
      selfCopy2 = [(_UIKeyboardArbiter *)self->_owner handlerForBundleID:bundleCopy];
LABEL_12:
      v16 = selfCopy2;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      memset(buf, 0, sizeof(buf));
      v17 = _UIArbiterLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = 3;
      }

      else
      {
        v18 = 2;
      }

      v19 = NSStringFromSelector(a2);
      v33 = 138413058;
      selfCopy3 = self;
      v35 = 2112;
      v36 = v19;
      v37 = 2112;
      v38 = bundleCopy;
      v39 = 2114;
      v40 = v16;
      v20 = _os_log_send_and_compose_impl(v18, 0, buf, 512, &dword_2557BA000, v17, 2, "[%@] %@ <%@> %{public}@", &v33, 42);

      v21 = +[_UIKeyboardArbiterDebug sharedInstance];
      v22 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      [v21 debugWithMessage:v22];

      if (v20 != buf)
      {
        free(v20);
      }

      if (v16 && (([(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle], (v23 = objc_claimAutoreleasedReturnValue()) == 0) || (v24 = v23, [(_UIKeyboardArbiter *)self->_owner activeInputDestinationHandle], v25 = objc_claimAutoreleasedReturnValue(), v25, v24, v16 == v25)))
      {
        owner = self->_owner;
        v26 = 1;
        [(_UIKeyboardArbiter *)owner handlerRequestedFocus:v16 shouldStealKeyboard:1];
        if (!completionCopy)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v26 = 0;
        if (!completionCopy)
        {
LABEL_22:

          goto LABEL_23;
        }
      }

      completionCopy[2](completionCopy, v26);
      goto LABEL_22;
    }

LABEL_10:
    selfCopy2 = self;
    goto LABEL_12;
  }

  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  memset(buf, 0, sizeof(buf));
  v28 = _UIArbiterLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = 3;
  }

  else
  {
    v29 = 2;
  }

  v33 = 138412546;
  selfCopy3 = self;
  v35 = 2112;
  v36 = bundleCopy;
  v30 = _os_log_send_and_compose_impl(v29, 0, buf, 512, &dword_2557BA000, v28, 16, "[%@] denied focus request to bundle %@", &v33, 22);

  v31 = +[_UIKeyboardArbiterDebug sharedInstance];
  v32 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v31 errorWithMessage:v32];

  if (v30 != buf)
  {
    free(v30);
  }

  completionCopy[2](completionCopy, 0);
LABEL_23:
}

- (void)focusApplicationWithProcessIdentifier:(int)identifier context:(id)context stealingKeyboard:(BOOL)keyboard onCompletion:(id)completion
{
  keyboardCopy = keyboard;
  v8 = *&identifier;
  v84 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  v13 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    if (keyboardCopy)
    {
      v16 = "Y";
    }

    else
    {
      v16 = "N";
    }

    [contextCopy descriptionForLog];
    HIDWORD(v47) = keyboardCopy;
    v17 = a2;
    v18 = contextCopy;
    v20 = v19 = completionCopy;
    *buf = 138544386;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 1024;
    *&buf[20] = v8;
    *&buf[24] = 2080;
    *&buf[26] = v16;
    *&buf[34] = 2114;
    *&buf[36] = v20;
    _os_log_impl(&dword_2557BA000, v13, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) focusApplicationWithPID:%d stealKeyboard:%s\n    context:%{public}@", buf, 0x2Cu);

    completionCopy = v19;
    contextCopy = v18;
    a2 = v17;
    keyboardCopy = HIDWORD(v47);
  }

  if ([(_UIKeyboardArbiterClientHandle *)self processIdentifier]!= v8)
  {
    processIdentifier2 = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    if (processIdentifier2 != getpid() && ![(_UIKeyboardArbiterClientHandle *)self hasDebugInformationEntitlement])
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      memset(buf, 0, sizeof(buf));
      v25 = _UIArbiterLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v43 = 3;
      }

      else
      {
        v43 = 2;
      }

      *v48 = 138412546;
      *&v48[4] = self;
      *&v48[12] = 2048;
      *&v48[14] = v8;
      LODWORD(v47) = 22;
      v27 = _os_log_send_and_compose_impl(v43, 0, buf, 512, &dword_2557BA000, v25, 16, "[%@] denied focus request to pid %ld", v48, v47, *v48, *&v48[8]);
LABEL_38:
      v44 = v27;

      v45 = +[_UIKeyboardArbiterDebug sharedInstance];
      v46 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
      [v45 errorWithMessage:v46];

      if (v44 != buf)
      {
        free(v44);
      }

      completionCopy[2](completionCopy, 0);
      goto LABEL_41;
    }
  }

  if (keyboardCopy)
  {
    focusRequestedHandle = [(_UIKeyboardArbiter *)self->_owner focusRequestedHandle];
    bundleIdentifier2 = [focusRequestedHandle bundleIdentifier];
    v24 = [bundleIdentifier2 isEqualToString:@"com.apple.Spotlight"];

    if (v24)
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v55 = 0u;
      memset(buf, 0, sizeof(buf));
      v25 = _UIArbiterLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = 3;
      }

      else
      {
        v26 = 2;
      }

      *v48 = 138412546;
      *&v48[4] = self;
      *&v48[12] = 2048;
      *&v48[14] = v8;
      LODWORD(v47) = 22;
      v27 = _os_log_send_and_compose_impl(v26, 0, buf, 512, &dword_2557BA000, v25, 16, "[%@] do not steal keyboard from Spotlight for pid %ld", v48, v47, *v48, *&v48[8]);
      goto LABEL_38;
    }
  }

  sceneIdentity = [contextCopy sceneIdentity];

  if (sceneIdentity)
  {
    selfCopy = [(_UIKeyboardArbiter *)self->_owner handlerForPID:v8];
  }

  else
  {
    selfCopy = self;
  }

  v30 = selfCopy;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v55 = 0u;
  memset(buf, 0, sizeof(buf));
  v31 = _UIArbiterLog();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v32 = 3;
  }

  else
  {
    v32 = 2;
  }

  v33 = NSStringFromSelector(a2);
  v34 = v33;
  v35 = @"NO";
  *v48 = 138544386;
  *&v48[4] = self;
  *&v48[12] = 2114;
  if (keyboardCopy)
  {
    v35 = @"YES";
  }

  *&v48[14] = v33;
  *&v48[22] = 2114;
  v49 = contextCopy;
  v50 = 2114;
  v51 = v30;
  v52 = 2114;
  v53 = v35;
  LODWORD(v47) = 52;
  v36 = _os_log_send_and_compose_impl(v32, 0, buf, 512, &dword_2557BA000, v31, 2, "[%{public}@] %{public}@: remoteSceneIdentity: %{public}@; handle: %{public}@; stealKeyboard: %{public}@", v48, v47);

  v37 = +[_UIKeyboardArbiterDebug sharedInstance];
  v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v37 debugWithMessage:v38];

  if (v36 != buf)
  {
    free(v36);
  }

  if (v30)
  {
    remoteFocusContext = [(_UIKeyboardArbiterClientHandle *)v30 remoteFocusContext];
    sceneIdentity2 = [remoteFocusContext sceneIdentity];

    [(_UIKeyboardArbiterClientHandle *)v30 _reevaluateRemoteFocusContext:contextCopy];
    if (v30 != self)
    {
      if ([(_UIKeyboardArbiterClientHandle *)v30 isAcquiringFocus])
      {
        sceneIdentity3 = [contextCopy sceneIdentity];
        v42 = BSEqualObjects();

        if ((v42 & 1) == 0)
        {
          [(_UIKeyboardArbiter *)self->_owner handlerRequestedForcedClientSceneIdentityUpdate:v30];
        }
      }
    }

    [(_UIKeyboardArbiter *)self->_owner handlerRequestedFocus:v30 shouldStealKeyboard:keyboardCopy];
  }

  if (completionCopy)
  {
    (completionCopy)[2](completionCopy, v30 != 0);
  }

LABEL_41:
}

- (void)setKeyboardTotalDisable:(BOOL)disable withFence:(id)fence completionHandler:(id)handler
{
  disableCopy = disable;
  v62 = *MEMORY[0x277D85DE8];
  fenceCopy = fence;
  handlerCopy = handler;
  v11 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v14 = "N";
    *buf = 138544130;
    *&buf[12] = 1024;
    if (disableCopy)
    {
      v15 = "Y";
    }

    else
    {
      v15 = "N";
    }

    *&buf[4] = bundleIdentifier;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2080;
    if (fenceCopy)
    {
      v14 = "Y";
    }

    *&buf[20] = v15;
    *&buf[28] = 2080;
    *&buf[30] = v14;
    _os_log_impl(&dword_2557BA000, v11, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) setKeyboardTotalDisable:%s fence:%s", buf, 0x26u);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v33 = 0u;
  memset(buf, 0, sizeof(buf));
  v16 = _UIArbiterLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v17 = 3;
  }

  else
  {
    v17 = 2;
  }

  v18 = NSStringFromSelector(a2);
  v19 = v18;
  v20 = @"NO";
  v24 = 138413058;
  selfCopy = self;
  if (disableCopy)
  {
    v20 = @"YES";
  }

  v26 = 2112;
  v27 = v18;
  v28 = 2112;
  v29 = v20;
  v30 = 2112;
  v31 = fenceCopy;
  v21 = _os_log_send_and_compose_impl(v17, 0, buf, 512, &dword_2557BA000, v16, 2, "[%@] %@: %@ (%@)", &v24, 42);

  v22 = +[_UIKeyboardArbiterDebug sharedInstance];
  v23 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v22 debugWithMessage:v23];

  if (v21 != buf)
  {
    free(v21);
  }

  [(_UIKeyboardArbiter *)self->_owner setKeyboardTotalDisable:disableCopy withFence:fenceCopy fromHandler:self completionHandler:handlerCopy];
}

- (void)signalEventSourceChanged:(int64_t)changed completionHandler:(id)handler
{
  v55 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  v8 = _UIArbiterClientHandleLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    bundleIdentifier = [(_UIKeyboardArbiterClientHandle *)self bundleIdentifier];
    processIdentifier = [(_UIKeyboardArbiterClientHandle *)self processIdentifier];
    v11 = _UITextInputSourceToString();
    *buf = 138543874;
    *&buf[4] = bundleIdentifier;
    *&buf[12] = 1024;
    *&buf[14] = processIdentifier;
    *&buf[18] = 2114;
    *&buf[20] = v11;
    _os_log_impl(&dword_2557BA000, v8, OS_LOG_TYPE_DEFAULT, "RX %{public}@(%d) signalEventSourceChanged:%{public}@", buf, 0x1Cu);
  }

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
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memset(buf, 0, sizeof(buf));
  v12 = _UIArbiterLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = 3;
  }

  else
  {
    v13 = 2;
  }

  v14 = NSStringFromSelector(a2);
  v18 = 138412802;
  selfCopy = self;
  v20 = 2112;
  v21 = v14;
  v22 = 1024;
  changedCopy = changed;
  v15 = _os_log_send_and_compose_impl(v13, 0, buf, 512, &dword_2557BA000, v12, 2, "[%@] %@: %d", &v18, 28);

  v16 = +[_UIKeyboardArbiterDebug sharedInstance];
  v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:buf];
  [v16 debugWithMessage:v17];

  if (v15 != buf)
  {
    free(v15);
  }

  [(_UIKeyboardArbiter *)self->_owner signalEventSourceChanged:changed fromHandler:self completionHandler:handlerCopy];
}

@end