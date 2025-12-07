@interface CESRDirectDonationConfig
+ (id)_parseFieldTypeMappings:(id)mappings;
- (BOOL)_parseJsonObject:(id)object;
- (CESRDirectDonationConfig)initWithJsonObject:(id)object;
- (id)mappingForFieldTypeName:(id)name;
@end

@implementation CESRDirectDonationConfig

- (id)mappingForFieldTypeName:(id)name
{
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = [(NSDictionary *)self->_fieldTypeToMapping objectForKeyedSubscript:nameCopy];
    anyObject = [v5 anyObject];
  }

  else
  {
    anyObject = 0;
  }

  return anyObject;
}

- (BOOL)_parseJsonObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [objectCopy objectForKeyedSubscript:@"directDonations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v5 objectForKeyedSubscript:@"fieldTypeMappings"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        v8 = [CESRDirectDonationConfig _parseFieldTypeMappings:v6];
        fieldTypeToMapping = self->_fieldTypeToMapping;
        self->_fieldTypeToMapping = v8;
      }
    }

    else
    {
      isKindOfClass = 0;
    }
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (CESRDirectDonationConfig)initWithJsonObject:(id)object
{
  v17 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v12.receiver = self;
  v12.super_class = CESRDirectDonationConfig;
  v5 = [(CESRDirectDonationConfig *)&v12 init];
  v6 = v5;
  if (!v5)
  {
LABEL_5:
    v9 = v6;
    goto LABEL_9;
  }

  v7 = [(CESRDirectDonationConfig *)v5 _parseJsonObject:objectCopy];
  v8 = *MEMORY[0x277CEF0E8];
  if (v7)
  {
    if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_DEBUG))
    {
      fieldTypeToMapping = v6->_fieldTypeToMapping;
      *buf = 136315394;
      v14 = "[CESRDirectDonationConfig initWithJsonObject:]";
      v15 = 2112;
      v16 = fieldTypeToMapping;
      _os_log_debug_impl(&dword_225EEB000, v8, OS_LOG_TYPE_DEBUG, "%s Direct donation mapping: %@", buf, 0x16u);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(*MEMORY[0x277CEF0E8], OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v14 = "[CESRDirectDonationConfig initWithJsonObject:]";
    _os_log_error_impl(&dword_225EEB000, v8, OS_LOG_TYPE_ERROR, "%s Failed to parse Direct Donation section of json.", buf, 0xCu);
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (id)_parseFieldTypeMappings:(id)mappings
{
  v35 = *MEMORY[0x277D85DE8];
  mappingsCopy = mappings;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v5 = mappingsCopy;
  v6 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    v27 = v5;
    v28 = dictionary;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v30 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
          v12 = [v11 objectForKeyedSubscript:@"fieldType"];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v13 = v12;
            v14 = [v11 objectForKeyedSubscript:@"primaryLme"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = v14;
              v16 = [v15 objectForKeyedSubscript:@"templateName"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v29 = v16;
                v17 = [v15 objectForKeyedSubscript:@"tagName"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v26 = v17;
                  v18 = v17;
                  if ([v13 length] && objc_msgSend(v29, "length") && objc_msgSend(v18, "length"))
                  {
                    v24 = v18;
                    v25 = [[CESRVocabularyLabel alloc] initWithLmeTemplate:v29 lmeTag:v18];
                    v23 = [[CESRFieldTypeMapping alloc] initWithFieldTypeName:v13 vocabularyLabel:v25];
                    v19 = [v28 objectForKeyedSubscript:v13];
                    if (v19)
                    {
                      [v28 setObject:v19 forKeyedSubscript:v13];
                    }

                    else
                    {
                      v21 = [MEMORY[0x277CBEB58] set];
                      [v28 setObject:v21 forKeyedSubscript:v13];
                    }

                    v22 = [v28 objectForKeyedSubscript:v13];
                    [v22 addObject:v23];

                    v18 = v24;
                  }

                  v17 = v26;
                }
              }

              v5 = v27;
              dictionary = v28;
            }
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v7);
  }

  return dictionary;
}

@end