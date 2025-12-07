@interface UAFAssetExpansion
+ (BOOL)isValid:(id)valid validUsageTypes:(id)types error:(id *)error;
+ (BOOL)isValidTemplate:(id)template requiredUsageTypes:(id)types error:(id *)error;
+ (id)getTemplatePart:(id)part;
+ (id)specializeTemplate:(id)template usages:(id)usages invalid:(BOOL *)invalid error:(id *)error;
- (BOOL)isValidUsages:(id)usages;
- (UAFAssetExpansion)initWithDictionary:(id)dictionary;
- (id)getAutoAssetSpecifier:(id)specifier;
- (id)specializeTemplate:(id)template usages:(id)usages;
@end

@implementation UAFAssetExpansion

+ (id)getTemplatePart:(id)part
{
  partCopy = part;
  v4 = [partCopy rangeOfString:@"{"];
  v5 = [partCopy rangeOfString:@"}"];
  v6 = objc_opt_new();
  v7 = v6;
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || v5 == 0x7FFFFFFFFFFFFFFFLL || v5 <= v4)
  {
    [v6 addObject:partCopy];
    v12 = v7;
  }

  else
  {
    v8 = [partCopy substringWithRange:{0, v4}];
    [v7 addObject:v8];
    v9 = [partCopy substringWithRange:{v4 + 1, v5 - (v4 + 1)}];
    [v7 addObject:v9];
    v10 = v5 + 1;
    if (v10 == [partCopy length])
    {
      v11 = v7;
    }

    else
    {
      v13 = [partCopy substringWithRange:{v10, objc_msgSend(partCopy, "length") - v10}];
      [v7 addObject:v13];
      v14 = v7;
    }
  }

  return v7;
}

+ (BOOL)isValidTemplate:(id)template requiredUsageTypes:(id)types error:(id *)error
{
  v35[2] = *MEMORY[0x1E69E9840];
  typesCopy = types;
  v8 = [UAFAssetExpansion getTemplatePart:template];
  if ([v8 count] < 2 || (objc_msgSend(v8, "objectAtIndexedSubscript:", 1), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(typesCopy, "containsObject:", v9), v9, (v10 & 1) != 0))
  {
    if ([v8 count] >= 3)
    {
      v12 = [v8 objectAtIndexedSubscript:2];
      v11 = [UAFAssetExpansion isValidTemplate:v12 requiredUsageTypes:typesCopy error:error];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    if (error)
    {
      v13 = MEMORY[0x1E696ABC0];
      if (*error)
      {
        v34[0] = *MEMORY[0x1E696A578];
        v14 = MEMORY[0x1E696AEC0];
        v15 = [v8 objectAtIndexedSubscript:1];
        typesCopy = [v14 stringWithFormat:@"Templated usage type %@ is not in required usage types %@", v15, typesCopy];
        v34[1] = *MEMORY[0x1E696AA08];
        v35[0] = typesCopy;
        v35[1] = *error;
        v17 = MEMORY[0x1E695DF20];
        v18 = v35;
        v19 = v34;
        v20 = 2;
      }

      else
      {
        v32 = *MEMORY[0x1E696A578];
        v21 = MEMORY[0x1E696AEC0];
        v15 = [v8 objectAtIndexedSubscript:1];
        typesCopy = [v21 stringWithFormat:@"Templated usage type %@ is not in required usage types %@", v15, typesCopy];
        v33 = typesCopy;
        v17 = MEMORY[0x1E695DF20];
        v18 = &v33;
        v19 = &v32;
        v20 = 1;
      }

      v22 = [v17 dictionaryWithObjects:v18 forKeys:v19 count:v20];
      *error = [v13 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v22];
    }

    v23 = UAFGetLogCategory(&UAFLogContextConfiguration);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v8 objectAtIndexedSubscript:1];
      *buf = 136315650;
      v27 = "+[UAFAssetExpansion isValidTemplate:requiredUsageTypes:error:]";
      v28 = 2112;
      v29 = v24;
      v30 = 2112;
      v31 = typesCopy;
      _os_log_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEFAULT, "%s Templated usage type %@ is not in required usage types %@", buf, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)specializeTemplate:(id)template usages:(id)usages invalid:(BOOL *)invalid error:(id *)error
{
  v42[1] = *MEMORY[0x1E69E9840];
  templateCopy = template;
  usagesCopy = usages;
  v34 = 0;
  v11 = objc_autoreleasePoolPush();
  v12 = [UAFAssetExpansion getTemplatePart:templateCopy];
  if ([v12 count] == 1)
  {
    v13 = [v12 objectAtIndexedSubscript:0];
    v14 = 0;
  }

  else
  {
    v32 = v11;
    if ([v12 count] < 2 || (objc_msgSend(v12, "objectAtIndexedSubscript:", 1), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(usagesCopy, "objectForKey:", v15), v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v17 = [v12 objectAtIndexedSubscript:1];
      v18 = [usagesCopy objectForKeyedSubscript:v17];

      if (v18)
      {
        v19 = [v12 objectAtIndexedSubscript:0];
        v20 = [v19 stringByAppendingString:v18];

        if ([v12 count] > 2)
        {
          v21 = [v12 objectAtIndexedSubscript:2];
          v33 = 0;
          v22 = [UAFAssetExpansion specializeTemplate:v21 usages:usagesCopy invalid:&v34 error:&v33];
          v14 = v33;

          v13 = 0;
          if (!v34)
          {
            v13 = [v20 stringByAppendingString:v22];
          }
        }

        else
        {
          v13 = v20;
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
        v13 = 0;
        *invalid = 1;
      }

      v11 = v32;
    }

    else
    {
      v25 = MEMORY[0x1E696ABC0];
      v41 = *MEMORY[0x1E696A578];
      v26 = MEMORY[0x1E696AEC0];
      v27 = [v12 objectAtIndexedSubscript:1];
      usagesCopy = [v26 stringWithFormat:@"Templated usage for type %@ is not in provided usages %@", v27, usagesCopy];
      v42[0] = usagesCopy;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
      v14 = [v25 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v29];

      v30 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v12 objectAtIndexedSubscript:1];
        *buf = 136315650;
        v36 = "+[UAFAssetExpansion specializeTemplate:usages:invalid:error:]";
        v37 = 2112;
        v38 = v31;
        v39 = 2112;
        v40 = usagesCopy;
        _os_log_impl(&dword_1BCF2C000, v30, OS_LOG_TYPE_DEFAULT, "%s Templated usage for type %@ is not in provided usages %@", buf, 0x20u);
      }

      v13 = 0;
      v34 = 1;
      v11 = v32;
    }
  }

  objc_autoreleasePoolPop(v11);
  *invalid = v34;
  if (error)
  {
    v23 = v14;
    *error = v14;
  }

  return v13;
}

+ (BOOL)isValid:(id)valid validUsageTypes:(id)types error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  validCopy = valid;
  typesCopy = types;
  if (![UAFConfiguration isValidValue:validCopy key:@"RequiredUsageTypes" kind:objc_opt_class() required:0 error:error])
  {
    goto LABEL_41;
  }

  if (typesCopy)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v9 = [validCopy objectForKeyedSubscript:@"RequiredUsageTypes"];
    v10 = [v9 countByEnumeratingWithState:&v50 objects:v67 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v51;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v51 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v50 + 1) + 8 * i);
          if (([typesCopy containsObject:v14] & 1) == 0)
          {
            v16 = UAFGetLogCategory(&UAFLogContextConfiguration);
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v60 = "+[UAFAssetExpansion isValid:validUsageTypes:error:]";
              v61 = 2112;
              v62 = @"RequiredUsageTypes";
              v63 = 2112;
              v64 = v14;
              v65 = 2112;
              v66 = typesCopy;
              _os_log_impl(&dword_1BCF2C000, v16, OS_LOG_TYPE_DEFAULT, "%s %@ has value %@ which isn't one of %@", buf, 0x2Au);
            }

            goto LABEL_17;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v50 objects:v67 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v15 = [validCopy objectForKeyedSubscript:@"TrialFactorTemplate"];
  if (v15)
  {
  }

  else
  {
    v18 = [validCopy objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];

    if (!v18)
    {
      if (error)
      {
        v38 = MEMORY[0x1E696ABC0];
        if (*error)
        {
          v57[0] = *MEMORY[0x1E696A578];
          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One of keys %@ and %@ must have a value", @"TrialFactorTemplate", @"AutoAssetSpecifierTemplate"];
          v57[1] = *MEMORY[0x1E696AA08];
          v58[0] = v39;
          v58[1] = *error;
          v40 = MEMORY[0x1E695DF20];
          v41 = v58;
          v42 = v57;
          v43 = 2;
        }

        else
        {
          v55 = *MEMORY[0x1E696A578];
          v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"One of keys %@ and %@ must have a value", @"TrialFactorTemplate", @"AutoAssetSpecifierTemplate"];
          v56 = v39;
          v40 = MEMORY[0x1E695DF20];
          v41 = &v56;
          v42 = &v55;
          v43 = 1;
        }

        v44 = [v40 dictionaryWithObjects:v41 forKeys:v42 count:v43];
        *error = [v38 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v44];
      }

      v9 = UAFGetLogCategory(&UAFLogContextConfiguration);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v60 = "+[UAFAssetExpansion isValid:validUsageTypes:error:]";
        v61 = 2112;
        v62 = @"TrialFactorTemplate";
        v63 = 2112;
        v64 = @"AutoAssetSpecifierTemplate";
        _os_log_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_DEFAULT, "%s One of keys %@ and %@ must have a value", buf, 0x20u);
      }

LABEL_17:
      v17 = 0;
      goto LABEL_18;
    }
  }

  if (!+[UAFConfiguration isValidValue:key:kind:required:error:](UAFConfiguration, "isValidValue:key:kind:required:error:", validCopy, @"TrialFactorTemplate", objc_opt_class(), 0, error) || ([validCopy objectForKeyedSubscript:@"TrialFactorTemplate"], v19 = objc_claimAutoreleasedReturnValue(), v19, v19) && (objc_msgSend(validCopy, "objectForKeyedSubscript:", @"TrialFactorTemplate"), v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(validCopy, "objectForKeyedSubscript:", @"RequiredUsageTypes"), v21 = objc_claimAutoreleasedReturnValue(), v22 = +[UAFAssetExpansion isValidTemplate:requiredUsageTypes:error:](UAFAssetExpansion, "isValidTemplate:requiredUsageTypes:error:", v20, v21, error), v21, v20, !v22) || !+[UAFConfiguration isValidValue:key:kind:required:error:](UAFConfiguration, "isValidValue:key:kind:required:error:", validCopy, @"TrialFactorFallbackTemplate", objc_opt_class(), 0, error) || (objc_msgSend(validCopy, "objectForKeyedSubscript:", @"TrialFactorFallbackTemplate"), (v23 = objc_claimAutoreleasedReturnValue()) != 0) && (v24 = v23, objc_msgSend(validCopy, "objectForKeyedSubscript:", @"TrialFactorFallbackTemplate"), v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(validCopy, "objectForKeyedSubscript:", @"RequiredUsageTypes"), v26 = objc_claimAutoreleasedReturnValue(), v45 = +[UAFAssetExpansion isValidTemplate:requiredUsageTypes:error:](UAFAssetExpansion, "isValidTemplate:requiredUsageTypes:error:", v25, v26, error), v26, v25, v24, !v45) || !+[UAFConfiguration isValidValue:key:kind:required:error:](UAFConfiguration, "isValidValue:key:kind:required:error:", validCopy, @"AutoAssetSpecifierTemplate", objc_opt_class(), 0, error) || (objc_msgSend(validCopy, "objectForKeyedSubscript:", @"AutoAssetSpecifierTemplate"), v27 = objc_claimAutoreleasedReturnValue(), v27, v27) && (objc_msgSend(validCopy, "objectForKeyedSubscript:", @"AutoAssetSpecifierTemplate"), v28 = objc_claimAutoreleasedReturnValue(), objc_msgSend(validCopy, "objectForKeyedSubscript:", @"RequiredUsageTypes"), v29 = objc_claimAutoreleasedReturnValue(), v30 = +[UAFAssetExpansion isValidTemplate:requiredUsageTypes:error:](UAFAssetExpansion, "isValidTemplate:requiredUsageTypes:error:", v28, v29, error), v29, v28, !v30) || !+[UAFConfiguration isValidValue:key:kind:required:error:](UAFConfiguration, "isValidValue:key:kind:required:error:", validCopy, @"UsageValues", objc_opt_class(), 0, error))
  {
LABEL_41:
    v17 = 0;
    goto LABEL_42;
  }

  [validCopy objectForKeyedSubscript:@"UsageValues"];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = v49 = 0u;
  v31 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v47;
    while (2)
    {
      for (j = 0; j != v32; ++j)
      {
        if (*v47 != v33)
        {
          objc_enumerationMutation(v9);
        }

        v35 = *(*(&v46 + 1) + 8 * j);
        v36 = [v9 objectForKeyedSubscript:v35];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || typesCopy && ![typesCopy containsObject:v35])
        {

          v17 = 0;
          goto LABEL_52;
        }
      }

      v32 = [v9 countByEnumeratingWithState:&v46 objects:v54 count:16];
      v17 = 1;
      if (v32)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 1;
  }

LABEL_52:

LABEL_18:
LABEL_42:

  return v17;
}

- (UAFAssetExpansion)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = UAFAssetExpansion;
  v5 = [(UAFAssetExpansion *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"RequiredUsageTypes"];
    requiredUsageTypes = v5->_requiredUsageTypes;
    v5->_requiredUsageTypes = v6;

    v8 = [dictionaryCopy objectForKeyedSubscript:@"AutoAssetSpecifierTemplate"];
    autoAssetSpecifierTemplate = v5->_autoAssetSpecifierTemplate;
    v5->_autoAssetSpecifierTemplate = v8;

    v10 = [dictionaryCopy objectForKeyedSubscript:@"UsageValues"];
    usageValues = v5->_usageValues;
    v5->_usageValues = v10;

    v12 = v5;
  }

  return v5;
}

- (BOOL)isValidUsages:(id)usages
{
  v32 = *MEMORY[0x1E69E9840];
  usagesCopy = usages;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  requiredUsageTypes = [(UAFAssetExpansion *)self requiredUsageTypes];
  v6 = [(NSDictionary *)requiredUsageTypes countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v27 != v8)
      {
        objc_enumerationMutation(requiredUsageTypes);
      }

      v10 = [usagesCopy objectForKey:*(*(&v26 + 1) + 8 * v9)];

      if (!v10)
      {
        goto LABEL_24;
      }

      if (v7 == ++v9)
      {
        v7 = [(NSDictionary *)requiredUsageTypes countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if (usagesCopy)
  {
    usageValues = self->_usageValues;
    if (usageValues)
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      requiredUsageTypes = usageValues;
      v12 = [(NSDictionary *)requiredUsageTypes countByEnumeratingWithState:&v22 objects:v30 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v23;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(requiredUsageTypes);
            }

            v16 = *(*(&v22 + 1) + 8 * i);
            v17 = [usagesCopy objectForKeyedSubscript:{v16, v22}];
            if (v17)
            {
              v18 = v17;
              v19 = [(NSDictionary *)self->_usageValues objectForKeyedSubscript:v16];
              v20 = [v19 containsObject:v18];

              if (!v20)
              {
                LOBYTE(v10) = 0;
                goto LABEL_24;
              }
            }
          }

          v13 = [(NSDictionary *)requiredUsageTypes countByEnumeratingWithState:&v22 objects:v30 count:16];
          LOBYTE(v10) = 1;
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        LOBYTE(v10) = 1;
      }

LABEL_24:

      goto LABEL_25;
    }
  }

  LOBYTE(v10) = 1;
LABEL_25:

  return v10;
}

- (id)specializeTemplate:(id)template usages:(id)usages
{
  templateCopy = template;
  usagesCopy = usages;
  if (templateCopy && [(UAFAssetExpansion *)self isValidUsages:usagesCopy])
  {
    v12 = 0;
    v8 = [UAFAssetExpansion specializeTemplate:templateCopy usages:usagesCopy invalid:&v12 error:0];
    v9 = v8;
    v10 = 0;
    if ((v12 & 1) == 0)
    {
      v10 = v8;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)getAutoAssetSpecifier:(id)specifier
{
  specifierCopy = specifier;
  autoAssetSpecifierTemplate = [(UAFAssetExpansion *)self autoAssetSpecifierTemplate];
  v6 = [(UAFAssetExpansion *)self specializeTemplate:autoAssetSpecifierTemplate usages:specifierCopy];

  return v6;
}

@end