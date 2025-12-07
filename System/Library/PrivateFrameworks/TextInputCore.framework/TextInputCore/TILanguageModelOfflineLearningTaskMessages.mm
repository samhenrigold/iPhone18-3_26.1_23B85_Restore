@interface TILanguageModelOfflineLearningTaskMessages
+ (id)dataSourceForTask;
- (TILanguageModelOfflineLearningTaskMessages)initWithClientIdentifier:(id)identifier oneTimeTask:(BOOL)task;
@end

@implementation TILanguageModelOfflineLearningTaskMessages

- (TILanguageModelOfflineLearningTaskMessages)initWithClientIdentifier:(id)identifier oneTimeTask:(BOOL)task
{
  v8.receiver = self;
  v8.super_class = TILanguageModelOfflineLearningTaskMessages;
  v4 = [(TILanguageModelOfflineLearningTask *)&v8 initWithClientIdentifier:identifier oneTimeTask:task];
  if (v4)
  {
    v5 = +[TILanguageModelOfflineLearningTaskMessages dataSourceForTask];
    dataSource = v4->_dataSource;
    v4->_dataSource = v5;
  }

  return v4;
}

+ (id)dataSourceForTask
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/TextInput/Plugins/MessagesDataKeyboardPlugin.bundle"];
  v3 = objc_alloc_init([v2 classNamed:@"MessagesTextInputModelDataSource"]);
  if (!v3)
  {
    if (TICanLogMessageAtLevel_onceToken != -1)
    {
      dispatch_once(&TICanLogMessageAtLevel_onceToken, &__block_literal_global_24093);
    }

    v4 = TIOSLogFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s Failed to load Messages plugin from %@", "+[TILanguageModelOfflineLearningTaskMessages dataSourceForTask]", @"/System/Library/TextInput/Plugins/MessagesDataKeyboardPlugin.bundle"];
      *buf = 138412290;
      v8 = v6;
      _os_log_debug_impl(&dword_22CA55000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }
  }

  return v3;
}

@end