@interface CPSValidationResult
- (CPSValidationResult)initWithCoder:(id)coder;
- (CPSValidationResult)initWithRequest:(id)request response:(id)response;
- (NSDictionary)availabilities;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPSValidationResult

- (CPSValidationResult)initWithRequest:(id)request response:(id)response
{
  requestCopy = request;
  responseCopy = response;
  v13.receiver = self;
  v13.super_class = CPSValidationResult;
  v9 = [(CPSValidationResult *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_request, request);
    objc_storeStrong(&v10->_response, response);
    v11 = v10;
  }

  return v10;
}

- (NSDictionary)availabilities
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  urls = [(CPSValidationRequest *)self->_request urls];
  v5 = [urls countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(urls);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [(CPSValidationResult *)self validBundleIDForURL:v9];
        v11 = v10 != 0;

        v12 = [MEMORY[0x277CCABB0] numberWithBool:v11];
        [dictionary setObject:v12 forKeyedSubscript:v9];
      }

      v6 = [urls countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return dictionary;
}

- (CPSValidationResult)initWithCoder:(id)coder
{
  v16[3] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CPSValidationResult;
  v5 = [(CPSValidationResult *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];
    request = v5->_request;
    v5->_request = v6;

    v8 = MEMORY[0x277CBEB98];
    v16[0] = objc_opt_class();
    v16[1] = objc_opt_class();
    v16[2] = objc_opt_class();
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
    v10 = [v8 setWithArray:v9];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"response"];
    response = v5->_response;
    v5->_response = v11;

    v13 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  request = self->_request;
  coderCopy = coder;
  [coderCopy encodeObject:request forKey:@"request"];
  [coderCopy encodeObject:self->_response forKey:@"response"];
}

@end