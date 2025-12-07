@interface SGDetectedAttributeMetrics
+ (id)instance;
+ (id)nameForDataDetectorMatch:(id)match withValue:(id)value;
+ (id)tokenizeMessageContent:(id)content;
+ (void)_recordExtractionEventFromSource:(SGMDocumentType_)source foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature detailType:(SGMContactDetailType_)type outcome:(SGMContactDetailExtractionOutcome_)outcome foundInCNContact:(SGMContactDetailOwner_)contact modelVersion:(id)version isUnlikelyPhone:(BOOL)self0 sigSource:(SGMContactDetailExtractionSignatureSource_)self1;
+ (void)_recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome detailType:(SGMContactDetailType_)type fromMessage:(id)message foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature detailType:(unint64_t)detailType detailValue:(id)value modelVersion:(id)self0 isUnlikelyPhone:(BOOL)self1;
+ (void)recordBirthdayExtractionAccuracy:(unsigned __int8)accuracy withOffset:(id)offset withModelVersion:(id)version isFromCongratulation:(unsigned __int8)congratulation didRegexTrigger:(unsigned __int8)trigger didResponseKitTrigger:(unsigned __int8)kitTrigger;
+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome forDetectionsInMessage:(id)message signatureRange:(_NSRange)range isDDSignature:(BOOL)signature;
+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome fromMessage:(id)message foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature detection:(id)detection;
+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome fromMessage:(id)message foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature match:(id)match foundInCNContact:(SGMContactDetailOwner_)contact modelVersion:(id)version isUnlikelyPhone:(BOOL)self0;
+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome fromMessage:(id)message foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature match:(id)match modelVersion:(id)version isUnlikelyPhone:(BOOL)phone;
+ (void)recordSelfIdModelScore:(BOOL)score model:(int)model supervision:(int)supervision;
+ (void)recordSentContactDetailWithMessage:(id)message match:(id)match found:(SGMContactDetailFoundIn_)found;
- (SGDetectedAttributeMetrics)initWithTracker:(id)tracker;
@end

@implementation SGDetectedAttributeMetrics

- (SGDetectedAttributeMetrics)initWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v8.receiver = self;
  v8.super_class = SGDetectedAttributeMetrics;
  v5 = [(SGDetectedAttributeMetrics *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SGDetectedAttributeMetrics *)v5 setPet2Tracker:trackerCopy];
  }

  return v6;
}

+ (void)recordSentContactDetailWithMessage:(id)message match:(id)match found:(SGMContactDetailFoundIn_)found
{
  v47 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  matchCopy = match;
  if ([messageCopy senderIsAccountOwner])
  {
    textContent = [messageCopy textContent];
    valueRange = [matchCopy valueRange];
    v13 = [textContent stringByReplacingCharactersInRange:valueRange withString:{v12, @"DDMATCH"}];

    v14 = [self tokenizeMessageContent:v13];
    v15 = objc_msgSend_count(v14);
    if (v15 <= 1)
    {
      if (!v15)
      {
LABEL_34:

        goto LABEL_35;
      }

      if (v15 == 1)
      {
        v16 = MEMORY[0x277D02398];
        goto LABEL_12;
      }
    }

    else
    {
      if (v15 == 4 || v15 == 3)
      {
        v16 = MEMORY[0x277D023A8];
        goto LABEL_12;
      }

      if (v15 == 2)
      {
        v16 = MEMORY[0x277D023A0];
LABEL_12:
        v41 = *v16;
        v17 = *MEMORY[0x277D02410];
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v18 = v14;
        v19 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v19)
        {
          v20 = v19;
          selfCopy = self;
          v39 = v17;
          v37 = v13;
          v21 = *v43;
LABEL_14:
          v22 = 0;
          while (1)
          {
            if (*v43 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v42 + 1) + 8 * v22);
            if ([v23 isEqualToString:@"DDMATCH"])
            {
              goto LABEL_21;
            }

            if (([SGNames attributesForNameWord:v23]& 4) != 0)
            {
              break;
            }

            if (v20 == ++v22)
            {
              v20 = [v18 countByEnumeratingWithState:&v42 objects:v46 count:16];
              if (v20)
              {
                goto LABEL_14;
              }

LABEL_21:
              v13 = v37;
              self = selfCopy;
              v17 = v39;
              goto LABEL_23;
            }
          }

          v17 = *MEMORY[0x277D02418];
          v13 = v37;
          self = selfCopy;
        }

LABEL_23:

        if (*MEMORY[0x277D02270] == found.var0)
        {
          v24 = objc_autoreleasePoolPush();
          valueString = [matchCopy valueString];
          v26 = valueString;
          if (valueString)
          {
            v27 = valueString;
          }

          else
          {
            [messageCopy textContent];
            v28 = v40 = v17;
            valueRange2 = [matchCopy valueRange];
            v27 = [v28 substringWithRange:{valueRange2, v30}];

            v17 = v40;
          }

          v31 = [self nameForDataDetectorMatch:matchCopy withValue:v27];
          if (v31)
          {
            found.var0 = *MEMORY[0x277D02288];
          }

          objc_autoreleasePoolPop(v24);
        }

        v32 = objc_opt_new();
        [v32 setSource:*MEMORY[0x277D02330]];
        matchType = [matchCopy matchType];
        if (matchType > 2)
        {
          v34 = MEMORY[0x277D022B8];
        }

        else
        {
          v34 = qword_27894B638[matchType];
        }

        [v32 setDetail:*v34];
        [v32 setFoundIn:found.var0];
        [v32 setHasName:v17 != 0];
        [v32 setTokens:v41];
        instance = [self instance];
        pet2Tracker = [instance pet2Tracker];
        [pet2Tracker trackScalarForMessage:v32];

        goto LABEL_34;
      }
    }

    v16 = MEMORY[0x277D023B0];
    goto LABEL_12;
  }

LABEL_35:
}

+ (id)tokenizeMessageContent:(id)content
{
  contentCopy = content;
  v4 = objc_opt_new();
  v5 = [contentCopy length];
  v6 = *MEMORY[0x277CCA3F0];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__SGDetectedAttributeMetrics_tokenizeMessageContent___block_invoke;
  v12[3] = &unk_27894B5F8;
  v7 = v4;
  v13 = v7;
  v14 = contentCopy;
  v8 = contentCopy;
  [v8 enumerateLinguisticTagsInRange:0 scheme:v5 options:v6 orthography:6 usingBlock:{0, v12}];
  v9 = v14;
  v10 = v7;

  return v7;
}

void __53__SGDetectedAttributeMetrics_tokenizeMessageContent___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v10 = a2;
  v7 = *(a1 + 32);
  v8 = objc_autoreleasePoolPush();
  v9 = [*(a1 + 40) substringWithRange:{a3, a4}];
  objc_autoreleasePoolPop(v8);
  [v7 addObject:v9];
}

+ (id)nameForDataDetectorMatch:(id)match withValue:(id)value
{
  valueCopy = value;
  matchType = [match matchType];
  if (matchType == 2)
  {
    v7 = SGNormalizeEmailAddress();
    v8 = 1;
    goto LABEL_5;
  }

  if (!matchType)
  {
    v7 = SGNormalizePhoneNumber();
    v8 = 0;
LABEL_5:
    v9 = +[SGSqlEntityStore defaultHarvestStore];
    kvCacheManager = [v9 kvCacheManager];
    v11 = [kvCacheManager cacheOfType:v8];

    v12 = [v11 valueForKey:v7];

    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:

  return v12;
}

+ (void)recordSelfIdModelScore:(BOOL)score model:(int)model supervision:(int)supervision
{
  v5 = *&supervision;
  v6 = *&model;
  scoreCopy = score;
  v16 = objc_opt_new();
  [v16 setModel:v6];
  [v16 setResult:scoreCopy];
  [v16 setSupervision:v5];
  instance = [self instance];
  pet2Tracker = [instance pet2Tracker];
  [pet2Tracker trackScalarForMessage:v16];

  v11 = objc_alloc(MEMORY[0x277CCACA8]);
  v12 = *MEMORY[0x277D02468];
  v13 = [v16 key];
  v14 = [v11 initWithFormat:@"%@.%@", v12, v13];

  dictionaryRepresentation = [v16 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (void)recordBirthdayExtractionAccuracy:(unsigned __int8)accuracy withOffset:(id)offset withModelVersion:(id)version isFromCongratulation:(unsigned __int8)congratulation didRegexTrigger:(unsigned __int8)trigger didResponseKitTrigger:(unsigned __int8)kitTrigger
{
  kitTriggerCopy = kitTrigger;
  triggerCopy = trigger;
  congratulationCopy = congratulation;
  accuracyCopy = accuracy;
  versionCopy = version;
  offsetCopy = offset;
  v15 = objc_opt_new();
  [v15 setDateIsCorrect:accuracyCopy != 0];
  [v15 setIsFromCongratulation:congratulationCopy != 0];
  v16 = [v15 StringAsOffset:offsetCopy];

  [v15 setOffset:v16];
  [v15 setDidRegexTrigger:triggerCopy != 0];
  if (versionCopy)
  {
    [v15 setModelVersion:{objc_msgSend(versionCopy, "unsignedIntValue")}];
  }

  [v15 setDidResponseKitTrigger:kitTriggerCopy != 0];
  instance = [self instance];
  pet2Tracker = [instance pet2Tracker];
  [pet2Tracker trackScalarForMessage:v15];

  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v20 = [v19 initWithFormat:@"%@.%@", *MEMORY[0x277D02468], @"birthdaySupervision"];
  dictionaryRepresentation = [v15 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome forDetectionsInMessage:(id)message signatureRange:(_NSRange)range isDDSignature:(BOOL)signature
{
  signatureCopy = signature;
  v28 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  [messageCopy plainTextDetectedData];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v20 = v26 = 0u;
  reverseObjectEnumerator = [v20 reverseObjectEnumerator];
  v10 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0x277D022B8];
    v13 = *v24;
    v14 = *MEMORY[0x277D022B8];
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        matchType = [v16 matchType];
        v18 = v12;
        if (matchType <= 2)
        {
          v18 = qword_27894B638[matchType];
        }

        if (*v18 != v14)
        {
          v29.location = [v16 range];
          LOBYTE(v19) = 0;
          [self recordExtractionOutcome:outcome.var0 fromMessage:messageCopy foundInSignature:NSIntersectionRange(v29 isDDSignature:range).length != 0 match:signatureCopy modelVersion:v16 isUnlikelyPhone:{&unk_284749248, v19}];
        }
      }

      v11 = [reverseObjectEnumerator countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }
}

+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome fromMessage:(id)message foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature match:(id)match foundInCNContact:(SGMContactDetailOwner_)contact modelVersion:(id)version isUnlikelyPhone:(BOOL)self0
{
  dSignatureCopy = dSignature;
  signatureCopy = signature;
  versionCopy = version;
  matchCopy = match;
  v18 = _sgmDocumentTypeOfMessage(message);
  matchType = [matchCopy matchType];

  if (matchType > 2)
  {
    v20 = MEMORY[0x277D022B8];
  }

  else
  {
    v20 = qword_27894B638[matchType];
  }

  v21 = *v20;
  v22 = MEMORY[0x277D02258];
  if (!dSignatureCopy)
  {
    v22 = MEMORY[0x277D02260];
  }

  if (!signatureCopy)
  {
    v22 = MEMORY[0x277D02268];
  }

  LOBYTE(v23) = phone;
  [self _recordExtractionEventFromSource:v18 foundInSignature:signatureCopy isDDSignature:dSignatureCopy detailType:v21 outcome:outcome.var0 foundInCNContact:contact.var0 modelVersion:versionCopy isUnlikelyPhone:v23 sigSource:*v22];
}

+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome fromMessage:(id)message foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature match:(id)match modelVersion:(id)version isUnlikelyPhone:(BOOL)phone
{
  dSignatureCopy = dSignature;
  signatureCopy = signature;
  messageCopy = message;
  matchCopy = match;
  versionCopy = version;
  valueString = [matchCopy valueString];
  if (valueString)
  {
    valueString2 = [matchCopy valueString];
  }

  else
  {
    var0 = outcome.var0;
    v19 = signatureCopy;
    v20 = dSignatureCopy;
    v21 = objc_autoreleasePoolPush();
    textContent = [messageCopy textContent];
    valueRange = [matchCopy valueRange];
    valueString2 = [textContent substringWithRange:{valueRange, v24}];

    v25 = v21;
    dSignatureCopy = v20;
    signatureCopy = v19;
    outcome.var0 = var0;
    objc_autoreleasePoolPop(v25);
  }

  matchType = [matchCopy matchType];
  if (matchType > 2)
  {
    v27 = MEMORY[0x277D022B8];
  }

  else
  {
    v27 = qword_27894B638[matchType];
  }

  v28 = *v27;
  matchType2 = [matchCopy matchType];
  if (matchType2 >= 3)
  {
    v30 = -1;
  }

  else
  {
    v30 = matchType2;
  }

  LOBYTE(v31) = phone;
  [self _recordExtractionOutcome:outcome.var0 detailType:v28 fromMessage:messageCopy foundInSignature:signatureCopy isDDSignature:dSignatureCopy detailType:v30 detailValue:valueString2 modelVersion:versionCopy isUnlikelyPhone:v31];
}

+ (void)recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome fromMessage:(id)message foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature detection:(id)detection
{
  dSignatureCopy = dSignature;
  signatureCopy = signature;
  detectionCopy = detection;
  messageCopy = message;
  type = [detectionCopy type];
  if (type > 3)
  {
    v14 = MEMORY[0x277D022B8];
  }

  else
  {
    v14 = qword_27894B618[type];
  }

  v15 = *v14;
  type2 = [detectionCopy type];
  if (type2 > 3)
  {
    v17 = -1;
  }

  else
  {
    v17 = qword_232106DD0[type2];
  }

  extraction = [detectionCopy extraction];
  extractionInfo = [detectionCopy extractionInfo];
  modelVersion = [extractionInfo modelVersion];
  LOBYTE(v21) = [detectionCopy isUnlikelyPhone];
  [self _recordExtractionOutcome:outcome.var0 detailType:v15 fromMessage:messageCopy foundInSignature:signatureCopy isDDSignature:dSignatureCopy detailType:v17 detailValue:extraction modelVersion:modelVersion isUnlikelyPhone:v21];
}

+ (void)_recordExtractionOutcome:(SGMContactDetailExtractionOutcome_)outcome detailType:(SGMContactDetailType_)type fromMessage:(id)message foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature detailType:(unint64_t)detailType detailValue:(id)value modelVersion:(id)self0 isUnlikelyPhone:(BOOL)self1
{
  dSignatureCopy = dSignature;
  signatureCopy = signature;
  messageCopy = message;
  valueCopy = value;
  versionCopy = version;
  if (![valueCopy length])
  {
    goto LABEL_17;
  }

  var0 = type.var0;
  v38 = outcome.var0;
  v18 = *MEMORY[0x277D02290];
  author = [messageCopy author];
  displayName = [author displayName];
  if (displayName)
  {
  }

  else
  {
    author2 = [messageCopy author];
    handles = [author2 handles];
    v23 = objc_msgSend_count(handles);

    if (!v23)
    {
      v25 = 0;
      goto LABEL_11;
    }
  }

  v24 = [SGContactPipelineHelper findContactsForDetailType:detailType andValue:valueCopy];
  v25 = v24;
  if (v24 && objc_msgSend_count(v24))
  {
    author3 = [messageCopy author];
    displayName2 = [author3 displayName];
    author4 = [messageCopy author];
    handles2 = [author4 handles];
    firstObject = [handles2 firstObject];
    v36 = [SGContactPipelineHelper personExistsInContacts:v25 name:displayName2 handle:firstObject];

    v31 = messageCopy;
    v32 = MEMORY[0x277D022A0];
    if (!v36)
    {
      v32 = MEMORY[0x277D02298];
    }

    v18 = *v32;
    goto LABEL_12;
  }

LABEL_11:
  v31 = messageCopy;
LABEL_12:
  v33 = _sgmDocumentTypeOfMessage(v31);
  v34 = MEMORY[0x277D02258];
  if (!dSignatureCopy)
  {
    v34 = MEMORY[0x277D02260];
  }

  if (!signatureCopy)
  {
    v34 = MEMORY[0x277D02268];
  }

  LOBYTE(v35) = phone;
  [self _recordExtractionEventFromSource:v33 foundInSignature:signatureCopy isDDSignature:dSignatureCopy detailType:var0 outcome:v38 foundInCNContact:v18 modelVersion:versionCopy isUnlikelyPhone:v35 sigSource:*v34];

LABEL_17:
}

+ (void)_recordExtractionEventFromSource:(SGMDocumentType_)source foundInSignature:(BOOL)signature isDDSignature:(BOOL)dSignature detailType:(SGMContactDetailType_)type outcome:(SGMContactDetailExtractionOutcome_)outcome foundInCNContact:(SGMContactDetailOwner_)contact modelVersion:(id)version isUnlikelyPhone:(BOOL)self0 sigSource:(SGMContactDetailExtractionSignatureSource_)self1
{
  signatureCopy = signature;
  versionCopy = version;
  v26 = objc_opt_new();
  [v26 setSource:source.var0];
  [v26 setSignature:signatureCopy];
  [v26 setDetail:type.var0];
  [v26 setOutcome:outcome.var0];
  [v26 setFoundInSenderCNContact:contact.var0];
  unsignedShortValue = [versionCopy unsignedShortValue];

  [v26 setExtractionModelVersion:unsignedShortValue];
  [v26 setIsUnlikelyPhone:phone];
  [v26 setExtractionSignatureSource:LODWORD(sigSource.var0)];
  instance = [self instance];
  pet2Tracker = [instance pet2Tracker];
  [pet2Tracker trackScalarForMessage:v26];

  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  v22 = *MEMORY[0x277D02468];
  v23 = [v26 key];
  v24 = [v21 initWithFormat:@"%@.%@", v22, v23];

  dictionaryRepresentation = [v26 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (id)instance
{
  if (instance_onceToken != -1)
  {
    dispatch_once(&instance_onceToken, &__block_literal_global_3552);
  }

  v3 = instance__instance;

  return v3;
}

void __38__SGDetectedAttributeMetrics_instance__block_invoke()
{
  v0 = [SGDetectedAttributeMetrics alloc];
  v3 = [MEMORY[0x277D41DA8] sharedInstance];
  v1 = [(SGDetectedAttributeMetrics *)v0 initWithTracker:v3];
  v2 = instance__instance;
  instance__instance = v1;
}

@end