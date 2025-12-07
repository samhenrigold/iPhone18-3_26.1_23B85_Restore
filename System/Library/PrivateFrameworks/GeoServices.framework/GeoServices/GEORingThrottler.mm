@interface GEORingThrottler
- (BOOL)addRequestTimestamp;
- (BOOL)isExpired;
- (double)timeUntilReset;
- (id).cxx_construct;
- (unint64_t)remainingEntries;
@end

@implementation GEORingThrottler

- (BOOL)addRequestTimestamp
{
  if (self->_lastRequestTimes.__end_ == self->_lastRequestTimes.__begin_)
  {
    return 1;
  }

  GEOGetMonotonicTime();
  currentIndex = self->_currentIndex;
  begin = self->_lastRequestTimes.__begin_;
  if (v3 - *(begin + currentIndex) < self->_timeWindow)
  {
    return 0;
  }

  *(begin + currentIndex) = v3;
  self->_currentIndex = (currentIndex + 1) % ((self->_lastRequestTimes.__end_ - begin) >> 3);
  return 1;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 2) = 0;
  *(self + 3) = 0;
  return self;
}

- (double)timeUntilReset
{
  if (self->_lastRequestTimes.__end_ == self->_lastRequestTimes.__begin_)
  {
    return 0.0;
  }

  GEOGetMonotonicTime();
  v4 = v3 - *(self->_lastRequestTimes.__begin_ + self->_currentIndex);
  timeWindow = self->_timeWindow;
  v6 = timeWindow - v4;
  v7 = v4 < timeWindow;
  result = 0.0;
  if (v7)
  {
    return v6;
  }

  return result;
}

- (BOOL)isExpired
{
  begin = self->_lastRequestTimes.__begin_;
  v3 = self->_lastRequestTimes.__end_ - begin;
  if (!v3)
  {
    return 1;
  }

  v5 = v3 >> 3;
  currentIndex = self->_currentIndex;
  if (!currentIndex)
  {
    currentIndex = v5;
  }

  v7 = currentIndex;
  while (1)
  {
    --v7;
    v8 = *(begin + v7);
    if (v8)
    {
      break;
    }

    if (!v7)
    {
      v7 = v5;
    }

    if (v7 == currentIndex)
    {
      v8 = 0x8000000000000000;
      break;
    }
  }

  GEOGetMonotonicTime();
  return v9 - v8 > self->_timeWindow * 1.5;
}

- (unint64_t)remainingEntries
{
  if (self->_lastRequestTimes.__end_ == self->_lastRequestTimes.__begin_)
  {
    return -1;
  }

  GEOGetMonotonicTime();
  begin = self->_lastRequestTimes.__begin_;
  end = self->_lastRequestTimes.__end_;
  if (begin == end)
  {
    return 0;
  }

  result = 0;
  v7 = v3;
  do
  {
    v8 = *begin;
    begin = (begin + 8);
    if (self->_timeWindow <= v7 - v8)
    {
      ++result;
    }
  }

  while (begin != end);
  return result;
}

@end