@interface OSADeviceRecoveryEnvHelper
+ (id)sharedInstance;
- (BOOL)overrideMountPath:(id)path;
- (void)releaseSandboxExtensions;
@end

@implementation OSADeviceRecoveryEnvHelper

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[OSADeviceRecoveryEnvHelper sharedInstance];
  }

  v3 = sharedInstance__sharedInstance;

  return v3;
}

uint64_t __44__OSADeviceRecoveryEnvHelper_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(OSADeviceRecoveryEnvHelper);
  v1 = sharedInstance__sharedInstance;
  sharedInstance__sharedInstance = v0;

  *(sharedInstance__sharedInstance + 8) = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

- (BOOL)overrideMountPath:(id)path
{
  v21 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  [(OSADeviceRecoveryEnvHelper *)self releaseSandboxExtensions];
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sandboxExtensions = [pathCopy sandboxExtensions];
  v6 = [sandboxExtensions countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(sandboxExtensions);
        }

        v10 = OSASandboxConsumeExtensionNoRelease();
        if (v10 < 0)
        {

          [(OSADeviceRecoveryEnvHelper *)self releaseSandboxExtensions];
          overrideMountPath = 0;
          goto LABEL_11;
        }

        sandboxExtensions = self->_sandboxExtensions;
        v12 = [MEMORY[0x277CCABB0] numberWithLongLong:v10];
        [(NSMutableArray *)sandboxExtensions addObject:v12];
      }

      v7 = [sandboxExtensions countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  mEMORY[0x277D36B80] = [MEMORY[0x277D36B80] sharedInstance];
  overrideMountPath = [mEMORY[0x277D36B80] overrideMountPath];

LABEL_11:
  return overrideMountPath;
}

- (void)releaseSandboxExtensions
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = self->_sandboxExtensions;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v15;
    v8 = MEMORY[0x277D86220];
    *&v5 = 136315394;
    v13 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v14 + 1) + 8 * v9) longLongValue];
        if ((sandbox_extension_release() & 0x80000000) != 0 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = __error();
          v11 = strerror(*v10);
          v12 = *__error();
          *buf = v13;
          v19 = v11;
          v20 = 1024;
          v21 = v12;
          _os_log_error_impl(&dword_25D12D000, v8, OS_LOG_TYPE_ERROR, "Failed to release sandbox extension: %s (%i)", buf, 0x12u);
        }

        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v6);
  }

  [(NSMutableArray *)self->_sandboxExtensions removeAllObjects];
}

@end