@interface ESExchangeEmptyBearerResponse
- (ESExchangeEmptyBearerResponse)initWithData:(id)data urlResponse:(id)response error:(id)error;
@end

@implementation ESExchangeEmptyBearerResponse

- (ESExchangeEmptyBearerResponse)initWithData:(id)data urlResponse:(id)response error:(id)error
{
  v41 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  errorCopy = error;
  v37.receiver = self;
  v37.super_class = ESExchangeEmptyBearerResponse;
  v9 = [(ESExchangeEmptyBearerResponse *)&v37 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_error, error);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = responseCopy;
      v10->_statusCode = [v11 statusCode];
      v12 = DALoggingwithCategory();
      v13 = *(MEMORY[0x277D03988] + 6);
      if (os_log_type_enabled(v12, v13))
      {
        statusCode = v10->_statusCode;
        *buf = 134217984;
        v40 = statusCode;
        _os_log_impl(&dword_247E05000, v12, v13, "ESExchangeEmptyBearerResponse httpResponse status code %ld", buf, 0xCu);
      }

      if (!v10->_error)
      {
        v31 = errorCopy;
        v32 = responseCopy;
        v30 = v11;
        [v11 valueForHTTPHeaderField:@"Www-Authenticate"];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v29 = v36 = 0u;
        v15 = [v29 componentsSeparatedByString:{@", "}];
        v16 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v33 + 1) + 8 * i);
              whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v22 = [v20 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

              if ([v22 hasPrefix:@"authorization_uri"])
              {
                v23 = [v20 componentsSeparatedByString:@"="];
                v24 = [v23 objectAtIndexedSubscript:1];

                v25 = [v24 stringByReplacingOccurrencesOfString:@"" withString:&stru_2859ED5C8];
                authURI = v10->_authURI;
                v10->_authURI = v25;
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v33 objects:v38 count:16];
          }

          while (v17);
        }

        errorCopy = v31;
        responseCopy = v32;
        v11 = v30;
      }
    }

    else
    {
      v11 = DALoggingwithCategory();
      v27 = *(MEMORY[0x277D03988] + 3);
      if (os_log_type_enabled(v11, v27))
      {
        *buf = 0;
        _os_log_impl(&dword_247E05000, v11, v27, "ESExchangeEmptyBearerResponse response is not an NSHTTPURLResponse.", buf, 2u);
      }
    }
  }

  return v10;
}

@end