@interface ASTSuiteResultComponent
- (ASTSuiteResultComponent)initWithDictionary:(id)dictionary error:(id *)error;
- (ASTSuiteResultComponent)initWithName:(id)name assetLocator:(id)locator status:(id)status sections:(id)sections;
@end

@implementation ASTSuiteResultComponent

- (ASTSuiteResultComponent)initWithName:(id)name assetLocator:(id)locator status:(id)status sections:(id)sections
{
  nameCopy = name;
  locatorCopy = locator;
  statusCopy = status;
  sectionsCopy = sections;
  v18.receiver = self;
  v18.super_class = ASTSuiteResultComponent;
  v15 = [(ASTSuiteResultComponent *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_assetLocator, locator);
    objc_storeStrong(&v16->_status, status);
    objc_storeStrong(&v16->_sections, sections);
  }

  return v16;
}

- (ASTSuiteResultComponent)initWithDictionary:(id)dictionary error:(id *)error
{
  v38 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v36.receiver = self;
  v36.super_class = ASTSuiteResultComponent;
  v7 = [(ASTSuiteResultComponent *)&v36 init];
  if (!v7)
  {
    goto LABEL_22;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"name"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"assetLocator"];
  v10 = [dictionaryCopy objectForKeyedSubscript:@"sections"];
  v11 = [dictionaryCopy objectForKeyedSubscript:@"status"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v14 = [[ASTSuiteResultStatus alloc] initWithDictionary:v11 error:error];
          if (!v14)
          {
            goto LABEL_10;
          }

          v29 = v14;
          array = [MEMORY[0x277CBEB18] array];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          obj = v10;
          v15 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v33;
            while (2)
            {
              v18 = 0;
              do
              {
                if (*v33 != v17)
                {
                  objc_enumerationMutation(obj);
                }

                v19 = [[ASTSuiteResultSection alloc] initWithDictionary:*(*(&v32 + 1) + 8 * v18) error:error];
                if (!v19)
                {

                  goto LABEL_11;
                }

                v20 = v19;
                [(NSArray *)array addObject:v19];

                ++v18;
              }

              while (v16 != v18);
              v16 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

          name = v7->_name;
          v7->_name = v8;
          v22 = v8;

          assetLocator = v7->_assetLocator;
          v7->_assetLocator = v9;
          v24 = v9;

          status = v7->_status;
          v7->_status = v29;
          v26 = v29;

          sections = v7->_sections;
          v7->_sections = array;

LABEL_22:
          v13 = v7;
          goto LABEL_23;
        }
      }
    }
  }

  v12 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [ASTSuiteResult initWithDictionary:v7 error:v12];
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  }

LABEL_10:

LABEL_11:
  v13 = 0;
LABEL_23:

  return v13;
}

@end