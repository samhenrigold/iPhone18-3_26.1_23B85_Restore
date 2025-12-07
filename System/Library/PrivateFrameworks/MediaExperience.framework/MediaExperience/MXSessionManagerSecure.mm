@interface MXSessionManagerSecure
+ (id)sharedInstance;
- (BOOL)isSessionWithAudioModeActive:(id)active;
- (MXSessionManagerSecure)init;
- (id)copyActiveSessionsInfoForAdditiveRouting;
- (id)copyMXCoreSessionSecureList;
- (id)copySessionWithAudioSessionID:(unsigned int)d;
- (int)_beginInterruption:(id)interruption withSecTask:(__SecTask *)task andFlags:(unint64_t)flags;
- (int)_endInterruption:(id)interruption withSecTask:(__SecTask *)task andStatus:(id)status;
- (unint64_t)addMXCoreSessionSecure:(id)secure;
- (unint64_t)removeMXCoreSessionSecure:(id)secure;
- (void)dealloc;
- (void)dumpDebugInfo;
@end

@implementation MXSessionManagerSecure

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[MXSessionManagerSecure sharedInstance];
  }

  return sharedInstance_sSharedInstance;
}

MXSessionManagerSecure *__40__MXSessionManagerSecure_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXSessionManagerSecure);
  sharedInstance_sSharedInstance = result;
  return result;
}

- (MXSessionManagerSecure)init
{
  v8 = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = MXSessionManagerSecure;
  v2 = [(MXSessionManagerSecure *)&v7 init];
  v4 = v2;
  if (v2)
  {
    if (CMSMDeviceState_DeviceHasExclaveCapability(v2, v3))
    {
      v4->mMXCoreSessionSecureList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
      v4->mMXCoreSessionSecureListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      return 0;
    }
  }

  return v4;
}

- (void)dealloc
{
  self->mMXCoreSessionSecureList = 0;

  self->mMXCoreSessionSecureListLock = 0;
  v3.receiver = self;
  v3.super_class = MXSessionManagerSecure;
  [(MXSessionManagerSecure *)&v3 dealloc];
}

- (unint64_t)addMXCoreSessionSecure:(id)secure
{
  objc_initWeak(&location, secure);
  [(NSLock *)self->mMXCoreSessionSecureListLock lock];
  [(NSPointerArray *)self->mMXCoreSessionSecureList addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)self->mMXCoreSessionSecureList compact];
  v4 = [(NSPointerArray *)self->mMXCoreSessionSecureList count];
  [(NSLock *)self->mMXCoreSessionSecureListLock unlock];
  objc_destroyWeak(&location);
  return v4;
}

- (unint64_t)removeMXCoreSessionSecure:(id)secure
{
  objc_initWeak(&location, secure);
  [(NSLock *)self->mMXCoreSessionSecureListLock lock];
  for (i = 0; i < [(NSPointerArray *)self->mMXCoreSessionSecureList count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](self->mMXCoreSessionSecureList pointerAtIndex:{i), "isEqual:", objc_loadWeak(&location)}])
    {
      [(NSPointerArray *)self->mMXCoreSessionSecureList removePointerAtIndex:i];
      [(NSPointerArray *)self->mMXCoreSessionSecureList compact];
      break;
    }
  }

  v5 = [(NSPointerArray *)self->mMXCoreSessionSecureList count];
  [(NSLock *)self->mMXCoreSessionSecureListLock unlock];
  objc_destroyWeak(&location);
  return v5;
}

- (id)copyMXCoreSessionSecureList
{
  [(NSLock *)self->mMXCoreSessionSecureListLock lock];
  v3 = objc_autoreleasePoolPush();
  allObjects = [(NSPointerArray *)self->mMXCoreSessionSecureList allObjects];
  objc_autoreleasePoolPop(v3);
  [(NSLock *)self->mMXCoreSessionSecureListLock unlock];
  return allObjects;
}

- (int)_beginInterruption:(id)interruption withSecTask:(__SecTask *)task andFlags:(unint64_t)flags
{
  v8 = *MEMORY[0x1E69E9840];
  [interruption setIsActive:{1, task, flags}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  CMSUtility_CreateReporterIDIfNeeded(interruption);
  return [interruption sendSessionConfigurationInfoToVA];
}

- (int)_endInterruption:(id)interruption withSecTask:(__SecTask *)task andStatus:(id)status
{
  v8 = *MEMORY[0x1E69E9840];
  [interruption setIsActive:{0, task, status}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [interruption sendSessionConfigurationInfoToVA];
}

- (id)copySessionWithAudioSessionID:(unsigned int)d
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionSecureList = [(MXSessionManagerSecure *)self copyMXCoreSessionSecureList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionSecureList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(copyMXCoreSessionSecureList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 audioSessionID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [copyMXCoreSessionSecureList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (id)copyActiveSessionsInfoForAdditiveRouting
{
  v20 = *MEMORY[0x1E69E9840];
  v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
  copyMXCoreSessionSecureList = [(MXSessionManagerSecure *)self copyMXCoreSessionSecureList];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [copyMXCoreSessionSecureList countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    v7 = &qword_1EB75D000;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(copyMXCoreSessionSecureList);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if (objc_msgSend_isActive(v9))
        {
          additiveRoutingInfo = [v9 additiveRoutingInfo];
          if (additiveRoutingInfo)
          {
            [v14 addObject:additiveRoutingInfo];
          }

          else
          {
            v11 = v7;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            v7 = v11;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }
      }

      v5 = [copyMXCoreSessionSecureList countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v14;
}

- (BOOL)isSessionWithAudioModeActive:(id)active
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionSecureList = [(MXSessionManagerSecure *)self copyMXCoreSessionSecureList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionSecureList countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(copyMXCoreSessionSecureList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isActive(v9) && ([v9 hasAudioMode:active] & 1) != 0)
        {
          v10 = 1;
          goto LABEL_12;
        }
      }

      v6 = [copyMXCoreSessionSecureList countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_12:

  return v10;
}

- (void)dumpDebugInfo
{
  v25 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  copyMXCoreSessionSecureList = [(MXSessionManagerSecure *)self copyMXCoreSessionSecureList];
  v5 = CMSMUtility_CopyPrioritizedListBasedOnPlayingAndActiveState(copyMXCoreSessionSecureList);
  if (dword_1EB75DE40)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v15 + 1) + 8 * i) dumpDebugInfo];
      }

      v8 = [v5 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v8);
  }

  if (dword_1EB75DE40)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v12 = v20;
    v13 = type;
    if (os_log_type_enabled(v11, type))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 0xFFFFFFFE;
    }

    if (v14)
    {
      v22 = 136315138;
      v23 = "[MXSessionManagerSecure dumpDebugInfo]";
      _os_log_send_and_compose_impl(v14, 0, v24, 128, &dword_1B17A2000, v11, v13, "-MXSessionManagerSecure- %s: \t =======================================================================================================================================", &v22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

@end