@interface VRTraceReset
@end

@implementation VRTraceReset

void __VRTraceReset__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("ViceroyTrace") >= 8)
  {
    v5 = VRTraceErrorLogLevelToCSTR(8u);
    v6 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 136316162;
        v8 = v5;
        v9 = 2080;
        v10 = "VRTraceReset__block_invoke";
        v11 = 1024;
        v12 = 233;
        v13 = 2080;
        v14 = a2;
        v15 = 2080;
        v16 = a3;
        _os_log_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEFAULT, "ViceroyTrace [%s] %s:%d ENV: %s=%s", &v7, 0x30u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      v7 = 136316162;
      v8 = v5;
      v9 = 2080;
      v10 = "VRTraceReset__block_invoke";
      v11 = 1024;
      v12 = 233;
      v13 = 2080;
      v14 = a2;
      v15 = 2080;
      v16 = a3;
      _os_log_debug_impl(&dword_23D4DF000, v6, OS_LOG_TYPE_DEBUG, "ViceroyTrace [%s] %s:%d ENV: %s=%s", &v7, 0x30u);
    }
  }
}

void __VRTraceReset__block_invoke_31(uint64_t a1, uint64_t a2, char *a3)
{
  if (a3)
  {
    v4 = strdup((a2 + 21));
    for (i = v4; ; ++i)
    {
      if (*i == 95)
      {
        *i = 46;
      }

      else if (!*i)
      {
        v6 = VRTraceErrorLogLevelFromCSTR(a3);
        VRTraceSetErrorLogLevelForModule(v4, v6);

        free(v4);
        return;
      }
    }
  }
}

@end