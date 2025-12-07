@interface MRAPRecordingEndpoint
+ (id)sharedEndpoint;
- (MRAPRecordingEndpoint)init;
- (NSArray)delegates;
- (void)_inputDeviceConnectedWithDeviceID:(unsigned int)d;
- (void)_inputDeviceDisconnectedWithDeviceID:(unsigned int)d;
- (void)_voiceDataReceivedForDeviceWithID:(unsigned int)d withBuffer:(void *)buffer time:(id)time gain:(float)gain;
- (void)addDelegate:(id)delegate;
- (void)dealloc;
- (void)removeAllDelegates;
- (void)removeDelegate:(id)delegate;
@end

@implementation MRAPRecordingEndpoint

+ (id)sharedEndpoint
{
  if (qword_CF60 != -1)
  {
    sub_2F3C();
  }

  v3 = qword_CF68;

  return v3;
}

- (MRAPRecordingEndpoint)init
{
  v10.receiver = self;
  v10.super_class = MRAPRecordingEndpoint;
  v2 = [(MRAPRecordingEndpoint *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_class();
    Name = class_getName(v3);
    v5 = dispatch_queue_create(Name, 0);
    serialQueue = v2->_serialQueue;
    v2->_serialQueue = v5;

    v7 = [[NSPointerArray alloc] initWithOptions:5];
    delegates = v2->_delegates;
    v2->_delegates = v7;

    [(MRAPRecordingEndpoint *)v2 _setupVoiceRecordingEndpoint];
  }

  return v2;
}

- (void)dealloc
{
  [(MRAPRecordingEndpoint *)self _tearDownVoiceRecordingEndpoint];
  v3.receiver = self;
  v3.super_class = MRAPRecordingEndpoint;
  [(MRAPRecordingEndpoint *)&v3 dealloc];
}

- (NSArray)delegates
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_F64;
  v10 = sub_F74;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_F7C;
  v5[3] = &unk_8280;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addDelegate:(id)delegate
{
  delegateCopy = delegate;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_113C;
  v7[3] = &unk_82A8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_11E0;
  v7[3] = &unk_82A8;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)removeAllDelegates
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_13A4;
  block[3] = &unk_82D0;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)_inputDeviceConnectedWithDeviceID:(unsigned int)d
{
  v3 = *&d;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2F50(v3, v5);
  }

  delegates = [(MRAPRecordingEndpoint *)self delegates];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [delegates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(delegates);
        }

        [*(*(&v11 + 1) + 8 * v10) recordingEndpoint:self inputDeviceConnectedWithID:v3];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [delegates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_inputDeviceDisconnectedWithDeviceID:(unsigned int)d
{
  v3 = *&d;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_2FC8(v3, v5);
  }

  delegates = [(MRAPRecordingEndpoint *)self delegates];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [delegates countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(delegates);
        }

        [*(*(&v11 + 1) + 8 * v10) recordingEndpoint:self inputDeviceDisconnectedWithID:v3];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [delegates countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)_voiceDataReceivedForDeviceWithID:(unsigned int)d withBuffer:(void *)buffer time:(id)time gain:(float)gain
{
  var1 = time.var1;
  var0 = time.var0;
  v10 = *&d;
  delegates = [(MRAPRecordingEndpoint *)self delegates];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v13)
  {
    v15 = v13;
    v16 = *v19;
    do
    {
      v17 = 0;
      do
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(delegates);
        }

        *&v14 = gain;
        [*(*(&v18 + 1) + 8 * v17) recordingEndpoint:self inputDeviceWithID:v10 receivedAudioBuffer:buffer withTime:var0 gain:{var1, v14}];
        v17 = v17 + 1;
      }

      while (v15 != v17);
      v15 = [delegates countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

@end