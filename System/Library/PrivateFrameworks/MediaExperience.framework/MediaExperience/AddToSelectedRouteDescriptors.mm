@interface AddToSelectedRouteDescriptors
@end

@implementation AddToSelectedRouteDescriptors

uint64_t __routingContextResilientRemote_AddToSelectedRouteDescriptors_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 88);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a2, v3, v4);
}

void __routingContext_AddToSelectedRouteDescriptors_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(*(a1 + 40), *(*(a1 + 48) + 8));
  if (!v2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 64), @"configUpdateReasonStarted");
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 64), @"configUpdateReasonEndedFailed");
    goto LABEL_25;
  }

  v3 = v2;
  v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v2, 0}];
  FigRoutingManagerCreateAggregateForContextIfNecessary(*(*(a1 + 48) + 8), v4);

  v7 = *(a1 + 48);
  v8 = *v7;
  if ((*v7 - 3) >= 2 && v8 != 1)
  {
    if (v8 == 9)
    {
      MXSystemRemotePool_AddEndpointToContext(v3, v7[1], *(a1 + 64));
    }

    else if (MX_FeatureFlags_IsSystemRemoteDisplayContextEnabled(v5, v6) && (v16 = *(a1 + 48), *v16 == 14))
    {
      IsEndpointPicked = FigRoutingManagerUtilities_IsEndpointPicked(v3, *(v16 + 8));
      v18 = *(*(a1 + 48) + 8);
      v19 = *(a1 + 64);
      if (IsEndpointPicked)
      {
        v20 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedNoOp;
      }

      else
      {
        FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v18, v19, @"configUpdateReasonStarted");
        v18 = *(*(a1 + 48) + 8);
        v19 = *(a1 + 64);
        v20 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed;
      }

      FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(v18, v19, *v20);
    }

    else
    {
      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_24;
  }

  FigPredictedRouting_ResetSelectedRouteDescriptor(v7[1], 4);
  if (!FigRoutingManagerIsEndpointOfType(v3, *MEMORY[0x1E69626D8]) || !FigRoutingManagerIsEndpointWHAGroupable(v3))
  {
    v13 = *(*(a1 + 48) + 8);
    v14 = *(a1 + 64);
    v15 = v3;
LABEL_15:
    FigRoutingManager_iOSAddEndpointToContext(v13, v15, v14);
    goto LABEL_24;
  }

  v10 = FigRoutingManagerCopyLocalAirPlayEndpoint();
  if (!v10)
  {
    v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = *(*(a1 + 48) + 8);
    v14 = *(a1 + 64);
    v15 = 0;
    goto LABEL_15;
  }

  v11 = v10;
  FigRoutingManager_iOSAddEndpointToContext(*(*(a1 + 48) + 8), v10, *(a1 + 64));
  CFRelease(v11);
LABEL_24:
  CFRelease(v3);
LABEL_25:
  v23 = *(a1 + 72);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 40);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    CFRelease(v25);
  }
}

@end