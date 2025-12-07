@interface MXCoreSessionIndependentInputAudioResource
- (BOOL)shouldSendSessionConfigurationInfoToVA;
- (BOOL)willRouteToOnDemandVADOnActivation;
- (MXCoreSessionIndependentInputAudioResource)initWithOptions:(id)options;
- (id)additiveRoutingInfo;
- (id)copyMXSessionIndependentInputAudioResourceList;
- (int)_beginInterruptionWithSecTask:(__SecTask *)task andFlags:(unint64_t)flags;
- (int)_endInterruptionWithSecTask:(__SecTask *)task andStatus:(id)status;
- (int)copyPropertyForKey:(id)key valueOut:(id *)out;
- (int)sendSessionConfigurationInfoToVA;
- (int)setPropertyForKey:(id)key value:(id)value;
- (void)addMXSessionIndependentInputAudioResource:(id)resource;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)populateAdditiveRoutingInfoWithRouteControlFeatures:(id)features;
- (void)removeMXSessionIndependentInputAudioResource:(id)resource;
- (void)resetMXSessionIsPlayingStates;
- (void)resetMXSessionIsRecordingStates;
- (void)teardown;
@end

@implementation MXCoreSessionIndependentInputAudioResource

- (MXCoreSessionIndependentInputAudioResource)initWithOptions:(id)options
{
  location[16] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = MXCoreSessionIndependentInputAudioResource;
  v4 = [(MXCoreSessionIndependentAudioResource *)&v12 init];
  if (v4)
  {
    if (options)
    {
      -[MXCoreSessionBase extractAndSetAuditToken:](v4, "extractAndSetAuditToken:", [options objectForKey:@"AuditToken"]);
      memset(v14, 0, sizeof(v14));
      objc_msgSend_auditToken(v4);
      v5 = xpc_copy_entitlement_for_token();
      if (v5)
      {
        xpc_release(v5);
        v4->mMXSessionIndependentInputAudioResourceList = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:5];
        v4->mMXSessionIndependentInputAudioResourceListLock = objc_alloc_init(MEMORY[0x1E696AD10]);
        objc_initWeak(location, v4);
        [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource addMXCoreSessionIndependentInputAudioResource:"addMXCoreSessionIndependentInputAudioResource:", objc_loadWeak(location)];
        [(MXCoreSessionBase *)v4 setAudioCategory:@"Record"];
        [(MXCoreSessionBase *)v4 setAudioMode:@"Default"];
        [(MXCoreSessionBase *)v4 setInterruptionStyle:16];
        cmsUpdateAudioBehavior(v4, v6);
        v13[0] = 0;
        FigRoutingManagerContextUtilities_CopySystemAudioInputContextUUID(v13);
        [(MXCoreSessionBase *)v4 setRoutingContextUUID:v13[0]];

        [(MXCoreSessionBase *)v4 setMode:1768776806];
        [(MXCoreSessionBase *)v4 setAllowsBluetoothRecordingCustomization:1];
        [(MXCoreSessionBase *)v4 setAllowsDefaultBuiltInRouteCustomization:0];
        [(MXCoreSessionBase *)v4 setHasInput:1];
        objc_destroyWeak(location);
        return v4;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    }

    else
    {
      LODWORD(v13[0]) = 0;
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v8 = v13[0];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
      }

      else
      {
        v9 = v8 & 0xFFFFFFFE;
      }

      if (v9)
      {
        LODWORD(v14[0]) = 136315138;
        *(v14 + 4) = "[MXCoreSessionIndependentInputAudioResource initWithOptions:]";
        _os_log_send_and_compose_impl(v9, 0, location, 128, &dword_1B17A2000, v7, 0, "-MXCoreSessionIndependentInputAudioResource- %s: Creation options dictionary cannot be nil!", v14);
      }
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();

    return 0;
  }

  return v4;
}

- (void)populateAdditiveRoutingInfoWithRouteControlFeatures:(id)features
{
  [features setObject:MEMORY[0x1E695E118] forKey:@"prefer independent route"];
  v5.receiver = self;
  v5.super_class = MXCoreSessionIndependentInputAudioResource;
  [(MXCoreSessionBase *)&v5 populateAdditiveRoutingInfoWithRouteControlFeatures:features];
}

- (id)additiveRoutingInfo
{
  v5.receiver = self;
  v5.super_class = MXCoreSessionIndependentInputAudioResource;
  v3 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:{-[MXCoreSessionBase additiveRoutingInfo](&v5, sel_additiveRoutingInfo)}];
  [(MXCoreSessionIndependentInputAudioResource *)self populateAdditiveRoutingInfoWithRouteControlFeatures:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithEchoCancelledInput:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithBTRecordingCustomizations:v3];
  [(MXCoreSessionBase *)self populateAdditiveRoutingInfoWithFollowingVADInformation:v3 inputOnly:1];
  return v3;
}

- (BOOL)willRouteToOnDemandVADOnActivation
{
  v3.receiver = self;
  v3.super_class = MXCoreSessionIndependentInputAudioResource;
  return [(MXCoreSessionBase *)&v3 willRouteToOnDemandVADOnActivation:[(MXCoreSessionIndependentInputAudioResource *)self additiveRoutingInfo]];
}

- (BOOL)shouldSendSessionConfigurationInfoToVA
{
  v5.receiver = self;
  v5.super_class = MXCoreSessionIndependentInputAudioResource;
  shouldSendSessionConfigurationInfoToVA = [(MXCoreSessionBase *)&v5 shouldSendSessionConfigurationInfoToVA];
  if (shouldSendSessionConfigurationInfoToVA)
  {
    LOBYTE(shouldSendSessionConfigurationInfoToVA) = [(MXCoreSessionIndependentInputAudioResource *)self willRouteToOnDemandVADOnActivation];
  }

  return shouldSendSessionConfigurationInfoToVA;
}

- (int)sendSessionConfigurationInfoToVA
{
  v6 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsInputAudioCoexistenceSupportEnabled(self, a2) && ![(MXCoreSessionIndependentInputAudioResource *)self shouldSendSessionConfigurationInfoToVA])
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
    v5.super_class = MXCoreSessionIndependentInputAudioResource;
    return [(MXCoreSessionBase *)&v5 sendSessionConfigurationInfoToVA:[(MXCoreSessionIndependentInputAudioResource *)self additiveRoutingInfo]];
  }
}

- (void)teardown
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(MXCoreSessionIndependentAudioResource *)self deactivate];
  CMSMSleep_UpdateIdleSleepPreventor(self, 0);
  [(MXCoreSessionBase *)self unregisterSessionAudioObject];
}

- (void)resetMXSessionIsPlayingStates
{
  v12 = *MEMORY[0x1E69E9840];
  copyMXSessionIndependentInputAudioResourceList = [(MXCoreSessionIndependentInputAudioResource *)self copyMXSessionIndependentInputAudioResourceList];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(copyMXSessionIndependentInputAudioResourceList);
        }

        [*(*(&v7 + 1) + 8 * v6++) resetIsPlayingStates];
      }

      while (v4 != v6);
      v4 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)resetMXSessionIsRecordingStates
{
  v12 = *MEMORY[0x1E69E9840];
  copyMXSessionIndependentInputAudioResourceList = [(MXCoreSessionIndependentInputAudioResource *)self copyMXSessionIndependentInputAudioResourceList];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(copyMXSessionIndependentInputAudioResourceList);
        }

        [*(*(&v7 + 1) + 8 * v6++) resetIsRecordingState];
      }

      while (v4 != v6);
      v4 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)dealloc
{
  [+[MXSessionManagerIndependentAudioResource sharedInstance](MXSessionManagerIndependentAudioResource addMXCoreSessionIndependentInputAudioResource:"addMXCoreSessionIndependentInputAudioResource:", 0];

  self->mMXSessionIndependentInputAudioResourceList = 0;
  self->mMXSessionIndependentInputAudioResourceListLock = 0;
  v3.receiver = self;
  v3.super_class = MXCoreSessionIndependentInputAudioResource;
  [(MXCoreSessionIndependentAudioResource *)&v3 dealloc];
}

- (void)addMXSessionIndependentInputAudioResource:(id)resource
{
  objc_initWeak(&location, resource);
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock lock];
  [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList addPointer:objc_loadWeak(&location)];
  [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList compact];
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock unlock];
  objc_destroyWeak(&location);
}

- (void)removeMXSessionIndependentInputAudioResource:(id)resource
{
  objc_initWeak(&location, resource);
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock lock];
  for (i = 0; i < [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList count]; ++i)
  {
    if ([-[NSPointerArray pointerAtIndex:](self->mMXSessionIndependentInputAudioResourceList pointerAtIndex:{i), "isEqual:", objc_loadWeak(&location)}])
    {
      [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList removePointerAtIndex:i];
      [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList compact];
      break;
    }
  }

  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock unlock];
  objc_destroyWeak(&location);
}

- (id)copyMXSessionIndependentInputAudioResourceList
{
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock lock];
  v3 = objc_autoreleasePoolPush();
  allObjects = [(NSPointerArray *)self->mMXSessionIndependentInputAudioResourceList allObjects];
  objc_autoreleasePoolPop(v3);
  [(NSLock *)self->mMXSessionIndependentInputAudioResourceListLock unlock];
  return allObjects;
}

- (int)setPropertyForKey:(id)key value:(id)value
{
  location[16] = *MEMORY[0x1E69E9840];
  v41 = 0;
  if (!key)
  {
    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if (dword_1EB75DE40)
  {
    v40 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([key isEqualToString:@"ClientName"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(MXCoreSessionBase *)self updateClientName:value];
      return 0;
    }

    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if ([key isEqualToString:@"ClientPID"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([value unsignedIntValue])
      {
        if ([(NSNumber *)[(MXCoreSessionBase *)self clientPID] isEqualToNumber:value])
        {
          return 0;
        }

        [(MXCoreSessionBase *)self setClientPID:value];
        CMSessionMgrCopyDisplayIdentifierToSession(self);
        if (!objc_msgSend_isActive(self))
        {
          return 0;
        }

        sendSessionConfigurationInfoToVA = [(MXCoreSessionIndependentInputAudioResource *)self sendSessionConfigurationInfoToVA];
        goto LABEL_52;
      }

      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    }

    else
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    }

LABEL_119:
    v8 = location[0];
    goto LABEL_53;
  }

  if ([key isEqualToString:@"HasExternalMuteNotificationContext"])
  {
    if (value)
    {
      v11 = CFGetTypeID(value);
      if (v11 == CFBooleanGetTypeID())
      {
        -[MXCoreSessionBase setHasExternalMuteNotificationContext:](self, "setHasExternalMuteNotificationContext:", [value BOOLValue]);
        if (dword_1EB75DE40)
        {
          v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        return 0;
      }
    }

    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if ([key isEqualToString:@"InterruptionStyle"])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([value unsignedIntValue] == 16 || !objc_msgSend(value, "unsignedIntValue"))
      {
        return 0;
      }

      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    }

    else
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    }

    goto LABEL_119;
  }

  if ([key isEqualToString:@"PreferredRouteControlFeatures"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }
    }

    v13 = [(NSDictionary *)[(MXCoreSessionBase *)self preferredRouteControlFeatures] copy];
    [(MXCoreSessionBase *)self setPreferredRouteControlFeatures:value];
    v14 = [v13 isEqual:value];
    if (dword_1EB75DE40)
    {
      v15 = v14;
    }

    else
    {
      v15 = 1;
    }

    if ((v15 & 1) == 0)
    {
      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    isActive = objc_msgSend_isActive(self);
    goto LABEL_50;
  }

  if ([key isEqualToString:@"PrefersSuppressingRecordingState"])
  {
    if (value)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        bOOLValue = [value BOOLValue];
        if (bOOLValue != [(MXCoreSessionBase *)self prefersSuppressingRecordingState])
        {
          [(MXCoreSessionBase *)self setPrefersSuppressingRecordingState:bOOLValue];
          if (dword_1EB75DE40)
          {
            v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          isRecording = [(MXCoreSessionBase *)self isRecording];
          if (isRecording)
          {
            MX_SystemStatus_PublishRecordingClientsInfo(isRecording);
          }
        }

        return 0;
      }
    }

    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

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
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSMNotificationUtility_PostReporterIDsDidChange(self);
      }

      return 0;
    }

    [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
    goto LABEL_119;
  }

  if ([key isEqualToString:@"AudioCategory"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if (([value isEqualToString:@"Record"] & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    [(MXCoreSessionBase *)self setAudioCategory:value];
    cmsUpdateAudioBehavior(self, v20);
    isActive = objc_msgSend_isActive(self);
    goto LABEL_50;
  }

  if ([key isEqualToString:@"AudioMode"])
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if (([value isEqualToString:@"Default"] & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    [(MXCoreSessionBase *)self setAudioMode:value];
    [(MXCoreSessionBase *)self setMode:CMSMVAUtility_GetVADModeFromFigModeName(value)];
    cmsUpdateAudioBehavior(self, v23);
    isActive = objc_msgSend_isActive(self);
    goto LABEL_50;
  }

  if ([key isEqualToString:@"EnableBluetoothRecording"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }

      bOOLValue2 = [value BOOLValue];
    }

    else
    {
      bOOLValue2 = 0;
    }

    [(MXCoreSessionBase *)self setEnableBluetoothRecordingPreference:bOOLValue2];
    [(MXCoreSessionBase *)self setEnableBluetoothRecordingPreferenceSetByClient:1];
    [(MXCoreSessionBase *)self setAudioCategory:CMSUtility_GetCustomizedCategory(self)];
    isActive = objc_msgSend_isActive(self);
LABEL_50:
    v41 = isActive;
    if ((isActive & 1) == 0)
    {
      return 0;
    }

    goto LABEL_51;
  }

  if ([key isEqualToString:@"AudioSessionID"])
  {
    audioSessionID = [(MXCoreSessionBase *)self audioSessionID];
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
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
      v31 = MXGetSerialQueue(inited, v30);
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __70__MXCoreSessionIndependentInputAudioResource_setPropertyForKey_value___block_invoke;
      v36[3] = &unk_1E7AEA310;
      objc_copyWeak(&v37, location);
      v38 = unsignedIntValue;
      MXDispatchAsync("[MXCoreSessionIndependentInputAudioResource setPropertyForKey:value:]", "MXCoreSessionIndependentInputAudioResource.m", 417, 0, 0, v31, v36);
      objc_destroyWeak(&v37);
      objc_destroyWeak(location);
    }

    return 0;
  }

  if ([key isEqualToString:@"PrefersEchoCancelledInput"])
  {
    if (value)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }

      bOOLValue3 = [value BOOLValue];
      if (bOOLValue3 == [(MXCoreSessionBase *)self prefersEchoCancelledInput])
      {
        return 0;
      }
    }

    else
    {
      bOOLValue3 = 0;
      v8 = 0;
      if (![(MXCoreSessionBase *)self prefersEchoCancelledInput])
      {
        return v8;
      }
    }

    if (dword_1EB75DE40)
    {
      v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [(MXCoreSessionBase *)self setPrefersEchoCancelledInput:bOOLValue3];
    v35 = objc_msgSend_isActive(self);
    v41 = v35;
    if (!v35)
    {
      return 0;
    }

    goto LABEL_51;
  }

  if (![key isEqualToString:@"ShadowingAudioSessionOptions"])
  {
    isKindOfClass = [key isEqualToString:@"IsRecordingMuted"];
    if (!isKindOfClass)
    {
      return 0;
    }

    if (value)
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
        goto LABEL_119;
      }
    }

    if (!MX_FeatureFlags_IsSessionBasedMutingEnabled(isKindOfClass, v33))
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if (![(MXCoreSessionBase *)self shadowingAudioSessionID])
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    if ([(MXCoreSessionBase *)self shadowingAudioSessionOptions]== 1)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }

    sendSessionConfigurationInfoToVA = -[MXCoreSessionBase updateIsRecordingMuted:updateBluetoothFrameworkToPlayMuteChime:](self, "updateIsRecordingMuted:updateBluetoothFrameworkToPlayMuteChime:", [value BOOLValue], 0);
LABEL_52:
    v8 = sendSessionConfigurationInfoToVA;
    goto LABEL_53;
  }

  if (value)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [MXCoreSessionIndependentInputAudioResource setPropertyForKey:? value:?];
      goto LABEL_119;
    }
  }

  v8 = [(MXCoreSessionBase *)self updateShadowingAudioSessionOptions:value shouldUpdateVAConfig:&v41];
  if (v41)
  {
LABEL_51:
    sendSessionConfigurationInfoToVA = [(MXCoreSessionIndependentInputAudioResource *)self sendSessionConfigurationInfoToVA];
    goto LABEL_52;
  }

LABEL_53:
  if (v8)
  {
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v8;
}

id __70__MXCoreSessionIndependentInputAudioResource_setPropertyForKey_value___block_invoke(uint64_t a1)
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

- (int)copyPropertyForKey:(id)key valueOut:(id *)out
{
  v43 = *MEMORY[0x1E69E9840];
  if (key)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if ([key isEqualToString:@"AudioBehaviour"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self audioBehaviour];
LABEL_9:
        v8 = audioBehaviour;
LABEL_10:
        v9 = 0;
        *out = v8;
        return v9;
      }

      if ([key isEqualToString:@"AudioCategory"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self audioCategory];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"AudioMode"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self audioMode];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"AvailableRouteControlFeatures"])
      {
        v8 = [(MXCoreSessionBase *)self copyAvailableRouteControlFeatures:[(MXCoreSessionIndependentInputAudioResource *)self additiveRoutingInfo]];
        goto LABEL_10;
      }

      if ([key isEqualToString:@"EnableBluetoothRecording"])
      {
        v11 = objc_alloc(MEMORY[0x1E696AD98]);
        isActive = [(MXCoreSessionBase *)self enableBluetoothRecordingPreference];
LABEL_16:
        v13 = isActive;
        v14 = v11;
LABEL_17:
        v8 = [v14 initWithBool:v13];
        goto LABEL_10;
      }

      if ([key isEqualToString:@"ClientName"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self clientName];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"ClientPID"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self clientPID];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"ClientPriority"])
      {
        v8 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
        goto LABEL_10;
      }

      if ([key isEqualToString:@"AudioSessionID"])
      {
        v15 = objc_alloc(MEMORY[0x1E696AD98]);
        audioSessionID = [(MXCoreSessionBase *)self audioSessionID];
LABEL_26:
        v17 = audioSessionID;
        v18 = v15;
LABEL_27:
        v8 = [v18 initWithUnsignedInt:v17];
        goto LABEL_10;
      }

      if ([key isEqualToString:@"CoreSessionID"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self ID];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"HasExternalMuteNotificationContext"])
      {
        v11 = objc_alloc(MEMORY[0x1E696AD98]);
        isActive = [(MXCoreSessionBase *)self hasExternalMuteNotificationContext];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"InterruptionStyle"])
      {
        v15 = objc_alloc(MEMORY[0x1E696AD98]);
        audioSessionID = [(MXCoreSessionBase *)self interruptionStyle];
        goto LABEL_26;
      }

      if ([key isEqualToString:@"IsActive"])
      {
        v11 = objc_alloc(MEMORY[0x1E696AD98]);
        isActive = objc_msgSend_isActive(self);
        goto LABEL_16;
      }

      if ([key isEqualToString:@"IsPlaying"])
      {
        v11 = objc_alloc(MEMORY[0x1E696AD98]);
        isActive = [(MXCoreSessionBase *)self isPlaying];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"IsRecording"])
      {
        v11 = objc_alloc(MEMORY[0x1E696AD98]);
        isActive = [(MXCoreSessionBase *)self isRecording];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"IsRecordingMuted"])
      {
        v11 = objc_alloc(MEMORY[0x1E696AD98]);
        isActive = [(MXCoreSessionBase *)self isRecordingMuted];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"PrefersEchoCancelledInput"])
      {
        v11 = objc_alloc(MEMORY[0x1E696AD98]);
        isActive = [(MXCoreSessionBase *)self prefersEchoCancelledInput];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"PreferredRouteControlFeatures"])
      {
        audioBehaviour = [(MXCoreSessionBase *)self preferredRouteControlFeatures];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"SystemHasAudioInputDevice"])
      {
        v11 = objc_alloc(MEMORY[0x1E696AD98]);
        isActive = [(MXCoreSessionBase *)self isRoutedToOnDemandVAD];
        goto LABEL_16;
      }

      if ([key isEqualToString:@"ReporterIDs"])
      {
        CMSUtility_CreateReporterIDIfNeeded(self);
        audioBehaviour = [(MXCoreSessionBase *)self reporterIDs];
        goto LABEL_9;
      }

      if ([key isEqualToString:@"ShadowingAudioSessionOptions"])
      {
        if ([(MXCoreSessionBase *)self shadowingAudioSessionID])
        {
          v20 = objc_alloc(MEMORY[0x1E695DF20]);
          v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[MXCoreSessionBase shadowingAudioSessionID](self, "shadowingAudioSessionID")}];
          v8 = [v20 initWithObjectsAndKeys:{v21, @"AudioSessionID", objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", -[MXCoreSessionBase shadowingAudioSessionOptions](self, "shadowingAudioSessionOptions")), @"ShadowingOptions", 0}];
          goto LABEL_10;
        }

LABEL_83:
        v9 = 0;
        *out = 0;
        return v9;
      }

      if ([key isEqualToString:@"CurrentAudioHardwareInputNumberChannels"])
      {
        if ([(MXCoreSessionBase *)self isRoutedToOnDemandVAD])
        {
          CurrentInputVADID = CMSUtility_GetCurrentInputVADID(self);
          NumberOfChannelsForVADIDAndScope = vaemGetNumberOfChannelsForVADIDAndScope(CurrentInputVADID, 1);
LABEL_60:
          v24 = NumberOfChannelsForVADIDAndScope;
LABEL_73:
          v18 = objc_alloc(MEMORY[0x1E696AD98]);
          v17 = v24;
          goto LABEL_27;
        }

        goto LABEL_72;
      }

      if ([key isEqualToString:@"CurrentInputSampleRate"])
      {
        if ([(MXCoreSessionBase *)self isRoutedToOnDemandVAD])
        {
          devicesSampleRates = [+[MXSessionManager sharedInstance](MXSessionManager devicesSampleRates];
          audioBehaviour = -[NSDictionary objectForKey:](devicesSampleRates, "objectForKey:", [MEMORY[0x1E696AD98] numberWithUnsignedInt:CMSUtility_GetCurrentInputVADID(self)]);
        }

        else
        {
          audioBehaviour = &unk_1F28AF5F0;
        }

        goto LABEL_9;
      }

      if ([key isEqualToString:@"HasEchoCancelledInput"])
      {
        isRoutedToOnDemandVAD = [(MXCoreSessionBase *)self isRoutedToOnDemandVAD];
        v27 = isRoutedToOnDemandVAD;
        IsAdditiveRoutingEnabled = CMSMVAUtility_IsAdditiveRoutingEnabled(isRoutedToOnDemandVAD, v28);
        if (IsAdditiveRoutingEnabled)
        {
          IsAdditiveRoutingEnabled = objc_msgSend_isActive(self);
          if ((IsAdditiveRoutingEnabled & v27) == 1)
          {
            IsRecordingCategory = CMSMUtility_IsRecordingCategory([(MXCoreSessionBase *)self audioCategory]);
LABEL_85:
            v14 = objc_alloc(MEMORY[0x1E696AD98]);
            v13 = IsRecordingCategory;
            goto LABEL_17;
          }
        }

        if (MX_FeatureFlags_IsOverdubRecordingEnabled(IsAdditiveRoutingEnabled, v30))
        {
          hasEchoCancelledInput = [(MXCoreSessionBase *)self hasEchoCancelledInput];
LABEL_76:
          IsRecordingCategory = hasEchoCancelledInput;
          goto LABEL_85;
        }
      }

      else
      {
        if ([key isEqualToString:@"MaximumNumberOfInputChannels"])
        {
          if ([(MXCoreSessionBase *)self isRoutedToOnDemandVAD])
          {
            v32 = CMSUtility_GetCurrentInputVADID(self);
            NumberOfChannelsForVADIDAndScope = vaemGetMaximumNumberOfChannels(1, v32, 1);
            goto LABEL_60;
          }

LABEL_72:
          v24 = 0;
          goto LABEL_73;
        }

        v34 = [key isEqualToString:@"RouteControlFeatures"];
        if (v34)
        {
          v36 = CMSMVAUtility_IsAdditiveRoutingEnabled(v34, v35) && [(MXCoreSessionBase *)self isRoutedToOnDemandVAD];
          v39 = objc_alloc(MEMORY[0x1E695DF20]);
          v8 = [v39 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", v36), @"RouteControlFeatures", 0, v40, v41}];
          goto LABEL_10;
        }

        v37 = [key isEqualToString:@"SupportsEchoCancelledInput"];
        if (!v37)
        {
          goto LABEL_83;
        }

        if (MX_FeatureFlags_IsOverdubRecordingEnabled(v37, v38))
        {
          hasEchoCancelledInput = [(MXCoreSessionBase *)self supportsEchoCancelledInput];
          goto LABEL_76;
        }
      }

      IsRecordingCategory = 0;
      goto LABEL_85;
    }

    [MXCoreSessionIndependentInputAudioResource copyPropertyForKey:v42 valueOut:?];
  }

  else
  {
    [MXCoreSessionIndependentInputAudioResource copyPropertyForKey:v42 valueOut:?];
  }

  v9 = v42[0];
  if (v42[0])
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v9;
}

- (int)_beginInterruptionWithSecTask:(__SecTask *)task andFlags:(unint64_t)flags
{
  v7 = +[MXSessionManagerIndependentAudioResource sharedInstance];

  return [(MXSessionManagerIndependentAudioResource *)v7 _beginInterruption:self withSecTask:task andFlags:flags];
}

- (int)_endInterruptionWithSecTask:(__SecTask *)task andStatus:(id)status
{
  v7 = +[MXSessionManagerIndependentAudioResource sharedInstance];

  return [(MXSessionManagerIndependentAudioResource *)v7 _endInterruption:self withSecTask:task andStatus:status];
}

- (void)dumpDebugInfo
{
  v15 = *MEMORY[0x1E69E9840];
  [(MXCoreSessionBase *)self dumpDebugConfigInfo];
  [(MXCoreSessionBase *)self dumpDebugStateInfo];
  copyMXSessionIndependentInputAudioResourceList = [(MXCoreSessionIndependentInputAudioResource *)self copyMXSessionIndependentInputAudioResourceList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(copyMXSessionIndependentInputAudioResourceList);
        }

        [*(*(&v10 + 1) + 8 * i) dumpDebugInfo];
      }

      v5 = [copyMXSessionIndependentInputAudioResourceList countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
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

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.11(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.12(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.13(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.14(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.15(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.16(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.17(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.18(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.19(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.20(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.21(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.22(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
}

- (uint64_t)setPropertyForKey:(_DWORD *)a1 value:.cold.23(_DWORD *a1)
{
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = result;
  return result;
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

@end