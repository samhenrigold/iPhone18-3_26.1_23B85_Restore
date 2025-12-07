@interface PSSharedStreamManager
- (BOOL)closeStreamWithKey:(id)key;
- (BOOL)isValidStream:(id)stream;
- (BOOL)openStreamWithKey:(id)key;
- (BOOL)startStreamWithKey:(id)key;
- (BOOL)stopStreamWithKey:(id)key;
- (PSSharedStreamManager)initWithServer:(PSCommsServer *)server device:(id)device machPortName:(id)name gsm:(ps_gsm_s *)gsm;
@end

@implementation PSSharedStreamManager

- (PSSharedStreamManager)initWithServer:(PSCommsServer *)server device:(id)device machPortName:(id)name gsm:(ps_gsm_s *)gsm
{
  deviceCopy = device;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = PSSharedStreamManager;
  v12 = [(PSSharedStreamManager *)&v19 init];
  if (v12)
  {
    v13 = objc_alloc_init(NSMutableDictionary);
    sharedStreams = v12->_sharedStreams;
    v12->_sharedStreams = v13;

    v15 = dispatch_queue_create("Stream_manager.queue", 0);
    creatorQueue = v12->_creatorQueue;
    v12->_creatorQueue = v15;

    objc_storeStrong(&v12->_currDevice, device);
    v12->_gsm = gsm;
    [nameCopy UTF8String];
    ps_comms_register_callback_with_entitlements();
    v17 = v12;
  }

  return v12;
}

- (BOOL)isValidStream:(id)stream
{
  streamCopy = stream;
  v5 = [(PLSDevice *)self->_currDevice hasSensor:streamCopy];
  if (v5)
  {
    v7 = [(PLSDevice *)self->_currDevice propertiesForKey:streamCopy];
    isSharedStream = [v7 isSharedStream];
  }

  else
  {
    v9 = sub_100013BF4(v5, v6);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = streamCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No stream on this device for key (%@)", &v11, 0xCu);
    }

    isSharedStream = 0;
  }

  return isSharedStream;
}

- (BOOL)startStreamWithKey:(id)key
{
  keyCopy = key;
  if ([(PSSharedStreamManager *)self isValidStream:keyCopy])
  {
    v5 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:keyCopy];
    v7 = v5;
    if (v5)
    {
      if ([v5 startCount])
      {
        [v7 setStartCount:{objc_msgSend(v7, "startCount") + 1}];
        start = 1;
      }

      else
      {
        stream = [v7 stream];

        if (stream)
        {
          stream2 = [v7 stream];
          start = [stream2 start];
        }

        else
        {
          start = 1;
        }

        v12 = [v7 setStartCount:1];
        v14 = sub_100013BF4(v12, v13);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Starting stream for key", v16, 2u);
        }
      }
    }

    else
    {
      v9 = sub_100013BF4(0, v6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No stream for key to start", buf, 2u);
      }

      start = 0;
    }
  }

  else
  {
    start = 0;
  }

  return start;
}

- (BOOL)stopStreamWithKey:(id)key
{
  keyCopy = key;
  if ([(PSSharedStreamManager *)self isValidStream:keyCopy])
  {
    v5 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:keyCopy];
    v7 = v5;
    if (v5)
    {
      startCount = [v5 startCount];
      if (startCount)
      {
        if ([v7 startCount] == 1)
        {
          [v7 setStartCount:0];
          stream = [v7 stream];

          if (stream)
          {
            stream2 = [v7 stream];
            stop = [stream2 stop];
          }

          else
          {
            stop = 1;
          }

          v18 = sub_100013BF4(v11, v12);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *v20 = 0;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Stopping stream for key", v20, 2u);
          }
        }

        else
        {
          [v7 setStartCount:{objc_msgSend(v7, "startCount") - 1}];
          stop = 1;
        }

        goto LABEL_19;
      }

      v15 = sub_100013BF4(startCount, v9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v16 = "Stream for key is already stopped";
        v17 = buf;
        goto LABEL_12;
      }
    }

    else
    {
      v15 = sub_100013BF4(0, v6);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v22 = 0;
        v16 = "No stream for key to stop";
        v17 = &v22;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v16, v17, 2u);
      }
    }

    stop = 0;
LABEL_19:

    goto LABEL_20;
  }

  stop = 0;
LABEL_20:

  return stop;
}

- (BOOL)closeStreamWithKey:(id)key
{
  keyCopy = key;
  if ([(PSSharedStreamManager *)self isValidStream:keyCopy])
  {
    v5 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:keyCopy];
    v7 = v5;
    if (v5)
    {
      if ([v5 openCount] > 1)
      {
        [v7 setOpenCount:{objc_msgSend(v7, "openCount") - 1}];
        close = 1;
      }

      else
      {
        stream = [v7 stream];

        if (stream)
        {
          stream2 = [v7 stream];
          close = [stream2 close];
        }

        else
        {
          close = 1;
        }

        v14 = sub_100013BF4(v9, v10);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v16 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Closing stream for key", v16, 2u);
        }

        [(NSMutableDictionary *)self->_sharedStreams removeObjectForKey:keyCopy];
      }
    }

    else
    {
      v13 = sub_100013BF4(0, v6);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Stream for key is already closed", buf, 2u);
      }

      close = 0;
    }
  }

  else
  {
    close = 0;
  }

  return close;
}

- (BOOL)openStreamWithKey:(id)key
{
  keyCopy = key;
  v5 = [(PSSharedStreamManager *)self isValidStream:keyCopy];
  if (v5)
  {
    v6 = [(NSMutableDictionary *)self->_sharedStreams objectForKeyedSubscript:keyCopy];
    if (v6)
    {
      v7 = v6;
      [(StreamInfo *)v6 setOpenCount:[(StreamInfo *)v6 openCount]+ 1];
    }

    else
    {
      v7 = [[StreamInfo alloc] initWithKey:keyCopy device:self->_currDevice manager:self];
      [(StreamInfo *)v7 setOpenCount:[(StreamInfo *)v7 openCount]+ 1];
      [(NSMutableDictionary *)self->_sharedStreams setObject:v7 forKeyedSubscript:keyCopy];
    }
  }

  return v5;
}

@end