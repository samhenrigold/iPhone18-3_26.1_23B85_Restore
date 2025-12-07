@interface MXSessionManagerIndependentAudioResource
+ (id)sharedInstance;
- (MXSessionManagerIndependentAudioResource)init;
- (id)copyIndependentInputAudioResourceSessionWithAudioSessionID:(unsigned int)d;
- (id)copyMXCoreSessionIndependentInputAudioResourceList;
- (int)_beginInterruption:(id)interruption withSecTask:(__SecTask *)task andFlags:(unint64_t)flags;
- (int)_endInterruption:(id)interruption withSecTask:(__SecTask *)task andStatus:(id)status;
- (void)addMXCoreSessionIndependentInputAudioResource:(id)resource;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)interruptAllIndependentInputAudioResourceSessions:(id)sessions interruptorName:(id)name;
- (void)interruptIndpendentInputAudioResourceSession:(id)session interruptorBundleID:(id)d interruptorName:(id)name fadeDuration:(id)duration waitingToResume:(BOOL)resume;
- (void)postInterruptionCommandNotification:(id)notification interruptionCommand:(int)command interruptorName:(id)name interruptorBundleID:(id)d status:(id)status volumeChangeDuration:(id)duration;
- (void)postStopCommandToShadowingSessionsForSession:(id)session withShadowingOptions:(unsigned int)options interruptor:(id)interruptor waitingToResume:(BOOL)resume;
- (void)removeMXCoreSessionIndependentInputAudioResource:(id)resource;
- (void)resumeAllIndependentInputAudioResourceSessions:(id)sessions interruptorBundleID:(id)d interruptorName:(id)name;
- (void)resumeAllIndependentInputAudioResourceSessionsShadowing:(id)shadowing withShadowingOptions:(unsigned int)options interruptor:(id)interruptor status:(id)status;
- (void)resumeIndependentInputAudioResourceSession:(id)session interruptorBundleID:(id)d interruptorName:(id)name status:(id)status fadeDuration:(id)duration;
@end

@implementation MXSessionManagerIndependentAudioResource

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[MXSessionManagerIndependentAudioResource sharedInstance];
  }

  return sharedInstance_sSharedInstance_3;
}

- (id)copyMXCoreSessionIndependentInputAudioResourceList
{
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock lock];
  v3 = objc_autoreleasePoolPush();
  allObjects = [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList allObjects];
  objc_autoreleasePoolPop(v3);
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock unlock];
  return allObjects;
}

MXSessionManagerIndependentAudioResource *__58__MXSessionManagerIndependentAudioResource_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXSessionManagerIndependentAudioResource);
  sharedInstance_sSharedInstance_3 = result;
  return result;
}

- (MXSessionManagerIndependentAudioResource)init
{
  v4.receiver = self;
  v4.super_class = MXSessionManagerIndependentAudioResource;
  v2 = [(MXSessionManagerIndependentAudioResource *)&v4 init];
  if (v2)
  {
    v2->mMXCoreSessionIndependentInputAudioResourceList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
    v2->mMXCoreSessionIndependentInputAudioResourceListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  }

  return v2;
}

- (void)dealloc
{
  self->mMXCoreSessionIndependentInputAudioResourceList = 0;

  self->mMXCoreSessionIndependentInputAudioResourceListLock = 0;
  v3.receiver = self;
  v3.super_class = MXSessionManagerIndependentAudioResource;
  [(MXSessionManagerIndependentAudioResource *)&v3 dealloc];
}

- (void)addMXCoreSessionIndependentInputAudioResource:(id)resource
{
  objc_initWeak(&location, resource);
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock lock];
  [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList compact];
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock unlock];
  objc_destroyWeak(&location);
}

- (void)removeMXCoreSessionIndependentInputAudioResource:(id)resource
{
  objc_initWeak(&location, resource);
  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock lock];
  for (i = 0; i < [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](self->mMXCoreSessionIndependentInputAudioResourceList pointerAtIndex:{i), "isEqual:", objc_loadWeak(&location)}])
    {
      [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList removePointerAtIndex:i];
      [(NSPointerArray *)self->mMXCoreSessionIndependentInputAudioResourceList compact];
      break;
    }
  }

  [(NSLock *)self->mMXCoreSessionIndependentInputAudioResourceListLock unlock];
  objc_destroyWeak(&location);
}

- (int)_beginInterruption:(id)interruption withSecTask:(__SecTask *)task andFlags:(unint64_t)flags
{
  [interruption activate];
  [interruption sendSessionConfigurationInfoToVA];
  return 0;
}

- (int)_endInterruption:(id)interruption withSecTask:(__SecTask *)task andStatus:(id)status
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [interruption deactivate];
  [interruption sendSessionConfigurationInfoToVA];
  return 0;
}

- (id)copyIndependentInputAudioResourceSessionWithAudioSessionID:(unsigned int)d
{
  v17 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionIndependentInputAudioResourceList = [(MXSessionManagerIndependentAudioResource *)self copyMXCoreSessionIndependentInputAudioResourceList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [copyMXCoreSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(copyMXCoreSessionIndependentInputAudioResourceList);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 audioSessionID] == d)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [copyMXCoreSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)postInterruptionCommandNotification:(id)notification interruptionCommand:(int)command interruptorName:(id)name interruptorBundleID:(id)d status:(id)status volumeChangeDuration:(id)duration
{
  v12 = *&command;
  v21[25] = *MEMORY[0x1E69E9840];
  v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v14 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInt:", v12), @"InterruptionCmd"}];
  if (name)
  {
    nameCopy = name;
  }

  else
  {
    nameCopy = @"unknown";
  }

  [v14 setObject:nameCopy forKey:@"InterruptorName"];
  if (status)
  {
    [v14 setObject:status forKey:@"Status"];
  }

  if (d)
  {
    [v14 setObject:d forKey:@"InterruptorBundleID"];
  }

  if (duration)
  {
    [v14 setObject:duration forKey:@"VolumeChangeDuration"];
  }

  if (+[MXSessionManagerBase postInterruptionCommandForAudioSessionID:sessionID:interruptiondCmd:interruptionInfo:](MXSessionManagerBase, "postInterruptionCommandForAudioSessionID:sessionID:interruptiondCmd:interruptionInfo:", [objc_msgSend(notification "clientPID")], objc_msgSend(notification, "audioSessionID"), v12, v14))
  {
    v16 = v14;
    notificationCopy = notification;
    v19 = MXGetNotificationSenderQueue(notificationCopy, v18);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __164__MXSessionManagerIndependentAudioResource_postInterruptionCommandNotification_interruptionCommand_interruptorName_interruptorBundleID_status_volumeChangeDuration___block_invoke;
    v21[3] = &unk_1E7AEA340;
    v21[4] = notification;
    v21[5] = v14;
    MXDispatchAsync("[MXSessionManagerIndependentAudioResource postInterruptionCommandNotification:interruptionCommand:interruptorName:interruptorBundleID:status:volumeChangeDuration:]", "MXSessionManagerIndependentAudioResource.m", 181, 0, 0, v19, v21);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __164__MXSessionManagerIndependentAudioResource_postInterruptionCommandNotification_interruptionCommand_interruptorName_interruptorBundleID_status_volumeChangeDuration___block_invoke(uint64_t a1)
{
  CMSMUtility_PostNotificationToSession(*(a1 + 32), @"Interruption", *(a1 + 40));

  v2 = *(a1 + 32);
}

- (void)interruptIndpendentInputAudioResourceSession:(id)session interruptorBundleID:(id)d interruptorName:(id)name fadeDuration:(id)duration waitingToResume:(BOOL)resume
{
  resumeCopy = resume;
  v14 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isActive(session, a2))
  {
    [session setWaitingToResume:resumeCopy];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXSessionManagerIndependentAudioResource *)self postInterruptionCommandNotification:session interruptionCommand:0 interruptorName:name interruptorBundleID:d status:0 volumeChangeDuration:duration];
    [session deactivate];
  }
}

- (void)interruptAllIndependentInputAudioResourceSessions:(id)sessions interruptorName:(id)name
{
  v18 = *MEMORY[0x1E69E9840];
  copyMXCoreSessionIndependentInputAudioResourceList = [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource copyMXCoreSessionIndependentInputAudioResourceList];
  v8 = CMSUtility_CopyFadeDuration(0, 0, 0);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = [copyMXCoreSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(copyMXCoreSessionIndependentInputAudioResourceList);
        }

        -[MXSessionManagerIndependentAudioResource interruptIndpendentInputAudioResourceSession:interruptorBundleID:interruptorName:fadeDuration:waitingToResume:](self, "interruptIndpendentInputAudioResourceSession:interruptorBundleID:interruptorName:fadeDuration:waitingToResume:", *(*(&v13 + 1) + 8 * v12), sessions, name, v8, [*(*(&v13 + 1) + 8 * v12) isPlaying]);
        ++v12;
      }

      while (v10 != v12);
      v10 = [copyMXCoreSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)resumeIndependentInputAudioResourceSession:(id)session interruptorBundleID:(id)d interruptorName:(id)name status:(id)status fadeDuration:(id)duration
{
  v14 = *MEMORY[0x1E69E9840];
  if ([session waitingToResume])
  {
    [session setWaitingToResume:0];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXSessionManagerIndependentAudioResource *)self postInterruptionCommandNotification:session interruptionCommand:1 interruptorName:name interruptorBundleID:d status:status volumeChangeDuration:duration];
  }
}

- (void)resumeAllIndependentInputAudioResourceSessions:(id)sessions interruptorBundleID:(id)d interruptorName:(id)name
{
  v23 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v21 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  copyMXCoreSessionIndependentInputAudioResourceList = [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource copyMXCoreSessionIndependentInputAudioResourceList];
  v11 = CMSUtility_CopyFadeDuration(0, 1, 0);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = [copyMXCoreSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(copyMXCoreSessionIndependentInputAudioResourceList);
        }

        [(MXSessionManagerIndependentAudioResource *)self resumeIndependentInputAudioResourceSession:*(*(&v16 + 1) + 8 * i) interruptorBundleID:d interruptorName:name status:sessions fadeDuration:v11];
      }

      v13 = [copyMXCoreSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v13);
  }
}

- (void)postStopCommandToShadowingSessionsForSession:(id)session withShadowingOptions:(unsigned int)options interruptor:(id)interruptor waitingToResume:(BOOL)resume
{
  v30 = *MEMORY[0x1E69E9840];
  if (session)
  {
    resumeCopy = resume;
    v8 = *&options;
    copyMXCoreSessionIndependentInputAudioResourceList = [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource copyMXCoreSessionIndependentInputAudioResourceList];
    v12 = +[MXSessionManagerBase copySessionsShadowingAudioSessionID:withShadowingOptions:fromSessionList:](MXSessionManagerBase, "copySessionsShadowingAudioSessionID:withShadowingOptions:fromSessionList:", [session audioSessionID], v8, copyMXCoreSessionIndependentInputAudioResourceList);

    if (dword_1EB75DE40)
    {
      v28 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = CMSUtility_CopyFadeDuration(interruptor, 0, 0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          displayID = [interruptor displayID];
          if (interruptor)
          {
            clientName = [interruptor clientName];
          }

          else
          {
            clientName = @"CMSessionManager";
          }

          [(MXSessionManagerIndependentAudioResource *)self interruptIndpendentInputAudioResourceSession:v20 interruptorBundleID:displayID interruptorName:clientName fadeDuration:v15 waitingToResume:resumeCopy];
        }

        v17 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)resumeAllIndependentInputAudioResourceSessionsShadowing:(id)shadowing withShadowingOptions:(unsigned int)options interruptor:(id)interruptor status:(id)status
{
  v30 = *MEMORY[0x1E69E9840];
  if (shadowing)
  {
    v8 = *&options;
    copyMXCoreSessionIndependentInputAudioResourceList = [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource copyMXCoreSessionIndependentInputAudioResourceList];
    v12 = +[MXSessionManagerBase copySessionsShadowingAudioSessionID:withShadowingOptions:fromSessionList:](MXSessionManagerBase, "copySessionsShadowingAudioSessionID:withShadowingOptions:fromSessionList:", [shadowing audioSessionID], v8, copyMXCoreSessionIndependentInputAudioResourceList);

    if (dword_1EB75DE40)
    {
      v28 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v15 = CMSUtility_CopyFadeDuration(interruptor, 1, 0);
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v24;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v24 != v18)
          {
            objc_enumerationMutation(v12);
          }

          v20 = *(*(&v23 + 1) + 8 * i);
          displayID = [interruptor displayID];
          if (interruptor)
          {
            clientName = [interruptor clientName];
          }

          else
          {
            clientName = @"CMSessionManager";
          }

          [(MXSessionManagerIndependentAudioResource *)self resumeIndependentInputAudioResourceSession:v20 interruptorBundleID:displayID interruptorName:clientName status:status fadeDuration:v15];
        }

        v17 = [v12 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)dumpDebugInfo
{
  v24 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(self, a2))
  {
    if (dword_1EB75DE40)
    {
      v19 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    copyMXCoreSessionIndependentInputAudioResourceList = [(MXSessionManagerIndependentAudioResource *)self copyMXCoreSessionIndependentInputAudioResourceList];
    if (dword_1EB75DE40)
    {
      v19 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [copyMXCoreSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v14 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(copyMXCoreSessionIndependentInputAudioResourceList);
          }

          [*(*(&v14 + 1) + 8 * i) dumpDebugInfo];
        }

        v7 = [copyMXCoreSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v14 objects:v20 count:16];
      }

      while (v7);
    }

    if (dword_1EB75DE40)
    {
      v19 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v11 = v19;
      v12 = type;
      if (os_log_type_enabled(v10, type))
      {
        v13 = v11;
      }

      else
      {
        v13 = v11 & 0xFFFFFFFE;
      }

      if (v13)
      {
        v21 = 136315138;
        v22 = "[MXSessionManagerIndependentAudioResource dumpDebugInfo]";
        _os_log_send_and_compose_impl(v13, 0, v23, 128, &dword_1B17A2000, v10, v12, "-MXSessionManagerIndependentAudioResource- %s: \t =======================================================================================================================================", &v21);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

@end