@interface SLBatchRequest
- (SLBatchRequest)initWithServiceType:(id)type URL:(id)l parameters:(id)parameters requestMethod:(int64_t)method;
- (id)preparedURLRequest;
- (void)addRequest:(id)request;
@end

@implementation SLBatchRequest

- (SLBatchRequest)initWithServiceType:(id)type URL:(id)l parameters:(id)parameters requestMethod:(int64_t)method
{
  typeCopy = type;
  lCopy = l;
  parametersCopy = parameters;
  if ([typeCopy isEqualToString:@"com.apple.social.facebook"])
  {
    v18.receiver = self;
    v18.super_class = SLBatchRequest;
    v13 = [(SLRequest *)&v18 initWithServiceType:typeCopy URL:lCopy parameters:parametersCopy requestMethod:method];
    if (v13)
    {
      v14 = objc_opt_new();
      requests = v13->_requests;
      v13->_requests = v14;
    }

    self = v13;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)addRequest:(id)request
{
  requestCopy = request;
  multiPartBoundary = [(SLRequest *)self multiPartBoundary];
  [requestCopy setMultiPartBoundary:multiPartBoundary];

  [(NSMutableArray *)self->_requests addObject:requestCopy];
}

- (id)preparedURLRequest
{
  v40 = *MEMORY[0x1E69E9840];
  v27 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = self->_requests;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v35 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v34 + 1) + 8 * i);
        dictionaryRepresentationForJSONSerialization = [v7 dictionaryRepresentationForJSONSerialization];
        [v27 addObject:dictionaryRepresentationForJSONSerialization];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        multiParts = [v7 multiParts];
        v10 = [multiParts countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v31;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(multiParts);
              }

              v14 = *(*(&v30 + 1) + 8 * j);
              uniqueIdentifier = [v14 uniqueIdentifier];
              [v14 setName:uniqueIdentifier];

              [(SLRequest *)self addMultiPart:v14];
            }

            v11 = [multiParts countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v11);
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v4);
  }

  v29 = 0;
  v16 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v27 options:0 error:&v29];
  if (v29)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Failed to serialize batch request data into JSON"];
  }

  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v16 encoding:4];
    [(SLRequest *)self setParameterValue:v17 forKey:@"batch"];
    _SLLog(v25, 6, @"Batch: %@", v18, v19, v20, v21, v22, v17);
  }

  v28.receiver = self;
  v28.super_class = SLBatchRequest;
  preparedURLRequest = [(SLRequest *)&v28 preparedURLRequest];

  return preparedURLRequest;
}

@end