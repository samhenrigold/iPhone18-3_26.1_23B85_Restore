@interface FedStatsPluginClientValidator
+ (id)checkClientIdentifier:(id)identifier againstNamespaceIdentifier:(id)namespaceIdentifier error:(id *)error;
+ (id)sharedInstanceWithError:(id *)error;
- (FedStatsPluginClientValidator)initWithAssociation:(id)association;
@end

@implementation FedStatsPluginClientValidator

- (FedStatsPluginClientValidator)initWithAssociation:(id)association
{
  associationCopy = association;
  v9.receiver = self;
  v9.super_class = FedStatsPluginClientValidator;
  v6 = [(FedStatsPluginClientValidator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_association, association);
  }

  return v7;
}

+ (id)sharedInstanceWithError:(id *)error
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstanceWithError__dispatchToken == -1)
  {
    if (!error)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  dispatch_once(&sharedInstanceWithError__dispatchToken, block);
  if (error)
  {
LABEL_3:
    *error = sharedInstanceWithError__intError;
  }

LABEL_4:
  v4 = sharedInstanceWithError__sharedInstance;

  return v4;
}

void __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  if (!v2)
  {
    v19 = [FedStatsPluginError errorWithCode:300 description:@"Cannot load class bundle"];
    v20 = sharedInstanceWithError__intError;
    sharedInstanceWithError__intError = v19;

    goto LABEL_31;
  }

  v3 = +[FedStatsPluginLog logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke_cold_1(v2, v3);
  }

  v4 = [v2 URLForResource:@"FedStatsPluginClientAssociations" withExtension:@"plist"];
  if (!v4)
  {
    v21 = [FedStatsPluginError errorWithCode:300 description:@"Cannot find associations file from class bundle"];
    v6 = sharedInstanceWithError__intError;
    sharedInstanceWithError__intError = v21;
    goto LABEL_30;
  }

  v5 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v4];
  v6 = v5;
  if (!v5)
  {
    v22 = [FedStatsPluginError errorWithCode:300 description:@"Cannot load association file from class bundle file"];
    v18 = sharedInstanceWithError__intError;
    sharedInstanceWithError__intError = v22;
    goto LABEL_27;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (!v7)
  {
    goto LABEL_23;
  }

  v8 = v7;
  v9 = *v35;
  v28 = a1;
  v29 = *v35;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v35 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v34 + 1) + 8 * i);
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v25 = [FedStatsPluginError errorWithCode:300 description:@"Associations must have strings as keys"];
        v12 = sharedInstanceWithError__intError;
        sharedInstanceWithError__intError = v25;
LABEL_29:

        goto LABEL_30;
      }

      v12 = [v6 objectForKey:v11];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v26 = [FedStatsPluginError errorWithCode:300 description:@"Associations must have arrays of strings as values"];
        v27 = sharedInstanceWithError__intError;
        sharedInstanceWithError__intError = v26;

        goto LABEL_29;
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v12 = v12;
      v13 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v31;
        while (2)
        {
          for (j = 0; j != v14; ++j)
          {
            if (*v31 != v15)
            {
              objc_enumerationMutation(v12);
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v23 = [FedStatsPluginError errorWithCode:300 description:@"Associations must have arrays of strings as values"];
              v24 = sharedInstanceWithError__intError;
              sharedInstanceWithError__intError = v23;

              goto LABEL_29;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }

      v9 = v29;
    }

    v8 = [v6 countByEnumeratingWithState:&v34 objects:v39 count:16];
    a1 = v28;
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_23:

  v17 = [objc_alloc(*(a1 + 32)) initWithAssociation:v6];
  v18 = sharedInstanceWithError__sharedInstance;
  sharedInstanceWithError__sharedInstance = v17;
LABEL_27:

LABEL_30:
LABEL_31:
}

+ (id)checkClientIdentifier:(id)identifier againstNamespaceIdentifier:(id)namespaceIdentifier error:(id *)error
{
  identifierCopy = identifier;
  namespaceIdentifierCopy = namespaceIdentifier;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
LABEL_10:
      [FedStatsPluginError errorWithCode:300 description:v14];
      *error = v15 = 0;
      goto LABEL_16;
    }

LABEL_11:
    v15 = 0;
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    if (error)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v9 = [FedStatsPluginClientValidator sharedInstanceWithError:error];
  v10 = v9;
  if (v9)
  {
    association = [v9 association];
    v12 = [association objectForKey:namespaceIdentifierCopy];

    if ([v12 containsObject:identifierCopy])
    {
      v13 = 1;
    }

    else
    {
      v16 = [identifierCopy stringByReplacingOccurrencesOfString:@"fedstats:" withString:&stru_285E133E0];
      v13 = [v12 containsObject:v16];
    }

    v15 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  }

  else
  {
    v15 = 0;
  }

LABEL_16:

  return v15;
}

void __57__FedStatsPluginClientValidator_sharedInstanceWithError___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [a1 bundleURL];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&dword_24AB24000, a2, OS_LOG_TYPE_DEBUG, "class bundle path = %@", &v4, 0xCu);
}

@end