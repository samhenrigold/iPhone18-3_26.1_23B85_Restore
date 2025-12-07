@interface SBSystemApertureContinuityDelayedUIWindowSceneDelegate
- (void)_initializeUIIfNecessaryForReason:(id)reason;
- (void)_tearDownUIAndInvalidateIfNecessaryForReason:(id)reason;
- (void)continuitySessionDidUpdateState:(id)state;
- (void)didConnectToSession:(id)session;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidDisconnect:(id)disconnect;
@end

@implementation SBSystemApertureContinuityDelayedUIWindowSceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  v35 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  sessionCopy = session;
  v10 = SBSIsSystemApertureAvailable();
  if (v10)
  {
    role = [sessionCopy role];
    v12 = [role isEqualToString:*MEMORY[0x277D68050]];
    v13 = [role isEqualToString:*MEMORY[0x277D68058]];
    v14 = v13;
    if ((v12 & 1) != 0 || v13)
    {
      v15 = @"systemApertureCurtain";
      if (v12)
      {
        v15 = @"systemAperture";
      }

      debugName = self->_debugName;
      self->_debugName = &v15->isa;
    }

    v17 = SBLogContinuityDisplay(v13);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = self->_debugName;
      *buf = 134218242;
      v32 = sceneCopy;
      v33 = 2114;
      v34 = v18;
      _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "System Aperture Scene <%p>:%{public}@ willConnectToSession", buf, 0x16u);
    }

    if (v12)
    {
      v19 = objc_opt_class();
      v20 = sceneCopy;
      if (v19)
      {
        if (objc_opt_isKindOfClass())
        {
          v19 = v20;
        }

        else
        {
          v19 = 0;
        }
      }

      v21 = v19;

      if (!v21)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate scene:willConnectToSession:options:];
      }

      objc_storeStrong(&self->_systemApertureContinuityWindowScene, v19);
      windowScene = self->_windowScene;
      self->_windowScene = v21;
      v23 = v21;

      currentHandler = +[SBContinuitySessionManager sharedInstance];
      v25 = [currentHandler registerSystemApertureWindowScene:v23];
    }

    else
    {
      if (!v14)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:76 description:{@"unexpected role for SBSystemApertureContinuityWindowSceneDelegate: %@", role}];
        goto LABEL_29;
      }

      v26 = objc_opt_class();
      v27 = sceneCopy;
      if (v26)
      {
        if (objc_opt_isKindOfClass())
        {
          v26 = v27;
        }

        else
        {
          v26 = 0;
        }
      }

      v28 = v26;

      if (!v28)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate scene:willConnectToSession:options:];
      }

      objc_storeStrong(&self->_systemApertureContinuityCurtainWindowScene, v26);
      v29 = self->_windowScene;
      self->_windowScene = v28;
      v23 = v28;

      currentHandler = +[SBContinuitySessionManager sharedInstance];
      v25 = [currentHandler registerSystemApertureCurtainWindowScene:v23];
    }

    continuitySessionManagerRegistration = self->_continuitySessionManagerRegistration;
    self->_continuitySessionManagerRegistration = v25;

LABEL_29:
    goto LABEL_30;
  }

  role = SBLogContinuityDisplay(v10);
  if (os_log_type_enabled(role, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_21ED4E000, role, OS_LOG_TYPE_DEFAULT, "Ignoring Jindo continuity scene on non-jindo phone, plz stop sending them to me 125755442", buf, 2u);
  }

LABEL_30:
}

- (void)sceneDidDisconnect:(id)disconnect
{
  v15 = *MEMORY[0x277D85DE8];
  disconnectCopy = disconnect;
  v5 = SBLogContinuityDisplay(disconnectCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    debugName = self->_debugName;
    v11 = 134218242;
    v12 = disconnectCopy;
    v13 = 2114;
    v14 = debugName;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "System Aperture Scene <%p>:%{public}@ didDisconnect", &v11, 0x16u);
  }

  [(BSInvalidatable *)self->_continuitySessionManagerRegistration invalidate];
  continuitySessionManagerRegistration = self->_continuitySessionManagerRegistration;
  self->_continuitySessionManagerRegistration = 0;

  [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self _tearDownUIAndInvalidateIfNecessaryForReason:@"scene disconnected"];
  windowScene = self->_windowScene;
  self->_windowScene = 0;

  systemApertureContinuityWindowScene = self->_systemApertureContinuityWindowScene;
  self->_systemApertureContinuityWindowScene = 0;

  systemApertureContinuityCurtainWindowScene = self->_systemApertureContinuityCurtainWindowScene;
  self->_systemApertureContinuityCurtainWindowScene = 0;
}

- (void)didConnectToSession:(id)session
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v6 = sessionCopy;
  if (self->_continuitySession)
  {
    [SBSystemApertureContinuityDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  v7 = SBLogContinuityDisplay(sessionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    windowScene = self->_windowScene;
    debugName = self->_debugName;
    v12 = 134218754;
    v13 = windowScene;
    v14 = 2114;
    v15 = debugName;
    v16 = 2048;
    v17 = v6;
    v18 = 2112;
    v19 = v6;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "System aperture scene <%p>:%{public}@ connected to session: <%p>:%@", &v12, 0x2Au);
  }

  objc_storeStrong(&self->_continuitySession, session);
  [v6 addStateObserver:self];
  _FBSScene = [(UIWindowScene *)self->_windowScene _FBSScene];
  continuitySessionParticipantClientComponent = [_FBSScene continuitySessionParticipantClientComponent];

  if (!continuitySessionParticipantClientComponent)
  {
    [SBSystemApertureContinuityDelayedUIWindowSceneDelegate didConnectToSession:];
  }

  [continuitySessionParticipantClientComponent setContinuitySession:v6];
  [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self continuitySessionDidUpdateState:v6];
}

- (void)continuitySessionDidUpdateState:(id)state
{
  stateCopy = state;
  if (self->_continuitySession != stateCopy)
  {
    [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self continuitySessionDidUpdateState:a2, stateCopy];
  }

  state = [(SBContinuitySession *)stateCopy state];
  if (state <= 6)
  {
    if (state > 3)
    {
      if (state == 4)
      {
        if (self->_initializedUI)
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }
      }

      else if (state == 5)
      {
        if (self->_initializedUI)
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }
      }

      else if (self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (state == 1)
    {
      if (self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (state == 2)
    {
      if (self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }
    }

    else if (state == 3 && self->_initializedUI)
    {
      [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
    }

    goto LABEL_49;
  }

  if (state <= 9)
  {
    if (state != 7)
    {
      if (state == 8)
      {
        if (!self->_initializedUI)
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }
      }

      else if (!self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }

      goto LABEL_49;
    }

    reasons = [(SBContinuitySession *)stateCopy reasons];
    v8 = reasons;
    if (self->_systemApertureContinuityWindowScene)
    {
      v9 = objc_msgSend_containsObject_(reasons);
      if (v9)
      {
        v10 = SBLogContinuitySession(v9);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }

LABEL_45:

LABEL_48:
        goto LABEL_49;
      }
    }

    else
    {
      if (!self->_systemApertureContinuityCurtainWindowScene)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:167 description:@"What kind of system aperture scene is this??"];

        goto LABEL_48;
      }

      v11 = objc_msgSend_containsObject_(reasons);
      if (v11)
      {
        v10 = SBLogContinuitySession(v11);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
        }

        goto LABEL_45;
      }
    }

    [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self _initializeUIIfNecessaryForReason:@"session state .activating"];
    goto LABEL_48;
  }

  switch(state)
  {
    case 10:
      if (!self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }

      break;
    case 11:
      if (!self->_initializedUI)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate continuitySessionDidUpdateState:];
      }

      break;
    case 12:
      [(SBSystemApertureContinuityDelayedUIWindowSceneDelegate *)self _tearDownUIAndInvalidateIfNecessaryForReason:@"session state is .invalid"];
      break;
  }

LABEL_49:
}

- (void)_initializeUIIfNecessaryForReason:(id)reason
{
  v32 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v6 = SBLogContinuitySession(reasonCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    windowScene = self->_windowScene;
    debugName = self->_debugName;
    v26 = 134218498;
    v27 = windowScene;
    v28 = 2114;
    v29 = debugName;
    v30 = 2114;
    v31 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "System aperture scene <%p>:%{public}@ initializing UI if necessary - %{public}@", &v26, 0x20u);
  }

  if (self->_initializedUI)
  {
    v10 = SBLogContinuitySession(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "--> already initialized UI", &v26, 2u);
    }
  }

  else
  {
    state = [(SBContinuitySession *)self->_continuitySession state];
    v12 = SBLogContinuitySession(state);
    v10 = v12;
    if (state == 7)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _initializeUIIfNecessaryForReason:];
      }

      v14 = SBLogContinuitySession(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _initializeUIIfNecessaryForReason:];
      }

      mainWindowScene = [(SBContinuitySession *)self->_continuitySession mainWindowScene];
      v10 = mainWindowScene;
      if (!mainWindowScene)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _initializeUIIfNecessaryForReason:];
      }

      v16 = SBLogContinuitySession(mainWindowScene);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        _sceneIdentifier = [v10 _sceneIdentifier];
        v26 = 134218242;
        v27 = v10;
        v28 = 2114;
        v29 = _sceneIdentifier;
        _os_log_impl(&dword_21ED4E000, v16, OS_LOG_TYPE_DEFAULT, "--> associated main window scene is <%p>:%{public}@", &v26, 0x16u);
      }

      systemApertureController = [v10 systemApertureController];
      if (!systemApertureController)
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _initializeUIIfNecessaryForReason:];
      }

      systemApertureContinuityWindowScene = self->_systemApertureContinuityWindowScene;
      if (systemApertureContinuityWindowScene)
      {
        [(SBAccessoryWindowScene *)systemApertureContinuityWindowScene setAssociatedWindowScene:v10];
        [systemApertureController highLevelContinuitySystemApertureWindowSceneDidConnect:self->_systemApertureContinuityWindowScene];
        [(SBContinuitySession *)self->_continuitySession noteSystemApertureUIIsReady:self->_systemApertureContinuityWindowScene];
      }

      else
      {
        systemApertureContinuityCurtainWindowScene = self->_systemApertureContinuityCurtainWindowScene;
        if (systemApertureContinuityCurtainWindowScene)
        {
          [(SBAccessoryWindowScene *)systemApertureContinuityCurtainWindowScene setAssociatedWindowScene:v10];
          [systemApertureController superHighLevelContinuityCurtainWindowSceneDidConnect:self->_systemApertureContinuityCurtainWindowScene];
          [(SBContinuitySession *)self->_continuitySession noteSystemApertureCurtainUIIsReady:self->_systemApertureContinuityCurtainWindowScene];
        }

        else
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:223 description:@"What kind of system aperture scene is this??"];
        }
      }

      self->_initializedUI = 1;
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v20 = self->_windowScene;
      v21 = self->_debugName;
      continuitySession = self->_continuitySession;
      if (continuitySession)
      {
        v23 = NSStringFromSBContinuitySessionState(state);
      }

      else
      {
        v23 = @".unknown because we don't have a session yet!";
      }

      v26 = 134218498;
      v27 = v20;
      v28 = 2114;
      v29 = v21;
      v30 = 2114;
      v31 = v23;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "<%p>:%{public}@ refuses to initialize UI because the session state is %{public}@", &v26, 0x20u);
      if (continuitySession)
      {
      }
    }
  }
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:(id)reason
{
  v28 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v6 = SBLogContinuitySession(reasonCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    windowScene = self->_windowScene;
    debugName = self->_debugName;
    v22 = 134218498;
    v23 = windowScene;
    v24 = 2114;
    v25 = debugName;
    v26 = 2114;
    v27 = reasonCopy;
    _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "System aperture scene <%p>:%{public}@ tear down UI and invalidate if necessary - %{public}@", &v22, 0x20u);
  }

  if (!self->_invalidated)
  {
    [(SBContinuitySession *)self->_continuitySession removeStateObserver:self];
    continuitySession = self->_continuitySession;
    self->_continuitySession = 0;

    initializedUI = self->_initializedUI;
    associatedWindowScene = SBLogContinuitySession(v13);
    v15 = os_log_type_enabled(associatedWindowScene, OS_LOG_TYPE_DEFAULT);
    if (!initializedUI)
    {
      if (v15)
      {
        LOWORD(v22) = 0;
        _os_log_impl(&dword_21ED4E000, associatedWindowScene, OS_LOG_TYPE_DEFAULT, "--> never initialized UI", &v22, 2u);
      }

      goto LABEL_21;
    }

    if (v15)
    {
      LOWORD(v22) = 0;
      _os_log_impl(&dword_21ED4E000, associatedWindowScene, OS_LOG_TYPE_DEFAULT, "--> tearing down UI now...", &v22, 2u);
    }

    systemApertureContinuityWindowScene = self->_systemApertureContinuityWindowScene;
    if (systemApertureContinuityWindowScene)
    {
      associatedWindowScene = [(SBAccessoryWindowScene *)systemApertureContinuityWindowScene associatedWindowScene];
      systemApertureController = [associatedWindowScene systemApertureController];
      v18 = systemApertureController;
      if (associatedWindowScene)
      {
        if (systemApertureController)
        {
LABEL_13:
          [v18 highLevelContinuitySystemApertureWindowSceneDidDisconnect:self->_systemApertureContinuityWindowScene];
          v19 = self->_systemApertureContinuityWindowScene;
          self->_systemApertureContinuityWindowScene = 0;
LABEL_20:

LABEL_21:
          self->_invalidated = 1;
          goto LABEL_22;
        }
      }

      else
      {
        [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
        if (v18)
        {
          goto LABEL_13;
        }
      }

      [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
      goto LABEL_13;
    }

    systemApertureContinuityCurtainWindowScene = self->_systemApertureContinuityCurtainWindowScene;
    if (!systemApertureContinuityCurtainWindowScene)
    {
      associatedWindowScene = [MEMORY[0x277CCA890] currentHandler];
      [associatedWindowScene handleFailureInMethod:a2 object:self file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:274 description:@"What kind of system aperture scene is this??"];
      goto LABEL_21;
    }

    associatedWindowScene = [(SBAccessoryWindowScene *)systemApertureContinuityCurtainWindowScene associatedWindowScene];
    systemApertureController2 = [associatedWindowScene systemApertureController];
    v18 = systemApertureController2;
    if (associatedWindowScene)
    {
      if (systemApertureController2)
      {
LABEL_19:
        [v18 superHighLevelContinuityCurtainWindowSceneDidDisconnect:self->_systemApertureContinuityCurtainWindowScene];
        v19 = self->_systemApertureContinuityCurtainWindowScene;
        self->_systemApertureContinuityCurtainWindowScene = 0;
        goto LABEL_20;
      }
    }

    else
    {
      [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
      if (v18)
      {
        goto LABEL_19;
      }
    }

    [SBSystemApertureContinuityDelayedUIWindowSceneDelegate _tearDownUIAndInvalidateIfNecessaryForReason:];
    goto LABEL_19;
  }

  v10 = SBLogContinuitySession(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v22) = 0;
    _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "--> already invalidated", &v22, 2u);
  }

LABEL_22:
}

- (void)scene:willConnectToSession:options:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)scene:willConnectToSession:options:.cold.2()
{
  OUTLINED_FUNCTION_3_1();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:v2 object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)didConnectToSession:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:(uint64_t)a3 .cold.1(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  [v8 handleFailureInMethod:a3 object:a1 file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:121 description:{@"System aperture scene <%p>:%@ state update for session <%p> is not the one i'm tracking <%p>", *(a1 + 24), *(a1 + 56), a4, *a2}];
}

- (void)continuitySessionDidUpdateState:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.5()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.6()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)continuitySessionDidUpdateState:.cold.7()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_11();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)continuitySessionDidUpdateState:.cold.8()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.9()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.10()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.11()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.12()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)continuitySessionDidUpdateState:.cold.13()
{
  OUTLINED_FUNCTION_1_2();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_0_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_initializeUIIfNecessaryForReason:.cold.3()
{
  OUTLINED_FUNCTION_3_1();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v3 = *v0;
  OUTLINED_FUNCTION_0_3();
  [v2 handleFailureInMethod:v3 object:? file:? lineNumber:? description:?];
}

- (void)_initializeUIIfNecessaryForReason:.cold.4()
{
  OUTLINED_FUNCTION_3_1();
  v3 = [MEMORY[0x277CCA890] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"SBSystemApertureContinuityDelayedUIWindowSceneDelegate.m" lineNumber:211 description:{@"Couldn't find the system aperture controller for the continuity display's main scene <%p>", v0}];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.1()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_5_7();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.2()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_5_7();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.3()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_5_7();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_tearDownUIAndInvalidateIfNecessaryForReason:.cold.4()
{
  OUTLINED_FUNCTION_1_2();
  [MEMORY[0x277CCA890] currentHandler];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_0_36();
  OUTLINED_FUNCTION_5_7();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end