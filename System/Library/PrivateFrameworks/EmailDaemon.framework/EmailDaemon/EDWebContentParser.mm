@interface EDWebContentParser
+ (OS_os_log)signpostLog;
- (EDWebContentParser)initWithOptions:(unint64_t)options cancelationToken:(id)token;
- (WKWebView)webView;
- (id)_extractDataDetectorResultsMetadata:(id)metadata;
- (id)_extractOneTimeCodeFromHTMLString:(id)string orWithData:(id)data characterEncodingName:(id)name withSubject:(id)subject;
- (id)_extractPlainTextFromHTMLString:(id)string orWithData:(id)data characterEncodingName:(id)name;
- (id)_getDataDetectionCategoryString:(int)string;
- (id)_parseHTMLString:(id)string orWithData:(id)data characterEncodingName:(id)name withOptions:(unint64_t)options messageID:(id)d;
- (id)_richLinkMetadataScript;
- (id)webViewConfiguration;
- (unint64_t)signpostID;
- (void)_addRemoteContentWebViewObserver;
- (void)_disableDataDetection;
- (void)_enableDataDetection;
- (void)_retrieveRichLinkMetadata:(id)metadata;
- (void)_updateContentRuleListsIfNeededForWebViewConfiguration:(id)configuration;
- (void)baseURL:(id)l didRequestRemoteContentURLs:(id)ls;
- (void)contentRuleListManager:(id)manager didAddRuleList:(id)list;
- (void)contentRuleListManager:(id)manager didRemoveRuleList:(id)list;
- (void)contentRuleListManager:(id)manager didUpdateContentRuleList:(id)list oldContentRuleList:(id)ruleList;
- (void)dealloc;
- (void)logWebBundleMessage:(id)message;
- (void)parseHTMLData:(id)data characterEncodingName:(id)name withOptions:(unint64_t)options forMessage:(id)message withSubject:(id)subject completionHandler:(id)handler;
- (void)parseHTMLString:(id)string withOptions:(unint64_t)options forMessage:(id)message withSubject:(id)subject completionHandler:(id)handler;
- (void)requestDataDetectionResultsWithBaseURL:(id)l;
- (void)test_tearDown;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation EDWebContentParser

void ___ef_log_EDWebContentParser_block_invoke()
{
  v0 = os_log_create("com.apple.email", "EDWebContentParser");
  v1 = _ef_log_EDWebContentParser_log;
  _ef_log_EDWebContentParser_log = v0;
}

+ (OS_os_log)signpostLog
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__EDWebContentParser_signpostLog__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (signpostLog_onceToken_14 != -1)
  {
    dispatch_once(&signpostLog_onceToken_14, block);
  }

  v2 = signpostLog_log_14;

  return v2;
}

void __33__EDWebContentParser_signpostLog__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email.signposts", [v3 UTF8String]);
  v2 = signpostLog_log_14;
  signpostLog_log_14 = v1;
}

- (unint64_t)signpostID
{
  signpostLog = [objc_opt_class() signpostLog];
  v4 = os_signpost_id_make_with_pointer(signpostLog, self);

  return v4;
}

- (EDWebContentParser)initWithOptions:(unint64_t)options cancelationToken:(id)token
{
  tokenCopy = token;
  v27.receiver = self;
  v27.super_class = EDWebContentParser;
  v8 = [(EDWebContentParser *)&v27 init];
  v9 = v8;
  if (v8)
  {
    [(EDWebContentParser *)v8 setOptions:options];
    objc_storeStrong(&v9->_token, token);
    v10 = objc_alloc(MEMORY[0x1E699B7F0]);
    v11 = objc_opt_new();
    v12 = [v10 initWithObject:v11];
    state = v9->_state;
    v9->_state = v12;

    v14 = objc_alloc_init(MEMORY[0x1E699B7F8]);
    contentRuleListsObservationToken = v9->_contentRuleListsObservationToken;
    v9->_contentRuleListsObservationToken = v14;

    v16 = [[ECWebContentObserver alloc] initWithParser:v9];
    webContentObserver = v9->_webContentObserver;
    v9->_webContentObserver = v16;

    v9->_remoteContentParserLock._os_unfair_lock_opaque = 0;
    v18 = [MEMORY[0x1E699B978] serialDispatchQueueSchedulerWithName:@"com.apple.email.EDWebContentParser" qualityOfService:9];
    backgroundWorkScheduler = v9->_backgroundWorkScheduler;
    v9->_backgroundWorkScheduler = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_attr_make_with_qos_class(v20, QOS_CLASS_USER_INTERACTIVE, 0);
    v22 = dispatch_queue_create("com.apple.email.EDDataDetectionUtilities.oneTimeCodes", v21);
    extractOneTimeCodeQueue = v9->_extractOneTimeCodeQueue;
    v9->_extractOneTimeCodeQueue = v22;

    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    currentContentRuleLists = v9->_currentContentRuleLists;
    v9->_currentContentRuleLists = v24;

    v9->_contentRuleListsNeedUpdate = 1;
    v9->_contentRuleListsLock._os_unfair_lock_opaque = 0;
  }

  return v9;
}

- (void)dealloc
{
  if (self->_options)
  {
    _remoteObjectRegistry = [(WKWebView *)self->_webView _remoteObjectRegistry];
    [_remoteObjectRegistry unregisterExportedObject:self->_webContentObserver interface:self->_webContentObserverInterface];
  }

  [(EFManualCancelationToken *)self->_contentRuleListsObservationToken cancel];
  v4.receiver = self;
  v4.super_class = EDWebContentParser;
  [(EDWebContentParser *)&v4 dealloc];
}

- (void)test_tearDown
{
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDWebContentParser.m" lineNumber:146 description:{@"%s can only be called from unit tests", "-[EDWebContentParser test_tearDown]"}];
  }

  v4 = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
  backgroundWorkScheduler = [(EDWebContentParser *)self backgroundWorkScheduler];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __35__EDWebContentParser_test_tearDown__block_invoke;
  v9[3] = &unk_1E8250260;
  v6 = v4;
  v10 = v6;
  [backgroundWorkScheduler performBlock:v9];
  while (1)
  {

    if ([v6 tryLockWhenCondition:1])
    {
      break;
    }

    backgroundWorkScheduler = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:0.001];
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [currentRunLoop runUntilDate:backgroundWorkScheduler];

    [MEMORY[0x1E696AF00] sleepUntilDate:backgroundWorkScheduler];
  }

  [v6 unlock];
}

- (id)webViewConfiguration
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDWebContentParser.m" lineNumber:168 description:@"Current thread must be main"];
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__EDWebContentParser_webViewConfiguration__block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  if (webViewConfiguration_onceToken != -1)
  {
    dispatch_once(&webViewConfiguration_onceToken, block);
  }

  [(EDWebContentParser *)self _updateContentRuleListsIfNeededForWebViewConfiguration:webViewConfiguration_configuration];
  return webViewConfiguration_configuration;
}

void __42__EDWebContentParser_webViewConfiguration__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E69ADD50] commonWebViewConfiguration];
  v3 = webViewConfiguration_configuration;
  webViewConfiguration_configuration = v2;

  [webViewConfiguration_configuration _setClientNavigationsRunAtForegroundPriority:1];
  v4 = [webViewConfiguration_configuration defaultWebpagePreferences];
  [v4 setAllowsContentJavaScript:0];

  if (_os_feature_enabled_impl() && ([*(a1 + 32) options] & 2) != 0)
  {
    [webViewConfiguration_configuration setDataDetectorTypes:-1];
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v5 = get_WKProcessPoolConfigurationClass_softClass;
  v28 = get_WKProcessPoolConfigurationClass_softClass;
  if (!get_WKProcessPoolConfigurationClass_softClass)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __get_WKProcessPoolConfigurationClass_block_invoke;
    v23 = &unk_1E8250000;
    v24 = &v25;
    __get_WKProcessPoolConfigurationClass_block_invoke(&v20);
    v5 = v26[3];
  }

  v6 = v5;
  _Block_object_dispose(&v25, 8);
  v7 = objc_alloc_init(v5);
  v8 = [MEMORY[0x1E699B268] bundle];
  v9 = [v8 URLForResource:@"EmailCore" withExtension:@"wkbundle" subdirectory:@"PlugIns"];
  [v7 setInjectedBundleURL:v9];

  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v10 = getWKProcessPoolClass_softClass;
  v28 = getWKProcessPoolClass_softClass;
  if (!getWKProcessPoolClass_softClass)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getWKProcessPoolClass_block_invoke;
    v23 = &unk_1E8250000;
    v24 = &v25;
    __getWKProcessPoolClass_block_invoke(&v20);
    v10 = v26[3];
  }

  v11 = v10;
  _Block_object_dispose(&v25, 8);
  v12 = [[v10 alloc] _initWithConfiguration:v7];
  [webViewConfiguration_configuration setProcessPool:v12];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v13 = getWKUserContentControllerClass_softClass;
  v28 = getWKUserContentControllerClass_softClass;
  if (!getWKUserContentControllerClass_softClass)
  {
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __getWKUserContentControllerClass_block_invoke;
    v23 = &unk_1E8250000;
    v24 = &v25;
    __getWKUserContentControllerClass_block_invoke(&v20);
    v13 = v26[3];
  }

  v14 = v13;
  _Block_object_dispose(&v25, 8);
  v15 = objc_opt_new();
  [webViewConfiguration_configuration setUserContentController:v15];

  if (([*(a1 + 32) options] & 4) != 0)
  {
    v16 = [*(a1 + 32) _richLinkMetadataScript];
    if (v16)
    {
      v17 = [webViewConfiguration_configuration userContentController];
      [v17 addUserScript:v16];
    }

    v18 = [webViewConfiguration_configuration userContentController];
    [v18 addScriptMessageHandler:*(a1 + 32) name:@"MetadataMessageHandler"];

    v19 = [webViewConfiguration_configuration userContentController];
    [v19 addScriptMessageHandler:*(a1 + 32) name:@"LogHandler"];
  }
}

- (WKWebView)webView
{
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDWebContentParser.m" lineNumber:212 description:@"Current thread must be main"];
  }

  webView = self->_webView;
  if (!webView)
  {
    v5 = arc4random_uniform(3u);
    if (arc4random())
    {
      v6 = 1;
    }

    else
    {
      v6 = -1;
    }

    EFARC4NormallyDistributedRandomDoubleInRange();
    v8 = v6 * v7;
    EFARC4NormallyDistributedRandomDoubleInRange();
    v10 = v6 * v9;
    v11 = (v8 + 390);
    v12 = (v10 + 844);
    v13 = (v8 + 834);
    v14 = (v10 + 1194);
    if (v5)
    {
      v13 = 0.0;
      v14 = 0.0;
    }

    if (v5 != 1)
    {
      v11 = v13;
      v12 = v14;
    }

    if (v5 == 2)
    {
      v15 = (v8 + 1325);
    }

    else
    {
      v15 = v11;
    }

    if (v5 == 2)
    {
      v16 = (v10 + 906);
    }

    else
    {
      v16 = v12;
    }

    v26 = 0;
    v27 = &v26;
    v28 = 0x2050000000;
    v17 = getWKWebViewClass_softClass;
    v29 = getWKWebViewClass_softClass;
    if (!getWKWebViewClass_softClass)
    {
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __getWKWebViewClass_block_invoke;
      v25[3] = &unk_1E8250000;
      v25[4] = &v26;
      __getWKWebViewClass_block_invoke(v25);
      v17 = v27[3];
    }

    v18 = v17;
    _Block_object_dispose(&v26, 8);
    v19 = [v17 alloc];
    webViewConfiguration = [(EDWebContentParser *)self webViewConfiguration];
    v21 = [v19 initWithFrame:webViewConfiguration configuration:{0.0, 0.0, v15, v16}];
    v22 = self->_webView;
    self->_webView = v21;

    [(WKWebView *)self->_webView setNavigationDelegate:self];
    [(EDWebContentParser *)self _addRemoteContentWebViewObserver];
    webView = self->_webView;
  }

  return webView;
}

- (id)_richLinkMetadataScript
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__EDWebContentParser__richLinkMetadataScript__block_invoke;
  block[3] = &unk_1E8250260;
  block[4] = self;
  if (_richLinkMetadataScript_onceToken != -1)
  {
    dispatch_once(&_richLinkMetadataScript_onceToken, block);
  }

  v2 = objc_alloc(MEMORY[0x1E6985358]);
  v3 = [v2 initWithSource:_richLinkMetadataScript_findRichLinkMetadataSource injectionTime:1 forMainFrameOnly:0];

  return v3;
}

void __45__EDWebContentParser__richLinkMetadataScript__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v2 = [v1 pathForResource:@"FindRichLinkMetadata" ofType:@"js"];

  v9 = 0;
  v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithContentsOfFile:v2 encoding:4 error:&v9];
  v4 = v9;
  v5 = _richLinkMetadataScript_findRichLinkMetadataSource;
  _richLinkMetadataScript_findRichLinkMetadataSource = v3;

  if (!_richLinkMetadataScript_findRichLinkMetadataSource)
  {
    v7 = _ef_log_EDWebContentParser(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v4 ef_publicDescription];
      __45__EDWebContentParser__richLinkMetadataScript__block_invoke_cold_1(v8, buf, v7);
    }
  }
}

- (void)parseHTMLData:(id)data characterEncodingName:(id)name withOptions:(unint64_t)options forMessage:(id)message withSubject:(id)subject completionHandler:(id)handler
{
  v45 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  nameCopy = name;
  messageCopy = message;
  subjectCopy = subject;
  handlerCopy = handler;
  v19 = handlerCopy;
  if ((options & 2) != 0)
  {
    v20 = _ef_log_EDWebContentParser(handlerCopy);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v44 = messageCopy;
      _os_log_impl(&dword_1C61EF000, v20, OS_LOG_TYPE_INFO, "Scheduling data detection work for message %@", buf, 0xCu);
    }
  }

  extractOneTimeCodeQueue = self->_extractOneTimeCodeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__EDWebContentParser_parseHTMLData_characterEncodingName_withOptions_forMessage_withSubject_completionHandler___block_invoke;
  block[3] = &unk_1E8259240;
  optionsCopy = options;
  v22 = v19;
  v41 = v22;
  block[4] = self;
  v23 = dataCopy;
  v38 = v23;
  v24 = nameCopy;
  v39 = v24;
  v25 = subjectCopy;
  v40 = v25;
  dispatch_async(extractOneTimeCodeQueue, block);
  backgroundWorkScheduler = self->_backgroundWorkScheduler;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __111__EDWebContentParser_parseHTMLData_characterEncodingName_withOptions_forMessage_withSubject_completionHandler___block_invoke_2;
  v31[3] = &unk_1E8259268;
  v31[4] = self;
  v32 = v23;
  v33 = v24;
  v34 = messageCopy;
  v35 = v22;
  optionsCopy2 = options;
  v27 = v22;
  v28 = messageCopy;
  v29 = v24;
  v30 = v23;
  [(EFScheduler *)backgroundWorkScheduler performBlock:v31];
}

void __111__EDWebContentParser_parseHTMLData_characterEncodingName_withOptions_forMessage_withSubject_completionHandler___block_invoke(uint64_t a1)
{
  if ((*(a1 + 72) & 8) != 0)
  {
    v1 = *(a1 + 64);
    v2 = [*(a1 + 32) _extractOneTimeCodeFromHTMLString:0 orWithData:*(a1 + 40) characterEncodingName:*(a1 + 48) withSubject:*(a1 + 56)];
    (*(v1 + 16))(v1);
  }
}

void __111__EDWebContentParser_parseHTMLData_characterEncodingName_withOptions_forMessage_withSubject_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _parseHTMLString:0 orWithData:*(a1 + 40) characterEncodingName:*(a1 + 48) withOptions:*(a1 + 72) messageID:*(a1 + 56)];
  (*(*(a1 + 64) + 16))();
}

- (void)parseHTMLString:(id)string withOptions:(unint64_t)options forMessage:(id)message withSubject:(id)subject completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  messageCopy = message;
  subjectCopy = subject;
  handlerCopy = handler;
  v16 = handlerCopy;
  if ((options & 2) != 0)
  {
    v17 = _ef_log_EDWebContentParser(handlerCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = messageCopy;
      _os_log_impl(&dword_1C61EF000, v17, OS_LOG_TYPE_INFO, "Scheduling data detection work for message %@", buf, 0xCu);
    }
  }

  extractOneTimeCodeQueue = self->_extractOneTimeCodeQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __91__EDWebContentParser_parseHTMLString_withOptions_forMessage_withSubject_completionHandler___block_invoke;
  block[3] = &unk_1E8259290;
  optionsCopy = options;
  v19 = v16;
  v34 = v19;
  block[4] = self;
  v20 = stringCopy;
  v32 = v20;
  v21 = subjectCopy;
  v33 = v21;
  dispatch_async(extractOneTimeCodeQueue, block);
  backgroundWorkScheduler = self->_backgroundWorkScheduler;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __91__EDWebContentParser_parseHTMLString_withOptions_forMessage_withSubject_completionHandler___block_invoke_2;
  v26[3] = &unk_1E8252148;
  v26[4] = self;
  v27 = v20;
  v29 = v19;
  optionsCopy2 = options;
  v28 = messageCopy;
  v23 = v19;
  v24 = messageCopy;
  v25 = v20;
  [(EFScheduler *)backgroundWorkScheduler performBlock:v26];
}

void __91__EDWebContentParser_parseHTMLString_withOptions_forMessage_withSubject_completionHandler___block_invoke(uint64_t a1)
{
  if ((*(a1 + 64) & 8) != 0)
  {
    v1 = *(a1 + 56);
    v2 = [*(a1 + 32) _extractOneTimeCodeFromHTMLString:*(a1 + 40) orWithData:0 characterEncodingName:0 withSubject:*(a1 + 48)];
    (*(v1 + 16))(v1);
  }
}

void __91__EDWebContentParser_parseHTMLString_withOptions_forMessage_withSubject_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _parseHTMLString:*(a1 + 40) orWithData:0 characterEncodingName:0 withOptions:*(a1 + 64) messageID:*(a1 + 48)];
  (*(*(a1 + 56) + 16))();
}

- (id)_extractPlainTextFromHTMLString:(id)string orWithData:(id)data characterEncodingName:(id)name
{
  stringCopy = string;
  dataCopy = data;
  nameCopy = name;
  v10 = nameCopy;
  if (dataCopy)
  {
    v11 = ECConvertCharacterSetNameToEncoding();
    v12 = v11;
    if (v11)
    {
      unsignedIntegerValue = [v11 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 4;
    }

    v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:dataCopy encoding:unsignedIntegerValue];

    stringCopy = v14;
  }

  if (stringCopy)
  {
    v15 = [MEMORY[0x1E699B2F8] snippetFromHTMLBody:stringCopy options:32 maxLength:0x7FFFFFFFFFFFFFFFLL preservingQuotedForwardedContent:0];
  }

  else
  {
    v16 = _ef_log_EDWebContentParser(nameCopy);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [EDWebContentParser _extractPlainTextFromHTMLString:v16 orWithData:? characterEncodingName:?];
    }

    v15 = 0;
  }

  return v15;
}

- (id)_extractOneTimeCodeFromHTMLString:(id)string orWithData:(id)data characterEncodingName:(id)name withSubject:(id)subject
{
  subjectCopy = subject;
  v11 = [(EDWebContentParser *)self _extractPlainTextFromHTMLString:string orWithData:data characterEncodingName:name];
  v12 = [EDDataDetectionUtilities extractOneTimeCode:v11 withSubject:subjectCopy];
  v13 = objc_alloc_init(EDWebContentParserResults);
  [(EDWebContentParserResults *)v13 setOneTimeCode:v12];

  return v13;
}

- (id)_parseHTMLString:(id)string orWithData:(id)data characterEncodingName:(id)name withOptions:(unint64_t)options messageID:(id)d
{
  optionsCopy = options;
  v100 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  dataCopy = data;
  nameCopy = name;
  dCopy = d;
  if (([(EFManualCancelationToken *)self->_token isCanceled]& 1) != 0)
  {
    v62 = 0;
  }

  else
  {
    v59 = dCopy;
    v14 = objc_alloc_init(EDWebContentParserResults);
    v62 = v14;
    if ((optionsCopy & 2) != 0)
    {
      v15 = _ef_log_EDWebContentParser(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v59;
        _os_log_impl(&dword_1C61EF000, v15, OS_LOG_TYPE_INFO, "Starting data detection work for message %@", buf, 0xCu);
      }

      [(EDWebContentParser *)self _enableDataDetection];
      v16 = +[EDWebContentParser signpostLog];
      signpostID = [(EDWebContentParser *)self signpostID];
      if (signpostID - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v16))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v16, OS_SIGNPOST_INTERVAL_BEGIN, signpostID, "EDWebContentParserDataDetection", "", buf, 2u);
      }
    }

    v18 = optionsCopy & 1;
    if (optionsCopy)
    {
      v19 = +[EDWebContentParser signpostLog];
      signpostID2 = [(EDWebContentParser *)self signpostID];
      if (signpostID2 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
      {
        *buf = 0;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v19, OS_SIGNPOST_INTERVAL_BEGIN, signpostID2, "EDWebContentParserLinkParsing", "", buf, 2u);
      }
    }

    os_unfair_lock_lock(&self->_remoteContentParserLock);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v97 = __Block_byref_object_copy__54;
    v98 = __Block_byref_object_dispose__54;
    v99 = 0;
    v88 = 0;
    v89 = &v88;
    v90 = 0x3032000000;
    v91 = __Block_byref_object_copy__54;
    v92 = __Block_byref_object_dispose__54;
    v93 = 0;
    v82 = 0;
    v83 = &v82;
    v84 = 0x3032000000;
    v85 = __Block_byref_object_copy__54;
    v86 = __Block_byref_object_dispose__54;
    v87 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__54;
    v80 = __Block_byref_object_dispose__54;
    v81 = 0;
    if (!nameCopy)
    {
      nameCopy = CFStringConvertEncodingToIANACharSetName(0x600u);
    }

    v21 = optionsCopy & 2;
    state = self->_state;
    v72[0] = MEMORY[0x1E69E9820];
    v23 = optionsCopy & 4;
    v72[1] = 3221225472;
    v72[2] = __94__EDWebContentParser__parseHTMLString_orWithData_characterEncodingName_withOptions_messageID___block_invoke;
    v72[3] = &unk_1E82592B8;
    v73 = (optionsCopy & 2) >> 1;
    v72[4] = self;
    v72[5] = &v88;
    v74 = optionsCopy & 1;
    v75 = (optionsCopy & 4) >> 2;
    v72[6] = &v82;
    v72[7] = &v76;
    v72[8] = buf;
    [(EFLocked *)state performWhileLocked:v72];
    mainThreadScheduler = [MEMORY[0x1E699B978] mainThreadScheduler];
    v66[0] = MEMORY[0x1E69E9820];
    v66[1] = 3221225472;
    v66[2] = __94__EDWebContentParser__parseHTMLString_orWithData_characterEncodingName_withOptions_messageID___block_invoke_2;
    v66[3] = &unk_1E82592E0;
    v67 = stringCopy;
    selfCopy = self;
    v71 = buf;
    v56 = dataCopy;
    v69 = v56;
    v58 = nameCopy;
    v70 = v58;
    v25 = [mainThreadScheduler performCancelableBlock:v66];

    if (v18)
    {
      v27 = v83[5];
      v65 = 0;
      v28 = [v27 resultWithTimeout:&v65 error:10.0];
      v26 = v65;
      [(EDWebContentParserResults *)v62 setRemoteContentLinks:v28];
    }

    else
    {
      v26 = 0;
    }

    if (v21)
    {
      v30 = v89[5];
      v64 = 0;
      v31 = [v30 resultWithTimeout:&v64 error:10.0];
      v29 = v64;
      [(EDWebContentParserResults *)v62 setDataDetectionResults:v31];
    }

    else
    {
      v29 = 0;
    }

    if (v23)
    {
      v33 = v77[5];
      v63 = 0;
      v34 = [v33 resultWithTimeout:&v63 error:10.0];
      v32 = v63;
      [(EDWebContentParserResults *)v62 setRichLinkResults:v34];
    }

    else
    {
      v32 = 0;
    }

    if ([v26 ef_isTimeoutError])
    {
      v35 = +[EDWebContentParser signpostLog];
      signpostID3 = [(EDWebContentParser *)self signpostID];
      if (signpostID3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v35))
      {
        *v94 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v35, OS_SIGNPOST_INTERVAL_END, signpostID3, "EDWebContentParserLinkParsing", "Parsing remote content links timed out", v94, 2u);
      }

      [v25 cancel];
    }

    if (v21 && [v29 ef_isTimeoutError])
    {
      v37 = +[EDWebContentParser signpostLog];
      signpostID4 = [(EDWebContentParser *)self signpostID];
      if (signpostID4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v37))
      {
        *v94 = 0;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v37, OS_SIGNPOST_INTERVAL_END, signpostID4, "EDWebContentParserDataDetection", "Data detection timed out", v94, 2u);
      }

      v40 = _ef_log_EDWebContentParser(v39);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        *v94 = 138412290;
        v95 = v59;
        _os_log_impl(&dword_1C61EF000, v40, OS_LOG_TYPE_INFO, "Data detection for message %@ timed out", v94, 0xCu);
      }

      [v25 cancel];
    }

    ef_isTimeoutError = [v32 ef_isTimeoutError];
    if (ef_isTimeoutError)
    {
      v42 = _ef_log_EDWebContentParser(ef_isTimeoutError);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        [EDWebContentParser _parseHTMLString:v59 orWithData:v42 characterEncodingName:? withOptions:? messageID:?];
      }

      [v25 cancel];
    }

    _Block_object_dispose(&v76, 8);
    _Block_object_dispose(&v82, 8);

    _Block_object_dispose(&v88, 8);
    _Block_object_dispose(buf, 8);

    os_unfair_lock_unlock(&self->_remoteContentParserLock);
    if (v18)
    {
      v43 = +[EDWebContentParser signpostLog];
      signpostID5 = [(EDWebContentParser *)self signpostID];
      if (signpostID5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v43))
      {
        remoteContentLinks = [(EDWebContentParserResults *)v62 remoteContentLinks];
        v46 = [remoteContentLinks count];
        v47 = [v57 length];
        *buf = 134349312;
        *&buf[4] = v46;
        *&buf[12] = 2050;
        *&buf[14] = v47;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v43, OS_SIGNPOST_INTERVAL_END, signpostID5, "EDWebContentParserLinkParsing", "Parsed NumberOfRemoteLinks=%{public,signpost.telemetry:number1}lu from SizeOfBody=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x16u);
      }
    }

    dCopy = v59;
    if (v21)
    {
      v48 = +[EDWebContentParser signpostLog];
      signpostID6 = [(EDWebContentParser *)self signpostID];
      if (signpostID6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v48))
      {
        dataDetectionResults = [(EDWebContentParserResults *)v62 dataDetectionResults];
        v51 = [dataDetectionResults count];
        v52 = [v57 length];
        *buf = 134349312;
        *&buf[4] = v51;
        *&buf[12] = 2050;
        *&buf[14] = v52;
        _os_signpost_emit_with_name_impl(&dword_1C61EF000, v48, OS_SIGNPOST_INTERVAL_END, signpostID6, "EDWebContentParserDataDetection", "Found NumberOfDataDtectionResults=%{public,signpost.telemetry:number1}lu from SizeOfBody=%{public,signpost.telemetry:number2}lu enableTelemetry=YES ", buf, 0x16u);
      }

      v54 = _ef_log_EDWebContentParser(v53);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        *&buf[4] = v59;
        _os_log_impl(&dword_1C61EF000, v54, OS_LOG_TYPE_INFO, "Data detection for message %@ finished.", buf, 0xCu);
      }

      nameCopy = v58;
      dCopy = v59;
    }

    else
    {
      nameCopy = v58;
    }
  }

  return v62;
}

void __94__EDWebContentParser__parseHTMLString_orWithData_characterEncodingName_withOptions_messageID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v35 = v3;
  if (*(a1 + 72) == 1)
  {
    v4 = [v3 dataDetectionPromise];
    [v4 cancel];

    v5 = [MEMORY[0x1E699B868] promise];
    [v35 setDataDetectionPromise:v5];

    v6 = *(*(a1 + 32) + 24);
    v7 = [v35 dataDetectionPromise];
    [v6 addCancelable:v7];

    v8 = [v35 dataDetectionPromise];
    v9 = [v8 future];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v3 = v35;
  }

  if (*(a1 + 73) == 1)
  {
    v12 = [v3 remoteContentPromise];
    [v12 cancel];

    v13 = [MEMORY[0x1E699B868] promise];
    [v35 setRemoteContentPromise:v13];

    v14 = *(*(a1 + 32) + 24);
    v15 = [v35 remoteContentPromise];
    [v14 addCancelable:v15];

    v16 = [v35 remoteContentPromise];
    v17 = [v16 future];
    v18 = *(*(a1 + 48) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;
  }

  if (*(a1 + 74) == 1)
  {
    v20 = [v35 richLinkPromise];
    [v20 cancel];

    v21 = [MEMORY[0x1E699B868] promise];
    [v35 setRichLinkPromise:v21];

    v22 = *(*(a1 + 32) + 24);
    v23 = [v35 richLinkPromise];
    [v22 addCancelable:v23];

    v24 = [v35 richLinkPromise];
    v25 = [v24 future];
    v26 = *(*(a1 + 56) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  v28 = objc_alloc_init(MEMORY[0x1E696AF20]);
  [v28 setScheme:@"x-apple-mail-parser"];
  v29 = _parseHTMLString_orWithData_characterEncodingName_withOptions_messageID__baseURLCount++;
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v29];
  [v28 setPath:v30];

  v31 = [v28 URL];
  [v35 setBaseURL:v31];

  v32 = [v35 baseURL];
  v33 = *(*(a1 + 64) + 8);
  v34 = *(v33 + 40);
  *(v33 + 40) = v32;
}

void __94__EDWebContentParser__parseHTMLString_orWithData_characterEncodingName_withOptions_messageID___block_invoke_2(void *a1, void *a2)
{
  v7 = a2;
  v3 = a1[5];
  if (a1[4])
  {
    v4 = [v3 webView];
    v5 = [v4 loadHTMLString:a1[4] baseURL:*(*(a1[8] + 8) + 40)];
  }

  else
  {
    v4 = [v3 webView];
    v6 = [v4 loadData:a1[6] MIMEType:@"text/html" characterEncodingName:a1[7] baseURL:*(*(a1[8] + 8) + 40)];
  }
}

- (void)baseURL:(id)l didRequestRemoteContentURLs:(id)ls
{
  lCopy = l;
  lsCopy = ls;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__54;
  v20 = __Block_byref_object_dispose__54;
  v21 = 0;
  state = self->_state;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __58__EDWebContentParser_baseURL_didRequestRemoteContentURLs___block_invoke;
  v13 = &unk_1E8259308;
  v9 = lCopy;
  v14 = v9;
  v15 = &v16;
  [(EFLocked *)state performWhileLocked:&v10];
  [v17[5] finishWithResult:{lsCopy, v10, v11, v12, v13}];

  _Block_object_dispose(&v16, 8);
}

void __58__EDWebContentParser_baseURL_didRequestRemoteContentURLs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v9 = v3;
  v5 = [v3 baseURL];
  LODWORD(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v6 = [v9 remoteContentPromise];
    v7 = *(*(a1 + 40) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }
}

- (void)_addRemoteContentWebViewObserver
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2050000000;
  v3 = get_WKRemoteObjectInterfaceClass_softClass;
  v22 = get_WKRemoteObjectInterfaceClass_softClass;
  if (!get_WKRemoteObjectInterfaceClass_softClass)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __get_WKRemoteObjectInterfaceClass_block_invoke;
    v18[3] = &unk_1E8250000;
    v18[4] = &v19;
    __get_WKRemoteObjectInterfaceClass_block_invoke(v18);
    v3 = v20[3];
  }

  v4 = v3;
  _Block_object_dispose(&v19, 8);
  v5 = [v3 remoteObjectInterfaceWithProtocol:&unk_1F4616F98];
  webContentObserverInterface = self->_webContentObserverInterface;
  self->_webContentObserverInterface = v5;

  v7 = self->_webContentObserverInterface;
  v8 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
  [(_WKRemoteObjectInterface *)v7 setClasses:v8 forSelector:sel_baseURL_didRequestRemoteContentURLs_ argumentIndex:0 ofReply:0];

  v9 = self->_webContentObserverInterface;
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  [(_WKRemoteObjectInterface *)v9 setClasses:v12 forSelector:sel_baseURL_didRequestRemoteContentURLs_ argumentIndex:1 ofReply:0];

  v13 = self->_webContentObserverInterface;
  v14 = MEMORY[0x1E695DFD8];
  v15 = objc_opt_class();
  v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
  [(_WKRemoteObjectInterface *)v13 setClasses:v16 forSelector:sel_receiveDataDetectionResults_ argumentIndex:0 ofReply:0];

  _remoteObjectRegistry = [(WKWebView *)self->_webView _remoteObjectRegistry];
  [_remoteObjectRegistry registerExportedObject:self->_webContentObserver interface:self->_webContentObserverInterface];
}

- (void)_enableDataDetection
{
  if (![(EDWebContentParser *)self isDataDetectionEnabled])
  {

    [(EDWebContentParser *)self setIsDataDetectionEnabled:1];
  }
}

- (void)_disableDataDetection
{
  if ([(EDWebContentParser *)self isDataDetectionEnabled])
  {

    [(EDWebContentParser *)self setIsDataDetectionEnabled:0];
  }
}

- (void)requestDataDetectionResultsWithBaseURL:(id)l
{
  lCopy = l;
  if (self->_webView && [(EDWebContentParser *)self isDataDetectionEnabled])
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x3032000000;
    v23 = __Block_byref_object_copy__54;
    v24 = __Block_byref_object_dispose__54;
    v25 = 0;
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x3032000000;
    v18[3] = __Block_byref_object_copy__54;
    v18[4] = __Block_byref_object_dispose__54;
    v19 = 0;
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__54;
    v16 = __Block_byref_object_dispose__54;
    v17 = 0;
    state = self->_state;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __61__EDWebContentParser_requestDataDetectionResultsWithBaseURL___block_invoke;
    v6[3] = &unk_1E8259330;
    v9 = &v20;
    v10 = v18;
    v7 = lCopy;
    selfCopy = self;
    v11 = &v12;
    [(EFLocked *)state performWhileLocked:v6];
    [v21[5] finishWithResult:v13[5]];

    _Block_object_dispose(&v12, 8);
    _Block_object_dispose(v18, 8);

    _Block_object_dispose(&v20, 8);
  }
}

void __61__EDWebContentParser_requestDataDetectionResultsWithBaseURL___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v15 = v3;
  v5 = [v3 baseURL];
  LODWORD(v4) = [v4 isEqual:v5];

  if (v4)
  {
    v6 = [v15 dataDetectionPromise];
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v9 = [*(*(a1 + 40) + 80) _dataDetectionResults];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [*(a1 + 40) _extractDataDetectorResultsMetadata:*(*(*(a1 + 56) + 8) + 40)];
    v13 = *(*(a1 + 64) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

- (id)_extractDataDetectorResultsMetadata:(id)metadata
{
  v43 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = metadataCopy;
  v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:{16, metadataCopy}];
  if (v5)
  {
    v6 = *v37;
    v35 = *MEMORY[0x1E6999A60];
    v33 = *MEMORY[0x1E69999E0];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v37 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v36 + 1) + 8 * i);
        v9 = -[EDWebContentParser _getDataDetectionCategoryString:](self, "_getDataDetectionCategoryString:", [v8 category]);
        v10 = v9;
        if (v9)
        {
          if ([v9 isEqualToString:@"link"])
          {
            type = [v8 type];
            if ([type isEqualToString:v35])
            {
            }

            else
            {
              type2 = [v8 type];
              v13 = [type2 isEqualToString:v33];

              if ((v13 & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          if ([v10 isEqualToString:@"misc"])
          {
            type3 = [v8 type];

            v10 = type3;
          }

          if ([v10 isEqualToString:@"link"])
          {
            type4 = [v8 type];
            if ([type4 isEqualToString:v35])
            {
            }

            else
            {
              type5 = [v8 type];
              v17 = [type5 isEqualToString:v33];

              if ((v17 & 1) == 0)
              {
                goto LABEL_26;
              }
            }
          }

          if ([v10 isEqualToString:@"misc"])
          {
            type6 = [v8 type];

            v10 = type6;
          }

          v19 = [v4 objectForKeyedSubscript:v10];
          v20 = v19 == 0;

          if (v20)
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v4 setObject:v21 forKeyedSubscript:v10];
          }

          if ([v8 category] != 1 || (objc_msgSend(v8, "url"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v22, "absoluteString"), v23 = objc_claimAutoreleasedReturnValue(), v24 = v23 == 0, v23, v22, v24))
          {
            v25 = [v4 objectForKeyedSubscript:v10];
            value = [v8 value];
            [v25 addObject:value];
          }

          else
          {
            v25 = [v4 objectForKeyedSubscript:v10];
            value = [v8 url];
            absoluteString = [value absoluteString];
            [v25 addObject:absoluteString];
          }
        }

LABEL_26:
      }

      v5 = [obj countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v5);
  }

  v29 = _ef_log_EDWebContentParser(v28);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [MEMORY[0x1E699B858] partiallyRedactedDictionary:v4];
    *buf = 138412290;
    v41 = v30;
    _os_log_impl(&dword_1C61EF000, v29, OS_LOG_TYPE_DEFAULT, "Found data detection results: %@", buf, 0xCu);
  }

  return v4;
}

- (id)_getDataDetectionCategoryString:(int)string
{
  if ((string - 1) > 4)
  {
    return 0;
  }

  else
  {
    return off_1E8259378[string - 1];
  }
}

- (void)_updateContentRuleListsIfNeededForWebViewConfiguration:(id)configuration
{
  v21 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (pthread_main_np() != 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"EDWebContentParser.m" lineNumber:586 description:@"Current thread must be main"];
  }

  os_unfair_lock_lock(&self->_contentRuleListsLock);
  if (self->_contentRuleListsNeedUpdate)
  {
    v6 = [(NSMutableArray *)self->_currentContentRuleLists copy];
    v7 = v6;
    v8 = MEMORY[0x1E695E0F0];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    self->_contentRuleListsNeedUpdate = 0;
    os_unfair_lock_unlock(&self->_contentRuleListsLock);
    userContentController = [configurationCopy userContentController];
    [userContentController removeAllContentRuleLists];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v12)
    {
      v13 = *v17;
      do
      {
        v14 = 0;
        do
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(v11);
          }

          [userContentController addContentRuleList:{*(*(&v16 + 1) + 8 * v14++), v16}];
        }

        while (v12 != v14);
        v12 = [v11 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }

  else
  {
    os_unfair_lock_unlock(&self->_contentRuleListsLock);
  }
}

- (void)contentRuleListManager:(id)manager didAddRuleList:(id)list
{
  listCopy = list;
  os_unfair_lock_lock(&self->_contentRuleListsLock);
  [(NSMutableArray *)self->_currentContentRuleLists addObject:listCopy];

  self->_contentRuleListsNeedUpdate = 1;

  os_unfair_lock_unlock(&self->_contentRuleListsLock);
}

- (void)contentRuleListManager:(id)manager didUpdateContentRuleList:(id)list oldContentRuleList:(id)ruleList
{
  listCopy = list;
  ruleListCopy = ruleList;
  os_unfair_lock_lock(&self->_contentRuleListsLock);
  [(NSMutableArray *)self->_currentContentRuleLists removeObject:ruleListCopy];
  [(NSMutableArray *)self->_currentContentRuleLists addObject:listCopy];
  self->_contentRuleListsNeedUpdate = 1;
  os_unfair_lock_unlock(&self->_contentRuleListsLock);
}

- (void)contentRuleListManager:(id)manager didRemoveRuleList:(id)list
{
  listCopy = list;
  os_unfair_lock_lock(&self->_contentRuleListsLock);
  [(NSMutableArray *)self->_currentContentRuleLists removeObject:listCopy];

  self->_contentRuleListsNeedUpdate = 1;

  os_unfair_lock_unlock(&self->_contentRuleListsLock);
}

- (void)_retrieveRichLinkMetadata:(id)metadata
{
  v37 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = metadataCopy;
  v3 = [obj countByEnumeratingWithState:&v28 objects:v36 count:{16, metadataCopy}];
  if (v3)
  {
    v4 = *v29;
    v5 = @"url";
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v29 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:v5];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 length])
        {
          v9 = [MEMORY[0x1E695DFF8] URLWithString:v8];
          if (v9)
          {
            v10 = [v7 objectForKeyedSubscript:@"title"];
            v11 = _ef_log_EDWebContentParser(v10);
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = v10;
              v13 = v3;
              v14 = v4;
              v15 = v5;
              v24 = v12;
              v16 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:?];
              v17 = MEMORY[0x1E699B858];
              absoluteString = [v9 absoluteString];
              v19 = [v17 partiallyRedactedStringForString:absoluteString];
              *buf = 138412546;
              *&buf[4] = v16;
              *&buf[12] = 2112;
              *&buf[14] = v19;
              _os_log_impl(&dword_1C61EF000, v11, OS_LOG_TYPE_DEFAULT, "Found rich link with title: %@ and url: %@", buf, 0x16u);

              v5 = v15;
              v4 = v14;
              v3 = v13;
              v10 = v24;
            }

            v20 = [[EDRichLinkData alloc] initWithTitle:v10 url:v9];
            [v25 addObject:v20];
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v3);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v33 = __Block_byref_object_copy__54;
  v34 = __Block_byref_object_dispose__54;
  v35 = 0;
  state = self->_state;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __48__EDWebContentParser__retrieveRichLinkMetadata___block_invoke;
  v27[3] = &unk_1E8259358;
  v27[4] = buf;
  [(EFLocked *)state performWhileLocked:v27];
  [*(*&buf[8] + 40) finishWithResult:v25];
  _Block_object_dispose(buf, 8);
}

void __48__EDWebContentParser__retrieveRichLinkMetadata___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 richLinkPromise];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)logWebBundleMessage:(id)message
{
  v7 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = _ef_log_EDWebContentParser(messageCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = messageCopy;
    _os_log_impl(&dword_1C61EF000, v4, OS_LOG_TYPE_DEFAULT, "[WebBundle] %@", &v5, 0xCu);
  }
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  name = [messageCopy name];
  v7 = [name isEqual:@"MetadataMessageHandler"];

  if (v7)
  {
    body = [messageCopy body];
    [(EDWebContentParser *)self _retrieveRichLinkMetadata:body];
  }

  name2 = [messageCopy name];
  v10 = [name2 isEqual:@"LogHandler"];

  if (v10)
  {
    v12 = _ef_log_EDWebContentParser(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      body2 = [messageCopy body];
      v14 = 138412290;
      v15 = body2;
      _os_log_impl(&dword_1C61EF000, v12, OS_LOG_TYPE_DEFAULT, "%@", &v14, 0xCu);
    }
  }
}

void __45__EDWebContentParser__richLinkMetadataScript__block_invoke_cold_1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138543362;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "could not load  FindRichLinkMetadata.js: %{public}@", buf, 0xCu);
}

- (void)_parseHTMLString:(uint64_t)a1 orWithData:(NSObject *)a2 characterEncodingName:withOptions:messageID:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1C61EF000, a2, OS_LOG_TYPE_ERROR, "Extracting rich links for message %@ timed out", &v2, 0xCu);
}

@end