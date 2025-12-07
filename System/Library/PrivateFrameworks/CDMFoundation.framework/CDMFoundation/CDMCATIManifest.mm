@interface CDMCATIManifest
- (BOOL)validateManifest;
- (CDMCATIManifest)initWithPath:(id)path;
- (float)getMultiturnThresholdValue:(id)value;
- (float)getThresholdValue:(id)value;
- (id)getPositiveOverrideGuidsForModelType:(unint64_t)type;
- (id)getWeightGuidsForModelType:(unint64_t)type;
- (int)getExpectedPositiveUtterancesValue:(id)value;
- (int)getUsoElementId:(id)id;
- (void)extractWeightsAndOverridesFromManifest:(id)manifest;
- (void)getWeightsAndOverridesAtIntentKeyFromManifest:(id)manifest;
- (void)getWeightsAndOverridesWithLegacyKeysFromManifest:(id)manifest;
- (void)readCatiManifest:(id)manifest;
@end

@implementation CDMCATIManifest

- (BOOL)validateManifest
{
  v22 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E695DEC8] arrayWithObjects:{@"locale", @"date", @"GUID", @"version", 0}];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v3 = v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = *v14;
    v6 = 1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [(NSDictionary *)self->_manifest objectForKey:v8];
        v10 = v9 == 0;

        if (v10)
        {
          v11 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v18 = "[CDMCATIManifest validateManifest]";
            v19 = 2112;
            v20 = v8;
            _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s [WARN]: CATI manifest is invalid. Missing field: %@", buf, 0x16u);
          }

          v6 = 0;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

- (void)getWeightsAndOverridesWithLegacyKeysFromManifest:(id)manifest
{
  manifestCopy = manifest;
  v34 = [manifestCopy objectForKey:@"weights"];
  v3 = [manifestCopy objectForKey:@"positive-overrides"];
  v33 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v35 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  for (i = 0; [v3 count] > i; ++i)
  {
    v6 = objc_alloc_init(CDMCATIIntent);
    v7 = [v3 objectAtIndexedSubscript:i];
    v8 = [v7 componentsSeparatedByString:@"."];
    v9 = [v8 objectAtIndexedSubscript:0];
    [(CDMCATIIntent *)v6 setIntentName:v9];

    intentName = [(CDMCATIIntent *)v6 intentName];
    [(CDMCATIIntent *)v6 setGuid:intentName];

    [(CDMCATIIntent *)v6 setEnsemble:@"invocation"];
    guid = [(CDMCATIIntent *)v6 guid];
    [v4 setObject:v6 forKey:guid];

    guid2 = [(CDMCATIIntent *)v6 guid];
    [v35 addObject:guid2];

    v13 = [v3 objectAtIndexedSubscript:i];
    LODWORD(guid2) = [v34 containsObject:v13];

    if (guid2)
    {
      guid3 = [(CDMCATIIntent *)v6 guid];
      [v33 addObject:guid3];
    }
  }

  v15 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v4];
  intentLookup = self->_intentLookup;
  self->_intentLookup = v15;

  v17 = objc_alloc(MEMORY[0x1E695DF20]);
  v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v33];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v20 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v21 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v22 = [v17 initWithObjectsAndKeys:{v18, v19, v20, v21, 0}];
  weights = self->_weights;
  self->_weights = v22;

  v24 = objc_alloc(MEMORY[0x1E695DF20]);
  v25 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v35];
  v26 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v27 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  v28 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v29 = [v24 initWithObjectsAndKeys:{v25, v26, v27, v28, 0}];
  positiveOverrides = self->_positiveOverrides;
  self->_positiveOverrides = v29;
}

- (id)getWeightGuidsForModelType:(unint64_t)type
{
  if (type > 1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  else
  {
    weights = self->_weights;
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v5 = [(NSDictionary *)weights objectForKey:v4];
  }

  return v5;
}

- (id)getPositiveOverrideGuidsForModelType:(unint64_t)type
{
  if (type > 1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFD8]);
  }

  else
  {
    positiveOverrides = self->_positiveOverrides;
    v4 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v5 = [(NSDictionary *)positiveOverrides objectForKey:v4];
  }

  return v5;
}

- (void)getWeightsAndOverridesAtIntentKeyFromManifest:(id)manifest
{
  v85 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  v64 = [manifestCopy objectForKey:@"intents"];
  v68 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v69 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v71 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v64;
  v3 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
  if (v3)
  {
    v74 = *v77;
    do
    {
      v75 = v3;
      for (i = 0; i != v75; ++i)
      {
        if (*v77 != v74)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v76 + 1) + 8 * i);
        v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v7 = [v5 objectForKey:@"modelType"];
        if (v7)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v8 = [MEMORY[0x1E696AD98] numberWithInteger:99];
            [v6 addObject:v8];

            v9 = CDMOSLoggerForCategory(0);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
            {
              *buf = 136315394;
              v81 = "[CDMCATIManifest getWeightsAndOverridesAtIntentKeyFromManifest:]";
              v82 = 2112;
              v83 = v5;
              _os_log_impl(&dword_1DC287000, v9, OS_LOG_TYPE_INFO, "%s [WARN]: The modelType key exists but it is not castable to an Array, so the model type is invalid for intent object: %@", buf, 0x16u);
            }

            goto LABEL_49;
          }
        }

        else
        {
          v10 = [MEMORY[0x1E696AD98] numberWithInteger:0];
          [v6 addObject:v10];
        }

        v9 = v7;
        for (j = 0; [v9 count]> j; ++j)
        {
          v12 = [v9 objectAtIndexedSubscript:j];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v16 = CDMOSLoggerForCategory(0);
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              goto LABEL_21;
            }

            *buf = 136315394;
            v81 = "[CDMCATIManifest getWeightsAndOverridesAtIntentKeyFromManifest:]";
            v82 = 2112;
            v83 = v5;
            v17 = v16;
            v18 = "%s [WARN]: The modelType value is not castable to NSNumber, ignoring intent: %@";
            goto LABEL_20;
          }

          v14 = [v9 objectAtIndexedSubscript:j];
          intValue = [v14 intValue];

          if (intValue <= 1)
          {
            v16 = [MEMORY[0x1E696AD98] numberWithInteger:intValue];
            [v6 addObject:v16];
            goto LABEL_21;
          }

          v16 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v81 = "[CDMCATIManifest getWeightsAndOverridesAtIntentKeyFromManifest:]";
            v82 = 2112;
            v83 = v5;
            v17 = v16;
            v18 = "%s [WARN]: The modelType value is neither invocation nor multiturn, ignoring intent: %@";
LABEL_20:
            _os_log_impl(&dword_1DC287000, v17, OS_LOG_TYPE_INFO, v18, buf, 0x16u);
          }

LABEL_21:
        }

        if (![v6 count])
        {
          v19 = [MEMORY[0x1E696AD98] numberWithInteger:99];
          [v6 addObject:v19];
        }

        v20 = [MEMORY[0x1E696AD98] numberWithInteger:99];
        v21 = [v6 containsObject:v20];

        if ((v21 & 1) == 0)
        {
          if (self->_isPreGuidVersion)
          {
            v22 = [v5 objectForKey:@"weights"];
            v23 = [v5 objectForKey:@"positiveOverrides"];
            guid8 = v23;
            if (v23 && ([v23 componentsSeparatedByString:@"."], v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectAtIndexedSubscript:", 0), v26 = objc_claimAutoreleasedReturnValue(), v25, v26))
            {
              v70 = [[CDMCATIIntent alloc] initWithGuid:v26 intentName:v26 ensemble:@"invocation"];
              guid = [(CDMCATIIntent *)v70 guid];
              [v71 setObject:v70 forKey:guid];

              v28 = [MEMORY[0x1E696AD98] numberWithInteger:0];
              v29 = [v6 containsObject:v28];

              if (v29)
              {
                if ([(CDMCATIIntent *)v22 length])
                {
                  guid2 = [(CDMCATIIntent *)v70 guid];
                  [v68 addObject:guid2];
                }

                if ([guid8 length])
                {
                  guid3 = [(CDMCATIIntent *)v70 guid];
                  [v69 addObject:guid3];
                }
              }
            }

            else
            {
              v26 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                *buf = 136315394;
                v81 = "[CDMCATIManifest getWeightsAndOverridesAtIntentKeyFromManifest:]";
                v82 = 2112;
                v83 = v5;
                _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, "%s There are no positive overrides for %@, skipping.", buf, 0x16u);
              }
            }

LABEL_47:
          }

          else
          {
            v32 = [CDMCATIIntent alloc];
            v33 = [v5 objectForKey:@"GUID"];
            v34 = [v5 objectForKey:@"intentName"];
            v35 = [v5 objectForKey:@"ensemble"];
            v22 = [(CDMCATIIntent *)v32 initWithGuid:v33 intentName:v34 ensemble:v35];

            guid4 = [(CDMCATIIntent *)v22 guid];
            [v71 setObject:v22 forKey:guid4];

            v37 = [v5 objectForKey:@"weights"];
            bOOLValue = [v37 BOOLValue];

            v39 = [v5 objectForKey:@"positiveOverrides"];
            bOOLValue2 = [v39 BOOLValue];

            v41 = [MEMORY[0x1E696AD98] numberWithInteger:0];
            v42 = [v6 containsObject:v41];

            if (v42)
            {
              if (bOOLValue)
              {
                guid5 = [(CDMCATIIntent *)v22 guid];
                [v68 addObject:guid5];
              }

              if (bOOLValue2)
              {
                guid6 = [(CDMCATIIntent *)v22 guid];
                [v69 addObject:guid6];
              }
            }

            v45 = [MEMORY[0x1E696AD98] numberWithInteger:1];
            v46 = [v6 containsObject:v45];

            if (v46)
            {
              if (bOOLValue)
              {
                guid7 = [(CDMCATIIntent *)v22 guid];
                [v66 addObject:guid7];
              }

              if (bOOLValue2)
              {
                guid8 = [(CDMCATIIntent *)v22 guid];
                [v67 addObject:guid8];
                goto LABEL_47;
              }
            }
          }
        }

LABEL_49:
      }

      v3 = [obj countByEnumeratingWithState:&v76 objects:v84 count:16];
    }

    while (v3);
  }

  v48 = [objc_alloc(MEMORY[0x1E695DF20]) initWithDictionary:v71];
  intentLookup = self->_intentLookup;
  self->_intentLookup = v48;

  v50 = objc_alloc(MEMORY[0x1E695DF20]);
  v51 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v68];
  v52 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v53 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v66];
  v54 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v55 = [v50 initWithObjectsAndKeys:{v51, v52, v53, v54, 0, v64}];
  weights = self->_weights;
  self->_weights = v55;

  v57 = objc_alloc(MEMORY[0x1E695DF20]);
  v58 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v69];
  v59 = [MEMORY[0x1E696AD98] numberWithInteger:0];
  v60 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v67];
  v61 = [MEMORY[0x1E696AD98] numberWithInteger:1];
  v62 = [v57 initWithObjectsAndKeys:{v58, v59, v60, v61, 0}];
  positiveOverrides = self->_positiveOverrides;
  self->_positiveOverrides = v62;
}

- (void)extractWeightsAndOverridesFromManifest:(id)manifest
{
  v17 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  v5 = [manifestCopy objectForKey:@"intents"];
  if (v5 && ([manifestCopy objectForKey:@"intents"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v6, v5, (isKindOfClass & 1) != 0))
  {
    v8 = [manifestCopy objectForKey:@"intents"];
    if ([v8 count])
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 objectForKey:@"GUID"];

      if (v10)
      {
        v11 = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v15 = 136315138;
          v16 = "[CDMCATIManifest extractWeightsAndOverridesFromManifest:]";
          _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s Intents key present in manifest and contains guids.", &v15, 0xCu);
        }

        v12 = 0;
      }

      else
      {
        v11 = CDMOSLoggerForCategory(0);
        v12 = 1;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v15 = 136315138;
          v16 = "[CDMCATIManifest extractWeightsAndOverridesFromManifest:]";
          _os_log_impl(&dword_1DC287000, v11, OS_LOG_TYPE_INFO, "%s Intents key present in manifest, but no guids. This is an older version of assets", &v15, 0xCu);
        }
      }

      self->_isPreGuidVersion = v12;
      [(CDMCATIManifest *)self getWeightsAndOverridesAtIntentKeyFromManifest:manifestCopy];
    }

    else
    {
      v14 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = 136315138;
        v16 = "[CDMCATIManifest extractWeightsAndOverridesFromManifest:]";
        _os_log_impl(&dword_1DC287000, v14, OS_LOG_TYPE_INFO, "%s [WARN]: Intents key present in manifest, but it's an empty array. Using legacy keys to get weights and overrides.", &v15, 0xCu);
      }

      self->_isPreGuidVersion = 1;
      [(CDMCATIManifest *)self getWeightsAndOverridesWithLegacyKeysFromManifest:manifestCopy];
    }
  }

  else
  {
    v13 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v15 = 136315138;
      v16 = "[CDMCATIManifest extractWeightsAndOverridesFromManifest:]";
      _os_log_impl(&dword_1DC287000, v13, OS_LOG_TYPE_INFO, "%s [WARN]: No intents key in manifest. Using legacy keys to get weights and overrides.", &v15, 0xCu);
    }

    self->_isPreGuidVersion = 1;
    [(CDMCATIManifest *)self getWeightsAndOverridesWithLegacyKeysFromManifest:manifestCopy];
  }
}

- (int)getUsoElementId:(id)id
{
  v12 = *MEMORY[0x1E69E9840];
  idCopy = id;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [idCopy intValue];
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[CDMCATIManifest getUsoElementId:]";
      v10 = 2112;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: CATI manifest does not contain a valid uso element id key. Current value type: %@", &v8, 0x16u);
    }

    intValue = -1;
  }

  return intValue;
}

- (int)getExpectedPositiveUtterancesValue:(id)value
{
  v12 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [valueCopy intValue];
  }

  else
  {
    v5 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v8 = 136315394;
      v9 = "[CDMCATIManifest getExpectedPositiveUtterancesValue:]";
      v10 = 2112;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_1DC287000, v5, OS_LOG_TYPE_INFO, "%s [WARN]: CATI manifest does not contain a valid expected number of positive utterances key. Current value type: %@", &v8, 0x16u);
    }

    intValue = -1;
  }

  return intValue;
}

- (float)getMultiturnThresholdValue:(id)value
{
  v13 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy floatValue];
    v5 = v4;
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[CDMCATIManifest getMultiturnThresholdValue:]";
      v11 = 2112;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s [WARN]: CATI manifest does not contain a valid multiturn confidence threshold key.Current value type: %@", &v9, 0x16u);
    }

    v5 = 0.7;
  }

  return v5;
}

- (float)getThresholdValue:(id)value
{
  v13 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [valueCopy floatValue];
    v5 = v4;
  }

  else
  {
    v6 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 136315394;
      v10 = "[CDMCATIManifest getThresholdValue:]";
      v11 = 2112;
      v12 = objc_opt_class();
      v7 = v12;
      _os_log_impl(&dword_1DC287000, v6, OS_LOG_TYPE_INFO, "%s [WARN]: CATI manifest does not contain a valid confidence threshold key. Current value type: %@", &v9, 0x16u);
    }

    v5 = 0.9;
  }

  return v5;
}

- (void)readCatiManifest:(id)manifest
{
  v17 = *MEMORY[0x1E69E9840];
  manifestCopy = manifest;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [defaultManager fileExistsAtPath:manifestCopy];

  if (v6)
  {
    v7 = [MEMORY[0x1E695DEF0] dataWithContentsOfFile:manifestCopy];
    if (v7)
    {
      v12 = 0;
      v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v12];
      v9 = v12;
      if (v8)
      {
        v10 = [v8 objectForKey:@"cati-manifest"];
        p_super = &self->_manifest->super;
        self->_manifest = v10;
      }

      else
      {
        p_super = CDMOSLoggerForCategory(0);
        if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v14 = "[CDMCATIManifest readCatiManifest:]";
          v15 = 2112;
          v16 = v9;
          _os_log_error_impl(&dword_1DC287000, p_super, OS_LOG_TYPE_ERROR, "%s [ERR]: Error parsing JSON: %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v9 = CDMOSLoggerForCategory(0);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v14 = "[CDMCATIManifest readCatiManifest:]";
        v15 = 2112;
        v16 = manifestCopy;
        _os_log_error_impl(&dword_1DC287000, v9, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI manifest data could not be read at %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = CDMOSLoggerForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v14 = "[CDMCATIManifest readCatiManifest:]";
      v15 = 2112;
      v16 = manifestCopy;
      _os_log_error_impl(&dword_1DC287000, v7, OS_LOG_TYPE_ERROR, "%s [ERR]: CATI manifest file not found at %@", buf, 0x16u);
    }
  }
}

- (CDMCATIManifest)initWithPath:(id)path
{
  v63 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v44.receiver = self;
  v44.super_class = CDMCATIManifest;
  v5 = [(CDMCATIManifest *)&v44 init];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_22;
  }

  v5->_manifestValid = 0;
  [(CDMCATIManifest *)v5 readCatiManifest:pathCopy];
  if (!v6->_manifest)
  {
    goto LABEL_22;
  }

  validateManifest = [(CDMCATIManifest *)v6 validateManifest];
  v6->_manifestValid = validateManifest;
  if (!validateManifest)
  {
    goto LABEL_22;
  }

  v8 = [(NSDictionary *)v6->_manifest objectForKey:@"locale"];
  locale = v6->_locale;
  v6->_locale = v8;

  v10 = [(NSDictionary *)v6->_manifest objectForKey:@"date"];
  date = v6->_date;
  v6->_date = v10;

  v12 = [(NSDictionary *)v6->_manifest objectForKey:@"GUID"];
  GUID = v6->_GUID;
  v6->_GUID = v12;

  v14 = [(NSDictionary *)v6->_manifest objectForKey:@"version"];
  version = v6->_version;
  v6->_version = v14;

  v16 = [(NSDictionary *)v6->_manifest objectForKey:@"confidenceThreshold"];
  [(CDMCATIManifest *)v6 getThresholdValue:v16];
  v6->_confidenceScoreThreshold = v17;

  v18 = [(NSDictionary *)v6->_manifest objectForKey:@"multiturnConfidenceThreshold"];
  [(CDMCATIManifest *)v6 getMultiturnThresholdValue:v18];
  v6->_multiturnConfidenceScoreThreshold = v19;

  [(CDMCATIManifest *)v6 extractWeightsAndOverridesFromManifest:v6->_manifest];
  v20 = [(NSDictionary *)v6->_manifest objectForKey:@"usoEntity"];
  usoEntity = v6->_usoEntity;
  v6->_usoEntity = v20;

  v22 = [(NSDictionary *)v6->_manifest objectForKey:@"usoElementId"];
  v6->_usoElementId = [(CDMCATIManifest *)v6 getUsoElementId:v22];

  v23 = v6->_usoEntity;
  if (v23)
  {
    if ([(NSString *)v23 length])
    {
      goto LABEL_9;
    }

    v24 = v6->_usoEntity;
  }

  else
  {
    v24 = 0;
  }

  v6->_usoEntity = @"siri_Canned";

LABEL_9:
  v25 = [(NSDictionary *)v6->_manifest objectForKey:@"usoVerb"];
  usoVerb = v6->_usoVerb;
  v6->_usoVerb = v25;

  v27 = v6->_usoVerb;
  if (v27)
  {
    if ([(NSString *)v27 length])
    {
      goto LABEL_14;
    }

    v28 = v6->_usoVerb;
  }

  else
  {
    v28 = 0;
  }

  v6->_usoVerb = @"action";

LABEL_14:
  v29 = [(NSDictionary *)v6->_manifest objectForKey:@"usoCATIdEdge"];
  usoEdge = v6->_usoEdge;
  v6->_usoEdge = v29;

  v31 = v6->_usoEdge;
  if (!v31)
  {
    v32 = 0;
    goto LABEL_18;
  }

  if (![(NSString *)v31 length])
  {
    v32 = v6->_usoEdge;
LABEL_18:
    v6->_usoEdge = @"dialogId";
  }

  v33 = [(NSDictionary *)v6->_manifest objectForKey:@"expectedPositiveUtterances"];
  v6->_expectedPositiveUtterances = [(CDMCATIManifest *)v6 getExpectedPositiveUtterancesValue:v33];

  v34 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v36 = v6->_locale;
    v37 = v6->_date;
    v38 = v6->_GUID;
    v39 = v6->_version;
    usoElementId = v6->_usoElementId;
    v41 = v6->_usoEntity;
    v42 = v6->_usoVerb;
    v43 = v6->_usoEdge;
    *buf = 136317186;
    v46 = "[CDMCATIManifest initWithPath:]";
    v47 = 2112;
    v48 = v36;
    v49 = 2112;
    v50 = v37;
    v51 = 2112;
    v52 = v38;
    v53 = 2112;
    v54 = v39;
    v55 = 2112;
    v56 = v41;
    v57 = 1024;
    v58 = usoElementId;
    v59 = 2112;
    v60 = v42;
    v61 = 2112;
    v62 = v43;
    _os_log_debug_impl(&dword_1DC287000, v34, OS_LOG_TYPE_DEBUG, "%s CATI manifest locale: %@, date: %@, GUID: %@, version: %@, uso entity: %@, usoElementId: %d, usoVerb: %@, usoEdge: %@", buf, 0x58u);
  }

LABEL_22:
  return v6;
}

@end