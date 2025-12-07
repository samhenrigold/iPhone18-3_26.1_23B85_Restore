@interface HUDContextUpdater
+ (id)sharedInstance;
- (BOOL)cleanUpExpiredHUDContents;
- (HUDContextUpdater)init;
- (void)HandleUpdateAndClear;
- (void)addHUDContents:(id)contents;
- (void)kickOffUpdater;
- (void)saveClearHUDRequest;
- (void)stopUpdater;
@end

@implementation HUDContextUpdater

- (HUDContextUpdater)init
{
  v11.receiver = self;
  v11.super_class = HUDContextUpdater;
  v2 = [(HUDContextUpdater *)&v11 init];
  v3 = v2;
  if (v2)
  {
    hudUpdateHandler = v2->_hudUpdateHandler;
    v2->_hudUpdateHandler = 0;

    *&v3->_hudContenDictLock._os_unfair_lock_opaque = 0;
    v5 = objc_alloc_init(NSMutableDictionary);
    hudContentDictionary = v3->_hudContentDictionary;
    v3->_hudContentDictionary = v5;

    v7 = objc_alloc_init(NSMutableDictionary);
    clearHUDRequestDictionary = v3->_clearHUDRequestDictionary;
    v3->_clearHUDRequestDictionary = v7;

    updateTimer = v3->_updateTimer;
    v3->_updateTimer = 0;
  }

  return v3;
}

- (void)addHUDContents:(id)contents
{
  contentsCopy = contents;
  os_unfair_lock_lock(&self->_hudContenDictLock);
  [(NSMutableDictionary *)self->_hudContentDictionary addEntriesFromDictionary:contentsCopy];

  os_unfair_lock_unlock(&self->_hudContenDictLock);
  v5 = +[HUDRenderServer sharedInstance];
  [v5 prepareHUDContextIfNeeded];
}

- (void)saveClearHUDRequest
{
  v3 = [HTHangHUDInfo alloc];
  LOBYTE(v8) = 1;
  v4 = [(HTHangHUDInfo *)v3 initWithHangStartTime:0 hangEndTime:0 receivedTimestamp:0 hangDurationMS:off_10003E3D8 hudString:off_10003E3D8 shortenedBundle:off_10003E3D8 bundleId:0.0 timedOut:v8];
  os_unfair_lock_lock(&self->_clearHUDRequestDictLock);
  [(NSMutableDictionary *)self->_clearHUDRequestDictionary setObject:v4 forKey:off_10003E3D8];
  os_unfair_lock_unlock(&self->_clearHUDRequestDictLock);
  v6 = sub_10000A9AC(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    clearHUDRequestDictionary = self->_clearHUDRequestDictionary;
    *buf = 138412290;
    v10 = clearHUDRequestDictionary;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, " - clear HUD dict: %@", buf, 0xCu);
  }
}

- (BOOL)cleanUpExpiredHUDContents
{
  os_unfair_lock_lock(&self->_hudContenDictLock);
  [(NSMutableDictionary *)self->_hudContentDictionary allKeys];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v3 = v45 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v4)
  {
    v6 = v4;
    v41 = 0;
    v7 = *v43;
    *&v5 = 138413314;
    v40 = v5;
    while (1)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v43 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v42 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_hudContentDictionary objectForKeyedSubscript:v9, v40];
        v11 = mach_absolute_time();
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            goto LABEL_22;
          }

          v22 = v10;
          v17 = [HUDContext displayNameForHangInfo:v22];
          receivedTimestamp = [v22 receivedTimestamp];
          v26 = sub_100017A6C(v11 - receivedTimestamp, v24);
          if (v26 <= 5000.0)
          {
            processName2 = sub_10000A9AC(v25);
            if (os_log_type_enabled(processName2, OS_LOG_TYPE_DEBUG))
            {
              v35 = sub_100017A6C(v11, v28);
              receivedTimestamp2 = [v22 receivedTimestamp];
              v38 = sub_100017A6C(receivedTimestamp2, v37);
              *buf = v40;
              v47 = v17;
              v48 = 2048;
              v49 = v26;
              v50 = 1024;
              *v51 = 5000;
              *&v51[4] = 2048;
              *&v51[6] = v35;
              v52 = 2048;
              v53 = v38;
              _os_log_debug_impl(&_mh_execute_header, processName2, OS_LOG_TYPE_DEBUG, "  ==> keeping hangInfo item %@ since durationToKeepRendering: %f ms < threshold: %i ms where current_time: %fms, receivedTimestamp: %f", buf, 0x30u);
            }
          }

          else
          {
            processName2 = sub_10000A9AC([(NSMutableDictionary *)self->_hudContentDictionary removeObjectForKey:v9]);
            if (os_log_type_enabled(processName2, OS_LOG_TYPE_DEFAULT))
            {
              hangStartTime = [v22 hangStartTime];
              *buf = 138413058;
              v47 = v17;
              v48 = 2048;
              v49 = *&hangStartTime;
              v50 = 2048;
              *v51 = v26;
              *&v51[8] = 1024;
              *&v51[10] = 5000;
              v20 = processName2;
              v21 = "  ==> removing hangInfo with process name %@ and hangStartTime: %llu since durationToKeepRendering: %f ms > threshold: %i ms";
LABEL_14:
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0x26u);
            }
          }

          goto LABEL_21;
        }

        v12 = v10;
        requestedToRenderTimestamp = [v12 requestedToRenderTimestamp];
        v16 = sub_100017A6C(v11 - requestedToRenderTimestamp, v14);
        if (v16 <= 5000.0)
        {
          v17 = sub_10000A9AC(v15);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            processName = [v12 processName];
            v31 = sub_100017A6C(v11, v30);
            exitTimestamp = [v12 exitTimestamp];
            v34 = sub_100017A6C(exitTimestamp, v33);
            *buf = v40;
            v47 = processName;
            v48 = 2048;
            v49 = v16;
            v50 = 1024;
            *v51 = 5000;
            *&v51[4] = 2048;
            *&v51[6] = v31;
            v52 = 2048;
            v53 = v34;
            _os_log_debug_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "  ==> keeping ProcExit item %@ since durationToKeepRendering: %f ms < threshold: %i where current_time: %f ms, exitTimestamp: %f", buf, 0x30u);
          }

          v41 = 1;
          goto LABEL_21;
        }

        v17 = sub_10000A9AC([(NSMutableDictionary *)self->_hudContentDictionary removeObjectForKey:v9]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          processName2 = [v12 processName];
          exitTimestamp2 = [v12 exitTimestamp];
          *buf = 138413058;
          v47 = processName2;
          v48 = 2048;
          v49 = *&exitTimestamp2;
          v50 = 2048;
          *v51 = v16;
          *&v51[8] = 1024;
          *&v51[10] = 5000;
          v20 = v17;
          v21 = "  ==> removing ProcExit item %@ and exit timestamp %llu since durationToKeepRendering: %f ms > theshold: %i ms";
          goto LABEL_14;
        }

LABEL_21:

LABEL_22:
      }

      v6 = [v3 countByEnumeratingWithState:&v42 objects:v54 count:16];
      if (!v6)
      {
        goto LABEL_26;
      }
    }
  }

  v41 = 0;
LABEL_26:
  os_unfair_lock_unlock(&self->_hudContenDictLock);

  return v41 & 1;
}

+ (id)sharedInstance
{
  if (qword_10003E710 != -1)
  {
    sub_100018C28();
  }

  v3 = qword_10003E708;

  return v3;
}

- (void)kickOffUpdater
{
  if (!self->_updateTimer)
  {
    v8[7] = v2;
    v8[8] = v3;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100005FF8;
    v8[3] = &unk_100030A28;
    v8[4] = self;
    v5 = [NSTimer timerWithTimeInterval:1 repeats:v8 block:0.05];
    updateTimer = self->_updateTimer;
    self->_updateTimer = v5;

    v7 = +[NSRunLoop mainRunLoop];
    [v7 addTimer:self->_updateTimer forMode:NSDefaultRunLoopMode];

    [(NSTimer *)self->_updateTimer fire];
  }
}

- (void)stopUpdater
{
  [(NSTimer *)self->_updateTimer invalidate];
  updateTimer = self->_updateTimer;
  self->_updateTimer = 0;
}

- (void)HandleUpdateAndClear
{
  hudUpdateHandler = self->_hudUpdateHandler;
  if (hudUpdateHandler)
  {
    hudUpdateHandler[2](hudUpdateHandler, self->_hudContentDictionary);
    cleanUpExpiredHUDContents = [(HUDContextUpdater *)self cleanUpExpiredHUDContents];
    if ([(NSMutableDictionary *)self->_clearHUDRequestDictionary count]&& (cleanUpExpiredHUDContents & 1) == 0)
    {
      (*(self->_hudUpdateHandler + 2))();
      os_unfair_lock_lock(&self->_clearHUDRequestDictLock);
      [(NSMutableDictionary *)self->_clearHUDRequestDictionary removeAllObjects];
      os_unfair_lock_unlock(&self->_clearHUDRequestDictLock);
    }

    if (![(NSMutableDictionary *)self->_hudContentDictionary count]&& (byte_10003E718 & 1) == 0)
    {
      v5 = sub_10000A9AC(0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        sub_100018CC4();
      }

      v6 = +[HUDContextUpdater sharedInstance];
      [v6 saveClearHUDRequest];

      byte_10003E718 = 1;
    }

    if ([(NSMutableDictionary *)self->_hudContentDictionary count])
    {
      byte_10003E718 = 0;
    }
  }
}

@end