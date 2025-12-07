@interface MXExclaves
+ (id)sensorStatusToString:(unsigned int)string;
+ (id)sharedInstance;
- (BOOL)shouldSendSensorStatusStatistics:(unsigned int)statistics newStatus:(unsigned int)status;
- (MXExclaves)init;
- (int)updateSensorStatus:(id)status reason:(id)reason;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)handleSensorStatusChanged;
- (void)reportExclavesSensorStatusStatistics:(unint64_t)statistics previousStatus:(unsigned int)status newStatus:(unsigned int)newStatus;
- (void)resetClientsStillUsingExclavesSensor;
- (void)updateSessionTimestampFromSensorStart:(unint64_t)start;
@end

@implementation MXExclaves

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_5 != -1)
  {
    +[MXExclaves sharedInstance];
  }

  return sharedInstance_sSharedInstance_5;
}

MXExclaves *__28__MXExclaves_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXExclaves);
  sharedInstance_sSharedInstance_5 = result;
  return result;
}

+ (id)sensorStatusToString:(unsigned int)string
{
  if (string - 1 >= 4)
  {
    return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown(%d)", *&string];
  }

  else
  {
    return off_1E7AEB2F0[string - 1];
  }
}

- (MXExclaves)init
{
  v9 = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = MXExclaves;
  v2 = [(MXExclaves *)&v8 init];
  v4 = v2;
  if (v2)
  {
    if (!CMSMDeviceState_DeviceHasExclaveCapability(v2, v3))
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      goto LABEL_8;
    }

    if (exclaves_sensor_create())
    {
      if (!dword_1EB75DE40)
      {
LABEL_9:

        return 0;
      }

      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
LABEL_8:
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_9;
    }

    v4->mSensorAccessCount = 0;
    v4->mSensorPortLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    v4->mSensorStatus = 2;
    v4->mClientsUsingSensorToRecord = objc_alloc_init(MEMORY[0x1E695DF70]);
    vaeAddExclavesStatusChangedNotificationListener();
  }

  return v4;
}

- (void)dealloc
{
  mach_port_deallocate(*MEMORY[0x1E69E9A60], self->mSensorPort);

  self->mSensorPortLock = 0;
  self->mClientsUsingSensorToRecord = 0;
  v3.receiver = self;
  v3.super_class = MXExclaves;
  [(MXExclaves *)&v3 dealloc];
}

- (int)updateSensorStatus:(id)status reason:(id)reason
{
  v29[24] = *MEMORY[0x1E69E9840];
  if (status)
  {
    v26 = 0;
    [(NSLock *)self->mSensorPortLock lock];
    if (([status isUsingExclaveSensor] & 1) != 0 || !objc_msgSend(status, "requiresExclaveSensor"))
    {
      if ([status isUsingExclaveSensor] && (objc_msgSend(status, "requiresExclaveSensor") & 1) == 0)
      {
        if (exclaves_sensor_stop())
        {
LABEL_12:
          *v25 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          v8 = -15685;
LABEL_30:
          [(NSLock *)self->mSensorPortLock unlock];
          return v8;
        }

        --self->mSensorAccessCount;
        [status setIsUsingExclaveSensor:0];
        if (dword_1EB75DE40)
        {
          *v25 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v13 = [(NSMutableArray *)self->mClientsUsingSensorToRecord copy];
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v14 = [v13 countByEnumeratingWithState:&v20 objects:v27 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v21;
          while (2)
          {
            for (i = 0; i != v15; ++i)
            {
              if (*v21 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v20 + 1) + 8 * i);
              if ([objc_msgSend(v18 "allKeys")])
              {
                [(NSMutableArray *)self->mClientsUsingSensorToRecord removeObject:v18];
                goto LABEL_28;
              }
            }

            v15 = [v13 countByEnumeratingWithState:&v20 objects:v27 count:16];
            if (v15)
            {
              continue;
            }

            break;
          }
        }

LABEL_28:
      }

      else if (dword_1EB75DE40)
      {
        *v25 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      if (exclaves_sensor_start())
      {
        goto LABEL_12;
      }

      ++self->mSensorAccessCount;
      [status setIsUsingExclaveSensor:1];
      if (dword_1EB75DE40)
      {
        *v25 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      mClientsUsingSensorToRecord = self->mClientsUsingSensorToRecord;
      displayID = [status displayID];
      v29[0] = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_absolute_time()];
      -[NSMutableArray addObject:](mClientsUsingSensorToRecord, "addObject:", [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&displayID count:1]);
    }

    v8 = 0;
    goto LABEL_30;
  }

  v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return -12981;
}

- (void)dumpDebugInfo
{
  v7 = *MEMORY[0x1E69E9840];
  [(NSLock *)self->mSensorPortLock lock];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (exclaves_sensor_status() || dword_1EB75DE40)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  [(NSLock *)self->mSensorPortLock unlock];
}

- (void)handleSensorStatusChanged
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = vaeCopyExclavesSensorStatusInfo();
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  [v4 setDateFormat:@"YYYY.MM.dd HH:mm:ss:ms"];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = v3;
  v15 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v15)
  {
    v5 = *v17;
    v12 = v4;
    v13 = *v17;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [objc_msgSend(v7 objectForKey:{@"machAbsoluteTime", "unsignedLongLongValue"}];
        [v4 stringFromDate:{objc_msgSend(MEMORY[0x1E695DF00], "dateWithTimeIntervalSinceReferenceDate:", v8)}];
        v9 = [objc_msgSend(v7 objectForKey:{@"statusRawValue", "intValue"}];
        if ([objc_msgSend(v7 objectForKey:{@"operation", "unsignedLongLongValue"}] == 1)
        {
          [(MXExclaves *)self updateSessionTimestampFromSensorStart:v8];
        }

        mSensorStatus = self->mSensorStatus;
        if (mSensorStatus != v9)
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            mSensorStatus = self->mSensorStatus;
            v4 = v12;
            v5 = v13;
          }

          if ([(MXExclaves *)self shouldSendSensorStatusStatistics:mSensorStatus newStatus:v9])
          {
            [(MXExclaves *)self reportExclavesSensorStatusStatistics:v8 previousStatus:self->mSensorStatus newStatus:v9];
          }

          if (self->mSensorStatus == 1)
          {
            [(MXExclaves *)self resetClientsStillUsingExclavesSensor];
          }

          self->mSensorStatus = v9;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v15);
  }
}

- (void)reportExclavesSensorStatusStatistics:(unint64_t)statistics previousStatus:(unsigned int)status newStatus:(unsigned int)newStatus
{
  v29 = *MEMORY[0x1E69E9840];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = self->mClientsUsingSensorToRecord;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        v10 = [objc_msgSend(v9 "allKeys")];
        v11 = [objc_msgSend(objc_msgSend(v9 "allValues")];
        v12 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:statistics - v11];
        v13 = objc_alloc(MEMORY[0x1E695DF20]);
        v14 = kMXAudioStatistics_ExclavesRecordingClientBundleId;
        v15 = [MXExclaves sensorStatusToString:status];
        v16 = kMXAudioStatistics_ExclavesPreviousSensorStatus;
        v17 = [MXExclaves sensorStatusToString:newStatus];
        v18 = [v13 initWithObjectsAndKeys:{v10, v14, v15, v16, v17, kMXAudioStatistics_ExclavesNewSensorStatus, v12, kMXAudioStatistics_DurationInNanoSeconds, 0}];
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSingleMessageWithDictionary:"sendSingleMessageWithDictionary:eventCategory:eventType:" eventCategory:v18 eventType:2, 18];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v6);
  }
}

- (void)updateSessionTimestampFromSensorStart:(unint64_t)start
{
  v9[1] = *MEMORY[0x1E69E9840];
  if ([(NSMutableArray *)self->mClientsUsingSensorToRecord count])
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:start];
    v6 = [objc_msgSend(-[NSMutableArray firstObject](self->mClientsUsingSensorToRecord "firstObject")];
    mClientsUsingSensorToRecord = self->mClientsUsingSensorToRecord;
    v8 = v6;
    v9[0] = v5;
    -[NSMutableArray replaceObjectAtIndex:withObject:](mClientsUsingSensorToRecord, "replaceObjectAtIndex:withObject:", 0, [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1]);
  }
}

- (BOOL)shouldSendSensorStatusStatistics:(unsigned int)statistics newStatus:(unsigned int)status
{
  v15 = *MEMORY[0x1E69E9840];
  if (statistics != status)
  {
    if (status == 1)
    {
      copyMXCoreSessionList = 0;
    }

    else
    {
      if (status != 2)
      {
        LOBYTE(v8) = 0;
        copyMXCoreSessionList = 0;
        goto LABEL_17;
      }

      copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (!v8)
      {
LABEL_17:

        return v8;
      }

      v6 = *v11;
LABEL_7:
      v7 = 0;
      while (1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        if ([*(*(&v10 + 1) + 8 * v7) isUsingExclaveSensor])
        {
          break;
        }

        if (v8 == ++v7)
        {
          v8 = [copyMXCoreSessionList countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v8)
          {
            goto LABEL_7;
          }

          goto LABEL_17;
        }
      }
    }

    LOBYTE(v8) = 1;
    goto LABEL_17;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  LOBYTE(v8) = 0;
  return v8;
}

- (void)resetClientsStillUsingExclavesSensor
{
  v13 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->mClientsUsingSensorToRecord removeAllObjects];
  copyMXCoreSessionList = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [copyMXCoreSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(copyMXCoreSessionList);
        }

        if ([*(*(&v8 + 1) + 8 * i) isUsingExclaveSensor])
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          MXSimulateCrash("Clients are still using exclaves sensor after switching to a non allowed sensor status. Please file a bug to MediaExperience (New Bugs) | All.");
        }
      }

      v4 = [copyMXCoreSessionList countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

@end