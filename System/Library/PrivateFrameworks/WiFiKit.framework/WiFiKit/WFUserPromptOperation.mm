@interface WFUserPromptOperation
+ (id)sharedMapTable;
- (WFUserPromptOperation)initWithOptions:(id)options timeout:(double)timeout flags:(unint64_t)flags;
- (void)_notification:(__CFUserNotification *)_notification didFinishWithResponse:(unint64_t)response;
- (void)_showPrompt;
- (void)start;
@end

@implementation WFUserPromptOperation

- (WFUserPromptOperation)initWithOptions:(id)options timeout:(double)timeout flags:(unint64_t)flags
{
  optionsCopy = options;
  v13.receiver = self;
  v13.super_class = WFUserPromptOperation;
  v10 = [(WFUserPromptOperation *)&v13 init];
  v11 = v10;
  if (optionsCopy && v10)
  {
    objc_storeStrong(&v10->_options, options);
    v11->_timeout = timeout;
    v11->_flags = flags;
  }

  else
  {

    v11 = 0;
  }

  return v11;
}

- (void)start
{
  v3.receiver = self;
  v3.super_class = WFUserPromptOperation;
  [(WFOperation *)&v3 start];
  [(WFUserPromptOperation *)self performSelectorOnMainThread:sel__showPrompt withObject:0 waitUntilDone:0];
}

- (void)_showPrompt
{
  error = 0;
  v3 = *MEMORY[0x277CBECE8];
  [(WFUserPromptOperation *)self timeout];
  v5 = v4;
  flags = [(WFUserPromptOperation *)self flags];
  options = [(WFUserPromptOperation *)self options];
  v8 = CFUserNotificationCreate(v3, v5, flags, &error, options);

  if (v8 && (RunLoopSource = CFUserNotificationCreateRunLoopSource(v3, v8, _UserNotificationDidFinish, 0)) != 0)
  {
    v10 = RunLoopSource;
    sharedMapTable = [objc_opt_class() sharedMapTable];
    [sharedMapTable setObject:self forKey:v8];

    Main = CFRunLoopGetMain();
    CFRunLoopAddSource(Main, v10, *MEMORY[0x277CBF048]);
    CFRelease(v10);
  }

  else
  {
    [(WFUserPromptOperation *)self _showPrompt];
  }
}

- (void)_notification:(__CFUserNotification *)_notification didFinishWithResponse:(unint64_t)response
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = WFLogForCategory(0);
  v8 = OSLogForWFLogLevel(3uLL);
  v9 = v8;
  if (WFCurrentLogLevel(v8, v10) >= 3 && v7 && os_log_type_enabled(v7, v9))
  {
    v19 = 136315394;
    v20 = "[WFUserPromptOperation _notification:didFinishWithResponse:]";
    v21 = 2048;
    responseCopy = response;
    _os_log_impl(&dword_273ECD000, v7, v9, "%s: response %lu", &v19, 0x16u);
  }

  if (_notification)
  {
    v11 = CFUserNotificationGetResponseDictionary(_notification);
    userResponse = self->_userResponse;
    self->_userResponse = v11;

    if (self->_userResponse)
    {
      v13 = WFLogForCategory(0);
      v14 = OSLogForWFLogLevel(3uLL);
      v15 = v14;
      if (WFCurrentLogLevel(v14, v16) >= 3 && v13 && os_log_type_enabled(v13, v15))
      {
        v17 = self->_userResponse;
        v19 = 136315394;
        v20 = "[WFUserPromptOperation _notification:didFinishWithResponse:]";
        v21 = 2112;
        responseCopy = v17;
        _os_log_impl(&dword_273ECD000, v13, v15, "%s: user response %@", &v19, 0x16u);
      }
    }
  }

  if (response <= 3)
  {
    [(WFUserPromptOperation *)self setResult:qword_273F75D10[response]];
  }

  sharedMapTable = [objc_opt_class() sharedMapTable];
  [sharedMapTable removeObjectForKey:_notification];

  if (_notification)
  {
    CFRelease(_notification);
  }

  [(WFOperation *)self finish];
}

+ (id)sharedMapTable
{
  if (sharedMapTable_onceToken != -1)
  {
    +[WFUserPromptOperation sharedMapTable];
  }

  v3 = sharedMapTable_mapTable;

  return v3;
}

uint64_t __39__WFUserPromptOperation_sharedMapTable__block_invoke()
{
  sharedMapTable_mapTable = [objc_alloc(MEMORY[0x277CCAB00]) initWithKeyOptions:2 valueOptions:0 capacity:0];

  return MEMORY[0x2821F96F8]();
}

@end