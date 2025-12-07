@interface MXCoreSessionSidekick
- (BOOL)allowsAirPlayBuffered;
- (BOOL)allowsAirPlayVideo;
- (BOOL)isCategoryValid:(id)valid;
- (BOOL)isModeValidForCategory:(id)category;
- (MXCoreSessionSidekick)initWithRemoteDeviceID:(id)d;
- (id)_initWithRemoteDeviceID:(id)d;
- (int)_activate;
- (int)_copyPropertyForKey:(id)key valueOut:(id *)out;
- (int)_deactivate:(BOOL)_deactivate postInterruptionNotification:(BOOL)notification;
- (int)_setPropertyForKey:(id)key value:(id)value;
- (int)activate;
- (int)copyPropertyForKey:(id)key valueOut:(id *)out;
- (int)deactivate:(BOOL)deactivate postInterruptionNotification:(BOOL)notification;
- (int)setPropertyForKey:(id)key value:(id)value;
- (void)dealloc;
@end

@implementation MXCoreSessionSidekick

- (MXCoreSessionSidekick)initWithRemoteDeviceID:(id)d
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3052000000;
  v12 = __Block_byref_object_copy__3;
  v13 = __Block_byref_object_dispose__3;
  v14 = 0;
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__MXCoreSessionSidekick_initWithRemoteDeviceID___block_invoke;
  v8[3] = &unk_1E7AEB1E8;
  v8[5] = d;
  v8[6] = &v9;
  v8[4] = self;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick initWithRemoteDeviceID:]", "MXCoreSessionSidekick.m", 46, 0, 0, serialQueue, v8);
  v6 = v10[5];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void *__48__MXCoreSessionSidekick_initWithRemoteDeviceID___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _initWithRemoteDeviceID:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 40) = result;
  return result;
}

- (int)activate
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __33__MXCoreSessionSidekick_activate__block_invoke;
  v5[3] = &unk_1E7AEB210;
  v5[4] = self;
  v5[5] = &v6;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick activate]", "MXCoreSessionSidekick.m", 57, 0, 0, serialQueue, v5);
  LODWORD(self) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return self;
}

void *__33__MXCoreSessionSidekick_activate__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _activate];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int)deactivate:(BOOL)deactivate postInterruptionNotification:(BOOL)notification
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__MXCoreSessionSidekick_deactivate_postInterruptionNotification___block_invoke;
  v10[3] = &unk_1E7AEB238;
  v10[4] = self;
  v10[5] = &v13;
  deactivateCopy = deactivate;
  notificationCopy = notification;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick deactivate:postInterruptionNotification:]", "MXCoreSessionSidekick.m", 69, 0, 0, serialQueue, v10);
  v8 = *(v14 + 6);
  _Block_object_dispose(&v13, 8);
  return v8;
}

void *__65__MXCoreSessionSidekick_deactivate_postInterruptionNotification___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _deactivate:*(a1 + 48) postInterruptionNotification:*(a1 + 49)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  v3 = objc_autoreleasePoolPush();
  [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick unregisterMXCoreSessionSidekick:"unregisterMXCoreSessionSidekick:", self];

  v4.receiver = self;
  v4.super_class = MXCoreSessionSidekick;
  [(MXCoreSessionBase *)&v4 dealloc];
  objc_autoreleasePoolPop(v3);
}

- (int)setPropertyForKey:(id)key value:(id)value
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__MXCoreSessionSidekick_setPropertyForKey_value___block_invoke;
  v9[3] = &unk_1E7AE70A8;
  v9[4] = self;
  v9[5] = key;
  v9[6] = value;
  v9[7] = &v10;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick setPropertyForKey:value:]", "MXCoreSessionSidekick.m", 91, 0, 0, serialQueue, v9);
  LODWORD(value) = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return value;
}

void *__49__MXCoreSessionSidekick_setPropertyForKey_value___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _setPropertyForKey:*(a1 + 40) value:*(a1 + 48)];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int)copyPropertyForKey:(id)key valueOut:(id *)out
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serialQueue = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick serialQueue];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __53__MXCoreSessionSidekick_copyPropertyForKey_valueOut___block_invoke;
  v9[3] = &unk_1E7AE70D0;
  v9[4] = self;
  v9[5] = key;
  v9[6] = &v10;
  v9[7] = out;
  MXDispatchAsyncAndWait("[MXCoreSessionSidekick copyPropertyForKey:valueOut:]", "MXCoreSessionSidekick.m", 102, 0, 0, serialQueue, v9);
  LODWORD(out) = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return out;
}

void *__53__MXCoreSessionSidekick_copyPropertyForKey_valueOut___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _copyPropertyForKey:*(a1 + 40) valueOut:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)allowsAirPlayVideo
{
  [(MXCoreSessionBase *)self audioCategory];
  [(MXCoreSessionBase *)self audioMode];
  v3 = FigCFEqual();
  if (v3)
  {
    if (FigCFEqual() || FigCFEqual() || (v3 = FigCFEqual()) != 0)
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)allowsAirPlayBuffered
{
  [(MXCoreSessionBase *)self audioCategory];
  [(MXCoreSessionBase *)self displayID];
  remoteDeviceID = [(MXCoreSessionSidekick *)self remoteDeviceID];
  result = 0;
  if ((![(MXCoreSessionBase *)self mixesWithEveryone]|| remoteDeviceID) && !FigCFEqual())
  {
    v4 = FigCFEqual() && remoteDeviceID == 0;
    if (!v4 && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual() && !FigCFEqual())
    {
      return 1;
    }
  }

  return result;
}

- (id)_initWithRemoteDeviceID:(id)d
{
  v11 = *MEMORY[0x1E69E9840];
  v10.receiver = self;
  v10.super_class = MXCoreSessionSidekick;
  v4 = [(MXCoreSessionBase *)&v10 init];
  v5 = v4;
  if (v4)
  {
    [(MXCoreSessionSidekick *)v4 setRemoteDeviceID:d];
    [(MXCoreSessionBase *)v5 setAudioCategory:@"MediaPlayback"];
    [(MXCoreSessionBase *)v5 setAudioMode:@"Default"];
    cf = 0;
    FigRoutingManagerContextUtilities_CopySidePlayContextUUID(&cf);
    [(MXCoreSessionBase *)v5 setRoutingContextUUID:cf];
    if (cf)
    {
      CFRelease(cf);
      cf = 0;
    }

    LODWORD(v6) = *"333?nsscbolg";
    [(MXCoreSessionBase *)v5 setInterruptionFadeDuration:v6];
    [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick registerMXCoreSessionSidekick:"registerMXCoreSessionSidekick:", v5];
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v5;
}

- (int)_activate
{
  v26 = *MEMORY[0x1E69E9840];
  if ((objc_msgSend_isActive(self, a2) & 1) == 0)
  {
    [(MXCoreSessionBase *)self setIsActive:1];
    if (dword_1EB75DE40)
    {
      v24 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSUtility_CreateReporterIDIfNeeded(self);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    reporterIDs = [(MXCoreSessionBase *)self reporterIDs];
    v5 = [(NSArray *)reporterIDs countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v20;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(reporterIDs);
          }

          CMSUtility_SetAudioServiceTypeForReporterID(self, [*(*(&v19 + 1) + 8 * i) longLongValue]);
        }

        v6 = [(NSArray *)reporterIDs countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v6);
    }

    CMSUtility_StartReporterWithAudioStatistics(self);
    [(MXCoreSessionBase *)self interruptionFadeDuration];
    v10 = v9;
    if ([(NSString *)[(MXCoreSessionBase *)self audioMode] isEqualToString:@"Sleep"])
    {
      v11 = 5.0;
    }

    else
    {
      v11 = *"333?nsscbolg";
    }

    v12 = objc_alloc(MEMORY[0x1E695DF90]);
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[MXCoreSessionBase audioSessionID](self, "audioSessionID")}];
    v14 = [v12 initWithObjectsAndKeys:{v13, @"AudioSessionID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend_isActive(self)), @"IsActive", -[MXCoreSessionBase audioCategory](self, "audioCategory"), @"AudioCategory", -[MXCoreSessionBase audioMode](self, "audioMode"), @"AudioMode", 0}];
    v16 = v14;
    if (v10 != v11)
    {
      v17 = MEMORY[0x1E696AD98];
      [(MXCoreSessionBase *)self interruptionFadeDuration];
      v14 = [v16 setObject:objc_msgSend(v17 forKey:{"numberWithFloat:"), @"InterruptionFadeDuration"}];
    }

    if (MX_FeatureFlags_IsAirPlayDaemonEnabled(v14, v15))
    {
      [v16 setObject:-[MXCoreSessionSidekick remoteDeviceID](self forKey:{"remoteDeviceID"), @"RemoteDeviceID"}];
    }

    [MXSystemController notifyAll:@"SomeClientIsActiveDidChange" payload:v16 dontPostIfSuspended:0 remoteDeviceID:[(MXCoreSessionSidekick *)self remoteDeviceID]];
  }

  return 0;
}

- (int)_deactivate:(BOOL)_deactivate postInterruptionNotification:(BOOL)notification
{
  notificationCopy = notification;
  _deactivateCopy = _deactivate;
  v20 = *MEMORY[0x1E69E9840];
  if (objc_msgSend_isActive(self, a2))
  {
    [(MXCoreSessionSidekick *)self _setPropertyForKey:@"IsPlaying" value:*MEMORY[0x1E695E4C0]];
    [(MXCoreSessionBase *)self setIsActive:0];
    CMSUtility_StopReporterWithAudioStatistics(self);
    audioSessionID = [(MXCoreSessionBase *)self audioSessionID];
    v8 = objc_alloc(MEMORY[0x1E695DF90]);
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:audioSessionID];
    v10 = [v8 initWithObjectsAndKeys:{v9, @"AudioSessionID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", objc_msgSend_isActive(self)), @"IsActive", objc_msgSend(MEMORY[0x1E696AD98], "numberWithBool:", _deactivateCopy), @"NotifyOthers", -[MXCoreSessionBase audioCategory](self, "audioCategory"), @"AudioCategory", -[MXCoreSessionBase audioMode](self, "audioMode"), @"AudioMode", 0}];
    if (MX_FeatureFlags_IsAirPlayDaemonEnabled(v10, v11))
    {
      [v10 setObject:-[MXCoreSessionSidekick remoteDeviceID](self forKey:{"remoteDeviceID"), @"RemoteDeviceID"}];
    }

    [MXSystemController notifyAll:@"SomeClientIsActiveDidChange" payload:v10 dontPostIfSuspended:0 remoteDeviceID:[(MXCoreSessionSidekick *)self remoteDeviceID]];

    if (dword_1EB75DE40)
    {
      v19 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (notificationCopy)
    {
      selfCopy = self;
      v15 = MXGetNotificationSenderQueue(selfCopy, v14);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __79__MXCoreSessionSidekick_InternalUse___deactivate_postInterruptionNotification___block_invoke;
      v17[3] = &unk_1E7AEA340;
      v17[4] = self;
      v17[5] = self;
      MXDispatchAsync("[MXCoreSessionSidekick(InternalUse) _deactivate:postInterruptionNotification:]", "MXCoreSessionSidekick.m", 270, 0, 0, v15, v17);
    }
  }

  return 0;
}

void __79__MXCoreSessionSidekick_InternalUse___deactivate_postInterruptionNotification___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695DF20]);
  v3 = [MEMORY[0x1E696AD98] numberWithInt:0];
  v4 = [v2 initWithObjectsAndKeys:{v3, @"InterruptionCmd", @"MXSessionManager", @"InterruptorName", objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", 2), @"InterruptionReason", 0}];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick postNotification:"postNotification:toSession:payload:" toSession:@"Interruption" payload:*(a1 + 40), v4];
}

- (BOOL)isCategoryValid:(id)valid
{
  if ([valid isEqualToString:@"Alarm"])
  {
    return 1;
  }

  return [valid isEqualToString:@"MediaPlayback"];
}

- (BOOL)isModeValidForCategory:(id)category
{
  if (![(NSString *)[(MXCoreSessionBase *)self audioCategory] isEqualToString:@"Alarm"])
  {
    v7 = [(NSString *)[(MXCoreSessionBase *)self audioCategory] isEqualToString:@"MediaPlayback"];
    if (!v7)
    {
      return v7;
    }

    if (([category isEqualToString:@"Default"] & 1) == 0 && (objc_msgSend(category, "isEqualToString:", @"VoicePrompt") & 1) == 0)
    {
      v5 = kMXSessionAudioMode_VoiceMessages;
      goto LABEL_4;
    }

LABEL_10:
    LOBYTE(v7) = 1;
    return v7;
  }

  if ([category isEqualToString:@"Default"])
  {
    goto LABEL_10;
  }

  v5 = kMXSessionAudioMode_Sleep;
LABEL_4:
  v6 = *v5;

  LOBYTE(v7) = [category isEqualToString:v6];
  return v7;
}

- (int)_setPropertyForKey:(id)key value:(id)value
{
  v27 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (![key isEqualToString:@"AudioSessionID"])
  {
    if ([key isEqualToString:@"ClientPID"])
    {
      if (value)
      {
        v9 = CFGetTypeID(value);
        if (v9 == CFNumberGetTypeID())
        {
          [(MXCoreSessionBase *)self setClientPID:value];
          return 0;
        }
      }

      [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v26 value:?];
      goto LABEL_60;
    }

    if ([key isEqualToString:@"ClientName"])
    {
      if (value)
      {
        v10 = CFGetTypeID(value);
        if (v10 == CFStringGetTypeID())
        {
          [(MXCoreSessionBase *)self updateClientName:value];
          return 0;
        }
      }

      [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v26 value:?];
      goto LABEL_60;
    }

    if ([key isEqualToString:@"AudioCategory"])
    {
      if (value)
      {
        v13 = CFGetTypeID(value);
        if (v13 == CFStringGetTypeID())
        {
          if ([(MXCoreSessionSidekick *)self isCategoryValid:value])
          {
            [(MXCoreSessionBase *)self setAudioCategory:value];
            return 0;
          }

          v11 = -12981;
LABEL_44:
          v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          return v11;
        }
      }

      [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v26 value:?];
      goto LABEL_60;
    }

    if (![key isEqualToString:@"AudioMode"])
    {
      if ([key isEqualToString:@"IsPlaying"])
      {
        if (value)
        {
          v16 = CFGetTypeID(value);
          if (v16 == CFBooleanGetTypeID())
          {
            v17 = *MEMORY[0x1E695E4D0];
            v18 = *MEMORY[0x1E695E4D0] == value;
            if ([(MXCoreSessionBase *)self isPlaying]!= v18)
            {
              if (v17 == value && (objc_msgSend_isActive(self) & 1) == 0)
              {
                [(MXCoreSessionSidekick *)self _activate];
              }

              [(MXCoreSessionBase *)self setIsPlaying:v17 == value];
              if (dword_1EB75DE40)
              {
                v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              +[MXSystemController notifyAll:payload:dontPostIfSuspended:](MXSystemController, "notifyAll:payload:dontPostIfSuspended:", @"SomeSidekickSessionIsPlayingDidChange", [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{-[MXCoreSessionSidekick remoteDeviceID](self, "remoteDeviceID"), @"RemoteDeviceID", 0}], 0);
            }

            return 0;
          }
        }

        [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v26 value:?];
        goto LABEL_60;
      }

      if ([key isEqualToString:@"IAmTheAssistant"])
      {
        if (value)
        {
          v20 = CFGetTypeID(value);
          if (v20 == CFBooleanGetTypeID())
          {
            [(MXCoreSessionBase *)self setIsTheAssistant:*MEMORY[0x1E695E4D0] == value];
            return 0;
          }
        }

        [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v26 value:?];
        goto LABEL_60;
      }

      if (![key isEqualToString:@"InterruptionFadeDuration"])
      {
        return 0;
      }

      v22 = [(MXCoreSessionBase *)self hasAudioMode:@"Sleep"];
      v23 = *"333?nsscbolg";
      if (v22)
      {
        v23 = 5.0;
      }

      valuePtr = v23;
      if (value)
      {
        v24 = CFGetTypeID(value);
        if (v24 != CFNumberGetTypeID())
        {
          [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v26 value:?];
          goto LABEL_60;
        }

        CFNumberGetValue(value, kCFNumberFloat32Type, &valuePtr);
      }

      [(MXCoreSessionBase *)self setInterruptionFadeDuration:?];
      v11 = 0;
      goto LABEL_43;
    }

    if (value)
    {
      v14 = CFGetTypeID(value);
      if (v14 == CFStringGetTypeID())
      {
        audioMode = [(MXCoreSessionBase *)self audioMode];
        if ([(MXCoreSessionSidekick *)self isModeValidForCategory:value])
        {
          [(MXCoreSessionBase *)self setAudioMode:value];
          [(MXCoreSessionBase *)self updateDefaultInterruptionFadeDuration:audioMode];
          v11 = 0;
        }

        else
        {
          v11 = -12981;
        }

LABEL_43:
        if (!v11)
        {
          return v11;
        }

        goto LABEL_44;
      }
    }

    [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v26 value:?];
LABEL_60:
    v11 = v26[0];
    goto LABEL_43;
  }

  if (!value || (v8 = CFGetTypeID(value), v8 != CFNumberGetTypeID()))
  {
    [MXCoreSessionSidekick(InternalUse) _setPropertyForKey:v26 value:?];
    goto LABEL_60;
  }

  -[MXCoreSessionBase setAudioSessionID:](self, "setAudioSessionID:", [value unsignedIntValue]);
  return 0;
}

- (int)_copyPropertyForKey:(id)key valueOut:(id *)out
{
  v21[1] = *MEMORY[0x1E69E9840];
  if (!key)
  {
    return -15682;
  }

  if (![key isEqualToString:@"RemoteDeviceID"])
  {
    if ([key isEqualToString:@"RoutingContextUUID"])
    {
      routingContextUUID = [(MXCoreSessionBase *)self routingContextUUID];
      goto LABEL_7;
    }

    if ([key isEqualToString:@"RoutingContext"])
    {
      FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID([(MXCoreSessionBase *)self routingContextUUID], out);
      goto LABEL_8;
    }

    if ([key isEqualToString:@"AudioSessionID"])
    {
      [(MXCoreSessionBase *)self audioSessionID];
      UInt32 = FigCFNumberCreateUInt32();
LABEL_19:
      *out = UInt32;
      goto LABEL_8;
    }

    if ([key isEqualToString:@"ClientPID"])
    {
      valuePtr[0] = [(NSNumber *)[(MXCoreSessionBase *)self clientPID] intValue];
LABEL_17:
      v11 = *MEMORY[0x1E695E480];
      v12 = kCFNumberIntType;
LABEL_18:
      UInt32 = CFNumberCreate(v11, v12, valuePtr);
      goto LABEL_19;
    }

    if ([key isEqualToString:@"ClientName"])
    {
      routingContextUUID = [(MXCoreSessionBase *)self clientName];
      goto LABEL_7;
    }

    if ([key isEqualToString:@"AudioCategory"])
    {
      routingContextUUID = [(MXCoreSessionBase *)self audioCategory];
      goto LABEL_7;
    }

    if ([key isEqualToString:@"AudioMode"])
    {
      routingContextUUID = [(MXCoreSessionBase *)self audioMode];
      goto LABEL_7;
    }

    if ([key isEqualToString:@"IsActive"])
    {
      isActive = objc_msgSend_isActive(self);
    }

    else if ([key isEqualToString:@"IsPlaying"])
    {
      isActive = [(MXCoreSessionBase *)self isPlaying];
    }

    else
    {
      if ([key isEqualToString:@"MaximumNumberOfOutputChannels"])
      {
        valuePtr[0] = 2;
        goto LABEL_17;
      }

      if (![key isEqualToString:@"SomeOtherClientIsPlaying"])
      {
        if ([key isEqualToString:@"DetailedActiveAudioRoute"])
        {
          v20 = @"RouteDetailedDescription_Outputs";
          v17[0] = @"RouteDetailedDescription_Name";
          v17[1] = @"RouteDetailedDescription_PortType";
          v17[2] = @"RouteDetailedDescription_UID";
          v18[0] = @"AirTunes";
          v18[1] = @"AirTunes";
          v18[2] = @"AirTunes";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
          v21[0] = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
          routingContextUUID = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
          goto LABEL_7;
        }

        if ([key isEqualToString:@"ReporterIDs"])
        {
          CMSUtility_CreateReporterIDIfNeeded(self);
          routingContextUUID = [(MXCoreSessionBase *)self reporterIDs];
          goto LABEL_7;
        }

        if (![key isEqualToString:@"InterruptionFadeDuration"])
        {
          *out = 0;
          goto LABEL_8;
        }

        [(MXCoreSessionBase *)self interruptionFadeDuration];
        valuePtr[0] = v15;
        v11 = *MEMORY[0x1E695E480];
        v12 = kCFNumberFloat32Type;
        goto LABEL_18;
      }

      isActive = [+[MXSessionManagerSidekick sharedInstance](MXSessionManagerSidekick isSomeOtherSessionPlaying:"isSomeOtherSessionPlaying:", self];
    }

    v14 = MEMORY[0x1E695E4D0];
    if (!isActive)
    {
      v14 = MEMORY[0x1E695E4C0];
    }

    routingContextUUID = *v14;
    goto LABEL_7;
  }

  routingContextUUID = [(MXCoreSessionSidekick *)self remoteDeviceID];
LABEL_7:
  *out = routingContextUUID;
  CFRetain(routingContextUUID);
LABEL_8:
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

@end