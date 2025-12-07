@interface ISIconPackage
- (ISIconPackage)initWithTypeIdentifier:(id)identifier configuration:(id)configuration;
@end

@implementation ISIconPackage

- (ISIconPackage)initWithTypeIdentifier:(id)identifier configuration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  v35.receiver = self;
  v35.super_class = ISIconPackage;
  v8 = [(ISIconPackage *)&v35 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:identifierCopy];
    v10 = *MEMORY[0x1E6982DC8];
    identifier = [*MEMORY[0x1E6982DC8] identifier];
    v12 = [v9 conformsToTypeIdentifier:identifier];

    if (v12)
    {
      v14 = MEMORY[0x1E69636B0];
      identifier2 = [v10 identifier];
      v16 = [v14 typeRecordWithIdentifier:identifier2];

      iconDictionary = [v16 iconDictionary];
      v18 = [iconDictionary _IF_stringForKey:@"ISIconPackageIdentifier"];

      v19 = [MEMORY[0x1E69636B0] typeRecordWithIdentifier:v18];
      if (!configurationCopy)
      {
        configurationCopy = objc_alloc_init(ISFolderIconConfiguration);
      }

      v20 = [ISFolderIconConfigurationParser alloc];
      iconDictionary2 = [v9 iconDictionary];
      v22 = [(ISFolderIconConfigurationParser *)v20 initWithIconDictionary:iconDictionary2];

      if (v22)
      {
        symbolName = [(ISIconConfigurationMarkupParser *)v22 symbolName];

        if (symbolName)
        {
          symbolName2 = [(ISIconConfigurationMarkupParser *)v22 symbolName];
          [(ISFolderIconConfiguration *)configurationCopy setSymbolName:symbolName2];
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v25 = _ISDefaultLog(v13);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [ISIconPackage initWithTypeIdentifier:identifierCopy configuration:v25];
    }

    v26 = objc_opt_new();
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __54__ISIconPackage_initWithTypeIdentifier_configuration___block_invoke;
    v31[3] = &unk_1E77C6758;
    v32 = identifierCopy;
    configurationCopy = configurationCopy;
    v33 = configurationCopy;
    v34 = v26;
    v27 = v26;
    [v19 enumerateChildTypesWithBlock:v31];
    v28 = [v27 copy];
    icons = v8->_icons;
    v8->_icons = v28;
  }

  return v8;
}

void __54__ISIconPackage_initWithTypeIdentifier_configuration___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _ISDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __54__ISIconPackage_initWithTypeIdentifier_configuration___block_invoke_cold_1(v3, a1, v4);
  }

  v5 = [v3 identifier];
  if (v5)
  {
    v6 = v5;
    v7 = [v3 isDeclared];

    if (v7)
    {
      v8 = [ISTypeIcon alloc];
      v9 = [v3 identifier];
      v10 = [(ISTypeIcon *)v8 initWithType:v9 iconConfiguration:*(a1 + 40)];

      [*(a1 + 48) addObject:v10];
    }
  }
}

- (void)initWithTypeIdentifier:(uint64_t)a1 configuration:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
}

void __54__ISIconPackage_initWithTypeIdentifier_configuration___block_invoke_cold_1(void *a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [a1 identifier];
  v6 = *(a2 + 32);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
}

@end