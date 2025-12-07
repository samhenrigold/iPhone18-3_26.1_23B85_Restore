@interface GKSLinkingSingleton
+ (id)defaultGKSLinkingSingleton;
- (void)handleForBinaryPath:(id)path;
@end

@implementation GKSLinkingSingleton

+ (id)defaultGKSLinkingSingleton
{
  result = defaultGKSLinkingSingleton__GKSLinkingSingleton;
  if (!defaultGKSLinkingSingleton__GKSLinkingSingleton)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!defaultGKSLinkingSingleton__GKSLinkingSingleton)
    {
      defaultGKSLinkingSingleton__GKSLinkingSingleton = objc_alloc_init(GKSLinkingSingleton);
    }

    objc_sync_exit(v3);
    return defaultGKSLinkingSingleton__GKSLinkingSingleton;
  }

  return result;
}

- (void)handleForBinaryPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCA8A8]);
  objc_sync_enter(self);
  v6 = [(NSMutableDictionary *)self->handleSoFar objectForKeyedSubscript:path];
  if (v6)
  {
    dlHandle = [v6 dlHandle];
    goto LABEL_3;
  }

  dlHandle = dlopen([path UTF8String], 1);
  if (VRTraceGetErrorLogLevelForModule("") >= 3 && (v9 = VRTraceErrorLogLevelToCSTR(3u), v10 = gVRTraceOSLog, os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR)))
  {
    v16 = 136316162;
    v17 = v9;
    v18 = 2080;
    v19 = "[GKSLinkingSingleton handleForBinaryPath:]";
    v20 = 1024;
    v21 = 47;
    v22 = 2080;
    uTF8String = [path UTF8String];
    v24 = 2048;
    v25 = dlHandle;
    _os_log_error_impl(&dword_23D4DF000, v10, OS_LOG_TYPE_ERROR, " [%s] %s:%d ViceroyTrace: Attempting to get symbols out of path %s, handle = %p", &v16, 0x30u);
    if (dlHandle)
    {
LABEL_7:
      if (!self->handleSoFar)
      {
        v11 = objc_alloc_init(GKSDLHandleWrapper);
        [(GKSDLHandleWrapper *)v11 setDlHandle:dlHandle];
        v12 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
        self->handleSoFar = v12;
        [(NSMutableDictionary *)v12 setObject:v11 forKeyedSubscript:path];
      }

      goto LABEL_3;
    }
  }

  else if (dlHandle)
  {
    goto LABEL_7;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    v13 = VRTraceErrorLogLevelToCSTR(3u);
    v14 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      v15 = dlerror();
      [(GKSLinkingSingleton *)v13 handleForBinaryPath:v15, &v16, v14];
    }
  }

  dlHandle = 0;
LABEL_3:
  objc_sync_exit(self);

  return dlHandle;
}

- (void)handleForBinaryPath:(uint8_t *)buf .cold.1(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = a1;
  *(buf + 6) = 2080;
  *(buf + 14) = "[GKSLinkingSingleton handleForBinaryPath:]";
  *(buf + 11) = 1024;
  *(buf + 6) = 50;
  *(buf + 14) = 2080;
  *(buf + 30) = a2;
  _os_log_error_impl(&dword_23D4DF000, log, OS_LOG_TYPE_ERROR, " [%s] %s:%d Failed to get handle for GKSPerformance framework %s", buf, 0x26u);
}

@end