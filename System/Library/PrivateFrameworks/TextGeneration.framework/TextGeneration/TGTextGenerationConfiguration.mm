@interface TGTextGenerationConfiguration
+ (NSUUID)defaultConfigurationUUID;
+ (id)defaultConfiguration;
+ (void)defaultConfiguration;
- (BOOL)isEqual:(id)equal;
- (TGITextGenerationInferenceModelConfiguration)modelConfiguration;
- (TGTextGenerationConfiguration)initWithUUID:(id)d resources:(id)resources decodingPolicy:(id)policy;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation TGTextGenerationConfiguration

+ (NSUUID)defaultConfigurationUUID
{
  if (+[TGTextGenerationConfiguration defaultConfigurationUUID]::onceToken != -1)
  {
    +[TGTextGenerationConfiguration defaultConfigurationUUID];
  }

  v3 = +[TGTextGenerationConfiguration defaultConfigurationUUID]::uuid;

  return v3;
}

uint64_t __57__TGTextGenerationConfiguration_defaultConfigurationUUID__block_invoke()
{
  +[TGTextGenerationConfiguration defaultConfigurationUUID]::uuid = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"45B6920D-B93B-4A91-815B-874312410EFB"];

  return MEMORY[0x2821F96F8]();
}

+ (id)defaultConfiguration
{
  v65 = *MEMORY[0x277D85DE8];
  v58 = [MEMORY[0x277CBEB58] set];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v57 = v2;
  v4 = [v2 URLForResource:@"Configuration" withExtension:@"plist"];
  if (v4)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
    if (v6)
    {
      v56 = +[TGTextGenerationConfiguration defaultConfigurationUUID];
      uUIDString = [v56 UUIDString];
      v8 = [v6 objectForKey:uUIDString];

      v53 = v8;
      if (v56)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v8;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;
        v54 = v12;
        if (v12)
        {
          v14 = [v12 objectForKeyedSubscript:@"resources", v8];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v15 = [v54 objectForKeyedSubscript:@"resources"];
          }

          else
          {
            v15 = 0;
          }

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          obj = v15;
          v32 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
          if (v32)
          {
            v33 = *v60;
LABEL_25:
            v34 = 0;
            while (1)
            {
              if (*v60 != v33)
              {
                objc_enumerationMutation(obj);
              }

              v35 = *(*(&v59 + 1) + 8 * v34);
              objc_opt_class();
              v36 = (objc_opt_isKindOfClass() & 1) != 0 ? v35 : 0;
              v37 = v36;
              if (!v37)
              {
                break;
              }

              v39 = v37;
              v41 = [TGTextGenerationResource createWithResourceDict:v37];
              if (!v41)
              {
                v45 = _nlpDefaultLog(0, v40);
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  [(TGTextGenerationConfiguration *)v39 defaultConfiguration:v45];
                }

LABEL_41:
                v22 = 0;
                v43 = obj;
                goto LABEL_42;
              }

              [v58 addObject:v41];

              if (v32 == ++v34)
              {
                v32 = [obj countByEnumeratingWithState:&v59 objects:v63 count:16];
                if (v32)
                {
                  goto LABEL_25;
                }

                goto LABEL_35;
              }
            }

            v39 = _nlpDefaultLog(0, v38);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
            {
              v44 = objc_opt_class();
              +[(TGTextGenerationConfiguration *)v35];
            }

            goto LABEL_41;
          }

LABEL_35:

          v42 = [TGTextGenerationConfiguration alloc];
          v43 = +[TGTextGenerationConfiguration defaultConfigurationUUID];
          v39 = +[TGTextGenerationDecodingPolicy defaultDecodingPolicy];
          v22 = [(TGTextGenerationConfiguration *)v42 initWithUUID:v43 resources:v58 decodingPolicy:v39];
LABEL_42:
        }

        else
        {
          obj = _nlpDefaultLog(0, v13);
          if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
          {
            v31 = objc_opt_class();
            +[(TGTextGenerationConfiguration *)v56];
          }

          v22 = 0;
        }
      }

      else
      {
        v30 = _nlpDefaultLog(v9, v10);
        v54 = v30;
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          +[(TGTextGenerationConfiguration *)v6];
        }

        v22 = 0;
      }
    }

    else
    {
      v23 = _nlpDefaultLog(0, v5);
      v56 = v23;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        [(TGTextGenerationConfiguration *)v4 defaultConfiguration:v23];
      }

      v22 = 0;
    }
  }

  else
  {
    v6 = _nlpDefaultLog(0, v3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(TGTextGenerationConfiguration *)v2 defaultConfiguration:v6];
    }

    v22 = 0;
  }

  return v22;
}

- (TGTextGenerationConfiguration)initWithUUID:(id)d resources:(id)resources decodingPolicy:(id)policy
{
  dCopy = d;
  resourcesCopy = resources;
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = TGTextGenerationConfiguration;
  v11 = [(TGTextGenerationConfiguration *)&v19 init];
  if (v11)
  {
    v12 = [dCopy copy];
    uuid = v11->_uuid;
    v11->_uuid = v12;

    v14 = [resourcesCopy copy];
    resources = v11->_resources;
    v11->_resources = v14;

    v16 = [policyCopy copy];
    decodingPolicy = v11->_decodingPolicy;
    v11->_decodingPolicy = v16;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [TGTextGenerationConfiguration alloc];
  uuid = [(TGTextGenerationConfiguration *)self uuid];
  resources = [(TGTextGenerationConfiguration *)self resources];
  decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v8 = [(TGTextGenerationConfiguration *)v4 initWithUUID:uuid resources:resources decodingPolicy:decodingPolicy];

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [TGMutableTextGenerationConfiguration alloc];
  uuid = [(TGTextGenerationConfiguration *)self uuid];
  resources = [(TGTextGenerationConfiguration *)self resources];
  decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v8 = [(TGTextGenerationConfiguration *)v4 initWithUUID:uuid resources:resources decodingPolicy:decodingPolicy];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  if (v6)
  {
    uuid = [(TGTextGenerationConfiguration *)self uuid];
    uuid2 = [v6 uuid];
    if ([uuid isEqual:uuid2])
    {
      resources = [(TGTextGenerationConfiguration *)self resources];
      resources2 = [v6 resources];
      if ([resources isEqualToSet:resources2])
      {
        decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
        decodingPolicy2 = [v6 decodingPolicy];
        v13 = [decodingPolicy isEqual:decodingPolicy2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (unint64_t)hash
{
  uuid = [(TGTextGenerationConfiguration *)self uuid];
  [uuid hash];

  resources = [(TGTextGenerationConfiguration *)self resources];
  [resources hash];

  decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v6 = [decodingPolicy hash];

  return v6;
}

- (id)description
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"uuid";
  uuid = [(TGTextGenerationConfiguration *)self uuid];
  v10[0] = uuid;
  v9[1] = @"resources";
  resources = [(TGTextGenerationConfiguration *)self resources];
  v10[1] = resources;
  v9[2] = @"decodingPolicy";
  decodingPolicy = [(TGTextGenerationConfiguration *)self decodingPolicy];
  v10[2] = decodingPolicy;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  v7 = [v6 description];

  return v7;
}

- (TGITextGenerationInferenceModelConfiguration)modelConfiguration
{
  v23 = *MEMORY[0x277D85DE8];
  *(&retstr[2].var0.var0.var1 + 2) = 0;
  *&retstr[1].var0.var0.var1.var1 = 0u;
  *retstr[2].var0.var0.var0.var0 = 0u;
  *retstr->var0.var0.var0.var0 = 0u;
  *(&retstr->var0.var0.var1 + 1) = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  resources = [v1 resources];
  v4 = [resources countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v19;
    for (i = *v19; ; i = *v19)
    {
      if (i != v6)
      {
        objc_enumerationMutation(resources);
      }

      v8 = *(*(&v18 + 1) + 8 * v5);
      if ([v8 type] == 1)
      {
        v9 = [v8 url];
        path = [v9 path];
        v11 = path;
        std::string::__assign_external(retstr, [path UTF8String]);

        e5FunctionName = [v8 e5FunctionName];
        v13 = e5FunctionName;
        std::string::__assign_external(&retstr[2], [e5FunctionName UTF8String]);
      }

      if (![v8 type])
      {
        v14 = [v8 url];
        path2 = [v14 path];
        v16 = path2;
        std::string::__assign_external(&retstr[1], [path2 UTF8String]);
      }

      if (++v5 >= v4)
      {
        v4 = [resources countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (!v4)
        {
          break;
        }

        v5 = 0;
      }
    }
  }

  return result;
}

+ (void)defaultConfiguration
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = self;
  OUTLINED_FUNCTION_1_0(&dword_26D3B8000, a2, a3, "Failed to look for configuration plist in bundle: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end