@interface APCarPlayAVVCDevice
- (APCarPlayAVVCDevice)initWithXPCClient:(OpaqueFigXPCRemoteClient *)client;
- (id)pickDefaultFormat;
- (int)readAndSendPacketToAVVC;
- (int)readCompressedBuffer:(id *)buffer numOutputSamples:(unsigned int *)samples;
- (int)readPCMBuffer:(id *)buffer numOutputSamples:(unsigned int *)samples;
- (int)readSupportedFormats;
- (void)actionCompleted:(id)completed WithResult:(int)result;
- (void)dealloc;
- (void)handleNotification:(__CFString *)notification fromCenter:(__CFNotificationCenter *)center fromObject:(const void *)object withUserInfo:(__CFDictionary *)info;
- (void)insertStreamStartTimestamp:(id)timestamp returnOptions:(const __CFDictionary *)options;
- (void)sendAllAvailableAudioDataToAVVC;
- (void)startRecordingWithSettings:(id)settings withCompletionBlock:(id)block;
- (void)stopRecordingWithCompletionBlock:(id)block;
- (void)stopRecordingWithOptionalForcedError:(int)error;
@end

@implementation APCarPlayAVVCDevice

- (APCarPlayAVVCDevice)initWithXPCClient:(OpaqueFigXPCRemoteClient *)client
{
  v20.receiver = self;
  v20.super_class = APCarPlayAVVCDevice;
  v4 = [(APCarPlayAVVCDevice *)&v20 init];
  v5 = v4;
  if (!v4)
  {
    sub_3994();
    return v5;
  }

  if (!client)
  {
    v4->_remote.client = 0;
    goto LABEL_24;
  }

  v6 = CFRetain(client);
  v5->_remote.client = v6;
  if (!v6)
  {
LABEL_24:
    v7 = sub_3938();
    goto LABEL_19;
  }

  v7 = APEndpointCarPlayRemoteCreate();
  if (v7)
  {
    v18 = v7;
    if (v7 == -6720)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, v5, sub_1C68, @"avvcDevice_ConnectionLost", v5->_remote.endpoint, CFNotificationSuspensionBehaviorDeliverImmediately);
  v7 = APEndpointStreamCarPlayAudioRemoteCreate();
  if (v7)
  {
    v18 = v7;
    if (v7 == -6720)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12)
  {
    v18 = -12782;
LABEL_17:
    v7 = APSLogErrorAt();
    goto LABEL_18;
  }

  v13 = v12(CMBaseObject, kFigEndpointProperty_ID, 0, &v5->_deviceIdentifier);
  if (v13)
  {
    v18 = v13;
    goto LABEL_17;
  }

  readSupportedFormats = [(APCarPlayAVVCDevice *)v5 readSupportedFormats];
  if (readSupportedFormats)
  {
    v18 = readSupportedFormats;
    v7 = sub_388C(readSupportedFormats);
LABEL_18:
    if (v18 != -6720)
    {
LABEL_35:
      if (dword_CAE0 <= 90 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
      {
        sub_38F4(v18);
      }

LABEL_38:

      return 0;
    }

LABEL_19:
    if (dword_CAE0 <= 30)
    {
      if (dword_CAE0 != -1 || (v7 = _LogCategory_Initialize(), v7))
      {
        sub_3964(v7, v8, v9);
      }
    }

    goto LABEL_38;
  }

  v5->_dataProcessing.avvcCompletionBlock = 0;
  v5->_dataProcessing.isActive = 0;
  CFAllocatorGetDefault();
  v15 = APSPowerAssertionCreate();
  v5->_dataProcessing.powerAssertion = v15;
  if (!v15)
  {
    v18 = -6718;
LABEL_34:
    APSLogErrorAt();
    goto LABEL_35;
  }

  v16 = FigDispatchQueueCreateWithPriority();
  v5->_dataProcessing.queue = v16;
  if (!v16)
  {
    v18 = -6728;
    goto LABEL_34;
  }

  v17 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v16);
  v5->_dataProcessing.timer = v17;
  if (!v17)
  {
    v18 = -6718;
    goto LABEL_34;
  }

  dispatch_set_context(v17, v5);
  dispatch_source_set_event_handler_f(v5->_dataProcessing.timer, j__objc_msgSend_sendAllAvailableAudioDataToAVVC);
  if (dword_CAE0 <= 30 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
  {
    sub_38B4(v5);
  }

  return v5;
}

- (void)dealloc
{
  if (dword_CAE0 <= 30 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
  {
    sub_39C0(self, a2, v2);
  }

  [(APCarPlayAVVCDevice *)self stopRecordingWithOptionalForcedError:0];
  timer = self->_dataProcessing.timer;
  if (timer)
  {
    if (!self->_dataProcessing.isActive)
    {
      dispatch_resume(timer);
    }

    dispatch_source_cancel_and_wait();
    v5 = self->_dataProcessing.timer;
    if (v5)
    {
      dispatch_release(v5);
      self->_dataProcessing.timer = 0;
    }
  }

  queue = self->_dataProcessing.queue;
  if (queue)
  {
    dispatch_release(queue);
    self->_dataProcessing.queue = 0;
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, @"avvcDevice_ConnectionLost", self->_remote.endpoint);
  powerAssertion = self->_dataProcessing.powerAssertion;
  if (powerAssertion)
  {
    CFRelease(powerAssertion);
    self->_dataProcessing.powerAssertion = 0;
  }

  endpoint = self->_remote.endpoint;
  if (endpoint)
  {
    CFRelease(endpoint);
    self->_remote.endpoint = 0;
  }

  endpointStream = self->_remote.endpointStream;
  if (endpointStream)
  {
    CFRelease(endpointStream);
    self->_remote.endpointStream = 0;
  }

  xpcAudioSink = self->_remote.xpcAudioSink;
  if (xpcAudioSink)
  {
    CFRelease(xpcAudioSink);
    self->_remote.xpcAudioSink = 0;
  }

  client = self->_remote.client;
  if (client)
  {
    CFRelease(client);
  }

  v13.receiver = self;
  v13.super_class = APCarPlayAVVCDevice;
  [(APCarPlayAVVCDevice *)&v13 dealloc];
}

- (void)insertStreamStartTimestamp:(id)timestamp returnOptions:(const __CFDictionary *)options
{
  v6 = mach_absolute_time();
  *options = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v8 = Mutable;
    Int64 = CFDictionaryGetInt64();
    v12 = Int64;
    if (dword_CAE0 > 50)
    {
      if (!Int64)
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (dword_CAE0 != -1 || _LogCategory_Initialize())
      {
        sub_3A3C(v12, v10, v11);
      }

      if (!v12)
      {
        if (dword_CAE0 <= 50)
        {
          if (dword_CAE0 != -1 || (v12 = v6, _LogCategory_Initialize()))
          {
            sub_3AB4(v6, v10, v11);
            v12 = v6;
          }

LABEL_20:
          if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
          {
            sub_3AF0(v6, v12);
          }

          goto LABEL_25;
        }

LABEL_24:
        v12 = v6;
LABEL_25:
        self->_dataProcessing.streamStartTimestamp = v12;
        CFDictionarySetInt64();
        *options = v8;
        return;
      }
    }

    CFPreferenceNumberWithDefault = FigGetCFPreferenceNumberWithDefault();
    v14 = FigGetCFPreferenceNumberWithDefault();
    if (v14 >= CFPreferenceNumberWithDefault)
    {
      v15 = CFPreferenceNumberWithDefault;
    }

    else
    {
      v15 = v14;
    }

    if (v15)
    {
      v16 = v15;
      if (v12 > MillisecondsToUpTicks())
      {
        if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
        {
          sub_3A78(v16, v17, v18);
        }

        v12 -= MillisecondsToUpTicks();
      }
    }

    goto LABEL_20;
  }

  sub_3B68();
}

- (void)startRecordingWithSettings:(id)settings withCompletionBlock:(id)block
{
  queue = self->_dataProcessing.queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2124;
  block[3] = &unk_8440;
  block[5] = settings;
  block[6] = block;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)stopRecordingWithCompletionBlock:(id)block
{
  queue = self->_dataProcessing.queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_28F8;
  v5[3] = &unk_8490;
  v5[4] = self;
  v5[5] = block;
  dispatch_sync(queue, v5);
  [(APCarPlayAVVCDevice *)self stopRecordingWithOptionalForcedError:0];
}

- (int)readSupportedFormats
{
  theArray = 0;
  cf = 0;
  CMBaseObject = FigEndpointStreamGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
    v17 = -12782;
LABEL_14:
    APSLogErrorAt();
    goto LABEL_15;
  }

  v5 = v4(CMBaseObject, kAPEndpointStreamCarPlayAudioProperty_CarPlayAudioFormats, 0, &cf);
  if (v5)
  {
    v17 = v5;
    goto LABEL_14;
  }

  v6 = APCarPlayAudioFormatsCopyAudioFormatInfosForStreamAndType();
  if (v6)
  {
    v17 = v6;
    sub_3E4C(v6);
  }

  else
  {
    Count = CFArrayGetCount(theArray);
    v8 = [[NSMutableArray alloc] initWithCapacity:Count];
    if (v8)
    {
      v9 = v8;
      if (Count < 1)
      {
LABEL_12:
        self->supportedFormats = v9;
        v17 = 0;
        self->format = [(APCarPlayAVVCDevice *)self pickDefaultFormat];
        goto LABEL_15;
      }

      v10 = 0;
      v11 = 1;
      while (1)
      {
        CFArrayGetValueAtIndex(theArray, v10);
        v21 = 0;
        v19 = 0u;
        v20 = 0u;
        Description = APCarPlayAudioFormatInfoGetDescription();
        v13 = *(Description + 32);
        v14 = *(Description + 16);
        v19 = *Description;
        v20 = v14;
        v21 = v13;
        if (DWORD2(v19) == 1819304813)
        {
          HIDWORD(v19) &= ~2u;
        }

        v15 = [[AVAudioFormat alloc] initWithStreamDescription:&v19];
        [(NSArray *)v9 setObject:v15 atIndexedSubscript:v10, v19];
        if (![(NSArray *)v9 objectAtIndexedSubscript:v10])
        {
          break;
        }

        v10 = v11;
        if (Count <= v11++)
        {
          goto LABEL_12;
        }
      }

      sub_3E74();
    }

    else
    {
      sub_3EA0();
    }

    v17 = 0;
  }

LABEL_15:
  if (cf)
  {
    CFRelease(cf);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v17;
}

- (id)pickDefaultFormat
{
  result = self->supportedFormats;
  if (result)
  {
    return [result objectAtIndexedSubscript:0];
  }

  return result;
}

- (int)readCompressedBuffer:(id *)buffer numOutputSamples:(unsigned int *)samples
{
  v18 = 1440;
  v17 = 0;
  if (*([(AVAudioFormat *)self->format streamDescription]+ 2) == 1819304813)
  {
    sub_3EE0();
    return -6705;
  }

  v7 = [[AVAudioCompressedBuffer alloc] initWithFormat:self->format packetCapacity:1 maximumPacketSize:1440];
  if (!v7)
  {
    sub_3ECC();
    return 0;
  }

  v8 = v7;
  xpcAudioSink = self->_remote.xpcAudioSink;
  v10 = *([v7 audioBufferList] + 2);
  packetDescriptions = [v8 packetDescriptions];
  v12 = *(CMBaseObjectGetVTable() + 16);
  if (*v12 < 2uLL)
  {
    v15 = -12781;
    goto LABEL_10;
  }

  v13 = v12[7];
  if (!v13)
  {
    v15 = -12782;
    goto LABEL_10;
  }

  v14 = v13(xpcAudioSink, 0, v10, 1440, packetDescriptions, 1, &v18, &v17);
  v15 = v14;
  if (v14 == -6765)
  {
LABEL_11:

    return v15;
  }

  if (v14)
  {
LABEL_10:
    APSLogErrorAt();
    goto LABEL_11;
  }

  [v8 setByteLength:v18];
  [v8 setPacketCount:v17];
  *samples = *([(AVAudioFormat *)self->format streamDescription]+ 5);
  *buffer = v8;
  return v15;
}

- (int)readPCMBuffer:(id *)buffer numOutputSamples:(unsigned int *)samples
{
  v18 = 1440;
  v17 = 0;
  if (*([(AVAudioFormat *)self->format streamDescription]+ 2) != 1819304813)
  {
    sub_3EF4();
    return 0;
  }

  v7 = [[AVAudioPCMBuffer alloc] initWithPCMFormat:self->format frameCapacity:0x5A0u / *(-[AVAudioFormat streamDescription](self->format, "streamDescription") + 6)];
  if (!v7)
  {
    sub_3F08();
    return 0;
  }

  v8 = v7;
  frameCapacity = [v7 frameCapacity];
  xpcAudioSink = self->_remote.xpcAudioSink;
  v11 = *([v8 audioBufferList] + 2);
  v12 = *(CMBaseObjectGetVTable() + 16);
  if (*v12 < 2uLL)
  {
    v15 = -12781;
    goto LABEL_10;
  }

  v13 = v12[7];
  if (!v13)
  {
    v15 = -12782;
    goto LABEL_10;
  }

  v14 = v13(xpcAudioSink, 0, v11, 1440, 0, frameCapacity, &v18, &v17);
  v15 = v14;
  if (v14 == -6765)
  {
LABEL_11:

    return v15;
  }

  if (v14)
  {
LABEL_10:
    APSLogErrorAt();
    goto LABEL_11;
  }

  [v8 setFrameLength:v17];
  *buffer = v8;
  *samples = v17;
  return v15;
}

- (void)handleNotification:(__CFString *)notification fromCenter:(__CFNotificationCenter *)center fromObject:(const void *)object withUserInfo:(__CFDictionary *)info
{
  if (CFEqual(notification, kAPCarPlayAVVCNotification_StateIncompatibleWithAuxIn))
  {

    [(APCarPlayAVVCDevice *)self stopRecordingWithOptionalForcedError:1919115630];
  }

  else if (CFEqual(notification, @"avvcDevice_ConnectionLost"))
  {
    if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
    {
      sub_3F1C();
    }

    [(APCarPlayAVVCDevice *)self stopRecordingWithOptionalForcedError:1919115630];
    LocalCenter = CFNotificationCenterGetLocalCenter();
    v9 = kFigEndpointNotification_EndpointDeactivated;

    CFNotificationCenterPostNotification(LocalCenter, v9, self, 0, 1u);
  }
}

- (void)stopRecordingWithOptionalForcedError:(int)error
{
  queue = self->_dataProcessing.queue;
  if (queue)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_2668;
    v5[3] = &unk_8468;
    v5[4] = self;
    errorCopy = error;
    dispatch_sync(queue, v5);
  }
}

- (void)actionCompleted:(id)completed WithResult:(int)result
{
  if (self->_dataProcessing.avvcCompletionBlock)
  {
    if (dword_CAE0 <= 50 && (dword_CAE0 != -1 || _LogCategory_Initialize()))
    {
      sub_18FC(&dword_CAE0, "[APCarPlayAVVCDevice actionCompleted:WithResult:]", completed, "%@ completed, reporting error %d\n");
    }

    if (result)
    {
      v6 = [[NSError alloc] initWithDomain:NSOSStatusErrorDomain code:result userInfo:0];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    (*(self->_dataProcessing.avvcCompletionBlock + 2))(self->_dataProcessing.avvcCompletionBlock, v6);
    if (v7)
    {
    }
  }
}

- (int)readAndSendPacketToAVVC
{
  v11 = 0;
  v10 = 0;
  if (*([(AVAudioFormat *)self->format streamDescription]+ 2) == 1819304813)
  {
    v3 = [(APCarPlayAVVCDevice *)self readPCMBuffer:&v11 numOutputSamples:&v10];
  }

  else
  {
    v3 = [(APCarPlayAVVCDevice *)self readCompressedBuffer:&v11 numOutputSamples:&v10];
  }

  v4 = v3;
  if (!v3)
  {
    if (!self->audioInputBlock || !v11)
    {
      goto LABEL_9;
    }

    v5 = [AVAudioTime alloc];
    [(AVAudioFormat *)self->format sampleRate];
    v6 = [v5 initWithAudioTimeStamp:&self->_dataProcessing.timestamp sampleRate:?];
    if (v6)
    {
      v7 = v6;
      (*(self->audioInputBlock + 2))();

LABEL_9:
      [(AVAudioFormat *)self->format streamDescription];
      self->_dataProcessing.timestamp.mHostTime += SecondsToUpTicksF();
      LODWORD(v8) = v10;
      self->_dataProcessing.timestamp.mSampleTime = self->_dataProcessing.timestamp.mSampleTime + v8;
      ++self->_dataProcessing.numPacketsProcessed;
      goto LABEL_10;
    }

    APSLogErrorAt();
  }

LABEL_10:
  if (v11)
  {
  }

  return v4;
}

- (void)sendAllAvailableAudioDataToAVVC
{
  if (self->_dataProcessing.isActive)
  {
      ;
    }
  }
}

@end