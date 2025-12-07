@interface W5BufferPool
+ (id)sharedW5BufferPool;
- (id)getBufferFromPool;
- (id)getPairOfBuffersFromPool;
- (id)initBuffersWithSize:(unint64_t)size bufferCount:(unint64_t)count;
- (unint64_t)getCountOfAllocatedBuffers;
- (unint64_t)getCountOfInUseBuffers;
- (void)freeIdleBufferOfTimer:(id)timer;
- (void)returnBufferToPool:(id)pool;
@end

@implementation W5BufferPool

+ (id)sharedW5BufferPool
{
  if (qword_100106BC0 != -1)
  {
    dispatch_once(&qword_100106BC0, &stru_1000E1D70);
  }

  v3 = qword_100106BB8;

  return v3;
}

- (id)initBuffersWithSize:(unint64_t)size bufferCount:(unint64_t)count
{
  v26.receiver = self;
  v26.super_class = W5BufferPool;
  v6 = [(W5BufferPool *)&v26 init];
  v7 = v6;
  if (v6)
  {
    v6->_bufferSize = size;
    v8 = +[NSMutableArray array];
    bufferPool = v7->_bufferPool;
    v7->_bufferPool = v8;

    v10 = dispatch_semaphore_create(count);
    semaphore = v7->_semaphore;
    v7->_semaphore = v10;

    v12 = objc_alloc_init(NSObject);
    lockBufferPool = v7->_lockBufferPool;
    v7->_lockBufferPool = v12;

    v14 = +[NSDate distantFuture];
    dateOfInvalidPoolBuffer = v7->_dateOfInvalidPoolBuffer;
    v7->_dateOfInvalidPoolBuffer = v14;

    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("BufferPool", v16);
    queue = v7->_queue;
    v7->_queue = v17;

    for (; count; --count)
    {
      v19 = +[NSMutableDictionary dictionary];
      [v19 setObject:v7->_dateOfInvalidPoolBuffer forKeyedSubscript:@"allocDate"];
      v20 = +[NSNull null];
      [v19 setObject:v20 forKeyedSubscript:@"allocdBuffer"];

      [v19 setObject:v7->_dateOfInvalidPoolBuffer forKeyedSubscript:@"lastDateBorrowed"];
      [v19 setObject:v7->_dateOfInvalidPoolBuffer forKeyedSubscript:@"lastDateReturned"];
      v21 = [NSNumber numberWithBool:0];
      [v19 setObject:v21 forKeyedSubscript:@"inUse"];

      v22 = +[NSNull null];
      [v19 setObject:v22 forKeyedSubscript:@"timer"];

      [(NSMutableArray *)v7->_bufferPool addObject:v19];
    }
  }

  else
  {
    v24 = sub_100098A04();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 136315650;
      v28 = "[W5BufferPool initBuffersWithSize:bufferCount:]";
      v29 = 2080;
      v30 = "W5BufferPool.m";
      v31 = 1024;
      v32 = 76;
      LODWORD(v25) = 28;
      _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v24, 0, "[wifivelocity] %s (%s:%u) init error!", &v27, v25, LODWORD(v26.receiver));
    }
  }

  return v7;
}

- (void)freeIdleBufferOfTimer:(id)timer
{
  timerCopy = timer;
  selfCopy = self;
  obj = [(W5BufferPool *)self lockBufferPool];
  objc_sync_enter(obj);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v27 = self->_bufferPool;
  v5 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v5)
  {
    v29 = *v31;
    v6 = 0x7FFFFFFFLL;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v31 != v29)
        {
          objc_enumerationMutation(v27);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        v9 = [v8 objectForKeyedSubscript:@"timer"];
        v10 = v9 == timerCopy;

        if (v10)
        {
          v11 = [v8 objectForKeyedSubscript:@"inUse"];
          bOOLValue = [v11 BOOLValue];

          v6 = [(NSMutableArray *)selfCopy->_bufferPool indexOfObject:v8];
          v13 = [v8 objectForKeyedSubscript:@"lastDateReturned"];
          [v13 timeIntervalSinceNow];
          v15 = v14;

          v16 = sub_100098A04();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [v8 objectForKeyedSubscript:@"allocDate"];
            v18 = [v8 objectForKeyedSubscript:@"lastDateBorrowed"];
            v19 = [v8 objectForKeyedSubscript:@"lastDateReturned"];
            *buf = 67110146;
            *v35 = bOOLValue;
            *&v35[4] = 2048;
            *&v35[6] = v6;
            v36 = 2112;
            v37 = v17;
            v38 = 2112;
            v39 = v18;
            v40 = 2112;
            v41 = v19;
            LODWORD(v25) = 48;
            _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v16, 0, "[wifivelocity] W5BufferPool Idle Timer: inUse %d index %lu allocDate %@ lastDateBorrowed %@ lastDateReturned %@", buf, v25);
          }

          if (v15 >= -10.0)
          {
            v20 = 1;
          }

          else
          {
            v20 = bOOLValue;
          }

          if ((v20 & 1) == 0)
          {
            v21 = sub_100098A04();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134217984;
              *v35 = v6;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v21, 0, "[wifivelocity] W5BufferPool Idle Timer: Freeing index %lu", buf);
            }

            [v8 setObject:selfCopy->_dateOfInvalidPoolBuffer forKeyedSubscript:@"allocDate"];
            v22 = +[NSNull null];
            [v8 setObject:v22 forKeyedSubscript:@"allocdBuffer"];

            [v8 setObject:selfCopy->_dateOfInvalidPoolBuffer forKeyedSubscript:@"lastDateBorrowed"];
            [v8 setObject:selfCopy->_dateOfInvalidPoolBuffer forKeyedSubscript:@"lastDateReturned"];
            v23 = [NSNumber numberWithBool:0];
            [v8 setObject:v23 forKeyedSubscript:@"inUse"];
          }
        }
      }

      v5 = [(NSMutableArray *)v27 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0x7FFFFFFFLL;
  }

  v24 = sub_10009A49C();
  if (os_signpost_enabled(v24))
  {
    *buf = 134217984;
    *v35 = v6;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5BufferPool Buffer", "Allocated idx %lu", buf, 0xCu);
  }

  objc_sync_exit(obj);
}

- (id)getBufferFromPool
{
  obj = [(W5BufferPool *)self lockBufferPool];
  objc_sync_enter(obj);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v36 = self->_bufferPool;
  v2 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v44 objects:v53 count:16];
  if (v2)
  {
    v3 = *v45;
    v4 = 0x7FFFFFFFLL;
    do
    {
      for (i = 0; i != v2; i = i + 1)
      {
        if (*v45 != v3)
        {
          objc_enumerationMutation(v36);
        }

        v6 = *(*(&v44 + 1) + 8 * i);
        v7 = [v6 objectForKeyedSubscript:@"inUse"];
        if ([v7 BOOLValue])
        {
        }

        else
        {
          v8 = [v6 objectForKeyedSubscript:@"allocdBuffer"];
          v9 = +[NSNull null];
          v10 = [v8 isEqual:v9];

          if ((v10 & 1) == 0)
          {
            v4 = [(NSMutableArray *)self->_bufferPool indexOfObject:v6];
            v11 = [NSNumber numberWithBool:1];
            [v6 setObject:v11 forKeyedSubscript:@"inUse"];

            v12 = +[NSDate date];
            [v6 setObject:v12 forKeyedSubscript:@"lastDateBorrowed"];

            queue = self->_queue;
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100027688;
            block[3] = &unk_1000E1270;
            block[4] = v6;
            dispatch_sync(queue, block);
            v14 = [v6 objectForKeyedSubscript:@"allocdBuffer"];
            if (v14)
            {
              goto LABEL_30;
            }
          }
        }
      }

      v2 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v44 objects:v53 count:16];
    }

    while (v2);
  }

  else
  {
    v4 = 0x7FFFFFFFLL;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v36 = self->_bufferPool;
  v15 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v39 objects:v52 count:16];
  if (v15)
  {
    v16 = *v40;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v40 != v16)
        {
          objc_enumerationMutation(v36);
        }

        v18 = *(*(&v39 + 1) + 8 * j);
        v19 = [v18 objectForKeyedSubscript:@"inUse"];
        if ([v19 BOOLValue])
        {
        }

        else
        {
          v20 = [v18 objectForKeyedSubscript:@"allocdBuffer"];
          v21 = +[NSNull null];
          v22 = [v20 isEqual:v21];

          if (v22)
          {
            v4 = [(NSMutableArray *)self->_bufferPool indexOfObject:v18];
            v23 = [NSMutableData dataWithLength:self->_bufferSize];
            v24 = sub_10009A49C();
            if (os_signpost_enabled(v24))
            {
              *buf = 134217984;
              v49 = v4;
              _os_signpost_emit_with_name_impl(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "W5BufferPool Buffer", "Allocated idx %lu", buf, 0xCu);
            }

            v25 = sub_100098A04();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              bufferSize = self->_bufferSize;
              *buf = 134218240;
              v49 = bufferSize;
              v50 = 2048;
              v51 = v4;
              LODWORD(v34) = 22;
              _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v25, 0, "[wifivelocity] W5BufferPool Alloc: Allocating a NSMutableData of size %lu bytes in index %lu", buf, v34);
            }

            v27 = +[NSDate date];
            [v18 setObject:v27 forKeyedSubscript:@"allocDate"];

            [v18 setObject:v23 forKeyedSubscript:@"allocdBuffer"];
            v28 = [v18 objectForKeyedSubscript:@"allocDate"];
            [v18 setObject:v28 forKeyedSubscript:@"lastDateBorrowed"];

            v29 = [NSNumber numberWithBool:1];
            [v18 setObject:v29 forKeyedSubscript:@"inUse"];

            v30 = self->_queue;
            v38[0] = _NSConcreteStackBlock;
            v38[1] = 3221225472;
            v38[2] = sub_10002778C;
            v38[3] = &unk_1000E1270;
            v38[4] = v18;
            dispatch_sync(v30, v38);
            v14 = [v18 objectForKeyedSubscript:@"allocdBuffer"];

            if (v14)
            {
              goto LABEL_30;
            }
          }
        }
      }

      v15 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v39 objects:v52 count:16];
    }

    while (v15);
  }

  v14 = 0;
LABEL_30:

  v31 = sub_10009A49C();
  if (os_signpost_enabled(v31))
  {
    *buf = 134217984;
    v49 = v4;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v31, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "W5BufferPool Buffer", "Borrowed idx %lu", buf, 0xCu);
  }

  v32 = sub_100098A04();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v49 = v4;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v32, 0, "[wifivelocity] W5BufferPool Borrowed index %lu", buf);
  }

  objc_sync_exit(obj);

  return v14;
}

- (id)getPairOfBuffersFromPool
{
  semaphore = [(W5BufferPool *)self semaphore];
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

  getBufferFromPool = [(W5BufferPool *)self getBufferFromPool];
  getBufferFromPool2 = [(W5BufferPool *)self getBufferFromPool];
  v8[0] = getBufferFromPool;
  v8[1] = getBufferFromPool2;
  v6 = [NSArray arrayWithObjects:v8 count:2];

  return v6;
}

- (void)returnBufferToPool:(id)pool
{
  poolCopy = pool;
  obj = [(W5BufferPool *)self lockBufferPool];
  objc_sync_enter(obj);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v23 = self->_bufferPool;
  v5 = 0;
  v6 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v6)
  {
    v7 = *v26;
    v8 = 0x7FFFFFFFLL;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(v23);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        v11 = [v10 objectForKeyedSubscript:@"allocdBuffer"];
        v12 = v11 == poolCopy;

        if (v12)
        {
          v8 = [(NSMutableArray *)self->_bufferPool indexOfObject:v10];
          queue = self->_queue;
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100027D18;
          block[3] = &unk_1000E10A0;
          block[4] = v10;
          block[5] = self;
          dispatch_sync(queue, block);
          v14 = [v10 objectForKeyedSubscript:@"inUse"];
          [v14 BOOLValue];

          v15 = [NSNumber numberWithBool:0];
          [v10 setObject:v15 forKeyedSubscript:@"inUse"];

          v16 = +[NSDate date];
          [v10 setObject:v16 forKeyedSubscript:@"lastDateReturned"];

          [poolCopy setLength:self->_bufferSize];
        }

        v17 = [v10 objectForKeyedSubscript:@"inUse"];
        bOOLValue = [v17 BOOLValue];

        v5 += bOOLValue ^ 1;
      }

      v6 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = 0x7FFFFFFFLL;
  }

  v19 = sub_10009A49C();
  if (os_signpost_enabled(v19))
  {
    *buf = 134217984;
    v30 = v8;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v19, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "W5BufferPool Buffer", "Borrowed idx %lu", buf, 0xCu);
  }

  v20 = sub_100098A04();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v30 = v8;
    v31 = 2048;
    v32 = v5;
    _os_log_send_and_compose_impl(1, 0, 0, 0, &_mh_execute_header, v20, 0, "[wifivelocity] W5BufferPool Returned index %lu, totalAvail %lu ", buf, 22);
  }

  if (v5 == 2)
  {
    semaphore = [(W5BufferPool *)self semaphore];
    dispatch_semaphore_signal(semaphore);
  }

  objc_sync_exit(obj);
}

- (unint64_t)getCountOfAllocatedBuffers
{
  obj = [(W5BufferPool *)self lockBufferPool];
  objc_sync_enter(obj);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v14 = self->_bufferPool;
  v3 = 0;
  v4 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = *v16;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v14);
        }

        v7 = *(*(&v15 + 1) + 8 * i);
        v8 = [v7 objectForKeyedSubscript:{@"allocdBuffer", obj}];

        v9 = [v7 objectForKeyedSubscript:@"allocdBuffer"];
        v10 = +[NSNull null];
        v11 = [v9 isEqual:v10];

        v3 += (v11 ^ 1) & (v8 != 0);
      }

      v4 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  objc_sync_exit(obj);
  return v3;
}

- (unint64_t)getCountOfInUseBuffers
{
  lockBufferPool = [(W5BufferPool *)self lockBufferPool];
  objc_sync_enter(lockBufferPool);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_bufferPool;
  v5 = 0;
  v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) objectForKeyedSubscript:{@"inUse", v12}];
        bOOLValue = [v9 BOOLValue];

        v5 += bOOLValue;
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(lockBufferPool);
  return v5;
}

@end