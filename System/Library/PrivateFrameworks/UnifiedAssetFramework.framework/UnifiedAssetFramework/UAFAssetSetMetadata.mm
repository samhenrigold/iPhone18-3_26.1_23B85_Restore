@interface UAFAssetSetMetadata
+ (BOOL)isValid:(id)valid error:(id *)error;
+ (id)OSThirdPartyCompatibilityVersion:(id)version;
+ (id)OSVersion;
+ (id)fromAssetDir:(id)dir error:(id *)error;
+ (id)fromContentsOfURL:(id)l error:(id *)error;
+ (id)supportedFileVersions;
- (BOOL)OSSupported:(id)supported;
- (UAFAssetSetMetadata)initWithDictionary:(id)dictionary;
@end

@implementation UAFAssetSetMetadata

+ (id)supportedFileVersions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (id)OSVersion
{
  if (qword_1ED7D1080 != -1)
  {
    dispatch_once(&qword_1ED7D1080, &__block_literal_global_2);
  }

  v3 = _MergedGlobals_1;

  return v3;
}

void __32__UAFAssetSetMetadata_OSVersion__block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = _CFCopySystemVersionDictionaryValue();
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;

  if (!_MergedGlobals_1)
  {
    v2 = MGCopyAnswer();
    v3 = _MergedGlobals_1;
    _MergedGlobals_1 = v2;
  }

  v4 = UAFGetLogCategory(&UAFLogContextConfiguration);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "+[UAFAssetSetMetadata OSVersion]_block_invoke";
    v7 = 2114;
    v8 = _MergedGlobals_1;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s OS version for the metadata asset: %{public}@", &v5, 0x16u);
  }
}

+ (BOOL)isValid:(id)valid error:(id *)error
{
  v53[2] = *MEMORY[0x1E69E9840];
  validCopy = valid;
  v6 = +[UAFAssetSetMetadata supportedFileVersions];
  v7 = [UAFConfiguration isValid:validCopy fileType:@"AssetSetMetadata" fileVersions:v6 error:error];

  if (!v7 || ![UAFConfiguration isValidValue:validCopy key:@"MinOSVersion" kind:objc_opt_class() required:0 error:error])
  {
    goto LABEL_25;
  }

  v8 = [validCopy objectForKeyedSubscript:@"MinOSVersion"];
  if (v8)
  {
    v9 = v8;
    v10 = [validCopy objectForKeyedSubscript:@"MinOSVersion"];
    v11 = [UAFPlatform versionComponentsFromString:v10];

    if (!v11)
    {
      if (error)
      {
        v17 = MEMORY[0x1E696ABC0];
        if (*error)
        {
          v52[0] = *MEMORY[0x1E696A578];
          v18 = MEMORY[0x1E696AEC0];
          v19 = [validCopy objectForKeyedSubscript:@"MinOSVersion"];
          v20 = [v18 stringWithFormat:@"MinOSVersion %@ is not a valid version", v19];
          v52[1] = *MEMORY[0x1E696AA08];
          v21 = *error;
          v53[0] = v20;
          v53[1] = v21;
          v22 = MEMORY[0x1E695DF20];
          v23 = v53;
          v24 = v52;
          v25 = 2;
        }

        else
        {
          v50 = *MEMORY[0x1E696A578];
          v34 = MEMORY[0x1E696AEC0];
          v19 = [validCopy objectForKeyedSubscript:@"MinOSVersion"];
          v20 = [v34 stringWithFormat:@"MinOSVersion %@ is not a valid version", v19];
          v51 = v20;
          v22 = MEMORY[0x1E695DF20];
          v23 = &v51;
          v24 = &v50;
          v25 = 1;
        }

        v35 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
        *error = [v17 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v35];
      }

      v36 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v37 = [validCopy objectForKeyedSubscript:@"MinOSVersion"];
      *buf = 136315394;
      v47 = "+[UAFAssetSetMetadata isValid:error:]";
      v48 = 2112;
      v49 = v37;
      v38 = "%s MinOSVersion %@ is not a valid version";
      goto LABEL_23;
    }
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"MaxOSVersion" kind:objc_opt_class() required:0 error:error])
  {
LABEL_25:
    v16 = 0;
    goto LABEL_26;
  }

  v12 = [validCopy objectForKeyedSubscript:@"MaxOSVersion"];
  if (v12)
  {
    v13 = v12;
    v14 = [validCopy objectForKeyedSubscript:@"MaxOSVersion"];
    v15 = [UAFPlatform versionComponentsFromString:v14];

    if (!v15)
    {
      if (error)
      {
        v26 = MEMORY[0x1E696ABC0];
        if (*error)
        {
          v44[0] = *MEMORY[0x1E696A578];
          v27 = MEMORY[0x1E696AEC0];
          v28 = [validCopy objectForKeyedSubscript:@"MaxOSVersion"];
          v29 = [v27 stringWithFormat:@"MaxOSVersion %@ is not a valid version", v28];
          v44[1] = *MEMORY[0x1E696AA08];
          v45[0] = v29;
          v45[1] = *error;
          v30 = MEMORY[0x1E695DF20];
          v31 = v45;
          v32 = v44;
          v33 = 2;
        }

        else
        {
          v42 = *MEMORY[0x1E696A578];
          v39 = MEMORY[0x1E696AEC0];
          v28 = [validCopy objectForKeyedSubscript:@"MaxOSVersion"];
          v29 = [v39 stringWithFormat:@"MaxOSVersion %@ is not a valid version", v28];
          v43 = v29;
          v30 = MEMORY[0x1E695DF20];
          v31 = &v43;
          v32 = &v42;
          v33 = 1;
        }

        v40 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:v33];
        *error = [v26 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v40];
      }

      v36 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_24;
      }

      v37 = [validCopy objectForKeyedSubscript:@"MaxOSVersion"];
      *buf = 136315394;
      v47 = "+[UAFAssetSetMetadata isValid:error:]";
      v48 = 2112;
      v49 = v37;
      v38 = "%s MaxOSVersion %@ is not a valid version";
LABEL_23:
      _os_log_impl(&dword_1BCF2C000, v36, OS_LOG_TYPE_DEFAULT, v38, buf, 0x16u);

LABEL_24:
      goto LABEL_25;
    }
  }

  v16 = [UAFConfiguration isValidValue:validCopy key:@"ThirdPartyCompatibilityVersion" kind:objc_opt_class() required:0 error:error];
LABEL_26:

  return v16;
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
    if ([UAFAssetSetMetadata isValid:v6 error:error])
    {
      v15 = [[UAFAssetSetMetadata alloc] initWithDictionary:v6];
      goto LABEL_15;
    }

    v11 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "+[UAFAssetSetMetadata fromContentsOfURL:error:]";
      v20 = 2112;
      v21 = lCopy;
      v12 = "%s Failed to validate UAFAssetSetMetadata dictionary from %@";
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
      v19 = "+[UAFAssetSetMetadata fromContentsOfURL:error:]";
      v20 = 2112;
      v21 = lCopy;
      v22 = 2112;
      v23 = v8;
      v12 = "%s Failed to load UAFAssetSetMetadata dictionary from %@: %@";
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

+ (id)fromAssetDir:(id)dir error:(id *)error
{
  v5 = [dir URLByAppendingPathComponent:@"metadata.plist"];
  v6 = [UAFAssetSetMetadata fromContentsOfURL:v5 error:error];

  return v6;
}

+ (id)OSThirdPartyCompatibilityVersion:(id)version
{
  versionCopy = version;
  autoAssetType = [versionCopy autoAssetType];

  if (autoAssetType)
  {
    v5 = MEMORY[0x1E69B1960];
    autoAssetType2 = [versionCopy autoAssetType];
    autoAssetType = [v5 compatibilityVersionStringForAssetType:autoAssetType2];
  }

  return autoAssetType;
}

- (UAFAssetSetMetadata)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = UAFAssetSetMetadata;
  v5 = [(UAFAssetSetMetadata *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"MinOSVersion"];
    minOSVersion = v5->_minOSVersion;
    v5->_minOSVersion = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"MaxOSVersion"];
    maxOSVersion = v5->_maxOSVersion;
    v5->_maxOSVersion = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"ThirdPartyCompatibilityVersion"];
    thirdPartyCompatibilityVersion = v5->_thirdPartyCompatibilityVersion;
    v5->_thirdPartyCompatibilityVersion = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)OSSupported:(id)supported
{
  v22 = *MEMORY[0x1E69E9840];
  supportedCopy = supported;
  if (*&self->_minOSVersion == 0 && !self->_thirdPartyCompatibilityVersion)
  {
    goto LABEL_15;
  }

  v5 = +[UAFAssetSetMetadata OSVersion];
  v6 = [UAFPlatform versionComponentsFromString:v5];

  if (!v6)
  {
    v12 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = +[UAFAssetSetMetadata OSVersion];
      v18 = 136315394;
      v19 = "[UAFAssetSetMetadata OSSupported:]";
      v20 = 2112;
      v21 = v17;
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Current OS Version %@ is not a valid version", &v18, 0x16u);
    }

    goto LABEL_15;
  }

  if (!self->_minOSVersion || (+[UAFAssetSetMetadata OSVersion], v7 = objc_claimAutoreleasedReturnValue(), v8 = [UAFPlatform compareVersion:v7 with:self->_minOSVersion], v7, v8 != -1))
  {
    if (!self->_maxOSVersion || (+[UAFAssetSetMetadata OSVersion], v9 = objc_claimAutoreleasedReturnValue(), v10 = [UAFPlatform compareVersion:v9 with:self->_maxOSVersion], v9, v10 != 1))
    {
      if (self->_thirdPartyCompatibilityVersion)
      {
        v13 = [UAFAssetSetMetadata OSThirdPartyCompatibilityVersion:supportedCopy];
        if (v13)
        {
          v14 = v13;
          v15 = [UAFAssetSetMetadata OSThirdPartyCompatibilityVersion:supportedCopy];
          v11 = [v15 isEqualToString:self->_thirdPartyCompatibilityVersion];

          goto LABEL_16;
        }
      }

LABEL_15:
      v11 = 1;
      goto LABEL_16;
    }
  }

  v11 = 0;
LABEL_16:

  return v11 & 1;
}

@end