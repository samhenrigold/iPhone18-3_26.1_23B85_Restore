@interface MFStream
+ (id)_networkDispatchQueue;
+ (id)networkThread;
+ (void)setNetworkThread:(id)thread;
- (BOOL)isOpen;
- (BOOL)setProperty:(id)property forKey:(id)key;
- (id)_copyPropertyForKey:(id)key;
- (id)initCallBack:(id)back onDispatchQueue:(id)queue;
- (id)propertyForKey:(id)key;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (int64_t)write:(const char *)write maxLength:(unint64_t)length;
- (void)_closeAndReleaseStream:(id)stream logMessage:(id)message;
- (void)_readBytesFromStream;
- (void)close;
- (void)dealloc;
- (void)openToHostName:(id)name port:(int64_t)port;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation MFStream

+ (id)networkThread
{
  v8 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&NetworkThreadLock);
  v2 = NetworkThread;
  if (!NetworkThread)
  {
    v6 = 0;
    memset(&v7, 0, sizeof(v7));
    v3 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
    pthread_attr_init(&v7);
    pthread_attr_setdetachstate(&v7, 2);
    pthread_create(&v6, &v7, _MFSocketNetworkThread, v3);
    [v3 lockWhenCondition:1];
    [v3 unlock];

    v2 = NetworkThread;
  }

  v4 = v2;
  pthread_mutex_unlock(&NetworkThreadLock);
  return v4;
}

+ (void)setNetworkThread:(id)thread
{
  if (!NetworkThread)
  {
    pthread_mutex_lock(&NetworkThreadLock);
    if (!NetworkThread)
    {
      NetworkThread = thread;
    }

    pthread_mutex_unlock(&NetworkThreadLock);
  }
}

+ (id)_networkDispatchQueue
{
  result = _networkDispatchQueue_NetworkDispatchQueue;
  if (!_networkDispatchQueue_NetworkDispatchQueue)
  {
    networkThread = [objc_opt_class() networkThread];
    if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
    {
      result = dispatch_queue_create("MFStreamDispatchQueue", 0);
      _networkDispatchQueue_NetworkDispatchQueue = result;
    }

    else
    {
      v6 = [self methodSignatureForSelector:a2];
      v7 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v6];
      [v7 setTarget:self];
      [v7 setSelector:a2];
      [v7 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
      return _networkDispatchQueue_NetworkDispatchQueue;
    }
  }

  return result;
}

- (id)initCallBack:(id)back onDispatchQueue:(id)queue
{
  v13 = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = MFStream;
  v6 = [(MFStream *)&v10 init];
  if (v6)
  {
    if (queue)
    {
      dispatch_retain(queue);
    }

    else
    {
      queue = dispatch_queue_create(0, 0);
    }

    v6->_location = queue;
    if (back)
    {
      backCopy = back;
    }

    else
    {
      backCopy = &__block_literal_global;
    }

    v6->_callback = _Block_copy(backCopy);
    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v12 = v6;
      _os_log_impl(&dword_258BDA000, v8, OS_LOG_TYPE_INFO, "#Streams (%p) created", buf, 0xCu);
    }

    v6->_condition = objc_alloc_init(MEMORY[0x277CCA928]);
  }

  return v6;
}

- (void)dealloc
{
  [(MFStream *)self close];
  location = self->_location;
  if (location)
  {
    dispatch_release(location);
    self->_location = 0;
  }

  callback = self->_callback;
  if (callback)
  {
    _Block_release(callback);
    self->_callback = 0;
  }

  v5 = MFLogGeneral();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [MFStream dealloc];
  }

  v6.receiver = self;
  v6.super_class = MFStream;
  [(MFStream *)&v6 dealloc];
}

- (BOOL)isOpen
{
  if (self->_length)
  {
    return 1;
  }

  if (self->_rStream)
  {
    return self->_wStream != 0;
  }

  return 0;
}

- (id)_copyPropertyForKey:(id)key
{
  v14 = 0;
  keyCopy = key;
  networkThread = [objc_opt_class() networkThread];
  if (([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}] & 1) == 0)
  {
    v10 = [(MFStream *)self methodSignatureForSelector:a2];
    v11 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v10];
    [v11 setTarget:self];
    [v11 setSelector:a2];
    [v11 setArgument:&keyCopy atIndex:2];
    [v11 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
    [v11 getReturnValue:&v14];
    return v14;
  }

  properties = self->_properties;
  if (!properties)
  {
    v12 = [(NSInputStream *)self->_rStream propertyForKey:key];
    if (!v12)
    {
      v12 = [(NSOutputStream *)self->_wStream propertyForKey:key];
    }

    v13 = v12;
    return v12;
  }

  v8 = [(NSMutableDictionary *)properties objectForKey:key];

  return v8;
}

- (id)propertyForKey:(id)key
{
  v3 = [(MFStream *)self _copyPropertyForKey:key];

  return v3;
}

- (BOOL)setProperty:(id)property forKey:(id)key
{
  v27 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  propertyCopy = property;
  v18 = 1;
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    rStream = self->_rStream;
    if (rStream || (rStream = self->_wStream) != 0)
    {
      v10 = [rStream setProperty:property forKey:key];
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = "out";
        *buf = 134218498;
        selfCopy = self;
        if (v10)
        {
          v12 = "";
        }

        v23 = 2112;
        keyCopy2 = key;
        v25 = 2080;
        v26 = v12;
        _os_log_debug_impl(&dword_258BDA000, v11, OS_LOG_TYPE_DEBUG, "#Streams (%p) set property %@ with%s success", buf, 0x20u);
      }
    }

    else
    {
      properties = self->_properties;
      if (!properties)
      {
        properties = objc_alloc_init(MEMORY[0x277CBEB38]);
        self->_properties = properties;
      }

      [(NSMutableDictionary *)properties setValue:property forKey:key];
      v17 = MFLogGeneral();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [MFStream setProperty:forKey:];
      }

      LOBYTE(v10) = 1;
    }
  }

  else
  {
    v13 = [(MFStream *)self methodSignatureForSelector:a2];
    v14 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v13];
    [v14 setTarget:self];
    [v14 setSelector:a2];
    [v14 setArgument:&propertyCopy atIndex:2];
    [v14 setArgument:&keyCopy atIndex:3];
    [v14 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
    [v14 getReturnValue:&v18];
    LOBYTE(v10) = v18;
  }

  return v10 & 1;
}

- (void)openToHostName:(id)name port:(int64_t)port
{
  v36 = *MEMORY[0x277D85DE8];
  portCopy = port;
  nameCopy = name;
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    if (self->_rStream || self->_wStream)
    {
      [MFStream openToHostName:port:];
    }

    v9 = MFLogGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 134218498;
      selfCopy = self;
      v32 = 2112;
      nameCopy2 = name;
      v34 = 2048;
      portCopy2 = port;
      _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_INFO, "#Streams Opening stream (%p) to %@:%ld", buf, 0x20u);
    }

    v28[0] = @"stream";
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
    nameCopy3 = &stru_2869ED3E0;
    if (name)
    {
      nameCopy3 = name;
    }

    v29[0] = v10;
    v29[1] = nameCopy3;
    v28[1] = @"host";
    v28[2] = @"port";
    v29[2] = [MEMORY[0x277CCABB0] numberWithInteger:port];
    +[MFPowerController powerlog:eventData:](MFPowerController, "powerlog:eventData:", @"StreamOpen", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:3]);

    self->_error = 0;
    [(MFStream *)self _createPairWithSocketToHostName:name port:port];
    [(NSInputStream *)self->_rStream setDelegate:self];
    [(NSOutputStream *)self->_wStream setDelegate:self];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    properties = self->_properties;
    v13 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(properties);
          }

          [(NSInputStream *)self->_rStream setProperty:[(NSMutableDictionary *)self->_properties objectForKey:*(*(&v21 + 1) + 8 * i)] forKey:*(*(&v21 + 1) + 8 * i)];
        }

        v14 = [(NSMutableDictionary *)properties countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v14);
    }

    self->_properties = 0;
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    v18 = *MEMORY[0x277CBE640];
    [(NSInputStream *)self->_rStream scheduleInRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];
    [(NSOutputStream *)self->_wStream scheduleInRunLoop:currentRunLoop forMode:v18];
    [(NSInputStream *)self->_rStream open];
    [(NSOutputStream *)self->_wStream open];
  }

  else
  {
    v19 = [(MFStream *)self methodSignatureForSelector:a2];
    v20 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v19];
    [v20 setTarget:self];
    [v20 setSelector:a2];
    [v20 retainArguments];
    [v20 setArgument:&nameCopy atIndex:2];
    [v20 setArgument:&portCopy atIndex:3];
    [v20 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:0];
  }
}

- (void)_closeAndReleaseStream:(id)stream logMessage:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  if (stream)
  {
    [stream setDelegate:0];
    currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
    [stream removeFromRunLoop:currentRunLoop forMode:*MEMORY[0x277CBE640]];
    [stream close];

    if (message)
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 134218242;
        selfCopy2 = self;
        v14 = 2112;
        messageCopy = message;
        _os_log_impl(&dword_258BDA000, v8, OS_LOG_TYPE_INFO, "#Streams (%p) %@", buf, 0x16u);
      }
    }

    if (!self->_rStream && !self->_wStream)
    {
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        selfCopy2 = self;
        _os_log_impl(&dword_258BDA000, v9, OS_LOG_TYPE_INFO, "#Streams (%p) has closed", buf, 0xCu);
      }

      v10[0] = @"stream";
      v11[0] = [MEMORY[0x277CCACA8] stringWithFormat:@"%p", self];
      v10[1] = @"rx";
      v11[1] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesRead];
      v10[2] = @"tx";
      v11[2] = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_bytesWritten];
      +[MFPowerController powerlog:eventData:](MFPowerController, "powerlog:eventData:", @"StreamClose", [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3]);
    }
  }
}

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  v38 = *MEMORY[0x277D85DE8];
  lengthCopy = length;
  readCopy = read;
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    length = self->_length;
    if (length)
    {
      if (length >= length)
      {
        lengthCopy2 = self->_length;
      }

      else
      {
        lengthCopy2 = length;
      }

      memmove(read, self->_buffer, lengthCopy2);
      buffer = self->_buffer;
      v12 = self->_length - lengthCopy2;
      self->_length = v12;
      memmove(buffer, &buffer[lengthCopy2], v12);
      v13 = MFLogGeneral();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [MFStream read:maxLength:];
      }

      self->_bytesRead += lengthCopy2;
      self->_dispatchedBytesAvailable = 0;
      if (!self->_streamCanRead)
      {
        if (self->_length)
        {
          v17 = MFLogGeneral();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            [MFStream read:maxLength:];
          }

          self->_dispatchedBytesAvailable = 1;
          location = self->_location;
          v28[0] = MEMORY[0x277D85DD0];
          v28[1] = 3221225472;
          v28[2] = __27__MFStream_read_maxLength___block_invoke;
          v28[3] = &unk_2798B61C0;
          v28[4] = self;
          v19 = v28;
        }

        else
        {
          if ([(MFStream *)self isOpen])
          {
            return lengthCopy2;
          }

          if (self->_error)
          {
            v20 = @"MFStreamEventErrorOccurred";
          }

          else
          {
            v20 = @"MFStreamEventEndEncountered";
          }

          v21 = MFLogGeneral();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            error = self->_error;
            if (error)
            {
              v24 = @" error: ";
            }

            else
            {
              v24 = &stru_2869ED3E0;
            }

            ef_publicDescription = [(NSError *)error ef_publicDescription];
            *buf = 134218754;
            if (ef_publicDescription)
            {
              v26 = ef_publicDescription;
            }

            else
            {
              v26 = &stru_2869ED3E0;
            }

            *&buf[4] = self;
            v32 = 2112;
            v33 = v20;
            v34 = 2112;
            v35 = v24;
            v36 = 2114;
            v37 = v26;
            _os_log_error_impl(&dword_258BDA000, v21, OS_LOG_TYPE_ERROR, "#Streams (%p) dispatching %@%@%{public}@", buf, 0x2Au);
          }

          location = self->_location;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __27__MFStream_read_maxLength___block_invoke_60;
          block[3] = &unk_2798B61E8;
          block[4] = self;
          block[5] = v20;
          v19 = block;
        }

        dispatch_async(location, v19);
        return lengthCopy2;
      }

      [(MFStream *)self _readBytesFromStream];
    }

    else
    {
      return -1;
    }
  }

  else
  {
    *buf = 0;
    v14 = objc_autoreleasePoolPush();
    v15 = [(MFStream *)self methodSignatureForSelector:a2];
    v16 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v15];
    [v16 setTarget:self];
    [v16 setSelector:a2];
    [v16 setArgument:&readCopy atIndex:2];
    [v16 setArgument:&lengthCopy atIndex:3];
    [v16 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
    [v16 getReturnValue:buf];
    objc_autoreleasePoolPop(v14);
    return *buf;
  }

  return lengthCopy2;
}

- (int64_t)write:(const char *)write maxLength:(unint64_t)length
{
  v35 = *MEMORY[0x277D85DE8];
  lengthCopy = length;
  writeCopy = write;
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    wStream = self->_wStream;
    if (wStream)
    {
      if (!self->_streamCanWrite)
      {
        [MFStream write:maxLength:];
      }

      self->_streamCanWrite = 0;
      v10 = [(NSOutputStream *)wStream write:write maxLength:length];
      v11 = MFLogGeneral();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        [MFStream write:maxLength:];
      }

      self->_bytesWritten += v10;
      if (v10 < 0)
      {
        v12 = self->_wStream;
        self->_wStream = 0;
        if (!self->_error)
        {
          self->_error = [(NSOutputStream *)v12 streamError];
        }

        [(MFStream *)self _closeAndReleaseStream:v12 logMessage:@"closed the write half"];
        if (![(MFStream *)self isOpen])
        {
          if (self->_error)
          {
            v13 = @"MFStreamEventErrorOccurred";
          }

          else
          {
            v13 = @"MFStreamEventEndEncountered";
          }

          v14 = MFLogGeneral();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            error = self->_error;
            if (error)
            {
              v22 = @" error: ";
            }

            else
            {
              v22 = &stru_2869ED3E0;
            }

            ef_publicDescription = [(NSError *)error ef_publicDescription];
            *buf = 134218754;
            if (ef_publicDescription)
            {
              v24 = ef_publicDescription;
            }

            else
            {
              v24 = &stru_2869ED3E0;
            }

            *&buf[4] = self;
            v29 = 2112;
            lengthCopy2 = v13;
            v31 = 2112;
            v32 = v22;
            v33 = 2114;
            v34 = v24;
            _os_log_error_impl(&dword_258BDA000, v14, OS_LOG_TYPE_ERROR, "#Streams (%p) dispatching %@%@%{public}@", buf, 0x2Au);
          }

          location = self->_location;
          v25[0] = MEMORY[0x277D85DD0];
          v25[1] = 3221225472;
          v25[2] = __28__MFStream_write_maxLength___block_invoke;
          v25[3] = &unk_2798B61E8;
          v25[4] = self;
          v25[5] = v13;
          dispatch_async(location, v25);
        }
      }
    }

    else
    {
      v19 = MFLogGeneral();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 134218240;
        *&buf[4] = self;
        v29 = 2048;
        lengthCopy2 = length;
        _os_log_impl(&dword_258BDA000, v19, OS_LOG_TYPE_INFO, "#Streams (%p) no longer has an open write stream, aborting write of %lu bytes", buf, 0x16u);
      }

      return -1;
    }
  }

  else
  {
    *buf = 0;
    v16 = objc_autoreleasePoolPush();
    v17 = [(MFStream *)self methodSignatureForSelector:a2];
    v18 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v17];
    [v18 setTarget:self];
    [v18 setSelector:a2];
    [v18 setArgument:&writeCopy atIndex:2];
    [v18 setArgument:&lengthCopy atIndex:3];
    [v18 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
    [v18 getReturnValue:buf];
    objc_autoreleasePoolPop(v16);
    return *buf;
  }

  return v10;
}

- (void)close
{
  networkThread = [objc_opt_class() networkThread];
  if ([networkThread isEqual:{objc_msgSend(MEMORY[0x277CCACC8], "currentThread")}])
  {
    *&self->_streamCanRead = 0;
    rStream = self->_rStream;
    self->_rStream = 0;
    if (!self->_error)
    {
      self->_error = [(NSInputStream *)rStream streamError];
    }

    [(MFStream *)self _closeAndReleaseStream:rStream logMessage:0];
    wStream = self->_wStream;
    self->_wStream = 0;
    if (!self->_error)
    {
      self->_error = [(NSOutputStream *)wStream streamError];
    }

    [(MFStream *)self _closeAndReleaseStream:wStream logMessage:0];
    free(self->_buffer);
    self->_capacity = 0;
    self->_length = 0;
    self->_buffer = 0;
  }

  else
  {
    v7 = [(MFStream *)self methodSignatureForSelector:a2];
    v8 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v7];
    [v8 setTarget:self];
    [v8 setSelector:a2];

    [v8 performSelector:sel_invoke onThread:networkThread withObject:0 waitUntilDone:1];
  }
}

- (void)_readBytesFromStream
{
  v32 = *MEMORY[0x277D85DE8];
  capacity = self->_capacity;
  p_length = &self->_length;
  v5 = capacity - self->_length;
  if (!(capacity >> 17) && v5 <= 0x7FF)
  {
    v6 = capacity >> 16 ? capacity + 0x8000 : 2 * capacity;
    v7 = capacity ? v6 : 0x2000;
    v8 = malloc_type_realloc(self->_buffer, v7, 0x3A890463uLL);
    if (v8)
    {
      self->_buffer = v8;
      self->_capacity = v7;
      v5 = v7 - self->_length;
      v9 = MFLogGeneral();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        [MFStream _readBytesFromStream];
      }
    }
  }

  if (v5 < 0x401)
  {
    if (!*p_length)
    {
      return;
    }

    goto LABEL_22;
  }

  self->_streamCanRead = 0;
  v10 = [(NSInputStream *)self->_rStream read:&self->_buffer[self->_length] maxLength:v5];
  v11 = MFLogGeneral();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [MFStream _readBytesFromStream];
  }

  if (v10 >= 1)
  {
    *p_length += v10;
LABEL_22:
    if (self->_dispatchedBytesAvailable)
    {
      return;
    }

    v13 = MFLogGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [MFStream read:maxLength:];
    }

    self->_dispatchedBytesAvailable = 1;
    location = self->_location;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__MFStream__readBytesFromStream__block_invoke_68;
    block[3] = &unk_2798B61C0;
    block[4] = self;
    v15 = block;
    goto LABEL_26;
  }

  rStream = self->_rStream;
  self->_rStream = 0;
  if (!self->_error)
  {
    self->_error = [(NSInputStream *)rStream streamError];
  }

  [(MFStream *)self _closeAndReleaseStream:rStream logMessage:@"closed the read half"];
  if (self->_length)
  {
    goto LABEL_22;
  }

  if (![(MFStream *)self isOpen])
  {
    if (self->_error)
    {
      v16 = @"MFStreamEventErrorOccurred";
    }

    else
    {
      v16 = @"MFStreamEventEndEncountered";
    }

    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      error = self->_error;
      if (error)
      {
        v19 = @" error: ";
      }

      else
      {
        v19 = &stru_2869ED3E0;
      }

      ef_publicDescription = [(NSError *)error ef_publicDescription];
      *buf = 134218754;
      if (ef_publicDescription)
      {
        v21 = ef_publicDescription;
      }

      else
      {
        v21 = &stru_2869ED3E0;
      }

      selfCopy = self;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v19;
      v30 = 2114;
      v31 = v21;
      _os_log_error_impl(&dword_258BDA000, v17, OS_LOG_TYPE_ERROR, "#Streams (%p) dispatching %@%@%{public}@", buf, 0x2Au);
    }

    location = self->_location;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __32__MFStream__readBytesFromStream__block_invoke;
    v23[3] = &unk_2798B61E8;
    v23[4] = self;
    v23[5] = v16;
    v15 = v23;
LABEL_26:
    dispatch_async(location, v15);
  }
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  v31 = *MEMORY[0x277D85DE8];
  p_rStream = &self->_rStream;
  rStream = self->_rStream;
  if (rStream == stream || self->_wStream == stream)
  {
    v8 = __ROR8__(event - 2, 1);
    if (v8 > 2)
    {
      if (v8 == 3)
      {
        if (!self->_error)
        {
          self->_error = [stream streamError];
        }
      }

      else if (v8 != 7)
      {
        return;
      }

      if (rStream == stream)
      {
        self->_streamCanRead = 0;
        v12 = @"read";
      }

      else
      {
        self->_streamCanWrite = 0;
        p_rStream = &self->_wStream;
        v12 = @"write";
      }

      *p_rStream = 0;
      v13 = @"error: ";
      if (self->_error)
      {
        error = self->_error;
      }

      else
      {
        v13 = @"ended";
        error = &stru_2869ED3E0;
      }

      -[MFStream _closeAndReleaseStream:logMessage:](self, "_closeAndReleaseStream:logMessage:", stream, [MEMORY[0x277CCACA8] stringWithFormat:@"%@ stream %@%@", v12, v13, error]);
      if (![(MFStream *)self isOpen])
      {
        if (self->_error)
        {
          v15 = @"MFStreamEventErrorOccurred";
        }

        else
        {
          v15 = @"MFStreamEventEndEncountered";
        }

        v16 = MFLogGeneral();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          v17 = self->_error;
          if (v17)
          {
            v18 = @" error: ";
          }

          else
          {
            v18 = &stru_2869ED3E0;
          }

          ef_publicDescription = [(NSError *)v17 ef_publicDescription];
          *buf = 134218754;
          if (ef_publicDescription)
          {
            v20 = ef_publicDescription;
          }

          else
          {
            v20 = &stru_2869ED3E0;
          }

          selfCopy = self;
          v25 = 2112;
          v26 = v15;
          v27 = 2112;
          v28 = v18;
          v29 = 2114;
          v30 = v20;
          _os_log_error_impl(&dword_258BDA000, v16, OS_LOG_TYPE_ERROR, "#Streams (%p) dispatching %@%@%{public}@", buf, 0x2Au);
        }

        location = self->_location;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __31__MFStream_stream_handleEvent___block_invoke_85;
        block[3] = &unk_2798B61E8;
        block[4] = self;
        block[5] = v15;
        v11 = block;
LABEL_30:
        dispatch_async(location, v11);
      }
    }

    else
    {
      if (v8)
      {
        if (v8 != 1)
        {
          return;
        }

        self->_streamCanWrite = 1;
        v9 = MFLogGeneral();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          [MFStream stream:handleEvent:];
        }

        location = self->_location;
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __31__MFStream_stream_handleEvent___block_invoke;
        v22[3] = &unk_2798B61C0;
        v22[4] = self;
        v11 = v22;
        goto LABEL_30;
      }

      if (rStream != stream)
      {
        [MFStream stream:handleEvent:];
      }

      self->_streamCanRead = 1;

      [(MFStream *)self _readBytesFromStream];
    }
  }
}

@end