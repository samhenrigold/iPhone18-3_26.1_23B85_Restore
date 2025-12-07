@interface INIntentTestResult
- (INIntentTestResult)initWithResolvedIntent:(id)intent resolvedParameters:(id)parameters resolvedAllParametersSuccesfully:(BOOL)succesfully confirmResponse:(id)response handleResponse:(id)handleResponse;
- (id)descriptionAtIndent:(unint64_t)indent;
- (id)dictionaryRepresentation;
@end

@implementation INIntentTestResult

- (id)dictionaryRepresentation
{
  v15[5] = *MEMORY[0x1E69E9840];
  v14[0] = @"resolvedIntent";
  resolvedIntent = self->_resolvedIntent;
  null = resolvedIntent;
  if (!resolvedIntent)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v15[0] = null;
  v14[1] = @"resolvedParameters";
  resolvedParameters = self->_resolvedParameters;
  null2 = resolvedParameters;
  if (!resolvedParameters)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v15[1] = null2;
  v14[2] = @"resolvedAllParametersSuccesfully";
  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_resolvedAllParametersSuccesfully];
  v15[2] = v7;
  v14[3] = @"confirmResponse";
  confirmResponse = self->_confirmResponse;
  null3 = confirmResponse;
  if (!confirmResponse)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v15[3] = null3;
  v14[4] = @"handleResponse";
  handleResponse = self->_handleResponse;
  null4 = handleResponse;
  if (!handleResponse)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v15[4] = null4;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];
  if (handleResponse)
  {
    if (confirmResponse)
    {
      goto LABEL_11;
    }
  }

  else
  {

    if (confirmResponse)
    {
      goto LABEL_11;
    }
  }

LABEL_11:
  if (resolvedParameters)
  {
    if (resolvedIntent)
    {
      goto LABEL_13;
    }
  }

  else
  {

    if (resolvedIntent)
    {
      goto LABEL_13;
    }
  }

LABEL_13:

  return v12;
}

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INIntentTestResult;
  v6 = [(INIntentTestResult *)&v11 description];
  dictionaryRepresentation = [(INIntentTestResult *)self dictionaryRepresentation];
  v8 = [dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (INIntentTestResult)initWithResolvedIntent:(id)intent resolvedParameters:(id)parameters resolvedAllParametersSuccesfully:(BOOL)succesfully confirmResponse:(id)response handleResponse:(id)handleResponse
{
  intentCopy = intent;
  parametersCopy = parameters;
  responseCopy = response;
  handleResponseCopy = handleResponse;
  v22.receiver = self;
  v22.super_class = INIntentTestResult;
  v16 = [(INIntentTestResult *)&v22 init];
  if (v16)
  {
    v17 = [intentCopy copy];
    resolvedIntent = v16->_resolvedIntent;
    v16->_resolvedIntent = v17;

    v19 = [parametersCopy copy];
    resolvedParameters = v16->_resolvedParameters;
    v16->_resolvedParameters = v19;

    v16->_resolvedAllParametersSuccesfully = succesfully;
    objc_storeStrong(&v16->_confirmResponse, response);
    objc_storeStrong(&v16->_handleResponse, handleResponse);
  }

  return v16;
}

@end