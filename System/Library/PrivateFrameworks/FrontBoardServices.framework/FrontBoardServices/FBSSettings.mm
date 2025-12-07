@interface FBSSettings
+ (Class)_baseClass;
+ (Class)_mutableClass;
+ (Class)immutableSubclass;
+ (Class)mutableSubclass;
+ (Class)subclassExtension;
+ (id)_descriptionProvider;
+ (id)allSettings;
+ (id)allSettingsFromExtension:(Class)extension;
+ (id)allSettingsFromProtocol:(id)protocol;
+ (id)settingForProperty:(SEL)property;
+ (id)settingForSubclassProperty:(SEL)property;
+ (id)subclassExtensions;
+ (void)_setCounterpartClass:(Class)class;
+ (void)allSettings;
+ (void)initialize;
- (BOOL)_hasAnySceneExtension;
- (BOOL)_indirect_isEmpty;
- (BOOL)conformsToExtension:(Class)extension;
- (BOOL)containsSetting:(id)setting;
- (BOOL)isEqual:(id)equal;
- (FBSSettings)initWithBSXPCCoder:(id)coder;
- (FBSSettings)initWithSettings:(id)settings;
- (FBSSettings)initWithXPCDictionary:(id)dictionary;
- (_BYTE)_sceneExtensionsCreatingIfNeeded:(_BYTE *)needed;
- (_BYTE)_underlyingValueForSetting:(_BYTE *)setting;
- (id)_allSceneExtensions;
- (id)_copyClearingProgenitor:(id)progenitor;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix debug:;
- (id)_legacyLocalSettings:(id)settings;
- (id)_legacyOtherSettings:(id)settings;
- (id)_localSettings;
- (id)_localSettings:(id)settings;
- (id)_progenitor;
- (id)_rootSettingsForLocal:(uint64_t)local createIfNeeded:;
- (id)_sceneExtensionNames;
- (id)_settings:(id)_settings;
- (id)_subSettingsForKey:(uint64_t)key local:(uint64_t)local createIfNeeded:;
- (id)_valueForSetting:(_BYTE *)setting;
- (id)copy:(id)copy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescriptionWithMultilinePrefix:(void *)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)mutableCopy:(id)copy;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (id)valueForProperty:(SEL)property expectedClass:(Class)class;
- (id)valueForSetting:(id)setting;
- (uint64_t)_applySettings:(uint64_t)settings;
- (uint64_t)_isMutable;
- (unint64_t)hash;
- (unsigned)_legacyLocalSettings;
- (unsigned)_legacyOtherSettings;
- (unsigned)_settings;
- (void)_addSceneExtension:(Class)extension;
- (void)_addSceneExtension:(Class)extension applyingSettings:(id)settings;
- (void)_clearVolatileSettingsFromSettings:(uint64_t)settings;
- (void)_isEmpty;
- (void)_removeAllSceneExtensions;
- (void)_removeSceneExtension:(Class)extension;
- (void)_removeVolatileSettings;
- (void)_setValue:(void *)value forSetting:;
- (void)_setValue:(void *)value forSetting:(void *)setting inSettings:;
- (void)encodeWithXPCDictionary:(id)dictionary;
- (void)setValue:(id)value forProperty:(SEL)property;
@end

@implementation FBSSettings

- (unsigned)_legacyOtherSettings
{
  if (self)
  {
    self = [FBSSettings _legacyOtherSettings:self];
    v1 = vars8;
  }

  return self;
}

- (id)_progenitor
{
  WeakRetained = objc_loadWeakRetained(&self->_progenitor);

  return WeakRetained;
}

- (unsigned)_legacyLocalSettings
{
  if (self)
  {
    self = [FBSSettings _legacyLocalSettings:self];
    v1 = vars8;
  }

  return self;
}

+ (id)_descriptionProvider
{
  _baseClass = [self _baseClass];

  return [_baseClass subclassExtension];
}

- (id)_sceneExtensionNames
{
  v20 = *MEMORY[0x1E69E9840];
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  v4 = [(FBSSettings *)self _sceneExtensionsCreatingIfNeeded:?];
  allKeys = [v4 allKeys];
  allObjects = [allKeys allObjects];
  v7 = [allObjects sortedArrayUsingComparator:&__block_literal_global_91];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [v4 objectForKey:{*(*(&v15 + 1) + 8 * i), v15}];
        [orderedSet addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return orderedSet;
}

- (id)_allSceneExtensions
{
  v54 = *MEMORY[0x1E69E9840];
  orderedExtensions = self->_orderedExtensions;
  if (orderedExtensions)
  {
    v3 = orderedExtensions;
  }

  else
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    selfCopy = self;
    _sceneExtensionNames = [(FBSSettings *)self _sceneExtensionNames];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v7 = [_sceneExtensionNames countByEnumeratingWithState:&v43 objects:v53 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v44;
      v37 = _sceneExtensionNames;
      v38 = orderedSet;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v44 != v9)
          {
            objc_enumerationMutation(_sceneExtensionNames);
          }

          v11 = *(*(&v43 + 1) + 8 * i);
          v12 = NSClassFromString(v11);
          if (v12)
          {
            [orderedSet addObject:v12];
          }

          else if (MEMORY[0x1A58E7B00]("[FBSSettings _allSceneExtensions]") && [(NSString *)v11 rangeOfString:@"|"]!= 0x7FFFFFFFFFFFFFFFLL)
          {
            v13 = [(NSString *)v11 substringFromIndex:[(NSString *)v11 rangeOfString:@"|"]+ 1];
            if ([v13 length])
            {
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v14 = [@"/System/Library/Frameworks/" stringByAppendingFormat:@"%@.framework/%@", v13, v13];
              v51[0] = v14;
              v15 = [@"/System/Library/PrivateFrameworks/" stringByAppendingFormat:@"%@.framework/%@", v13, v13];
              v51[1] = v15;
              v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:2];

              v17 = [v16 countByEnumeratingWithState:&v39 objects:v52 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v40;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v40 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = dlopen([*(*(&v39 + 1) + 8 * j) fileSystemRepresentation], 257);
                    if (v21)
                    {
                      v24 = v21;

                      v25 = NSClassFromString(v11);
                      if (v25 && (v26 = v25, v25 = [(objc_class *)v25 isSubclassOfClass:objc_opt_class()], v25) && (v25 = [(objc_class *)v26 softLinkExtensionFrameworkInClient], v25))
                      {
                        v27 = FBLogCommon(v25);
                        _sceneExtensionNames = v37;
                        orderedSet = v38;
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          v48 = v11;
                          v49 = 2114;
                          v50 = v13;
                          _os_log_error_impl(&dword_1A2DBB000, v27, OS_LOG_TYPE_ERROR, "Found %{public}@ after loading %{public}@", buf, 0x16u);
                        }

                        v28 = objc_opt_class();
                        v29 = [MEMORY[0x1E696B098] valueWithPointer:v24];
                        objc_setAssociatedObject(v28, v26, v29, 0);

                        FBSRealizeSceneExtension(v26, v30);
                        [v38 addObject:v26];
                      }

                      else
                      {
                        v31 = FBLogCommon(v25);
                        _sceneExtensionNames = v37;
                        orderedSet = v38;
                        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 138543618;
                          v48 = v11;
                          v49 = 2114;
                          v50 = v13;
                          _os_log_error_impl(&dword_1A2DBB000, v31, OS_LOG_TYPE_ERROR, "Failed to find scene extension %{public}@ after loading %{public}@)", buf, 0x16u);
                        }

                        dlclose(v24);
                      }

                      goto LABEL_33;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v39 objects:v52 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v23 = FBLogCommon(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
                v32 = dlerror();
                *buf = 138543618;
                v48 = v13;
                v49 = 2082;
                v50 = v32;
                _os_log_error_impl(&dword_1A2DBB000, v23, OS_LOG_TYPE_ERROR, "Unable to dlopen(%{public}@): %{public}s", buf, 0x16u);
              }

              _sceneExtensionNames = v37;
              orderedSet = v38;
            }

LABEL_33:
          }
        }

        v8 = [_sceneExtensionNames countByEnumeratingWithState:&v43 objects:v53 count:16];
      }

      while (v8);
    }

    v33 = [orderedSet copy];
    v34 = selfCopy->_orderedExtensions;
    selfCopy->_orderedExtensions = v33;

    v3 = selfCopy->_orderedExtensions;
  }

  return v3;
}

- (BOOL)_hasAnySceneExtension
{
  [(FBSSettings *)self _sceneExtensionsCreatingIfNeeded:?];
  objc_claimAutoreleasedReturnValue();
  BSSettingsIsEmpty();
}

- (void)_removeVolatileSettings
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    return;
  }

  _baseClass = [self _baseClass];
  _mutableClass = [self _mutableClass];
  if (_baseClass != self)
  {
    if (_mutableClass != self)
    {
      value = [self alloc];
      value[64] = [self isSubclassOfClass:{objc_msgSend(self, "_mutableClass")}];
      *(value + 1) = [self _baseClass];
      objc_setAssociatedObject(self, _FBSLegacyDescriptionProviderKey, value, 1);

      return;
    }

    _mutableClass = [self _baseClass];
  }

  objc_setAssociatedObject(self, _FBSCounterpartKey, _mutableClass, 0);
  v5 = _FBSCounterpartKey;

  objc_setAssociatedObject(_mutableClass, v5, self, 0);
}

- (unsigned)_settings
{
  if (self)
  {
    self = [FBSSettings _settings:self];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_isMutable
{
  if (self)
  {
    v1 = *(self + 64);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

- (id)_localSettings
{
  if (self)
  {
    self = [FBSSettings _localSettings:self];
    v1 = vars8;
  }

  return self;
}

- (BOOL)_indirect_isEmpty
{
  if (self)
  {
    LOBYTE(self) = OUTLINED_FUNCTION_6_2(self, a2);
  }

  return self;
}

- (void)_isEmpty
{
  if (self)
  {
    return OUTLINED_FUNCTION_6_2(self, a2);
  }

  return self;
}

- (id)valueForProperty:(SEL)property expectedClass:(Class)class
{
  if (!class)
  {
    [FBSSettings(FBSSceneExtension) valueForProperty:a2 expectedClass:?];
  }

  v6 = FBSSettingForExtensionSelector(self->_baseClass, property);
  if (v6)
  {
    v7 = [(FBSSettings *)self _valueForSetting:v6];
    v8 = v7;
    if (v7)
    {
      defaultValue = v7;
    }

    else
    {
      defaultValue = [(FBSSetting *)v6 defaultValue];
    }

    v11 = defaultValue;
  }

  else
  {
    v10 = FBLogSceneExtension(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [FBSSettings(FBSSceneExtension) valueForProperty:property expectedClass:?];
    }

    v11 = 0;
  }

  v12 = v11;
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  return v13;
}

- (void)setValue:(id)value forProperty:(SEL)property
{
  valueCopy = value;
  v7 = FBSSettingForExtensionSelector(self->_baseClass, property);
  if (v7)
  {
    [(FBSSettings *)self _setValue:valueCopy forSetting:v7];
  }

  else
  {
    v8 = FBLogSceneExtension(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [FBSSettings(FBSSceneExtension) valueForProperty:property expectedClass:?];
    }
  }
}

- (FBSSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  _baseClass = [v6 _baseClass];
  if (v6 == v7)
  {
    [FBSSettings initWithSettings:a2];
  }

  v9 = _baseClass;
  if (settingsCopy && _baseClass != *(settingsCopy + 1))
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = NSStringFromClass(v6);
    settingsCopy = [v25 stringWithFormat:@"%@ cannot init with %@", v26, settingsCopy];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [(FBSSettings *)a2 initWithSettings:settingsCopy];
    }

    [settingsCopy UTF8String];
    _bs_set_crash_log_message();
  }

  v28.receiver = self;
  v28.super_class = FBSSettings;
  v10 = [(FBSSettings *)&v28 init];
  v11 = v10;
  if (v10)
  {
    v10->_baseClass = v9;
    [v6 _mutableClass];
    v11->_mutable = objc_opt_isKindOfClass() & 1;
    _progenitor = [settingsCopy _progenitor];
    v13 = _progenitor;
    if (_progenitor)
    {
      v14 = _progenitor;
    }

    else
    {
      v14 = settingsCopy;
    }

    objc_storeWeak(&v11->_progenitor, v14);

    if (settingsCopy)
    {
      v15 = v11->_mutable;
      if (v15 && *(settingsCopy + 64) == 1)
      {
        v16 = [*(settingsCopy + 2) mutableCopy];
        settings = v11->_settings;
        v11->_settings = v16;

        v18 = [*(settingsCopy + 3) mutableCopy];
        localSettings = v11->_localSettings;
        v11->_localSettings = v18;

        v20 = [*(settingsCopy + 5) mutableCopy];
        legacyOtherSettings = v11->_legacyOtherSettings;
        v11->_legacyOtherSettings = v20;

        v22 = [*(settingsCopy + 4) mutableCopy];
        legacyLocalSettings = v11->_legacyLocalSettings;
        v11->_legacyLocalSettings = v22;

        BSEqualBools();
      }

      v11->_needsCoW = v15;
      BSSettingsIsEmpty();
    }

    FBSRealizeSubclassExtension(v6);
  }

  return v11;
}

- (id)copy:(id)copy
{
  if (copy)
  {
    v4 = [(FBSSettings *)self mutableCopy:?];
    v5 = [v4 copy];

    return v5;
  }

  else
  {

    return [(FBSSettings *)self copy];
  }
}

- (id)mutableCopy:(id)copy
{
  copyCopy = copy;
  v5 = [(FBSSettings *)self mutableCopy];
  if (copyCopy)
  {
    copyCopy[2](copyCopy, v5);
  }

  return v5;
}

+ (void)_setCounterpartClass:(Class)class
{
  v41 = *MEMORY[0x1E69E9840];
  if (!class)
  {
    [FBSSettings _setCounterpartClass:a2];
  }

  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __36__FBSSettings__setCounterpartClass___block_invoke;
  v24 = &__block_descriptor_48_e5_v8__0l;
  v25 = a2;
  selfCopy = self;
  if (_setCounterpartClass__onceToken != -1)
  {
    dispatch_once(&_setCounterpartClass__onceToken, &v21);
  }

  os_unfair_lock_lock(&_setCounterpartClass__lock);
  v5 = objc_getAssociatedObject(self, _FBSCounterpartKey);

  if (!v5)
  {
    if (([self isSubclassOfClass:{objc_opt_class(), v21, v22, v23, v24, v25, selfCopy}] & 1) != 0 || objc_msgSend(self, "isSubclassOfClass:", objc_opt_class()))
    {
      class_getMethodImplementation(self, sel_copyWithZone_);
      v6 = dyld_image_header_containing_address();
      selfCopy2 = class;
    }

    else
    {
      class_getMethodImplementation(class, sel_copyWithZone_);
      v6 = dyld_image_header_containing_address();
      selfCopy2 = self;
    }

    class_getMethodImplementation(selfCopy2, sel_mutableCopyWithZone_);
    v8 = dyld_image_header_containing_address();
    v9 = v8;
    if (v8 && v8 != _setCounterpartClass__fbsAddress && v8 == v6)
    {
      v10 = FBLogSceneExtension(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = NSStringFromClass(self);
        v12 = NSStringFromClass(class);
        *buf = 138543618;
        v28 = v11;
        v29 = 2114;
        v30 = v12;
        _os_log_impl(&dword_1A2DBB000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ setting counterpart class: %{public}@", buf, 0x16u);
      }

      objc_setAssociatedObject(self, _FBSCounterpartKey, class, 0);
      objc_setAssociatedObject(class, _FBSCounterpartKey, self, 0);
    }

    else
    {
      v13 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:dyld_image_path_containing_address()];
      lastPathComponent = [v13 lastPathComponent];

      v15 = [MEMORY[0x1E696AEC0] bs_stringWithUTF8String:dyld_image_path_containing_address()];
      lastPathComponent2 = [v15 lastPathComponent];

      v18 = FBLogSceneExtension(v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = NSStringFromClass(self);
        v20 = NSStringFromClass(class);
        *buf = 138544898;
        v28 = v19;
        v29 = 2114;
        v30 = v20;
        v31 = 2114;
        v32 = lastPathComponent;
        v33 = 2048;
        v34 = v9;
        v35 = 2114;
        v36 = lastPathComponent2;
        v37 = 2048;
        v38 = v6;
        v39 = 2048;
        v40 = _setCounterpartClass__fbsAddress;
        _os_log_impl(&dword_1A2DBB000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ ignoring counterpart %{public}@ that is not from the same executable (%{public}@:%p/%{public}@:%p/%p)!", buf, 0x48u);
      }
    }
  }

  os_unfair_lock_unlock(&_setCounterpartClass__lock);
}

uint64_t __36__FBSSettings__setCounterpartClass___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = objc_opt_class();
  class_getMethodImplementation(v3, sel_initWithSettings_);
  result = dyld_image_header_containing_address();
  _setCounterpartClass__fbsAddress = result;
  if (!result)
  {
    __36__FBSSettings__setCounterpartClass___block_invoke_cold_1(a1);
  }

  return result;
}

- (_BYTE)_underlyingValueForSetting:(_BYTE *)setting
{
  v3 = a2;
  v4 = v3;
  if (setting)
  {
    if (!v3)
    {
      [FBSSettings _underlyingValueForSetting:?];
    }

    [(FBSSettings *)setting _underlyingValueForSetting:v3, &v6];
    setting = v6;
  }

  return setting;
}

- (void)_setValue:(void *)value forSetting:
{
  v6 = a2;
  valueCopy = value;
  if (self)
  {
    if (!valueCopy)
    {
      [FBSSettings _setValue:? forSetting:?];
    }

    if ((self[64] & 1) == 0)
    {
      [FBSSettings _setValue:? forSetting:?];
    }

    [(FBSSettings *)valueCopy _setValue:self forSetting:v6];
  }
}

- (id)_subSettingsForKey:(uint64_t)key local:(uint64_t)local createIfNeeded:
{
  keyCopy = key;
  v7 = a2;
  v8 = v7;
  if (self)
  {
    if (!v7)
    {
      [FBSSettings _subSettingsForKey:? local:? createIfNeeded:?];
    }

    v9 = [(FBSSettings *)self _rootSettingsForLocal:keyCopy createIfNeeded:local];
    v10 = [v9 objectForKey:v8];
    if (!v10 && local)
    {
      if ((self[64] & 1) == 0)
      {
        [FBSSettings _subSettingsForKey:? local:? createIfNeeded:?];
      }

      v10 = objc_opt_new();
      [v9 setObject:v10 forKey:v8];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_addSceneExtension:(Class)extension
{
  v11 = *MEMORY[0x1E69E9840];
  if (!extension)
  {
    [FBSSettings _addSceneExtension:a2];
  }

  if (!self || !self->_mutable)
  {
    [FBSSettings _addSceneExtension:a2];
  }

  if (([(objc_class *)extension isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [(FBSSettings *)extension _addSceneExtension:a2];
  }

  FBSRealizeSceneExtension(extension, v6);
  _allSceneExtensions = [(FBSSettings *)self _allSceneExtensions];
  v8 = [_allSceneExtensions containsObject:extension];

  if ((v8 & 1) == 0)
  {
    [(FBSSettings *)self _addSceneExtension:extension, v9, v10];
  }
}

- (void)_addSceneExtension:(Class)extension applyingSettings:(id)settings
{
  v13 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  if (!settingsCopy)
  {
    [FBSSettings _addSceneExtension:a2 applyingSettings:?];
  }

  v8 = settingsCopy;
  if (self->_baseClass != *(settingsCopy + 1))
  {
    [FBSSettings _addSceneExtension:a2 applyingSettings:?];
  }

  [(FBSSettings *)self _addSceneExtension:extension];
  memset(v11, 0, sizeof(v11));
  v9 = [objc_opt_class() _settingsExtensionsForSceneExtension:{extension, 0}];
  if ([v9 countByEnumeratingWithState:v11 objects:v12 count:16])
  {
    v10 = NSStringFromClass(**(&v11[0] + 1));
    [(FBSSettings *)v8 _subSettingsForKey:v10 local:0 createIfNeeded:0];
    objc_claimAutoreleasedReturnValue();
    BSSettingsIsEmpty();
  }
}

- (void)_removeSceneExtension:(Class)extension
{
  v37 = *MEMORY[0x1E69E9840];
  if (!extension)
  {
    [FBSSettings _removeSceneExtension:a2];
  }

  if (!self || !self->_mutable)
  {
    [FBSSettings _removeSceneExtension:a2];
  }

  if (([(objc_class *)extension isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [(FBSSettings *)extension _removeSceneExtension:a2];
  }

  _allSceneExtensions = [(FBSSettings *)self _allSceneExtensions];
  v7 = [_allSceneExtensions containsObject:extension];

  if (v7)
  {
    v8 = [(FBSSettings *)self _sceneExtensionsCreatingIfNeeded:?];
    allKeys = [v8 allKeys];
    allObjects = [allKeys allObjects];
    v11 = [allObjects sortedArrayUsingComparator:&__block_literal_global_32];

    v12 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = v11;
    v14 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        v17 = 0;
        do
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [v8 objectForKey:*(*(&v31 + 1) + 8 * v17)];
          v19 = NSClassFromString(v18);

          if (v19)
          {
            v20 = v19 == extension;
          }

          else
          {
            v20 = 1;
          }

          if (!v20)
          {
            [v12 addObject:v19];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v15);
    }

    [v8 removeAllSettings];
    orderedExtensions = self->_orderedExtensions;
    self->_orderedExtensions = 0;

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v22 = v12;
    v23 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v28;
      do
      {
        v26 = 0;
        do
        {
          if (*v28 != v25)
          {
            objc_enumerationMutation(v22);
          }

          [(FBSSettings *)self _addSceneExtension:*(*(&v27 + 1) + 8 * v26++), v27];
        }

        while (v24 != v26);
        v24 = [v22 countByEnumeratingWithState:&v27 objects:v35 count:16];
      }

      while (v24);
    }
  }
}

- (void)_removeAllSceneExtensions
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (uint64_t)_applySettings:(uint64_t)settings
{
  v3 = a2;
  v4 = v3;
  if (settings)
  {
    if ((*(settings + 64) & 1) == 0)
    {
      [FBSSettings _applySettings:?];
    }

    if (*(settings + 8) != v3[1])
    {
      [FBSSettings _applySettings:?];
    }

    v6 = v3;
    [FBSSettings _applySettings:];
    v4 = v6;
  }

  return MEMORY[0x1EEE66BB8](v3, v4);
}

- (BOOL)conformsToExtension:(Class)extension
{
  v20[1] = *MEMORY[0x1E69E9840];
  _allSceneExtensions = [(FBSSettings *)self _allSceneExtensions];
  v6 = [_allSceneExtensions containsObject:extension];

  if (v6)
  {
    return 1;
  }

  if ([(objc_class *)extension isSubclassOfClass:objc_opt_class()])
  {
    v8 = [objc_opt_class() _settingsExtensionsForSceneExtension:extension];
  }

  else
  {
    v20[0] = extension;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        if (!FBSSettingsExtensionIsRealized(self->_baseClass, *(*(&v15 + 1) + 8 * i)))
        {
          v7 = 0;
          goto LABEL_16;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_16:

  return v7;
}

+ (id)settingForProperty:(SEL)property
{
  if (objc_opt_class() == self)
  {
    [FBSSettings settingForProperty:a2];
  }

  return FBSSettingForSelector(self, property);
}

+ (id)settingForSubclassProperty:(SEL)property
{
  if (objc_opt_class() == self)
  {
    [FBSSettings settingForSubclassProperty:a2];
  }

  return FBSSettingForLegacySelector(self, property);
}

+ (id)allSettings
{
  if (objc_opt_class() == self)
  {
    +[(FBSSettings *)a2];
  }

  return FBSAllSettings(self);
}

+ (id)allSettingsFromProtocol:(id)protocol
{
  protocolCopy = protocol;
  if (objc_opt_class() == self)
  {
    [FBSSettings allSettingsFromProtocol:a2];
  }

  v6 = FBSAllSettingsFromProtocol(self, protocolCopy);

  return v6;
}

+ (id)allSettingsFromExtension:(Class)extension
{
  if (([(objc_class *)extension isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    [FBSSettings allSettingsFromExtension:a2];
  }

  protocol = [(objc_class *)extension protocol];
  v7 = [self allSettingsFromProtocol:protocol];

  return v7;
}

- (BOOL)containsSetting:(id)setting
{
  if (!setting)
  {
    return 0;
  }

  v3 = [(FBSSettings *)self _underlyingValueForSetting:setting];
  v4 = v3 != 0;

  return v4;
}

- (id)valueForSetting:(id)setting
{
  settingCopy = setting;
  if (!settingCopy)
  {
    defaultValue2 = 0;
    goto LABEL_3;
  }

  v7 = [(FBSSettings *)self _valueForSetting:settingCopy];
  if (v7)
  {
    type = [(FBSSetting *)settingCopy type];
    if (type == 64)
    {
      v9 = v7;
      if (!_NSIsNSValue() || *[v9 objCType] != 64 || ((v10 = objc_opt_class(), v11 = v9, !v10) ? (v12 = 0) : (objc_opt_isKindOfClass() & 1) == 0 ? (v12 = 0) : (v12 = v11), v19 = v12, v11, objc_msgSend(v19, "weakObjectValue"), v9 = objc_claimAutoreleasedReturnValue(), v11, v19, v9))
      {
        [(FBSSetting *)settingCopy expectedClass];
        if ([(FBSSetting *)settingCopy specialCollection]== 0x7FFFFFFFFFFFFFFFLL)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 || [v9 count])
          {
            BSSettingFlagIsYes();
          }
        }

        BSSettingFlagIsYes();
      }

      v18 = 0;
    }

    else
    {
      if ((type & 0xFFFFFFEF) != 0x2A && type != 123 && type == 35)
      {
        v13 = objc_opt_class();
        v14 = v7;
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

        v21 = v15;

        v18 = NSClassFromString(v21);

        if (v18)
        {
          goto LABEL_37;
        }

        goto LABEL_41;
      }

      v16 = objc_opt_class();
      v9 = v7;
      if (v16)
      {
        if (objc_opt_isKindOfClass())
        {
          v17 = v9;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;
    }

    if (v18)
    {
LABEL_37:
      defaultValue = v18;
LABEL_42:
      defaultValue2 = defaultValue;

      goto LABEL_43;
    }

LABEL_41:
    defaultValue = [(FBSSetting *)settingCopy defaultValue];
    goto LABEL_42;
  }

  defaultValue2 = [(FBSSetting *)settingCopy defaultValue];
LABEL_43:

LABEL_3:

  return defaultValue2;
}

- (unint64_t)hash
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (self ^ (self >> 30))) ^ ((0xBF58476D1CE4E5B9 * (self ^ (self >> 30))) >> 27));
  result = [*(a2 + 16) hash];
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (result ^ (result >> 30))) ^ ((0xBF58476D1CE4E5B9 * (result ^ (result >> 30))) >> 27));
  *a3 = v4 ^ ((v6 ^ v4) >> 31) ^ v6;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  p_isa = &equalCopy->super.isa;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && self->_baseClass == p_isa[1] && [(FBSSettings *)self _isEqualToSettings:p_isa];
  }

  return v6;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(FBSSettings *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(FBSSettings *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (self && self->_mutable)
  {
    v4 = [(objc_class *)self->_baseClass allocWithZone:zone];

    return [(objc_class *)v4 initWithSettings:self];
  }

  else
  {

    return self;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  if (self && self->_mutable)
  {
    v4 = [objc_opt_class() allocWithZone:zone];

    return [v4 initWithSettings:self];
  }

  else
  {
    [(FBSSettings *)self mutableCopyWithZone:zone, &v6];
    return v6;
  }
}

- (FBSSettings)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FBSSettings *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_settings"];
    settings = v5->_settings;
    v5->_settings = v6;

    v8 = v5->_settings;
    _descriptionProvider = [objc_opt_class() _descriptionProvider];
    [(BSKeyedSettings *)v8 setDescriptionProvider:_descriptionProvider];

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_legacyOtherSettings"];
    legacyOtherSettings = v5->_legacyOtherSettings;
    v5->_legacyOtherSettings = v10;

    v12 = v5->_legacyOtherSettings;
    _legacyDescriptionProvider = [objc_opt_class() _legacyDescriptionProvider];
    [(BSSettings *)v12 setDescriptionProvider:_legacyDescriptionProvider];
  }

  return v5;
}

- (FBSSettings)initWithXPCDictionary:(id)dictionary
{
  v4 = [off_1E76BCA80 coderWithMessage:dictionary];
  v5 = [(FBSSettings *)self initWithBSXPCCoder:v4];

  return v5;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  v4 = [off_1E76BCA80 coderWithMessage:dictionary];
  [(FBSSettings *)self encodeWithBSXPCCoder:v4];
}

- (id)_copyClearingProgenitor:(id)progenitor
{
  progenitorCopy = progenitor;
  v5 = progenitorCopy;
  if (self)
  {
    v6 = self->_mutable;
    if (progenitorCopy)
    {
LABEL_8:
      selfCopy = [(FBSSettings *)self copy:progenitorCopy];
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    if (progenitorCopy)
    {
      goto LABEL_8;
    }
  }

  if (v6)
  {
    goto LABEL_8;
  }

  WeakRetained = objc_loadWeakRetained(&self->_progenitor);

  if (WeakRetained)
  {
    selfCopy = [objc_alloc(objc_opt_class()) initWithSettings:self];
  }

  else
  {
    selfCopy = self;
  }

LABEL_9:
  v9 = selfCopy;
  objc_storeWeak(&selfCopy->_progenitor, 0);

  return v9;
}

+ (Class)_baseClass
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

+ (Class)_mutableClass
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

- (id)_rootSettingsForLocal:(uint64_t)local createIfNeeded:
{
  if (self)
  {
    if (a2)
    {
      [FBSSettings _localSettings:self];
    }

    else
    {
      [FBSSettings _settings:self];
    }
    self = ;
    v3 = vars8;
  }

  return self;
}

- (id)_localSettings:(id)settings
{
  if (settings)
  {
    OUTLINED_FUNCTION_5_7();
    v4 = !v4 || v3 == 0;
    if (v4)
    {
      goto LABEL_13;
    }

    if (*(v1 + 24))
    {
      OUTLINED_FUNCTION_11_3();
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v6 = [*(v1 + 24) mutableCopy];
      _descriptionProvider = *(v1 + 24);
      *(v1 + 24) = v6;
    }

    else
    {
      v8 = objc_opt_new();
      v9 = *(v1 + 24);
      *(v1 + 24) = v8;

      v10 = *(v1 + 24);
      _descriptionProvider = [objc_opt_class() _descriptionProvider];
      [v10 setDescriptionProvider:_descriptionProvider];
    }

LABEL_13:
    settings = *(v1 + 24);
    v2 = vars8;
  }

  return settings;
}

- (id)_settings:(id)_settings
{
  if (_settings)
  {
    OUTLINED_FUNCTION_5_7();
    v4 = !v4 || v3 == 0;
    if (v4)
    {
      goto LABEL_13;
    }

    if (*(v1 + 16))
    {
      OUTLINED_FUNCTION_11_3();
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v6 = [*(v1 + 16) mutableCopy];
      _descriptionProvider = *(v1 + 16);
      *(v1 + 16) = v6;
    }

    else
    {
      v8 = objc_opt_new();
      v9 = *(v1 + 16);
      *(v1 + 16) = v8;

      v10 = *(v1 + 16);
      _descriptionProvider = [objc_opt_class() _descriptionProvider];
      [v10 setDescriptionProvider:_descriptionProvider];
    }

LABEL_13:
    _settings = *(v1 + 16);
    v2 = vars8;
  }

  return _settings;
}

- (id)_valueForSetting:(_BYTE *)setting
{
  if (setting)
  {
    v2 = [(FBSSettings *)setting _underlyingValueForSetting:a2];
    if (![@"<explicitly nil>" isEqual:v2])
    {
      goto LABEL_5;
    }
  }

  v2 = 0;
LABEL_5:

  return v2;
}

- (void)_setValue:(void *)value forSetting:(void *)setting inSettings:
{
  v17 = a2;
  settingCopy = setting;
  if (self)
  {
    valueCopy = value;
    [settingCopy setDescriptionProvider:-[FBSSetting extension](valueCopy)];
    name = [(FBSSetting *)valueCopy name];
    defaultValue = [(FBSSetting *)valueCopy defaultValue];
    isNullPreserving = [(FBSSetting *)valueCopy isNullPreserving];

    if (v17 && (v12 = [(__CFString *)v17 isEqual:defaultValue], v13 = v17, !v12))
    {
      if (*MEMORY[0x1E695E4D0] == v17 || *MEMORY[0x1E695E4C0] == v17)
      {
        if (isNullPreserving)
        {
          BSSettingFlagForBool();
        }

        if (*MEMORY[0x1E695E4D0] == v17)
        {
          v16 = 1;
        }

        else
        {
          v16 = 0x7FFFFFFFFFFFFFFFLL;
        }

        [settingCopy setFlag:v16 forKey:name];
        [settingCopy setObject:0 forKey:name];
        goto LABEL_18;
      }
    }

    else
    {
      if ((isNullPreserving & 1) == 0)
      {
        v14 = settingCopy;
        v13 = 0;
LABEL_17:
        [v14 setObject:v13 forKey:name];
        [settingCopy setFlag:0x7FFFFFFFFFFFFFFFLL forKey:name];
LABEL_18:

        goto LABEL_19;
      }

      if (defaultValue)
      {
        v13 = defaultValue;
      }

      else
      {
        v13 = @"<explicitly nil>";
      }
    }

    v14 = settingCopy;
    goto LABEL_17;
  }

LABEL_19:
}

- (_BYTE)_sceneExtensionsCreatingIfNeeded:(_BYTE *)needed
{
  if (needed)
  {
    needed = [(FBSSettings *)needed _subSettingsForKey:0 local:a2 createIfNeeded:?];
    v2 = vars8;
  }

  return needed;
}

- (void)_clearVolatileSettingsFromSettings:(uint64_t)settings
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (settings)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allKeys = [v3 allKeys];
    v6 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v6)
    {
      goto LABEL_27;
    }

    v7 = v6;
    v8 = *v17;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v4 objectForKey:v10];
        if (v11)
        {
          v12 = NSSelectorFromString(v10);
          if (v12)
          {
            v13 = FBSSettingForExtensionSelector(*(settings + 8), v12);
            if (([(FBSSetting *)v13 isVolatile]& 1) == 0)
            {
              if (!v13)
              {
LABEL_14:
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  [(FBSSettings *)settings _clearVolatileSettingsFromSettings:v11];
                }

                v13 = 0;
              }

LABEL_17:

              goto LABEL_18;
            }
          }

          else
          {
            v13 = 0;
            if (![(FBSSetting *)0 isVolatile])
            {
              goto LABEL_14;
            }
          }

          [(FBSSettings *)settings _setValue:v13 forSetting:?];
          goto LABEL_17;
        }

LABEL_18:
        if ([v4 flagForKey:v10] != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = NSSelectorFromString(v10);
          if (v14)
          {
            v15 = FBSSettingForExtensionSelector(*(settings + 8), v14);
          }

          else
          {
            v15 = 0;
          }

          if ([(FBSSetting *)v15 isVolatile])
          {
            [(FBSSettings *)settings _setValue:v15 forSetting:?];
          }
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v7)
      {
LABEL_27:

        break;
      }
    }
  }
}

- (id)_legacyOtherSettings:(id)settings
{
  if (settings)
  {
    OUTLINED_FUNCTION_5_7();
    v4 = !v4 || v3 == 0;
    if (v4)
    {
      goto LABEL_13;
    }

    if (*(v1 + 40))
    {
      OUTLINED_FUNCTION_11_3();
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v6 = [*(v1 + 40) mutableCopy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    v7 = *(v1 + 40);
    *(v1 + 40) = v6;

    v8 = *(v1 + 40);
    _legacyDescriptionProvider = [objc_opt_class() _legacyDescriptionProvider];
    [v8 setDescriptionProvider:_legacyDescriptionProvider];

LABEL_13:
    settings = *(v1 + 40);
    v2 = vars8;
  }

  return settings;
}

- (id)_legacyLocalSettings:(id)settings
{
  if (settings)
  {
    OUTLINED_FUNCTION_5_7();
    v4 = !v4 || v3 == 0;
    if (v4)
    {
      goto LABEL_13;
    }

    if (*(v1 + 32))
    {
      OUTLINED_FUNCTION_11_3();
      if (!v4)
      {
        goto LABEL_13;
      }

      v5 = objc_opt_class();
      if (v5 != objc_opt_class())
      {
        goto LABEL_13;
      }

      v6 = [*(v1 + 32) mutableCopy];
    }

    else
    {
      v6 = objc_opt_new();
    }

    v7 = *(v1 + 32);
    *(v1 + 32) = v6;

LABEL_13:
    settings = *(v1 + 32);
    v2 = vars8;
  }

  return settings;
}

- (id)debugDescriptionWithMultilinePrefix:(void *)prefix
{
  if (prefix)
  {
    v2 = [(FBSSettings *)prefix _descriptionBuilderWithMultilinePrefix:a2 debug:1];
    build = [v2 build];
  }

  else
  {
    build = 0;
  }

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix debug:
{
  v5 = a2;
  if (self)
  {
    [self succinctDescriptionBuilder];
    [objc_claimAutoreleasedReturnValue() setUseDebugDescription:prefix];
    BSSettingsIsEmpty();
  }

  return 0;
}

+ (Class)subclassExtension
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

+ (id)subclassExtensions
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return MEMORY[0x1E695E0F0];
}

+ (Class)mutableSubclass
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

+ (Class)immutableSubclass
{
  OUTLINED_FUNCTION_8_1();
  v2 = objc_opt_class();
  OUTLINED_FUNCTION_4_5(v2);
  return 0;
}

- (void)initWithSettings:(uint64_t)a3 .cold.1(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = NSStringFromSelector(a1);
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  *v13 = 138544642;
  *&v13[4] = v5;
  *&v13[12] = 2114;
  *&v13[14] = v7;
  *&v13[22] = 2048;
  LOWORD(v14) = 2114;
  *(&v14 + 2) = @"FBSSettings.m";
  WORD5(v14) = 1024;
  HIDWORD(v14) = 69;
  LOWORD(v15) = 2114;
  *(&v15 + 2) = a3;
  OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, *v13, *&v13[8], *&v13[16], a2, v14, v15, HIWORD(a3));
}

- (void)initWithSettings:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"abstract superclass should not be instantiated"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)_setCounterpartClass:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"counterpart"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

void __36__FBSSettings__setCounterpartClass___block_invoke_cold_1(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"count not find executable name for FrontBoardServices"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(*(a1 + 32));
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    *v11 = 138544642;
    *&v11[4] = v3;
    *&v11[12] = 2114;
    *&v11[14] = v5;
    *&v11[22] = 2048;
    LOWORD(v12) = 2114;
    *(&v12 + 2) = @"FBSSettings.m";
    WORD5(v12) = 1024;
    HIDWORD(v12) = 168;
    LOWORD(v13) = 2114;
    *(&v13 + 2) = v2;
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, *v11, *&v11[8], *&v11[16], *(a1 + 40), v12, v13, HIWORD(v2));
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_underlyingValueForSetting:(uint64_t *)a3 .cold.1(_BYTE *a1, uint64_t a2, uint64_t *a3)
{
  if (a1[64] == 1)
  {
    v6 = [(FBSSetting *)a2 isBSSettings];
  }

  else
  {
    v6 = 0;
  }

  v13 = [(FBSSetting *)a2 extensionID];
  v7 = [(FBSSetting *)a2 isLocal];
  v8 = [(FBSSettings *)a1 _rootSettingsForLocal:v7 createIfNeeded:v6];
  v9 = v8;
  if (v13)
  {
    v10 = [v8 objectForKey:?];

    v9 = v10;
  }

  if (v9)
  {
    v11 = [(FBSSetting *)a2 setting];
    v12 = [v9 objectForSetting:v11];
    if (v12)
    {
      goto LABEL_10;
    }

    if ([v9 flagForSetting:v11] != 0x7FFFFFFFFFFFFFFFLL)
    {
      BSSettingFlagIsYes();
    }
  }

  v12 = 0;
LABEL_10:
  *a3 = v12;
}

- (void)_underlyingValueForSetting:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"setting != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_setValue:(char *)a1 forSetting:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_setValue:(void *)a3 forSetting:.cold.2(void *a1, _BYTE *a2, void *a3)
{
  v6 = [(FBSSetting *)a1 isLocal];
  v10 = [(FBSSetting *)a1 extensionID];
  v7 = [(FBSSettings *)a2 _rootSettingsForLocal:v6 createIfNeeded:1];
  v8 = v7;
  if (v10)
  {
    v9 = [(FBSSettings *)a2 _subSettingsForKey:v10 local:v6 createIfNeeded:1];
    [(FBSSettings *)a2 _setValue:a3 forSetting:a1 inSettings:v9];
    BSSettingsIsEmpty();
  }

  [(FBSSettings *)a2 _setValue:a3 forSetting:a1 inSettings:v7];
}

- (void)_setValue:(char *)a1 forSetting:.cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"setting != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_subSettingsForKey:(char *)a1 local:createIfNeeded:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_subSettingsForKey:(char *)a1 local:createIfNeeded:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"key != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addSceneExtension:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a FBSSceneExtension", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_12(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addSceneExtension:(uint64_t)a3 .cold.2(void *a1, objc_class *a2, uint64_t a3, uint64_t a4)
{
  v8 = [(FBSSettings *)a1 _sceneExtensionsCreatingIfNeeded:?];
  v9 = MEMORY[0x1E696AEC0];
  v10 = [v8 allKeys];
  v11 = [v9 stringWithFormat:@"%llu", objc_msgSend(v10, "count") + 1];

  v12 = NSStringFromClass(a2);
  if (MEMORY[0x1A58E7B00]("[FBSSettings _addSceneExtension:]") && [(objc_class *)a2 softLinkExtensionFrameworkInClient])
  {
    v13 = [(objc_class *)a2 _frameworkNameLoadingIfNeeded:1];
    v14 = [v12 stringByAppendingFormat:@"|%@", v13];

    v12 = v14;
  }

  [v8 setObject:v12 forKey:v11];
  v15 = a1[7];
  v27 = v11;
  if (v15)
  {
    v16 = [v15 mutableCopy];
    [v16 addObject:a2];
    v17 = [v16 copy];
    v18 = a1[7];
    a1[7] = v17;
  }

  else
  {
    v19 = [MEMORY[0x1E695DFB8] orderedSetWithObject:a2];
    v16 = a1[7];
    a1[7] = v19;
  }

  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v20 = [objc_opt_class() _settingsExtensionsForSceneExtension:a2];
  v21 = [v20 countByEnumeratingWithState:a3 objects:a4 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = **(a3 + 16);
    do
    {
      v24 = 0;
      do
      {
        if (**(a3 + 16) != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(a3 + 8) + 8 * v24);
        v26 = objc_opt_class();
        FBSRealizeSettingsExtension(v26, v25);
        ++v24;
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:a3 objects:a4 count:16];
    }

    while (v22);
  }
}

- (void)_addSceneExtension:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addSceneExtension:(char *)a1 .cold.4(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"extension != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addSceneExtension:(char *)a1 applyingSettings:.cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"class mismatch"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_addSceneExtension:(char *)a1 applyingSettings:.cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"fromSettings"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_removeSceneExtension:(uint64_t)a1 .cold.1(uint64_t a1, char *a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ is not a FBSSceneExtension", a1];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = NSStringFromSelector(a2);
    v6 = OUTLINED_FUNCTION_12(v4, v5);
    v7 = NSStringFromClass(v6);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v8, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v9, v10, v11, v12, v13, v14);
  }

  [v3 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_removeSceneExtension:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_removeSceneExtension:(char *)a1 .cold.3(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"extensionToRemove != ((void *)0)"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_applySettings:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"this class is not mutable"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_applySettings:(char *)a1 .cold.2(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"class mismatch"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)_applySettings:.cold.3()
{
  OUTLINED_FUNCTION_8_1();
  v3 = [FBSSettings _settings:v2];
  v4 = OUTLINED_FUNCTION_9_4();
  v5 = [FBSSettings _settings:v4];
  OUTLINED_FUNCTION_10_3(v5);

  v6 = [FBSSettings _localSettings:v0];
  v7 = OUTLINED_FUNCTION_9_4();
  v8 = [FBSSettings _localSettings:v7];
  OUTLINED_FUNCTION_10_3(v8);

  v9 = [FBSSettings _legacyOtherSettings:v0];
  v10 = OUTLINED_FUNCTION_9_4();
  v11 = [FBSSettings _legacyOtherSettings:v10];
  OUTLINED_FUNCTION_10_3(v11);

  v14 = [FBSSettings _legacyLocalSettings:v0];
  v12 = OUTLINED_FUNCTION_9_4();
  v13 = [FBSSettings _legacyLocalSettings:v12];
  [v14 applySettings:v13];
}

+ (void)settingForProperty:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call on a concrete subclass"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)settingForSubclassProperty:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call on a concrete subclass"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)allSettings
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call on a concrete subclass"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(self);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)allSettingsFromProtocol:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"must call on a concrete subclass"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_13();
    OUTLINED_FUNCTION_3(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

+ (void)allSettingsFromExtension:(char *)a1 .cold.1(char *a1)
{
  v2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid condition not satisfying: %@", @"[extension isSubclassOfClass:[FBSSettingsExtension class]]"];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v5 = OUTLINED_FUNCTION_12(v3, v4);
    v6 = NSStringFromClass(v5);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_11(&dword_1A2DBB000, MEMORY[0x1E69E9C10], v7, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v8, v9, v10, v11, v12, v13);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
}

- (void)valueForSetting:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v3 = *MEMORY[0x1E69E9840];
  [(FBSSetting *)a1 name];
  objc_claimAutoreleasedReturnValue();
  BSSettingFlagIsYes();
}

- (void)mutableCopyWithZone:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  result = [objc_msgSend(objc_msgSend(objc_opt_class() "_mutableClass")];
  *a3 = result;
  return result;
}

@end