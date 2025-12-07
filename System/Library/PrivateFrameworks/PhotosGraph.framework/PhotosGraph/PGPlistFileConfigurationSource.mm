@interface PGPlistFileConfigurationSource
- (PGPlistFileConfigurationSource)initWithPlistFileURL:(id)l;
@end

@implementation PGPlistFileConfigurationSource

- (PGPlistFileConfigurationSource)initWithPlistFileURL:(id)l
{
  v18 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v15.receiver = self;
  v15.super_class = PGPlistFileConfigurationSource;
  v5 = [(PGPlistFileConfigurationSource *)&v15 init];
  if (!v5)
  {
    goto LABEL_4;
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  path = [lCopy path];
  v8 = [defaultManager fileExistsAtPath:path];

  if (v8)
  {
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:lCopy];
    configurationData = v5->_configurationData;
    v5->_configurationData = v9;

LABEL_4:
    v11 = v5;
    goto LABEL_8;
  }

  v12 = +[PGLogging sharedLogging];
  loggingConnection = [v12 loggingConnection];

  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v17 = lCopy;
    _os_log_error_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_ERROR, "[PGConfigurationSource] failed to load PlistFile at filePath: %@", buf, 0xCu);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

@end