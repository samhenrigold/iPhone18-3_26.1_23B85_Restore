@interface AFApplicationGroupContainer
+ (id)sharedInstance;
- (void)sharedApplicationGroupURL:(id)l;
- (void)sharedApplicationGroupURLOnQueue:(id)queue WithCompletion:(id)completion;
@end

@implementation AFApplicationGroupContainer

- (void)sharedApplicationGroupURLOnQueue:(id)queue WithCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __79__AFApplicationGroupContainer_sharedApplicationGroupURLOnQueue_WithCompletion___block_invoke;
  v8[3] = &unk_1E7349838;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(queue, v8);
}

- (void)sharedApplicationGroupURL:(id)l
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AC08];
  lCopy = l;
  defaultManager = [v3 defaultManager];
  v6 = [defaultManager containerURLForSecurityApplicationGroupIdentifier:@"group.com.apple.assistant.shared"];

  v7 = AFSiriLogContextFilesystem;
  if (v6)
  {
    if (os_log_type_enabled(AFSiriLogContextFilesystem, OS_LOG_TYPE_DEBUG))
    {
      v9 = 136315394;
      v10 = "[AFApplicationGroupContainer sharedApplicationGroupURL:]";
      v11 = 2112;
      v12 = v6;
      _os_log_debug_impl(&dword_1912FE000, v7, OS_LOG_TYPE_DEBUG, "%s Got container URL: %@", &v9, 0x16u);
    }

    lCopy[2](lCopy, v6, 0);
  }

  else
  {
    if (os_log_type_enabled(AFSiriLogContextFilesystem, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[AFApplicationGroupContainer sharedApplicationGroupURL:]";
      _os_log_error_impl(&dword_1912FE000, v7, OS_LOG_TYPE_ERROR, "%s Application group container path not found", &v9, 0xCu);
    }

    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:@"kAFAssistantFilesystemDomain" code:1 userInfo:0];
    lCopy[2](lCopy, 0, v8);

    lCopy = v8;
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_28575 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_28575, &__block_literal_global_28576);
  }

  v3 = sharedInstance_instance;

  return v3;
}

void __45__AFApplicationGroupContainer_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(AFApplicationGroupContainer);
  v1 = sharedInstance_instance;
  sharedInstance_instance = v0;
}

@end