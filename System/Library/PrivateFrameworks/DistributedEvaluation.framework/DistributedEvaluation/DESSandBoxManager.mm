@interface DESSandBoxManager
+ (id)sandboxExtensionsToXPCConnection:(id)connection fileURLs:(id)ls requireWrite:(BOOL)write outError:(id *)error;
- (BOOL)consumeExtensionsWithError:(id *)error;
- (DESSandBoxManager)initWithExtensions:(id)extensions;
- (void)dealloc;
- (void)releaseExtensions;
@end

@implementation DESSandBoxManager

+ (id)sandboxExtensionsToXPCConnection:(id)connection fileURLs:(id)ls requireWrite:(BOOL)write outError:(id *)error
{
  v47 = *MEMORY[0x277D85DE8];
  lsCopy = ls;
  v9 = lsCopy;
  v10 = 0;
  if (connection && lsCopy)
  {
    errorCopy = error;
    v42 = 0u;
    v43 = 0u;
    objc_msgSend_auditToken(connection);
    v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v12 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      [(DESSandBoxManager *)v9 sandboxExtensionsToXPCConnection:v12 fileURLs:v13 requireWrite:v14 outError:v15, v16, v17, v18];
    }

    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = v9;
    v19 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v39;
      while (2)
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v39 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v38 + 1) + 8 * i);
          [v23 fileSystemRepresentation];
          v24 = sandbox_extension_issue_file_to_process();
          v25 = MEMORY[0x277CCACA8];
          if (!v24)
          {
            v27 = __error();
            v28 = [v25 stringWithFormat:@"fileURL=%@: error=%s\n", v23, strerror(*v27)];
            v29 = +[DESLogging coreChannel];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              [DESSandBoxManager sandboxExtensionsToXPCConnection:v28 fileURLs:v29 requireWrite:? outError:?];
            }

            if (errorCopy)
            {
              v30 = MEMORY[0x277CCA9B8];
              v31 = *MEMORY[0x277CCA450];
              v45[0] = v28;
              v32 = *MEMORY[0x277CCA7E8];
              v44[0] = v31;
              v44[1] = v32;
              v33 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
              v45[1] = v33;
              v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
              *errorCopy = [v30 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:7001 userInfo:v34];
            }

            v10 = 0;
            goto LABEL_19;
          }

          v26 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytesNoCopy:v24 length:strlen(v24) encoding:4 freeWhenDone:1];
          [v11 addObject:v26];
        }

        v20 = [obj countByEnumeratingWithState:&v38 objects:v46 count:16];
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v10 = v11;
LABEL_19:
  }

  return v10;
}

- (DESSandBoxManager)initWithExtensions:(id)extensions
{
  extensionsCopy = extensions;
  v11.receiver = self;
  v11.super_class = DESSandBoxManager;
  v5 = [(DESSandBoxManager *)&v11 init];
  if (v5)
  {
    v6 = [extensionsCopy copy];
    extensions = v5->_extensions;
    v5->_extensions = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    consumedSandboxExtensions = v5->_consumedSandboxExtensions;
    v5->_consumedSandboxExtensions = v8;
  }

  return v5;
}

- (void)dealloc
{
  [(DESSandBoxManager *)self releaseExtensions];
  v3.receiver = self;
  v3.super_class = DESSandBoxManager;
  [(DESSandBoxManager *)&v3 dealloc];
}

- (BOOL)consumeExtensionsWithError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  p_extensions = &self->_extensions;
  if ([(NSArray *)self->_extensions count])
  {
    v6 = +[DESLogging coreChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [(DESSandBoxManager *)p_extensions consumeExtensionsWithError:v6, v7, v8, v9, v10, v11, v12];
    }
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v13 = *p_extensions;
  v14 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [*(*(&v29 + 1) + 8 * i) UTF8String];
        v18 = sandbox_extension_consume();
        if (v18 == -1)
        {
          v21 = +[DESLogging coreChannel];
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            [DESSandBoxManager consumeExtensionsWithError:v21];
          }

          if (error)
          {
            v22 = MEMORY[0x277CCA9B8];
            v33[0] = *MEMORY[0x277CCA450];
            v23 = MEMORY[0x277CCACA8];
            v24 = __error();
            v25 = [v23 stringWithFormat:@"Error consuming sandbox extension: %s", strerror(*v24)];
            v34[0] = v25;
            v33[1] = *MEMORY[0x277CCA7E8];
            v26 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:*__error() userInfo:0];
            v34[1] = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
            *error = [v22 errorWithDomain:@"kDESDistributedEvaluationErrorDomain" code:7000 userInfo:v27];

            LOBYTE(error) = 0;
          }

          goto LABEL_18;
        }

        consumedSandboxExtensions = self->_consumedSandboxExtensions;
        v20 = [MEMORY[0x277CCABB0] numberWithLongLong:v18];
        [(NSMutableArray *)consumedSandboxExtensions addObject:v20];
      }

      v15 = [(NSArray *)v13 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(error) = 1;
LABEL_18:

  return error;
}

- (void)releaseExtensions
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *self;
  OUTLINED_FUNCTION_0_5(&dword_248FF7000, a2, a3, "Releasing consumed sandbox extensions: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)sandboxExtensionsToXPCConnection:(uint64_t)a3 fileURLs:(uint64_t)a4 requireWrite:(uint64_t)a5 outError:(uint64_t)a6 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_5(&dword_248FF7000, a2, a3, "Issuing sandbox extension for %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)sandboxExtensionsToXPCConnection:(uint64_t)a1 fileURLs:(NSObject *)a2 requireWrite:outError:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_248FF7000, a2, OS_LOG_TYPE_ERROR, "Failed to issue sandbox extension: %@", &v2, 0xCu);
}

- (void)consumeExtensionsWithError:(uint64_t)a3 .cold.1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *a1;
  OUTLINED_FUNCTION_0_5(&dword_248FF7000, a2, a3, "Consuming sandbox extensions: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)consumeExtensionsWithError:(NSObject *)a1 .cold.2(NSObject *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = __error();
  v3 = strerror(*v2);
  v4 = 136315138;
  v5 = v3;
  _os_log_error_impl(&dword_248FF7000, a1, OS_LOG_TYPE_ERROR, "Error consuming sandbox extension: %s", &v4, 0xCu);
}

@end