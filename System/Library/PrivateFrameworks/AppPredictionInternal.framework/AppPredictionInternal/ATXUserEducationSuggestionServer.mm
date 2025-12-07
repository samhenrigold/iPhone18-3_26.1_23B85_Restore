@interface ATXUserEducationSuggestionServer
+ (id)sharedInstance;
- (ATXUserEducationSuggestionServer)init;
@end

@implementation ATXUserEducationSuggestionServer

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ATXUserEducationSuggestionServer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__pasOnceToken7_1 != -1)
  {
    dispatch_once(&sharedInstance__pasOnceToken7_1, block);
  }

  v2 = sharedInstance__pasExprOnceResult_1;

  return v2;
}

void __50__ATXUserEducationSuggestionServer_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = sharedInstance__pasExprOnceResult_1;
  sharedInstance__pasExprOnceResult_1 = v2;

  objc_autoreleasePoolPop(v1);
}

- (ATXUserEducationSuggestionServer)init
{
  v21 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = ATXUserEducationSuggestionServer;
  v2 = [(ATXUserEducationSuggestionServer *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v4 = __atxlog_handle_context_user_education_suggestions(v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v20 = "[ATXUserEducationSuggestionServer init]";
      _os_log_impl(&dword_2263AA000, v4, OS_LOG_TYPE_DEFAULT, "%s: starting server", buf, 0xCu);
    }

    v5 = objc_alloc(MEMORY[0x277CEB928]);
    v6 = *MEMORY[0x277CEBB28];
    v7 = *MEMORY[0x277CEBB20];
    v8 = objc_opt_new();
    v9 = [v5 initWithOurInterfaceFactory:MEMORY[0x277CEB2B0] theirInterfaceFactory:MEMORY[0x277CEB2A8] ourServiceName:v6 theirServiceName:v7 requestHandler:v8];
    connector = v3->_connector;
    v3->_connector = v9;

    v11 = [[ATXUserEducationSuggestionCustomizeFocusServer alloc] initWithConnector:v3->_connector];
    customizeFocusServer = v3->_customizeFocusServer;
    v3->_customizeFocusServer = v11;

    v13 = [[ATXUserEducationSuggestionSleepMigrationServer alloc] initWithConnector:v3->_connector];
    sleepMigrationServer = v3->_sleepMigrationServer;
    v3->_sleepMigrationServer = v13;

    if (([MEMORY[0x277D42590] isiPad] & 1) == 0)
    {
      v15 = [[ATXUserEducationSuggestionExploreFacesServer alloc] initWithConnector:v3->_connector];
      exploreFacesServer = v3->_exploreFacesServer;
      v3->_exploreFacesServer = v15;
    }
  }

  return v3;
}

@end