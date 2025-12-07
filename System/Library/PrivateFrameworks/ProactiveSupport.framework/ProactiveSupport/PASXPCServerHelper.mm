@interface PASXPCServerHelper
@end

@implementation PASXPCServerHelper

uint64_t __213___PASXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_whitelistedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler_logHandle___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1A7F47000, v2, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was interrupted.", &v7, 0x20u);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __213___PASXPCServerHelper_shouldAcceptConnection_serviceName_whitelistedServerInterface_whitelistedClientInterface_requestHandler_validateConnection_setupClientProxy_interruptionHandler_invalidationHandler_logHandle___block_invoke_11(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2 && os_log_type_enabled(*(a1 + 32), OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 64);
    v7 = 138412802;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&dword_1A7F47000, v2, OS_LOG_TYPE_DEFAULT, "Connection to %@ from %@ (%lu) was invalidated.", &v7, 0x20u);
  }

  result = *(a1 + 56);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end