@interface IUISessionCoordinator
+ (BOOL)_useRTIInterfaceForAutoFillOnIphone;
- (IUISessionCoordinator)initWithQueue:(id)queue;
- (RTIInputSystemDelegate)autofillUIServiceDelegate;
- (id)_main_didTeardownExistingDelegateCallback_withSessionChangeAssistant:(id)assistant;
- (id)_main_inputSourceForChangeContext:(id)context;
- (id)_main_placeholderInputSourceForSession:(id)session;
- (id)_main_placeholderServiceSessionWithIdentifier:(id)identifier documentTraits:(id)traits;
- (id)_main_willSetupNewDelegateCallback_withSessionChangeAssistant:(id)assistant;
- (id)assertionForOptions:(id)options;
- (id)serviceSessionPayloadDelegate;
- (id)sessionChangeQueue;
- (void)_endSession:(id)session options:(id)options completion:(id)completion;
- (void)_main_handleSessionChange:(id)change;
- (void)_queue_queueSessionChange:(id)change;
- (void)handlePendingSuggestionsDataIfNecessary;
- (void)inputSource:(id)source didGenerateTextActionPayload:(id)payload;
- (void)inputSystemService:(id)service didCreateInputSession:(id)session;
- (void)inputSystemService:(id)service inputSession:(id)session didAddRTISupplementalLexicon:(id)lexicon;
- (void)inputSystemService:(id)service inputSession:(id)session didRemoveRTISupplementalLexicon:(id)lexicon;
- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change;
- (void)inputSystemService:(id)service inputSession:(id)session documentTraitsDidChange:(id)change;
- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation;
- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation withResponse:(id)response;
- (void)inputSystemService:(id)service inputSession:(id)session textSuggestionsChanged:(id)changed;
- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin options:(id)options;
- (void)inputSystemService:(id)service inputSessionDidDie:(id)die;
- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end options:(id)options completion:(id)completion;
- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason;
- (void)inputSystemService:(id)service inputSessionDocumentDidChange:(id)change;
- (void)invalidateAssertionIfNeeded:(id)needed resetKeyboardAlpha:(BOOL)alpha;
- (void)reloadInputSource;
- (void)setCurrentSession:(id)session;
@end

@implementation IUISessionCoordinator

- (IUISessionCoordinator)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = IUISessionCoordinator;
  v6 = [(IUISessionCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dispatchQueue, queue);
  }

  return v7;
}

+ (BOOL)_useRTIInterfaceForAutoFillOnIphone
{
  if (qword_10002B828 != -1)
  {
    sub_10000CB38();
  }

  return byte_10002B820;
}

- (void)reloadInputSource
{
  if (qword_10002B838 != -1)
  {
    sub_10000CB4C();
  }

  if ((byte_10002B830 & 1) == 0)
  {
    v3 = objc_alloc_init(IUIRTIInputSource);
    [(IUIRTIInputSource *)v3 setDataTransportDelegate:self];
    [(IUIRTIInputSource *)v3 setHidden:1];
    inputSourceViewController = [(IUISessionCoordinator *)self inputSourceViewController];
    view = [inputSourceViewController view];
    [view addSubview:v3];

    [(IUISessionCoordinator *)self setTextInputSource:v3];
    v6 = +[UIApplication sharedApplication];
    systemDelegateMultiplexer = [v6 systemDelegateMultiplexer];
    [systemDelegateMultiplexer setPrimaryDelegate:self];

    textInputSource = [(IUISessionCoordinator *)self textInputSource];
    [textInputSource setCanBecomeFirstResponder:0];

    v9 = sub_100001928();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Input source did load", v10, 2u);
    }
  }
}

- (void)setCurrentSession:(id)session
{
  sessionCopy = session;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  currentSession = self->_currentSession;
  self->_currentSession = sessionCopy;
}

- (void)inputSource:(id)source didGenerateTextActionPayload:(id)payload
{
  payloadCopy = payload;
  currentServiceSession = [(IUISessionCoordinator *)self currentServiceSession];
  if (!currentServiceSession)
  {
    v7 = sub_100001928();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_10000CB60(v7);
    }
  }

  [currentServiceSession handleTextActionPayload:payloadCopy];
}

- (id)serviceSessionPayloadDelegate
{
  currentServiceSession = [(IUISessionCoordinator *)self currentServiceSession];
  if (!currentServiceSession)
  {
    v3 = sub_100001928();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_10000CBE4(v3);
    }
  }

  return currentServiceSession;
}

- (id)assertionForOptions:(id)options
{
  optionsCopy = options;
  v5 = optionsCopy;
  if (optionsCopy && ((v6 = [optionsCopy animated], v7 = objc_msgSend(v5, "offscreenDirection"), v7) || (v6 & 1) == 0))
  {
    textInputSource = [(IUISessionCoordinator *)self textInputSource];
    keyboardSceneDelegate = [textInputSource keyboardSceneDelegate];
    v11 = keyboardSceneDelegate;
    if (keyboardSceneDelegate)
    {
      v12 = keyboardSceneDelegate;
    }

    else
    {
      v12 = +[UIKeyboardSceneDelegate activeKeyboardSceneDelegate];
    }

    v13 = v12;

    v8 = [v13 requestAnimationAssertionWithDirection:v7 animated:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)invalidateAssertionIfNeeded:(id)needed resetKeyboardAlpha:(BOOL)alpha
{
  alphaCopy = alpha;
  neededCopy = needed;
  if (alphaCopy)
  {
    [UIKeyboard setKeyboardAlpha:1.0];
  }

  [neededCopy invalidate];
}

- (id)sessionChangeQueue
{
  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  sessionChangeQueue = self->_sessionChangeQueue;
  if (!sessionChangeQueue)
  {
    v5 = objc_alloc_init(NSMutableArray);
    v6 = self->_sessionChangeQueue;
    self->_sessionChangeQueue = v5;

    sessionChangeQueue = self->_sessionChangeQueue;
  }

  return sessionChangeQueue;
}

- (void)handlePendingSuggestionsDataIfNecessary
{
  pendingSuggestions = [(IUISessionCoordinator *)self pendingSuggestions];
  currentSession = [(IUISessionCoordinator *)self currentSession];
  uuid = [currentSession uuid];
  v12 = [pendingSuggestions objectForKey:uuid];

  if (v12)
  {
    pendingSuggestions2 = [(IUISessionCoordinator *)self pendingSuggestions];
    currentSession2 = [(IUISessionCoordinator *)self currentSession];
    uuid2 = [currentSession2 uuid];
    [pendingSuggestions2 removeObjectForKey:uuid2];

    v9 = [UITextSuggestion decodeTextSuggestions:v12];
    textInputSource = [(IUISessionCoordinator *)self textInputSource];
    inputDelegate = [textInputSource inputDelegate];
    [inputDelegate setSuggestions:v9];
  }
}

- (RTIInputSystemDelegate)autofillUIServiceDelegate
{
  if (!self->_autofillUIServiceDelegate && +[UIKeyboard supportsAutoFillPanel](UIKeyboard, "supportsAutoFillPanel") && [objc_opt_class() _useRTIInterfaceForAutoFillOnIphone])
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v3 = qword_10002B840;
    v13 = qword_10002B840;
    if (!qword_10002B840)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100009C24;
      v9[3] = &unk_100020528;
      v9[4] = &v10;
      sub_100009C24(v9);
      v3 = v11[3];
    }

    v4 = v3;
    _Block_object_dispose(&v10, 8);
    v5 = objc_alloc_init(v3);
    autofillUIServiceDelegate = self->_autofillUIServiceDelegate;
    self->_autofillUIServiceDelegate = v5;
  }

  v7 = self->_autofillUIServiceDelegate;

  return v7;
}

- (id)_main_didTeardownExistingDelegateCallback_withSessionChangeAssistant:(id)assistant
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000049C0;
  v6[3] = &unk_1000205A8;
  assistantCopy = assistant;
  v3 = assistantCopy;
  v4 = [v6 copy];

  return v4;
}

- (id)_main_willSetupNewDelegateCallback_withSessionChangeAssistant:(id)assistant
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100004AD8;
  v6[3] = &unk_1000205A8;
  assistantCopy = assistant;
  v3 = assistantCopy;
  v4 = [v6 copy];

  return v4;
}

- (void)_queue_queueSessionChange:(id)change
{
  changeCopy = change;
  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  sessionChange = [changeCopy sessionChange];
  isBeginningSession = [sessionChange isBeginningSession];

  sessionChange2 = [changeCopy sessionChange];
  isEndingSession = [sessionChange2 isEndingSession];

  v11 = sub_10000235C(v10);
  v12 = v11;
  if (isEndingSession & 1) != 0 || (isBeginningSession)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[IUISessionCoordinator _queue_queueSessionChange:]";
      v19 = 2112;
      v20 = changeCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s  Ready to handle session change: %@", buf, 0x16u);
    }

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100004D4C;
    v15[3] = &unk_1000205D0;
    v15[4] = self;
    v16 = changeCopy;
    dispatch_async(&_dispatch_main_q, v15);
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10000CC68(changeCopy);
    }

    v13 = [[IUISessionChangeResponse alloc] initWithResponseState:2];
    completion = [changeCopy completion];
    (completion)[2](completion, v13);
  }
}

- (id)_main_inputSourceForChangeContext:(id)context
{
  contextCopy = context;
  v5 = objc_alloc_init(IUIRTIInputSource);
  [(IUIRTIInputSource *)v5 setHidden:1];
  [(IUIRTIInputSource *)v5 setCanBecomeFirstResponder:0];
  v6 = [RTIInputSystemDataPayload payloadWithData:0];
  sessionChange = [contextCopy sessionChange];
  beginSessionDocumentTraits = [sessionChange beginSessionDocumentTraits];
  v9 = [beginSessionDocumentTraits copy];
  [v6 setDocumentTraits:v9];

  sessionChange2 = [contextCopy sessionChange];
  beginSessionDocumentState = [sessionChange2 beginSessionDocumentState];
  v12 = [beginSessionDocumentState copy];
  [v6 setDocumentState:v12];

  sessionChange3 = [contextCopy sessionChange];

  beginSessionID = [sessionChange3 beginSessionID];
  v15 = [beginSessionID copy];
  [v6 setSessionUUID:v15];

  [v6 updateData];
  [(IUIRTIInputSource *)v5 ingestDataPayload:v6];
  inputSourceViewController = [(IUISessionCoordinator *)self inputSourceViewController];
  view = [inputSourceViewController view];
  [view addSubview:v5];

  [(IUIRTIInputSource *)v5 setCanBecomeFirstResponder:1];

  return v5;
}

- (id)_main_placeholderInputSourceForSession:(id)session
{
  sessionCopy = session;
  v5 = objc_alloc_init(IUIRTIInputSource);
  [(IUIRTIInputSource *)v5 setHidden:1];
  [(IUIRTIInputSource *)v5 setCanBecomeFirstResponder:0];
  uuid = [sessionCopy uuid];
  [(IUIRTIInputSource *)v5 setIdentifier:uuid];

  [(IUIRTIInputSource *)v5 setPlaceholder:1];
  currentDataPayload = [sessionCopy currentDataPayload];

  [(IUIRTIInputSource *)v5 ingestDataPayload:currentDataPayload];
  inputSourceViewController = [(IUISessionCoordinator *)self inputSourceViewController];
  view = [inputSourceViewController view];
  [view addSubview:v5];

  [(IUIRTIInputSource *)v5 setCanBecomeFirstResponder:1];

  return v5;
}

- (id)_main_placeholderServiceSessionWithIdentifier:(id)identifier documentTraits:(id)traits
{
  traitsCopy = traits;
  identifierCopy = identifier;
  v7 = objc_alloc_init(RTIDocumentState);
  v8 = [RTIInputSystemServiceSessionPlaceholder placeholderServiceSessionWithIdentifier:identifierCopy traits:traitsCopy state:v7];

  return v8;
}

- (void)_main_handleSessionChange:(id)change
{
  changeCopy = change;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v6 = sub_10000235C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    sessionChange = [(IUISessionChangeContext *)changeCopy sessionChange];
    *buf = 136315394;
    *&buf[4] = "[IUISessionCoordinator _main_handleSessionChange:]";
    *&buf[12] = 2112;
    *&buf[14] = sessionChange;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s  begin session change: %@", buf, 0x16u);
  }

  sessionChange2 = [(IUISessionChangeContext *)changeCopy sessionChange];
  isEndingSession = [sessionChange2 isEndingSession];
  isBeginningSession = [sessionChange2 isBeginningSession];
  currentSession = [(IUISessionCoordinator *)self currentSession];

  if ((isEndingSession & (currentSession != 0)) == 1)
  {
    currentSession2 = [(IUISessionCoordinator *)self currentSession];
    uuid = [currentSession2 uuid];
    endSessionID = [sessionChange2 endSessionID];
    v16 = [uuid isEqual:endSessionID];

    if (v16)
    {
      options = [sessionChange2 options];
      shouldResign = [options shouldResign];

      v19 = shouldResign ^ 1;
      v16 = 1;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    v19 = 0;
    v16 = 0;
  }

  v20 = sub_10000235C(v12);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136316418;
    *&buf[4] = "[IUISessionCoordinator _main_handleSessionChange:]";
    *&buf[12] = 1024;
    *&buf[14] = isEndingSession;
    *&buf[18] = 1024;
    *&buf[20] = isBeginningSession;
    LOWORD(v82) = 1024;
    *(&v82 + 2) = currentSession != 0;
    HIWORD(v82) = 1024;
    LODWORD(v83) = v16;
    WORD2(v83) = 1024;
    *(&v83 + 6) = v19;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s  \n  changeEndsSession:   %d\n  changeBeginsSession: %d\n  hasCurrentSession:   %d\n  endingSessionMatchesCurrentSession: %d\n  createPlaceholderInputSource: %d", buf, 0x2Au);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v82 = sub_1000059CC;
  *&v83 = sub_1000059DC;
  *(&v83 + 1) = 0;
  if ((isBeginningSession & (currentSession != 0)) == 1)
  {
    v22 = sub_10000235C(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      currentSession3 = [(IUISessionCoordinator *)self currentSession];
      sub_10000CCF8(currentSession3, changeCopy, v80, v22);
    }
  }

  if (((v16 | isEndingSession ^ 1) & 1) == 0)
  {
    v25 = sub_10000235C(v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      sessionChange3 = [(IUISessionChangeContext *)changeCopy sessionChange];
      sub_10000CD70(sessionChange3, v76, v25);
    }

    v27 = [[IUISessionChangeResponse alloc] initWithResponseState:2];
    completion = [(IUISessionChangeContext *)changeCopy completion];
    (completion)[2](completion, v27);

    v29 = 0;
    goto LABEL_37;
  }

  if (currentSession)
  {
    textInputSource = [(IUISessionCoordinator *)self textInputSource];
    if (isBeginningSession)
    {
LABEL_17:
      v24 = [(IUISessionCoordinator *)self _main_inputSourceForChangeContext:changeCopy];
LABEL_27:
      v66 = 0;
      goto LABEL_28;
    }
  }

  else
  {
    textInputSource = 0;
    if (isBeginningSession)
    {
      goto LABEL_17;
    }
  }

  if (!v19)
  {
    v24 = 0;
    goto LABEL_27;
  }

  v65 = +[NSUUID UUID];
  v30 = sub_10000235C(v65);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *v76 = 136315394;
    v77 = "[IUISessionCoordinator _main_handleSessionChange:]";
    v78 = 2112;
    v79 = v65;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%s  Creating placeholder service session with identifier: %@", v76, 0x16u);
  }

  sourceSession = [textInputSource sourceSession];
  documentTraits = [sourceSession documentTraits];
  v33 = [documentTraits copy];

  [v33 setAutofillMode:0];
  [v33 setAutofillSubMode:0];
  [v33 setAutofillContext:0];
  v64 = objc_alloc_init(RTIDocumentState);
  v34 = [(IUISessionCoordinator *)self _main_placeholderServiceSessionWithIdentifier:v65 documentTraits:v33];
  v35 = *(*&buf[8] + 40);
  *(*&buf[8] + 40) = v34;

  v24 = [(IUISessionCoordinator *)self _main_placeholderInputSourceForSession:*(*&buf[8] + 40)];
  v36 = [IUISessionChange alloc];
  endSessionID2 = [sessionChange2 endSessionID];
  options2 = [sessionChange2 options];
  v39 = [(IUISessionChange *)v36 initEndSessionWithID:endSessionID2 andBeginPlaceholderSessionWithID:v65 documentTraits:v33 documentState:v64 options:options2];

  v40 = [IUISessionChangeContext alloc];
  service = [(IUISessionChangeContext *)changeCopy service];
  v42 = *(*&buf[8] + 40);
  completion2 = [(IUISessionChangeContext *)changeCopy completion];
  v44 = [(IUISessionChangeContext *)v40 initWithService:service session:v42 sessionChange:v39 completion:completion2];

  options3 = [v39 options];
  [options3 setShouldResign:1];
  v46 = [IUISessionChange alloc];
  uuid2 = [*(*&buf[8] + 40) uuid];
  v48 = [(IUISessionChange *)v46 initEndSessionWithID:uuid2 options:options3];

  v49 = [IUISessionChangeContext alloc];
  service2 = [(IUISessionChangeContext *)v44 service];
  v66 = [(IUISessionChangeContext *)v49 initWithService:service2 session:*(*&buf[8] + 40) sessionChange:v48 completion:&stru_100020610];

  sessionChange2 = v39;
  changeCopy = v44;
LABEL_28:
  sessionChange4 = [(IUISessionChangeContext *)changeCopy sessionChange];
  options4 = [sessionChange4 options];
  v53 = [(IUISessionCoordinator *)self assertionForOptions:options4];

  v54 = +[UIKeyboardImpl sharedInstance];
  v55 = [[IUISessionChangeAssistant alloc] initWithController:self sessionChangeContext:changeCopy outgoingInputSource:textInputSource incomingInputSource:v24];
  v56 = [(IUISessionCoordinator *)self _main_didTeardownExistingDelegateCallback_withSessionChangeAssistant:v55];
  v57 = [(IUISessionCoordinator *)self _main_willSetupNewDelegateCallback_withSessionChangeAssistant:v55];
  [v54 setDidTeardownExistingDelegate:v56];
  [v54 setWillSetupNewDelegate:v57];
  if (v24)
  {
    [v24 becomeFirstResponder];
  }

  else if (textInputSource)
  {
    [textInputSource resignFirstResponder];
  }

  else
  {
    v58 = sub_10000235C(0);
    if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
    {
      sub_10000CDDC();
    }
  }

  [(IUISessionChangeAssistant *)v55 finalizeSessionChange];
  [(IUISessionCoordinator *)self invalidateAssertionIfNeeded:v53 resetKeyboardAlpha:v24 != 0];
  [(IUISessionCoordinator *)self handlePendingSuggestionsDataIfNecessary];
  [v54 setDidTeardownExistingDelegate:0];
  [v54 setWillSetupNewDelegate:0];

  if (v66)
  {
    v60 = dispatch_time(0, 50000000);
    dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100005A8C;
    block[3] = &unk_100020638;
    v29 = v66;
    v69 = v29;
    selfCopy = self;
    v71 = buf;
    dispatch_after(v60, dispatchQueue, block);

    v27 = v69;
LABEL_37:

    goto LABEL_38;
  }

  v29 = 0;
LABEL_38:
  v62 = sub_10000235C(v59);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    sessionChange5 = [(IUISessionChangeContext *)changeCopy sessionChange];
    *v72 = 136315394;
    v73 = "[IUISessionCoordinator _main_handleSessionChange:]";
    v74 = 2112;
    v75 = sessionChange5;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "%s  finished session change: %@", v72, 0x16u);
  }

  _Block_object_dispose(buf, 8);
}

- (void)inputSystemService:(id)service didCreateInputSession:(id)session
{
  serviceCopy = service;
  sessionCopy = session;
  v8 = sub_100001928();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = sessionCopy;
    v17 = 2112;
    v18 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "did create session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005D38;
  block[3] = &unk_100020660;
  block[4] = self;
  v13 = serviceCopy;
  v14 = sessionCopy;
  v10 = sessionCopy;
  v11 = serviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)inputSystemService:(id)service inputSessionDidBegin:(id)begin options:(id)options
{
  serviceCopy = service;
  beginCopy = begin;
  optionsCopy = options;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v37 = beginCopy;
    v38 = 2112;
    v39 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did begin session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006244;
  block[3] = &unk_100020688;
  block[4] = self;
  v13 = serviceCopy;
  v33 = v13;
  v14 = beginCopy;
  v34 = v14;
  v15 = optionsCopy;
  v35 = v15;
  dispatch_async(dispatchQueue, block);

  if (qword_10002B838 != -1)
  {
    sub_10000CE5C();
  }

  if (byte_10002B830 == 1)
  {
    v16 = [IUISessionChange alloc];
    uuid = [v14 uuid];
    documentTraits = [v14 documentTraits];
    documentState = [v14 documentState];
    v20 = [(IUISessionChange *)v16 initBeginSessionWithID:uuid documentTraits:documentTraits documentState:documentState options:v15];

    v22 = sub_10000235C(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v37 = "[IUISessionCoordinator inputSystemService:inputSessionDidBegin:options:]";
      v38 = 2112;
      v39 = v20;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%s  queuing input session did begin: %@", buf, 0x16u);
    }

    v23 = [[IUISessionChangeContext alloc] initWithService:v13 session:v14 sessionChange:v20 completion:&stru_1000206A8];
    dispatchQueue2 = [(IUISessionCoordinator *)self dispatchQueue];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000063AC;
    v30[3] = &unk_1000205D0;
    v30[4] = self;
    v31 = v23;
    v25 = v23;
    dispatch_async(dispatchQueue2, v30);
  }

  else
  {
    dispatchQueue3 = [(IUISessionCoordinator *)self dispatchQueue];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000063B8;
    v27[3] = &unk_100020660;
    v27[4] = self;
    v28 = v14;
    v29 = v15;
    dispatch_async(dispatchQueue3, v27);
  }
}

- (void)_endSession:(id)session options:(id)options completion:(id)completion
{
  sessionCopy = session;
  optionsCopy = options;
  completionCopy = completion;
  dispatch_assert_queue_V2(&_dispatch_main_q);
  currentSession = [(IUISessionCoordinator *)self currentSession];
  uuid = [currentSession uuid];
  uuid2 = [sessionCopy uuid];
  v14 = [uuid isEqual:uuid2];

  if (v14)
  {
    if ([optionsCopy shouldResign])
    {
      v15 = [(IUISessionCoordinator *)self assertionForOptions:optionsCopy];
      textInputSource = [(IUISessionCoordinator *)self textInputSource];
      [textInputSource resignFirstResponder];

      [(IUISessionCoordinator *)self invalidateAssertionIfNeeded:v15 resetKeyboardAlpha:0];
      textInputSource2 = [(IUISessionCoordinator *)self textInputSource];
      [textInputSource2 setText:0];
    }

    else
    {
      [(IUISessionCoordinator *)self setNeedsToReloadInputSource:1];
    }

    textInputSource3 = [(IUISessionCoordinator *)self textInputSource];
    [textInputSource3 setCanBecomeFirstResponder:0];

    [(IUISessionCoordinator *)self setCurrentSession:0];
    [UIKeyboard setKeyboardAlpha:1.0];
    if (completionCopy)
    {
      dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_100006914;
      v23[3] = &unk_1000206D0;
      v20 = &v24;
      v24 = completionCopy;
      v21 = v23;
      goto LABEL_11;
    }
  }

  else
  {
    v18 = sub_100001928();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = sessionCopy;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "ignoring inputSessionDidEnd for %@ because it's not current session", buf, 0xCu);
    }

    if (completionCopy)
    {
      dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100006904;
      v25[3] = &unk_1000206D0;
      v20 = &v26;
      v26 = completionCopy;
      v21 = v25;
LABEL_11:
      dispatch_async(dispatchQueue, v21);
    }
  }
}

- (void)inputSystemService:(id)service inputSessionDidEnd:(id)end options:(id)options completion:(id)completion
{
  serviceCopy = service;
  endCopy = end;
  optionsCopy = options;
  completionCopy = completion;
  v14 = sub_100001928();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v52 = endCopy;
    v53 = 2112;
    v54 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "did end session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100006E38;
  block[3] = &unk_100020688;
  block[4] = self;
  v16 = serviceCopy;
  v48 = v16;
  v17 = endCopy;
  v49 = v17;
  v18 = optionsCopy;
  v50 = v18;
  dispatch_async(dispatchQueue, block);

  if (qword_10002B838 != -1)
  {
    sub_10000CE5C();
  }

  if (byte_10002B830 == 1)
  {
    v19 = [IUISessionChange alloc];
    uuid = [v17 uuid];
    v21 = [(IUISessionChange *)v19 initEndSessionWithID:uuid options:v18];

    v23 = sub_10000235C(v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v52 = "[IUISessionCoordinator inputSystemService:inputSessionDidEnd:options:completion:]";
      v53 = 2112;
      v54 = v21;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "%s  queuing input session did end: %@", buf, 0x16u);
    }

    v24 = +[InputUIApp sharedApplication];
    servicePausedLock = [v24 servicePausedLock];
    [servicePausedLock lock];

    if ([v24 isServicePaused])
    {
      v26 = objc_retainBlock(completionCopy);

      completionCopy = 0;
    }

    else
    {
      v26 = 0;
    }

    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_100006F9C;
    v45[3] = &unk_1000206F8;
    v28 = completionCopy;
    v46 = v28;
    v29 = objc_retainBlock(v45);
    v36 = v16;
    v30 = [[IUISessionChangeContext alloc] initWithService:v16 session:v17 sessionChange:v21 completion:v29];
    dispatchQueue2 = [(IUISessionCoordinator *)self dispatchQueue];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100006FB4;
    v43[3] = &unk_1000205D0;
    v43[4] = self;
    v44 = v30;
    v32 = v30;
    dispatch_async(dispatchQueue2, v43);

    servicePausedLock2 = [v24 servicePausedLock];
    [servicePausedLock2 unlock];

    if (v26)
    {
      v35 = sub_10000235C(v34);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v52 = "[IUISessionCoordinator inputSystemService:inputSessionDidEnd:options:completion:]";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%s  InputUI service is paused: calling end input session completion immediately", buf, 0xCu);
      }

      v26[2](v26);
    }

    v16 = v36;
  }

  else
  {
    dispatchQueue3 = [(IUISessionCoordinator *)self dispatchQueue];
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_100006FC0;
    v37[3] = &unk_100020720;
    v38 = v17;
    v39 = v16;
    selfCopy = self;
    v41 = v18;
    v28 = completionCopy;
    v42 = v28;
    dispatch_async(dispatchQueue3, v37);

    v21 = v38;
  }
}

- (void)inputSystemService:(id)service inputSessionDidDie:(id)die
{
  serviceCopy = service;
  dieCopy = die;
  v8 = sub_100001928();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = dieCopy;
    v17 = 2112;
    v18 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "session %@ did die, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100007268;
  block[3] = &unk_100020660;
  block[4] = self;
  v13 = serviceCopy;
  v14 = dieCopy;
  v10 = dieCopy;
  v11 = serviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)inputSystemService:(id)service inputSessionDocumentDidChange:(id)change
{
  serviceCopy = service;
  changeCopy = change;
  v8 = sub_100001928();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v17 = changeCopy;
    v18 = 2112;
    v19 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "did change document for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000074FC;
  block[3] = &unk_100020660;
  v13 = changeCopy;
  v14 = serviceCopy;
  selfCopy = self;
  v10 = serviceCopy;
  v11 = changeCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)inputSystemService:(id)service inputSession:(id)session documentTraitsDidChange:(id)change
{
  serviceCopy = service;
  sessionCopy = session;
  changeCopy = change;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = sessionCopy;
    v23 = 2112;
    v24 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did change document traits for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007880;
  v16[3] = &unk_100020688;
  v17 = sessionCopy;
  v18 = serviceCopy;
  selfCopy = self;
  v20 = changeCopy;
  v13 = changeCopy;
  v14 = serviceCopy;
  v15 = sessionCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session documentStateDidChange:(id)change
{
  serviceCopy = service;
  sessionCopy = session;
  changeCopy = change;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = sessionCopy;
    v23 = 2112;
    v24 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did change document state for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007C28;
  v16[3] = &unk_100020688;
  v17 = sessionCopy;
  v18 = serviceCopy;
  selfCopy = self;
  v20 = changeCopy;
  v13 = changeCopy;
  v14 = serviceCopy;
  v15 = sessionCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session textSuggestionsChanged:(id)changed
{
  serviceCopy = service;
  sessionCopy = session;
  changedCopy = changed;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = sessionCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did change text suggestions for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100007FD0;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = sessionCopy;
  v19 = changedCopy;
  v13 = changedCopy;
  v14 = sessionCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation
{
  serviceCopy = service;
  sessionCopy = session;
  operationCopy = operation;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v22 = sessionCopy;
    v23 = 2112;
    v24 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did receive input operation from session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100008450;
  v16[3] = &unk_100020688;
  v17 = sessionCopy;
  v18 = serviceCopy;
  selfCopy = self;
  v20 = operationCopy;
  v13 = operationCopy;
  v14 = serviceCopy;
  v15 = sessionCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session performInputOperation:(id)operation withResponse:(id)response
{
  serviceCopy = service;
  sessionCopy = session;
  operationCopy = operation;
  responseCopy = response;
  v14 = sub_100001928();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = sessionCopy;
    v27 = 2112;
    v28 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "did receive input from session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100008938;
  block[3] = &unk_100020720;
  block[4] = self;
  v21 = serviceCopy;
  v22 = sessionCopy;
  v23 = operationCopy;
  v24 = responseCopy;
  v16 = responseCopy;
  v17 = operationCopy;
  v18 = sessionCopy;
  v19 = serviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)inputSystemService:(id)service inputSessionDidPause:(id)pause withReason:(id)reason
{
  serviceCopy = service;
  pauseCopy = pause;
  reasonCopy = reason;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = pauseCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did pause session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100008E14;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = pauseCopy;
  v19 = reasonCopy;
  v13 = reasonCopy;
  v14 = pauseCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSessionDidUnpause:(id)unpause withReason:(id)reason
{
  serviceCopy = service;
  unpauseCopy = unpause;
  reasonCopy = reason;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = unpauseCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did unpause session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100009100;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = unpauseCopy;
  v19 = reasonCopy;
  v13 = reasonCopy;
  v14 = unpauseCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session didAddRTISupplementalLexicon:(id)lexicon
{
  serviceCopy = service;
  sessionCopy = session;
  lexiconCopy = lexicon;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = sessionCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did add RTI supplemental lexicon for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_1000093EC;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = sessionCopy;
  v19 = lexiconCopy;
  v13 = lexiconCopy;
  v14 = sessionCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

- (void)inputSystemService:(id)service inputSession:(id)session didRemoveRTISupplementalLexicon:(id)lexicon
{
  serviceCopy = service;
  sessionCopy = session;
  lexiconCopy = lexicon;
  v11 = sub_100001928();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = sessionCopy;
    v22 = 2112;
    v23 = serviceCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "did remove RTI supplemental lexicon for session %@, service: %@", buf, 0x16u);
  }

  dispatchQueue = [(IUISessionCoordinator *)self dispatchQueue];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000982C;
  v16[3] = &unk_100020688;
  v16[4] = self;
  v17 = serviceCopy;
  v18 = sessionCopy;
  v19 = lexiconCopy;
  v13 = lexiconCopy;
  v14 = sessionCopy;
  v15 = serviceCopy;
  dispatch_async(dispatchQueue, v16);
}

@end