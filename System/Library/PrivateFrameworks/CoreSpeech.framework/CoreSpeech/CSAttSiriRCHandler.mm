@interface CSAttSiriRCHandler
- (CSAttSiriEndpointerNode)endpointerNode;
- (CSAttSiriRCHandler)initWithEndpointerNode:(id)node uresNode:(id)uresNode;
- (CSAttSiriUresNode)uresNode;
- (void)addResultCandidateReceiver:(id)receiver;
- (void)getMitigationDecisionForRCIdWithCompletion:(unint64_t)completion requestId:(id)id completion:(id)a5;
- (void)processRCWithId:(unint64_t)id requestId:(id)requestId speechPackage:(id)package taskId:(id)taskId forceAccept:(BOOL)accept completionHandler:(id)handler;
@end

@implementation CSAttSiriRCHandler

- (CSAttSiriUresNode)uresNode
{
  WeakRetained = objc_loadWeakRetained(&self->_uresNode);

  return WeakRetained;
}

- (CSAttSiriEndpointerNode)endpointerNode
{
  WeakRetained = objc_loadWeakRetained(&self->_endpointerNode);

  return WeakRetained;
}

- (void)getMitigationDecisionForRCIdWithCompletion:(unint64_t)completion requestId:(id)id completion:(id)a5
{
  idCopy = id;
  v9 = a5;
  v10 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315394;
    v14 = "[CSAttSiriRCHandler getMitigationDecisionForRCIdWithCompletion:requestId:completion:]";
    v15 = 2048;
    completionCopy = completion;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s rcId: %lu", &v13, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_uresNode);
  v12 = [WeakRetained getMitigationDecisionForRCId:completion forRequestId:idCopy];

  if (v9)
  {
    v9[2](v9, v12);
  }
}

- (void)processRCWithId:(unint64_t)id requestId:(id)requestId speechPackage:(id)package taskId:(id)taskId forceAccept:(BOOL)accept completionHandler:(id)handler
{
  acceptCopy = accept;
  requestIdCopy = requestId;
  packageCopy = package;
  taskIdCopy = taskId;
  handlerCopy = handler;
  recognition = [packageCopy recognition];
  [recognition processedAudioDuration];
  v20 = v19;

  v21 = CSLogContextFacilityCoreSpeech;
  if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "[CSAttSiriRCHandler processRCWithId:requestId:speechPackage:taskId:forceAccept:completionHandler:]";
    *&buf[12] = 2048;
    *&buf[14] = id;
    *&buf[22] = 2048;
    v43 = v20;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%s Received RC %lu with duration %f from server, make RC acceptance and mitigation decision", buf, 0x20u);
  }

  if (!+[CSUtils isMedocFeatureEnabled])
  {
    WeakRetained = objc_loadWeakRetained(&self->_uresNode);
    [WeakRetained processResultCandidate:packageCopy forRCId:id forTask:taskIdCopy forRequestId:requestIdCopy completion:0];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v43) = 0;
    if (acceptCopy)
    {
      if ((+[CSUtils isMedocFeatureEnabled]& 1) == 0)
      {
        v24 = objc_loadWeakRetained(&self->_uresNode);
        v25 = [v24 getMitigationDecisionForRCId:id forRequestId:requestIdCopy];
        *(*&buf[8] + 24) = v25;
      }

      if (!handlerCopy)
      {
        goto LABEL_15;
      }

      v26 = *(*&buf[8] + 24);
      goto LABEL_14;
    }

    v27 = objc_loadWeakRetained(&self->_endpointerNode);
    v28 = v27 == 0;

    if (v28)
    {
      if (handlerCopy)
      {
        v26 = 0;
LABEL_14:
        (*(handlerCopy + 2))(handlerCopy, acceptCopy, v26 & 1, 0);
      }
    }

    else
    {
      v29 = objc_loadWeakRetained(&self->_endpointerNode);
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_1000E7384;
      v30[3] = &unk_100251518;
      v33 = buf;
      idCopy = id;
      v30[4] = self;
      v31 = requestIdCopy;
      v32 = handlerCopy;
      [v29 shouldAcceptEagerResultForDuration:v30 resultsCompletionHandler:v20];
    }

LABEL_15:
    _Block_object_dispose(buf, 8);
    goto LABEL_16;
  }

  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E71C0;
  block[3] = &unk_1002514F0;
  block[4] = self;
  v36 = requestIdCopy;
  idCopy2 = id;
  v37 = packageCopy;
  v41 = v20;
  v38 = taskIdCopy;
  v39 = handlerCopy;
  dispatch_async(queue, block);

LABEL_16:
}

- (void)addResultCandidateReceiver:(id)receiver
{
  receiverCopy = receiver;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000E7568;
  v7[3] = &unk_100253C48;
  v7[4] = self;
  v8 = receiverCopy;
  v6 = receiverCopy;
  dispatch_async(queue, v7);
}

- (CSAttSiriRCHandler)initWithEndpointerNode:(id)node uresNode:(id)uresNode
{
  nodeCopy = node;
  uresNodeCopy = uresNode;
  v15.receiver = self;
  v15.super_class = CSAttSiriRCHandler;
  v8 = [(CSAttSiriRCHandler *)&v15 init];
  if (v8)
  {
    v9 = CSLogContextFacilityCoreSpeech;
    if (os_log_type_enabled(CSLogContextFacilityCoreSpeech, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[CSAttSiriRCHandler initWithEndpointerNode:uresNode:]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
    }

    objc_storeWeak(&v8->_endpointerNode, nodeCopy);
    objc_storeWeak(&v8->_uresNode, uresNodeCopy);
    v10 = +[NSHashTable weakObjectsHashTable];
    resultCandidateReceivers = v8->_resultCandidateReceivers;
    v8->_resultCandidateReceivers = v10;

    v12 = [CSUtils getSerialQueueWithQOS:33 name:@"AttSiriRCHandler Queue" fixedPriority:kCSDefaultSerialQueueFixedPriority];
    queue = v8->_queue;
    v8->_queue = v12;
  }

  return v8;
}

@end