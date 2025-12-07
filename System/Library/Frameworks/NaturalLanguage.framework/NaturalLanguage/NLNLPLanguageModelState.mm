@interface NLNLPLanguageModelState
- (NLNLPLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context modelState:(void *)state;
- (id)conditionalProbabilityForString:(id)string;
- (id)conditionalProbabilityForToken:(id)token;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)addContext:(id)context;
- (void)dealloc;
- (void)enumeratePredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block;
- (void)resetContext;
@end

@implementation NLNLPLanguageModelState

- (NLNLPLanguageModelState)initWithSession:(id)session options:(id)options context:(id)context modelState:(void *)state
{
  v8.receiver = self;
  v8.super_class = NLNLPLanguageModelState;
  result = [(NLLanguageModelState *)&v8 initWithSession:session options:options context:context];
  if (result)
  {
    result->_modelState = state;
  }

  return result;
}

- (void)dealloc
{
  modelState = self->_modelState;
  if (modelState)
  {
    CFRelease(modelState);
  }

  v4.receiver = self;
  v4.super_class = NLNLPLanguageModelState;
  [(NLNLPLanguageModelState *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v7.receiver = self;
  v7.super_class = NLNLPLanguageModelState;
  v4 = [(NLLanguageModelState *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@", v4];

  if (self->_modelState)
  {
    [v5 appendFormat:@"(NLP:%p)", self->_modelState];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  if (!self->_modelState)
  {
    return 0;
  }

  v4 = CoreLMCreateCopy();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [NLNLPLanguageModelState alloc];
  session = [(NLLanguageModelState *)self session];
  options = [(NLLanguageModelState *)self options];
  context = [(NLLanguageModelState *)self context];
  v10 = [(NLNLPLanguageModelState *)v6 initWithSession:session options:options context:context modelState:v5];

  return v10;
}

- (void)addContext:(id)context
{
  contextCopy = context;
  v7.receiver = self;
  v7.super_class = NLNLPLanguageModelState;
  [(NLLanguageModelState *)&v7 addContext:contextCopy];
  if (self->_modelState)
  {
    v5 = CoreLMCopyTokenIdsForText();
    if (v5)
    {
      v6 = v5;
      CoreLMUpdateWithContext();
      CFRelease(v6);
    }
  }
}

- (void)resetContext
{
  v3.receiver = self;
  v3.super_class = NLNLPLanguageModelState;
  [(NLLanguageModelState *)&v3 resetContext];
  if (self->_modelState)
  {
    CoreLMReset();
  }
}

- (id)conditionalProbabilityForToken:(id)token
{
  tokenCopy = token;
  if (!self->_modelState)
  {
    goto LABEL_9;
  }

  v5 = CoreLMCopyTokenIdsForText();
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = v5;
  if (CFArrayGetCount(v5) != 1 || (v7 = CoreLMCopyConditionalProbabilities()) == 0)
  {
    CFRelease(v6);
LABEL_9:
    initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
    goto LABEL_10;
  }

  v8 = v7;
  if (CFArrayGetCount(v7) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v8, 0), valuePtr = 0.0, CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr)))
  {
    v10 = [NLProbabilityInfo alloc];
    initWithInvalidProbability = [(NLProbabilityInfo *)v10 initWithProbability:0 flags:valuePtr];
  }

  else
  {
    initWithInvalidProbability = 0;
  }

  CFRelease(v8);
  CFRelease(v6);
  if (!initWithInvalidProbability)
  {
    goto LABEL_9;
  }

LABEL_10:

  return initWithInvalidProbability;
}

- (id)conditionalProbabilityForString:(id)string
{
  v23[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  modelState = self->_modelState;
  if (modelState)
  {
    v6 = CoreLMCopyTokenIdsForText();
    v7 = [v6 count];
    if (v7 < 2)
    {
      v8 = 0;
    }

    else
    {
      modelState = CoreLMCreateCopy();
      v8 = modelState != 0;
    }

    if (v6)
    {
      v9 = modelState == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      if (!v7)
      {
        v13 = 1.0;
LABEL_33:
        initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithProbability:0 flags:v13];
        if (!v8)
        {
LABEL_12:

          if (initWithInvalidProbability)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

LABEL_11:
        CFRelease(modelState);
        goto LABEL_12;
      }

      v12 = 0;
      v13 = 1.0;
      while (1)
      {
        v14 = [v6 objectAtIndex:v12];
        v23[0] = v14;
        [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
        v15 = CoreLMCopyConditionalProbabilities();
        if (!v15)
        {
          break;
        }

        v16 = v15;
        if (CFArrayGetCount(v15) == 1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
          v21 = 0.0;
          Value = CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &v21);
          v19 = Value != 0;
          if (Value)
          {
            v13 = v13 * v21;
          }
        }

        else
        {
          v19 = 0;
        }

        CFRelease(v16);
        if (++v12 < v7 && v19)
        {
          v22 = v14;
          [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
          v20 = CoreLMUpdateWithContext();

          if ((v20 & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        else
        {

          if (!v19)
          {
            goto LABEL_10;
          }
        }

        if (v7 == v12)
        {
          goto LABEL_33;
        }
      }
    }

LABEL_10:
    initWithInvalidProbability = 0;
    if (!v8)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_13:
  initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
LABEL_14:

  return initWithInvalidProbability;
}

- (void)enumeratePredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block
{
  v39 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if (self->_modelState)
  {
    session = [(NLLanguageModelState *)self session];
    v10 = [session predictionOptionsForMaximumPredictions:predictions maximumTokensPerPrediction:prediction];

    v30 = v10;
    v11 = CoreLMCopyPredictions();
    v12 = [v11 keysSortedByValueUsingComparator:&__block_literal_global_380];
    session2 = [(NLLanguageModelState *)self session];
    predictionInitialCharacterSet = [session2 predictionInitialCharacterSet];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v12;
    v15 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v15)
    {
      v16 = v15;
      predictionsCopy = predictions;
      v18 = 0;
      v19 = *v35;
      v32 = predictionsCopy;
LABEL_4:
      v20 = 0;
      while (1)
      {
        if (*v35 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v34 + 1) + 8 * v20);
        v22 = [v11 objectForKey:v21];
        [v22 doubleValue];
        v24 = v23;

        v33 = 0;
        [v21 rangeOfCharacterFromSet:predictionInitialCharacterSet options:8];
        if (v25)
        {
          v26 = [[NLProbabilityInfo alloc] initWithProbability:0 flags:v24];
          if ([v21 length] >= 2 && (objc_msgSend(v21, "hasSuffix:", @" ") & 1) != 0)
          {
            v27 = [v21 substringToIndex:{objc_msgSend(v21, "length") - 1}];
          }

          else
          {
            v27 = v21;
          }

          v28 = v27;
          v29 = [[NLPredictionInfo alloc] initWithPrediction:v27 probabilityInfo:v26];
          blockCopy[2](blockCopy, v29, &v33);
          ++v18;

          predictionsCopy = v32;
        }

        if ((v33 & 1) != 0 || v18 >= predictionsCopy)
        {
          break;
        }

        if (v16 == ++v20)
        {
          v16 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
          if (v16)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }
}

uint64_t __85__NLNLPLanguageModelState_enumeratePredictions_maximumTokensPerPrediction_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  [a2 doubleValue];
  v6 = v5;
  [v4 doubleValue];
  v8 = v7;

  if (v6 > v8)
  {
    return -1;
  }

  else
  {
    return v6 < v8;
  }
}

@end