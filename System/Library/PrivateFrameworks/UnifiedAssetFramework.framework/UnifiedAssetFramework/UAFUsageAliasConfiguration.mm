@interface UAFUsageAliasConfiguration
+ (BOOL)isValid:(id)valid assetSetManager:(id)manager error:(id *)error;
+ (id)fromContentsOfURL:(id)l assetSetManager:(id)manager error:(id *)error;
+ (id)supportedFileVersions;
- (BOOL)addDeprecatedValues:(id)values;
- (UAFUsageAliasConfiguration)initWithDictionary:(id)dictionary assetSetManager:(id)manager;
- (id)getAssetSetAssets:(id)assets usageValue:(id)value withSource:(id)source;
- (id)getAssets:(id)assets withSource:(id)source;
@end

@implementation UAFUsageAliasConfiguration

+ (id)supportedFileVersions
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = @"1.0.0";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];

  return v2;
}

+ (BOOL)isValid:(id)valid assetSetManager:(id)manager error:(id *)error
{
  v164 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  managerCopy = manager;
  v9 = +[UAFUsageAliasConfiguration supportedFileVersions];
  v10 = [UAFConfiguration isValid:validCopy fileType:@"UsageAliasConfiguration" fileVersions:v9 error:error];

  if (!v10)
  {
    goto LABEL_59;
  }

  if (![UAFConfiguration isValidValue:validCopy key:@"UsageAliasName" kind:objc_opt_class() required:1 error:error]|| ![UAFConfiguration isValidValue:validCopy key:@"UsageAliasValues" kind:objc_opt_class() required:1 error:error])
  {
    LOBYTE(v10) = 0;
    goto LABEL_59;
  }

  v128 = 0u;
  v129 = 0u;
  v126 = 0u;
  v127 = 0u;
  v11 = [validCopy objectForKeyedSubscript:@"UsageAliasValues"];
  v12 = [v11 countByEnumeratingWithState:&v126 objects:v163 count:16];
  if (!v12)
  {
    LOBYTE(v10) = 1;
    goto LABEL_58;
  }

  v13 = *v127;
  v105 = *v127;
  while (2)
  {
    v14 = 0;
    v106 = v12;
    do
    {
      if (*v127 != v13)
      {
        objc_enumerationMutation(v11);
      }

      v108 = v14;
      v15 = *(*(&v126 + 1) + 8 * v14);
      v16 = [validCopy objectForKeyedSubscript:@"UsageAliasValues"];
      v17 = [v16 objectForKeyedSubscript:v15];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v113 = v15;
      if ((isKindOfClass & 1) == 0)
      {
        if (error)
        {
          v60 = MEMORY[0x1E696ABC0];
          if (*error)
          {
            v161[0] = *MEMORY[0x1E696A578];
            v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues entry for %@ is not expected kind %@", v15, objc_opt_class()];
            v161[1] = *MEMORY[0x1E696AA08];
            v62 = *error;
            v162[0] = v61;
            v162[1] = v62;
            v63 = MEMORY[0x1E695DF20];
            v64 = v162;
            v65 = v161;
            v66 = 2;
          }

          else
          {
            v159 = *MEMORY[0x1E696A578];
            v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues entry for %@ is not expected kind %@", v15, objc_opt_class()];
            v160 = v61;
            v63 = MEMORY[0x1E695DF20];
            v64 = &v160;
            v65 = &v159;
            v66 = 1;
          }

          v83 = [v63 dictionaryWithObjects:v64 forKeys:v65 count:v66];
          *error = [v60 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v83];

          v15 = v113;
        }

        v20 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_57;
        }

        v84 = objc_opt_class();
        *buf = 136315650;
        v136 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
        v137 = 2112;
        v138 = v15;
        v139 = 2112;
        v140 = v84;
        v85 = v84;
        v86 = "%s UsageAliasValues entry for %@ is not expected kind %@";
        v87 = v20;
        v88 = 32;
        goto LABEL_77;
      }

      v19 = [validCopy objectForKeyedSubscript:@"UsageAliasValues"];
      v20 = [v19 objectForKeyedSubscript:v15];

      if (![v20 count])
      {
        if (error)
        {
          v67 = MEMORY[0x1E696ABC0];
          if (*error)
          {
            v157[0] = *MEMORY[0x1E696A578];
            v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues asset sets for %@ has no values", v15];
            v157[1] = *MEMORY[0x1E696AA08];
            v69 = *error;
            v158[0] = v68;
            v158[1] = v69;
            v70 = MEMORY[0x1E695DF20];
            v71 = v158;
            v72 = v157;
            v73 = 2;
          }

          else
          {
            v155 = *MEMORY[0x1E696A578];
            v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues asset sets for %@ has no values", v15];
            v156 = v68;
            v70 = MEMORY[0x1E695DF20];
            v71 = &v156;
            v72 = &v155;
            v73 = 1;
          }

          v89 = [v70 dictionaryWithObjects:v71 forKeys:v72 count:v73];
          *error = [v67 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v89];

          v15 = v113;
        }

        v85 = UAFGetLogCategory(&UAFLogContextConfiguration);
        if (!os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_78;
        }

        *buf = 136315394;
        v136 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
        v137 = 2112;
        v138 = v15;
        v86 = "%s UsageAliasValues asset sets for %@ has no values";
        v87 = v85;
        v88 = 22;
LABEL_77:
        _os_log_impl(&dword_1BCF2C000, v87, OS_LOG_TYPE_DEFAULT, v86, buf, v88);
LABEL_78:

LABEL_57:
        LOBYTE(v10) = 0;
        goto LABEL_58;
      }

      v124 = 0u;
      v125 = 0u;
      v122 = 0u;
      v123 = 0u;
      v20 = v20;
      v21 = [v20 countByEnumeratingWithState:&v122 objects:v154 count:16];
      if (v21)
      {
        v22 = *v123;
        v109 = v20;
        v110 = v11;
        v103 = *v123;
        while (2)
        {
          v23 = 0;
          v104 = v21;
          do
          {
            if (*v123 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v107 = v23;
            v24 = *(*(&v122 + 1) + 8 * v23);
            v25 = [v20 objectForKeyedSubscript:v24];
            objc_opt_class();
            v26 = objc_opt_isKindOfClass();

            if ((v26 & 1) == 0)
            {
              if (error)
              {
                v74 = v20;
                v75 = managerCopy;
                v76 = MEMORY[0x1E696ABC0];
                if (*error)
                {
                  v152[0] = *MEMORY[0x1E696A578];
                  v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues usages for asset set %@ for value %@ is not expected kind %@", v24, v113, objc_opt_class()];
                  v152[1] = *MEMORY[0x1E696AA08];
                  v78 = *error;
                  v153[0] = v77;
                  v153[1] = v78;
                  v79 = MEMORY[0x1E695DF20];
                  v80 = v153;
                  v81 = v152;
                  v82 = 2;
                }

                else
                {
                  v150 = *MEMORY[0x1E696A578];
                  v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues usages for asset set %@ for value %@ is not expected kind %@", v24, v113, objc_opt_class()];
                  v151 = v77;
                  v79 = MEMORY[0x1E695DF20];
                  v80 = &v151;
                  v81 = &v150;
                  v82 = 1;
                }

                v96 = [v79 dictionaryWithObjects:v80 forKeys:v81 count:v82];
                *error = [v76 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v96];

                managerCopy = v75;
                v20 = v74;
              }

              v28 = UAFGetLogCategory(&UAFLogContextConfiguration);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v97 = objc_opt_class();
                *buf = 136315906;
                v136 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
                v137 = 2112;
                v138 = v24;
                v139 = 2112;
                v140 = v113;
                v141 = 2112;
                v142 = v97;
                v98 = v97;
                _os_log_impl(&dword_1BCF2C000, v28, OS_LOG_TYPE_DEFAULT, "%s UsageAliasValues usages for asset set %@ for value %@ is not expected kind %@", buf, 0x2Au);
              }

              goto LABEL_56;
            }

            v112 = v24;
            v27 = [v20 objectForKeyedSubscript:v24];
            v118 = 0u;
            v119 = 0u;
            v120 = 0u;
            v121 = 0u;
            v28 = v27;
            v29 = [v28 countByEnumeratingWithState:&v118 objects:v149 count:16];
            if (v29)
            {
              v30 = v29;
              v31 = *v119;
              while (2)
              {
                for (i = 0; i != v30; ++i)
                {
                  if (*v119 != v31)
                  {
                    objc_enumerationMutation(v28);
                  }

                  v33 = *(*(&v118 + 1) + 8 * i);
                  v34 = [v28 objectForKeyedSubscript:v33];
                  objc_opt_class();
                  v35 = objc_opt_isKindOfClass();

                  if ((v35 & 1) == 0)
                  {
                    if (error)
                    {
                      v48 = MEMORY[0x1E696ABC0];
                      if (*error)
                      {
                        v147[0] = *MEMORY[0x1E696A578];
                        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues usage value for usage %@ for asset set %@ for value %@ is not expected kind %@", v33, v112, v113, objc_opt_class()];
                        v147[1] = *MEMORY[0x1E696AA08];
                        v50 = *error;
                        v148[0] = v49;
                        v148[1] = v50;
                        v51 = MEMORY[0x1E695DF20];
                        v52 = v148;
                        v53 = v147;
                        v54 = 2;
                      }

                      else
                      {
                        v145 = *MEMORY[0x1E696A578];
                        v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues usage value for usage %@ for asset set %@ for value %@ is not expected kind %@", v33, v112, v113, objc_opt_class()];
                        v146 = v49;
                        v51 = MEMORY[0x1E695DF20];
                        v52 = &v146;
                        v53 = &v145;
                        v54 = 1;
                      }

                      v55 = [v51 dictionaryWithObjects:v52 forKeys:v53 count:v54];
                      *error = [v48 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v55];
                    }

                    v56 = UAFGetLogCategory(&UAFLogContextConfiguration);
                    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
                    {
                      v57 = objc_opt_class();
                      *buf = 136316162;
                      v136 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
                      v137 = 2112;
                      v138 = v33;
                      v139 = 2112;
                      v140 = v112;
                      v141 = 2112;
                      v142 = v113;
                      v143 = 2112;
                      v144 = v57;
                      v58 = v57;
                      _os_log_impl(&dword_1BCF2C000, v56, OS_LOG_TYPE_DEFAULT, "%s UsageAliasValues usage value for usage %@ for asset set %@ for value %@ is not expected kind %@", buf, 0x34u);
                    }

                    v20 = v109;
                    goto LABEL_56;
                  }
                }

                v30 = [v28 countByEnumeratingWithState:&v118 objects:v149 count:16];
                v15 = v113;
                if (v30)
                {
                  continue;
                }

                break;
              }
            }

            if (managerCopy)
            {
              v36 = objc_autoreleasePoolPush();
              v37 = [managerCopy getAssetSet:v112];
              context = v36;
              if (v37)
              {
                context = 0;
              }

              else
              {
                context = [MEMORY[0x1E696AEC0] stringWithFormat:@"UsageAliasValues asset set %@ for value %@ can't be found", v112, v15];
              }

              v102 = managerCopy;
              v116 = 0u;
              v117 = 0u;
              v114 = 0u;
              v115 = 0u;
              obj = v28;
              v39 = [obj countByEnumeratingWithState:&v114 objects:v134 count:16];
              if (v39)
              {
                v40 = v39;
                v41 = *v115;
LABEL_31:
                v42 = 0;
                while (1)
                {
                  if (*v115 != v41)
                  {
                    objc_enumerationMutation(obj);
                  }

                  if (context)
                  {
                    break;
                  }

                  v43 = *(*(&v114 + 1) + 8 * v42);
                  usageTypes = [v37 usageTypes];
                  v45 = [usageTypes containsObject:v43];

                  if (v45)
                  {
                    context = 0;
                  }

                  else
                  {
                    v46 = MEMORY[0x1E696AEC0];
                    usageTypes2 = [v37 usageTypes];
                    context = [v46 stringWithFormat:@"UsageAliasValues usage %@ in asset set %@ for value %@ not in valid usage types for set %@", v43, v112, v113, usageTypes2, context];
                  }

                  if (v40 == ++v42)
                  {
                    v40 = [obj countByEnumeratingWithState:&v114 objects:v134 count:16];
                    if (v40)
                    {
                      goto LABEL_31;
                    }

                    break;
                  }
                }
              }

              objc_autoreleasePoolPop(context);
              managerCopy = v102;
              v15 = v113;
              if (context)
              {
                if (error)
                {
                  v90 = MEMORY[0x1E696ABC0];
                  if (*error)
                  {
                    v132[0] = *MEMORY[0x1E696A578];
                    v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", context];
                    v132[1] = *MEMORY[0x1E696AA08];
                    v133[0] = v91;
                    v133[1] = *error;
                    v92 = MEMORY[0x1E695DF20];
                    v93 = v133;
                    v94 = v132;
                    v95 = 2;
                  }

                  else
                  {
                    v130 = *MEMORY[0x1E696A578];
                    v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@", context];
                    v131 = v91;
                    v92 = MEMORY[0x1E695DF20];
                    v93 = &v131;
                    v94 = &v130;
                    v95 = 1;
                  }

                  v99 = [v92 dictionaryWithObjects:v93 forKeys:v94 count:v95];
                  *error = [v90 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v99];

                  managerCopy = v102;
                }

                v100 = UAFGetLogCategory(&UAFLogContextConfiguration);
                v20 = v109;
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315394;
                  v136 = "+[UAFUsageAliasConfiguration isValid:assetSetManager:error:]";
                  v137 = 2112;
                  v138 = context;
                  _os_log_impl(&dword_1BCF2C000, v100, OS_LOG_TYPE_DEFAULT, "%s %@", buf, 0x16u);
                }

                v28 = obj;
LABEL_56:

                v11 = v110;
                goto LABEL_57;
              }
            }

            v23 = v107 + 1;
            v22 = v103;
            v20 = v109;
            v11 = v110;
          }

          while (v107 + 1 != v104);
          v21 = [v109 countByEnumeratingWithState:&v122 objects:v154 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      v14 = v108 + 1;
      v13 = v105;
    }

    while (v108 + 1 != v106);
    v12 = [v11 countByEnumeratingWithState:&v126 objects:v163 count:16];
    LOBYTE(v10) = 1;
    if (v12)
    {
      continue;
    }

    break;
  }

LABEL_58:

LABEL_59:
  return v10;
}

+ (id)fromContentsOfURL:(id)l assetSetManager:(id)manager error:(id *)error
{
  v47[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  managerCopy = manager;
  if (error)
  {
    *error = 0;
  }

  v33 = 0;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:lCopy error:&v33];
  v10 = v33;
  v11 = v10;
  if (error)
  {
    v12 = v10;
    *error = v11;
    if (v9)
    {
      if (![UAFUsageAliasConfiguration isValid:v9 assetSetManager:managerCopy error:error])
      {
        v13 = MEMORY[0x1E696ABC0];
        if (*error)
        {
          v36[0] = *MEMORY[0x1E696A578];
          lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate UAFUsageAliasConfiguration dictionary from %@", lCopy];
          v36[1] = *MEMORY[0x1E696AA08];
          v37[0] = lCopy;
          v37[1] = *error;
          v15 = MEMORY[0x1E695DF20];
          v16 = v37;
          v17 = v36;
          v18 = 2;
        }

        else
        {
          v34 = *MEMORY[0x1E696A578];
          lCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to validate UAFUsageAliasConfiguration dictionary from %@", lCopy];
          v35 = lCopy;
          v15 = MEMORY[0x1E695DF20];
          v16 = &v35;
          v17 = &v34;
          v18 = 1;
        }

        v31 = [v15 dictionaryWithObjects:v16 forKeys:v17 count:v18];
        *error = [v13 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v31];

        goto LABEL_19;
      }

      goto LABEL_10;
    }

    v20 = MEMORY[0x1E696ABC0];
    if (v11)
    {
      v46[0] = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load UAFUsageAliasConfiguration dictionary from %@: %@", lCopy, v11];
      v46[1] = *MEMORY[0x1E696AA08];
      v47[0] = v21;
      v47[1] = *error;
      v22 = MEMORY[0x1E695DF20];
      v23 = v47;
      v24 = v46;
      v25 = 2;
    }

    else
    {
      v44 = *MEMORY[0x1E696A578];
      v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to load UAFUsageAliasConfiguration dictionary from %@: %@", lCopy, 0];
      v45 = v21;
      v22 = MEMORY[0x1E695DF20];
      v23 = &v45;
      v24 = &v44;
      v25 = 1;
    }

    v26 = [v22 dictionaryWithObjects:v23 forKeys:v24 count:v25];
    *error = [v20 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v26];
  }

  else if (v9)
  {
    if (![UAFUsageAliasConfiguration isValid:v9 assetSetManager:managerCopy error:0])
    {
LABEL_19:
      v27 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (!os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_20;
      }

      *buf = 136315394;
      v39 = "+[UAFUsageAliasConfiguration fromContentsOfURL:assetSetManager:error:]";
      v40 = 2112;
      v41 = lCopy;
      v28 = "%s Failed to validate UAFUsageAliasConfiguration dictionary from %@";
      v29 = v27;
      v30 = 22;
LABEL_25:
      _os_log_error_impl(&dword_1BCF2C000, v29, OS_LOG_TYPE_ERROR, v28, buf, v30);
      goto LABEL_20;
    }

LABEL_10:
    v19 = [[UAFUsageAliasConfiguration alloc] initWithDictionary:v9 assetSetManager:managerCopy];
    goto LABEL_21;
  }

  v27 = UAFGetLogCategory(&UAFLogContextConfiguration);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v39 = "+[UAFUsageAliasConfiguration fromContentsOfURL:assetSetManager:error:]";
    v40 = 2112;
    v41 = lCopy;
    v42 = 2112;
    v43 = v11;
    v28 = "%s Failed to load UAFUsageAliasConfiguration dictionary from %@: %@";
    v29 = v27;
    v30 = 32;
    goto LABEL_25;
  }

LABEL_20:

  v19 = 0;
LABEL_21:

  return v19;
}

- (UAFUsageAliasConfiguration)initWithDictionary:(id)dictionary assetSetManager:(id)manager
{
  dictionaryCopy = dictionary;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = UAFUsageAliasConfiguration;
  v8 = [(UAFUsageAliasConfiguration *)&v15 init];
  if (v8)
  {
    v9 = [dictionaryCopy objectForKeyedSubscript:@"UsageAliasName"];
    name = v8->_name;
    v8->_name = v9;

    v11 = [dictionaryCopy objectForKeyedSubscript:@"UsageAliasValues"];
    values = v8->_values;
    v8->_values = v11;

    objc_storeStrong(&v8->_assetSetManager, manager);
    v13 = v8;
  }

  return v8;
}

- (id)getAssetSetAssets:(id)assets usageValue:(id)value withSource:(id)source
{
  v38 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  valueCopy = value;
  sourceCopy = source;
  values = [(UAFUsageAliasConfiguration *)self values];
  v12 = [values objectForKey:valueCopy];

  if (!v12)
  {
    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = [(UAFUsageAliasConfiguration *)self name];
      v28 = 136315906;
      v29 = "[UAFUsageAliasConfiguration getAssetSetAssets:usageValue:withSource:]";
      v30 = 2112;
      v31 = sourceCopy;
      v32 = 2112;
      v33 = valueCopy;
      v34 = 2112;
      v35 = name;
      v21 = "%s Can't get %@ assets: Unknown usage value %@ in usage alias %@";
      v22 = v15;
      v23 = 42;
LABEL_10:
      _os_log_impl(&dword_1BCF2C000, v22, OS_LOG_TYPE_DEFAULT, v21, &v28, v23);
LABEL_11:
    }

LABEL_15:
    v26 = 0;
    goto LABEL_16;
  }

  assetSetManager = [(UAFUsageAliasConfiguration *)self assetSetManager];

  if (!assetSetManager)
  {
    v15 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      name = [(UAFUsageAliasConfiguration *)self name];
      v28 = 136315650;
      v29 = "[UAFUsageAliasConfiguration getAssetSetAssets:usageValue:withSource:]";
      v30 = 2112;
      v31 = sourceCopy;
      v32 = 2112;
      v33 = name;
      v21 = "%s Can't get %@ assets: No asset manager present usage alias %@";
      v22 = v15;
      v23 = 32;
      goto LABEL_10;
    }

    goto LABEL_15;
  }

  assetSetManager2 = [(UAFUsageAliasConfiguration *)self assetSetManager];
  v15 = [assetSetManager2 getAssetSet:assetsCopy];

  if (!v15)
  {
    v24 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      name2 = [(UAFUsageAliasConfiguration *)self name];
      v28 = 136316162;
      v29 = "[UAFUsageAliasConfiguration getAssetSetAssets:usageValue:withSource:]";
      v30 = 2112;
      v31 = sourceCopy;
      v32 = 2112;
      v33 = valueCopy;
      v34 = 2112;
      v35 = name2;
      v36 = 2112;
      v37 = assetsCopy;
      _os_log_impl(&dword_1BCF2C000, v24, OS_LOG_TYPE_DEFAULT, "%s Can't get %@ assets for usage value %@ in usage alias %@: Unable to get asset config for asset set %@", &v28, 0x34u);
    }

    v15 = 0;
    goto LABEL_15;
  }

  if (![sourceCopy isEqualToString:@"AutoAsset"])
  {
    if ([sourceCopy isEqualToString:@"All"])
    {
      values2 = [(UAFUsageAliasConfiguration *)self values];
      v17 = [values2 objectForKeyedSubscript:valueCopy];
      v18 = [v17 objectForKeyedSubscript:assetsCopy];
      v19 = [v15 getAssets:v18];
      goto LABEL_21;
    }

    name = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315650;
      v29 = "[UAFUsageAliasConfiguration getAssetSetAssets:usageValue:withSource:]";
      v30 = 2112;
      v31 = sourceCopy;
      v32 = 2112;
      v33 = assetsCopy;
      _os_log_error_impl(&dword_1BCF2C000, name, OS_LOG_TYPE_ERROR, "%s Unknown asset source %@ for %@", &v28, 0x20u);
    }

    goto LABEL_11;
  }

  values2 = [(UAFUsageAliasConfiguration *)self values];
  v17 = [values2 objectForKeyedSubscript:valueCopy];
  v18 = [v17 objectForKeyedSubscript:assetsCopy];
  v19 = [v15 getAutoAssets:v18];
LABEL_21:
  v26 = v19;

LABEL_16:

  return v26;
}

- (id)getAssets:(id)assets withSource:(id)source
{
  v35 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  selfCopy = self;
  sourceCopy = source;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  values = [(UAFUsageAliasConfiguration *)self values];
  v24 = assetsCopy;
  v8 = [values objectForKeyedSubscript:assetsCopy];

  v9 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v21 = *v30;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v30 != v21)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(UAFUsageAliasConfiguration *)selfCopy getAssetSetAssets:*(*(&v29 + 1) + 8 * i) usageValue:v24 withSource:sourceCopy];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v26;
          do
          {
            for (j = 0; j != v15; ++j)
            {
              if (*v26 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v25 + 1) + 8 * j);
              if (!v11)
              {
                v11 = objc_opt_new();
              }

              v19 = [v13 objectForKeyedSubscript:v18];
              [v11 setObject:v19 forKeyedSubscript:v18];
            }

            v15 = [v13 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v15);
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)addDeprecatedValues:(id)values
{
  v34 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  name = self->_name;
  name = [valuesCopy name];
  LOBYTE(name) = [(NSString *)name isEqualToString:name];

  if (name)
  {
    v7 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self->_values];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    values = [valuesCopy values];
    v9 = [values countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(values);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          v14 = [(NSDictionary *)self->_values objectForKeyedSubscript:v13];

          if (v14)
          {
            v19 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v29 = "[UAFUsageAliasConfiguration addDeprecatedValues:]";
              v30 = 2114;
              v31 = v13;
              _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s Deprecated value %{public}@ already defined", buf, 0x16u);
            }

            v18 = 0;
            goto LABEL_17;
          }

          values = [valuesCopy values];
          v16 = [values objectForKeyedSubscript:v13];
          [v7 setObject:v16 forKeyedSubscript:v13];
        }

        v10 = [values countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v17 = v7;
    values = self->_values;
    self->_values = v17;
    v18 = 1;
LABEL_17:
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      name2 = [valuesCopy name];
      v22 = self->_name;
      *buf = 136315650;
      v29 = "[UAFUsageAliasConfiguration addDeprecatedValues:]";
      v30 = 2114;
      v31 = name2;
      v32 = 2114;
      v33 = v22;
      _os_log_error_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_ERROR, "%s Cannot add deprecated values from %{public}@ to %{public}@", buf, 0x20u);
    }

    v18 = 0;
  }

  return v18;
}

@end