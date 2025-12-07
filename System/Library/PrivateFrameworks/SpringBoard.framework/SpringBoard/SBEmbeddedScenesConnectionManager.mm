@interface SBEmbeddedScenesConnectionManager
- (void)_reevaluateSceneConnection;
- (void)noteMainSceneConnected:(id)connected;
- (void)noteSystemApertureCurtainSceneConnected:(id)connected;
- (void)noteSystemApertureSceneConnected:(id)connected;
@end

@implementation SBEmbeddedScenesConnectionManager

- (void)noteMainSceneConnected:(id)connected
{
  v16 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [SBEmbeddedScenesConnectionManager noteMainSceneConnected:];
  }

  v7 = SBLogStartup(WeakRetained);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    _sceneIdentifier = [connectedCopy _sceneIdentifier];
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    v13 = connectedCopy;
    v14 = 2114;
    v15 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] main scene connected: <%p>:%{public}@", &v10, 0x20u);
  }

  objc_storeWeak(&self->_mainSBWindowScene, connectedCopy);
  [(SBEmbeddedScenesConnectionManager *)self _reevaluateSceneConnection];
}

- (void)noteSystemApertureSceneConnected:(id)connected
{
  v16 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureScene);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [SBEmbeddedScenesConnectionManager noteSystemApertureSceneConnected:];
  }

  v7 = SBLogStartup(WeakRetained);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    _sceneIdentifier = [connectedCopy _sceneIdentifier];
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    v13 = connectedCopy;
    v14 = 2114;
    v15 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] system aperture scene connected: <%p>:%{public}@", &v10, 0x20u);
  }

  objc_storeWeak(&self->_systemApertureScene, connectedCopy);
  [(SBEmbeddedScenesConnectionManager *)self _reevaluateSceneConnection];
}

- (void)noteSystemApertureCurtainSceneConnected:(id)connected
{
  v16 = *MEMORY[0x277D85DE8];
  connectedCopy = connected;
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  WeakRetained = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [SBEmbeddedScenesConnectionManager noteSystemApertureCurtainSceneConnected:];
  }

  v7 = SBLogStartup(WeakRetained);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = _SBFLoggingMethodProem();
    _sceneIdentifier = [connectedCopy _sceneIdentifier];
    v10 = 138543874;
    v11 = v8;
    v12 = 2048;
    v13 = connectedCopy;
    v14 = 2114;
    v15 = _sceneIdentifier;
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] system aperture curtain scene connected: <%p>:%{public}@", &v10, 0x20u);
  }

  objc_storeWeak(&self->_systemApertureCurtainScene, connectedCopy);
  [(SBEmbeddedScenesConnectionManager *)self _reevaluateSceneConnection];
}

- (void)_reevaluateSceneConnection
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(&self->_mainSBWindowScene);
  v4 = objc_loadWeakRetained(&self->_systemApertureScene);
  v5 = objc_loadWeakRetained(&self->_systemApertureCurtainScene);
  v6 = SBSIsSystemApertureAvailable();
  if (v6)
  {
    v7 = SBLogStartup(v6);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (WeakRetained && v4 && v5)
    {
      if (v8)
      {
        v9 = _SBFLoggingMethodProem();
        v18 = 138543362;
        v19 = v9;
        v10 = "[%{public}@] all embedded scenes are connected, ready to complete startup";
LABEL_10:
        _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v10, &v18, 0xCu);

        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if (!v8)
    {
      goto LABEL_22;
    }

    v16 = _SBFLoggingMethodProem();
    v18 = 138543362;
    v19 = v16;
    v17 = "[%{public}@] still waiting for scenes to connect";
LABEL_21:
    _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_DEFAULT, v17, &v18, 0xCu);

    goto LABEL_22;
  }

  v7 = SBLogStartup(v6);
  v11 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (!WeakRetained)
  {
    if (!v11)
    {
      goto LABEL_22;
    }

    v16 = _SBFLoggingMethodProem();
    v18 = 138543362;
    v19 = v16;
    v17 = "[%{public}@] still waiting for main scene to connect";
    goto LABEL_21;
  }

  if (v11)
  {
    v9 = _SBFLoggingMethodProem();
    v18 = 138543362;
    v19 = v9;
    v10 = "[%{public}@] main scene is connected, ready to complete startup";
    goto LABEL_10;
  }

LABEL_11:

  delegate = [WeakRetained delegate];
  v13 = objc_opt_class();
  v14 = delegate;
  if (v13)
  {
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v7 = v15;

  [v7 completeStartupAfterAllEmbeddedScenesConnect];
LABEL_22:
}

- (void)noteMainSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [v0 _sceneIdentifier];
  [OUTLINED_FUNCTION_0_19(v1 v2];
}

- (void)noteSystemApertureSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [v0 _sceneIdentifier];
  [OUTLINED_FUNCTION_0_19(v1 v2];
}

- (void)noteSystemApertureCurtainSceneConnected:.cold.1()
{
  OUTLINED_FUNCTION_3_1();
  v8 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [v0 _sceneIdentifier];
  [OUTLINED_FUNCTION_0_19(v1 v2];
}

@end