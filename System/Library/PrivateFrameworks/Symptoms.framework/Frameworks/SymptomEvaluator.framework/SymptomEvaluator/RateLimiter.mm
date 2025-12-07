@interface RateLimiter
- (BOOL)_setTokenBucketConfiguration:(id)configuration;
- (BOOL)_tokenBucketResetWithRelativeStartTime:(double)time;
- (BOOL)setConfiguration:(id)configuration;
- (NSString)name;
- (double)_tokenBucketAcquireHelper:(BOOL)helper;
- (double)checkAcquire;
- (double)tryAcquire;
- (id)getState;
- (void)_restoreTokenBucketDefaults;
- (void)_setTokenBucketDerivedValues;
@end

@implementation RateLimiter

- (void)_setTokenBucketDerivedValues
{
  v3 = arc4random();
  tokenBucketCfgRefreshInterval = self->_tokenBucketCfgRefreshInterval;
  v5 = self->_tokenBucketCfgIntervalBias * vcvts_n_f32_u32(v3, 0x20uLL);
  self->_tokenBucketIntervalBias = v5;
  self->_tokenBucketInterval = tokenBucketCfgRefreshInterval + v5;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  LODWORD(v6) = self->_tokenBucketSize;
  self->_lastConsumed = v7 - v6 * self->_tokenBucketInterval;
}

- (BOOL)_setTokenBucketConfiguration:(id)configuration
{
  v32 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  tokenBucketSize = self->_tokenBucketSize;
  tokenBucketCfgRefreshInterval = self->_tokenBucketCfgRefreshInterval;
  tokenBucketCfgIntervalBias = self->_tokenBucketCfgIntervalBias;
  if (([configurationCopy extractKey:@"tokenBucketSize" toUint32:&self->_tokenBucketSize defaultTo:1] & 0x80000000) != 0)
  {
    goto LABEL_12;
  }

  v8 = [configurationCopy extractKey:@"interTokenInterval" toDouble:&self->_tokenBucketCfgRefreshInterval defaultTo:115.0];
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = logHandle;
    name = [(RateLimiter *)self name];
    v12 = self->_tokenBucketCfgRefreshInterval;
    v24 = 138413058;
    v25 = name;
    v26 = 1024;
    v27 = v8;
    v28 = 2048;
    v29 = v12;
    v30 = 2112;
    v31 = @"interTokenInterval";
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "%@ setTokenBucketConfiguration result %d value %f for %@", &v24, 0x26u);
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  v13 = [configurationCopy extractKey:@"interTokenIntervalBias" toDouble:&self->_tokenBucketCfgIntervalBias defaultTo:10.0];
  v14 = self->_logHandle;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    v15 = v14;
    name2 = [(RateLimiter *)self name];
    v17 = self->_tokenBucketCfgIntervalBias;
    v24 = 138413058;
    v25 = name2;
    v26 = 1024;
    v27 = v13;
    v28 = 2048;
    v29 = v17;
    v30 = 2112;
    v31 = @"interTokenIntervalBias";
    _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEBUG, "%@ setTokenBucketConfiguration result %d value %f for %@", &v24, 0x26u);
  }

  if (v13 < 0)
  {
LABEL_12:
    self->_configured = 0;
  }

  else
  {
    self->_configured = 1;
    self->_style = 1;
    if (tokenBucketCfgRefreshInterval != self->_tokenBucketCfgRefreshInterval || tokenBucketCfgIntervalBias != self->_tokenBucketCfgIntervalBias || tokenBucketSize != self->_tokenBucketSize)
    {
      [(RateLimiter *)self _setTokenBucketDerivedValues];
    }
  }

  v18 = self->_logHandle;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = v18;
    name3 = [(RateLimiter *)self name];
    configured = self->_configured;
    v24 = 138412546;
    v25 = name3;
    v26 = 1024;
    v27 = configured;
    _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "%@ setTokenBucketConfiguration return %d", &v24, 0x12u);
  }

  v22 = self->_configured;

  return v22;
}

- (void)_restoreTokenBucketDefaults
{
  tokenBucketCfgRefreshInterval = self->_tokenBucketCfgRefreshInterval;
  tokenBucketCfgIntervalBias = self->_tokenBucketCfgIntervalBias;
  tokenBucketSize = self->_tokenBucketSize;
  self->_tokenBucketSize = 1;
  *&self->_tokenBucketCfgRefreshInterval = xmmword_232817240;
  if (tokenBucketCfgRefreshInterval != 115.0 || tokenBucketCfgIntervalBias != 10.0 || tokenBucketSize != 1)
  {
    [(RateLimiter *)self _setTokenBucketDerivedValues:10.0];
  }
}

- (BOOL)_tokenBucketResetWithRelativeStartTime:(double)time
{
  v17 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  self->_lastConsumed = v5 + time;
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    v7 = logHandle;
    name = [(RateLimiter *)self name];
    lastConsumed = self->_lastConsumed;
    v11 = 138412802;
    v12 = name;
    v13 = 2048;
    timeCopy = time;
    v15 = 2048;
    v16 = lastConsumed;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "%@ _tokenBucketResetWithRelativeStartTime %.3f, set lastConsumed %.3f", &v11, 0x20u);
  }

  return 1;
}

- (double)_tokenBucketAcquireHelper:(BOOL)helper
{
  helperCopy = helper;
  v30 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v6 = *&v5;
  LODWORD(v5) = self->_tokenBucketSize;
  v7 = v6 - v5 * self->_tokenBucketInterval + -0.000001;
  logHandle = self->_logHandle;
  if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = logHandle;
    name = [(RateLimiter *)self name];
    lastConsumed = self->_lastConsumed;
    v22 = 138413058;
    v23 = name;
    v24 = 2048;
    v25 = v6;
    v26 = 2048;
    v27 = v7;
    v28 = 2048;
    v29 = lastConsumed;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "%@ _acquireHelper now %.3f lastTokens %.3f _lastConsumed %.3f", &v22, 0x2Au);
  }

  v12 = self->_lastConsumed;
  if (v12 <= v7)
  {
    v12 = v7;
  }

  v13 = v12 + self->_tokenBucketInterval;
  if (v13 <= v6)
  {
    v14 = 0.0;
    if (helperCopy)
    {
      self->_lastConsumed = v13;
      v18 = self->_logHandle;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v16 = v18;
        name2 = [(RateLimiter *)self name];
        v20 = self->_lastConsumed;
        v22 = 138412546;
        v23 = name2;
        v24 = 2048;
        v25 = v20;
        _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "%@ _tokenBucketAcquireHelper  bump _lastConsumed to %.3f", &v22, 0x16u);

        goto LABEL_11;
      }
    }
  }

  else
  {
    v14 = v13 - v6;
    v15 = self->_logHandle;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = v15;
      name3 = [(RateLimiter *)self name];
      v22 = 138412546;
      v23 = name3;
      v24 = 2048;
      v25 = v14;
      _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "%@ _tokenBucketAcquireHelper return %.3f", &v22, 0x16u);

LABEL_11:
    }
  }

  return v14;
}

- (NSString)name
{
  name = self->_name;
  if (name)
  {
    v4 = name;
  }

  else
  {
    v4 = @"RateLimiter";
  }

  return v4;
}

- (double)tryAcquire
{
  if (self->_style != 1)
  {
    return 0.0;
  }

  [(RateLimiter *)self _tokenBucketAcquireHelper:1];
  return result;
}

- (double)checkAcquire
{
  if (self->_style != 1)
  {
    return 0.0;
  }

  [(RateLimiter *)self _tokenBucketAcquireHelper:0];
  return result;
}

- (BOOL)setConfiguration:(id)configuration
{
  v24 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v17 = 0;
  v5 = [configurationCopy extractKey:@"rateLimiterStyle" toUint32:&v17 defaultTo:1];
  if (v5 < 1)
  {
    if (v5 < 0)
    {
LABEL_10:
      LOBYTE(v11) = 0;
      goto LABEL_11;
    }

    style = self->_style;
  }

  else
  {
    logHandle = self->_logHandle;
    if (os_log_type_enabled(logHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = logHandle;
      name = [(RateLimiter *)self name];
      v9 = self->_style;
      *buf = 138412802;
      v19 = name;
      v20 = 1024;
      v21 = v9;
      v22 = 1024;
      v23 = v17;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "%@ setConfiguration overrides style %d -> %d", buf, 0x18u);
    }

    style = v17;
    self->_style = v17;
  }

  if (style != 1)
  {
    goto LABEL_10;
  }

  v11 = [(RateLimiter *)self _setTokenBucketConfiguration:configurationCopy];
  v12 = self->_logHandle;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v13 = v12;
    name2 = [(RateLimiter *)self name];
    *buf = 138412546;
    v19 = name2;
    v20 = 1024;
    v21 = v11;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "%@ setConfiguration ret %d after state 2", buf, 0x12u);
  }

LABEL_11:
  v15 = [configurationCopy objectForKey:@"restoreDefaults"];
  if (v15)
  {
    [(RateLimiter *)self _restoreDefaults];
  }

  return v11;
}

- (id)getState
{
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  tokenBucketInterval = self->_tokenBucketInterval;
  lastConsumed = self->_lastConsumed;
  LODWORD(v7) = self->_tokenBucketSize;
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = v8;
  if (self->_style == 1)
  {
    v10 = ((v4 - lastConsumed) / tokenBucketInterval);
    if (v7 >= v10)
    {
      v7 = v10;
    }

    else
    {
      v7 = v7;
    }

    v11 = objc_alloc(MEMORY[0x277CCACA8]);
    name = self->_name;
    if (!name)
    {
      name = @"Ratelimiter";
    }

    v13 = [v11 initWithFormat:@"%@ style token-bucket bucket-size %d refresh %.3f (base %.3f bias %.3f) now %.3f last %.3f avail %d", name, self->_tokenBucketSize, *&self->_tokenBucketInterval, *&self->_tokenBucketCfgRefreshInterval, *&self->_tokenBucketIntervalBias, *&v4, *&self->_lastConsumed, v7];
    [v9 addObject:v13];
  }

  else
  {
    [v8 addObject:@"unknown-ratelimiter-style"];
  }

  return v9;
}

@end