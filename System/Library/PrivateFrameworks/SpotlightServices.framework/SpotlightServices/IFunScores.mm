@interface IFunScores
- (IFunScores)initWithSFEngagementSignal:(id)signal;
@end

@implementation IFunScores

- (IFunScores)initWithSFEngagementSignal:(id)signal
{
  v32 = *MEMORY[0x1E69E9840];
  signalCopy = signal;
  v30.receiver = self;
  v30.super_class = IFunScores;
  v5 = [(IFunScores *)&v30 init];
  if (signalCopy)
  {
    serverScore = [signalCopy serverScore];
    serverScore = v5->_serverScore;
    v5->_serverScore = serverScore;

    localScore = [signalCopy localScore];
    localScore = v5->_localScore;
    v5->_localScore = localScore;

    domainEngagementScores = [signalCopy domainEngagementScores];
    v11 = objc_msgSend_count(domainEngagementScores);

    if (v11)
    {
      v12 = objc_opt_new();
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v25 = signalCopy;
      domainEngagementScores2 = [signalCopy domainEngagementScores];
      v14 = [domainEngagementScores2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v27;
        do
        {
          for (i = 0; i != v15; ++i)
          {
            if (*v27 != v16)
            {
              objc_enumerationMutation(domainEngagementScores2);
            }

            v18 = *(*(&v26 + 1) + 8 * i);
            if ([v18 domain])
            {
              score = [v18 score];

              if (score)
              {
                score2 = [v18 score];
                v21 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v18, "domain")}];
                [v12 setObject:score2 forKeyedSubscript:v21];
              }
            }
          }

          v15 = [domainEngagementScores2 countByEnumeratingWithState:&v26 objects:v31 count:16];
        }

        while (v15);
      }

      v22 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v12];
      domainScores = v5->_domainScores;
      v5->_domainScores = v22;

      signalCopy = v25;
    }
  }

  return v5;
}

@end