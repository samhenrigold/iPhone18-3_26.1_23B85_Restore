@interface SASSpeechPartialResult(AFUserUtteranceAdditions)
- (AFUserUtterance)af_userUtteranceValue;
- (id)af_bestTextInterpretation;
@end

@implementation SASSpeechPartialResult(AFUserUtteranceAdditions)

- (id)af_bestTextInterpretation
{
  af_userUtteranceValue = [self af_userUtteranceValue];
  bestTextInterpretation = [af_userUtteranceValue bestTextInterpretation];

  return bestTextInterpretation;
}

- (AFUserUtterance)af_userUtteranceValue
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695DF70];
  tokens = [self tokens];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(tokens, "count")}];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  tokens2 = [self tokens];
  v6 = [tokens2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(tokens2);
        }

        af_speechToken = [*(*(&v15 + 1) + 8 * i) af_speechToken];
        [v4 addObject:af_speechToken];
      }

      v7 = [tokens2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v11 = [AFUserUtterance alloc];
  af_correctionContext = [self af_correctionContext];
  v13 = [(AFUserUtterance *)v11 initWithTokens:v4 correctionIdentifier:af_correctionContext];

  return v13;
}

@end