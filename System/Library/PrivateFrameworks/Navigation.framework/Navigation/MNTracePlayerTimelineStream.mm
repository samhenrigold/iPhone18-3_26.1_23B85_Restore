@interface MNTracePlayerTimelineStream
- (MNTracePlayerTimelineStream)initWithData:(id)data;
- (void)jumpToPosition:(double)position;
- (void)triggerNextUpdate;
@end

@implementation MNTracePlayerTimelineStream

- (void)jumpToPosition:(double)position
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [[_MNTracePlayerTimelineStreamSearchObject alloc] initWithPosition:position];
  v5 = [(NSArray *)self->_data indexOfObject:v4 inSortedRange:0 options:[(NSArray *)self->_data count] usingComparator:1024, &__block_literal_global_13250];
  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315906;
      v12 = "[MNTracePlayerTimelineStream jumpToPosition:]";
      v13 = 2080;
      v14 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTracePlayerTimelineStream.m";
      v15 = 1024;
      v16 = 88;
      v17 = 2080;
      v18 = "nextIndex != NSNotFound";
      _os_log_impl(&dword_1D311E000, v10, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", &v11, 0x26u);
    }
  }

  v6 = [(NSArray *)self->_data count];
  if (v5 >= v6 - 1)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = v5;
  }

  self->_nextIndex = v7;
  v8 = [(NSArray *)self->_data objectAtIndex:?];
  [v8 position];
  self->_nextUpdatePosition = v9;
}

uint64_t __46__MNTracePlayerTimelineStream_jumpToPosition___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x1E696AD98];
  v5 = a3;
  [a2 position];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x1E696AD98];
  [v5 position];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

- (void)triggerNextUpdate
{
  v20 = *MEMORY[0x1E69E9840];
  nextIndex = self->_nextIndex;
  if (nextIndex >= [(NSArray *)self->_data count])
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v15 = "[MNTracePlayerTimelineStream triggerNextUpdate]";
      v16 = 2080;
      v17 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTracePlayerTimelineStream.m";
      v18 = 1024;
      v19 = 57;
      _os_log_impl(&dword_1D311E000, v12, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: Hit an unreachable code path", buf, 0x1Cu);
    }
  }

  else
  {
    if (self->_handler)
    {
      v4 = [(NSArray *)self->_data objectAtIndex:nextIndex];
      [v4 position];
      v6 = v5;

      handler = self->_handler;
      date = [MEMORY[0x1E695DF00] date];
      handler[2](handler, nextIndex, date, v6);
    }

    data = self->_data;
    v10 = self->_nextIndex + 1;
    self->_nextIndex = v10;
    if (v10 >= [(NSArray *)data count])
    {
      self->_nextIndex = 0x7FFFFFFFFFFFFFFFLL;
      self->_nextUpdatePosition = 978307200.0;
    }

    else
    {
      v13 = [(NSArray *)self->_data objectAtIndex:self->_nextIndex];
      [v13 position];
      self->_nextUpdatePosition = v11;
    }
  }
}

- (MNTracePlayerTimelineStream)initWithData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v10.receiver = self;
  v10.super_class = MNTracePlayerTimelineStream;
  v6 = [(MNTracePlayerTimelineStream *)&v10 init];
  if (v6)
  {
    if (![dataCopy count])
    {
      v9 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "[MNTracePlayerTimelineStream initWithData:]";
        v13 = 2080;
        v14 = "/Library/Caches/com.apple.xbs/Sources/Navigation/Traces/MNTracePlayerTimelineStream.m";
        v15 = 1024;
        v16 = 44;
        v17 = 2080;
        v18 = "data.count > 0";
        _os_log_impl(&dword_1D311E000, v9, OS_LOG_TYPE_ERROR, "*** Assertion failure in %s, %s:%d: (%s)", buf, 0x26u);
      }
    }

    objc_storeStrong(&v6->_data, data);
    v6->_nextIndex = 0x7FFFFFFFFFFFFFFFLL;
    v6->_nextUpdatePosition = 978307200.0;
    v7 = v6;
  }

  return v6;
}

@end