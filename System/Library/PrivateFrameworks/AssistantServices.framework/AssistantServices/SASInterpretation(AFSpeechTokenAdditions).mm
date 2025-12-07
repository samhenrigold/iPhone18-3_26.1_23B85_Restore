@interface SASInterpretation(AFSpeechTokenAdditions)
- (id)af_speechTokens;
@end

@implementation SASInterpretation(AFSpeechTokenAdditions)

- (id)af_speechTokens
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF70]);
  tokens = [self tokens];
  v4 = [v2 initWithCapacity:{objc_msgSend(tokens, "count")}];

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  tokens2 = [self tokens];
  v6 = [tokens2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(tokens2);
        }

        af_speechToken = [*(*(&v12 + 1) + 8 * i) af_speechToken];
        [v4 addObject:af_speechToken];
      }

      v7 = [tokens2 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

@end