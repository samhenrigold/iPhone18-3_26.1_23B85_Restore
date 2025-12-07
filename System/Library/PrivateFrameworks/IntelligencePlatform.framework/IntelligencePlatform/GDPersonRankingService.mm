@interface GDPersonRankingService
- (GDPersonRankingService)initWithConfig:(id)config;
- (id)rankedPersonsWithMaxCount:(int64_t)count error:(id *)error;
@end

@implementation GDPersonRankingService

- (id)rankedPersonsWithMaxCount:(int64_t)count error:(id *)error
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = [(PersonRankingService *)self->_innerService rankedPersonsForObjCWithMaxCount:count error:?];
  if (!v5)
  {
    v6 = GDLifeEventLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *error;
      v9 = 138412290;
      v10 = v8;
      _os_log_error_impl(&dword_1ABA78000, v6, OS_LOG_TYPE_ERROR, "Failed to retrieve ranked persons with error: %@", &v9, 0xCu);
    }
  }

  return v5;
}

- (GDPersonRankingService)initWithConfig:(id)config
{
  configCopy = config;
  v9.receiver = self;
  v9.super_class = GDPersonRankingService;
  v5 = [(GDPersonRankingService *)&v9 init];
  if (v5)
  {
    v6 = [[_TtC20IntelligencePlatform20PersonRankingService alloc] initWithConfig:configCopy];
    innerService = v5->_innerService;
    v5->_innerService = v6;
  }

  return v5;
}

@end