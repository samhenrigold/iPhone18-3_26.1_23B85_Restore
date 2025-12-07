@interface _GEOConfigDBOperationQueue
- (void)flush;
- (void)flushOnDBQueue;
- (void)scheduleTimer;
@end

@implementation _GEOConfigDBOperationQueue

- (void)scheduleTimer
{
  v3 = dispatch_time(0, 500000000);
  timer = self->_timer;

  dispatch_source_set_timer(timer, v3, 0xFFFFFFFFFFFFFFFFLL, 0xEE6B280uLL);
}

- (void)flushOnDBQueue
{
  v16 = *MEMORY[0x1E69E9840];
  isolationQueue = [(GEOSQLiteDB *)self->_db isolationQueue];
  dispatch_assert_queue_V2(isolationQueue);

  [(_GEOConfigDBOperationQueue *)self cancelTimer];
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  v7[5] = MEMORY[0x1E69E9820];
  v7[6] = 3221225472;
  v7[7] = __44___GEOConfigDBOperationQueue_flushOnDBQueue__block_invoke;
  v7[8] = &unk_1E7071448;
  v7[9] = self;
  v7[10] = &v8;
  geo_isolate_sync();
  v4 = GEOGetUserDefaultsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = [v9[5] count];
    *buf = 134217984;
    v15 = v5;
    _os_log_impl(&dword_18660C000, v4, OS_LOG_TYPE_INFO, "Flushing %llu operations", buf, 0xCu);
  }

  if (v9[5])
  {
    db = self->_db;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __44___GEOConfigDBOperationQueue_flushOnDBQueue__block_invoke_340;
    v7[3] = &unk_1E704E4C0;
    v7[4] = &v8;
    [(GEOSQLiteDB *)db executeInTransaction:v7];
  }

  _Block_object_dispose(&v8, 8);
}

- (void)flush
{
  db = self->_db;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __35___GEOConfigDBOperationQueue_flush__block_invoke;
  v3[3] = &unk_1E7071900;
  v3[4] = self;
  [(GEOSQLiteDB *)db executeAsync:v3];
}

@end