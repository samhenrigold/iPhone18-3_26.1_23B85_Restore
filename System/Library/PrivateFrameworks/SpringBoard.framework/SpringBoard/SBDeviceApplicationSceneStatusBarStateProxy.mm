@interface SBDeviceApplicationSceneStatusBarStateProxy
- (BOOL)_statusBarAppearsOutsideOfAJailedApp;
- (BOOL)_statusBarHiddenGivenFallbackOrientation:(int64_t)orientation;
- (BOOL)sceneWantsDeviceOrientationEventsEnabled;
- (CGRect)statusBarAvoidanceFrame;
- (SBDeviceApplicationSceneStatusBarStateProxy)initWithDeviceApplicationSceneHandle:(id)handle;
- (double)_statusBarAlpha;
- (id)_statusBarPartStyles;
- (id)backgroundActivitiesToSuppress;
- (id)breadcrumbProvider;
- (id)classicApplicationSceneHandleIfExists;
- (id)overlayStatusBarData;
- (id)sceneToHandleStatusBarTapIfExists;
- (id)statusBarSceneIdentifier;
- (int64_t)_defaultStatusBarStyle;
- (int64_t)_fallbackInterfaceOrientation;
- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)orientation;
- (int64_t)_statusBarStyle;
- (int64_t)_statusBarStyleForPartWithIdentifier:(id)identifier suppressingInherited:(BOOL)inherited;
- (void)didInvalidateStatusBarDescriptionForSceneWithIdentifier:(id)identifier;
- (void)invalidateStatusBarSettings;
- (void)sceneWithIdentifier:(id)identifier didChangeBackgroundActivitiesToSuppressTo:(id)to;
- (void)sceneWithIdentifier:(id)identifier didChangeSceneInterfaceOrientationTo:(int64_t)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAlphaTo:(double)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAvoidanceFrameTo:(CGRect)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarHiddenTo:(BOOL)to withAnimation:(int64_t)animation;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarOrientationTo:(int64_t)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to;
- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to forPartWithIdentifier:(id)withIdentifier;
@end

@implementation SBDeviceApplicationSceneStatusBarStateProxy

- (void)invalidateStatusBarSettings
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  [WeakRetained invalidateStatusBarSettings];
}

- (id)statusBarSceneIdentifier
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  statusBarSceneIdentifier = [WeakRetained statusBarSceneIdentifier];

  return statusBarSceneIdentifier;
}

- (BOOL)_statusBarAppearsOutsideOfAJailedApp
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  _statusBarAppearsOutsideOfAJailedApp = [WeakRetained _statusBarAppearsOutsideOfAJailedApp];

  return _statusBarAppearsOutsideOfAJailedApp;
}

- (id)backgroundActivitiesToSuppress
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  backgroundActivitiesToSuppress = [WeakRetained backgroundActivitiesToSuppress];

  return backgroundActivitiesToSuppress;
}

- (int64_t)_statusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  _statusBarStyle = [WeakRetained _statusBarStyle];

  return _statusBarStyle;
}

- (CGRect)statusBarAvoidanceFrame
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  [WeakRetained statusBarAvoidanceFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (SBDeviceApplicationSceneStatusBarStateProxy)initWithDeviceApplicationSceneHandle:(id)handle
{
  handleCopy = handle;
  v9.receiver = self;
  v9.super_class = SBDeviceApplicationSceneStatusBarStateProxy;
  v5 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_deviceApplicationSceneHandle, handleCopy);
    statusBarStateProvider = [handleCopy statusBarStateProvider];
    objc_storeWeak(&v6->_stateProvider, statusBarStateProvider);
    [statusBarStateProvider addStatusBarObserver:v6];
  }

  return v6;
}

- (id)_statusBarPartStyles
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  _statusBarPartStyles = [WeakRetained _statusBarPartStyles];

  return _statusBarPartStyles;
}

- (int64_t)_statusBarStyleForPartWithIdentifier:(id)identifier suppressingInherited:(BOOL)inherited
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  v7 = [WeakRetained _statusBarStyleForPartWithIdentifier:identifierCopy suppressingInherited:{-[SBDeviceApplicationSceneStatusBarStateProxy _suppressInheritedPartStyles](self, "_suppressInheritedPartStyles")}];

  return v7;
}

- (double)_statusBarAlpha
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  [WeakRetained _statusBarAlpha];
  v4 = v3;

  return v4;
}

- (BOOL)_statusBarHiddenGivenFallbackOrientation:(int64_t)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  LOBYTE(orientation) = [WeakRetained _statusBarHiddenGivenFallbackOrientation:orientation];

  return orientation;
}

- (int64_t)_statusBarOrientationGivenFallbackOrientation:(int64_t)orientation
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  v5 = [WeakRetained _statusBarOrientationGivenFallbackOrientation:orientation];

  return v5;
}

- (BOOL)sceneWantsDeviceOrientationEventsEnabled
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  sceneWantsDeviceOrientationEventsEnabled = [WeakRetained sceneWantsDeviceOrientationEventsEnabled];

  return sceneWantsDeviceOrientationEventsEnabled;
}

- (id)overlayStatusBarData
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  overlayStatusBarData = [WeakRetained overlayStatusBarData];

  return overlayStatusBarData;
}

- (id)breadcrumbProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  breadcrumbProvider = [WeakRetained breadcrumbProvider];

  return breadcrumbProvider;
}

- (id)classicApplicationSceneHandleIfExists
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  classicApplicationSceneHandleIfExists = [WeakRetained classicApplicationSceneHandleIfExists];

  return classicApplicationSceneHandleIfExists;
}

- (id)sceneToHandleStatusBarTapIfExists
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  sceneToHandleStatusBarTapIfExists = [WeakRetained sceneToHandleStatusBarTapIfExists];

  return sceneToHandleStatusBarTapIfExists;
}

- (int64_t)_fallbackInterfaceOrientation
{
  WeakRetained = objc_loadWeakRetained(&self->_deviceApplicationSceneHandle);
  defaultInterfaceOrientation = [WeakRetained defaultInterfaceOrientation];

  return defaultInterfaceOrientation;
}

- (int64_t)_defaultStatusBarStyle
{
  WeakRetained = objc_loadWeakRetained(&self->_stateProvider);
  _defaultStatusBarStyle = [WeakRetained _defaultStatusBarStyle];

  return _defaultStatusBarStyle;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  statusBarStyle = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarStyle];
  v8 = statusBarStyle;
  if (statusBarStyle != to)
  {
    v9 = SBLogAppStatusBars(statusBarStyle);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = _SBStringFromStatusBarStyle(v8);
      v13 = _SBStringFromStatusBarStyle(to);
      *buf = 138413058;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden style %@ (was provided %@)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarStyleTo_])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __93__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarStyleTo___block_invoke;
    v14[3] = &unk_2783AC878;
    v15 = identifierCopy;
    v16 = v8;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v14];
  }
}

void *__93__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarStyleTo___block_invoke(void *result, void *a2, char a3)
{
  if (a3)
  {
    return [a2 sceneWithIdentifier:result[4] didChangeStatusBarStyleTo:result[5]];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarStyleTo:(int64_t)to forPartWithIdentifier:(id)withIdentifier
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  withIdentifierCopy = withIdentifier;
  v10 = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarStyleForPartWithIdentifier:withIdentifierCopy];
  v11 = v10;
  if (v10 != to)
  {
    v12 = SBLogAppStatusBars(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = v13;
      v15 = _SBStringFromStatusBarStyle(v11);
      v16 = _SBStringFromStatusBarStyle(to);
      *buf = 138413314;
      v22 = identifierCopy;
      v23 = 2112;
      v24 = v13;
      v25 = 2112;
      v26 = v15;
      v27 = 2112;
      v28 = withIdentifierCopy;
      v29 = 2112;
      v30 = v16;
      _os_log_debug_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden style %@ for %@ (was provided %@)", buf, 0x34u);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarStyleTo_forPartWithIdentifier_])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __115__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarStyleTo_forPartWithIdentifier___block_invoke;
    v17[3] = &unk_2783BD2C0;
    v18 = identifierCopy;
    v20 = v11;
    v19 = withIdentifierCopy;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v17];
  }
}

void *__115__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarStyleTo_forPartWithIdentifier___block_invoke(void *result, void *a2, char a3)
{
  if ((a3 & 2) != 0)
  {
    return [a2 sceneWithIdentifier:result[4] didChangeStatusBarStyleTo:result[6] forPartWithIdentifier:result[5]];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAlphaTo:(double)to
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  statusBarAlpha = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarAlpha];
  v9 = v8;
  if (v8 != to)
  {
    v10 = SBLogAppStatusBars(statusBarAlpha);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v16 = identifierCopy;
      v17 = 2112;
      v18 = objc_opt_class();
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      toCopy = to;
      v11 = v18;
      _os_log_debug_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden alpha %1.1f (was provided %1.1f)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarAlphaTo_])
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarAlphaTo___block_invoke;
    v12[3] = &unk_2783AC878;
    v13 = identifierCopy;
    v14 = v9;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v12];
  }
}

double *__93__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarAlphaTo___block_invoke(double *result, void *a2, char a3)
{
  if ((a3 & 4) != 0)
  {
    return [a2 sceneWithIdentifier:*(result + 4) didChangeStatusBarAlphaTo:result[5]];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarHiddenTo:(BOOL)to withAnimation:(int64_t)animation
{
  toCopy = to;
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  statusBarHidden = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarHidden];
  v10 = statusBarHidden;
  if (statusBarHidden != toCopy)
  {
    v11 = SBLogAppStatusBars(statusBarHidden);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = objc_opt_class();
      v21 = 1024;
      v22 = v10;
      v23 = 1024;
      v24 = toCopy;
      v12 = v20;
      _os_log_debug_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden hidden %{BOOL}u (was provided %{BOOL}u)", buf, 0x22u);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarHiddenTo_withAnimation_])
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __108__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarHiddenTo_withAnimation___block_invoke;
    v13[3] = &unk_2783AC8F0;
    v16 = v10;
    v14 = identifierCopy;
    animationCopy = animation;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v13];
  }
}

void *__108__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarHiddenTo_withAnimation___block_invoke(void *result, void *a2, char a3)
{
  if ((a3 & 8) != 0)
  {
    return [a2 sceneWithIdentifier:result[4] didChangeStatusBarHiddenTo:*(result + 48) withAnimation:result[5]];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarOrientationTo:(int64_t)to
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  statusBarOrientation = [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self statusBarOrientation];
  v8 = statusBarOrientation;
  if (statusBarOrientation != to)
  {
    v9 = SBLogAppStatusBars(statusBarOrientation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = BSInterfaceOrientationDescription();
      v13 = BSInterfaceOrientationDescription();
      *buf = 138413058;
      v18 = identifierCopy;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v13;
      _os_log_debug_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden orientation %@ (was provided %@)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarOrientationTo_])
  {
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __99__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarOrientationTo___block_invoke;
    v14[3] = &unk_2783AC878;
    v15 = identifierCopy;
    v16 = v8;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v14];
  }
}

void *__99__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarOrientationTo___block_invoke(void *result, void *a2, char a3)
{
  if ((a3 & 0x10) != 0)
  {
    return [a2 sceneWithIdentifier:result[4] didChangeStatusBarOrientationTo:result[5]];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeBackgroundActivitiesToSuppressTo:(id)to
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  toCopy = to;
  backgroundActivitiesToSuppress = [(SBDeviceApplicationSceneStatusBarStateProxy *)self backgroundActivitiesToSuppress];
  v9 = BSEqualSets();
  if ((v9 & 1) == 0)
  {
    v10 = SBLogAppStatusBars(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = STBackgroundActivityIdentifiersDescription();
      v14 = STBackgroundActivityIdentifiersDescription();
      *buf = 138413058;
      v19 = identifierCopy;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_debug_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden backgroundActivitiesToSuppress %@ (was provided %@)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeBackgroundActivitiesToSuppressTo_])
  {
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __109__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeBackgroundActivitiesToSuppressTo___block_invoke;
    v15[3] = &unk_2783AC968;
    v16 = identifierCopy;
    v17 = toCopy;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v15];
  }
}

void *__109__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeBackgroundActivitiesToSuppressTo___block_invoke(void *result, void *a2, char a3)
{
  if ((a3 & 0x40) != 0)
  {
    return [a2 sceneWithIdentifier:result[4] didChangeBackgroundActivitiesToSuppressTo:result[5]];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeStatusBarAvoidanceFrameTo:(CGRect)to
{
  height = to.size.height;
  width = to.size.width;
  y = to.origin.y;
  x = to.origin.x;
  v34 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(SBDeviceApplicationSceneStatusBarStateProxy *)self statusBarAvoidanceFrame];
  v10 = v35.origin.x;
  v11 = v35.origin.y;
  v12 = v35.size.width;
  v13 = v35.size.height;
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v14 = CGRectEqualToRect(v35, v38);
  if (!v14)
  {
    v15 = SBLogAppStatusBars(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v36.origin.x = v10;
      v36.origin.y = v11;
      v36.size.width = v12;
      v36.size.height = v13;
      v18 = NSStringFromCGRect(v36);
      v37.origin.x = x;
      v37.origin.y = y;
      v37.size.width = width;
      v37.size.height = height;
      v19 = NSStringFromCGRect(v37);
      *buf = 138413058;
      v27 = identifierCopy;
      v28 = 2112;
      v29 = v16;
      v30 = 2112;
      v31 = v18;
      v32 = 2112;
      v33 = v19;
      _os_log_debug_impl(&dword_21ED4E000, v15, OS_LOG_TYPE_DEBUG, "(%@) %@ Using our overridden statusBarAvoidanceFrame %@ (was provided %@)", buf, 0x2Au);
    }
  }

  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeStatusBarAvoidanceFrameTo_])
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __102__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarAvoidanceFrameTo___block_invoke;
    v20[3] = &unk_2783AC940;
    v21 = identifierCopy;
    v22 = x;
    v23 = y;
    v24 = width;
    v25 = height;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v20];
  }
}

double *__102__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeStatusBarAvoidanceFrameTo___block_invoke(double *result, void *a2, char a3)
{
  if (a3 < 0)
  {
    return [a2 sceneWithIdentifier:*(result + 4) didChangeStatusBarAvoidanceFrameTo:{result[5], result[6], result[7], result[8]}];
  }

  return result;
}

- (void)didInvalidateStatusBarDescriptionForSceneWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_didInvalidateStatusBarDescriptionForSceneWithIdentifier_])
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __103__SBDeviceApplicationSceneStatusBarStateProxy_didInvalidateStatusBarDescriptionForSceneWithIdentifier___block_invoke;
    v5[3] = &unk_2783AC850;
    v6 = identifierCopy;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v5];
  }
}

void *__103__SBDeviceApplicationSceneStatusBarStateProxy_didInvalidateStatusBarDescriptionForSceneWithIdentifier___block_invoke(void *result, void *a2, char a3)
{
  if ((a3 & 0x20) != 0)
  {
    return [a2 didInvalidateStatusBarDescriptionForSceneWithIdentifier:result[4]];
  }

  return result;
}

- (void)sceneWithIdentifier:(id)identifier didChangeSceneInterfaceOrientationTo:(int64_t)to
{
  identifierCopy = identifier;
  if ([(SBDeviceApplicationSceneStatusBarStateProxy *)self _anyObserverWants:sel_sceneWithIdentifier_didChangeSceneInterfaceOrientationTo_])
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __104__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeSceneInterfaceOrientationTo___block_invoke;
    v7[3] = &unk_2783AC878;
    v8 = identifierCopy;
    toCopy = to;
    [(SBDeviceApplicationSceneStatusBarStateProvider_Base *)self enumerateObserversWithBlock:v7];
  }
}

void *__104__SBDeviceApplicationSceneStatusBarStateProxy_sceneWithIdentifier_didChangeSceneInterfaceOrientationTo___block_invoke(void *result, void *a2, __int16 a3)
{
  if ((a3 & 0x100) != 0)
  {
    return [a2 sceneWithIdentifier:result[4] didChangeSceneInterfaceOrientationTo:result[5]];
  }

  return result;
}

@end