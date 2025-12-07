@interface PREResponsesClient
+ (id)sharedInstance;
- (PREResponsesClient)init;
- (void)preResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses conversationTurns:(id)turns context:(id)context time:(id)time language:(id)language recipientHandles:(id)handles modelFilePath:(id)self0 modelConfigPath:(id)self1 espressoBinFilePath:(id)self2 vocabFilePath:(id)self3 registerDisplayed:(BOOL)self4 includeCustomResponses:(BOOL)self5 includeResponsesToRobots:(BOOL)self6 completion:(id)self7;
- (void)predictForMessage:(id)message conversationTurns:(id)turns language:(id)language plistPath:(id)path espressoBinPath:(id)binPath vocabPath:(id)vocabPath heads:(id)heads completion:(id)self0;
- (void)registerResponse:(id)response position:(id)position isCanned:(BOOL)canned isUsingQuickResponses:(BOOL)responses locale:(id)locale modelConfigPath:(id)path vocabPath:(id)vocabPath;
@end

@implementation PREResponsesClient

- (void)registerResponse:(id)response position:(id)position isCanned:(BOOL)canned isUsingQuickResponses:(BOOL)responses locale:(id)locale modelConfigPath:(id)path vocabPath:(id)vocabPath
{
  responsesCopy = responses;
  cannedCopy = canned;
  vocabPathCopy = vocabPath;
  pathCopy = path;
  localeCopy = locale;
  positionCopy = position;
  responseCopy = response;
  v21 = pre_responses_handle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260CE3000, v21, OS_LOG_TYPE_DEFAULT, "PREResponsesClient initiating call to suggestd - registerResponse", buf, 2u);
  }

  _remoteObjectProxy = [(PREResponsesClient *)self _remoteObjectProxy];
  [_remoteObjectProxy registerResponse:responseCopy position:positionCopy isCanned:cannedCopy isUsingQuickResponses:responsesCopy locale:localeCopy modelConfigPath:pathCopy vocabPath:vocabPathCopy];
}

- (void)predictForMessage:(id)message conversationTurns:(id)turns language:(id)language plistPath:(id)path espressoBinPath:(id)binPath vocabPath:(id)vocabPath heads:(id)heads completion:(id)self0
{
  completionCopy = completion;
  headsCopy = heads;
  vocabPathCopy = vocabPath;
  binPathCopy = binPath;
  pathCopy = path;
  languageCopy = language;
  turnsCopy = turns;
  messageCopy = message;
  v25 = pre_responses_handle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260CE3000, v25, OS_LOG_TYPE_DEFAULT, "PREResponsesClient initiating call to suggestd - predictForMessage", buf, 2u);
  }

  _remoteObjectProxy = [(PREResponsesClient *)self _remoteObjectProxy];
  [_remoteObjectProxy predictForMessage:messageCopy conversationTurns:turnsCopy language:languageCopy plistPath:pathCopy espressoBinPath:binPathCopy vocabPath:vocabPathCopy heads:headsCopy completion:completionCopy];
}

- (void)preResponseItemsForMessage:(id)message maximumResponses:(unint64_t)responses conversationTurns:(id)turns context:(id)context time:(id)time language:(id)language recipientHandles:(id)handles modelFilePath:(id)self0 modelConfigPath:(id)self1 espressoBinFilePath:(id)self2 vocabFilePath:(id)self3 registerDisplayed:(BOOL)self4 includeCustomResponses:(BOOL)self5 includeResponsesToRobots:(BOOL)self6 completion:(id)self7
{
  completionCopy = completion;
  vocabFilePathCopy = vocabFilePath;
  filePathCopy = filePath;
  configPathCopy = configPath;
  pathCopy = path;
  handlesCopy = handles;
  languageCopy = language;
  timeCopy = time;
  contextCopy = context;
  turnsCopy = turns;
  messageCopy = message;
  v25 = pre_responses_handle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_260CE3000, v25, OS_LOG_TYPE_DEFAULT, "PREResponsesClient initiating call to suggestd - preResponseItemsForMessage", buf, 2u);
  }

  _remoteObjectProxy = [(PREResponsesClient *)self _remoteObjectProxy];
  BYTE2(v27) = robots;
  LOWORD(v27) = __PAIR16__(customResponses, displayed);
  [_remoteObjectProxy preResponseItemsForMessage:messageCopy maximumResponses:responses conversationTurns:turnsCopy context:contextCopy time:timeCopy language:languageCopy recipientHandles:handlesCopy modelFilePath:pathCopy modelConfigPath:configPathCopy espressoBinFilePath:filePathCopy vocabFilePath:vocabFilePathCopy registerDisplayed:v27 includeCustomResponses:completionCopy includeResponsesToRobots:? completion:?];
}

- (PREResponsesClient)init
{
  v17.receiver = self;
  v17.super_class = PREResponsesClient;
  v2 = [(PREResponsesClient *)&v17 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873459F0];
    v4 = objc_autoreleasePoolPush();
    v5 = objc_alloc(MEMORY[0x277CBEB98]);
    v6 = objc_opt_class();
    v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v4);
    [v3 setClasses:v7 forSelector:sel_preResponseItemsForMessage_maximumResponses_conversationTurns_context_time_language_recipientHandles_modelFilePath_modelConfigPath_espressoBinFilePath_vocabFilePath_registerDisplayed_includeCustomResponses_includeResponsesToRobots_completion_ argumentIndex:0 ofReply:1];

    v8 = objc_autoreleasePoolPush();
    v9 = objc_alloc(MEMORY[0x277CBEB98]);
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v9 initWithObjects:{v10, v11, v12, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v8);
    [v3 setClasses:v13 forSelector:sel_predictForMessage_conversationTurns_language_plistPath_espressoBinPath_vocabPath_heads_completion_ argumentIndex:0 ofReply:1];

    v14 = [[PREXPCClientHelpers alloc] initWithServiceName:@"com.apple.proactive.experiments.responses" whitelistedServerInterface:v3 clientExportedObject:v2 interruptionHandler:&__block_literal_global_1923 invalidationHandler:&__block_literal_global_41];
    clientHelpers = v2->_clientHelpers;
    v2->_clientHelpers = v14;
  }

  return v2;
}

void __26__PREResponsesClient_init__block_invoke_39()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = pre_xpc_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 138412290;
    v2 = @"com.apple.proactive.experiments.responses";
    _os_log_impl(&dword_260CE3000, v0, OS_LOG_TYPE_DEFAULT, "Connection to %@ invalidated.", &v1, 0xCu);
  }
}

void __26__PREResponsesClient_init__block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = pre_xpc_handle();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    v1 = 138412290;
    v2 = @"com.apple.proactive.experiments.responses";
    _os_log_error_impl(&dword_260CE3000, v0, OS_LOG_TYPE_ERROR, "Connection to %@ interrupted.", &v1, 0xCu);
  }
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PREResponsesClient_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken8 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken8, block);
  }

  v2 = sharedInstance__pasExprOnceResult_1932;

  return v2;
}

void __36__PREResponsesClient_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = sharedInstance__pasExprOnceResult_1932;
  sharedInstance__pasExprOnceResult_1932 = v2;

  objc_autoreleasePoolPop(v1);
}

@end