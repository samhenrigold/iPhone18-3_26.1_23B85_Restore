@interface HMBatchRequest
+ (BOOL)validateRequestTypes:(id)types requestClass:(Class)class;
+ (id)batchRequestWithExecuteRequests:(id)requests;
+ (id)batchRequestWithReadRequests:(id)requests;
+ (id)batchRequestWithWriteRequests:(id)requests;
- (HMBatchRequest)initWithRequests:(id)requests requestClass:(Class)class;
- (void)setClientContext:(id)context;
- (void)setReportContext:(id)context;
@end

@implementation HMBatchRequest

- (void)setReportContext:(id)context
{
  v4 = [context copy];
  reportContext = self->_reportContext;
  self->_reportContext = v4;

  MEMORY[0x1EEE66BB8](v4, reportContext);
}

- (void)setClientContext:(id)context
{
  v4 = [context copy];
  clientContext = self->_clientContext;
  self->_clientContext = v4;

  MEMORY[0x1EEE66BB8](v4, clientContext);
}

- (HMBatchRequest)initWithRequests:(id)requests requestClass:(Class)class
{
  requestsCopy = requests;
  if ([HMBatchRequest validateRequestTypes:requestsCopy requestClass:class])
  {
    v12.receiver = self;
    v12.super_class = HMBatchRequest;
    v7 = [(HMBatchRequest *)&v12 init];
    if (v7)
    {
      v8 = [requestsCopy copy];
      requests = v7->_requests;
      v7->_requests = v8;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)batchRequestWithExecuteRequests:(id)requests
{
  requestsCopy = requests;
  v4 = [[HMBatchRequest alloc] initWithRequests:requestsCopy requestClass:objc_opt_class()];

  return v4;
}

+ (id)batchRequestWithWriteRequests:(id)requests
{
  requestsCopy = requests;
  v4 = [[HMBatchRequest alloc] initWithRequests:requestsCopy requestClass:objc_opt_class()];

  return v4;
}

+ (id)batchRequestWithReadRequests:(id)requests
{
  requestsCopy = requests;
  v4 = [[HMBatchRequest alloc] initWithRequests:requestsCopy requestClass:objc_opt_class()];

  return v4;
}

+ (BOOL)validateRequestTypes:(id)types requestClass:(Class)class
{
  v17 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  if ([typesCopy count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = typesCopy;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v10 = 0;
            goto LABEL_12;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 1;
LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end