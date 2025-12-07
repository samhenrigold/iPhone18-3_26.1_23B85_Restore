@interface NMAPIAnyResponseParser
- (id)resultsWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation NMAPIAnyResponseParser

- (id)resultsWithDictionary:(id)dictionary error:(id *)error
{
  v28[7] = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v28[0] = objc_opt_class();
  v28[1] = objc_opt_class();
  v28[2] = objc_opt_class();
  v28[3] = objc_opt_class();
  v28[4] = objc_opt_class();
  v28[5] = objc_opt_class();
  v28[6] = objc_opt_class();
  [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:7];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v22 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = objc_alloc_init(*(*(&v19 + 1) + 8 * i));
        v18 = 0;
        v11 = [v10 resultsWithDictionary:dictionaryCopy error:&v18];
        v12 = v18;
        v13 = NMLogForCategory(9);
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
        if (!v12)
        {
          if (v14)
          {
            *buf = 138412290;
            v24 = v10;
            _os_log_impl(&dword_25B251000, v13, OS_LOG_TYPE_INFO, "[NMAPIResponseParser] Successfully parsed response with response parser: %@", buf, 0xCu);
          }

          goto LABEL_18;
        }

        if (v14)
        {
          *buf = 138412546;
          v24 = v10;
          v25 = 2112;
          v26 = v12;
          _os_log_impl(&dword_25B251000, v13, OS_LOG_TYPE_INFO, "[NMAPIResponseParser] Unable to parse response with response parser: %@, error: %@", buf, 0x16u);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v15 = NMLogForCategory(9);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [NMAPIAnyResponseParser resultsWithDictionary:v15 error:?];
  }

  if (error)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D7F900] code:-7102 userInfo:0];
    *error = v11 = 0;
  }

  else
  {
    v11 = 0;
  }

LABEL_18:

  return v11;
}

@end