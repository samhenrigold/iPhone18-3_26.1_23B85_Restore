@interface SASPhrase(AFSpeechTokenAdditions)
- (id)af_speechInterpretations;
@end

@implementation SASPhrase(AFSpeechTokenAdditions)

- (id)af_speechInterpretations
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  interpretations = [self interpretations];
  v4 = [v2 initWithCapacity:{objc_msgSend(interpretations, "count")}];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  interpretations2 = [self interpretations];
  v6 = [interpretations2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(interpretations2);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = objc_alloc_init(AFSpeechInterpretation);
        af_speechTokens = [v10 af_speechTokens];
        [(AFSpeechInterpretation *)v11 setTokens:af_speechTokens];

        [v4 addObject:v11];
      }

      v7 = [interpretations2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end