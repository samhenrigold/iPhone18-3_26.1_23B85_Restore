@interface SGReminderMessage
+ (BOOL)enrichedTaggedCharacterRangesContainsProfanity:(id)profanity;
+ (BOOL)excludedContent:(id)content;
+ (BOOL)isConfirmationOptionalForContent:(id)content;
+ (BOOL)shouldAddTitlePrefixForContent:(id)content;
+ (BOOL)tokensMatchedInContent:(id)content content:(id)a4;
+ (BOOL)validActionVerbIndexRange:(_NSRange)range enrichedTaggedCharacterRanges:(id)ranges;
+ (BOOL)validModelOutput:(id)output error:(id *)error;
+ (BOOL)validObjectCoreIndexRange:(_NSRange)range enrichedTaggedCharacterRanges:(id)ranges;
+ (id)confirmationOptionalTokens;
+ (id)detectedTitleInModelOutput:(id)output enrichedTaggedCharacterRanges:(id)ranges textContent:(id)content language:(id)language;
+ (id)excludeList;
+ (id)frenchPrependForEnrichedTaggedCharacterRanges:(id)ranges actionVerbIndexRange:(_NSRange)range;
+ (id)posTaggerNouns;
+ (id)regexFromJoinedArray:(id)array wordBoundary:(id)boundary;
+ (id)searchTokensForReminderTitle:(id)title;
+ (id)titlePrefixTokens;
+ (id)titlePrependForActionVerbIndexRange:(_NSRange)range enrichedTaggedCharacterRanges:(id)ranges language:(id)language content:(id)content;
+ (id)triggerOptionalTokens;
- (BOOL)hasTrigger;
- (BOOL)isConfirmation;
- (BOOL)isProposal;
- (BOOL)isRejection;
- (BOOL)isTriggerOptional;
- (SGReminderMessage)initWithMessage:(id)message entity:(id)entity enrichedTaggedCharacterRanges:(id)ranges modelOutput:(id)output;
- (SGReminderMessage)initWithMessage:(id)message plainTextDetectedData:(id)data enrichedTaggedCharacterRanges:(id)ranges modelOutput:(id)output;
- (id)_labelTokenIndexesForOutputName:(id)name label:(id)label;
- (id)detectedDueDateComponents;
- (id)detectedTitleForLanguage:(id)language;
- (id)dueDateDataDetectorMatches;
- (id)dueLocation;
@end

@implementation SGReminderMessage

- (id)_labelTokenIndexesForOutputName:(id)name label:(id)label
{
  labelCopy = label;
  nameCopy = name;
  v8 = objc_opt_class();
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  v10 = [v8 labelTokenIndexesForOutputName:nameCopy label:labelCopy modelOutput:modelOutput];

  return v10;
}

- (BOOL)hasTrigger
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  v3 = [modelOutput objectForKeyedSubscript:@"trigger"];

  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![*(*(&v10 + 1) + 8 * i) isEqualToString:@"NONE"])
        {
          v8 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)dueLocation
{
  modelOutput = [(SGExtractionDocument *)self modelOutput];

  if (!modelOutput)
  {
    v21 = 0;
    goto LABEL_29;
  }

  modelOutput2 = [(SGExtractionDocument *)self modelOutput];
  v5 = [modelOutput2 objectForKeyedSubscript:@"trigger"];

  v6 = objc_opt_new();
  if (!objc_msgSend_count(v5))
  {
    v8 = 0;
    v9 = 0;
    goto LABEL_23;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  do
  {
    v10 = [v5 objectAtIndexedSubscript:v7];
    if ([v10 hasPrefix:@"DUE_LOCATION_TRIGGER__"])
    {
      if ([v10 containsString:@"ARRIVE"])
      {
        v9 = 1;
      }

      else if ([v10 containsString:@"LEAVE"])
      {
        v9 = 2;
      }

      if ([v10 hasSuffix:@"MY_HOME"])
      {
        v8 = 1;
      }

      else if ([v10 hasSuffix:@"MY_SCHOOL"])
      {
        v8 = 3;
      }

      else if ([v10 hasSuffix:@"MY_WORK"])
      {
        v8 = 2;
      }

      else if ([v10 hasSuffix:@"OTHER"])
      {
        [v6 addIndex:v7];
        v8 = 4;
      }
    }

    ++v7;
  }

  while (objc_msgSend_count(v5) > v7);
  if (v8 != 4)
  {
LABEL_23:
    v20 = 0;
    v22 = 0;
    v21 = 0;
    if (!(v8 | v9))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  v11 = objc_autoreleasePoolPush();
  v12 = [objc_opt_class() firstRangeInIndexSet:v6];
  v14 = v13;
  enrichedTaggedCharacterRanges = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
  if (enrichedTaggedCharacterRanges)
  {
    v16 = [objc_opt_class() textRangeForIndexRange:v12 inTaggedCharacterRanges:{v14, enrichedTaggedCharacterRanges}];
    v18 = v17;
    textContent = [(SGMessage *)self->_message textContent];
    v20 = [textContent substringWithRange:{v16, v18}];
  }

  else
  {
    v20 = 0;
  }

  objc_autoreleasePoolPop(v11);
  v8 = 4;
LABEL_27:
  v21 = [[SGReminderDueLocation alloc] initWithLocationType:v8 trigger:v9 name:v20];
  v22 = v20;
LABEL_28:

LABEL_29:

  return v21;
}

- (id)detectedDueDateComponents
{
  v19 = *MEMORY[0x277D85DE8];
  dueDateDataDetectorMatches = [(SGReminderMessage *)self dueDateDataDetectorMatches];
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  first = [dueDateDataDetectorMatches first];
  v5 = [first countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(first);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = objc_opt_class();
        second = [dueDateDataDetectorMatches second];
        v12 = [v10 dateComponentsFromDataDetectorMatch:v9 inferDates:objc_msgSend(second approximateTime:"BOOLValue") ^ 1 partialDate:1 useEndForDurations:{1, 0}];

        if (v12)
        {
          [v3 addObject:v12];
        }
      }

      v6 = [first countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)dueDateDataDetectorMatches
{
  modelOutput = [(SGExtractionDocument *)self modelOutput];

  if (modelOutput)
  {
    v4 = [(SGReminderMessage *)self _labelTokenIndexesForOutputName:@"trigger" label:@"DUE_TIME_TRIGGER__DATETIME"];
    v5 = [(SGExtractionDocument *)self dataDetectorMatchesForTokenIndexes:v4 dataDetectorMatches:self->_plainTextDetectedData allowDatesInPast:1 allowTimeOffset:1];
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x277D42648]);
    v5 = [v6 initWithFirst:MEMORY[0x277CBEBF8] second:0];
  }

  return v5;
}

- (id)detectedTitleForLanguage:(id)language
{
  languageCopy = language;
  v5 = objc_opt_class();
  modelOutput = [(SGExtractionDocument *)self modelOutput];
  enrichedTaggedCharacterRanges = [(SGExtractionDocument *)self enrichedTaggedCharacterRanges];
  textContent = [(SGMessage *)self->_message textContent];
  v9 = [v5 detectedTitleInModelOutput:modelOutput enrichedTaggedCharacterRanges:enrichedTaggedCharacterRanges textContent:textContent language:languageCopy];

  if (v9 && ([objc_opt_class() excludedContent:v9] & 1) != 0)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  return v10;
}

- (BOOL)isTriggerOptional
{
  if ([(SGMessage *)self->_message isSent]|| [(SGReminderMessage *)self hasTrigger])
  {
    return 0;
  }

  v4 = objc_opt_class();
  triggerOptionalTokens = [objc_opt_class() triggerOptionalTokens];
  message = [(SGReminderMessage *)self message];
  textContent = [message textContent];
  LOBYTE(v4) = [v4 tokensMatchedInContent:triggerOptionalTokens content:textContent];

  return v4;
}

- (BOOL)isProposal
{
  v21 = *MEMORY[0x277D85DE8];
  if (![(SGMessage *)self->_message isSent])
  {
    modelOutput = [(SGExtractionDocument *)self modelOutput];

    if (modelOutput)
    {
      modelOutput2 = [(SGExtractionDocument *)self modelOutput];
      v5 = [modelOutput2 objectForKeyedSubscript:@"polarity"];
      v6 = objc_msgSend_count(v5);

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      modelOutput3 = [(SGExtractionDocument *)self modelOutput];
      v8 = [modelOutput3 objectForKeyedSubscript:@"polarity"];

      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        v12 = 0.0;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v14 = *(*(&v16 + 1) + 8 * i);
            if ([@"POLARITY__REMINDER_STATEMENT" isEqualToString:v14])
            {
              v12 = v12 + 1.0;
            }

            else if ([@"POLARITY__REJECTION" isEqualToString:v14])
            {
              goto LABEL_16;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);

        if (v12 > 0.0 && v12 / v6 > 0.1)
        {
          return 1;
        }
      }

      else
      {
LABEL_16:
      }
    }
  }

  return 0;
}

- (BOOL)isRejection
{
  v24 = *MEMORY[0x277D85DE8];
  isSent = [(SGMessage *)self->_message isSent];
  if (isSent)
  {
    modelOutput = [(SGExtractionDocument *)self modelOutput];

    if (modelOutput)
    {
      modelOutput2 = [(SGExtractionDocument *)self modelOutput];
      v6 = [modelOutput2 objectForKeyedSubscript:@"polarity"];
      v7 = objc_msgSend_count(v6);

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      modelOutput3 = [(SGExtractionDocument *)self modelOutput];
      v9 = [modelOutput3 objectForKeyedSubscript:@"polarity"];

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        v13 = 0.0;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            if (([@"POLARITY__REJECTION" isEqualToString:v15] & 1) != 0 || objc_msgSend(@"POLARITY__DONE", "isEqualToString:", v15))
            {
              v13 = v13 + 1.0;
            }

            else if ([@"POLARITY__COMMITMENT" isEqualToString:v15])
            {
              v16 = 0;
              goto LABEL_18;
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

        v16 = 1;
      }

      else
      {
        v16 = 1;
        v13 = 0.0;
      }

LABEL_18:

      if (v7)
      {
        v17 = v16;
      }

      else
      {
        v17 = 0;
      }

      if (v13 > 0.0)
      {
        LOBYTE(isSent) = v17;
      }

      else
      {
        LOBYTE(isSent) = 0;
      }
    }

    else
    {
      LOBYTE(isSent) = 0;
    }
  }

  return isSent;
}

- (BOOL)isConfirmation
{
  v29 = *MEMORY[0x277D85DE8];
  if (![(SGMessage *)self->_message isSent])
  {
    return 0;
  }

  modelOutput = [(SGExtractionDocument *)self modelOutput];

  if (!modelOutput)
  {
    return 0;
  }

  modelOutput2 = [(SGExtractionDocument *)self modelOutput];
  v5 = [modelOutput2 objectForKeyedSubscript:@"polarity"];
  v23 = objc_msgSend_count(v5);

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  modelOutput3 = [(SGExtractionDocument *)self modelOutput];
  v7 = [modelOutput3 objectForKeyedSubscript:@"polarity"];

  v8 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if ([@"POLARITY__COMMITMENT" isEqualToString:v13])
        {
          v11 = v11 + 1.0;
        }

        else if ([@"POLARITY__REJECTION" isEqualToString:v13] & 1) != 0 || (objc_msgSend(@"POLARITY__DONE", "isEqualToString:", v13))
        {
          goto LABEL_20;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v9);

    if (v11 > 0.0 && v23 != 0)
    {
      return 1;
    }
  }

  else
  {
LABEL_20:
  }

  v16 = +[SGReminderExtractionModel sharedInstance];
  reminderOverrides = [v16 reminderOverrides];

  v15 = 0;
  if (reminderOverrides)
  {
    textContent = [(SGMessage *)self->_message textContent];
    CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
    v19 = _PASRemoveCharacterSet();
    localizedLowercaseString = [v19 localizedLowercaseString];

    v21 = [reminderOverrides objectForKeyedSubscript:@"confirmation"];
    LOBYTE(v19) = [v21 containsObject:localizedLowercaseString];

    if (v19)
    {
      v15 = 1;
    }
  }

  return v15;
}

- (SGReminderMessage)initWithMessage:(id)message plainTextDetectedData:(id)data enrichedTaggedCharacterRanges:(id)ranges modelOutput:(id)output
{
  messageCopy = message;
  dataCopy = data;
  v16.receiver = self;
  v16.super_class = SGReminderMessage;
  v13 = [(SGExtractionDocument *)&v16 initWithEnrichedTaggedCharacterRanges:ranges modelOutput:output];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_message, message);
    objc_storeStrong(&v14->_plainTextDetectedData, data);
  }

  return v14;
}

- (SGReminderMessage)initWithMessage:(id)message entity:(id)entity enrichedTaggedCharacterRanges:(id)ranges modelOutput:(id)output
{
  messageCopy = message;
  entityCopy = entity;
  v18.receiver = self;
  v18.super_class = SGReminderMessage;
  v13 = [(SGExtractionDocument *)&v18 initWithEnrichedTaggedCharacterRanges:ranges modelOutput:output];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_message, message);
    objc_storeStrong(&v14->_entity, entity);
    plainTextDetectedData = [messageCopy plainTextDetectedData];
    plainTextDetectedData = v14->_plainTextDetectedData;
    v14->_plainTextDetectedData = plainTextDetectedData;
  }

  return v14;
}

+ (id)searchTokensForReminderTitle:(id)title
{
  v41 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  v5 = +[SGPOSTagger sharedInstance];
  v25 = titleCopy;
  v6 = [v5 tokenizeTextContent:titleCopy languageHint:0];

  v30 = objc_opt_new();
  posTaggerNouns = [self posTaggerNouns];
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v36;
    v26 = *v36;
    do
    {
      v11 = 0;
      v27 = v9;
      do
      {
        if (*v36 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v35 + 1) + 8 * v11);
        if ([v12 annotationType] == 2)
        {
          v29 = v11;
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          tags = [v12 tags];
          v14 = [tags countByEnumeratingWithState:&v31 objects:v39 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v32;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v32 != v16)
                {
                  objc_enumerationMutation(tags);
                }

                v18 = *(*(&v31 + 1) + 8 * i);
                v19 = objc_alloc(MEMORY[0x277CCACA8]);
                annotationTypeUniqueIdentifier = [v12 annotationTypeUniqueIdentifier];
                v21 = [v19 initWithFormat:@"%@_%@", annotationTypeUniqueIdentifier, v18];
                LODWORD(v18) = [posTaggerNouns containsObject:v21];

                if (v18)
                {
                  text = [v12 text];
                  [v30 addObject:text];
                }
              }

              v15 = [tags countByEnumeratingWithState:&v31 objects:v39 count:16];
            }

            while (v15);
          }

          v10 = v26;
          v9 = v27;
          v11 = v29;
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v9);
  }

  allObjects = [v30 allObjects];

  return allObjects;
}

+ (BOOL)excludedContent:(id)content
{
  contentCopy = content;
  if ([contentCopy length])
  {
    excludeList = [self excludeList];
    v6 = [self regexFromJoinedArray:excludeList wordBoundary:0];

    if (!v6 || (v8 = 1, [v6 rangeOfFirstMatchInString:contentCopy options:0 range:{0, objc_msgSend(contentCopy, "length")}] == 0x7FFFFFFFFFFFFFFFLL) && !v7)
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)regexFromJoinedArray:(id)array wordBoundary:(id)boundary
{
  arrayCopy = array;
  boundaryCopy = boundary;
  v7 = boundaryCopy;
  if (boundaryCopy)
  {
    v8 = boundaryCopy;
  }

  else
  {
    v8 = &stru_284703F00;
  }

  v9 = v8;
  if (objc_msgSend_count(arrayCopy))
  {
    context = objc_autoreleasePoolPush();
    v10 = objc_opt_new();
    objc_msgSend(v10, "appendString:", @"(?:");
    if (objc_msgSend_count(arrayCopy))
    {
      v11 = 0;
      do
      {
        v12 = objc_autoreleasePoolPush();
        v13 = [arrayCopy objectAtIndexedSubscript:v11];
        v14 = v13;
        if (v11)
        {
          v15 = @"|";
        }

        else
        {
          v15 = &stru_284703F00;
        }

        [v10 appendFormat:@"%@%@%@%@", v15, v9, v13, v9];

        objc_autoreleasePoolPop(v12);
        ++v11;
      }

      while (objc_msgSend_count(arrayCopy) > v11);
    }

    [v10 appendString:@""]);
    v16 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:v10 options:1 error:0];

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)titlePrefixTokens
{
  v2 = +[SGReminderExtractionModel sharedInstance];
  reminderOverrides = [v2 reminderOverrides];

  if (reminderOverrides)
  {
    v4 = [reminderOverrides objectForKeyedSubscript:@"titlePrefix"];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

+ (id)excludeList
{
  v2 = +[SGReminderExtractionModel sharedInstance];
  reminderOverrides = [v2 reminderOverrides];

  if (reminderOverrides)
  {
    v4 = [reminderOverrides objectForKeyedSubscript:@"excludeList"];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

+ (id)confirmationOptionalTokens
{
  v2 = +[SGReminderExtractionModel sharedInstance];
  reminderOverrides = [v2 reminderOverrides];

  if (reminderOverrides)
  {
    v4 = [reminderOverrides objectForKeyedSubscript:@"confirmationOptional"];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

+ (id)triggerOptionalTokens
{
  v2 = +[SGReminderExtractionModel sharedInstance];
  reminderOverrides = [v2 reminderOverrides];

  if (reminderOverrides)
  {
    v4 = [reminderOverrides objectForKeyedSubscript:@"triggerOptional"];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

+ (BOOL)enrichedTaggedCharacterRangesContainsProfanity:(id)profanity
{
  v3 = sgMapAndFilter();
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];
  v6 = [SGLexicon profanityInTokens:v3 forLocaleIdentifier:localeIdentifier];

  return v6;
}

id __68__SGReminderMessage_enrichedTaggedCharacterRangesContainsProfanity___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [v2 tags];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 hasPrefix:@"L_"])
        {
          v10 = objc_autoreleasePoolPush();
          v11 = [v9 substringFromIndex:2];

          objc_autoreleasePoolPop(v10);
          v6 = v11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)validModelOutput:(id)output error:(id *)error
{
  v67 = *MEMORY[0x277D85DE8];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = output;
  v42 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
  v4 = 0;
  hasTrigger = 0;
  if (v42)
  {
    v49 = 0;
    v6 = 0;
    LOBYTE(v7) = 0;
    v41 = *v59;
    v8 = 1;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v59 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v58 + 1) + 8 * v9);
        modelOutput = [v10 modelOutput];

        if (!modelOutput)
        {
          v27 = obj;
          goto LABEL_47;
        }

        v46 = v9;
        v47 = v10;
        if (v7)
        {
          v7 = 1;
        }

        else
        {
          v56 = 0u;
          v57 = 0u;
          v54 = 0u;
          v55 = 0u;
          modelOutput2 = [v10 modelOutput];
          v13 = [modelOutput2 objectForKeyedSubscript:@"polarity"];

          v14 = [v13 countByEnumeratingWithState:&v54 objects:v65 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = hasTrigger;
            v17 = *v55;
            while (2)
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v55 != v17)
                {
                  objc_enumerationMutation(v13);
                }

                if (![*(*(&v54 + 1) + 8 * i) isEqualToString:@"NONE"])
                {
                  v7 = 1;
                  goto LABEL_19;
                }
              }

              v15 = [v13 countByEnumeratingWithState:&v54 objects:v65 count:16];
              if (v15)
              {
                continue;
              }

              break;
            }

            v7 = 0;
LABEL_19:
            LOBYTE(hasTrigger) = v16;
          }

          else
          {
            v7 = 0;
          }

          v10 = v47;
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        modelOutput3 = [v10 modelOutput];
        v20 = [modelOutput3 objectForKeyedSubscript:@"title"];

        v21 = [v20 countByEnumeratingWithState:&v50 objects:v64 count:16];
        if (v21)
        {
          v22 = v21;
          v43 = v7;
          v44 = hasTrigger;
          v45 = v8;
          LODWORD(hasTrigger) = 0;
          v23 = *v51;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v51 != v23)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v50 + 1) + 8 * j);
              if ([v25 isEqualToString:@"NONE"])
              {
                v4 = 1;
              }

              else if ([v25 isEqualToString:@"EXTRACTION__REMINDER_TITLE_ACTION_VERB"])
              {
                LODWORD(hasTrigger) = hasTrigger + 1;
                v49 = 1;
              }

              else
              {
                v6 |= [v25 isEqualToString:@"EXTRACTION__REMINDER_TITLE_ACTION_OBJECT_CORE"];
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v50 objects:v64 count:16];
          }

          while (v22);

          v26 = hasTrigger < 2;
          LOBYTE(hasTrigger) = v44;
          v8 = v26 & v45;
          v7 = v43;
        }

        else
        {
        }

        if (hasTrigger)
        {
          hasTrigger = 1;
        }

        else
        {
          hasTrigger = [v47 hasTrigger];
        }

        v9 = v46 + 1;
      }

      while (v46 + 1 != v42);
      v42 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v42)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v49 = 0;
    LOBYTE(v6) = 0;
    v7 = 0;
    LOBYTE(v8) = 1;
  }

  v28 = v7 & v4 & hasTrigger & v8 & v49 & v6;
  if (error && ((v7 & v4 & hasTrigger & v8 & v49) & v6 & 1) == 0)
  {
    v48 = MEMORY[0x277CCA9B8];
    v29 = *MEMORY[0x277D02208];
    v62[0] = @"hasPolarity:";
    v27 = [MEMORY[0x277CCABB0] numberWithBool:v7];
    v63[0] = v27;
    v62[1] = @"hasTitle";
    v30 = [MEMORY[0x277CCABB0] numberWithBool:v4 & 1];
    v31 = hasTrigger;
    v32 = v30;
    v63[1] = v30;
    v62[2] = @"hasTrigger";
    v33 = [MEMORY[0x277CCABB0] numberWithBool:v31];
    v63[2] = v33;
    v62[3] = @"hasCorrectNumberOfActionVerbs";
    v34 = [MEMORY[0x277CCABB0] numberWithBool:v8 & 1];
    v63[3] = v34;
    v62[4] = @"hasActionVerb";
    v35 = [MEMORY[0x277CCABB0] numberWithBool:v49 & 1];
    v63[4] = v35;
    v62[5] = @"hasObjectCore";
    v36 = [MEMORY[0x277CCABB0] numberWithBool:v6 & 1];
    v63[5] = v36;
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:v62 count:6];
    *error = [v48 errorWithDomain:v29 code:9 userInfo:v37];

LABEL_47:
    v28 = 0;
  }

  return v28;
}

+ (id)posTaggerNouns
{
  v2 = objc_autoreleasePoolPush();
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"I_NN", @"I_NNP", @"I_Noun", @"I_NNS", @"I_NNPS", 0}];
  objc_autoreleasePoolPop(v2);

  return v3;
}

+ (BOOL)validObjectCoreIndexRange:(_NSRange)range enrichedTaggedCharacterRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  v21 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  posTaggerNouns = [self posTaggerNouns];
  v9 = location + length;
  if (location >= location + length)
  {
    LOBYTE(v12) = 0;
  }

  else
  {
    do
    {
      v10 = [rangesCopy objectAtIndexedSubscript:location];
      v16 = 0u;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      tags = [v10 tags];
      v12 = [tags countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v12)
      {
        v13 = *v17;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v17 != v13)
            {
              objc_enumerationMutation(tags);
            }

            if ([posTaggerNouns containsObject:*(*(&v16 + 1) + 8 * i)])
            {
              LOBYTE(v12) = 1;
              goto LABEL_12;
            }
          }

          v12 = [tags countByEnumeratingWithState:&v16 objects:v20 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_12:

      ++location;
    }

    while (location < v9 && (v12 & 1) == 0);
  }

  return v12;
}

+ (BOOL)validActionVerbIndexRange:(_NSRange)range enrichedTaggedCharacterRanges:(id)ranges
{
  length = range.length;
  location = range.location;
  v33 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  v6 = objc_autoreleasePoolPush();
  v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"I_VB", @"I_VBP", @"I_VBN", @"I_VBG", @"I_Verb", 0}];
  objc_autoreleasePoolPop(v6);
  v23 = location + length;
  if (location < location + length)
  {
    v22 = 0;
    while (1)
    {
      v8 = [rangesCopy objectAtIndexedSubscript:location];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      tags = [v8 tags];
      v10 = [tags countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (!v10)
      {
        break;
      }

      v11 = v10;
      v25 = location;
      v26 = v8;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      v15 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(tags);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          if ([v17 isEqualToString:@"R_action"])
          {
            v12 = 1;
          }

          else if ([v7 containsObject:v17])
          {
            v13 = 1;
          }

          else
          {
            v14 |= [v17 isEqualToString:@"I_RP"];
          }
        }

        v11 = [tags countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v11);

      if (v12 & v13)
      {
        ++HIDWORD(v22);
        v8 = v26;
      }

      else
      {
        v8 = v26;
        if ((v14 & 1) == 0)
        {
          goto LABEL_27;
        }

        LODWORD(v22) = v22 + 1;
      }

      location = v25 + 1;
      if (v25 + 1 == v23)
      {
        v19 = HIDWORD(v22) == 1 && v22 < 2;
        goto LABEL_31;
      }
    }

LABEL_27:
    v20 = sgRemindersLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_231E60000, v20, OS_LOG_TYPE_DEBUG, "SGReminderMessage: No whitelisted action verb or particle actionVerbTokenIndexes", buf, 2u);
    }
  }

  v19 = 0;
LABEL_31:

  return v19;
}

+ (id)frenchPrependForEnrichedTaggedCharacterRanges:(id)ranges actionVerbIndexRange:(_NSRange)range
{
  location = range.location;
  rangesCopy = ranges;
  v6 = rangesCopy;
  if (location >= 2)
  {
    v7 = [rangesCopy objectAtIndexedSubscript:location - 1];
    tags = [v7 tags];
    if (![tags containsObject:@"I_PRP"])
    {
      v16 = 0;
LABEL_11:

      goto LABEL_14;
    }

    v9 = [v6 objectAtIndexedSubscript:location - 2];
    tags2 = [v9 tags];
    if ([tags2 containsObject:@"I_PRP"])
    {
      goto LABEL_6;
    }

    v11 = [v6 objectAtIndexedSubscript:location - 2];
    tags3 = [v11 tags];
    if ([tags3 containsObject:@"L_de"])
    {

LABEL_6:
LABEL_7:
      v7 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"aeiouyhé"];
      tags = [v6 objectAtIndexedSubscript:location];
      text = [tags text];
      v14 = [v7 characterIsMember:{objc_msgSend(text, "characterAtIndex:", 0)}];
      v15 = @"se ";
      if (v14)
      {
        v15 = @"s'";
      }

      v16 = v15;

      goto LABEL_11;
    }

    v17 = [v6 objectAtIndexedSubscript:location - 2];
    text2 = [v17 text];
    v20 = [text2 isEqualToString:@"à"];

    if (v20)
    {
      goto LABEL_7;
    }
  }

  v16 = 0;
LABEL_14:

  return v16;
}

+ (id)titlePrependForActionVerbIndexRange:(_NSRange)range enrichedTaggedCharacterRanges:(id)ranges language:(id)language content:(id)content
{
  length = range.length;
  location = range.location;
  rangesCopy = ranges;
  languageCopy = language;
  contentCopy = content;
  if (languageCopy && [languageCopy isEqualToString:@"fr"] && objc_msgSend(self, "shouldAddTitlePrefixForContent:", contentCopy))
  {
    v14 = [self frenchPrependForEnrichedTaggedCharacterRanges:rangesCopy actionVerbIndexRange:{location, length}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)detectedTitleInModelOutput:(id)output enrichedTaggedCharacterRanges:(id)ranges textContent:(id)content language:(id)language
{
  v77 = *MEMORY[0x277D85DE8];
  outputCopy = output;
  rangesCopy = ranges;
  contentCopy = content;
  languageCopy = language;
  v14 = 0;
  if (outputCopy && rangesCopy)
  {
    if ([self enrichedTaggedCharacterRangesContainsProfanity:rangesCopy])
    {
      v14 = 0;
      goto LABEL_48;
    }

    v58 = [self labelTokenIndexesForOutputName:@"title" label:@"EXTRACTION__REMINDER_TITLE_ACTION_VERB" modelOutput:outputCopy];
    if (!objc_msgSend_count(v58))
    {
      v14 = 0;
LABEL_47:

      goto LABEL_48;
    }

    v57 = [self labelTokenIndexesForOutputName:@"title" label:@"EXTRACTION__REMINDER_TITLE_ACTION_OBJECT_CORE" modelOutput:outputCopy];
    if (!objc_msgSend_count(v57))
    {
      v14 = 0;
LABEL_46:

      goto LABEL_47;
    }

    v15 = [self firstRangeInIndexSet:v58];
    v17 = v16;
    if ([self validActionVerbIndexRange:v15 enrichedTaggedCharacterRanges:{v16, rangesCopy}])
    {
      v18 = [self firstRangeInIndexSet:v57];
      v55 = v19;
      if ([self validObjectCoreIndexRange:v18 enrichedTaggedCharacterRanges:{v19, rangesCopy}])
      {
        context = objc_autoreleasePoolPush();
        v54 = v18;
        if (v15 >= v18)
        {
          v33 = objc_opt_new();
          v71 = 0u;
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v34 = objc_autoreleasePoolPush();
          v35 = [rangesCopy subarrayWithRange:{v15, v17}];
          objc_autoreleasePoolPop(v34);
          v36 = [v35 countByEnumeratingWithState:&v71 objects:v76 count:16];
          if (v36)
          {
            v37 = *v72;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v72 != v37)
                {
                  objc_enumerationMutation(v35);
                }

                text = [*(*(&v71 + 1) + 8 * i) text];
                [v33 addObject:text];
              }

              v36 = [v35 countByEnumeratingWithState:&v71 objects:v76 count:16];
            }

            while (v36);
          }

          v69 = 0u;
          v70 = 0u;
          v67 = 0u;
          v68 = 0u;
          v40 = objc_autoreleasePoolPush();
          v41 = [rangesCopy subarrayWithRange:{v54, v55}];
          objc_autoreleasePoolPop(v40);
          v42 = [v41 countByEnumeratingWithState:&v67 objects:v75 count:16];
          if (v42)
          {
            v43 = *v68;
            do
            {
              for (j = 0; j != v42; ++j)
              {
                if (*v68 != v43)
                {
                  objc_enumerationMutation(v41);
                }

                text2 = [*(*(&v67 + 1) + 8 * j) text];
                [v33 addObject:text2];
              }

              v42 = [v41 countByEnumeratingWithState:&v67 objects:v75 count:16];
            }

            while (v42);
          }

          v30 = [v33 _pas_componentsJoinedByString:@" "];

          objc_autoreleasePoolPop(context);
        }

        else
        {
          v20 = [rangesCopy objectAtIndexedSubscript:v15];
          range = [v20 range];

          v22 = [rangesCopy objectAtIndexedSubscript:v55 + v54 - 1];
          range2 = [v22 range];
          [v22 range];
          v56 = v24;
          v25 = [self titlePrependForActionVerbIndexRange:v15 enrichedTaggedCharacterRanges:v17 language:rangesCopy content:{languageCopy, contentCopy}];
          v26 = range;
          v27 = range2 - range;
          if (v25)
          {
            v28 = objc_alloc(MEMORY[0x277CCACA8]);
            v29 = [contentCopy substringWithRange:{v26, v27 + v56}];
            v30 = [v28 initWithFormat:@"%@%@", v25, v29];
          }

          else
          {
            v30 = [contentCopy substringWithRange:{v26, v27 + v56}];
          }

          objc_autoreleasePoolPop(context);
        }

        if (!v30)
        {
          v31 = 0;
          goto LABEL_40;
        }

        v46 = objc_autoreleasePoolPush();
        v47 = [v30 mutableCopy];
        v48 = [v30 length];
        v65[0] = MEMORY[0x277D85DD0];
        v65[1] = 3221225472;
        v65[2] = __99__SGReminderMessage_detectedTitleInModelOutput_enrichedTaggedCharacterRanges_textContent_language___block_invoke;
        v65[3] = &unk_27894F8D0;
        v49 = v47;
        v66 = v49;
        [v49 enumerateSubstringsInRange:0 options:v48 usingBlock:{1027, v65}];
        v31 = v49;

        *buf = 0;
        v62 = buf;
        v63 = 0x2020000000;
        v64 = 0;
        v50 = [v31 length];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __99__SGReminderMessage_detectedTitleInModelOutput_enrichedTaggedCharacterRanges_textContent_language___block_invoke_2;
        v60[3] = &unk_27894F8F8;
        v60[4] = buf;
        [v31 enumerateSubstringsInRange:0 options:v50 usingBlock:2, v60];
        if (*(v62 + 6) < 81)
        {
          _Block_object_dispose(buf, 8);

          objc_autoreleasePoolPop(v46);
LABEL_40:
          v31 = v31;
          v14 = v31;
LABEL_45:

          goto LABEL_46;
        }

        v51 = sgRemindersLogHandle();
        if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
        {
          *v59 = 0;
          _os_log_error_impl(&dword_231E60000, v51, OS_LOG_TYPE_ERROR, "SGReminderMessage: Title has too many characters", v59, 2u);
        }

        _Block_object_dispose(buf, 8);
        objc_autoreleasePoolPop(v46);
LABEL_44:
        v14 = 0;
        goto LABEL_45;
      }

      v31 = sgRemindersLogHandle();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_44;
      }

      *buf = 0;
      v32 = "SGReminderMessage: No NN, NNP in objectCoreIndexRange";
    }

    else
    {
      v31 = sgRemindersLogHandle();
      if (!os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_44;
      }

      *buf = 0;
      v32 = "SGReminderMessage: No VB in actionVerbIndexRange";
    }

    _os_log_debug_impl(&dword_231E60000, v31, OS_LOG_TYPE_DEBUG, v32, buf, 2u);
    goto LABEL_44;
  }

LABEL_48:

  return v14;
}

void __99__SGReminderMessage_detectedTitleInModelOutput_enrichedTaggedCharacterRanges_textContent_language___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v14 = a2;
  v11 = *(a1 + 32);
  v12 = objc_autoreleasePoolPush();
  v13 = [v14 localizedCapitalizedString];
  objc_autoreleasePoolPop(v12);
  [v11 replaceCharactersInRange:a3 withString:{a4, v13}];

  *a7 = 1;
}

uint64_t __99__SGReminderMessage_detectedTitleInModelOutput_enrichedTaggedCharacterRanges_textContent_language___block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  if (++*(*(*(result + 32) + 8) + 24) >= 81)
  {
    *a7 = 1;
  }

  return result;
}

+ (BOOL)tokensMatchedInContent:(id)content content:(id)a4
{
  v6 = a4;
  v7 = [self regexFromJoinedArray:content wordBoundary:0];
  if (!v7 || (v9 = 1, [v7 rangeOfFirstMatchInString:v6 options:0 range:{0, objc_msgSend(v6, "length")}] == 0x7FFFFFFFFFFFFFFFLL) && !v8)
  {
    v9 = 0;
  }

  return v9;
}

+ (BOOL)shouldAddTitlePrefixForContent:(id)content
{
  contentCopy = content;
  titlePrefixTokens = [self titlePrefixTokens];
  LOBYTE(self) = [self tokensMatchedInContent:titlePrefixTokens content:contentCopy];

  return self;
}

+ (BOOL)isConfirmationOptionalForContent:(id)content
{
  contentCopy = content;
  confirmationOptionalTokens = [self confirmationOptionalTokens];
  LOBYTE(self) = [self tokensMatchedInContent:confirmationOptionalTokens content:contentCopy];

  return self;
}

@end