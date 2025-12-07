@interface CDMSpanMatchDataUpdateCommand
- (CDMSpanMatchDataUpdateCommand)init;
@end

@implementation CDMSpanMatchDataUpdateCommand

- (CDMSpanMatchDataUpdateCommand)init
{
  v12 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = CDMSpanMatchDataUpdateCommand;
  v2 = [(CDMBaseCommand *)&v7 init];
  if (v2)
  {
    v3 = CDMLogContext;
    if (os_log_type_enabled(CDMLogContext, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v9 = "[CDMSpanMatchDataUpdateCommand init]";
      v10 = 2112;
      v11 = @"spanmatch";
      _os_log_impl(&dword_1DC287000, v3, OS_LOG_TYPE_INFO, "%s [insights-cdm-%@]:\nSiriVocabularyProtoSpanMatcher initialized", buf, 0x16u);
    }

    indexMatcher = [MEMORY[0x1E69CE410] indexMatcher];
    semSpanMatcher = v2->_semSpanMatcher;
    v2->_semSpanMatcher = indexMatcher;
  }

  return v2;
}

@end