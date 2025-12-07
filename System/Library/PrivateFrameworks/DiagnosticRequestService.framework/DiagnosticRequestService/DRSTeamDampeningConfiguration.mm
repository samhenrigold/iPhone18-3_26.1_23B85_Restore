@interface DRSTeamDampeningConfiguration
+ (id)teamIdToTeamDampeningConfigFromPlistDirectoryPath:(id)path errorOut:(id *)out;
- (BOOL)isEqual:(id)equal;
- (DRSTeamDampeningConfiguration)initWithDefaultConfiguration:(id)configuration issueCategoryToConfigurationDict:(id)dict;
- (DRSTeamDampeningConfiguration)initWithPlistDict:(id)dict;
- (id)_ON_MOC_QUEUE_moRepresentationInContext:(id)context teamID:(id)d;
- (id)_initWithTeamDampeningConfigMO_ON_MOC_QUEUE:(id)e;
- (id)configurationForIssueCategory:(id)category;
- (id)debugDescription;
- (id)jsonCompatibleDictRepresentation;
- (void)updateIssueCategoryConfig:(id)config newConfig:(id)newConfig;
@end

@implementation DRSTeamDampeningConfiguration

- (id)jsonCompatibleDictRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  defaultConfiguration = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];

  if (defaultConfiguration)
  {
    defaultConfiguration2 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
    jsonCompatibleDictRepresentation = [defaultConfiguration2 jsonCompatibleDictRepresentation];
    [v3 setObject:jsonCompatibleDictRepresentation forKeyedSubscript:kDRSDMDefaultConfigKey];
  }

  issueCategoryToConfigurationDict = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
  v8 = [issueCategoryToConfigurationDict count];

  if (v8)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    issueCategoryToConfigurationDict2 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__DRSTeamDampeningConfiguration_jsonCompatibleDictRepresentation__block_invoke;
    v13[3] = &unk_27899FDD0;
    v14 = dictionary;
    v11 = dictionary;
    [issueCategoryToConfigurationDict2 enumerateKeysAndObjectsUsingBlock:v13];

    [v3 setObject:v11 forKeyedSubscript:kDRSDMIssueCategoryDictKey];
  }

  return v3;
}

void __65__DRSTeamDampeningConfiguration_jsonCompatibleDictRepresentation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 jsonCompatibleDictRepresentation];
  [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
}

- (id)debugDescription
{
  string = [MEMORY[0x277CCAB68] string];
  defaultConfiguration = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];

  if (defaultConfiguration)
  {
    defaultConfiguration2 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
    v6 = [defaultConfiguration2 debugDescription];
    [string appendFormat:@"Default config:\n%@\n%@", @"==========================", v6];
  }

  issueCategoryToConfigurationDict = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];

  if (issueCategoryToConfigurationDict)
  {
    issueCategoryToConfigurationDict2 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__DRSTeamDampeningConfiguration_debugDescription__block_invoke;
    v10[3] = &unk_27899FDD0;
    v11 = string;
    [issueCategoryToConfigurationDict2 enumerateKeysAndObjectsUsingBlock:v10];
  }

  return string;
}

void __49__DRSTeamDampeningConfiguration_debugDescription__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 debugDescription];
  [v4 appendFormat:@"%@:\n%@\n%@", v5, @"==========================", v6];
}

- (DRSTeamDampeningConfiguration)initWithPlistDict:(id)dict
{
  dictCopy = dict;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __51__DRSTeamDampeningConfiguration_initWithPlistDict___block_invoke;
  v29[3] = &unk_27899FDF8;
  v29[4] = &v30;
  v5 = [dictCopy enumerateKeysAndObjectsUsingBlock:v29];
  if (*(v31 + 24) != 1)
  {
    v6 = [dictCopy objectForKeyedSubscript:kDRSDMDefaultConfigKey];
    if (v6)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v9 = DPLogHandle_DampeningManagerError(isKindOfClass);
        if (os_signpost_enabled(&v9->super))
        {
          *buf = 0;
          v10 = "Invalid default config dictionary value";
          goto LABEL_19;
        }

LABEL_20:
        selfCopy = 0;
LABEL_30:

        goto LABEL_31;
      }

      v9 = [[DRSDampeningConfiguration alloc] initWithPlistDict:v6];
      if (!v9)
      {
        v9 = DPLogHandle_DampeningManagerError(0);
        if (os_signpost_enabled(&v9->super))
        {
          *buf = 0;
          v10 = "Malformed default config dictionary";
LABEL_19:
          _os_signpost_emit_with_name_impl(&dword_232906000, &v9->super, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningFromPlistFailure", v10, buf, 2u);
          goto LABEL_20;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v9 = 0;
    }

    v11 = [dictCopy objectForKeyedSubscript:kDRSDMIssueCategoryDictKey];
    if (v11)
    {
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      if ((v12 & 1) == 0)
      {
        v19 = DPLogHandle_DampeningManagerError(v12);
        if (os_signpost_enabled(v19))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningFromPlistFailure", "Invalid issue category to config dictionary value", buf, 2u);
        }

        v18 = 0;
        goto LABEL_27;
      }

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      *buf = 0;
      v26 = buf;
      v27 = 0x2020000000;
      v28 = 0;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __51__DRSTeamDampeningConfiguration_initWithPlistDict___block_invoke_430;
      v22[3] = &unk_27899FBE8;
      v24 = buf;
      v14 = dictionary;
      v23 = v14;
      v15 = [v11 enumerateKeysAndObjectsUsingBlock:v22];
      v16 = v26[24];
      if (v16 == 1)
      {
        v17 = DPLogHandle_DampeningManagerError(v15);
        if (os_signpost_enabled(v17))
        {
          *v21 = 0;
          _os_signpost_emit_with_name_impl(&dword_232906000, v17, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningFromPlistFailure", "Malformed issue category-to-config plist dictionary value", v21, 2u);
        }

        v18 = 0;
      }

      else
      {
        v18 = v14;
      }

      _Block_object_dispose(buf, 8);
      if (v16)
      {
LABEL_27:
        selfCopy = 0;
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v18 = 0;
    }

    self = [(DRSTeamDampeningConfiguration *)self initWithDefaultConfiguration:v9 issueCategoryToConfigurationDict:v18];
    selfCopy = self;
    goto LABEL_29;
  }

  v6 = DPLogHandle_DampeningManagerError(v5);
  if (os_signpost_enabled(v6))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_232906000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningFromPlistFailure", "Malformed team dampening plist", buf, 2u);
  }

  selfCopy = 0;
LABEL_31:

  _Block_object_dispose(&v30, 8);
  return selfCopy;
}

void __51__DRSTeamDampeningConfiguration_initWithPlistDict___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a3;
  v7 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }
}

void __51__DRSTeamDampeningConfiguration_initWithPlistDict___block_invoke_430(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = a3;
  v8 = [[DRSDampeningConfiguration alloc] initWithPlistDict:v7];

  if (v8)
  {
    [*(a1 + 32) setObject:v8 forKeyedSubscript:v9];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }
}

+ (id)teamIdToTeamDampeningConfigFromPlistDirectoryPath:(id)path errorOut:(id *)out
{
  v78 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  v6 = pathCopy;
  if (out)
  {
    *out = 0;
  }

  if (!pathCopy)
  {
    goto LABEL_18;
  }

  v70 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [defaultManager fileExistsAtPath:v6 isDirectory:&v70];

  if ((v8 & 1) == 0)
  {
    v10 = DPLogHandle_DampeningManager(v9);
    if (os_signpost_enabled(v10))
    {
      *buf = 138543362;
      v72 = v6;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PlistDirectoryMissing", "Plist directory %{public}@ does not exist", buf, 0xCu);
    }

    v18 = 0;
    goto LABEL_54;
  }

  if (v70)
  {
    v10 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];
    defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
    v69 = 0;
    v12 = [defaultManager2 contentsOfDirectoryAtURL:v10 includingPropertiesForKeys:0 options:0 error:&v69];
    v13 = v69;

    if (v13)
    {
      v15 = DPLogHandle_DampeningManagerError(v14);
      if (os_signpost_enabled(v15))
      {
        localizedDescription = [v13 localizedDescription];
        *buf = 138543618;
        v72 = v6;
        v73 = 2114;
        v74 = localizedDescription;
        _os_signpost_emit_with_name_impl(&dword_232906000, v15, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "CouldNotEnumeratePlistDirectory", "Could not enumerate plist directory %{public}@ due to error: %{public}@", buf, 0x16u);
      }

      if (out)
      {
        v17 = v13;
        v18 = 0;
        *out = v13;
      }

      else
      {
        v18 = 0;
      }

LABEL_53:

      goto LABEL_54;
    }

    outCopy = out;
    v60 = v10;
    v61 = v6;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v59 = v12;
    v21 = v12;
    v22 = [v21 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (!v22)
    {
LABEL_38:

      v18 = dictionary;
      v10 = v60;
      v6 = v61;
      v49 = dictionary;
      v13 = 0;
      v12 = v59;
LABEL_52:

      goto LABEL_53;
    }

    v23 = v22;
    v24 = *v66;
    v62 = v21;
    v63 = dictionary;
LABEL_21:
    v25 = 0;
    while (1)
    {
      if (*v66 != v24)
      {
        objc_enumerationMutation(v21);
      }

      v26 = *(*(&v65 + 1) + 8 * v25);
      hasDirectoryPath = [v26 hasDirectoryPath];
      if (hasDirectoryPath)
      {
        v28 = DPLogHandle_DampeningManager(hasDirectoryPath);
        if (os_signpost_enabled(v28))
        {
          path = [v26 path];
          *buf = 138543362;
          v72 = path;
          v30 = v28;
          v31 = "SkippingPlistSubDir";
LABEL_35:
          _os_signpost_emit_with_name_impl(&dword_232906000, v30, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v31, "Skipping %{public}@", buf, 0xCu);
        }
      }

      else
      {
        pathExtension = [v26 pathExtension];
        v33 = [pathExtension isEqualToString:@"plist"];

        if (v33)
        {
          v35 = v23;
          v36 = v24;
          v37 = objc_alloc(MEMORY[0x277CBEAC0]);
          v64 = 0;
          v38 = [v37 initWithContentsOfURL:v26 error:&v64];
          v39 = v64;
          v28 = v39;
          if (!v38)
          {
            v50 = DPLogHandle_DampeningManagerError(v39);
            if (os_signpost_enabled(v50))
            {
              path2 = [v26 path];
              v52 = path2;
              v53 = @"Unknown";
              if (v28)
              {
                v53 = v28;
              }

              *buf = 138543618;
              v72 = path2;
              v73 = 2114;
              v74 = v53;
              _os_signpost_emit_with_name_impl(&dword_232906000, v50, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PlistLoadingError", "Failed to load %{public}@ due to error: %{public}@", buf, 0x16u);
            }

            v10 = v60;
            v6 = v61;
            v13 = 0;
            v12 = v59;
            v54 = v62;
            if (outCopy)
            {
              *outCopy = 0;
            }

            goto LABEL_51;
          }

          v40 = [[DRSTeamDampeningConfiguration alloc] initWithPlistDict:v38];
          if (!v40)
          {
            v55 = DPLogHandle_DampeningManagerError(0);
            v10 = v60;
            v6 = v61;
            v13 = 0;
            if (os_signpost_enabled(v55))
            {
              path3 = [v26 path];
              *buf = 138543362;
              v72 = path3;
              _os_signpost_emit_with_name_impl(&dword_232906000, v55, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningConfigPlistProcessingError", "Failed to intialize team dampening configuration from %{public}@", buf, 0xCu);
            }

            if (outCopy)
            {
              *outCopy = _dampeningManagerError(@"Invalid plist dictionary");
            }

            v12 = v59;
            v54 = v62;
LABEL_51:

            v18 = 0;
            v49 = v63;
            goto LABEL_52;
          }

          v41 = v40;
          path4 = [v26 path];
          lastPathComponent = [path4 lastPathComponent];
          stringByDeletingPathExtension = [lastPathComponent stringByDeletingPathExtension];

          v46 = DPLogHandle_DampeningManager(v45);
          if (os_signpost_enabled(v46))
          {
            path5 = [v26 path];
            v48 = [(DRSTeamDampeningConfiguration *)v41 debugDescription];
            *buf = 138543874;
            v72 = path5;
            v73 = 2114;
            v74 = stringByDeletingPathExtension;
            v75 = 2114;
            v76 = v48;
            _os_signpost_emit_with_name_impl(&dword_232906000, v46, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "IncludingPlistTeamIDConfig", "Path: %{public}@\nTeamID: %{public}@\nConfig:\n%{public}@", buf, 0x20u);
          }

          dictionary = v63;
          [v63 setObject:v41 forKeyedSubscript:stringByDeletingPathExtension];

          v21 = v62;
          v24 = v36;
          v23 = v35;
        }

        else
        {
          v28 = DPLogHandle_DampeningManager(v34);
          if (os_signpost_enabled(v28))
          {
            path = [v26 path];
            *buf = 138543362;
            v72 = path;
            v30 = v28;
            v31 = "SkippingNonPlistFile";
            goto LABEL_35;
          }
        }
      }

      if (v23 == ++v25)
      {
        v23 = [v21 countByEnumeratingWithState:&v65 objects:v77 count:16];
        if (v23)
        {
          goto LABEL_21;
        }

        goto LABEL_38;
      }
    }
  }

  v19 = DPLogHandle_DampeningManagerError(v9);
  if (os_signpost_enabled(v19))
  {
    *buf = 138543362;
    v72 = v6;
    _os_signpost_emit_with_name_impl(&dword_232906000, v19, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "PlistDirectoryNotDirectory", "Plist directory %{public}@ is not a directory", buf, 0xCu);
  }

  if (!out)
  {
LABEL_18:
    v18 = 0;
    goto LABEL_55;
  }

  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Plist directory path '%@' is not a directory", v6];
  _dampeningManagerError(v10);
  *out = v18 = 0;
LABEL_54:

LABEL_55:

  return v18;
}

- (void)updateIssueCategoryConfig:(id)config newConfig:(id)newConfig
{
  newConfigCopy = newConfig;
  configCopy = config;
  issueCategoryToConfigurationDict = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
  v8 = issueCategoryToConfigurationDict;
  if (newConfigCopy)
  {
    [issueCategoryToConfigurationDict setObject:newConfigCopy forKeyedSubscript:configCopy];
  }

  else
  {
    [issueCategoryToConfigurationDict removeObjectForKey:configCopy];
  }
}

- (DRSTeamDampeningConfiguration)initWithDefaultConfiguration:(id)configuration issueCategoryToConfigurationDict:(id)dict
{
  configurationCopy = configuration;
  dictCopy = dict;
  v9 = dictCopy;
  if (configurationCopy | dictCopy)
  {
    v17.receiver = self;
    v17.super_class = DRSTeamDampeningConfiguration;
    v12 = [(DRSTeamDampeningConfiguration *)&v17 init];
    v13 = v12;
    if (v12)
    {
      objc_storeStrong(&v12->_defaultConfiguration, configuration);
      v14 = [v9 mutableCopy];
      issueCategoryToConfigurationDict = v13->_issueCategoryToConfigurationDict;
      v13->_issueCategoryToConfigurationDict = v14;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    v10 = DPLogHandle_DampeningManagerError(dictCopy);
    if (os_signpost_enabled(v10))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_232906000, v10, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningConfigurationFailure", "Default configuration and issue category configuration dictionary cannot both be nil", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)configurationForIssueCategory:(id)category
{
  categoryCopy = category;
  issueCategoryToConfigurationDict = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
  defaultConfiguration = [issueCategoryToConfigurationDict objectForKeyedSubscript:categoryCopy];

  if (!defaultConfiguration)
  {
    defaultConfiguration = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
  }

  return defaultConfiguration;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (self == equalCopy)
    {
      v13 = 1;
      goto LABEL_20;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      defaultConfiguration = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
      if (defaultConfiguration && (v8 = defaultConfiguration, [(DRSTeamDampeningConfiguration *)v6 defaultConfiguration], v9 = objc_claimAutoreleasedReturnValue(), v9, v8, v9))
      {
        defaultConfiguration2 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
        defaultConfiguration3 = [(DRSTeamDampeningConfiguration *)v6 defaultConfiguration];
        v12 = [defaultConfiguration2 isEqual:defaultConfiguration3];

        if ((v12 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        defaultConfiguration4 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
        if (defaultConfiguration4)
        {
          goto LABEL_17;
        }

        defaultConfiguration5 = [(DRSTeamDampeningConfiguration *)v6 defaultConfiguration];

        if (defaultConfiguration5)
        {
          goto LABEL_18;
        }
      }

      issueCategoryToConfigurationDict = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
      if (issueCategoryToConfigurationDict)
      {
        v17 = issueCategoryToConfigurationDict;
        issueCategoryToConfigurationDict2 = [(DRSTeamDampeningConfiguration *)v6 issueCategoryToConfigurationDict];

        if (issueCategoryToConfigurationDict2)
        {
          issueCategoryToConfigurationDict3 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
          issueCategoryToConfigurationDict4 = [(DRSTeamDampeningConfiguration *)v6 issueCategoryToConfigurationDict];
          v21 = [issueCategoryToConfigurationDict3 isEqualToDictionary:issueCategoryToConfigurationDict4];

          if (v21)
          {
            goto LABEL_22;
          }

          goto LABEL_18;
        }
      }

      defaultConfiguration4 = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
      if (!defaultConfiguration4)
      {
        issueCategoryToConfigurationDict5 = [(DRSTeamDampeningConfiguration *)v6 issueCategoryToConfigurationDict];

        if (!issueCategoryToConfigurationDict5)
        {
LABEL_22:
          v13 = 1;
          goto LABEL_19;
        }

LABEL_18:
        v13 = 0;
LABEL_19:

        goto LABEL_20;
      }

LABEL_17:

      goto LABEL_18;
    }
  }

  v13 = 0;
LABEL_20:

  return v13;
}

- (id)_initWithTeamDampeningConfigMO_ON_MOC_QUEUE:(id)e
{
  v29 = *MEMORY[0x277D85DE8];
  eCopy = e;
  defaultConfiguration = [eCopy defaultConfiguration];

  if (defaultConfiguration)
  {
    v6 = [DRSDampeningConfiguration alloc];
    defaultConfiguration2 = [eCopy defaultConfiguration];
    v22 = [(DRSDampeningConfiguration *)v6 _initWithMO_ON_MOC_QUEUE:defaultConfiguration2];
  }

  else
  {
    v22 = 0;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  categoryConfigurations = [eCopy categoryConfigurations];
  v10 = [categoryConfigurations countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    while (2)
    {
      v13 = 0;
      do
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(categoryConfigurations);
        }

        v14 = *(*(&v24 + 1) + 8 * v13);
        v15 = [[DRSDampeningConfiguration alloc] _initWithMO_ON_MOC_QUEUE:v14];
        if (!v15)
        {
          v20 = DPLogHandle_DampeningManagerError(0);
          if (os_signpost_enabled(v20))
          {
            *buf = 0;
            _os_signpost_emit_with_name_impl(&dword_232906000, v20, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningConfigurationMOInitFailure", "Failed to initialize team dampening configuration from persistence", buf, 2u);
          }

          selfCopy = 0;
          v18 = v22;
          goto LABEL_18;
        }

        v16 = v15;
        identifier = [v14 identifier];
        [v8 setObject:v16 forKeyedSubscript:identifier];

        ++v13;
      }

      while (v11 != v13);
      v11 = [categoryConfigurations countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (![v8 count])
  {

    v8 = 0;
  }

  v18 = v22;
  self = [(DRSTeamDampeningConfiguration *)self initWithDefaultConfiguration:v22 issueCategoryToConfigurationDict:v8];
  selfCopy = self;
LABEL_18:

  return selfCopy;
}

- (id)_ON_MOC_QUEUE_moRepresentationInContext:(id)context teamID:(id)d
{
  contextCopy = context;
  dCopy = d;
  v8 = [[DRSTeamDampeningConfigurationMO alloc] initWithContext:contextCopy];
  [(DRSTeamDampeningConfigurationMO *)v8 setTeamID:dCopy];
  defaultConfiguration = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];

  if (defaultConfiguration)
  {
    defaultConfiguration2 = [(DRSTeamDampeningConfiguration *)self defaultConfiguration];
    v11 = [defaultConfiguration2 _ON_MOC_QUEUE_moRepresentationInContext:contextCopy identifier:@"defaultConfiguration"];
    [(DRSTeamDampeningConfigurationMO *)v8 setDefaultConfiguration:v11];
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  issueCategoryToConfigurationDict = [(DRSTeamDampeningConfiguration *)self issueCategoryToConfigurationDict];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__DRSTeamDampeningConfiguration__ON_MOC_QUEUE_moRepresentationInContext_teamID___block_invoke;
  v17[3] = &unk_27899FE20;
  v13 = contextCopy;
  v18 = v13;
  v20 = &v21;
  v14 = v8;
  v19 = v14;
  [issueCategoryToConfigurationDict enumerateKeysAndObjectsUsingBlock:v17];

  if (v22[3])
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  _Block_object_dispose(&v21, 8);

  return v15;
}

void __80__DRSTeamDampeningConfiguration__ON_MOC_QUEUE_moRepresentationInContext_teamID___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = [a3 _ON_MOC_QUEUE_moRepresentationInContext:*(a1 + 32) identifier:v7];
  if (v8)
  {
    [*(a1 + 40) addCategoryConfigurationsObject:v8];
  }

  else
  {
    *a4 = 1;
    v9 = DPLogHandle_DampeningManagerError(0);
    if (os_signpost_enabled(v9))
    {
      v10 = 138543362;
      v11 = v7;
      _os_signpost_emit_with_name_impl(&dword_232906000, v9, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "TeamDampeningConfigurationMORepresentationFailure", "Failed to get MO representation of config for issueCategory: %{public}@", &v10, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

@end