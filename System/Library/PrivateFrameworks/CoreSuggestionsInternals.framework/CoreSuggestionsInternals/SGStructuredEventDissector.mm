@interface SGStructuredEventDissector
+ (BOOL)eventEnrichmentContainsReverseMappedTags:(id)tags;
+ (id)addressDictionaryForAddressComponents:(id)components;
+ (id)annotateContent:(id)content withLabel:(id)label forMatchingString:(id)string;
+ (id)annotationMatchingStringsForSubject:(id)subject;
+ (id)eventEnrichmentFromEntity:(id)entity;
+ (id)jsMessageLogsDictionaryForMailMessage:(id)message;
+ (id)jsMessageLogsDictionaryForPrivacyAwareLogs:(id)logs;
+ (id)labelsWithMatchingStringsForMailMessage:(id)message;
+ (id)mergeFallbackSchema:(id)schema parentEntity:(id)entity;
+ (id)nilEntities:(id)entities;
+ (id)outputLogsForClassification:(id)classification;
+ (id)plainTextStringsByLabelInTaggedCharacterRanges:(id)ranges inPlainText:(id)text;
+ (id)preprocessDomParserResult:(id)result subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings;
+ (id)preprocessWithoutXPCForHTML:(id)l subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings;
+ (id)schemaOrgAndMissingEntitiesForDUFoundInEvent:(id)event eventClassification:(id)classification fromSuggestTool:(BOOL)tool;
+ (id)schemaOrgAndMissingEntitiesForPreprocessed:(id)preprocessed eventClassification:(id)classification fromSuggestTool:(BOOL)tool;
+ (id)schemaOrgAndMissingEntitiesForPreprocessed:(id)preprocessed eventClassification:(id)classification fromSuggestTool:(BOOL)tool addressThreshold:(unint64_t)threshold pflTrainable:(BOOL)trainable hasEvent:(BOOL)event;
+ (id)schemaPostalAddressForPostalAddressExtraction:(id)extraction addressThreshold:(unint64_t)threshold;
+ (id)schemaStringForDateComponents:(id)components;
+ (id)schemaStringForEventStatus:(unsigned __int8)status;
+ (id)schemaStringForReservationStatus:(unsigned __int8)status;
+ (id)sharedInstance;
+ (id)tupleWithEntity:(id)entity label:(id)label;
+ (id)tupleWithError:(id)error label:(id)label;
+ (unint64_t)tokenCount:(id)count;
+ (unint64_t)tokenCountForPostalAddressComponents:(id)components;
+ (void)addSchemaAsEnrichment:(id)enrichment inMessage:(id)message parentEntity:(id)entity eventClassification:(id)classification mlDefaultExtraction:(BOOL)extraction;
+ (void)logFailedExtractionWithClassification:(id)classification missingEntities:(id)entities mlSummary:(id)summary shadowExtraction:(BOOL)extraction timingProcessingInMs:(unint64_t)ms forMessage:(id)message parentEntity:(id)entity;
+ (void)logMLExtractionForSchema:(id)schema mergedSchemaAndDiff:(id)diff parentEntity:(id)entity timingProcessingInMs:(unint64_t)ms eventClassification:(id)classification mailMessage:(id)message shadowExtraction:(BOOL)extraction mlDefaultExtraction:(BOOL)self0;
+ (void)logMLInteractions:(id)interactions context:(id)context mlDefaultExtraction:(BOOL)extraction;
- (id)preprocessHTML:(id)l subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings;
- (id)tagsWithModelOutputFromEnrichedTaggedCharacterRanges:(id)ranges;
- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context;
@end

@implementation SGStructuredEventDissector

- (id)tagsWithModelOutputFromEnrichedTaggedCharacterRanges:(id)ranges
{
  rangesCopy = ranges;
  v4 = +[SGStructuredEventExtractionModel sharedInstance];
  v5 = [v4 modelInferences:rangesCopy];

  if (v5)
  {
    v6 = [(SGExtractionModel *)SGStructuredEventExtractionModel enrichTaggedCharacterRangesWithModelOutput:v5 usingInputCharacterRanges:rangesCopy];
  }

  else
  {
    v7 = sgEventsLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_231E60000, v7, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: no extraction model inferences.", v9, 2u);
    }

    objc_autoreleasePoolPop(objc_autoreleasePoolPush());
    v6 = MEMORY[0x277CBEBF8];
  }

  return v6;
}

- (id)preprocessHTML:(id)l subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings
{
  stringsCopy = strings;
  categoryCopy = category;
  subjectCopy = subject;
  lCopy = l;
  v15 = objc_opt_new();
  v16 = [v15 parseHTML:lCopy];

  v17 = [objc_opt_class() preprocessDomParserResult:v16 subject:subjectCopy epoch:categoryCopy category:stringsCopy labelsWithMatchingStrings:epoch];

  return v17;
}

- (void)dissectMailMessage:(id)message entity:(id)entity context:(id)context
{
  v88 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  entityCopy = entity;
  contextCopy = context;
  context = objc_autoreleasePoolPush();
  v77 = mach_absolute_time();
  from = [messageCopy from];
  emailAddress = [from emailAddress];

  if (emailAddress)
  {
    v12 = +[SGStructuredEventExtractionModel sharedInstance];
    detectStructuredEventsML = [MEMORY[0x277D02098] detectStructuredEventsML];
    from2 = [messageCopy from];
    emailAddress2 = [from2 emailAddress];
    v16 = [v12 isSenderSupportedForExtraction:emailAddress2];

    from3 = [messageCopy from];
    emailAddress3 = [from3 emailAddress];
    LODWORD(emailAddress2) = [v12 isSenderSupportedForShadowExtraction:emailAddress3];

    from4 = [messageCopy from];
    emailAddress4 = [from4 emailAddress];
    v76 = [v12 isSenderSupportedForMLDefaultExtraction:emailAddress4];

    from5 = [messageCopy from];
    emailAddress5 = [from5 emailAddress];
    v23 = [v12 isSenderSupportedForPFLTraining:emailAddress5];

    v24 = sgEventsLogHandle();
    v25 = emailAddress2 & (detectStructuredEventsML ^ 1);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v26 = @"NO";
      if (v16)
      {
        v27 = @"YES";
      }

      else
      {
        v27 = @"NO";
      }

      if (v25)
      {
        v28 = @"YES";
      }

      else
      {
        v28 = @"NO";
      }

      *buf = 138412802;
      *&buf[4] = v27;
      *&buf[12] = 2112;
      *&buf[14] = v28;
      if (v23)
      {
        v26 = @"YES";
      }

      *&buf[22] = 2112;
      v85 = v26;
      _os_log_impl(&dword_231E60000, v24, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: extractionSupported: %@, shadowExtraction: %@, pflTraining: %@", buf, 0x20u);
    }

    if ((detectStructuredEventsML | v16 | v25))
    {
      if ([SGExtractionDissector emailIsForwardOrReply:messageCopy])
      {
        v29 = sgEventsLogHandle();
        if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
LABEL_20:

          goto LABEL_21;
        }

        *buf = 0;
        v30 = "SGStructuredEventDissector: ignoring Forwarded / Reply email";
LABEL_16:
        _os_log_impl(&dword_231E60000, v29, OS_LOG_TYPE_DEFAULT, v30, buf, 2u);
        goto LABEL_20;
      }

      htmlBody = [messageCopy htmlBody];
      v32 = htmlBody == 0;

      if (v32)
      {
        v29 = sgEventsLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_231E60000, v29, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: Entity has no content", buf, 2u);
        }

        goto LABEL_20;
      }

      if (v25 & 1 | (([entityCopy hasEventEnrichment] & 1) == 0) | v76 & 1)
      {
        if ((([contextCopy backpressureHazard] == 1) & v25) == 1)
        {
          v29 = sgEventsLogHandle();
          if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_20;
          }

          *buf = 0;
          v30 = "SGStructuredEventDissector: skipping shadowLogging extraction for realtime dissection";
          goto LABEL_16;
        }

        sourceKey = [entityCopy sourceKey];
        v74 = [sourceKey isEqualToString:@"suggest_tool"];

        if (v74)
        {
          v35 = objc_opt_new();
          v29 = [v35 eventClassificationWithoutXPCForMailMessage:messageCopy];
        }

        else
        {
          v36 = objc_autoreleasePoolPush();
          v37 = objc_opt_new();
          v29 = [v37 eventClassificationForMailMessage:messageCopy];

          objc_autoreleasePoolPop(v36);
        }

        if (!v29)
        {
          v38 = sgEventsLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_231E60000, v38, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: eventClassification is nil, bailing", buf, 2u);
          }

          goto LABEL_77;
        }

        if (![v29 useCase]|| [v29 useCase]== 1)
        {
          v38 = sgEventsLogHandle();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_231E60000, v38, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: Not classified as event, bailing", buf, 2u);
          }

          goto LABEL_77;
        }

        v39 = sgEventsLogHandle();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_debug_impl(&dword_231E60000, v39, OS_LOG_TYPE_DEBUG, "SGStructuredEventDissector eventClassification: %@", buf, 0xCu);
        }

        v73 = [SGStructuredEventClassification describeCategory:[v29 category]];
        if (_os_feature_enabled_impl())
        {
          v40 = [SGSimpleMailMessage alloc];
          v41 = [(SGSimpleMailMessage *)v40 convertMailMessageToBMMailMessage:messageCopy];

          encodeAsProto = [v41 encodeAsProto];
          v42 = objc_opt_new();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v85 = __Block_byref_object_copy__16077;
          v86 = __Block_byref_object_dispose__16078;
          v87 = 0;
          v81[0] = MEMORY[0x277D85DD0];
          v81[1] = 3221225472;
          v81[2] = __64__SGStructuredEventDissector_dissectMailMessage_entity_context___block_invoke;
          v81[3] = &unk_278950C80;
          v81[4] = buf;
          [v42 foundInEventResultWithSerializedDocument:encodeAsProto documentType:0 completion:v81];
          if (*(*&buf[8] + 40))
          {
            v43 = objc_autoreleasePoolPush();
            v75 = [objc_opt_class() schemaOrgAndMissingEntitiesForDUFoundInEvent:*(*&buf[8] + 40) eventClassification:v29 fromSuggestTool:v74];
            objc_autoreleasePoolPop(v43);
            v44 = [v75 objectForKeyedSubscript:@"schema"];
          }

          else
          {
            v44 = 0;
            v75 = 0;
          }

          _Block_object_dispose(buf, 8);
        }

        else
        {
          if (v74)
          {
            v45 = objc_opt_class();
            htmlBody2 = [messageCopy htmlBody];
            subject = [messageCopy subject];
            [entityCopy creationTimestamp];
            v48 = v47;
            v49 = [objc_opt_class() labelsWithMatchingStringsForMailMessage:messageCopy];
            v41 = [v45 preprocessWithoutXPCForHTML:htmlBody2 subject:subject epoch:v73 category:v49 labelsWithMatchingStrings:v48];
          }

          else
          {
            v68 = objc_autoreleasePoolPush();
            htmlBody3 = [messageCopy htmlBody];
            subject2 = [messageCopy subject];
            [entityCopy creationTimestamp];
            v52 = v51;
            v53 = [objc_opt_class() labelsWithMatchingStringsForMailMessage:messageCopy];
            v41 = [(SGStructuredEventDissector *)self preprocessHTML:htmlBody3 subject:subject2 epoch:v73 category:v53 labelsWithMatchingStrings:v52];

            objc_autoreleasePoolPop(v68);
          }

          if (!v41)
          {
            v65 = sgEventsLogHandle();
            if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v65, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: Preprocessed document is nil", buf, 2u);
            }

            goto LABEL_76;
          }

          encodeAsProto = [v41 objectForKeyedSubscript:@"crossTags"];
          if (!objc_msgSend_count(encodeAsProto))
          {
            v66 = sgEventsLogHandle();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, v66, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: Empty enrichedTaggedCharacterRanges", buf, 2u);
            }

            goto LABEL_76;
          }

          [entityCopy releaseDissectorLock];
          hasEventEnrichment = [entityCopy hasEventEnrichment];
          if ((v23 & hasEventEnrichment) == 1)
          {
            v23 = [objc_opt_class() eventEnrichmentContainsReverseMappedTags:entityCopy];
          }

          v69 = objc_autoreleasePoolPush();
          v75 = [objc_opt_class() schemaOrgAndMissingEntitiesForPreprocessed:v41 eventClassification:v29 fromSuggestTool:v74 addressThreshold:-[NSObject addressComponentThreshold](v12 pflTrainable:"addressComponentThreshold") hasEvent:{v23, hasEventEnrichment}];
          objc_autoreleasePoolPop(v69);
          v44 = [v75 objectForKeyedSubscript:@"schema"];
        }

        [entityCopy acquireDissectorLock];
        v55 = mach_absolute_time();
        v56 = SGMachTimeToNanoseconds(v55 - v77);
        v78 = objc_autoreleasePoolPush();
        v57 = v56 / 0xF4240;
        if (v44)
        {
          v82[0] = @"mergedSchema";
          v82[1] = @"diff";
          v83[0] = v44;
          v83[1] = &stru_284703F00;
          v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v83 forKeys:v82 count:2];
          v59 = sgEventsLogHandle();
          v60 = os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT);
          if (v25)
          {
            if (v60)
            {
              *buf = 0;
              _os_log_impl(&dword_231E60000, v59, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: Event found, adding shadow log", buf, 2u);
            }

            BYTE1(v67) = v76;
            LOBYTE(v67) = 1;
            [objc_opt_class() logMLExtractionForSchema:v44 mergedSchemaAndDiff:v58 parentEntity:entityCopy timingProcessingInMs:v57 eventClassification:v29 mailMessage:messageCopy shadowExtraction:v67 mlDefaultExtraction:?];
          }

          else
          {
            if (v60)
            {
              *buf = 0;
              _os_log_impl(&dword_231E60000, v59, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: Event found, adding ML log and enrichment", buf, 2u);
            }

            if (v76)
            {
              v64 = [objc_opt_class() mergeFallbackSchema:v44 parentEntity:entityCopy];

              v58 = v64;
            }

            BYTE1(v67) = v76;
            LOBYTE(v67) = 0;
            [objc_opt_class() logMLExtractionForSchema:v44 mergedSchemaAndDiff:v58 parentEntity:entityCopy timingProcessingInMs:v57 eventClassification:v29 mailMessage:messageCopy shadowExtraction:v67 mlDefaultExtraction:?];
            [objc_opt_class() addSchemaAsEnrichment:v58 inMessage:messageCopy parentEntity:entityCopy eventClassification:v29 mlDefaultExtraction:v76];
            [objc_opt_class() logMLInteractions:entityCopy context:contextCopy mlDefaultExtraction:v76];
          }

          objc_autoreleasePoolPop(v78);
        }

        else
        {
          v61 = objc_opt_class();
          v62 = [v75 objectForKeyedSubscript:@"missingEntities"];
          v63 = [v75 objectForKeyedSubscript:@"ml_summary"];
          [v61 logFailedExtractionWithClassification:v29 missingEntities:v62 mlSummary:v63 shadowExtraction:v25 timingProcessingInMs:v57 forMessage:messageCopy parentEntity:entityCopy];

          objc_autoreleasePoolPop(v78);
        }

LABEL_76:
        v38 = v73;
LABEL_77:

        goto LABEL_20;
      }

      v29 = sgEventsLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v33 = "SGStructuredEventDissector: Previous dissector found event, bailing";
    }

    else
    {
      v29 = sgEventsLogHandle();
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_20;
      }

      *buf = 0;
      v33 = "SGStructuredEventDissector: Skipping reverse template dissector: detectStructuredEventsML is OFF and provider is not in whitelist";
    }

    _os_log_debug_impl(&dword_231E60000, v29, OS_LOG_TYPE_DEBUG, v33, buf, 2u);
    goto LABEL_20;
  }

  v12 = sgEventsLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: No sender for mailMessage, bailing", buf, 2u);
  }

LABEL_21:

  objc_autoreleasePoolPop(context);
}

void __64__SGStructuredEventDissector_dissectMailMessage_entity_context___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = sgEventsLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_DEFAULT, "SGStructuredEventsDissector: FoundInEvents DU XPC call error", v9, 2u);
    }
  }

  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
}

+ (void)logMLInteractions:(id)interactions context:(id)context mlDefaultExtraction:(BOOL)extraction
{
  extractionCopy = extraction;
  v28 = *MEMORY[0x277D85DE8];
  interactionsCopy = interactions;
  contextCopy = context;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  enrichments = [interactionsCopy enrichments];
  v9 = [enrichments countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(enrichments);
        }

        v13 = *(*(&v23 + 1) + 8 * i);
        v14 = objc_autoreleasePoolPush();
        duplicateKey = [v13 duplicateKey];
        [duplicateKey entityType];
        if (SGEntityTypeIsEvent())
        {
          isNaturalLanguageEvent = [v13 isNaturalLanguageEvent];

          if (isNaturalLanguageEvent)
          {
            goto LABEL_18;
          }

          backpressureHazard = [contextCopy backpressureHazard];
          if (backpressureHazard == 1)
          {
            v18 = 12;
          }

          else
          {
            v18 = 0;
          }

          if (backpressureHazard)
          {
            v19 = v18;
          }

          else
          {
            v19 = 13;
          }

          if (extractionCopy)
          {
            v20 = +[SGRTCLogging defaultLogger];
            [v20 resetInteractionsLogs];

            v21 = +[SGRTCLogging defaultLogger];
            [v21 resetInteractionsSummaryLogs];
          }

          duplicateKey = +[SGRTCLogging defaultLogger];
          [duplicateKey logEventInteractionForEntity:v13 interface:0 actionType:v19];
        }

LABEL_18:
        objc_autoreleasePoolPop(v14);
      }

      v10 = [enrichments countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v10);
  }
}

+ (id)outputLogsForClassification:(id)classification
{
  v11[2] = *MEMORY[0x277D85DE8];
  v10[0] = @"category";
  classificationCopy = classification;
  v4 = +[SGStructuredEventClassification describeCategory:](SGStructuredEventClassification, "describeCategory:", [classificationCopy category]);
  v10[1] = @"usecase";
  v11[0] = v4;
  useCase = [classificationCopy useCase];

  v6 = [SGStructuredEventClassification describeUseCase:useCase];
  v11[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v8 = [v7 mutableCopy];

  return v8;
}

+ (id)jsMessageLogsDictionaryForPrivacyAwareLogs:(id)logs
{
  logsCopy = logs;
  v4 = objc_opt_new();
  v5 = [v4 privacyAwareLogsForMLExtractions:logsCopy];

  v6 = [v5 mutableCopy];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __73__SGStructuredEventDissector_jsMessageLogsDictionaryForPrivacyAwareLogs___block_invoke;
  v9[3] = &unk_27894E2C0;
  v7 = v6;
  v10 = v7;
  [v7 enumerateKeysAndObjectsUsingBlock:v9];

  return v7;
}

void __73__SGStructuredEventDissector_jsMessageLogsDictionaryForPrivacyAwareLogs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ((os_variant_has_internal_diagnostics() & 1) == 0 && [v3 rangeOfString:@"privacyAwareSubject"] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 32) removeObjectForKey:v3];
  }
}

+ (id)jsMessageLogsDictionaryForMailMessage:(id)message
{
  v13[3] = *MEMORY[0x277D85DE8];
  v12[0] = @"domain";
  from = [message from];
  emailAddress = [from emailAddress];
  v5 = emailAddressDomain(emailAddress);
  v13[0] = v5;
  v12[1] = @"assetVersion";
  v6 = MEMORY[0x277CCABB0];
  v7 = +[SGAsset localeAsset];
  v8 = [v6 numberWithUnsignedInteger:{objc_msgSend(v7, "assetVersion")}];
  v13[1] = v8;
  v12[2] = @"assetIdentifier";
  v9 = +[SGAsset localeAssetIdentifier];
  v13[2] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:3];

  return v10;
}

+ (void)logFailedExtractionWithClassification:(id)classification missingEntities:(id)entities mlSummary:(id)summary shadowExtraction:(BOOL)extraction timingProcessingInMs:(unint64_t)ms forMessage:(id)message parentEntity:(id)entity
{
  extractionCopy = extraction;
  v56 = *MEMORY[0x277D85DE8];
  classificationCopy = classification;
  entitiesCopy = entities;
  summaryCopy = summary;
  messageCopy = message;
  entityCopy = entity;
  v40 = messageCopy;
  v38 = [self jsMessageLogsDictionaryForMailMessage:messageCopy];
  v43 = classificationCopy;
  v16 = [self outputLogsForClassification:classificationCopy];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v17 = summaryCopy;
  v18 = [v17 countByEnumeratingWithState:&v50 objects:v55 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v51;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v51 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v50 + 1) + 8 * i);
        v23 = [v17 objectForKeyedSubscript:v22];
        v24 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"M_%@", v22];
        [v16 setObject:v23 forKeyedSubscript:v24];
      }

      v19 = [v17 countByEnumeratingWithState:&v50 objects:v55 count:16];
    }

    while (v19);
  }

  v25 = [MEMORY[0x277CCABB0] numberWithBool:extractionCopy];
  [v16 setObject:v25 forKeyedSubscript:@"shadowExtraction"];

  v26 = [self eventEnrichmentFromEntity:entityCopy];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  tags = [v26 tags];
  v28 = [tags countByEnumeratingWithState:&v46 objects:v54 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v47;
LABEL_10:
    v31 = 0;
    while (1)
    {
      if (*v47 != v30)
      {
        objc_enumerationMutation(tags);
      }

      v32 = *(*(&v46 + 1) + 8 * v31);
      if ([v32 isTemplateName])
      {
        break;
      }

      if (v29 == ++v31)
      {
        v29 = [tags countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v29)
        {
          goto LABEL_10;
        }

        goto LABEL_16;
      }
    }

    value = [v32 value];

    v34 = v40;
    if (!value)
    {
      goto LABEL_22;
    }

    [v16 setObject:value forKeyedSubscript:@"extractionTemplate"];
    v35 = [self jsMessageLogsDictionaryForPrivacyAwareLogs:v40];
    if (v35)
    {
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __156__SGStructuredEventDissector_logFailedExtractionWithClassification_missingEntities_mlSummary_shadowExtraction_timingProcessingInMs_forMessage_parentEntity___block_invoke;
      v44[3] = &unk_27894E2C0;
      v45 = v16;
      [v35 enumerateKeysAndObjectsUsingBlock:v44];
    }
  }

  else
  {
LABEL_16:
    value = tags;
    v34 = v40;
  }

LABEL_22:
  v36 = +[SGRTCLogging defaultLogger];
  [v36 logEventExtractionForTemplateName:@"ML" extractionStatus:3 outputExceptions:entitiesCopy outputInfos:MEMORY[0x277CBEBF8] jsMessageLogs:v38 jsOutputLogs:v16 timingProcessing:ms];
}

+ (void)logMLExtractionForSchema:(id)schema mergedSchemaAndDiff:(id)diff parentEntity:(id)entity timingProcessingInMs:(unint64_t)ms eventClassification:(id)classification mailMessage:(id)message shadowExtraction:(BOOL)extraction mlDefaultExtraction:(BOOL)self0
{
  v100 = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  diffCopy = diff;
  entityCopy = entity;
  classificationCopy = classification;
  messageCopy = message;
  v19 = [self jsMessageLogsDictionaryForMailMessage:messageCopy];
  v20 = [self outputLogsForClassification:classificationCopy];
  v21 = @"fallbackExtraction";
  if (defaultExtraction)
  {
    v21 = @"mlDefaultExtraction";
  }

  v22 = v20;
  if (extraction)
  {
    v23 = @"shadowExtraction";
  }

  else
  {
    v23 = v21;
  }

  [v20 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v23];
  v24 = [self jsMessageLogsDictionaryForPrivacyAwareLogs:messageCopy];
  if (v24)
  {
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __178__SGStructuredEventDissector_logMLExtractionForSchema_mergedSchemaAndDiff_parentEntity_timingProcessingInMs_eventClassification_mailMessage_shadowExtraction_mlDefaultExtraction___block_invoke;
    v93[3] = &unk_27894E2C0;
    v94 = v22;
    [v24 enumerateKeysAndObjectsUsingBlock:v93];
  }

  v25 = [self eventEnrichmentFromEntity:entityCopy];
  v73 = v25;
  v74 = v24;
  if (!v25)
  {
    tags = [entityCopy tags];
    templateException = [MEMORY[0x277D01FA0] templateException];
    v62 = [tags containsObject:templateException];

    if (v62)
    {
      v63 = @"Exception";
    }

    else
    {
      v63 = @"No Event";
    }

    [v22 setObject:v63 forKeyedSubscript:@"templateExtractionOutput"];
    msCopy2 = ms;
    v40 = diffCopy;
    goto LABEL_53;
  }

  v79 = v22;
  v72 = v19;
  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  tags2 = [v25 tags];
  v27 = [tags2 countByEnumeratingWithState:&v89 objects:v99 count:16];
  if (!v27)
  {
    v29 = 0;
    v30 = 0;
    v40 = diffCopy;
    goto LABEL_51;
  }

  v28 = v27;
  v69 = messageCopy;
  v70 = classificationCopy;
  v29 = 0;
  v30 = 0;
  v31 = *v90;
  do
  {
    for (i = 0; i != v28; ++i)
    {
      if (*v90 != v31)
      {
        objc_enumerationMutation(tags2);
      }

      v33 = *(*(&v89 + 1) + 8 * i);
      if ([v33 isSchemaOrg])
      {
        value = [v33 value];
        v35 = v30;
        v30 = value;
      }

      else
      {
        if (![v33 isTemplateName])
        {
          continue;
        }

        value2 = [v33 value];
        v35 = v29;
        v29 = value2;
      }
    }

    v28 = [tags2 countByEnumeratingWithState:&v89 objects:v99 count:16];
  }

  while (v28);

  v22 = v79;
  if (v29)
  {
    [v79 setObject:v29 forKeyedSubscript:@"extractionTemplate"];
  }

  messageCopy = v69;
  classificationCopy = v70;
  if (v30)
  {
    v37 = MEMORY[0x277CCAAA0];
    v38 = [v30 dataUsingEncoding:4];
    v88 = 0;
    v39 = [v37 JSONObjectWithData:v38 options:0 error:&v88];
    tags2 = v88;

    v40 = diffCopy;
    if (v39 && objc_msgSend_count(v39))
    {
      v67 = entityCopy;
      v41 = objc_opt_new();
      firstObject = [v39 firstObject];
      v98 = firstObject;
      v43 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
      v68 = schemaCopy;
      v97 = schemaCopy;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:&v97 count:1];
      v45 = [v41 diffSchemas:v43 withExpectedSchemas:v44];

      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v66 = v45;
      obj = [v45 allKeys];
      v46 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
      if (v46)
      {
        v47 = v46;
        v48 = *v85;
        v49 = MEMORY[0x277CBEC38];
        do
        {
          for (j = 0; j != v47; ++j)
          {
            if (*v85 != v48)
            {
              objc_enumerationMutation(obj);
            }

            v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"schemaDiff_%@", *(*(&v84 + 1) + 8 * j)];
            [v79 setObject:v49 forKeyedSubscript:v51];
          }

          v47 = [obj countByEnumeratingWithState:&v84 objects:v96 count:16];
        }

        while (v47);
      }

      if (defaultExtraction)
      {
        v52 = [diffCopy objectForKeyedSubscript:@"diff"];

        v82 = 0u;
        v83 = 0u;
        v80 = 0u;
        v81 = 0u;
        v71 = v52;
        obja = [v52 allKeys];
        v53 = [obja countByEnumeratingWithState:&v80 objects:v95 count:16];
        if (v53)
        {
          v54 = v53;
          v55 = *v81;
          v56 = MEMORY[0x277CBEC38];
          do
          {
            for (k = 0; k != v54; ++k)
            {
              if (*v81 != v55)
              {
                objc_enumerationMutation(obja);
              }

              v58 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"schemaFromTemplate_%@", *(*(&v80 + 1) + 8 * k)];
              [v79 setObject:v56 forKeyedSubscript:v58];
            }

            v54 = [obja countByEnumeratingWithState:&v80 objects:v95 count:16];
          }

          while (v54);
        }

        v59 = v71;
        schemaCopy = v68;
      }

      else
      {
        schemaCopy = v68;
        v59 = v66;
      }

      v40 = diffCopy;
      entityCopy = v67;
      messageCopy = v69;
      classificationCopy = v70;
    }

    v19 = v72;
LABEL_51:

    v22 = v79;
  }

  else
  {
    v19 = v72;
    v40 = diffCopy;
  }

  msCopy2 = ms;
LABEL_53:
  v65 = +[SGRTCLogging defaultLogger];
  [v65 logEventExtractionForTemplateName:@"ML" extractionStatus:0 outputExceptions:MEMORY[0x277CBEBF8] outputInfos:MEMORY[0x277CBEBF8] jsMessageLogs:v19 jsOutputLogs:v22 timingProcessing:msCopy2];
}

+ (BOOL)eventEnrichmentContainsReverseMappedTags:(id)tags
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [self eventEnrichmentFromEntity:tags];
  v4 = v3;
  if (v3)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    tags = [v3 tags];
    v6 = [tags countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v6)
    {
      v7 = 0;
      v25 = 0;
      v24 = 0;
      v8 = 0;
      v9 = *v27;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v27 != v9)
          {
            objc_enumerationMutation(tags);
          }

          v11 = *(*(&v26 + 1) + 8 * i);
          if ([v11 isFieldReverseMapped] && (objc_msgSend(v11, "value"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", @"reverseMapped_EVENT_TIME__START_DATETIME"), v12, (v13 & 1) != 0))
          {
            v7 = 1;
          }

          else if ([v11 isFieldReverseMapped] && (objc_msgSend(v11, "value"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isEqualToString:", @"reverseMapped_EVENT_LOCATION__START_ADDRESS"), v14, (v15 & 1) != 0))
          {
            BYTE4(v25) = 1;
          }

          else if ([v11 isFieldReverseMapped] && (objc_msgSend(v11, "value"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "isEqualToString:", @"reverseMapped_EVENT_LOCATION__START_PLACE"), v16, (v17 & 1) != 0))
          {
            LOBYTE(v25) = 1;
          }

          else if ([v11 isFieldReverseMapped] && (objc_msgSend(v11, "value"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "isEqualToString:", @"reverseMapped_TITLE__HOTEL_RESTAURANT_NAME"), v18, (v19 & 1) != 0))
          {
            v24 = 1;
          }

          else if ([v11 isFieldReverseMapped])
          {
            value = [v11 value];
            v21 = [value isEqualToString:@"reverseMapped_TITLE__MOVIE_TICKET_NAME"];

            v8 |= v21;
          }
        }

        v6 = [tags countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v6);
      LOBYTE(v6) = v25;
      v22 = BYTE4(v25) | v24 | v8;
    }

    else
    {
      v7 = 0;
      v22 = 0;
    }

    if (v6 & 1 | ((v7 & 1) == 0))
    {
      v22 = v7;
    }
  }

  else
  {
    v22 = 0;
  }

  return v22 & 1;
}

+ (id)eventEnrichmentFromEntity:(id)entity
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  enrichments = [entity enrichments];
  v4 = [enrichments countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(enrichments);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        duplicateKey = [v7 duplicateKey];
        [duplicateKey entityType];
        IsEvent = SGEntityTypeIsEvent();

        if (IsEvent)
        {
          v4 = v7;
          goto LABEL_11;
        }
      }

      v4 = [enrichments countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (id)addressDictionaryForAddressComponents:(id)components
{
  v21[6] = *MEMORY[0x277D85DE8];
  v21[0] = @"http://schema.org/PostalAddress";
  v20[0] = @"@type";
  v20[1] = @"streetAddress";
  componentsCopy = components;
  street = [componentsCopy street];
  v5 = street;
  if (street)
  {
    v6 = street;
  }

  else
  {
    v6 = &stru_284703F00;
  }

  v21[1] = v6;
  v20[2] = @"addressLocality";
  city = [componentsCopy city];
  v8 = city;
  if (city)
  {
    v9 = city;
  }

  else
  {
    v9 = &stru_284703F00;
  }

  v21[2] = v9;
  v20[3] = @"addressRegion";
  state = [componentsCopy state];
  v11 = state;
  if (state)
  {
    v12 = state;
  }

  else
  {
    v12 = &stru_284703F00;
  }

  v21[3] = v12;
  v20[4] = @"postalCode";
  postalCode = [componentsCopy postalCode];
  v14 = postalCode;
  if (postalCode)
  {
    v15 = postalCode;
  }

  else
  {
    v15 = &stru_284703F00;
  }

  v21[4] = v15;
  v20[5] = @"addressCountry";
  country = [componentsCopy country];

  if (country)
  {
    v17 = country;
  }

  else
  {
    v17 = &stru_284703F00;
  }

  v21[5] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:6];

  return v18;
}

+ (unint64_t)tokenCount:(id)count
{
  countCopy = count;
  if (countCopy)
  {
    v4 = +[SGPOSTagger sharedInstance];
    v5 = [v4 tokenizeTextContent:countCopy languageHint:0];

    if (objc_msgSend_count(v5))
    {
      v6 = 0;
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:v6];
        annotationType = [v8 annotationType];

        if (annotationType == 3)
        {
          ++v7;
        }

        ++v6;
      }

      while (objc_msgSend_count(v5) > v6);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (unint64_t)tokenCountForPostalAddressComponents:(id)components
{
  componentsCopy = components;
  street = [componentsCopy street];

  if (street)
  {
    street2 = [componentsCopy street];
    street = [self tokenCount:street2];
  }

  city = [componentsCopy city];

  if (city)
  {
    city2 = [componentsCopy city];
    street += [self tokenCount:city2];
  }

  state = [componentsCopy state];

  if (state)
  {
    state2 = [componentsCopy state];
    street += [self tokenCount:state2];
  }

  postalCode = [componentsCopy postalCode];

  if (postalCode)
  {
    postalCode2 = [componentsCopy postalCode];
    street += [self tokenCount:postalCode2];
  }

  country = [componentsCopy country];

  if (country)
  {
    country2 = [componentsCopy country];
    street += [self tokenCount:country2];
  }

  return street;
}

+ (id)schemaPostalAddressForPostalAddressExtraction:(id)extraction addressThreshold:(unint64_t)threshold
{
  extractionCopy = extraction;
  components = [extractionCopy components];

  plainText = [extractionCopy plainText];

  if (components)
  {
    if (!plainText || ([extractionCopy components], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(self, "tokenCountForPostalAddressComponents:", v9), v9, objc_msgSend(extractionCopy, "plainText"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(self, "tokenCount:", v11), v11, objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", threshold / 100.0 * v12), v13 = objc_claimAutoreleasedReturnValue(), LODWORD(v11) = objc_msgSend(v13, "intValue"), v13, v10 >= v11))
    {
      components2 = [extractionCopy components];
      plainText2 = [self addressDictionaryForAddressComponents:components2];

      goto LABEL_8;
    }

    goto LABEL_6;
  }

  if (plainText)
  {
LABEL_6:
    plainText2 = [extractionCopy plainText];
    goto LABEL_8;
  }

  plainText2 = &stru_284703F00;
LABEL_8:

  return plainText2;
}

+ (id)schemaStringForEventStatus:(unsigned __int8)status
{
  statusCopy = status;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = @"Cancelled";
  if (!statusCopy)
  {
    v5 = @"Confirmed";
  }

  v6 = [v4 initWithFormat:@"%@%@", @"http://schema.org/Event", v5];

  return v6;
}

+ (id)schemaStringForReservationStatus:(unsigned __int8)status
{
  statusCopy = status;
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = @"Cancelled";
  if (!statusCopy)
  {
    v5 = @"Confirmed";
  }

  v6 = [v4 initWithFormat:@"%@%@", @"http://schema.org/Reservation", v5];

  return v6;
}

+ (id)schemaStringForDateComponents:(id)components
{
  componentsCopy = components;
  v4 = componentsCopy;
  if (componentsCopy && ([componentsCopy date], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    timeZone = [v4 timeZone];

    if (timeZone)
    {
      v7 = objc_opt_new();
      timeZone2 = [v4 timeZone];
      [v7 setTimeZone:timeZone2];
    }

    else
    {
      v7 = objc_opt_new();
      if ([v4 hour] == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "minute") == 0x7FFFFFFFFFFFFFFFLL && objc_msgSend(v4, "second") == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = @"yyyy-MM-dd";
      }

      else
      {
        v10 = @"yyyy-MM-dd'T'HH:mm:ss";
      }

      [v7 setDateFormat:v10];
    }

    date = [v4 date];
    v9 = [v7 stringFromDate:date];
  }

  else
  {
    v9 = &stru_284703F00;
  }

  return v9;
}

+ (id)plainTextStringsByLabelInTaggedCharacterRanges:(id)ranges inPlainText:(id)text
{
  v33 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  textCopy = text;
  v6 = objc_opt_new();
  if (objc_msgSend_count(rangesCopy))
  {
    v7 = 0;
    v26 = rangesCopy;
    do
    {
      v27 = v7;
      v8 = [rangesCopy objectAtIndexedSubscript:v7];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      tags = [v8 tags];
      v10 = [tags countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(tags);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            v15 = objc_alloc(MEMORY[0x277CCACA8]);
            annotationTypeUniqueIdentifier = [v8 annotationTypeUniqueIdentifier];
            v17 = [v15 initWithFormat:@"%@_%@", annotationTypeUniqueIdentifier, v14];

            v18 = [v6 objectForKeyedSubscript:v17];

            if (!v18)
            {
              v19 = objc_opt_new();
              [v6 setObject:v19 forKeyedSubscript:v17];
            }

            v20 = [v6 objectForKeyedSubscript:v17];
            range = [v8 range];
            [v20 addIndexesInRange:{range, v22}];
          }

          v11 = [tags countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v11);
      }

      rangesCopy = v26;
      v7 = v27 + 1;
    }

    while (objc_msgSend_count(v26) > (v27 + 1));
  }

  v23 = [(SGExtractionDocument *)SGStructuredEventDocument candidatesForLabelsWithPlainTextIndexSets:v6 inPlainText:textCopy];

  return v23;
}

+ (id)annotateContent:(id)content withLabel:(id)label forMatchingString:(id)string
{
  v27[1] = *MEMORY[0x277D85DE8];
  contentCopy = content;
  labelCopy = label;
  stringCopy = string;
  v10 = objc_opt_new();
  if (![contentCopy length] || !objc_msgSend(stringCopy, "length"))
  {
    v23 = sgEventsLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      v25 = "SGStructuredEventDissector: annotateContent: empty content or string passed";
      goto LABEL_21;
    }

LABEL_14:

    goto LABEL_15;
  }

  if (!labelCopy)
  {
    v23 = sgEventsLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *v26 = 0;
      v25 = "SGStructuredEventDissector: annotateContent: nil label passed";
LABEL_21:
      _os_log_error_impl(&dword_231E60000, v23, OS_LOG_TYPE_ERROR, v25, v26, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  v11 = [contentCopy rangeOfString:stringCopy options:1 range:{0, objc_msgSend(contentCopy, "length")}];
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v11;
    v14 = v12;
    do
    {
      v15 = [SGTaggedCharacterRange alloc];
      v27[0] = labelCopy;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:1];
      v17 = [contentCopy substringWithRange:{v13, v14}];
      v18 = [(SGTaggedCharacterRange *)v15 initWithAnnotationType:6 tags:v16 range:v13 text:v14, v17];

      if (v18)
      {
        [v10 addObject:v18];
      }

      else
      {
        v19 = sgEventsLogHandle();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *v26 = 0;
          _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: annotateContent: Unable to create taggedCharacterRange from result", v26, 2u);
        }
      }

      v20 = v13 + v14;
      v21 = [contentCopy length] - (v13 + v14);

      v13 = [contentCopy rangeOfString:stringCopy options:1 range:{v20, v21}];
      v14 = v22;
    }

    while (v13 != 0x7FFFFFFFFFFFFFFFLL);
  }

LABEL_15:

  return v10;
}

+ (id)labelsWithMatchingStringsForMailMessage:(id)message
{
  v32[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = objc_opt_new();
  from = [messageCopy from];
  name = [from name];

  if (name)
  {
    name2 = [from name];
    v32[0] = name2;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [v5 setObject:v9 forKeyedSubscript:@"is_sender_name"];
  }

  emailAddress = [from emailAddress];

  if (emailAddress)
  {
    emailAddress2 = [from emailAddress];
    v31 = emailAddress2;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    [v5 setObject:v12 forKeyedSubscript:@"is_sender_email"];

    emailAddress3 = [from emailAddress];
    v14 = emailAddressDomain(emailAddress3);

    if (v14)
    {
      v30 = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v30 count:1];
      [v5 setObject:v15 forKeyedSubscript:@"is_sender_domain"];
    }
  }

  v16 = [messageCopy to];
  firstObject = [v16 firstObject];

  name3 = [firstObject name];

  if (name3)
  {
    name4 = [firstObject name];
    v29 = name4;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v29 count:1];
    [v5 setObject:v20 forKeyedSubscript:@"is_recipient_name"];
  }

  emailAddress4 = [firstObject emailAddress];

  if (emailAddress4)
  {
    emailAddress5 = [firstObject emailAddress];
    v28 = emailAddress5;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v28 count:1];
    [v5 setObject:v23 forKeyedSubscript:@"is_recipient_email"];
  }

  subject = [messageCopy subject];

  if (subject)
  {
    subject2 = [messageCopy subject];
    v26 = [self annotationMatchingStringsForSubject:subject2];

    if (objc_msgSend_count(v26))
    {
      [v5 setObject:v26 forKeyedSubscript:@"is_present_in_subject"];
    }
  }

  return v5;
}

+ (id)annotationMatchingStringsForSubject:(id)subject
{
  subjectCopy = subject;
  v4 = objc_opt_new();
  v5 = +[SGPOSTagger sharedInstance];
  v6 = [v5 tokenizeTextContent:subjectCopy languageHint:0];

  v7 = objc_opt_new();
  if (objc_msgSend_count(v6))
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      annotationType = [v9 annotationType];

      if (annotationType == 2)
      {
        v11 = [v6 objectAtIndexedSubscript:v8];
        tags = [v11 tags];
        firstObject = [tags firstObject];

        if (firstObject && (([firstObject isEqualToString:@"NN"] & 1) != 0 || objc_msgSend(firstObject, "isEqualToString:", @"NNP")))
        {
          [v7 addIndex:v8];
        }
      }

      ++v8;
    }

    while (objc_msgSend_count(v6) > v8);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __66__SGStructuredEventDissector_annotationMatchingStringsForSubject___block_invoke;
  v20[3] = &unk_278954548;
  v21 = v6;
  v22 = subjectCopy;
  v14 = v4;
  v23 = v14;
  v15 = subjectCopy;
  v16 = v6;
  [v7 enumerateRangesUsingBlock:v20];
  v17 = v23;
  v18 = v14;

  return v14;
}

uint64_t __66__SGStructuredEventDissector_annotationMatchingStringsForSubject___block_invoke(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    v4 = result;
    v5 = [SGExtractionDocument textRangeForIndexRange:a2 inTaggedCharacterRanges:a3, *(result + 32)];
    v7 = [*(v4 + 40) substringWithRange:{v5, v6}];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
      v7 = [*(v4 + 48) addObject:v7];
      v8 = v9;
    }

    return MEMORY[0x2821F96F8](v7, v8);
  }

  return result;
}

+ (id)tupleWithError:(id)error label:(id)label
{
  v5 = MEMORY[0x277D42648];
  labelCopy = label;
  v7 = [v5 alloc];
  if (error)
  {
    v8 = 0;
  }

  else
  {
    v8 = MEMORY[0x277CBEC38];
  }

  v9 = [v7 initWithFirst:v8 second:labelCopy];

  return v9;
}

+ (id)tupleWithEntity:(id)entity label:(id)label
{
  v5 = MEMORY[0x277D42648];
  labelCopy = label;
  entityCopy = entity;
  v8 = [[v5 alloc] initWithFirst:entityCopy second:labelCopy];

  return v8;
}

+ (id)nilEntities:(id)entities
{
  v24 = *MEMORY[0x277D85DE8];
  entitiesCopy = entities;
  v17 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = entitiesCopy;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        first = [v9 first];
        if (!first)
        {
          goto LABEL_9;
        }

        second2 = first;
        first2 = [v9 first];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          first3 = [v9 first];
          hasExtraction = [first3 hasExtraction];

          if (hasExtraction)
          {
            continue;
          }

LABEL_9:
          second = [v9 second];

          if (second)
          {
            second2 = [v9 second];
            [v17 addObject:second2];
          }

          else
          {
            second2 = sgEventsLogHandle();
            if (os_log_type_enabled(second2, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_231E60000, second2, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: No name for missing entity", buf, 2u);
            }
          }

          goto LABEL_14;
        }

LABEL_14:
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }

  return v17;
}

+ (id)preprocessWithoutXPCForHTML:(id)l subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings
{
  stringsCopy = strings;
  categoryCopy = category;
  subjectCopy = subject;
  lCopy = l;
  v16 = objc_opt_new();
  v17 = [v16 parseHTML:lCopy];

  v18 = [self preprocessDomParserResult:v17 subject:subjectCopy epoch:categoryCopy category:stringsCopy labelsWithMatchingStrings:epoch];

  return v18;
}

+ (id)preprocessDomParserResult:(id)result subject:(id)subject epoch:(double)epoch category:(id)category labelsWithMatchingStrings:(id)strings
{
  v105 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  subjectCopy = subject;
  categoryCopy = category;
  stringsCopy = strings;
  v15 = stringsCopy;
  if (resultCopy)
  {
    v70 = stringsCopy;
    v71 = categoryCopy;
    v68 = subjectCopy;
    [resultCopy insertSubject:subjectCopy];
    plainText = [resultCopy plainText];
    v17 = objc_opt_new();
    v69 = resultCopy;
    taggedCharacterRanges = [resultCopy taggedCharacterRanges];
    [v17 addObjectsFromArray:taggedCharacterRanges];

    v19 = [MEMORY[0x277D02548] detectLanguageFromText:plainText];
    v20 = +[SGPOSTagger sharedInstance];
    v21 = +[SGStructuredEventExtractionModel sharedInstance];
    gazetteer = [v21 gazetteer];
    v67 = v19;
    v23 = [v20 tokenizeTextContent:plainText languageHint:v19 gazetteer:gazetteer];

    context = v17;
    v66 = v23;
    [v17 addObjectsFromArray:v23];
    v24 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:epoch];
    v25 = [SGDataDetectorMatch detectionsInPlainText:plainText baseDate:v24];

    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v25;
    v26 = [obj countByEnumeratingWithState:&v91 objects:v104 count:16];
    if (v26)
    {
      v27 = v26;
      v75 = *v92;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v92 != v75)
          {
            objc_enumerationMutation(obj);
          }

          v29 = *(*(&v91 + 1) + 8 * i);
          v30 = objc_autoreleasePoolPush();
          valueRange = [v29 valueRange];
          v33 = [plainText substringWithRange:valueRange, v32];
          v34 = [SGTaggedCharacterRange alloc];
          matchType = [v29 matchType];
          v36 = @"SGDDMatchOther";
          if (matchType <= 8)
          {
            v36 = off_27894F1C0[matchType];
          }

          v37 = v36;
          v103 = v37;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
          valueRange2 = [v29 valueRange];
          v41 = [(SGTaggedCharacterRange *)v34 initWithAnnotationType:1 tags:v38 range:valueRange2 text:v40, v33];

          [context addObject:v41];
          objc_autoreleasePoolPop(v30);
        }

        v27 = [obj countByEnumeratingWithState:&v91 objects:v104 count:16];
      }

      while (v27);
    }

    v42 = objc_opt_new();
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v43 = context;
    v44 = [v43 countByEnumeratingWithState:&v87 objects:v102 count:16];
    if (v44)
    {
      v45 = v44;
      v46 = *v88;
      do
      {
        for (j = 0; j != v45; ++j)
        {
          if (*v88 != v46)
          {
            objc_enumerationMutation(v43);
          }

          v48 = *(*(&v87 + 1) + 8 * j);
          if ([v48 annotationType] == 3)
          {
            [v42 addObject:v48];
          }
        }

        v45 = [v43 countByEnumeratingWithState:&v87 objects:v102 count:16];
      }

      while (v45);
    }

    v65 = v42;

    v49 = [SGTaggedCharacterRange alloc];
    v50 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"cat_%@", v71];
    v100 = v50;
    v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v100 count:1];
    v52 = [(SGTaggedCharacterRange *)v49 initWithAnnotationType:5 tags:v51 range:0 text:0, &stru_284703F00];
    v101 = v52;
    v64 = [MEMORY[0x277CBEA60] arrayWithObjects:&v101 count:1];

    v85 = 0u;
    v86 = 0u;
    v83 = 0u;
    v84 = 0u;
    v76 = v70;
    v74 = [v76 countByEnumeratingWithState:&v83 objects:v99 count:16];
    if (v74)
    {
      v73 = *v84;
      do
      {
        for (k = 0; k != v74; ++k)
        {
          if (*v84 != v73)
          {
            objc_enumerationMutation(v76);
          }

          v54 = *(*(&v83 + 1) + 8 * k);
          contexta = objc_autoreleasePoolPush();
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v55 = [v76 objectForKeyedSubscript:v54];
          v56 = [v55 countByEnumeratingWithState:&v79 objects:v98 count:16];
          if (v56)
          {
            v57 = v56;
            v58 = *v80;
            do
            {
              for (m = 0; m != v57; ++m)
              {
                if (*v80 != v58)
                {
                  objc_enumerationMutation(v55);
                }

                v60 = [objc_opt_class() annotateContent:plainText withLabel:v54 forMatchingString:*(*(&v79 + 1) + 8 * m)];
                if (objc_msgSend_count(v60))
                {
                  [v43 addObjectsFromArray:v60];
                }
              }

              v57 = [v55 countByEnumeratingWithState:&v79 objects:v98 count:16];
            }

            while (v57);
          }

          objc_autoreleasePoolPop(contexta);
        }

        v74 = [v76 countByEnumeratingWithState:&v83 objects:v99 count:16];
      }

      while (v74);
    }

    v61 = [SGTaggedCharacterRange mergeTaggedCharacterRanges:v43 usingBaseTaggedCharacterRanges:v65 extraTags:v64 tagOverrides:0 alignWithGroundTruth:0];
    v96[0] = @"plainText";
    v96[1] = @"crossTags";
    v97[0] = plainText;
    v97[1] = v61;
    v96[2] = @"tags";
    v96[3] = @"ddSGDetections";
    v97[2] = v43;
    v97[3] = obj;
    v62 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:4];

    subjectCopy = v68;
    resultCopy = v69;
    v15 = v70;
    categoryCopy = v71;
  }

  else
  {
    plainText = sgEventsLogHandle();
    if (os_log_type_enabled(plainText, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, plainText, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: nil domParserResult", buf, 2u);
    }

    v62 = 0;
  }

  return v62;
}

+ (id)schemaOrgAndMissingEntitiesForPreprocessed:(id)preprocessed eventClassification:(id)classification fromSuggestTool:(BOOL)tool addressThreshold:(unint64_t)threshold pflTrainable:(BOOL)trainable hasEvent:(BOOL)event
{
  eventCopy = event;
  trainableCopy = trainable;
  toolCopy = tool;
  v221 = *MEMORY[0x277D85DE8];
  classificationCopy = classification;
  preprocessedCopy = preprocessed;
  v14 = [preprocessedCopy objectForKeyedSubscript:@"crossTags"];
  v15 = +[SGStructuredEventExtractionModel sharedInstance];
  v16 = [v15 modelInferences:v14 pflTraining:trainableCopy hasEvent:eventCopy];

  v17 = objc_opt_new();
  v18 = [SGStructuredEventDocument alloc];
  v19 = [preprocessedCopy objectForKeyedSubscript:@"plainText"];
  v20 = classificationCopy;
  category = [classificationCopy category];
  v22 = [preprocessedCopy objectForKeyedSubscript:@"ddSGDetections"];

  v174 = v16;
  v173 = toolCopy;
  v23 = [(SGStructuredEventDocument *)v18 initWithPlainText:v19 category:category dataDetectorMatches:v22 enrichedTaggedCharacterRanges:v14 modelOutput:v16 fromSuggestTool:toolCopy];

  if (![(SGStructuredEventDocument *)v23 detectedEventPolarity])
  {
    [v17 setObject:&unk_28474A678 forKeyedSubscript:@"missingEntities"];
    modelOutputSummary = [(SGStructuredEventDocument *)v23 modelOutputSummary];
    [v17 setObject:modelOutputSummary forKeyedSubscript:@"ml_summary"];

    v29 = v20;
    goto LABEL_119;
  }

  v179 = 0;
  v24 = [(SGStructuredEventDocument *)v23 detectedReservationIdWithError:&v179];
  v25 = v179;
  detectedEventName = [(SGStructuredEventDocument *)v23 detectedEventName];
  v178 = 0;
  v168 = [(SGStructuredEventDocument *)v23 detectedStartAddressWithError:&v178];
  v169 = v178;
  v177 = 0;
  v160 = [(SGStructuredEventDocument *)v23 detectedStartPlaceWithError:&v177];
  v161 = v177;
  detectedStartDateComponents = [(SGStructuredEventDocument *)v23 detectedStartDateComponents];
  category2 = [(SGStructuredEventDocument *)v23 category];
  v28 = 0;
  v158 = v25;
  v159 = detectedEventName;
  if (category2 > 4)
  {
    v29 = v20;
    if (category2 > 6)
    {
      if (category2 != 7)
      {
        if (category2 == 9)
        {
          goto LABEL_4;
        }

        if (category2 != 8)
        {
          goto LABEL_116;
        }

        if ([v20 isCancelled] && detectedEventName)
        {
          if (v24)
          {
            goto LABEL_71;
          }

          date = [detectedStartDateComponents date];

          if (date)
          {
            goto LABEL_71;
          }
        }

        else if (!detectedEventName)
        {
LABEL_89:
          v150 = v24;
          v105 = [self tupleWithEntity:detectedEventName label:@"reservationName"];
          v213[0] = v105;
          v166 = [self tupleWithError:v169 label:@"address"];
          v213[1] = v166;
          v157 = [self tupleWithError:v25 label:@"reservationId"];
          v213[2] = v157;
          date2 = [detectedStartDateComponents date];
          v107 = [self tupleWithEntity:date2 label:@"startDate"];
          v213[3] = v107;
          v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v213 count:4];
          v33 = [self nilEntities:v108];

          v102 = sgEventsLogHandle();
          if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_90;
          }

          v103 = [v33 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v212 = v103;
          v104 = "SGStructuredEventDissector: Missing entities for restaurant extraction: %@";
          goto LABEL_125;
        }

        date3 = [detectedStartDateComponents date];

        if (date3 && !v25 && !v169)
        {
LABEL_71:
          v216[0] = @"@context";
          v216[1] = @"@type";
          v217[0] = @"http://schema.org";
          v217[1] = @"http://schema.org/FoodEstablishmentReservation";
          v74 = &stru_284703F00;
          if (v24)
          {
            v74 = v24;
          }

          v217[2] = v74;
          v216[2] = @"reservationId";
          v216[3] = @"reservationStatus";
          v153 = v20;
          v218 = [self schemaStringForReservationStatus:{objc_msgSend(v20, "isCancelled")}];
          v216[4] = @"reservationFor";
          v214[0] = @"@type";
          v214[1] = @"name";
          v215[0] = @"http://schema.org/FoodEstablishment";
          v215[1] = detectedEventName;
          detectedEndDateComponents2 = v218;
          v214[2] = @"address";
          v61 = [self schemaPostalAddressForPostalAddressExtraction:v168 addressThreshold:threshold];
          v215[2] = v61;
          v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v215 forKeys:v214 count:3];
          v219 = v75;
          v216[5] = @"startTime";
          v59 = [self schemaStringForDateComponents:detectedStartDateComponents];
          v220 = v59;
          v65 = v75;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v217 forKeys:v216 count:6];
          goto LABEL_82;
        }

        goto LABEL_89;
      }

      if ([v20 isCancelled] && detectedEventName)
      {
        selfCopy2 = self;
        if (!v25 || ([detectedStartDateComponents date], v54 = objc_claimAutoreleasedReturnValue(), v54, v54))
        {
LABEL_61:
          v186[0] = @"@context";
          v186[1] = @"@type";
          v187[0] = @"http://schema.org";
          v187[1] = @"http://schema.org/EventReservation";
          if (v24)
          {
            v67 = v24;
          }

          else
          {
            v67 = &stru_284703F00;
          }

          v187[2] = v67;
          v186[2] = @"reservationId";
          v186[3] = @"reservationStatus";
          v153 = v29;
          v188 = [selfCopy2 schemaStringForEventStatus:{objc_msgSend(v29, "isCancelled")}];
          v186[4] = @"reservationFor";
          v184[0] = @"@type";
          v184[1] = @"name";
          v185[0] = @"http://schema.org/ScreeningEvent";
          v185[1] = detectedEventName;
          detectedEndDateComponents2 = v188;
          v184[2] = @"startDate";
          v68 = [selfCopy2 schemaStringForDateComponents:detectedStartDateComponents];
          v185[2] = v68;
          v184[3] = @"location";
          v182[0] = @"@type";
          v182[1] = @"name";
          v69 = v160;
          if (!v160)
          {
            v69 = &stru_284703F00;
          }

          v183[0] = @"http://schema.org/Place";
          v183[1] = v69;
          v182[2] = @"address";
          v70 = selfCopy2;
          v61 = v68;
          v71 = [v70 schemaPostalAddressForPostalAddressExtraction:v168 addressThreshold:threshold];
          v183[2] = v71;
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v183 forKeys:v182 count:3];
          v185[3] = v59;
          v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v185 forKeys:v184 count:4];
          v189 = v72;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v187 forKeys:v186 count:5];

          v65 = v71;
          goto LABEL_82;
        }
      }

      else
      {
        selfCopy2 = self;
        if (!detectedEventName)
        {
          goto LABEL_87;
        }
      }

      date4 = [detectedStartDateComponents date];

      if (date4 && !v25 && !v169 && !v161)
      {
        goto LABEL_61;
      }

LABEL_87:
      v150 = v24;
      v95 = objc_opt_class();
      v96 = v25;
      v97 = v95;
      v171 = [selfCopy2 tupleWithError:v96 label:@"reservationId"];
      v181[0] = v171;
      v165 = [selfCopy2 tupleWithEntity:detectedEventName label:@"reservationName"];
      v181[1] = v165;
      v156 = [selfCopy2 tupleWithError:v169 label:@"address"];
      v181[2] = v156;
      v98 = [selfCopy2 tupleWithError:v161 label:@"place"];
      v181[3] = v98;
      date5 = [detectedStartDateComponents date];
      v100 = [selfCopy2 tupleWithEntity:date5 label:@"startDate"];
      v181[4] = v100;
      v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v181 count:5];
      v33 = [v97 nilEntities:v101];

      v102 = sgEventsLogHandle();
      if (!os_log_type_enabled(v102, OS_LOG_TYPE_ERROR))
      {
LABEL_90:

        v28 = 0;
        v24 = v150;
        goto LABEL_113;
      }

      v103 = [v33 _pas_componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v212 = v103;
      v104 = "SGStructuredEventDissector: Missing entities for movie extraction: %@";
LABEL_125:
      _os_log_error_impl(&dword_231E60000, v102, OS_LOG_TYPE_ERROR, v104, buf, 0xCu);

      goto LABEL_90;
    }

    if (category2 != 5)
    {
      detectedEndDateComponents = [(SGStructuredEventDocument *)v23 detectedEndDateComponents];
      if ([v20 isCancelled] && detectedEventName)
      {
        if (!v25)
        {
          goto LABEL_51;
        }

        date6 = [detectedStartDateComponents date];

        if (date6)
        {
          goto LABEL_51;
        }
      }

      else if (!detectedEventName)
      {
        goto LABEL_85;
      }

      date7 = [detectedStartDateComponents date];

      if (date7 && !v25 && !v169 && !v161)
      {
LABEL_51:
        v204[0] = @"@context";
        v204[1] = @"@type";
        v205[0] = @"http://schema.org";
        v205[1] = @"http://schema.org/EventReservation";
        v204[2] = @"reservationStatus";
        v153 = v20;
        v56 = [self schemaStringForReservationStatus:{objc_msgSend(v20, "isCancelled")}];
        v57 = v56;
        v58 = &stru_284703F00;
        if (v24)
        {
          v58 = v24;
        }

        v205[2] = v56;
        v205[3] = v58;
        v204[3] = @"reservationId";
        v204[4] = @"reservationFor";
        v202[0] = @"@type";
        v202[1] = @"name";
        v203[0] = @"http://schema.org/Event";
        v203[1] = detectedEventName;
        v202[2] = @"startDate";
        v144 = [self schemaStringForDateComponents:detectedStartDateComponents];
        v203[2] = v144;
        v202[3] = @"endDate";
        v59 = [self schemaStringForDateComponents:detectedEndDateComponents];
        v203[3] = v59;
        v202[4] = @"location";
        v200[0] = @"@type";
        v200[1] = @"name";
        v60 = v160;
        if (!v160)
        {
          v60 = &stru_284703F00;
        }

        v201[0] = @"http://schema.org/Place";
        v201[1] = v60;
        v200[2] = @"address";
        v61 = v57;
        v62 = [self schemaPostalAddressForPostalAddressExtraction:v168 addressThreshold:threshold];
        v201[2] = v62;
        v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v201 forKeys:v200 count:3];
        v203[4] = v63;
        v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v203 forKeys:v202 count:5];
        v205[4] = v64;
        v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v205 forKeys:v204 count:5];

        detectedEndDateComponents2 = detectedEndDateComponents;
        v65 = v144;

        goto LABEL_82;
      }

LABEL_85:
      v149 = v24;
      v164 = [self tupleWithError:v25 label:@"reservationId"];
      v199[0] = v164;
      v91 = [self tupleWithEntity:detectedEventName label:@"reservationName"];
      v199[1] = v91;
      v155 = [self tupleWithError:v161 label:@"place"];
      v199[2] = v155;
      v147 = [self tupleWithError:v169 label:@"address"];
      v199[3] = v147;
      date8 = [detectedStartDateComponents date];
      v93 = [self tupleWithEntity:date8 label:@"startDate"];
      v199[4] = v93;
      v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v199 count:5];
      v33 = [self nilEntities:v94];

      v88 = sgEventsLogHandle();
      if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
      {
        v89 = [v33 _pas_componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v212 = v89;
        v90 = "SGStructuredEventDissector: Missing entities for ticket extraction: %@";
        goto LABEL_123;
      }

LABEL_86:
      v24 = v149;

      goto LABEL_5;
    }

    detectedEndDateComponents2 = [(SGStructuredEventDocument *)v23 detectedEndDateComponents];
    v176 = 0;
    v143 = [(SGStructuredEventDocument *)v23 detectedEndAddressWithError:&v176];
    v39 = v176;
    v175 = 0;
    v140 = [(SGStructuredEventDocument *)v23 detectedEndPlaceWithError:&v175];
    v40 = v175;
    v41 = v29;
    v42 = v40;
    v153 = v41;
    v148 = v24;
    v139 = v39;
    v141 = v40;
    if (![v41 isCancelled])
    {
      goto LABEL_32;
    }

    providerName = [v153 providerName];
    if (!providerName)
    {
      goto LABEL_32;
    }

    v44 = providerName;
    if (!v25)
    {

      goto LABEL_96;
    }

    date9 = [detectedStartDateComponents date];

    if (!date9)
    {
LABEL_32:
      providerName2 = [v153 providerName];
      if (providerName2)
      {
        v47 = providerName2;
        v48 = v39;
        v49 = v24;
        date10 = [detectedStartDateComponents date];
        if (date10)
        {
          v51 = date10;
          date11 = [detectedEndDateComponents2 date];

          v24 = v49;
          v39 = v48;
          v42 = v141;
          if (!date11 || v25 || v169 || v161 || v141 || v39)
          {
            goto LABEL_92;
          }

          goto LABEL_96;
        }

        v39 = v48;
        v42 = v141;
      }

LABEL_92:
      v167 = [self tupleWithError:v25 label:@"reservationId"];
      v190[0] = v167;
      v137 = [self tupleWithError:v169 label:@"address"];
      v190[1] = v137;
      v135 = [self tupleWithError:v39 label:@"endAddress"];
      v190[2] = v135;
      v133 = [self tupleWithError:v161 label:@"place"];
      v190[3] = v133;
      v128 = [self tupleWithError:v42 label:@"endPlace"];
      v190[4] = v128;
      date12 = [detectedStartDateComponents date];
      v129 = [self tupleWithEntity:date12 label:@"startDate"];
      v190[5] = v129;
      date13 = [detectedEndDateComponents2 date];
      v110 = [self tupleWithEntity:date13 label:@"endDate"];
      v190[6] = v110;
      providerName3 = [v153 providerName];
      v112 = [self tupleWithEntity:providerName3 label:@"providerName"];
      v190[7] = v112;
      v113 = [MEMORY[0x277CBEA60] arrayWithObjects:v190 count:8];
      v33 = [self nilEntities:v113];

      v114 = sgEventsLogHandle();
      if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
      {
        v127 = [v33 _pas_componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v212 = v127;
        _os_log_error_impl(&dword_231E60000, v114, OS_LOG_TYPE_ERROR, "SGStructuredEventDissector: Missing entities for car extraction: %@", buf, 0xCu);
      }

      v28 = 0;
      v24 = v148;
      v61 = v139;
      v65 = v143;
LABEL_109:

      v59 = v141;
      goto LABEL_110;
    }

LABEL_96:
    v197[0] = @"@context";
    v197[1] = @"@type";
    v198[0] = @"http://schema.org";
    v198[1] = @"http://schema.org/RentalCarReservation";
    if (v24)
    {
      v115 = v24;
    }

    else
    {
      v115 = &stru_284703F00;
    }

    v198[2] = v115;
    v197[2] = @"reservationId";
    v197[3] = @"reservationStatus";
    v152 = [self schemaStringForReservationStatus:{objc_msgSend(v153, "isCancelled")}];
    v198[3] = v152;
    v197[4] = @"pickupTime";
    v138 = [self schemaStringForDateComponents:detectedStartDateComponents];
    v198[4] = v138;
    v197[5] = @"pickupLocation";
    v196[0] = @"http://schema.org/Place";
    v195[0] = @"@type";
    v195[1] = @"address";
    v116 = detectedEndDateComponents2;
    v117 = [self schemaPostalAddressForPostalAddressExtraction:v168 addressThreshold:threshold];
    v195[2] = @"name";
    v118 = v160;
    if (!v160)
    {
      v118 = &stru_284703F00;
    }

    v136 = v117;
    v196[1] = v117;
    v196[2] = v118;
    v134 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v196 forKeys:v195 count:3];
    v198[5] = v134;
    v197[6] = @"dropoffTime";
    v132 = [self schemaStringForDateComponents:detectedEndDateComponents2];
    v198[6] = v132;
    v197[7] = @"dropoffLocation";
    v194[0] = @"http://schema.org/Place";
    v193[0] = @"@type";
    v193[1] = @"address";
    hasExtraction = [v143 hasExtraction];
    if (hasExtraction)
    {
      v119 = [self schemaPostalAddressForPostalAddressExtraction:v143 addressThreshold:threshold];
    }

    else
    {
      v119 = &stru_284703F00;
    }

    v193[2] = @"name";
    v120 = v140;
    if (!v140)
    {
      v120 = &stru_284703F00;
    }

    v194[1] = v119;
    v194[2] = v120;
    v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:3];
    v198[7] = v121;
    v197[8] = @"provider";
    v192[0] = @"http://schema.org/Organization";
    v191[0] = @"type";
    v191[1] = @"name";
    providerName4 = [v153 providerName];
    v192[1] = providerName4;
    v123 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v192 forKeys:v191 count:2];
    v198[8] = v123;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:9];

    if (hasExtraction)
    {
    }

    v33 = 0;
    v65 = v143;
    v24 = v148;
    detectedEndDateComponents2 = v116;
    v61 = v139;
    v114 = v152;
    goto LABEL_109;
  }

  v29 = v20;
  if (category2 < 4)
  {
LABEL_4:
    v30 = objc_alloc(MEMORY[0x277CCACA8]);
    v31 = [SGStructuredEventClassification describeCategory:[(SGStructuredEventDocument *)v23 category]];
    v32 = [v30 initWithFormat:@"Unsupported category: %@", v31];
    v180 = v32;
    v33 = [MEMORY[0x277CBEA60] arrayWithObjects:&v180 count:1];

LABEL_5:
    v28 = 0;
LABEL_113:
    if (v33)
    {
      [v17 setObject:v33 forKeyedSubscript:@"missingEntities"];
    }

    v25 = v158;
    detectedEventName = v159;
    goto LABEL_116;
  }

  if (category2 == 4)
  {
    detectedEndDateComponents = [(SGStructuredEventDocument *)v23 detectedEndDateComponents];
    if ([v20 isCancelled] && detectedEventName)
    {
      if (v24)
      {
        goto LABEL_79;
      }

      date14 = [detectedStartDateComponents date];

      if (date14)
      {
        goto LABEL_79;
      }
    }

    else if (!detectedEventName)
    {
      goto LABEL_83;
    }

    date15 = [detectedStartDateComponents date];
    if (date15)
    {
      v77 = date15;
      date16 = [detectedEndDateComponents date];

      if (date16)
      {
        if (!v25 && !v169)
        {
LABEL_79:
          v209[0] = @"@context";
          v209[1] = @"@type";
          v210[0] = @"http://schema.org";
          v210[1] = @"http://schema.org/LodgingReservation";
          v209[2] = @"checkinTime";
          v79 = [self schemaStringForDateComponents:detectedStartDateComponents];
          v210[2] = v79;
          v209[3] = @"checkoutTime";
          v145 = [self schemaStringForDateComponents:detectedEndDateComponents];
          v210[3] = v145;
          v209[4] = @"reservationStatus";
          v153 = v20;
          v80 = [self schemaStringForReservationStatus:{objc_msgSend(v20, "isCancelled")}];
          v59 = v80;
          v81 = &stru_284703F00;
          if (v24)
          {
            v81 = v24;
          }

          v210[4] = v80;
          v210[5] = v81;
          v209[5] = @"reservationId";
          v209[6] = @"reservationFor";
          v207[0] = @"@type";
          v207[1] = @"name";
          v208[0] = @"http://schema.org/LodgingBusiness";
          v208[1] = detectedEventName;
          v207[2] = @"address";
          v82 = [self schemaPostalAddressForPostalAddressExtraction:v168 addressThreshold:threshold];
          v208[2] = v82;
          v83 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v208 forKeys:v207 count:3];
          v210[6] = v83;
          detectedEndDateComponents2 = detectedEndDateComponents;
          v61 = v79;
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v210 forKeys:v209 count:7];

          v65 = v145;
LABEL_82:
          v33 = 0;
LABEL_110:

          if (v28)
          {
            [v17 setObject:v28 forKeyedSubscript:@"schema"];
          }

          v29 = v153;
          goto LABEL_113;
        }
      }
    }

LABEL_83:
    v149 = v24;
    v163 = [self tupleWithError:v25 label:@"reservationId"];
    v206[0] = v163;
    v84 = [self tupleWithEntity:detectedEventName label:@"reservationName"];
    v206[1] = v84;
    v154 = [self tupleWithError:v169 label:@"address"];
    v206[2] = v154;
    date17 = [detectedStartDateComponents date];
    v142 = [self tupleWithEntity:date17 label:@"startDate"];
    v206[3] = v142;
    date18 = [detectedEndDateComponents date];
    v86 = [self tupleWithEntity:date18 label:@"endDate"];
    v206[4] = v86;
    v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v206 count:5];
    v33 = [self nilEntities:v87];

    v88 = sgEventsLogHandle();
    if (os_log_type_enabled(v88, OS_LOG_TYPE_ERROR))
    {
      v89 = [v33 _pas_componentsJoinedByString:{@", "}];
      *buf = 138412290;
      v212 = v89;
      v90 = "SGStructuredEventDissector: Missing entities for hotel extraction: %@";
LABEL_123:
      _os_log_error_impl(&dword_231E60000, v88, OS_LOG_TYPE_ERROR, v90, buf, 0xCu);

      goto LABEL_86;
    }

    goto LABEL_86;
  }

LABEL_116:
  modelOutputSummary2 = [(SGStructuredEventDocument *)v23 modelOutputSummary];
  [v17 setObject:modelOutputSummary2 forKeyedSubscript:@"ml_summary"];

  if (v173)
  {
    predictedStringsFromModelOutput = [(SGStructuredEventDocument *)v23 predictedStringsFromModelOutput];
    [v17 setObject:predictedStringsFromModelOutput forKeyedSubscript:@"ml_plaintext_prediction"];
  }

LABEL_119:

  return v17;
}

+ (id)schemaOrgAndMissingEntitiesForDUFoundInEvent:(id)event eventClassification:(id)classification fromSuggestTool:(BOOL)tool
{
  v172[7] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  classificationCopy = classification;
  v9 = objc_opt_new();
  if (([eventCopy detectedEventPolarity] & 1) == 0)
  {
    [v9 setObject:&unk_28474A660 forKeyedSubscript:@"missingEntities"];
    goto LABEL_152;
  }

  reservationIdError = [eventCopy reservationIdError];
  reservationId = [eventCopy reservationId];
  hotelName = [eventCopy hotelName];
  movieName = [eventCopy movieName];
  startAddressError = [eventCopy startAddressError];
  startAddressComponents = [eventCopy startAddressComponents];
  startAddress = [eventCopy startAddress];
  endAddressError = [eventCopy endAddressError];
  endAddressComponents = [eventCopy endAddressComponents];
  endAddress = [eventCopy endAddress];
  startPlaceError = [eventCopy startPlaceError];
  startPlace = [eventCopy startPlace];
  endPlaceError = [eventCopy endPlaceError];
  endPlace = [eventCopy endPlace];
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  guestName = [eventCopy guestName];
  category = [classificationCopy category];
  v16 = 0;
  v121 = startAddressError;
  v114 = movieName;
  if (category > 5)
  {
    if (category == 6)
    {
      v113 = hotelName;
      v111 = reservationId;
      if ((![classificationCopy isCancelled] || !movieName || reservationIdError && !startDate) && (!movieName || !startDate || reservationIdError || startAddressError || startPlaceError))
      {
        v112 = reservationIdError;
        v109 = [self tupleWithError:reservationIdError label:@"reservationId"];
        v148[0] = v109;
        v83 = [self tupleWithEntity:movieName label:@"movieName"];
        v148[1] = v83;
        v84 = [self tupleWithError:startPlaceError label:@"place"];
        v148[2] = v84;
        v85 = [self tupleWithError:startAddressError label:@"address"];
        v148[3] = v85;
        v86 = [self tupleWithEntity:startDate label:@"startDate"];
        v148[4] = v86;
        v87 = [MEMORY[0x277CBEA60] arrayWithObjects:v148 count:5];
        v16 = [self nilEntities:v87];

        v35 = sgEventsLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v76 = [v16 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v165 = v76;
          v77 = "SGStructuredEventDissector: Missing entities for ticket extraction: %@";
          goto LABEL_145;
        }

        goto LABEL_146;
      }

      v155[0] = @"@context";
      v155[1] = @"@type";
      v156[0] = @"http://schema.org";
      v156[1] = @"http://schema.org/EventReservation";
      v155[2] = @"reservationStatus";
      v36 = [self schemaStringForReservationStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
      v107 = v36;
      if (reservationId)
      {
        v37 = reservationId;
      }

      else
      {
        v37 = &stru_284703F00;
      }

      v156[2] = v36;
      v156[3] = v37;
      v155[3] = @"reservationId";
      v155[4] = @"reservationFor";
      v153[0] = @"@type";
      v153[1] = @"name";
      v154[0] = @"http://schema.org/Event";
      v154[1] = movieName;
      v38 = startDate;
      if (!startDate)
      {
        v38 = &stru_284703F00;
      }

      v153[2] = @"startDate";
      v153[3] = @"endDate";
      v39 = endDate;
      if (!endDate)
      {
        v39 = &stru_284703F00;
      }

      v154[2] = v38;
      v154[3] = v39;
      v153[4] = @"location";
      v151[0] = @"@type";
      v151[1] = @"name";
      v40 = startPlace;
      if (!startPlace)
      {
        v40 = &stru_284703F00;
      }

      v152[0] = @"http://schema.org/Place";
      v152[1] = v40;
      v151[2] = @"address";
      v41 = startAddress;
      if (!startAddress)
      {
        v41 = &stru_284703F00;
      }

      if (startAddressComponents)
      {
        v41 = startAddressComponents;
      }

      v152[2] = v41;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v152 forKeys:v151 count:3];
      v154[4] = v42;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v154 forKeys:v153 count:5];
      v44 = v43 = reservationIdError;
      v156[4] = v44;
      v155[5] = @"underName";
      v149[0] = @"@type";
      v149[1] = @"name";
      v45 = guestName;
      if (!guestName)
      {
        v45 = &stru_284703F00;
      }

      v150[0] = @"http://schema.org/Person";
      v150[1] = v45;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v150 forKeys:v149 count:2];
      v156[5] = v46;
      v47 = MEMORY[0x277CBEAC0];
      v48 = v156;
      v49 = v155;
    }

    else
    {
      if (category != 7)
      {
        sg_deepCopyWithoutEmptySchemaObjects = 0;
        if (category == 8)
        {
          v112 = reservationIdError;
          if ([classificationCopy isCancelled] && hotelName)
          {
            if (!(reservationId | startDate))
            {
              goto LABEL_135;
            }
          }

          else if (!hotelName || !startDate || reservationIdError || startAddressError)
          {
LABEL_135:
            v111 = reservationId;
            v113 = hotelName;
            v71 = [self tupleWithEntity:hotelName label:@"hotelName"];
            v166[0] = v71;
            v72 = [self tupleWithError:v121 label:@"address"];
            v166[1] = v72;
            v73 = [self tupleWithError:reservationIdError label:@"reservationId"];
            v166[2] = v73;
            v74 = [self tupleWithEntity:startDate label:@"startDate"];
            v166[3] = v74;
            v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v166 count:4];
            v16 = [self nilEntities:v75];

            v35 = sgEventsLogHandle();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v76 = [v16 _pas_componentsJoinedByString:{@", "}];
              *buf = 138412290;
              v165 = v76;
              v77 = "SGStructuredEventDissector: Missing entities for restaurant extraction: %@";
LABEL_145:
              _os_log_error_impl(&dword_231E60000, v35, OS_LOG_TYPE_ERROR, v77, buf, 0xCu);

              goto LABEL_146;
            }

            goto LABEL_146;
          }

          v171[0] = @"@context";
          v171[1] = @"@type";
          v172[0] = @"http://schema.org";
          v172[1] = @"http://schema.org/FoodEstablishmentReservation";
          v64 = hotelName;
          if (reservationId)
          {
            v65 = reservationId;
          }

          else
          {
            v65 = &stru_284703F00;
          }

          v172[2] = v65;
          v171[2] = @"reservationId";
          v171[3] = @"reservationStatus";
          v58 = [self schemaStringForReservationStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
          v172[3] = v58;
          v171[4] = @"reservationFor";
          v169[0] = @"@type";
          v169[1] = @"name";
          v170[0] = @"http://schema.org/FoodEstablishment";
          v170[1] = hotelName;
          v169[2] = @"address";
          v66 = startAddress;
          if (!startAddress)
          {
            v66 = &stru_284703F00;
          }

          if (startAddressComponents)
          {
            v66 = startAddressComponents;
          }

          v170[2] = v66;
          v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:3];
          v61 = v67;
          v68 = startDate;
          if (!startDate)
          {
            v68 = &stru_284703F00;
          }

          v172[4] = v67;
          v172[5] = v68;
          v171[5] = @"startTime";
          v171[6] = @"underName";
          v167[0] = @"@type";
          v167[1] = @"name";
          v69 = guestName;
          if (!guestName)
          {
            v69 = &stru_284703F00;
          }

          v168[0] = @"http://schema.org/Person";
          v168[1] = v69;
          v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v168 forKeys:v167 count:2];
          v172[6] = v70;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:7];

          hotelName = v64;
LABEL_134:

          sg_deepCopyWithoutEmptySchemaObjects = [v35 sg_deepCopyWithoutEmptySchemaObjects];
          v16 = 0;
LABEL_148:

          goto LABEL_149;
        }

        goto LABEL_149;
      }

      v113 = hotelName;
      if ((![classificationCopy isCancelled] || !movieName || reservationIdError && !startDate) && (!movieName || !startDate || reservationIdError || startAddressError || startPlaceError))
      {
        v111 = reservationId;
        v88 = objc_opt_class();
        v112 = reservationIdError;
        [self tupleWithError:reservationIdError label:@"reservationId"];
        v90 = v89 = startAddressError;
        v128[0] = v90;
        v91 = [self tupleWithEntity:movieName label:@"movieName"];
        v128[1] = v91;
        v92 = [self tupleWithError:v89 label:@"address"];
        v128[2] = v92;
        v93 = [self tupleWithError:startPlaceError label:@"place"];
        v128[3] = v93;
        v94 = [self tupleWithEntity:startDate label:@"startDate"];
        v128[4] = v94;
        v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v128 count:5];
        v16 = [v88 nilEntities:v95];

        v35 = sgEventsLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v76 = [v16 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v165 = v76;
          v77 = "SGStructuredEventDissector: Missing entities for movie extraction: %@";
          goto LABEL_145;
        }

        goto LABEL_146;
      }

      v135[0] = @"@context";
      v135[1] = @"@type";
      v136[0] = @"http://schema.org";
      v136[1] = @"http://schema.org/EventReservation";
      if (reservationId)
      {
        v50 = reservationId;
      }

      else
      {
        v50 = &stru_284703F00;
      }

      v136[2] = v50;
      v135[2] = @"reservationId";
      v135[3] = @"reservationStatus";
      v107 = [self schemaStringForEventStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
      v136[3] = v107;
      v135[4] = @"reservationFor";
      v133[0] = @"@type";
      v133[1] = @"name";
      v134[0] = @"http://schema.org/ScreeningEvent";
      v134[1] = movieName;
      v51 = startDate;
      if (!startDate)
      {
        v51 = &stru_284703F00;
      }

      v134[2] = v51;
      v133[2] = @"startDate";
      v133[3] = @"location";
      v131[0] = @"@type";
      v131[1] = @"name";
      v52 = startPlace;
      if (!startPlace)
      {
        v52 = &stru_284703F00;
      }

      v132[0] = @"http://schema.org/Place";
      v132[1] = v52;
      v131[2] = @"address";
      v53 = startAddress;
      if (!startAddress)
      {
        v53 = &stru_284703F00;
      }

      if (startAddressComponents)
      {
        v53 = startAddressComponents;
      }

      v132[2] = v53;
      v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v132 forKeys:v131 count:3];
      v134[3] = v42;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v134 forKeys:v133 count:4];
      v44 = v43 = reservationIdError;
      v136[4] = v44;
      v135[5] = @"underName";
      v129[0] = @"@type";
      v129[1] = @"name";
      v54 = guestName;
      if (!guestName)
      {
        v54 = &stru_284703F00;
      }

      v130[0] = @"http://schema.org/Person";
      v130[1] = v54;
      v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v130 forKeys:v129 count:2];
      v136[5] = v46;
      v47 = MEMORY[0x277CBEAC0];
      v48 = v136;
      v49 = v135;
    }

    v35 = [v47 dictionaryWithObjects:v48 forKeys:v49 count:6];

    reservationIdError = v43;
LABEL_95:

    sg_deepCopyWithoutEmptySchemaObjects = [v35 sg_deepCopyWithoutEmptySchemaObjects];
    v16 = 0;
LABEL_147:
    hotelName = v113;
    goto LABEL_148;
  }

  if (category == 4)
  {
    v112 = reservationIdError;
    if ((![classificationCopy isCancelled] || !hotelName || !(reservationId | startDate)) && (!hotelName || !startDate || !endDate || reservationIdError || startAddressError))
    {
      v111 = reservationId;
      v110 = [self tupleWithError:reservationIdError label:@"reservationId"];
      v157[0] = v110;
      v113 = hotelName;
      v96 = [self tupleWithEntity:hotelName label:@"hotelName"];
      v157[1] = v96;
      v97 = [self tupleWithError:startAddressError label:@"address"];
      v157[2] = v97;
      v98 = [self tupleWithEntity:startDate label:@"startDate"];
      v157[3] = v98;
      v99 = [self tupleWithEntity:endDate label:@"endDate"];
      v157[4] = v99;
      v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v157 count:5];
      v16 = [self nilEntities:v100];

      v35 = sgEventsLogHandle();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        v76 = [v16 _pas_componentsJoinedByString:{@", "}];
        *buf = 138412290;
        v165 = v76;
        v77 = "SGStructuredEventDissector: Missing entities for hotel extraction: %@";
        goto LABEL_145;
      }

      goto LABEL_146;
    }

    v162[0] = @"@context";
    v162[1] = @"@type";
    v163[0] = @"http://schema.org";
    v163[1] = @"http://schema.org/LodgingReservation";
    v55 = startDate;
    if (!startDate)
    {
      v55 = &stru_284703F00;
    }

    v162[2] = @"checkinTime";
    v162[3] = @"checkoutTime";
    v56 = endDate;
    if (!endDate)
    {
      v56 = &stru_284703F00;
    }

    v163[2] = v55;
    v163[3] = v56;
    v162[4] = @"reservationStatus";
    v57 = [self schemaStringForReservationStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
    v58 = v57;
    if (reservationId)
    {
      v59 = reservationId;
    }

    else
    {
      v59 = &stru_284703F00;
    }

    v163[4] = v57;
    v163[5] = v59;
    v162[5] = @"reservationId";
    v162[6] = @"reservationFor";
    v160[0] = @"@type";
    v160[1] = @"name";
    v161[0] = @"http://schema.org/LodgingBusiness";
    v161[1] = hotelName;
    v160[2] = @"address";
    v60 = startAddress;
    if (!startAddress)
    {
      v60 = &stru_284703F00;
    }

    if (startAddressComponents)
    {
      v60 = startAddressComponents;
    }

    v161[2] = v60;
    v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:3];
    v163[6] = v61;
    v162[7] = @"underName";
    v158[0] = @"@type";
    v158[1] = @"name";
    v62 = guestName;
    if (!guestName)
    {
      v62 = &stru_284703F00;
    }

    v159[0] = @"http://schema.org/Person";
    v159[1] = v62;
    v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v159 forKeys:v158 count:2];
    v163[7] = v63;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v163 forKeys:v162 count:8];

    reservationIdError = v112;
    goto LABEL_134;
  }

  sg_deepCopyWithoutEmptySchemaObjects = 0;
  if (category == 5)
  {
    v113 = hotelName;
    v111 = reservationId;
    v112 = reservationIdError;
    if (![classificationCopy isCancelled] || (objc_msgSend(classificationCopy, "providerName"), (v18 = objc_claimAutoreleasedReturnValue()) == 0) || (v18, reservationIdError) && !startDate)
    {
      providerName = [classificationCopy providerName];

      if (!providerName || !startDate || !endDate || reservationIdError || startAddressError || startPlaceError || endPlaceError || endAddressError)
      {
        v108 = [self tupleWithError:reservationIdError label:@"reservationId"];
        v137[0] = v108;
        v106 = [self tupleWithError:startAddressError label:@"address"];
        v137[1] = v106;
        v105 = [self tupleWithError:endAddressError label:@"endAddress"];
        v137[2] = v105;
        v104 = [self tupleWithError:startPlaceError label:@"place"];
        v137[3] = v104;
        v103 = [self tupleWithError:endPlaceError label:@"endPlace"];
        v137[4] = v103;
        v78 = [self tupleWithEntity:startDate label:@"startDate"];
        v137[5] = v78;
        v79 = [self tupleWithEntity:endDate label:@"endDate"];
        v137[6] = v79;
        providerName2 = [classificationCopy providerName];
        v81 = [self tupleWithEntity:providerName2 label:@"providerName"];
        v137[7] = v81;
        v82 = [MEMORY[0x277CBEA60] arrayWithObjects:v137 count:8];
        v16 = [self nilEntities:v82];

        v35 = sgEventsLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v76 = [v16 _pas_componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v165 = v76;
          v77 = "SGStructuredEventDissector: Missing entities for car extraction: %@";
          goto LABEL_145;
        }

LABEL_146:
        sg_deepCopyWithoutEmptySchemaObjects = 0;
        reservationId = v111;
        reservationIdError = v112;
        goto LABEL_147;
      }
    }

    v146[0] = @"@context";
    v146[1] = @"@type";
    v147[0] = @"http://schema.org";
    v147[1] = @"http://schema.org/RentalCarReservation";
    v20 = reservationId;
    if (!reservationId)
    {
      v20 = &stru_284703F00;
    }

    v147[2] = v20;
    v146[2] = @"reservationId";
    v146[3] = @"reservationStatus";
    v21 = [self schemaStringForReservationStatus:{objc_msgSend(classificationCopy, "isCancelled")}];
    v107 = v21;
    v22 = startDate;
    if (!startDate)
    {
      v22 = &stru_284703F00;
    }

    v147[3] = v21;
    v147[4] = v22;
    v146[4] = @"pickupTime";
    v146[5] = @"pickupLocation";
    v144[0] = @"@type";
    v144[1] = @"address";
    v23 = startAddress;
    if (!startAddress)
    {
      v23 = &stru_284703F00;
    }

    if (startAddressComponents)
    {
      v23 = startAddressComponents;
    }

    v145[0] = @"http://schema.org/Place";
    v145[1] = v23;
    v144[2] = @"name";
    v24 = startPlace;
    if (!startPlace)
    {
      v24 = &stru_284703F00;
    }

    v145[2] = v24;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v145 forKeys:v144 count:3];
    v26 = v25;
    v27 = endDate;
    if (!endDate)
    {
      v27 = &stru_284703F00;
    }

    v147[5] = v25;
    v147[6] = v27;
    v146[6] = @"dropoffTime";
    v146[7] = @"dropoffLocation";
    v142[0] = @"@type";
    v142[1] = @"address";
    v28 = endAddress;
    if (!endAddress)
    {
      v28 = &stru_284703F00;
    }

    if (endAddressComponents)
    {
      v28 = endAddressComponents;
    }

    v143[0] = @"http://schema.org/Place";
    v143[1] = v28;
    v142[2] = @"name";
    v29 = endPlace;
    if (!endPlace)
    {
      v29 = &stru_284703F00;
    }

    v143[2] = v29;
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v143 forKeys:v142 count:3];
    v147[7] = v30;
    v146[8] = @"provider";
    v141[0] = @"http://schema.org/Organization";
    v140[0] = @"type";
    v140[1] = @"name";
    providerName3 = [classificationCopy providerName];
    v141[1] = providerName3;
    v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v141 forKeys:v140 count:2];
    v147[8] = v32;
    v146[9] = @"underName";
    v138[0] = @"@type";
    v138[1] = @"name";
    v33 = guestName;
    if (!guestName)
    {
      v33 = &stru_284703F00;
    }

    v139[0] = @"http://schema.org/Person";
    v139[1] = v33;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:2];
    v147[9] = v34;
    v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:10];

    reservationId = v111;
    reservationIdError = v112;

    goto LABEL_95;
  }

LABEL_149:
  [v9 setObject:sg_deepCopyWithoutEmptySchemaObjects forKeyedSubscript:@"schema"];
  [v9 setObject:v16 forKeyedSubscript:@"missingEntities"];
  v101 = sgEventsLogHandle();
  if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138477827;
    v165 = v9;
    _os_log_impl(&dword_231E60000, v101, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: foundInEventResult result schema %{private}@", buf, 0xCu);
  }

LABEL_152:

  return v9;
}

+ (id)schemaOrgAndMissingEntitiesForPreprocessed:(id)preprocessed eventClassification:(id)classification fromSuggestTool:(BOOL)tool
{
  toolCopy = tool;
  classificationCopy = classification;
  preprocessedCopy = preprocessed;
  v9 = [objc_opt_class() schemaOrgAndMissingEntitiesForPreprocessed:preprocessedCopy eventClassification:classificationCopy fromSuggestTool:toolCopy addressThreshold:0 pflTrainable:0 hasEvent:0];

  return v9;
}

+ (void)addSchemaAsEnrichment:(id)enrichment inMessage:(id)message parentEntity:(id)entity eventClassification:(id)classification mlDefaultExtraction:(BOOL)extraction
{
  extractionCopy = extraction;
  v51[1] = *MEMORY[0x277D85DE8];
  enrichmentCopy = enrichment;
  messageCopy = message;
  entityCopy = entity;
  classificationCopy = classification;
  v13 = objc_opt_new();
  v35 = enrichmentCopy;
  v39 = [enrichmentCopy objectForKeyedSubscript:@"mergedSchema"];
  v51[0] = v39;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
  v34 = v13;
  v41 = messageCopy;
  v15 = [v13 enrichmentsFromSchemas:v14 inMessage:messageCopy parentEntity:entityCopy];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v15;
  v42 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v42)
  {
    v37 = *v44;
    do
    {
      v16 = 0;
      do
      {
        if (*v44 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v43 + 1) + 8 * v16);
        v18 = objc_autoreleasePoolPush();
        v19 = [MEMORY[0x277D01FA0] extractedFromTemplateWithName:@"ML"];
        [v17 addTag:v19];

        v20 = [MEMORY[0x277D01FA0] extractedFromTemplateWithShortName:@"ML"];
        [v17 addTag:v20];

        from = [v41 from];
        emailAddress = [from emailAddress];
        v23 = emailAddressDomain(emailAddress);

        if (v23)
        {
          v24 = [MEMORY[0x277D01FA0] domain:v23];
          [v17 addTag:v24];
        }

        duplicateKey = [entityCopy duplicateKey];
        bundleId = [duplicateKey bundleId];

        v27 = objc_alloc(MEMORY[0x277D01FC8]);
        v28 = +[SGStructuredEventClassification describeCategory:](SGStructuredEventClassification, "describeCategory:", [classificationCopy category]);
        v49 = v39;
        v29 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
        v30 = [v27 initWithType:1 categoryDescription:v28 originBundleId:bundleId confidence:v29 schemaOrg:0 participants:0 eventActivities:1.0];

        toJsonString = [v30 toJsonString];
        if (toJsonString)
        {
          v32 = [MEMORY[0x277D01FA0] eventMetadata:toJsonString];
          [v17 addTag:v32];
        }

        else
        {
          v32 = sgLogHandle();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v48 = v30;
            _os_log_error_impl(&dword_231E60000, v32, OS_LOG_TYPE_ERROR, "Failed to convert object to JSON: %@", buf, 0xCu);
          }
        }

        if (extractionCopy)
        {
          [entityCopy addOrReplaceEventEnrichment:v17];
        }

        else
        {
          [entityCopy addEnrichment:v17];
        }

        v33 = sgEventsLogHandle();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_231E60000, v33, OS_LOG_TYPE_DEFAULT, "SGStructuredEventDissector: Added enrichment", buf, 2u);
        }

        objc_autoreleasePoolPop(v18);
        ++v16;
      }

      while (v42 != v16);
      v42 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v42);
  }
}

+ (id)mergeFallbackSchema:(id)schema parentEntity:(id)entity
{
  v38[2] = *MEMORY[0x277D85DE8];
  schemaCopy = schema;
  entityCopy = entity;
  v37[0] = @"mergedSchema";
  v37[1] = @"diff";
  v38[0] = schemaCopy;
  v38[1] = &stru_284703F00;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  if ([entityCopy hasEventEnrichment])
  {
    v9 = [self eventEnrichmentFromEntity:entityCopy];
    v10 = v9;
    if (v9)
    {
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      tags = [v9 tags];
      v12 = [tags countByEnumeratingWithState:&v30 objects:v36 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v31;
LABEL_5:
        v15 = 0;
        while (1)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(tags);
          }

          v16 = *(*(&v30 + 1) + 8 * v15);
          if ([v16 isSchemaOrg])
          {
            break;
          }

          if (v13 == ++v15)
          {
            v13 = [tags countByEnumeratingWithState:&v30 objects:v36 count:16];
            if (v13)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }

        value = [v16 value];

        if (!value)
        {
          goto LABEL_18;
        }

        v18 = MEMORY[0x277CCAAA0];
        v19 = [value dataUsingEncoding:4];
        v29 = 0;
        v20 = [v18 JSONObjectWithData:v19 options:0 error:&v29];
        v21 = v29;

        if (v20 && objc_msgSend_count(v20))
        {
          v28 = v21;
          v22 = objc_opt_new();
          v35 = schemaCopy;
          v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
          firstObject = [v20 firstObject];
          v34 = firstObject;
          v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v34 count:1];
          v27 = [v22 mergeSchemas:v23 withExpectedSchemas:v25];

          v8 = v27;
          v21 = v28;
        }
      }

      else
      {
LABEL_11:
        value = tags;
      }
    }

LABEL_18:
  }

  return v8;
}

+ (id)sharedInstance
{
  if (sharedInstance__pasOnceToken3 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken3, &__block_literal_global_45);
  }

  v3 = sharedInstance__pasExprOnceResult_16428;

  return v3;
}

void __44__SGStructuredEventDissector_sharedInstance__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = objc_opt_new();
  v2 = sharedInstance__pasExprOnceResult_16428;
  sharedInstance__pasExprOnceResult_16428 = v1;

  objc_autoreleasePoolPop(v0);
}

@end