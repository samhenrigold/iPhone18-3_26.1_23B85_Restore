@interface MXCoreSessionSecure
- (BOOL)shouldSendSessionConfigurationInfoToVA;
- (BOOL)willRouteToOnDemandVADOnActivation;
- (MXCoreSessionSecure)initWithOptions:(id)options;
- (id)additiveRoutingInfo;
- (id)copyMXSessionSecureList;
- (id)getIsolatedAudioUseCaseIDAsString;
- (int)_beginInterruptionWithSecTask:(__SecTask *)task andFlags:(unint64_t)flags;
- (int)_endInterruptionWithSecTask:(__SecTask *)task andStatus:(id)status;
- (int)copyPropertyForKey:(id)key valueOut:(id *)out;
- (int)sendSessionConfigurationInfoToVA;
- (int)setPropertyForKey:(id)key value:(id)value;
- (unint64_t)addMXSessionSecure:(id)secure;
- (unint64_t)removeMXSessionSecure:(id)secure;
- (void)dealloc;
- (void)dumpDebugInfo;
@end

@implementation MXCoreSessionSecure

- (MXCoreSessionSecure)initWithOptions:(id)options
{
  location[16] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = MXCoreSessionSecure;
  v4 = [(MXCoreSessionBase *)&v18 init];
  v6 = v4;
  if (!v4)
  {
    return v6;
  }

  if (!options)
  {
    v19 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v11 = v19;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
    }

    else
    {
      v12 = v11 & 0xFFFFFFFE;
    }

    if (v12)
    {
      LODWORD(v20[0]) = 136315138;
      *(v20 + 4) = "[MXCoreSessionSecure initWithOptions:]";
      _os_log_send_and_compose_impl(v12, 0, location, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "-MXCoreSessionSecureCommon- %s: Creation options dictionary cannot be nil!", v20);
    }

    goto LABEL_23;
  }

  if (!CMSMDeviceState_DeviceHasExclaveCapability(v4, v5))
  {
    v19 = 0;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v14 = v19;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFE;
    }

    if (v15)
    {
      LODWORD(v20[0]) = 136315138;
      *(v20 + 4) = "[MXCoreSessionSecure initWithOptions:]";
      _os_log_send_and_compose_impl(v15, 0, location, 128, &dword_1B17A2000, v13, 0, "-MXCoreSessionSecureCommon- %s: Cannot create MXCoreSessionSecure on devices that don't have Exclave capability!", v20);
    }

    goto LABEL_23;
  }

  -[MXCoreSessionBase extractAndSetAuditToken:](v6, "extractAndSetAuditToken:", [options objectForKey:@"AuditToken"]);
  memset(v20, 0, sizeof(v20));
  objc_msgSend_auditToken(v6);
  v7 = xpc_copy_entitlement_for_token();
  if (!v7 || (xpc_release(v7), v8 = [objc_msgSend(options objectForKey:{@"IsolatedAudioUseCaseID", "unsignedIntValue"}], v9 = v8, !v8))
  {
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
LABEL_23:
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    return 0;
  }

  if (v8 == 1936290409)
  {
    [(MXCoreSessionBase *)v6 setIsTheAssistant:1];
  }

  [(MXCoreSessionSecure *)v6 setIsolatedAudioUseCaseID:v9];
  v6->mMXSessionSecureList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
  v6->mMXSessionSecureListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
  objc_initWeak(location, v6);
  [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure addMXCoreSessionSecure:"addMXCoreSessionSecure:", objc_loadWeak(location)];
  objc_destroyWeak(location);
  return v6;
}

- (void)dealloc
{
  [+[MXSessionManagerSecure sharedInstance](MXSessionManagerSecure addMXCoreSessionSecure:"addMXCoreSessionSecure:", 0];

  self->mMXSessionSecureList = 0;
  self->mMXSessionSecureListLock = 0;
  v3.receiver = self;
  v3.super_class = MXCoreSessionSecure;
  [(MXCoreSessionBase *)&v3 dealloc];
}

- (unint64_t)addMXSessionSecure:(id)secure
{
  objc_initWeak(&location, secure);
  [(NSLock *)self->mMXSessionSecureListLock lock];
  [(NSPointerArray *)self->mMXSessionSecureList addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)self->mMXSessionSecureList compact];
  v4 = [(NSPointerArray *)self->mMXSessionSecureList count];
  [(NSLock *)self->mMXSessionSecureListLock unlock];
  objc_destroyWeak(&location);
  return v4;
}

- (unint64_t)removeMXSessionSecure:(id)secure
{
  objc_initWeak(&location, secure);
  [(NSLock *)self->mMXSessionSecureListLock lock];
  for (i = 0; i < [(NSPointerArray *)self->mMXSessionSecureList count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](self->mMXSessionSecureList pointerAtIndex:{i), "isEqual:", objc_loadWeak(&location)}])
    {
      [(NSPointerArray *)self->mMXSessionSecureList removePointerAtIndex:i];
      [(NSPointerArray *)self->mMXSessionSecureList compact];
      break;
    }
  }

  v5 = [(NSPointerArray *)self->mMXSessionSecureList count];
  [(NSLock *)self->mMXSessionSecureListLock unlock];
  objc_destroyWeak(&location);
  return v5;
}

- (id)copyMXSessionSecureList
{
  [(NSLock *)self->mMXSessionSecureListLock lock];
  v3 = objc_autoreleasePoolPush();
  allObjects = [(NSPointerArray *)self->mMXSessionSecureList allObjects];
  objc_autoreleasePoolPop(v3);
  [(NSLock *)self->mMXSessionSecureListLock unlock];
  return allObjects;
}

- (int)copyPropertyForKey:(id)key valueOut:(id *)out
{
  v21 = *MEMORY[0x1E69E9840];
  if (!key)
  {
    [MXCoreSessionSecure copyPropertyForKey:v20 valueOut:?];
    goto LABEL_35;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionSecure copyPropertyForKey:v20 valueOut:?];
    goto LABEL_35;
  }

  if (!out)
  {
    [MXCoreSessionSecure copyPropertyForKey:v20 valueOut:?];
LABEL_35:
    v10 = v20[0];
    if (!LODWORD(v20[0]))
    {
      return v10;
    }

    goto LABEL_36;
  }

  if (![key isEqualToString:@"AudioBehaviour"])
  {
    if ([key isEqualToString:@"CurrentInputSampleRate"])
    {
      devicesSampleRates = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
      audioCategory = -[NSDictionary objectForKey:](devicesSampleRates, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:CMSUtility_GetCurrentInputVADID(self)]);
      goto LABEL_14;
    }

    if ([key isEqualToString:@"AudioCategory"])
    {
      audioCategory = [(MXCoreSessionBase *)self audioCategory];
      goto LABEL_14;
    }

    if ([key isEqualToString:@"ReporterIDs"])
    {
      CMSUtility_CreateReporterIDIfNeeded(self);
      audioCategory = [(MXCoreSessionBase *)self reporterIDs];
      goto LABEL_14;
    }

    if ([key isEqualToString:@"AudioMode"])
    {
      audioCategory = [(MXCoreSessionBase *)self audioMode];
      goto LABEL_14;
    }

    if ([key isEqualToString:@"AuditToken"])
    {
      memset(v20, 0, 32);
      if (self)
      {
        objc_msgSend_auditToken(self);
      }

      v9 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:v20 length:32];
      goto LABEL_15;
    }

    if ([key isEqualToString:@"ClientName"])
    {
      audioCategory = [(MXCoreSessionBase *)self clientName];
      goto LABEL_14;
    }

    if ([key isEqualToString:@"ClientPID"])
    {
      audioCategory = [(MXCoreSessionBase *)self clientPID];
      goto LABEL_14;
    }

    if ([key isEqualToString:@"ClientPriority"])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
      goto LABEL_15;
    }

    if ([key isEqualToString:@"AudioSessionID"])
    {
      v12 = objc_alloc(MEMORY[0x1E696AD98]);
      DeviceBufferNumPCMFrames = [(MXCoreSessionBase *)self audioSessionID];
LABEL_29:
      v9 = [v12 initWithUnsignedInt:DeviceBufferNumPCMFrames];
      goto LABEL_15;
    }

    if ([key isEqualToString:@"CoreSessionID"])
    {
      audioCategory = [(MXCoreSessionBase *)self ID];
      goto LABEL_14;
    }

    if ([key isEqualToString:@"IsActive"])
    {
      v9 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:objc_msgSend_isActive(self)];
      goto LABEL_15;
    }

    if ([key isEqualToString:@"CurrentInputDeviceBufferSize"])
    {
      v12 = objc_alloc(MEMORY[0x1E696AD98]);
      CurrentInputVADID = CMSUtility_GetCurrentInputVADID(self);
      DeviceBufferNumPCMFrames = vaemGetDeviceBufferNumPCMFrames(CurrentInputVADID, 0x696E7074u);
      goto LABEL_29;
    }

    if ([key isEqualToString:@"CurrentInputLatency"])
    {
      v16 = objc_alloc(MEMORY[0x1E696AD98]);
      v17 = CMSUtility_GetCurrentInputVADID(self);
      *&v18 = vaemGetCurrentLatencyForVADIDAndScope(v17, 1);
      v9 = [v16 initWithFloat:v18];
      goto LABEL_15;
    }

    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v10 = -12984;
LABEL_36:
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return v10;
  }

  audioCategory = [(MXCoreSessionBase *)self audioBehaviour];
LABEL_14:
  v9 = audioCategory;
LABEL_15:
  v10 = 0;
  *out = v9;
  return v10;
}

- (int)setPropertyForKey:(id)key value:(id)value
{
  location[16] = *MEMORY[0x1E69E9840];
  if (!key)
  {
    [MXCoreSessionSecure setPropertyForKey:? value:?];
LABEL_54:
    sendSessionConfigurationInfoToVA = location[0];
LABEL_26:
    if (!sendSessionConfigurationInfoToVA)
    {
      return sendSessionConfigurationInfoToVA;
    }

    goto LABEL_43;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionSecure setPropertyForKey:? value:?];
    goto LABEL_54;
  }

  if (![key isEqualToString:@"AuditToken"])
  {
    if ([key isEqualToString:@"ClientName"])
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(MXCoreSessionBase *)self updateClientName:value];
        return 0;
      }

      [MXCoreSessionSecure setPropertyForKey:? value:?];
      goto LABEL_54;
    }

    if ([key isEqualToString:@"ClientPID"])
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionSecure setPropertyForKey:? value:?];
        goto LABEL_54;
      }

      if (![value unsignedIntValue])
      {
        [MXCoreSessionSecure setPropertyForKey:? value:?];
        goto LABEL_54;
      }

      if ([(NSNumber *)[(MXCoreSessionBase *)self clientPID] isEqualToNumber:value])
      {
        return 0;
      }

      [(MXCoreSessionBase *)self setClientPID:value];
      CMSessionMgrCopyDisplayIdentifierToSession(self);
    }

    else
    {
      if ([key isEqualToString:@"ReporterIDs"])
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (![(NSArray *)[(MXCoreSessionBase *)self reporterIDs] isEqualToArray:value])
          {
            [(MXCoreSessionBase *)self setReporterIDs:value];
            if (dword_1EB75DE40)
            {
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }

            CMSMNotificationUtility_PostReporterIDsDidChange(self);
          }

          return 0;
        }

        [MXCoreSessionSecure setPropertyForKey:? value:?];
        goto LABEL_54;
      }

      if (![key isEqualToString:@"AudioCategory"])
      {
        if ([key isEqualToString:@"AudioMode"])
        {
          audioMode = [(MXCoreSessionBase *)self audioMode];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            [MXCoreSessionSecure setPropertyForKey:? value:?];
            goto LABEL_54;
          }

          [(MXCoreSessionBase *)self setAudioMode:value];
          if ([(NSString *)audioMode isEqualToString:value]|| !objc_msgSend_isActive(self))
          {
            return 0;
          }

          sendSessionConfigurationInfoToVA = [(MXCoreSessionSecure *)self sendSessionConfigurationInfoToVA];
          if (!sendSessionConfigurationInfoToVA)
          {
            return sendSessionConfigurationInfoToVA;
          }

          [(MXCoreSessionBase *)self setAudioMode:audioMode];
        }

        else
        {
          if ([key isEqualToString:@"AudioSessionID"])
          {
            audioSessionID = [(MXCoreSessionBase *)self audioSessionID];
            if (value)
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                [MXCoreSessionSecure setPropertyForKey:? value:?];
                goto LABEL_54;
              }

              unsignedIntValue = [value unsignedIntValue];
            }

            else
            {
              unsignedIntValue = 0;
            }

            if (audioSessionID != unsignedIntValue)
            {
              [(MXCoreSessionBase *)self setAudioSessionID:unsignedIntValue];
              inited = objc_initWeak(location, self);
              v17 = MXGetSerialQueue(inited, v16);
              v19[0] = MEMORY[0x1E69E9820];
              v19[1] = 3221225472;
              v19[2] = __47__MXCoreSessionSecure_setPropertyForKey_value___block_invoke;
              v19[3] = &unk_1E7AEA310;
              objc_copyWeak(&v20, location);
              v21 = unsignedIntValue;
              MXDispatchAsync("[MXCoreSessionSecure setPropertyForKey:value:]", "MXCoreSessionSecureCommon.m", 446, 0, 0, v17, v19);
              objc_destroyWeak(&v20);
              objc_destroyWeak(location);
            }

            return 0;
          }

          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          sendSessionConfigurationInfoToVA = -12984;
        }

LABEL_43:
        v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        return sendSessionConfigurationInfoToVA;
      }

      audioCategory = [(MXCoreSessionBase *)self audioCategory];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionSecure setPropertyForKey:? value:?];
        goto LABEL_54;
      }

      [(MXCoreSessionBase *)self setAudioCategory:value];
      if ([(NSString *)audioCategory isEqualToString:value])
      {
        return 0;
      }
    }

    if (!objc_msgSend_isActive(self))
    {
      return 0;
    }

    sendSessionConfigurationInfoToVA = [(MXCoreSessionSecure *)self sendSessionConfigurationInfoToVA];
    goto LABEL_26;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionSecure setPropertyForKey:? value:?];
    goto LABEL_54;
  }

  [(MXCoreSessionBase *)self extractAndSetAuditToken:value];
  return 0;
}

id __47__MXCoreSessionSecure_setPropertyForKey_value___block_invoke(uint64_t a1)
{
  result = objc_loadWeak((a1 + 32));
  if (result)
  {
    v3 = result;
    [result updateAudioSessionIDAndAudioObject:*(a1 + 40)];
    result = objc_msgSend_isActive(v3);
    if (result)
    {

      return [v3 sendSessionConfigurationInfoToVA];
    }
  }

  return result;
}

- (int)_beginInterruptionWithSecTask:(__SecTask *)task andFlags:(unint64_t)flags
{
  v7 = +[MXSessionManagerSecure sharedInstance];

  return [(MXSessionManagerSecure *)v7 _beginInterruption:self withSecTask:task andFlags:flags];
}

- (int)_endInterruptionWithSecTask:(__SecTask *)task andStatus:(id)status
{
  v7 = +[MXSessionManagerSecure sharedInstance];

  return [(MXSessionManagerSecure *)v7 _endInterruption:self withSecTask:task andStatus:status];
}

- (id)additiveRoutingInfo
{
  v5.receiver = self;
  v5.super_class = MXCoreSessionSecure;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[MXCoreSessionBase additiveRoutingInfo](&v5, sel_additiveRoutingInfo)}];
  [v3 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithUnsignedInt:", -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID")), 0x1F2897590}];
  return v3;
}

- (BOOL)willRouteToOnDemandVADOnActivation
{
  v3.receiver = self;
  v3.super_class = MXCoreSessionSecure;
  return [(MXCoreSessionBase *)&v3 willRouteToOnDemandVADOnActivation:[(MXCoreSessionSecure *)self additiveRoutingInfo]];
}

- (BOOL)shouldSendSessionConfigurationInfoToVA
{
  v5.receiver = self;
  v5.super_class = MXCoreSessionSecure;
  shouldSendSessionConfigurationInfoToVA = [(MXCoreSessionBase *)&v5 shouldSendSessionConfigurationInfoToVA];
  if (shouldSendSessionConfigurationInfoToVA)
  {
    LOBYTE(shouldSendSessionConfigurationInfoToVA) = [(MXCoreSessionSecure *)self willRouteToOnDemandVADOnActivation];
  }

  return shouldSendSessionConfigurationInfoToVA;
}

- (int)sendSessionConfigurationInfoToVA
{
  v6 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(self, a2) && ![(MXCoreSessionSecure *)self shouldSendSessionConfigurationInfoToVA])
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    return 0;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = MXCoreSessionSecure;
    return [(MXCoreSessionBase *)&v5 sendSessionConfigurationInfoToVA:[(MXCoreSessionSecure *)self additiveRoutingInfo]];
  }
}

- (id)getIsolatedAudioUseCaseIDAsString
{
  isolatedAudioUseCaseID = [(MXCoreSessionSecure *)self isolatedAudioUseCaseID];
  if (isolatedAudioUseCaseID > 1936290408)
  {
    if (isolatedAudioUseCaseID == 1986225004)
    {
      return @"VoiceControl";
    }

    if (isolatedAudioUseCaseID != 1936614497)
    {
      if (isolatedAudioUseCaseID == 1936290409)
      {
        return @"Siri";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown [%c%c%c%c]", -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 24, (-[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 16), (-[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 8), -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID")];
    }

    return @"SoundAnalysis";
  }

  else
  {
    if (!isolatedAudioUseCaseID)
    {
      return @"Unknown";
    }

    if (isolatedAudioUseCaseID != 1751741300)
    {
      if (isolatedAudioUseCaseID == 1836346212)
      {
        return @"MutedTalkerDetection";
      }

      return [MEMORY[0x1E696AEC0] stringWithFormat:@"Unknown [%c%c%c%c]", -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 24, (-[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 16), (-[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID") >> 8), -[MXCoreSessionSecure isolatedAudioUseCaseID](self, "isolatedAudioUseCaseID")];
    }

    return @"HistoricalAudio";
  }
}

- (void)dumpDebugInfo
{
  v32 = *MEMORY[0x1E69E9840];
  copyMXSessionSecureList = [(MXCoreSessionSecure *)self copyMXSessionSecureList];
  v3 = CMSMUtility_CopyPrioritizedListBasedOnPlayingAndActiveState(copyMXSessionSecureList);
  if (dword_1EB75DE40)
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v27 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      if (dword_1EB75DE40)
      {
        v27 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        if (dword_1EB75DE40)
        {
          v27 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          if (dword_1EB75DE40)
          {
            v27 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            if (dword_1EB75DE40)
            {
              v27 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
            }
          }
        }
      }
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v10 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v22 + 1) + 8 * i) dumpDebugInfo];
      }

      v11 = [v3 countByEnumeratingWithState:&v22 objects:v28 count:16];
    }

    while (v11);
  }

  if (dword_1EB75DE40)
  {
    v27 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v15 = v27;
    v16 = type;
    if (os_log_type_enabled(v14, type))
    {
      v17 = v15;
    }

    else
    {
      v17 = v15 & 0xFFFFFFFE;
    }

    if (v17)
    {
      v29 = 136315138;
      v30 = "[MXCoreSessionSecure dumpDebugInfo]";
      _os_log_send_and_compose_impl(v17, 0, v31, 128, &dword_1B17A2000, v14, v16, "-MXCoreSessionSecureCommon- %s: \t\t }", &v29);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v27 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v19 = v27;
      v20 = type;
      if (os_log_type_enabled(v18, type))
      {
        v21 = v19;
      }

      else
      {
        v21 = v19 & 0xFFFFFFFE;
      }

      if (v21)
      {
        v29 = 136315138;
        v30 = "[MXCoreSessionSecure dumpDebugInfo]";
        _os_log_send_and_compose_impl(v21, 0, v31, 128, &dword_1B17A2000, v18, v20, "-MXCoreSessionSecureCommon- %s: \t\t #####################################################################################################################################", &v29);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

- (uint64_t)copyPropertyForKey:(_DWORD *)a1 valueOut:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)copyPropertyForKey:(_DWORD *)a1 valueOut:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)copyPropertyForKey:(_DWORD *)a1 valueOut:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.1(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.2(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.4(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.5(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.6(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.7(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.8(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.9(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.10(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

@end