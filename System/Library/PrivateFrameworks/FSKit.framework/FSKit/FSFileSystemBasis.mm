@interface FSFileSystemBasis
+ (void)wipeResource:(id)resource extension:(id)extension completionHandler:(id)handler;
@end

@implementation FSFileSystemBasis

+ (void)wipeResource:(id)resource extension:(id)extension completionHandler:(id)handler
{
  resourceCopy = resource;
  extensionCopy = extension;
  handlerCopy = handler;
  v10 = fskit_std_log(handlerCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [FSFileSystemBasis wipeResource:v10 extension:? completionHandler:?];
  }

  if (extensionCopy)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__FSFileSystemBasis_wipeResource_extension_completionHandler___block_invoke;
    v16[3] = &unk_278FECE20;
    v17 = handlerCopy;
    [extensionCopy sendWipeResource:resourceCopy replyHandler:v16];
    v12 = v17;
  }

  else
  {
    v13 = fskit_std_log(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [FSFileSystemBasis wipeResource:v13 extension:? completionHandler:?];
    }

    v12 = fs_errorForPOSIXError(45);
    (*(handlerCopy + 2))(handlerCopy, v12);
  }

  v15 = fskit_std_log(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    [FSFileSystemBasis wipeResource:v15 extension:? completionHandler:?];
  }
}

+ (void)wipeResource:(os_log_t)log extension:completionHandler:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[FSFileSystemBasis wipeResource:extension:completionHandler:]";
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "%s:start", &v1, 0xCu);
}

+ (void)wipeResource:(os_log_t)log extension:completionHandler:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[FSFileSystemBasis wipeResource:extension:completionHandler:]";
  _os_log_fault_impl(&dword_24A929000, log, OS_LOG_TYPE_FAULT, "%s: no extension is available", &v1, 0xCu);
}

+ (void)wipeResource:(os_log_t)log extension:completionHandler:.cold.3(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[FSFileSystemBasis wipeResource:extension:completionHandler:]";
  _os_log_debug_impl(&dword_24A929000, log, OS_LOG_TYPE_DEBUG, "%s:end", &v1, 0xCu);
}

@end