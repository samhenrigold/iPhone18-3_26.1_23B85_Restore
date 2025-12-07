uint64_t volumeController_SetMainVolumeForRoutingContext(float a1, uint64_t a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    return 4294949706;
  }

  if (dword_1EB75DEA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a3, cf);
  ContextType = FigRoutingManagerContextUtilities_GetContextType(cf[0]);
  if (ContextType != 13)
  {
    v6 = volumeController_setMainVolume(cf[0], a1);
    IsMuteEnabled = MX_FeatureFlags_IsMuteEnabled();
    if (IsMuteEnabled)
    {
      LOBYTE(v20) = 0;
      MuteOfRoutingContext = volumeController_GetMuteOfRoutingContext(IsMuteEnabled, a3, &v20);
      if (v20)
      {
        volumeController_SetMuteOfRoutingContext(MuteOfRoutingContext, a3, 0);
      }
    }

    goto LABEL_17;
  }

  if (!MX_FeatureFlags_IsSystemInputPickerEnabled(ContextType, v8))
  {
    v6 = 0;
LABEL_17:
    v11 = 0;
    goto LABEL_18;
  }

  if (!FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]))
  {
    volumeController_SetMainVolumeForRoutingContext_cold_1(&v20);
    v11 = 0;
    v6 = v20;
    goto LABEL_18;
  }

  v9 = objc_alloc(MEMORY[0x1E696AD98]);
  *&v10 = a1;
  v11 = [v9 initWithFloat:v10];
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v13)
  {
    v6 = 4294954514;
LABEL_15:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, v18, v19);
    goto LABEL_18;
  }

  v6 = v13(CMBaseObject, 0x1F289B770, v11);
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_18:
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  return v6;
}

uint64_t volumeController_GetMainVolumeForRoutingContext(uint64_t a1, uint64_t a2, float *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 4294949706;
  }

  v16 = 0;
  cf = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &cf);
  ContextType = FigRoutingManagerContextUtilities_GetContextType(cf);
  if (ContextType == 13)
  {
    if (!MX_FeatureFlags_IsSystemInputPickerEnabled(ContextType, v5))
    {
      v9 = 0;
      goto LABEL_15;
    }

    if (!FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618F8]))
    {
      volumeController_GetMainVolumeForRoutingContext_cold_1(v18);
      v9 = v18[0];
      goto LABEL_15;
    }

    CMBaseObject = FigEndpointManagerGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7 && !v7(CMBaseObject, 0x1F289B770, *MEMORY[0x1E695E480], &v16))
    {
      if (dword_1EB75DEA0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      [v16 floatValue];
      v9 = 0;
      *a3 = v11;
      goto LABEL_15;
    }

    MainVolume = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v13, v14, v15);
  }

  else
  {
    MainVolume = volumeController_getMainVolume(cf, a3);
  }

  v9 = MainVolume;
LABEL_15:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  return v9;
}

uint64_t volumeController_ChangeVolumeForEndpointWithID(void *a1, uint64_t a2, float a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v31);
  v6 = v31;
  cf = 0;
  v7 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(CMBaseObject, *MEMORY[0x1E6962348], v7, &cf);
  }

  if ((FigCFNumberGetSInt64() - 1) <= 1)
  {
    Mutable = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v11 = Mutable;
    v12 = MEMORY[0x1E695E4C0];
    if (a3 > 0.0)
    {
      v12 = MEMORY[0x1E695E4D0];
    }

    CFDictionarySetValue(Mutable, *MEMORY[0x1E69624B8], *v12);
    if (v6)
    {
      v13 = CFRetain(v6);
    }

    else
    {
      v13 = 0;
    }

    if (dword_1EB75DEA0)
    {
      v33 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v17 = v33;
      v18 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v19 = v17;
      }

      else
      {
        v19 = v17 & 0xFFFFFFFE;
      }

      if (v19)
      {
        v35 = 136315650;
        v36 = "volumeController_changeIndividualVolumeBy";
        v37 = 2048;
        v38 = v6;
        v39 = 2048;
        v40 = v13;
        _os_log_send_and_compose_impl(v19, 0, v43, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v18, "-FigVolumeController- %s: Sending to %p (pref %p)", &v35, 32, v30);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (!v13 || (FigEndpointExtendedGetClassID(), v20 = v13, !CMBaseObjectIsMemberOfClass()))
    {
      v20 = 0;
    }

    v21 = *(*(CMBaseObjectGetVTable() + 24) + 72);
    if (v21)
    {
      VolumeForEndpoint = v21(v20, *MEMORY[0x1E6962498], v11, 0, 0);
      if (!v13)
      {
LABEL_27:
        if (!v11)
        {
          goto LABEL_29;
        }

        goto LABEL_28;
      }
    }

    else
    {
      VolumeForEndpoint = 4294954514;
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    CFRelease(v13);
    goto LABEL_27;
  }

  v43[0] = 0.0;
  VolumeForEndpoint = volumeController_getVolumeForEndpoint(v6, v43);
  if (!VolumeForEndpoint)
  {
    v15 = v43[0] + a3;
    v43[0] = v15;
    if (v15 <= 1.0)
    {
      if (v15 < 0.0)
      {
        v43[0] = 0.0;
        v15 = 0.0;
      }
    }

    else
    {
      v43[0] = 1.0;
      v15 = 1.0;
    }

    VolumeForEndpoint = volumeController_setVolumeForEndpoint(v6, v15);
    v11 = FigRoutingManagerCopyRoutingContextUUIDForEndpoint(v6);
    volumeController_recomputeMainVolume(v11, v43[0]);
    if (v11)
    {
LABEL_28:
      CFRelease(v11);
    }
  }

LABEL_29:
  if (cf)
  {
    CFRelease(cf);
  }

  cf = 0;
  if (v31)
  {
    v22 = FigEndpointGetCMBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, *MEMORY[0x1E69621E8], v7, &cf);
    }
  }

  if (dword_1EB75DEA0)
  {
    v33 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v25 = v33;
    v26 = type;
    if (os_log_type_enabled(v24, type))
    {
      v27 = v25;
    }

    else
    {
      v27 = v25 & 0xFFFFFFFE;
    }

    if (v27)
    {
      v35 = 136315906;
      v36 = "volumeController_ChangeVolumeForEndpointWithID";
      v37 = 2114;
      v38 = cf;
      v39 = 2114;
      v40 = a2;
      v41 = 2048;
      v42 = a3;
      LODWORD(v29) = 42;
      _os_log_send_and_compose_impl(v27, 0, v43, 128, &dword_1B17A2000, v24, v26, "-FigVolumeController- %s: endpointName=%{public}@, endpointID = %{public}@, inDelta = %f", &v35, v29);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (MX_FeatureFlags_IsMuteEnabled())
  {
    LOBYTE(v43[0]) = 0;
    volumeController_GetMuteOfEndpointWithID(a1, a2, v43);
    if (LOBYTE(v43[0]))
    {
      volumeController_SetMuteOfEndpointWithID(a1, a2, 0);
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v31)
  {
    CFRelease(v31);
  }

  return VolumeForEndpoint;
}

uint64_t volumeController_SetVolumeForEndpointWithID(void *a1, uint64_t a2, float a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v18 = 0;
  v19 = 0;
  v16 = 0;
  v17 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v19);
  if (v19)
  {
    v6 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v8)
    {
      v8(CMBaseObject, *MEMORY[0x1E6962238], v6, &v16);
    }

    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *MEMORY[0x1E69621E8], v6, &v17);
    }

    if (v16)
    {
      FigRoutingManagerContextUtilities_CopyPickedEndpoints(v16, &v18);
      v11 = FigCFArrayContainsValue();
      if (FigRoutingManagerIsEndpointWHAGroupable(v19))
      {
        cf[0] = 0;
        FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v16, cf);
        v12 = v19;
        v13 = cf[0];
        if (!cf[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
        {
          v13 = 0;
        }

        if (FigRoutingManagerIsEndpointPresentInAggregate(v12, v13))
        {
          v11 = 1;
        }

        else
        {
          v11 = v11;
        }

        if (cf[0])
        {
          CFRelease(cf[0]);
        }
      }

      if (v11)
      {
        v11 = volumeController_setVolumeForEndpoint(v19, a3);
        volumeController_recomputeMainVolume(v16, a3);
        if (dword_1EB75DEA0)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }
      }
    }

    else
    {
      v11 = 0;
    }

    if (MX_FeatureFlags_IsMuteEnabled())
    {
      LOBYTE(cf[0]) = 0;
      volumeController_GetMuteOfEndpointWithID(a1, a2, cf);
      if (LOBYTE(cf[0]))
      {
        volumeController_SetMuteOfEndpointWithID(a1, a2, 0);
      }
    }

    if (v19)
    {
      CFRelease(v19);
      v19 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  if (v17)
  {
    CFRelease(v17);
    v17 = 0;
  }

  if (v18)
  {
    CFRelease(v18);
    v18 = 0;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v11;
}

uint64_t volumeController_GetVolumeForEndpointWithID(void *a1, uint64_t a2, float *a3)
{
  cf = 0;
  v9 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v9);
  if (!v9)
  {
    return 0;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &cf);
  }

  VolumeForEndpoint = volumeController_getVolumeForEndpoint(v9, a3);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  return VolumeForEndpoint;
}

uint64_t volumeController_IsVolumeControlSupportedForEndpointWithID(void *a1, uint64_t a2, BOOL *a3)
{
  if (!a3)
  {
    return 4294949706;
  }

  v14 = 0;
  volumeController_copyEndpointWithID(a1, a2, &v14);
  v4 = *MEMORY[0x1E695E4C0];
  v13 = *MEMORY[0x1E695E4C0];
  v5 = MEMORY[0x1E695E480];
  if (!v14)
  {
LABEL_6:
    v8 = 0;
    *a3 = v4 == *MEMORY[0x1E695E4D0];
    goto LABEL_9;
  }

  CMBaseObject = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v8 = v7(CMBaseObject, *MEMORY[0x1E6962340], *v5, &v13);
    if (v8)
    {
      goto LABEL_9;
    }

    v4 = v13;
    goto LABEL_6;
  }

  v8 = 4294954514;
LABEL_9:
  cf = 0;
  if (v14)
  {
    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v10)
    {
      v10(v9, *MEMORY[0x1E69621E8], *v5, &cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }
  }

  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v8;
}

uint64_t volumeController_GetVolumeControlTypeOfSubEndpointWithID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    cf = 0;
    volumeController_copyEndpointWithID(a1, a2, &cf);
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return 4294949706;
}

uint64_t volumeController_SetVolumeOfSubEndpointWithID(void *a1, uint64_t a2, uint64_t a3)
{
  if (MX_FeatureFlags_IsMuteEnabled())
  {
    volumeController_GetMuteOfSubEndpointWithID(a1, a2, a3);
  }

  return 0;
}

uint64_t volumeController_GetVolumeOfSubEndpointWithID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 4294949706;
  }

  cf = 0;
  volumeController_copyEndpointWithID(a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t volumeController_GetVolumeOfRoomWithID(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    return 0;
  }

  else
  {
    return 4294949706;
  }
}

uint64_t volumeController_SetMuteOfRoutingContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 4294949706;
  }

  result = MX_FeatureFlags_IsMuteEnabled();
  if (!result)
  {
    return result;
  }

  if (dword_1EB75DEA0)
  {
    LODWORD(theArray) = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v31 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v31);
  if (!v31)
  {
    return 4294949706;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(v31, &theArray);
  if (theArray)
  {
    if (CFArrayGetCount(theArray) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, *MEMORY[0x1E69626B0]))
      {
        *type = 0;
        v8 = *MEMORY[0x1E695E480];
        CMBaseObject = FigEndpointGetCMBaseObject();
        v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v10)
        {
          v10(CMBaseObject, *MEMORY[0x1E6962270], v8, type);
        }

        v11 = "Yes";
        if (!a3)
        {
          v11 = "No";
        }

        v30 = v11;
        v12 = *type;
        if (*type)
        {
          v13 = 0;
          v29 = *MEMORY[0x1E69621E8];
          v14 = &qword_1EB75D000;
          while (v13 < CFArrayGetCount(v12))
          {
            v15 = CFArrayGetValueAtIndex(*type, v13);
            volumeController_setMuteForEndpoint(v15, a3);
            v34 = 0;
            v16 = FigEndpointGetCMBaseObject();
            v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v17)
            {
              v17(v16, v29, v8, &v34);
            }

            if (dword_1EB75DEA0)
            {
              v18 = a3;
              v19 = v8;
              v33 = 0;
              v32 = OS_LOG_TYPE_DEFAULT;
              v20 = v14;
              v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              v22 = v33;
              v23 = v32;
              if (os_log_type_enabled(v21, v32))
              {
                v24 = v22;
              }

              else
              {
                v24 = v22 & 0xFFFFFFFE;
              }

              if (v24)
              {
                v25 = v34;
                EndpointManagerName = FigRoutingManagerGetEndpointManagerName(v15);
                v37 = 136315906;
                v38 = "volumeController_setMuteByUserForRoutingContext";
                v39 = 2114;
                v40 = v25;
                v41 = 2114;
                v42 = EndpointManagerName;
                v43 = 2082;
                v44 = v30;
                LODWORD(v28) = 42;
                _os_log_send_and_compose_impl(v24, 0, cf, 128, &dword_1B17A2000, v21, v23, "-FigVolumeController- %s: SubEndpoint=%{public}@ SubEndpointType: %{public}@, MuteValue=%{public}s", &v37, v28);
              }

              v14 = v20;
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v8 = v19;
              a3 = v18;
            }

            Mutable = CFDictionaryCreateMutable(v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            cf[0] = 0;
            FigVolumeControllerCopySharedController(cf);
            FigCFDictionarySetValue();
            FigCFDictionarySetValue();
            volumeController_postNotificationWithPayload(cf[0], @"routingContextMutedByUserDidChange", Mutable);
            if (cf[0])
            {
              CFRelease(cf[0]);
              cf[0] = 0;
            }

            if (Mutable)
            {
              CFRelease(Mutable);
            }

            if (v34)
            {
              CFRelease(v34);
            }

            ++v13;
            v12 = *type;
            if (!*type)
            {
              goto LABEL_36;
            }
          }

          if (*type)
          {
            CFRelease(*type);
          }
        }
      }
    }

LABEL_36:
    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  result = v31;
  if (v31)
  {
    CFRelease(v31);
    return 0;
  }

  return result;
}

uint64_t volumeController_GetMuteOfRoutingContext(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  theArray[16] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 4294949706;
  }

  if (!MX_FeatureFlags_IsMuteEnabled())
  {
    return 0;
  }

  v25 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v25);
  if (v25)
  {
    theArray[0] = 0;
    FigRoutingManagerContextUtilities_CopyPickedEndpoints(v25, theArray);
    *cf = 0;
    if (theArray[0])
    {
      if (CFArrayGetCount(theArray[0]) >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray[0], 0);
        if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, *MEMORY[0x1E69626B0]))
        {
          v26 = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (!v7)
          {
            goto LABEL_45;
          }

          v8 = *MEMORY[0x1E695E480];
          v7(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &v26);
          if (v26)
          {
            Count = CFArrayGetCount(v26);
            if (Count >= 1)
            {
              v10 = Count;
              v11 = 0;
              v12 = 0;
              v13 = *MEMORY[0x1E6962170];
              do
              {
                v14 = CFArrayGetValueAtIndex(v26, v11);
                if (v14)
                {
                  v15 = CFRetain(v14);
                  if (v15)
                  {
                    v16 = FigEndpointGetCMBaseObject();
                    v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                    if (v17)
                    {
                      v12 = v17(v16, v13, v8, cf);
                    }

                    else
                    {
                      v12 = 4294954514;
                    }
                  }

                  v18 = FigCFEqual();
                  if (v15)
                  {
                    v19 = v18 == 0;
                  }

                  else
                  {
                    v19 = 0;
                  }

                  if (v19)
                  {
                    CFRelease(v15);
                  }

                  else if (v18)
                  {
                    break;
                  }
                }

                ++v11;
              }

              while (v10 != v11);
LABEL_46:
              if (v26)
              {
                CFRelease(v26);
              }

              if (v12)
              {
                goto LABEL_29;
              }

              goto LABEL_28;
            }

LABEL_45:
            v12 = 0;
            goto LABEL_46;
          }
        }
      }
    }

LABEL_28:
    v12 = 0;
    *a3 = FigCFEqual();
LABEL_29:
    if (theArray[0])
    {
      CFRelease(theArray[0]);
      theArray[0] = 0;
    }

    if (*cf)
    {
      CFRelease(*cf);
    }

    goto LABEL_33;
  }

  v12 = 4294949706;
LABEL_33:
  if (dword_1EB75DEA0)
  {
    LODWORD(v26) = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v21 = v26;
    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
    }

    else
    {
      v22 = v21 & 0xFFFFFFFE;
    }

    if (v22)
    {
      v23 = "YES";
      *&cf[4] = "volumeController_GetMuteOfRoutingContext";
      *cf = 136315650;
      if (!a3)
      {
        v23 = "NO";
      }

      v28 = 2114;
      v29 = a2;
      v30 = 2082;
      v31 = v23;
      _os_log_send_and_compose_impl(v22, 0, theArray, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, 0, "-FigVolumeController- %s: routingContext = %{public}@, outMuteValue = %{public}s", cf, 32);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v12;
}

uint64_t volumeController_SetMuteOfSubEndpointWithID(void *a1, uint64_t a2, uint64_t a3)
{
  result = MX_FeatureFlags_IsMuteEnabled();
  if (result)
  {
    if (a3)
    {
      cf = 0;
      volumeController_copyEndpointWithID(a1, a2, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }

    else
    {
      return 4294949706;
    }
  }

  return result;
}

uint64_t volumeController_GetMuteOfSubEndpointWithID(void *a1, uint64_t a2, uint64_t a3)
{
  result = MX_FeatureFlags_IsMuteEnabled();
  if (result)
  {
    if (a3)
    {
      cf = 0;
      volumeController_copyEndpointWithID(a1, a2, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }

    else
    {
      return 4294949706;
    }
  }

  return result;
}

uint64_t volumeController_CanSetMuteOfRoutingContext(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v25[16] = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 4294949706;
  }

  if (!MX_FeatureFlags_IsMuteEnabled())
  {
    return 0;
  }

  v24 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextUUID(a2, &v24);
  if (!v24)
  {
    return 4294949706;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(v24, &theArray);
  cf = 0;
  if (theArray)
  {
    if (CFArrayGetCount(theArray) >= 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, *MEMORY[0x1E69626B0]))
      {
        v25[0] = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v7)
        {
          goto LABEL_28;
        }

        v8 = *MEMORY[0x1E695E480];
        v7(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], v25);
        if (v25[0])
        {
          Count = CFArrayGetCount(v25[0]);
          if (Count >= 1)
          {
            v10 = Count;
            v11 = 0;
            v12 = 0;
            v13 = *MEMORY[0x1E69621E0];
            do
            {
              v14 = CFArrayGetValueAtIndex(v25[0], v12);
              if (v14)
              {
                v15 = CFRetain(v14);
                if (v15)
                {
                  v16 = FigEndpointGetCMBaseObject();
                  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v17)
                  {
                    v11 = v17(v16, v13, v8, &cf);
                  }

                  else
                  {
                    v11 = 4294954514;
                  }
                }

                v18 = FigCFEqual();
                if (v15)
                {
                  v19 = v18 == 0;
                }

                else
                {
                  v19 = 0;
                }

                if (v19)
                {
                  CFRelease(v15);
                }

                else if (v18)
                {
                  break;
                }
              }

              ++v12;
            }

            while (v10 != v12);
LABEL_29:
            if (v25[0])
            {
              CFRelease(v25[0]);
            }

            if (v11)
            {
              goto LABEL_33;
            }

            goto LABEL_32;
          }

LABEL_28:
          v11 = 0;
          goto LABEL_29;
        }
      }
    }
  }

LABEL_32:
  v11 = 0;
  *a3 = FigCFEqual();
LABEL_33:
  if (dword_1EB75DEA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v24)
  {
    CFRelease(v24);
  }

  return v11;
}

uint64_t volumeController_CanSetMuteOfEndpointWithID(void *a1, uint64_t a2, _BYTE *a3)
{
  cf[22] = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsMuteEnabled())
  {
    return 0;
  }

  v16 = 0;
  cf[0] = 0;
  volumeController_copyEndpointWithID(a1, a2, cf);
  if (FigRoutingManagerIsEndpointOfType(cf[0], *MEMORY[0x1E69626A8]))
  {
    v15 = 0;
    if (!cf[0])
    {
      return 4294949706;
    }

    v6 = CFRetain(cf[0]);
    v7 = *MEMORY[0x1E695E480];
    if (!v6)
    {
      goto LABEL_7;
    }

    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v9)
    {
      v10 = 4294954514;
      goto LABEL_12;
    }

    v10 = v9(CMBaseObject, *MEMORY[0x1E69621E0], v7, &v15);
    if (!v10)
    {
LABEL_7:
      v10 = 0;
      *a3 = FigCFEqual();
    }

LABEL_12:
    v11 = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, *MEMORY[0x1E69621E8], v7, &v16);
    }

    if (dword_1EB75DEA0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    goto LABEL_20;
  }

  v10 = 0;
LABEL_20:
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v16)
  {
    CFRelease(v16);
  }

  return v10;
}

uint64_t volumeController_CanSetMuteOfSubEndpointWithID(void *a1, uint64_t a2, uint64_t a3)
{
  result = MX_FeatureFlags_IsMuteEnabled();
  if (result)
  {
    if (a3)
    {
      cf = 0;
      volumeController_copyEndpointWithID(a1, a2, &cf);
      if (cf)
      {
        CFRelease(cf);
      }

      return 0;
    }

    else
    {
      return 4294949706;
    }
  }

  return result;
}

uint64_t volumeController_SetVolumeOfEndpointWithRoomID(void *a1, uint64_t a2)
{
  if (MX_FeatureFlags_IsMuteEnabled())
  {
    v5 = 0;
    volumeController_GetMuteOfEndpointWithID(a1, a2, &v5);
    if (v5)
    {
      volumeController_SetMuteOfEndpointWithID(a1, a2, 0);
    }
  }

  return 0;
}

uint64_t volumeController_GetVolumeOfEndpointWithRoomID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    return 4294949706;
  }

  cf = 0;
  volumeController_copyEndpointWithID(a1, a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  return 0;
}

uint64_t volumeController_setMainVolume(const void *a1, float a2)
{
  v92 = *MEMORY[0x1E69E9840];
  valuePtr = a2;
  v3 = 4294949706;
  v4 = a2 > 1.0 || a1 == 0;
  if (v4 || a2 < 0.0)
  {
    return v3;
  }

  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, &theArray);
  if (!theArray)
  {
    return 0;
  }

  if (CFArrayGetCount(theArray) >= 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
    v7 = *MEMORY[0x1E69626B0];
    if (!FigRoutingManagerIsEndpointOfType(ValueAtIndex, *MEMORY[0x1E69626B0]) && !volumeController_isBluetoothSharingMainVolumeSupported(theArray))
    {
      v34 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
      CMBaseObject = FigEndpointGetCMBaseObject();
      v36 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v36)
      {
        v3 = v36(CMBaseObject, *MEMORY[0x1E69621C0], v34);
      }

      else
      {
        v3 = 4294954514;
      }

      if (v34)
      {
        CFRelease(v34);
      }

      goto LABEL_85;
    }

    CachedMainVolume = volumeController_getCachedMainVolume(a1);
    if (FVCUtilitiesIsVolumeDifferenceAboveThreshold(a2, CachedMainVolume))
    {
      volumeController_updateMainVolumeCache(a1, a2);
      v76 = 0;
      FigRoutingManagerContextUtilities_CopyPickedEndpoints(a1, &v76);
      if (v76)
      {
        if (CFArrayGetCount(v76) >= 1)
        {
          v9 = CFArrayGetValueAtIndex(v76, 0);
          if (FigRoutingManagerIsEndpointOfType(v9, v7))
          {
            v10 = volumeController_getCachedMainVolume(a1);
            v75 = 0;
            v67 = *MEMORY[0x1E695E480];
            v11 = FigEndpointGetCMBaseObject();
            v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v12)
            {
              v12(v11, *MEMORY[0x1E6962270], v67, &v75);
            }

            if (v75)
            {
              Count = CFArrayGetCount(v75);
              if (Count >= 1)
              {
                v14 = Count;
                v15 = 0;
                v65 = *MEMORY[0x1E69620F8];
                v63 = *MEMORY[0x1E69621E8];
                v16 = &qword_1EB75D000;
                do
                {
                  v17 = CFArrayGetValueAtIndex(v75, v15);
                  v18 = v17;
                  if (v17)
                  {
                    v19 = CFRetain(v17);
                  }

                  else
                  {
                    v19 = 0;
                  }

                  SubEndpointVolume = volumecontroller_getSubEndpointVolume(v19);
                  cf = 0;
                  v21 = FigEndpointGetCMBaseObject();
                  v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v22)
                  {
                    v22(v21, v65, v67, &cf);
                  }

                  v73 = 0;
                  v23 = FigEndpointGetCMBaseObject();
                  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                  if (v24)
                  {
                    v24(v23, v63, v67, &v73);
                  }

                  v26 = v10;
                  if (v14 != 1)
                  {
                    v25.n128_f32[0] = CachedMainVolume;
                    v26 = volumeController_computeScaledSubEndpointVolume(a1, cf, v25, v10, SubEndpointVolume);
                  }

                  volumeController_setVolumeForEndpoint(v18, v26);
                  if (dword_1EB75DEA0)
                  {
                    v72 = 0;
                    type = OS_LOG_TYPE_DEFAULT;
                    v27 = v16;
                    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    v29 = v72;
                    v30 = type;
                    if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
                    {
                      v31 = v29;
                    }

                    else
                    {
                      v31 = v29 & 0xFFFFFFFE;
                    }

                    if (v31)
                    {
                      v32 = v73;
                      EndpointManagerName = FigRoutingManagerGetEndpointManagerName(v19);
                      v77 = 136316674;
                      v78 = "volumeController_updateIndividualVolumes";
                      v79 = 2114;
                      v80 = v32;
                      v81 = 2114;
                      v82 = *&EndpointManagerName;
                      v83 = 2048;
                      v84 = SubEndpointVolume;
                      v85 = 2048;
                      v86 = v26;
                      v87 = 2048;
                      v88 = CachedMainVolume;
                      v89 = 2048;
                      v90 = v10;
                      LODWORD(v62) = 72;
                      _os_log_send_and_compose_impl(v31, 0, v91, 128, &dword_1B17A2000, os_log_and_send_and_compose_flags_and_os_log_type, v30, "-FigVolumeController- %s: SubEndpoint=%{public}@ SubEndpointType: %{public}@, OldSubEndpointVolume=%1.10f, NewSubEndpointVolume=%1.10f, oldAggregateMainVolume=%1.10f, currentAggregateMainVolume=%1.10f", &v77, v62);
                    }

                    v16 = v27;
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }

                  if (cf)
                  {
                    CFRelease(cf);
                    cf = 0;
                  }

                  if (v73)
                  {
                    CFRelease(v73);
                    v73 = 0;
                  }

                  if (v19)
                  {
                    CFRelease(v19);
                  }

                  ++v15;
                }

                while (v14 != v15);
              }

              if (v75)
              {
                CFRelease(v75);
              }
            }
          }

          else if (volumeController_isBluetoothSharingMainVolumeSupported(v76))
          {
            v37 = volumeController_getCachedMainVolume(a1);
            if (!v76)
            {
              goto LABEL_83;
            }

            v38 = v37;
            v39 = CFArrayGetCount(v76);
            if (v39 < 1)
            {
              v41 = 0;
              v43 = 0.0;
            }

            else
            {
              v40 = v39;
              v41 = 0;
              v42 = 0;
              v66 = *MEMORY[0x1E69620F8];
              v68 = *MEMORY[0x1E695E480];
              v64 = *MEMORY[0x1E69621E8];
              v43 = 0.0;
              v44 = &qword_1EB75D000;
              do
              {
                v45 = CFArrayGetValueAtIndex(v76, v42);
                v46 = v45;
                if (v45)
                {
                  v47 = CFRetain(v45);
                }

                else
                {
                  v47 = 0;
                }

                v75 = 0;
                v48 = FigEndpointGetCMBaseObject();
                v49 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v49)
                {
                  v49(v48, v66, v68, &v75);
                }

                LODWORD(v73) = 0;
                volumeController_getVolumeForEndpoint(v46, &v73);
                v50.n128_f32[0] = CachedMainVolume;
                v51 = volumeController_computeScaledSubEndpointVolume(a1, v75, v50, v38, *&v73);
                v52 = v51;
                if (v51 > v43)
                {
                  v41 = v42;
                  v43 = v51;
                }

                volumeController_setVolumeForEndpoint(v46, v51);
                cf = 0;
                v53 = FigEndpointGetCMBaseObject();
                v54 = *(*(CMBaseObjectGetVTable() + 8) + 48);
                if (v54)
                {
                  v54(v53, v64, v68, &cf);
                }

                if (dword_1EB75DEA0)
                {
                  v72 = 0;
                  type = OS_LOG_TYPE_DEFAULT;
                  v55 = v44;
                  v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                  v57 = v72;
                  v58 = type;
                  if (os_log_type_enabled(v56, type))
                  {
                    v59 = v57;
                  }

                  else
                  {
                    v59 = v57 & 0xFFFFFFFE;
                  }

                  if (v59)
                  {
                    v77 = 136316418;
                    v78 = "volumeController_updateIndividualVolumes";
                    v79 = 2114;
                    v80 = cf;
                    v81 = 2048;
                    v82 = *&v73;
                    v83 = 2048;
                    v84 = v52;
                    v85 = 2048;
                    v86 = CachedMainVolume;
                    v87 = 2048;
                    v88 = v38;
                    LODWORD(v62) = 62;
                    _os_log_send_and_compose_impl(v59, 0, v91, 128, &dword_1B17A2000, v56, v58, "-FigVolumeController- %s: SubEndpoint=%{public}@, OldEndpointVolume=%1.10f, NewEndpointVolume=%1.10f, oldAggregateMainVolume=%1.10f, currentAggregateMainVolume=%1.10f", &v77, v62);
                  }

                  v44 = v55;
                  fig_log_call_emit_and_clean_up_after_send_and_compose();
                }

                if (v75)
                {
                  CFRelease(v75);
                  v75 = 0;
                }

                if (cf)
                {
                  CFRelease(cf);
                  cf = 0;
                }

                if (v47)
                {
                  CFRelease(v47);
                }

                ++v42;
              }

              while (v40 != v42);
            }

            if (!v76)
            {
              goto LABEL_83;
            }

            v60 = CFArrayGetValueAtIndex(v76, v41);
            volumeController_setVolumeForEndpoint(v60, v43);
          }
        }

        if (v76)
        {
          CFRelease(v76);
        }
      }

LABEL_83:
      volumeController_postMainVolumeDidChangeNotification(a1);
    }
  }

  v3 = 0;
LABEL_85:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v3;
}

float volumecontroller_getSubEndpointVolume(uint64_t a1)
{
  valuePtr = -1.0;
  if (!a1)
  {
    return -1.0;
  }

  number = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, *MEMORY[0x1E6962338], *MEMORY[0x1E695E480], &number);
    if (number)
    {
      CFNumberGetValue(number, kCFNumberFloat32Type, &valuePtr);
      if (number)
      {
        CFRelease(number);
      }
    }
  }

  return valuePtr;
}

float volumeController_computeScaledSubEndpointVolume(uint64_t a1, uint64_t a2, __n128 a3, float a4, float a5)
{
  v6 = a3.n128_f32[0];
  MainVolumeScaleFactorForEndpointID = 1.0;
  if (a3.n128_f32[0] >= a5)
  {
    if (FVCUtilitiesIsFloatEquivalentToZero(a3.n128_f32[0]))
    {
      MainVolumeScaleFactorForEndpointID = 1.0;
    }

    else
    {
      MainVolumeScaleFactorForEndpointID = a5 / v6;
    }
  }

  if (FVCUtilitiesIsFloatEquivalentToZero(a4) && !FVCUtilitiesIsFloatEquivalentToZero(v6))
  {
    FigRoutingManagerContextUtilities_SetMainVolumeScaleFactorForEndpointID(a1, a2, MainVolumeScaleFactorForEndpointID);
  }

  else if (FVCUtilitiesIsFloatEquivalentToZero(v6) && !FVCUtilitiesIsFloatEquivalentToZero(a4))
  {
    MainVolumeScaleFactorForEndpointID = FigRoutingManagerContextUtilities_GetMainVolumeScaleFactorForEndpointID(a1, a2);
  }

  return MainVolumeScaleFactorForEndpointID * a4;
}

uint64_t volumeController_setVolumeForEndpoint(const void *a1, float a2)
{
  valuePtr = a2;
  v2 = 4294949706;
  v3 = a2 > 1.0 || a1 == 0;
  if (!v3 && a2 >= 0.0)
  {
    v5 = CFRetain(a1);
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
    CMBaseObject = FigEndpointGetCMBaseObject();
    v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v9)
    {
      v2 = v9(CMBaseObject, *MEMORY[0x1E6962338], v7);
    }

    else
    {
      v2 = 4294954514;
    }

    v17 = 0;
    FigRoutingManagerIsClusterLocalEndpoint(a1);
    v10 = *MEMORY[0x1E69620F8];
    v11 = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, v10, v6, &v17);
    }

    volumeController_postEndpointVolumeDidChangeNotification(v17);
    cf = 0;
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, *MEMORY[0x1E69621E8], v6, &cf);
      if (cf)
      {
        CFRelease(cf);
        cf = 0;
      }
    }

    if (v17)
    {
      CFRelease(v17);
      v17 = 0;
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v2;
}

uint64_t volumeController_isAirPlayMainVolumeSupported(uint64_t a1)
{
  theArray = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = *MEMORY[0x1E695E480];
  v2(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v5 = Count;
    v6 = 0;
    v7 = *MEMORY[0x1E695E4C0];
    v8 = *MEMORY[0x1E6962340];
    v9 = *MEMORY[0x1E695E4D0];
    while (1)
    {
      CFArrayGetValueAtIndex(theArray, v6);
      cf = v7;
      v10 = FigEndpointGetCMBaseObject();
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(v10, v8, v3, &cf);
      }

      if (cf == v9)
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v5 == ++v6)
      {
        goto LABEL_11;
      }
    }

    if (v9)
    {
      CFRelease(cf);
    }

    v12 = 1;
  }

  else
  {
LABEL_11:
    v12 = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return v12;
}

uint64_t volumeController_getAirPlayMainVolumeControlType(uint64_t a1)
{
  theArray = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = *MEMORY[0x1E695E480];
  v2(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
LABEL_18:
    SInt64 = 0;
    goto LABEL_19;
  }

  v5 = Count;
  SInt64 = 0;
  v7 = 0;
  v8 = *MEMORY[0x1E6962348];
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v7);
    cf = 0;
    v9 = FigEndpointGetCMBaseObject();
    v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v10)
    {
      v12 = cf;
LABEL_14:
      if (v12)
      {
        CFRelease(v12);
      }

      goto LABEL_16;
    }

    v11 = v10(v9, v8, v3, &cf);
    v12 = cf;
    if (v11)
    {
      v13 = 1;
    }

    else
    {
      v13 = cf == 0;
    }

    if (v13)
    {
      goto LABEL_14;
    }

    SInt64 = FigCFNumberGetSInt64();
    if (SInt64 == 3)
    {
      break;
    }

    if (cf)
    {
      CFRelease(cf);
    }

LABEL_16:
    if (v5 == ++v7)
    {
      goto LABEL_19;
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  SInt64 = 3;
LABEL_19:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return SInt64;
}

uint64_t volumeController_doesEndpointHaveSameID(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    cf = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69620F8], *MEMORY[0x1E695E480], &cf);
    }

    v2 = FigCFEqual();
    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v2;
}

uint64_t volumeController_setMuteForEndpoint(const void *a1, int a2)
{
  v18[22] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 4294949706;
  }

  v3 = MEMORY[0x1E695E4D0];
  if (!a2)
  {
    v3 = MEMORY[0x1E695E4C0];
  }

  v4 = *v3;
  v5 = CFRetain(a1);
  if (v5)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v7)
    {
      v8 = v7(CMBaseObject, *MEMORY[0x1E6962170], v4);
    }

    else
    {
      v8 = 4294954514;
    }
  }

  else
  {
    v8 = 0;
  }

  v18[0] = 0;
  FigRoutingManagerIsClusterLocalEndpoint(a1);
  v9 = *MEMORY[0x1E69620F8];
  v10 = *MEMORY[0x1E695E480];
  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, v9, v10, v18);
  }

  volumeController_postEndpointMuteByUserDidChangeNotification(v18[0], v4);
  cf = 0;
  v13 = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(v13, *MEMORY[0x1E69621E8], v10, &cf);
  }

  if (dword_1EB75DEA0)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (v18[0])
  {
    CFRelease(v18[0]);
  }

  return v8;
}

uint64_t FigRoutingManagerIsEndpointOfSubtype(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962278], *MEMORY[0x1E695E480], &cf);
  }

  v4 = FigCFEqual();
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

BOOL FigRoutingManagerIsClusterEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, *MEMORY[0x1E6962278], *MEMORY[0x1E695E480], &cf);
  }

  v3 = FigCFEqual() || FigCFEqual() || FigCFEqual() != 0;
  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

const __CFArray *FigRoutingManagerDoEndpointsContainLocalAirPlayEndpoint(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        if (FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(ValueAtIndex))
        {
          break;
        }

        if (v3 == ++v4)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

const __CFArray *FigRoutingManagerDoEndpointsContainOdeonEndpoint(const __CFArray *result)
{
  if (result)
  {
    v1 = result;
    Count = CFArrayGetCount(result);
    if (Count < 1)
    {
      return 0;
    }

    else
    {
      v3 = Count;
      v4 = 0;
      v5 = *MEMORY[0x1E6962278];
      v6 = *MEMORY[0x1E695E480];
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, v4);
        cf = 0;
        CMBaseObject = FigEndpointGetCMBaseObject();
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v9)
        {
          v9(CMBaseObject, v5, v6, &cf);
        }

        if (FigRoutingManagerIsEndpointLocal(ValueAtIndex) && FigCFEqual())
        {
          break;
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v3 == ++v4)
        {
          return 0;
        }
      }

      return 1;
    }
  }

  return result;
}

BOOL FigRoutingManagerIsClusterLocalEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v12 = *MEMORY[0x1E695E4C0];
  v1 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962158], v1, &v12);
  }

  cf = 0;
  v4 = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, *MEMORY[0x1E6962278], v1, &cf);
    v6 = cf;
  }

  else
  {
    v6 = 0;
  }

  if (v12 != *MEMORY[0x1E695E4D0])
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v8 = FigCFEqual();
  v6 = cf;
  if (v8 || (v9 = FigCFEqual(), v6 = cf, v9))
  {
    v7 = 1;
    if (!v6)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = FigCFEqual() != 0;
  v6 = cf;
  if (cf)
  {
LABEL_14:
    CFRelease(v6);
    cf = 0;
  }

LABEL_15:
  if (v12)
  {
    CFRelease(v12);
  }

  return v7;
}

BOOL FigRoutingManagerIsLocalHomeTheaterEndpoint(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = *MEMORY[0x1E695E4C0];
  v1 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962158], v1, &cf);
  }

  v9 = 0;
  v4 = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(v4, *MEMORY[0x1E6962278], v1, &v9);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  if (cf != *MEMORY[0x1E695E4D0])
  {
    v7 = 0;
    if (!v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = FigCFEqual() != 0;
  v6 = v9;
  if (v9)
  {
LABEL_9:
    CFRelease(v6);
    v9 = 0;
  }

LABEL_10:
  if (cf)
  {
    CFRelease(cf);
  }

  return v7;
}

BOOL FigRoutingManagerIsEndpointWHAGroupable(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E4C0];
  v6 = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962190], *MEMORY[0x1E695E480], &v6);
    v1 = v6;
  }

  v4 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

BOOL FigRoutingManagerIsEndpointLowLatencyAirPlay(uint64_t a1)
{
  if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D8]))
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, 0x1F289CEF0, *MEMORY[0x1E695E480], &cf);
    v3 = cf;
  }

  else
  {
    v3 = 0;
  }

  v4 = CMSMVAUtility_GetPortFromCFNumber(v3) == 1885433964;
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

BOOL FigRoutingManagerIsEndpointActivated(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E4C0];
  v6 = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962100], *MEMORY[0x1E695E480], &v6);
    v1 = v6;
  }

  v4 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

uint64_t FigRoutingManagerCopyRoutingContextUUIDForEndpoint(uint64_t a1)
{
  v9 = 0;
  if (FigRoutingManagerIsEndpointWHAGroupable(a1) && FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626D8]))
  {
    v2 = FigRoutingManagerCopyLocalAirPlayEndpoint();
    if (v2)
    {
      v3 = v2;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v5)
      {
        v5(CMBaseObject, *MEMORY[0x1E6962238], *MEMORY[0x1E695E480], &v9);
      }

      CFRelease(v3);
    }
  }

  else if (a1)
  {
    v6 = FigEndpointGetCMBaseObject();
    v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v7)
    {
      v7(v6, *MEMORY[0x1E6962238], *MEMORY[0x1E695E480], &v9);
    }
  }

  return v9;
}

BOOL FigRoutingManagerIsEndpointBluetoothShareable(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *MEMORY[0x1E695E4C0];
  v6 = *MEMORY[0x1E695E4C0];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v3)
  {
    v3(CMBaseObject, *MEMORY[0x1E6962110], *MEMORY[0x1E695E480], &v6);
    v1 = v6;
  }

  v4 = v1 == *MEMORY[0x1E695E4D0];
  if (v1)
  {
    CFRelease(v1);
  }

  return v4;
}

BOOL FigRoutingManagerAreAllEndpointsBluetoothShareable(const __CFArray *a1)
{
  cf[21] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 1;
  }

  Count = CFArrayGetCount(a1);
  if (Count < 1)
  {
    return 1;
  }

  v3 = Count;
  v4 = 0;
  v11 = *MEMORY[0x1E69621E8];
  v5 = *MEMORY[0x1E695E480];
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
    if (ValueAtIndex)
    {
      cf[0] = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v8(CMBaseObject, v11, v5, cf);
      }

      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    result = FigRoutingManagerIsEndpointBluetoothShareable(ValueAtIndex);
    if (!result)
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 1;
    }
  }

  return result;
}

uint64_t FigRoutingManagerGetEndpointManagerName(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v2 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v2)
  {
    v2(CMBaseObject, *MEMORY[0x1E69622F8], *MEMORY[0x1E695E480], &cf);
  }

  if (FigCFEqual())
  {
    v3 = MEMORY[0x1E69618E8];
LABEL_15:
    v4 = *v3;
    goto LABEL_16;
  }

  if (FigCFEqual())
  {
    v3 = MEMORY[0x1E69618D8];
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v3 = MEMORY[0x1E69618D0];
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v3 = MEMORY[0x1E69618E0];
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v3 = MEMORY[0x1E69618F8];
    goto LABEL_15;
  }

  if (FigCFEqual())
  {
    v4 = *MEMORY[0x1E69618F0];
  }

  else
  {
    v4 = 0;
  }

LABEL_16:
  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

CFMutableDictionaryRef FigRoutingManagerCreateEndpointDelegateContext(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  return Mutable;
}

uint64_t FigRoutingManagerRemoveCachedDelegateContext(uint64_t a1, uint64_t a2)
{
  SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
  FigSimpleMutexLock();
  v4 = SharedManager[8];
  if (v4)
  {
    CFDictionaryGetValue(*(v4 + 2), @"EndpointDelegateContextKey_RoutingContextUUID");
    v5 = 0;
    while (1)
    {
      v6 = v4;
      if (*(v4 + 1) == a1)
      {
        if (FigCFEqual())
        {
          break;
        }
      }

      v4 = *v4;
      v5 = v6;
      if (!*v6)
      {
        goto LABEL_17;
      }
    }

    v7 = *v4;
    if (v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = (SharedManager + 8);
    }

    *v8 = v7;
    if (!v7)
    {
      SharedManager[9] = v5;
    }

    v9 = *(v4 + 1);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(v4 + 2);
    if (v10)
    {
      CFRelease(v10);
    }

    free(v4);
  }

LABEL_17:

  return FigSimpleMutexUnlock();
}

uint64_t FigRoutingManagerIsEndpointPresentInAggregate(const void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    theArray = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v5)
    {
      goto LABEL_9;
    }

    v5(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    if (!theArray)
    {
      return 0;
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v7 = Count;
      v8 = 0;
      while (CFArrayGetValueAtIndex(theArray, v8) != a1)
      {
        if (v7 == ++v8)
        {
          goto LABEL_9;
        }
      }

      v2 = 1;
    }

    else
    {
LABEL_9:
      v2 = 0;
    }

    if (theArray)
    {
      CFRelease(theArray);
    }
  }

  return v2;
}

CFMutableDictionaryRef FigRoutingManagerCreateEndpointActivateOptions(uint64_t a1, uint64_t a2, const __CFDictionary *a3, uint64_t a4)
{
  Mutable = 0;
  cf[16] = *MEMORY[0x1E69E9840];
  if (!a1 || !a2)
  {
    return Mutable;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (FigCFDictionaryGetBooleanIfPresent())
  {
    FigCFDictionarySetValue();
  }

  if (FigCFDictionaryGetBooleanIfPresent())
  {
    FigCFDictionarySetValue();
  }

  if (FigCFDictionaryGetValue())
  {
    FigCFDictionarySetValue();
  }

  if (FigCFDictionaryGetBooleanIfPresent())
  {
    FigCFDictionarySetValue();
  }

  FigCFDictionaryGetBooleanIfPresent();
  IsCrossfadePlaybackSupported = FigRoutingManagerIsCrossfadePlaybackSupported(a3);
  FigCFDictionarySetValue();
  if (IsCrossfadePlaybackSupported)
  {
    CMSMUtility_GetFadeInDurationForPlaybackHandoff();
    Float32 = FigCFNumberCreateFloat32();
    FigCFDictionarySetValue();
    if (Float32)
    {
      CFRelease(Float32);
    }
  }

  v10 = FigRoutingManagerContextUtilities_CopyHijackID(a2);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  ContextType = FigRoutingManagerContextUtilities_GetContextType(a2);
  if (ContextType <= 3)
  {
    if (ContextType == 1)
    {
      if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]) && !FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B0]))
      {
        if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B8]))
        {
          FigCFDictionarySetValue();
          cf[0] = 0;
          FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(a2, 0, cf);
          if (cf[0])
          {
            CFRelease(cf[0]);
          }
        }

        goto LABEL_37;
      }

      goto LABEL_25;
    }

    if (ContextType != 2)
    {
      if (ContextType == 3 && (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]) || FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B0])))
      {
        goto LABEL_25;
      }

      goto LABEL_37;
    }

    if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
    {
      goto LABEL_37;
    }

    FigCFDictionarySetValue();
LABEL_25:
    FigCFDictionarySetValue();
    goto LABEL_37;
  }

  if ((ContextType - 4) < 2)
  {
    if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]) || FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B0]))
    {
      goto LABEL_25;
    }

    goto LABEL_37;
  }

  if (ContextType == 6)
  {
    if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
    {
      goto LABEL_37;
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (!a3)
    {
      goto LABEL_37;
    }

    CFDictionaryGetValue(a3, @"clientPID");
    goto LABEL_25;
  }

  if (ContextType == 7 && FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
  {
    goto LABEL_25;
  }

LABEL_37:
  if (v10)
  {
    CFRelease(v10);
  }

  return Mutable;
}

uint64_t FigRoutingManagerCreateEndpointActivateCompletionContext(const void *a1, const void *a2, const void *a3, const void *a4, void *a5)
{
  if (!a5)
  {
    return 4294954296;
  }

  v10 = malloc_type_calloc(1uLL, 0x28uLL, 0x600407DD51EA1uLL);
  if (!v10)
  {
    return 4294954295;
  }

  v11 = v10;
  if (a4)
  {
    v12 = CFRetain(a4);
  }

  else
  {
    v12 = 0;
  }

  v11[3] = v12;
  if (a1)
  {
    v14 = CFRetain(a1);
  }

  else
  {
    v14 = 0;
  }

  *v11 = v14;
  if (a2)
  {
    v15 = CFRetain(a2);
  }

  else
  {
    v15 = 0;
  }

  v11[1] = v15;
  if (a3)
  {
    v16 = CFRetain(a3);
  }

  else
  {
    v16 = 0;
  }

  v11[2] = v16;
  v17 = objc_alloc_init(MEMORY[0x1E695DF00]);
  result = 0;
  v11[4] = v17;
  *a5 = v11;
  return result;
}

void FigRoutingManagerDestroyEndpointActivateCompletionContext(CFTypeRef *a1)
{
  if (a1)
  {
    v2 = a1[3];
    if (v2)
    {
      CFRelease(v2);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[4];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t FigRoutingManagerEndpointActivateWithCompletionCallback(const void *a1, uint64_t a2, const __CFDictionary *a3, void (*a4)(void, uint64_t, void, void, uint64_t *), uint64_t *a5)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v20 = 0;
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v20);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C0]))
    {
      FigRoutingManagerSetupEndpointCentralForCarPlay(a1);
    }

    else if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]) || FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626C8]))
    {
      if (a5)
      {
        v14 = *a5;
        v15 = a5[1];
      }

      else
      {
        v14 = 0;
        v15 = 0;
      }

      cf[0] = 0;
      v16 = FigEndpointGetCMBaseObject();
      v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v17)
      {
        (v17)(v16, *MEMORY[0x1E69620B8], *MEMORY[0x1E695E480], cf);
        v17 = cf[0];
      }

      FigRoutingManagerSetMirroringModeOnBKSDisplayServices(a3, v14, v15, v17 == *MEMORY[0x1E695E4D0]);
      if (cf[0])
      {
        CFRelease(cf[0]);
      }
    }

    v18 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v18)
    {
      v13 = v18(a1, a2, a3, a4, a5);
    }

    else
    {
      v13 = 4294954514;
    }
  }

  else
  {
    if (a4)
    {
      a4(0, a2, 0, 0, a5);
    }

    v13 = 0;
  }

  if (v20)
  {
    CFRelease(v20);
  }

  return v13;
}

__CFDictionary *FigRoutingManagerCreateEndpointDeactivateOptions(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Mutable = 0;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      CFDictionarySetValue(Mutable, *MEMORY[0x1E69617E0], *MEMORY[0x1E695E4C0]);
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    IsCrossfadePlaybackSupported = FigRoutingManagerIsCrossfadePlaybackSupported(a3);
    FigCFDictionarySetValue();
    if (IsCrossfadePlaybackSupported)
    {
      CMSMUtility_GetFadeOutDurationForPlaybackHandoff();
      Float32 = FigCFNumberCreateFloat32();
      FigCFDictionarySetValue();
      if (Float32)
      {
        CFRelease(Float32);
      }
    }
  }

  return Mutable;
}

uint64_t FigRoutingManagerCreateEndpointDeactivateCompletionContext(const void *a1, void *a2)
{
  if (!a2)
  {
    return 4294954296;
  }

  v4 = malloc_type_calloc(1uLL, 0x18uLL, 0x60040CF05A765uLL);
  if (!v4)
  {
    return 4294954295;
  }

  v5 = v4;
  if (a1)
  {
    v6 = CFRetain(a1);
  }

  else
  {
    v6 = 0;
  }

  *v5 = v6;
  v8 = objc_alloc_init(MEMORY[0x1E695DF00]);
  result = 0;
  v5[2] = v8;
  *a2 = v5;
  return result;
}

void FigRoutingManagerDestroyEndpointDeactivateCompletionContext(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    free(a1);
  }
}

uint64_t FigRoutingManagerEndpointDeactivateWithCompletionCallback(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void, uint64_t, void, void, uint64_t), uint64_t a5)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  if (a1)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v11)
    {
      v11(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
    }
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
    {
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v13)
      {
        v13(a1, 0);
      }
    }

    v14 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v14)
    {
      v15 = v14(a1, a3, a4, a5);
    }

    else
    {
      v15 = 4294954514;
    }
  }

  else
  {
    if (a4)
    {
      a4(0, a2, 0, 0, a5);
    }

    v15 = 0;
  }

  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v15;
}

CFMutableDictionaryRef FigRoutingManagerCreateSubEndpointAddOptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = 0;
  if (a1 && a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (FigCFDictionaryGetBooleanIfPresent())
    {
      FigCFDictionarySetValue();
    }

    if (FigCFDictionaryGetValue())
    {
      FigCFDictionarySetValue();
    }

    FigCFDictionarySetValue();
    v5 = FigRoutingManagerContextUtilities_CopyHijackID(a2);
    FigCFDictionarySetValue();
    if (v5)
    {
      CFRelease(v5);
    }
  }

  return Mutable;
}

uint64_t FigRoutingManagerCreateAggregateAddEndpointCompletionContext(const void *a1, const void *a2, const void *a3, void *a4)
{
  if (!a4)
  {
    return 4294954296;
  }

  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x60040902580DDuLL);
  if (!v8)
  {
    return 4294954295;
  }

  v9 = v8;
  if (a1)
  {
    v10 = CFRetain(a1);
  }

  else
  {
    v10 = 0;
  }

  *v9 = v10;
  if (a2)
  {
    v12 = CFRetain(a2);
  }

  else
  {
    v12 = 0;
  }

  v9[1] = v12;
  if (a3)
  {
    v13 = CFRetain(a3);
  }

  else
  {
    v13 = 0;
  }

  v9[2] = v13;
  v14 = objc_alloc_init(MEMORY[0x1E695DF00]);
  result = 0;
  v9[3] = v14;
  *a4 = v9;
  return result;
}

void FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    v3 = a1[1];
    if (v3)
    {
      CFRelease(v3);
    }

    v4 = a1[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a1[3];
    if (v5)
    {
      CFRelease(v5);
    }

    free(a1);
  }
}

uint64_t FigRoutingManagerAggregateAddLocalAirPlayEndpoint(const char *a1, void *a2)
{
  v23[20] = *MEMORY[0x1E69E9840];
  v23[0] = a2;
  if (MX_FeatureFlags_IsAirPlayDaemonEnabled(a1, a2) || a2)
  {
    v5 = FigRoutingManagerCopyLocalAirPlayEndpoint();
    if (!v5)
    {
      if (dword_1EB75DF20)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      return 0;
    }

    v7 = v5;
    IsAirPlayDaemonEnabled = MX_FeatureFlags_IsAirPlayDaemonEnabled(v5, v6);
    if (IsAirPlayDaemonEnabled && !a2)
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v22) = 0;
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerCreateAndActivateAggregateEndpointForContext(a1);
      FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, v23);
      IsAirPlayDaemonEnabled = v23[0];
    }

    if (MX_FeatureFlags_IsAirPlayDaemonEnabled(IsAirPlayDaemonEnabled, v9) && !FigRoutingManagerIsEndpointActivated(v23[0]))
    {
      if (dword_1EB75DF20)
      {
        LODWORD(v22) = 0;
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      FigRoutingManagerActivateEndpoint(v23[0], a1, 0, 0);
    }

    v13 = v23[0];
    if (!v23[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
      v13 = 0;
    }

    if (!FigRoutingManagerIsEndpointPresentInAggregate(v7, v13))
    {
      if (FigRoutingManagerAggregateRemoveLocalAirPlayEndpoint())
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (FigRoutingManagerIsClusterLocalEndpoint(v7) && FigRoutingContextUtilities_IsFollowingAnotherContext(a1))
      {
        if (dword_1EB75DF20)
        {
          v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingContextUtilities_UnfollowUUIDFromLeader(a1, @"configUpdateReasonEndedSuccess");
      }

      v22 = 0;
      FigRoutingManagerCreateAggregateAddEndpointCompletionContext(a1, 0, 0, &v22);
      v16 = v23[0];
      if (!v23[0] || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
      {
        v16 = 0;
      }

      v17 = v22;
      v18 = *(*(CMBaseObjectGetVTable() + 32) + 8);
      if (!v18 || (v19 = v18(v16, v7, 0, FigRoutingManagerAggregateAddEndpointCompletionCallback, v17), v19 == -12782))
      {
        FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(v22);
        v4 = 4294954514;
        goto LABEL_35;
      }

      v4 = v19;
      if (v19 || !dword_1EB75DF20)
      {
        goto LABEL_35;
      }

      v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v4 = 0;
LABEL_35:
    CFRelease(v7);
    return v4;
  }

  return 0;
}

uint64_t FigRoutingManagerAggregateRemoveLocalAirPlayEndpoint()
{
  v12[20] = *MEMORY[0x1E69E9840];
  v12[0] = 0;
  FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(v12);
  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(v12[0], &cf);
  theArray = 0;
  if (cf)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v1 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v1)
    {
      v1(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    }
  }

  v2 = 0;
  do
  {
    Count = theArray;
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
    }

    if (v2 >= Count)
    {
      v7 = 0;
      goto LABEL_16;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v2++);
  }

  while (!FigRoutingManagerIsEndpointLocal(ValueAtIndex));
  v5 = cf;
  if (!cf || (FigEndpointAggregateGetClassID(), !CMBaseObjectIsMemberOfClass()))
  {
    v5 = 0;
  }

  v6 = FigRoutingManagerRemoveEndpointFromAggregate(v5, ValueAtIndex, v12[0], 0, 0, FigRoutingManagerAggregateRemoveEndpointCompletionCallback);
  v7 = 1;
  if (!v6 && dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    v7 = 1;
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_16:
  if (theArray)
  {
    CFRelease(theArray);
    theArray = 0;
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v12[0])
  {
    CFRelease(v12[0]);
  }

  return v7;
}

void FigRoutingManagerAggregateAddEndpointCompletionCallback(const void *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    if (a1)
    {
      CFRetain(a1);
    }

    if (*a6)
    {
      v12 = CFRetain(*a6);
    }

    else
    {
      v12 = 0;
    }

    v14 = *(a6 + 8);
    if (v14)
    {
      v15 = CFRetain(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a6 + 16);
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = [*(a6 + 24) timeIntervalSinceNow];
    v20 = fabs(v19) * 1000.0;
    SharedManager = FigRoutingManagerGetSharedManager(v18, v21);
    v23 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v24 = *(SharedManager + 1);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke;
    v25[3] = &unk_1E7AEAAC8;
    v25[4] = v23;
    v25[5] = cf;
    v26 = a5;
    v25[6] = a4;
    v25[7] = a3;
    v25[8] = v12;
    v25[9] = v15;
    v27 = v20;
    v25[10] = a1;
    v25[11] = v17;
    MXDispatchAsync("FigRoutingManagerAggregateAddEndpointCompletionCallback", "FigRoutingManager_EndpointHelpers.m", 1853, 0, 0, v24, v25);
    FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(a6);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t FigRoutingManagerRemoveEndpointFromAggregate(uint64_t a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6)
{
  v30[19] = *MEMORY[0x1E69E9840];
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  v30[0] = 0;
  FigRoutingManagerCreateAggregateAddEndpointCompletionContext(a3, a4, a5, v30);
  FigRoutingManagerCrossfadePlayback(a2, a4, 1, 0);
  if (FigEndpoint)
  {
    v13 = *MEMORY[0x1E695E4C0];
    v29 = *MEMORY[0x1E695E4C0];
    v14 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v16 || (v16(CMBaseObject, *MEMORY[0x1E6962180], v14, &v29), v17 = v29, v29 == v13))
    {
      if (FigRoutingManagerAggregateShouldEndpointRemovalInterruptSystemMusicSessions(a1, a2, v30[0]))
      {
        cf = 0;
        FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(&cf);
        Mutable = CFDictionaryCreateMutable(v14, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(Mutable, @"currentRouteChanged_ShouldPause", *MEMORY[0x1E695E4D0]);
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        FigRoutingManagerContextUtilities_PostNotificationToClientsOfContextWithUUIDAndItsFollowers(cf, @"currentRouteChanged", Mutable);
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }

      FigVolumeControllerRemoveAirPlayVolumeNotificationListeners(a2);
      if (MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled(v20, v21))
      {
        FigRoutingManagerUtilities_UnRegisterAirPlayStreamCapabilitiesDidChangeListener(a1, a2);
      }

      v17 = v29;
    }

    if (v17)
    {
      CFRelease(v17);
    }
  }

  v22 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (v22)
  {
    v22(a2, 0);
  }

  EndpointDeactivateOptions = FigRoutingManagerCreateEndpointDeactivateOptions(a2, a3, a4, a5);
  v24 = v30[0];
  v25 = *(*(CMBaseObjectGetVTable() + 32) + 16);
  if (!v25 || (v26 = v25(a1, a2, 0, a6, v24), v26 == -12782))
  {
    FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(v30[0]);
    v26 = 4294954514;
  }

  if (EndpointDeactivateOptions)
  {
    CFRelease(EndpointDeactivateOptions);
  }

  return v26;
}

void FigRoutingManagerAggregateRemoveEndpointCompletionCallback(const void *a1, CFTypeRef cf, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v28 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    if (a1)
    {
      CFRetain(a1);
    }

    if (*a6)
    {
      v12 = CFRetain(*a6);
    }

    else
    {
      v12 = 0;
    }

    v14 = *(a6 + 8);
    if (v14)
    {
      v15 = CFRetain(v14);
    }

    else
    {
      v15 = 0;
    }

    v16 = *(a6 + 16);
    if (v16)
    {
      v17 = CFRetain(v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = [*(a6 + 24) timeIntervalSinceNow];
    v20 = fabs(v19) * 1000.0;
    SharedManager = FigRoutingManagerGetSharedManager(v18, v21);
    v23 = objc_alloc_init(MEMORY[0x1E695DF00]);
    v24 = *(SharedManager + 1);
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __FigRoutingManagerAggregateRemoveEndpointCompletionCallback_block_invoke;
    v25[3] = &unk_1E7AEA460;
    v25[4] = v23;
    v25[5] = cf;
    v26 = a5;
    v25[6] = a4;
    v25[7] = a3;
    v25[8] = v12;
    v25[9] = v15;
    v27 = v20;
    v25[10] = a1;
    v25[11] = v17;
    v25[12] = a6;
    MXDispatchAsync("FigRoutingManagerAggregateRemoveEndpointCompletionCallback", "FigRoutingManager_EndpointHelpers.m", 2406, 0, 0, v24, v25);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(a6);
  }
}

uint64_t FigRoutingManagerAddEndpointToAggregate(uint64_t a1, uint64_t a2, const void *a3, const void *a4, const void *a5, uint64_t a6)
{
  FigEndpoint = FigEndpointAggregateGetFigEndpoint();
  if (!FigRoutingManagerIsEndpointActivated(FigEndpoint))
  {
    v13 = FigEndpointAggregateGetFigEndpoint();
    FigRoutingManager_iOSActivateEndpoint(v13, a3, 0, 0);
  }

  Value = FigCFDictionaryGetValue();
  FigRoutingManager_SetAuthorizationOnEndpoint(a2, Value);
  v21 = 0;
  FigRoutingManagerCreateAggregateAddEndpointCompletionContext(a3, a4, a5, &v21);
  EndpointActivateOptions = FigRoutingManagerCreateEndpointActivateOptions(a2, a3, a4, a5);
  FigRoutingManagerCrossfadePlayback(a2, a4, 1, 1);
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  v17 = v21;
  v18 = *(*(CMBaseObjectGetVTable() + 32) + 8);
  if (!v18 || (v19 = v18(a1, a2, MutableCopy, a6, v17), v19 == -12782))
  {
    FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(v21);
    v19 = 4294954514;
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (EndpointActivateOptions)
  {
    CFRelease(EndpointActivateOptions);
  }

  return v19;
}

uint64_t FigRoutingManager_SetAuthorizationOnEndpoint(uint64_t a1, uint64_t a2)
{
  cf = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v4)
  {
LABEL_11:
    v6 = 4294954514;
    goto LABEL_12;
  }

  v5 = v4(CMBaseObject, *MEMORY[0x1E6961FD0], *MEMORY[0x1E695E480], &cf);
  v6 = v5;
  if (a2 && !v5)
  {
    if (FigCFEqual())
    {
      v7 = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v9 = MEMORY[0x1E6962218];
LABEL_10:
        v6 = v8(v7, *v9, a2);
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if (FigCFEqual())
    {
      v7 = FigEndpointGetCMBaseObject();
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (v8)
      {
        v9 = MEMORY[0x1E6962210];
        goto LABEL_10;
      }

      goto LABEL_11;
    }

    v6 = 0;
  }

LABEL_12:
  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

uint64_t FigRoutingManagerRetryAddingEndpointToAggregate(const void *a1, const void *a2, const void *a3, const void *a4, const void *a5, uint64_t a6)
{
  cf[20] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v14)
  {
    v14(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], cf);
  }

  if (a1)
  {
    CFRetain(a1);
  }

  if (a2)
  {
    CFRetain(a2);
  }

  v15 = cf[0];
  if (cf[0])
  {
    v15 = CFRetain(cf[0]);
  }

  if (a3)
  {
    v15 = CFRetain(a3);
  }

  if (a4)
  {
    v15 = CFRetain(a4);
  }

  if (a5)
  {
    v15 = CFRetain(a5);
  }

  SharedManager = FigRoutingManagerGetSharedManager(v15, v13);
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  if (dword_1EB75DF20)
  {
    v24 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v18 = dispatch_time(0, 1000000000);
  v19 = *(SharedManager + 1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __FigRoutingManagerRetryAddingEndpointToAggregate_block_invoke;
  block[3] = &unk_1E7AEAAF0;
  block[4] = &v25;
  block[5] = cf[0];
  block[6] = a1;
  block[7] = a2;
  block[8] = a3;
  block[9] = a4;
  block[10] = a5;
  block[11] = a6;
  dispatch_after(v18, v19, block);
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  v20 = *(v26 + 6);
  _Block_object_dispose(&v25, 8);
  return v20;
}

void sub_1B18A3D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __FigRoutingManagerRetryAddingEndpointToAggregate_block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = FigRoutingManagerAddEndpointToAggregate(*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88));
  v4 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 24) = v3;
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 56);
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    CFRelease(v7);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 80);
  if (v9)
  {
    CFRelease(v9);
  }
}

void __FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke(uint64_t a1)
{
  v33[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v30 = 0;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v2 = (a1 + 40);
  v3 = *MEMORY[0x1E695E480];
  CMBaseObject = FigEndpointGetCMBaseObject();
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v5)
  {
    v5(CMBaseObject, *MEMORY[0x1E69621E8], v3, &v31);
  }

  v6 = FigEndpointGetCMBaseObject();
  v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v7)
  {
    v7(v6, *MEMORY[0x1E69620F8], v3, &v30);
  }

  v8 = FigEndpointGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v9(v8, *MEMORY[0x1E6961FD0], v3, &v29);
  }

  v10 = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(v10, *MEMORY[0x1E69621B0], v3, &v28);
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *(a1 + 96);
  if (v13)
  {
    if (v13 == -15580)
    {
      if (__FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke_cold_1((a1 + 40), a1, (a1 + 96), v33))
      {
        goto LABEL_49;
      }

      v13 = v33[0];
    }

    if (v13 != -16727)
    {
      if (!FigRoutingManagerIsEndpointNonRemoteControlLocalAirPlay(*v2) || (__FigRoutingManagerAggregateAddEndpointCompletionCallback_block_invoke_cold_2((a1 + 40), a1) & 1) != 0)
      {
        FigRoutingManagerCrossfadePlayback(*(a1 + 40), *(a1 + 72), 0, 0);
        FigRoutingManagerHandleAddEndpointCompletionCallbackError(*(a1 + 80), *(a1 + 40), *(a1 + 48), *(a1 + 96), *(a1 + 64), *(a1 + 72), *(a1 + 88));
        if (FigEndpointAuthRequestHandler_HasEndpoint(*(a1 + 40)))
        {
          FigEndpointUIAgentHelper_CleanupPrompt(v31, v30, v28, 0);
        }

        v33[0] = 0;
        FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 64), *(a1 + 80), v33);
        if (!v33[0] || !CFArrayGetCount(v33[0]))
        {
          FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 64), 0);
        }

        FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty(*(a1 + 80), *(a1 + 48), 0);
        if (v33[0])
        {
          CFRelease(v33[0]);
        }
      }

      goto LABEL_49;
    }
  }

  else
  {
    if (CMSMVAUtility_IsPortAvailableForEndpoint(*(a1 + 80), 0))
    {
      FigRoutingManagerCrossfadePlayback(*(a1 + 40), *(a1 + 72), 0, 0);
    }

    else
    {
      IsCrossfadePlaybackSupported = FigRoutingManagerIsCrossfadePlaybackSupported(*(a1 + 72));
      FigRoutingManagerUpdateFadeInUponMusicVADCreation(IsCrossfadePlaybackSupported, v15);
    }

    if ((*(a1 + 56) & 0x10) == 0)
    {
      FigVolumeControllerAddAirPlayVolumeNotificationListeners(*v2);
      v33[0] = 0;
      FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(v33);
      *cf = 0;
      v16 = FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpointAggregate(v33[0], cf);
      if (MX_FeatureFlags_IsBufferedBadgingAndCapabilitiesEnabled(v16, v17))
      {
        FigRoutingManagerUtilities_RegisterAirPlayStreamCapabilitiesDidChangeListener(*cf, *v2);
      }

      if (*cf)
      {
        CFRelease(*cf);
        *cf = 0;
      }

      if (v33[0])
      {
        CFRelease(v33[0]);
      }
    }

    ContextType = FigRoutingManagerContextUtilities_GetContextType(*(a1 + 64));
    if (ContextType == 3)
    {
      if (!*(a1 + 72))
      {
        CMSMVAUtility_DisableBluetoothSharingSession();
      }

      if (FigRoutingManagerUtilities_IsCurrentRouteHandoff(ContextType, v19))
      {
        CMSMAP_MakeAirPlayHandOffPortRoutable(0, *(a1 + 64));
      }
    }
  }

  if (FigRoutingManagerContextUtilities_GetContextType(*(a1 + 64)) == 3 || FigRoutingManagerContextUtilities_GetContextType(*(a1 + 64)) == 4 || FigRoutingManagerContextUtilities_GetContextType(*(a1 + 64)) == 9)
  {
    FigRoutingManagerContextUtilities_SetPickedEndpointAsAnArray(*(a1 + 64), *(a1 + 80), @"configUpdateReasonGroupDevicesChanged", *(a1 + 72));
  }

  *cf = 0;
  FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo(*(a1 + 64), *(a1 + 80), *(a1 + 40), @"configUpdateReasonEndedSuccess", *(a1 + 72), *(a1 + 88));
  FigRoutingManagerContextUtilities_GetPickingState(*(a1 + 64), cf);
  if (*cf != 8)
  {
    v33[0] = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 64), *(a1 + 80), v33);
    if (!v33[0] || !CFArrayGetCount(v33[0]))
    {
      FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 64), 0);
    }

    if (v33[0])
    {
      CFRelease(v33[0]);
    }
  }

  if (FigEndpointAuthRequestHandler_HasEndpoint(*v2))
  {
    v21 = v30;
    v20 = v31;
    v22 = v28;
    v23 = FigCFEqual();
    FigEndpointUIAgentHelper_CleanupPrompt(v20, v21, v22, v23);
  }

LABEL_49:
  v24 = *(a1 + 88);
  if (v24)
  {
    CFRelease(v24);
  }

  v25 = *(a1 + 72);
  if (v25)
  {
    CFRelease(v25);
  }

  v26 = *(a1 + 64);
  if (v26)
  {
    CFRelease(v26);
  }

  if (*v2)
  {
    CFRelease(*v2);
  }

  v27 = *(a1 + 80);
  if (v27)
  {
    CFRelease(v27);
  }

  if (v29)
  {
    CFRelease(v29);
    v29 = 0;
  }

  if (v28)
  {
    CFRelease(v28);
    v28 = 0;
  }

  if (v30)
  {
    CFRelease(v30);
    v30 = 0;
  }

  if (v31)
  {
    CFRelease(v31);
    v31 = 0;
  }
}

void FigRoutingManagerHandleAddEndpointCompletionCallbackError(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a4 <= -17601)
  {
    if (a4 != -17604)
    {
      if (a4 == -17601)
      {
        v12 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedFailed;
LABEL_9:
        v13 = *v12;

        FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo(a5, a1, a2, v13, a6, a7);
        return;
      }

      goto LABEL_12;
    }

LABEL_8:
    v12 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedUserCancelled;
    goto LABEL_9;
  }

  if (a4 == -16728)
  {
    goto LABEL_8;
  }

  if (a4 == -17600)
  {
    v12 = &kFigRoutingContextNotificationPayloadValue_ConfigUpdateReasonEndedUnauthorizedNoPrompt;
    goto LABEL_9;
  }

LABEL_12:
  FigRoutingManagerContextUtilities_ResetCurrentlyActivatingSubEndpointsInfo(a5, a1, a2, @"configUpdateReasonEndedFailed", a6, a7);
  if (FigRoutingManagerContextUtilities_GetContextType(a5) != 9)
  {

    FigRoutingManager_HandleEndpointFailed(a2, a4, a3, 0, a6);
  }
}

void FigRoutingManager_HandleEndpointFailed(const void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v19[16] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  v7 = a2;
  if (FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626A8]))
  {
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v19[0] = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(CMBaseObject, *MEMORY[0x1E69620F8], v9, v19);
    }

    *cf = 0;
    v13 = FigEndpointGetCMBaseObject();
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v14)
    {
      v14(v13, *MEMORY[0x1E69621E8], v9, cf);
    }

    v15 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(a1, 0);
    FigCFDictionarySetValue();
    if (v15)
    {
      CFRelease(v15);
    }

    FigCFDictionarySetValue();
    FigCFDictionarySetValue();
    if (v7 <= -17603)
    {
      if (v7 == -71891 || v7 == -17609 || v7 == -17608)
      {
        goto LABEL_24;
      }
    }

    else if (v7 > -15583)
    {
      if (v7 == -15582 || v7 == -15581)
      {
        goto LABEL_24;
      }
    }

    else if (v7 == -17602 || v7 == -16607)
    {
LABEL_24:
      FigCFDictionarySetValue();
LABEL_25:
      FigCFDictionaryGetValue();
      FigCFDictionarySetValue();
      FigEndpointUIAgentHelper_ShowError(Mutable);
      if (*cf)
      {
        CFRelease(*cf);
        *cf = 0;
      }

      if (v19[0])
      {
        CFRelease(v19[0]);
        v19[0] = 0;
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      goto LABEL_31;
    }

    FigCFDictionarySetValue();
    SInt32 = FigCFNumberCreateSInt32();
    FigCFDictionarySetValue();
    if (SInt32)
    {
      CFRelease(SInt32);
    }

    goto LABEL_25;
  }

LABEL_31:
  if (a4)
  {
    FigRoutingManager_iOSDeactivateEndpoint(a1, a3, 0);
  }

  if (dword_1EB75DF20)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void FigRoutingMangerDeactivateAggregateEndpointIfNecessary(uint64_t a1, uint64_t a2)
{
  v10[16] = *MEMORY[0x1E69E9840];
  IsAirPlayDaemonEnabled = MX_FeatureFlags_IsAirPlayDaemonEnabled(a1, a2);
  if (a1 && a2 && IsAirPlayDaemonEnabled)
  {
    v9 = 0;
    FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(a1, a2, &v9);
    theArray = 0;
    CMBaseObject = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v6 || (v6(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray), !theArray) || !CFArrayGetCount(theArray))
    {
      if (!v9 || !CFArrayGetCount(v9))
      {
        if (dword_1EB75DF20)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        v10[0] = 0;
        FigRoutingManagerContextUtilities_GetActivationSeedForEndpoint(a1, a2, v10);
        FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(a1, a2, v10[0]);
        FigRoutingManagerContextUtilities_SetAggregateEndpoint(a1, 0);
        FigEndpointDeactivate();
      }
    }

    if (theArray)
    {
      CFRelease(theArray);
      theArray = 0;
    }

    if (v9)
    {
      CFRelease(v9);
    }
  }
}

uint64_t *FigRoutingManagerAggregateShouldEndpointRemovalInterruptSystemMusicSessions(uint64_t a1, const void *a2, uint64_t *a3)
{
  v3 = a3;
  theArray[16] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    FigRoutingManagerContextUtilities_GetContextType(*a3);
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    v3 = 0;
    if (a1 && a2)
    {
      theArray[0] = 0;
      FigEndpointAggregateGetFigEndpoint();
      CMBaseObject = FigEndpointGetCMBaseObject();
      v7 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v7 || (v7(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], theArray), !theArray[0]) || CFArrayGetCount(theArray[0]) != 1 || !FigRoutingManagerIsEndpointPresentInAggregate(a2, a1))
      {
        v3 = 0;
      }

      if (theArray[0])
      {
        CFRelease(theArray[0]);
      }
    }

    if (dword_1EB75DF20)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v3;
}

void __FigRoutingManagerAggregateRemoveEndpointCompletionCallback_block_invoke(uint64_t a1)
{
  cf[16] = *MEMORY[0x1E69E9840];
  [*(a1 + 32) timeIntervalSinceNow];
  v16 = 0;
  if (*(a1 + 40))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E69621E8], *MEMORY[0x1E695E480], &v16);
    }
  }

  if (dword_1EB75DF20)
  {
    LODWORD(v14) = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  cf[0] = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex(*(a1 + 64), 0, cf);
  v5 = cf[0];
  v6 = *(a1 + 80);
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  *theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(*(a1 + 64), theArray);
  v7 = FigEndpointDescriptorUtility_CopyDescriptorsForEndpoints(*theArray, 0);
  FigRoutingManagerContextUtilities_UpdateRouteDescriptorForGivenContext(*(a1 + 64), v7);
  if (v5 == v6 && (!*theArray || !CFArrayGetCount(*theArray)))
  {
    FigRoutingManagerContextUtilities_RemoveActivatedEndpoint(*(a1 + 64), *(a1 + 40), *(a1 + 48));
    FigRoutingManagerContextUtilities_SetPickedEndpoints(*(a1 + 64), 0, @"configUpdateReasonEndedBottomUpRouteChange", 0, v7);
  }

  if (*theArray)
  {
    CFRelease(*theArray);
    *theArray = 0;
  }

  FigVolumeControllerSaveRoutingContextState(*(a1 + 64));
  if (v7)
  {
    CFRelease(v7);
  }

  type = OS_LOG_TYPE_DEFAULT;
  FigCFDictionaryGetBooleanIfPresent();
  FigRoutingManagerCrossfadePlayback(*(a1 + 40), *(a1 + 72), 0, 1);
  FigRoutingManagerContextUtilities_PostRouteConfigUpdatedToClientsOfContextWithUUIDAndItsFollowers(*(a1 + 64), *(a1 + 72), @"configUpdateReasonGroupDevicesChanged");
  v14 = 0;
  FigRoutingManagerContextUtilities_CopyCurrentlyActivatingSubEndpoints(*(a1 + 64), *(a1 + 80), &v14);
  if (!v14 || !CFArrayGetCount(v14))
  {
    FigRoutingManagerContextUtilities_SetPickingState(*(a1 + 64), 0);
  }

  v8 = FigRoutingManagerAggregateShouldEndpointRemovalInterruptSystemMusicSessions(0, 0, *(a1 + 96));
  FigRoutingManagerCleanupSystemMusicIfAggregateIsEmpty(*(a1 + 80), *(a1 + 48), v8);
  FigRoutingMangerDeactivateAggregateEndpointIfNecessary(*(a1 + 64), *(a1 + 80));
  FigVolumeControllerRecomputeMainVolume(*(a1 + 64), 0.0);
  FigRoutingManagerDestroyAggregateAddEndpointCompletionContext(*(a1 + 96));
  if (v14)
  {
    CFRelease(v14);
    v14 = 0;
  }

  if (v16)
  {
    CFRelease(v16);
    v16 = 0;
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    CFRelease(v11);
  }

  v12 = *(a1 + 72);
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 88);
  if (v13)
  {
    CFRelease(v13);
  }
}

CFMutableDictionaryRef FigRoutingManagerCopyAuthInfoForEndpoint(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFEqual();
  FigCFDictionarySetValue();
  v16 = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(CMBaseObject, *MEMORY[0x1E69620F8], v3, &v16);
  }

  cf = 0;
  v7 = FigEndpointGetCMBaseObject();
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v8(v7, *MEMORY[0x1E69621E8], v3, &cf);
  }

  v9 = FigEndpointDescriptorUtility_CopyDescriptorForEndpoint(a1, 0);
  v14 = 0;
  v10 = *MEMORY[0x1E69621B0];
  v11 = FigEndpointGetCMBaseObject();
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v12)
  {
    v12(v11, v10, v3, &v14);
  }

  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v16)
  {
    CFRelease(v16);
    v16 = 0;
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return Mutable;
}

void FigRoutingManager_HandleAuthorizationRequiredDelegate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v31 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (dword_1EB75DF20)
  {
    v27 = 0;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  cf = 0;
  *type = 0;
  v13 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!FigRoutingManagerIsEndpointOfType(a1, *MEMORY[0x1E69626B0]) && !FigRoutingManagerIsClusterEndpoint(a1))
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v21)
    {
      v21(CMBaseObject, *MEMORY[0x1E69621E8], v13, &cf);
    }

    v22 = FigEndpointGetCMBaseObject();
    v23 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v23)
    {
      v23(v22, *MEMORY[0x1E69620F8], v13, type);
    }

    v19 = FigRoutingManagerCopyAuthInfoForEndpoint(a1, a5);
    FigCFDictionarySetValue();
    *(&v29 + 1) = a1;
    if (!dword_1EB75DF20)
    {
      goto LABEL_22;
    }

LABEL_21:
    v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_22;
  }

  if (!a2)
  {
    if (Mutable)
    {
      CFRelease(Mutable);
      Mutable = 0;
    }

    v19 = 0;
    goto LABEL_22;
  }

  v15 = FigEndpointGetCMBaseObject();
  v16 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v16)
  {
    v16(v15, *MEMORY[0x1E69621E8], v13, &cf);
  }

  v17 = FigEndpointGetCMBaseObject();
  v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v18)
  {
    v18(v17, *MEMORY[0x1E69620F8], v13, type);
  }

  v19 = FigRoutingManagerCopyAuthInfoForEndpoint(a2, a5);
  FigCFDictionarySetValue();
  *(&v29 + 1) = a2;
  if (dword_1EB75DF20)
  {
    goto LABEL_21;
  }

LABEL_22:
  *&v28 = v19;
  *(&v28 + 1) = Mutable;
  *&v30 = a6;
  *(&v30 + 1) = a7;
  *&v29 = *type;
  FigEndpointAuthRequestHandler_ProcessRequest(&v28);
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v19)
  {
    CFRelease(v19);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (*type)
  {
    CFRelease(*type);
  }
}

void FigRoutingManagerRemoveAllSubEndpointsFromAggregate(uint64_t a1, const void *a2, const void *a3, const void *a4, uint64_t a5)
{
  theArray = 0;
  CMBaseObject = FigEndpointGetCMBaseObject();
  v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v11)
  {
    v11(CMBaseObject, *MEMORY[0x1E6962270], *MEMORY[0x1E695E480], &theArray);
    if (!theArray)
    {
      return;
    }

    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      v13 = Count;
      for (i = 0; i != v13; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if (!a1 || (FigEndpointAggregateGetClassID(), IsMemberOfClass = CMBaseObjectIsMemberOfClass(), v17 = a1, !IsMemberOfClass))
        {
          v17 = 0;
        }

        if (!FigRoutingManagerRemoveEndpointFromAggregate(v17, ValueAtIndex, a2, a3, a4, a5))
        {
          FigRoutingManagerLogEndpointID(@"removeSubEndpoints: Removed endpoint with ID from aggregate: ", ValueAtIndex, 0, 1);
        }
      }
    }
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

void FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate(const void *a1, uint64_t a2, const void *a3, const void *a4, uint64_t a5)
{
  if (a1 && a3)
  {
    if (a4)
    {
      CFRetain(a1);
      CFRetain(a3);
      CFRetain(a4);
      DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate_block_invoke;
      v10[3] = &__block_descriptor_64_e5_v8__0l;
      v10[4] = a5;
      v10[5] = a1;
      v10[6] = a3;
      v10[7] = a4;
      MXDispatchAsync("FigRoutingManager_HandleDidReceiveDataFromCommChannelDelegate", "FigRoutingManager_EndpointHelpers.m", 2734, 0, 0, DataTransmissionQueue, v10);
    }
  }
}

void FigRoutingManager_HandleDidCloseCommChannelDelegate(CFTypeRef cf, uint64_t a2, const void *a3, uint64_t a4)
{
  v12 = *MEMORY[0x1E69E9840];
  if (cf && a3)
  {
    if (dword_1EB75DF20)
    {
      v11 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFRetain(cf);
    CFRetain(a3);
    DataTransmissionQueue = FigRoutingManager_GetDataTransmissionQueue();
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __FigRoutingManager_HandleDidCloseCommChannelDelegate_block_invoke;
    v9[3] = &__block_descriptor_56_e5_v8__0l;
    v9[4] = a4;
    v9[5] = cf;
    v9[6] = a3;
    MXDispatchAsync("FigRoutingManager_HandleDidCloseCommChannelDelegate", "FigRoutingManager_EndpointHelpers.m", 2796, 0, 0, DataTransmissionQueue, v9);
  }
}

NSObject *FigRoutingManagerCreateOneShotTimer(NSObject *a1, uint64_t a2, void *a3, uint64_t a4, double a5)
{
  v8 = (a5 * 1000000000.0);
  DispatchSourceBlock = FigDispatchCreateDispatchSourceBlock();
  v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a1);
  v11 = dispatch_time(0, v8);
  dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_set_context(v10, a3);
  dispatch_source_set_event_handler(v10, DispatchSourceBlock);
  _Block_release(DispatchSourceBlock);
  if (a4)
  {
    v12 = FigDispatchCreateDispatchSourceBlock();
    dispatch_source_set_cancel_handler(v10, v12);
    _Block_release(v12);
  }

  dispatch_resume(v10);
  return v10;
}

NSObject *FigRoutingManagerStartDeactivateAirPlayEndpointTimer(CFTypeRef cf, uint64_t a2, float a3)
{
  v5 = cf;
  if (cf)
  {
    cf = CFRetain(cf);
  }

  SharedManager = FigRoutingManagerGetSharedManager(cf, a2);
  v7 = *(SharedManager + 6);
  if (v7)
  {
    dispatch_source_cancel(v7);
    v8 = *(SharedManager + 6);
    if (v8)
    {
      dispatch_release(v8);
      *(SharedManager + 6) = 0;
    }
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __FigRoutingManagerStartDeactivateAirPlayEndpointTimer_block_invoke;
  v11[3] = &__block_descriptor_48_e5_v8__0l;
  v11[4] = v5;
  v11[5] = a2;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __FigRoutingManagerStartDeactivateAirPlayEndpointTimer_block_invoke_2;
  v10[3] = &__block_descriptor_40_e5_v8__0l;
  v10[4] = v5;
  result = FigRoutingManagerCreateOneShotTimer(*(SharedManager + 1), v11, v5, v10, a3);
  *(SharedManager + 6) = result;
  return result;
}

void __FigRoutingManagerStartDeactivateAirPlayEndpointTimer_block_invoke(uint64_t a1)
{
  v7 = 0;
  cf = 0;
  if (*(a1 + 32))
  {
    v2 = *MEMORY[0x1E695E480];
    CMBaseObject = FigEndpointGetCMBaseObject();
    v4 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v4)
    {
      v4(CMBaseObject, *MEMORY[0x1E69620F8], v2, &cf);
    }

    v5 = FigEndpointGetCMBaseObject();
    v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v6)
    {
      v6(v5, *MEMORY[0x1E69621E8], v2, &v7);
    }

    FigRoutingManager_iOSDeactivateEndpoint(*(a1 + 32), *(a1 + 40), 0);
    if (cf)
    {
      CFRelease(cf);
    }

    if (v7)
    {
      CFRelease(v7);
    }
  }
}

void __FigRoutingManagerStartDeactivateAirPlayEndpointTimer_block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    CFRelease(v1);
  }
}

void FigRoutingManagerStopDeactivateAirPlayEndpointTimer(uint64_t a1, uint64_t a2)
{
  SharedManager = FigRoutingManagerGetSharedManager(a1, a2);
  v3 = *(SharedManager + 6);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(SharedManager + 6);
    if (v4)
    {
      dispatch_release(v4);
      *(SharedManager + 6) = 0;
    }
  }
}

CFTypeRef FigRoutingManagerCopyEndpointWithDeviceIDFromBluetoothManager(uint64_t a1)
{
  v1 = [+[MXEndpointDescriptorCache sharedInstance](MXEndpointDescriptorCache copyAvailableEndpointsForManager:"copyAvailableEndpointsForManager:", FigRoutingManagerGetEndpointManager(*MEMORY[0x1E69618D8])];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  if (CFArrayGetCount(v1) < 1 || (Count = CFArrayGetCount(v2), Count < 1))
  {
LABEL_11:
    v11 = 0;
  }

  else
  {
    v4 = Count;
    v5 = 0;
    v6 = *MEMORY[0x1E69620F8];
    v7 = *MEMORY[0x1E695E480];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
      cf = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v10)
      {
        v10(CMBaseObject, v6, v7, &cf);
      }

      if (FigCFStringFind())
      {
        break;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      if (v4 == ++v5)
      {
        goto LABEL_11;
      }
    }

    if (ValueAtIndex)
    {
      v11 = CFRetain(ValueAtIndex);
    }

    else
    {
      v11 = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  CFRelease(v2);
  return v11;
}

CFMutableDictionaryRef FigRoutingManagerCreateDuckAudioPayload(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  return Mutable;
}

CFIndex FigRoutingManagerUtilities_AreAllEndpointsWHAGroupable(CFIndex result)
{
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      v2 = result;
      if (result < 1)
      {
        return 1;
      }

      else
      {
        v3 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v1, v3);
          if (!FigRoutingManagerIsEndpointWHAGroupable(ValueAtIndex))
          {
            break;
          }

          if (v2 == ++v3)
          {
            return 1;
          }
        }

        FigRoutingManagerLogEndpointID(@"Found non-groupable route", ValueAtIndex, @"in inEndpoints", 0);
        return 0;
      }
    }
  }

  return result;
}

CFIndex FigRoutingManagerUtilities_AreAllEndpointsOfTypeAirPlay(CFIndex result)
{
  v12 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    result = CFArrayGetCount(result);
    if (result)
    {
      v9 = 0u;
      v10 = 0u;
      v7 = 0u;
      v8 = 0u;
      v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v2)
      {
        v3 = v2;
        v4 = *v8;
        v5 = *MEMORY[0x1E69626A8];
LABEL_5:
        v6 = 0;
        while (1)
        {
          if (*v8 != v4)
          {
            objc_enumerationMutation(v1);
          }

          result = FigRoutingManagerIsEndpointOfType(*(*(&v7 + 1) + 8 * v6), v5);
          if (!result)
          {
            break;
          }

          if (v3 == ++v6)
          {
            v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
            result = 1;
            if (v3)
            {
              goto LABEL_5;
            }

            return result;
          }
        }
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t FigRoutingManagerUtilities_IsEndpointPicked(CFTypeRef a1, uint64_t a2)
{
  theArray = 0;
  FigRoutingManagerContextUtilities_CopyPickedIndividualEndpoints(a2, &theArray);
  if (a1)
  {
    goto LABEL_2;
  }

  if (!theArray)
  {
    return 1;
  }

  if (CFArrayGetCount(theArray))
  {
LABEL_2:
    v3 = 0;
    v4 = *MEMORY[0x1E69626D8];
    while (1)
    {
      Count = theArray;
      if (theArray)
      {
        Count = CFArrayGetCount(theArray);
      }

      if (v3 >= Count)
      {
        v9 = 0;
        goto LABEL_21;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v3);
      if (ValueAtIndex == a1)
      {
        break;
      }

      v7 = ValueAtIndex;
      if (FigRoutingManagerIsEndpointOfType(ValueAtIndex, v4) && FigRoutingManagerIsEndpointWHAGroupable(v7))
      {
        v8 = FigRoutingManagerCopyLocalAirPlayEndpoint();
        if (v8 == a1)
        {
          if (a1)
          {
            CFRelease(v8);
          }

          break;
        }

        if (v8)
        {
          CFRelease(v8);
        }
      }

      ++v3;
    }
  }

  v9 = 1;
LABEL_21:
  if (theArray)
  {
    CFRelease(theArray);
  }

  return v9;
}

__CFArray *FigRoutingManagerUtilities_CopyEndpointsToAdd(uint64_t a1, CFArrayRef theArray)
{
  if (!theArray || !CFArrayGetCount(theArray))
  {
    return 0;
  }

  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, &cf);
  theArraya = 0;
  v4 = *MEMORY[0x1E695E480];
  if (cf && (CMBaseObject = FigEndpointGetCMBaseObject(), (v6 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v6(CMBaseObject, *MEMORY[0x1E6962270], v4, &theArraya), theArraya))
  {
    Count = CFArrayGetCount(theArraya);
  }

  else
  {
    Count = 0;
  }

  v9 = CFArrayGetCount(theArray);
  Mutable = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
  if (v9 >= 1)
  {
    for (i = 0; i != v9; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (Count < 1)
      {
LABEL_15:
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      else
      {
        v12 = 0;
        while (ValueAtIndex != CFArrayGetValueAtIndex(theArraya, v12))
        {
          if (Count == ++v12)
          {
            goto LABEL_15;
          }
        }
      }
    }
  }

  if (theArraya)
  {
    CFRelease(theArraya);
    theArraya = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return Mutable;
}

__CFArray *FigRoutingManagerUtilities_CopyEndpointsToRemove(uint64_t a1, const __CFArray *a2)
{
  cf = 0;
  FigRoutingManagerContextUtilities_CopyAggregateEndpointAsFigEndpoint(a1, &cf);
  theArray = 0;
  v3 = MEMORY[0x1E695E480];
  if (cf && (CMBaseObject = FigEndpointGetCMBaseObject(), (v5 = *(*(CMBaseObjectGetVTable() + 8) + 48)) != 0) && (v5(CMBaseObject, *MEMORY[0x1E6962270], *v3, &theArray), theArray))
  {
    Count = CFArrayGetCount(theArray);
    if (!a2)
    {
LABEL_5:
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    Count = 0;
    if (!a2)
    {
      goto LABEL_5;
    }
  }

  v7 = CFArrayGetCount(a2);
LABEL_8:
  Mutable = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (v7 < 1)
      {
LABEL_14:
        CFArrayAppendValue(Mutable, ValueAtIndex);
      }

      else
      {
        v11 = 0;
        while (ValueAtIndex != CFArrayGetValueAtIndex(a2, v11))
        {
          if (v7 == ++v11)
          {
            goto LABEL_14;
          }
        }
      }
    }
  }

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (theArray)
  {
    CFRelease(theArray);
  }

  return Mutable;
}

uint64_t FigVAEndpointManagerGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigVAEndpointManagerGetClassID_sRegisterFigVAEndpointManagerBaseTypeOnce != -1)
  {
    FigVAEndpointManagerGetClassID_cold_1();
  }

  return FigVAEndpointManagerGetClassID_sFigVAEndpointManagerClassID;
}

uint64_t __FigVAEndpointManagerGetClassID_block_invoke()
{
  ClassID = FigEndpointManagerGetClassID();

  return MEMORY[0x1EEDBC160](&FigVAEndpointManagerGetClassID_sFigVAEndpointManagerClassDesc, ClassID, 0, &FigVAEndpointManagerGetClassID_sFigVAEndpointManagerClassID);
}

uint64_t FigVAEndpointManagerSetPropertyFloat32(uint64_t a1, uint64_t a2, float a3)
{
  v4 = MXCFNumberCreateFromFloat32(a3);
  CMBaseObject = FigEndpointManagerGetCMBaseObject();
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v6)
  {
    v7 = v6(CMBaseObject, a2, v4);
  }

  else
  {
    v7 = 4294954514;
  }

  CFRelease(v4);
  return v7;
}

void figConnection_ServerConnectionDied_Callback(uint64_t a1, void *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = *MEMORY[0x1E695E4C0];
  v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:0];
  v6 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  if (v4)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || v6 == 0)
  {
    v11 = 0;
  }

  else
  {
    v9 = v6;
    v10 = objc_alloc(MEMORY[0x1E695DF20]);
    v11 = [v10 initWithObjectsAndKeys:{v4, AVSystemController_RecordingStateNotificationParameter, v5, AVSystemController_RecordingClientPIDNotificationParameter, v9, AVSystemController_RecordingClientPIDsNotificationParameter, 0}];
  }

  [AVSystemControllerCommon postNotificationOnMainQueue:v11 notification:AVSystemController_RecordingStateDidChangeNotification object:a2];

  if (v5)
  {
    v12 = objc_alloc(MEMORY[0x1E695DF20]);
    v13 = [v12 initWithObjectsAndKeys:{v5, AVSystemController_NowPlayingAppPIDNotificationParameter, 0}];
  }

  else
  {
    v13 = 0;
  }

  [AVSystemControllerCommon postNotificationOnMainQueue:v13 notification:AVSystemController_NowPlayingAppPIDDidChangeNotification object:a2];

  [AVSystemControllerCommon postNotificationOnMainQueue:0 notification:AVSystemController_NowPlayingAppDidChangeNotification object:a2];
  if (v4)
  {
    v14 = objc_alloc(MEMORY[0x1E695DF20]);
    v4 = [v14 initWithObjectsAndKeys:{v4, AVSystemController_NowPlayingAppIsPlayingNotificationParameter, 0}];
  }

  [AVSystemControllerCommon postNotificationOnMainQueue:v4 notification:AVSystemController_NowPlayingAppIsPlayingDidChangeNotification object:a2];

  [a2 handleServerDied];

  objc_autoreleasePoolPop(v3);
}

uint64_t FigSTSGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_2 != -1)
  {
    FigSTSGetClassID_cold_1();
  }

  return qword_1ED6D2EC8;
}

uint64_t STSObtainClassID(uint64_t a1)
{
  ClassID = CMBaseGetClassID();

  return MEMORY[0x1EEDBC160](&STSObtainClassID_sFigSTSClassDesc, ClassID, 1, a1);
}

uint64_t FigSTSGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_2 != -1)
  {
    FigSTSGetClassID_cold_1();
  }

  v3 = qword_1ED6D2EC8;

  return MEMORY[0x1EEDBB488](v3);
}

uint64_t FigSTSCreate(uint64_t a1, CFTypeRef cf, uint64_t a3, void *a4)
{
  v13 = 0;
  if (STSInitializeFlavorCreationState_sInitFlavorCreationStateOnce == -1)
  {
    if (!cf)
    {
LABEL_17:
      FigSTSCreate_cold_4(&value);
      return value;
    }
  }

  else
  {
    FigSTSCreate_cold_1();
    if (!cf)
    {
      goto LABEL_17;
    }
  }

  v8 = CFGetTypeID(cf);
  if (v8 != CFStringGetTypeID())
  {
    goto LABEL_17;
  }

  if (!a4)
  {
    FigSTSCreate_cold_3(&value);
    return value;
  }

  value = 0;
  FigSimpleMutexLock();
  if (CFDictionaryGetValueIfPresent(sFigSTSFlavorCreationState_1, cf, &value))
  {
    goto LABEL_12;
  }

  if (CFEqual(cf, @"B"))
  {
    v9 = "/System/Library/Frameworks/MediaToolbox.framework/Support/libSTS-B.dylib";
    v10 = "STSCreateFlavorB";
  }

  else
  {
    if (!CFEqual(cf, @"N"))
    {
      Function = value;
      if (!value)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    v9 = "/System/Library/Frameworks/MediaToolbox.framework/Support/libSTS-N.dylib";
    v10 = "STSCreateFlavorN";
  }

  Function = STSLoadCreateFunction(v9, v10);
  value = Function;
  if (Function)
  {
LABEL_11:
    CFDictionarySetValue(sFigSTSFlavorCreationState_1, cf, Function);
  }

LABEL_12:
  FigSimpleMutexUnlock();
  if (value)
  {
    result = (value)(a1, a3, &v13);
    *a4 = v13;
    return result;
  }

  FigSTSCreate_cold_2(&value);
  return value;
}

CFMutableDictionaryRef __STSInitializeFlavorCreationState_block_invoke(uint64_t a1)
{
  sFigSTSFlavorCreationState_0 = FigSimpleMutexCreate();
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  sFigSTSFlavorCreationState_1 = result;
  return result;
}

void *STSLoadCreateFunction(const char *a1, const char *a2)
{
  result = dlopen(a1, 4);
  if (result)
  {

    return dlsym(result, a2);
  }

  return result;
}

void sub_1B18A9438(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1B18A9DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void FigRouteDiscovererSetDiscoveryModeDetailedOnDiscoverer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v2 = CFRetain(*DerivedStorage);
  }

  else
  {
    v2 = 0;
  }

  if (FigCFEqual())
  {
    v3 = *DerivedStorage;
    *DerivedStorage = @"DiscoveryMode_Detailed";
    if (@"DiscoveryMode_Detailed")
    {
      CFRetain(@"DiscoveryMode_Detailed");
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void FigRouteDiscovererSetDiscoveryModeNoneOnDiscoverer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    v2 = CFRetain(*DerivedStorage);
  }

  else
  {
    v2 = 0;
  }

  if (FigCFEqual())
  {
    v3 = *DerivedStorage;
    *DerivedStorage = @"DiscoveryMode_None";
    if (@"DiscoveryMode_None")
    {
      CFRetain(@"DiscoveryMode_None");
    }

    if (v3)
    {
      CFRelease(v3);
    }
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

BOOL FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer(uint64_t a1)
{
  if (*(CMBaseObjectGetDerivedStorage() + 56) == 8)
  {
    return 0;
  }

  FigSimpleMutexLock();
  v1 = FigCFEqual() != 0;
  FigSimpleMutexUnlock();
  return v1;
}

id FigRouteDiscovererCopyAvailableRoutes(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsWHAInstantDiscoveryCachingEnabled(a1, a2) && !FigCFEqual())
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      v7 = *MEMORY[0x1E695E480];
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          cf = 0;
          CMBaseObject = FigEndpointGetCMBaseObject();
          v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
          if (v11)
          {
            v11(CMBaseObject, @"IsCached", v7, &cf);
          }

          if (!FigCFEqual())
          {
            [v3 addObject:v9];
          }

          if (cf)
          {
            CFRelease(cf);
          }
        }

        v5 = [a2 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v5);
    }

    return v3;
  }

  else
  {

    return a2;
  }
}

void __FigRouteDiscoveryManagerStoreDiscoverer_block_invoke(uint64_t a1)
{
  theArray[24] = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v5)
    {
      v5(v4, @"clientPID", v3);
    }
  }

  FigRouteDiscoveryManagerAddDiscoverer(*(a1 + 32), *(DerivedStorage + 56));
  v6 = MEMORY[0x1E696AEC0];
  v7 = [*(a1 + 48) stringValue];
  TypeString = discoverer_getTypeString(*(DerivedStorage + 56));
  v9 = FigCFEqual();
  v10 = @"YES";
  if (!v9)
  {
    v10 = @"NO";
  }

  v11 = [v6 stringWithFormat:@"%@+%@+%@", v7, TypeString, v10];
  v12 = FigRouteDiscoveryManagerCopyCachedAudioSessionRouteInformation();
  v13 = [v12 objectForKey:v11];
  theArray[0] = 0;
  if (v13)
  {
    v14 = v13;
    theArray[0] = [v13 objectForKey:@"FigRouteDiscoverer_Endpoints_Key"];
    v15 = [v14 objectForKey:@"FigRouteDiscoverer_RouteDescriptors_Key"];
  }

  else if (FigRouteDiscovererIsFastDiscoveryEnabledForDiscoverer(*(a1 + 32)))
  {
    FigRouteDiscoveryManagerCopyRoutesForTypeAndAudioSessionID(*MEMORY[0x1E695E480], *(DerivedStorage + 56), *(DerivedStorage + 8), *(DerivedStorage + 24), theArray);
    v15 = FigRouteDiscoveryManagerCopyRouteDescriptorsFromEndpointsAndAudioSessionID(theArray[0], *(DerivedStorage + 8));
  }

  else
  {
    theArray[0] = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v15 = objc_alloc_init(MEMORY[0x1E695DEC8]);
  }

  v16 = v15;
  FigSimpleMutexLock();

  *(DerivedStorage + 104) = theArray[0];
  *(DerivedStorage + 96) = v16;
  FigSimpleMutexUnlock();
  if (theArray[0] && CFArrayGetCount(theArray[0]))
  {
    v17 = *(a1 + 32);
    if (v17)
    {
      CFRetain(v17);
    }

    NotificationQueue = FigRouteDiscoveryManagerGetNotificationQueue();
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __FigRouteDiscoveryManagerStoreDiscoverer_block_invoke_2;
    v23[3] = &__block_descriptor_40_e5_v8__0l;
    v23[4] = *(a1 + 32);
    MXDispatchAsync("FigRouteDiscoveryManagerStoreDiscoverer_block_invoke", "FigRouteDiscoverer.m", 836, 0, 0, NotificationQueue, v23);
  }

  if (dword_1EB75DF60)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (theArray[0])
  {
    CFRelease(theArray[0]);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  v20 = *(a1 + 32);
  if (v20)
  {
    CFRelease(v20);
  }

  v21 = *(a1 + 40);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 48);
  if (v22)
  {
    CFRelease(v22);
  }
}

void __FigRouteDiscoveryManagerStoreDiscoverer_block_invoke_2(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

uint64_t figEndpointUIAgent_Invalidate(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  *DerivedStorage = 1;
  FigSimpleMutexUnlock();
  return 0;
}

uint64_t figEndpointUIAgent_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  figEndpointUIAgent_Invalidate(a1);
  DerivedStorage[3] = 0;
  v3 = DerivedStorage[2];
  if (v3)
  {
    CFRelease(v3);
    DerivedStorage[2] = 0;
  }

  result = FigSimpleMutexDestroy();
  DerivedStorage[1] = 0;
  return result;
}

uint64_t figEndpointUIAgent_showAuthPrompt(uint64_t a1, CFDictionaryRef theDict, const void *a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (theDict)
  {
    CFDictionaryGetValue(theDict, @"ATVName");
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    if (*DerivedStorage)
    {
      FigSimpleMutexUnlock();
      v8 = 4294950514;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(Mutable, @"promptInfo", theDict);
      *(DerivedStorage + 24) = a4;
      if (a3)
      {
        v11 = CFRetain(a3);
      }

      else
      {
        v11 = 0;
      }

      *(DerivedStorage + 16) = v11;
      FigSimpleMutexUnlock();
      CMNotificationCenterGetDefaultLocalCenter();
      v8 = CMNotificationCenterPostNotification();
      if (Mutable)
      {
        CFRelease(Mutable);
      }
    }

    if (dword_1EB75DFA0)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294950516;
  }

  return v8;
}

double figEndpointUIAgent_screenStarted(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
  return result;
}

double figEndpointUIAgent_screenStopped(uint64_t a1)
{
  CMNotificationCenterGetDefaultLocalCenter();

  CMNotificationCenterPostNotification();
  return result;
}

__CFString *CMSMSleep_CreateDefaultIdlePreventorName()
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  FormattedDateAndTime = CMSMUtility_CreateFormattedDateAndTime();
  CFStringAppend(Mutable, @"MediaExperience-idleSleepPreventor");
  CFStringAppend(Mutable, FormattedDateAndTime);
  if (FormattedDateAndTime)
  {
    CFRelease(FormattedDateAndTime);
  }

  return Mutable;
}

void CMSMSleep_ReleaseIdleSleepPreventorForSession(void *a1)
{
  if (a1 && [a1 idleSleepPreventorAllocated])
  {
    PowerLogDataForSession = CMSMPowerLogCreatePowerLogDataForSession(a1, 0x1F2897D30);
    if (CMSMSleep_ReleaseIdleSleepPreventor([a1 idleSleepPreventor], @"CoreMedia_AudioPlayback", PowerLogDataForSession))
    {
      [a1 setIdleSleepPreventor:0];
      [a1 setIdleSleepPreventorAllocated:0];
      [a1 setIdleSleepPreventorName:0];
      [a1 setIdleSleepPreventorCreationTime:0];
    }

    if (PowerLogDataForSession)
    {

      CFRelease(PowerLogDataForSession);
    }
  }
}

void CMSMSleep_CreateIdleSleepPreventorForSession(void *a1, const __CFString *a2)
{
  if (a1 && ([a1 idleSleepPreventorAllocated] & 1) == 0)
  {
    v4 = MEMORY[0x1E695E480];
    if (a2)
    {
      MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    }

    else
    {
      v6 = CFGetAllocator(a1);
      MutableCopy = CFStringCreateMutable(v6, 0);
      v7 = [a1 displayID];
      v8 = [a1 clientName];
      if (v7)
      {
        CFStringAppendFormat(MutableCopy, 0, @"MediaExperience.%@(%@).isplaying", v8, [a1 displayID]);
      }

      else
      {
        CFStringAppendFormat(MutableCopy, 0, @"MediaExperience.%@.isplaying", v8);
      }
    }

    v9 = *v4;
    Current = CFAbsoluteTimeGetCurrent();
    v11 = CFDateCreate(v9, Current);
    [a1 setIdleSleepPreventorName:MutableCopy];
    [a1 setIdleSleepPreventorCreationTime:v11];
    PowerLogDataForSession = CMSMPowerLogCreatePowerLogDataForSession(a1, 0x1F2897D10);
    v13 = 0;
    [a1 setIdleSleepPreventorAllocated:{CMSMSleep_CreateIdleSleepPreventor(MutableCopy, @"CoreMedia_AudioPlayback", PowerLogDataForSession, &v13)}];
    [a1 setIdleSleepPreventor:v13];
    if (v11)
    {
      CFRelease(v11);
    }

    if (PowerLogDataForSession)
    {
      CFRelease(PowerLogDataForSession);
    }

    if (MutableCopy)
    {
      CFRelease(MutableCopy);
    }
  }
}

void CMSMSleep_UpdateIdleSleepPreventor(void *a1, int a2)
{
  if ([a1 idleSleepPreventorUpdaterTimer])
  {
    dispatch_source_cancel([a1 idleSleepPreventorUpdaterTimer]);
    [a1 setIdleSleepPreventorUpdaterTimer:0];
  }

  if (a2)
  {

    CMSMSleep_CreateIdleSleepPreventorForSession(a1, 0);
  }

  else
  {

    CMSMSleep_ReleaseIdleSleepPreventorForSession(a1);
  }
}

void *CMSMSleep_ExtendPlaybackProcessAssertion(void *result)
{
  v21 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v1 = result;
    if ([result extendBackgroundAppAssertionTimer])
    {
      dispatch_source_cancel([v1 extendBackgroundAppAssertionTimer]);
      [v1 setExtendBackgroundAppAssertionTimer:0];
    }

    if ([v1 playbackAssertionRef])
    {
      v2 = +[MXAudioStatistics sharedInstance];
      v3 = [objc_msgSend(v1 "playbackAssertionRef")];
      v4 = [(MXAudioStatistics *)v2 sendSinglePerformanceMessageForAssertion:"CMSMSleep_ExtendPlaybackProcessAssertion" explanation:v3 activity:kMXAudioStatistics_AssertionActivity_AssertionExtended];
      v6 = MXGetAssertionLog(v4, v5);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136447234;
        v12 = "-CMSSleep-";
        v13 = 2082;
        v14 = "CMSMSleep_ExtendPlaybackProcessAssertion";
        v15 = 1024;
        v16 = 494;
        v17 = 2048;
        v18 = [v1 playbackAssertionRef];
        v19 = 2114;
        v20 = [objc_msgSend(v1 "playbackAssertionRef")];
        _os_log_impl(&dword_1B17A2000, v6, OS_LOG_TYPE_INFO, "%{public}s %{public}s:%i Creating extendBackgroundAppAssertionTimer for assertion %p explanation %{public}@", buf, 0x30u);
      }
    }

    v7 = [objc_msgSend(v1 "ID")];
    v9 = MXGetSerialQueue(v7, v8);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __CMSMSleep_ExtendPlaybackProcessAssertion_block_invoke;
    v10[3] = &__block_descriptor_40_e5_v8__0l;
    v10[4] = v7;
    return [v1 setExtendBackgroundAppAssertionTimer:{MXDispatchUtilityCreateOneShotTimer("CMSMSleep_ExtendPlaybackProcessAssertion", "CMSessionManager_Sleep.m", 498, 0, 0, v9, v10, 0, 5.0, 0)}];
  }

  return result;
}

uint64_t CMSMSleep_FetchTemporaryPlaybackProcessAssertion(void *a1)
{
  v2 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"MediaExperience.%d.%@.%@.%@.temporaryIsPlayingProcessAssertion", [objc_msgSend(a1 "clientPID")], objc_msgSend(a1, "displayID"), objc_msgSend(a1, "clientName"), objc_msgSend(a1, "audioCategory"));
  if (![a1 resumeAssertionRef] || !MX_RunningBoardServices_IsAssertionValid(objc_msgSend(a1, "resumeAssertionRef")))
  {
    PlaybackProcessAssertionForPID = MX_RunningBoardServices_CreatePlaybackProcessAssertionForPID([objc_msgSend(a1 "clientPID")], v2);
    [a1 setResumeAssertionRef:PlaybackProcessAssertionForPID];
    if (PlaybackProcessAssertionForPID)
    {
      CFRelease(PlaybackProcessAssertionForPID);
    }
  }

  if (v2)
  {
    CFRelease(v2);
  }

  if ([a1 resumeBackgroundAppUpdaterTimer])
  {
    dispatch_source_cancel([a1 resumeBackgroundAppUpdaterTimer]);
    [a1 setResumeBackgroundAppUpdaterTimer:0];
  }

  v4 = [objc_msgSend(a1 "ID")];
  v6 = MXGetSerialQueue(v4, v5);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __CMSMSleep_FetchTemporaryPlaybackProcessAssertion_block_invoke;
  v8[3] = &__block_descriptor_40_e5_v8__0l;
  v8[4] = v4;
  return [a1 setResumeBackgroundAppUpdaterTimer:{MXDispatchUtilityCreateOneShotTimer("CMSMSleep_FetchTemporaryPlaybackProcessAssertion", "CMSessionManager_Sleep.m", 539, 0, 0, v6, v8, 0, 5.0, 0)}];
}

void CMSMSleep_UpdatePlaybackProcessAssertionsForHostProcesses(void *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [objc_msgSend(a3 differenceFromArray:{a2), "removals"}];
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    if ([v4 count])
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v4);
            }

            [v5 addObject:{objc_msgSend(*(*(&v10 + 1) + 8 * v9++), "object")}];
          }

          while (v7 != v9);
          v7 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      CMSMSleep_ReleasePlaybackProcessAssertionsForHostProcesses(a1, v5);
    }

    CMSMSleep_FetchPlaybackProcessAssertionsForHostProcesses(a1);
  }
}

const __CFNumber *MXCFNumberGetValueSInt32(const __CFNumber *result)
{
  valuePtr = 0;
  if (result)
  {
    CFNumberGetValue(result, kCFNumberSInt32Type, &valuePtr);
    return valuePtr;
  }

  return result;
}

double MXCFNumberGetValueFloat32(const __CFNumber *a1)
{
  valuePtr = 0;
  if (!a1)
  {
    return 0.0;
  }

  CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
  LODWORD(result) = valuePtr;
  return result;
}

double MXCFDictionaryGetValueDouble(const __CFDictionary *a1, const void *a2)
{
  if (!a1)
  {
    return 0.0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  valuePtr = 0.0;
  if (!Value)
  {
    return 0.0;
  }

  CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
  return valuePtr;
}

BOOL MXCFArrayAreArrayContentsEqual(CFArrayRef theArray, const __CFArray *a2)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (a2)
    {
LABEL_3:
      v5 = CFArrayGetCount(a2);
      goto LABEL_6;
    }
  }

  else
  {
    Count = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v5 = 0;
LABEL_6:
  if (Count != v5)
  {
    return 0;
  }

  v6 = 0;
  do
  {
    v7 = v6;
    if (theArray)
    {
      v8 = CFArrayGetCount(theArray);
    }

    else
    {
      v8 = 0;
    }

    if (v7 >= v8)
    {
      break;
    }

    CFArrayGetValueAtIndex(theArray, v7);
    v9 = FigCFArrayContainsValue();
    v6 = v7 + 1;
  }

  while (v9);
  return v7 >= v8;
}

CFDataRef MXCFDataCreate(UInt8 *bytes, CFIndex length)
{
  if (bytes && length)
  {
    return CFDataCreate(*MEMORY[0x1E695E480], bytes, length);
  }

  else
  {
    return 0;
  }
}

void MXCFPreferencesMigrateUserPreferencesToMXDomain()
{
  v7 = *MEMORY[0x1E69E9840];
  if (CFPreferencesGetAppBooleanValue(@"celestialToMediaExperienceDomainMigrationFullyCompleted", @"com.apple.mediaexperience", 0))
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
    v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{@"AirTunesEntriesDeleted", @"AirPlayLowLatencyEntriesDeleted", @"BluetoothA2DPAndHFPVolumesCombined", @"endpointTypeInfo", @"inputVolumes", @"measuredHDMILatency", @"measuredHDMILatencyForCurrentRefreshRate", @"nowPlayingAppDisplayID", @"nowPlayingAppDisplayIDUponCarPlayDisconnect", @"nowPlayingAppWasPlayingUponCarPlayDisconnect", @"vibeIntensity", @"volumeLimits", @"volumeMultiplier", @"volumes", 0}];
    if (CFPreferencesGetAppBooleanValue(@"celestialToMediaExperienceDomainMigrationCompleted", @"com.apple.mediaexperience", 0))
    {
      if (dword_1EB75DE40)
      {
        v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v4 = *MEMORY[0x1E695E8B8];
      v5 = *MEMORY[0x1E695E898];
      CFPreferencesSetValue(@"celestialToMediaExperienceDomainMigrationCompleted", 0, @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    }

    else
    {
      if (dword_1EB75DE40)
      {
        v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v4 = *MEMORY[0x1E695E8B8];
      v5 = *MEMORY[0x1E695E898];
      v6 = CFPreferencesCopyMultiple(v1, @"com.apple.celestial", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      CFPreferencesSetMultiple(v6, 0, @"com.apple.mediaexperience", v4, v5);
      if (v6)
      {
        CFRelease(v6);
      }
    }

    CFPreferencesSetMultiple(0, v1, @"com.apple.celestial", v4, v5);
    CFPreferencesSetValue(@"celestialToMediaExperienceDomainMigrationFullyCompleted", *MEMORY[0x1E695E4D0], @"com.apple.mediaexperience", v4, v5);
    CFPreferencesSynchronize(@"com.apple.mediaexperience", v4, v5);
    CFPreferencesSynchronize(@"com.apple.celestial", v4, v5);
  }
}

void MXCFPreferencesMigrateSilentModeUserPreferenceToMXDomain(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (MX_FeatureFlags_IsMXSilentModeEnabled(a1, a2))
  {
    if (CFPreferencesGetAppBooleanValue(@"ringerMutePreferenceToMediaExperienceDomainMigrationComplete", @"com.apple.mediaexperience", 0))
    {
      if (!dword_1EB75DE40)
      {
        return;
      }

      goto LABEL_4;
    }

    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFPreferenceBooleanWithDefault = FigGetCFPreferenceBooleanWithDefault();
    v5 = *MEMORY[0x1E695E4D0];
    if (CFPreferenceBooleanWithDefault)
    {
      v6 = *MEMORY[0x1E695E4D0];
    }

    else
    {
      v6 = *MEMORY[0x1E695E4C0];
    }

    v7 = *MEMORY[0x1E695E8B8];
    v8 = *MEMORY[0x1E695E898];
    CFPreferencesSetValue(@"silentModeEnabled", v6, @"com.apple.mediaexperience", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    CFPreferencesSetValue(@"ringerMutePreferenceToMediaExperienceDomainMigrationComplete", v5, @"com.apple.mediaexperience", v7, v8);
  }

  else if (dword_1EB75DE40)
  {
LABEL_4:
    v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

void CelesteGetRegionSpecificVolumeLimit(const __CFDictionary *a1)
{
  valuePtr = 1065353216;
  if (a1)
  {
    v2 = MGCopyAnswer();
    if (v2)
    {
      v3 = v2;
      Value = CFBooleanGetValue(v2);
      CFRelease(v3);
      if (Value)
      {
        gRegionSpecificLimitEnabled = 1;
        v5 = CFDictionaryGetValue(a1, @"HighVolumeLimit");
        if (v5)
        {
          v6 = v5;
          TypeID = CFNumberGetTypeID();
          if (TypeID == CFGetTypeID(v6))
          {
            CFNumberGetValue(v6, kCFNumberFloatType, &valuePtr);
          }
        }
      }
    }
  }
}

uint64_t FVCUtilitiesIsVolumeDifferenceAboveThreshold(float a1, float a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = a1 < 0.0;
  if (a1 >= 0.0)
  {
    v3 = a1;
  }

  else
  {
    v3 = 0.0;
  }

  if (a2 >= 0.0)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  if (v4 > 1.0)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = v4;
  }

  if (fabsf(a1) < 0.00000011921)
  {
    v2 = 1;
  }

  if (v3 > 1.0)
  {
    v6 = 1.0;
  }

  else
  {
    v6 = v3;
  }

  if (v3 > 1.0 || !v2)
  {
    v7 = a2 < 0.0;
    if (fabsf(a2) < 0.00000011921)
    {
      v7 = 1;
    }

    if (v4 > 1.0 || !v7)
    {
      v8 = fabsf(v5 + -1.0);
      if (fabsf(v6 + -1.0) >= 0.00000011921 && v8 >= 0.00000011921)
      {
        if (vabds_f32(v6, v5) < 0.009)
        {
          if (!dword_1EB75DEA0)
          {
            return 0;
          }

          goto LABEL_28;
        }

        return 1;
      }
    }
  }

  if (vabds_f32(v6, v5) >= 0.00000011921)
  {
    return 1;
  }

  if (dword_1EB75DEA0)
  {
LABEL_28:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

uint64_t FigVAEndpointGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigVAEndpointGetClassID_sRegisterFigVAEndpointBaseTypeOnce != -1)
  {
    FigVAEndpointGetClassID_cold_1();
  }

  return FigVAEndpointGetClassID_sFigVAEndpointClassID;
}

uint64_t __FigVAEndpointGetClassID_block_invoke()
{
  ClassID = FigEndpointGetClassID();

  return MEMORY[0x1EEDBC160](&FigVAEndpointGetClassID_sFigVAEndpointClassDesc, ClassID, 0, &FigVAEndpointGetClassID_sFigVAEndpointClassID);
}

__CFArray *CMSMUtility_CopyPlayingSessionsInfo()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v19 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v18 + 1) + 8 * i);
          if (objc_msgSend_isActive(v7))
          {
            if ([v7 isPlaying])
            {
              if (([v7 doesntActuallyPlayAudio] & 1) == 0)
              {
                v8 = CFDictionaryCreateMutable(v0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                if (v8)
                {
                  v9 = v8;
                  [objc_msgSend(v7 "ID")];
                  SInt64 = FigCFNumberCreateSInt64();
                  CFDictionarySetValue(v9, @"CMSessionID", SInt64);
                  if (SInt64)
                  {
                    CFRelease(SInt64);
                  }

                  CMSUtility_GetClientName(v7, v11);
                  FigCFDictionarySetValue();
                  CMSUtility_GetDisplayID(v7, v12);
                  FigCFDictionarySetValue();
                  CMSUtility_GetAudioCategory(v7, v13);
                  FigCFDictionarySetValue();
                  CMSUtility_GetAudioMode(v7, v14);
                  FigCFDictionarySetValue();
                  [v7 interruptionStyle];
                  SInt32 = FigCFNumberCreateSInt32();
                  CFDictionarySetValue(v9, @"InterruptionStyle", SInt32);
                  if (SInt32)
                  {
                    CFRelease(SInt32);
                  }

                  [v7 clientPriority];
                  v16 = FigCFNumberCreateSInt32();
                  FigCFDictionarySetValue();
                  if (v16)
                  {
                    CFRelease(v16);
                  }

                  CFArrayAppendValue(Mutable, v9);
                  CFRelease(v9);
                }
              }
            }
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v4);
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

uint64_t CMSMUtility_PostInterruptionEndedNotificationForAudioSessionID(uint64_t a1, int a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v3 = a1;
    v4 = [+[MXSessionManager sharedInstance](MXSessionManager copySessionWithAudioSessionID:"copySessionWithAudioSessionID:", a1];
    v5 = v4;
    if (v4)
    {
      if (a2)
      {
        v6 = @"resumable.MXSessionManager";
      }

      else
      {
        v6 = @"non-resumable.MXSessionManager";
      }

      if ([v4 waitingToResume])
      {
        if (dword_1EB75DE40)
        {
          v17 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtility_PostInterruptionCommandNotification(v5, 1u, @"MXSessionManager", v6, 0, 0, 0, 0);
      }

      else
      {
        v17 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      v9 = +[MXSessionManagerSidekick sharedInstance];
      v10 = [(MXSessionManagerSidekick *)v9 serialQueue];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __CMSMUtility_PostInterruptionEndedNotificationForAudioSessionID_block_invoke;
      v13[3] = &unk_1E7AEAF90;
      v13[4] = v9;
      v14 = v3;
      v15 = a2;
      MXDispatchAsync("CMSMUtility_PostInterruptionEndedNotificationForAudioSessionID", "CMSessionManager_Utilities.m", 293, 0, 0, v10, v13);
    }

    return 0;
  }

  else
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294951615;
  }
}

CFTypeRef CMSMUtility_GetCurrentDeviceIdentifierAtIndex(uint64_t a1)
{
  FigSimpleMutexLock();
  if (dword_1EB75E0C8 <= a1)
  {
    v2 = 0;
  }

  else
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, &v4);
    v2 = cf;
    if (cf)
    {
      CFRetain(cf);
      CFAutorelease(v2);
    }
  }

  FigSimpleMutexUnlock();
  return v2;
}

uint64_t CMSMUtility_GetCurrentInputPortAtIndex(uint64_t a1)
{
  v2 = dword_1EB75E0CC;
  FigSimpleMutexLock();
  if (v2 <= a1)
  {
    v3 = 0;
  }

  else
  {
    MXVW_GetCMSRouteInfoAt(qword_1EB75E0C0, a1, v5);
    v3 = v5[11];
  }

  FigSimpleMutexUnlock();
  return v3;
}

CFMutableStringRef CMSMUtility_CopyCurrentRouteTypesAsCFString()
{
  v0 = CMSMUtility_CopyCurrentRouteTypes();
  if (v0)
  {
    v1 = v0;
    Count = CFArrayGetCount(v0);
    Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v1, i);
        CFStringAppend(Mutable, ValueAtIndex);
        if (i < Count - 1)
        {
          CFStringAppend(Mutable, @"~");
        }
      }
    }

    CFRelease(v1);
    return Mutable;
  }

  else
  {
    v7 = *MEMORY[0x1E695E480];

    return CFStringCreateMutable(v7, 0);
  }
}

uint64_t CMSMUtility_SomeSessionHasDoNotResetAudioCategoryOnNextInactive()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v1)
  {
    v2 = *v6;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v6 != v2)
        {
          objc_enumerationMutation(v0);
        }

        if ([*(*(&v5 + 1) + 8 * i) doNotResetAudioCategoryOnNextInactive])
        {
          v1 = 1;
          goto LABEL_11;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v1;
}

uint64_t CMSMUtility_CopyCurrentPhoneCallIsRoutedViaCarBT()
{
  v19 = *MEMORY[0x1E69E9840];
  v0 = FigRoutingManagerCopyCarBluetoothIDs(qword_1EB75E190);
  v1 = CMSMUtility_CopyCurrentRouteTypes();
  if (!CMSMUtility_PhoneCallOrRingtoneExists())
  {
    goto LABEL_7;
  }

  if (FigCFArrayContainsValue())
  {
    CurrentDeviceIdentifierAtIndex = CMSMUtility_GetCurrentDeviceIdentifierAtIndex(0);
    if (cmsmIsDeviceIDIncludedInCarBluetoothIDs(CurrentDeviceIdentifierAtIndex, v0))
    {
      v3 = objc_alloc(MEMORY[0x1E696AD98]);
      v4 = 1;
      goto LABEL_21;
    }
  }

  if (FigCFArrayContainsValue() || !dword_1EB75E0C8)
  {
    v5 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(0, 0, 0, 0, 0, 0, 0x1F2893B50);
    if (v5)
    {
      v6 = v5;
      Count = CFArrayGetCount(v5);
      if (Count < 1)
      {
LABEL_16:
        v13 = 0;
      }

      else
      {
        v8 = Count;
        v9 = 0;
        while (1)
        {
          valuePtr[0] = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
          CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, valuePtr);
          if (vaeGetPortTypeFromPortID(valuePtr[0]) == 1885892706)
          {
            v11 = vaeCopyDeviceIdentifierFromVADPort(valuePtr[0]);
            IsDeviceIDIncludedInCarBluetoothIDs = cmsmIsDeviceIDIncludedInCarBluetoothIDs(v11, v0);
            if (v11)
            {
              CFRelease(v11);
            }

            if (IsDeviceIDIncludedInCarBluetoothIDs)
            {
              break;
            }
          }

          if (v8 == ++v9)
          {
            goto LABEL_16;
          }
        }

        v13 = 1;
      }

      CFRelease(v6);
    }

    else
    {
      v13 = 0;
    }

    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    v4 = v13;
  }

  else
  {
LABEL_7:
    v3 = objc_alloc(MEMORY[0x1E696AD98]);
    v4 = 0;
  }

LABEL_21:
  v14 = [v3 initWithBool:v4];
  v15 = CMSMUtility_CopyCurrentRouteIdentifiers();
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (v0)
  {
    CFRelease(v0);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v14;
}

CFArrayRef CMSMUtility_CopyDisplayIDsOfActiveSessions()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if (objc_msgSend_isActive(v7) && [v7 displayID] && !-[MXSessionManager isSpeechDetectCategory:](+[MXSessionManager sharedInstance](MXSessionManager, "sharedInstance"), "isSpeechDetectCategory:", objc_msgSend(v7, "audioCategory")))
        {
          CFArrayAppendValue(Mutable, [v7 displayID]);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  Copy = CFArrayCreateCopy(v0, Mutable);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

__CFArray *CMSMUtility_CreateOverridePortsList(int a1, int a2)
{
  valuePtr = a2;
  v13 = a1;
  if ((a1 + 1) <= 1 && a2 == 0)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (a2)
  {
    v7 = CFNumberCreate(v5, kCFNumberSInt32Type, &valuePtr);
    if (v7)
    {
      v8 = v7;
      CFArrayAppendValue(Mutable, v7);
      CFRelease(v8);
    }
  }

  if ((a1 - 1) <= 0xFFFFFFFD)
  {
    v9 = CFNumberCreate(v5, kCFNumberSInt32Type, &v13);
    if (v9)
    {
      v10 = v9;
      CFArrayAppendValue(Mutable, v9);
      CFRelease(v10);
    }
  }

  return Mutable;
}

__CFArray *CMSMUtility_CopyPlayingSessionsUsingRoutingContext(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (objc_msgSend_isActive(v7))
        {
          if ([v7 isPlaying])
          {
            [v7 routingContextUUID];
            if (FigCFEqual())
            {
              CFArrayAppendValue(Mutable, v7);
            }
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  return Mutable;
}

void *CMSMUtility_CopyMXCoreSessionWithID(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        if ([objc_msgSend(v7 "ID")] == a1)
        {
          v8 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

id CMSMUtility_CopyActiveMXCoreSessionEligibleForNowPlayingAppConsideration(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = *v9;
LABEL_4:
      v5 = 0;
      while (1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v8 + 1) + 8 * v5);
        if (objc_msgSend_isActive(v6))
        {
          [v6 displayID];
          if (FigCFEqual())
          {
            if (CMSUtility_GetIsEligibleForNowPlayingAppConsideration(v6))
            {
              break;
            }
          }
        }

        if (v3 == ++v5)
        {
          v3 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
          if (v3)
          {
            goto LABEL_4;
          }

          goto LABEL_12;
        }
      }
    }

    else
    {
LABEL_12:
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t CMSMUtility_IsSiriControllingRoutingAndNotVolume()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if ([v4 currentlyControllingFlags] & 2) != 0 && (objc_msgSend(v4, "currentlyControllingFlags") & 0x10) == 0 && (objc_msgSend(v4, "isTheAssistant"))
        {
          v1 = 1;
          goto LABEL_13;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v1;
}

void *CMSMUtility_GetPlayingPhoneCallOrRingtoneSession()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v8;
LABEL_3:
    v4 = 0;
    while (1)
    {
      if (*v8 != v3)
      {
        objc_enumerationMutation(v0);
      }

      v5 = *(*(&v7 + 1) + 8 * v4);
      if (([v5 hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v5)) && objc_msgSend_isActive(v5) && (objc_msgSend(v5, "isPlaying"))
      {
        break;
      }

      if (v2 == ++v4)
      {
        v2 = [v0 countByEnumeratingWithState:&v7 objects:v11 count:16];
        if (v2)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v5 = 0;
  }

  return v5;
}

void *CMSMUtility_CopyActiveSessionWithPhoneCallBehaviorOrRingtone()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (objc_msgSend_isActive(v5) && (([v5 hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v5)))
        {
          v6 = v5;
          goto LABEL_13;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v5 = 0;
LABEL_13:

  return v5;
}

void *CMSMUtility_CopyActiveSiriSession()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 isTheAssistant] && objc_msgSend_isActive(v5))
        {
          v6 = v5;
          goto LABEL_12;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v5 = 0;
LABEL_12:

  return v5;
}

uint64_t CMSMUtility_IsSomeOtherPhoneCallPrioritySessionActive(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        if (objc_msgSend_isActive(v7))
        {
          v8 = [v7 isIDSMXCoreSession];
          if (v7 != a1 && (v8 & 1) == 0 && [v7 hasPhoneCallBehavior] && objc_msgSend(v7, "clientPriority") == 10)
          {
            v9 = 1;
            goto LABEL_15;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_15:

  return v9;
}

uint64_t CMSMUtility_ActiveVideoConferenceExists()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (objc_msgSend_isActive(v5))
        {
          [v5 audioMode];
          if (FigCFEqual() || ([v5 audioMode], FigCFEqual()))
          {
            if (CMSMUtility_IsPlayAndRecordCategory([v5 audioCategory]))
            {
              v6 = 1;
              goto LABEL_14;
            }
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_14:

  return v6;
}

uint64_t CMSMUtility_IsSiriActive()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if ([v4 isTheAssistant] && (objc_msgSend_isActive(v4) & 1) != 0)
        {
          v1 = 1;
          goto LABEL_12;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v1;
}

uint64_t CMSMUtility_IsSiriRecording()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if ([v4 isTheAssistant] && objc_msgSend(v4, "isRecording") && (objc_msgSend_isActive(v4) & 1) != 0)
        {
          v1 = 1;
          goto LABEL_13;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v1;
}

uint64_t CMSMUtility_DoesSiriAllowMixableAudioWhileRecording()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if ([v4 isTheAssistant] && objc_msgSend(v4, "isRecording") && (objc_msgSend(v4, "allowMixableAudioWhileRecording") & 1) != 0)
        {
          v1 = 1;
          goto LABEL_13;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v1;
}

uint64_t CMSMUtility_DoesCurrentInputPortSupportSecureMicrophone()
{
  result = CMSMUtility_GetCurrentInputPortAtIndex(0);
  if (result)
  {

    return vaeDoesPortSupportSecureMicrophone(result);
  }

  return result;
}

uint64_t CMSMUtility_ShouldIgnorePlayCommandsFromAccessory()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if (objc_msgSend_isActive(v5))
        {
          if (([v5 hasPhoneCallBehavior] & 1) != 0 || CMSUtility_IsAudioCategoryRingtone(v5) || (objc_msgSend(v5, "isTheAssistant") & 1) != 0 || (objc_msgSend(v5, "audioCategory"), FigCFEqual()))
          {
            v6 = 1;
            goto LABEL_16;
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v6 = 0;
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v6 = 0;
  }

LABEL_16:

  return v6;
}

uint64_t CMSMUtility_SomeClientIsPlayingLongFormAudio()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if ([v4 isPlaying] && (objc_msgSend(v4, "doesntActuallyPlayAudio") & 1) == 0 && CMSUtility_IsSessionPlayingLongFormAudio(v4))
        {
          v1 = 1;
          goto LABEL_13;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v1;
}

uint64_t CMSMUtility_SomeClientIsPlayingToAirPlay()
{
  v17 = *MEMORY[0x1E69E9840];
  if (!FigVAEndpointManagerGetPropertyBoolean(qword_1EB75E090, 0x1F289B410))
  {
    return 0;
  }

  CMScreenGetScreenState();
  if (FigCFEqual())
  {
    return 0;
  }

  CMScreenGetScreenType();
  if (!FigCFEqual())
  {
    return 0;
  }

  v14 = 0;
  cf = 0;
  FigRoutingManagerContextUtilities_CopyPickedEndpointAtIndex([+[MXSessionManager systemMirroringRoutingContextUUID] sharedInstance];
  if (cf)
  {
    CMBaseObject = FigEndpointGetCMBaseObject();
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v3)
    {
      v3(CMBaseObject, *MEMORY[0x1E6961F90], *MEMORY[0x1E695E480], &v14);
    }
  }

  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 isPlaying] && (!objc_msgSend(v9, "doesntActuallyPlayAudio") || FigCFEqual()) && CMSUtility_IsPlayingToDefaultVAD(v9))
        {
          v0 = 1;
          goto LABEL_22;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v0 = 0;
LABEL_22:

  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v0;
}

uint64_t CMSMUtility_IsAnyVoicePromptSessionThatDoesNotControlHardwareActive()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        [v5 audioMode];
        if (FigCFEqual() && [v5 dontTakeOverHardware] && (objc_msgSend_isActive(v5) & 1) != 0)
        {
          v6 = 1;
          goto LABEL_13;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

  v6 = 0;
LABEL_13:

  return v6;
}

uint64_t CMSMUtility_IsAirPlayVideoActive()
{
  v10 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v5 = 0u;
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
  if (v1)
  {
    v2 = *v6;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v6 != v2)
        {
          objc_enumerationMutation(v0);
        }

        if ([*(*(&v5 + 1) + 8 * i) isActiveOverAirPlayVideo])
        {
          v1 = 1;
          goto LABEL_11;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v5 objects:v9 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v1;
}

uint64_t CMSMUtility_UpdateSomeLongFormVideoClientIsActiveOverAirPlayVideo()
{
  v13 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = byte_1EB75E0A8;
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 isActiveOverAirPlayVideo] && (objc_msgSend(v5, "isAudioOnlyAirPlayVideoActive") & 1) == 0 && (objc_msgSend(v5, "isLongFormVideo") & 1) != 0)
        {
          LODWORD(v2) = 1;
          goto LABEL_13;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  byte_1EB75E0A8 = v2;
  result = FigSimpleMutexUnlock();
  if (v2 != v0)
  {
    result = CMSMNotificationUtility_PostSomeLongFormVideoClientIsActiveOverAirPlayVideoDidChange(v2);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t CMSMUtility_UpdateSomeLongFormVideoClientIsPlayingOverAirPlayVideo()
{
  v13 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = byte_1EB75E0A9;
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 isActiveOverAirPlayVideo] && (objc_msgSend(v5, "isAudioOnlyAirPlayVideoActive") & 1) == 0 && objc_msgSend(v5, "isPlaying") && (objc_msgSend(v5, "isLongFormVideo") & 1) != 0)
        {
          LODWORD(v2) = 1;
          goto LABEL_14;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  byte_1EB75E0A9 = v2;
  result = FigSimpleMutexUnlock();
  if (v2 != v0)
  {
    result = CMSMNotificationUtility_PostSomeLongFormVideoClientIsPlayingOverAirPlayVideoDidChange(v2);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t CMSMUtility_UpdateSomeLongFormVideoClientIsPlaying()
{
  v13 = *MEMORY[0x1E69E9840];
  FigSimpleMutexLock();
  v0 = byte_1EB75E0AA;
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v2)
  {
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 isPlaying] && (objc_msgSend(v5, "isLongFormVideo") & 1) != 0)
        {
          LODWORD(v2) = 1;
          goto LABEL_12;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  byte_1EB75E0AA = v2;
  result = FigSimpleMutexUnlock();
  if (v2 != v0)
  {
    result = CMSMNotificationUtility_PostSomeLongFormVideoClientIsPlayingDidChange(v2);
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      return fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return result;
}

uint64_t CMSMUtility_IsAnyLongFormVideoSessionPlayingOverAirPlayVideo()
{
  FigSimpleMutexLock();
  v0 = byte_1EB75E0A9;
  FigSimpleMutexUnlock();
  return v0;
}

BOOL CMSMUtility_AllowedToUseGPSInBackground(const __CFArray *a1)
{
  v3.length = CFArrayGetCount(a1);
  v3.location = 0;
  return CFArrayContainsValue(a1, v3, @"location") != 0;
}

uint64_t CMSMUtility_CarPlayIsPlayingLongerDurationSession()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = CMSMUtility_CopyCarPlaySession();
  if (v0)
  {

    FigSimpleMutexLock();
    v1 = FigEndpointCentralEntityHoldsResource(qword_1EB75E178, 0x1F288E5F0, 0x1F2899C50);
    ResourceTypeBorrowConstraint = FigEndpointCentralGetResourceTypeBorrowConstraint(qword_1EB75E178, 0x1F2899C50);
    FigSimpleMutexUnlock();
    if (v1 && ResourceTypeBorrowConstraint == 1000)
    {
      v3 = 1;
    }

    else
    {
      v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
      v10 = 0u;
      v11 = 0u;
      v12 = 0u;
      v13 = 0u;
      v3 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        v5 = *v11;
        while (2)
        {
          for (i = 0; i != v3; ++i)
          {
            if (*v11 != v5)
            {
              objc_enumerationMutation(v4);
            }

            v7 = *(*(&v10 + 1) + 8 * i);
            if (objc_msgSend_isActive(v7) && (CMSUtility_IsAudioCategoryVoicemail(v7) || ([v7 hasPhoneCallBehavior] & 1) != 0))
            {
              v3 = 1;
              goto LABEL_18;
            }
          }

          v3 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
          if (v3)
          {
            continue;
          }

          break;
        }
      }

LABEL_18:
    }
  }

  else
  {
    v3 = 0;
  }

  if (v3 != CMSMUtility_CarPlayIsPlayingLongerDurationSession_cachedIsPlayingLongerDurationSession)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CMSMUtility_CarPlayIsPlayingLongerDurationSession_cachedIsPlayingLongerDurationSession = v3;
  }

  return v3;
}

uint64_t CMSMUtility_IsCarPlayVideoActive()
{
  v0 = CMSMUtility_CopySystemAudioRoutingContextUUID();
  v1 = FigRoutingManagerCopyActivatedCarPlayEndpoint(v0);
  if (v1)
  {
    IsAirPlayVideoActive = CMSMUtility_IsAirPlayVideoActive();
    if (!v0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  IsAirPlayVideoActive = 0;
  if (v0)
  {
LABEL_3:
    CFRelease(v0);
  }

LABEL_4:
  if (v1)
  {
    CFRelease(v1);
  }

  return IsAirPlayVideoActive;
}

uint64_t CMSMUtility_CopyFigStarkModeController(void *a1)
{
  v9[20] = *MEMORY[0x1E69E9840];
  if (a1 && (v9[0] = 0, qword_1EB75E178) && (v2 = CFRetain(qword_1EB75E178)) != 0)
  {
    v3 = v2;
    v4 = FigEndpointCentralCopyStarkModeController(v2, v9);
    v5 = v4;
    if (v4)
    {
      CMSMUtility_CopyFigStarkModeController_cold_1(v4, v9);
    }

    else
    {
      if (dword_1EB75DE40)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      *a1 = v9[0];
      v9[0] = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294954315;
  }

  return v5;
}

void CMSMUtility_ReassignHWControlFlagsAfterMusicVADDestruction()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v18;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v18 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_isActive(v5))
        {
          CMSUtility_GetCurrentAudioDestination(v5);
          if (FigCFEqual())
          {
            if (([v5 prefersToTakeHWControlFlagsFromAnotherSession] & 1) == 0 && (objc_msgSend(v5, "currentlyControllingFlags") & 2) != 0)
            {
              if (v5)
              {
                v15 = 0u;
                v16 = 0u;
                v13 = 0u;
                v14 = 0u;
                v6 = [v0 countByEnumeratingWithState:&v13 objects:v21 count:16];
                if (v6)
                {
                  v7 = v6;
                  v8 = *v14;
                  v12 = v0;
                  do
                  {
                    for (j = 0; j != v7; ++j)
                    {
                      if (*v14 != v8)
                      {
                        objc_enumerationMutation(v0);
                      }

                      v10 = *(*(&v13 + 1) + 8 * j);
                      if (objc_msgSend_isActive(v10))
                      {
                        CMSUtility_GetCurrentAudioDestination(v10);
                        if (FigCFEqual())
                        {
                          if ([v10 prefersToTakeHWControlFlagsFromAnotherSession] && ((objc_msgSend(v10, "hwControlFlags") & 2) != 0 || (objc_msgSend(v10, "hwControlFlags") & 0x20000) != 0))
                          {
                            if (dword_1EB75DE40)
                            {
                              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
                              fig_log_call_emit_and_clean_up_after_send_and_compose();
                              v0 = v12;
                            }

                            cmsTryToTakeControl(v10);
                          }
                        }
                      }
                    }

                    v7 = [v0 countByEnumeratingWithState:&v13 objects:v21 count:16];
                  }

                  while (v7);
                }
              }

              goto LABEL_29;
            }
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_29:
}

float CMSMUtility_GetVoiceOverDuckFadeDuration()
{
  if ((CMSMUtility_GetVoiceOverDuckFadeDuration_gCheckedVoiceOverDuckFadeDuration & 1) == 0)
  {
    keyExistsAndHasValidFormat = 0;
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"voiceover_duckfadeduration_ms", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat)
    {
      *&CMSMUtility_GetVoiceOverDuckFadeDuration_gVoiceOverDuckFadeDuration = AppIntegerValue / 1000.0;
    }

    CMSMUtility_GetVoiceOverDuckFadeDuration_gCheckedVoiceOverDuckFadeDuration = 1;
  }

  return *&CMSMUtility_GetVoiceOverDuckFadeDuration_gVoiceOverDuckFadeDuration;
}

void CMSMUtility_CreateTokensFromDeviceUID(CFStringRef theString, unint64_t a2, unint64_t a3)
{
  if (a2 | a3)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    if (theString)
    {
      v6 = CFStringFind(theString, @"-", 4uLL);
      Length = CFStringGetLength(theString);
      if (v6.length <= 0)
      {
        v11.length = Length;
        v10 = 0;
        v9 = *MEMORY[0x1E695E480];
      }

      else
      {
        v8 = CFStringGetLength(theString);
        v9 = *MEMORY[0x1E695E480];
        v14.location = v6.location + 1;
        v14.length = v8 + ~v6.location;
        v10 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v14);
        v11.length = v6.location;
      }

      v11.location = 0;
      v12 = CFStringCreateWithSubstring(v9, theString, v11);
      if (a2)
      {
        *a2 = v12;
        v12 = 0;
      }

      if (a3)
      {
        *a3 = v10;
        v10 = 0;
      }

      if (v12)
      {
        CFRelease(v12);
      }

      if (v10)
      {

        CFRelease(v10);
      }
    }
  }
}

const __CFString *CMSMUtility_CFStringEqualCaseInsensitive(const __CFString *result, const __CFString *a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (result)
  {
    return (CFStringCompare(result, a2, 1uLL) == kCFCompareEqualTo);
  }

  return result;
}

__CFString *CMSMUtility_CreateFormattedDateAndTime()
{
  v0 = CFCalendarCopyCurrent();
  v6 = 0;
  v7 = 0;
  v5 = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v2 = Mutable;
  if (v0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    CFCalendarDecomposeAbsoluteTime(v0, Current, "yMdHms", &v7 + 4, &v7, &v6 + 4, &v6, &v5 + 4, &v5);
    CFStringAppendFormat(v2, 0, @"%d/%d/%d-%.2d:%.2d:%.2d", v7, HIDWORD(v6), HIDWORD(v7), v6, HIDWORD(v5), v5);
    CFRelease(v0);
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"%d/%d/%d-%.2d:%.2d:%.2d", 0, 0, 0, 0, 0, 0);
  }

  return v2;
}

CFIndex CMSMUtility_PrintRouteDescriptions(int a1, CFArrayRef theArray)
{
  if (theArray)
  {
    return CFArrayGetCount(theArray);
  }

  return result;
}

CFTypeRef CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary()
{
  v3[1] = *MEMORY[0x1E69E9840];
  result = CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour;
  if (CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour)
  {
    return CFRetain(result);
  }

  v3[0] = @"VirtualAudioDevice_Default";
  v1 = *MEMORY[0x1E695E480];
  v2 = CFArrayCreate(*MEMORY[0x1E695E480], v3, 1, MEMORY[0x1E695E9C0]);
  CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour = CFDictionaryCreateMutable(v1, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour, @"AudioBehaviour_Destination", v2);
  CFDictionarySetValue(CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour, @"AudioBehaviour_Stream", @"Stream_Primary");
  if (v2)
  {
    CFRelease(v2);
  }

  result = CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour;
  if (CMSMUtility_CopyVoiceOverOverBTLEAudioDictionary_audioBehaviour)
  {
    return CFRetain(result);
  }

  return result;
}

float CMSMUtility_GetFadeInDurationForPlaybackHandoff()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsHandoffEnabled())
  {
    return 0.0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  gFadeInDurationAppliedForPlaybackHandoff = 1;
  return 0.5;
}

const char *CMSMUtility_GetVolumeOperationName(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_1E7AEB158[a1 - 1];
  }
}

__CFString *CMSMUtility_GetStringForRouteControlFeatures(unsigned int a1)
{
  if (a1 > 2)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_1E7AEB1C8[a1];
  }
}

CFTypeRef CMSMUtility_CopyMostRelevantAirPlayAudioModeForRoutingContext(uint64_t a1)
{
  v1 = CMSMUtility_CopyPlayingSessionsUsingRoutingContext(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count < 1)
  {
    goto LABEL_16;
  }

  v4 = Count;
  v5 = 0;
  v6 = 0;
  v7 = *MEMORY[0x1E6962508];
  v8 = *MEMORY[0x1E6962500];
  v9 = *MEMORY[0x1E6962510];
  do
  {
    v10 = v6;
    ValueAtIndex = CFArrayGetValueAtIndex(v2, v5);
    [ValueAtIndex audioCategory];
    if (FigCFEqual())
    {
      [ValueAtIndex audioMode];
      v12 = FigCFEqual();
      v6 = v7;
      if (!v12)
      {
        [ValueAtIndex audioMode];
        v13 = FigCFEqual();
        v6 = v8;
        if (v13)
        {
          v6 = v9;
          if (v10)
          {
            v14 = FigCFEqual();
            v6 = v9;
            if (!v14)
            {
              v6 = v8;
            }
          }
        }
      }
    }

    else if (v10)
    {
      v6 = v10;
    }

    else
    {
      v6 = v8;
    }

    ++v5;
  }

  while (v4 != v5);
  if (v6)
  {
    v15 = CFRetain(v6);
  }

  else
  {
LABEL_16:
    v15 = 0;
  }

  CFRelease(v2);
  return v15;
}

uint64_t CMSMUtility_ChangeMainVolumeForSession(void *a1, int a2, uint64_t a3, int a4, float *a5, float a6)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  FigVolumeControllerCopySharedController(cf);
  v25 = 0;
  FigRoutingManagerContextUtilities_CopyRoutingContextForContextUUID([a1 routingContextUUID], &v25);
  v10 = 0;
  if (a4 > 10)
  {
    if (a4 == 12)
    {
      goto LABEL_9;
    }

    if (a4 != 11)
    {
      goto LABEL_21;
    }

LABEL_7:
    v12 = v25;
    v11 = cf[0];
    v13 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v13)
    {
      v10 = v13(v11, v12, a6);
    }

    else
    {
      v10 = 4294954514;
    }

    v18 = v25;
    v17 = cf[0];
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v19)
    {
      v19(v17, v18, a5);
    }

    if (dword_1EB75DE40)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  if (a4 == 1)
  {
    goto LABEL_7;
  }

  if (a4 != 2)
  {
    goto LABEL_21;
  }

LABEL_9:
  v15 = v25;
  v14 = cf[0];
  v16 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v16)
  {
    v10 = v16(v14, v15, a6);
  }

  else
  {
    v10 = 4294954514;
  }

  v21 = v25;
  v20 = cf[0];
  v22 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (v22)
  {
    v22(v20, v21, a5);
  }

  if (dword_1EB75DE40)
  {
LABEL_20:
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_21:
  if (cf[0])
  {
    CFRelease(cf[0]);
    cf[0] = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  return v10;
}

uint64_t CMSMUtility_UpdateAudioBehaviourForSessionsUsingRoutingContextUUID(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        [v6 routingContextUUID];
        if (FigCFEqual())
        {
          cmsUpdateAudioBehavior(v6, v7);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  return 0;
}

uint64_t CMSMUtility_SetNonLongFormMediaApps(const __CFArray *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  FigSimpleMutexLock();
  v3 = qword_1EB75E1C8;
  qword_1EB75E1C8 = a1;
  if (a1)
  {
    CFRetain(a1);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  return FigSimpleMutexUnlock();
}

uint64_t CMSMUtility_InterruptSessionsWithRoutingContextUUID(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        [v6 routingContextUUID];
        if (FigCFEqual() && objc_msgSend_isActive(v6) && [v6 isPlaying])
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommand(v6, 0);
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  return 0;
}

uint64_t CMSMUtility_InterruptActiveSiriSession()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v9;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v9 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v8 + 1) + 8 * i);
        if ([v5 isTheAssistant] && objc_msgSend_isActive(v5))
        {
          if (dword_1EB75DE40)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          CMSUtilityApplier_PostNotification_StopCommand(v5, 0);
          goto LABEL_14;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  return 0;
}

uint64_t CMSMUtility_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlerts()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if (objc_msgSend_isActive(v4) && ([v4 prefersNoInterruptionsByRingtonesAndAlerts] & 1) != 0)
        {
          v1 = 1;
          goto LABEL_12;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v1;
}

uint64_t CMSMUtility_IsAnyActiveSessionRoutedToDestination(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        if (objc_msgSend_isActive(v6))
        {
          CMSUtility_GetCurrentAudioDestination(v6);
          if (FigCFEqual())
          {
            v7 = 1;
            goto LABEL_12;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  v7 = 0;
LABEL_12:

  return v7;
}

CFMutableArrayRef CMSMUtility_CopyActiveClientPIDsThatHideTheSpeechDetectionDevice()
{
  v17 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v13;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v13 != v3)
        {
          objc_enumerationMutation(v0);
        }

        v5 = *(*(&v12 + 1) + 8 * i);
        if (objc_msgSend_isActive(v5))
        {
          VADCategoryFromFigCategoryName = CMSMVAUtility_GetVADCategoryFromFigCategoryName([v5 audioCategory]);
          VADModeFromFigModeName = CMSMVAUtility_GetVADModeFromFigModeName([v5 audioMode]);
          v8 = vaemCopyActivePortsListForRouteConfigurationScopeAndDevice(VADCategoryFromFigCategoryName, VADModeFromFigModeName, [v5 activationContext], objc_msgSend(v5, "allowedPortTypes"), objc_msgSend(v5, "prefersBluetoothHighQualityContentCapture"), 1, 0x1F28978D0);
          if (v8)
          {
            v9 = v8;
            if (!CFArrayGetCount(v8))
            {
              [objc_msgSend(v5 "clientPID")];
              FigCFArrayAppendInt32();
            }

            CFRelease(v9);
          }

          else
          {
            [objc_msgSend(v5 "clientPID")];
            FigCFArrayAppendInt32();
          }
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v2);
  }

  return Mutable;
}

uint64_t CMSMUtility_IsIDSSessionActive()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v1)
  {
    v2 = *v7;
    while (2)
    {
      for (i = 0; i != v1; ++i)
      {
        if (*v7 != v2)
        {
          objc_enumerationMutation(v0);
        }

        v4 = *(*(&v6 + 1) + 8 * i);
        if (objc_msgSend_isActive(v4) && ([v4 isIDSMXCoreSession] & 1) != 0)
        {
          v1 = 1;
          goto LABEL_12;
        }
      }

      v1 = [v0 countByEnumeratingWithState:&v6 objects:v10 count:16];
      if (v1)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v1;
}

uint64_t CMSMUtility_HandOverInterruptionsToSession(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 interruptingSession] == a1 && objc_msgSend(v9, "waitingToResume"))
        {
          [v9 setInterruptingSession:a2];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([a2 triggeredRemoteInterruption])
  {
    v10 = 1;
  }

  else
  {
    v10 = [a1 triggeredRemoteInterruption];
  }

  [a2 setTriggeredRemoteInterruption:v10];
  return [a1 setTriggeredRemoteInterruption:0];
}

void CMSMUtility_UpdateSupportedOutputChannelLayouts(void *a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v1 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:{objc_msgSend(a1, "valueForKey:", @"SupportedAudioCapabilities_SupportedChannelLayoutTags"}];
    v2 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = *v30;
      v22 = v2;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v30 != v6)
          {
            objc_enumerationMutation(v2);
          }

          v8 = *(*(&v29 + 1) + 8 * i);
          if (objc_msgSend_isActive(v8) && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v8))
          {
            if (dword_1EB75DE40)
            {
              v28 = 0;
              type = OS_LOG_TYPE_DEFAULT;
              os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              v2 = v22;
            }

            [v8 setSupportedOutputChannelLayouts:v1];
            CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange(v8);
            v5 = 1;
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v4);

      if (v5)
      {
        goto LABEL_38;
      }
    }

    else
    {
    }

    if (dword_1EB75DE40)
    {
      v28 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    cf[0] = 0;
    FigRoutingManagerContextUtilities_CopySystemMusicContextUUID(cf);
    FigRoutingManagerContextUtilities_CacheSupportedOutputChannelLayouts(cf[0], v1);
    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    goto LABEL_38;
  }

  v1 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = [v1 countByEnumeratingWithState:&v23 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v1);
        }

        v14 = *(*(&v23 + 1) + 8 * j);
        if ([objc_msgSend(v14 "supportedOutputChannelLayouts")])
        {
          if (dword_1EB75DE40)
          {
            v28 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            v16 = v28;
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
              v19 = [v14 clientName];
              v34 = 136315394;
              v35 = "CMSMUtility_UpdateSupportedOutputChannelLayouts";
              v36 = 2114;
              v37 = v19;
              LODWORD(v21) = 22;
              _os_log_send_and_compose_impl(v18, 0, cf, 128, &dword_1B17A2000, v15, v17, "-CMSMUtilities- %s: Clearing SupportedOutputChannelLayouts to session %{public}@ ", &v34, v21);
            }

            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          [v14 setSupportedOutputChannelLayouts:{objc_msgSend(MEMORY[0x1E695DEC8], "array")}];
          CMSMNotificationUtility_PostSupportedBufferedAudioCapabilitiesDidChange(v14);
        }
      }

      v11 = [v1 countByEnumeratingWithState:&v23 objects:v33 count:16];
    }

    while (v11);
  }

LABEL_38:
}

void CMSMUtility_UpdateBadgeType()
{
  v23 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = 0;
    v4 = *v18;
    do
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v18 != v4)
        {
          objc_enumerationMutation(v0);
        }

        v6 = *(*(&v17 + 1) + 8 * i);
        if (objc_msgSend_isActive(v6) && CMSUtility_SessionCanBeAndAllowedToBeNowPlayingApp(v6))
        {
          v7 = [v6 copyMXSessionList];
          v13 = 0u;
          v14 = 0u;
          v15 = 0u;
          v16 = 0u;
          v8 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
          if (v8)
          {
            v9 = v8;
            v10 = *v14;
            do
            {
              for (j = 0; j != v9; ++j)
              {
                if (*v14 != v10)
                {
                  objc_enumerationMutation(v7);
                }

                [*(*(&v13 + 1) + 8 * j) updateBadgeType];
              }

              v9 = [v7 countByEnumeratingWithState:&v13 objects:v21 count:16];
            }

            while (v9);
          }

          v3 = 1;
        }
      }

      v2 = [v0 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v2);
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 1) == 0)
  {
    if (dword_1EB75DE40)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }
}

uint64_t CMSMUtility_IsAnyMXSessionPlayingWithEachMutePriority()
{
  v33 = *MEMORY[0x1E69E9840];
  v0 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v1 = [v0 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v1)
  {
    v2 = v1;
    v22 = 0;
    v3 = 0;
    v4 = 0;
    v5 = *v28;
    v19 = *v28;
    v20 = v0;
    do
    {
      v6 = 0;
      v21 = v2;
      do
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v0);
        }

        v7 = *(*(&v27 + 1) + 8 * v6);
        if (objc_msgSend_isActive(v7) && [v7 isPlaying] && !objc_msgSend(v7, "shadowingAudioSessionID") && !CMSUtility_GetOptOutOfMutePriority(v7))
        {
          v8 = [v7 copyMXSessionList];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v24;
            do
            {
              v12 = 0;
              do
              {
                if (*v24 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v23 + 1) + 8 * v12);
                v14 = [v13 getMutePriority];
                v15 = v14;
                if (v4 || ([v14 isEqualToString:@"MutePriority_One"] & 1) == 0)
                {
                  if ([v13 getIsPlaying] && objc_msgSend(v13, "getActuallyPlaysAudio") && (objc_msgSend(v15, "isEqualToString:", @"MutePriority_One") & 1) == 0)
                  {
                    if (v3 || ([v15 isEqualToString:@"MutePriority_Two"] & 1) == 0)
                    {
                      if (HIDWORD(v22) || ([v15 isEqualToString:@"MutePriority_Three"] & 1) == 0)
                      {
                        if (!v22)
                        {
                          LODWORD(v22) = [v15 isEqualToString:@"MutePriority_Four"];
                        }
                      }

                      else
                      {
                        HIDWORD(v22) = 1;
                      }
                    }

                    else
                    {
                      v3 = 1;
                    }
                  }
                }

                else
                {
                  v4 = 1;
                }

                ++v12;
              }

              while (v10 != v12);
              v16 = [v8 countByEnumeratingWithState:&v23 objects:v31 count:16];
              v10 = v16;
            }

            while (v16);
          }

          v5 = v19;
          v0 = v20;
          v2 = v21;
        }

        ++v6;
      }

      while (v6 != v2);
      v2 = [v0 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v2);
  }

  else
  {
    v22 = 0;
    v3 = 0;
    v4 = 0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return (HIDWORD(v22) << 16) | (v22 << 24) | (v3 << 8) | v4;
}

uint64_t CMSMUtility_AudioToolboxHandleInterruptionCommandWithMXSessionID(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  if (off_1EB75E068)
  {
    v10 = off_1EB75E068;
    ClientPID = CMSUtility_GetClientPID(a1);
    v7 = [a1 audioSessionID];

    return v10(ClientPID, v7, a2, a3, 0);
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

uint64_t CMSMUtility_AudioToolboxServerRefreshMuteState()
{
  v3 = *MEMORY[0x1E69E9840];
  v0 = off_1EB75E088;
  if (off_1EB75E088)
  {

    return v0();
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294951609;
  }
}

__CFArray *CMSMUtility_CopyActiveCoreSessionsShadowingAudioSessionID(int a1)
{
  v15 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (Mutable)
  {
    v3 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v10 + 1) + 8 * i);
          if (objc_msgSend_isActive(v8) && [v8 shadowingAudioSessionID] && objc_msgSend(v8, "shadowingAudioSessionID") == a1)
          {
            CFArrayAppendValue(Mutable, v8);
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v5);
    }

    if (!CFArrayGetCount(Mutable))
    {
      CFRelease(Mutable);
      return 0;
    }
  }

  return Mutable;
}

void CMSMUtility_PostStopCommandToShadowingSessionsForSession(void *a1, unsigned __int8 a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v2 = CMSMUtility_CopyActiveCoreSessionsShadowingAudioSessionID([a1 audioSessionID]);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(__CFArray *)v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        if (dword_1EB75DE40)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        CMSUtilityApplier_PostNotification_StopCommand(v7, &v13);
      }

      v4 = [(__CFArray *)v2 countByEnumeratingWithState:&v9 objects:v14 count:16];
    }

    while (v4);
  }

  if (v2)
  {
    CFRelease(v2);
  }
}

void CMSMUtility_PostNotifyStyleFadeOutAppliedForPlaybackHandoff()
{
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff();
    if (gValidFadeOutAppliedForPlaybackHandoffToken)
    {
      if (gFadeOutDurationAppliedForPlaybackHandoff)
      {
        v0 = 1000;
      }

      else
      {
        v0 = 0;
      }

      notify_set_state(gFadeOutAppliedForPlaybackHandoffToken, v0);

      notify_post("com.apple.mediaexperience.fadeoutappliedforplaybackhandoff");
    }
  }
}

void cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff()
{
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    if (cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff_onceToken != -1)
    {
      cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff_cold_1();
    }
  }
}

void CMSMUtility_PostNotifyStyleFadeInAppliedForPlaybackHandoff()
{
  if (MX_FeatureFlags_IsHandoffEnabled())
  {
    cmsmUtility_InitializeNotifyStyleTokensForPlaybackHandoff();
    if (gValidFadeInAppliedForPlaybackHandoffToken)
    {
      if (gFadeInDurationAppliedForPlaybackHandoff)
      {
        v0 = 500;
      }

      else
      {
        v0 = 0;
      }

      notify_set_state(gFadeInAppliedForPlaybackHandoffToken, v0);

      notify_post("com.apple.mediaexperience.fadeinappliedforplaybackhandoff");
    }
  }
}

float CMSMUtility_GetFadeOutDurationForPlaybackHandoff()
{
  v2 = *MEMORY[0x1E69E9840];
  if (!MX_FeatureFlags_IsHandoffEnabled())
  {
    return 0.0;
  }

  if (dword_1EB75DE40)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  gFadeOutDurationAppliedForPlaybackHandoff = 1;
  return 1.0;
}

void CMSMUtility_ApplyPIDToInheritAppStateFrom(int a1, uint64_t a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v27 = a1;
  v4 = [+[MXSessionManager sharedInstance](MXSessionManager copyMXCoreSessionList];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    v19 = a2;
    v18 = v4;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        if ([objc_msgSend(v9 "clientPID")] == a1 && objc_msgSend(v9, "pidToInheritAppStateFrom") != a2)
        {
          v10 = [v9 pidToInheritAppStateFrom];
          [v9 setPidToInheritAppStateFrom:a2];
          MX_RunningBoardServices_StartMonitoringForPID(a2);
          if (v10 >= 1)
          {
            v22 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            a2 = v19;
            v4 = v18;
          }
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v6);
  }

  valuePtr[0] = MX_RunningBoardServices_GetApplicationStateForPID(a2, 0);
  v12 = *MEMORY[0x1E695E480];
  v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, valuePtr);
  v14 = CFNumberCreate(v12, kCFNumberSInt32Type, &v27);
  v16 = v14;
  if (v14)
  {
    v14 = CFRetain(v14);
  }

  if (v13)
  {
    v14 = CFRetain(v13);
  }

  v17 = MXGetSerialQueue(v14, v15);
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __CMSMUtility_ApplyPIDToInheritAppStateFrom_block_invoke;
  v20[3] = &__block_descriptor_48_e5_v8__0l;
  v20[4] = v16;
  v20[5] = v13;
  MXDispatchAsync("CMSMUtility_ApplyPIDToInheritAppStateFrom", "CMSessionManager_Utilities.m", 5877, 0, 0, v17, v20);
  if (v13)
  {
    CFRelease(v13);
  }

  if (v16)
  {
    CFRelease(v16);
  }
}