@interface SVXRadarRateLimiter
- (BOOL)isRateLimited;
@end

@implementation SVXRadarRateLimiter

- (BOOL)isRateLimited
{
  v11 = *MEMORY[0x277D85DE8];
  _getRandom = [(SVXRadarRateLimiter *)self _getRandom];
  v3 = *MEMORY[0x277CEF098];
  v4 = os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_INFO);
  if (_getRandom)
  {
    if (v4)
    {
      v7 = 136315394;
      v8 = "[SVXRadarRateLimiter isRateLimited]";
      v9 = 1024;
      v10 = _getRandom;
      v5 = "%s User not sampled for this time, randint=%d";
LABEL_6:
      _os_log_impl(&dword_2695B9000, v3, OS_LOG_TYPE_INFO, v5, &v7, 0x12u);
    }
  }

  else if (v4)
  {
    v7 = 136315394;
    v8 = "[SVXRadarRateLimiter isRateLimited]";
    v9 = 1024;
    v10 = 0;
    v5 = "%s User sampled for this time, randint=%d";
    goto LABEL_6;
  }

  return _getRandom != 0;
}

@end