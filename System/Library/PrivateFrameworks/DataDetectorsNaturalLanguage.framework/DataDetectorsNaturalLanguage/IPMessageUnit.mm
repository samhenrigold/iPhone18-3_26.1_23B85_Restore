@interface IPMessageUnit
- (IPMessage)originalMessage;
- (IPMessageUnit)initWithText:(id)text originalMessage:(id)message index:(int64_t)index;
- (IPMessageUnit)previous;
- (NSArray)features;
- (NSString)lowercaseTextTruncated;
- (_NSRange)interactedDateRange;
- (id)bestLanguageID;
- (id)description;
- (id)neutralRanges;
- (id)proposalAndAcceptationRanges;
- (id)rejectionRanges;
- (void)addFollowup:(id)followup;
- (void)setDataFeatures:(id)features;
- (void)setFeatures:(id)features;
- (void)setKeywordFeatures:(id)features;
- (void)setSentenceFeatures:(id)features;
@end

@implementation IPMessageUnit

- (IPMessageUnit)initWithText:(id)text originalMessage:(id)message index:(int64_t)index
{
  textCopy = text;
  messageCopy = message;
  v17.receiver = self;
  v17.super_class = IPMessageUnit;
  v11 = [(IPMessageUnit *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_text, text);
    v12->_indexInOriginalMessage = index;
    objc_storeWeak(&v12->_originalMessage, messageCopy);
    v12->_interactedDateRange = xmmword_24860DE90;
    dataFeatures = v12->_dataFeatures;
    v12->_dataFeatures = 0;

    sentenceFeatures = v12->_sentenceFeatures;
    v12->_sentenceFeatures = 0;

    keywordFeatures = v12->_keywordFeatures;
    v12->_keywordFeatures = 0;
  }

  return v12;
}

- (void)addFollowup:(id)followup
{
  followupCopy = followup;
  if (followupCopy)
  {
    followups = self->_followups;
    if (followups)
    {
      [(NSMutableArray *)followups addObject:followupCopy];
    }

    else
    {
      v6 = [MEMORY[0x277CBEB18] arrayWithObject:followupCopy];
      v7 = self->_followups;
      self->_followups = v6;
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setFeatures:(id)features
{
  v21 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [featuresCopy copy];
  features = selfCopy->_features;
  selfCopy->_features = v6;

  v8 = objc_opt_new();
  v9 = objc_opt_new();
  v15 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = selfCopy->_features;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v11)
  {
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v9 addObject:v14];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v8 addObject:v14];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            [v15 addObject:v14];
          }
        }
      }

      v11 = [(NSArray *)v10 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(IPMessageUnit *)selfCopy setDataFeatures:v8];
  [(IPMessageUnit *)selfCopy setKeywordFeatures:v15];
  [(IPMessageUnit *)selfCopy setSentenceFeatures:v9];

  objc_sync_exit(selfCopy);
}

- (void)setSentenceFeatures:(id)features
{
  featuresCopy = features;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [featuresCopy copy];
  sentenceFeatures = selfCopy->_sentenceFeatures;
  selfCopy->_sentenceFeatures = v5;

  objc_sync_exit(selfCopy);
}

- (void)setDataFeatures:(id)features
{
  featuresCopy = features;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [featuresCopy copy];
  dataFeatures = selfCopy->_dataFeatures;
  selfCopy->_dataFeatures = v5;

  objc_sync_exit(selfCopy);
}

- (void)setKeywordFeatures:(id)features
{
  featuresCopy = features;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = [featuresCopy copy];
  keywordFeatures = selfCopy->_keywordFeatures;
  selfCopy->_keywordFeatures = v5;

  objc_sync_exit(selfCopy);
}

- (NSString)lowercaseTextTruncated
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_lowercaseTextTruncated);
  if (!WeakRetained)
  {
    text = [(IPMessageUnit *)selfCopy text];
    if ([text length] >= 0x2711)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [text substringToIndex:10000];

      objc_autoreleasePoolPop(v5);
      text = v6;
    }

    v7 = objc_autoreleasePoolPush();
    WeakRetained = [text lowercaseString];
    objc_autoreleasePoolPop(v7);
    objc_storeWeak(&selfCopy->_lowercaseTextTruncated, WeakRetained);
  }

  objc_sync_exit(selfCopy);

  return WeakRetained;
}

- (NSArray)features
{
  v21 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_features)
  {
    text = selfCopy->_text;
    if (text)
    {
      v4 = [IPFeatureManager featuresForTextString:text inMessageUnit:selfCopy];
      features = selfCopy->_features;
      selfCopy->_features = v4;
    }
  }

  if (selfCopy->_text && (!selfCopy->_dataFeatures || !selfCopy->_keywordFeatures || !selfCopy->_sentenceFeatures))
  {
    v6 = objc_opt_new();
    v7 = objc_opt_new();
    v15 = objc_opt_new();
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = selfCopy->_features;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (!v9)
    {
      goto LABEL_22;
    }

    v10 = *v17;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v7 addObject:v12];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 addObject:v12];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }

            [v15 addObject:v12];
          }
        }
      }

      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (!v9)
      {
LABEL_22:

        [(IPMessageUnit *)selfCopy setDataFeatures:v6];
        [(IPMessageUnit *)selfCopy setKeywordFeatures:v15];
        [(IPMessageUnit *)selfCopy setSentenceFeatures:v7];

        break;
      }
    }
  }

  v13 = selfCopy->_features;
  objc_sync_exit(selfCopy);

  return v13;
}

- (id)rejectionRanges
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  rejectionRanges = selfCopy->_rejectionRanges;
  if (!rejectionRanges)
  {
    rejectionRanges = selfCopy->_text;
    if (rejectionRanges)
    {
      v21 = selfCopy;
      v6 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      sentenceFeatures = [(IPMessageUnit *)selfCopy sentenceFeatures];
      v8 = [sentenceFeatures countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        obj = sentenceFeatures;
        v23 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            matchRange = [v10 matchRange];
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            fragments = [v10 fragments];
            v13 = [fragments countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = *v25;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v25 != v14)
                  {
                    objc_enumerationMutation(fragments);
                  }

                  v16 = *(*(&v24 + 1) + 8 * j);
                  if ([v16 mainPolarity] == 4)
                  {
                    range = [v16 range];
                    [v16 range];
                    [v6 addIndexesInRange:{range + matchRange, v18}];
                  }
                }

                v13 = [fragments countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v13);
            }
          }

          sentenceFeatures = obj;
          v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v19 = [v6 copy];
      v20 = v21->_rejectionRanges;
      v21->_rejectionRanges = v19;

      rejectionRanges = v21->_rejectionRanges;
      selfCopy = v21;
    }
  }

  v4 = rejectionRanges;
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)neutralRanges
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  neutralRanges = selfCopy->_neutralRanges;
  if (!neutralRanges)
  {
    neutralRanges = selfCopy->_text;
    if (neutralRanges)
    {
      v21 = selfCopy;
      v6 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      sentenceFeatures = [(IPMessageUnit *)selfCopy sentenceFeatures];
      v8 = [sentenceFeatures countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        obj = sentenceFeatures;
        v23 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            matchRange = [v10 matchRange];
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            fragments = [v10 fragments];
            v13 = [fragments countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = *v25;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v25 != v14)
                  {
                    objc_enumerationMutation(fragments);
                  }

                  v16 = *(*(&v24 + 1) + 8 * j);
                  if (([v16 mainPolarity] - 5) <= 0xFFFFFFFFFFFFFFFCLL)
                  {
                    range = [v16 range];
                    [v16 range];
                    [v6 addIndexesInRange:{range + matchRange, v18}];
                  }
                }

                v13 = [fragments countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v13);
            }
          }

          sentenceFeatures = obj;
          v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v19 = [v6 copy];
      v20 = v21->_neutralRanges;
      v21->_neutralRanges = v19;

      neutralRanges = v21->_neutralRanges;
      selfCopy = v21;
    }
  }

  v4 = neutralRanges;
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)proposalAndAcceptationRanges
{
  v34 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  proposalAndAcceptationRanges = selfCopy->_proposalAndAcceptationRanges;
  if (!proposalAndAcceptationRanges)
  {
    proposalAndAcceptationRanges = selfCopy->_text;
    if (proposalAndAcceptationRanges)
    {
      v21 = selfCopy;
      v6 = objc_opt_new();
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      sentenceFeatures = [(IPMessageUnit *)selfCopy sentenceFeatures];
      v8 = [sentenceFeatures countByEnumeratingWithState:&v28 objects:v33 count:16];
      if (v8)
      {
        obj = sentenceFeatures;
        v23 = *v29;
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v29 != v23)
            {
              objc_enumerationMutation(obj);
            }

            v10 = *(*(&v28 + 1) + 8 * i);
            matchRange = [v10 matchRange];
            v26 = 0u;
            v27 = 0u;
            v24 = 0u;
            v25 = 0u;
            fragments = [v10 fragments];
            v13 = [fragments countByEnumeratingWithState:&v24 objects:v32 count:16];
            if (v13)
            {
              v14 = *v25;
              do
              {
                for (j = 0; j != v13; ++j)
                {
                  if (*v25 != v14)
                  {
                    objc_enumerationMutation(fragments);
                  }

                  v16 = *(*(&v24 + 1) + 8 * j);
                  if (([v16 mainPolarity] & 0xFFFFFFFFFFFFFFFELL) == 2)
                  {
                    range = [v16 range];
                    [v16 range];
                    [v6 addIndexesInRange:{range + matchRange, v18}];
                  }
                }

                v13 = [fragments countByEnumeratingWithState:&v24 objects:v32 count:16];
              }

              while (v13);
            }
          }

          sentenceFeatures = obj;
          v8 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
        }

        while (v8);
      }

      v19 = [v6 copy];
      v20 = v21->_proposalAndAcceptationRanges;
      v21->_proposalAndAcceptationRanges = v19;

      proposalAndAcceptationRanges = v21->_proposalAndAcceptationRanges;
      selfCopy = v21;
    }
  }

  v4 = proposalAndAcceptationRanges;
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)bestLanguageID
{
  if (!self->_bestLanguage && [(NSString *)self->_text length])
  {
    originalMessage = [(IPMessageUnit *)self originalMessage];
    subject = [originalMessage subject];

    if (![subject length])
    {
      text = [(IPMessageUnit *)self text];
      v11 = 0;
LABEL_16:
      v16 = [IPFeatureSentence bestLanguageIDFromText:text linesElided:v11];
      bestLanguage = self->_bestLanguage;
      self->_bestLanguage = v16;

      goto LABEL_17;
    }

    text = [subject mutableCopy];
    [text appendString:@"\n"];
    text2 = [(IPMessageUnit *)self text];
    if ([text length] <= 0x1FF && objc_msgSend(text2, "length"))
    {
      v7 = 512 - [text length];
      if (v7 < [text2 length])
      {
        context = objc_autoreleasePoolPush();
        v8 = [text2 lineRangeForRange:{0, 512 - objc_msgSend(text, "length")}];
        v10 = v9;
        v11 = 0;
        v12 = v9 + v8 + 1;
        do
        {
          if (v12 >= [text2 length])
          {
            break;
          }

          v13 = [text2 rangeOfString:@"\n" options:2 range:{v12, objc_msgSend(text2, "length") - v12}];
          if (v13 == 0x7FFFFFFFFFFFFFFFLL)
          {
            break;
          }

          v12 = v13 + v14;
          ++v11;
        }

        while (v11 != 5);
        v15 = [text2 substringWithRange:{v8, v10}];
        [text appendString:v15];

        objc_autoreleasePoolPop(context);
        goto LABEL_15;
      }

      [text appendString:text2];
    }

    v11 = 0;
LABEL_15:

    goto LABEL_16;
  }

LABEL_17:
  v18 = self->_bestLanguage;

  return v18;
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = MEMORY[0x277CCACA8];
  text = [(IPMessageUnit *)self text];
  v6 = [v4 stringWithFormat:@"<IPMessageUnit: %@>", text];

  objc_autoreleasePoolPop(v3);

  return v6;
}

- (IPMessageUnit)previous
{
  WeakRetained = objc_loadWeakRetained(&self->_previous);

  return WeakRetained;
}

- (IPMessage)originalMessage
{
  WeakRetained = objc_loadWeakRetained(&self->_originalMessage);

  return WeakRetained;
}

- (_NSRange)interactedDateRange
{
  objc_copyStruct(v4, &self->_interactedDateRange, 16, 1, 0);
  v2 = v4[0];
  v3 = v4[1];
  result.length = v3;
  result.location = v2;
  return result;
}

@end