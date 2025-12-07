@interface WFAlwaysOnDisplaySettingsClient
+ (BOOL)canRunIntent;
+ (id)alwaysOnPublisher;
+ (id)filteredPublisherForAlwaysOnPublisher:(id)publisher;
+ (id)reversalArbiter;
+ (id)reverseAlwaysOnPublisher;
+ (void)createClientWithCompletionHandler:(id)handler;
+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler;
+ (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler;
+ (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler;
- (void)getStateWithCompletionHandler:(id)handler;
- (void)setState:(BOOL)state completionHandler:(id)handler;
@end

@implementation WFAlwaysOnDisplaySettingsClient

- (void)setState:(BOOL)state completionHandler:(id)handler
{
  stateCopy = state;
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (+[WFAlwaysOnDisplaySettingsClient canRunIntent])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
    [v6 setBool:stateCopy forKey:@"SBEnableAlwaysOn"];
    v7 = getWFBundledIntentsLogObject();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v10 = "[WFAlwaysOnDisplaySettingsClient setState:completionHandler:]";
      v11 = 1024;
      v12 = stateCopy;
      _os_log_impl(&dword_23DE30000, v7, OS_LOG_TYPE_DEFAULT, "%s Shortcuts action set Always On enabled to: %i", buf, 0x12u);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v8 = WFSettingsClientError();
    (handlerCopy[2])(handlerCopy);
  }
}

- (void)getStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[WFAlwaysOnDisplaySettingsClient canRunIntent])
  {
    handlerCopy[2](handlerCopy, [(WFAlwaysOnDisplaySettingsClient *)self alwaysOnDisplayState], 0);
    v4 = handlerCopy;
  }

  else
  {
    v5 = WFSettingsClientError();
    handlerCopy[2](handlerCopy, 0, v5);

    v4 = v5;
  }
}

+ (void)getReversalStateWithBookmark:(id)bookmark completionHandler:(id)handler
{
  handlerCopy = handler;
  bookmarkCopy = bookmark;
  reversalArbiter = [self reversalArbiter];
  biomeBookmark = [bookmarkCopy biomeBookmark];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __82__WFAlwaysOnDisplaySettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke;
  v11[3] = &unk_278C19310;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [reversalArbiter getReversalStateWithBookmark:biomeBookmark completionHandler:v11];
}

void __82__WFAlwaysOnDisplaySettingsClient_getReversalStateWithBookmark_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 userSetState] == 1;
    v4 = *(a1 + 32);
    v6 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    (*(v4 + 16))(v4, v6, 0);
  }

  else
  {
    v5 = *(*(a1 + 32) + 16);

    v5();
  }
}

+ (void)getBookmarkForCurrentStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  reversalArbiter = [self reversalArbiter];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__WFAlwaysOnDisplaySettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke;
  v7[3] = &unk_278C1D920;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [reversalArbiter getBookmarkForCurrentStateWithCompletionHandler:v7];
}

void __83__WFAlwaysOnDisplaySettingsClient_getBookmarkForCurrentStateWithCompletionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D7C858]) initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (void)getBookmarkForFirstEventAfterBookmark:(id)bookmark completionHandler:(id)handler
{
  handlerCopy = handler;
  bookmarkCopy = bookmark;
  reversalArbiter = [self reversalArbiter];
  biomeBookmark = [bookmarkCopy biomeBookmark];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__WFAlwaysOnDisplaySettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke;
  v11[3] = &unk_278C1D920;
  v12 = handlerCopy;
  v10 = handlerCopy;
  [reversalArbiter getBookmarkForFirstEventAfterBookmark:biomeBookmark completionHandler:v11];
}

void __91__WFAlwaysOnDisplaySettingsClient_getBookmarkForFirstEventAfterBookmark_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = [objc_alloc(MEMORY[0x277D7C858]) initWithBiomeBookmark:v5];
    (*(v6 + 16))(v6, v7, 0);
  }

  else
  {
    (*(v6 + 16))(v6, 0, a3);
  }
}

+ (id)reversalArbiter
{
  v3 = objc_alloc(MEMORY[0x277D7C850]);
  alwaysOnPublisher = [self alwaysOnPublisher];
  reverseAlwaysOnPublisher = [self reverseAlwaysOnPublisher];
  v6 = [v3 initWithPublisher:alwaysOnPublisher reversePublisher:reverseAlwaysOnPublisher];

  return v6;
}

+ (id)reverseAlwaysOnPublisher
{
  v3 = BiomeLibrary();
  device = [v3 Device];
  display = [device Display];
  alwaysOn = [display AlwaysOn];
  reversePublisherOptions = [MEMORY[0x277D7C850] reversePublisherOptions];
  v8 = [alwaysOn publisherWithOptions:reversePublisherOptions];
  v9 = [self filteredPublisherForAlwaysOnPublisher:v8];

  return v9;
}

+ (id)alwaysOnPublisher
{
  v3 = BiomeLibrary();
  device = [v3 Device];
  display = [device Display];
  alwaysOn = [display AlwaysOn];
  publisher = [alwaysOn publisher];
  v8 = [self filteredPublisherForAlwaysOnPublisher:publisher];

  return v8;
}

+ (id)filteredPublisherForAlwaysOnPublisher:(id)publisher
{
  v9 = *MEMORY[0x277D85DE8];
  publisherCopy = publisher;
  v4 = getWFAlwaysOnSettingsClientLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = 136315138;
    v8 = "+[WFAlwaysOnDisplaySettingsClient filteredPublisherForAlwaysOnPublisher:]";
    _os_log_impl(&dword_23DE30000, v4, OS_LOG_TYPE_DEBUG, "%s Filtering publisher", &v7, 0xCu);
  }

  v5 = [publisherCopy filterWithIsIncluded:&__block_literal_global_181];

  return v5;
}

BOOL __73__WFAlwaysOnDisplaySettingsClient_filteredPublisherForAlwaysOnPublisher___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = getWFAlwaysOnSettingsClientLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [v2 timestamp];
    v14 = 136315394;
    v15 = "+[WFAlwaysOnDisplaySettingsClient filteredPublisherForAlwaysOnPublisher:]_block_invoke";
    v16 = 2048;
    v17 = v4;
    _os_log_impl(&dword_23DE30000, v3, OS_LOG_TYPE_DEBUG, "%s Iterating over %f", &v14, 0x16u);
  }

  v5 = [v2 eventBody];
  v6 = [v5 userSetState];
  v7 = [v5 resolvedState];
  v8 = getWFAlwaysOnSettingsClientLogObject();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v6 == v7)
  {
    if (v9)
    {
      [v2 timestamp];
      v14 = 136315394;
      v15 = "+[WFAlwaysOnDisplaySettingsClient filteredPublisherForAlwaysOnPublisher:]_block_invoke";
      v16 = 2048;
      v17 = v10;
      v11 = "%s Accepting %f";
LABEL_8:
      _os_log_impl(&dword_23DE30000, v8, OS_LOG_TYPE_DEBUG, v11, &v14, 0x16u);
    }
  }

  else if (v9)
  {
    [v2 timestamp];
    v14 = 136315394;
    v15 = "+[WFAlwaysOnDisplaySettingsClient filteredPublisherForAlwaysOnPublisher:]_block_invoke";
    v16 = 2048;
    v17 = v12;
    v11 = "%s Filtering %f out because user set state != resolved state";
    goto LABEL_8;
  }

  return v6 == v7;
}

+ (BOOL)canRunIntent
{
  currentDevice = [MEMORY[0x277D79F18] currentDevice];
  v3 = ![currentDevice idiom] && (objc_msgSend(currentDevice, "hasCapability:", *MEMORY[0x277D7A3C0]) & 1) != 0;

  return v3;
}

+ (void)createClientWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (+[WFAlwaysOnDisplaySettingsClient canRunIntent])
  {
    v4 = objc_alloc_init(WFAlwaysOnDisplaySettingsClient);
    handlerCopy[2](handlerCopy, v4, 0);
  }

  else
  {
    v4 = WFSettingsClientError();
    (handlerCopy)[2](handlerCopy, 0, v4);
  }
}

@end