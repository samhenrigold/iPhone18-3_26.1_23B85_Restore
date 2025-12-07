@interface BCNativeOAuth2Response
- (BCError)error;
- (BCNativeOAuth2Response)initWithToken:(id)token error:(id)error;
- (NSDictionary)dictionaryValue;
@end

@implementation BCNativeOAuth2Response

- (BCNativeOAuth2Response)initWithToken:(id)token error:(id)error
{
  v22[1] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  errorCopy = error;
  v21.receiver = self;
  v21.super_class = BCNativeOAuth2Response;
  v9 = [(BCNativeOAuth2Response *)&v21 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_token, token);
    if (errorCopy)
    {
      v11 = 1;
    }

    else
    {
      v11 = tokenCopy == 0;
    }

    v12 = 1;
    if (v11)
    {
      v12 = 2;
    }

    v10->_status = v12;
    if (errorCopy)
    {
      v13 = [BCError alloc];
      v14 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(errorCopy, "code")}];
      domain = [errorCopy domain];
      localizedDescription = [errorCopy localizedDescription];
      v17 = [(BCError *)v13 initWithCode:v14 domain:domain message:localizedDescription];

      v22[0] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
      errors = v10->_errors;
      v10->_errors = v18;
    }
  }

  return v10;
}

- (NSDictionary)dictionaryValue
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = v3;
  if (self)
  {
    [v3 setObject:self->_token forKeyedSubscript:@"token"];
    v5 = NSStringFromNativeAuthStatus([(BCNativeOAuth2Response *)self status]);
    [v4 setObject:v5 forKeyedSubscript:@"status"];

    errors = self->_errors;
  }

  else
  {
    [v3 setObject:0 forKeyedSubscript:@"token"];
    v16 = NSStringFromNativeAuthStatus([0 status]);
    [v4 setObject:v16 forKeyedSubscript:@"status"];

    errors = 0;
  }

  if ([(NSArray *)errors count])
  {
    v7 = objc_opt_new();
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    if (self)
    {
      v8 = self->_errors;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryValue = [*(*(&v17 + 1) + 8 * i) dictionaryValue];
          [v7 addObject:dictionaryValue];
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    [v4 setObject:v7 forKeyedSubscript:@"errors"];
  }

  return v4;
}

- (BCError)error
{
  if (self)
  {
    self = self->_errors;
  }

  return [(BCNativeOAuth2Response *)self firstObject];
}

@end