@interface UAFMinVersionConfiguration
+ (BOOL)isValid:(id)valid error:(id *)error;
+ (id)fromContentsOfURL:(id)l error:(id *)error;
+ (id)supportedFileVersions;
- (UAFMinVersionConfiguration)initWithDictionary:(id)dictionary;
@end

@implementation UAFMinVersionConfiguration

+ (id)supportedFileVersions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (BOOL)isValid:(id)valid error:(id *)error
{
  v56 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v6 = +[UAFMinVersionConfiguration supportedFileVersions];
  v7 = [UAFConfiguration isValid:validCopy fileType:@"MinVersion" fileVersions:v6 error:error];

  if (v7 && [UAFConfiguration isValidValue:validCopy key:@"AssetSetName" kind:objc_opt_class() required:1 error:error]&& [UAFConfiguration isValidValue:validCopy key:@"Assets" kind:objc_opt_class() required:0 error:error])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = [validCopy objectForKeyedSubscript:@"Assets"];
    v8 = [obj countByEnumeratingWithState:&v39 objects:v55 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v40;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v40 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v39 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            if (error)
            {
              v17 = MEMORY[0x1E696ABC0];
              if (*error)
              {
                v53[0] = *MEMORY[0x1E696A578];
                v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset is not expected kind %@", objc_opt_class()];
                v53[1] = *MEMORY[0x1E696AA08];
                v54[0] = v18;
                v54[1] = *error;
                v19 = MEMORY[0x1E695DF20];
                v20 = v54;
                v21 = v53;
                v22 = 2;
              }

              else
              {
                v51 = *MEMORY[0x1E696A578];
                v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset is not expected kind %@", objc_opt_class()];
                v52 = v18;
                v19 = MEMORY[0x1E695DF20];
                v20 = &v52;
                v21 = &v51;
                v22 = 1;
              }

              v31 = [v19 dictionaryWithObjects:v20 forKeys:v21 count:v22];
              *error = [v17 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v31];
            }

            v32 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v33 = objc_opt_class();
              *buf = 136315394;
              v48 = "+[UAFMinVersionConfiguration isValid:error:]";
              v49 = 2112;
              v50 = v33;
              v34 = v33;
              v35 = "%s Asset is not expected kind %@";
              goto LABEL_33;
            }

LABEL_34:

LABEL_35:
            v15 = 0;
            goto LABEL_36;
          }

          if (![UAFConfiguration isValidValue:v12 key:@"AssetName" kind:objc_opt_class() required:1 error:error]|| ![UAFConfiguration isValidValue:v12 key:@"MinVersion" kind:objc_opt_class() required:1 error:error])
          {
            goto LABEL_35;
          }

          v13 = [v12 objectForKeyedSubscript:@"MinVersion"];
          v14 = [UAFPlatform versionComponentsFromString:v13];

          if (!v14)
          {
            if (error)
            {
              v23 = MEMORY[0x1E696ABC0];
              if (*error)
              {
                v45[0] = *MEMORY[0x1E696A578];
                v24 = MEMORY[0x1E696AEC0];
                v25 = [v12 objectForKeyedSubscript:@"MinVersion"];
                v26 = [v24 stringWithFormat:@"MinVersion %@ is not a valid version", v25];
                v45[1] = *MEMORY[0x1E696AA08];
                v46[0] = v26;
                v46[1] = *error;
                v27 = MEMORY[0x1E695DF20];
                v28 = v46;
                v29 = v45;
                v30 = 2;
              }

              else
              {
                v43 = *MEMORY[0x1E696A578];
                v36 = MEMORY[0x1E696AEC0];
                v25 = [v12 objectForKeyedSubscript:@"MinVersion"];
                v26 = [v36 stringWithFormat:@"MinVersion %@ is not a valid version", v25];
                v44 = v26;
                v27 = MEMORY[0x1E695DF20];
                v28 = &v44;
                v29 = &v43;
                v30 = 1;
              }

              v37 = [v27 dictionaryWithObjects:v28 forKeys:v29 count:v30];
              *error = [v23 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v37];
            }

            v32 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v34 = [v12 objectForKeyedSubscript:@"MinVersion"];
              *buf = 136315394;
              v48 = "+[UAFMinVersionConfiguration isValid:error:]";
              v49 = 2112;
              v50 = v34;
              v35 = "%s MinVersion %@ is not a valid version";
LABEL_33:
              _os_log_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_DEFAULT, v35, buf, 0x16u);
            }

            goto LABEL_34;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v39 objects:v55 count:16];
        v15 = 1;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v15 = 1;
    }

LABEL_36:
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

+ (id)fromContentsOfURL:(id)l error:(id *)error
{
  v24 = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (error)
  {
    *error = 0;
  }

  v17 = 0;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v17];
  v7 = v17;
  v8 = v7;
  if (error)
  {
    v9 = v7;
    *error = v8;
  }

  if (v6)
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    if ([UAFMinVersionConfiguration isValid:v6 error:error])
    {
      v15 = [[UAFMinVersionConfiguration alloc] initWithDictionary:v6];
      goto LABEL_15;
    }

    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "+[UAFMinVersionConfiguration fromContentsOfURL:error:]";
      v20 = 2112;
      v21 = lCopy;
      v12 = "%s Failed to validate UAFMinVersionConfiguration dictionary from %@";
      v13 = v11;
      v14 = 22;
      goto LABEL_19;
    }
  }

  else
  {
    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v19 = "+[UAFMinVersionConfiguration fromContentsOfURL:error:]";
      v20 = 2112;
      v21 = lCopy;
      v22 = 2112;
      v23 = v8;
      v12 = "%s Failed to load UAFMinVersionConfiguration dictionary from %@: %@";
      v13 = v11;
      v14 = 32;
LABEL_19:
      _os_log_error_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_ERROR, v12, buf, v14);
    }
  }

  v15 = 0;
LABEL_15:

  return v15;
}

- (UAFMinVersionConfiguration)initWithDictionary:(id)dictionary
{
  v27 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v25.receiver = self;
  v25.super_class = UAFMinVersionConfiguration;
  v5 = [(UAFMinVersionConfiguration *)&v25 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"AssetSetName"];
    assetSetName = v5->_assetSetName;
    v5->_assetSetName = v6;

    v8 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = dictionaryCopy;
    v9 = [dictionaryCopy objectForKeyedSubscript:@"Assets"];
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = [v14 objectForKeyedSubscript:@"MinVersion"];
          v16 = [v14 objectForKeyedSubscript:@"AssetName"];
          [(NSDictionary *)v8 setObject:v15 forKeyedSubscript:v16];
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
    }

    minVersions = v5->_minVersions;
    v5->_minVersions = v8;

    v18 = v5;
    dictionaryCopy = v20;
  }

  return v5;
}

@end