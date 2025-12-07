@interface TICoreAnalyticsEventDispatcher
- (void)sessionDidEnd:(id)end aligned:(id)aligned;
@end

@implementation TICoreAnalyticsEventDispatcher

- (void)sessionDidEnd:(id)end aligned:(id)aligned
{
  v29[7] = *MEMORY[0x277D85DE8];
  endCopy = end;
  alignedCopy = aligned;
  v22 = objc_opt_new();
  v8 = objc_opt_new();
  selfCopy = self;
  [(TICoreAnalyticsEventDispatcher *)self setRevisionRateAnalyzer:v8];

  v9 = objc_opt_new();
  v29[0] = v9;
  v10 = objc_opt_new();
  v29[1] = v10;
  v11 = objc_opt_new();
  v29[2] = v11;
  v12 = objc_opt_new();
  v29[3] = v12;
  v13 = objc_opt_new();
  v29[4] = v13;
  v14 = objc_opt_new();
  v29[5] = v14;
  v15 = objc_opt_new();
  v29[6] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:7];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = v16;
  v18 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [*(*(&v24 + 1) + 8 * v21) analyzeSession:endCopy alignedSession:alignedCopy withConfidence:{objc_msgSend(*(*(&v24 + 1) + 8 * v21), "evaluateConfidenceInSession:alignedSession:", endCopy, alignedCopy, v22)}];
        ++v21;
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v19);
  }

  [v22 analyzeSession:endCopy alignedSession:alignedCopy withConfidence:{objc_msgSend(v22, "evaluateConfidenceInSession:alignedSession:", endCopy, alignedCopy)}];
  -[TIRevisionRateAnalyzer setHasEmojiInput:](selfCopy->_revisionRateAnalyzer, "setHasEmojiInput:", [v22 hasEmojiInput]);
  -[TIRevisionRateAnalyzer setHasCursorMovement:](selfCopy->_revisionRateAnalyzer, "setHasCursorMovement:", [v22 hasCursorMovement]);
  [(TIRevisionRateAnalyzer *)selfCopy->_revisionRateAnalyzer analyzeSession:endCopy alignedSession:alignedCopy withConfidence:[(TIRevisionRateAnalyzer *)selfCopy->_revisionRateAnalyzer evaluateConfidenceInSession:endCopy alignedSession:alignedCopy]];
}

@end