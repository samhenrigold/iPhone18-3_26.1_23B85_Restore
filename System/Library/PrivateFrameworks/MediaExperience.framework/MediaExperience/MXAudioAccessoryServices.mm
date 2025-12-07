@interface MXAudioAccessoryServices
+ (id)sharedInstance;
- (BOOL)hijackWirelessPort:(unsigned int)port reason:(id)reason portWentInEar:(BOOL)ear;
- (BOOL)isAnyManagedDeviceConnected;
- (BOOL)isPortManaged:(unsigned int)managed;
- (MXAudioAccessoryServices)init;
- (id)copyDeviceAddressFromVADPort:(unsigned int)port;
- (id)copyHighestPriorityLocalSession;
- (id)copyPreferredDeviceAddress:(int)address bundleID:(id)d isHypotheticalQuery:(BOOL)query reason:(id)reason;
- (void)clearDevicesStateCache;
- (void)copyPreferredDeviceAddress:(id *)address andPreemptivePortInfo:(id *)info;
- (void)dealloc;
- (void)dumpDebugInfo;
- (void)finalizeAudioAccessoryConnection;
- (void)handleBTNotificationAudioRoutingChange;
- (void)handleNewWirelessPortConnected:(unsigned int)connected;
- (void)handlePortDisconnected:(unsigned int)disconnected;
- (void)handleServerDeath;
- (void)initializeAudioAccessoryConnection;
- (void)routeToBTDeviceIfNeeded:(id)needed;
- (void)sendAudioRoutingRequestToDevice:(id)device appBundleID:(id)d audioScore:(int)score flags:(unsigned int)flags reason:(id)reason responseHandler:(id)handler;
- (void)updateDeviceManagementState:(id)state reason:(id)reason;
@end

@implementation MXAudioAccessoryServices

- (BOOL)isAnyManagedDeviceConnected
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mSerialQueue = self->mSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55__MXAudioAccessoryServices_isAnyManagedDeviceConnected__block_invoke;
  v5[3] = &unk_1E7AEA918;
  v5[4] = self;
  v5[5] = &v6;
  MXDispatchSync("[MXAudioAccessoryServices isAnyManagedDeviceConnected]", "MX_AudioAccessoryServices.m", 726, 0, 0, mSerialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_17 != -1)
  {
    +[MXAudioAccessoryServices sharedInstance];
  }

  return sharedInstance_sSharedInstance_15;
}

void *__55__MXAudioAccessoryServices_isAnyManagedDeviceConnected__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = *(*(a1 + 32) + 24);
  result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v8;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        result = [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{*(*(&v7 + 1) + 8 * v6)), "BOOLValue"}];
        if (result)
        {
          *(*(*(a1 + 40) + 8) + 24) = 1;
          return result;
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

MXAudioAccessoryServices *__42__MXAudioAccessoryServices_sharedInstance__block_invoke()
{
  result = objc_alloc_init(MXAudioAccessoryServices);
  sharedInstance_sSharedInstance_15 = result;
  return result;
}

- (MXAudioAccessoryServices)init
{
  v16 = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = MXAudioAccessoryServices;
  v2 = [(MXAudioAccessoryServices *)&v15 init];
  if (v2)
  {
    if (+[MXAudioAccessoryServices isSupported])
    {
      v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      *(v2 + 1) = dispatch_queue_create("com.apple.mediaexperience.AudioAccessoryServices", v3);
      *(v2 + 3) = objc_alloc_init(MEMORY[0x1E695DF90]);
      v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
      *(v2 + 4) = v4;
      v6 = MXGetSerialQueue(v4, v5);
      notify_register_dispatch("com.apple.BluetoothServices.AudioRoutingChanged", v2 + 10, v6, &__block_literal_global_7_0);
      IsPreemptiveConnectedBannerEnabled = MX_FeatureFlags_IsPreemptiveConnectedBannerEnabled();
      if (IsPreemptiveConnectedBannerEnabled)
      {
        v9 = MXGetSerialQueue(IsPreemptiveConnectedBannerEnabled, v8);
        v10 = notify_register_dispatch("com.apple.BluetoothServices.PreemptivePortChanged", v2 + 11, v9, &__block_literal_global_10_0);
        v12 = MXGetSerialQueue(v10, v11);
        notify_register_dispatch("com.apple.BluetoothServices.PreemptivePortDisconnected", v2 + 12, v12, &__block_literal_global_13);
      }

      MXDispatchAsync("[MXAudioAccessoryServices init]", "MX_AudioAccessoryServices.m", 155, 0, 0, *(v2 + 1), &__block_literal_global_16_1);
    }

    else
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 0;
    }
  }

  return v2;
}

uint64_t __32__MXAudioAccessoryServices_init__block_invoke()
{
  v0 = +[MXAudioAccessoryServices sharedInstance];

  return [(MXAudioAccessoryServices *)v0 handleBTNotificationAudioRoutingChange];
}

uint64_t __32__MXAudioAccessoryServices_init__block_invoke_4()
{
  v0 = +[MXAudioAccessoryServices sharedInstance];

  return [(MXAudioAccessoryServices *)v0 initializeAudioAccessoryConnection];
}

- (void)dealloc
{
  [(MXAudioAccessoryServices *)self finalizeAudioAccessoryConnection];
  mSerialQueue = self->mSerialQueue;
  if (mSerialQueue)
  {
    dispatch_release(mSerialQueue);
    self->mSerialQueue = 0;
  }

  self->mDevicesState = 0;
  self->mPortToDeviceAddressMapping = 0;
  notify_cancel(self->mBTNotificationAudioRoutingChangedToken);
  if (MX_FeatureFlags_IsPreemptiveConnectedBannerEnabled())
  {
    notify_cancel(self->mBTNotificationPreemptivePortChangedToken);
    notify_cancel(self->mBTNotificationPreemptivePortDisconnectedToken);
  }

  v4.receiver = self;
  v4.super_class = MXAudioAccessoryServices;
  [(MXAudioAccessoryServices *)&v4 dealloc];
}

- (void)initializeAudioAccessoryConnection
{
  gotLoadHelper_x8__OBJC_CLASS___BTAudioRoutingRequest(v2);
  v5 = objc_alloc_init(*(v4 + 1112));
  self->mAudioRoutingRequest = v5;
  [(BTAudioRoutingRequest *)v5 setDispatchQueue:self->mSerialQueue];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  mAudioRoutingRequest = self->mAudioRoutingRequest;

  [defaultCenter addObserver:self selector:sel_handleServerDeath name:@"AudioAccessorydDiedNotification" object:mAudioRoutingRequest];
}

- (void)finalizeAudioAccessoryConnection
{
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
  [(BTAudioRoutingRequest *)self->mAudioRoutingRequest invalidate];

  self->mAudioRoutingRequest = 0;
}

- (void)handleServerDeath
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  mSerialQueue = self->mSerialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__MXAudioAccessoryServices_handleServerDeath__block_invoke;
  v5[3] = &unk_1E7AE7CE0;
  v5[4] = self;
  MXDispatchAsync("[MXAudioAccessoryServices handleServerDeath]", "MX_AudioAccessoryServices.m", 247, 0, 0, mSerialQueue, v5);
}

uint64_t __45__MXAudioAccessoryServices_handleServerDeath__block_invoke(uint64_t a1)
{
  [*(a1 + 32) finalizeAudioAccessoryConnection];
  v2 = *(a1 + 32);

  return [v2 initializeAudioAccessoryConnection];
}

- (void)sendAudioRoutingRequestToDevice:(id)device appBundleID:(id)d audioScore:(int)score flags:(unsigned int)flags reason:(id)reason responseHandler:(id)handler
{
  v9 = *&flags;
  v10 = *&score;
  v26 = *MEMORY[0x1E69E9840];
  FigGetUpTimeNanoseconds();
  [(BTAudioRoutingRequest *)self->mAudioRoutingRequest setDeviceAddress:device];
  [(BTAudioRoutingRequest *)self->mAudioRoutingRequest setAppBundleID:d];
  [(BTAudioRoutingRequest *)self->mAudioRoutingRequest setAudioScore:v10];
  [(BTAudioRoutingRequest *)self->mAudioRoutingRequest setFlags:v9];
  v14 = [(BTAudioRoutingRequest *)self->mAudioRoutingRequest setReason:reason];
  v16 = MXGetPerformanceLog(v14, v15);
  if (os_signpost_enabled(v16))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v16, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "AudioAccessory routing request", &unk_1B19E5B76, buf, 2u);
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  activateSync = [(BTAudioRoutingRequest *)self->mAudioRoutingRequest activateSync];
  v20 = activateSync;
  if (dword_1EB75DE40)
  {
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    activateSync = fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v22 = MXGetPerformanceLog(activateSync, v19);
  if (os_signpost_enabled(v22))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1B17A2000, v22, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "AudioAccessory routing request", &unk_1B19E5B76, buf, 2u);
  }

  if ([v20 error])
  {
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  else
  {
    (*(handler + 2))(handler, v20);
  }
}

- (void)routeToBTDeviceIfNeeded:(id)needed
{
  IsBluetoothSharingSessionEnabled = CMSMVAUtility_IsBluetoothSharingSessionEnabled(0);
  if (!(IsBluetoothSharingSessionEnabled | FigPredictedRouting_IsTimerActive()))
  {
    if (needed)
    {
      if (FigRoutingManagerUtilities_IsSystemAudioRouteBuiltIn())
      {
        A2DPPort = cmsmGetA2DPPort(needed);
        if (!A2DPPort)
        {
          return;
        }

        v8 = A2DPPort;
        if (CMSMVAUtility_ShouldBTPortBeTreatedAsInEar(A2DPPort))
        {
          if (!vaemShouldRequestOwnershipForSharedAudioRoute())
          {
            return;
          }

          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (vaeRequestOwnershipOnBTPort(v8, 18))
          {
            return;
          }

          v13 = CMSMUtility_CopySystemAudioRoutingContextUUID();
          ArrayFromPortIDAndPartners = CMSMVAUtility_CreateArrayFromPortIDAndPartners(v8);
          vaemMakeArrayOfPortsRoutable(ArrayFromPortIDAndPartners, 1, 0, v13, 0);
          goto LABEL_22;
        }

        if (!dword_1EB75DE40)
        {
          return;
        }
      }

      else if (!dword_1EB75DE40)
      {
        return;
      }

      v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      goto LABEL_20;
    }

    ArrayFromPortIDAndPartners = [(MXAudioAccessoryServices *)self copyHighestPriorityLocalSession];
    displayID = [(__CFArray *)ArrayFromPortIDAndPartners displayID];
    LocalSessionPriority = CMSM_GetLocalSessionPriority(ArrayFromPortIDAndPartners, 1);
    if (!CMSUtility_IsSessionRouteEligibleForTipi(ArrayFromPortIDAndPartners))
    {
      if (dword_1EB75DE40)
      {
        v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      goto LABEL_23;
    }

    v13 = [(MXAudioAccessoryServices *)self copyPreferredDeviceAddress:LocalSessionPriority bundleID:displayID isHypotheticalQuery:0 reason:@"Device became managed"];
    if (dword_1EB75DE40)
    {
      v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMVAUtility_RouteToPreferredDeviceAddressIfInEar(v13);
LABEL_22:

LABEL_23:
    return;
  }

  if (dword_1EB75DE40)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
LABEL_20:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)handleBTNotificationAudioRoutingChange
{
  v36 = *MEMORY[0x1E69E9840];
  v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = CMSMVAUtility_CopyWirelessPortsSupportingMultipleConnections();
  v5 = [(__CFArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v31;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v31 != v7)
        {
          objc_enumerationMutation(obj);
        }

        [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[MXAudioAccessoryServices isPortManaged:](self, "isPortManaged:", objc_msgSend(*(*(&v30 + 1) + 8 * i), "unsignedIntValue"))), *(*(&v30 + 1) + 8 * i)}];
      }

      v6 = [(__CFArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    }

    while (v6);
  }

  [(MXAudioAccessoryServices *)self clearDevicesStateCache];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [(__CFArray *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v27;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        v14 = v3;
        if (*v27 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v26 + 1) + 8 * j);
        v16 = -[MXAudioAccessoryServices copyDeviceAddressFromVADPort:](self, "copyDeviceAddressFromVADPort:", [v15 unsignedIntValue]);
        v17 = [objc_msgSend(v4 objectForKey:{v15), "BOOLValue"}];
        [(MXAudioAccessoryServices *)self updateDeviceManagementState:v16 reason:@"BTNotificationAudioRoutingChange is received"];
        v18 = -[MXAudioAccessoryServices isPortManaged:](self, "isPortManaged:", [v15 unsignedIntValue]);
        v19 = v17 | v11;
        v20 = !v18;
        v3 = v14;
        if (v18)
        {
          v21 = v24;
        }

        else
        {
          v21 = v14;
        }

        if (v20)
        {
          v11 = v19;
        }

        [v21 addObject:v15];
      }

      v10 = [(__CFArray *)obj countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v10);
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  vaemUpdateSharedAudioRouteState([v24 allObjects], objc_msgSend(v3, "allObjects"));
  if ((v11 & 1) != 0 && [v3 count])
  {
    allObjects = [v3 allObjects];
LABEL_31:
    [(MXAudioAccessoryServices *)self routeToBTDeviceIfNeeded:allObjects];
    goto LABEL_32;
  }

  if ([v24 count] && !objc_msgSend(v3, "count"))
  {
    allObjects = 0;
    goto LABEL_31;
  }

LABEL_32:
  FigPredictedRouting_UpdatePredictedRoute(2);
}

- (id)copyDeviceAddressFromVADPort:(unsigned int)port
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3052000000;
  v11 = __Block_byref_object_copy__13;
  v12 = __Block_byref_object_dispose__13;
  v13 = 0;
  mSerialQueue = self->mSerialQueue;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__MXAudioAccessoryServices_copyDeviceAddressFromVADPort___block_invoke;
  v6[3] = &unk_1E7AEC940;
  v6[4] = self;
  v6[5] = &v8;
  portCopy = port;
  MXDispatchSync("[MXAudioAccessoryServices copyDeviceAddressFromVADPort:]", "MX_AudioAccessoryServices.m", 437, 0, 0, mSerialQueue, v6);
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  return v4;
}

void *__57__MXAudioAccessoryServices_copyDeviceAddressFromVADPort___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 32) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  *(*(*(a1 + 40) + 8) + 40) = v2;
  result = MX_FeatureFlags_IsSystemInputPickerEnabled(v2, v3);
  if (result)
  {
    if (!*(*(*(a1 + 40) + 8) + 40))
    {
      result = vaeCopyDeviceAddressFromVADPort(*(a1 + 48));
      *(*(*(a1 + 40) + 8) + 40) = result;
      v5 = *(*(*(a1 + 40) + 8) + 40);
      if (v5)
      {
        v6 = *(*(a1 + 32) + 32);
        v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(a1 + 48)];

        return [v6 setObject:v5 forKey:v7];
      }
    }
  }

  return result;
}

- (void)updateDeviceManagementState:(id)state reason:(id)reason
{
  v11 = *MEMORY[0x1E69E9840];
  if (state)
  {
    stateCopy = state;
    mSerialQueue = self->mSerialQueue;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __63__MXAudioAccessoryServices_updateDeviceManagementState_reason___block_invoke;
    v10[3] = &unk_1E7AEC990;
    v10[4] = self;
    v10[5] = state;
    v10[6] = reason;
    MXDispatchAsync("[MXAudioAccessoryServices updateDeviceManagementState:reason:]", "MX_AudioAccessoryServices.m", 463, 0, 0, mSerialQueue, v10);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __63__MXAudioAccessoryServices_updateDeviceManagementState_reason___block_invoke(uint64_t a1)
{
  if (![*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)])
  {
    [*(a1 + 32) sendAudioRoutingRequestToDevice:MEMORY[0x1E69E9820] appBundleID:3221225472 audioScore:__63__MXAudioAccessoryServices_updateDeviceManagementState_reason___block_invoke_2 flags:&unk_1E7AEC968 reason:*(a1 + 40) responseHandler:*(a1 + 32)];
  }
}

uint64_t __63__MXAudioAccessoryServices_updateDeviceManagementState_reason___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (([a2 action] | 2) == 2)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = MEMORY[0x1E695E110];
  }

  else
  {
    if (dword_1EB75DE40)
    {
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v5 = MEMORY[0x1E695E118];
  }

  return [*(*(a1 + 40) + 24) setObject:v5 forKey:*(a1 + 32)];
}

- (void)clearDevicesStateCache
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __50__MXAudioAccessoryServices_clearDevicesStateCache__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchAsync("[MXAudioAccessoryServices clearDevicesStateCache]", "MX_AudioAccessoryServices.m", 492, 0, 0, mSerialQueue, v3);
}

uint64_t __50__MXAudioAccessoryServices_clearDevicesStateCache__block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [*(*(a1 + 32) + 24) removeAllObjects];
}

- (id)copyHighestPriorityLocalSession
{
  if (MX_FeatureFlags_IsSmartRoutingOnActivationEnabled(self, a2))
  {
    v2 = +[MXSessionManager sharedInstance];

    return [(MXSessionManager *)v2 copyHighestPriorityActiveSession:0x1F2893B50 deviceIdentifier:0];
  }

  else
  {

    return CMSM_CopyHighestPriorityLocalPlayingSession(1);
  }
}

- (BOOL)hijackWirelessPort:(unsigned int)port reason:(id)reason portWentInEar:(BOOL)ear
{
  earCopy = ear;
  v7 = *&port;
  v27 = *MEMORY[0x1E69E9840];
  if ([(MXAudioAccessoryServices *)self isPortManaged:?])
  {
    v23 = 0;
    v24 = &v23;
    v25 = 0x2020000000;
    v26 = 0;
    v9 = [(MXAudioAccessoryServices *)self copyDeviceAddressFromVADPort:v7];
    copyHighestPriorityLocalSession = [(MXAudioAccessoryServices *)self copyHighestPriorityLocalSession];
    v11 = copyHighestPriorityLocalSession;
    if (earCopy)
    {
      v12 = 33;
    }

    else
    {
      v12 = 1;
    }

    LocalSessionPriority = CMSM_GetLocalSessionPriority(copyHighestPriorityLocalSession, 1);
    if (LocalSessionPriority == 100)
    {
      displayID = 0;
      LocalSessionPriority = 0;
    }

    else
    {
      displayID = [v11 displayID];
    }

    mSerialQueue = self->mSerialQueue;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __68__MXAudioAccessoryServices_hijackWirelessPort_reason_portWentInEar___block_invoke;
    v19[3] = &unk_1E7AEC9E0;
    v19[4] = self;
    v19[5] = v9;
    v20 = LocalSessionPriority;
    v21 = v12;
    v19[6] = displayID;
    v19[7] = reason;
    v19[8] = &v23;
    v22 = v7;
    MXDispatchSync("[MXAudioAccessoryServices hijackWirelessPort:reason:portWentInEar:]", "MX_AudioAccessoryServices.m", 674, 0, 0, mSerialQueue, v19);

    v17 = *(v24 + 24);
    _Block_object_dispose(&v23, 8);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t __68__MXAudioAccessoryServices_hijackWirelessPort_reason_portWentInEar___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(a1 + 72);
  v4 = *(a1 + 76);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__MXAudioAccessoryServices_hijackWirelessPort_reason_portWentInEar___block_invoke_2;
  v8[3] = &unk_1E7AEC9B8;
  v8[4] = *(a1 + 64);
  v9 = *(a1 + 80);
  return [v2 sendAudioRoutingRequestToDevice:v1 appBundleID:v5 audioScore:v3 flags:v4 reason:v6 responseHandler:v8];
}

void *__68__MXAudioAccessoryServices_hijackWirelessPort_reason_portWentInEar___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  result = [a2 action];
  *(*(*(a1 + 32) + 8) + 24) = result == 1;
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (BOOL)isPortManaged:(unsigned int)managed
{
  v3 = *&managed;
  if (vaeDoesPortSupportMultipleConnections(*&managed))
  {
    v5 = [(MXAudioAccessoryServices *)self copyDeviceAddressFromVADPort:v3];
    v10 = 0;
    v11 = &v10;
    v12 = 0x2020000000;
    v13 = 0;
    mSerialQueue = self->mSerialQueue;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__MXAudioAccessoryServices_isPortManaged___block_invoke;
    v9[3] = &unk_1E7AEB1E8;
    v9[5] = v5;
    v9[6] = &v10;
    v9[4] = self;
    MXDispatchSync("[MXAudioAccessoryServices isPortManaged:]", "MX_AudioAccessoryServices.m", 706, 0, 0, mSerialQueue, v9);

    v7 = *(v11 + 24);
    _Block_object_dispose(&v10, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void *__42__MXAudioAccessoryServices_isPortManaged___block_invoke(void *a1)
{
  result = [objc_msgSend(*(a1[4] + 24) objectForKey:{a1[5]), "BOOLValue"}];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (void)handleNewWirelessPortConnected:(unsigned int)connected
{
  v10 = *MEMORY[0x1E69E9840];
  if (vaeDoesPortSupportMultipleConnections(*&connected))
  {
    v5 = vaeCopyDeviceAddressFromVADPort(connected);
    mSerialQueue = self->mSerialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__MXAudioAccessoryServices_handleNewWirelessPortConnected___block_invoke;
    v8[3] = &unk_1E7AE7D58;
    v8[4] = self;
    v8[5] = v5;
    connectedCopy = connected;
    MXDispatchAsync("[MXAudioAccessoryServices handleNewWirelessPortConnected:]", "MX_AudioAccessoryServices.m", 753, 0, 0, mSerialQueue, v8);
  }

  else if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void __59__MXAudioAccessoryServices_handleNewWirelessPortConnected___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) setObject:*(a1 + 40) forKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  if (![*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)])
  {
    [*(a1 + 32) updateDeviceManagementState:*(a1 + 40) reason:@"Checking management state for a new connected wireless port"];
  }

  v2 = *(a1 + 40);
}

- (void)handlePortDisconnected:(unsigned int)disconnected
{
  v5 = [(MXAudioAccessoryServices *)self copyDeviceAddressFromVADPort:?];
  mSerialQueue = self->mSerialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__MXAudioAccessoryServices_handlePortDisconnected___block_invoke;
  v7[3] = &unk_1E7AE7D58;
  disconnectedCopy = disconnected;
  v7[4] = self;
  v7[5] = v5;
  MXDispatchAsync("[MXAudioAccessoryServices handlePortDisconnected:]", "MX_AudioAccessoryServices.m", 775, 0, 0, mSerialQueue, v7);
}

void __51__MXAudioAccessoryServices_handlePortDisconnected___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 32) objectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}])
  {
    if (dword_1EB75DE40)
    {
      v18 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [*(*(a1 + 32) + 32) removeObjectForKey:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", *(a1 + 48))}];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 32);
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_7:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v3);
      }

      if ([objc_msgSend(*(*(a1 + 32) + 32) objectForKey:{*(*(&v13 + 1) + 8 * v7)), "isEqualToString:", *(a1 + 40)}])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v23 count:16];
        if (v5)
        {
          goto LABEL_7;
        }

        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if ([*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)])
    {
      if (dword_1EB75DE40)
      {
        v18 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v9 = v18;
        v10 = type;
        if (os_log_type_enabled(v8, type))
        {
          v11 = v9;
        }

        else
        {
          v11 = v9 & 0xFFFFFFFE;
        }

        if (v11)
        {
          v12 = *(a1 + 40);
          v19 = 136315395;
          v20 = "[MXAudioAccessoryServices handlePortDisconnected:]_block_invoke";
          v21 = 2113;
          v22 = v12;
          _os_log_send_and_compose_impl(v11, 0, v24, 128, &dword_1B17A2000, v8, v10, "-MXAudioAccessoryServices- %s: Removing disconnected device '%{private}@'", &v19, 22);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [*(*(a1 + 32) + 24) removeObjectForKey:*(a1 + 40)];
    }
  }
}

- (void)copyPreferredDeviceAddress:(id *)address andPreemptivePortInfo:(id *)info
{
  v21 = *MEMORY[0x1E69E9840];
  if (address && info)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3052000000;
    v18 = __Block_byref_object_copy__13;
    v19 = __Block_byref_object_dispose__13;
    v20 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3052000000;
    v12 = __Block_byref_object_copy__13;
    v13 = __Block_byref_object_dispose__13;
    v14 = 0;
    mSerialQueue = self->mSerialQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __77__MXAudioAccessoryServices_copyPreferredDeviceAddress_andPreemptivePortInfo___block_invoke;
    v8[3] = &unk_1E7AECA30;
    v8[4] = self;
    v8[5] = &v9;
    v8[6] = &v15;
    MXDispatchSync("[MXAudioAccessoryServices copyPreferredDeviceAddress:andPreemptivePortInfo:]", "MX_AudioAccessoryServices.m", 819, 0, 0, mSerialQueue, v8);
    *address = v10[5];
    *info = v16[5];
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t __77__MXAudioAccessoryServices_copyPreferredDeviceAddress_andPreemptivePortInfo___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __77__MXAudioAccessoryServices_copyPreferredDeviceAddress_andPreemptivePortInfo___block_invoke_2;
  v3[3] = &unk_1E7AECA08;
  v4 = *(a1 + 40);
  return [v1 sendAudioRoutingRequestToDevice:0 appBundleID:0 audioScore:301 flags:16 reason:@"Copying preemptive port info" responseHandler:v3];
}

id __77__MXAudioAccessoryServices_copyPreferredDeviceAddress_andPreemptivePortInfo___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if ([a2 action] != 5 || (*(*(*(a1 + 32) + 8) + 40) = objc_msgSend(a2, "deviceAddress"), result = objc_msgSend(a2, "wxInfo"), *(*(*(a1 + 40) + 8) + 40) = result, dword_1EB75DE40))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (id)copyPreferredDeviceAddress:(int)address bundleID:(id)d isHypotheticalQuery:(BOOL)query reason:(id)reason
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = __Block_byref_object_copy__13;
  v20 = __Block_byref_object_dispose__13;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (query)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __91__MXAudioAccessoryServices_copyPreferredDeviceAddress_bundleID_isHypotheticalQuery_reason___block_invoke;
  v10[3] = &unk_1E7AECA58;
  v10[4] = &v16;
  v10[5] = &v12;
  addressCopy = address;
  [(MXAudioAccessoryServices *)self sendAudioRoutingRequestToDevice:0 appBundleID:d audioScore:*&address flags:v7 reason:reason responseHandler:v10];
  if (*(v13 + 24) == 1)
  {
    FigPredictedRouting_UpdatePredictedRoute(10);
  }

  v8 = v17[5];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v8;
}

void __91__MXAudioAccessoryServices_copyPreferredDeviceAddress_bundleID_isHypotheticalQuery_reason___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(*(*(a1 + 32) + 8) + 40) = [a2 deviceAddress];
  v5 = [a2 action];
  switch(v5)
  {
    case 3:
      if (![objc_msgSend(a2 "reason")] || *(a1 + 48) != 501)
      {
        return;
      }

      if (dword_1EB75DE40)
      {
        goto LABEL_13;
      }

      goto LABEL_14;
    case 6:
      if (dword_1EB75DE40)
      {
LABEL_13:
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

LABEL_14:
      *(*(*(a1 + 40) + 8) + 24) = 1;
      return;
    case 4:
      if (dword_1EB75DE40)
      {
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(*(*(a1 + 32) + 8) + 40) = 0;
      break;
  }
}

- (void)dumpDebugInfo
{
  mSerialQueue = self->mSerialQueue;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __41__MXAudioAccessoryServices_dumpDebugInfo__block_invoke;
  v3[3] = &unk_1E7AE7CE0;
  v3[4] = self;
  MXDispatchSync("[MXAudioAccessoryServices dumpDebugInfo]", "MX_AudioAccessoryServices.m", 889, 0, 0, mSerialQueue, v3);
}

void *__41__MXAudioAccessoryServices_dumpDebugInfo__block_invoke(uint64_t a1)
{
  v63 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    v53 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v53 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v3 = *(*(a1 + 32) + 24);
  v4 = [v3 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v49;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v49 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (dword_1EB75DE40)
        {
          v8 = *(*(&v48 + 1) + 8 * i);
          v53 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v10 = v53;
          v11 = type;
          if (os_log_type_enabled(v9, type))
          {
            v12 = v10;
          }

          else
          {
            v12 = v10 & 0xFFFFFFFE;
          }

          if (v12)
          {
            v13 = [objc_msgSend(*(*(a1 + 32) + 24) objectForKey:{v8), "BOOLValue"}];
            v55 = 136315651;
            v14 = @"Unmanaged";
            if (v13)
            {
              v14 = @"Managed";
            }

            v56 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
            v57 = 2113;
            v58 = v8;
            v59 = 2114;
            v60 = v14;
            LODWORD(v42) = 32;
            _os_log_send_and_compose_impl(v12, 0, v62, 128, &dword_1B17A2000, v9, v11, "-MXAudioAccessoryServices- %s: \t\t %{private}@: '%{public}@',", &v55, v42);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v5);
  }

  if (dword_1EB75DE40)
  {
    v53 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v16 = v53;
    v17 = type;
    if (os_log_type_enabled(v15, type))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 0xFFFFFFFE;
    }

    if (v18)
    {
      v55 = 136315138;
      v56 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl(v18, 0, v62, 128, &dword_1B17A2000, v15, v17, "-MXAudioAccessoryServices- %s: \t }", &v55);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v53 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v20 = v53;
      v21 = type;
      if (os_log_type_enabled(v19, type))
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 & 0xFFFFFFFE;
      }

      if (v22)
      {
        v55 = 136315138;
        v56 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
        _os_log_send_and_compose_impl(v22, 0, v62, 128, &dword_1B17A2000, v19, v21, "-MXAudioAccessoryServices- %s: \t mPortToDeviceAddressMapping = {", &v55);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v23 = *(*(a1 + 32) + 32);
  result = [v23 countByEnumeratingWithState:&v44 objects:v54 count:16];
  if (result)
  {
    v25 = result;
    v26 = *v45;
    do
    {
      v27 = 0;
      do
      {
        if (*v45 != v26)
        {
          objc_enumerationMutation(v23);
        }

        if (dword_1EB75DE40)
        {
          v28 = *(*(&v44 + 1) + 8 * v27);
          v53 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          v30 = v53;
          v31 = type;
          if (os_log_type_enabled(v29, type))
          {
            v32 = v30;
          }

          else
          {
            v32 = v30 & 0xFFFFFFFE;
          }

          if (v32)
          {
            v33 = [*(*(a1 + 32) + 32) objectForKey:v28];
            v55 = 136315650;
            v56 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
            v57 = 2114;
            v58 = v28;
            v59 = 2114;
            v60 = v33;
            LODWORD(v42) = 32;
            _os_log_send_and_compose_impl(v32, 0, v62, 128, &dword_1B17A2000, v29, v31, "-MXAudioAccessoryServices- %s: \t\t %{public}@: '%{public}@',", &v55, v42);
          }

          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v27 = v27 + 1;
      }

      while (v25 != v27);
      result = [v23 countByEnumeratingWithState:&v44 objects:v54 count:16];
      v25 = result;
    }

    while (result);
  }

  if (dword_1EB75DE40)
  {
    v53 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v35 = v53;
    v36 = type;
    if (os_log_type_enabled(v34, type))
    {
      v37 = v35;
    }

    else
    {
      v37 = v35 & 0xFFFFFFFE;
    }

    if (v37)
    {
      v55 = 136315138;
      v56 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
      _os_log_send_and_compose_impl(v37, 0, v62, 128, &dword_1B17A2000, v34, v36, "-MXAudioAccessoryServices- %s: \t }", &v55);
    }

    result = fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (dword_1EB75DE40)
    {
      v53 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v39 = v53;
      v40 = type;
      if (os_log_type_enabled(v38, type))
      {
        v41 = v39;
      }

      else
      {
        v41 = v39 & 0xFFFFFFFE;
      }

      if (v41)
      {
        v55 = 136315138;
        v56 = "[MXAudioAccessoryServices dumpDebugInfo]_block_invoke";
        _os_log_send_and_compose_impl(v41, 0, v62, 128, &dword_1B17A2000, v38, v40, "-MXAudioAccessoryServices- %s: \t =======================================================================================================================================", &v55);
      }

      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

@end