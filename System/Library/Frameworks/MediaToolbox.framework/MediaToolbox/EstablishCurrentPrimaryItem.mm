@interface EstablishCurrentPrimaryItem
@end

@implementation EstablishCurrentPrimaryItem

double __fpic_EstablishCurrentPrimaryItem_block_invoke(void *a1, double result)
{
  v89 = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  v4 = *(a1[6] + 160);
  if (v3 != v4 && v4 != 0)
  {
    SeekableRange = fpic_DisengageFromPrimaryItem(a1[7], a1[8], (*(a1[4] + 8) + 24));
    v3 = a1[5];
    v4 = *(a1[6] + 160);
  }

  if (v3)
  {
    v7 = v3 == v4;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_24;
  }

  value = *MEMORY[0x1E695E4C0];
  v88[0].value = *MEMORY[0x1E695E4C0];
  v9 = *MEMORY[0x1E695E480];
  FigPlaybackItemGetFigBaseObject();
  v11 = v10;
  v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v12 || ((v13 = v12(v11, @"BasicsReadyForInspection", v9, v88), value = v88[0].value, !v13) ? (v14 = *MEMORY[0x1E695E4D0] == v88[0].value) : (v14 = 0), !v14))
  {
    v15 = 1;
    if (!value)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v86[0] = 0;
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 152);
  if (v27)
  {
    v28 = v27(v3, v86);
    v29 = v86[0];
    if (v28)
    {
      v30 = 1;
    }

    else
    {
      v30 = v86[0] == 0;
    }

    if (v30)
    {
      v31 = 0;
    }

    else
    {
      LODWORD(cf.value) = 0;
      VTable = CMBaseObjectGetVTable();
      v33 = *(*(VTable + 16) + 8);
      if (v33)
      {
        if (v33(v29, @"MediaSelectionArray", &cf, 0, 0))
        {
          v34 = 0;
        }

        else
        {
          v34 = LODWORD(cf.value) == 2;
        }

        v31 = v34;
      }

      else
      {
        v31 = 0;
      }

      v29 = v86[0];
    }

    if (v29)
    {
      CFRelease(v29);
    }
  }

  else
  {
    v31 = 0;
  }

  value = v88[0].value;
  v15 = v31 == 0;
  if (v88[0].value)
  {
LABEL_16:
    CFRelease(value);
  }

LABEL_17:
  v3 = a1[5];
  if (!v15)
  {
    v16 = a1[7];
    v17 = a1[8];
    v18 = *(a1[4] + 8);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    cf.value = 0;
    PrimaryPlayerAndCopyWrapper = fpic_GetPrimaryPlayerAndCopyWrapper(v16, &cf);
    v83 = 0;
    v84 = 0;
    v81 = 0;
    v82 = 0;
    v80 = 1.0;
    v21 = *(DerivedStorage + 160);
    if (v21 != v3)
    {
      v35 = PrimaryPlayerAndCopyWrapper;
      if (v21)
      {
        fpic_DisengageFromPrimaryItem(v16, v17, (v18 + 24));
      }

      v36 = 0;
      *(DerivedStorage + 1196) = 0;
      *(DerivedStorage + 1176) = 0u;
      if (v3)
      {
        v36 = CFRetain(v3);
      }

      *(DerivedStorage + 160) = v36;
      if (dword_1EAF178D0)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v45 = *(*(CMBaseObjectGetVTable() + 16) + 152);
      if (v45 && !v45(v3, &v81) && v81)
      {
        FigAssetGetCMBaseObject();
        v58 = v57;
        v59 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v59)
        {
          v59(v58, @"assetProperty_InstanceUUID", v9, DerivedStorage + 168);
        }

        if (v81)
        {
          CFRelease(v81);
        }
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      FigPlaybackItemGetFigBaseObject();
      v47 = v46;
      v48 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v48)
      {
        v48(v47, @"Timebase", v9, &v84);
      }

      FigPlaybackItemGetFigBaseObject();
      v50 = v49;
      v51 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v51)
      {
        v51(v50, @"CoordinationIdentifier", v9, &v82);
      }

      v52 = *(DerivedStorage + 176);
      v53 = v82;
      *(DerivedStorage + 176) = v82;
      if (v53)
      {
        CFRetain(v53);
      }

      if (v52)
      {
        CFRelease(v52);
      }

      CMNotificationCenterGetDefaultLocalCenter();
      FigNotificationCenterAddWeakListener();
      DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
      FigGetNotifyingObjectForMediaAccessibilityChanged(DefaultLocalCenter, v55);
      FigNotificationCenterAddWeakListener();
      fpic_applyCoordinationMediaSelectionCriteria(v16, *(DerivedStorage + 160));
      if (v84)
      {
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        CMNotificationCenterGetDefaultLocalCenter();
        FigNotificationCenterAddWeakListener();
        *(DerivedStorage + 1224) = CFRetain(v84);
        CFRelease(v84);
      }

      else
      {
        v56 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v60 = *(*(CMBaseObjectGetVTable() + 16) + 48);
      if (v60 && !v60(v35, &v80) && v80 > 0.0)
      {
        *(DerivedStorage + 880) = v80;
      }

      v61 = *(DerivedStorage + 160);
      CMBaseObjectGetDerivedStorage();
      v62 = FigCFWeakReferenceHolderCopyReferencedObject();
      if (v62)
      {
        v63 = v62;
        v64 = FigCFDictionaryCopyArrayOfKeys();
        v65 = 0;
        while (1)
        {
          v66 = v64 ? CFArrayGetCount(v64) : 0;
          if (v65 >= v66)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(v64, v65);
          v68 = CMBaseObjectGetDerivedStorage();
          v69 = 0;
          if (ValueAtIndex && ValueAtIndex != @"DummyItem")
          {
            v69 = (*(v68 + 80))(v16, v63, ValueAtIndex);
          }

          ++v65;
          if (v69 == v61)
          {
            v70 = CMBaseObjectGetDerivedStorage();
            v71 = CFDictionaryGetValue(*(v70 + 184), ValueAtIndex);
            goto LABEL_106;
          }
        }

        ValueAtIndex = 0;
        v71 = 0;
LABEL_106:
        if (v64)
        {
          CFRelease(v64);
        }

        CFRelease(v63);
        if (v71 && CFArrayGetCount(v71) >= 1)
        {
          fpic_CopyEventsWithOfflineURLsIfNecessary(v16, v71, &v83);
          FigCFArrayAppendArray();
          CFDictionaryRemoveValue(*(DerivedStorage + 184), ValueAtIndex);
          if (dword_1EAF178D0)
          {
            v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          fpic_SortEventsInAddOrder();
          fpic_PostNotification(v16, @"fpiEventsDidChange", 0);
        }
      }

      fpic_UpdatePlaybackItemEventList();
      v73 = (CMBaseObjectGetDerivedStorage() + 192);
      if (*v73)
      {
        CFRelease(*v73);
        *v73 = 0;
      }

      FigPlaybackItemGetFigBaseObject();
      v75 = v74;
      v76 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v76)
      {
        v76(v75, @"OfflineInterstitialListJSON", v9, v73);
      }

      v77 = CMBaseObjectGetDerivedStorage();
      for (i = 0; ; ++i)
      {
        Count = *(v77 + 704);
        if (Count)
        {
          Count = CFArrayGetCount(Count);
        }

        if (i >= Count)
        {
          break;
        }

        CFArrayGetValueAtIndex(*(v77 + 704), i);
        fpic_LimitPreloadToPlayhead();
      }

      if (v82)
      {
        CFRelease(v82);
      }
    }

    if (cf.value)
    {
      CFRelease(cf.value);
    }

    if (v83)
    {
      CFRelease(v83);
    }

    SeekableRange = fpic_SwapToInterstitialPlayerLayerIfPrerollDetected(a1[7], a1[8]);
    v3 = a1[5];
  }

LABEL_24:
  if (v3)
  {
    CFRelease(v3);
  }

  v22 = a1[6];
  v23 = *(v22 + 160);
  if (v23)
  {
    if (!*(v22 + 1142))
    {
      *v86 = *MEMORY[0x1E6960C70];
      v87 = *(MEMORY[0x1E6960C70] + 16);
      v24 = *(*(CMBaseObjectGetVTable() + 16) + 16);
      if (v24)
      {
        if (!v24(v23, v86) && (BYTE4(v86[1]) & 1) != 0)
        {
          if ((BYTE4(v86[1]) & 0x10) != 0)
          {
            memset(v88, 0, 24);
            SeekableRange = fpic_GetSeekableRange(*(a1[6] + 160), 0, v88, &cf);
            v38 = a1[6];
            if ((v88[0].flags & 1) == 0)
            {
              v39 = *(v38 + 1142) != 0;
LABEL_65:
              if (v39 && dword_1EAF178D0 >= 2)
              {
                LODWORD(v84) = 0;
                LOBYTE(v83) = 0;
                v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                v41 = v84;
                v42 = v83;
                if (os_log_type_enabled(v40, v83))
                {
                  v43 = v41;
                }

                else
                {
                  v43 = v41 & 0xFFFFFFFE;
                }

                if (v43)
                {
                  v44 = *(a1[6] + 1141);
                  LODWORD(cf.value) = 136315394;
                  *(&cf.value + 4) = "fpic_EstablishCurrentPrimaryItem_block_invoke";
                  LOWORD(cf.flags) = 1024;
                  *(&cf.flags + 2) = v44;
                  _os_log_send_and_compose_impl(v43, 0, v88, 128, &dword_1962D5000, v40, v42, "<<<< FigPlayerInterstitial >>>> %s: livenessEstablished; isLive = %d", &cf, 18);
                }

                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              return SeekableRange;
            }

            v25 = (v38 + 1141);
            v26 = 257;
          }

          else
          {
            v25 = (a1[6] + 1141);
            v26 = 256;
          }

          *v25 = v26;
          v39 = 1;
          goto LABEL_65;
        }
      }
    }
  }

  return SeekableRange;
}

@end