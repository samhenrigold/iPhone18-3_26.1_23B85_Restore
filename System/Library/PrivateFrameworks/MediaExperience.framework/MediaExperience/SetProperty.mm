@interface SetProperty
@end

@implementation SetProperty

void __discoverer_SetProperty_block_invoke_2(uint64_t a1)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  if (CFEqual(*(a1 + 40), @"DiscoveryMode"))
  {
    v2 = FigCFEqual();
    if (v2 && MX_FeatureFlags_IsCorianderEnabled(v2, v3))
    {
      v4 = *(a1 + 56);
      if (v4)
      {
        CFRetain(v4);
      }

      NotificationQueue = FigRouteDiscoveryManagerGetNotificationQueue();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __discoverer_SetProperty_block_invoke_3;
      v28[3] = &__block_descriptor_40_e5_v8__0l;
      v28[4] = *(a1 + 56);
      MXDispatchAsync("discoverer_SetProperty_block_invoke_2", "FigRouteDiscoverer.m", 635, 0, 0, NotificationQueue, v28);
    }

    else
    {
      if (FigCFEqual())
      {
        v6 = dword_1EB75DF60 == 0;
      }

      else
      {
        v6 = 1;
      }

      if (!v6)
      {
        v27 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v8 = *(a1 + 48);
      if (*v8)
      {
        v9 = CFRetain(*v8);
        v8 = *(a1 + 48);
        v10 = *v8;
      }

      else
      {
        v10 = 0;
        v9 = 0;
      }

      v11 = *(a1 + 64);
      *v8 = v11;
      if (v11)
      {
        CFRetain(v11);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      v12 = FigCFEqual();
      if (v12)
      {
        FigSimpleMutexLock();
        *(*(a1 + 48) + 88) = 0;
        v12 = FigSimpleMutexUnlock();
      }

      if (MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled(v12, v13) && !FigCFEqual())
      {
        FigRouteDiscoveryManagerRemoveCachedDiscoverers(*(a1 + 56));
      }

      if (FigCFEqual())
      {
        if (dword_1EB75DF60)
        {
          v27 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }

      else
      {
        if (dword_1EB75DF60)
        {
          v27 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        IsNewDiscoveryModeHigher = FigRouteDiscovereryManagerIsNewDiscoveryModeHigher(v9, **(a1 + 48));
        if (!IsNewDiscoveryModeHigher)
        {
          IsNewDiscoveryModeHigher = FigRouteDiscovererShouldLogForClient(*(*(a1 + 48) + 16));
          if (IsNewDiscoveryModeHigher)
          {
            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
            FigSimpleMutexLock();
            v19 = *(*(a1 + 48) + 96);
            *(*(a1 + 48) + 64) = UpTimeNanoseconds;
            FigSimpleMutexUnlock();
            discoverer_logAvailableRouteDetails(*(*(a1 + 48) + 16), *(*(a1 + 48) + 56), v19);
            if (v19)
            {
              CFRelease(v19);
            }
          }
        }

        if (MX_FeatureFlags_IsAVODDiscoveryEnhancementEnabled(IsNewDiscoveryModeHigher, v17) && FigCFEqual())
        {
          FigRouteDiscoveryManagerAddToCachedDiscoverers(*(a1 + 56));
        }

        FigRouteDiscoveryManagerUpdateDiscoveryMode();
        if (FigRouteDiscovereryManagerIsNewDiscoveryModeHigher(v9, **(a1 + 48)))
        {
          theArray[0] = 0;
          FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(*MEMORY[0x1E695E480], *(*(a1 + 48) + 56), *(*(a1 + 48) + 8), *(*(a1 + 48) + 24), theArray);
          v20 = FigRouteDiscoveryManagerCopyRouteDescriptorsFromEndpointsAndAudioSessionID(theArray[0], *(*(a1 + 48) + 8));
          FigSimpleMutexLock();

          v21 = theArray[0];
          v22 = *(a1 + 48);
          *(v22 + 104) = v21;

          if (*(*(a1 + 48) + 56) == 8 && v20 && CFArrayGetCount(v20))
          {
            [-[__CFArray objectAtIndex:](v20 objectAtIndex:{0), "setValue:forKey:", @"Default", @"RouteType"}];
          }

          *(*(a1 + 48) + 96) = v20;
          FigSimpleMutexUnlock();
          if (v20)
          {
            CFRelease(v20);
          }

          if (FigCFEqual() && FigCFEqual() || FigCFEqual() && FigCFEqual() && *(*(a1 + 48) + 56) == 8)
          {
            discoverer_updateUserSelectionAvailableAndNotifyIfRoutePresentChanged(*(a1 + 56), theArray[0], 0);
          }

          if (theArray[0])
          {
            if (CFArrayGetCount(theArray[0]))
            {
              v23 = *(a1 + 56);
              if (v23)
              {
                CFRetain(v23);
              }

              v24 = FigRouteDiscoveryManagerGetNotificationQueue();
              v25[0] = MEMORY[0x1E69E9820];
              v25[1] = 3221225472;
              v25[2] = __discoverer_SetProperty_block_invoke_2_53;
              v25[3] = &__block_descriptor_40_e5_v8__0l;
              v25[4] = *(a1 + 56);
              MXDispatchAsync("discoverer_SetProperty_block_invoke", "FigRouteDiscoverer.m", 757, 0, 0, v24, v25);
            }

            if (theArray[0])
            {
              CFRelease(theArray[0]);
            }
          }
        }
      }

      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = -12784;
  }
}

uint64_t __central_SetProperty_block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = a1[7];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v10 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, v15, v16);
  }

  else
  {
    v5 = DerivedStorage;
    if (CFEqual(v2, *MEMORY[0x1E6962358]))
    {
      if (*v5)
      {
        v10 = 4294954511;
      }

      else if (v3 && (v6 = CFGetTypeID(v3), v6 == CFBooleanGetTypeID()))
      {
        Value = CFBooleanGetValue(v3);
        if (Value)
        {
          v8 = 0x100000000;
        }

        else
        {
          v8 = 0xFFFFFFFF00000000;
        }

        if (Value)
        {
          v9 = @"iOS navigation session started";
        }

        else
        {
          v9 = @"iOS navigation session ended";
        }

        v10 = FigEndpointCentralUpdateiOSDeviceState(v1, v8, 0, v9, 1);
      }

      else
      {
        v10 = 4294954516;
      }
    }

    else
    {
      CMBaseObject = FigEndpointGetCMBaseObject();
      v12 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v12)
      {
        v10 = v12(CMBaseObject, v2, v3);
      }

      else
      {
        v10 = 4294954514;
      }
    }
  }

  return OUTLINED_FUNCTION_0_3(v10);
}

void __discoverer_SetProperty_block_invoke_3(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

void __discoverer_SetProperty_block_invoke_2_53(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t __routingContextResilientRemote_SetProperty_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a2, v3, v4);
}

uint64_t __endpointAggregate_SetProperty_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(CMBaseObject, v2, v3);
}

@end