@interface IRReplayWriter
- (IRReplayWriter)initWithServiceStore:(id)store;
- (void)dealloc;
- (void)deallocSync;
- (void)writeReplayEventWithReason:(id)reason SystemState:(id)state miloLslPrediction:(id)prediction candidatesContainerDO:(id)o nearbyDeviceContainerDO:(id)dO date:(id)date;
@end

@implementation IRReplayWriter

- (IRReplayWriter)initWithServiceStore:(id)store
{
  storeCopy = store;
  v11.receiver = self;
  v11.super_class = IRReplayWriter;
  v6 = [(IRReplayWriter *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
    v8 = objc_opt_new();
    bufferedReplayEvents = v7->_bufferedReplayEvents;
    v7->_bufferedReplayEvents = v8;
  }

  return v7;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IRReplayWriter;
  [(IRReplayWriter *)&v2 dealloc];
}

- (void)deallocSync
{
  v24 = *MEMORY[0x277D85DE8];
  if ([(NSMutableSet *)self->_bufferedReplayEvents count])
  {
    v3 = MEMORY[0x277D21308];
    v4 = dispatch_get_specific(*MEMORY[0x277D21308]);
    v5 = MEMORY[0x277D21260];
    v6 = *MEMORY[0x277D21260];
    if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
    {
      v7 = MEMORY[0x277CCABB0];
      bufferedReplayEvents = self->_bufferedReplayEvents;
      v9 = v6;
      v10 = [v7 numberWithUnsignedInteger:{-[NSMutableSet count](bufferedReplayEvents, "count")}];
      v18 = 136315650;
      v19 = "#replay-writer, ";
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_25543D000, v9, OS_LOG_TYPE_DEBUG, "%s[%@], Writing %@ replay events to DB on dealloc", &v18, 0x20u);
    }

    p_bufferedReplayEvents = &self->_bufferedReplayEvents;
    v11 = self->_bufferedReplayEvents;
    v12 = p_bufferedReplayEvents[1];
    v14 = +[IRPreferences shared];
    numberOfEventsToSaveInDisk = [v14 numberOfEventsToSaveInDisk];
    LOBYTE(v11) = -[NSMutableSet addReplayEvents:withLimit:](v12, "addReplayEvents:withLimit:", v11, [numberOfEventsToSaveInDisk unsignedIntValue]);

    if ((v11 & 1) == 0)
    {
      v16 = dispatch_get_specific(*v3);
      v17 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
      {
        v18 = 136315394;
        v19 = "#replay-writer, ";
        v20 = 2112;
        v21 = v16;
        _os_log_impl(&dword_25543D000, v17, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Replay dealloc error] Could not save replay events", &v18, 0x16u);
      }
    }
  }
}

- (void)writeReplayEventWithReason:(id)reason SystemState:(id)state miloLslPrediction:(id)prediction candidatesContainerDO:(id)o nearbyDeviceContainerDO:(id)dO date:(id)date
{
  v44 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  stateCopy = state;
  predictionCopy = prediction;
  oCopy = o;
  dOCopy = dO;
  dateCopy = date;
  if (+[IRPlatformInfo isInternalInstall])
  {
    v37 = reasonCopy;
    v36 = [[IRReplayEventDO alloc] initWithDate:dateCopy contextChangeReason:reasonCopy candidatesContainer:oCopy miloLslPrediction:predictionCopy systemState:stateCopy nearbyDeviceContainerDO:dOCopy];
    [(NSMutableSet *)self->_bufferedReplayEvents addObject:?];
    v20 = [(NSMutableSet *)self->_bufferedReplayEvents count];
    v21 = +[IRPreferences shared];
    replayWriterEventsSizeToBuffer = [v21 replayWriterEventsSizeToBuffer];
    unsignedIntValue = [replayWriterEventsSizeToBuffer unsignedIntValue];

    if (v20 >= unsignedIntValue)
    {
      v24 = dispatch_get_specific(*MEMORY[0x277D21308]);
      v25 = *MEMORY[0x277D21260];
      if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_DEBUG))
      {
        v26 = MEMORY[0x277CCABB0];
        bufferedReplayEvents = self->_bufferedReplayEvents;
        v28 = v25;
        v29 = [v26 numberWithUnsignedInteger:{-[NSMutableSet count](bufferedReplayEvents, "count")}];
        *buf = 136315650;
        v39 = "#replay-writer, ";
        v40 = 2112;
        v41 = v24;
        v42 = 2112;
        v43 = v29;
        _os_log_impl(&dword_25543D000, v28, OS_LOG_TYPE_DEBUG, "%s[%@], Writing %@ replay events to DB", buf, 0x20u);
      }

      v31 = self->_bufferedReplayEvents;
      store = self->_store;
      v32 = +[IRPreferences shared];
      numberOfEventsToSaveInDisk = [v32 numberOfEventsToSaveInDisk];
      LOBYTE(store) = -[IRServiceStore addReplayEvents:withLimit:](store, "addReplayEvents:withLimit:", v31, [numberOfEventsToSaveInDisk unsignedIntValue]);

      if ((store & 1) == 0)
      {
        v34 = dispatch_get_specific(*MEMORY[0x277D21308]);
        v35 = *MEMORY[0x277D21260];
        if (os_log_type_enabled(*MEMORY[0x277D21260], OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v39 = "#replay-writer, ";
          v40 = 2112;
          v41 = v34;
          _os_log_impl(&dword_25543D000, v35, OS_LOG_TYPE_ERROR, "%s[%@], [ErrorId - Replay save error] Could not save replay events", buf, 0x16u);
        }
      }

      [(NSMutableSet *)self->_bufferedReplayEvents removeAllObjects];
    }

    reasonCopy = v37;
  }
}

@end