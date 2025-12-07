@interface EXSceneSession
@end

@implementation EXSceneSession

void __45___EXSceneSession_shouldAcceptXPCConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = _EXDefaultLog(WeakRetained);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __45___EXSceneSession_shouldAcceptXPCConnection___block_invoke_cold_1();
  }

  v4 = _EXSignpostLog(v3);
  if ([WeakRetained signpost] && os_signpost_enabled(v4))
  {
    v5 = v4;
    v6 = [WeakRetained signpost];
    if ((v6 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v7 = v6;
      if (os_signpost_enabled(v5))
      {
        *v12 = 0;
        _os_signpost_emit_with_name_impl(&dword_1847D1000, v5, OS_SIGNPOST_EVENT, v7, "extensionkit-lifecycle", "XPC connection invalidate", v12, 2u);
      }
    }
  }

  v8 = [WeakRetained sceneConnectionListener];
  [v8 invalidate];

  v9 = [WeakRetained identifier];

  if (v9)
  {
    v10 = +[_EXSceneSessionManager sharedInstance];
    v11 = [WeakRetained identifier];
    [v10 removeSessionForIdentifier:v11];
  }
}

void __56___EXSceneSession_connectSceneSessionWithRequest_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

@end