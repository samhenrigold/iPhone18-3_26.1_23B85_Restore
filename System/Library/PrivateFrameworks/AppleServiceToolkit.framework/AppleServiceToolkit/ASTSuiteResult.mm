@interface ASTSuiteResult
- (ASTSuiteResult)initWithDictionary:(id)dictionary error:(id *)error;
- (ASTSuiteResult)initWithName:(id)name components:(id)components;
@end

@implementation ASTSuiteResult

- (ASTSuiteResult)initWithName:(id)name components:(id)components
{
  nameCopy = name;
  componentsCopy = components;
  v12.receiver = self;
  v12.super_class = ASTSuiteResult;
  v9 = [(ASTSuiteResult *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_suiteName, name);
    objc_storeStrong(&v10->_components, components);
  }

  return v10;
}

- (ASTSuiteResult)initWithDictionary:(id)dictionary error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v29.receiver = self;
  v29.super_class = ASTSuiteResult;
  v7 = [(ASTSuiteResult *)&v29 init];
  if (!v7)
  {
LABEL_19:
    v11 = v7;
    goto LABEL_20;
  }

  v8 = [dictionaryCopy objectForKeyedSubscript:@"suiteName"];
  v9 = [dictionaryCopy objectForKeyedSubscript:@"components"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v24 = v8;
      array = [MEMORY[0x277CBEB18] array];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v13 = v9;
      v14 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v26;
        while (2)
        {
          v17 = 0;
          do
          {
            if (*v26 != v16)
            {
              objc_enumerationMutation(v13);
            }

            v18 = [[ASTSuiteResultComponent alloc] initWithDictionary:*(*(&v25 + 1) + 8 * v17) error:error];
            if (!v18)
            {

              goto LABEL_9;
            }

            v19 = v18;
            [(NSArray *)array addObject:v18];

            ++v17;
          }

          while (v15 != v17);
          v15 = [v13 countByEnumeratingWithState:&v25 objects:v30 count:16];
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      suiteName = v7->_suiteName;
      v7->_suiteName = v24;
      v21 = v24;

      components = v7->_components;
      v7->_components = array;

      goto LABEL_19;
    }
  }

  v10 = ASTLogHandleForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    [ASTSuiteResult initWithDictionary:v7 error:v10];
  }

  if (error)
  {
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"ASTErrorDomain" code:-7000 userInfo:0];
  }

LABEL_9:
  v11 = 0;
LABEL_20:

  return v11;
}

- (void)initWithDictionary:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 138412290;
  v5 = objc_opt_class();
  v3 = v5;
  _os_log_error_impl(&dword_240F3C000, a2, OS_LOG_TYPE_ERROR, "[%@] Bad dictionary format", &v4, 0xCu);
}

@end