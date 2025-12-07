@interface SCMLImageModelThresholds
+ (id)_createThresholdDictionaryWithError:(id *)error;
+ (id)_validateScoreThresholdsJson:(id)json error:(id *)error;
+ (id)instance;
- (SCMLImageModelThresholds)init;
- (double)thresholdForLabel:(id)label classificationMode:(unint64_t)mode modelVersion:(id)version error:(id *)error;
@end

@implementation SCMLImageModelThresholds

+ (id)_validateScoreThresholdsJson:(id)json error:(id *)error
{
  v5 = v45[14] = *MEMORY[0x1E69E9840];
  if (!v5)
  {
    goto LABEL_38;
  }

  {
    v45[0] = @"1.5.0";
    v45[1] = @"1.6.0";
    v45[2] = @"1.6.1";
    v45[3] = @"1.7.0";
    v45[4] = @"1.7.1";
    v45[5] = @"1.7.2";
    v45[6] = @"1.7.3";
    v45[7] = @"1.7.4";
    v45[8] = @"1.7.5";
    v45[9] = @"1.7.6";
    v45[10] = @"1.7.7";
    v45[11] = @"1.7.8";
    v45[12] = @"1.7.9";
    v45[13] = @"1.8.0";
    [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:14];
  }

  {
LABEL_38:
    v19 = 0;
    goto LABEL_39;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v5;
  v22 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (!v22)
  {
    goto LABEL_34;
  }

  v24 = *v39;
  while (2)
  {
    for (i = 0; i != v22; ++i)
    {
      if (*v39 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v27 = v6 = [obj objectForKeyedSubscript:*(*(&v38 + 1) + 8 * i)];

      if (!v27)
      {

LABEL_37:
        goto LABEL_38;
      }

      {

        goto LABEL_37;
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v29 = v27;
      v21 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
      if (v21)
      {
        v23 = *v35;
        while (2)
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(v29);
            }

            v8 = v7 = [v29 objectForKeyedSubscript:*(*(&v34 + 1) + 8 * j)];

            {
              v13 = v8;
LABEL_36:

              goto LABEL_37;
            }

            v32 = 0u;
            v33 = 0u;
            v30 = 0u;
            v31 = 0u;
            v13 = v8;
            v14 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
            if (v14)
            {
              v15 = *v31;
              while (2)
              {
                for (k = 0; k != v14; ++k)
                {
                  if (*v31 != v15)
                  {
                    objc_enumerationMutation(v13);
                  }

                  v17 = [v13 objectForKeyedSubscript:*(*(&v30 + 1) + 8 * k)];
                  if (v17 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v18 = v17;
                  }

                  else
                  {
                    v18 = 0;
                  }

                  if (!v18)
                  {

                    goto LABEL_36;
                  }
                }

                v14 = [v13 countByEnumeratingWithState:&v30 objects:v42 count:16];
                if (v14)
                {
                  continue;
                }

                break;
              }
            }
          }

          v21 = [v29 countByEnumeratingWithState:&v34 objects:v43 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }
    }

    v22 = [obj countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v22)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v19 = obj;
LABEL_39:

  return v19;
}

+ (id)_createThresholdDictionaryWithError:(id *)error
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v6 = MEMORY[0x1E695DFF8];
  resourcePath = [v5 resourcePath];
  v23[0] = resourcePath;
  v23[1] = @"Models/ImageModel/operating_thresholds_versioned.json";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v9 = [v6 fileURLWithPathComponents:v8];

  v10 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:v9];
  v22 = 0;
  v11 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v10 options:0 error:&v22];
  v12 = v22;
  if (v11)
  {
    v13 = [self _validateScoreThresholdsJson:v11 error:error];
  }

  else
  {
    v14 = +[SCMLLog handler];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [(SCMLImageModelThresholds *)v12 _createThresholdDictionaryWithError:v14, v15, v16, v17, v18, v19, v20];
    }

    v13 = 0;
  }

  return v13;
}

+ (id)instance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SCMLImageModelThresholds_instance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[SCMLImageModelThresholds instance]::onceToken != -1)
  {
    dispatch_once(&+[SCMLImageModelThresholds instance]::onceToken, block);
  }

  v2 = +[SCMLImageModelThresholds instance]::sharedCoder;

  return v2;
}

uint64_t __36__SCMLImageModelThresholds_instance__block_invoke(uint64_t a1)
{
  +[SCMLImageModelThresholds instance]::sharedCoder = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x1EEE66BB8]();
}

- (SCMLImageModelThresholds)init
{
  v8.receiver = self;
  v8.super_class = SCMLImageModelThresholds;
  v2 = [(SCMLImageModelThresholds *)&v8 init];
  if (v2)
  {
    v7 = 0;
    v3 = [SCMLImageModelThresholds _createThresholdDictionaryWithError:&v7];
    v4 = v7;
    [(SCMLImageModelThresholds *)v2 set_thresholdDict:v3];

    if (v4)
    {
      v5 = [v4 copy];
      [(SCMLImageModelThresholds *)v2 set_loadError:v5];
    }

    else
    {
      [(SCMLImageModelThresholds *)v2 set_loadError:0];
    }
  }

  return v2;
}

- (double)thresholdForLabel:(id)label classificationMode:(unint64_t)mode modelVersion:(id)version error:(id *)error
{
  labelCopy = label;
  versionCopy = version;
  _loadError = [(SCMLImageModelThresholds *)self _loadError];

  if (!_loadError)
  {
    if ([labelCopy hasPrefix:@"otgx_"])
    {
      v15 = +[SCMLImageLabelCoder instance];
      v16 = [v15 decodeFromP1:labelCopy];

      labelCopy = v16;
    }

    _thresholdDict = [(SCMLImageModelThresholds *)self _thresholdDict];
    _loadError2 = [_thresholdDict objectForKey:versionCopy];

    if (_loadError2)
    {
      v18 = +[SCMLImageLabelCoder instance];
      v19 = [v18 encodeToHex:labelCopy];

      v20 = [_loadError2 objectForKey:v19];
      v21 = v20;
      if (v20)
        v22 = {;
        v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
        v24 = [v22 objectForKeyedSubscript:v23];

        v25 = [(_anonymous_namespace_ *)v21 objectForKey:v24];
        v26 = v25;
        if (v25)
        {
          [v25 doubleValue];
          v13 = v27;
        }

        else
        {
          v40 = +[SCMLLog handler];
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            [SCMLImageModelThresholds thresholdForLabel:mode classificationMode:v40 modelVersion:? error:?];
          }

          v13 = 1.1;
        }
      }

      else
      {
        v24 = +[SCMLLog handler];
        v13 = 1.1;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          [(SCMLImageModelThresholds *)labelCopy thresholdForLabel:v24 classificationMode:v34 modelVersion:v35 error:v36, v37, v38, v39];
        }
      }
    }

    else
    {
      v19 = +[SCMLLog handler];
      v13 = 1.1;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(SCMLImageModelThresholds *)versionCopy thresholdForLabel:v19 classificationMode:v28 modelVersion:v29 error:v30, v31, v32, v33];
      }
    }

    goto LABEL_20;
  }

  v13 = 1.1;
  if (error)
  {
    _loadError2 = [(SCMLImageModelThresholds *)self _loadError];
    *error = [_loadError2 copy];
LABEL_20:
  }

  return v13;
}

+ (void)_createThresholdDictionaryWithError:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, a2, a3, "Failed to load json: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)thresholdForLabel:(int)a1 classificationMode:(NSObject *)a2 modelVersion:error:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_1B8A3C000, a2, OS_LOG_TYPE_ERROR, "Unsupported classification mode: %d", v2, 8u);
}

- (void)thresholdForLabel:(uint64_t)a3 classificationMode:(uint64_t)a4 modelVersion:(uint64_t)a5 error:(uint64_t)a6 .cold.2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, a2, a3, "Unsupported classification label: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)thresholdForLabel:(uint64_t)a3 classificationMode:(uint64_t)a4 modelVersion:(uint64_t)a5 error:(uint64_t)a6 .cold.3(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1B8A3C000, a2, a3, "Unsupported model version: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end