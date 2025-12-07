@interface AFClientLite
- (AFClientLite)init;
- (void)_handleCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way commandHandler:(id)handler completion:(id)completion;
- (void)dealloc;
- (void)handleCommand:(id)command afterCurrentRequest:(BOOL)request commandHandler:(id)handler completion:(id)completion;
- (void)handleOneWayCommand:(id)command commandHandler:(id)handler completion:(id)completion;
@end

@implementation AFClientLite

- (void)handleOneWayCommand:(id)command commandHandler:(id)handler completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  handlerCopy = handler;
  completionCopy = completion;
  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v12 = 136315650;
    v13 = "[AFClientLite handleOneWayCommand:commandHandler:completion:]";
    v14 = 2048;
    selfCopy = self;
    v16 = 2112;
    v17 = commandCopy;
    _os_log_debug_impl(&dword_1912FE000, v11, OS_LOG_TYPE_DEBUG, "%s %p %@", &v12, 0x20u);
  }

  [(AFClientLite *)self _handleCommand:commandCopy afterCurrentRequest:1 isOneWay:1 commandHandler:handlerCopy completion:completionCopy];
}

- (void)handleCommand:(id)command afterCurrentRequest:(BOOL)request commandHandler:(id)handler completion:(id)completion
{
  requestCopy = request;
  v22 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  handlerCopy = handler;
  completionCopy = completion;
  v13 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315906;
    v15 = "[AFClientLite handleCommand:afterCurrentRequest:commandHandler:completion:]";
    v16 = 2048;
    selfCopy = self;
    v18 = 2112;
    v19 = commandCopy;
    v20 = 1024;
    v21 = requestCopy;
    _os_log_debug_impl(&dword_1912FE000, v13, OS_LOG_TYPE_DEBUG, "%s %p %@ %d", &v14, 0x26u);
  }

  [(AFClientLite *)self _handleCommand:commandCopy afterCurrentRequest:requestCopy isOneWay:0 commandHandler:handlerCopy completion:completionCopy];
}

- (void)_handleCommand:(id)command afterCurrentRequest:(BOOL)request isOneWay:(BOOL)way commandHandler:(id)handler completion:(id)completion
{
  wayCopy = way;
  requestCopy = request;
  v26 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  handlerCopy = handler;
  completionCopy = completion;
  v15 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    v16 = 136316162;
    v17 = "[AFClientLite _handleCommand:afterCurrentRequest:isOneWay:commandHandler:completion:]";
    v18 = 2048;
    selfCopy = self;
    v20 = 2112;
    v21 = commandCopy;
    v22 = 1024;
    v23 = requestCopy;
    v24 = 1024;
    v25 = wayCopy;
    _os_log_impl(&dword_1912FE000, v15, OS_LOG_TYPE_INFO, "%s %p %@ %d %d", &v16, 0x2Cu);
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v6 = "[AFClientLite dealloc]";
    v7 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1912FE000, v3, OS_LOG_TYPE_INFO, "%s %p", buf, 0x16u);
  }

  v4.receiver = self;
  v4.super_class = AFClientLite;
  [(AFClientLite *)&v4 dealloc];
}

- (AFClientLite)init
{
  v20 = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = AFClientLite;
  v3 = [(AFClientLite *)&v18 init];
  if (v3)
  {
    if (v2 && (memset(&v19, 0, sizeof(v19)), dladdr(v2, &v19)))
    {
      if (v19.dli_fname && *v19.dli_fname)
      {
        v4 = objc_alloc(MEMORY[0x1E696AEC0]);
        v5 = [v4 initWithUTF8String:v19.dli_fname];
      }

      else
      {
        v5 = 0;
      }

      if (v19.dli_sname && *v19.dli_sname)
      {
        v7 = objc_alloc(MEMORY[0x1E696AEC0]);
        v8 = [v7 initWithUTF8String:v19.dli_sname];
      }

      else
      {
        v8 = 0;
      }

      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __20__AFClientLite_init__block_invoke;
      v15[3] = &unk_1E7347250;
      v16 = v5;
      v17 = v8;
      v9 = v8;
      v10 = v5;
      v6 = [AFCallSiteInfo newWithBuilder:v15];
    }

    else
    {
      v6 = 0;
    }

    initiationCallSiteInfo = v3->_initiationCallSiteInfo;
    v3->_initiationCallSiteInfo = v6;

    v12 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_INFO))
    {
      v13 = v3->_initiationCallSiteInfo;
      LODWORD(v19.dli_fname) = 136315650;
      *(&v19.dli_fname + 4) = "[AFClientLite init]";
      WORD2(v19.dli_fbase) = 2048;
      *(&v19.dli_fbase + 6) = v3;
      HIWORD(v19.dli_sname) = 2112;
      v19.dli_saddr = v13;
      _os_log_impl(&dword_1912FE000, v12, OS_LOG_TYPE_INFO, "%s %p (Caller = %@)", &v19, 0x20u);
    }
  }

  return v3;
}

void __20__AFClientLite_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setImagePath:v3];
  [v4 setSymbolName:*(a1 + 40)];
}

@end