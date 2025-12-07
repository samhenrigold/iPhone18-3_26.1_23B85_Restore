@interface UAFConfiguration
+ (BOOL)isValid:(id)valid fileType:(id)type fileVersions:(id)versions error:(id *)error;
+ (BOOL)isValidValue:(id)value key:(id)key kind:(Class)kind required:(BOOL)required error:(id *)error;
@end

@implementation UAFConfiguration

+ (BOOL)isValidValue:(id)value key:(id)key kind:(Class)kind required:(BOOL)required error:(id *)error
{
  requiredCopy = required;
  v56[2] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  if (requiredCopy)
  {
    v13 = [valueCopy objectForKeyedSubscript:keyCopy];

    if (!v13)
    {
      if (error)
      {
        v26 = MEMORY[0x1E696ABC0];
        if (*error)
        {
          v55[0] = *MEMORY[0x1E696A578];
          keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Required key %@ has no value", keyCopy];
          v55[1] = *MEMORY[0x1E696AA08];
          v56[0] = keyCopy;
          v56[1] = *error;
          v28 = MEMORY[0x1E695DF20];
          v29 = v56;
          v30 = v55;
          v31 = 2;
        }

        else
        {
          v53 = *MEMORY[0x1E696A578];
          keyCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Required key %@ has no value", keyCopy];
          v54 = keyCopy;
          v28 = MEMORY[0x1E695DF20];
          v29 = &v54;
          v30 = &v53;
          v31 = 1;
        }

        v37 = [v28 dictionaryWithObjects:v29 forKeys:v30 count:v31];
        *error = [v26 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v37];
      }

      v34 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v40 = "+[UAFConfiguration isValidValue:key:kind:required:error:]";
        v41 = 2112;
        v42 = keyCopy;
        _os_log_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEFAULT, "%s Required key %@ has no value", buf, 0x16u);
      }

      goto LABEL_20;
    }
  }

  v14 = [valueCopy objectForKeyedSubscript:keyCopy];

  if (v14)
  {
    v15 = [valueCopy objectForKeyedSubscript:keyCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      if (error)
      {
        v18 = MEMORY[0x1E696ABC0];
        if (*error)
        {
          v51[0] = *MEMORY[0x1E696A578];
          v19 = MEMORY[0x1E696AEC0];
          v20 = [valueCopy objectForKeyedSubscript:keyCopy];
          v21 = [v19 stringWithFormat:@"Key %@ is not expected kind %@: %@ vs %@", keyCopy, kind, v20, objc_opt_class()];
          v51[1] = *MEMORY[0x1E696AA08];
          v52[0] = v21;
          v52[1] = *error;
          v22 = MEMORY[0x1E695DF20];
          v23 = v52;
          v24 = v51;
          v25 = 2;
        }

        else
        {
          v49 = *MEMORY[0x1E696A578];
          v32 = MEMORY[0x1E696AEC0];
          v20 = [valueCopy objectForKeyedSubscript:keyCopy];
          v21 = [v32 stringWithFormat:@"Key %@ is not expected kind %@: %@ vs %@", keyCopy, kind, v20, objc_opt_class()];
          v50 = v21;
          v22 = MEMORY[0x1E695DF20];
          v23 = &v50;
          v24 = &v49;
          v25 = 1;
        }

        v33 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
        *error = [v18 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v33];
      }

      v34 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [valueCopy objectForKeyedSubscript:keyCopy];
        *buf = 136316162;
        v40 = "+[UAFConfiguration isValidValue:key:kind:required:error:]";
        v41 = 2112;
        v42 = keyCopy;
        v43 = 2112;
        kindCopy = kind;
        v45 = 2112;
        v46 = v35;
        v47 = 2112;
        v48 = objc_opt_class();
        v36 = v48;
        _os_log_impl(&dword_1BCF2C000, v34, OS_LOG_TYPE_DEFAULT, "%s Key %@ is not expected kind %@: %@ vs %@", buf, 0x34u);
      }

LABEL_20:

      v17 = 0;
      goto LABEL_21;
    }
  }

  v17 = 1;
LABEL_21:

  return v17;
}

+ (BOOL)isValid:(id)valid fileType:(id)type fileVersions:(id)versions error:(id *)error
{
  v65[2] = *MEMORY[0x1E69E9840];
  validCopy = valid;
  typeCopy = type;
  versionsCopy = versions;
  v12 = [validCopy objectForKeyedSubscript:@"FileType"];
  v13 = [typeCopy isEqualToString:v12];

  if (v13)
  {
    v14 = [validCopy objectForKeyedSubscript:@"FileVersion"];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v15 = versionsCopy;
    v16 = [v15 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v46;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(v15);
          }

          if ([*(*(&v45 + 1) + 8 * i) isEqualToString:v14])
          {
            v35 = 1;
            goto LABEL_27;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    if (error)
    {
      v44 = MEMORY[0x1E696ABC0];
      if (*error)
      {
        v51[0] = *MEMORY[0x1E696A578];
        v20 = MEMORY[0x1E696AEC0];
        v21 = [validCopy objectForKeyedSubscript:@"FileVersion"];
        v22 = [v20 stringWithFormat:@"%@ value %@ is not one of %@", @"FileVersion", v21, v15];
        v51[1] = *MEMORY[0x1E696AA08];
        v52[0] = v22;
        v52[1] = *error;
        v23 = MEMORY[0x1E695DF20];
        v24 = v52;
        v25 = v51;
        v26 = 2;
      }

      else
      {
        v49 = *MEMORY[0x1E696A578];
        v39 = MEMORY[0x1E696AEC0];
        v21 = [validCopy objectForKeyedSubscript:@"FileVersion"];
        v22 = [v39 stringWithFormat:@"%@ value %@ is not one of %@", @"FileVersion", v21, v15];
        v50 = v22;
        v23 = MEMORY[0x1E695DF20];
        v24 = &v50;
        v25 = &v49;
        v26 = 1;
      }

      v40 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:v26];
      *error = [v44 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v40];
    }

    v41 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [validCopy objectForKeyedSubscript:@"FileVersion"];
      *buf = 136315906;
      v55 = "+[UAFConfiguration isValid:fileType:fileVersions:error:]";
      v56 = 2112;
      v57 = @"FileVersion";
      v58 = 2112;
      v59 = v42;
      v60 = 2112;
      v61 = v15;
      _os_log_impl(&dword_1BCF2C000, v41, OS_LOG_TYPE_DEFAULT, "%s %@ value %@ is not one of %@", buf, 0x2Au);
    }

    v35 = 0;
    v15 = v41;
LABEL_27:
  }

  else
  {
    if (error)
    {
      v27 = MEMORY[0x1E696ABC0];
      if (*error)
      {
        v64[0] = *MEMORY[0x1E696A578];
        v28 = MEMORY[0x1E696AEC0];
        v29 = [validCopy objectForKeyedSubscript:@"FileType"];
        typeCopy = [v28 stringWithFormat:@"%@ value %@ is not %@", @"FileType", v29, typeCopy];
        v64[1] = *MEMORY[0x1E696AA08];
        v65[0] = typeCopy;
        v65[1] = *error;
        v31 = MEMORY[0x1E695DF20];
        v32 = v65;
        v33 = v64;
        v34 = 2;
      }

      else
      {
        v62 = *MEMORY[0x1E696A578];
        v36 = MEMORY[0x1E696AEC0];
        v29 = [validCopy objectForKeyedSubscript:@"FileType"];
        typeCopy = [v36 stringWithFormat:@"%@ value %@ is not %@", @"FileType", v29, typeCopy];
        v63 = typeCopy;
        v31 = MEMORY[0x1E695DF20];
        v32 = &v63;
        v33 = &v62;
        v34 = 1;
      }

      v37 = [v31 dictionaryWithObjects:v32 forKeys:v33 count:v34];
      *error = [v27 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v37];
    }

    v14 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v38 = [validCopy objectForKeyedSubscript:@"FileType"];
      *buf = 136315906;
      v55 = "+[UAFConfiguration isValid:fileType:fileVersions:error:]";
      v56 = 2112;
      v57 = @"FileType";
      v58 = 2112;
      v59 = v38;
      v60 = 2112;
      v61 = typeCopy;
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s %@ value %@ is not %@", buf, 0x2Au);
    }

    v35 = 0;
  }

  return v35;
}

@end