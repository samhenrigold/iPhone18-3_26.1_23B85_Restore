@interface _UISceneInterfaceProtectionHostComponent
- (BOOL)extensionShieldCurrentlyShown;
- (NSString)debugDescription;
- (id)shieldView;
- (id)succinctDescription;
- (void)_setUnderAppProtection:(void *)protection;
- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription;
- (void)appendDescriptionToStream:(id)stream;
- (void)configureSelfMonitoringWithConfiguration:(id)configuration;
- (void)dealloc;
- (void)isUnderAppProtection;
- (void)presentAppProtectionShieldView;
- (void)removeAppProtectionShieldView;
- (void)requestAppProtectionAuthIfNecessary;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneDidInvalidate:(id)invalidate;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)setAPExtension:(id)extension;
- (void)setAppIconBundleIdentifier:(id)identifier;
- (void)setExtensionShieldCurrentlyShown:(BOOL)shown;
- (void)setLocalizedName:(id)name;
- (void)setScene:(id)scene;
- (void)setShieldParentView:(id)view;
- (void)setUnderAppProtection:(BOOL)protection;
- (void)shieldViewUnlockButtonPressed:(id)pressed;
- (void)updateSettings:(void *)settings;
@end

@implementation _UISceneInterfaceProtectionHostComponent

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UISceneDidEnterBackgroundNotification" object:0];
  [defaultCenter removeObserver:self name:@"UISceneWillEnterForegroundNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UISceneInterfaceProtectionHostComponent;
  [(_UISceneInterfaceProtectionHostComponent *)&v4 dealloc];
}

- (void)updateSettings:(void *)settings
{
  if (settings)
  {
    v3 = a2;
    hostScene = [settings hostScene];
    [hostScene updateSettings:v3];
  }
}

- (void)setScene:(id)scene
{
  v7.receiver = self;
  v7.super_class = _UISceneInterfaceProtectionHostComponent;
  [(FBSSceneComponent *)&v7 setScene:scene];
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  transientLocalSettings = [settings transientLocalSettings];
  v6 = [transientLocalSettings flagForSetting:20230216];

  if (v6 == 1)
  {
    [(_UISceneInterfaceProtectionHostComponent *)self setUnderAppProtection:1];
  }
}

- (void)sceneDidInvalidate:(id)invalidate
{
  [(BSInvalidatable *)self->_sheetDisconnectionAssertion invalidate];
  sheetDisconnectionAssertion = self->_sheetDisconnectionAssertion;
  self->_sheetDisconnectionAssertion = 0;
}

- (void)isUnderAppProtection
{
  if (result)
  {
    settings = [(_UISceneInterfaceProtectionClientComponent *)result settings];
    underAppProtection = [settings underAppProtection];

    return underAppProtection;
  }

  return result;
}

- (void)setUnderAppProtection:(BOOL)protection
{
  v17 = *MEMORY[0x1E69E9840];
  if ((*&self->_flags & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"The underAppProtection setting is managed automatically when self monitoring has been configured"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *v9 = 138544642;
      *&v9[4] = v6;
      *&v9[12] = 2114;
      *&v9[14] = v8;
      *&v9[22] = 2048;
      selfCopy = self;
      v11 = 2114;
      v12 = @"_UISceneInterfaceProtectionHostComponent.m";
      v13 = 1024;
      v14 = 96;
      v15 = 2114;
      v16 = v5;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, 0x3Au);
    }

    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68780);
  }

  *v9 = MEMORY[0x1E69E9820];
  *&v9[8] = 3221225472;
  *&v9[16] = __67___UISceneInterfaceProtectionHostComponent__setUnderAppProtection___block_invoke;
  selfCopy = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
  LOBYTE(v11) = protection;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v9];
}

- (void)_setUnderAppProtection:(void *)protection
{
  if (protection)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __67___UISceneInterfaceProtectionHostComponent__setUnderAppProtection___block_invoke;
    v2[3] = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
    v3 = a2;
    [(_UISceneInterfaceProtectionHostComponent *)protection updateSettings:v2];
  }
}

- (void)configureSelfMonitoringWithConfiguration:(id)configuration
{
  v65 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if ((*&self->_flags & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"_UISceneInterfaceProtectionHostComponent is already configured for self monitoring"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v14 = NSStringFromSelector(a2);
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138544642;
      *&buf[4] = v14;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v60 = 2114;
      *&v60[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v61 = 1024;
      v62 = 107;
      v63 = 2114;
      v64 = v13;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v17 = v13;
    [v13 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68BD8);
  }

  if (*&self->_flags)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"reentrancy to %s is not allowed", "-[_UISceneInterfaceProtectionHostComponent configureSelfMonitoringWithConfiguration:]"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v19 = NSStringFromSelector(a2);
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138544642;
      *&buf[4] = v19;
      *&buf[12] = 2114;
      *&buf[14] = v21;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v60 = 2114;
      *&v60[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v61 = 1024;
      v62 = 108;
      v63 = 2114;
      v64 = v18;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v22 = v18;
    [v18 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68CD4);
  }

  if ([(_UISceneInterfaceProtectionHostComponent *)self isUnderAppProtection])
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Self monitoring can not be configured after underAppProtection has been manually set"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v24 = NSStringFromSelector(a2);
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138544642;
      *&buf[4] = v24;
      *&buf[12] = 2114;
      *&buf[14] = v26;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v60 = 2114;
      *&v60[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v61 = 1024;
      v62 = 109;
      v63 = 2114;
      v64 = v23;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v27 = v23;
    [v23 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68DC4);
  }

  *&self->_flags |= 1u;
  configurationCopy[2](configurationCopy, self);
  if (!self->_apExtension)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_apExtension"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v29 = NSStringFromSelector(a2);
      v30 = objc_opt_class();
      v31 = NSStringFromClass(v30);
      *buf = 138544642;
      *&buf[4] = v29;
      *&buf[12] = 2114;
      *&buf[14] = v31;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v60 = 2114;
      *&v60[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v61 = 1024;
      v62 = 112;
      v63 = 2114;
      v64 = v28;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v32 = v28;
    [v28 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68EC0);
  }

  if (!self->_appIconBundleIdentifier)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_appIconBundleIdentifier"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v34 = NSStringFromSelector(a2);
      v35 = objc_opt_class();
      v36 = NSStringFromClass(v35);
      *buf = 138544642;
      *&buf[4] = v34;
      *&buf[12] = 2114;
      *&buf[14] = v36;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v60 = 2114;
      *&v60[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v61 = 1024;
      v62 = 113;
      v63 = 2114;
      v64 = v33;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v37 = v33;
    [v33 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F68FBCLL);
  }

  if (!self->_shieldParentView)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"_shieldParentView"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(a2);
      v40 = objc_opt_class();
      v41 = NSStringFromClass(v40);
      *buf = 138544642;
      *&buf[4] = v39;
      *&buf[12] = 2114;
      *&buf[14] = v41;
      *&buf[22] = 2048;
      selfCopy8 = self;
      *v60 = 2114;
      *&v60[2] = @"_UISceneInterfaceProtectionHostComponent.m";
      v61 = 1024;
      v62 = 114;
      v63 = 2114;
      v64 = v38;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v42 = v38;
    [v38 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F690B8);
  }

  *&self->_flags = *&self->_flags & 0xFC | 2;
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_sceneDidEnterBackground_ name:@"UISceneDidEnterBackgroundNotification" object:0];
  [defaultCenter addObserver:self selector:sel_sceneWillEnterForeground_ name:@"UISceneWillEnterForegroundNotification" object:0];
  isLocked = [(APExtension *)self->_apExtension isLocked];
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __67___UISceneInterfaceProtectionHostComponent__setUnderAppProtection___block_invoke;
  selfCopy8 = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
  v60[0] = isLocked;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:buf];
  if ((*&self->_flags & 6) == 2)
  {
    if (self->_subjectMonitorRegistry)
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_subjectMonitorRegistry"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v44 = NSStringFromSelector(sel_configureAppProtectionIfNecessary);
        v45 = objc_opt_class();
        v46 = NSStringFromClass(v45);
        *buf = 138544642;
        *&buf[4] = v44;
        *&buf[12] = 2114;
        *&buf[14] = v46;
        *&buf[22] = 2048;
        selfCopy8 = self;
        *v60 = 2114;
        *&v60[2] = @"_UISceneInterfaceProtectionHostComponent.m";
        v61 = 1024;
        v62 = 191;
        v63 = 2114;
        v64 = v43;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v47 = v43;
      [v43 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189F691B4);
    }

    if (self->_shieldViewIfExists)
    {
      v48 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"!_shieldViewIfExists"];
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v49 = NSStringFromSelector(sel_configureAppProtectionIfNecessary);
        v50 = objc_opt_class();
        v51 = NSStringFromClass(v50);
        *buf = 138544642;
        *&buf[4] = v49;
        *&buf[12] = 2114;
        *&buf[14] = v51;
        *&buf[22] = 2048;
        selfCopy8 = self;
        *v60 = 2114;
        *&v60[2] = @"_UISceneInterfaceProtectionHostComponent.m";
        v61 = 1024;
        v62 = 192;
        v63 = 2114;
        v64 = v48;
        _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v52 = v48;
      [v48 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x189F692B0);
    }

    v54 = 0;
    v55 = &v54;
    v56 = 0x2050000000;
    v7 = getAPExtensionSubjectMonitorRegistryClass_softClass;
    v57 = getAPExtensionSubjectMonitorRegistryClass_softClass;
    if (!getAPExtensionSubjectMonitorRegistryClass_softClass)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __getAPExtensionSubjectMonitorRegistryClass_block_invoke;
      selfCopy8 = &unk_1E70F2F20;
      *v60 = &v54;
      __getAPExtensionSubjectMonitorRegistryClass_block_invoke(buf);
      v7 = v55[3];
    }

    v8 = v7;
    _Block_object_dispose(&v54, 8);
    v9 = [[v7 alloc] initWithExtensionSubject:self->_apExtension];
    subjectMonitorRegistry = self->_subjectMonitorRegistry;
    self->_subjectMonitorRegistry = v9;

    v11 = [(APExtensionSubjectMonitorRegistry *)self->_subjectMonitorRegistry addMonitor:self];
    [(APExtensionSubjectMonitorRegistry *)self->_subjectMonitorRegistry resume];
    *&self->_flags |= 4u;
  }

  if ([(APExtension *)self->_apExtension requiresShielding])
  {
    [(_UISceneInterfaceProtectionHostComponent *)self presentAppProtectionShieldView];
  }
}

- (void)setAPExtension:(id)extension
{
  v23 = *MEMORY[0x1E69E9840];
  extensionCopy = extension;
  if ((*&self->_flags & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after initial configuration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"_UISceneInterfaceProtectionHostComponent.m";
      v19 = 1024;
      v20 = 135;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F69450);
  }

  apExtension = self->_apExtension;
  self->_apExtension = extensionCopy;
}

- (void)setAppIconBundleIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ((*&self->_flags & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after initial configuration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"_UISceneInterfaceProtectionHostComponent.m";
      v19 = 1024;
      v20 = 140;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F695D0);
  }

  appIconBundleIdentifier = self->_appIconBundleIdentifier;
  self->_appIconBundleIdentifier = identifierCopy;
}

- (void)setLocalizedName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if ((*&self->_flags & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after initial configuration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"_UISceneInterfaceProtectionHostComponent.m";
      v19 = 1024;
      v20 = 145;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F69750);
  }

  localizedName = self->_localizedName;
  self->_localizedName = nameCopy;
}

- (void)setShieldParentView:(id)view
{
  v23 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if ((*&self->_flags & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"cannot modify config after initial configuration"];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(a2);
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = 138544642;
      v12 = v8;
      v13 = 2114;
      v14 = v10;
      v15 = 2048;
      selfCopy = self;
      v17 = 2114;
      v18 = @"_UISceneInterfaceProtectionHostComponent.m";
      v19 = 1024;
      v20 = 150;
      v21 = 2114;
      v22 = v7;
      _os_log_error_impl(&dword_188A29000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v11, 0x3Au);
    }

    [v7 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x189F698D0);
  }

  shieldParentView = self->_shieldParentView;
  self->_shieldParentView = viewCopy;
}

- (id)shieldView
{
  v2 = *(self + 64);
  if (!v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69A8A00]) initWithBundleIdentifier:*(self + 40)];
    v4 = objc_alloc(MEMORY[0x1E69A8A30]);
    traitCollection = [*(self + 56) traitCollection];
    [traitCollection displayScale];
    v7 = [v4 initWithSize:64.0 scale:{64.0, v6}];

    [v7 setDrawBorder:1];
    v8 = [v3 prepareImageForDescriptor:v7];
    cGImage = [v8 CGImage];
    [v8 scale];
    v10 = [UIImage imageWithCGImage:cGImage scale:0 orientation:?];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2050000000;
    v11 = _MergedGlobals_1_24;
    v20 = _MergedGlobals_1_24;
    if (!_MergedGlobals_1_24)
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __getAPBaseExtensionShieldViewClass_block_invoke;
      v16[3] = &unk_1E70F2F20;
      v16[4] = &v17;
      __getAPBaseExtensionShieldViewClass_block_invoke(v16);
      v11 = v18[3];
    }

    v12 = v11;
    _Block_object_dispose(&v17, 8);
    v13 = [[v11 alloc] initWithLocalizedApplicationName:*(self + 48) iconImage:v10 apExtension:*(self + 32)];
    [v13 setDelegate:self];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = *(self + 64);
    *(self + 64) = v13;

    v2 = *(self + 64);
  }

  return v2;
}

- (void)setExtensionShieldCurrentlyShown:(BOOL)shown
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77___UISceneInterfaceProtectionHostComponent_setExtensionShieldCurrentlyShown___block_invoke;
  v3[3] = &__block_descriptor_33_e70_v16__0__FBSMutableSceneSettings__UISceneInterfaceProtectionSettings__8l;
  shownCopy = shown;
  [(_UISceneInterfaceProtectionHostComponent *)self updateSettings:v3];
}

- (BOOL)extensionShieldCurrentlyShown
{
  settings = [(_UISceneInterfaceProtectionClientComponent *)self settings];
  extensionShieldCurrentlyShown = [settings extensionShieldCurrentlyShown];

  return extensionShieldCurrentlyShown;
}

- (void)presentAppProtectionShieldView
{
  v23[4] = *MEMORY[0x1E69E9840];
  if (self)
  {
    BSDispatchQueueAssertMain();
    if (([self extensionShieldCurrentlyShown] & 1) == 0)
    {
      shieldView = [(_UISceneInterfaceProtectionHostComponent *)self shieldView];
      [*(self + 56) addSubview:shieldView];
      v17 = MEMORY[0x1E69977A0];
      leftAnchor = [shieldView leftAnchor];
      leftAnchor2 = [*(self + 56) leftAnchor];
      v20 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v23[0] = v20;
      topAnchor = [shieldView topAnchor];
      topAnchor2 = [*(self + 56) topAnchor];
      v4 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v23[1] = v4;
      rightAnchor = [shieldView rightAnchor];
      rightAnchor2 = [*(self + 56) rightAnchor];
      v7 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v23[2] = v7;
      bottomAnchor = [shieldView bottomAnchor];
      bottomAnchor2 = [*(self + 56) bottomAnchor];
      v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v23[3] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
      [v17 activateConstraints:v11];

      hostScene = [self hostScene];
      uiSceneHostingController = [hostScene uiSceneHostingController];
      _remoteSheetProvider = [uiSceneHostingController _remoteSheetProvider];
      v15 = [_remoteSheetProvider sheetDisconnectionAssertionForReason:@"app protection"];
      v16 = *(self + 80);
      *(self + 80) = v15;

      [self setExtensionShieldCurrentlyShown:1];
    }
  }
}

- (void)requestAppProtectionAuthIfNecessary
{
  if (self && [self extensionShieldCurrentlyShown])
  {
    if ([self[4] requiresShielding])
    {
      shieldView = [(_UISceneInterfaceProtectionHostComponent *)self shieldView];
      [self shieldViewUnlockButtonPressed:shieldView];
    }

    else
    {

      [(_UISceneInterfaceProtectionHostComponent *)self removeAppProtectionShieldView];
    }
  }
}

- (void)removeAppProtectionShieldView
{
  if (self)
  {
    BSDispatchQueueAssertMain();
    if ([self extensionShieldCurrentlyShown])
    {
      [self setExtensionShieldCurrentlyShown:0];
      shieldView = [(_UISceneInterfaceProtectionHostComponent *)self shieldView];
      [shieldView removeFromSuperview];

      [self[10] invalidate];
      v4 = self[10];
      self[10] = 0;
    }
  }
}

- (void)appProtectionSubjectsChanged:(id)changed forSubscription:(id)subscription
{
  changedCopy = changed;
  subscriptionCopy = subscription;
  objc_initWeak(&location, self);
  objc_copyWeak(&v9, &location);
  v8 = changedCopy;
  BSDispatchMain();

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)shieldViewUnlockButtonPressed:(id)pressed
{
  pressedCopy = pressed;
  objc_initWeak(&location, self);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2050000000;
  v5 = getAPGuardClass_softClass;
  v16 = getAPGuardClass_softClass;
  if (!getAPGuardClass_softClass)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __getAPGuardClass_block_invoke;
    v12[3] = &unk_1E70F2F20;
    v12[4] = &v13;
    __getAPGuardClass_block_invoke(v12);
    v5 = v14[3];
  }

  v6 = v5;
  _Block_object_dispose(&v13, 8);
  sharedGuard = [v5 sharedGuard];
  apExtension = self->_apExtension;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __74___UISceneInterfaceProtectionHostComponent_shieldViewUnlockButtonPressed___block_invoke;
  v9[3] = &unk_1E7120440;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [sharedGuard authenticateForExtension:apExtension completion:v9];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)sceneDidEnterBackground:(id)background
{
  object = [background object];
  v5 = objc_opt_class();
  v6 = object;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  _window = [(UIView *)self->_shieldParentView _window];
  _windowHostingScene = [_window _windowHostingScene];

  if (_windowHostingScene == v8 && [(APExtension *)self->_apExtension isLocked])
  {

    [(_UISceneInterfaceProtectionHostComponent *)self presentAppProtectionShieldView];
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
  v5 = objc_opt_class();
  v6 = object;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  _window = [(UIView *)self->_shieldParentView _window];
  _windowHostingScene = [_window _windowHostingScene];

  if (_windowHostingScene == v8)
  {

    [(_UISceneInterfaceProtectionHostComponent *)&self->super.super.isa requestAppProtectionAuthIfNecessary];
  }
}

- (void)appendDescriptionToStream:(id)stream
{
  streamCopy = stream;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70___UISceneInterfaceProtectionHostComponent_appendDescriptionToStream___block_invoke;
  v11[3] = &unk_1E70F35B8;
  v5 = streamCopy;
  v12 = v5;
  selfCopy = self;
  [v5 appendProem:self block:v11];
  style = [v5 style];
  if ([style verbosity] == 2)
  {
    goto LABEL_4;
  }

  flags = self->_flags;

  if ((flags & 2) != 0)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70___UISceneInterfaceProtectionHostComponent_appendDescriptionToStream___block_invoke_2;
    v8[3] = &unk_1E70F35B8;
    v9 = v5;
    selfCopy2 = self;
    [v9 appendBodySectionWithName:0 block:v8];
    style = v9;
LABEL_4:
  }
}

- (id)succinctDescription
{
  v3 = MEMORY[0x1E698E688];
  succinctStyle = [MEMORY[0x1E698E690] succinctStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:succinctStyle];

  return v5;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E698E688];
  debugStyle = [MEMORY[0x1E698E690] debugStyle];
  v5 = [v3 descriptionForRootObject:self withStyle:debugStyle];

  return v5;
}

@end