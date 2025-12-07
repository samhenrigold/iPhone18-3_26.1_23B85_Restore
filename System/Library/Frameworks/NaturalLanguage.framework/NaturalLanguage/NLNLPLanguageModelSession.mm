@interface NLNLPLanguageModelSession
- (NLNLPLanguageModelSession)initWithLanguageModel:(id)model options:(id)options;
- (id)conditionalProbabilitiesForStrings:(id)strings context:(id)context;
- (id)conditionalProbabilityForString:(id)string context:(id)context;
- (id)conditionalProbabilityForToken:(id)token context:(id)context;
- (id)description;
- (id)predictionInitialCharacterSet;
- (id)predictionOptionsForMaximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction;
- (id)stateWithOptions:(id)options;
- (void)dealloc;
- (void)enumeratePredictionsForContext:(id)context maximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block;
@end

@implementation NLNLPLanguageModelSession

- (NLNLPLanguageModelSession)initWithLanguageModel:(id)model options:(id)options
{
  optionsCopy = options;
  modelCopy = model;
  granularity = [modelCopy granularity];
  v9 = objc_alloc(MEMORY[0x1E695DF20]);
  localization = [modelCopy localization];
  v11 = MEMORY[0x1E69980C0];
  if (granularity != 1)
  {
    v11 = MEMORY[0x1E69980C8];
  }

  v12 = *v11;
  v13 = MEMORY[0x1E6998120];
  if (granularity != 1)
  {
    v13 = MEMORY[0x1E6998128];
  }

  v14 = [v9 initWithObjectsAndKeys:{localization, *MEMORY[0x1E69980F8], v12, *MEMORY[0x1E69980B8], *v13, *MEMORY[0x1E6998130], 0}];

  v17.receiver = self;
  v17.super_class = NLNLPLanguageModelSession;
  v15 = [(NLLanguageModelSession *)&v17 initWithLanguageModel:modelCopy options:optionsCopy];

  if (v15)
  {
    v15->_model = CoreLMCreate();
  }

  return v15;
}

- (void)dealloc
{
  model = self->_model;
  if (model)
  {
    CFRelease(model);
  }

  v4.receiver = self;
  v4.super_class = NLNLPLanguageModelSession;
  [(NLNLPLanguageModelSession *)&v4 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v9.receiver = self;
  v9.super_class = NLNLPLanguageModelSession;
  v4 = [(NLNLPLanguageModelSession *)&v9 description];
  languageModel = [(NLLanguageModelSession *)self languageModel];
  localization = [languageModel localization];
  v7 = objc_msgSend(v3, "stringWithFormat:", @"%@(%@"), v4, localization;

  if (self->_model)
  {
    [v7 appendFormat:@":NLP:%p", self->_model];
  }

  [v7 appendString:@""]);

  return v7;
}

- (id)conditionalProbabilityForToken:(id)token context:(id)context
{
  tokenCopy = token;
  contextCopy = context;
  if (self->_model)
  {
    v8 = CoreLMCopyTokenIdsForText();
    v9 = CoreLMCopyTokenIdsForText();
    v10 = v9;
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      initWithInvalidProbability = 0;
      if (!v8)
      {
        if (!v9)
        {
          goto LABEL_10;
        }

        goto LABEL_9;
      }
    }

    else if (CFArrayGetCount(v9) == 1 && CoreLMUpdateWithContext())
    {
      v14 = CoreLMCopyConditionalProbabilities();
      if (v14)
      {
        v15 = v14;
        if (CFArrayGetCount(v14) == 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v15, 0), valuePtr = 0.0, CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr)))
        {
          v17 = [NLProbabilityInfo alloc];
          initWithInvalidProbability = [(NLProbabilityInfo *)v17 initWithProbability:0 flags:valuePtr];
        }

        else
        {
          initWithInvalidProbability = 0;
        }

        CFRelease(v15);
      }

      else
      {
        initWithInvalidProbability = 0;
      }

      CoreLMReset();
    }

    else
    {
      initWithInvalidProbability = 0;
    }

    CFRelease(v8);
    if (!v10)
    {
LABEL_10:
      if (initWithInvalidProbability)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

LABEL_9:
    CFRelease(v10);
    goto LABEL_10;
  }

LABEL_11:
  initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
LABEL_12:

  return initWithInvalidProbability;
}

- (id)conditionalProbabilityForString:(id)string context:(id)context
{
  v28[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  contextCopy = context;
  if (self->_model)
  {
    v8 = CoreLMCopyTokenIdsForText();
    v9 = CoreLMCopyTokenIdsForText();
    v10 = [v9 count];
    if (v8)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      initWithInvalidProbability = 0;
      if (!v8)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v13 = v10;
      if (CoreLMUpdateWithContext())
      {
        v25 = stringCopy;
        if (v13)
        {
          v15 = 0;
          v16 = 1.0;
          while (1)
          {
            v17 = [v9 objectAtIndex:v15];
            v28[0] = v17;
            [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
            v18 = CoreLMCopyConditionalProbabilities();
            if (!v18)
            {
              break;
            }

            v19 = v18;
            if (CFArrayGetCount(v18) == 1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
              valuePtr = 0.0;
              Value = CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
              v22 = Value != 0;
              if (Value)
              {
                v16 = v16 * valuePtr;
              }
            }

            else
            {
              v22 = 0;
            }

            CFRelease(v19);
            ++v15;
            if (v22 && v15 < v13)
            {
              v27 = v17;
              [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
              v23 = CoreLMUpdateWithContext();

              if ((v23 & 1) == 0)
              {
                goto LABEL_29;
              }
            }

            else
            {

              if (!v22)
              {
                goto LABEL_29;
              }
            }

            if (v13 == v15)
            {
              goto LABEL_27;
            }
          }

LABEL_29:
          initWithInvalidProbability = 0;
        }

        else
        {
          v16 = 1.0;
LABEL_27:
          initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithProbability:0 flags:v16];
        }

        CoreLMReset();
        stringCopy = v25;
        if (v8)
        {
          goto LABEL_31;
        }

LABEL_32:

        if (initWithInvalidProbability)
        {
          goto LABEL_34;
        }

        goto LABEL_33;
      }

      initWithInvalidProbability = 0;
    }

LABEL_31:
    CFRelease(v8);
    goto LABEL_32;
  }

LABEL_33:
  initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
LABEL_34:

  return initWithInvalidProbability;
}

- (id)conditionalProbabilitiesForStrings:(id)strings context:(id)context
{
  stringsCopy = strings;
  contextCopy = context;
  if (self->_model && (v8 = CoreLMCopyTokenIdsForText()) != 0)
  {
    v9 = v8;
    if (CoreLMUpdateWithContext())
    {
      v10 = [NLNLPLanguageModelNode conditionalProbabilitiesForStrings:stringsCopy modelState:self->_model copyRequired:0];
      CoreLMReset();
    }

    else
    {
      v10 = [NLNLPLanguageModelNode conditionalProbabilitiesForStrings:stringsCopy modelState:0 copyRequired:0];
    }

    CFRelease(v9);
  }

  else
  {
    v10 = [NLNLPLanguageModelNode conditionalProbabilitiesForStrings:stringsCopy modelState:0 copyRequired:0];
  }

  return v10;
}

- (id)stateWithOptions:(id)options
{
  optionsCopy = options;
  if (self->_model && (v5 = CoreLMCreateCopy()) != 0)
  {
    v6 = [[NLNLPLanguageModelState alloc] initWithSession:self options:optionsCopy context:&stru_1F10C6540 modelState:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)predictionOptionsForMaximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction
{
  v11[3] = *MEMORY[0x1E69E9840];
  if (predictions <= 0xA)
  {
    predictions = 10;
  }

  v11[0] = *MEMORY[0x1E6998108];
  v5 = *MEMORY[0x1E6998118];
  v10[0] = *MEMORY[0x1E6998110];
  v10[1] = v5;
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:predictions];
  v11[1] = v6;
  v10[2] = *MEMORY[0x1E6998100];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:prediction];
  v11[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];

  return v8;
}

- (id)predictionInitialCharacterSet
{
  if (predictionInitialCharacterSet_onceToken != -1)
  {
    [NLNLPLanguageModelSession predictionInitialCharacterSet];
  }

  v3 = predictionInitialCharacterSet_initialSet;

  return v3;
}

uint64_t __58__NLNLPLanguageModelSession_predictionInitialCharacterSet__block_invoke()
{
  predictionInitialCharacterSet_initialSet = [MEMORY[0x1E696AB08] letterCharacterSet];

  return MEMORY[0x1EEE66BB8]();
}

- (void)enumeratePredictionsForContext:(id)context maximumPredictions:(unint64_t)predictions maximumTokensPerPrediction:(unint64_t)prediction withBlock:(id)block
{
  v41 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  blockCopy = block;
  if (self->_model)
  {
    v11 = CoreLMCopyTokenIdsForText();
    if (v11)
    {
      v12 = v11;
      if (CoreLMUpdateWithContext())
      {
        v31 = v12;
        v32 = contextCopy;
        v30 = [(NLNLPLanguageModelSession *)self predictionOptionsForMaximumPredictions:predictions maximumTokensPerPrediction:prediction];
        v13 = CoreLMCopyPredictions();
        v14 = [v13 keysSortedByValueUsingComparator:&__block_literal_global_311];
        predictionInitialCharacterSet = [(NLNLPLanguageModelSession *)self predictionInitialCharacterSet];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        obj = v14;
        v16 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = 0;
          v19 = *v37;
LABEL_6:
          v20 = 0;
          while (1)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v36 + 1) + 8 * v20);
            v22 = [v13 objectForKey:v21];
            [v22 doubleValue];
            v24 = v23;

            v35 = 0;
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
              blockCopy[2](blockCopy, v29, &v35);
              ++v18;
            }

            if ((v35 & 1) != 0 || v18 >= predictions)
            {
              break;
            }

            if (v17 == ++v20)
            {
              v17 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
              if (v17)
              {
                goto LABEL_6;
              }

              break;
            }
          }
        }

        CoreLMReset();
        contextCopy = v32;
        v12 = v31;
      }

      CFRelease(v12);
    }
  }
}

uint64_t __116__NLNLPLanguageModelSession_enumeratePredictionsForContext_maximumPredictions_maximumTokensPerPrediction_withBlock___block_invoke(uint64_t a1, void *a2, void *a3)
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