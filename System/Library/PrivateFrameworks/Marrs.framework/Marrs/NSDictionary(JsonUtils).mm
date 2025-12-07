@interface NSDictionary(JsonUtils)
- (id)initWithJSON:()JsonUtils;
- (void)toJsonInDocumentDirectoryWith:()JsonUtils;
@end

@implementation NSDictionary(JsonUtils)

- (void)toJsonInDocumentDirectoryWith:()JsonUtils
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager URLsForDirectory:9 inDomains:1];

  if (![v6 count])
  {
    v18 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v24 = "[NSDictionary(JsonUtils) toJsonInDocumentDirectoryWith:]";
      _os_log_error_impl(&dword_2227A9000, v18, OS_LOG_TYPE_ERROR, "%s [ERR]: Cannot get an URL for Document directory", buf, 0xCu);
    }

    exception = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(buf, "Error creating directory");
    std::string::basic_string[abi:ne200100]<0>(v22, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(exception, buf, v22, "/Library/Caches/com.apple.xbs/Sources/Marrs/Common/NSDictionary+JsonUtils.mm", 35);
  }

  defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
  v8 = [v6 objectAtIndexedSubscript:0];
  path = [v8 path];
  v21 = 0;
  [defaultManager2 createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v21];
  v10 = v21;

  if (v10)
  {
    v15 = QRLoggerForCategory(0);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = [v10 debugDescription];
      *buf = 136315394;
      v24 = "[NSDictionary(JsonUtils) toJsonInDocumentDirectoryWith:]";
      v25 = 2112;
      v26 = v16;
      _os_log_error_impl(&dword_2227A9000, v15, OS_LOG_TYPE_ERROR, "%s [ERR]: %@", buf, 0x16u);
    }

    v17 = __cxa_allocate_exception(0x30uLL);
    std::string::basic_string[abi:ne200100]<0>(buf, "Error creating directory");
    std::string::basic_string[abi:ne200100]<0>(v22, "QueryRewrite");
    ConfigLoadingError::ConfigLoadingError(v17, buf, v22, "/Library/Caches/com.apple.xbs/Sources/Marrs/Common/NSDictionary+JsonUtils.mm", 44);
  }

  v11 = [v6 objectAtIndexedSubscript:0];
  v12 = [v11 URLByAppendingPathComponent:v4];

  v13 = [MEMORY[0x277CBEB78] outputStreamWithURL:v12 append:0];
  [v13 open];
  v20 = 0;
  [MEMORY[0x277CCAAA0] writeJSONObject:self toStream:v13 options:1 error:&v20];
  v14 = v20;
  [v13 close];
}

- (id)initWithJSON:()JsonUtils
{
  v2 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:?];
  v7 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v2 options:0 error:&v7];
  v4 = v7;
  if (v4)
  {
    selfCopy = 0;
  }

  else
  {
    self = [self initWithDictionary:v3];
    selfCopy = self;
  }

  return selfCopy;
}

@end