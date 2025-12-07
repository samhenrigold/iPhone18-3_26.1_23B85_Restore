@interface SRDRequestDispatcherInternal
- (BOOL)implementsCommand:(id)command forDomain:(id)domain;
- (BOOL)sessionExistsForAssistantId:(id)id;
- (SRDRequestDispatcherInternal)initWithRequestDispatcherServiceHelper:(id)helper bridgeConnectionListeners:(id)listeners;
- (id)commandsForDomain:(id)domain;
- (id)domains;
- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)id toState:(int64_t)state;
- (void)endDictationSessionWithAssistantId:(id)id;
- (void)endSessionWithAssistantId:(id)id withDelay:(BOOL)delay;
- (void)handleCommand:(id)command executionContextInfo:(id)info reply:(id)reply;
- (void)prewarmWithAssistantId:(id)id languageCode:(id)code prewarmOptions:(unint64_t)options sharedUserId:(id)userId;
- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText;
- (void)sendMultiUserInfoWithDeviceAssistantId:(id)id multiUserInfo:(id)info isRMVEnabled:(BOOL)enabled;
- (void)startCorrectionSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data;
- (void)startDirectActionRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data;
- (void)startSessionWithConfiguration:(id)configuration;
- (void)startSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data;
- (void)startTestSpeechRequestWithAssistantId:(id)id requestId:(id)requestId enableASR:(BOOL)r inputOrigin:(id)origin location:(id)location jitContext:(id)context overrideModelPath:(id)path requestContextData:(id)self0;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint;
- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)speaking;
- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2;
@end

@implementation SRDRequestDispatcherInternal

- (void)startSessionWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_2237613A8(configurationCopy);
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
  sub_223771EF4();
  sub_223772558(v8, v9);
}

- (SRDRequestDispatcherInternal)initWithRequestDispatcherServiceHelper:(id)helper bridgeConnectionListeners:(id)listeners
{
  sub_223766240(0, &qword_28131A7D0, 0x277CEF1B8);
  sub_2237B5F2C();
  swift_unknownObjectRetain();
  return RequestDispatcher.init(requestDispatcherServiceHelper:bridgeConnectionListeners:)();
}

- (id)domains
{
  selfCopy = self;
  sub_223791BE0();
  v4 = v3;

  v5 = sub_2237B5F1C();
  v4, v6, v7, v8, v9, v10, v11, v12;

  return v5;
}

- (id)commandsForDomain:(id)domain
{
  sub_2237B5E2C();
  v5 = v4;
  selfCopy = self;
  sub_2237920E8();
  v8 = v7;

  v5, v9, v10, v11, v12, v13, v14, v15;
  v16 = sub_2237B5F1C();
  v8, v17, v18, v19, v20, v21, v22, v23;

  return v16;
}

- (BOOL)implementsCommand:(id)command forDomain:(id)domain
{
  sub_2237B5E2C();
  v6 = v5;
  sub_2237B5E2C();
  v8 = v7;
  selfCopy = self;
  sub_223792554();
  v11 = v10;

  v6, v12, v13, v14, v15, v16, v17, v18;
  v8, v19, v20, v21, v22, v23, v24, v25;
  return v11 & 1;
}

- (void)startSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin location:(id)location asrOnServer:(BOOL)server requestContextData:(id)data
{
  HIDWORD(v45) = server;
  v44 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  locationCopy = location;
  dataCopy = data;
  selfCopy = self;
  sub_223793580(v44, v12, v13, v15, v16, v18, location, HIDWORD(v45), dataCopy, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);

  v12, v22, v23, v24, v25, v26, v27, v28;
  v15, v29, v30, v31, v32, v33, v34, v35;

  v18, v36, v37, v38, v39, v40, v41, v42;
}

- (BOOL)sessionExistsForAssistantId:(id)id
{
  sub_2237B5E2C();
  v5 = v4;
  selfCopy = self;
  sub_223794E80();
  v8 = v7;

  v5, v9, v10, v11, v12, v13, v14, v15;
  return v8 & 1;
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
  sub_223795364();

  v9, v14, v15, v16, v17, v18, v19, v20;
  v11, v21, v22, v23, v24, v25, v26, v27;

  userId, v28, v29, v30, v31, v32, v33, v34;
}

- (void)endSessionWithAssistantId:(id)id withDelay:(BOOL)delay
{
  sub_2237B5E2C();
  v6 = v5;
  selfCopy = self;
  sub_223795A24();

  v6, v8, v9, v10, v11, v12, v13, v14;
}

- (void)startTestSpeechRequestWithAssistantId:(id)id requestId:(id)requestId enableASR:(BOOL)r inputOrigin:(id)origin location:(id)location jitContext:(id)context overrideModelPath:(id)path requestContextData:(id)self0
{
  HIDWORD(v64) = r;
  pathCopy = path;
  v63 = sub_2237B5E2C();
  v14 = v13;
  v61 = sub_2237B5E2C();
  v16 = v15;
  v60 = sub_2237B5E2C();
  v18 = v17;
  if (context)
  {
    context = sub_2237B5F2C();
  }

  if (path)
  {
    v19 = sub_2237B5E2C();
    pathCopy = v20;
  }

  else
  {
    v19 = 0;
  }

  locationCopy = location;
  dataCopy = data;
  selfCopy = self;
  sub_2237962B8(v63, v14, v61, v16, HIDWORD(v64), v60, v18, location, context, v19, pathCopy, dataCopy, v59, v60, v61, self, v63, v64, v65, v66, v67, v68, v69);

  v14, v24, v25, v26, v27, v28, v29, v30;
  v16, v31, v32, v33, v34, v35, v36, v37;
  v18, v38, v39, v40, v41, v42, v43, v44;
  pathCopy, v45, v46, v47, v48, v49, v50, v51;

  context, v52, v53, v54, v55, v56, v57, v58;
}

- (void)startDirectActionRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin directAction:(id)action requestExecutionParameters:(id)parameters requestContextData:(id)data
{
  v60 = sub_2237B5E2C();
  v12 = v11;
  v13 = sub_2237B5E2C();
  v15 = v14;
  v16 = sub_2237B5E2C();
  v18 = v17;
  if (action)
  {
    v19 = sub_2237B5E2C();
    action = v20;
    if (parameters)
    {
LABEL_3:
      v21 = sub_2237B5DAC();
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (parameters)
    {
      goto LABEL_3;
    }
  }

  v21 = 0;
LABEL_6:
  dataCopy = data;
  selfCopy = self;
  sub_22379D7D0(v60, v12, v13, v15, v16, v18, v19, action, v21, dataCopy, self, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);

  v12, v24, v25, v26, v27, v28, v29, v30;
  v15, v31, v32, v33, v34, v35, v36, v37;
  v18, v38, v39, v40, v41, v42, v43, v44;
  v21, v45, v46, v47, v48, v49, v50, v51;

  action, v52, v53, v54, v55, v56, v57, v58;
}

- (void)startCorrectionSpeechRequestWithAssistantId:(id)id requestId:(id)requestId inputOrigin:(id)origin utterance:(id)utterance previousUtterance:(id)previousUtterance requestContextData:(id)data
{
  v61 = sub_2237B5E2C();
  v11 = v10;
  v59 = sub_2237B5E2C();
  v13 = v12;
  v14 = sub_2237B5E2C();
  v16 = v15;
  v17 = sub_2237B5E2C();
  v19 = v18;
  if (previousUtterance)
  {
    v20 = sub_2237B5E2C();
    previousUtterance = v21;
  }

  else
  {
    v20 = 0;
  }

  dataCopy = data;
  selfCopy = self;
  sub_22379E59C(v61, v11, v59, v13, v14, v16, v17, v19, v20, previousUtterance, dataCopy, v59, self, v61, v62, v63, v64, v65, v66, v67, v68, v69);

  v11, v24, v25, v26, v27, v28, v29, v30;
  v13, v31, v32, v33, v34, v35, v36, v37;
  v16, v38, v39, v40, v41, v42, v43, v44;
  v19, v45, v46, v47, v48, v49, v50, v51;

  previousUtterance, v52, v53, v54, v55, v56, v57, v58;
}

- (void)endDictationSessionWithAssistantId:(id)id
{
  sub_2237B5E2C();
  v5 = v4;
  selfCopy = self;
  sub_2237A2018();

  v5, v7, v8, v9, v10, v11, v12, v13;
}

- (void)resumeDictationRecognitionWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText
{
  v59 = sub_2237B5E2C();
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
  sub_2237A2B38(v59, v9, v10, v12, v13, v15, v16, v18, v19, v21, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69);

  v9, v23, v24, v25, v26, v27, v28, v29;
  v12, v30, v31, v32, v33, v34, v35, v36;
  v15, v37, v38, v39, v40, v41, v42, v43;
  v18, v44, v45, v46, v47, v48, v49, v50;

  v21, v51, v52, v53, v54, v55, v56, v57;
}

- (void)updateVoiceCommandContextWithAssistantId:(id)id requestId:(id)requestId prefixText:(id)text postfixText:(id)postfixText selectedText:(id)selectedText disambiguationActive:(id)active cursorInVisibleText:(id)visibleText favorCommandSuppression:(id)self0 abortCommandSuppression:(id)self1 undoEvent:(id)self2
{
  *&v77 = self;
  v16 = sub_2237B5E2C();
  *&v79 = v17;
  v76 = sub_2237B5E2C();
  *(&v78 + 1) = v18;
  if (text)
  {
    v75 = sub_2237B5E2C();
    *&v78 = v19;
    if (postfixText)
    {
      goto LABEL_3;
    }

LABEL_6:
    v74 = 0;
    *(&v77 + 1) = 0;
    if (selectedText)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v75 = 0;
  *&v78 = 0;
  if (!postfixText)
  {
    goto LABEL_6;
  }

LABEL_3:
  v74 = sub_2237B5E2C();
  *(&v77 + 1) = v20;
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
  v72 = v23;
  activeCopy = active;
  visibleTextCopy = visibleText;
  suppressionCopy = suppression;
  commandSuppressionCopy = commandSuppression;
  eventCopy = event;
  v29 = v77;
  v71 = v23;
  v70 = v21;
  v30 = v16;
  v31 = *(&v78 + 1);
  v32 = v79;
  v34 = *(&v77 + 1);
  v33 = v78;
  sub_2237A3588(v30, v79, v76, *(&v78 + 1), v75, v78, v74, *(&v77 + 1), v70, v71, activeCopy, visibleTextCopy, suppressionCopy, commandSuppressionCopy, eventCopy, v72, v74, v75, event, v76, v77, v78, v79);

  v32, v35, v36, v37, v38, v39, v40, v41;
  v31, v42, v43, v44, v45, v46, v47, v48;
  v73, v49, v50, v51, v52, v53, v54, v55;
  v34, v56, v57, v58, v59, v60, v61, v62;

  v33, v63, v64, v65, v66, v67, v68, v69;
}

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint
{
  v72 = sub_2237B5E2C();
  v14 = v13;
  v71 = sub_2237B5E2C();
  v16 = v15;
  if (speak)
  {
    v70 = sub_2237B5E2C();
    speak = v17;
    if (fullSpeak)
    {
      goto LABEL_3;
    }

LABEL_6:
    v69 = 0;
    v19 = 0;
    if (print)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v70 = 0;
  if (!fullSpeak)
  {
    goto LABEL_6;
  }

LABEL_3:
  v69 = sub_2237B5E2C();
  v19 = v18;
  if (print)
  {
LABEL_4:
    v20 = sub_2237B5E2C();
    print = v21;
    goto LABEL_8;
  }

LABEL_7:
  v20 = 0;
LABEL_8:
  fullPrintCopy = fullPrint;
  selfCopy = self;
  if (fullPrintCopy)
  {
    v24 = sub_2237B5E2C();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  sub_2237A4184(v72, v14, v71, v16, v70, speak, v69, v19, v20, print, v24, v26, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80);

  v14, v27, v28, v29, v30, v31, v32, v33;
  v16, v34, v35, v36, v37, v38, v39, v40;
  v26, v41, v42, v43, v44, v45, v46, v47;
  print, v48, v49, v50, v51, v52, v53, v54;
  v19, v55, v56, v57, v58, v59, v60, v61;

  speak, v62, v63, v64, v65, v66, v67, v68;
}

- (void)updateConversationContextForRemoteResponseWithAssistantId:(id)id requestId:(id)requestId fullSpeak:(id)speak redactedFullSpeak:(id)fullSpeak fullPrint:(id)print redactedFullPrint:(id)fullPrint listenAfterSpeaking:(BOOL)speaking
{
  HIDWORD(v74) = speaking;
  v75 = sub_2237B5E2C();
  v15 = v14;
  v73 = sub_2237B5E2C();
  v17 = v16;
  if (speak)
  {
    v72 = sub_2237B5E2C();
    speak = v18;
    if (fullSpeak)
    {
      goto LABEL_3;
    }

LABEL_6:
    v71 = 0;
    v20 = 0;
    if (print)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v72 = 0;
  if (!fullSpeak)
  {
    goto LABEL_6;
  }

LABEL_3:
  v71 = sub_2237B5E2C();
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

  LOBYTE(v70) = BYTE4(v74);
  sub_2237A46A8(v75, v15, v73, v17, v72, speak, v71, v20, v21, print, v25, v27, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);

  v15, v28, v29, v30, v31, v32, v33, v34;
  v17, v35, v36, v37, v38, v39, v40, v41;
  v27, v42, v43, v44, v45, v46, v47, v48;
  print, v49, v50, v51, v52, v53, v54, v55;
  v20, v56, v57, v58, v59, v60, v61, v62;

  speak, v63, v64, v65, v66, v67, v68, v69;
}

- (void)announceNotificationHandlingStateUpdatedWithAssistantId:(id)id toState:(int64_t)state
{
  sub_2237B5E2C();
  v6 = v5;
  selfCopy = self;
  sub_2237A5538();

  v6, v8, v9, v10, v11, v12, v13, v14;
}

- (void)sendMultiUserInfoWithDeviceAssistantId:(id)id multiUserInfo:(id)info isRMVEnabled:(BOOL)enabled
{
  sub_2237B5E2C();
  v9 = v8;
  infoCopy = info;
  selfCopy = self;
  sub_2237A5DAC(selfCopy, v12, infoCopy, enabled);

  v9, v13, v14, v15, v16, v17, v18, v19;
}

@end