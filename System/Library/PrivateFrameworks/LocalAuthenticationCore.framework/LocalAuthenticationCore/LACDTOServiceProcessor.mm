@interface LACDTOServiceProcessor
- (BOOL)canProcessRequest:(id)request;
- (LACDTOServiceProcessor)initWithSubprocessors:(id)subprocessors;
- (id)_entitlementsForRequest:(id)request;
- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion;
- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion;
@end

@implementation LACDTOServiceProcessor

- (LACDTOServiceProcessor)initWithSubprocessors:(id)subprocessors
{
  subprocessorsCopy = subprocessors;
  v9.receiver = self;
  v9.super_class = LACDTOServiceProcessor;
  v5 = [(LACDTOServiceProcessor *)&v9 init];
  if (v5)
  {
    v6 = [LACEvaluationRequestProcessorFactory makeProcessorWithSubprocessors:subprocessorsCopy];
    compoundProcessor = v5->_compoundProcessor;
    v5->_compoundProcessor = v6;
  }

  return v5;
}

- (BOOL)canProcessRequest:(id)request
{
  requestCopy = request;
  policy = [requestCopy policy];
  options = [requestCopy options];

  v6 = [LACPolicyUtilities isDTOPolicy:policy options:options];
  return v6;
}

- (void)processRequest:(id)request configuration:(id)configuration completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  configurationCopy = configuration;
  completionCopy = completion;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(LACDTOServiceProcessor *)self _entitlementsForRequest:requestCopy];
  v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      v14 = 0;
      do
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v22 + 1) + 8 * v14);
        client = [requestCopy client];
        v17 = [client checkEntitlement:v15];

        if ((v17 & 1) == 0)
        {
          v19 = [LACError missingEntitlementError:v15];
          v20 = [LACEvaluationResult resultWithFailure:v19];
          completionCopy[2](completionCopy, v20);

          v18 = configurationCopy;
          goto LABEL_11;
        }

        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = configurationCopy;
  [(LACEvaluationRequestProcessor *)self->_compoundProcessor processRequest:requestCopy configuration:configurationCopy completion:completionCopy];
LABEL_11:
}

- (void)postProcessRequest:(id)request result:(id)result completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  resultCopy = result;
  if (objc_opt_respondsToSelector())
  {
    [(LACEvaluationRequestProcessor *)self->_compoundProcessor postProcessRequest:requestCopy result:resultCopy completion:completionCopy];
  }

  else
  {
    completionCopy[2](completionCopy, resultCopy);
  }
}

- (id)_entitlementsForRequest:(id)request
{
  v17[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v4 = objc_alloc(MEMORY[0x1E695DF70]);
  v17[0] = @"com.apple.private.CoreAuthentication.SPI";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v6 = [v4 initWithArray:v5];

  if ([requestCopy policy] == 1026)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO"];
  }

  options = [requestCopy options];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:1061];
  v9 = [options objectForKeyedSubscript:v8];

  if (v9)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO.ShortExpiration"];
  }

  v10 = [MEMORY[0x1E696AD98] numberWithInteger:1062];
  v11 = [options objectForKeyedSubscript:v10];

  if (v11)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO.FallbackToNoAuth"];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:1068];
  v13 = [options objectForKeyedSubscript:v12];

  if (v13)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO.FallbackToNoAuth"];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:1085];
  v15 = [options objectForKeyedSubscript:v14];

  if (v15)
  {
    [v6 addObject:@"com.apple.private.LocalAuthentication.DTO.AllowUnapprovedSensor"];
  }

  return v6;
}

@end