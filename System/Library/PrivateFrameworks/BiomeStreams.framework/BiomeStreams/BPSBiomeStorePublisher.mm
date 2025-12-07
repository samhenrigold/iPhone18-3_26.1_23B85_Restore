@interface BPSBiomeStorePublisher
- (BPSBiomeStorePublisher)initWithStreamDatastoreReader:(id)reader streamsAccessClient:(id)client;
- (BPSBiomeStorePublisher)initWithStreamId:(id)id storeConfig:(id)config streamsAccessClient:(id)client eventDataClass:(Class)class;
- (id)_newEnumerator;
- (id)bookmark;
- (id)nextEvent;
- (id)startWithSubscriber:(id)subscriber;
- (id)validateBookmark:(id)bookmark;
- (id)withBookmark:(id)bookmark;
- (void)reset;
- (void)subscribe:(id)subscribe;
@end

@implementation BPSBiomeStorePublisher

- (id)bookmark
{
  enumerator = [(BPSBiomeStorePublisher *)self enumerator];
  bookmark = [enumerator bookmark];

  return bookmark;
}

- (id)nextEvent
{
  enumerator = [(BPSBiomeStorePublisher *)self enumerator];
  nextEvent = [enumerator nextEvent];

  if (nextEvent)
  {
    v5 = nextEvent;
  }

  else
  {
    [(BPSBiomeStorePublisher *)self setFinished:1];
  }

  return nextEvent;
}

- (void)reset
{
  [(BPSBiomeStorePublisher *)self setFinished:0];

  [(BPSBiomeStorePublisher *)self setEnumerator:0];
}

- (id)_newEnumerator
{
  v52 = *MEMORY[0x1E69E9840];
  startTime = self->_startTime;
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  [distantPast timeIntervalSinceReferenceDate];
  v7 = v6;

  if (startTime == v7)
  {
    v8 = 0.0;
    if (self->_reversed)
    {
      distantFuture = [MEMORY[0x1E695DF00] distantFuture];
      [distantFuture timeIntervalSinceReferenceDate];
      v8 = v10;
    }
  }

  else
  {
    v8 = self->_startTime;
  }

  endTime = self->_endTime;
  distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
  [distantFuture2 timeIntervalSinceReferenceDate];
  v14 = v13;

  if (endTime == v14)
  {
    v15 = 0.0;
    if (!self->_reversed)
    {
      distantFuture3 = [MEMORY[0x1E695DF00] distantFuture];
      [distantFuture3 timeIntervalSinceReferenceDate];
      v15 = v17;
    }
  }

  else
  {
    v15 = self->_endTime;
  }

  if (self->_bookmark)
  {
    if (!self->_indexSearch || ([MEMORY[0x1E696AAA8] currentHandler], v21 = objc_claimAutoreleasedReturnValue(), -[BPSBiomeStorePublisher streamId](self, "streamId"), v22 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "handleFailureInMethod:object:file:lineNumber:description:", a2, self, @"BPSBiomeStorePublisher.m", 273, @"both bookmark and indexSearch may not both be set. Stream: %@, bookmark: %@, indexSearch: %@", v22, self->_bookmark, self->_indexSearch), v22, v21, self->_bookmark))
    {
      v18 = [(BMStreamDatastoreReader *)self->_streamDatastoreReader newEnumeratorFromBookmark:?];
      if (v18)
      {
        v19 = v18;
        [v18 setEndTime:self->_maxEvents maxEvents:self->_lastEventCount lastN:self->_reversed reverse:v15];
        return v19;
      }

      v20 = __biome_log_for_category();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [(BPSBiomeStorePublisher *)self _newEnumerator];
      }

      goto LABEL_28;
    }
  }

  indexSearch = self->_indexSearch;
  if (indexSearch)
  {
    if (self->_lastEventCount != -1)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      streamId = [(BPSBiomeStorePublisher *)self streamId];
      [currentHandler handleFailureInMethod:a2 object:self file:@"BPSBiomeStorePublisher.m" lineNumber:287 description:{@"lastN and indexSearch may not both be set. Stream: %@, indexSearch: %@ lastN: %lu", streamId, self->_indexSearch, self->_lastEventCount}];

      indexSearch = self->_indexSearch;
    }

    v24 = self->_startTime;
    v25 = self->_endTime;
    maxEvents = self->_maxEvents;
    reversed = self->_reversed;
    v43 = 0;
    v28 = [(BMIndexSearch *)indexSearch performSearchWithStartTime:maxEvents endTime:reversed maxEvents:&v43 reversed:v24 error:v25];
    v29 = v43;
    if (v28)
    {
      streamDatastoreReader = self->_streamDatastoreReader;
      v42 = v29;
      v19 = [(BMStreamDatastoreReader *)streamDatastoreReader newEnumeratorFromBookmarkEnumerator:v28 error:&v42];
      v20 = v42;

      if (v19)
      {

        return v19;
      }

      v31 = __biome_log_for_category();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        streamId2 = [(BPSBiomeStorePublisher *)self streamId];
        v39 = self->_indexSearch;
        *buf = 138412802;
        v45 = streamId2;
        v46 = 2112;
        v47 = *&v39;
        v48 = 2112;
        v49 = *&v20;
        _os_log_error_impl(&dword_1848EE000, v31, OS_LOG_TYPE_ERROR, "newEnumeratorFromBookmark nil for stream: %@ and _indexSearch: %@, error: %@. No enumeration performed", buf, 0x20u);
      }
    }

    else
    {
      v31 = __biome_log_for_category();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v35 = self->_indexSearch;
        streamId3 = [(BPSBiomeStorePublisher *)self streamId];
        *buf = 138412802;
        v45 = v35;
        v46 = 2112;
        v47 = *&streamId3;
        v48 = 2112;
        v49 = *&v29;
        _os_log_error_impl(&dword_1848EE000, v31, OS_LOG_TYPE_ERROR, "[BMIndexSearch performSearchWithError:] returns a nil BMIndexRowEnumerator for BMIndexSearch: %@ nil on stream: %@. Error: %@, No enumeration performed", buf, 0x20u);
      }

      v20 = v29;
    }

LABEL_28:
  }

  if (self->_indexSearch)
  {
    return 0;
  }

  if (self->_reversed)
  {
    v32 = 8;
  }

  else
  {
    v32 = 0;
  }

  v19 = [(BMStreamDatastoreReader *)self->_streamDatastoreReader newEnumeratorFromStartTime:self->_maxEvents endTime:self->_lastEventCount maxEvents:v32 lastN:v8 options:v15];
  if (!v19)
  {
    v34 = __biome_log_for_category();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      streamId4 = [(BPSBiomeStorePublisher *)self streamId];
      *buf = 138413058;
      v45 = streamId4;
      v46 = 2048;
      v47 = v8;
      v48 = 2048;
      v49 = v15;
      v50 = 2048;
      v51 = v32;
      _os_log_error_impl(&dword_1848EE000, v34, OS_LOG_TYPE_ERROR, "newEnumeratorFromStartTime nil for stream: %@, start time: %lf endTime: %lf options: %lu", buf, 0x2Au);
    }

    return 0;
  }

  return v19;
}

- (BPSBiomeStorePublisher)initWithStreamId:(id)id storeConfig:(id)config streamsAccessClient:(id)client eventDataClass:(Class)class
{
  v10 = MEMORY[0x1E698F150];
  clientCopy = client;
  configCopy = config;
  idCopy = id;
  v14 = [v10 alloc];
  v15 = [v14 initWithStream:idCopy config:configCopy eventDataClass:class useCase:*MEMORY[0x1E698E928]];

  v16 = [(BPSBiomeStorePublisher *)self initWithStreamDatastoreReader:v15 streamsAccessClient:clientCopy];
  return v16;
}

- (BPSBiomeStorePublisher)initWithStreamDatastoreReader:(id)reader streamsAccessClient:(id)client
{
  readerCopy = reader;
  clientCopy = client;
  v16.receiver = self;
  v16.super_class = BPSBiomeStorePublisher;
  v9 = [(BPSBiomeStorePublisher *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_reversed = 0;
    distantPast = [MEMORY[0x1E695DF00] distantPast];
    [distantPast timeIntervalSinceReferenceDate];
    v10->_startTime = v12;

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [distantFuture timeIntervalSinceReferenceDate];
    v10->_endTime = v14;

    v10->_maxEvents = -1;
    v10->_lastEventCount = -1;
    objc_storeStrong(&v10->_streamDatastoreReader, reader);
    objc_storeStrong(&v10->_accessClient, client);
  }

  return v10;
}

- (void)subscribe:(id)subscribe
{
  subscribeCopy = subscribe;
  _newEnumerator = [(BPSBiomeStorePublisher *)self _newEnumerator];
  v5 = [_BPSInnerBiomeSubscription alloc];
  streamId = [(BPSBiomeStorePublisher *)self streamId];
  v7 = [(_BPSInnerBiomeSubscription *)v5 initWithStreamEnumerator:_newEnumerator downstream:subscribeCopy streamId:streamId accessClient:self->_accessClient];

  [subscribeCopy receiveSubscription:v7];
}

- (id)startWithSubscriber:(id)subscriber
{
  v25[1] = *MEMORY[0x1E69E9840];
  _newEnumerator = [(BPSBiomeStorePublisher *)self _newEnumerator];
  if (([(BMStreamDatastoreReader *)self->_streamDatastoreReader isDataAccessible]& 1) != 0)
  {
    if (_newEnumerator)
    {
      [(BPSBiomeStorePublisher *)self setEnumerator:_newEnumerator];
      v5 = 0;
      goto LABEL_7;
    }

    v16 = objc_alloc(MEMORY[0x1E696AEC0]);
    v17 = objc_opt_class();
    v18 = NSStringFromClass(v17);
    v9 = [v16 initWithFormat:@"%@ failed to create enumerator", v18];

    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E698F0B0];
    v22 = *MEMORY[0x1E696A578];
    v23 = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v13 = v19;
    v14 = v20;
    v15 = 3;
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v6 initWithFormat:@"%@ data is not accessible", v8];

    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E698F0B0];
    v24 = *MEMORY[0x1E696A578];
    v25[0] = v9;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v13 = v10;
    v14 = v11;
    v15 = 1;
  }

  v5 = [v13 errorWithDomain:v14 code:v15 userInfo:v12];

LABEL_7:

  return v5;
}

- (id)validateBookmark:(id)bookmark
{
  v16[1] = *MEMORY[0x1E69E9840];
  bookmarkCopy = bookmark;
  if (bookmarkCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    bookmarkCopy = [v5 initWithFormat:@"%@ expected bookmark of class %@, but received %@", v7, v9, bookmarkCopy];

    v11 = MEMORY[0x1E696ABC0];
    v12 = *MEMORY[0x1E698F0B0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = bookmarkCopy;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v4 = [v11 errorWithDomain:v12 code:2 userInfo:v13];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)withBookmark:(id)bookmark
{
  bookmarkCopy = bookmark;
  null = [MEMORY[0x1E695DFB0] null];
  v6 = [bookmarkCopy isEqual:null];

  if (v6)
  {
    v7 = __biome_log_for_category();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [BPSBiomeStorePublisher withBookmark:v7];
    }

    goto LABEL_8;
  }

  if (!bookmarkCopy)
  {
LABEL_8:
    selfCopy = self;
    goto LABEL_16;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    value = [bookmarkCopy value];
  }

  else
  {
    value = bookmarkCopy;
  }

  v10 = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&self->_bookmark, v10);
  }

  else
  {
    v11 = __biome_log_for_category();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [BPSBiomeStorePublisher withBookmark:?];
    }
  }

  selfCopy2 = self;

LABEL_16:

  return self;
}

@end