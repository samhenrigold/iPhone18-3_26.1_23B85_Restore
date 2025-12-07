@interface CSSoundInput
- (BOOL)startRecording;
- (CSSoundInput)initWithDeliverSamples:(id)samples;
- (void)commandControlListener:(id)listener didStopUnexpectedly:(BOOL)unexpectedly;
- (void)commandControlListener:(id)listener hasLPCMBufferAvailable:(id)available;
- (void)dealloc;
- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to;
- (void)stopRecording;
@end

@implementation CSSoundInput

- (CSSoundInput)initWithDeliverSamples:(id)samples
{
  samplesCopy = samples;
  v15.receiver = self;
  v15.super_class = CSSoundInput;
  v5 = [(CSSoundInput *)&v15 init];
  if (v5)
  {
    v6 = objc_retainBlock(samplesCopy);
    deliverSamples = v5->_deliverSamples;
    v5->_deliverSamples = v6;

    v8 = objc_alloc_init(CSCommandControlListener);
    csCommandControlListener = v5->_csCommandControlListener;
    v5->_csCommandControlListener = v8;

    [(CSCommandControlListener *)v5->_csCommandControlListener setDelegate:v5];
    v10 = [AFNotifyObserver alloc];
    v11 = [[NSString alloc] initWithUTF8String:"com.apple.siri.client-state-changed"];
    v12 = [v10 initWithName:v11 options:1 queue:gRDServerQueue delegate:v5];
    siriObserver = v5->_siriObserver;
    v5->_siriObserver = v12;

    *&v5->_recording = 0;
  }

  return v5;
}

- (void)dealloc
{
  if ([(CSSoundInput *)self isRecording])
  {
    [(CSSoundInput *)self stopRecording];
  }

  [(CSCommandControlListener *)self->_csCommandControlListener setDelegate:0];
  csCommandControlListener = self->_csCommandControlListener;
  self->_csCommandControlListener = 0;

  deliverSamples = self->_deliverSamples;
  if (deliverSamples)
  {
    self->_deliverSamples = 0;
  }

  v5.receiver = self;
  v5.super_class = CSSoundInput;
  [(CSSoundInput *)&v5 dealloc];
}

- (BOOL)startRecording
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "RDSoundInputImpl_iOS_CS:startRecording", buf, 2u);
  }

  if ([(CSSoundInput *)self isRecording])
  {
    [(CSSoundInput *)self stopRecording];
  }

  v4 = +[RDSoundInputImpl_iOS_Shared isSystemSleeping];
  if (v4)
  {
    v5 = RXOSLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "System is sleeping, so don't start recording", buf, 2u);
    }

    v6 = 0;
  }

  else
  {
    v7 = dispatch_time(0, 3000000000);
    v8 = dispatch_semaphore_create(0);
    csCommandControlListener = self->_csCommandControlListener;
    v10 = +[CSCommandControlListenerOption defaultOption];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000409C;
    v16[3] = &unk_1000FDD00;
    v16[4] = self;
    v5 = v8;
    v17 = v5;
    [(CSCommandControlListener *)csCommandControlListener startListenWithOption:v10 completion:v16];

    v11 = dispatch_semaphore_wait(v5, v7);
    if (v11)
    {
      v12 = RXOSLog(v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Timed out waiting to start CS recording", buf, 2u);
      }
    }

    v13 = RXOSLog(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      recording = self->_recording;
      *buf = 67109120;
      v19 = recording;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Started recording from CS = %d", buf, 8u);
    }

    v6 = self->_recording != 0;
  }

  return v6;
}

- (void)stopRecording
{
  v3 = RXOSLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping to record from CS", buf, 2u);
  }

  v4 = dispatch_time(0, 3000000000);
  v5 = dispatch_semaphore_create(0);
  csCommandControlListener = self->_csCommandControlListener;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10000434C;
  v11[3] = &unk_1000FDD00;
  v11[4] = self;
  v7 = v5;
  v12 = v7;
  [(CSCommandControlListener *)csCommandControlListener stopListenWithCompletion:v11];
  v8 = dispatch_semaphore_wait(v7, v4);
  if (v8)
  {
    v9 = RXOSLog(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Timed out waiting to stop CS recording", buf, 2u);
    }
  }

  v10 = RXOSLog(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stopped to record from CS", buf, 2u);
  }
}

- (void)commandControlListener:(id)listener hasLPCMBufferAvailable:(id)available
{
  listenerCopy = listener;
  availableCopy = available;
  if (!self->_isSiriListeningOrSpeaking || !+[RDSoundInputImpl_iOS_Shared isCarPlayActive])
  {
    bytes = [availableCopy bytes];
    v8 = [availableCopy length];
    deliverSamples = self->_deliverSamples;
    if (deliverSamples)
    {
      if (self->_recording)
      {
        deliverSamples[2](deliverSamples, bytes, v8 >> 1);
      }
    }
  }
}

- (void)commandControlListener:(id)listener didStopUnexpectedly:(BOOL)unexpectedly
{
  unexpectedlyCopy = unexpectedly;
  v6 = RXOSLog(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Stopped unexpectedly", buf, 2u);
  }

  self->_recording = 0;
  if (unexpectedlyCopy)
  {
    if (+[RDSoundInputImpl isCSVADPresent])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100004600;
      block[3] = &unk_1000FDD28;
      block[4] = self;
      dispatch_async(gRDServerQueue, block);
    }
  }
}

- (void)notifyObserver:(id)observer didChangeStateFrom:(unint64_t)from to:(unint64_t)to
{
  v8 = RXOSLog(self);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 134218240;
    fromCopy = from;
    v27 = 2048;
    toCopy = to;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CS notification didChangeStateFrom %lld to %lld ", &v25, 0x16u);
  }

  v10 = RXOSLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"YES";
    if ((to & 4) == 0)
    {
      v11 = @"NO";
    }

    v25 = 138412290;
    fromCopy = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Siri is listening: %@", &v25, 0xCu);
  }

  v13 = RXOSLog(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"YES";
    if ((to & 8) == 0)
    {
      v14 = @"NO";
    }

    v25 = 138412290;
    fromCopy = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Siri is speaking: %@", &v25, 0xCu);
  }

  self->_isSiriListeningOrSpeaking = (to & 0xC) != 0;
  self->_isSiriIdle = to == 0;
  v16 = RXOSLog(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (self->_isSiriIdle)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v25 = 138412290;
    fromCopy = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Siri is idle: %@", &v25, 0xCu);
  }

  v18 = +[RDSoundInputImpl_iOS_Shared isCarPlayActive];
  if (v18)
  {
    v19 = RXOSLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = +[RDSoundInputImpl_iOS_Shared isCarPlayActive];
      v21 = @"NO";
      if (v20)
      {
        v21 = @"YES";
      }

      v25 = 138412290;
      fromCopy = v21;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "CarPlay Active?: %@", &v25, 0xCu);
    }

    if (self->_isSiriIdle)
    {
      if (!self->_recording)
      {
        v23 = RXOSLog(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v25) = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Start recording from CoreSpeech in CarPlay since Siri is Idle", &v25, 2u);
        }

        [(CSSoundInput *)self startRecording];
      }
    }

    else if (self->_recording)
    {
      v24 = RXOSLog(v22);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v25) = 0;
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Stop recording from CoreSpeech in CarPlay since Siri is active", &v25, 2u);
      }

      [(CSSoundInput *)self stopRecording];
    }
  }
}

@end