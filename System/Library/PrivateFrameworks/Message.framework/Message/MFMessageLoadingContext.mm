@interface MFMessageLoadingContext
+ (id)log;
+ (unint64_t)_nextOffsetForOffset:(unint64_t)offset totalLength:(unint64_t)length requestedAmount:(unint64_t)amount;
- (MFMessageLoadingContext)initWithMessage:(id)message attachmentManager:(id)manager;
- (id)_reallyLoad:(int64_t)load shouldDownload:(BOOL)download;
- (id)addLoadObserver:(id)observer;
- (id)onScheduler:(id)scheduler addLoadObserver:(id)observer;
- (void)_load:(int64_t)_load shouldDownload:(BOOL)download;
- (void)_setupMeetingData;
- (void)_setupObservableStreams;
- (void)assignAttachmentManagerToContent:(id)content;
- (void)dealloc;
- (void)load:(int64_t)load;
- (void)load:(int64_t)load scheduler:(id)scheduler shouldDownload:(BOOL)download;
- (void)processMeetingInvitations:(id)invitations;
@end

@implementation MFMessageLoadingContext

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__MFMessageLoadingContext_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_23 != -1)
  {
    dispatch_once(&log_onceToken_23, block);
  }

  v2 = log_log_23;

  return v2;
}

void __30__MFMessageLoadingContext_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_23;
  log_log_23 = v1;
}

- (void)dealloc
{
  [(EFManualCancelationToken *)self->_cancelable cancel];
  v3.receiver = self;
  v3.super_class = MFMessageLoadingContext;
  [(MFMessageLoadingContext *)&v3 dealloc];
}

- (MFMessageLoadingContext)initWithMessage:(id)message attachmentManager:(id)manager
{
  messageCopy = message;
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = MFMessageLoadingContext;
  v9 = [(MFMessageLoadingContext *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    objc_storeStrong(&v10->_attachmentManager, manager);
    messageStore = [messageCopy messageStore];
    mailbox = [messageStore mailbox];

    mailboxType = [mailbox mailboxType];
    v10->_outgoingMessage = [mailbox isOutgoingMailboxUid];
    v10->_draftMessage = mailboxType == 5;
    v10->_editableMessage = (mailboxType - 5) < 2;
    [(MFMessageLoadingContext *)v10 _setupMeetingData];
    [(MFMessageLoadingContext *)v10 _setupObservableStreams];
  }

  return v10;
}

- (void)_setupMeetingData
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_1B0389000, a2, OS_LOG_TYPE_ERROR, "unable to get an event with external id %@ after it was successfully reconstituted.", &v2, 0xCu);
}

- (void)_setupObservableStreams
{
  if (self->_inputObservable)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MFMessageLoadingContext.m" lineNumber:222 description:@"_inputObservable must not already be configured"];
  }

  objc_initWeak(&location, self);
  observableObserver = [MEMORY[0x1E699B830] observableObserver];
  inputObservable = self->_inputObservable;
  self->_inputObservable = observableObserver;

  v5 = [(EFObserver *)self->_inputObservable replay:1];
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __50__MFMessageLoadingContext__setupObservableStreams__block_invoke;
  v17 = &unk_1E7AA6FF0;
  objc_copyWeak(&v18, &location);
  v6 = [v5 filter:&v14];
  contentObservable = self->_contentObservable;
  self->_contentObservable = v6;

  v8 = objc_alloc_init(MEMORY[0x1E699B7F8]);
  cancelable = self->_cancelable;
  self->_cancelable = v8;

  v10 = self->_cancelable;
  connect = [v5 connect];
  [(EFManualCancelationToken *)v10 addCancelable:connect];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

uint64_t __50__MFMessageLoadingContext__setupObservableStreams__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 content];
  [WeakRetained assignAttachmentManagerToContent:v5];

  v6 = [v3 content];
  [WeakRetained processMeetingInvitations:v6];

  return 1;
}

- (id)onScheduler:(id)scheduler addLoadObserver:(id)observer
{
  schedulerCopy = scheduler;
  observerCopy = observer;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__MFMessageLoadingContext_onScheduler_addLoadObserver___block_invoke;
  aBlock[3] = &unk_1E7AA68F0;
  v8 = observerCopy;
  v21 = v8;
  v9 = _Block_copy(aBlock);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __55__MFMessageLoadingContext_onScheduler_addLoadObserver___block_invoke_2;
  v17[3] = &unk_1E7AA7018;
  v10 = v9;
  v18 = v10;
  v11 = v8;
  v19 = v11;
  v12 = _Block_copy(v17);
  v13 = [MEMORY[0x1E699B838] observerWithResultBlock:v12 completionBlock:0 failureBlock:v10];
  v14 = [(EFObservable *)self->_contentObservable observeOn:schedulerCopy];
  v15 = [v14 subscribe:v13];

  [(EFManualCancelationToken *)self->_cancelable addCancelable:v15];

  return v15;
}

void __55__MFMessageLoadingContext_onScheduler_addLoadObserver___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 content];

  if (v3)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = [v6 error];
    (*(v4 + 16))(v4, v5);
  }
}

- (id)addLoadObserver:(id)observer
{
  observerCopy = observer;
  immediateScheduler = [MEMORY[0x1E699B978] immediateScheduler];
  v6 = [(MFMessageLoadingContext *)self onScheduler:immediateScheduler addLoadObserver:observerCopy];

  return v6;
}

- (void)load:(int64_t)load
{
  v5 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:25];
  [(MFMessageLoadingContext *)self load:load scheduler:?];
}

- (void)load:(int64_t)load scheduler:(id)scheduler shouldDownload:(BOOL)download
{
  schedulerCopy = scheduler;
  [(MFMessageLoadingContext *)self setHasLoadedSomeContent:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__MFMessageLoadingContext_load_scheduler_shouldDownload___block_invoke;
  v9[3] = &unk_1E7AA7040;
  v9[4] = self;
  v9[5] = load;
  downloadCopy = download;
  [schedulerCopy performVoucherPreservingBlock:v9];
}

+ (unint64_t)_nextOffsetForOffset:(unint64_t)offset totalLength:(unint64_t)length requestedAmount:(unint64_t)amount
{
  if (!(amount | offset))
  {
    return 1;
  }

  if (amount)
  {
    v5 = amount + offset;
    v6 = amount + offset >= length;
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
    v6 = offset >= 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    return length;
  }

  else
  {
    return v5;
  }
}

- (void)_load:(int64_t)_load shouldDownload:(BOOL)download
{
  downloadCopy = download;
  currentThread = [MEMORY[0x1E696AF00] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v8 = *MEMORY[0x1E69AD650];
  v9 = [threadDictionary objectForKeyedSubscript:*MEMORY[0x1E69AD650]];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:downloadCopy];
  [threadDictionary setObject:v10 forKeyedSubscript:v8];

  v11 = [(MFMessageLoadingContext *)self _reallyLoad:_load shouldDownload:downloadCopy];
  isCanceled = [(EFManualCancelationToken *)self->_cancelable isCanceled];
  if (v11)
  {
    v13 = isCanceled;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    [(EFObserver *)self->_inputObservable observerDidReceiveResult:v11];
  }

  if (v9)
  {
    [threadDictionary setObject:v9 forKey:v8];
  }
}

- (id)_reallyLoad:(int64_t)load shouldDownload:(BOOL)download
{
  downloadCopy = download;
  v124 = *MEMORY[0x1E69E9840];
  if (([(EFManualCancelationToken *)self->_cancelable isCanceled]& 1) != 0)
  {
    v110 = 0;
    goto LABEL_62;
  }

  v110 = objc_alloc_init(MFMessageLoadingContextEvent);
  [(MFMessageLoadingContextEvent *)v110 setContext:self];
  message = [(MFMessageLoadingContext *)self message];
  messageBody = [(MFMessageLoadingContext *)self messageBody];
  v9 = +[MFActivityMonitor pushNewMonitor];
  cancelable = self->_cancelable;
  v117[0] = MEMORY[0x1E69E9820];
  v117[1] = 3221225472;
  v117[2] = __54__MFMessageLoadingContext__reallyLoad_shouldDownload___block_invoke;
  v117[3] = &unk_1E7AA25C0;
  v105 = v9;
  v118 = v105;
  [(EFManualCancelationToken *)cancelable addCancelationBlock:v117];
  v11 = +[MFActivityMonitor currentMonitor];
  selfCopy = self;
  [v11 recordTransportType:1];

  if (messageBody && downloadCopy)
  {
    v12 = messageBody;
    selfCopy4 = self;
  }

  else
  {
    if (downloadCopy)
    {
      v14 = +[MFMessageLoadingContext log];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "Download supported, getting body", buf, 2u);
      }

      messageBody2 = [message messageBody];
    }

    else
    {
      v16 = +[MFMessageLoadingContext log];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B0389000, v16, OS_LOG_TYPE_DEFAULT, "Download not supported, getting body if available", buf, 2u);
      }

      messageBody2 = [message messageBodyIfAvailable];
    }

    v106 = messageBody2;

    v12 = v106;
    selfCopy4 = self;
    if (v106)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"MFMessageLoadingContext.m" lineNumber:355 description:@"body must be a MIME body"];

        v12 = v106;
        selfCopy4 = self;
      }
    }

    [(MFMessageLoadingContext *)selfCopy4 _setMessageBody:v12];
    if (!v12)
    {
      v61 = +[MFMessageLoadingContext log];
      if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
      {
        messageID = [message messageID];
        [(MFMessageLoadingContext *)messageID _reallyLoad:buf shouldDownload:v61];
      }

      -[MFMessageLoadingContextEvent setTransportType:](v110, "setTransportType:", [v105 transportType]);
      v63 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E699A730] code:2050 userInfo:0];
      [(MFMessageLoadingContextEvent *)v110 setError:v63];

      +[MFActivityMonitor destroyMonitor];
      v64 = v110;
      v107 = 0;
      goto LABEL_61;
    }
  }

  v116 = 0;
  v107 = v12;
  v17 = [objc_opt_class() _nextOffsetForOffset:-[MFMessageLoadingContext contentOffset](selfCopy4 totalLength:"contentOffset") requestedAmount:{objc_msgSend(v12, "totalTextSize"), 0}];
  topLevelPart = [v12 topLevelPart];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v115 = 0;
  v22 = *MEMORY[0x1E699A730];
  v23 = 1;
  do
  {
    if (!v23)
    {
      v24 = [v19 contentToOffset:v17 resultOffset:&v116 downloadIfNecessary:downloadCopy asHTML:1 isComplete:&v115];

      v25 = v19;
      v21 = v24;
      v20 = v25;
    }

    if (load < 1)
    {
      v26 = [message defaultAlternativeInPart:topLevelPart];
      goto LABEL_26;
    }

    v26 = [message bestAlternativeInPart:topLevelPart];

    if (v20 && v26 == v20 && _contentLoadedEmptyDocument(v21, v116))
    {

      v116 = 0;
      v27 = [MEMORY[0x1E696ABC0] errorWithDomain:v22 code:2050 userInfo:0];
      [(MFMessageLoadingContextEvent *)v110 setError:v27];
      v21 = 0;
      v20 = 0;
      v26 = 0;
      load = -1;
      v19 = v27;
LABEL_26:
    }

    v19 = v26;
    v23 = v26 == 0;
  }

  while (!v26 || v26 != v20);
  [(MFMessageLoadingContext *)selfCopy setLoadedPart:v26];
  [(MFMessageLoadingContext *)selfCopy setContentOffset:v116];
  rfc822DecodedMessageBody = [v26 rfc822DecodedMessageBody];
  v29 = rfc822DecodedMessageBody;
  v30 = v107;
  if (rfc822DecodedMessageBody)
  {
    v30 = rfc822DecodedMessageBody;
  }

  v108 = v30;

  attachments = [v108 attachments];
  v114[0] = MEMORY[0x1E69E9820];
  v114[1] = 3221225472;
  v114[2] = __54__MFMessageLoadingContext__reallyLoad_shouldDownload___block_invoke_138;
  v114[3] = &unk_1E7AA7068;
  v114[4] = selfCopy;
  v104 = [attachments ef_map:v114];

  if ([v104 count])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v32 = _os_activity_create(&dword_1B0389000, "Load attachment", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
      memset(buf, 170, 16);
      os_activity_scope_enter(v32, buf);
      attachmentManager = [(MFMessageLoadingContext *)selfCopy attachmentManager];
      [attachmentManager insertMessageAttachmentMetadataToPersistence:v104 forMessage:message];

      v34 = EDAttachmentsLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v122 = 138543362;
        v123 = v104;
        _os_log_impl(&dword_1B0389000, v34, OS_LOG_TYPE_DEFAULT, "Loading attachments %{public}@", &v122, 0xCu);
      }

      os_activity_scope_leave(buf);
    }
  }

  LOBYTE(v122) = 0;
  v113 = 0;
  [v108 numberOfAttachmentsSigned:&v122 encrypted:&v113];
  messageFlags = [(MFMailMessage *)selfCopy->_message messageFlags];
  if (v122 == 1 && (messageFlags & 0x800000) == 0 || (v113 & 1) != 0 && (messageFlags & 8) == 0)
  {
    LOBYTE(v122) = v122 | ((messageFlags & 0x800000) != 0);
    v113 |= (messageFlags & 8) != 0;
    numberOfAttachments = [message numberOfAttachments];
    [message setNumberOfAttachments:numberOfAttachments isSigned:v122 isEncrypted:v113];
  }

  if (_contentLoadedEmptyDocument(v21, v116))
  {
    [(MFMessageLoadingContextEvent *)v110 setContent:MEMORY[0x1E695E0F0]];
    [(MFMessageLoadingContext *)selfCopy setHasLoadedSomeContent:1];
    goto LABEL_43;
  }

  v21 = v21;
  firstObject = [v21 firstObject];
  if ([v21 count] == 1 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    error = [firstObject error];
    v40 = error;
    v41 = 1;
  }

  else
  {
    error = 0;
    v41 = 0;
  }

  v103 = error;
  if (v41)
  {
    [(MFMessageLoadingContext *)selfCopy setHasLoadedSomeContent:0];
    -[MFMessageLoadingContextEvent setTransportType:](v110, "setTransportType:", [v105 transportType]);
    [(MFMessageLoadingContextEvent *)v110 setError:v103];
    +[MFActivityMonitor destroyMonitor];
    v42 = v110;

    goto LABEL_60;
  }

  v58 = v108;
  v101 = v58;
  if ([v21 count])
  {
    v59 = 0;
    v60 = 0;
    goto LABEL_76;
  }

  topLevelPart2 = [v58 topLevelPart];
  sMIMEError = [topLevelPart2 SMIMEError];

  domain = [sMIMEError domain];
  if (![@"MFMessageErrorDomain" isEqualToString:domain])
  {

    goto LABEL_74;
  }

  v68 = [sMIMEError code] == 1035;

  if (!v68)
  {
LABEL_74:
    v59 = 0;
    v60 = 0;
    goto LABEL_75;
  }

  v69 = sMIMEError;
  v60 = 1;
  v59 = sMIMEError;
LABEL_75:

LABEL_76:
  v70 = v59;
  if (v60)
  {
    [(MFMessageLoadingContext *)selfCopy setHasLoadedSomeContent:0];
    -[MFMessageLoadingContextEvent setTransportType:](v110, "setTransportType:", [v105 transportType]);
    [(MFMessageLoadingContextEvent *)v110 setError:v70];
    +[MFActivityMonitor destroyMonitor];
    v71 = v110;

    goto LABEL_60;
  }

  isHTML = [v19 isHTML];
  if (load < 1)
  {
    v73 = isHTML;
  }

  else
  {
    v73 = 0;
  }

  v102 = v70;
  if (v73 != 1 || [(MFMessageLoadingContext *)selfCopy contentOffset]>> 14 > 2 || (v115 & 1) != 0)
  {
    goto LABEL_113;
  }

  v97 = [v21 count];
  v99 = 0;
  v100 = v21;
  v74 = 0;
  while ((v115 & 1) != 0 || v74 >= v97)
  {
LABEL_103:
    v88 = v74;
    v89 = +[MFMessageLoadingContext _nextOffsetForOffset:totalLength:requestedAmount:](MFMessageLoadingContext, "_nextOffsetForOffset:totalLength:requestedAmount:", -[MFMessageLoadingContext contentOffset](selfCopy, "contentOffset"), [v107 totalTextSize], 0x4000);
    v21 = [v19 contentToOffset:v89 resultOffset:&v116 downloadIfNecessary:downloadCopy asHTML:1 isComplete:&v115];

    [(MFMessageLoadingContext *)selfCopy setContentOffset:v116];
    if (v17 != v89)
    {
      v17 = v89;
      v100 = v21;
      v74 = v88;
      if (v116 < 0xC000)
      {
        continue;
      }
    }

    goto LABEL_113;
  }

  v96 = sel_encodedFileSize;
  while (2)
  {
    v75 = v74;
    v76 = [v100 objectAtIndex:v96];
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
LABEL_101:

        v74 = v75 + 1;
        if ((v115 & 1) != 0 || v74 >= v97)
        {
          goto LABEL_103;
        }

        continue;
      }

      v87 = [v76 encodedFileSize] + v99;
LABEL_100:
      v99 = v87;
      goto LABEL_101;
    }

    break;
  }

  htmlData = [v76 htmlData];
  v77 = htmlData;
  bytes = [htmlData bytes];
  v79 = [htmlData length];
  if (!bytes)
  {
    v82 = 0;
    goto LABEL_107;
  }

  v80 = v79;
  v81 = memchr(bytes, 60, v79);
  if (!v81 || (v82 = v81, v83 = &bytes[v80], (v83 - v81) < 6))
  {
LABEL_97:
    v86 = [htmlData length];

    v87 = v86 + v99;
    goto LABEL_100;
  }

  while (1)
  {
    v84 = *(v82 + 5);
    if ((v84 == 62 || v84 == 32) && !strncasecmp(v82 + 1, "body", 4uLL))
    {
      break;
    }

    v85 = memchr((v82 + 1), 60, v83 - (v82 + 1));
    if (v85)
    {
      v82 = v85;
      if ((v83 - v85) > 5)
      {
        continue;
      }
    }

    goto LABEL_97;
  }

LABEL_107:

  v90 = v82 - bytes + v99;
  if (v90 < 0x401)
  {
    v21 = v100;
  }

  else
  {
    contentOffset = [(MFMessageLoadingContext *)selfCopy contentOffset];
    totalTextSize = [v107 totalTextSize];
    if (v90 <= 0x1F58)
    {
      v93 = 8024;
    }

    else
    {
      v93 = v90;
    }

    v21 = [v19 contentToOffset:+[MFMessageLoadingContext _nextOffsetForOffset:totalLength:requestedAmount:](MFMessageLoadingContext resultOffset:"_nextOffsetForOffset:totalLength:requestedAmount:" downloadIfNecessary:contentOffset asHTML:totalTextSize isComplete:{v93), &v116, downloadCopy, 1, &v115}];

    [(MFMessageLoadingContext *)selfCopy setContentOffset:v116];
  }

LABEL_113:
  [(MFMessageLoadingContextEvent *)v110 setContent:v21];
  if (v116)
  {
    v94 = [v21 count] != 0;
  }

  else
  {
    v94 = 0;
  }

  [(MFMessageLoadingContext *)selfCopy setHasLoadedSomeContent:v94];

LABEL_43:
  if (v115)
  {
    v37 = 1;
  }

  else
  {
    totalTextSize2 = [v20 totalTextSize];
    contentOffset2 = [(MFMessageLoadingContext *)selfCopy contentOffset];
    if (totalTextSize2 >= contentOffset2)
    {
      v45 = totalTextSize2 - contentOffset2;
    }

    else
    {
      v45 = 0;
    }

    [(MFMessageLoadingContextEvent *)v110 setRemainingBytes:v45];
    v46 = +[MFMessageLoadingContext log];
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      message2 = [(MFMessageLoadingContext *)selfCopy message];
      ef_publicDescription = [message2 ef_publicDescription];
      remainingBytes = [(MFMessageLoadingContextEvent *)v110 remainingBytes];
      *buf = 138543618;
      *&buf[4] = ef_publicDescription;
      *&buf[12] = 2048;
      *&buf[14] = remainingBytes;
      _os_log_impl(&dword_1B0389000, v46, OS_LOG_TYPE_DEFAULT, "Body download not complete for message %{public}@. Remaining bytes: %ld", buf, 0x16u);
    }

    v37 = v115;
  }

  [(MFMessageLoadingContextEvent *)v110 setHasLoadedCompleteBody:v37 & 1];
  v50 = [message bestAlternativeInPart:topLevelPart];
  [(MFMessageLoadingContextEvent *)v110 setHasLoadedBestAlternativePart:v20 == v50];

  [(MFMessageLoadingContextEvent *)v110 setLoadedPart:v20];
  [(MFMessageLoadingContextEvent *)v110 setLoadedBody:v108];
  -[MFMessageLoadingContextEvent setTransportType:](v110, "setTransportType:", [v105 transportType]);
  [(MFMessageLoadingContext *)selfCopy setHasLoadedCompleteMessage:v115];
  [(MFMessageLoadingContext *)selfCopy setHasLoadedBestAlternativePart:[(MFMessageLoadingContextEvent *)v110 hasLoadedBestAlternativePart]];
  v51 = +[MFMessageLoadingContext log];
  if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
  {
    message3 = [(MFMessageLoadingContext *)selfCopy message];
    ef_publicDescription2 = [message3 ef_publicDescription];
    v53 = v115;
    hasLoadedBestAlternativePart = [(MFMessageLoadingContextEvent *)v110 hasLoadedBestAlternativePart];
    transportType = [(MFMessageLoadingContextEvent *)v110 transportType];
    *buf = 138544130;
    *&buf[4] = ef_publicDescription2;
    *&buf[12] = 1024;
    *&buf[14] = v53;
    *&buf[18] = 1024;
    *&buf[20] = hasLoadedBestAlternativePart;
    v120 = 2048;
    v121 = transportType;
    _os_log_impl(&dword_1B0389000, v51, OS_LOG_TYPE_DEFAULT, "MFMessageLoadingContextEvent for message:%{public}@ hasLoadedCompleteMessage %{BOOL}d, hasLoadedBestAlternativePart %{BOOL}d, transportType %ld", buf, 0x22u);
  }

  +[MFActivityMonitor destroyMonitor];
  v56 = v110;
LABEL_60:

LABEL_61:
LABEL_62:

  return v110;
}

id __54__MFMessageLoadingContext__reallyLoad_shouldDownload___block_invoke_138(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 mimePart];
  v5 = [v4 partNumber];

  v6 = EDAttachmentsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = v5;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_1B0389000, v6, OS_LOG_TYPE_DEFAULT, "Creating MFAttachment for part number %{public}@ textAttachment %@", &v10, 0x16u);
  }

  v7 = [*(a1 + 32) attachmentManager];
  v8 = [v7 attachmentForTextAttachment:v3 error:0];

  return v8;
}

- (void)assignAttachmentManagerToContent:(id)content
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  contentCopy = content;
  v5 = [contentCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(contentCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          attachmentManager = v8;
          [attachmentManager setAttachmentManager:self->_attachmentManager];
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_11;
          }

          attachmentManager = [(MFMessageLoadingContext *)self attachmentManager];
          v10 = [attachmentManager attachmentForTextAttachment:v8 error:0];
        }

LABEL_11:
        ++v7;
      }

      while (v5 != v7);
      v5 = [contentCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)processMeetingInvitations:(id)invitations
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  invitationsCopy = invitations;
  v5 = [invitationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(invitationsCopy);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          attachmentManager = [(MFMessageLoadingContext *)self attachmentManager];
          v10 = [attachmentManager attachmentForTextAttachment:v8 error:0];

          if ([v10 isCalendarFile])
          {
            if (self->_eventICSRepresentation)
            {
              [v10 setIcsRepresentation:?];
            }

            else if (self->_eventUniqueID)
            {
              [v10 setEventID:?];
              [v10 setMeetingStorePersistentID:self->_meetingStorePersistentID];
            }

            if (self->_meetingName)
            {
              [v10 setFileName:?];
            }
          }
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [invitationsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)_reallyLoad:(os_log_t)log shouldDownload:.cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "Failed to get the body for messageID %{public}@", buf, 0xCu);
}

@end