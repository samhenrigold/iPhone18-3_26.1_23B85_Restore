@interface ContextualSpanMatcherSELFLogging
+ (BOOL)emitContextualSpanMatcherEndedEventWithResponse:(id)response WithNlId:(id)id andWithTrpId:(id)trpId andWithRequestId:(id)requestId andWithResultCandidateId:(id)candidateId andWithRequester:(int)requester;
+ (BOOL)emitEvent:(id)event;
+ (id)createContextualSpanMatcherEndedEvent:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id;
+ (id)createContextualSpanMatcherEndedTier1Event:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id;
@end

@implementation ContextualSpanMatcherSELFLogging

+ (BOOL)emitContextualSpanMatcherEndedEventWithResponse:(id)response WithNlId:(id)id andWithTrpId:(id)trpId andWithRequestId:(id)requestId andWithResultCandidateId:(id)candidateId andWithRequester:(int)requester
{
  v8 = *&requester;
  responseCopy = response;
  idCopy = id;
  trpIdCopy = trpId;
  requestIdCopy = requestId;
  candidateIdCopy = candidateId;
  v19 = os_log_create("com.apple.siri.marrs.mrr", "ContextualSpanMatcher");
  v20 = v19;
  if (responseCopy)
  {
    v34 = [NLXMetadataGenerator createEventMetadataWithNlId:idCopy andWithTrpId:trpIdCopy andWithRequestId:requestIdCopy andWithResultCandidateId:candidateIdCopy andWithRequester:v8];
    v21 = objc_alloc(MEMORY[0x277D5AC78]);
    v22 = objc_alloc_init(MEMORY[0x277CCAD78]);
    v23 = [v21 initWithNSUUID:v22];

    v24 = [self createContextualSpanMatcherEndedEvent:responseCopy withNLXMetadata:v34 andLinkId:v23];
    [self createContextualSpanMatcherEndedTier1Event:responseCopy withNLXMetadata:v34 andLinkId:v23];
    v35 = v20;
    v25 = requestIdCopy;
    v27 = v26 = idCopy;
    v28 = responseCopy;
    v29 = candidateIdCopy;
    v30 = trpIdCopy;
    v31 = [self emitEvent:v24];
    v32 = v31 & [self emitEvent:v27];
    trpIdCopy = v30;
    candidateIdCopy = v29;
    responseCopy = v28;

    idCopy = v26;
    requestIdCopy = v25;
    v20 = v35;
  }

  else
  {
    LOBYTE(v32) = 0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_2227A9000, v20, OS_LOG_TYPE_DEFAULT, "Due to CSM Response being Nil, this event won't be emitted.", buf, 2u);
      LOBYTE(v32) = 0;
    }
  }

  return v32;
}

+ (id)createContextualSpanMatcherEndedTier1Event:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  eventCopy = event;
  metadataCopy = metadata;
  idCopy = id;
  v10 = objc_alloc_init(MEMORY[0x277D59048]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  contextualSpans = [eventCopy contextualSpans];
  v13 = [contextualSpans count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = MEMORY[0x277D5DEF8];
      contextualSpans2 = [eventCopy contextualSpans];
      v17 = [contextualSpans2 objectAtIndexedSubscript:v14];
      v18 = [v15 convertMatchingSpanTier1:v17];

      [v11 addObject:v18];
      ++v14;
      contextualSpans3 = [eventCopy contextualSpans];
      v20 = [contextualSpans3 count];
    }

    while (v14 < v20);
  }

  [v10 setContextualSpansTier1s:v11];
  [v10 setLinkId:idCopy];
  v21 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v21 setMarrsContextualSpanMatcherEndedTier1:v10];
  [v21 setEventMetadata:metadataCopy];

  return v21;
}

+ (id)createContextualSpanMatcherEndedEvent:(id)event withNLXMetadata:(id)metadata andLinkId:(id)id
{
  eventCopy = event;
  metadataCopy = metadata;
  idCopy = id;
  v10 = objc_alloc_init(MEMORY[0x277D59040]);
  v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
  contextualSpans = [eventCopy contextualSpans];
  v13 = [contextualSpans count];

  if (v13)
  {
    v14 = 0;
    do
    {
      v15 = MEMORY[0x277D5DEF8];
      contextualSpans2 = [eventCopy contextualSpans];
      v17 = [contextualSpans2 objectAtIndexedSubscript:v14];
      v18 = [v15 convertMatchingSpan:v17];

      if (v18)
      {
        mainItem = [v18 mainItem];
        [v11 addObject:mainItem];
      }

      ++v14;
      contextualSpans3 = [eventCopy contextualSpans];
      v21 = [contextualSpans3 count];
    }

    while (v14 < v21);
  }

  [v10 setContextualSpans:v11];
  [v10 setLinkId:idCopy];
  v22 = objc_alloc_init(MEMORY[0x277D590F0]);
  [v22 setMarrsContextualSpanMatcherEnded:v10];
  [v22 setEventMetadata:metadataCopy];

  return v22;
}

+ (BOOL)emitEvent:(id)event
{
  v17 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  v4 = os_log_create("com.apple.siri.marrs.mrr", "ContextualSpanMatcher");
  if ([eventCopy hasEventMetadata] && (objc_msgSend(eventCopy, "eventMetadata"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasNlId"), v5, (v6 & 1) != 0))
  {
    mEMORY[0x277D552B8] = [MEMORY[0x277D552B8] sharedStream];
    [mEMORY[0x277D552B8] emitMessage:eventCopy];

    v8 = v4;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      eventMetadata = [eventCopy eventMetadata];
      nlId = [eventMetadata nlId];
      toNSUUID = [nlId toNSUUID];
      uUIDString = [toNSUUID UUIDString];
      v15 = 136315138;
      uTF8String = [uUIDString UTF8String];
      _os_log_impl(&dword_2227A9000, v8, OS_LOG_TYPE_DEFAULT, "Emitted event with NL ID: %s", &v15, 0xCu);
    }

    v13 = 1;
  }

  else
  {
    v13 = 0;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_2227A9000, v4, OS_LOG_TYPE_DEFAULT, "Due to NL ID being Nil, this event won't be emitted.", &v15, 2u);
      v13 = 0;
    }
  }

  return v13;
}

@end