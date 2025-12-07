@interface UPResultCandidate
+ (id)_buildCandidateEntitiesByStartIndex:(id)index;
- (NSString)annotatedString;
- (SIRINLUEXTERNALUserParse)protobufRepresentation;
- (UPResultCandidate)initWithUncalibratedProbability:(double)probability calibratedProbability:(id)calibratedProbability utterance:(id)utterance intent:(id)intent entities:(id)entities modelIdentifier:(id)identifier task:(id)task;
- (double)bestAvailableProbability;
- (double)probability;
- (id)_intermediateNodeRepresentations:(id)representations;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation UPResultCandidate

- (double)bestAvailableProbability
{
  v19 = *MEMORY[0x277D85DE8];
  calibratedProbability = [(UPResultCandidate *)self calibratedProbability];

  v4 = SNLPOSLoggerForCategory(3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG);
  if (calibratedProbability)
  {
    if (v5)
    {
      [(UPResultCandidate *)self uncalibratedProbability];
      v7 = v6;
      calibratedProbability2 = [(UPResultCandidate *)self calibratedProbability];
      v15 = 134218242;
      v16 = v7;
      v17 = 2112;
      v18 = calibratedProbability2;
      _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Result candidate has uncalibrated probability %f and calibrated probability %@. Using calibrated value.", &v15, 0x16u);
    }

    calibratedProbability3 = [(UPResultCandidate *)self calibratedProbability];
    [calibratedProbability3 doubleValue];
    v11 = v10;
  }

  else
  {
    if (v5)
    {
      [(UPResultCandidate *)self uncalibratedProbability];
      v15 = 134217984;
      v16 = v12;
      _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_DEBUG, "Result candidate has uncalibrated probability %f and no calibrated probability. Using uncalibrated value.", &v15, 0xCu);
    }

    [(UPResultCandidate *)self uncalibratedProbability];
    return v13;
  }

  return v11;
}

- (SIRINLUEXTERNALUserParse)protobufRepresentation
{
  v3 = objc_alloc_init(MEMORY[0x277D5DDE0]);
  [(UPResultCandidate *)self bestAvailableProbability];
  [v3 setProbability:?];
  v4 = MEMORY[0x277CBEB18];
  v5 = MEMORY[0x277D5DEF0];
  task = [(UPResultCandidate *)self task];
  v7 = [v5 convertFromUserDialogAct:task];
  v8 = [v4 arrayWithObject:v7];
  [v3 setUserDialogActs:v8];

  v9 = objc_alloc_init(MEMORY[0x277D5DDB8]);
  [v9 setAlgorithm:2];
  [v9 setParserId:6];
  [v3 setParser:v9];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [UPResultCandidate allocWithZone:zone];
  [(UPResultCandidate *)self uncalibratedProbability];
  v6 = v5;
  calibratedProbability = [(UPResultCandidate *)self calibratedProbability];
  utterance = [(UPResultCandidate *)self utterance];
  intent = [(UPResultCandidate *)self intent];
  entities = [(UPResultCandidate *)self entities];
  modelIdentifier = [(UPResultCandidate *)self modelIdentifier];
  task = [(UPResultCandidate *)self task];
  v13 = [(UPResultCandidate *)v4 initWithUncalibratedProbability:calibratedProbability calibratedProbability:utterance utterance:intent intent:entities entities:modelIdentifier modelIdentifier:task task:v6];

  return v13;
}

- (id)_intermediateNodeRepresentations:(id)representations
{
  v54 = *MEMORY[0x277D85DE8];
  representationsCopy = representations;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = representationsCopy;
  v5 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v48;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v48 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v47 + 1) + 8 * i);
        higherLevelParentLabel = [v9 higherLevelParentLabel];
        higherLevelChildLabel = [v9 higherLevelChildLabel];
        v12 = [UPResultLeafNode alloc];
        text = [v9 text];
        semanticValue = [v9 semanticValue];
        v15 = [(UPResultLeafNode *)v12 initWithLabel:higherLevelChildLabel andText:text andSemanticValue:semanticValue];

        v16 = [dictionary objectForKey:higherLevelParentLabel];

        if (!v16)
        {
          dictionary2 = [MEMORY[0x277CBEB38] dictionary];
          [dictionary setObject:dictionary2 forKey:higherLevelParentLabel];
        }

        v18 = [dictionary objectForKey:higherLevelParentLabel];
        groupId = [v9 groupId];
        if (groupId)
        {
          [v9 groupId];
        }

        else
        {
          [MEMORY[0x277CCABB0] numberWithLong:0x7FFFFFFFFFFFFFFFLL];
        }
        v20 = ;

        v21 = [v18 objectForKey:v20];

        if (!v21)
        {
          array = [MEMORY[0x277CBEB18] array];
          [v18 setObject:array forKey:v20];
        }

        v23 = [v18 objectForKey:v20];
        [v23 addObject:v15];
      }

      v6 = [obj countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v6);
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v38 = dictionary;
  v37 = [v38 countByEnumeratingWithState:&v43 objects:v52 count:16];
  if (v37)
  {
    v36 = *v44;
    do
    {
      for (j = 0; j != v37; ++j)
      {
        if (*v44 != v36)
        {
          objc_enumerationMutation(v38);
        }

        v26 = *(*(&v43 + 1) + 8 * j);
        v27 = [v38 objectForKey:v26];
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v28 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v40;
          do
          {
            for (k = 0; k != v29; ++k)
            {
              if (*v40 != v30)
              {
                objc_enumerationMutation(v27);
              }

              v32 = [v27 objectForKey:*(*(&v39 + 1) + 8 * k)];
              v33 = [[UPResultIntermediateNode alloc] initWithLabel:v26 andLeafNodes:v32];
              [v24 addObject:v33];
            }

            v29 = [v27 countByEnumeratingWithState:&v39 objects:v51 count:16];
          }

          while (v29);
        }
      }

      v37 = [v38 countByEnumeratingWithState:&v43 objects:v52 count:16];
    }

    while (v37);
  }

  return v24;
}

- (UPResultCandidate)initWithUncalibratedProbability:(double)probability calibratedProbability:(id)calibratedProbability utterance:(id)utterance intent:(id)intent entities:(id)entities modelIdentifier:(id)identifier task:(id)task
{
  calibratedProbabilityCopy = calibratedProbability;
  utteranceCopy = utterance;
  intentCopy = intent;
  entitiesCopy = entities;
  identifierCopy = identifier;
  taskCopy = task;
  v28.receiver = self;
  v28.super_class = UPResultCandidate;
  v20 = [(UPResultCandidate *)&v28 init];
  v21 = v20;
  if (v20)
  {
    v20->_uncalibratedProbability = probability;
    objc_storeStrong(&v20->_calibratedProbability, calibratedProbability);
    objc_storeStrong(&v21->_utterance, utterance);
    objc_storeStrong(&v21->_intent, intent);
    objc_storeStrong(&v21->_entities, entities);
    v22 = [UPResultCandidate _buildCandidateEntitiesByStartIndex:v21->_entities];
    candidateEntitiesByStartIndex = v21->__candidateEntitiesByStartIndex;
    v21->__candidateEntitiesByStartIndex = v22;

    objc_storeStrong(&v21->_modelIdentifier, identifier);
    objc_storeStrong(&v21->_task, task);
  }

  return v21;
}

- (double)probability
{
  calibratedProbability = self->_calibratedProbability;
  if (!calibratedProbability)
  {
    return self->_uncalibratedProbability;
  }

  [(NSNumber *)calibratedProbability doubleValue];
  return result;
}

- (NSString)annotatedString
{
  v3 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v4 = [(NSString *)self->_utterance length];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      candidateEntitiesByStartIndex = self->__candidateEntitiesByStartIndex;
      v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
      v9 = [(NSDictionary *)candidateEntitiesByStartIndex objectForKey:v8];

      if (v9)
      {
        annotatedEntityFragmentString = [v9 annotatedEntityFragmentString];
        [v3 appendString:annotatedEntityFragmentString];

        text = [v9 text];
        v12 = [text length];
      }

      else
      {
        v15 = [(NSString *)self->_utterance characterAtIndex:v6];
        v13 = [MEMORY[0x277CCACA8] stringWithCharacters:&v15 length:1];
        [v3 appendString:v13];

        v12 = 1;
      }

      v6 += v12;
    }

    while (v6 < v5);
  }

  [v3 appendString:@"\n"];
  [v3 appendString:@"- "];
  [v3 appendString:self->_intent];
  [v3 appendString:@"\n"];

  return v3;
}

+ (id)_buildCandidateEntitiesByStartIndex:(id)index
{
  v18 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(indexCopy, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = indexCopy;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "range", v13)}];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  return v4;
}

@end