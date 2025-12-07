@interface CDRemoveEventsConsumer
- (CDRemoveEventsConsumer)initWithConsumer:(id)consumer identifier:(id)identifier;
- (void)callback:(id)callback;
- (void)consumeStream:(__FSEventStream *)stream forVolume:(id)volume;
- (void)dealloc;
@end

@implementation CDRemoveEventsConsumer

- (CDRemoveEventsConsumer)initWithConsumer:(id)consumer identifier:(id)identifier
{
  consumerCopy = consumer;
  identifierCopy = identifier;
  v18.receiver = self;
  v18.super_class = CDRemoveEventsConsumer;
  v8 = [(CDRemoveEventsConsumer *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v10 = MEMORY[0x1BFAF7E70](consumerCopy);
    consumer = v9->_consumer;
    v9->_consumer = v10;

    v12 = dispatch_semaphore_create(0);
    sem = v9->_sem;
    v9->_sem = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.CDRemoveEventsConsumer", v14);
    consumer_q = v9->_consumer_q;
    v9->_consumer_q = v15;
  }

  return v9;
}

- (void)dealloc
{
  if ([(CDRemoveEventsConsumer *)self stream])
  {
    FSEventStreamInvalidate([(CDRemoveEventsConsumer *)self stream]);
    FSEventStreamRelease([(CDRemoveEventsConsumer *)self stream]);
  }

  v3.receiver = self;
  v3.super_class = CDRemoveEventsConsumer;
  [(CDRemoveEventsConsumer *)&v3 dealloc];
}

- (void)callback:(id)callback
{
  callbackCopy = callback;
  if ([(CDRemoveEventsConsumer *)self historyDone])
  {
    FSEventStreamStop([(CDRemoveEventsConsumer *)self stream]);
  }

  consumer_q = [(CDRemoveEventsConsumer *)self consumer_q];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__CDRemoveEventsConsumer_callback___block_invoke;
  v7[3] = &unk_1E7F02D40;
  v8 = callbackCopy;
  selfCopy = self;
  v6 = callbackCopy;
  dispatch_async(consumer_q, v7);
}

void __35__CDRemoveEventsConsumer_callback___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = CDGetLogHandle("client");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA7F1000, v2, OS_LOG_TYPE_DEFAULT, "CDConsumer, calling client callback with:", buf, 2u);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v37;
    *&v5 = 138412290;
    v30 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v37 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = [*(*(&v36 + 1) + 8 * i) allValues];
        v10 = [v9 componentsJoinedByString:@" "];

        v11 = CDGetLogHandle("client");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v30;
          v41 = v10;
          _os_log_impl(&dword_1BA7F1000, v11, OS_LOG_TYPE_DEFAULT, "CDConsumer callback file removed: %@", buf, 0xCu);
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v6);
  }

  v12 = [*(a1 + 40) consumer];
  v12[2](v12, *(a1 + 32));

  v13 = CDGetLogHandle("client");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1BA7F1000, v13, OS_LOG_TYPE_DEFAULT, "CDConsumer client callback complete", buf, 2u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = *(a1 + 32);
  v15 = [v14 countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (!v15)
  {
    goto LABEL_31;
  }

  v17 = v15;
  v18 = 0;
  v19 = *v33;
  *&v16 = 138412546;
  v31 = v16;
  do
  {
    for (j = 0; j != v17; ++j)
    {
      if (*v33 != v19)
      {
        objc_enumerationMutation(v14);
      }

      v21 = *(*(&v32 + 1) + 8 * j);
      v22 = [v21 objectForKeyedSubscript:{@"historyDone", v31, v32}];
      v23 = evaluateNumberProperty(v22);

      if (v23)
      {
        if ([v23 unsignedLongLongValue])
        {
          v24 = v23;
        }

        else
        {
          v24 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:FSEventsGetCurrentEventId()];

          v25 = CDGetLogHandle("client");
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            *buf = v31;
            v41 = v24;
            v42 = 2112;
            v43 = v21;
            _os_log_error_impl(&dword_1BA7F1000, v25, OS_LOG_TYPE_ERROR, "Got a zero historyDone event, using FSEventsGetCurrentEventId: %@, event: %@", buf, 0x16u);
          }
        }

        v26 = [*(a1 + 40) identifier];
        v27 = [*(a1 + 40) volume];
        v18 = 1;
        setPurgeMarker(v26, v27, 1, [v24 unsignedLongLongValue]);
      }

      else
      {
        v24 = 0;
      }

      v28 = [v21 objectForKeyedSubscript:@"rescan"];
      v29 = evaluateNumberProperty(v28);

      v18 |= v29 != 0;
    }

    v17 = [v14 countByEnumeratingWithState:&v32 objects:v44 count:16];
  }

  while (v17);

  if (v18)
  {
    v14 = [*(a1 + 40) sem];
    dispatch_semaphore_signal(v14);
LABEL_31:
  }
}

- (void)consumeStream:(__FSEventStream *)stream forVolume:(id)volume
{
  v28 = *MEMORY[0x1E69E9840];
  volumeCopy = volume;
  v7 = mach_absolute_time();
  if (stream)
  {
    bzero(&v27, 0x878uLL);
    if (statfs([volumeCopy UTF8String], &v27))
    {
      v8 = CDGetLogHandle("client");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v21 = __error();
        v22 = strerror(*v21);
        v23 = 138543618;
        v24 = volumeCopy;
        v25 = 2080;
        v26 = v22;
        _os_log_error_impl(&dword_1BA7F1000, v8, OS_LOG_TYPE_ERROR, "statfs failed for %{public}@ : %s", &v23, 0x16u);
      }

      goto LABEL_10;
    }

    if ([(CDRemoveEventsConsumer *)self stream])
    {
      v12 = CDGetLogHandle("client");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v23) = 0;
        _os_log_error_impl(&dword_1BA7F1000, v12, OS_LOG_TYPE_ERROR, "consumer is being reused, replacing FSEventStream", &v23, 2u);
      }

      stream = [(CDRemoveEventsConsumer *)self stream];
      [(CDRemoveEventsConsumer *)self setStream:0];
      FSEventStreamInvalidate(stream);
      FSEventStreamRelease(stream);
    }

    [(CDRemoveEventsConsumer *)self setFsid:*&v27.f_fsid];
    [(CDRemoveEventsConsumer *)self setStream:stream];
    [(CDRemoveEventsConsumer *)self setVolume:volumeCopy];
    if (FSEventStreamStart([(CDRemoveEventsConsumer *)self stream]))
    {
      v14 = [(CDRemoveEventsConsumer *)self sem];
      dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);

      v9 = CDGetLogHandle("client");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23) = 0;
        _os_log_impl(&dword_1BA7F1000, v9, OS_LOG_TYPE_DEFAULT, "FSStream completed.", &v23, 2u);
      }

      goto LABEL_7;
    }

    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = __error();
      v16 = strerror(*v15);
      v23 = 138412546;
      v24 = volumeCopy;
      v25 = 2080;
      v26 = v16;
      v17 = "CacheDeleteEnumerateRemovedFiles: Unable to start FSEventStream on volume %@ : %s";
      v18 = &v23;
      v19 = v9;
      v20 = 22;
LABEL_21:
      _os_log_error_impl(&dword_1BA7F1000, v19, OS_LOG_TYPE_ERROR, v17, v18, v20);
    }
  }

  else
  {
    v9 = CDGetLogHandle("client");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27.f_bsize) = 0;
      v17 = "No stream parameter";
      v18 = &v27;
      v19 = v9;
      v20 = 2;
      goto LABEL_21;
    }
  }

LABEL_7:

  v10 = CDGetLogHandle("client");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = mach_absolute_time();
    v27.f_bsize = 134217984;
    *&v27.f_iosize = *&gTimebaseConversion * (v11 - v7) / 1000000000.0;
    _os_log_impl(&dword_1BA7F1000, v10, OS_LOG_TYPE_DEFAULT, "consumeStream Time taken: %f", &v27, 0xCu);
  }

LABEL_10:
}

@end