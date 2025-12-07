@interface UARPSandboxExtension
+ (id)readTokenStringWithURL:(id)l;
+ (id)readWriteTokenStringWithURL:(id)l;
- (UARPSandboxExtension)initWithTokenString:(id)string;
- (void)dealloc;
@end

@implementation UARPSandboxExtension

+ (id)readTokenStringWithURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    path2 = [lCopy path];
    [path2 UTF8String];
    v8 = sandbox_extension_issue_file();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "+[UARPSandboxExtension readTokenStringWithURL:]";
      v13 = 2112;
      v14 = lCopy;
      _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Generating Read Sandbox Extension Token for %@ ", &v11, 0x16u);
    }

    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      free(v8);
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[UARPSandboxExtension readTokenStringWithURL:];
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (id)readWriteTokenStringWithURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v6 = [defaultManager fileExistsAtPath:path];

  if (v6)
  {
    path2 = [lCopy path];
    [path2 UTF8String];
    v8 = sandbox_extension_issue_file();

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      v11 = 136315394;
      v12 = "+[UARPSandboxExtension readWriteTokenStringWithURL:]";
      v13 = 2112;
      v14 = lCopy;
      _os_log_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "%s: Generating Read-Write Sandbox Extension Token for %@ ", &v11, 0x16u);
    }

    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
      free(v8);
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[UARPSandboxExtension readWriteTokenStringWithURL:];
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (UARPSandboxExtension)initWithTokenString:(id)string
{
  stringCopy = string;
  v9.receiver = self;
  v9.super_class = UARPSandboxExtension;
  v5 = [(UARPSandboxExtension *)&v9 init];
  if (v5 && ([stringCopy UTF8String], v6 = sandbox_extension_consume(), v5->_sandboxExtensionHandle = v6, v6 == -1))
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [UARPSandboxExtension initWithTokenString:];
    }

    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (void)dealloc
{
  if (self->_sandboxExtensionHandle != -1)
  {
    sandbox_extension_release();
    self->_sandboxExtensionHandle = -1;
  }

  v3.receiver = self;
  v3.super_class = UARPSandboxExtension;
  [(UARPSandboxExtension *)&v3 dealloc];
}

+ (void)readTokenStringWithURL:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Cannot Generate Sandbox Extension Token for %@ ", v0, 0x16u);
}

+ (void)readWriteTokenStringWithURL:.cold.1()
{
  v1 = *MEMORY[0x277D85DE8];
  v0[0] = 136315394;
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Cannot Generate Sandbox Extension Token for %@ ", v0, 0x16u);
}

- (void)initWithTokenString:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  v0 = 136315138;
  v1 = "[UARPSandboxExtension initWithTokenString:]";
  _os_log_error_impl(&dword_247AA7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: failed to consume sandbox token", &v0, 0xCu);
}

@end