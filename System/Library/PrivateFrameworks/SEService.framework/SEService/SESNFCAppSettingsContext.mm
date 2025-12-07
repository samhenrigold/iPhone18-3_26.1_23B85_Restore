@interface SESNFCAppSettingsContext
+ (id)contextWithBundleId:(id)id onChange:(id)change;
- (BOOL)existsDefaultAppCandidatesForService:(unint64_t)service;
- (BOOL)isApplicationInstalledOrPlaceholder:(id)placeholder;
- (BOOL)isDefaultAppEligibleForService:(unint64_t)service;
- (BOOL)isDefaultAppTheOnlyCandidate;
- (BOOL)isExpressModeEnabled;
- (BOOL)shouldShowDoubleButtonPressToggle;
- (SESNFCAppSettingsContext)initWithBundleId:(id)id onChange:(id)change;
- (id)alertMessageForDefaultAppChangeTo:(id)to;
- (id)getDefaultNFCApplication;
- (id)localizedAppNameForBundleId:(id)id;
- (unint64_t)topLevelEntryType;
- (void)appBasedKeyPathChangeHandler:(id)handler ofObject:(id)object change:(id)change context:(void *)context;
- (void)centralizedKeyPathChangeHandler:(id)handler ofObject:(id)object change:(id)change context:(void *)context;
- (void)dealloc;
- (void)invalidate;
- (void)invalidateInternal;
- (void)observeDefaults;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)readDefaultValues;
- (void)reconcileWithRecord:(id)record;
- (void)setDefaultNFCApplication:(id)application;
- (void)setDoubleClickEnabled:(BOOL)enabled;
@end

@implementation SESNFCAppSettingsContext

- (void)readDefaultValues
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(NSUserDefaults *)self->_ud stringForKey:@"defaultAppIdentifier"];
  currentDefaultBundleId = self->_currentDefaultBundleId;
  self->_currentDefaultBundleId = v3;

  v5 = [(NSUserDefaults *)self->_ud arrayForKey:@"defaultAppCandidates"];
  v6 = Transform();
  defaultAppCandidates = self->_defaultAppCandidates;
  self->_defaultAppCandidates = v6;

  self->_shouldShowSECDefaultPane = [(NSUserDefaults *)self->_ud BOOLForKey:@"shouldShowSECPane"];
  self->_shouldShowHCEDefaultPane = [(NSUserDefaults *)self->_ud BOOLForKey:@"shouldShowContactlessPane"];
  self->_shouldShowSECTCCPane = [(NSUserDefaults *)self->_ud BOOLForKey:@"shouldShowSecureElementTcc"];
  self->_shouldShowHCETCCPane = [(NSUserDefaults *)self->_ud BOOLForKey:@"shouldShowContactlessTcc"];
  self->_isDomainAluminumEligible = [(NSUserDefaults *)self->_ud BOOLForKey:@"aluminumEligibility"];
  self->_isDomainChromiumEligible = [(NSUserDefaults *)self->_ud BOOLForKey:@"chromiumEligibility"];
  self->_topLevelSettingsEntryType = [(SESNFCAppSettingsContext *)self topLevelEntryType];
  if (self->_bundleId)
  {
    v8 = objc_alloc(MEMORY[0x1E69635F8]);
    bundleId = self->_bundleId;
    v15 = 0;
    v10 = [v8 initWithBundleIdentifier:bundleId allowPlaceholder:0 error:&v15];
    v11 = v15;
    v12 = v11;
    if (!v10 || v11)
    {
      v13 = SESDefaultLogObject();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = self->_bundleId;
        *buf = 138412546;
        v17 = v14;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_1C7B9A000, v13, OS_LOG_TYPE_ERROR, "Bundle ID %@ does not correspond to a record or error encountered %@", buf, 0x16u);
      }

      self->_doubleClickToggleVisibilityType = 2;
      *&self->_shouldShowDefaultNFCAppPicker = 0;
      self->_isContactlessTCCServiceEligible = 0;
    }

    else
    {
      [(SESNFCAppSettingsContext *)self reconcileWithRecord:v10];
    }
  }

  else
  {
    [(SESNFCAppSettingsContext *)self reconcileWithRecord:0];
  }
}

SESDefaultNFCApplication *__45__SESNFCAppSettingsContext_readDefaultValues__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [SESDefaultNFCApplication alloc];
  v4 = [v2 objectForKeyedSubscript:@"bundleId"];
  v5 = [v2 objectForKeyedSubscript:@"displayName"];
  v6 = [v2 objectForKeyedSubscript:@"domain"];

  v7 = [(SESDefaultNFCApplication *)v3 initWithBundleId:v4 displayName:v5 rawDomain:v6];

  return v7;
}

- (unint64_t)topLevelEntryType
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_bundleId || ![(NSArray *)self->_defaultAppCandidates count])
  {
    v2 = SESDefaultLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v7[0]) = 0;
      _os_log_impl(&dword_1C7B9A000, v2, OS_LOG_TYPE_DEBUG, "No default app candidates exists", v7, 2u);
    }

    return 2;
  }

  else
  {
    v5 = [(NSArray *)self->_defaultAppCandidates ses_contains:&__block_literal_global_593];
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = v5;
      _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_DEBUG, "External Candidate exists %d", v7, 8u);
    }

    return v5;
  }
}

uint64_t __45__SESNFCAppSettingsContext_topLevelEntryType__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 bundleId];
  v3 = [v2 isEqualToString:@"com.apple.Passbook"];

  return v3 ^ 1u;
}

- (BOOL)shouldShowDoubleButtonPressToggle
{
  if ([(NSString *)self->_bundleId isEqualToString:@"com.apple.Passbook"])
  {

    return [(SESNFCAppSettingsContext *)self isPassbookDefault];
  }

  else
  {
    currentDefaultBundleId = self->_currentDefaultBundleId;
    if (currentDefaultBundleId && self->_bundleId && self->_shouldShowDefaultNFCAppPicker)
    {

      return [(NSString *)currentDefaultBundleId isEqualToString:?];
    }

    else
    {
      return 0;
    }
  }
}

- (void)observeDefaults
{
  v3 = [(SESNFCAppSettingsContext *)self ud];
  [v3 addObserver:self forKeyPath:@"shouldShowSECPane" options:1 context:defaultSECContext];

  v4 = [(SESNFCAppSettingsContext *)self ud];
  [v4 addObserver:self forKeyPath:@"shouldShowContactlessPane" options:1 context:defaultHCEContext];

  v5 = [(SESNFCAppSettingsContext *)self ud];
  [v5 addObserver:self forKeyPath:@"shouldShowContactlessTcc" options:1 context:tccHCEContext];

  v6 = [(SESNFCAppSettingsContext *)self ud];
  [v6 addObserver:self forKeyPath:@"shouldShowSecureElementTcc" options:1 context:tccSECContext];

  v7 = [(SESNFCAppSettingsContext *)self ud];
  [v7 addObserver:self forKeyPath:@"defaultAppCandidates" options:1 context:defaultAppCandidatesChangedContext];

  v8 = [(SESNFCAppSettingsContext *)self ud];
  [v8 addObserver:self forKeyPath:@"defaultAppIdentifier" options:1 context:defaultAppChangedContext];

  v9 = [(SESNFCAppSettingsContext *)self ud];
  [v9 addObserver:self forKeyPath:@"aluminumEligibility" options:1 context:defaultAluminumEligbilityChangedContext];

  v10 = [(SESNFCAppSettingsContext *)self ud];
  [v10 addObserver:self forKeyPath:@"chromiumEligibility" options:1 context:defaultChromiumEligibilityChangedContext];
}

- (id)getDefaultNFCApplication
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_currentDefaultBundleId)
  {
    defaultAppCandidates = self->_defaultAppCandidates;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__SESNFCAppSettingsContext_getDefaultNFCApplication__block_invoke;
    v8[3] = &unk_1E82D10D0;
    v8[4] = self;
    v3 = [(NSArray *)defaultAppCandidates find:v8];
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      bundleId = [v3 bundleId];
      *buf = 138412290;
      v10 = bundleId;
      _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_INFO, "Default app queried with bundle Id %@", buf, 0xCu);
    }
  }

  else
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_INFO, "No default app found in user defaults", buf, 2u);
    }

    v3 = 0;
  }

  return v3;
}

uint64_t __52__SESNFCAppSettingsContext_getDefaultNFCApplication__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleId];
  v4 = [v3 isEqualToString:*(*(a1 + 32) + 24)];

  return v4;
}

- (void)invalidate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    bundleId = self->_bundleId;
    v5 = 138412290;
    v6 = bundleId;
    _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_DEBUG, "Invalidating app settings context for bundle ID %@", &v5, 0xCu);
  }

  [(SESNFCAppSettingsContext *)self invalidateInternal];
}

- (void)invalidateInternal
{
  os_unfair_lock_lock(&self->_lock);
  if (!self->_invalidated)
  {
    onChange = self->_onChange;
    self->_onChange = 0;

    v4 = [(SESNFCAppSettingsContext *)self ud];
    [v4 removeObserver:self forKeyPath:@"shouldShowSECPane"];

    v5 = [(SESNFCAppSettingsContext *)self ud];
    [v5 removeObserver:self forKeyPath:@"shouldShowContactlessPane"];

    v6 = [(SESNFCAppSettingsContext *)self ud];
    [v6 removeObserver:self forKeyPath:@"shouldShowContactlessTcc"];

    v7 = [(SESNFCAppSettingsContext *)self ud];
    [v7 removeObserver:self forKeyPath:@"shouldShowSecureElementTcc"];

    v8 = [(SESNFCAppSettingsContext *)self ud];
    [v8 removeObserver:self forKeyPath:@"defaultAppCandidates"];

    v9 = [(SESNFCAppSettingsContext *)self ud];
    [v9 removeObserver:self forKeyPath:@"defaultAppIdentifier"];

    v10 = [(SESNFCAppSettingsContext *)self ud];
    [v10 removeObserver:self forKeyPath:@"aluminumEligibility"];

    v11 = [(SESNFCAppSettingsContext *)self ud];
    [v11 removeObserver:self forKeyPath:@"chromiumEligibility"];

    self->_invalidated = 1;
    v12 = SESDefaultLogObject();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 0;
      _os_log_impl(&dword_1C7B9A000, v12, OS_LOG_TYPE_DEBUG, "Successfully invalidated internally due to manual invalidation or dealloc", v13, 2u);
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = SESDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    bundleId = self->_bundleId;
    *buf = 138412290;
    v7 = bundleId;
    _os_log_impl(&dword_1C7B9A000, v3, OS_LOG_TYPE_DEBUG, "Deallocating app settings context for bundle ID %@", buf, 0xCu);
  }

  [(SESNFCAppSettingsContext *)self invalidateInternal];
  v5.receiver = self;
  v5.super_class = SESNFCAppSettingsContext;
  [(SESNFCAppSettingsContext *)&v5 dealloc];
}

+ (id)contextWithBundleId:(id)id onChange:(id)change
{
  changeCopy = change;
  idCopy = id;
  v7 = [[SESNFCAppSettingsContext alloc] initWithBundleId:idCopy onChange:changeCopy];

  return v7;
}

- (SESNFCAppSettingsContext)initWithBundleId:(id)id onChange:(id)change
{
  v22 = *MEMORY[0x1E69E9840];
  idCopy = id;
  changeCopy = change;
  v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.seserviced.contactlessCredential.settings"];
  if (v9)
  {
    v19.receiver = self;
    v19.super_class = SESNFCAppSettingsContext;
    v10 = [(SESNFCAppSettingsContext *)&v19 init];
    v11 = v10;
    if (v10)
    {
      objc_storeStrong(&v10->_bundleId, id);
      v12 = _Block_copy(changeCopy);
      onChange = v11->_onChange;
      v11->_onChange = v12;

      objc_storeStrong(&v11->_ud, v9);
      v11->_lock._os_unfair_lock_opaque = 0;
      v11->_supportsTouchID = MGGetBoolAnswer();
      v11->_invalidated = 0;
      [(SESNFCAppSettingsContext *)v11 readDefaultValues];
      [(SESNFCAppSettingsContext *)v11 observeDefaults];
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        bundleId = v11->_bundleId;
        *buf = 138412290;
        v21 = bundleId;
        _os_log_impl(&dword_1C7B9A000, v14, OS_LOG_TYPE_DEBUG, "Successfully initialized app settings context for bundle ID %@", buf, 0xCu);
      }
    }

    self = v11;
    selfCopy = self;
  }

  else
  {
    v17 = SESDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1C7B9A000, v17, OS_LOG_TYPE_ERROR, "contextWithBundleId:onChange: unable to initialize ud", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  if (self->_bundleId)
  {
    [(SESNFCAppSettingsContext *)self appBasedKeyPathChangeHandler:path ofObject:object change:change context:context];
  }

  else
  {
    [(SESNFCAppSettingsContext *)self centralizedKeyPathChangeHandler:path ofObject:object change:change context:context];
  }
}

- (void)appBasedKeyPathChangeHandler:(id)handler ofObject:(id)object change:(id)change context:(void *)context
{
  v37 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  objectCopy = object;
  changeCopy = change;
  os_unfair_lock_lock(&self->_lock);
  v13 = objc_alloc(MEMORY[0x1E69635F8]);
  bundleId = self->_bundleId;
  v32 = 0;
  v15 = [v13 initWithBundleIdentifier:bundleId allowPlaceholder:0 error:&v32];
  v16 = v32;
  v17 = v16;
  if (v15)
  {
    v18 = v16 == 0;
  }

  else
  {
    v18 = 0;
  }

  if (!v18)
  {
    v19 = SESDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = self->_bundleId;
      *buf = 138412546;
      v34 = v20;
      v35 = 2112;
      v36 = v17;
      _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_ERROR, "Bundle ID %@ does not correspond to a record or error encountered %@", buf, 0x16u);
    }

    self->_doubleClickToggleVisibilityType = 2;
    *&self->_shouldShowDefaultNFCAppPicker = 0;
    self->_isContactlessTCCServiceEligible = 0;
    goto LABEL_69;
  }

  if (defaultSECContext == context)
  {
    v22 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_shouldShowSECDefaultPane = [v22 BOOLValue];
        goto LABEL_66;
      }
    }

    v23 = SESDefaultLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = handlerCopy;
      _os_log_impl(&dword_1C7B9A000, v23, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", buf, 0xCu);
    }

    self->_shouldShowSECDefaultPane = 0;
  }

  else if (defaultHCEContext == context)
  {
    v22 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_shouldShowHCEDefaultPane = [v22 BOOLValue];
        goto LABEL_66;
      }
    }

    v24 = SESDefaultLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = handlerCopy;
      _os_log_impl(&dword_1C7B9A000, v24, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", buf, 0xCu);
    }

    self->_shouldShowHCEDefaultPane = 0;
  }

  else
  {
    if (tccSECContext != context)
    {
      if (tccHCEContext == context)
      {
        v22 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          v26 = SESDefaultLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = handlerCopy;
            _os_log_impl(&dword_1C7B9A000, v26, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", buf, 0xCu);
          }

          goto LABEL_72;
        }

        self->_shouldShowHCETCCPane = [v22 BOOLValue];
      }

      else
      {
        if (defaultAppChangedContext == context)
        {
          v22 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              objc_storeStrong(&self->_currentDefaultBundleId, v22);
              v27 = SESDefaultLogObject();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v34 = v22;
                _os_log_impl(&dword_1C7B9A000, v27, OS_LOG_TYPE_DEBUG, "Changed default app %@", buf, 0xCu);
              }

              goto LABEL_66;
            }
          }

          v26 = SESDefaultLogObject();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v34 = handlerCopy;
            _os_log_impl(&dword_1C7B9A000, v26, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", buf, 0xCu);
          }

          goto LABEL_72;
        }

        if (defaultAppCandidatesChangedContext == context)
        {
          v22 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v26 = SESDefaultLogObject();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = handlerCopy;
              _os_log_impl(&dword_1C7B9A000, v26, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", buf, 0xCu);
            }

            goto LABEL_72;
          }

          v28 = Transform();
          defaultAppCandidates = self->_defaultAppCandidates;
          self->_defaultAppCandidates = v28;
        }

        else
        {
          if (defaultAluminumEligbilityChangedContext != context)
          {
            if (defaultChromiumEligibilityChangedContext != context)
            {
              v21 = SESDefaultLogObject();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v34 = handlerCopy;
                _os_log_impl(&dword_1C7B9A000, v21, OS_LOG_TYPE_DEBUG, "Change observed for irrelevant key %@, do not reconcile", buf, 0xCu);
              }

              goto LABEL_69;
            }

            v22 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                self->_isDomainChromiumEligible = [v22 BOOLValue];
                goto LABEL_66;
              }
            }

            v26 = SESDefaultLogObject();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = handlerCopy;
              _os_log_impl(&dword_1C7B9A000, v26, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", buf, 0xCu);
            }

LABEL_72:

            goto LABEL_69;
          }

          v22 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            v26 = SESDefaultLogObject();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v34 = handlerCopy;
              _os_log_impl(&dword_1C7B9A000, v26, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", buf, 0xCu);
            }

            goto LABEL_72;
          }

          self->_isDomainAluminumEligible = [v22 BOOLValue];
        }
      }

LABEL_66:

      [(SESNFCAppSettingsContext *)self reconcileWithRecord:v15];
      v30 = SESDefaultLogObject();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
      {
        v31 = self->_bundleId;
        *buf = 138412546;
        v34 = handlerCopy;
        v35 = 2112;
        v36 = v31;
        _os_log_impl(&dword_1C7B9A000, v30, OS_LOG_TYPE_DEBUG, "Key %@ changed, firing on visibility change for bundle Id %@", buf, 0x16u);
      }

      (*(self->_onChange + 2))();
      goto LABEL_69;
    }

    v22 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        self->_shouldShowSECTCCPane = [v22 BOOLValue];
        goto LABEL_66;
      }
    }

    v25 = SESDefaultLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = handlerCopy;
      _os_log_impl(&dword_1C7B9A000, v25, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", buf, 0xCu);
    }

    self->_shouldShowSECTCCPane = 0;
  }

LABEL_69:

  os_unfair_lock_unlock(&self->_lock);
}

SESDefaultNFCApplication *__81__SESNFCAppSettingsContext_appBasedKeyPathChangeHandler_ofObject_change_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 0;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Non-dictionary candidate found", v10, 2u);
    }

    v7 = 0;
  }

  else
  {
    v3 = [SESDefaultNFCApplication alloc];
    v4 = [v2 objectForKeyedSubscript:@"bundleId"];
    v5 = [v2 objectForKeyedSubscript:@"displayName"];
    v6 = [v2 objectForKeyedSubscript:@"domain"];
    v7 = [(SESDefaultNFCApplication *)v3 initWithBundleId:v4 displayName:v5 rawDomain:v6];
  }

  return v7;
}

- (void)centralizedKeyPathChangeHandler:(id)handler ofObject:(id)object change:(id)change context:(void *)context
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  objectCopy = object;
  changeCopy = change;
  os_unfair_lock_lock(&self->_lock);
  if (defaultSECContext == context)
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v14 = SESDefaultLogObject();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = handlerCopy;
        _os_log_impl(&dword_1C7B9A000, v14, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", &v23, 0xCu);
      }

      self->_shouldShowSECDefaultPane = 0;
      goto LABEL_55;
    }

    self->_shouldShowSECDefaultPane = [v13 BOOLValue];
    goto LABEL_48;
  }

  if (defaultHCEContext == context)
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v15 = SESDefaultLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = handlerCopy;
        _os_log_impl(&dword_1C7B9A000, v15, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", &v23, 0xCu);
      }

      self->_shouldShowHCEDefaultPane = 0;
      goto LABEL_55;
    }

    self->_shouldShowHCEDefaultPane = [v13 BOOLValue];
    goto LABEL_48;
  }

  if (defaultAppChangedContext == context)
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    if (v13)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        v16 = SESDefaultLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v23 = 138412290;
          v24 = handlerCopy;
          _os_log_impl(&dword_1C7B9A000, v16, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", &v23, 0xCu);
        }

        goto LABEL_54;
      }
    }

    else
    {
      v19 = SESDefaultLogObject();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_DEBUG, "Setting none as default app in Context", &v23, 2u);
      }
    }

    objc_storeStrong(&self->_currentDefaultBundleId, v13);
    v20 = SESDefaultLogObject();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v23 = 138412290;
      v24 = v13;
      _os_log_impl(&dword_1C7B9A000, v20, OS_LOG_TYPE_DEBUG, "Changed default app %@", &v23, 0xCu);
    }

    goto LABEL_49;
  }

  if (defaultAppCandidatesChangedContext == context)
  {
    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = SESDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = handlerCopy;
        _os_log_impl(&dword_1C7B9A000, v16, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", &v23, 0xCu);
      }

      goto LABEL_54;
    }

    v17 = Transform();
    defaultAppCandidates = self->_defaultAppCandidates;
    self->_defaultAppCandidates = v17;
  }

  else
  {
    if (defaultAluminumEligbilityChangedContext != context)
    {
      if (defaultChromiumEligibilityChangedContext != context)
      {
        v13 = SESDefaultLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v23 = 138412290;
          v24 = handlerCopy;
          _os_log_impl(&dword_1C7B9A000, v13, OS_LOG_TYPE_DEBUG, "Change observed for irrelevant key %@, do not reconcile", &v23, 0xCu);
        }

        goto LABEL_55;
      }

      v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          self->_isDomainChromiumEligible = [v13 BOOLValue];
          goto LABEL_48;
        }
      }

      v16 = SESDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = handlerCopy;
        _os_log_impl(&dword_1C7B9A000, v16, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", &v23, 0xCu);
      }

LABEL_54:

LABEL_55:
      goto LABEL_56;
    }

    v13 = [changeCopy objectForKeyedSubscript:*MEMORY[0x1E696A4F0]];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = SESDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v23 = 138412290;
        v24 = handlerCopy;
        _os_log_impl(&dword_1C7B9A000, v16, OS_LOG_TYPE_ERROR, "Unexpected data type for key %@, do not reconcile", &v23, 0xCu);
      }

      goto LABEL_54;
    }

    self->_isDomainAluminumEligible = [v13 BOOLValue];
  }

LABEL_48:

LABEL_49:
  [(SESNFCAppSettingsContext *)self reconcileWithRecord:0];
  v21 = SESDefaultLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    bundleId = self->_bundleId;
    v23 = 138412546;
    v24 = handlerCopy;
    v25 = 2112;
    v26 = bundleId;
    _os_log_impl(&dword_1C7B9A000, v21, OS_LOG_TYPE_DEBUG, "Key %@ changed, firing on visibility change for bundle Id %@", &v23, 0x16u);
  }

  (*(self->_onChange + 2))();
LABEL_56:
  os_unfair_lock_unlock(&self->_lock);
}

SESDefaultNFCApplication *__84__SESNFCAppSettingsContext_centralizedKeyPathChangeHandler_ofObject_change_context___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v8 = SESDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10[0] = 0;
      _os_log_impl(&dword_1C7B9A000, v8, OS_LOG_TYPE_ERROR, "Non-dictionary candidate found", v10, 2u);
    }

    v7 = 0;
  }

  else
  {
    v3 = [SESDefaultNFCApplication alloc];
    v4 = [v2 objectForKeyedSubscript:@"bundleId"];
    v5 = [v2 objectForKeyedSubscript:@"displayName"];
    v6 = [v2 objectForKeyedSubscript:@"domain"];
    v7 = [(SESDefaultNFCApplication *)v3 initWithBundleId:v4 displayName:v5 rawDomain:v6];
  }

  return v7;
}

- (void)reconcileWithRecord:(id)record
{
  v38 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v5 = [(SESNFCAppSettingsContext *)self isDefaultAppEligibleForService:1];
  v6 = [(SESNFCAppSettingsContext *)self isDefaultAppEligibleForService:0];
  if (recordCopy && (v7 = self->_bundleId) != 0 && ![(NSString *)v7 isEqualToString:@"com.apple.Passbook"])
  {
    v9 = [_TtC9SEService10TCCContext checkTCCAccessWithoutLoadingTo:0 for:self->_bundleId];
    v10 = [_TtC9SEService10TCCContext checkTCCAccessWithoutLoadingTo:1 for:self->_bundleId];
    entitlements = [recordCopy entitlements];
    if ([entitlements ses_isEntitled:@"com.apple.developer.nfc.hce"])
    {
      v13 = v9 != 3 || v10 != 3;
    }

    else
    {
      v13 = 0;
    }

    self->_isContactlessTCCServiceEligible = v13;

    v14 = [_TtC9SEService10TCCContext checkTCCAccessWithoutLoadingTo:2 for:self->_bundleId];
    entitlements2 = [recordCopy entitlements];
    v16 = [entitlements2 ses_isEntitled:@"com.apple.developer.secure-element-credential"];
    if (v14 == 3)
    {
      v17 = 0;
    }

    else
    {
      v17 = v16;
    }

    self->_isSecureElementTCCServiceEligible = v17;

    entitlements3 = [recordCopy entitlements];
    if ([entitlements3 ses_isEntitled:@"com.apple.developer.nfc.hce"])
    {
      entitlements4 = [recordCopy entitlements];
      v20 = [entitlements4 ses_isEntitled:@"com.apple.developer.nfc.hce.default-contactless-app"];
      if (v9)
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      v22 = v21 & v5;
    }

    else
    {
      v22 = 0;
    }

    entitlements5 = [recordCopy entitlements];
    if ([entitlements5 ses_isEntitled:@"com.apple.developer.secure-element-credential"])
    {
      entitlements6 = [recordCopy entitlements];
      v25 = [entitlements6 ses_isEntitled:@"com.apple.developer.secure-element-credential.default-contactless-app"];
      if (v14)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25;
      }

      v27 = v26 & v6;
    }

    else
    {
      v27 = 0;
    }

    v28 = SESDefaultLogObject();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      bundleId = self->_bundleId;
      v32 = 138412802;
      v33 = bundleId;
      v34 = 1024;
      v35 = v22;
      v36 = 1024;
      v37 = v27;
      _os_log_impl(&dword_1C7B9A000, v28, OS_LOG_TYPE_DEBUG, "Bundle ID %@: isEligibleForDefaultHCE %d, isEligibleForDefaultSEC %d", &v32, 0x18u);
    }

    self->_shouldShowDefaultNFCAppPicker = (v22 | v27) & 1;
    shouldShowDoubleButtonPressToggle = [(SESNFCAppSettingsContext *)self shouldShowDoubleButtonPressToggle];
    v31 = 2;
    if (shouldShowDoubleButtonPressToggle)
    {
      v31 = 0;
    }

    self->_doubleClickToggleVisibilityType = v31;
    self->_shouldShowContactlessAndPaymentToggle = 0;
  }

  else
  {
    self->_shouldShowDefaultNFCAppPicker = v5 || v6;
    self->_doubleClickToggleVisibilityType = [(SESNFCAppSettingsContext *)self shouldShowDoubleButtonPressToggle]^ 1;
    *&self->_isSecureElementTCCServiceEligible = 0;
    v8 = [(SESNFCAppSettingsContext *)self isApplicationInstalledOrPlaceholder:@"com.apple.Passbook"]|| [(SESNFCAppSettingsContext *)self existsDefaultAppCandidatesForService:0];
    self->_shouldShowContactlessAndPaymentToggle = v8;
    self->_topLevelSettingsEntryType = [(SESNFCAppSettingsContext *)self topLevelEntryType];
  }
}

- (void)setDefaultNFCApplication:(id)application
{
  v21 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  defaultAppCandidates = self->_defaultAppCandidates;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__SESNFCAppSettingsContext_setDefaultNFCApplication___block_invoke;
  v17[3] = &unk_1E82D10D0;
  v7 = applicationCopy;
  v18 = v7;
  v8 = [(NSArray *)defaultAppCandidates find:v17];
  if (v8)
  {
    [(NSUserDefaults *)self->_ud setValue:v7 forKey:@"defaultAppIdentifier"];
    ud = self->_ud;
    domain = [v8 domain];
    [(NSUserDefaults *)ud setValue:domain forKey:@"domain"];

    v11 = self->_ud;
    localizedDisplayName = [v8 localizedDisplayName];
    [(NSUserDefaults *)v11 setValue:localizedDisplayName forKey:@"defaultAppLocalizedName"];

    [(NSUserDefaults *)self->_ud setBool:1 forKey:@"defaultAppCommitted"];
    CFPreferencesAppSynchronize(@"com.apple.seserviced.contactlessCredential.settings");
    objc_storeStrong(&self->_currentDefaultBundleId, application);
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v20 = v7;
      v14 = "Successfully set %@ as default app";
      v15 = v13;
      v16 = OS_LOG_TYPE_INFO;
LABEL_6:
      _os_log_impl(&dword_1C7B9A000, v15, v16, v14, buf, 0xCu);
    }
  }

  else
  {
    v13 = SESDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v7;
      v14 = "Bundle Id %@ is not a valid candidate";
      v15 = v13;
      v16 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }
}

uint64_t __53__SESNFCAppSettingsContext_setDefaultNFCApplication___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)setDoubleClickEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10 = *MEMORY[0x1E69E9840];
  [(NSUserDefaults *)self->_ud setBool:enabled forKey:@"doubleClickEnabled"];
  v5 = SESDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    bundleId = self->_bundleId;
    v7[0] = 67109378;
    v7[1] = enabledCopy;
    v8 = 2112;
    v9 = bundleId;
    _os_log_impl(&dword_1C7B9A000, v5, OS_LOG_TYPE_INFO, "Successfully set double click enabled %d from bundle Id %@", v7, 0x12u);
  }
}

- (id)alertMessageForDefaultAppChangeTo:(id)to
{
  toCopy = to;
  currentDefaultBundleId = self->_currentDefaultBundleId;
  if (currentDefaultBundleId && ![(NSString *)currentDefaultBundleId isEqualToString:toCopy])
  {
    v6 = objc_opt_new();
    if (self->_supportsTouchID)
    {
      +[_TtC9SEService33SESSettingsLocalizedStringFactory touchIDAlertMessagePrefix];
    }

    else
    {
      +[_TtC9SEService33SESSettingsLocalizedStringFactory nonTouchIDAlertMessagePrefix];
    }
    v8 = ;
    [v6 appendString:v8];

    if ([(NSString *)self->_currentDefaultBundleId isEqualToString:@"com.apple.Passbook"])
    {
      v9 = +[_TtC9SEService33SESSettingsLocalizedStringFactory passbookDefaultAlertMessage];
      [v6 appendString:v9];
    }

    else
    {
      v9 = +[_TtC9SEService33SESSettingsLocalizedStringFactory thirdPartyDefaultAlertMessage];
      v10 = [(SESNFCAppSettingsContext *)self localizedAppNameForBundleId:self->_currentDefaultBundleId];
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:v9, v10, v10];
      [v6 appendString:v11];
    }

    if ([(SESNFCAppSettingsContext *)self isExpressModeEnabled])
    {
      v12 = +[_TtC9SEService33SESSettingsLocalizedStringFactory expressModeDefaultAlertMessagePostfix];
      [v6 appendString:v12];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isExpressModeEnabled
{
  v17 = *MEMORY[0x1E69E9840];
  out_token = 0;
  v2 = notify_register_check("com.apple.stockholm.express.state", &out_token);
  if (v2)
  {
    v3 = v2;
    v4 = SESDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v16) = v3;
      v5 = "notify_register_check failed with status %d";
LABEL_7:
      _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_ERROR, v5, buf, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v13 = 0;
  state = notify_get_state(out_token, &v13);
  v7 = SESDefaultLogObject();
  v4 = v7;
  if (state)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v16) = state;
      v5 = "notify_get_state failed with status %d";
      goto LABEL_7;
    }

LABEL_8:

    LOBYTE(v8) = 0;
    return v8;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v16 = v13;
    _os_log_impl(&dword_1C7B9A000, v4, OS_LOG_TYPE_DEBUG, "Raw Express State 0x%llx", buf, 0xCu);
  }

  v9 = notify_cancel(out_token);
  if (v9)
  {
    v10 = v9;
    v11 = SESDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v16) = v10;
      _os_log_impl(&dword_1C7B9A000, v11, OS_LOG_TYPE_ERROR, "notify_cancel failed with status %d", buf, 8u);
    }
  }

  return (v13 >> 1) & 1;
}

- (id)localizedAppNameForBundleId:(id)id
{
  idCopy = id;
  defaultAppCandidates = self->_defaultAppCandidates;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __56__SESNFCAppSettingsContext_localizedAppNameForBundleId___block_invoke;
  v10[3] = &unk_1E82D10D0;
  v11 = idCopy;
  v6 = idCopy;
  v7 = [(NSArray *)defaultAppCandidates find:v10];
  localizedDisplayName = [v7 localizedDisplayName];

  return localizedDisplayName;
}

uint64_t __56__SESNFCAppSettingsContext_localizedAppNameForBundleId___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleId];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (BOOL)isDefaultAppEligibleForService:(unint64_t)service
{
  v26 = *MEMORY[0x1E69E9840];
  domain_answer = os_eligibility_get_domain_answer();
  if (domain_answer)
  {
    v6 = domain_answer;
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      *v22 = v6;
      v8 = "Default Contactless App Configurable returned error code %d";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEBUG;
LABEL_7:
      _os_log_impl(&dword_1C7B9A000, v9, v10, v8, buf, 8u);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v11 = os_eligibility_get_domain_answer();
  if (v11)
  {
    v12 = v11;
    v7 = SESDefaultLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *v22 = v12;
      v8 = "Default Contactless App Usable returned error code %d";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      goto LABEL_7;
    }

LABEL_8:

    return 0;
  }

  v14 = [(SESNFCAppSettingsContext *)self existsDefaultAppCandidatesForService:service];
  v15 = SESDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    bundleId = self->_bundleId;
    *buf = 138412546;
    *v22 = bundleId;
    *&v22[8] = 1024;
    *v23 = v14;
    _os_log_impl(&dword_1C7B9A000, v15, OS_LOG_TYPE_DEBUG, "Bundle ID %@: exists valid candidates %d", buf, 0x12u);
  }

  v17 = self->_bundleId;
  if (!v17)
  {
    v18 = SESDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109632;
      *v22 = 0;
      *&v22[4] = 1024;
      *&v22[6] = 0;
      *v23 = 1024;
      *&v23[2] = 0;
      _os_log_impl(&dword_1C7B9A000, v18, OS_LOG_TYPE_DEBUG, "Centralized - full pane: %d, limited pane: %d, wallet only pane: %d", buf, 0x14u);
    }

    goto LABEL_19;
  }

  if ([(NSString *)v17 isEqualToString:@"com.apple.Passbook"])
  {
    v18 = SESDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      *v22 = service;
      *&v22[8] = 1024;
      *v23 = 0;
      *&v23[4] = 1024;
      *&v23[6] = 0;
      *v24 = 1024;
      *&v24[2] = 0;
      _os_log_impl(&dword_1C7B9A000, v18, OS_LOG_TYPE_DEBUG, "Passbook - Service %lu: full pane: %d, limited pane %d, wallet only pane: %d", buf, 0x1Eu);
    }

LABEL_19:

    return 0;
  }

  v19 = SESDefaultLogObject();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = self->_bundleId;
    *buf = 138413058;
    *v22 = v20;
    *&v22[8] = 2048;
    *v23 = service;
    *&v23[8] = 1024;
    *v24 = 0;
    *&v24[4] = 1024;
    v25 = 0;
    _os_log_impl(&dword_1C7B9A000, v19, OS_LOG_TYPE_DEBUG, "Bundle Id %@ - Service %lu: full pane: %d, limited pane %d", buf, 0x22u);
  }

  return 0;
}

- (BOOL)isDefaultAppTheOnlyCandidate
{
  if (!self->_currentDefaultBundleId || [(NSArray *)self->_defaultAppCandidates count]!= 1)
  {
    return 0;
  }

  v3 = [(NSArray *)self->_defaultAppCandidates objectAtIndexedSubscript:0];
  bundleId = [v3 bundleId];
  v5 = [bundleId isEqualToString:self->_currentDefaultBundleId];

  return v5;
}

- (BOOL)existsDefaultAppCandidatesForService:(unint64_t)service
{
  if (service == 1)
  {
    v3 = &unk_1F4762E90;
    goto LABEL_5;
  }

  if (!service)
  {
    v3 = &unk_1F4762EA8;
LABEL_5:
    defaultAppCandidates = self->_defaultAppCandidates;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __65__SESNFCAppSettingsContext_existsDefaultAppCandidatesForService___block_invoke;
    v8[3] = &unk_1E82D10D0;
    v9 = v3;
    v5 = [(NSArray *)defaultAppCandidates ses_contains:v8];
    v6 = v9;
    goto LABEL_9;
  }

  v6 = SESDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_ERROR, "Service does not exist", buf, 2u);
  }

  v5 = 0;
LABEL_9:

  return v5;
}

uint64_t __65__SESNFCAppSettingsContext_existsDefaultAppCandidatesForService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 domain];
  if ([v4 isEqualToNumber:*(a1 + 32)])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 bundleId];
    v5 = [v6 isEqualToString:@"com.apple.Passbook"];
  }

  return v5;
}

- (BOOL)isApplicationInstalledOrPlaceholder:(id)placeholder
{
  v14 = *MEMORY[0x1E69E9840];
  placeholderCopy = placeholder;
  v9 = 0;
  v4 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:placeholderCopy allowPlaceholder:1 error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = SESDefaultLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v11 = v5;
      v12 = 2112;
      v13 = placeholderCopy;
      _os_log_impl(&dword_1C7B9A000, v6, OS_LOG_TYPE_ERROR, "Error %@ encountered when checking if %@ is installed", buf, 0x16u);
    }

    v7 = 0;
  }

  else
  {
    v7 = v4 != 0;
  }

  return v7;
}

@end