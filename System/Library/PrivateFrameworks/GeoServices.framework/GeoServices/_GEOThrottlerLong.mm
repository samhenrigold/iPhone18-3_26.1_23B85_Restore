@interface _GEOThrottlerLong
- (BOOL)addRequestTimestamp;
- (BOOL)isExpired;
- (double)timeUntilReset;
- (id)captureState;
- (unint64_t)remainingEntries;
@end

@implementation _GEOThrottlerLong

- (double)timeUntilReset
{
  GEOGetMonotonicTime();
  timeWindow = self->_timeWindow;
  v5 = v4 - self->_lastResetTime;
  v6 = timeWindow - v5;
  v7 = v5 < timeWindow;
  result = 0.0;
  if (v7)
  {
    return v6;
  }

  return result;
}

- (id)captureState
{
  v11[4] = *MEMORY[0x1E69E9840];
  if (self->_timeWindow < 600.0 || ([(_GEOThrottlerLong *)self timeUntilReset], v3 <= 0.0) || [(_GEOThrottlerLong *)self isExpired])
  {
    v4 = 0;
  }

  else
  {
    v11[0] = &unk_1EFA21200;
    v10[0] = @"type";
    v10[1] = @"lastReset";
    v6 = [MEMORY[0x1E696AD98] numberWithDouble:self->_lastResetTime];
    v11[1] = v6;
    v10[2] = @"currentCount";
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_currentRequestCount];
    v11[2] = v7;
    v10[3] = @"expires";
    v8 = MEMORY[0x1E696AD98];
    [(_GEOThrottlerLong *)self expiresAt];
    v9 = [v8 numberWithDouble:?];
    v11[3] = v9;
    v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:4];
  }

  return v4;
}

- (BOOL)isExpired
{
  GEOGetMonotonicTime();
  v4 = v3;
  [(_GEOThrottlerLong *)self expiresAt];
  return v4 > v5;
}

- (unint64_t)remainingEntries
{
  GEOGetMonotonicTime();
  maxRequestCount = self->_maxRequestCount;
  if (v3 - self->_lastResetTime <= self->_timeWindow)
  {
    maxRequestCount -= self->_currentRequestCount;
  }

  return maxRequestCount;
}

- (BOOL)addRequestTimestamp
{
  if (!self->_maxRequestCount)
  {
    return 1;
  }

  GEOGetMonotonicTime();
  if (v3 - self->_lastResetTime > self->_timeWindow)
  {
    self->_lastResetTime = v3;
    v4 = 1;
LABEL_8:
    self->_currentRequestCount = v4;
    result = 1;
    goto LABEL_9;
  }

  currentRequestCount = self->_currentRequestCount;
  if (self->_maxRequestCount != currentRequestCount)
  {
    v4 = currentRequestCount + 1;
    goto LABEL_8;
  }

  result = 0;
LABEL_9:
  self->_lastUseTime = v3;
  return result;
}

@end