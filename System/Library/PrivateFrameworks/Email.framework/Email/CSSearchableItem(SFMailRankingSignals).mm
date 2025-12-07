@interface CSSearchableItem(SFMailRankingSignals)
- (id)em_mailRankingSignals;
- (uint64_t)_daysSinceDate:()SFMailRankingSignals;
@end

@implementation CSSearchableItem(SFMailRankingSignals)

- (id)em_mailRankingSignals
{
  v64 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2050000000;
  v2 = getSFMailRankingSignalsClass_softClass;
  v62 = getSFMailRankingSignalsClass_softClass;
  if (!getSFMailRankingSignalsClass_softClass)
  {
    v58[0] = MEMORY[0x1E69E9820];
    v58[1] = 3221225472;
    v58[2] = __getSFMailRankingSignalsClass_block_invoke;
    v58[3] = &unk_1E826C010;
    v58[4] = &v59;
    __getSFMailRankingSignalsClass_block_invoke(v58);
    v2 = v60[3];
  }

  v3 = v2;
  _Block_object_dispose(&v59, 8);
  v52 = objc_alloc_init(v2);
  attributeSet = [self attributeSet];
  attributeDictionary = [attributeSet attributeDictionary];
  v49 = [attributeDictionary valueForKey:*MEMORY[0x1E6964DB0]];

  [v52 setIsSemanticMatch:{(objc_msgSend(v49, "integerValue") >> 1) & 1}];
  [v52 setIsSyntacticMatch:{objc_msgSend(v49, "integerValue") & 1}];
  if ([v52 isSemanticMatch])
  {
    attributeSet2 = [self attributeSet];
    attributeDictionary2 = [attributeSet2 attributeDictionary];
    v7 = [attributeDictionary2 valueForKey:*MEMORY[0x1E6964D78]];

    if ([v7 count] == 3)
    {
      firstObject = [v7 firstObject];
      if (firstObject)
      {
        firstObject2 = [v7 firstObject];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          firstObject3 = [v7 firstObject];
          [firstObject3 floatValue];
          v13 = v12;

          if (v13 >= 0.0 && v13 <= 4.0)
          {
            *&v14 = (v13 * -0.5) + 1.0;
            v15 = [MEMORY[0x1E696AD98] numberWithFloat:v14];
            [v52 setSemanticScore:v15];
          }
        }
      }
    }
  }

  v16 = MEMORY[0x1E696AD98];
  mailResultScoreL1 = [attributeSet mailResultScoreL1];
  [mailResultScoreL1 doubleValue];
  v18 = [v16 numberWithDouble:?];
  [v52 setSyntacticScore:v18];

  mailFlagged = [attributeSet mailFlagged];
  [v52 setIsFlagged:{objc_msgSend(mailFlagged, "BOOLValue")}];

  mailRepliedTo = [attributeSet mailRepliedTo];
  [v52 setIsRepliedTo:{objc_msgSend(mailRepliedTo, "BOOLValue")}];

  v21 = MEMORY[0x1E696AD98];
  mailResultScoreL12 = [attributeSet mailResultScoreL1];
  [mailResultScoreL12 doubleValue];
  v23 = [v21 numberWithDouble:?];
  [v52 setL1Score:v23];

  v24 = MEMORY[0x1E696AD98];
  mailResultScoreL2 = [attributeSet mailResultScoreL2];
  [mailResultScoreL2 doubleValue];
  v26 = [v24 numberWithDouble:?];
  [v52 setL2Score:v26];

  mailUseCount = [attributeSet mailUseCount];
  [v52 setNumEngagements:{objc_msgSend(mailUseCount, "unsignedLongLongValue")}];

  mailDateReceived = [attributeSet mailDateReceived];
  [v52 setDaysSinceReceipt:{objc_msgSend(self, "_daysSinceDate:", mailDateReceived)}];

  v29 = objc_alloc(MEMORY[0x1E695DFA8]);
  mailUsedDates = [attributeSet mailUsedDates];
  v31 = [v29 initWithCapacity:{objc_msgSend(mailUsedDates, "count")}];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  mailUsedDates2 = [attributeSet mailUsedDates];
  v33 = [mailUsedDates2 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v33)
  {
    v34 = 0;
    v35 = 0;
    v53 = 0;
    v36 = *v55;
    v37 = -1.0;
    v38 = -1.0;
    v39 = -1.0;
    v40 = -1.0;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v55 != v36)
        {
          objc_enumerationMutation(mailUsedDates2);
        }

        v42 = [self _daysSinceDate:*(*(&v54 + 1) + 8 * i)];
        if (v42 <= 0x1E)
        {
          v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v42];
          [v31 addObject:v43];

          if (v42 > 6)
          {
            if (v42 > 0xD)
            {
              if (v42 > 0x14)
              {
                if (v42 != 30)
                {
                  v40 = v40 + v42 + 1.0;
                  LODWORD(v53) = v53 + 1;
                }
              }

              else
              {
                v39 = v39 + v42 + 1.0;
                ++HIDWORD(v53);
              }
            }

            else
            {
              v38 = v38 + v42 + 1.0;
              ++v35;
            }
          }

          else
          {
            v37 = v37 + v42 + 1.0;
            ++v34;
          }
        }
      }

      v33 = [mailUsedDates2 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v33);

    if (v34 >= 1)
    {
      v37 = (v37 + 1.0) / v34;
    }

    if (v35 >= 1)
    {
      v38 = (v38 + 1.0) / v35;
    }

    if (SHIDWORD(v53) >= 1)
    {
      v39 = (v39 + 1.0) / HIDWORD(v53);
    }

    if (v53 >= 1)
    {
      v40 = (v40 + 1.0) / v53;
    }
  }

  else
  {

    v39 = -1.0;
    v37 = -1.0;
    v38 = -1.0;
    v40 = -1.0;
  }

  v44 = [MEMORY[0x1E696AD98] numberWithDouble:v37];
  [v52 setAverageEngagementAgeLast7Days:v44];

  v45 = [MEMORY[0x1E696AD98] numberWithDouble:v38];
  [v52 setAverageEngagementAgeLast14Days:v45];

  v46 = [MEMORY[0x1E696AD98] numberWithDouble:v39];
  [v52 setAverageEngagementAgeLast21Days:v46];

  v47 = [MEMORY[0x1E696AD98] numberWithDouble:v40];
  [v52 setAverageEngagementAgeLast30Days:v47];

  [v52 setNumDaysEngagedLast30Days:{objc_msgSend(v31, "count")}];

  return v52;
}

- (uint64_t)_daysSinceDate:()SFMailRankingSignals
{
  v3 = a3;
  if (v3)
  {
    localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    [currentCalendar setTimeZone:localTimeZone];
    date = [MEMORY[0x1E695DF00] date];
    v7 = [currentCalendar components:16 fromDate:v3 toDate:date options:0];
    if ([v7 day] < 0)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v7 day];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end