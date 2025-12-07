@interface SelectRouteDescriptor
@end

@implementation SelectRouteDescriptor

uint64_t __routingContextResilientRemote_SelectRouteDescriptor_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v5)
  {
    return 4294954514;
  }

  return v5(a2, v3, v4);
}

void __routingContext_SelectRouteDescriptor_block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  ContextType = FigRoutingManagerContextUtilities_GetContextType(*(DerivedStorage + 8));
  if (ContextType == 13 && MX_FeatureFlags_IsSystemInputPickerEnabled(ContextType, v4))
  {
    if (dword_1EB75DF40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    Value = FigCFDictionaryGetValue();
    v7 = FigCFDictionaryGetValue();
    v8 = FigCFDictionaryGetValue();
    [+[MXUserPreferredInputRouteCache sharedInstance](MXUserPreferredInputRouteCache setUserPreferredRoute:"setUserPreferredRoute:hostApplicationBundleID:" hostApplicationBundleID:*(a1 + 40), Value];
    [+[MXAudioStatistics sharedInstance](MXAudioStatistics sendSingleSetUserPreferredInputMessage:"sendSingleSetUserPreferredInputMessage:clientInitiator:audioRouteName:" clientInitiator:Value audioRouteName:v7, v8];
  }

  v9 = FigEndpointDescriptorUtility_CopyEndpointFromDescriptor(*(a1 + 40), 0);
  if (v9)
  {
    v10 = v9;
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
    FigRoutingManagerCreateAggregateForContextIfNecessary(*(DerivedStorage + 8), v11);

    CFRelease(v10);
  }

  FigPredictedRouting_ResetSelectedRouteDescriptor(*(DerivedStorage + 8), 2);
  if (FigRoutingManagerContextUtilities_GetContextType(*(DerivedStorage + 8)) == 2 && MXSystemMirroring_IsTestCodeEnabled())
  {
    MXSystemMirroring_PickRouteDescriptor(*(DerivedStorage + 8), *(a1 + 40), *(a1 + 48), 0);
  }

  else
  {
    IsMirroringScreenAudioSeperateFunctionalityAllowed = MXSystemMirroring_IsMirroringScreenAudioSeperateFunctionalityAllowed();
    v13 = *(DerivedStorage + 8);
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    if (IsMirroringScreenAudioSeperateFunctionalityAllowed)
    {
      MXSystemAudio_PickRouteDescriptor(v13, v14, v15, 0);
    }

    else
    {
      FigRoutingManagerPickRouteDescriptorForContext(v13, v14, v15, 0);
    }
  }

  v16 = *(a1 + 32);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 40);
  if (v17)
  {
    CFRelease(v17);
  }

  v18 = *(a1 + 48);
  if (v18)
  {
    CFRelease(v18);
  }
}

@end