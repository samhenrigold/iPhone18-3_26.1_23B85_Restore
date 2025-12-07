@interface PSSynchronizer
+ (BOOL)timstampWithinSyncTolerance:(unint64_t)tolerance compareTimestamp:(unint64_t)timestamp;
+ (id)sharedInstanceWithGSM:(ps_gsm_s *)m;
- (PSSynchronizer)initWithGSM:(ps_gsm_s *)m;
- (_opaque_pthread_mutex_t)mLock;
- (unint64_t)checkTimestampAndBroadcastForResourceID:(unint64_t)d timestamp:(unint64_t)timestamp pairedID:(unint64_t)iD viewIndex:(int)index;
- (unint64_t)resourceIDForKey:(id)key;
- (void)dealloc;
- (void)generateLocksForSyncedResources;
- (void)registerStreamKey:(id)key writer:(PSShbufferGroupWriter *)writer telemetryID:(unsigned __int16)d gsm_source:(ps_gsm_source_s *)gsm_source;
- (void)setMLock:(_opaque_pthread_mutex_t *)lock;
- (void)unregisterStream:(id)stream;
@end

@implementation PSSynchronizer

+ (id)sharedInstanceWithGSM:(ps_gsm_s *)m
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011DA8;
  block[3] = &unk_100028D58;
  block[4] = m;
  if (qword_100031120 != -1)
  {
    dispatch_once(&qword_100031120, block);
  }

  v3 = qword_100031128;

  return v3;
}

+ (BOOL)timstampWithinSyncTolerance:(unint64_t)tolerance compareTimestamp:(unint64_t)timestamp
{
  v4 = timestamp - tolerance;
  if (tolerance >= timestamp)
  {
    v4 = tolerance - timestamp;
  }

  return v4 < 0x1D4C1;
}

- (void)generateLocksForSyncedResources
{
  v3 = +[PLSSettings currentSettings];
  synchronizeStreamPairs = [v3 synchronizeStreamPairs];

  log = sub_100013BF4(v5, v6);
  v7 = os_log_type_enabled(log, OS_LOG_TYPE_DEBUG);
  if (synchronizeStreamPairs)
  {
    if (v7)
    {
      LODWORD(buf.__sig) = 136315138;
      *(&buf.__sig + 4) = "[PSSynchronizer generateLocksForSyncedResources]";
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "PSSynchronizer %s synchronizing stream pairs", &buf, 0xCu);
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    keyToIDMap = [(PSSynchronizer *)self keyToIDMap];
    allKeys = [keyToIDMap allKeys];

    log = allKeys;
    v10 = [allKeys countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(log);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v15 = [(PLSDevice *)self->_device propertiesForKey:v14];
          v16 = [(PSSynchronizer *)self resourceIDForKey:v14];
          syncedKey = [v15 syncedKey];

          if (syncedKey)
          {
            syncedKey2 = [v15 syncedKey];
            v19 = [(PSSynchronizer *)self resourceIDForKey:syncedKey2];

            if (byte_100031AF0[v19] == 1)
            {
              v20 = qword_100031B90[v19];
              qword_100031B90[[(PSSynchronizer *)self resourceIDForKey:v14]] = v20;
              v21 = qword_100032A08[v19];
              qword_100032A08[[(PSSynchronizer *)self resourceIDForKey:v14]] = v21;
            }

            else
            {
              v23 = malloc_type_malloc(0x40uLL, 0x1000040FA0F61DDuLL);
              buf.__sig = 0;
              *buf.__opaque = 0;
              pthread_mutexattr_init(&buf);
              pthread_mutexattr_settype(&buf, 2);
              pthread_mutex_init(v23, &buf);
              pthread_mutexattr_destroy(&buf);
              qword_100031B90[v16] = v23;
              v24 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
              *v24 = 0;
              qword_100032A08[v16] = v24;
            }

            byte_100031AF0[v16] = 1;
          }

          else
          {
            v22 = malloc_type_malloc(8uLL, 0x100004000313F17uLL);
            *v22 = 0;
            qword_100032A08[v16] = v22;
          }
        }

        v11 = [log countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }
  }

  else if (v7)
  {
    LODWORD(buf.__sig) = 136315138;
    *(&buf.__sig + 4) = "[PSSynchronizer generateLocksForSyncedResources]";
    _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEBUG, "PSSynchronizer %s not synchronizing stream pairs", &buf, 0xCu);
  }
}

- (unint64_t)checkTimestampAndBroadcastForResourceID:(unint64_t)d timestamp:(unint64_t)timestamp pairedID:(unint64_t)iD viewIndex:(int)index
{
  v6 = *&index;
  if (byte_100031AF0[d] == 1 && (v10 = qword_100031B90[d]) != 0)
  {
    pthread_mutex_lock(qword_100031B90[d]);
    v12 = [PSSynchronizer getTimestampForID:iD];
    [PSSynchronizer updateTimestampForID:d timestamp:timestamp];
    [PSSynchronizer updateViewIndexForID:d viewIndex:v6];
    if (v12)
    {
      if ([PSSynchronizer timstampWithinSyncTolerance:timestamp compareTimestamp:v12])
      {
        v13 = qword_100032A08[d];
        v14 = (*v13)++;
        v23 = v14;
        [PSSynchronizer getViewIndexForID:iD];
        ps_buffer_writer_attach_sync_tag();
        ps_buffer_writer_attach_sync_tag();
        ps_gsm_notify(self->_gsm, qword_100032528[d], v14 & 0xFFFFFFFFFFFFLL);
        ps_gsm_notify(self->_gsm, qword_100032528[iD], v14 & 0xFFFFFFFFFFFFLL);
        [PSSynchronizer updateTimestampForID:d timestamp:0];
        [PSSynchronizer updateViewIndexForID:d viewIndex:0xFFFFFFFFLL];
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        LOWORD(v22) = *(&xmmword_1000323F0 + d);
        timestampCopy2 = timestamp;
        v15 = 2;
        sub_1000170D8(2, &timestampCopy2, 0x30uLL, 8);
        [PSSynchronizer updateTimestampForID:iD timestamp:0];
        [PSSynchronizer updateViewIndexForID:iD viewIndex:0xFFFFFFFFLL];
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        LOWORD(v22) = *(&xmmword_1000323F0 + iD);
        timestampCopy2 = v12;
        sub_1000170D8(2, &timestampCopy2, 0x30uLL, 8);
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 1;
    }

    pthread_mutex_unlock(v10);
  }

  else
  {
    v16 = qword_100032A08[d];
    v17 = (*v16)++;
    v23 = v17;
    ps_buffer_writer_attach_sync_tag();
    ps_gsm_notify(self->_gsm, qword_100032528[d], v17 & 0xFFFFFFFFFFFFLL);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    LOWORD(v22) = *(&xmmword_1000323F0 + d);
    timestampCopy2 = timestamp;
    v15 = 2;
    sub_1000170D8(2, &timestampCopy2, 0x30uLL, 8);
  }

  return v15;
}

- (unint64_t)resourceIDForKey:(id)key
{
  keyCopy = key;
  keyToIDMap = [(PSSynchronizer *)self keyToIDMap];
  allKeys = [keyToIDMap allKeys];
  v7 = [allKeys containsObject:keyCopy];

  if (!v7)
  {
    sub_100018224(keyCopy, v8);
  }

  keyToIDMap2 = [(PSSynchronizer *)self keyToIDMap];
  v10 = [keyToIDMap2 objectForKeyedSubscript:keyCopy];
  unsignedIntegerValue = [v10 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (PSSynchronizer)initWithGSM:(ps_gsm_s *)m
{
  v8.receiver = self;
  v8.super_class = PSSynchronizer;
  v4 = [(PSSynchronizer *)&v8 init];
  if (v4)
  {
    v9.__sig = 0;
    *v9.__opaque = 0;
    pthread_mutexattr_init(&v9);
    pthread_mutexattr_settype(&v9, 0);
    pthread_mutex_init(&v4->_mLock, &v9);
    pthread_mutexattr_destroy(&v9);
    v5 = [[PLSDevice alloc] initWithContext:0];
    device = v4->_device;
    v4->_device = v5;

    v4->_gsm = m;
    [(PSSynchronizer *)v4 generateKeyToIDMap];
    [(PSSynchronizer *)v4 generateLocksForSyncedResources];
  }

  return v4;
}

- (void)registerStreamKey:(id)key writer:(PSShbufferGroupWriter *)writer telemetryID:(unsigned __int16)d gsm_source:(ps_gsm_source_s *)gsm_source
{
  keyCopy = key;
  lock = [(PSSynchronizer *)self lock];
  v13 = sub_100013BF4(lock, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = keyCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "PSSynchronizer registering  stream for key %@", &v15, 0xCu);
  }

  v14 = [(PSSynchronizer *)self resourceIDForKey:keyCopy];
  *(&xmmword_1000323F0 + v14) = d;
  qword_100031610[v14] = writer;
  qword_100032528[v14] = gsm_source;
  [(PSSynchronizer *)self unlock];
}

- (void)unregisterStream:(id)stream
{
  streamCopy = stream;
  [(PSSynchronizer *)self lock];
  v5 = [(PSSynchronizer *)self resourceIDForKey:streamCopy];
  v6 = qword_100031610[v5];
  v8 = sub_100013BF4(v5, v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v6)
  {
    sub_100018290(v9, streamCopy, v8);
  }

  if (v9)
  {
    v10 = 138412290;
    v11 = streamCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "PSSynchronizer is closing stream %@.", &v10, 0xCu);
  }

  qword_100031610[v5] = 0;
  *(&xmmword_1000323F0 + v5) = 0;
  qword_100032528[v5] = 0;
  [(PSSynchronizer *)self unlock];
}

- (void)dealloc
{
  for (i = 0; i != 156; ++i)
  {
    if (qword_100031610[i])
    {
      abort();
    }
  }

  v5 = 0;
  *&v2 = 67109376;
  v16 = v2;
  do
  {
    v6 = qword_100031B90[v5];
    if (v6)
    {
      v7 = pthread_mutex_destroy(v6);
      if (v7)
      {
        v9 = v7;
        v10 = sub_100013BF4(v7, v8);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = v16;
          v19 = v5;
          v20 = 1024;
          v21 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Failed to destroy timestamp lock for resourceID %d err=%d", buf, 0xEu);
        }
      }

      free(qword_100031B90[v5]);
    }

    v11 = qword_100032A08[v5];
    if (v11)
    {
      free(v11);
    }

    ++v5;
  }

  while (v5 != 156);
  v12 = pthread_mutex_destroy(&self->_mLock);
  if (v12)
  {
    v14 = v12;
    v15 = sub_100013BF4(v12, v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v19 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to destroy Mutex Lock for CameraStream Manager err=%d", buf, 8u);
    }
  }

  v17.receiver = self;
  v17.super_class = PSSynchronizer;
  [(PSSynchronizer *)&v17 dealloc];
}

- (_opaque_pthread_mutex_t)mLock
{
  v3 = *&self->__opaque[40];
  *&retstr->__sig = *&self->__opaque[24];
  *&retstr->__opaque[8] = v3;
  v4 = *&self[1].__opaque[8];
  *&retstr->__opaque[24] = *&self[1].__sig;
  *&retstr->__opaque[40] = v4;
  return self;
}

- (void)setMLock:(_opaque_pthread_mutex_t *)lock
{
  v3 = *&lock->__sig;
  v4 = *&lock->__opaque[8];
  v5 = *&lock->__opaque[40];
  *&self->_mLock.__opaque[24] = *&lock->__opaque[24];
  *&self->_mLock.__opaque[40] = v5;
  *&self->_mLock.__sig = v3;
  *&self->_mLock.__opaque[8] = v4;
}

@end