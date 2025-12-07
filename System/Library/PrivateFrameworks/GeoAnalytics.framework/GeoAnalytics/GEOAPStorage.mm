@interface GEOAPStorage
- (GEOAPStorage)init;
- (id)_copyAndEmptyBatchQueue;
- (id)_setLocIntSequenceNumberForBatch:(unint64_t)batch inLogMsg:(id)msg;
- (void)_fastTrackElement:(id)element withBatchID:(unint64_t)d completionQueue:(id)queue completionBlock:(id)block;
- (void)_flushBatchQueueToDB;
- (void)_flushRemainderToDB;
- (void)_setUploadTimer;
- (void)_spoolElementsToDBFromQueue:(id)queue;
- (void)_storeQueueElem:(id)elem completionQueue:(id)queue completionBlock:(id)block;
@end

@implementation GEOAPStorage

- (void)_setUploadTimer
{
  v3 = dispatch_time(0, 1000000000 * self->_batchQueueFlushTime);
  uploadTimer = self->_uploadTimer;

  dispatch_source_set_timer(uploadTimer, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

- (void)_flushRemainderToDB
{
  dispatch_assert_queue_V2(self->_storageQueue);
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_100019F80;
  v11 = sub_100019F90;
  v12 = 0;
  selfCopy = self;
  geo_isolate_sync();
  if (v8[5])
  {
    v3 = sub_100001134();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v4 = [v8[5] count];
      *buf = 134217984;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "will persist %lu analytics", buf, 0xCu);
    }

    v5 = +[GEOAPDB sharedInstance];
    [v5 storeLogMsgElems:v8[5]];
  }

  _Block_object_dispose(&v7, 8);
}

- (id)_copyAndEmptyBatchQueue
{
  geo_assert_isolated();
  v3 = [(NSMutableArray *)self->_batchQueue copy];
  [(NSMutableArray *)self->_batchQueue removeAllObjects];
  return v3;
}

- (void)_spoolElementsToDBFromQueue:(id)queue
{
  queueCopy = queue;
  if ([queueCopy count])
  {
    storageQueue = self->_storageQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100019644;
    block[3] = &unk_10003D5B8;
    v7 = queueCopy;
    dispatch_async(storageQueue, block);
  }
}

- (void)_fastTrackElement:(id)element withBatchID:(unint64_t)d completionQueue:(id)queue completionBlock:(id)block
{
  elementCopy = element;
  queueCopy = queue;
  blockCopy = block;
  storageQueue = self->_storageQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100019850;
  v15[3] = &unk_10003D658;
  dCopy = d;
  v14 = elementCopy;
  v16 = v14;
  dispatch_async(storageQueue, v15);
  if (blockCopy)
  {
    if (!queueCopy)
    {
      queueCopy = dispatch_get_global_queue(21, 0);
    }

    dispatch_async(queueCopy, blockCopy);
  }
}

- (void)_storeQueueElem:(id)elem completionQueue:(id)queue completionBlock:(id)block
{
  elemCopy = elem;
  queueCopy = queue;
  blockCopy = block;
  v11 = +[GEOAPDB sharedInstance];
  evalModeEnabled = [v11 evalModeEnabled];

  if (evalModeEnabled)
  {
    v20 = elemCopy;
    v13 = [NSArray arrayWithObjects:&v20 count:1];
    [(GEOAPStorage *)self _spoolElementsToDBFromQueue:v13];
  }

  else
  {
    v14 = _NSConcreteStackBlock;
    v15 = 3221225472;
    v16 = sub_100019B40;
    v17 = &unk_10003D5E0;
    selfCopy = self;
    v19 = elemCopy;
    geo_isolate_sync();
  }

  [(GEOAPStorage *)self _setUploadTimer:v14];
  if (blockCopy)
  {
    if (!queueCopy)
    {
      queueCopy = dispatch_get_global_queue(21, 0);
    }

    dispatch_async(queueCopy, blockCopy);
  }
}

- (id)_setLocIntSequenceNumberForBatch:(unint64_t)batch inLogMsg:(id)msg
{
  msgCopy = msg;
  v7 = objc_autoreleasePoolPush();
  v8 = [[GEOLogMessage alloc] initWithData:msgCopy];
  if ([v8 logMessageType] == 8)
  {
    context = v7;
    v27 = msgCopy;
    v25 = v8;
    logMsgEvents = [v8 logMsgEvents];
    firstObject = [logMsgEvents firstObject];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v24 = firstObject;
    logMsgStates = [firstObject logMsgStates];
    v12 = [logMsgStates countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(logMsgStates);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          if ([v16 stateType] == 601)
          {
            userSession = [v16 userSession];

            if (!userSession)
            {
              msgCopy = v27;
              v21 = v27;

              v23 = context;
              goto LABEL_20;
            }

            if (self->_activeLocIntelBatchID == batch)
            {
              v18 = self->_currentLocIntelSeqNo + 1;
            }

            else
            {
              self->_activeLocIntelBatchID = batch;
              GEOConfigSetUint64();
              v18 = 1;
            }

            self->_currentLocIntelSeqNo = v18;
            userSession2 = [v16 userSession];
            [userSession2 setSequenceNumber:v18];

            GEOConfigSetUInteger();
          }
        }

        v13 = [logMsgStates countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

    data = [v25 data];
    msgCopy = v27;

    objc_autoreleasePoolPop(context);
    v21 = data;
  }

  else
  {
    v21 = msgCopy;

    v23 = v7;
LABEL_20:
    objc_autoreleasePoolPop(v23);
  }

  return v21;
}

- (void)_flushBatchQueueToDB
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100019F80;
  v8 = sub_100019F90;
  v9 = 0;
  geo_isolate_sync();
  [(GEOAPStorage *)self _spoolElementsToDBFromQueue:v5[5], _NSConcreteStackBlock, 3221225472, sub_100019F98, &unk_10003D608, self, &v4];
  _Block_object_dispose(&v4, 8);
}

- (GEOAPStorage)init
{
  v20.receiver = self;
  v20.super_class = GEOAPStorage;
  v2 = [(GEOAPStorage *)&v20 init];
  if (v2)
  {
    v3 = +[GEOPlatform sharedPlatform];
    *(v2 + 57) = [v3 isInternalInstall];

    *(v2 + 56) = 0;
    *(v2 + 2) = GEOConfigGetUInteger();
    *(v2 + 3) = GEOConfigGetUInteger();
    v4 = [[NSMutableArray alloc] initWithCapacity:*(v2 + 2)];
    v5 = *(v2 + 1);
    *(v2 + 1) = v4;

    v6 = geo_isolater_create();
    v7 = *(v2 + 4);
    *(v2 + 4) = v6;

    v8 = geo_dispatch_queue_create_with_qos();
    v9 = *(v2 + 6);
    *(v2 + 6) = v8;

    if (*(v2 + 57) == 1)
    {
      v10 = geo_isolater_create();
      v11 = *(v2 + 9);
      *(v2 + 9) = v10;

      v12 = objc_alloc_init(NSMutableSet);
      v13 = *(v2 + 8);
      *(v2 + 8) = v12;
    }

    *(v2 + 10) = GEOConfigGetUint64();
    *(v2 + 22) = GEOConfigGetUInteger();
    v14 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v2 + 6));
    v15 = *(v2 + 5);
    *(v2 + 5) = v14;

    dispatch_source_set_timer(*(v2 + 5), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
    v16 = *(v2 + 5);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100002278;
    handler[3] = &unk_10003D5B8;
    v19 = v2;
    dispatch_source_set_event_handler(v16, handler);
    dispatch_activate(*(v2 + 5));
  }

  return v2;
}

@end