@interface RemoveFromSelectedRouteDescriptors
@end

@implementation RemoveFromSelectedRouteDescriptors

uint64_t __routingContextResilientRemote_RemoveFromSelectedRouteDescriptors_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 104);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a2, v3, v4);
}

void __routingContext_RemoveFromSelectedRouteDescriptors_block_invoke(uint64_t a1)
{
  cf[22] = *MEMORY[0x1E69E9840];
  v2 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(*(a1 + 40), *(*(a1 + 48) + 8));
  cf[0] = 0;
  if (!v2)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 72), @"configUpdateReasonStarted");
    FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 72), @"configUpdateReasonEndedFailed");
    goto LABEL_23;
  }

  v3 = v2;
  v4 = *(a1 + 48);
  v5 = *v4;
  if (*v4 > 0xDu)
  {
LABEL_10:
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  if (((1 << v5) & 0x201A) == 0)
  {
    if (v5 == 9)
    {
      v8 = MXSystemRemotePool_RemoveEndpointFromContext(v2, v4[1], *(a1 + 72));
LABEL_17:
      *(*(*(a1 + 32) + 8) + 24) = v8;
      goto LABEL_22;
    }

    goto LABEL_10;
  }

  FigPredictedRouting_ResetSelectedRouteDescriptor(v4[1], 5);
  v6 = *(a1 + 48);
  if (*v6 != 13 || (FigRoutingManagerCopyPickedRouteDescriptorForRoutingContext(*(v6 + 8), cf), FigCFDictionaryGetValue(), FigCFDictionaryGetValue(), FigCFDictionaryGetValue(), !FigCFEqual()) && FigCFEqual())
  {
    if (FigRoutingManagerIsEndpointOfType(v3, *MEMORY[0x1E69626D8]) && FigRoutingManagerIsEndpointWHAGroupable(v3))
    {
      v10 = FigRoutingManagerCopyLocalAirPlayEndpoint();
      if (dword_1EB75DF40)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!v10)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *(*(*(a1 + 32) + 8) + 24) = FigRoutingManager_iOSRemoveEndpointFromContext(*(*(a1 + 48) + 8), v10, *(a1 + 72));
      if (v10)
      {
        CFRelease(v10);
      }

      goto LABEL_22;
    }

    v8 = FigRoutingManager_iOSRemoveEndpointFromContext(*(*(a1 + 48) + 8), v3, *(a1 + 72));
    goto LABEL_17;
  }

  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(*(a1 + 48) + 8), *(a1 + 72), @"configUpdateReasonEndedNoop");
LABEL_22:
  CFRelease(v3);
LABEL_23:
  v13 = *(a1 + 80);
  if (v13)
  {
    CFRelease(v13);
  }

  v14 = *(a1 + 40);
  if (v14)
  {
    CFRelease(v14);
  }

  v15 = *(a1 + 72);
  if (v15)
  {
    CFRelease(v15);
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }
}

@end