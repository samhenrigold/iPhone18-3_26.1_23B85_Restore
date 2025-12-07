@interface SRDRequestDispatcher
- (BOOL)implementsCommand:(id)command forDomain:(id)domain;
- (BOOL)sessionExistsForAssistantId:(id)id;
- (SRDRequestDispatcher)initWithRequestDispatcherServiceHelper:(id)helper bridgeConnectionListeners:(id)listeners;
- (SRDRequestDispatcher)initWithUnderlyingRequestDispatcher:(id)dispatcher requestDispatcherServiceHelper:(id)helper;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)cancelRequestWithAssistantId:(id)id requestId:(id)requestId reason:(int64_t)reason;
- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)locale countryCode:(id)code isAvailable:(BOOL)available orchestrationMode:(unint64_t)mode unavailabilityReasons:(unint64_t)reasons;
- (void)handleCommand:(id)command executionContextInfo:(id)info reply:(id)reply;
- (void)prewarmWithAssistantId:(id)id languageCode:(id)code prewarmOptions:(unint64_t)options sharedUserId:(id)userId;
- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)startCorrectionSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data;
- (void)startDirectActionRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data;
- (void)startMultiUserTestRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance expectedSelectedSharedUserId:(id)userId voiceIdConfidenceScores:(id)scores requestContextData:(id)data;
- (void)startSpeechDictationRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin dictationOptions:(id)options;
- (void)startSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data;
- (void)startTestSpeechRequestWithAssistantId:(id)id requestId:(id)requestId enableASR:(BOOL)r inputOrigin:(id)origin location:(id)location jitContext:(id)context overrideModelPath:(id)path requestContextData:(id)self0;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)listenAfterSpeaking;
- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2;
@end

@implementation SRDRequestDispatcher

- (SRDRequestDispatcher)initWithUnderlyingRequestDispatcher:(id)dispatcher requestDispatcherServiceHelper:(id)helper
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_2237B60EC();
  swift_unknownObjectRelease();
  return SRDRequestDispatcher.init(underlyingRequestDispatcher:requestDispatcherServiceHelper:)(v6, helper);
}

- (SRDRequestDispatcher)initWithRequestDispatcherServiceHelper:(id)helper bridgeConnectionListeners:(id)listeners
{
  sub_223766240(0, &qword_28131A7D0, 0x277CEF1B8);
  v4 = sub_2237B5F2C();
  v5 = swift_unknownObjectRetain();
  return SRDRequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)(v5, v4);
}

- (void)cancelRequestWithAssistantId:(id)id requestId:(id)requestId reason:(int64_t)reason
{
  sub_2237B5E2C();
  v7 = v6;
  sub_2237B5E2C();
  v9 = v8;
  selfCopy = self;
  SRDRequestDispatcher.cancelRequest(withAssistantId:requestId:reason:)();

  v7, v11, v12, v13, v14, v15, v16, v17;

  v9, v18, v19, v20, v21, v22, v23, v24;
}

- (id)commandsForDomain:(id)domain
{
  v4 = sub_2237B5E2C();
  v6 = v5;
  selfCopy = self;
  SRDRequestDispatcher.commands(forDomain:)(v4, v6);
  v9 = v8;

  v6, v10, v11, v12, v13, v14, v15, v16;
  v17 = sub_2237B5F1C();
  v9, v18, v19, v20, v21, v22, v23, v24;

  return v17;
}

- (id)domains
{
  selfCopy = self;
  v3 = SRDRequestDispatcher.domains()();

  v4 = sub_2237B5F1C();
  v3, v5, v6, v7, v8, v9, v10, v11;

  return v4;
}

- (void)handleCommand:(id)command executionContextInfo:(id)info reply:(id)reply
{
  v8 = _Block_copy(reply);
  if (v8)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = v8;
    v8 = sub_223775D98;
  }

  else
  {
    v9 = 0;
  }

  commandCopy = command;
  infoCopy = info;
  selfCopy = self;
  SRDRequestDispatcher.handle(_:executionContextInfo:reply:)();
  sub_2237A9414(v8, v9);
}

- (BOOL)implementsCommand:(id)command forDomain:(id)domain
{
  v5 = sub_2237B5E2C();
  v7 = v6;
  v8 = sub_2237B5E2C();
  v10 = v9;
  selfCopy = self;
  v12._countAndFlagsBits = v5;
  v12._object = v7;
  v13._countAndFlagsBits = v8;
  v13._object = v10;
  LOBYTE(v8) = SRDRequestDispatcher.implementsCommand(_:forDomain:)(v12, v13);

  v7, v14, v15, v16, v17, v18, v19, v20;
  v10, v21, v22, v23, v24, v25, v26, v27;
  return v8 & 1;
}

- (BOOL)sessionExistsForAssistantId:(id)id
{
  v4 = sub_2237B5E2C();
  v6 = v5;
  selfCopy = self;
  v8._countAndFlagsBits = v4;
  v8._object = v6;
  LOBYTE(v4) = SRDRequestDispatcher.sessionExists(forAssistantId:)(v8);

  v6, v9, v10, v11, v12, v13, v14, v15;
  return v4 & 1;
}

- (void)prewarmWithAssistantId:(id)id languageCode:(id)code prewarmOptions:(unint64_t)options sharedUserId:(id)userId
{
  sub_2237B5E2C();
  v9 = v8;
  sub_2237B5E2C();
  v11 = v10;
  if (userId)
  {
    sub_2237B5E2C();
    userId = v12;
  }

  selfCopy = self;
  SRDRequestDispatcher.prewarm(withAssistantId:languageCode:prewarmOptions:sharedUserId:)();

  v9, v14, v15, v16, v17, v18, v19, v20;
  v11, v21, v22, v23, v24, v25, v26, v27;

  userId, v28, v29, v30, v31, v32, v33, v34;
}

- (void)startSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data
{
  v43 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  locationCopy = location;
  dataCopy = data;
  selfCopy = self;
  SRDRequestDispatcher.startSpeechRequest(withAssistantId:requestId:inputOrigin:location:asrOnServer:requestContextData:)(v43, v12, v13, v15, v16, v18, location, server, dataCopy);

  v12, v22, v23, v24, v25, v26, v27, v28;
  v15, v29, v30, v31, v32, v33, v34, v35;

  v18, v36, v37, v38, v39, v40, v41, v42;
}

- (void)startTestSpeechRequestWithAssistantId:(id)id requestId:(id)requestId enableASR:(BOOL)r inputOrigin:(id)origin location:(id)location jitContext:(id)context overrideModelPath:(id)path requestContextData:(id)self0
{
  pathCopy = path;
  sub_2237B5E2C();
  v14 = v13;
  sub_2237B5E2C();
  v16 = v15;
  sub_2237B5E2C();
  v18 = v17;
  if (context)
  {
    context = sub_2237B5F2C();
  }

  if (path)
  {
    sub_2237B5E2C();
    pathCopy = v19;
  }

  locationCopy = location;
  dataCopy = data;
  selfCopy = self;
  SRDRequestDispatcher.startTestSpeechRequest(withAssistantId:requestId:enableASR:inputOrigin:location:jitContext:overrideModelPath:requestContextData:)();

  v14, v23, v24, v25, v26, v27, v28, v29;
  v16, v30, v31, v32, v33, v34, v35, v36;
  v18, v37, v38, v39, v40, v41, v42, v43;
  pathCopy, v44, v45, v46, v47, v48, v49, v50;

  context, v51, v52, v53, v54, v55, v56, v57;
}

- (void)startDirectActionRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data
{
  sub_2237B5E2C();
  v13 = v12;
  sub_2237B5E2C();
  v15 = v14;
  sub_2237B5E2C();
  v17 = v16;
  sub_2237B5E2C();
  v65 = v18;
  if (action)
  {
    sub_2237B5E2C();
    v20 = v19;
    if (!parameters)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v20 = 0;
  if (parameters)
  {
LABEL_3:
    parameters = sub_2237B5DAC();
  }

LABEL_4:
  dataCopy = data;
  selfCopy = self;
  SRDRequestDispatcher.startDirectActionRequest(withAssistantId:requestId:inputOrigin:utterance:directAction:requestExecutionParameters:requestContextData:)();

  v13, v23, v24, v25, v26, v27, v28, v29;
  v15, v30, v31, v32, v33, v34, v35, v36;
  v17, v37, v38, v39, v40, v41, v42, v43;
  v65, v44, v45, v46, v47, v48, v49, v50;
  parameters, v51, v52, v53, v54, v55, v56, v57;

  v20, v58, v59, v60, v61, v62, v63, v64;
}

- (void)startCorrectionSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data
{
  sub_2237B5E2C();
  v11 = v10;
  sub_2237B5E2C();
  v13 = v12;
  sub_2237B5E2C();
  v15 = v14;
  sub_2237B5E2C();
  v17 = v16;
  if (previousUtterance)
  {
    sub_2237B5E2C();
    previousUtterance = v18;
  }

  dataCopy = data;
  selfCopy = self;
  SRDRequestDispatcher.startCorrectionSpeechRequest(withAssistantId:requestId:inputOrigin:utterance:previousUtterance:requestContextData:)();

  v11, v21, v22, v23, v24, v25, v26, v27;
  v13, v28, v29, v30, v31, v32, v33, v34;
  v15, v35, v36, v37, v38, v39, v40, v41;
  v17, v42, v43, v44, v45, v46, v47, v48;

  previousUtterance, v49, v50, v51, v52, v53, v54, v55;
}

- (void)startSpeechDictationRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin dictationOptions:(id)options
{
  sub_2237B5E2C();
  v10 = v9;
  sub_2237B5E2C();
  v12 = v11;
  if (origin)
  {
    sub_2237B5E2C();
    origin = v13;
  }

  optionsCopy = options;
  selfCopy = self;
  SRDRequestDispatcher.startSpeechDictationRequest(withAssistantId:requestId:inputOrigin:dictationOptions:)();

  v10, v16, v17, v18, v19, v20, v21, v22;
  v12, v23, v24, v25, v26, v27, v28, v29;

  origin, v30, v31, v32, v33, v34, v35, v36;
}

- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  withAssistantId = sub_2237B5E2C();
  v9 = v8;
  v10 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  v19 = sub_2237B5E2C();
  v21 = v20;
  selfCopy = self;
  selectedText._countAndFlagsBits = v19;
  selectedText._object = v21;
  v23._countAndFlagsBits = withAssistantId;
  v23._object = v9;
  v24._countAndFlagsBits = v10;
  v24._object = v12;
  v25._countAndFlagsBits = v13;
  v25._object = v15;
  v26._countAndFlagsBits = v16;
  v26._object = v18;
  SRDRequestDispatcher.resumeDictationRecognition(withAssistantId:requestId:prefixText:postfixText:selectedText:)(v23, v24, v25, v26, selectedText);

  v9, v27, v28, v29, v30, v31, v32, v33;
  v12, v34, v35, v36, v37, v38, v39, v40;
  v15, v41, v42, v43, v44, v45, v46, v47;
  v18, v48, v49, v50, v51, v52, v53, v54;

  v21, v55, v56, v57, v58, v59, v60, v61;
}

- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2
{
  *&undoEvent = event;
  v16 = sub_2237B5E2C();
  v80 = v17;
  *(&undoEvent + 1) = sub_2237B5E2C();
  v79 = v18;
  if (text)
  {
    *(&abortCommandSuppression + 1) = sub_2237B5E2C();
    v78 = v19;
    if (postfixText)
    {
      goto LABEL_3;
    }

LABEL_6:
    *&abortCommandSuppression = 0;
    v77 = 0;
    if (selectedText)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  *(&abortCommandSuppression + 1) = 0;
  v78 = 0;
  if (!postfixText)
  {
    goto LABEL_6;
  }

LABEL_3:
  *&abortCommandSuppression = sub_2237B5E2C();
  v77 = v20;
  if (selectedText)
  {
LABEL_4:
    v21 = sub_2237B5E2C();
    v23 = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
  v23 = 0;
LABEL_8:
  v72.is_nil = v23;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  selfCopy = self;
  v71.is_nil = commandSuppressionCopy;
  v72.value.super.super.isa = eventCopy;
  v70.is_nil = visibleTextCopy;
  v71.value.super.super.isa = suppressionCopy;
  selectedText.value._object = v23;
  v70.value.super.super.isa = activeCopy;
  selectedText.value._countAndFlagsBits = v21;
  v30._countAndFlagsBits = v16;
  v30._object = v80;
  v31._countAndFlagsBits = *(&undoEvent + 1);
  v31._object = v79;
  v32.value._countAndFlagsBits = *(&abortCommandSuppression + 1);
  v33.value._countAndFlagsBits = abortCommandSuppression;
  v32.value._object = v78;
  v33.value._object = v77;
  SRDRequestDispatcher.updateVoiceCommandContext(withAssistantId:requestId:prefixText:postfixText:selectedText:disambiguationActive:cursorInVisibleText:favorCommandSuppression:abortCommandSuppression:undoEvent:)(v30, v31, v32, v33, selectedText, v70, v71, v72, abortCommandSuppression, undoEvent);

  v80, v34, v35, v36, v37, v38, v39, v40;
  v79, v41, v42, v43, v44, v45, v46, v47;
  v73, v48, v49, v50, v51, v52, v53, v54;
  v77, v55, v56, v57, v58, v59, v60, v61;

  v78, v62, v63, v64, v65, v66, v67, v68;
}

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)listenAfterSpeaking
{
  withAssistantId = sub_2237B5E2C();
  v15 = v14;
  v78 = sub_2237B5E2C();
  v17 = v16;
  if (speak)
  {
    redactedFullSpeak_8 = sub_2237B5E2C();
    speak = v18;
    if (fullSpeak)
    {
      goto LABEL_3;
    }

LABEL_6:
    redactedFullSpeak = 0;
    v20 = 0;
    if (print)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  redactedFullSpeak_8 = 0;
  if (!fullSpeak)
  {
    goto LABEL_6;
  }

LABEL_3:
  redactedFullSpeak = sub_2237B5E2C();
  v20 = v19;
  if (print)
  {
LABEL_4:
    v21 = sub_2237B5E2C();
    print = v22;
    goto LABEL_8;
  }

LABEL_7:
  v21 = 0;
LABEL_8:
  fullPrintCopy = fullPrint;
  selfCopy = self;
  if (fullPrintCopy)
  {
    v25 = sub_2237B5E2C();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  redactedFullPrint.value._countAndFlagsBits = v25;
  redactedFullPrint.value._object = v27;
  fullPrint.value._countAndFlagsBits = v21;
  fullPrint.value._object = print;
  v28._countAndFlagsBits = withAssistantId;
  v28._object = v15;
  v30.value._countAndFlagsBits = redactedFullSpeak_8;
  v29._countAndFlagsBits = v78;
  v29._object = v17;
  v30.value._object = speak;
  v31.value._countAndFlagsBits = redactedFullSpeak;
  v31.value._object = v20;
  SRDRequestDispatcher.updateConversationContextForRemoteResponse(withAssistantId:requestId:fullSpeak:redactedFullSpeak:fullPrint:redactedFullPrint:listenAfterSpeaking:)(v28, v29, v30, v31, fullPrint, redactedFullPrint, listenAfterSpeaking);

  v15, v32, v33, v34, v35, v36, v37, v38;
  v17, v39, v40, v41, v42, v43, v44, v45;
  v27, v46, v47, v48, v49, v50, v51, v52;
  print, v53, v54, v55, v56, v57, v58, v59;
  v20, v60, v61, v62, v63, v64, v65, v66;

  speak, v67, v68, v69, v70, v71, v72, v73;
}

- (void)startMultiUserTestRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance expectedSelectedSharedUserId:(id)userId voiceIdConfidenceScores:(id)scores requestContextData:(id)data
{
  sub_2237B5E2C();
  v10 = v9;
  sub_2237B5E2C();
  v12 = v11;
  sub_2237B5E2C();
  v14 = v13;
  sub_2237B5E2C();
  v16 = v15;
  sub_2237B5E2C();
  v18 = v17;
  v10, v17, v19, v20, v21, v22, v23, v24;
  v12, v25, v26, v27, v28, v29, v30, v31;
  v14, v32, v33, v34, v35, v36, v37, v38;
  v16, v39, v40, v41, v42, v43, v44, v45;

  v18, v46, v47, v48, v49, v50, v51, v52;
}

- (void)emitAIREventForSiriAvailabiltyWithLocale:(id)locale countryCode:(id)code isAvailable:(BOOL)available orchestrationMode:(unint64_t)mode unavailabilityReasons:(unint64_t)reasons
{
  v11 = sub_2237B5E2C();
  v13 = v12;
  v14 = sub_2237B5E2C();
  v16 = v15;
  selfCopy = self;
  SRDRequestDispatcher.emitAIREventForSiriAvailabilty(withLocale:countryCode:isAvailable:orchestrationMode:unavailabilityReasons:)(v11, v13, v14, v16, available, mode, reasons);

  v13, v18, v19, v20, v21, v22, v23, v24;

  v16, v25, v26, v27, v28, v29, v30, v31;
}

@end