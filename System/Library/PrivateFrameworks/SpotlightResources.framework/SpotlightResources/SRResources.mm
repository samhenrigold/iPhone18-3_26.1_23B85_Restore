@interface SRResources
- (BOOL)BOOLeanForKey:(id)key didFailWithError:(id *)error;
- (BOOL)hasUpdates;
- (NSLocale)locale;
- (NSString)description;
- (SRResources)initWithClient:(id)client locale:(id)locale options:(id)options;
- (double)doubleForKey:(id)key;
- (double)doubleForKey:(id)key didFailWithError:(id *)error;
- (id)assetPathsForContentType:(id)type;
- (id)fetchBooleanParameter:(id)parameter;
- (id)fetchDoubleParameter:(id)parameter;
- (id)fetchFilePathParameter:(id)parameter;
- (id)fetchLongParameter:(id)parameter;
- (id)fetchParameter:(id)parameter checkForPositive:(BOOL)positive;
- (id)fetchStringParameter:(id)parameter;
- (id)filePathArrayForKey:(id)key;
- (id)filePathArrayForKey:(id)key didFailWithError:(id *)error;
- (id)filePathForKey:(id)key;
- (id)filePathForKey:(id)key didFailWithError:(id *)error;
- (id)getTrialExperimentId;
- (id)getTrialNamespaceId;
- (id)getTrialRolloutId;
- (id)getTrialTreatmentId;
- (id)objectForKey:(id)key;
- (id)objectForKey:(id)key didFailWithError:(id *)error;
- (id)objectForKey:(id)key withType:(int64_t *)type didFailWithError:(id *)error;
- (id)stringForKey:(id)key;
- (id)stringForKey:(id)key didFailWithError:(id *)error;
- (id)updateWithNewOptions:(id)options;
- (int)getTrialExperimentDeploymentId;
- (int)getTrialRolloutDeploymentId;
- (int64_t)longForKey:(id)key didFailWithError:(id *)error;
- (void)dealloc;
- (void)didUpdateDefaultsWithBundleVersions:(id)versions trial:(BOOL)trial;
- (void)logForTrigger:(id)trigger queryID:(int64_t)d;
- (void)refreshTrial;
- (void)setLocale:(id)locale;
- (void)updateLocale;
@end

@implementation SRResources

- (id)getTrialTreatmentId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    treatmentId = [currentExperimentTrialManager treatmentId];
  }

  else
  {
    treatmentId = 0;
  }

  return treatmentId;
}

- (id)getTrialExperimentId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    experimentId = [currentExperimentTrialManager experimentId];
  }

  else
  {
    experimentId = 0;
  }

  return experimentId;
}

- (SRResources)initWithClient:(id)client locale:(id)locale options:(id)options
{
  v49 = *MEMORY[0x1E69E9840];
  clientCopy = client;
  localeCopy = locale;
  optionsCopy = options;
  v12 = SRLogCategoryGeneral();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    localeIdentifier = [localeCopy localeIdentifier];
    *buf = 138412802;
    v44 = clientCopy;
    v45 = 2112;
    v46 = localeIdentifier;
    v47 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1AE58E000, v12, OS_LOG_TYPE_DEFAULT, "SRResources init (%@, %@): %p", buf, 0x20u);
  }

  v42.receiver = self;
  v42.super_class = SRResources;
  v14 = [(SRResources *)&v42 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_client, client);
    if (optionsCopy)
    {
      v16 = [optionsCopy mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    options = v15->_options;
    v15->_options = v16;

    v18 = [(NSMutableDictionary *)v15->_options objectForKey:@"forceLoad"];
    v15->_forceLoad = [v18 BOOLValue];

    data = [MEMORY[0x1E695DF88] data];
    feedbackData = v15->_feedbackData;
    v15->_feedbackData = data;

    experimentNamespaceId = v15->_experimentNamespaceId;
    v15->_experimentNamespaceId = 0;

    experimentId = v15->_experimentId;
    v15->_experimentId = 0;

    experimentTreatmentId = v15->_experimentTreatmentId;
    v15->_experimentTreatmentId = 0;

    v15->_hasUpdates = 0;
    localeIdentifier2 = [localeCopy localeIdentifier];
    v25 = normalizedLocaleForIdentifier(localeIdentifier2);
    locale = v15->_locale;
    v15->_locale = v25;

    overrides = v15->_overrides;
    v15->_overrides = 0;

    if (SRIsAppleInternalInstall(v28, v29) && sUsingOverrides == 1)
    {
      v30 = [sOverrideList objectForKeyedSubscript:clientCopy];
      v31 = v15->_overrides;
      v15->_overrides = v30;
    }

    v32 = +[SRDefaultsManager sharedDefaultsManager];
    [v32 registerDelegate:v15];

    v33 = +[SRDefaultsManager sharedDefaultsManager];
    v34 = [v33 assetBundleForLocale:v15->_locale client:v15->_client force:v15->_forceLoad];
    liveAssetBundle = v15->_liveAssetBundle;
    v15->_liveAssetBundle = v34;

    if (optionsCopy)
    {
      v36 = [optionsCopy objectForKeyedSubscript:@"autoUpdateLocale"];
      if (v36)
      {
        v37 = v36;
        v38 = [optionsCopy objectForKeyedSubscript:@"autoUpdateLocale"];
        bOOLValue = [v38 BOOLValue];

        if (bOOLValue)
        {
          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          [defaultCenter addObserver:v15 selector:sel_updateLocale name:*MEMORY[0x1E695D8F0] object:0];
        }
      }
    }
  }

  return v15;
}

- (NSLocale)locale
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSLocale *)selfCopy->_locale copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)setLocale:(id)locale
{
  localeCopy = locale;
  obj = self;
  objc_sync_enter(obj);
  locale = obj->_locale;
  obj->_locale = localeCopy;

  objc_sync_exit(obj);
}

- (void)updateLocale
{
  v8 = *MEMORY[0x1E69E9840];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  v4 = SRLogCategoryAssets([(SRResources *)self setLocale:currentLocale]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    localeIdentifier = [currentLocale localeIdentifier];
    v6 = 138412290;
    v7 = localeIdentifier;
    _os_log_impl(&dword_1AE58E000, v4, OS_LOG_TYPE_DEFAULT, "updating locale to %@", &v6, 0xCu);
  }

  [(SRResources *)self didUpdateDefaultsWithBundleVersions:0 trial:0];
}

- (BOOL)hasUpdates
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hasUpdates = selfCopy->_hasUpdates;
  selfCopy->_hasUpdates = 0;
  objc_sync_exit(selfCopy);

  return hasUpdates;
}

- (void)didUpdateDefaultsWithBundleVersions:(id)versions trial:(BOOL)trial
{
  trialCopy = trial;
  v39 = *MEMORY[0x1E69E9840];
  versionsCopy = versions;
  selfCopy = self;
  v8 = objc_sync_enter(selfCopy);
  if (trialCopy)
  {
    v9 = SRLogCategoryTrial(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      liveAssetBundle = selfCopy->_liveAssetBundle;
      client = selfCopy->_client;
      v24 = languageCodeForLocale(selfCopy->_locale);
      *buf = 134218498;
      v34 = liveAssetBundle;
      v35 = 2112;
      v36 = client;
      v37 = 2112;
      v38 = v24;
      _os_log_debug_impl(&dword_1AE58E000, v9, OS_LOG_TYPE_DEBUG, "Trial update for resource (%p, %@, %@)", buf, 0x20u);
    }

    selfCopy->_hasUpdates = 1;
  }

  else if (!versionsCopy || (v8 = [(SRAssetBundle *)selfCopy->_liveAssetBundle shouldUpdateForBundleVersions:versionsCopy], v8))
  {
    v10 = SRLogCategoryAssets(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v25 = selfCopy->_liveAssetBundle;
      v26 = selfCopy->_client;
      v27 = languageCodeForLocale(selfCopy->_locale);
      *buf = 134218498;
      v34 = v25;
      v35 = 2112;
      v36 = v26;
      v37 = 2112;
      v38 = v27;
      _os_log_debug_impl(&dword_1AE58E000, v10, OS_LOG_TYPE_DEBUG, "Assets update for resource (%p, %@, %@)", buf, 0x20u);
    }

    selfCopy->_hasUpdates = 1;
    v11 = +[SRDefaultsManager sharedDefaultsManager];
    v12 = [v11 assetBundleForLocale:selfCopy->_locale client:selfCopy->_client force:0];
    v13 = selfCopy->_liveAssetBundle;
    selfCopy->_liveAssetBundle = v12;
  }

  if (selfCopy->_hasUpdates)
  {
    contentTypes = [(SRAssetBundle *)selfCopy->_liveAssetBundle contentTypes];
    parameterUpdates = [(SRResources *)selfCopy parameterUpdates];

    if (parameterUpdates)
    {
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v16 = contentTypes;
      v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v17)
      {
        v18 = *v29;
        do
        {
          v19 = 0;
          do
          {
            if (*v29 != v18)
            {
              objc_enumerationMutation(v16);
            }

            v20 = *(*(&v28 + 1) + 8 * v19);
            parameterUpdates2 = [(SRResources *)selfCopy parameterUpdates];
            parameterUpdates2[2](parameterUpdates2, v20);

            ++v19;
          }

          while (v17 != v19);
          v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v17);
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)assetPathsForContentType:(id)type
{
  typeCopy = type;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(SRAssetBundle *)selfCopy->_liveAssetBundle assetsWithContentType:typeCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (id)fetchParameter:(id)parameter checkForPositive:(BOOL)positive
{
  positiveCopy = positive;
  v69 = *MEMORY[0x1E69E9840];
  parameterCopy = parameter;
  v6 = trialFlagsForProcess(parameterCopy);
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = +[SRDefaultsManager sharedDefaultsManager];
  client = [(SRResources *)self client];
  v10 = [v8 parametersOfNamespaceWithName:parameterCopy client:client];
  v61[0] = MEMORY[0x1E69E9820];
  v61[1] = 3221225472;
  v61[2] = __47__SRResources_fetchParameter_checkForPositive___block_invoke;
  v61[3] = &unk_1E7A2AFC8;
  v63 = v6;
  v11 = v7;
  v62 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v61];

  if (![v11 count])
  {
    v13 = SRLogCategoryTrial(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [SRResources fetchParameter:checkForPositive:];
    }

    v17 = 0;
    goto LABEL_61;
  }

  allValues = [v11 allValues];
  v13 = [allValues objectAtIndex:0];

  if (!v13)
  {
    v18 = SRLogCategoryTrial(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [SRResources fetchParameter:checkForPositive:];
    }

    v17 = 0;
    goto LABEL_60;
  }

  flag = [v13 flag];
  v16 = flag;
  v52 = flag;
  if ((flag & 2) != 0)
  {
    if ((flag & 0x10) != 0)
    {
      os_unfair_lock_lock(&sUserDefaultsParameterListLock);
      v19 = [sUserDefaultsParameterList objectForKeyedSubscript:parameterCopy];

      if (v19)
      {
        v20 = [sUserDefaultsParameterList objectForKeyedSubscript:parameterCopy];
        v17 = [v20 copy];

        v22 = SRLogCategoryTrial(v21);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [SRResources fetchParameter:checkForPositive:];
        }

        os_unfair_lock_unlock(&sUserDefaultsParameterListLock);
        if (v17 && ([v17 isNil] & 1) == 0 && (!objc_msgSend(v17, "isLong") || !positiveCopy || (objc_msgSend(v17, "isPositiveLong") & 1) != 0))
        {
          goto LABEL_61;
        }

LABEL_23:
        if ((v16 & 4) == 0)
        {
          goto LABEL_33;
        }

        client2 = [(SRResources *)self client];
        v24 = [SSTrialManager currentTrialManagerForClient:client2];

        if (v24)
        {
          namespaceId = [v24 namespaceId];
          os_unfair_lock_lock(&sTrialParameterListLock);
          v26 = [sTrialParameterList objectForKeyedSubscript:namespaceId];
          v27 = [v26 objectForKeyedSubscript:parameterCopy];

          if ([v27 hasValueFromTrial])
          {
            parameter = [v27 parameter];
            v29 = [parameter copy];

            v31 = SRLogCategoryTrial(v30);
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              [SRResources fetchParameter:checkForPositive:];
            }

            v17 = v29;
          }

          os_unfair_lock_unlock(&sTrialParameterListLock);
          if (v17 && ([v17 isNil] & 1) == 0 && (!objc_msgSend(v17, "isLong") || !positiveCopy || (objc_msgSend(v17, "isPositiveLong") & 1) != 0))
          {
            v18 = v17;

            v17 = v18;
LABEL_60:

            goto LABEL_61;
          }
        }

        goto LABEL_33;
      }

      os_unfair_lock_unlock(&sUserDefaultsParameterListLock);
    }

    v17 = 0;
    goto LABEL_23;
  }

  v17 = 0;
LABEL_33:
  v53 = v13;
  v54 = v11;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v32 = v11;
  v33 = [v32 countByEnumeratingWithState:&v57 objects:v68 count:16];
  if (v33)
  {
    v34 = v33;
    v56 = *v58;
    while (2)
    {
      for (i = 0; i != v34; ++i)
      {
        if (*v58 != v56)
        {
          objc_enumerationMutation(v32);
        }

        v36 = *(*(&v57 + 1) + 8 * i);
        v37 = [v32 objectForKeyedSubscript:v36];

        os_unfair_lock_lock(&sTrialParameterListLock);
        v38 = [sTrialParameterList objectForKeyedSubscript:v36];
        v39 = parameterCopy;
        v40 = [v38 objectForKeyedSubscript:parameterCopy];

        if ([v40 hasValueFromTrial])
        {
          parameter2 = [v40 parameter];
          v42 = [parameter2 copy];

          v44 = SRLogCategoryTrial(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412546;
            v65 = v39;
            v66 = 2112;
            v67 = v36;
            _os_log_debug_impl(&dword_1AE58E000, v44, OS_LOG_TYPE_DEBUG, "Parameter %@ has value from Trial namespace %@", buf, 0x16u);
          }

          v37 = v42;
        }

        os_unfair_lock_unlock(&sTrialParameterListLock);
        if (v37 && ([v37 isNil] & 1) == 0 && (!objc_msgSend(v37, "isLong") || !positiveCopy || (objc_msgSend(v37, "isPositiveLong") & 1) != 0))
        {
          v18 = v37;

          v17 = v18;
          parameterCopy = v39;
          v13 = v53;
          v11 = v54;
          goto LABEL_60;
        }

        v45 = [v32 objectForKeyedSubscript:v36];
        v17 = [v45 copy];

        parameterCopy = v39;
      }

      v34 = [v32 countByEnumeratingWithState:&v57 objects:v68 count:16];
      if (v34)
      {
        continue;
      }

      break;
    }
  }

  if ((~v52 & 0xA) != 0)
  {
    v13 = v53;
    v11 = v54;
  }

  else
  {
    os_unfair_lock_lock(&sUserDefaultsParameterListLock);
    v46 = [sUserDefaultsParameterList objectForKeyedSubscript:parameterCopy];

    v11 = v54;
    if (v46)
    {
      v47 = [sUserDefaultsParameterList objectForKeyedSubscript:parameterCopy];
      v48 = [v47 copy];

      v50 = SRLogCategoryTrial(v49);
      if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
      {
        [SRResources fetchParameter:checkForPositive:];
      }

      v17 = v48;
    }

    v13 = v53;
    os_unfair_lock_unlock(&sUserDefaultsParameterListLock);
    if (v17 && ([v17 isNil] & 1) == 0 && objc_msgSend(v17, "isLong") && positiveCopy)
    {
      [v17 isPositiveLong];
    }
  }

LABEL_61:

  return v17;
}

void __47__SRResources_fetchParameter_checkForPositive___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if ([v8 isEqualToString:@"337"])
  {
    if ((*(a1 + 40) & 4) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = [v8 isEqualToString:@"336"];
  v7 = *(a1 + 40);
  if (v6)
  {
    if ((v7 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_3:
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v8];
    goto LABEL_4;
  }

  if (v7)
  {
    goto LABEL_3;
  }

LABEL_4:
}

- (id)fetchBooleanParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:0];
  v4 = v3;
  if (v3 && [v3 isBool])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchLongParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:1];
  v4 = v3;
  if (v3 && [v3 isLong])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchDoubleParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:0];
  v4 = v3;
  if (v3 && [v3 isDouble])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchStringParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:0];
  v4 = v3;
  if (v3 && [v3 isString])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)fetchFilePathParameter:(id)parameter
{
  v3 = [(SRResources *)self fetchParameter:parameter checkForPositive:0];
  v4 = v3;
  if (v3 && [v3 isFilePath])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)BOOLeanForKey:(id)key didFailWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall(keyCopy, v7) && sUsingOverrides == 1)
  {
    v8 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v9 = v8;
    if (v8)
    {
      if ([v8 isBool])
      {
        getBooleanValue = [v9 getBooleanValue];
        if (getBooleanValue)
        {
          v11 = getBooleanValue;
          v12 = SRLogCategoryTrial(getBooleanValue);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *error = 0;
          bOOLValue = [v11 BOOLValue];

          goto LABEL_17;
        }
      }
    }
  }

  v14 = [(SRResources *)self fetchBooleanParameter:keyCopy];
  v9 = v14;
  if (v14 && [v14 isBool] && (objc_msgSend(v9, "getBooleanValue"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    *error = 0;
    bOOLValue = [v15 BOOLValue];
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    *error = v17;
    v18 = SRLogCategoryTrial(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = keyCopy;
      _os_log_impl(&dword_1AE58E000, v18, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find BOOLean parameter %@", &v20, 0xCu);
    }

    bOOLValue = 0;
  }

LABEL_17:

  return bOOLValue;
}

- (int64_t)longForKey:(id)key didFailWithError:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall(keyCopy, v7) && sUsingOverrides == 1)
  {
    v8 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v9 = v8;
    if (v8)
    {
      if ([v8 isLong])
      {
        getLongValue = [v9 getLongValue];
        if (getLongValue)
        {
          v11 = getLongValue;
          v12 = SRLogCategoryTrial(getLongValue);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *error = 0;
          longValue = [v11 longValue];

          goto LABEL_17;
        }
      }
    }
  }

  v14 = [(SRResources *)self fetchLongParameter:keyCopy];
  v9 = v14;
  if (v14 && [v14 isLong] && (objc_msgSend(v9, "getLongValue"), (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v16 = v15;
    *error = 0;
    longValue = [v15 longValue];
  }

  else
  {
    v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    *error = v17;
    v18 = SRLogCategoryTrial(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = keyCopy;
      _os_log_impl(&dword_1AE58E000, v18, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find long parameter %@", &v20, 0xCu);
    }

    longValue = 0;
  }

LABEL_17:

  return longValue;
}

- (double)doubleForKey:(id)key didFailWithError:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall(keyCopy, v7) && sUsingOverrides == 1)
  {
    v8 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v9 = v8;
    if (v8)
    {
      if ([v8 isDouble])
      {
        getDoubleValue = [v9 getDoubleValue];
        if (getDoubleValue)
        {
          v11 = getDoubleValue;
          v12 = SRLogCategoryTrial(getDoubleValue);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *error = 0;
          [v11 doubleValue];
          v14 = v13;

          goto LABEL_17;
        }
      }
    }
  }

  v15 = [(SRResources *)self fetchDoubleParameter:keyCopy];
  v9 = v15;
  if (v15 && [v15 isDouble] && (objc_msgSend(v9, "getDoubleValue"), (v16 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v16;
    *error = 0;
    [v16 doubleValue];
    v14 = v18;
  }

  else
  {
    v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    *error = v19;
    v20 = SRLogCategoryTrial(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v22 = 138412290;
      v23 = keyCopy;
      _os_log_impl(&dword_1AE58E000, v20, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find double parameter %@", &v22, 0xCu);
    }

    v14 = 2.22507386e-308;
  }

LABEL_17:

  return v14;
}

- (double)doubleForKey:(id)key
{
  v4 = 0;
  [(SRResources *)self doubleForKey:key didFailWithError:&v4];
  return result;
}

- (id)stringForKey:(id)key didFailWithError:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall(keyCopy, v7) && sUsingOverrides == 1)
  {
    v8 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v9 = v8;
    if (v8)
    {
      if ([v8 isString])
      {
        getStringValue = [v9 getStringValue];
        if (getStringValue)
        {
          v11 = getStringValue;
          v12 = SRLogCategoryTrial(getStringValue);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          goto LABEL_14;
        }
      }
    }
  }

  v13 = [(SRResources *)self fetchStringParameter:keyCopy];
  v9 = v13;
  if (v13)
  {
    if ([v13 isString])
    {
      getStringValue2 = [v9 getStringValue];
      if (getStringValue2)
      {
        v11 = getStringValue2;
LABEL_14:
        *error = 0;
        goto LABEL_18;
      }
    }
  }

  v15 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
  *error = v15;
  v16 = SRLogCategoryTrial(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = keyCopy;
    _os_log_impl(&dword_1AE58E000, v16, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find string parameter %@", &v18, 0xCu);
  }

  v11 = 0;
LABEL_18:

  return v11;
}

- (id)stringForKey:(id)key
{
  v5 = 0;
  v3 = [(SRResources *)self stringForKey:key didFailWithError:&v5];

  return v3;
}

- (id)filePathForKey:(id)key didFailWithError:(id *)error
{
  keyCopy = key;
  if (SRIsAppleInternalInstall(keyCopy, v7) && sUsingOverrides == 1)
  {
    v8 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v9 = v8;
    if (v8)
    {
      if ([v8 isFilePath])
      {
        getFilePathValue = [v9 getFilePathValue];
        if (getFilePathValue)
        {
          firstObject = getFilePathValue;
          v12 = SRLogCategoryTrial(getFilePathValue);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          goto LABEL_14;
        }
      }
    }
  }

  v13 = [(SRResources *)self fetchFilePathParameter:keyCopy];
  v9 = v13;
  if (v13)
  {
    if ([v13 isFilePath])
    {
      getFilePathValue2 = [v9 getFilePathValue];
      if (getFilePathValue2)
      {
        firstObject = getFilePathValue2;
LABEL_14:
        *error = 0;
        goto LABEL_21;
      }
    }
  }

  v15 = [(SRResources *)self assetPathsForContentType:keyCopy];
  if ([v15 count])
  {
    *error = 0;
    firstObject = [v15 firstObject];
  }

  else
  {
    v16 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
    *error = v16;
    v17 = SRLogCategoryTrial(v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SRResources filePathForKey:didFailWithError:];
    }

    firstObject = 0;
  }

LABEL_21:

  return firstObject;
}

- (id)filePathForKey:(id)key
{
  v5 = 0;
  v3 = [(SRResources *)self filePathForKey:key didFailWithError:&v5];

  return v3;
}

- (id)filePathArrayForKey:(id)key didFailWithError:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (SRIsAppleInternalInstall(keyCopy, v7) && sUsingOverrides == 1)
  {
    v8 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
    v9 = v8;
    if (v8)
    {
      if ([v8 isFilePath])
      {
        getFilePathValue = [v9 getFilePathValue];
        if (getFilePathValue)
        {
          getFilePathValue2 = getFilePathValue;
          v12 = SRLogCategoryTrial(getFilePathValue);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [SRResources BOOLeanForKey:didFailWithError:];
          }

          *error = 0;
          v23[0] = getFilePathValue2;
          v13 = MEMORY[0x1E695DEC8];
          v14 = v23;
          goto LABEL_19;
        }
      }
    }
  }

  v15 = [(SRResources *)self fetchFilePathParameter:keyCopy];
  v9 = v15;
  if (v15 && [v15 isFilePath] && (objc_msgSend(v9, "isNil") & 1) == 0)
  {
    *error = 0;
    getFilePathValue2 = [v9 getFilePathValue];
    v22 = getFilePathValue2;
    v13 = MEMORY[0x1E695DEC8];
    v14 = &v22;
LABEL_19:
    v16 = [v13 arrayWithObjects:v14 count:1];
    goto LABEL_20;
  }

  getFilePathValue2 = [(SRResources *)self assetPathsForContentType:keyCopy];
  if ([getFilePathValue2 count])
  {
    *error = 0;
    v16 = getFilePathValue2;
    getFilePathValue2 = v16;
LABEL_20:
    v18 = v16;
    goto LABEL_21;
  }

  *error = [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
  v17 = SRLogCategoryGeneral();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = keyCopy;
    _os_log_impl(&dword_1AE58E000, v17, OS_LOG_TYPE_DEFAULT, "SpotlightResources could not find file paths parameter %@", &v20, 0xCu);
  }

  v18 = 0;
LABEL_21:

  return v18;
}

- (id)filePathArrayForKey:(id)key
{
  v5 = 0;
  v3 = [(SRResources *)self filePathArrayForKey:key didFailWithError:&v5];

  return v3;
}

- (id)objectForKey:(id)key withType:(int64_t *)type didFailWithError:(id *)error
{
  keyCopy = key;
  if (!SRIsAppleInternalInstall(keyCopy, v9) || sUsingOverrides != 1)
  {
LABEL_9:
    v15 = [(SRResources *)self fetchBooleanParameter:keyCopy];
    v11 = v15;
    *error = 0;
    if (v15 && [v15 isBool] && (objc_msgSend(v11, "isNil") & 1) == 0)
    {
      *type = 0;
LABEL_32:
      value = [v11 value];
      goto LABEL_33;
    }

    v16 = [(SRResources *)self fetchLongParameter:keyCopy];

    if (v16 && [v16 isLong] && (objc_msgSend(v16, "isNil") & 1) == 0)
    {
      v17 = 1;
    }

    else
    {
      v11 = [(SRResources *)self fetchDoubleParameter:keyCopy];

      if (v11 && [v11 isDouble] && (objc_msgSend(v11, "isNil") & 1) == 0)
      {
        v18 = 2;
LABEL_31:
        *type = v18;
        goto LABEL_32;
      }

      v16 = [(SRResources *)self fetchStringParameter:keyCopy];

      if (!v16 || ![v16 isString] || (objc_msgSend(v16, "isNil") & 1) != 0)
      {
        v11 = [(SRResources *)self fetchFilePathParameter:keyCopy];

        if (!v11 || ![v11 isFilePath] || (objc_msgSend(v11, "isNil") & 1) != 0)
        {
          [MEMORY[0x1E696ABC0] errorWithDomain:@"SpotlightResourcesErrorDomain" code:-1 userInfo:0];
          *error = value = 0;
          *type = -1;
          goto LABEL_33;
        }

        v18 = 4;
        goto LABEL_31;
      }

      v17 = 3;
    }

    *type = v17;
    value = [v16 value];
    v11 = v16;
    goto LABEL_33;
  }

  v10 = [(NSDictionary *)self->_overrides objectForKeyedSubscript:keyCopy];
  v11 = v10;
  if (!v10 || ([v10 value], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_9;
  }

  value = v12;
  v14 = SRLogCategoryTrial(v12);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [SRResources BOOLeanForKey:didFailWithError:];
  }

  *error = 0;
LABEL_33:

  return value;
}

- (id)objectForKey:(id)key didFailWithError:(id *)error
{
  v6 = -1;
  v4 = [(SRResources *)self objectForKey:key withType:&v6 didFailWithError:error];

  return v4;
}

- (id)objectForKey:(id)key
{
  v5 = 0;
  v3 = [(SRResources *)self objectForKey:key didFailWithError:&v5];

  return v3;
}

- (id)getTrialNamespaceId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    namespaceId = [currentExperimentTrialManager namespaceId];
  }

  else
  {
    namespaceId = 0;
  }

  return namespaceId;
}

- (id)getTrialRolloutId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    rolloutId = [currentExperimentTrialManager rolloutId];
  }

  else
  {
    rolloutId = 0;
  }

  return rolloutId;
}

- (int)getTrialExperimentDeploymentId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    experimentDeploymentId = [currentExperimentTrialManager experimentDeploymentId];
  }

  else
  {
    experimentDeploymentId = -1;
  }

  return experimentDeploymentId;
}

- (int)getTrialRolloutDeploymentId
{
  currentExperimentTrialManager = [(SRResources *)self currentExperimentTrialManager];
  v3 = currentExperimentTrialManager;
  if (currentExperimentTrialManager)
  {
    rolloutDeploymentId = [currentExperimentTrialManager rolloutDeploymentId];
  }

  else
  {
    rolloutDeploymentId = -1;
  }

  return rolloutDeploymentId;
}

- (void)refreshTrial
{
  v3 = +[SRResourcesManager sharedResourcesManager];
  [v3 refreshTrialForClient:self->_client];
}

- (id)updateWithNewOptions:(id)options
{
  if (options)
  {
    v4 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:?];
    options = self->_options;
    self->_options = v4;
  }

  return self;
}

- (void)dealloc
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = SRLogCategoryGeneral();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    client = self->_client;
    localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
    *buf = 138412802;
    v20 = client;
    v21 = 2112;
    v22 = localeIdentifier;
    v23 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1AE58E000, v4, OS_LOG_TYPE_DEFAULT, "SRResources dealloc (%@, %@): %p", buf, 0x20u);
  }

  v7 = +[SRDefaultsManager sharedDefaultsManager];
  [v7 unregisterDelegate:self];

  options = self->_options;
  if (options)
  {
    options = [options objectForKeyedSubscript:@"SRResourcesOwner"];
    v9 = options;
  }

  else
  {
    v9 = 0;
  }

  v10 = SRLogCategoryLifeCycle(options);
  v11 = v10;
  v12 = dealloc_index;
  v13 = ++dealloc_index;
  if (v12 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    uTF8String = [(NSString *)self->_client UTF8String];
    locale = self->_locale;
    if (locale)
    {
      localeIdentifier2 = [(NSLocale *)self->_locale localeIdentifier];
      uTF8String2 = [localeIdentifier2 UTF8String];
      if (v9)
      {
LABEL_10:
        uTF8String3 = [v9 UTF8String];
        goto LABEL_13;
      }
    }

    else
    {
      uTF8String2 = "none";
      if (v9)
      {
        goto LABEL_10;
      }
    }

    uTF8String3 = "unknown";
LABEL_13:
    *buf = 136315650;
    v20 = uTF8String;
    v21 = 2080;
    v22 = uTF8String2;
    v23 = 2080;
    selfCopy = uTF8String3;
    _os_signpost_emit_with_name_impl(&dword_1AE58E000, v11, OS_SIGNPOST_EVENT, v13, "SRResourcesDestroy", "client=%s, locale=%s, caller=%s", buf, 0x20u);
    if (locale)
    {
    }
  }

  v18.receiver = self;
  v18.super_class = SRResources;
  [(SRResources *)&v18 dealloc];
}

- (void)logForTrigger:(id)trigger queryID:(int64_t)d
{
  v37 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  if (+[SRResourcesManager parsecEnabled])
  {
    v7 = [(NSString *)self->_client isEqualToString:@"Spotlight"];
    if (v7 & 1) != 0 || (v7 = [(NSString *)self->_client isEqualToString:@"Mail"], (v7) || (v7 = [(NSString *)self->_client isEqualToString:@"Parser"], v7))
    {
      v8 = SRLogCategoryTrial(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        uUIDString = [triggerCopy UUIDString];
        client = self->_client;
        *buf = 138412802;
        v32 = uUIDString;
        v33 = 2048;
        dCopy3 = d;
        v35 = 2112;
        v36 = client;
        _os_log_impl(&dword_1AE58E000, v8, OS_LOG_TYPE_DEFAULT, "logForTrigger:%@ queryID:%lld client:%@", buf, 0x20u);
      }

      v11 = [(SRResources *)self stringForKey:@"codepathIDs"];
      v12 = SRLogCategoryTrial(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        [SRResources logForTrigger:queryID:];
      }

      if (triggerCopy)
      {
        if (v11)
        {
          uppercaseString = [v11 uppercaseString];
          uUIDString2 = [triggerCopy UUIDString];
          v15 = [uppercaseString containsString:uUIDString2];

          if (v15)
          {
            v17 = SRLogCategoryTrial(v16);
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              uUIDString3 = [triggerCopy UUIDString];
              *buf = 138412546;
              v32 = uUIDString3;
              v33 = 2048;
              dCopy3 = d;
              _os_log_impl(&dword_1AE58E000, v17, OS_LOG_TYPE_DEFAULT, "Emitting trigger for codepathID: %@, queryID:%lld", buf, 0x16u);
            }

            v19 = objc_alloc_init(MEMORY[0x1E69CA098]);
            [v19 setQueryId:d];
            [v19 setCodepathId:triggerCopy];
            options = self->_options;
            if (options)
            {
              [(NSMutableDictionary *)options objectForKeyedSubscript:@"SRResourcesOwner"];
            }

            v21 = SRLogCategoryTrial(options);
            v22 = v21;
            v23 = logForTrigger_queryID__index;
            v24 = ++logForTrigger_queryID__index;
            if (v23 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v21))
            {
              uUIDString4 = [triggerCopy UUIDString];
              uTF8String = [uUIDString4 UTF8String];
              *buf = 136315394;
              v32 = uTF8String;
              v33 = 2048;
              dCopy3 = d;
              _os_signpost_emit_with_name_impl(&dword_1AE58E000, v22, OS_SIGNPOST_EVENT, v24, "SRResourcesLogForTrigger", "uuid=%s, queryID=%lld", buf, 0x16u);
            }

            v27 = dispatch_get_global_queue(25, 0);
            v29[0] = MEMORY[0x1E69E9820];
            v29[1] = 3221225472;
            v29[2] = __37__SRResources_logForTrigger_queryID___block_invoke;
            v29[3] = &unk_1E7A2AFF0;
            v29[4] = self;
            v30 = v19;
            v28 = v19;
            dispatch_async(v27, v29);
          }
        }
      }
    }
  }
}

void __37__SRResources_logForTrigger_queryID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) client];
  v3 = [SRPARSession spotlightResourcesPARSessionForClient:v2 flags:trialFlagsForProcess(v2)];

  if (v3)
  {
    v5 = [*(a1 + 32) experimentNamespaceId];
    v6 = [v3 configuration];
    [v6 setExperimentNamespaceId:v5];

    v7 = [*(a1 + 32) experimentId];
    v8 = [v3 configuration];
    [v8 setExperimentId:v7];

    v9 = [*(a1 + 32) experimentTreatmentId];
    v10 = [v3 configuration];
    [v10 setExperimentTreatmentId:v9];

    v11 = [*(a1 + 32) experimentDeploymentId];
    v12 = [v3 configuration];
    [v12 setExperimentDeploymentId:v11];

    v13 = [*(a1 + 32) experimentVersion];
    v14 = [v3 configuration];
    [v14 setExperimentVersion:v13];

    [v3 reportEvent:*(a1 + 40)];
  }

  else
  {
    v15 = SRLogCategoryTrial(v4);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __37__SRResources_logForTrigger_queryID___block_invoke_cold_1(v15);
    }
  }
}

- (NSString)description
{
  client = self->_client;
  if (!client)
  {
    client = @"none";
  }

  client = [MEMORY[0x1E696AD60] stringWithFormat:@"SRResources: { client = %@", client];
  locale = self->_locale;
  if (locale)
  {
    localeIdentifier = [(NSLocale *)locale localeIdentifier];
    [client appendFormat:@", locale = %@", localeIdentifier];
  }

  else
  {
    [client appendFormat:@", locale = %@", @"none"];
  }

  options = self->_options;
  if (options)
  {
    v8 = [(NSMutableDictionary *)options objectForKeyedSubscript:@"SRResourcesOwner"];

    if (v8)
    {
      v9 = [(NSMutableDictionary *)self->_options objectForKeyedSubscript:@"SRResourcesOwner"];
      [client appendFormat:@", owner = %@", v9];
    }
  }

  [client appendString:@" }"];
  v10 = [MEMORY[0x1E696AEC0] stringWithString:client];

  return v10;
}

@end