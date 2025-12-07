@interface MXSessionManagerSidekick
+ (id)sharedInstance;
- (BOOL)isSomeOtherSessionPlaying:(id)playing;
- (MXSessionManagerSidekick)init;
- (id)copyMXCoreSessionForAudioSessionID:(unsigned int)d;
- (id)copyMXSessionList:(id)list;
- (int)postInterruptionEndedNotificationForAudioSessionID:(unsigned int)d resumable:(BOOL)resumable;
- (void)dealloc;
- (void)dumpCoreSessionList;
- (void)dumpVersionNumbersFromSidekickSessionBehavioursPlist;
- (void)postNotification:(id)notification toSession:(id)session payload:(id)payload;
- (void)registerMXCoreSessionSidekick:(id)sidekick;
- (void)unregisterMXCoreSessionSidekick:(id)sidekick;
@end

@implementation MXSessionManagerSidekick

- (void)dumpCoreSessionList
{
  v52 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  [(NSPointerArray *)self->mCoreSessionList addPointer:0];
  [(NSPointerArray *)self->mCoreSessionList compact];
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  selfCopy = self;
  obj = self->mCoreSessionList;
  v31 = [(NSPointerArray *)obj countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v31)
  {
    v29 = *v40;
    do
    {
      v3 = 0;
      do
      {
        if (*v40 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v39 + 1) + 8 * v3);
        v5 = [(MXSessionManagerSidekick *)selfCopy copyMXSessionList:v4];
        if (dword_1EB75DE40)
        {
          v38 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v7 = v38;
          v8 = type;
          if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
          {
            v9 = v7;
          }

          else
          {
            v9 = v7 & 0xFFFFFFFE;
          }

          if (v9)
          {
            clientName = [v4 clientName];
            v11 = [v5 count];
            v44 = 136315650;
            v45 = "[MXSessionManagerSidekick dumpCoreSessionList]";
            v46 = 2114;
            v47 = clientName;
            v48 = 2048;
            v49 = v11;
            LODWORD(v27) = 32;
            _os_log_send_and_compose_impl(v9, 0, v50, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v8, "-MXSessionManagerSidekick- %s: --------------------------%{public}@, MXSession Count = %lu --------------------------", &v44, v27);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (dword_1EB75DE40)
          {
            v38 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v13 = v38;
            v14 = type;
            if (os_log_type_enabled(v12, type))
            {
              v15 = v13;
            }

            else
            {
              v15 = v13 & 0xFFFFFFFE;
            }

            if (v15)
            {
              info = [v4 info];
              v44 = 136315394;
              v45 = "[MXSessionManagerSidekick dumpCoreSessionList]";
              v46 = 2114;
              v47 = info;
              LODWORD(v27) = 22;
              _os_log_send_and_compose_impl(v15, 0, v50, 128, &dword_1B17A2000, v12, v14, "-MXSessionManagerSidekick- %s: %{public}@", &v44, v27);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v32 = v3;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v17 = [v5 countByEnumeratingWithState:&v33 objects:v43 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v34;
          do
          {
            for (i = 0; i != v18; ++i)
            {
              if (*v34 != v19)
              {
                objc_enumerationMutation(v5);
              }

              if (dword_1EB75DE40)
              {
                v21 = *(*(&v33 + 1) + 8 * i);
                v38 = 0;
                type = OS_LOG_TYPE_DEFAULT;
                v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v23 = v38;
                v24 = type;
                if (os_log_type_enabled(v22, type))
                {
                  v25 = v23;
                }

                else
                {
                  v25 = v23 & 0xFFFFFFFE;
                }

                if (v25)
                {
                  info2 = [v21 info];
                  v44 = 136315394;
                  v45 = "[MXSessionManagerSidekick dumpCoreSessionList]";
                  v46 = 2114;
                  v47 = info2;
                  LODWORD(v27) = 22;
                  _os_log_send_and_compose_impl(v25, 0, v50, 128, &dword_1B17A2000, v22, v24, "-MXSessionManagerSidekick- %s: %{public}@", &v44, v27);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }
            }

            v18 = [v5 countByEnumeratingWithState:&v33 objects:v43 count:16];
          }

          while (v18);
        }

        v3 = v32 + 1;
      }

      while (v32 + 1 != v31);
      v31 = [(NSPointerArray *)obj countByEnumeratingWithState:&v39 objects:v51 count:16];
    }

    while (v31);
  }

  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)selfCopy recursiveLock] unlock];
}

- (void)dumpVersionNumbersFromSidekickSessionBehavioursPlist
{
  v28 = *MEMORY[0x1E69E9840];
  CelestialGetModelSpecificName();
  v2 = CelestialCFCreatePropertyListForModelAndBundleIdentifier();
  if (v2 && (v3 = v2, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v17;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v17 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (dword_1EB75DE40)
          {
            v8 = *(*(&v16 + 1) + 8 * i);
            v21 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v10 = v21;
            v11 = type;
            if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
            {
              v12 = v10;
            }

            else
            {
              v12 = v10 & 0xFFFFFFFE;
            }

            if (v12)
            {
              v13 = [v8 valueForKey:@"Version"];
              v22 = 136315394;
              v23 = "[MXSessionManagerSidekick dumpVersionNumbersFromSidekickSessionBehavioursPlist]";
              v24 = 2114;
              v25 = v13;
              LODWORD(v15) = 22;
              _os_log_send_and_compose_impl(v12, 0, v27, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v11, "-MXSessionManagerSidekick- %s: ShortformSessionBehaviours.plist found version: %{public}@", &v22, v15);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v16 objects:v26 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (BOOL)isSomeOtherSessionPlaying:(id)playing
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  [(NSPointerArray *)self->mCoreSessionList addPointer:0];
  [(NSPointerArray *)self->mCoreSessionList compact];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  mCoreSessionList = self->mCoreSessionList;
  v6 = [(NSPointerArray *)mCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(mCoreSessionList);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if (v10 != playing && [*(*(&v13 + 1) + 8 * i) isPlaying] && (objc_msgSend(objc_msgSend(playing, "remoteDeviceID"), "isEqualToString:", objc_msgSend(v10, "remoteDeviceID")) & 1) != 0)
        {
          v11 = 1;
          goto LABEL_13;
        }
      }

      v7 = [(NSPointerArray *)mCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_13:
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] unlock];
  return v11;
}

- (MXSessionManagerSidekick)init
{
  if (gMXSessionManagerSidekick)
  {

    return gMXSessionManagerSidekick;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = MXSessionManagerSidekick;
    v2 = [(MXSessionManagerSidekick *)&v6 init];
    if (v2)
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v2->_serialQueue = dispatch_queue_create("com.apple.mediaexperiencesession.Sidekick", v3);
      v2->_remoteDeviceIDToCoreSessionIDList = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      v2->_coreSessionIDToMXSessionList = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:0 capacity:0];
      v2->_recursiveLock = objc_alloc_init(MEMORY[0x1E696AE68]);
      v2->mCoreSessionList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 3221225472;
      v5[2] = __32__MXSessionManagerSidekick_init__block_invoke;
      v5[3] = &unk_1E7AE7CE0;
      v5[4] = v2;
      MXDebugInstallSysdiagnoseBlock(@"MXSessionManagerSidekickSessionList", v5);
    }

    gMXSessionManagerSidekick = v2;
  }

  return v2;
}

void __32__MXSessionManagerSidekick_init__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serialQueue];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __32__MXSessionManagerSidekick_init__block_invoke_2;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = *(a1 + 32);
  MXDispatchAsync("[MXSessionManagerSidekick init]_block_invoke", "MXSessionManagerSidekick.m", 133, 0, 0, v2, v3);
}

uint64_t __32__MXSessionManagerSidekick_init__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) dumpCoreSessionList];
  v2 = *(a1 + 32);

  return [v2 dumpVersionNumbersFromSidekickSessionBehavioursPlist];
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  dispatch_release(self->_serialQueue);

  v4.receiver = self;
  v4.super_class = MXSessionManagerSidekick;
  [(MXSessionManagerSidekick *)&v4 dealloc];
  objc_autoreleasePoolPop(v3);
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__MXSessionManagerSidekick_sharedInstance__block_invoke;
  block[3] = &unk_1E7AE7CE0;
  block[4] = self;
  if (sharedInstance_onceToken_9 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_9, block);
  }

  return gMXSessionManagerSidekick;
}

void *__42__MXSessionManagerSidekick_sharedInstance__block_invoke(uint64_t a1)
{
  v2.receiver = *(a1 + 32);
  v2.super_class = &OBJC_METACLASS___MXSessionManagerSidekick;
  result = [objc_msgSendSuper2(&v2 allocWithZone_];
  gMXSessionManagerSidekick = result;
  return result;
}

- (id)copyMXCoreSessionForAudioSessionID:(unsigned int)d
{
  v18 = *MEMORY[0x1E69E9840];
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  mCoreSessionList = self->mCoreSessionList;
  v6 = [(NSPointerArray *)mCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(mCoreSessionList);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 audioSessionID] == d)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [(NSPointerArray *)mCoreSessionList countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] unlock];
  return v10;
}

- (void)registerMXCoreSessionSidekick:(id)sidekick
{
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  v5 = -[NSMapTable objectForKey:](-[MXSessionManagerSidekick remoteDeviceIDToCoreSessionIDList](self, "remoteDeviceIDToCoreSessionIDList"), "objectForKey:", [sidekick remoteDeviceID]);
  v6 = v5;
  if (!v5)
  {
    v6 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  }

  objc_initWeak(&location, sidekick);
  [v6 addPointer:objc_loadWeak(&location)];
  -[NSMapTable setObject:forKey:](-[MXSessionManagerSidekick remoteDeviceIDToCoreSessionIDList](self, "remoteDeviceIDToCoreSessionIDList"), "setObject:forKey:", v6, [sidekick remoteDeviceID]);
  [(NSPointerArray *)self->mCoreSessionList addPointer:objc_loadWeak(&location)];
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] unlock];
  if (!v5)
  {
  }

  objc_destroyWeak(&location);
}

- (void)unregisterMXCoreSessionSidekick:(id)sidekick
{
  [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
  [(NSPointerArray *)self->mCoreSessionList addPointer:0];
  [(NSPointerArray *)self->mCoreSessionList compact];
  v5 = -[NSMapTable objectForKey:](-[MXSessionManagerSidekick remoteDeviceIDToCoreSessionIDList](self, "remoteDeviceIDToCoreSessionIDList"), "objectForKey:", [sidekick remoteDeviceID]);
  [v5 addPointer:0];
  [v5 compact];
  if (![v5 count])
  {
    -[NSMapTable removeObjectForKey:](-[MXSessionManagerSidekick remoteDeviceIDToCoreSessionIDList](self, "remoteDeviceIDToCoreSessionIDList"), "removeObjectForKey:", [sidekick remoteDeviceID]);
  }

  recursiveLock = [(MXSessionManagerSidekick *)self recursiveLock];

  [(NSRecursiveLock *)recursiveLock unlock];
}

- (id)copyMXSessionList:(id)list
{
  v9 = *MEMORY[0x1E69E9840];
  if (list)
  {
    v5 = objc_autoreleasePoolPush();
    [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] lock];
    v6 = [-[NSMapTable objectForKey:](-[MXSessionManagerSidekick coreSessionIDToMXSessionList](self "coreSessionIDToMXSessionList")];
    [(NSRecursiveLock *)[(MXSessionManagerSidekick *)self recursiveLock] unlock];
    objc_autoreleasePoolPop(v5);
    return v6;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 0;
  }
}

- (int)postInterruptionEndedNotificationForAudioSessionID:(unsigned int)d resumable:(BOOL)resumable
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = [(MXSessionManagerSidekick *)self copyMXCoreSessionForAudioSessionID:?];
  if (v6)
  {
    v7 = v6;
    isActive = objc_msgSend_isActive(v6);
    if (isActive)
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v12 = MXGetNotificationSenderQueue(isActive, v9);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __89__MXSessionManagerSidekick_postInterruptionEndedNotificationForAudioSessionID_resumable___block_invoke;
      v14[3] = &unk_1E7AEB958;
      resumableCopy = resumable;
      v14[4] = v7;
      v14[5] = self;
      MXDispatchAsync("[MXSessionManagerSidekick postInterruptionEndedNotificationForAudioSessionID:resumable:]", "MXSessionManagerSidekick.m", 287, 0, 0, v12, v14);
    }

    return 0;
  }

  else
  {
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return -15681;
  }
}

void __89__MXSessionManagerSidekick_postInterruptionEndedNotificationForAudioSessionID_resumable___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = @"resumable.MXSessionManager";
  }

  else
  {
    v2 = @"non-resumable.MXSessionManager";
  }

  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [v3 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 1), @"InterruptionCmd", @"MXSessionManager", @"InterruptorName", v2, @"Status", 0}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [*(a1 + 40) postNotification:@"Interruption" toSession:*(a1 + 32) payload:v4];
}

- (void)postNotification:(id)notification toSession:(id)session payload:(id)payload
{
  v19 = *MEMORY[0x1E69E9840];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  v9 = [(MXSessionManagerSidekick *)self copyMXSessionList:session];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

@end