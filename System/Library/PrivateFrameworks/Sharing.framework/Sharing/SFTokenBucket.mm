@interface SFTokenBucket
- (BOOL)acquireToken;
- (SFTokenBucket)initWithBucketSize:(unint64_t)size tokenDurationSec:(double)sec;
- (SFTokenBucket)initWithBucketSize:(unint64_t)size tokenDurationTicks:(unint64_t)ticks;
- (void)acquireToken;
@end

@implementation SFTokenBucket

- (SFTokenBucket)initWithBucketSize:(unint64_t)size tokenDurationTicks:(unint64_t)ticks
{
  v9.receiver = self;
  v9.super_class = SFTokenBucket;
  v6 = [(SFTokenBucket *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_bucketSize = size;
    v6->_tokensAvailable = size;
    v6->_tokenDurationTicks = ticks;
    v6->_lastRefreshTicks = mach_absolute_time();
  }

  return v7;
}

- (SFTokenBucket)initWithBucketSize:(unint64_t)size tokenDurationSec:(double)sec
{
  v6 = SecondsToUpTicksF();

  return [(SFTokenBucket *)self initWithBucketSize:size tokenDurationTicks:v6];
}

- (BOOL)acquireToken
{
  v3 = airdrop_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(SFTokenBucket *)self acquireToken];
  }

  tokensAvailable = self->_tokensAvailable;
  if (tokensAvailable)
  {
    goto LABEL_10;
  }

  v6 = mach_absolute_time();
  v7 = self->_tokensAvailable;
  if ((v6 - self->_lastRefreshTicks) / self->_tokenDurationTicks >= self->_bucketSize - v7)
  {
    v8 = self->_bucketSize - v7;
  }

  else
  {
    v8 = (v6 - self->_lastRefreshTicks) / self->_tokenDurationTicks;
  }

  v9 = airdrop_log(v6);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(SFTokenBucket *)v8 acquireToken];
  }

  self->_tokensAvailable += v8;
  v4 = mach_absolute_time();
  self->_lastRefreshTicks = v4;
  tokensAvailable = self->_tokensAvailable;
  if (tokensAvailable)
  {
LABEL_10:
    self->_tokensAvailable = tokensAvailable - 1;
    v10 = airdrop_log(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(SFTokenBucket *)v10 acquireToken];
    }

    v11 = 1;
  }

  else
  {
    v10 = airdrop_log(v4);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A9662000, v10, OS_LOG_TYPE_DEFAULT, "No tokens available.", v13, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)acquireToken
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 134217984;
  selfCopy = self;
  _os_log_debug_impl(&dword_1A9662000, a2, OS_LOG_TYPE_DEBUG, "Adding %llu new tokens.", &v2, 0xCu);
}

@end