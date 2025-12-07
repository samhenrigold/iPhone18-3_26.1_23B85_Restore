@interface CSAttSiriAudioSrcNode
- (BOOL)isBuiltInRoute;
- (BOOL)isJarvisRoute;
- (CSAttSiriAudioSrcNode)initWithAttSiriController:(id)controller;
- (CSAttSiriAudioSrcNode)initWithTargetQueue:(id)queue;
- (CSAttSiriAudioSrcNodeDelegate)delegate;
- (CSAttSiriController)attSiriController;
- (id)_fetchAudioDecoderForTV:(unsigned int)v;
- (void)_handleDidAudioStartWithResult:(BOOL)result error:(id)error;
- (void)_handleDidStop;
- (void)addReceiver:(id)receiver;
- (void)attachToMasterStream:(id)stream name:(id)name completion:(id)completion;
- (void)audioDecoderDidDecodePackets:(id)packets audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder wasBuffered:(BOOL)buffered receivedNumChannels:(unsigned int)self0;
- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available;
- (void)audioStreamProvider:(id)provider audioChunkForTVAvailable:(id)available;
- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly;
- (void)dealloc;
- (void)fetchRoutesWithCompletion:(id)completion;
- (void)removeReceiver:(id)receiver;
@end

@implementation CSAttSiriAudioSrcNode

- (CSAttSiriAudioSrcNodeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CSAttSiriController)attSiriController
{
  WeakRetained = objc_loadWeakRetained(&self->_attSiriController);

  return WeakRetained;
}

- (id)_fetchAudioDecoderForTV:(unsigned int)v
{
  v3 = *&v;
  decodersForTV = self->_decodersForTV;
  v6 = [NSNumber numberWithUnsignedInt:?];
  v7 = [(NSMutableDictionary *)decodersForTV objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = self->_decodersForTV;
    v9 = [NSNumber numberWithUnsignedInt:v3];
    v10 = [(NSMutableDictionary *)v8 objectForKeyedSubscript:v9];
LABEL_10:

    goto LABEL_11;
  }

  if (v3 == 1869641075)
  {
    v11 = [CSAudioDecoder alloc];
    objc_msgSend_opusASBD(CSFAudioStreamBasicDescriptionFactory);
    goto LABEL_7;
  }

  if (v3 == 1936745848)
  {
    v11 = [CSAudioDecoder alloc];
    objc_msgSend_speexASBD(CSFAudioStreamBasicDescriptionFactory);
LABEL_7:
    objc_msgSend_lpcmInt16ASBD(CSFAudioStreamBasicDescriptionFactory);
    v10 = [v11 initWithInASBD:buf outASBD:v16];
    v12 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v18 = "[CSAttSiriAudioSrcNode _fetchAudioDecoderForTV:]";
      v19 = 1026;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%s Create audioDecoder for audioFormat %{public}u", buf, 0x12u);
    }

    [v10 setDelegate:self];
    v13 = self->_decodersForTV;
    v9 = [NSNumber numberWithUnsignedInt:v3];
    [(NSMutableDictionary *)v13 setObject:v10 forKey:v9];
    goto LABEL_10;
  }

  v15 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v18 = "[CSAttSiriAudioSrcNode _fetchAudioDecoderForTV:]";
    v19 = 1026;
    v20 = v3;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%s Unexpected audioFormat for ATV : %{public}u", buf, 0x12u);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)_handleDidAudioStartWithResult:(BOOL)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_receivers;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11) attSiriAudioSrcNodeDidStartRecording:self successfully:resultCopy error:{errorCopy, v12}];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)_handleDidStop
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v15 = "[CSAttSiriAudioSrcNode _handleDidStop]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = self->_receivers;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8) attSiriAudioSrcNodeDidStop:{self, v9}];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)audioDecoderDidDecodePackets:(id)packets audioStreamHandleId:(unint64_t)id buffer:(id)buffer remoteVAD:(id)d timestamp:(unint64_t)timestamp arrivalTimestampToAudioRecorder:(unint64_t)recorder wasBuffered:(BOOL)buffered receivedNumChannels:(unsigned int)self0
{
  bufferCopy = buffer;
  v13 = +[CSAudioTimeConverterPool sharedInstance];
  defaultConverter = [v13 defaultConverter];
  [defaultConverter processSampleCount:self->_decoderProcessedSampleCountForTV hostTime:timestamp];

  v15 = ([bufferCopy length] >> 1) / channels;
  v16 = [CSAudioChunk alloc];
  v17 = +[CSConfig inputRecordingSampleByteDepth];
  decoderProcessedSampleCountForTV = self->_decoderProcessedSampleCountForTV;
  LOBYTE(v26) = +[CSConfig inputRecordingIsFloat];
  LOBYTE(v25) = buffered;
  v19 = [v16 initWithData:bufferCopy numChannels:channels numSamples:v15 sampleByteDepth:v17 startSampleCount:decoderProcessedSampleCountForTV hostTime:timestamp arrivalHostTimeToAudioRecorder:recorder wasBuffered:v25 remoteVAD:0 isFloat:v26];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20 = self->_receivers;
  v21 = [(NSHashTable *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      v24 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v28 + 1) + 8 * v24) attSiriAudioSrcNodeLPCMRecordBufferAvailable:self audioChunk:v19];
        v24 = v24 + 1;
      }

      while (v22 != v24);
      v22 = [(NSHashTable *)v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v22);
  }

  self->_decoderProcessedSampleCountForTV += v15;
}

- (void)audioStreamProvider:(id)provider audioChunkForTVAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C99C8;
  v8[3] = &unk_100253C48;
  v9 = availableCopy;
  selfCopy = self;
  v7 = availableCopy;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)provider audioBufferAvailable:(id)available
{
  availableCopy = available;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000C9B4C;
  v8[3] = &unk_100253C48;
  v9 = availableCopy;
  selfCopy = self;
  v7 = availableCopy;
  dispatch_async(queue, v8);
}

- (void)audioStreamProvider:(id)provider didStopStreamUnexpectedly:(int64_t)unexpectedly
{
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000C9CD8;
  v5[3] = &unk_100253C98;
  v5[4] = self;
  v5[5] = unexpectedly;
  dispatch_async(queue, v5);
}

- (void)dealloc
{
  v3 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v6 = "[CSAttSiriAudioSrcNode dealloc]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s CSAttSiriAudioSrcNode deallocated", buf, 0xCu);
  }

  if (CSIsTV())
  {
    [(NSMutableDictionary *)self->_decodersForTV removeAllObjects];
  }

  v4.receiver = self;
  v4.super_class = CSAttSiriAudioSrcNode;
  [(CSAttSiriAudioSrcNode *)&v4 dealloc];
}

- (void)removeReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9F44;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)addReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9FE8;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (void)fetchRoutesWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CA1A4;
  v7[3] = &unk_100253718;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (BOOL)isJarvisRoute
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000CA364;
  v10 = sub_1000CA374;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000CA37C;
  v5[3] = &unk_100253BD0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = [CSUtils isJarvisAudioRouteWithRecordRoute:v7[5]];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (BOOL)isBuiltInRoute
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000CA364;
  v16 = sub_1000CA374;
  v17 = 0;
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000CA364;
  v10 = sub_1000CA374;
  v11 = 0;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CA558;
  block[3] = &unk_100251428;
  block[4] = self;
  block[5] = &v12;
  block[6] = &v6;
  dispatch_sync(queue, block);
  v3 = [CSUtils isBuiltInRouteWithRecordRoute:v13[5] playbackRoute:v7[5]];
  _Block_object_dispose(&v6, 8);

  _Block_object_dispose(&v12, 8);
  return v3;
}

- (void)attachToMasterStream:(id)stream name:(id)name completion:(id)completion
{
  streamCopy = stream;
  nameCopy = name;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_1000CA8EC;
  v22[3] = &unk_100253220;
  completionCopy = completion;
  v23 = completionCopy;
  v11 = objc_retainBlock(v22);
  if (streamCopy)
  {
    v12 = [[CSAudioTandemStream alloc] initWithMasterAudioStream:streamCopy name:nameCopy];
    if (v12)
    {
      v13 = v12;
      queue = [(CSAttSiriAudioSrcNode *)self queue];
      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000CA904;
      v19[3] = &unk_1002533A0;
      v19[4] = self;
      v15 = v13;
      v20 = v15;
      v21 = v11;
      dispatch_async(queue, v19);
    }

    else
    {
      v17 = CSLogContextFacilityCoreSpeech;
      if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v25 = "[CSAttSiriAudioSrcNode attachToMasterStream:name:completion:]";
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "%s Fail to create tandemStream", buf, 0xCu);
      }

      v18 = [NSError errorWithDomain:CSErrorDomain code:960 userInfo:0];
      (v11[2])(v11, 0, v18);

      v15 = 0;
    }
  }

  else
  {
    v16 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v25 = "[CSAttSiriAudioSrcNode attachToMasterStream:name:completion:]";
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s Unable to create tendemStream due to missing master stream", buf, 0xCu);
    }

    v15 = [NSError errorWithDomain:CSErrorDomain code:114 userInfo:0];
    (v11[2])(v11, 0, v15);
  }
}

- (CSAttSiriAudioSrcNode)initWithAttSiriController:(id)controller
{
  controllerCopy = controller;
  v5 = [(CSAttSiriAudioSrcNode *)self initWithTargetQueue:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_attSiriController, controllerCopy);
  }

  return v6;
}

- (CSAttSiriAudioSrcNode)initWithTargetQueue:(id)queue
{
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = CSAttSiriAudioSrcNode;
  v5 = [(CSAttSiriAudioSrcNode *)&v14 init];
  if (v5)
  {
    if (queueCopy)
    {
      v6 = dispatch_queue_create_with_target_V2("CSAttSiriAudioSrcNode Queue", 0, queueCopy);
    }

    else
    {
      v6 = dispatch_queue_create("CSAttSiriAudioSrcNode queue", 0);
    }

    queue = v5->_queue;
    v5->_queue = v6;

    v5->_type = 4;
    v8 = +[NSHashTable weakObjectsHashTable];
    receivers = v5->_receivers;
    v5->_receivers = v8;

    v5->_isReady = 0;
    requiredNodes = v5->_requiredNodes;
    v5->_requiredNodes = 0;

    if (CSIsTV())
    {
      v5->_decoderProcessedSampleCountForTV = 0;
      v11 = +[NSMutableDictionary dictionary];
      decodersForTV = v5->_decodersForTV;
      v5->_decodersForTV = v11;
    }
  }

  return v5;
}

@end