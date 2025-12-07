uint64_t FigCaptionRendererSessionSetSeparated(uint64_t a1)
{
  if (a1 && *(a1 + 168))
  {
    OUTLINED_FUNCTION_9_18();
    dispatch_sync_f(v1, v2, v3);
  }

  return 0;
}

uint64_t FigCaptionRendererSessionSetCaptionAvoidanceOptions(uint64_t a1)
{
  if (a1 && OUTLINED_FUNCTION_17_8(a1))
  {
    OUTLINED_FUNCTION_9_18();
    dispatch_sync_f(v1, v2, v3);
  }

  return 0;
}

uint64_t FigCaptionRendererSessionCopyOutputNodeImagesAndPositions(uint64_t a1, __CFArray **a2, __CFArray **a3)
{
  OUTLINED_FUNCTION_3_36();
  value = 0;
  __s1 = 0;
  v33 = *MEMORY[0x1E695EFF8];
  Count = CFDictionaryGetCount(*(v6 + 584));
  v8 = malloc_type_malloc(8 * Count, v3);
  if (!v8)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v33.x, LODWORD(v33.y), value);
    v28 = v30;
    Mutable = 0;
    v12 = 0;
    v9 = 0;
    goto LABEL_27;
  }

  v9 = malloc_type_malloc(8 * Count, v3);
  if (!v9)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v33.x, LODWORD(v33.y), value);
    v28 = v31;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_20_6();
  v10 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v33.x, LODWORD(v33.y), value);
    v28 = v32;
    goto LABEL_24;
  }

  v12 = CFArrayCreateMutable(v10, 0, MEMORY[0x1E695E9C0]);
  if (!v12)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_19_2();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", *&v33.x, LODWORD(v33.y), value);
LABEL_36:
    v28 = v18;
    goto LABEL_27;
  }

  if (Count < 1)
  {
LABEL_22:
    v28 = 0;
    *a2 = Mutable;
    *a3 = v12;
LABEL_23:
    Mutable = 0;
LABEL_24:
    v12 = 0;
    goto LABEL_27;
  }

  v13 = 0;
  while (1)
  {
    v14 = v8[v13];
    FigCaptionRendererBaseProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (!ProtocolVTable)
    {
      goto LABEL_25;
    }

    v16 = *(ProtocolVTable + 16);
    if (!v16)
    {
      goto LABEL_25;
    }

    v17 = *(v16 + 8);
    if (!v17)
    {
      break;
    }

    v18 = v17(v14, &__s1);
    if (v18)
    {
      goto LABEL_36;
    }

    v19 = v9[v13];
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v20 = CMBaseObjectGetProtocolVTable();
    if (!v20)
    {
      goto LABEL_25;
    }

    v21 = *(v20 + 16);
    if (!v21)
    {
      goto LABEL_25;
    }

    v22 = *(v21 + 112);
    if (!v22)
    {
      break;
    }

    v18 = v22(v19, &value);
    if (v18)
    {
      goto LABEL_36;
    }

    v23 = v9[v13];
    FigCaptionRendererOutputNodeProtocolGetProtocolID();
    v24 = CMBaseObjectGetProtocolVTable();
    if (!v24 || (v25 = *(v24 + 16)) == 0)
    {
LABEL_25:
      v28 = 4294954508;
      goto LABEL_27;
    }

    v26 = *(v25 + 64);
    if (!v26)
    {
      break;
    }

    v18 = v26(v23, &v33);
    if (v18)
    {
      goto LABEL_36;
    }

    if (!strcmp(__s1, "FigCaptionRendererCaption"))
    {
      CFArrayAppendValue(Mutable, value);
      DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v33);
      CFArrayAppendValue(v12, DictionaryRepresentation);
    }

    if (Count == ++v13)
    {
      goto LABEL_22;
    }
  }

  v28 = 4294954514;
LABEL_27:
  free(v8);
  free(v9);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return v28;
}

void updateMASettingsDoAsync(CFTypeRef *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 67);
  if (!*(a1 + 304))
  {
    if (v3 != 2)
    {
      goto LABEL_64;
    }

    goto LABEL_3;
  }

  v22 = a1 + 1;
  if (v3 == 2)
  {
    fcrCopyMediaAccessibilityParams(v22, (v2 + 266));
    v2 = *a1;
    *(*a1 + 1360) = 1;
LABEL_3:
    if (*(a1 + 306))
    {
      v4 = *(v2 + 132);
      v5 = a1[39];
      *(v2 + 132) = v5;
      if (v5)
      {
        CFRetain(v5);
      }

      if (v4)
      {
        CFRelease(v4);
      }
    }

    v6 = *a1;
    if (*(a1 + 305) && v6[85].i8[0])
    {
      fcrCopyMediaAccessibilityParams(&v6[66].i64[1], v6[18].i64);
      v6 = *a1;
      *(*a1 + 1361) = 1;
    }

    goto LABEL_11;
  }

  fcrCopyMediaAccessibilityParams(v22, (v2 + 72));
  v6 = *a1;
  if (!*(*a1 + 67))
  {
    fcrCopyMediaAccessibilityParams((a1 + 1), &v6[66].i64[1]);
    v6 = *a1;
    *(*a1 + 1360) = 1;
  }

LABEL_11:
  applyContextDefaultsToMASettings(v6);
  v7 = *a1;
  v38 = 0x3FF0000000000000;
  v39 = 0x3FF0000000000000;
  v37 = 0x3FF0000000000000;
  if (*(v7 + 268) == 2)
  {
    v8 = *(v7 + 1056);
    if (v8)
    {
      v9 = overridesCreateCGColorFromCFArray(v8, *MEMORY[0x1E6960878], &v39);
      v10 = v9;
      if (v9)
      {
        v11 = *(v7 + 432);
        *(v7 + 432) = v9;
        CFRetain(v9);
        if (v11)
        {
          CFRelease(v11);
        }

        *(v7 + 288) = 0;
        *(v7 + 456) = v39;
        *(v7 + 312) = 0;
      }

      v12 = overridesCreateCGColorFromCFArray(*(v7 + 1056), *MEMORY[0x1E6960810], &v38);
      v13 = v12;
      if (v12)
      {
        v14 = *(v7 + 440);
        *(v7 + 440) = v12;
        CFRetain(v12);
        if (v14)
        {
          CFRelease(v14);
        }

        *(v7 + 296) = 0;
        *(v7 + 464) = v38;
        *(v7 + 320) = 0;
      }

      v15 = overridesCreateCGColorFromCFArray(*(v7 + 1056), *MEMORY[0x1E69607C0], &v37);
      v16 = v15;
      if (v15)
      {
        v17 = *(v7 + 448);
        *(v7 + 448) = v15;
        CFRetain(v15);
        if (v17)
        {
          CFRelease(v17);
        }

        *(v7 + 304) = 0;
        *(v7 + 472) = v37;
        *(v7 + 328) = 0;
      }

      v18 = *(v7 + 1056);
      if (!v18)
      {
        goto LABEL_44;
      }

      v19 = *MEMORY[0x1E6960818];
      if (!*MEMORY[0x1E6960818])
      {
        goto LABEL_44;
      }

      value = 0;
      if (!CFDictionaryGetValueIfPresent(v18, v19, &value))
      {
        goto LABEL_44;
      }

      TypeID = CFStringGetTypeID();
      if (TypeID != CFGetTypeID(value))
      {
        goto LABEL_44;
      }

      v21 = 1;
      if (CFStringCompare(value, *MEMORY[0x1E69609C8], 1uLL))
      {
        if (CFStringCompare(value, *MEMORY[0x1E69609D0], 1uLL))
        {
          if (CFStringCompare(value, *MEMORY[0x1E69609B8], 1uLL))
          {
            if (CFStringCompare(value, *MEMORY[0x1E69609D8], 1uLL))
            {
              if (CFStringCompare(value, *MEMORY[0x1E69609C0], 1uLL))
              {
LABEL_44:
                if (v16)
                {
                  CFRelease(v16);
                }

                if (v13)
                {
                  CFRelease(v13);
                }

                if (v10)
                {
                  CFRelease(v10);
                }

                goto LABEL_50;
              }

              v21 = 5;
            }

            else
            {
              v21 = 4;
            }
          }

          else
          {
            v21 = 3;
          }
        }

        else
        {
          v21 = 2;
        }
      }

      *(v7 + 560) = v21;
      *(v7 + 416) = 0;
      goto LABEL_44;
    }
  }

LABEL_50:
  v23 = *a1;
  if (*(*a1 + 1365))
  {
    v24 = *(v23 + 184);
    if (v24)
    {
      v25 = FigCaptionRendererTimerIsOn(v24);
      v23 = *a1;
      if (v25)
      {
        FigCaptionRendererTimerStop(*(v23 + 184));
        v23 = *a1;
      }
    }

    v26 = *(v23 + 248);
    ProtocolID = FigCaptionRendererNodeProtocolGetProtocolID();
    v28 = OUTLINED_FUNCTION_2_9(ProtocolID);
    if (v28)
    {
      v29 = *(v28 + 16);
      if (v29)
      {
        v30 = *(v29 + 272);
        if (v30)
        {
          v30(v26);
        }
      }
    }

    v31 = *a1;
    *(v31 + 608) = 0u;
    v32 = *(v31 + 248);
    v33 = FigCaptionRendererNodeProtocolGetProtocolID();
    v34 = OUTLINED_FUNCTION_2_9(v33);
    if (v34)
    {
      v35 = *(v34 + 16);
      if (v35)
      {
        v36 = *(v35 + 304);
        if (v36)
        {
          v36(v32, v31 + 288);
        }
      }
    }

    updateDisplayPort(*a1, *MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24));
    v23 = *a1;
  }

  *(v23 + 1365) = 1;
LABEL_64:
  fcrReleaseAndClearMediaAccessibilityParams((a1 + 1));
  if (*a1)
  {
    CFRelease(*a1);
  }

  free(a1);
}

void timebaseChangedCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = v3;
      OUTLINED_FUNCTION_2_47();
      *v2 = OUTLINED_FUNCTION_41_4();
      if (v5)
      {
        v6 = CFRetain(v5);
      }

      else
      {
        v6 = 0;
      }

      v2[1] = v6;
      OUTLINED_FUNCTION_488();

      dispatch_async_f(v7, v8, v9);
    }
  }
}

void playbackItemChangedCallback(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = v3;
      OUTLINED_FUNCTION_2_47();
      *v2 = OUTLINED_FUNCTION_41_4();
      if (v5)
      {
        v6 = CFRetain(v5);
      }

      else
      {
        v6 = 0;
      }

      v2[1] = v6;
      OUTLINED_FUNCTION_488();

      dispatch_async_f(v7, v8, v9);
    }
  }
}

void playbackItemChangedCallbackDo(void *a1)
{
  cf = 0;
  v2 = *a1;
  v3 = a1[1];
  if (v3)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (!v4 || v4(v3, 0, &cf))
    {
      goto LABEL_18;
    }

    v5 = cf;
  }

  else
  {
    v5 = 0;
  }

  v6 = v2[10];
  if (v6 != v5)
  {
    if (v6)
    {
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_16();
      CMNotificationCenterRemoveListener();
      v7 = v2[10];
    }

    else
    {
      v7 = 0;
    }

    v2[10] = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    if (v7)
    {
      CFRelease(v7);
    }

    if (v2[10])
    {
      v8 = OUTLINED_FUNCTION_2_47();
      *v8 = CFRetain(v2);
      v9 = v2[10];
      if (v9)
      {
        v9 = CFRetain(v9);
      }

      v8[1] = v9;
      timebaseChangedCallbackDo(v8);
      CMNotificationCenterGetDefaultLocalCenter();
      OUTLINED_FUNCTION_11_16();
      CMNotificationCenterAddListener();
    }
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    CFRelease(v3);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  free(a1);
}

void onTriggerEvent(const void *a1, __int128 *a2, uint64_t a3)
{
  if (a3 && *(a3 + 168))
  {
    malloc_type_calloc(1uLL, 0x28uLL, 0x1020040E349F4B1uLL);
    *v3 = OUTLINED_FUNCTION_41_4();
    if (a1)
    {
      v6 = CFRetain(a1);
    }

    else
    {
      v6 = 0;
    }

    *(v3 + 8) = v6;
    v7 = *a2;
    *(v3 + 32) = *(a2 + 2);
    *(v3 + 16) = v7;
    OUTLINED_FUNCTION_488();

    dispatch_async_f(v8, v9, v10);
  }
}

void onUserEvent(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = v3;
      v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10C00407EF3FF2FuLL);
      v6[3] = v2;
      v7 = *v5;
      v6[2] = *(v5 + 2);
      *v6 = v7;
      v8 = *(v2 + 168);

      dispatch_sync_f(v8, v6, onUserEventDo);
    }
  }
}

void onViewportChanged(uint64_t a1, int a2)
{
  if (a1 && *(a1 + 168))
  {
    OUTLINED_FUNCTION_6_29();
    malloc_type_calloc(1uLL, 0x28uLL, 0x10C00405BF71875uLL);
    *(v2 + 32) = OUTLINED_FUNCTION_41_4();
    *v2 = v6;
    *(v2 + 8) = v5;
    *(v2 + 16) = v4;
    *(v2 + 24) = v3;
    if (a2)
    {

      onViewportChangedDo(v2);
    }

    else
    {
      OUTLINED_FUNCTION_488();

      dispatch_async_f(v8, v9, v10);
    }
  }
}

void composeSceneDo(CFTypeRef *a1)
{
  v2 = *a1;
  if (*(*a1 + 67) == 1 || *(v2 + 6))
  {
    v3 = *(v2 + 31);
    FigCaptionRendererNodeProtocolGetProtocolID();
    ProtocolVTable = CMBaseObjectGetProtocolVTable();
    if (ProtocolVTable && (v5 = *(ProtocolVTable + 16)) != 0 && (v6 = *(v5 + 376)) != 0 && !v6(v3, v2 + 72))
    {
      if (v2[67] == 1)
      {
        v7 = 0;
      }

      else
      {
        memset(&v54, 0, sizeof(v54));
        FigCaptionRendererTriggerGetCurrentTime(*(v2 + 6), &v54);
        OUTLINED_FUNCTION_30_7(v8, v9, v10, v11, v12, v13, v14, v15, v53.value, *&v53.timescale, v53.epoch, *&v54.value);
        v7 = copyCurrentActiveCaptions(v2, &v53);
        Count = CFArrayGetCount(v7);
        if (*(v2 + 172))
        {
          v24 = Count;
          Count = *(v2 + 173);
          if (Count)
          {
            Count = FigCFWeakReferenceHolderCopyReferencedObject();
            if (Count)
            {
              v25 = Count;
              (*(v2 + 172))(v24 == 0, Count);
              CFRelease(v25);
            }
          }
        }

        OUTLINED_FUNCTION_30_7(Count, v17, v18, v19, v20, v21, v22, v23, v53.value, *&v53.timescale, v53.epoch, *&v54.value);
        updateNodeTree(v2, v7, &v53);
        if (v2[67] == 3 && *(v2 + 81) > 0.0 && *(v2 + 82) > 0.0)
        {
          ensureCaptionsAreRendered(v2, *(v2 + 31));
        }
      }

      v26 = *(v2 + 31);
      ProtocolID = FigCaptionRendererNodeProtocolGetProtocolID();
      v28 = OUTLINED_FUNCTION_38_5(ProtocolID);
      if (!v28)
      {
        goto LABEL_40;
      }

      v29 = *(v28 + 16);
      if (!v29)
      {
        goto LABEL_40;
      }

      v30 = *(v29 + 232);
      if (!v30)
      {
        goto LABEL_40;
      }

      if (v30(v26, 1))
      {
        goto LABEL_40;
      }

      *(v2 + 76) = a1[1];
      v31 = *(v2 + 31);
      v32 = FigCaptionRendererNodeProtocolGetProtocolID();
      v33 = OUTLINED_FUNCTION_38_5(v32);
      if (!v33)
      {
        goto LABEL_40;
      }

      v34 = *(v33 + 16);
      if (!v34)
      {
        goto LABEL_40;
      }

      v35 = *(v34 + 304);
      if (!v35 || v35(v31, v2 + 72))
      {
        goto LABEL_40;
      }

      v36 = *(v2 + 73);
      if (v36 && *(v2 + 1043))
      {
        Value = CFDictionaryGetValue(v36, *(v2 + 31));
        v38 = FigCaptionRendererOutputNodeProtocolGetProtocolID();
        v39 = OUTLINED_FUNCTION_38_5(v38);
        if (v39)
        {
          v40 = *(v39 + 16);
          if (v40)
          {
            v41 = *(v40 + 216);
            if (v41)
            {
              v41(Value);
            }
          }
        }

        v42 = CFDictionaryGetValue(*(v2 + 73), *(v2 + 31));
        if (v42)
        {
          copyOutputNodeContentIntoCGContext(v42, a1[1]);
        }
      }

      v43 = *(v2 + 31);
      v44 = FigCaptionRendererNodeProtocolGetProtocolID();
      v45 = OUTLINED_FUNCTION_38_5(v44);
      if (!v45 || (v46 = *(v45 + 16)) == 0 || (v47 = *(v46 + 104)) == 0 || v47(v43, v2 + 32))
      {
LABEL_40:
        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }

      v48 = *(v2 + 31);
      v49 = FigCaptionRendererNodeProtocolGetProtocolID();
      v50 = OUTLINED_FUNCTION_39_5(v49);
      if (v50)
      {
        v51 = *(v50 + 16);
        if (v51)
        {
          v52 = *(v51 + 384);
          if (v52)
          {
            v52(v48, v2 + 72);
          }
        }
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_3_5();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v53.value, v53.timescale, LODWORD(v53.epoch));
    }
  }

  CFRelease(*a1);
  free(a1);
}

void applyContextDefaultsToMASettings(int64x2_t *a1)
{
  if (a1[16].i32[3] == 2 && !a1[85].i8[1])
  {
    v2 = vdupq_n_s64(1uLL);
    a1[18] = v2;
    a1[19] = v2;
    a1[20] = v2;
    a1[21] = v2;
    a1[26].i64[0] = 1;
    memset_pattern16(&a1[22], &xmmword_196E76490, 0x40uLL);
    v3 = 0;
    a1[29].i64[1] = 0;
    v4 = a1 + 31;
    do
    {
      v5 = v4->i64[v3];
      if (v5)
      {
        CFRelease(v5);
        v4->i64[v3] = 0;
      }

      ++v3;
    }

    while (v3 != 8);
    a1[30].i64[1] = 0x3FF0000000000000;
  }
}

void onCaptionInput(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_21_7();
      v5[1] = CFRetain(v2);
      if (v3)
      {
        v6 = CFRetain(v3);
      }

      else
      {
        v6 = 0;
      }

      OUTLINED_FUNCTION_34_8(v6);
      OUTLINED_FUNCTION_39_3();

      dispatch_async_f(v7, v8, v9);
    }
  }
}

void onRegionInput(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = OUTLINED_FUNCTION_21_7();
      v5[1] = CFRetain(v2);
      if (v3)
      {
        v6 = CFRetain(v3);
      }

      else
      {
        v6 = 0;
      }

      OUTLINED_FUNCTION_34_8(v6);
      OUTLINED_FUNCTION_39_3();

      dispatch_async_f(v7, v8, v9);
    }
  }
}

void onTextHighlightArray(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_22_8();
    if (v4)
    {
      v5 = v3;
      v6 = malloc_type_calloc(1uLL, 0x10uLL, 0xE00401B06D0A3uLL);
      v6[1] = CFRetain(v2);
      if (v5)
      {
        v7 = CFRetain(v5);
      }

      else
      {
        v7 = 0;
      }

      OUTLINED_FUNCTION_34_8(v7);
      OUTLINED_FUNCTION_39_3();

      dispatch_sync_f(v8, v9, v10);
    }
  }
}

uint64_t UpdateLayoutContext(uint64_t a1)
{
  v40 = 0;
  v41 = 0;
  if (!a1)
  {
    return 0;
  }

  if (!*(a1 + 64) || *(a1 + 648) == 0.0 || *(a1 + 656) == 0.0)
  {
    goto LABEL_27;
  }

  v38 = 0u;
  v39 = 0u;
  OUTLINED_FUNCTION_42_6(0.0);
  OUTLINED_FUNCTION_42_6(0.0);
  OUTLINED_FUNCTION_260_0();
  FigGeometryPointMake();
  v36 = 0u;
  v37 = 0u;
  OUTLINED_FUNCTION_42_6(*(a1 + 664));
  OUTLINED_FUNCTION_42_6(*(a1 + 672));
  OUTLINED_FUNCTION_260_0();
  FigGeometrySizeMake();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v2 = FigGeometryRectMake();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  OUTLINED_FUNCTION_27_7(v2, &v28);
  v26 = 0u;
  v27 = 0u;
  OUTLINED_FUNCTION_40_4(0.0);
  OUTLINED_FUNCTION_40_4(0.0);
  OUTLINED_FUNCTION_260_0();
  FigGeometryPointMake();
  v24 = 0u;
  v25 = 0u;
  OUTLINED_FUNCTION_40_4(100.0);
  OUTLINED_FUNCTION_40_4(100.0);
  OUTLINED_FUNCTION_260_0();
  FigGeometrySizeMake();
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = FigGeometryRectMake();
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  OUTLINED_FUNCTION_27_7(v3, &v28);
  v4 = *(a1 + 1024);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 1024) = 0;
  }

  FigGeometryMappingCreate();
  __s1 = 0;
  v5 = *(a1 + 248);
  ProtocolID = FigCaptionRendererBaseProtocolGetProtocolID();
  v7 = OUTLINED_FUNCTION_39_5(ProtocolID);
  if (!v7 || (v8 = *(v7 + 16)) == 0)
  {
    v17 = 4294954508;
LABEL_20:
    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_21;
  }

  v9 = *(v8 + 8);
  if (!v9)
  {
    v17 = 4294954514;
    goto LABEL_20;
  }

  v10 = v9(v5, &__s1);
  if (v10)
  {
    v17 = v10;
    goto LABEL_20;
  }

  if (!strcmp(__s1, "FigCaptionRendererAVFLayoutRegion"))
  {
    v11 = FigCaptionRendererAVFLayoutRegionSetLayoutContext(*(a1 + 248), *(a1 + 272), *(a1 + 280));
    if (v11)
    {
      v17 = v11;
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_21;
    }
  }

  if (!*(a1 + 64))
  {
LABEL_27:
    v17 = 0;
    goto LABEL_21;
  }

  FCRGetVideoPresentationBounds(*(a1 + 664), *(a1 + 672), *(a1 + 632), *(a1 + 640), *(a1 + 648), *(a1 + 656));
  OUTLINED_FUNCTION_31_7();
  if (!*(*(CMBaseObjectGetVTable() + 16) + 56))
  {
    v17 = 4294954514;
    goto LABEL_20;
  }

  v12 = OUTLINED_FUNCTION_5_35();
  v14 = v13(v12);
  if (v14)
  {
    v17 = v14;
    goto LABEL_20;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 48))
  {
    v17 = 4294954514;
    goto LABEL_20;
  }

  v15 = OUTLINED_FUNCTION_5_35();
  v17 = v16(v15);
  if (v17)
  {
    goto LABEL_20;
  }

LABEL_21:
  if (v40)
  {
    CFRelease(v40);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  return v17;
}

double fcrSessionSetCGContextDeviceDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionSetCGContextDeviceDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionSetCGContextDeviceDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionSetLegibleOutputDeviceDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionSetLegibleOutputDeviceDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionSetLegibleOutputDeviceDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double SetProfileDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double SetProfileDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double SetProfileDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double SetProfileDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double fcrSessionSetCaptionArrayDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionSetCaptionArrayDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double fcrSessionSetCaptionSampleDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionSetCaptionSampleDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_376();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double fcrSessionNotificationInputSetCaptionSampleDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionNotificationInputSetCaptionSampleDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionStartDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionStartDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionStopDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionStopDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double fcrSessionUpdateOutputDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double getOutputNodeLayout_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double getOutputNodeLayout_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double getOutputNodeLayout_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double getOutputNodeLayout_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double getOutputNodeLayout_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double setOptionsDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigCaptionRendererSessionSynchronizeDefaults_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererSessionSynchronizeDefaults_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererSessionSetDefaultTextStyle_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererSessionSetDefaultTextStyle_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCaptionRendererSessionSetDefaultTextStyle_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double FigCaptionRendererSessionCreate_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double FigCaptionRendererSessionCreate_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererSessionCreate_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererSessionCreate_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererSessionCreate_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererSessionCreate_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double FigCaptionRendererSessionCreate_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

void FigCaptionRendererSessionCreate_cold_8(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double onAnimationTimerTimeout_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onDisplayUpdateEvent_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double timebaseChangedCallbackDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onTriggerEventDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double purgeOutOfRangeCaptionCache_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onUserEventDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onUserEventDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onUserEventDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onUserEventDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onViewportChangedDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onViewportChangedDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onViewportChangedDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onViewportChangedDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double onViewportChangedDo_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double updateNodeTree_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateNodeTree_cold_17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ensureCaptionsAreRendered_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ensureCaptionsAreRendered_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ensureCaptionsAreRendered_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double ensureCaptionsAreRendered_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double copyOutputNodeContentIntoCGContext_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double copyOutputNodeContentIntoCGContext_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double copyOutputNodeContentIntoCGContext_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double copyOutputNodeContentIntoCGContext_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double copyOutputNodeContentIntoCGContext_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double searchNodesCopyByID_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double updateTimedNode_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double renderCaptionDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double renderCaptionDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double renderCaptionDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double renderCaptionDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double layoutSceneDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t onCaptionInputDo_cold_1(uint64_t a1, _BYTE *a2, void *a3)
{
  v5 = OUTLINED_FUNCTION_2_47();
  *v5 = CFRetain(a1);
  v6 = *(a1 + 72);
  if (v6)
  {
    v6 = CFRetain(v6);
  }

  v5[1] = v6;
  playbackItemChangedCallbackDo(v5);
  v7 = *(a1 + 792);
  *(a1 + 632) = *(a1 + 776);
  *(a1 + 648) = v7;
  *(a1 + 664) = *(a1 + 808);
  v8 = *(a1 + 840);
  *(a1 + 680) = *(a1 + 824);
  *(a1 + 696) = v8;
  v9 = *(a1 + 904);
  *(a1 + 744) = *(a1 + 888);
  *(a1 + 760) = v9;
  v10 = *(a1 + 872);
  *(a1 + 712) = *(a1 + 856);
  *(a1 + 728) = v10;
  *a2 = 1;
  FigSimpleMutexUnlock();

  return UpdateLayoutContext(a1);
}

double onCaptionInputDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double onCaptionInputDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_7()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_8()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_9()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_10()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_11()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_12()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_13()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_14()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_15()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_16()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_17()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_18()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_19()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_20()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_21()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_22()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_23()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onCaptionInputDo_cold_24()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onRegionInputDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onRegionInputDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onRegionInputDo_cold_3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onTextHighlightArrayDo_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double onTextHighlightArrayDo_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

void figSubtitleRenderPipelineGetCurrentTimeFromTimebase(uint64_t a1@<X0>, CMTime *a2@<X8>)
{
  *a2 = **&MEMORY[0x1E6960C70];
  timebase = 0;
  if (*(a1 + 24))
  {
    FigRenderPipelineGetFigBaseObject();
    v4 = v3;
    v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v5)
    {
      v6 = v5(v4, @"Timebase", *MEMORY[0x1E695E480], &timebase);
      v7 = timebase;
      if (!v6)
      {
        CMTimebaseGetTime(a2, timebase);
        v7 = timebase;
      }

      if (v7)
      {
        CFRelease(v7);
      }
    }
  }
}

void FigCreateSubtitleRenderPipeline_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCreateSubtitleRenderPipeline_cold_2(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCreateSubtitleRenderPipeline_cold_3(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCreateSubtitleRenderPipeline_cold_4(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCreateSubtitleRenderPipeline_cold_5(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCreateSubtitleRenderPipeline_cold_6(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void FigCreateSubtitleRenderPipeline_cold_7(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

double subrp_sendSubtitleSampleForSampleBuffer_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double subrp_sendSubtitleSampleForSampleBuffer_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v1, v2, vars0);
}

double subrp_resetOutput_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double subrp_sendEmptySubtitleSample_cold_1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

double subrp_sendEmptySubtitleSample_cold_2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
}

uint64_t FPSupport_CopyCurrentlyDisplayedPixelBufferFromCAImageQueueArray(CFArrayRef theArray, uint64_t a2, void *a3)
{
  if (!a3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v15, 0, v16);
    return 0;
  }

  *a3 = 0;
  if (!theArray)
  {
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  if (Count < 1)
  {
    return 0;
  }

  v6 = Count;
  v7 = 0;
  while (1)
  {
    CFArrayGetValueAtIndex(theArray, v7);
    v8 = CAImageQueueCopyDisplayedIOSurface();
    if (v8)
    {
      break;
    }

    if (v6 == ++v7)
    {
      return 0;
    }
  }

  v10 = v8;
  if (IOSurfaceGetProtectionOptions())
  {
    v9 = 0;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_266();
    v9 = CVPixelBufferCreateWithIOSurface(v11, v12, 0, v13);
    if (!v9)
    {
      *a3 = 0;
    }
  }

  CFRelease(v10);
  return v9;
}

uint64_t FPSupport_ShouldApplyVideoTrackMatrix(const void *a1, const void *a2)
{
  cf = 0;
  BOOLean = 0;
  v3 = CFGetAllocator(a1);
  FigPlayerGetFigBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v6 || v6(v5, @"ApplyVideoTrackMatrix", v3, &BOOLean))
  {
    v12 = 0;
    Value = 0;
  }

  else
  {
    Value = CFBooleanGetValue(BOOLean);
    if (_CFExecutableLinkedOnOrAfter())
    {
      v8 = CFGetAllocator(a2);
      FigPlaybackItemGetFigBaseObject();
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v11)
      {
        v11(v10, @"VideoCompositor", v8, &cf);
        v12 = cf;
      }

      else
      {
        v12 = 0;
      }

      if (Value)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 0;
      }

      Value = v13;
    }

    else
    {
      v12 = 0;
    }
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
    v12 = cf;
  }

  if (v12)
  {
    CFRelease(v12);
  }

  return Value;
}

void FPSupport_GetDisplayRefreshInformation(CMTime *a1, CMTime *a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  memset(&v25, 0, sizeof(v25));
  CMTimeMake(&v25, 1, 60);
  memset(&v24, 0, sizeof(v24));
  CMTimeMake(&v24, 1, 60);
  v6 = *MEMORY[0x1E6960C70];
  v7 = *(MEMORY[0x1E6960C70] + 8);
  v26 = *(MEMORY[0x1E6960C70] + 12);
  v27 = *(MEMORY[0x1E6960C70] + 20);
  if (MGGetBoolAnswer())
  {
    DisplayList = IOMobileFramebufferCreateDisplayList();
    v9 = DisplayList;
    if (DisplayList && (Count = CFArrayGetCount(DisplayList), Count >= 1))
    {
      v11 = Count;
      v22 = v7;
      v12 = v6;
      v13 = 0;
      while (*(CFArrayGetValueAtIndex(v9, v13) + 2))
      {
        if (v11 == ++v13)
        {
          goto LABEL_7;
        }
      }

      if (IOMobileFramebufferOpenByName())
      {
LABEL_7:
        v14 = 0;
        v7 = v22;
        if (v9)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v15 = IOMobileFramebufferCopyProperty();
      v14 = v15;
      if (v15)
      {
        v16 = CFGetTypeID(v15);
        if (v16 == CFDictionaryGetTypeID())
        {
          if (dword_1ED4CBD70)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_11_17();
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          FigCFDictionaryGetInt64IfPresent();
          v6 = v12;
          FigCFDictionaryGetInt64IfPresent();
          v7 = v22;
          FigCFDictionaryGetInt64IfPresent();
          if (!v9)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
      v6 = v12;
      v7 = v23;
      if (v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, v21);
      v14 = 0;
      if (v9)
      {
LABEL_17:
        CFRelease(v9);
      }
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_18:
  if (v14)
  {
    CFRelease(v14);
  }

  if (dword_1ED4CBD70)
  {
    v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_11_17();
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (a1)
  {
    *a1 = v25;
  }

  if (a2)
  {
    *a2 = v24;
  }

  if (a3)
  {
    *a3 = v6;
    *(a3 + 8) = v7;
    *(a3 + 12) = v26;
    *(a3 + 20) = v27;
  }
}

uint64_t FPSupport_createVideoRenderPipeline(const void *a1, const void *a2, int a3, const __CFArray *a4, const __CFArray *a5, int a6, const void *a7, uint64_t a8, char a9, const __CFArray *a10, const void *a11, int a12, char a13, uint64_t a14, char a15, void *a16, CFTypeRef *a17)
{
  v43 = 0;
  memset(&v42, 0, sizeof(v42));
  memset(&v41, 0, sizeof(v41));
  FPSupport_getVideoDecodeWaterLevels(&v42, &v41, a6);
  v20 = *MEMORY[0x1E695E480];
  FPSupport_createRenderPipelineOptions(*MEMORY[0x1E695E480], a7, a8, &v42.value, &v41.value, 0, 0, 0, 0, 0, a11, 0, 0, 0, 0, a12, 1, 0, a13, a14, a15, a16, &v43);
  if (v21)
  {
    v27 = v21;
    MutableCopy = 0;
    goto LABEL_20;
  }

  MutableCopy = 0;
  v23 = MEMORY[0x1E695E4D0];
  if (a14 && a15)
  {
    MutableCopy = FigCFDictionaryCreateMutableCopy();
    if (!MutableCopy)
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v34, v35, v36);
      v27 = v33;
      goto LABEL_20;
    }

    FigCFDictionarySetValue();
    v24 = MutableCopy;
  }

  else
  {
    v24 = a2;
  }

  if (!a9)
  {
    FigVideoRenderPipelineCreateWithFigImageQueueArray(v20, a1, v24, 0, a3, a4, a5, v43, a17);
    v27 = v28;
    if (v28)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  v25 = CFDictionaryCreateMutableCopy(v20, 0, v43);
  CFDictionarySetValue(v25, @"NeroVideoMode", *v23);
  if (a4 && CFArrayGetCount(a4) >= 1)
  {
    v26 = FigOctaviaVideoRenderPipelineCreateWithFigImageQueueArray(v20, v25, a4, a5, a1, v24, 0, a3, a10, a17);
  }

  else
  {
    v26 = FigOctaviaVideoRenderPipelineCreate(v20, v25, a10, a17);
  }

  v27 = v26;
  if (v25)
  {
    CFRelease(v25);
  }

  if (!v27)
  {
LABEL_17:
    FigRenderPipelineGetFigBaseObject();
    v30 = v29;
    v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v31)
    {
      v31(v30, @"VideoEnqueueResetsSystemSleepTimer", *v23);
    }

    v27 = 0;
  }

LABEL_20:
  if (v43)
  {
    CFRelease(v43);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  return v27;
}

__CFDictionary *FPSupport_CreateNotificationPayloadForProperties(uint64_t a1, uint64_t a2, CFArrayRef theArray)
{
  v50[5] = *MEMORY[0x1E69E9840];
  value = 0;
  CFArrayGetCount(theArray);
  v49[48] = @"ExternalProtectionStatus";
  v50[0] = @"CurrentExternalProtectionStatus";
  v50[1] = @"IsNeroPlaybackActive";
  v50[2] = @"CurrentIsNeroPlaybackActive";
  v50[3] = @"DisplayingClosedCaptions";
  v50[4] = @"CurrentDisplayingClosedCaptions";
  v49[0] = @"CanPlayFastForward";
  v49[1] = @"CurrentCanPlayFastForward";
  v49[2] = @"CanPlayFastReverse";
  v49[3] = @"CurrentCanPlayFastReverse";
  v49[4] = @"CanPlayReverse";
  v49[5] = @"CurrentCanPlayReverse";
  v49[6] = @"SupportsFrameStepping";
  v49[7] = @"CurrentSupportsFrameStepping";
  v49[8] = @"PlayableTimeIntervals";
  v49[9] = @"CurrentPlayableTimeIntervals";
  v49[10] = @"SeekableTimeIntervals";
  v49[11] = @"CurrentSeekableTimeIntervals";
  v49[12] = @"EndTime";
  v49[13] = @"ItemEndTime";
  v49[14] = @"TrackIDArray";
  v49[15] = @"CurrentTrackIDArray";
  v49[16] = @"HasEnabledAudio";
  v49[17] = @"HasEnabledAudio";
  v49[18] = @"HasEnabledVideo";
  v49[19] = @"HasEnabledVideo";
  v49[20] = @"HasDiscoveredVideo";
  v49[21] = @"HasDiscoveredVideo";
  v49[22] = @"TaggedRangeMetadataArray";
  v49[23] = @"CurrentTaggedRangeMetadataArray";
  v49[24] = @"DisplayNonForcedSubtitles";
  v49[25] = @"CurrentDisplayNonForcedSubtitles";
  v49[26] = @"RecommendedTimeOffsetFromLive";
  v49[27] = @"CurrentRecommendedTimeOffsetFromLive";
  v49[28] = @"TimeOffsetFromLive";
  v49[29] = @"CurrentConfiguredTimeOffsetFromLive";
  v49[30] = @"VideoTrackMatrix";
  v49[31] = @"CurrentVideoTrackMatrix";
  v49[32] = @"SelectedMediaArray";
  v49[33] = @"CurrentSelectedMediaArray";
  v49[34] = @"EligibleForDSPBasedEnhancedDialogue";
  v49[35] = @"CurrentIsEligibleForDSPBasedEnhancedDialogue";
  v49[36] = @"IsRenderingSpatialAudio";
  v49[37] = @"RenderingSpatialAudio";
  v49[38] = @"CurrentStableVariantID";
  v49[39] = @"CurrentStableVariantID";
  v49[40] = @"CoordinationIdentifier";
  v49[41] = @"CoordinationIdentifier";
  v49[42] = @"BufferState";
  v49[43] = @"CurrentBufferState";
  v49[44] = @"AbsoluteTimeWhenReadyToPlay";
  v49[45] = @"AbsoluteTimeWhenReadyToPlay";
  v49[46] = @"MissingAudioEditList";
  v49[47] = @"MissingAudioEditList";
  if (!a1)
  {
    return 0;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!Mutable)
  {
    return Mutable;
  }

  v7 = v50;
  v8 = 3;
  do
  {
    v9 = *(v7 - 1);
    v10 = OUTLINED_FUNCTION_1_46();
    if (!CFArrayContainsValue(v10, v51, v9))
    {
      goto LABEL_12;
    }

    FigPlayerGetFigBaseObject();
    v12 = v11;
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13(v12, v9, v5, &value);
    v15 = value;
    if (!v14 && value)
    {
      CFDictionarySetValue(Mutable, *v7, value);
LABEL_9:
      v15 = value;
    }

    if (v15)
    {
      CFRelease(v15);
      value = 0;
    }

LABEL_12:
    v7 += 2;
    --v8;
  }

  while (v8);
  v16 = OUTLINED_FUNCTION_1_46();
  if (CFArrayContainsValue(v16, v52, @"CurrentRate"))
  {
    LODWORD(BOOLean.value) = 0;
    v17 = *(*(CMBaseObjectGetVTable() + 16) + 48);
    if (v17)
    {
      if (!v17(a1, &BOOLean))
      {
        FigCFDictionarySetFloat32();
      }
    }
  }

  if (!a2)
  {
    return Mutable;
  }

  v18 = v49;
  v19 = 24;
  while (2)
  {
    v20 = OUTLINED_FUNCTION_1_46();
    if (CFArrayContainsValue(v20, v53, v21))
    {
      v22 = *v18;
      FigPlaybackItemGetFigBaseObject();
      v24 = v23;
      v25 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (!v25)
      {
        goto LABEL_24;
      }

      v26 = v25(v24, v22, v5, &value);
      v27 = value;
      if (!v26 && value)
      {
        CFDictionarySetValue(Mutable, v18[1], value);
LABEL_24:
        v27 = value;
      }

      if (v27)
      {
        CFRelease(v27);
        value = 0;
      }
    }

    v18 += 2;
    if (--v19)
    {
      continue;
    }

    break;
  }

  v28 = OUTLINED_FUNCTION_1_46();
  if (CFArrayContainsValue(v28, v54, @"CurrentDuration"))
  {
    BOOLean = **&MEMORY[0x1E6960C70];
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v29)
    {
      v29(a2, &BOOLean);
    }

    if (BOOLean.flags)
    {
      time = BOOLean;
      v30 = CMTimeCopyAsDictionary(&time, v5);
      value = v30;
      if (v30)
      {
        CFDictionarySetValue(Mutable, @"CurrentDuration", v30);
        if (value)
        {
          CFRelease(value);
          value = 0;
        }
      }
    }
  }

  v31 = OUTLINED_FUNCTION_1_46();
  if (CFArrayContainsValue(v31, v55, @"CurrentDimensions"))
  {
    LODWORD(BOOLean.value) = 0;
    LODWORD(time.value) = 0;
    v32 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v32)
    {
      if (!v32(a2, &BOOLean, &time))
      {
        v57.width = *&BOOLean.value;
        v57.height = *&time.value;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v57);
        value = DictionaryRepresentation;
        if (DictionaryRepresentation)
        {
          CFDictionarySetValue(Mutable, @"CurrentDimensions", DictionaryRepresentation);
          if (value)
          {
            CFRelease(value);
            value = 0;
          }
        }
      }
    }
  }

  v33 = OUTLINED_FUNCTION_1_46();
  if (CFArrayContainsValue(v33, v56, @"VideoSlotArray"))
  {
    BOOLean.value = 0;
    FigPlaybackItemGetFigBaseObject();
    v35 = v34;
    v36 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v36)
    {
      v37 = v36(v35, @"HasEnabledVideo", v5, &BOOLean);
      v38 = BOOLean.value;
      if (v37)
      {
        v39 = 1;
        if (!BOOLean.value)
        {
          goto LABEL_49;
        }

LABEL_48:
        CFRelease(v38);
      }

      else
      {
        v39 = CFBooleanGetValue(BOOLean.value) == 0;
        v38 = BOOLean.value;
        if (BOOLean.value)
        {
          goto LABEL_48;
        }
      }
    }

    else
    {
      v39 = 1;
    }

LABEL_49:
    FigPlaybackItemGetFigBaseObject();
    v42 = v41;
    v43 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v43 && !v43(v42, @"VideoSlotArray", v5, &value))
    {
      v44 = value;
      if (!value)
      {
        return Mutable;
      }
    }

    else
    {
      if (v39)
      {
        return Mutable;
      }

      v44 = value;
      if (!value)
      {
        v44 = CFArrayCreate(v5, 0, 0, MEMORY[0x1E695E9C0]);
        value = v44;
        if (!v44)
        {
          return Mutable;
        }
      }
    }

    CFDictionarySetValue(Mutable, @"CurrentVideoSlotArray", v44);
    if (value)
    {
      CFRelease(value);
    }
  }

  return Mutable;
}

uint64_t FPSupport_SetTransientTimebaseForCoordinatedPlaybackSynchronization(uint64_t a1, uint64_t a2, uint64_t a3, float a4)
{
  timebaseOut = 0;
  clockOut = 0;
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954516, "<<<< Alt >>>>", 6555, v4);
    goto LABEL_18;
  }

  if ((*(a2 + 12) & 1) == 0 || (*(a3 + 12) & 1) == 0)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954514, "<<<< Alt >>>>", 6559, v4);
    goto LABEL_18;
  }

  v8 = *MEMORY[0x1E695E480];
  v9 = CMAudioClockCreate(*MEMORY[0x1E695E480], &clockOut);
  if (v9)
  {
LABEL_18:
    v10 = v9;
    goto LABEL_13;
  }

  v10 = CMTimebaseCreateWithSourceClock(v8, clockOut, &timebaseOut);
  v11 = timebaseOut;
  if (!v10 && timebaseOut)
  {
    memset(&v20, 0, sizeof(v20));
    HostTimeClock = CMClockGetHostTimeClock();
    time = *a3;
    CMSyncConvertTime(&v20, &time, HostTimeClock, clockOut);
    time = *a2;
    v18 = v20;
    CMTimebaseSetRateAndAnchorTime(timebaseOut, a4, &time, &v18);
    v13 = timebaseOut;
    FigPlaybackItemGetFigBaseObject();
    v15 = v14;
    v16 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v16)
    {
      v10 = v16(v15, @"TransientTimebaseForCoordinatedPlaybackSynchronization", v13);
    }

    else
    {
      v10 = 4294954514;
    }

    v11 = timebaseOut;
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_13:
  if (clockOut)
  {
    CFRelease(clockOut);
  }

  return v10;
}

double FPSupport_AppendDeferredTransactionChangeForClearingFigVideoLayers(int a1, CFArrayRef theArray, char a3)
{
  if (theArray && CFArrayGetCount(theArray) >= 1)
  {
    OUTLINED_FUNCTION_7_20();
    v7 = malloc_type_malloc(0x10uLL, v6);
    if (v7)
    {
      v8 = v7;
      *v7 = theArray;
      v7[8] = a3;
      CFRetain(theArray);
      v9 = OUTLINED_FUNCTION_0_55();

      FigDeferredTransactionAppendChangeWithCallback(v9, v10, v11, v8, v12, v13, v14);
    }

    else
    {
      OUTLINED_FUNCTION_243();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeForAttachingFigVideoLayersToClientLayers()
{
  OUTLINED_FUNCTION_15_12();
  v3 = v1;
  if (!v4)
  {
    Count = 0;
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  Count = CFArrayGetCount(v0);
  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = CFArrayGetCount(v3);
  if (Count != v6)
  {
    goto LABEL_17;
  }

LABEL_6:
  if (Count < 1)
  {
    return result;
  }

  v7 = OUTLINED_FUNCTION_13_10();
  if (v7)
  {
    v8 = v7;
    *v7 = v3;
    if (v3)
    {
      CFRetain(v3);
    }

    *(v8 + 8) = v0;
    if (v0)
    {
      CFRetain(v0);
    }

    v9 = OUTLINED_FUNCTION_0_55();

    FigDeferredTransactionAppendChangeWithCallback(v9, v10, v11, v8, v12, v13, v14);
  }

  else
  {
LABEL_17:
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeForSettingCAImageQueuesOnVideoLayers(int a1, CFArrayRef theArray, const __CFArray *a3, __int128 *a4)
{
  if (theArray)
  {
    v7 = CFArrayGetCount(theArray) < 1;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v7 = 1;
    if (!a3)
    {
      return result;
    }
  }

  v9 = CFArrayGetCount(a3) < 1 || v7;
  if ((v9 & 1) == 0)
  {
    OUTLINED_FUNCTION_7_20();
    v11 = malloc_type_malloc(0x28uLL, v10);
    if (v11)
    {
      v12 = v11;
      *v11 = a3;
      CFRetain(a3);
      *(v12 + 8) = theArray;
      if (theArray)
      {
        CFRetain(theArray);
      }

      v13 = *a4;
      *(v12 + 32) = *(a4 + 2);
      *(v12 + 16) = v13;
      v14 = OUTLINED_FUNCTION_0_55();

      FigDeferredTransactionAppendChangeWithCallback(v14, v15, v16, v12, v17, v18, v19);
    }

    else
    {
      OUTLINED_FUNCTION_111();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeForSettingDurationOnLayers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_15_12();
    v4 = v3;
    if (CFArrayGetCount(v5) >= 1)
    {
      OUTLINED_FUNCTION_7_20();
      v8 = malloc_type_malloc(0x20uLL, v7);
      if (v8)
      {
        v9 = v8;
        v10 = *v4;
        *(v8 + 3) = *(v4 + 2);
        *(v8 + 8) = v10;
        OUTLINED_FUNCTION_19_11(v8);
        v11 = OUTLINED_FUNCTION_0_55();

        FigDeferredTransactionAppendChangeWithCallback(v11, v12, v13, v9, v14, v15, v16);
      }

      else
      {
        OUTLINED_FUNCTION_243();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeForSettingBoundsOnLayers(int a1, CFArrayRef theArray, double result, double a4, double a5, double a6)
{
  if (theArray)
  {
    v9 = result;
    if (CFArrayGetCount(theArray) >= 1)
    {
      OUTLINED_FUNCTION_7_20();
      v11 = malloc_type_malloc(0x28uLL, v10);
      if (v11)
      {
        v12 = v11;
        v11[1] = v9;
        v11[2] = a4;
        v11[3] = a5;
        v11[4] = a6;
        OUTLINED_FUNCTION_19_11(v11);
        v13 = OUTLINED_FUNCTION_0_55();

        FigDeferredTransactionAppendChangeWithCallback(v13, v14, v15, v12, v16, v17, v18);
      }

      else
      {
        OUTLINED_FUNCTION_243();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeForSettingTransformOnLayers(int a1, char a2, __int128 *a3, CFArrayRef theArray, double result, double a6)
{
  if (theArray)
  {
    v9 = result;
    if (CFArrayGetCount(theArray) >= 1)
    {
      OUTLINED_FUNCTION_7_20();
      v12 = malloc_type_malloc(0x50uLL, v11);
      if (v12)
      {
        v13 = v12;
        v14 = *a3;
        v15 = a3[2];
        v12[3] = a3[1];
        v12[4] = v15;
        v12[2] = v14;
        *(v12 + 8) = a2;
        *(v12 + 2) = v9;
        *(v12 + 3) = a6;
        OUTLINED_FUNCTION_19_11(v12);
        v16 = OUTLINED_FUNCTION_0_55();

        FigDeferredTransactionAppendChangeWithCallback(v16, v17, v18, v13, v19, v20, v21);
      }

      else
      {
        v22 = qword_1ED4CBD68;

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v22, 4294954434, "<<<< Alt >>>>", 8767, v6);
      }
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeForSettingEdgeAntialiasingMaskOnLayers(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    OUTLINED_FUNCTION_15_12();
    v4 = v3;
    if (CFArrayGetCount(v5) >= 1)
    {
      OUTLINED_FUNCTION_7_20();
      v8 = malloc_type_malloc(0x10uLL, v7);
      if (v8)
      {
        v9 = v8;
        v8[2] = v4;
        OUTLINED_FUNCTION_19_11(v8);
        v10 = OUTLINED_FUNCTION_0_55();

        FigDeferredTransactionAppendChangeWithCallback(v10, v11, v12, v9, v13, v14, v15);
      }

      else
      {
        OUTLINED_FUNCTION_243();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeForCallingSetContentsChangedOnLayers(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_37();
    if (CFArrayGetCount(v3) >= 1)
    {
      v5 = malloc_type_malloc(8uLL, 0x6004044C4A2DFuLL);
      if (v5)
      {
        v6 = v5;
        *v5 = v2;
        CFRetain(v2);
        v7 = OUTLINED_FUNCTION_0_55();

        FigDeferredTransactionAppendChangeWithCallback(v7, v8, v9, v6, v10, v11, v12);
      }

      else
      {
        OUTLINED_FUNCTION_239();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeToRelease(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_37();
    v3 = malloc_type_malloc(8uLL, 0xC0040B8AA526DuLL);
    if (v3)
    {
      *v3 = v2;
      v4 = OUTLINED_FUNCTION_0_55();

      FigDeferredTransactionAppendChangeWithCallback(v4, v5, v6, v7, v8, v9, v10);
    }

    else
    {
      OUTLINED_FUNCTION_239();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeToReleaseOSTransaction(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_37();
    v3 = OUTLINED_FUNCTION_14_14();
    if (v3)
    {
      *v3 = v2;
      v4 = OUTLINED_FUNCTION_177();

      FigDeferredTransactionAppendPostCommitChangeWithCallback(v4, v5, v6, v7, v8, v9);
    }

    else
    {
      OUTLINED_FUNCTION_239();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeToClearContentsAndRemoveFromSuperLayer(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_3_37();
    v3 = OUTLINED_FUNCTION_14_14();
    if (v3)
    {
      v4 = v3;
      *v3 = v2;
      v5 = v2;
      v6 = OUTLINED_FUNCTION_0_55();

      FigDeferredTransactionAppendChangeWithCallback(v6, v7, v8, v4, v9, v10, v11);
    }

    else
    {
      OUTLINED_FUNCTION_111();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

double FPSupport_AppendDeferredTransactionPostCommitChangeToReleasePlayerResourcesOnQueue(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a3)
  {
    goto LABEL_9;
  }

  if (!a2)
  {
    return result;
  }

  OUTLINED_FUNCTION_15_12();
  v5 = malloc_type_malloc(0x10uLL, 0xA0040AFF93C70uLL);
  if (v5)
  {
    v6 = v5;
    *v5 = a2;
    CFRetain(a2);
    *(v6 + 8) = v3;
    dispatch_retain(v3);
    v7 = OUTLINED_FUNCTION_177();

    FigDeferredTransactionAppendPostCommitChangeWithCallback(v7, v8, v6, v9, v10, v11);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_243();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

  return result;
}

double FPSupport_AppendDeferredTransactionChangeForSettingImageQueueSlotsOnVideoLayers(int a1, CFArrayRef theArray, const __CFArray *a3)
{
  if (theArray)
  {
    v5 = CFArrayGetCount(theArray) < 1;
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    v5 = 1;
    if (!a3)
    {
      return result;
    }
  }

  v7 = CFArrayGetCount(a3) < 1 || v5;
  if ((v7 & 1) == 0)
  {
    v8 = OUTLINED_FUNCTION_13_10();
    if (v8)
    {
      v9 = v8;
      *v8 = a3;
      CFRetain(a3);
      *(v9 + 8) = theArray;
      if (theArray)
      {
        CFRetain(theArray);
      }

      v10 = OUTLINED_FUNCTION_0_55();

      FigDeferredTransactionAppendChangeWithCallback(v10, v11, v12, v9, v13, v14, v15);
    }

    else
    {
      OUTLINED_FUNCTION_243();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    }
  }

  return result;
}

void FPSupport_ReportStallToSymptomLog(int a1, const void *a2, const __CFDictionary *a3)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v7 = Mutable;
    if (CFEqual(a2, @"wired") || CFEqual(a2, @"lan"))
    {
      v8 = @"WiredEthernet";
    }

    else if (CFEqual(a2, @"wifi-infra") || CFEqual(a2, @"wifi-AWDL"))
    {
      v8 = @"Wifi";
    }

    else if (CFEqual(a2, @"wwan"))
    {
      v8 = @"Cellular";
    }

    else if (CFEqual(a2, @"loopback"))
    {
      v8 = @"Loopback";
    }

    else
    {
      v8 = @"Other";
    }

    v9 = @"File";
    if (a1 == 2)
    {
      v9 = @"HTTP Progressive Download";
    }

    if (a1)
    {
      v10 = v9;
    }

    else
    {
      v10 = @"HTTP Live Stream";
    }

    if (a3)
    {
      Value = CFDictionaryGetValue(a3, @"assetOption_ClientBundleIdentifier");
      if (!Value || (v12 = CFRetain(Value)) == 0)
      {
        v13 = CFDictionaryGetValue(a3, @"assetOption_ClientAuditToken");
        v12 = FigCFHTTPCopyClientProcessName(v13);
      }
    }

    else
    {
      v12 = 0;
    }

    CFDictionarySetValue(v7, @"name", @"MEDIA_PLAYBACK_STALL");
    CFDictionarySetValue(v7, @"mediaType", v10);
    CFDictionarySetValue(v7, @"transportType", v10);
    CFDictionarySetValue(v7, @"interfaceType", v8);
    if (v12)
    {
      CFDictionarySetValue(v7, @"BundleID", v12);
    }

    OUTLINED_FUNCTION_177();
    v14 = FigCFStringCreateWithJSONDictionary();
    v15 = v14;
    if (v14 && CFStringGetCStringPtr(v14, 0x8000100u))
    {
      fig_post_a_symptom_guts();
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    CFRelease(v7);
  }
}

void FPSupport_ReportAlgosScoreToSymptomLog(const void *a1, const void *a2)
{
  if (a2)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v5 = Mutable;
      CFDictionarySetValue(Mutable, @"name", @"MEDIA_PLAYBACK_ALGOS");
      CFDictionarySetValue(v5, @"MEDIA_PLAYBACK_ALGOS", a2);
      if (a1)
      {
        CFDictionarySetValue(v5, @"BundleID", a1);
      }

      OUTLINED_FUNCTION_177();
      v6 = FigCFStringCreateWithJSONDictionary();
      if (v6)
      {
        v7 = v6;
        if (CFStringGetCStringPtr(v6, 0x8000100u))
        {
          fig_post_a_symptom_guts();
        }

        CFRelease(v7);
      }

      CFRelease(v5);
    }
  }
}

uint64_t FPSupport_CopyCombinedSetPropertiesErrDictionary(CFTypeRef cf, const void *a2, uint64_t *a3)
{
  if (a3)
  {
    if (cf)
    {
      if (a2)
      {
        MutableCopy = FigCFDictionaryCreateMutableCopy();
        OUTLINED_FUNCTION_266();
        FigCFDictionaryAddEntriesToDictionaryWithRecursion();
LABEL_9:
        *a3 = MutableCopy;
        return 0;
      }
    }

    else
    {
      if (!a2)
      {
        MutableCopy = 0;
        goto LABEL_9;
      }

      cf = a2;
    }

    MutableCopy = CFRetain(cf);
    goto LABEL_9;
  }

  return 0;
}

uint64_t fpSupport_handlePlayerOrItemSetPropertiesAndCopyModification(uint64_t a1, const __CFDictionary *cf, BOOL *a3, const __CFDictionary **a4, void *a5)
{
  context[0] = a1;
  context[1] = cf;
  cfa = 0;
  v17 = 0;
  v15 = 0;
  if (cf && (v8 = cf, v9 = CFGetTypeID(cf), v9 == CFDictionaryGetTypeID()))
  {
    CFDictionaryApplyFunction(v8, fpSupport_handleSetPropertiesApplier, context);
    v10 = v17;
    if (!v17)
    {
      if (v15)
      {
        v8 = v15;
      }

      if (a3)
      {
        *a3 = FigCFDictionaryGetCount() == 0;
      }

      if (a4)
      {
        *a4 = v8;
        CFRetain(v8);
      }

      if (a5)
      {
        v11 = cfa;
        if (cfa)
        {
          v11 = CFRetain(cfa);
        }

        v10 = 0;
        *a5 = v11;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    OUTLINED_FUNCTION_111();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v10 = v13;
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (cfa)
  {
    CFRelease(cfa);
  }

  return v10;
}

uint64_t FPSupport_HandlePlayerSetPropertiesAndForwardToSubPlayer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  cf = 0;
  if (a5)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_12_16();
      v15 = FPSupport_HandlePlayerSetPropertiesAndCopyModification(v8, v9, v10, v11, v12, v13, v14);
      if (v15)
      {
        v19 = v15;
        goto LABEL_9;
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 112))
      {
        v19 = 4294954514;
        goto LABEL_9;
      }

      v16 = OUTLINED_FUNCTION_266();
      v18 = v17(v16);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 10693, v6);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 10692, v6);
  }

  v19 = v18;
  if (!v18)
  {
    FPSupport_CopyCombinedSetPropertiesErrDictionary(0, 0, a6);
    v19 = 0;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

uint64_t fpSupport_handlePlayerOrItemSetPropertyAndCopyModification(uint64_t a1, CFTypeRef cf, uint64_t a3, _BYTE *a4, CFTypeRef *a5, CFTypeRef *a6)
{
  v22 = 0;
  cfa = 0;
  HIBYTE(v21) = 0;
  if (!cf || (v12 = CFGetTypeID(cf), v12 != CFStringGetTypeID()))
  {
    OUTLINED_FUNCTION_239();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_14;
  }

  fpSupport_handleSetPropertiesInternal(a1, cf, a3, &v21 + 3, &cfa, &v22, v13, v14, v19, v20, v21, v22);
  if (v15)
  {
LABEL_14:
    v17 = v15;
    goto LABEL_15;
  }

  if (!HIBYTE(v21))
  {
    if (!cfa || (v16 = CFGetTypeID(cfa), v16 != CFStringGetTypeID()))
    {
      OUTLINED_FUNCTION_239();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      goto LABEL_14;
    }
  }

  if (a5)
  {
    *a5 = cfa;
    cfa = 0;
  }

  if (a6)
  {
    *a6 = v22;
    v22 = 0;
  }

  v17 = 0;
  if (a4)
  {
    *a4 = HIBYTE(v21);
  }

LABEL_15:
  if (cfa)
  {
    CFRelease(cfa);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  return v17;
}

uint64_t FPSupport_HandlePlayerSetPropertyAndForwardToSubPlayer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_5_36();
      v12 = FPSupport_HandlePlayerSetPropertyAndCopyModification(v4, v5, v6, v7, v8, v9, v10, v11);
      if (!v12)
      {
        FigPlayerGetFigBaseObject();
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          return 4294954514;
        }

        v13 = OUTLINED_FUNCTION_177();
        return v14(v13);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 10843, v3);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 10842, v3);
  }

  return v12;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertyAndForwardToSubItem(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_5_36();
      v12 = FPSupport_HandlePlaybackItemSetPropertyAndCopyModification(v4, v5, v6, v7, v8, v9, v10, v11);
      if (!v12)
      {
        FigPlaybackItemGetFigBaseObject();
        if (!*(*(CMBaseObjectGetVTable() + 8) + 56))
        {
          return 4294954514;
        }

        v13 = OUTLINED_FUNCTION_177();
        return v14(v13);
      }
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 10912, v3);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 10911, v3);
  }

  return v12;
}

uint64_t FPSupport_HandlePlaybackItemSetPropertiesAndForwardToSubItem(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  cf = 0;
  if (a5)
  {
    if (a2)
    {
      OUTLINED_FUNCTION_12_16();
      v15 = FPSupport_HandlePlaybackItemSetPropertiesAndCopyModification(v8, v9, v10, v11, v12, v13, v14);
      if (v15)
      {
        v19 = v15;
        goto LABEL_9;
      }

      if (!*(*(CMBaseObjectGetVTable() + 16) + 160))
      {
        v19 = 4294954514;
        goto LABEL_9;
      }

      v16 = OUTLINED_FUNCTION_266();
      v18 = v17(v16);
    }

    else
    {
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 10948, v6);
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 10947, v6);
  }

  v19 = v18;
  if (!v18)
  {
    FPSupport_CopyCombinedSetPropertiesErrDictionary(0, 0, a6);
    v19 = 0;
  }

LABEL_9:
  if (cf)
  {
    CFRelease(cf);
  }

  return v19;
}

BOOL FPSupport_CopyAndCheckClientOnAllowListForPrefDomainKey(const void *a1, int a2, uint64_t a3, CFTypeRef *a4)
{
  v4 = a1;
  cf = 0;
  if (!a1)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, cf, v20);
    goto LABEL_16;
  }

  if (a2 && !FigDebugIsInternalBuild())
  {
    goto LABEL_15;
  }

  v6 = *(CMBaseObjectGetVTable() + 16);
  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = *(v6 + 48);
  if (!v7 || v7(v4, *MEMORY[0x1E69AFDA8], *MEMORY[0x1E695E480], &cf))
  {
    goto LABEL_15;
  }

  SInt32 = FigCFNumberGetSInt32();
  if (!SInt32)
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, cf, v20);
    goto LABEL_15;
  }

  v9 = SInt32;
  v10 = objc_autoreleasePoolPush();
  v11 = [MEMORY[0x1E69C75E0] identifierWithPid:v9];
  v12 = [MEMORY[0x1E69C75D0] handleForIdentifier:v11 error:0];
  if (!v12)
  {
    objc_autoreleasePoolPop(v10);
LABEL_15:
    v4 = 0;
    goto LABEL_16;
  }

  v4 = [objc_msgSend(objc_msgSend(v12 "bundle")];
  objc_autoreleasePoolPop(v10);
  if (!v4)
  {
LABEL_16:
    v14 = 0;
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  v13 = FigCopyCFPreferenceAppValueOrOptionCFTypeWithDefault();
  v14 = v13;
  if (v13)
  {
    v15 = CFGetTypeID(v13);
    if (v15 != CFArrayGetTypeID())
    {
      OUTLINED_FUNCTION_303();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v18, cf, v20);
      goto LABEL_17;
    }
  }

  v16 = FigCFArrayContainsValue() != 0;
  if (a4)
  {
    *a4 = CFRetain(v4);
  }

LABEL_18:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (v14)
  {
    CFRelease(v14);
  }

  return v16;
}

uint64_t FPSupport_GetAudioFormatDescriptionSpatializationEligibility(uint64_t a1, void *a2)
{
  *inSpecifierSize = 0;
  inSpecifier = 0;
  v4 = 0;
  FigNote_AllowInternalDefaultLogs();
  OUTLINED_FUNCTION_18_7();
  fig_note_initialize_category_with_default_work_cf();
  OUTLINED_FUNCTION_18_7();
  fig_note_initialize_category_with_default_work_cf();
  if (CMAudioFormatDescriptionGetRichestDecodableFormatAndChannelLayout())
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    *a2 = 0;
  }

  return result;
}

uint64_t FPSupport_CreateTagCollectionFromVideoFormatDescriptionExtensionsWithDefaults(const opaqueCMFormatDescription *a1, CFTypeRef *a2)
{
  cf = 0;
  FigTagCollectionFromFormatDescriptionExtensions = FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &cf);
  if (FigTagCollectionFromFormatDescriptionExtensions)
  {
    goto LABEL_11;
  }

  if (!cf)
  {
    FigTagCollectionFromFormatDescriptionExtensions = FigTagCollectionCreateMutable();
    if (!FigTagCollectionFromFormatDescriptionExtensions)
    {
      goto LABEL_4;
    }

LABEL_11:
    v5 = FigTagCollectionFromFormatDescriptionExtensions;
    goto LABEL_7;
  }

  FigTagCollectionFromFormatDescriptionExtensions = FigTagCollectionCreateMutableCopy();
  if (FigTagCollectionFromFormatDescriptionExtensions)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = FPSupport_AddDefaultVideoTagsToChannelDescriptionForMissingCategories(0);
  v5 = v4;
  if (a2 && !v4)
  {
    *a2 = 0;
  }

LABEL_7:
  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

uint64_t FPSupport_AddDefaultVideoTagsToChannelDescriptionForMissingCategories(OpaqueCMTagCollection *a1)
{
  cf = 0;
  DefaultTagCollectionForVideo = FPSupport_CreateDefaultTagCollectionForVideo(&cf);
  if (DefaultTagCollectionForVideo || (DefaultTagCollectionForVideo = FigTagCollectionAddTagsFromCollectionWithFilterFunction(), DefaultTagCollectionForVideo))
  {
    v3 = DefaultTagCollectionForVideo;
  }

  else
  {
    if (!CMTagCollectionContainsCategory(a1, kCMTagCategory_MediaType))
    {
      CMTagCollectionAddTag(a1, *MEMORY[0x1E6960640]);
    }

    v3 = 0;
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v3;
}

BOOL FPSupport_FormatDescriptionIndicatesStereoVideo(const opaqueCMFormatDescription *a1)
{
  tagCollection = 0;
  tagCollectionsOut = 0;
  CMVideoFormatDescriptionCopyTagCollectionArray(a1, &tagCollectionsOut);
  if (tagCollectionsOut && CFArrayGetCount(tagCollectionsOut) > 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = !FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &tagCollection) && tagCollection && CMTagCollectionContainsTag(tagCollection, *MEMORY[0x1E6960688]) != 0;
  }

  if (tagCollectionsOut)
  {
    CFRelease(tagCollectionsOut);
    tagCollectionsOut = 0;
  }

  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  return v2;
}

BOOL FPSupport_FormatDescriptionIndicatesFishEyeProjection(const opaqueCMFormatDescription *a1)
{
  tagCollection = 0;
  if (FPSupport_CreateFigTagCollectionFromFormatDescriptionExtensions(a1, &tagCollection))
  {
    v1 = 0;
  }

  else
  {
    if (!tagCollection)
    {
      return 0;
    }

    v1 = CMTagCollectionContainsTag(tagCollection, *MEMORY[0x1E6960668]) != 0;
  }

  if (tagCollection)
  {
    CFRelease(tagCollection);
  }

  return v1;
}

uint64_t FPSupport_CreateDefaultCoordinationIdentifierForPlaybackItem(uint64_t a1, CFStringRef *a2)
{
  cf = 0;
  v14 = 0;
  if (a2)
  {
    v4 = *(*(CMBaseObjectGetVTable() + 16) + 152);
    if (!v4)
    {
      goto LABEL_8;
    }

    v5 = v4(a1, &v14);
    if (!v5)
    {
      FigAssetGetCMBaseObject();
      v7 = v6;
      v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v8)
      {
        v9 = *MEMORY[0x1E695E480];
        v5 = v8(v7, @"assetProperty_CreationURL", *MEMORY[0x1E695E480], &cf);
        if (!v5)
        {
          if (cf)
          {
            v10 = CFHash(cf);
            v11 = 0;
            *a2 = CFStringCreateWithFormat(v9, 0, @"#%lu", v10);
            goto LABEL_9;
          }

          OUTLINED_FUNCTION_303();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
        }

        goto LABEL_15;
      }

LABEL_8:
      v11 = 4294954514;
      goto LABEL_9;
    }
  }

  else
  {
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
  }

LABEL_15:
  v11 = v5;
LABEL_9:
  if (v14)
  {
    CFRelease(v14);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v11;
}

BOOL FPSupport_IsFormatDescAllowable(const opaqueCMFormatDescription *a1, const __CFArray *a2, const __CFArray *a3, const __CFArray *a4)
{
  MediaSubType = 0;
  if (!a1)
  {
    return 1;
  }

  MediaType = CMFormatDescriptionGetMediaType(a1);
  switch(MediaType)
  {
    case 0x636C6370u:
      MediaSubType = CMFormatDescriptionGetMediaSubType(a1);
      a3 = a4;
      if (!a4)
      {
        return 1;
      }

      break;
    case 0x736F756Eu:
      RichestDecodableFormat = CMAudioFormatDescriptionGetRichestDecodableFormat(a1);
      if (RichestDecodableFormat)
      {
        if ((mFormatID = RichestDecodableFormat->mASBD.mFormatID, MediaSubType = mFormatID, (mFormatID - 1885430579) <= 0x3D) && (OUTLINED_FUNCTION_2_48(), !v12) || (mFormatID - 1902207795) <= 0x3D && (OUTLINED_FUNCTION_2_48(), !v12) || (mFormatID - 1902212657) <= 0x34 && ((1 << (mFormatID - 49)) & 0x14000000000001) != 0 || (mFormatID - 2053202739) <= 0x3D && (OUTLINED_FUNCTION_2_48(), !v12) || (mFormatID != 1633771875 ? (v12 = mFormatID == 1667312947) : (v12 = 1), !v12 ? (v13 = mFormatID == 1667326307) : (v13 = 1), !v13 ? (v14 = mFormatID == 1667326824) : (v14 = 1), !v14 ? (v15 = mFormatID == 1667326832) : (v15 = 1), !v15 ? (v16 = mFormatID == 1667330147) : (v16 = 1), !v16 ? (v17 = mFormatID == 1667331683) : (v17 = 1), !v17 ? (v18 = mFormatID == 1667524657) : (v18 = 1), !v18 ? (v19 = mFormatID == 1667574579) : (v19 = 1), !v19 ? (v20 = mFormatID == 1667575091) : (v20 = 1), !v20 ? (v21 = mFormatID == 1667656803) : (v21 = 1), !v21 ? (v22 = mFormatID == 1667790435) : (v22 = 1), !v22 ? (v23 = mFormatID == 1668047203) : (v23 = 1), !v23 ? (v24 = mFormatID == 1668641633) : (v24 = 1), !v24 ? (v25 = mFormatID == 1685220713) : (v25 = 1), !v25 ? (v26 = mFormatID == 1700886115) : (v26 = 1), !v26 ? (v27 = mFormatID == 1701733217) : (v27 = 1), !v27 ? (v28 = mFormatID == 1701733238) : (v28 = 1), !v28 ? (v29 = mFormatID == 1869117027) : (v29 = 1), !v29 ? (v30 = mFormatID == 1882599480) : (v30 = 1), !v30 ? (v31 = mFormatID == 1885430115) : (v31 = 1), !v31 ? (v32 = mFormatID == 1885547315) : (v32 = 1), !v32 ? (v33 = mFormatID == 1885692723) : (v33 = 1), !v33 ? (v34 = mFormatID == 1886745441) : (v34 = 1), !v34 ? (v35 = mFormatID == 1902207331) : (v35 = 1), !v35 ? (v36 = mFormatID == 1902211171) : (v36 = 1), !v36 ? (v37 = mFormatID == 1902324531) : (v37 = 1), !v37 ? (v38 = mFormatID == 1902403958) : (v38 = 1), !v38 ? (v39 = mFormatID == 1902405681) : (v39 = 1), !v39 ? (v40 = mFormatID == 1902405733) : (v40 = 1), !v40 ? (v41 = mFormatID == 1902407032) : (v41 = 1), !v41 ? (v42 = mFormatID == 1902469939) : (v42 = 1), !v42 ? (v43 = mFormatID == 1902537827) : (v43 = 1), !v43 ? (v44 = mFormatID == 1902667126) : (v44 = 1), !v44 ? (v45 = mFormatID == 1902671459) : (v45 = 1), !v45 ? (v46 = mFormatID == 1902928227) : (v46 = 1), !v46 ? (v47 = mFormatID == 1902998904) : (v47 = 1), !v47 ? (v48 = mFormatID == 1903522657) : (v48 = 1), !v48 ? (v49 = mFormatID == 1903587385) : (v49 = 1), !v49 ? (v50 = mFormatID == 2053202275) : (v50 = 1), !v50 ? (v51 = mFormatID == 2053207651) : (v51 = 1), !v51 ? (v52 = mFormatID == 2053319475) : (v52 = 1), !v52 ? (v53 = mFormatID == 2053464883) : (v53 = 1), !v53 ? (v54 = mFormatID == 2054517601) : (v54 = 1), !v54 ? (v55 = mFormatID == 2053923171) : (v55 = 1), v55))
        {
          MediaSubType = FPSupport_GetPlaintextAudioFormatForEncryptedFormatID(mFormatID, v10);
        }
      }

      if (!a3)
      {
        return 1;
      }

      break;
    case 0x76696465u:
      CMVideoFormatDescriptionGetPlaintextMediaSubTypeAndEncryptionScheme();
      a3 = a2;
      if (!a2)
      {
        return 1;
      }

      break;
    default:
      return 1;
  }

  if (CFArrayGetCount(a3) < 1)
  {
    return 1;
  }

  return MediaSubType && FigCFArrayContainsInt32() != 0;
}

void FPSupport_CreatePayloadForLastPlayedDateNotification(const void *a1, const void *a2, uint64_t a3, __CFDictionary **a4)
{
  if (!a1)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 12039, v4);
LABEL_8:
    Mutable = 0;
    goto LABEL_5;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1ED4CBD68, 4294954436, "<<<< Alt >>>>", 12040, v4);
    goto LABEL_8;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetBoolean();
    CFDictionarySetValue(Mutable, @"Date", a2);
    CFDictionarySetValue(Mutable, @"URL", a1);
  }

LABEL_5:
  *a4 = Mutable;
}

void fpSupport_SetupRuntimeMediaValidatorPlist_cold_2(uint64_t a1, const void *a2, _DWORD *a3)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v6, v7, vars0);
  *a3 = v5;

  CFRelease(a2);
}

void storeClosedCaptionLayerBoundsInCacheForLayerIndex_cold_1(const void *a1)
{
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v2, v3, vars0);

  CFRelease(a1);
}

void fpSupport_handleSetPropertiesApplier_cold_2(uint64_t a1, void *key, const void **a3, const void **a4)
{
  MutableCopy = *(a1 + 16);
  if (!MutableCopy)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 8));
    *(a1 + 16) = MutableCopy;
  }

  CFDictionaryRemoveValue(MutableCopy, key);
  CFDictionarySetValue(*(a1 + 16), *a3, *a4);
}

void fpSupport_handleSetPropertiesApplier_cold_3(uint64_t a1, void *key)
{
  MutableCopy = *(a1 + 16);
  if (!MutableCopy)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, *(a1 + 8));
    *(a1 + 16) = MutableCopy;
  }

  CFDictionaryRemoveValue(MutableCopy, key);
}

uint64_t FigStreamAssetImageGeneratorCreateFromAssetWithOptions(uint64_t a1, const void *a2, uint64_t a3, CFTypeRef *a4)
{
  cf = 0;
  v27 = 0;
  v4 = 4294954863;
  if (!a2 || !a4)
  {
    goto LABEL_19;
  }

  FigAssetGetCMBaseObject();
  v9 = v8;
  v10 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v10)
  {
    v4 = 4294954514;
    goto LABEL_17;
  }

  v11 = v10(v9, @"assetProperty_AssetType", *MEMORY[0x1E695E480], &cf);
  if (!v11)
  {
    if (!FigCFEqual())
    {
      v4 = 4294954860;
      goto LABEL_17;
    }

    FigAssetImageGeneratorGetClassID();
    v11 = CMDerivedObjectCreate();
    if (!v11)
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v11 = FigRetainProxyCreate();
      if (!v11)
      {
        *(DerivedStorage + 9) = 0;
        *(DerivedStorage + 24) = CFRetain(a2);
        *(DerivedStorage + 96) = 0;
        v13 = FigSimpleMutexCreate();
        *(DerivedStorage + 32) = v13;
        if (v13)
        {
          *(DerivedStorage + 40) = 0;
          *(DerivedStorage + 48) = DerivedStorage + 40;
          *(DerivedStorage + 64) = FigSemaphoreCreate();
          v14 = FigSemaphoreCreate();
          *(DerivedStorage + 576) = *(DerivedStorage + 64);
          *(DerivedStorage + 72) = v14;
          *(DerivedStorage + 80) = 0;
          v15 = FigSimpleMutexCreate();
          *(DerivedStorage + 568) = v15;
          if (v15)
          {
            v16 = 0;
            v17 = MEMORY[0x1E6960CC0];
            *(DerivedStorage + 392) = *MEMORY[0x1E6960CC0];
            *(DerivedStorage + 408) = *(v17 + 16);
            v18 = MEMORY[0x1E6960C70];
            v19 = *MEMORY[0x1E6960C70];
            *(DerivedStorage + 416) = *MEMORY[0x1E6960C70];
            v20 = *(v18 + 16);
            *(DerivedStorage + 432) = v20;
            *(DerivedStorage + 440) = v19;
            *(DerivedStorage + 456) = v20;
            *(DerivedStorage + 368) = v19;
            *(DerivedStorage + 384) = v20;
            do
            {
              v21 = DerivedStorage + 464 + v16;
              *v21 = v19;
              *(v21 + 16) = v20;
              v16 += 24;
            }

            while (v16 != 72);
            *(DerivedStorage + 552) = 0;
            *(DerivedStorage + 624) = 0;
            *(DerivedStorage + 320) = 0;
            *(DerivedStorage + 328) = DerivedStorage + 320;
            *(DerivedStorage + 336) = 0;
            MEMORY[0x19A8D3660](&sSAIGCreateNotificationQueueOnce, saig_createNotificationQueueOnce);
            if (sSAIGNotificationQueue)
            {
              FigCFWeakReferenceStore();
              FigAssetGetCMBaseObject();
              v23 = v22;
              v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v24)
              {
                v24(v23, @"assetProperty_CreationURL", a1, DerivedStorage + 16);
              }

              v4 = 0;
              *a4 = v27;
              v27 = 0;
              goto LABEL_17;
            }
          }
        }

        fig_log_get_emitter();
        OUTLINED_FUNCTION_3_5();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
      }
    }
  }

  v4 = v11;
LABEL_17:
  if (cf)
  {
    CFRelease(cf);
  }

LABEL_19:
  if (v27)
  {
    CFRelease(v27);
  }

  return v4;
}

uint64_t saig_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = 4294954516;
  if (a2 && a3)
  {
    v7 = DerivedStorage;
    FigRetainProxyLockMutex();
    if (FigRetainProxyIsInvalidated())
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v12);
    }

    else
    {
      if (!CFEqual(a2, @"ClientPID"))
      {
        if (CFEqual(a2, @"AllowAlternateDecoderSelection"))
        {
          v6 = 0;
          *(v7 + 656) = *MEMORY[0x1E695E4D0] == a3;
        }

        else
        {
          v6 = 4294954512;
        }

        goto LABEL_8;
      }

      v8 = *(v7 + 648);
      *(v7 + 648) = a3;
      CFRetain(a3);
      if (v8)
      {
        CFRelease(v8);
      }
    }

    v6 = 0;
LABEL_8:
    FigRetainProxyUnlockMutex();
  }

  return v6;
}

uint64_t saig_DurationChanged(uint64_t a1, uint64_t a2)
{
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_15;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v3 = CFRetain(Owner);
  }

  else
  {
    v3 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 104) != 2)
  {
    v16 = 0;
    goto LABEL_13;
  }

  v5 = DerivedStorage;
  v6 = *(DerivedStorage + 96);
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = v7(v6, 1.0);
  if (!v8)
  {
    if (*(*(CMBaseObjectGetVTable() + 16) + 72))
    {
      OUTLINED_FUNCTION_39_1();
      v16 = v15(v9, v10, v11, v12, v13, v14);
      if (!v16)
      {
        *(v5 + 104) = 3;
      }

      goto LABEL_13;
    }

LABEL_12:
    v16 = 4294954514;
    goto LABEL_13;
  }

  v16 = v8;
LABEL_13:
  saig_HandleError(v3, v16);
  if (v3)
  {
    CFRelease(v3);
  }

LABEL_15:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t saig_AlternateListChanged(uint64_t a1, uint64_t a2)
{
  v85 = *MEMORY[0x1E69E9840];
  theDict = 0;
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_98;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v4 = CFRetain(Owner);
  }

  else
  {
    v4 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigBytePumpGetFigBaseObject();
  v7 = v6;
  v8 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v8)
  {
    v9 = *MEMORY[0x1E695E480];
    v10 = v8(v7, 0x1F0B1EE98, *MEMORY[0x1E695E480], &theDict);
    if (!v10)
    {
      v11 = *(DerivedStorage + 104);
      if (v11 == 2)
      {
        v12 = *(DerivedStorage + 144);
        if (!v12)
        {
LABEL_12:
          allocator = v9;
          Value = CFDictionaryGetValue(theDict, @"FBPAIK_FigAlternateArray");
          Count = CFArrayGetCount(Value);
          v15 = *(DerivedStorage + 112);
          if (v15)
          {
            CFRelease(v15);
            *(DerivedStorage + 112) = 0;
          }

          v16 = *(DerivedStorage + 128);
          if (v16)
          {
            CFRelease(v16);
            *(DerivedStorage + 128) = 0;
          }

          v76 = (DerivedStorage + 112);
          v17 = *(DerivedStorage + 120);
          if (v17)
          {
            CFRelease(v17);
            *(DerivedStorage + 120) = 0;
          }

          v75 = (DerivedStorage + 120);
          v74 = Value;
          v77 = v4;
          v18 = CFDictionaryGetValue(theDict, @"FBPAIK_MediaSelectionArray");
          if (v18)
          {
            v19 = CFRetain(v18);
            *(DerivedStorage + 128) = v19;
            if (v19)
            {
              v20 = *(DerivedStorage + 136);
              if (v20)
              {
                CFRelease(v20);
                *(DerivedStorage + 136) = 0;
              }

              Mutable = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
              *(DerivedStorage + 136) = Mutable;
              if (!Mutable)
              {
                v10 = 4294954510;
                goto LABEL_93;
              }

              v79 = CFArrayGetCount(*(DerivedStorage + 128));
              if (v79 >= 1)
              {
                for (i = 0; i != v79; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(*(DerivedStorage + 128), i);
                  v24 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupMediaType");
                  if (!v24)
                  {
                    goto LABEL_33;
                  }

                  v25 = *(DerivedStorage + 136);
                  if (!v25)
                  {
                    goto LABEL_33;
                  }

                  v26 = CFArrayGetCount(*(DerivedStorage + 136));
                  if (v26 < 1)
                  {
                    goto LABEL_33;
                  }

                  v27 = v26;
                  v28 = 0;
                  while (1)
                  {
                    v29 = CFArrayGetValueAtIndex(v25, v28);
                    CFDictionaryGetValue(v29, @"MediaSelectionGroupMediaType");
                    if (FigCFEqual())
                    {
                      break;
                    }

                    if (v27 == ++v28)
                    {
                      goto LABEL_33;
                    }
                  }

                  if (!v29)
                  {
LABEL_33:
                    CFStringForOSTypeValue = FigGetCFStringForOSTypeValue();
                    v31 = CFEqual(v24, CFStringForOSTypeValue);
                    v32 = CFDictionaryGetValue(ValueAtIndex, @"MediaSelectionGroupOptions");
                    keys = 0;
                    v84 = 0;
                    values = 0;
                    v82 = 0;
                    if (!v31)
                    {
                      v33 = v32;
                      v34 = CFArrayGetCount(v32);
                      if (v34 < 1)
                      {
LABEL_39:
                        v36 = 0;
                      }

                      else
                      {
                        v35 = v34;
                        v36 = 0;
                        while (1)
                        {
                          v37 = CFArrayGetValueAtIndex(v33, v36);
                          v38 = CFDictionaryGetValue(v37, @"MediaSelectionOptionsIsDefault");
                          if (v38)
                          {
                            if (CFBooleanGetValue(v38))
                            {
                              break;
                            }
                          }

                          if (v35 == ++v36)
                          {
                            goto LABEL_39;
                          }
                        }
                      }

                      v39 = CFArrayGetValueAtIndex(v33, v36);
                      keys = @"MediaSelectionOptionsPersistentID";
                      v40 = CFDictionaryGetValue(v39, @"MediaSelectionOptionsPersistentID");
                      v84 = @"MediaSelectionGroupMediaType";
                      values = v40;
                      v82 = v24;
                      v41 = CFDictionaryCreate(allocator, &keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                      if (!v41)
                      {
                        fig_log_get_emitter();
                        OUTLINED_FUNCTION_3_2();
                        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v73, v2, v74);
                        v10 = v72;
                        if (v72)
                        {
                          goto LABEL_93;
                        }

                        break;
                      }

                      v42 = v41;
                      CFArrayAppendValue(*(DerivedStorage + 136), v41);
                      CFRelease(v42);
                    }
                  }
                }
              }
            }
          }

          else
          {
            *(DerivedStorage + 128) = 0;
          }

          v47 = CFArrayCreateMutable(allocator, Count, MEMORY[0x1E695E9C0]);
          *v76 = v47;
          if (v47 && (v48 = OUTLINED_FUNCTION_312(), v51 = CFArrayCreateMutable(v48, v49, v50), (*v75 = v51) != 0))
          {
            if (Count >= 1)
            {
              for (j = 0; j != Count; ++j)
              {
                LODWORD(keys) = 0;
                v53 = CFArrayGetValueAtIndex(v74, j);
                CodecString = FigAlternateGetCodecString(v53);
                FigAlternateGetPeakBitRate(v53);
                if (CodecString)
                {
                  v55 = OUTLINED_FUNCTION_312();
                  if (FigMediaValidatorValidateRFC4281CodecsForStreaming(v55, v56, v57))
                  {
                    continue;
                  }

                  IsIFrameOnly = FigAlternateIsIFrameOnly(v53);
                  v59 = (keys & 3) == 1 && IsIFrameOnly == 0;
                  if (v59 || (keys & 4) != 0)
                  {
                    continue;
                  }
                }

                if (FigAlternateIsIFrameOnly(v53))
                {
                  v61 = (DerivedStorage + 120);
                }

                else
                {
                  v61 = (DerivedStorage + 112);
                }

                CFArrayAppendValue(*v61, v53);
              }
            }

            v62 = *(DerivedStorage + 112);
            v86.length = CFArrayGetCount(v62);
            v86.location = 0;
            CFArraySortValues(v62, v86, saig_AlternatesComparator, 0);
            CFArrayGetCount(*(DerivedStorage + 120));
            v63 = OUTLINED_FUNCTION_312();
            CFArraySortValues(v63, v87, saig_AlternatesComparator, 0);
            if (*(DerivedStorage + 96) && CFArrayGetCount(*v75) > 0 && CFArrayGetCount(*v76) > 0)
            {
              v64 = *(DerivedStorage + 144);
              if (v64)
              {
                if (FigAlternateIsIFrameOnly(v64))
                {
                  v65.length = CFArrayGetCount(*(DerivedStorage + 120));
                  v66 = *(DerivedStorage + 120);
                }

                else
                {
                  v65.length = CFArrayGetCount(*(DerivedStorage + 112));
                  v66 = *(DerivedStorage + 112);
                }

                v65.location = 0;
                if (!CFArrayContainsValue(v66, v65, *(DerivedStorage + 144)))
                {
                  saig_tearDownManifoldsAndDeleteTracks(v77);
                  v67 = *(DerivedStorage + 144);
                  if (v67)
                  {
                    CFRelease(v67);
                    *(DerivedStorage + 144) = 0;
                  }

                  FigSimpleMutexLock();
                  v68 = *(DerivedStorage + 560);
                  if (v68)
                  {
                    CFRelease(v68);
                    *(DerivedStorage + 560) = 0;
                  }

                  FigSimpleMutexUnlock();
                }
              }

              v69 = CFArrayGetValueAtIndex(*v76, 0);
              if (CFDictionaryContainsKey(theDict, @"FBPAIK_CurrentFigAlternate") && *(DerivedStorage + 144))
              {
                v10 = 0;
                goto LABEL_93;
              }

              if (*(DerivedStorage + 104) != 3)
              {
                *(DerivedStorage + 104) = 2;
              }

              v70 = saig_SetAlternate(v77, v69, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
            }

            else
            {
              fig_log_get_emitter();
              OUTLINED_FUNCTION_3_2();
              FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
            }

            v10 = v70;
          }

          else
          {
            v10 = 4294954862;
          }

LABEL_93:
          if (theDict)
          {
            CFRelease(theDict);
          }

          v4 = v77;
          goto LABEL_96;
        }

        CFRelease(v12);
        *(DerivedStorage + 144) = 0;
        v11 = *(DerivedStorage + 104);
      }

      if (!v11)
      {
        *(DerivedStorage + 104) = 1;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v10 = 4294954514;
  }

  *(DerivedStorage + 352) = 1;
  *(DerivedStorage + 344) = 1;
  v43 = *(DerivedStorage + 112);
  if (v43)
  {
    CFRelease(v43);
    *(DerivedStorage + 112) = 0;
  }

  v44 = *(DerivedStorage + 128);
  if (v44)
  {
    CFRelease(v44);
    *(DerivedStorage + 128) = 0;
  }

  v45 = *(DerivedStorage + 120);
  if (v45)
  {
    CFRelease(v45);
    *(DerivedStorage + 120) = 0;
  }

  v46 = *(DerivedStorage + 144);
  if (v46)
  {
    CFRelease(v46);
    *(DerivedStorage + 144) = 0;
  }

LABEL_96:
  saig_HandleError(v4, v10);
  if (v4)
  {
    CFRelease(v4);
  }

LABEL_98:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t saig_RequestCGImageAtTimeAsync(uint64_t a1, uint64_t a2, const void *a3, const void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v19 = 0;
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_1_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17, DWORD2(v17), v18);
    goto LABEL_19;
  }

  v8 = *(DerivedStorage + 552) + 1;
  *(DerivedStorage + 552) = v8;
  v17 = *a2;
  v18 = *(a2 + 16);
  v9 = FAIGCommon_createImageRequest(&v17, a3, a4, v8, &v19);
  if (v9)
  {
LABEL_19:
    v13 = v9;
    goto LABEL_17;
  }

  FigSimpleMutexLock();
  *v19 = 0;
  v10 = v19;
  **(DerivedStorage + 48) = v19;
  *(DerivedStorage + 48) = v10;
  v11 = *(DerivedStorage + 56);
  if (*(DerivedStorage + 56))
  {
    v12 = 0;
  }

  else
  {
    *(DerivedStorage + 56) = 1;
    v12 = *(DerivedStorage + 80);
    if (v12)
    {
      *(DerivedStorage + 80) = 0;
    }
  }

  FigSimpleMutexUnlock();
  FigSemaphoreSignal();
  if (v12)
  {
    FigThreadJoin();
  }

  if (v11)
  {
    v13 = 0;
  }

  else
  {
    *&v17 = @"com.apple.coremedia.streamimagegenerator.processimagerequest";
    v14 = CFDictionaryCreate(*MEMORY[0x1E695E480], MEMORY[0x1E69631F0], &v17, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v13 = FigThreadCreate();
    if (v14)
    {
      CFRelease(v14);
    }

    if (v13)
    {
      FigSimpleMutexLock();
      *(DerivedStorage + 56) = 0;
      v15 = **(DerivedStorage + 40);
      *(DerivedStorage + 40) = v15;
      if (!v15)
      {
        *(DerivedStorage + 48) = DerivedStorage + 40;
      }

      FigSimpleMutexUnlock();
      FAIGCommon_releaseImageRequest(v19);
    }
  }

LABEL_17:
  FigRetainProxyUnlockMutex();
  return v13;
}

uint64_t saig_RequestAnImageFromPump(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  valuePtr = 0;
  v66 = **&MEMORY[0x1E6960C88];
  v65 = v66;
  v63 = 0uLL;
  v64 = 0;
  v5 = CMBaseObjectGetDerivedStorage();
  *&v71 = 0;
  v70.value = 0;
  v6 = *(v5 + 120);
  if (!v6 || !a2 || (Count = CFArrayGetCount(v6), Count <= 0))
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    v27 = v54;
    goto LABEL_38;
  }

  v8 = Count;
  FigCFDictionaryGetCGFloatIfPresent();
  FigCFDictionaryGetCGFloatIfPresent();
  v9 = *(v5 + 144);
  v10 = v9 && FigAlternateIsIFrameOnly(v9);
  value = v70.value;
  if (*&v71 == *(v5 + 152) && *&v70.value == *(v5 + 160))
  {
    if (v10)
    {
      goto LABEL_39;
    }
  }

  else
  {
    *(v5 + 152) = v71;
    *(v5 + 160) = value;
  }

  v12 = 0;
  v13 = 0;
  v14 = *MEMORY[0x1E695F060];
  v15 = *(MEMORY[0x1E695F060] + 8);
  v16 = 0.0;
  v17 = 0.0;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(v5 + 120), v12);
    Resolution = FigAlternateGetResolution(ValueAtIndex);
    if (Resolution != v14 || v20 != v15)
    {
      if (!v13)
      {
        goto LABEL_23;
      }

      v22 = v20 * Resolution;
      v23 = v16 * v17;
      if (v20 * Resolution <= *&v71 * *&v70.value)
      {
        if (v22 > v23)
        {
          goto LABEL_23;
        }
      }

      else if (v22 < v23 || v23 < *&v71 * *&v70.value)
      {
LABEL_23:
        v17 = Resolution;
        v16 = v20;
        v13 = ValueAtIndex;
      }
    }

    ++v12;
  }

  while (v8 != v12);
  if (v13 || (v13 = CFArrayGetValueAtIndex(*(v5 + 120), 0)) != 0)
  {
    CFRetain(v13);
  }

  CMBaseObjectGetDerivedStorage();
  if (FigCFEqual())
  {
    goto LABEL_36;
  }

  DescriptionString = FigAlternateCreateDescriptionString(v13);
  saig_tearDownManifoldsAndDeleteTracks(a1);
  v26 = saig_SetAlternate(a1, v13, MEMORY[0x1E6960C70], MEMORY[0x1E6960C70]);
  if (v26)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, v58, v59);
    if (DescriptionString)
    {
LABEL_34:
      CFRelease(DescriptionString);
    }
  }

  else if (DescriptionString)
  {
    goto LABEL_34;
  }

  if (v26)
  {
    fig_log_get_emitter();
    OUTLINED_FUNCTION_3_5();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v56, v58, v59);
    v27 = v55;
    if (v13)
    {
LABEL_37:
      CFRelease(v13);
    }
  }

  else
  {
LABEL_36:
    v27 = 0;
    if (v13)
    {
      goto LABEL_37;
    }
  }

LABEL_38:
  if (!v27)
  {
LABEL_39:
    v28 = *(a2 + 40);
    if (v28)
    {
      v29 = CFDictionaryGetValue(v28, @"TimeFlags");
      if (v29)
      {
        v30 = v29;
        v31 = CFGetTypeID(v29);
        if (v31 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v30, kCFNumberIntType, &valuePtr);
        }
      }

      v32 = CFDictionaryGetValue(*(a2 + 40), @"TimeToleranceBefore");
      if (v32)
      {
        v33 = v32;
        v34 = CFGetTypeID(v32);
        if (v34 == CFDictionaryGetTypeID())
        {
          CMTimeMakeFromDictionary(&v66, v33);
        }
      }

      v35 = CFDictionaryGetValue(*(a2 + 40), @"TimeToleranceAfter");
      if (v35)
      {
        v36 = v35;
        v37 = CFGetTypeID(v35);
        if (v37 == CFDictionaryGetTypeID())
        {
          CMTimeMakeFromDictionary(&v65, v36);
        }
      }
    }

    if ((valuePtr - 1) > 4)
    {
      v38 = 2;
    }

    else
    {
      v38 = dword_196E765E0[valuePtr - 1];
    }

    v71 = *(a2 + 12);
    v72 = *(a2 + 28);
    v70 = *(DerivedStorage + 392);
    v39 = OUTLINED_FUNCTION_8_18();
    CMTimeAdd(v41, v39, v40);
    v71 = 0uLL;
    v72 = 0;
    v57 = *MEMORY[0x1E6960CC0];
    *&v70.value = *MEMORY[0x1E6960CC0];
    v42 = *(MEMORY[0x1E6960CC0] + 16);
    v70.epoch = v42;
    v43 = OUTLINED_FUNCTION_8_18();
    if (CMTimeCompare(v43, v44) < 0)
    {
      v63 = v57;
      v64 = v42;
    }

    v45 = *(DerivedStorage + 96);
    OUTLINED_FUNCTION_25_9();
    v70 = v66;
    v46 = OUTLINED_FUNCTION_8_18();
    CMTimeSubtract(v48, v46, v47);
    OUTLINED_FUNCTION_25_9();
    v70 = v65;
    v49 = OUTLINED_FUNCTION_8_18();
    CMTimeAdd(v51, v49, v50);
    v52 = *(*(CMBaseObjectGetVTable() + 16) + 104);
    if (v52)
    {
      v71 = v63;
      v72 = v64;
      v70 = v62;
      v68 = v60;
      v69 = v61;
      return v52(v45, &v71, v38, &v70, &v68, DerivedStorage + 536);
    }

    else
    {
      return 4294954514;
    }
  }

  return v27;
}

uint64_t saig_PumpTransferCallback(uint64_t a1, const void *a2, CFErrorRef err)
{
  if (err)
  {
    Code = CFErrorGetCode(err);
  }

  else
  {
    Code = 0;
  }

  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_19;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v6 = CFRetain(Owner);
  }

  else
  {
    v6 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!Code)
  {
    if (a2)
    {
      v8 = DerivedStorage;
      *(DerivedStorage + 96) = FigBytePumpRetain(a2);
      FigBytePumpGetFigBaseObject();
      v10 = v9;
      v11 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v11)
      {
LABEL_16:
        Code = 4294954514;
        goto LABEL_17;
      }

      PumpReady = v11(v10, 0x1F0B1F638, @"SAIGenerator");
      if (!PumpReady)
      {
        DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_29_8(DefaultLocalCenter, *v8, v14, 0x1F0B1FA18, v8[12]);
        v15 = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_29_8(v15, *v8, v16, @"FBP_FatalErrorOccurred", v8[12]);
        v17 = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_29_8(v17, *v8, v18, 0x1F0B1FA58, v8[12]);
        v19 = CMNotificationCenterGetDefaultLocalCenter();
        OUTLINED_FUNCTION_29_8(v19, *v8, v20, 0x1F0B1FAB8, v8[12]);
        v21 = v8[12];
        v22 = *v8;
        v23 = *(*(CMBaseObjectGetVTable() + 16) + 88);
        if (v23)
        {
          PumpReady = v23(v21, saig_BytePumpFn, 0, v22);
          if (!PumpReady)
          {
            PumpReady = saig_GetPumpReady(v6);
          }

          goto LABEL_15;
        }

        goto LABEL_16;
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_1_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v25, v26, v27);
    }

LABEL_15:
    Code = PumpReady;
  }

LABEL_17:
  saig_HandleError(v6, Code);
  if (v6)
  {
    CFRelease(v6);
  }

LABEL_19:
  FigRetainProxyUnlockMutex();

  return FigRetainProxyRelease();
}

uint64_t saig_GetPumpReady(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v33 = 0;
  v34 = 0;
  CMBaseObjectGetDerivedStorage();
  v38[0] = 0;
  v37 = 0;
  cf = 0;
  v36 = 0;
  v2 = *MEMORY[0x1E695E480];
  FigAssetGetCMBaseObject();
  v4 = v3;
  v5 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v5 || v5(v4, @"assetProperty_CreationOptionsDictionary", v2, v38) || (FigAssetGetCMBaseObject(), v7 = v6, (v8 = *(*(CMBaseObjectGetVTable() + 8) + 48)) == 0) || v8(v7, @"assetProperty_OriginalNetworkContentURL", v2, &v36))
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(v2, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      URLValue = FigCFDictionaryGetURLValue();
      FigCFDictionaryGetBooleanIfPresent();
      if (v37)
      {
        if (URLValue)
        {
          CFDictionarySetValue(Mutable, @"FSC_DiskCacheRepositoryURL", URLValue);
          CFDictionarySetValue(Mutable, @"FSC_Backing", @"FSC_DiskBacking");
          CFDictionarySetValue(Mutable, @"FSC_ClientName", @"imagegen");
          FigCFDictionarySetValueFromKeyInDict();
          FigCFDictionarySetValueFromKeyInDict();
          if (!FigStreamingCacheCreate(v2, v36, Mutable, &cf))
          {
            v11 = cf;
            FigBytePumpGetFigBaseObject();
            v13 = v12;
            v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v14)
            {
              v14(v13, 0x1F0B1F098, v11);
            }
          }
        }
      }
    }

    else
    {
      fig_log_get_emitter();
      OUTLINED_FUNCTION_0_4();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
    }
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v38[0])
  {
    CFRelease(v38[0]);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  FigBytePumpGetFigBaseObject();
  v16 = v15;
  v17 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v17 && v17(v16, 0x1F0B1EE98, v2, &v34) == -12783)
  {
    *(DerivedStorage + 104) = 0;
    v18 = *(DerivedStorage + 96);
    v19 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v19)
    {
      v20 = v19(v18);
      goto LABEL_24;
    }

LABEL_41:
    v21 = 4294954514;
    goto LABEL_36;
  }

  FigBytePumpGetFigBaseObject();
  v23 = v22;
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v24)
  {
    v21 = 4294954514;
    goto LABEL_35;
  }

  v25 = v24(v23, @"FBP_Duration", v2, &v33);
  if (v25 == -12783)
  {
    *(DerivedStorage + 104) = 1;
    saig_AlternateListChanged(v25, *DerivedStorage);
    goto LABEL_43;
  }

  v21 = v25;
  if (v25)
  {
    goto LABEL_35;
  }

  *(DerivedStorage + 104) = 3;
  saig_AlternateListChanged(v25, *DerivedStorage);
  if (!*(DerivedStorage + 144))
  {
LABEL_43:
    v21 = 0;
    goto LABEL_35;
  }

  v26 = *(DerivedStorage + 96);
  v27 = *(*(CMBaseObjectGetVTable() + 16) + 96);
  if (!v27)
  {
    goto LABEL_41;
  }

  v28 = v27(v26, 1.0);
  if (v28)
  {
LABEL_45:
    v21 = v28;
    goto LABEL_36;
  }

  if (!*(*(CMBaseObjectGetVTable() + 16) + 72))
  {
    goto LABEL_41;
  }

  v29 = *(MEMORY[0x1E6960C98] + 16);
  *v38 = *MEMORY[0x1E6960C98];
  v39 = v29;
  v40 = *(MEMORY[0x1E6960C98] + 32);
  OUTLINED_FUNCTION_39_1();
  v20 = v30();
LABEL_24:
  v21 = v20;
  if (!v20)
  {
LABEL_35:
    if (*(DerivedStorage + 96))
    {
      goto LABEL_36;
    }

    fig_log_get_emitter();
    OUTLINED_FUNCTION_0_4();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v32, v33, v34);
    goto LABEL_45;
  }

LABEL_36:
  if (v34)
  {
    CFRelease(v34);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  return v21;
}

uint64_t saig_BytePumpFn(int a1, uint64_t a2, const void *a3, unsigned int a4, unsigned int a5, int a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, CFErrorRef err)
{
  v77 = *MEMORY[0x1E69E9840];
  if (err)
  {
    Code = CFErrorGetCode(err);
  }

  else
  {
    Code = 0;
  }

  v75 = *MEMORY[0x1E6960C70];
  v76 = *(MEMORY[0x1E6960C70] + 8);
  FigRetainProxyRetain();
  FigRetainProxyLockMutex();
  if (FigRetainProxyIsInvalidated())
  {
    goto LABEL_82;
  }

  Owner = FigRetainProxyGetOwner();
  if (Owner)
  {
    v20 = CFRetain(Owner);
  }

  else
  {
    v20 = 0;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 4 * a5 + 536) != a6)
  {
    goto LABEL_80;
  }

  v22 = DerivedStorage;
  v67 = a7;
  v23 = a5;
  v24 = DerivedStorage + 8 * a5;
  v25 = *(v24 + 296) == a11;
  if (*(v24 + 296) != a11)
  {
    a4 &= ~4u;
  }

  if (a4)
  {
    v25 = 0;
  }

  if (Code)
  {
    goto LABEL_80;
  }

  v69 = *(MEMORY[0x1E6960C70] + 16);
  if ((a4 & 0x14) == 4)
  {
    v27 = *(v24 + 176);
    v26 = (v24 + 176);
    if (!v27)
    {
      goto LABEL_34;
    }

    FigStopForwardingMediaServicesProcessDeathNotification();
    v28 = *v26;
    v29 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v29)
    {
      v29(v28, 0);
    }

    goto LABEL_32;
  }

  if ((a4 & 0x10) != 0 || !v25)
  {
    *(DerivedStorage + 548) = 0;
    if (!v25)
    {
      v31 = CMBaseObjectGetDerivedStorage();
      v64 = v31 + 8 * a5;
      v65 = v31;
      v26 = (v64 + 176);
      v32 = *(v64 + 176);
      if (v32)
      {
        v33 = *(*(CMBaseObjectGetVTable() + 16) + 16);
        if (v33)
        {
          v33(v32, 0);
        }
      }

      v34 = *(v65 + 320);
      if (v34)
      {
        do
        {
          v35 = *(v34 + 8);
          if (*(v34 + 92) == a5)
          {
            saig_deleteTrack(v20, v34);
          }

          v34 = v35;
        }

        while (v35);
      }

      v36 = v65 + 24 * a5;
      *(v36 + 224) = *MEMORY[0x1E6960C70];
      *(v36 + 240) = v69;
      *(v64 + 296) = a11;
      if (*v26)
      {
        FigStopForwardingMediaServicesProcessDeathNotification();
LABEL_32:
        if (*v26)
        {
          CFRelease(*v26);
          *v26 = 0;
        }
      }
    }
  }

LABEL_34:
  if ((*(v22 + 380) & 1) == 0)
  {
    OUTLINED_FUNCTION_27_8();
    if (v37)
    {
      v38 = *a8;
      *(v22 + 384) = *(a8 + 2);
      *(v22 + 368) = v38;
    }
  }

  OUTLINED_FUNCTION_27_8();
  if (v37)
  {
    v39 = *a8;
    v40 = v22 + 24 * a5;
    *(v40 + 480) = *(a8 + 2);
    *(v40 + 464) = v39;
  }

  v41 = v22 + 176;
  if (*(v22 + 176 + 8 * a5))
  {
    if (!a3 && !a4)
    {
      Code = 0;
      goto LABEL_80;
    }

    fpfs_prepareDataForInject(a3);
    v48 = *(v41 + 8 * a5);
    v49 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (!v49)
    {
      Code = 4294954514;
      goto LABEL_80;
    }

    Code = v49(v48, v67, (a4 >> 5) & 2 | (a4 >> 4) & 1, a3);
    if (Code)
    {
      goto LABEL_80;
    }

    v41 = v22 + 176;
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  if (!a3)
  {
    Code = ((a4 << 30) >> 31) & 0xFFFFCF71;
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  v66 = v22 + 176;
  v68 = v22 + 200;
  if (*(v22 + 200 + 8 * a5))
  {
    OUTLINED_FUNCTION_39_1();
    appended = CMBlockBufferAppendBufferReference(v42, v43, v44, v45, v46);
    if (appended)
    {
      Code = appended;
      goto LABEL_80;
    }
  }

  else
  {
    *(v22 + 200 + 8 * a5) = CFRetain(a3);
  }

  v50 = *(v22 + 320);
  if (v50)
  {
    v51 = *(MEMORY[0x1E6960C70] + 12);
    do
    {
      if (*(v50 + 48) == a11)
      {
        lhs = *(v50 + 120);
        rhs = *(v50 + 64);
        CMTimeSubtract(&time1, &lhs, &rhs);
        value = time1.value;
        flags = time1.flags;
        timescale = time1.timescale;
        if ((time1.flags & 0x1D) == 1)
        {
          epoch = time1.epoch;
          if ((v51 & 1) == 0 || (time1.value = value, time1.timescale = timescale, lhs.value = v75, lhs.timescale = v76, lhs.flags = v51, lhs.epoch = v69, CMTimeCompare(&time1, &lhs) >= 1))
          {
            v75 = value;
            v76 = timescale;
            v51 = flags;
            v69 = epoch;
          }
        }
      }

      v50 = *(v50 + 8);
    }

    while (v50);
  }

  v54 = *(v68 + 8 * v23);
  v55 = CMBaseObjectGetDerivedStorage();
  time1 = **&MEMORY[0x1E6960CC0];
  FigManifoldFactoryCreateManifold(0, v54, 0, &time1, 0, saig_NewTrackNote, 0, 0, 0, 28, v20, (v55 + 8 * v23 + 176));
  started = FigStartForwardingMediaServicesProcessDeathNotification();
  if (started != -16044)
  {
    Code = started;
    v41 = v66;
    if (!started)
    {
      fpfs_prepareDataForInject(*(v68 + 8 * v23));
      v57 = *(v66 + 8 * v23);
      v58 = *(v68 + 8 * v23);
      v59 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      Code = v59 ? v59(v57, 0, (a4 >> 5) & 2 | (a4 >> 4) & 1, v58) : 4294954514;
      v60 = *(v68 + 8 * v23);
      if (v60)
      {
        CFRelease(v60);
        *(v68 + 8 * v23) = 0;
      }
    }

    if (Code || (a4 & 0x20) == 0)
    {
      goto LABEL_80;
    }

    goto LABEL_76;
  }

  v41 = v66;
  if (CMBlockBufferGetDataLength(*(v68 + 8 * v23)) > 0x20000)
  {
    Code = 4294951252;
    goto LABEL_80;
  }

  Code = 0;
  if ((a4 & 0x20) != 0)
  {
LABEL_76:
    v61 = *(v41 + 8 * v23);
    if (v61)
    {
      v62 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v62)
      {
        v62(v61);
      }
    }
  }

LABEL_80:
  saig_HandleError(v20, Code);
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_82:
  FigRetainProxyUnlockMutex();
  return FigRetainProxyRelease();
}

uint64_t saig_FmtDescChangeNote(uint64_t a1, uint64_t a2, void *a3, const opaqueCMFormatDescription *a4, const void *a5)
{
  v8 = *a3;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = a3[4];
  if (v10 == a4 && a3[19] == a5)
  {
    return 0;
  }

  if (v10)
  {
    return 4294954860;
  }

  if (*(a3 + 93))
  {
    v12 = a5 != 0;
    if (a5)
    {
      OUTLINED_FUNCTION_33();
      if (v13)
      {
        saig_tearDownManifoldsAndDeleteTracks(v8);
        CFArrayGetCount(*(DerivedStorage + 120));
        v14 = OUTLINED_FUNCTION_312();
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v14, v22, v15);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(*(DerivedStorage + 120), FirstIndexOfValue);
        }

        v17 = *(DerivedStorage + 144);
        if (v17)
        {
          CFRelease(v17);
          *(DerivedStorage + 144) = 0;
        }

        return 4294954860;
      }
    }
  }

  else
  {
    v12 = a5 != 0;
  }

  a3[4] = FigFormatDescriptionRetain();
  MediaType = CMFormatDescriptionGetMediaType(a4);
  *(a3 + 7) = MediaType;
  if (MediaType == 1936684398)
  {
    FigGaplessInfoGetDefaultAudioPrimingDuration(a3[4], &v21);
    *(a3 + 20) = v21;
  }

  if (!v12)
  {
    v20 = a3[19];
    a3[19] = a5;
LABEL_22:
    if (v20)
    {
      CFRelease(v20);
    }

    return 0;
  }

  v19 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (!v19)
  {
    return 4294954514;
  }

  result = v19(a5, @"DisplayList", 0);
  if (!result)
  {
    saig_ensureDecryptorIsReady(a5);
    v20 = a3[19];
    a3[19] = a5;
    CFRetain(a5);
    goto LABEL_22;
  }

  return result;
}

uint64_t saig_PushSampleBuffer(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, opaqueCMSampleBuffer *a6)
{
  v276 = *a3;
  values = CMBaseObjectGetDerivedStorage();
  memset(&v297, 0, sizeof(v297));
  PresentationTimeStamp = CMSampleBufferGetPresentationTimeStamp(&v297, a6);
  memset(&keys[1], 0, 24);
  keys[0] = @"AIGRequestedNotificationWhenConsumed";
  if (*(a3 + 152))
  {
    FigBasicAESCPECryptorGetClassID();
    if (!CMBaseObjectIsMemberOfClass() || (LODWORD(outputPresentationTimeStamp.value) = 0, v19 = *(a3 + 152), (v20 = *(*(CMBaseObjectGetVTable() + 16) + 16)) == 0) || (PresentationTimeStamp = v20(v19, &outputPresentationTimeStamp), PresentationTimeStamp | LODWORD(outputPresentationTimeStamp.value)))
    {
      PresentationTimeStamp = FigSampleBufferSetDecryptor();
    }
  }

  key = *MEMORY[0x1E6960458];
  v272 = *MEMORY[0x1E695E4C0];
  v274 = (a3 + 184);
  allocator = *MEMORY[0x1E695E480];
  v258 = *MEMORY[0x1E69841E0];
  value = *MEMORY[0x1E695E4D0];
  v268 = (a3 + 224);
  v256 = *MEMORY[0x1E6965E50];
  v246 = @"FieldMode";
  v244 = *MEMORY[0x1E6983A20];
  v254 = @"ClientPID";
  v250 = @"SourceSampleBufferQueue";
  v242 = @"ObeyEmptyMediaMarkers";
  v252 = @"DecodeError";
  valuePtr = (a3 + 232);
  v260 = *MEMORY[0x1E6960520];
  v248 = @"PrerollRate";
  v266 = *MEMORY[0x1E6960500];
  v21 = MEMORY[0x1E6960CC0];
  v22 = 1;
  while (2)
  {
    if ((*(a3 + 76) & 0x1D) == 1)
    {
      OUTLINED_FUNCTION_21_8(PresentationTimeStamp, v10, v11, v12, v13, v14, v15, v16, v17, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, value, valuePtr, v266, v268, allocator, v272, v274, v276, key, v279, v281, v282, v284, v285, v287, v288, v289.value, *&v289.timescale, v289.epoch, v290.value, *&v290.timescale, v290.epoch, v291, v292.value, *&v292.timescale, v292.epoch, v293.value, *&v293.timescale, v293.epoch, v294.value, *&v294.timescale, v294.epoch, keys[0], keys[1], keys[2], keys[3], v296, v18, v297.value);
      OUTLINED_FUNCTION_20_7();
      v23 = OUTLINED_FUNCTION_7_21();
      CMTimeAdd(v25, v23, v24);
      outputPresentationTimeStamp = *&keys[1];
      PresentationTimeStamp = CMSampleBufferSetOutputPresentationTimeStamp(a6, &outputPresentationTimeStamp);
    }

    else
    {
      *&keys[1] = **&MEMORY[0x1E6960C70];
    }

    v26 = 0;
    v27 = 0;
    v28 = 0;
    switch(*(a3 + 88))
    {
      case 0:
        v29 = values;
        v30 = *(values + 40);
        if (v30)
        {
          do
          {
            if ((*(v30 + 88) & 0xFFFFFFFE) == 2 && *(v30 + 40) == *(a3 + 40) && *(v30 + 48) == *(a3 + 48))
            {
              PresentationTimeStamp = CMBufferQueueGetHead(*(v30 + 56));
              if (PresentationTimeStamp)
              {
                memset(&outputPresentationTimeStamp, 0, sizeof(outputPresentationTimeStamp));
                CMSampleBufferGetPresentationTimeStamp(&outputPresentationTimeStamp, PresentationTimeStamp);
                v303 = v297;
                OUTLINED_FUNCTION_9_19();
                *&v300.value = *(v30 + 160);
                v31 = OUTLINED_FUNCTION_15_13(*(v30 + 176));
                CMTimeAdd(v33, v31, v32);
                outputPresentationTimeStamp = time1;
                OUTLINED_FUNCTION_28_9();
                *&time2.value = *(a3 + 160);
                v34 = OUTLINED_FUNCTION_16_11(*(a3 + 176));
                CMTimeAdd(v36, v34, v35);
                OUTLINED_FUNCTION_28_9();
                OUTLINED_FUNCTION_9_19();
                PresentationTimeStamp = CMTimeCompare(&time1, &time2);
                if ((PresentationTimeStamp & 0x80000000) != 0)
                {
                  memset(&time1, 0, sizeof(time1));
                  OUTLINED_FUNCTION_9_19();
                  *&v300.value = *&v303.value;
                  v37 = OUTLINED_FUNCTION_15_13(v303.epoch);
                  CMTimeSubtract(v39, v37, v38);
                  memset(&time2, 0, sizeof(time2));
                  v300 = *(v30 + 64);
                  v299 = time1;
                  v40 = OUTLINED_FUNCTION_13_11();
                  CMTimeAdd(v42, v40, v41);
                  v43 = values + 24 * *(v30 + 92);
                  v44 = *(v43 + 14);
                  v300.epoch = *(v43 + 30);
                  *&v300.value = v44;
                  v299 = *(v30 + 64);
                  v45 = OUTLINED_FUNCTION_13_11();
                  if (!CMTimeCompare(v45, v46))
                  {
                    v47 = values + 24 * *(v30 + 92);
                    epoch = time2.epoch;
                    *(v47 + 14) = *&time2.value;
                    *(v47 + 30) = epoch;
                  }

                  *(v30 + 64) = time2;
                  *(v30 + 120) = *v21;
                  *(v30 + 136) = *(v21 + 16);
                  PresentationTimeStamp = CMBufferQueueCallForEachBuffer(*(v30 + 56), saig_AdjustTime, v30);
                }
              }
            }

            v30 = *(v30 + 8);
          }

          while (v30);
          v29 = values;
          v49 = (values + 320);
          v50 = *(values + 40);
          if (v50)
          {
            while (*(v50 + 48) != *(a3 + 48) || (*(v50 + 76) & 0x1D) != 1)
            {
              v50 = *(v50 + 8);
              if (!v50)
              {
                goto LABEL_34;
              }
            }

            v53 = *(v50 + 64);
            *(a3 + 80) = *(v50 + 80);
            *(a3 + 64) = v53;
          }
        }

        else
        {
          v49 = (values + 320);
        }

LABEL_34:
        if ((*(a3 + 76) & 0x1D) == 1)
        {
          v54 = *v49;
          if (v54)
          {
            while (*(v54 + 48) != *(a3 + 48) || (*(v54 + 76) & 0x1D) != 1 || (*(v54 + 108) & 1) == 0)
            {
              v54 = *(v54 + 8);
              if (!v54)
              {
                goto LABEL_61;
              }
            }

            v85 = *(v54 + 96);
            *(a3 + 112) = *(v54 + 112);
            *(a3 + 96) = v85;
          }

LABEL_61:
          v86 = &v29[24 * *(a3 + 92)];
          v17 = *(a3 + 64);
          v86[15].n128_u64[0] = *(a3 + 80);
          v86[14] = v17;
          if (*(a3 + 93) && (OUTLINED_FUNCTION_33(), v51))
          {
            if (*(a3 + 88) == 6)
            {
              continue;
            }

            v52 = 6;
          }

          else
          {
            if (*(a3 + 88) == 2)
            {
              continue;
            }

            v52 = 2;
          }

          goto LABEL_68;
        }

        if (*(a3 + 93))
        {
          v55 = *(a3 + 92);
          if (*(a3 + 28) == 1986618469)
          {
            if ((v29[24 * *(a3 + 92) + 476] & 1) == 0)
            {
LABEL_53:
              v29 = values;
              v72 = *(a3 + 92);
              v73 = values + 24 * *(a3 + 92);
              if (v73[236])
              {
                v74 = *(v73 + 14);
                *(a3 + 80) = *(v73 + 30);
                *(a3 + 64) = v74;
              }

              v75 = *(a3 + 76);
              if (v72 == 2 && (v75 & 1) == 0)
              {
                v76 = MEMORY[0x1E6960C68];
                *(a3 + 80) = *(MEMORY[0x1E6960C68] + 16);
                *(a3 + 64) = *v76;
                v77 = MEMORY[0x1E6960C70];
                *(a3 + 96) = *MEMORY[0x1E6960C70];
                *(a3 + 112) = *(v77 + 16);
                v75 = *(a3 + 76);
              }

              if ((v75 & 1) == 0)
              {
                OUTLINED_FUNCTION_1_47();
                *&time1.value = *&v297.value;
                v78 = OUTLINED_FUNCTION_0_56(v297.epoch);
                CMTimeSubtract(v80, v78, v79);
                OUTLINED_FUNCTION_17_9();
                *&v303.value = *(a3 + 64);
                v303.epoch = v81;
                *&time1.value = *(a3 + 160);
                v82 = OUTLINED_FUNCTION_0_56(*(a3 + 176));
                CMTimeSubtract(v84, v82, v83);
                OUTLINED_FUNCTION_17_9();
                v29 = values;
              }

              goto LABEL_61;
            }

            v56 = OUTLINED_FUNCTION_22_9();
            v303.epoch = v57;
            *&v303.value = v56;
            *&time1.value = *v58;
            v60 = OUTLINED_FUNCTION_0_56(*(v59 + 408));
            PresentationTimeStamp = CMTimeSubtract(v62, v60, v61);
            goto LABEL_50;
          }
        }

        else
        {
          v55 = *(a3 + 92);
        }

        if ((v29[24 * v55 + 476] & 1) == 0)
        {
          if (v29[380])
          {
            v71 = *(v29 + 23);
            *(a3 + 112) = *(v29 + 48);
            *(a3 + 96) = v71;
            goto LABEL_53;
          }

          *(a3 + 96) = *v21;
          v63 = *(v21 + 16);
          goto LABEL_51;
        }

        v64 = OUTLINED_FUNCTION_22_9();
        outputPresentationTimeStamp.epoch = v65;
        *&outputPresentationTimeStamp.value = v64;
        *&time1.value = *v66;
        time1.epoch = *(v67 + 408);
        CMTimeSubtract(&v303, &outputPresentationTimeStamp, &time1);
        *&time1.value = *v21;
        v68 = OUTLINED_FUNCTION_0_56(*(v21 + 16));
        PresentationTimeStamp = CMTimeMaximum(v70, v68, v69);
LABEL_50:
        *(a3 + 96) = *&outputPresentationTimeStamp.value;
        v63 = outputPresentationTimeStamp.epoch;
LABEL_51:
        *(a3 + 112) = v63;
        goto LABEL_53;
      case 2:
        OUTLINED_FUNCTION_33();
        if (!v51)
        {
          goto LABEL_31;
        }

        if ((a4 & 1) == 0)
        {
          goto LABEL_161;
        }

        PresentationTimeStamp = CMBufferQueueEnqueue(*(a3 + 56), a6);
        if (PresentationTimeStamp)
        {
          goto LABEL_216;
        }

        if (*(a3 + 88) != 3)
        {
LABEL_31:
          v52 = 3;
LABEL_68:
          *(a3 + 88) = v52;
        }

        continue;
      case 3:
        OUTLINED_FUNCTION_26_11();
        if (v51)
        {
          if (*(a3 + 92) == 1)
          {
            v87 = *(a3 + 152);
            if (!v87 || !saig_ensureDecryptorIsReady(v87)) && (*(a3 + 132))
            {
              OUTLINED_FUNCTION_4_40();
              OUTLINED_FUNCTION_1_47();
              v88 = OUTLINED_FUNCTION_7_21();
              if (CMTimeCompare(v88, v89) >= 1)
              {
                v90 = *(values + 12);
                v91 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v91)
                {
                  v91(v90, 1, 1);
                }
              }
            }
          }
        }

        OUTLINED_FUNCTION_33();
        if (v51)
        {
          if (*(values + 43) == 2)
          {
            v92 = *(a3 + 152);
            if (!v92 || !saig_ensureDecryptorIsReady(v92)) && (*(a3 + 132))
            {
              OUTLINED_FUNCTION_4_40();
              OUTLINED_FUNCTION_1_47();
              v93 = OUTLINED_FUNCTION_7_21();
              if (CMTimeCompare(v93, v94) >= 1)
              {
                v95 = *(values + 12);
                v96 = *(*(CMBaseObjectGetVTable() + 16) + 8);
                if (v96)
                {
                  v96(v95, 0, 1);
                }
              }
            }
          }
        }

        if (*(values + 9))
        {
          goto LABEL_161;
        }

        v27 = *(a3 + 48);
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v98 = *(DerivedStorage + 320);
        if (v98)
        {
          v99 = 0;
          while (1)
          {
            v100 = *(v98 + 152);
            if (v100 && saig_ensureDecryptorIsReady(v100))
            {
              goto LABEL_160;
            }

            if (*(v98 + 48) == v27)
            {
              if ((*(v98 + 76) & 1) != 0 || *(v98 + 144))
              {
                v99 |= 1 << *(v98 + 92);
              }

              if (!*(v98 + 93) && !*(v98 + 144))
              {
                if (!*(v98 + 32))
                {
                  break;
                }

                if (!*(v98 + 88))
                {
                  break;
                }

                if (!*(v98 + 28))
                {
                  break;
                }

                if ((*(v98 + 132) & 1) == 0)
                {
                  break;
                }

                outputPresentationTimeStamp = *(v98 + 120);
                v303 = *(v98 + 96);
                v101 = OUTLINED_FUNCTION_7_21();
                if (CMTimeCompare(v101, v102) < 1)
                {
                  break;
                }
              }
            }

            v98 = *(v98 + 8);
            if (!v98)
            {
              v103 = 0;
              goto LABEL_156;
            }
          }

          v103 = 1;
        }

        else
        {
          v103 = 0;
          v99 = 0;
        }

LABEL_156:
        if (*(DerivedStorage + 344) >= 2 && ((*(DerivedStorage + 352) ^ v99) & 7) != 0)
        {
          v103 = 1;
        }

        if ((v103 & 1) == 0)
        {
          v22 = 0;
          v26 = 0;
          OUTLINED_FUNCTION_19_12();
          *(values + 9) = 1;
          goto LABEL_174;
        }

LABEL_160:
        CMBufferQueueEnqueue(*(a3 + 56), a6);
LABEL_161:
        v26 = 0;
        OUTLINED_FUNCTION_19_12();
        v22 = 1;
        goto LABEL_174;
      case 6:
        SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(a6, 0);
        if (SampleAttachmentsArray)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(SampleAttachmentsArray, 0);
          if (ValueAtIndex)
          {
            v106 = ValueAtIndex;
            if (CFDictionaryContainsKey(ValueAtIndex, key))
            {
              if (CFDictionaryGetValue(v106, key) != v272)
              {
                goto LABEL_161;
              }
            }
          }
        }

        v107 = values;
        v108 = *(values + 78);
        if (!v108)
        {
          OUTLINED_FUNCTION_19_12();
          v22 = 1;
          goto LABEL_173;
        }

        v22 = 1;
        if (*(values + 548))
        {
          OUTLINED_FUNCTION_19_12();
          goto LABEL_173;
        }

        v300.value = 0;
        *(values + 548) = 1;
        time1.value = 0;
        time2.value = 0;
        LOBYTE(v293.value) = 1;
        LODWORD(v294.value) = 0;
        FigSimpleMutexLock();
        if (*(v107 + 70))
        {
          goto LABEL_114;
        }

        Basic = FigVisualContextCreateBasic(*(v108 + 48), 0, v107 + 70);
        if (Basic)
        {
          goto LABEL_144;
        }

        *(v107 + 72) = *(v107 + 8);
        v131 = *(v107 + 70);
        v132 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (!v132)
        {
          v28 = 4294954514;
          goto LABEL_153;
        }

        Basic = v132(v131, saig_decodedImageBecameAvailable, v107 + 576);
        if (Basic)
        {
LABEL_144:
          v28 = Basic;
LABEL_153:
          FigSimpleMutexUnlock();
          goto LABEL_154;
        }

LABEL_114:
        FigSimpleMutexUnlock();
        PresentationTimeStamp = FAIGCommon_getOutputImagePropertiesForImageRetrieval(*(a3 + 32), *(v108 + 40), 0, &time1, &time2);
        if (PresentationTimeStamp)
        {
          goto LABEL_216;
        }

        FAIGCommon_checkAndUpdateOutputImagePropertiesForImageRetrieval((a3 + 200), time1.value, (a3 + 208), time2.value, &v293);
        if (time2.value)
        {
          CFRelease(time2.value);
          time2.value = 0;
        }

        if (*v274 && !LOBYTE(v293.value))
        {
          v109 = allocator;
          goto LABEL_148;
        }

        saig_ReleaseRenderPipelineForTrack(a3);
        LODWORD(v299.value) = 1111970369;
        Mutable = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v111 = Mutable;
        if (v107[656])
        {
          CFDictionarySetValue(Mutable, v258, value);
        }

        DestinationPixelBufferAttributes = FPSupport_CreateDestinationPixelBufferAttributes(time1.value, SHIDWORD(time1.value), &v299, 1u, 0, 1, 0, 0, 0, v268);
        if (DestinationPixelBufferAttributes || (v113 = *(v108 + 48), v114 = *(a3 + 32), CMTimeMake(&outputPresentationTimeStamp, 1, 30), CMTimeMake(&v303, 1, 30), DestinationPixelBufferAttributes = FAIGCommon_createRenderPipelineOptions(v113, v114, 0, &outputPresentationTimeStamp, &v303, (a3 + 216)), DestinationPixelBufferAttributes))
        {
          v28 = DestinationPixelBufferAttributes;
        }

        else
        {
          FigSimpleMutexLock();
          v28 = FigVideoRenderPipelineCreateWithVisualContext(*(v108 + 48), v111, *v268, *(a3 + 208), 1, *(v107 + 70), 0, *(a3 + 216), v274);
          FigSimpleMutexUnlock();
          if (!v28)
          {
            v115 = *(a3 + 32);
            v109 = allocator;
            if (v115)
            {
              CMFormatDescriptionGetExtensions(v115);
              if (FigCFDictionaryGetInt32IfPresent())
              {
                if (SLODWORD(v294.value) >= 2)
                {
                  OUTLINED_FUNCTION_14_15();
                  v117 = v116;
                  v118 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                  if (!v118)
                  {
                    goto LABEL_145;
                  }

                  v119 = v118(v117, v246, v244);
                  if (v119)
                  {
                    goto LABEL_139;
                  }
                }
              }
            }

            v120 = *(v107 + 81);
            if (v120)
            {
              OUTLINED_FUNCTION_14_15();
              v122 = v121;
              v123 = *(*(CMBaseObjectGetVTable() + 8) + 56);
              if (!v123)
              {
                goto LABEL_145;
              }

              v119 = v123(v122, v254, v120);
              if (v119)
              {
                goto LABEL_139;
              }
            }

            OUTLINED_FUNCTION_14_15();
            v125 = v124;
            v126 = *(*(CMBaseObjectGetVTable() + 8) + 48);
            if (v126)
            {
              v119 = v126(v125, v250, allocator, a3 + 192);
              if (!v119)
              {
                OUTLINED_FUNCTION_14_15();
                v128 = v127;
                v129 = *(*(CMBaseObjectGetVTable() + 8) + 56);
                if (v129)
                {
                  v129(v128, v242, value);
                }

                CMNotificationCenterGetDefaultLocalCenter();
                v119 = CMNotificationCenterAddListener();
              }

LABEL_139:
              v28 = v119;
              if (!v111)
              {
                goto LABEL_147;
              }

              goto LABEL_146;
            }

LABEL_145:
            v28 = 4294954514;
            if (!v111)
            {
              goto LABEL_147;
            }

            goto LABEL_146;
          }
        }

        v109 = allocator;
        if (v111)
        {
LABEL_146:
          CFRelease(v111);
        }

LABEL_147:
        if (v28)
        {
          goto LABEL_154;
        }

LABEL_148:
        if ((*(a3 + 132) & 1) == 0)
        {
          goto LABEL_167;
        }

        OUTLINED_FUNCTION_4_40();
        v303 = *&keys[1];
        v133 = OUTLINED_FUNCTION_7_21();
        if (CMTimeCompare(v133, v134) < 1)
        {
          v135 = 1.0;
          if (*valuePtr >= 0.0)
          {
            goto LABEL_167;
          }
        }

        else
        {
          CMSetAttachment(a6, v260, value, 1u);
          v135 = -1.0;
          if (*valuePtr <= 0.0)
          {
            goto LABEL_167;
          }
        }

        *valuePtr = v135;
        v136 = CFNumberCreate(v109, kCFNumberFloatType, valuePtr);
        if (v136)
        {
          v137 = v136;
          OUTLINED_FUNCTION_14_15();
          v139 = v138;
          v140 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (!v140)
          {
            CFRelease(v137);
            v27 = 0;
            v28 = 4294954514;
            goto LABEL_210;
          }

          v28 = v140(v139, v248, v137);
          CFRelease(v137);
          if (v28)
          {
LABEL_154:
            v27 = 0;
            goto LABEL_210;
          }
        }

LABEL_167:
        PresentationTimeStamp = CMBufferQueueEnqueue(*(a3 + 192), a6);
        if (PresentationTimeStamp)
        {
LABEL_216:
          v28 = PresentationTimeStamp;
          goto LABEL_154;
        }

        v141 = CFDictionaryCreate(v109, keys, &values, 1, MEMORY[0x1E695E9D8], 0);
        v27 = v141;
        if (!v141)
        {
          fig_log_get_emitter();
          FigSignalErrorAtGM("%s signalled err=%d at <>:%d", sampleTimingArray, numSampleSizeEntries, sampleSizeArray);
          goto LABEL_214;
        }

        v142 = values;
        v143 = MEMORY[0x1E6960C70];
        *(values + 584) = *MEMORY[0x1E6960C70];
        v142[75] = *(v143 + 16);
        v144 = v142[77];
        v142[77] = v141;
        CFRetain(v141);
        if (v144)
        {
          CFRelease(v144);
        }

        v145 = CMSampleBufferCreate(v109, 0, 1u, 0, 0, 0, 0, 0, 0, 0, 0, &v300);
        if (v145)
        {
          goto LABEL_214;
        }

        CMSetAttachment(v300.value, v266, v27, 1u);
        v28 = CMBufferQueueEnqueue(*(a3 + 192), v300.value);
        CFRelease(v300.value);
LABEL_173:
        v26 = 1;
LABEL_174:
        if ((*(a3 + 76) & 0x1D) == 1)
        {
          memset(&v294, 0, sizeof(v294));
          memset(&v293, 0, sizeof(v293));
          CMSampleBufferGetOutputDuration(&v293, a6);
          v146 = CMSampleBufferGetOutputPresentationTimeStamp(&outputPresentationTimeStamp, a6);
          v297 = outputPresentationTimeStamp;
          if ((v293.flags & 0x1D) == 1)
          {
            OUTLINED_FUNCTION_21_8(v146, v147, v148, v149, v150, v151, v152, v153, *&outputPresentationTimeStamp.value, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, value, valuePtr, v266, v268, allocator, v272, v274, v276, key, v279, v281, v282, v284, v285, v287, v288, v289.value, *&v289.timescale, v289.epoch, v290.value, *&v290.timescale, v290.epoch, v291, v292.value, *&v292.timescale, v292.epoch, v293.value, *&v293.timescale, v293.epoch, v294.value, *&v294.timescale, v294.epoch, keys[0], keys[1], keys[2], keys[3], v296, v154, v297.value);
            v303 = v293;
            v155 = OUTLINED_FUNCTION_7_21();
            CMTimeAdd(v157, v155, v156);
          }

          else
          {
            v294 = v297;
          }

          if (*(a3 + 93) && ((OUTLINED_FUNCTION_33(), v51) ? (v158 = v26) : (v158 = 0), (v158 & 1) != 0) || (*(a3 + 132) & 1) == 0 || (OUTLINED_FUNCTION_4_40(), v303 = v294, v159 = OUTLINED_FUNCTION_7_21(), CMTimeCompare(v159, v160) < 0))
          {
            *(a3 + 120) = v294;
          }

          OUTLINED_FUNCTION_26_11();
          if (v51 || (OUTLINED_FUNCTION_33(), v51) && *(a3 + 88) == 6)
          {
            memset(&v292, 0, sizeof(v292));
            CMSampleBufferGetPresentationTimeStamp(&outputPresentationTimeStamp, a6);
            OUTLINED_FUNCTION_20_7();
            v161 = OUTLINED_FUNCTION_7_21();
            CMTimeAdd(v163, v161, v162);
            memset(&v290, 0, sizeof(v290));
            memset(&v289, 0, sizeof(v289));
            Duration = CMSampleBufferGetDuration(&v289, a6);
            if (v289.flags)
            {
              OUTLINED_FUNCTION_23_10(Duration, v165, v166, v167, v168, v169, v170, v171, v172, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, value, valuePtr, v266, v268, allocator, v272, v274, v276, key, v279, v281, v282, v284, v285, v287, v288, v289.value, *&v289.timescale, v289.epoch, v290.value, *&v290.timescale, v290.epoch, v291, v173, v292.value);
              v303 = v289;
              v174 = OUTLINED_FUNCTION_7_21();
              CMTimeAdd(v176, v174, v175);
            }

            else
            {
              v290 = v292;
            }

            outputPresentationTimeStamp = v290;
            OUTLINED_FUNCTION_1_47();
            v177 = OUTLINED_FUNCTION_7_21();
            v179 = CMTimeCompare(v177, v178);
            if (v179 & 0x80000000) == 0 && (*(values + 24 * *(a3 + 92) + 476))
            {
              OUTLINED_FUNCTION_23_10(v179, v180, v181, v182, v183, v184, v185, v186, v187, sampleTimingArray, numSampleSizeEntries, sampleSizeArray, v238, v240, v242, v244, v246, v248, v250, v252, v254, v256, v258, v260, value, valuePtr, v266, v268, allocator, v272, v274, v276, key, v279, v281, v282, v284, v285, v287, v288, v289.value, *&v289.timescale, v289.epoch, v290.value, *&v290.timescale, v290.epoch, v291, v188, v292.value);
              OUTLINED_FUNCTION_1_47();
              v189 = OUTLINED_FUNCTION_7_21();
              v191 = CMTimeCompare(v189, v190);
              if ((v191 & 0x80000000) != 0)
              {
                v292 = *(a3 + 96);
              }

              v200 = values;
              v201 = values + 464;
              v202 = values + 24 * *(a3 + 92) + 464;
              v286 = v292;
              v203 = *v202;
              v280 = *v202;
              v283 = *(v202 + 2);
              v204 = values + 440;
              v205 = *(values + 113);
              if (v205)
              {
                memset(&outputPresentationTimeStamp, 0, sizeof(outputPresentationTimeStamp));
                OUTLINED_FUNCTION_18_8(v191, v192, v193, v194, v195, v196, v197, v198, v203, sampleTimingArraya, numSampleSizeEntriesa, sampleSizeArraya, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, valuea, valuePtra, v267, v269, allocatora, v273, v275, v276, keya, v199, v280);
                *&time1.value = *(v200 + 26);
                v206 = OUTLINED_FUNCTION_0_56(*(v200 + 54));
                CMTimeSubtract(v208, v206, v207);
                memset(&v303, 0, sizeof(v303));
                time1 = v286;
                *&time2.value = *v204;
                v209 = OUTLINED_FUNCTION_16_11(*(v204 + 2));
                CMTimeSubtract(v211, v209, v210);
                memset(&time1, 0, sizeof(time1));
                memset(&time2, 0, sizeof(time2));
                CMTimeMake(&time2, 1, 1);
                OUTLINED_FUNCTION_10_19();
                v299.epoch = v212;
                v213 = OUTLINED_FUNCTION_13_11();
                if (CMTimeCompare(v213, v214) < 0)
                {
                  v300 = v303;
                  *&v299.value = *&outputPresentationTimeStamp.value;
                  v215 = outputPresentationTimeStamp.epoch;
                }

                else
                {
                  OUTLINED_FUNCTION_10_19();
                }

                v299.epoch = v215;
                v216 = OUTLINED_FUNCTION_13_11();
                CMTimeSubtract(v218, v216, v217);
                v300 = time1;
                v299 = time2;
                v219 = OUTLINED_FUNCTION_13_11();
                v191 = CMTimeCompare(v219, v220);
                if ((v191 & 0x80000000) == 0)
                {
                  v221 = MEMORY[0x1E6960C70];
                  v203 = *MEMORY[0x1E6960C70];
                  *v204 = *MEMORY[0x1E6960C70];
                  v222 = *(v221 + 16);
                  *(v204 + 2) = v222;
                  *(v200 + 26) = v203;
                  *(v200 + 54) = v222;
                }

                v205 = *(v200 + 113);
              }

              if ((v205 & 1) == 0)
              {
                OUTLINED_FUNCTION_18_8(v191, v192, v193, v194, v195, v196, v197, v198, v203, sampleTimingArraya, numSampleSizeEntriesa, sampleSizeArraya, v239, v241, v243, v245, v247, v249, v251, v253, v255, v257, v259, v261, valuea, valuePtra, v267, v269, allocatora, v273, v275, v276, keya, v199, v280);
                *&time1.value = *&v286.value;
                v223 = OUTLINED_FUNCTION_0_56(v286.epoch);
                CMTimeSubtract(v225, v223, v224);
                *(v200 + 392) = outputPresentationTimeStamp;
                *v204 = v286;
                *(v200 + 26) = v280;
                *(v200 + 54) = v283;
              }

              v226 = 0;
              v227 = *MEMORY[0x1E6960C70];
              v228 = *(MEMORY[0x1E6960C70] + 16);
              do
              {
                v229 = &v201[v226];
                *v229 = v227;
                *(v229 + 2) = v228;
                v226 += 24;
              }

              while (v226 != 72);
            }
          }
        }

        if ((v22 & 1) == 0)
        {
          v230 = *(values + 78);
          if (v230)
          {
            v145 = saig_RequestAnImageFromPump(v276, v230);
LABEL_214:
            v28 = v145;
          }
        }

LABEL_210:
        if (v27)
        {
          CFRelease(v27);
        }

        return v28;
      default:
        goto LABEL_174;
    }
  }
}

void saig_CancelAllCGImageAsyncRequests_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void saig_processImageRequestThread_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

void saig_NewTrackNote_cold_1(_DWORD *a1)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_4();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v3, v4, vars0);
  *a1 = v2;
}

uint64_t FigBufferedAirPlaySubPipeManagerCreate(const __CFAllocator *a1, const void *a2, const void *a3, const void *a4, const __CFDictionary *a5, void *a6)
{
  v60 = *MEMORY[0x1E69E9840];
  value = 0;
  v56 = 0;
  memset(&v54, 0, sizeof(v54));
  CMTimeMake(&v54, 0, 1000);
  memset(&v53, 0, sizeof(v53));
  CMTimeMake(&v53, 1, 1000);
  BOOLean = 0;
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  v11 = a2;
  fig_note_initialize_category_with_default_work_cf();
  if (!a2 || !a3 || !a5 || !a6)
  {
    OUTLINED_FUNCTION_5_8();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_46;
  }

  v12 = a6;
  if (qword_1ED4CA7F8 != -1)
  {
    dispatch_once(&qword_1ED4CA7F8, &__block_literal_global_159);
  }

  v13 = a1;
  if (qword_1ED4CA7E8 != -1)
  {
    dispatch_once(&qword_1ED4CA7E8, &__block_literal_global_21);
  }

  CMDerivedObjectCreate();
  if (!v56)
  {
    goto LABEL_44;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 184) = 0;
  *(DerivedStorage + 40) = CFRetain(a3);
  v15 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 80) = v15;
  if (!v15)
  {
    goto LABEL_44;
  }

  v16 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 88) = v16;
  if (!v16)
  {
    goto LABEL_44;
  }

  v17 = FigDispatchQueueCreateWithPriority();
  *(DerivedStorage + 32) = v17;
  if (!v17)
  {
    goto LABEL_44;
  }

  v18 = a4;
  if (a4)
  {
    v18 = CFRetain(a4);
  }

  *(DerivedStorage + 48) = v18;
  *(DerivedStorage + 56) = 0xC12E847FC0000000;
  *(DerivedStorage + 64) = 0;
  *(DerivedStorage + 216) = 0;
  v19 = MEMORY[0x1E6960C70];
  v20 = *MEMORY[0x1E6960C70];
  *(DerivedStorage + 232) = *MEMORY[0x1E6960C70];
  v21 = *(v19 + 16);
  *(DerivedStorage + 248) = v21;
  *(DerivedStorage + 256) = v20;
  *(DerivedStorage + 272) = v21;
  *(DerivedStorage + 280) = v20;
  *(DerivedStorage + 296) = v21;
  *(DerivedStorage + 320) = v21;
  *(DerivedStorage + 304) = v20;
  *(DerivedStorage + 344) = v21;
  *(DerivedStorage + 328) = v20;
  *(DerivedStorage + 352) = v20;
  *(DerivedStorage + 368) = v21;
  *(DerivedStorage + 376) = 0;
  *(DerivedStorage + 384) = 0;
  *(DerivedStorage + 388) = v20;
  *(DerivedStorage + 404) = v21;
  *(DerivedStorage + 416) = 0u;
  *(DerivedStorage + 432) = 0u;
  *(DerivedStorage + 448) = 0;
  *(DerivedStorage + 544) = v20;
  *(DerivedStorage + 560) = v21;
  *(DerivedStorage + 520) = v20;
  *(DerivedStorage + 536) = v21;
  *(DerivedStorage + 456) = 0;
  *(DerivedStorage + 512) = 0;
  *(DerivedStorage + 72) = 1;
  *(DerivedStorage + 576) = 0;
  *(DerivedStorage + 596) = v21;
  *cfa = v20;
  *(DerivedStorage + 580) = v20;
  FigBufferedAirPlayOutputGetCMBaseObject();
  v23 = v22;
  v24 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (!v24)
  {
    goto LABEL_25;
  }

  v25 = v24(v23, @"ALACIsAllowed", *MEMORY[0x1E695E480], &BOOLean);
  if (v25)
  {
LABEL_46:
    v33 = v25;
    goto LABEL_26;
  }

  v26 = BOOLean;
  if (BOOLean)
  {
    v26 = CFBooleanGetValue(BOOLean);
  }

  *(DerivedStorage + 224) = v26;
  v27 = FigCFWeakReferenceHolderCreateWithReferencedObject();
  *(DerivedStorage + 24) = v27;
  if (!v27)
  {
LABEL_44:
    v33 = 4294954510;
    goto LABEL_26;
  }

  CallbacksForUnsortedSampleBuffers = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v25 = CMBufferQueueCreate(v13, 0, CallbacksForUnsortedSampleBuffers, (DerivedStorage + 128));
  if (v25)
  {
    goto LABEL_46;
  }

  v29 = *(DerivedStorage + 128);
  v59 = v53;
  v57 = v54;
  FigSampleBufferConsumerCreateForBufferQueue(v29, &v59.value, &v57.value, (DerivedStorage + 96));
  if (v25)
  {
    goto LABEL_46;
  }

  v25 = CMBufferQueueInstallTriggerWithIntegerThreshold(*(DerivedStorage + 128), fbapspManager_sourceDataBecameReady, *(DerivedStorage + 24), 11, 0, (DerivedStorage + 136));
  if (v25)
  {
    goto LABEL_46;
  }

  v25 = FigSampleBufferConsumerCreateForSampleBufferConsumer("sbcMediator", (DerivedStorage + 104));
  if (v25)
  {
    goto LABEL_46;
  }

  v30 = *(DerivedStorage + 104);
  v31 = *(DerivedStorage + 24);
  v32 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v32)
  {
LABEL_25:
    v33 = 4294954514;
    goto LABEL_26;
  }

  v25 = v32(v30, fbapspManager_mediatorLowWaterTriggerCallback, v31, DerivedStorage + 144);
  if (v25)
  {
    goto LABEL_46;
  }

  v35 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v25 = CMBufferQueueCreate(v13, 0, v35, (DerivedStorage + 200));
  if (v25)
  {
    goto LABEL_46;
  }

  v36 = CMBufferQueueGetCallbacksForUnsortedSampleBuffers();
  v25 = CMBufferQueueCreate(v13, 0, v36, (DerivedStorage + 208));
  if (v25)
  {
    goto LABEL_46;
  }

  *(DerivedStorage + 112) = CFRetain(v11);
  *(DerivedStorage + 152) = 0;
  *(DerivedStorage + 154) = 0;
  *(DerivedStorage + 156) = 1;
  *DerivedStorage = 0;
  if (CFDictionaryGetValueIfPresent(a5, @"LoggingID", &value))
  {
    CFStringGetCString(value, DerivedStorage, 20, 0x600u);
  }

  OUTLINED_FUNCTION_46_4((DerivedStorage + 460));
  *(DerivedStorage + 484) = *cfa;
  *(DerivedStorage + 500) = v21;
  *(DerivedStorage + 508) = 1;
  if (dword_1ED4CA7E4)
  {
    CMTimeMake(&v59, dword_1ED4CA7E4, 1000);
    *(DerivedStorage + 484) = v59;
    if (_MergedGlobals_39)
    {
      *(DerivedStorage + 508) = 2;
    }
  }

  if (dword_1EAF16F18)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_7_22();
    if (DerivedStorage != -484)
    {
      v38 = v56;
      if (v56)
      {
        CMBaseObjectGetDerivedStorage();
      }

      LODWORD(v57.value) = 136315906;
      *(&v57.value + 4) = "FigBufferedAirPlaySubPipeManagerCreate";
      LOWORD(v57.flags) = 2048;
      *(&v57.flags + 2) = v38;
      OUTLINED_FUNCTION_60_5();
      v58 = v39;
      OUTLINED_FUNCTION_4_41(v40, v41, &v59, v42, &dword_1962D5000, v43, v44, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s created FigBufferedAirPlaySubPipeManager %p\n");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v45, v46, v47, v48, v49);
  }

  v33 = 0;
  *v12 = v56;
  v56 = 0;
LABEL_26:
  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  fbapspManager_releaseAsync(v56);
  return v33;
}

void fbapspManager_sourceDataBecameReady(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    if (!*(CMBaseObjectGetDerivedStorage() + 456))
    {
      CFRetain(v2);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v5 = __fbapspManager_sourceDataBecameReady_block_invoke;
      v6 = &__block_descriptor_tmp_220;
      v7 = v2;
      dispatch_async(v3, block);
    }

    CFRelease(v2);
  }
}

void fbapspManager_mediatorLowWaterTriggerCallback(uint64_t a1)
{
  v1 = FigCFWeakReferenceHolderCopyReferencedObject();
  if (v1)
  {
    v2 = v1;
    if (!*(CMBaseObjectGetDerivedStorage() + 456))
    {
      CFRetain(v2);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_43_7();
      v5 = __fbapspManager_mediatorLowWaterTriggerCallback_block_invoke;
      v6 = &__block_descriptor_tmp_221;
      v7 = v2;
      dispatch_async(v3, block);
    }

    CFRelease(v2);
  }
}

void fbapspManager_releaseAsync(uint64_t a1)
{
  if (a1)
  {
    dispatch_get_global_queue(0, 0);
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    v4 = __fbapspManager_releaseAsync_block_invoke;
    v5 = &__block_descriptor_tmp_222;
    v6 = a1;
    dispatch_async(v2, block);
  }
}

uint64_t fbapspManager_invalidate(uint64_t a1)
{
  v116 = *MEMORY[0x1E69E9840];
  v99 = 0;
  v100 = &v99;
  v101 = 0x2000000000;
  LODWORD(v102) = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (dword_1EAF16F18)
  {
    v12 = OUTLINED_FUNCTION_38_6(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v84, v87, v90, block, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
    OUTLINED_FUNCTION_64_5(v12, v13, v14, v15, v16, v17, v18, v19, v85, v88, v91, block, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        v20 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v20 = "";
      }

      if (*(v11 + 456))
      {
        v21 = 116;
      }

      else
      {
        v21 = 102;
      }

      v107 = 136315906;
      v108 = "fbapspManager_invalidate";
      v109 = 2048;
      v110 = a1;
      v111 = 2082;
      v112 = v20;
      v113 = 1024;
      v114 = v21;
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_12_17(v22, v23, v115, v24, &dword_1962D5000, v25, v26, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s Invalidating. invalidated=%c");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v27, v28, v29, v30, v31);
  }

  if (!*(v11 + 456))
  {
    if (*(v11 + 154) && *(v11 + 156) == 4)
    {
      if (dword_1EAF16F18)
      {
        v32 = OUTLINED_FUNCTION_38_6(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v84, v87, v90, block, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
        OUTLINED_FUNCTION_64_5(v32, v33, v34, v35, v36, v37, v38, v39, v86, v89, v92, block, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106);
        OUTLINED_FUNCTION_40();
        if (v1)
        {
          if (a1)
          {
            v40 = CMBaseObjectGetDerivedStorage();
          }

          else
          {
            v40 = "";
          }

          v107 = 136315650;
          v108 = "fbapspManager_tapToRadar";
          v109 = 2048;
          v110 = a1;
          v111 = 2082;
          v112 = v40;
          OUTLINED_FUNCTION_66();
          OUTLINED_FUNCTION_12_17(v41, v42, v115, v43, &dword_1962D5000, v44, v45, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s Error: invalidating during mixing when timelineMilestone has not been reached yet!");
        }

        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_414(v46, v47, v48, v49, v50);
      }

      *(v11 + 154) = 0;
    }

    *(v11 + 456) = 1;
    v51 = *(v11 + 80);
    if (v51)
    {
      dispatch_sync(v51, &__block_literal_global_175);
    }

    v52 = *(v11 + 88);
    if (v52)
    {
      dispatch_sync(v52, &__block_literal_global_178);
    }

    v53 = *(v11 + 104);
    v54 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v54)
    {
      v54(v53, @"DownstreamConsumer", 0);
    }

    *(v100 + 6) = 0;
    OUTLINED_FUNCTION_6_31();
    v94 = 0x40000000;
    v95 = __fbapspManager_invalidate_block_invoke_3;
    v96 = &unk_1E7482AB0;
    v97 = &v99;
    v98 = a1;
    dispatch_sync(v55, &block);
    v56 = *(v11 + 136);
    if (v56)
    {
      CMBufferQueueRemoveTrigger(*(v11 + 128), v56);
      *(v11 + 136) = 0;
    }

    v57 = *(v11 + 144);
    if (v57)
    {
      v58 = *(v11 + 104);
      v59 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v59)
      {
        v59(v58, v57);
      }

      *(v11 + 144) = 0;
    }

    v60 = *(v11 + 40);
    if (v60)
    {
      CFRelease(v60);
      *(v11 + 40) = 0;
    }

    v61 = *(v11 + 48);
    if (v61)
    {
      CFRelease(v61);
      *(v11 + 48) = 0;
    }

    v62 = *(v11 + 168);
    if (v62)
    {
      CFRelease(v62);
      *(v11 + 168) = 0;
    }

    v63 = *(v11 + 176);
    if (v63)
    {
      CFRelease(v63);
      *(v11 + 176) = 0;
    }

    v64 = *(v11 + 184);
    if (v64)
    {
      CFRelease(v64);
      *(v11 + 184) = 0;
    }

    v65 = *(v11 + 192);
    if (v65)
    {
      CFRelease(v65);
      *(v11 + 192) = 0;
    }

    v66 = *(v11 + 96);
    if (v66)
    {
      CFRelease(v66);
      *(v11 + 96) = 0;
    }

    v67 = *(v11 + 128);
    if (v67)
    {
      CFRelease(v67);
      *(v11 + 128) = 0;
    }

    v68 = *(v11 + 104);
    if (v68)
    {
      CFRelease(v68);
      *(v11 + 104) = 0;
    }

    v69 = *(v11 + 112);
    if (v69)
    {
      CFRelease(v69);
      *(v11 + 112) = 0;
    }

    v70 = *(v11 + 200);
    if (v70)
    {
      CFRelease(v70);
      *(v11 + 200) = 0;
    }

    v71 = *(v11 + 208);
    if (v71)
    {
      CFRelease(v71);
      *(v11 + 208) = 0;
    }

    v72 = *(v11 + 64);
    if (v72)
    {
      CFRelease(v72);
      *(v11 + 64) = 0;
    }

    v73 = *(v11 + 216);
    if (v73)
    {
      CFRelease(v73);
      *(v11 + 216) = 0;
    }

    v74 = *(v11 + 376);
    if (v74)
    {
      CFRelease(v74);
      *(v11 + 376) = 0;
    }

    v75 = *(v11 + 568);
    if (v75)
    {
      CFRelease(v75);
      *(v11 + 568) = 0;
    }

    v76 = *(v11 + 416);
    if (v76)
    {
      CFRelease(v76);
      *(v11 + 416) = 0;
    }

    v77 = *(v11 + 424);
    if (v77)
    {
      CFRelease(v77);
      *(v11 + 424) = 0;
    }

    v78 = *(v11 + 432);
    if (v78)
    {
      CFRelease(v78);
      *(v11 + 432) = 0;
    }

    v79 = *(v11 + 440);
    if (v79)
    {
      CFRelease(v79);
      *(v11 + 440) = 0;
    }

    v80 = *(v11 + 448);
    if (v80)
    {
      CFRelease(v80);
      *(v11 + 448) = 0;
    }

    v81 = *(v11 + 608);
    if (v81)
    {
      CFRelease(v81);
      *(v11 + 608) = 0;
    }

    v82 = *(v11 + 616);
    if (v82)
    {
      CFRelease(v82);
      *(v11 + 616) = 0;
    }
  }

  _Block_object_dispose(&v99, 8);
  return 0;
}

void fbapspManager_finalize(uint64_t a1)
{
  v46 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (dword_1EAF16F18)
  {
    v12 = OUTLINED_FUNCTION_16_12(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v34, v36, v38, v40, SBYTE2(v40), SBYTE3(v40), SHIDWORD(v40));
    OUTLINED_FUNCTION_311(v12, v13, v14, v15, v16, v17, v18, v19, v35, v37, v39, v41, v42, v43, v44);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_12_17(v20, v21, v45, v22, &dword_1962D5000, v23, v24, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s Finalizing");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v25, v26, v27, v28, v29);
  }

  fbapspManager_invalidate(a1);
  v30 = v11[10];
  if (v30)
  {
    dispatch_release(v30);
    v11[10] = 0;
  }

  v31 = v11[11];
  if (v31)
  {
    dispatch_release(v31);
    v11[11] = 0;
  }

  v32 = v11[4];
  if (v32)
  {
    dispatch_release(v32);
    v11[4] = 0;
  }

  v33 = v11[3];
  if (v33)
  {
    CFRelease(v33);
  }
}

uint64_t fbapspManager_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x2000000000;
  v22 = 0;
  if (!*(CMBaseObjectGetDerivedStorage() + 456))
  {
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    v12 = __fbapspManager_copyProperty_block_invoke;
    v13 = &unk_1E7482BF0;
    v14 = &v19;
    v15 = a1;
    v16 = a2;
    v17 = a3;
    v18 = a4;
    dispatch_sync(v8, block);
  }

  v9 = *(v20 + 6);
  _Block_object_dispose(&v19, 8);
  return v9;
}

uint64_t fbapspManager_clearCurrentSubPipe(void *a1, int a2, int a3)
{
  v75 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v66 = **&MEMORY[0x1E6960C70];
  dictionaryRepresentation = 0;
  if (*(DerivedStorage + 120))
  {
    if (a2)
    {
      v8 = OUTLINED_FUNCTION_106(MEMORY[0x1E6960CC0]);
      v9 = *MEMORY[0x1E695E480];
      *&time.value = v8;
      time.epoch = v10;
      dictionaryRepresentation = CMTimeCopyAsDictionary(&time, v9);
    }

    else
    {
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
      v30 = v29;
      v31 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v31 && !v31(v30, @"RemainingInputBufferDuration", *MEMORY[0x1E695E480], &dictionaryRepresentation))
      {
        CMTimeMakeFromDictionary(&v66, dictionaryRepresentation);
      }
    }

    if (dword_1EAF16F18)
    {
      OUTLINED_FUNCTION_147();
      v18 = OUTLINED_FUNCTION_126(qword_1EAF16F10, v11, v12, v13, v14, v15, v16, v17, v55, v57, v59, *v61, v61[2], v61[3], v61[4]);
      OUTLINED_FUNCTION_304(v18, v19, v20, v21, v22, v23, v24, v25, v56, v58, v60, v62, v63, v64, v65);
      OUTLINED_FUNCTION_46();
      if (v3)
      {
        if (a1)
        {
          v26 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v26 = "";
        }

        time = v66;
        CMTimeGetSeconds(&time);
        v68 = 136315906;
        OUTLINED_FUNCTION_37_6();
        v69 = a1;
        v70 = 2082;
        v71 = v26;
        v72 = v32;
        v73 = v33;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_10_3(v34, v35, &time, v36, &dword_1962D5000, v37, v38, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s notify SubPipeFinished. remainDuration=%1.3f");
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v39, v40, v41, v42, v43);
    }

    fbapspManager_postNotification(a1, @"SubPipeFinished", dictionaryRepresentation);
    v44 = *(DerivedStorage + 384) != 2;
    v45 = *(DerivedStorage + 120);
    v46 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v46)
    {
      v47 = v46(v45, v44);
      if (v47)
      {
        goto LABEL_37;
      }

      v48 = *(DerivedStorage + 120);
      v49 = *(*(CMBaseObjectGetVTable() + 16) + 40);
      if (v49)
      {
        v47 = v49(v48, v44);
        if (v47)
        {
          goto LABEL_37;
        }

        v47 = fbapspManager_removeListenersForSubPipe(a1, *(DerivedStorage + 120));
        if (v47)
        {
          goto LABEL_37;
        }

        v47 = fbapspManager_processPendingSbufsOnSubPipeFinished(a1);
        if (v47)
        {
          goto LABEL_37;
        }

        FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
        if (!v50)
        {
          v28 = 4294954516;
          goto LABEL_33;
        }

        v51 = v50;
        v52 = *(*(CMBaseObjectGetVTable() + 8) + 24);
        if (v52)
        {
          v47 = v52(v51);
          if (!v47)
          {
            v53 = *(DerivedStorage + 120);
            if (v53)
            {
              CFRelease(v53);
              *(DerivedStorage + 120) = 0;
            }

            fbapspManager_setSubPipeTerminationInFlight(a1, 0);
            if (!a3)
            {
              goto LABEL_31;
            }

            goto LABEL_9;
          }

LABEL_37:
          v28 = v47;
          goto LABEL_33;
        }
      }
    }

    v28 = 4294954514;
    goto LABEL_33;
  }

  if (!a3)
  {
LABEL_31:
    v28 = 0;
    goto LABEL_33;
  }

LABEL_9:
  v27 = *(DerivedStorage + 160);
  if (!v27)
  {
    goto LABEL_31;
  }

  v28 = FigBufferedAirPlayOfflineMixerFactoryReleaseMixer(v27);
  if (!v28)
  {
    *(DerivedStorage + 160) = 0;
  }

LABEL_33:
  if (dictionaryRepresentation)
  {
    CFRelease(dictionaryRepresentation);
  }

  return v28;
}

void fbapspManager_setProcessingState(const void *a1, int a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2 != 2 || *(DerivedStorage + 156) != 4)
  {
    v6 = DerivedStorage;
    *(DerivedStorage + 156) = a2;
    v7 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v9 = Mutable;
      v10 = CFStringCreateWithCString(v7, v6, 0x8000100u);
      if (v10)
      {
        v11 = v10;
        FigCFDictionarySetValue();
        FigCFDictionarySetValue();
        fbapspManager_postNotification(a1, @"ProcessingStateChanged", v9);
        CFRelease(v11);
      }

      CFRelease(v9);
    }
  }
}

uint64_t fbapspManager_removeListenersForSubPipe(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListeners();
}

uint64_t fbapspManager_processPendingSbufsOnSubPipeFinished(void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = CMBufferQueueCallForEachBuffer(*(DerivedStorage + 208), fbapspManager_HandlePendingSbufsOnSubPipeFinishCallback, a1);
  if (!result)
  {
    v4 = *(DerivedStorage + 208);

    return CMBufferQueueReset(v4);
  }

  return result;
}

void __fbapspManager_postNotification_block_invoke(void *a1)
{
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];

  fbapspManager_releaseAsync(v3);
}

void fbapspManager_subPipeDecoderError(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v59 = *MEMORY[0x1E69E9840];
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2000000000;
  v54 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    v15 = DerivedStorage;
    if (dword_1EAF16F18)
    {
      v16 = OUTLINED_FUNCTION_33_8(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v37, v39, v41, block, v44, v45, v46, v47, v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_67_4(v16, v17, v18, v19, v20, v21, v22, v23, v38, v40, v42, block, v44, v45, v46, v47, v48, v49, v50, v51, v52);
      OUTLINED_FUNCTION_46();
      if (v4)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_26_12();
        v55 = a4;
        v56 = v24;
        v57 = v25;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_10_3(v26, v27, v58, v28, &dword_1962D5000, v29, v30, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s inNotifyingObject=%p. currentSubPipe=%p\n");
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v31, v32, v33, v34, v35);
    }

    if (*(v15 + 152))
    {
      if (a2)
      {
        CFRetain(a2);
      }

      OUTLINED_FUNCTION_6_31();
      v44 = 0x40000000;
      v45 = __fbapspManager_subPipeDecoderError_block_invoke;
      v46 = &unk_1E7482AF8;
      v47 = v53;
      v48 = a2;
      dispatch_async(v36, &block);
    }
  }

  _Block_object_dispose(v53, 8);
}

uint64_t fbapspManager_notificationsFromSubPipe(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = FigCFEqual();
  if (result)
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return CMNotificationCenterPostNotification();
  }

  return result;
}

void fbapspManager_subPipeFinishedProcessingData(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2000000000;
  v36 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    v9 = DerivedStorage;
    if (dword_1EAF16F18)
    {
      v34 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      OUTLINED_FUNCTION_52_5();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_28();
      if (v4)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        v37 = 136316162;
        v38 = "fbapspManager_subPipeFinishedProcessingData";
        v39 = 2048;
        v40 = a2;
        OUTLINED_FUNCTION_60_5();
        v41 = a4;
        v42 = v11;
        v43 = v12;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v13, v14, v15, v16, v17, os_log_and_send_and_compose_flags_and_os_log_type, 0, v18, &v37, 52);
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_417(v19, v20, v21, v22, v23);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    OUTLINED_FUNCTION_6_31();
    v26 = 0x40000000;
    v27 = __fbapspManager_subPipeFinishedProcessingData_block_invoke;
    v28 = &unk_1E7482BA0;
    v29 = v35;
    v30 = a3;
    v31 = a2;
    v32 = v9;
    dispatch_async(v24, block);
  }

  _Block_object_dispose(v35, 8);
}

void fbapspManager_subPipePassedTimelineMilestone(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v58 = *MEMORY[0x1E69E9840];
  v52[0] = 0;
  v52[1] = v52;
  v52[2] = 0x2000000000;
  v53 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*(DerivedStorage + 456))
  {
    v15 = DerivedStorage;
    if (dword_1EAF16F18)
    {
      v16 = OUTLINED_FUNCTION_33_8(DerivedStorage, v8, v9, v10, v11, v12, v13, v14, v37, v39, block, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
      OUTLINED_FUNCTION_67_4(v16, v17, v18, v19, v20, v21, v22, v23, v38, v40, block, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);
      OUTLINED_FUNCTION_46();
      if (v4)
      {
        if (a2)
        {
          CMBaseObjectGetDerivedStorage();
        }

        OUTLINED_FUNCTION_26_12();
        v54 = a4;
        v55 = v24;
        v56 = v25;
        OUTLINED_FUNCTION_66();
        OUTLINED_FUNCTION_10_3(v26, v27, v57, v28, &dword_1962D5000, v29, v30, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s inNotifyingObject=%p. currentSubPipe=%p\n");
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_238_0(v31, v32, v33, v34, v35);
    }

    if (a2)
    {
      CFRetain(a2);
    }

    v36 = *(v15 + 80);
    block = MEMORY[0x1E69E9820];
    v42 = 0x40000000;
    v43 = __fbapspManager_subPipePassedTimelineMilestone_block_invoke;
    v44 = &unk_1E7482BC8;
    v45 = v52;
    v46 = v15;
    v47 = a2;
    dispatch_async(v36, &block);
  }

  _Block_object_dispose(v52, 8);
}

void __fbapspManager_subPipeDecoderError_block_invoke(uint64_t a1)
{
  v2 = fbapspManager_disconnectSbufBridge(*(a1 + 40));
  OUTLINED_FUNCTION_0_5(v2);
  if (!v3)
  {
    v4 = fbapspManager_clearCurrentSubPipe(*(a1 + 40), 0, 1);
    OUTLINED_FUNCTION_0_5(v4);
    if (!v5)
    {
      fbapspManager_setProcessingState(*(a1 + 40), 1);
      fbapspManager_setSubPipeTerminationInFlight(*(a1 + 40), 0);
      fbapspManager_scheduleProcessingDataIfPossible(*(a1 + 40));
    }
  }

  v6 = *(a1 + 40);

  fbapspManager_releaseAsync(v6);
}

uint64_t fbapspManager_disconnectSbufBridge(uint64_t a1)
{
  v45 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v11 = DerivedStorage;
  if (dword_1EAF16F18)
  {
    v12 = OUTLINED_FUNCTION_16_12(DerivedStorage, v4, v5, v6, v7, v8, v9, v10, v33, v35, v37, v39, SBYTE2(v39), SBYTE3(v39), SHIDWORD(v39));
    OUTLINED_FUNCTION_311(v12, v13, v14, v15, v16, v17, v18, v19, v34, v36, v38, v40, v41, v42, v43);
    OUTLINED_FUNCTION_40();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_51_5();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_12_17(v20, v21, v44, v22, &dword_1962D5000, v23, v24, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s trying to DISCONNECT sbcMediator %p from subPipe %p");
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_414(v25, v26, v27, v28, v29);
  }

  if (*(v11 + 456))
  {
    return 0;
  }

  v30 = *(v11 + 104);
  v31 = *(*(CMBaseObjectGetVTable() + 8) + 56);
  if (v31)
  {
    return v31(v30, @"DownstreamConsumer", 0);
  }

  else
  {
    return 4294954514;
  }
}

void __fbapspManager_dequeueInspectSendSampleBuffer_block_invoke(uint64_t a1)
{
  if (!*(*(a1 + 32) + 456))
  {
    OUTLINED_FUNCTION_2_49();
    OUTLINED_FUNCTION_43_7();
    v4 = __fbapspManager_dequeueInspectSendSampleBuffer_block_invoke_2;
    v5 = &__block_descriptor_tmp_183;
    v6 = *(a1 + 40);
    dispatch_sync(v2, block);
  }

  fbapspManager_releaseAsync(*(a1 + 40));
}

double fbapspManager_retimeSampleBufferIfNeeded(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v18 = *MEMORY[0x1E6960C70];
  *&v25.value = *MEMORY[0x1E6960C70];
  v5 = *(MEMORY[0x1E6960C70] + 16);
  v25.epoch = v5;
  if (!CMGetAttachment(a2, @"OriginalSbufOPTS", 0))
  {
    CMSampleBufferGetOutputPresentationTimeStamp(&lhs, a2);
    value = lhs.value;
    timescale = lhs.timescale;
    if (lhs.flags & 1) != 0 && (*(DerivedStorage + 364))
    {
      *(DerivedStorage + 232) = v18;
      *(DerivedStorage + 248) = v5;
      lhs = *(DerivedStorage + 256);
      fbapspManager_updateOverlapDeadline(a1, &lhs.value);
      OUTLINED_FUNCTION_40_5();
      rhs = *(DerivedStorage + 352);
      v7 = CMTimeAdd(&v25, &lhs, &rhs);
      OUTLINED_FUNCTION_660(v7, v8, v9, v10, v11, v12, v13, v14, v18, *(&v18 + 1), rhs.value, *&rhs.timescale, rhs.epoch, v22, lhs.value, *&lhs.timescale, lhs.epoch, v24, *&v25.value);
      if (!CMSampleBufferSetOutputPresentationTimeStamp(a2, &lhs))
      {
        OUTLINED_FUNCTION_40_5();
        v16 = CMTimeCopyAsDictionary(&lhs, v15);
        if (v16)
        {
          v17 = v16;
          CMSetAttachment(a2, @"OriginalSbufOPTS", v16, 1u);
          CFRelease(v17);
        }

        else
        {
          OUTLINED_FUNCTION_303();
          return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19, v20, LODWORD(rhs.value));
        }
      }
    }
  }

  return result;
}

__CFString *fbapspManager_findSubPipeTypeForSbuf(uint64_t a1, void *a2, _BYTE *a3)
{
  v75 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  cf1 = 0;
  v73 = 0;
  BOOLean = 0;
  v71 = 0;
  v69 = 0;
  v7 = @"SubPipeTypeTranscode";
  v68 = 0;
  if (!a3)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v64, v65, v66);
    goto LABEL_99;
  }

  v8 = DerivedStorage;
  if (!fbapspManager_isMarkerSbuf(a2))
  {
    *a3 = 0;
    v9 = CMGetAttachment(a2, *MEMORY[0x1E69604B0], 0);
    v10 = *MEMORY[0x1E695E4D0];
    if (v9 != *MEMORY[0x1E695E4D0])
    {
      FormatDescription = CMSampleBufferGetFormatDescription(a2);
      v12 = *MEMORY[0x1E695E480];
      if (FormatDescription)
      {
        if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
        {
          goto LABEL_99;
        }

        v13 = *(v8 + 40);
        v14 = *(*(CMBaseObjectGetVTable() + 16) + 80);
        if (!v14)
        {
          goto LABEL_99;
        }

        if (v14(v13, v73, &v68))
        {
          goto LABEL_99;
        }

        ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
        if (!ASBD)
        {
          goto LABEL_99;
        }
      }

      else
      {
        ASBD = 0;
      }

      if (*(v8 + 120))
      {
        FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
        v17 = v16;
        v18 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v18)
        {
          v18(v17, @"SubPipeType", v12, &v69);
        }

        FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
        v20 = v19;
        v21 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v21)
        {
          v21(v20, @"CurrentFormatDescription", v12, &cf1);
        }

        if (FormatDescription && cf1 && !CFEqual(cf1, FormatDescription) && *(v8 + 156) != 4)
        {
          if (dword_1EAF16F18)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_417(v22, v23, v24, v25, v26);
          }

          v27 = *(v8 + 192);
          if (v27)
          {
            CFRelease(v27);
            *(v8 + 192) = 0;
          }
        }
      }

      Decryptor = FigSampleBufferGetDecryptor();
      v31 = 1;
      if (Decryptor)
      {
        v29 = Decryptor;
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (!v30 || v30(v29, *MEMORY[0x1E6961128], v12, &v71) || v71 != v10)
        {
          v31 = 0;
        }
      }

      FigBufferedAirPlayOutputGetCMBaseObject();
      v33 = v32;
      v34 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v34)
      {
        if (!v34(v33, @"ALACIsAllowed", v12, &BOOLean))
        {
          v35 = *(v8 + 224);
          if (v35 == CFBooleanGetValue(BOOLean) || (*(v8 + 224) = CFBooleanGetValue(BOOLean), v37 = CMBaseObjectGetDerivedStorage(), cf = 0, !*(v37 + 120)))
          {
            LOBYTE(v36) = 0;
LABEL_67:
            v49 = fbapspManager_outputRequiresSubPipeChange(a1, a2);
            v50 = *(v8 + 56);
            Value = CFBooleanGetValue(BOOLean);
            v52 = 1;
            if (ASBD && !Value)
            {
              v53 = *(ASBD + 8);
              v52 = v53 != 1634492771 && v53 != 1668047203 && v53 != 1902928227 && v53 != 2053923171;
            }

            v59 = v50 == 1.0 && v68 != 0 && v31 && *(v8 + 64) == 0;
            v60 = v52 && v59;
            if (!v69 || (FigCFEqual() ? (v61 = 1) : (v61 = v36), (v61 & 1) != 0 || v49))
            {
              *a3 = 1;
              if (v60)
              {
                v7 = @"SubPipeTypePassthrough";
              }
            }

            else
            {
              FigCFEqual();
            }

            goto LABEL_99;
          }

          v38 = v37;
          if (CMSampleBufferGetFormatDescription(a2) && !FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
          {
            v36 = FigEndpointStreamAudioFormatDescriptionGetASBD();
            if (!v36)
            {
              goto LABEL_65;
            }

            v39 = FigEndpointStreamAudioFormatDescriptionGetASBD();
            if (v39)
            {
              v40 = *(v38 + 224);
              if (*(v38 + 224))
              {
                v41 = *(v36 + 8);
                v40 = v41 == 1634492771 || v41 == 1668047203 || v41 == 1902928227 || v41 == 2053923171;
              }

              v45 = *(v39 + 8);
              v63 = v45 == 1634492771 || v45 == 1668047203 || v45 == 1902928227 || v45 == 2053923171;
              LOBYTE(v36) = v40 != v63;
              goto LABEL_65;
            }
          }

          LOBYTE(v36) = 0;
LABEL_65:
          if (cf)
          {
            CFRelease(cf);
          }

          goto LABEL_67;
        }
      }
    }
  }

LABEL_99:
  if (cf1)
  {
    CFRelease(cf1);
  }

  if (v73)
  {
    CFRelease(v73);
  }

  if (v69)
  {
    CFRelease(v69);
  }

  if (v71)
  {
    CFRelease(v71);
  }

  if (BOOLean)
  {
    CFRelease(BOOLean);
  }

  return v7;
}

uint64_t fbapspManager_prepareSubPipeToStop(const void *a1, opaqueCMSampleBuffer *a2, int a3)
{
  v36 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v7 = DerivedStorage;
  v8 = *MEMORY[0x1E6960C70];
  cf = 0;
  value = v8;
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (*(DerivedStorage + 120) && !*(DerivedStorage + 152))
  {
    v9 = MEMORY[0x1E695E480];
    if (a3 && (v10 = *(DerivedStorage + 616)) != 0 && (CMSampleBufferGetOutputPresentationTimeStamp(&lhs, v10), CMSampleBufferGetOutputDuration(&rhs, *(v7 + 616)), CMTimeAdd(&time, &lhs, &rhs), value = time.value, timescale = time.timescale, (time.flags & 1) != 0))
    {
      v24 = *v9;
      time.value = value;
      time.timescale = timescale;
      v11 = CMTimeCopyAsDictionary(&time, v24);
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
      v26 = v25;
      v27 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v27)
      {
LABEL_19:
        v23 = 4294954514;
        goto LABEL_20;
      }

      v15 = v27(v26, @"ApplyTrimAtEndAfterPTS", v11);
      if (v15)
      {
LABEL_18:
        v23 = v15;
        goto LABEL_20;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v7 + 120);
    v13 = *(v7 + 616);
    v14 = *(*(CMBaseObjectGetVTable() + 16) + 32);
    if (v14)
    {
      v15 = v14(v12, v13);
      if (v15)
      {
        goto LABEL_18;
      }

      if (!a3)
      {
LABEL_15:
        fbapspManager_postNotification(a1, @"FinishingSubPipe", 0);
        v23 = 0;
        goto LABEL_20;
      }

      v16 = *(v7 + 616);
      v17 = *v9;
      v18 = *MEMORY[0x1E6962DF8];
      v19 = *MEMORY[0x1E695E4D0];
      if (!v16)
      {
        v16 = a2;
      }

      CMSampleBufferGetOutputPresentationTimeStamp(&time, v16);
      v15 = FigBufferedAirPlayAudioChainSubPipeSampleBufferCreateWithTimeStampAndMarker(v17, v18, v19, &time, &cf);
      if (v15)
      {
        goto LABEL_18;
      }

      fbapspManager_setSubPipeTerminationInFlight(a1, 1);
      v20 = *(v7 + 104);
      v21 = cf;
      v22 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v22)
      {
        v15 = v22(v20, v21);
        if (!v15)
        {
          goto LABEL_15;
        }

        goto LABEL_18;
      }
    }

    goto LABEL_19;
  }

  v23 = 0;
  v11 = 0;
LABEL_20:
  v28 = *(v7 + 616);
  if (v28)
  {
    CFRelease(v28);
    *(v7 + 616) = 0;
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v23;
}

void fbapspManager_restoreRetimeSampleBufferIfNeeded(uint64_t a1, void *a2)
{
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  v3 = CMGetAttachment(a2, @"OriginalSbufOPTS", 0);
  if (v3)
  {
    CMTimeMakeFromDictionary(&v5, v3);
    v4 = v5;
    if (!CMSampleBufferSetOutputPresentationTimeStamp(a2, &v4))
    {
      CMRemoveAttachment(a2, @"OriginalSbufOPTS");
    }
  }
}

double fbapspManager_setPropertiesOnSubPipe(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 120))
  {
    v4 = DerivedStorage;
    fbapspManager_setAudioProcessingTapOnSubPipe(a1);
    if (!fbapspManager_setTimePitchAlgorithmOnSubPipe(a1))
    {
      v6 = *(v4 + 432);
      if (!v6 || (FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject(), v8 = v7, (v9 = *(*(CMBaseObjectGetVTable() + 8) + 56)) != 0) && !v9(v8, @"AudioProcessingUnits", v6))
      {
        if (!fbapspManager_setAudioCurvesOnSubPipe(a1, *(v4 + 416), @"AudioCurves") && !fbapspManager_setAudioCurvesOnSubPipe(a1, *(v4 + 424), @"SecondaryAudioCurves"))
        {
          v10 = *(v4 + 440);
          if (v10)
          {
            FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
            v12 = v11;
            v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v13)
            {

              v13(v12, @"ExpectScaledEdits", v10);
            }
          }
        }
      }
    }
  }

  else
  {
    v14 = qword_1EAF16F10;

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, 4294954444, "<<<< FigBufferedAirPlaySubPipeManager >>>>", 2587, v1);
  }

  return result;
}

uint64_t fbapspManager_setLoudnessInfoOnSubPipe(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 120);
  if (result)
  {
    if (*(DerivedStorage + 216))
    {
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
      VTable = CMBaseObjectGetVTable();
      v4 = *(VTable + 8);
      result = VTable + 8;
      if (*(v4 + 56))
      {
        v5 = OUTLINED_FUNCTION_228();

        return v6(v5);
      }
    }
  }

  return result;
}

uint64_t fbapspManager_enqueueMarkerSampleBuffer(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  if (*(result + 120))
  {
    v2 = result;
    result = CMBufferQueueIsEmpty(*(result + 200));
    if (!result)
    {
      v3 = CMBufferQueueDequeueAndRetain(*(v2 + 200));
      if (v3)
      {
        v4 = v3;
        v5 = *MEMORY[0x1E6962DF8];
        v6 = *MEMORY[0x1E6962E00];
        v7 = *MEMORY[0x1E6962E10];
        do
        {
          if (!CMGetAttachment(v4, v5, 0) && !CMGetAttachment(v4, v6, 0) && !CMGetAttachment(v4, v7, 0))
          {
            v8 = *(v2 + 104);
            v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
            if (v9)
            {
              v9(v8, v4);
            }
          }

          CFRelease(v4);
          v4 = CMBufferQueueDequeueAndRetain(*(v2 + 200));
        }

        while (v4);
      }

      v10 = *(v2 + 200);

      return CMBufferQueueReset(v10);
    }
  }

  return result;
}

uint64_t fbapspManager_startAudioChainForSubPipe(uint64_t a1, __int128 *a2, double a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  isSubPipeStarted = fbapspManager_isSubPipeStarted(a1);
  result = 0;
  v9 = *(DerivedStorage + 120);
  if (v9 && !isSubPipeStarted)
  {
    v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (v10)
    {
      result = v10(v9);
      if (a3 != 0.0 && !result)
      {
        if (*(DerivedStorage + 156) == 3)
        {
          v11 = *(DerivedStorage + 384);
          v12 = v11 == 2;
          v13 = v11 != 1;
        }

        else
        {
          v12 = 0;
          v13 = 1;
        }

        v14 = *(DerivedStorage + 120);
        v19 = *a2;
        OUTLINED_FUNCTION_44_7();
        v15 = *(*(CMBaseObjectGetVTable() + 16) + 8);
        if (v15)
        {
          v16 = a3;
          v23 = v19;
          v24 = v20;
          v21 = v17;
          v22 = v18;
          v15(v14, &v23, &v21, 0, v12, v13, v16);
        }

        return 0;
      }
    }

    else
    {
      return 4294954514;
    }
  }

  return result;
}

uint64_t fbapspManager_setTimelineMilestoneOnSubPipeWithOverlapEndTime(uint64_t a1)
{
  v78 = *MEMORY[0x1E69E9840];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if ((v3[12].value & 0x100000000) == 0)
  {
    return 0;
  }

  if ((v3[15].value & 0x100000000) != 0)
  {
    OUTLINED_FUNCTION_54_6();
    rhs = *(v11 + 352);
    v3 = CMTimeAdd(&v70, &lhs, &rhs);
  }

  else
  {
    v70 = *(v3 + 280);
  }

  OUTLINED_FUNCTION_23_11(v3, v4, v5, v6, v7, v8, v9, v10, v51, v55, v59, v63, *&v70.value);
  result = fbapspManager_clearAndSetTimelineMilestoneOnSubPipe(a1, &lhs.value);
  if (!result && dword_1EAF16F18)
  {
    OUTLINED_FUNCTION_147();
    v13 = OUTLINED_FUNCTION_53_4();
    v21 = OUTLINED_FUNCTION_126(v13, v14, v15, v16, v17, v18, v19, v20, v52, v56, v60, *v64, v64[2], v64[3], v64[4]);
    OUTLINED_FUNCTION_86_2(v21, v22, v23, v24, v25, v26, v27, v28, v53, v57, v61, v65, v67, v68, v69);
    OUTLINED_FUNCTION_7_22();
    if (v1)
    {
      if (a1)
      {
        DerivedStorage = CMBaseObjectGetDerivedStorage();
        v37 = DerivedStorage;
      }

      else
      {
        v37 = "";
      }

      OUTLINED_FUNCTION_23_11(DerivedStorage, v30, v31, v32, v33, v34, v35, v36, v54, v58, v62, v66, *&v70.value);
      Seconds = CMTimeGetSeconds(&lhs);
      OUTLINED_FUNCTION_54_6();
      CMTimeGetSeconds(&lhs);
      LODWORD(rhs.value) = 136316162;
      OUTLINED_FUNCTION_37_6();
      *(&rhs.flags + 2) = a1;
      HIWORD(rhs.epoch) = 2082;
      v72 = v37;
      v73 = v39;
      v74 = Seconds;
      v75 = v39;
      v76 = v40;
      OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_4_41(v41, v42, &lhs, v43, &dword_1962D5000, v44, v45, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s Set subPipe TimelineMilestone with overlapEndTimeWithOffset %1.3f (overlapEndTime=%1.3f).");
      OUTLINED_FUNCTION_329_0();
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_524(v46, v47, v48, v49, v50);
    return 0;
  }

  return result;
}

uint64_t fbapspManager_clearAndSetTimelineMilestoneOnSubPipe(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 12) & 1) == 0)
  {
    return 0;
  }

  v5 = DerivedStorage;
  result = fbapspManager_setTimelineMilestoneOnSubPipe(a1);
  if (!result)
  {
    result = fbapspManager_setTimelineMilestoneOnSubPipe(a1);
    if (!result)
    {
      *(v5 + 153) = 1;
    }
  }

  return result;
}

uint64_t fbapspManager_setTimelineMilestoneOnSubPipe(uint64_t a1)
{
  if (!*(CMBaseObjectGetDerivedStorage() + 120))
  {
    return 0;
  }

  if (dword_1EAF16F18)
  {
    OUTLINED_FUNCTION_147();
    v10 = OUTLINED_FUNCTION_126(qword_1EAF16F10, v3, v4, v5, v6, v7, v8, v9, v33, v34, v35, *v36, v36[2], v36[3], v36[4]);
    os_log_type_enabled(v10, type);
    OUTLINED_FUNCTION_28();
    if (v1)
    {
      if (a1)
      {
        CMBaseObjectGetDerivedStorage();
      }

      OUTLINED_FUNCTION_42_7();
      CMTimeGetSeconds(v11);
      OUTLINED_FUNCTION_2_6();
      OUTLINED_FUNCTION_57_3();
      OUTLINED_FUNCTION_39();
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v12, v13, v14, v15, v16, v10, type, v17);
    }

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_417(v18, v19, v20, v21, v22);
  }

  OUTLINED_FUNCTION_42_7();
  v25 = CMTimeCopyAsDictionary(v23, v24);
  if (v25)
  {
    v26 = v25;
    FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
    v28 = v27;
    v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v29)
    {
      v30 = v29(v28, @"TimelineMilestone", v26);
    }

    else
    {
      v30 = 4294954514;
    }

    CFRelease(v26);
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
    return v32;
  }

  return v30;
}

BOOL fbapspManager_outputRequiresSubPipeChange(uint64_t a1, opaqueCMSampleBuffer *a2)
{
  v113 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v56 = 0;
  cf = 0;
  if (!*(DerivedStorage + 120))
  {
    goto LABEL_25;
  }

  if (!a2)
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v50, v51, v52);
    goto LABEL_25;
  }

  v6 = DerivedStorage;
  if (!CMSampleBufferGetFormatDescription(a2))
  {
    goto LABEL_25;
  }

  v7 = *(v6 + 192);
  if (v7)
  {
    v56 = CFRetain(v7);
  }

  else
  {
    if (FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription())
    {
      goto LABEL_25;
    }

    v25 = *(v6 + 40);
    v26 = *(*(CMBaseObjectGetVTable() + 16) + 72);
    if (!v26 || v26(v25, cf, &v56))
    {
      goto LABEL_25;
    }
  }

  ASBD = FigEndpointStreamAudioFormatDescriptionGetASBD();
  if (!ASBD || (v9 = ASBD, (v10 = FigEndpointStreamAudioFormatDescriptionGetASBD()) == 0))
  {
LABEL_25:
    v13 = 0;
    goto LABEL_26;
  }

  v11 = v10;
  v12 = FigCFEqual();
  v13 = v12 == 0;
  if (!v12 && dword_1EAF16F18)
  {
    OUTLINED_FUNCTION_147();
    v14 = OUTLINED_FUNCTION_52_5();
    v22 = OUTLINED_FUNCTION_126(v14, v15, v16, v17, v18, v19, v20, v21, v50, v51, v52, *v53, v53[2], v53[3], v53[4]);
    if (os_log_type_enabled(v22, type))
    {
      v23 = v55;
    }

    else
    {
      v23 = v55 & 0xFFFFFFFE;
    }

    if (v23)
    {
      if (a1)
      {
        v24 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v24 = "";
      }

      v28 = *v9;
      v29 = *v11;
      v30 = *(v9 + 16);
      v31 = *(v9 + 20);
      v33 = *(v11 + 16);
      v32 = *(v11 + 20);
      v35 = *(v9 + 24);
      v34 = *(v9 + 28);
      v37 = *(v11 + 24);
      v36 = *(v11 + 28);
      v38 = *(v9 + 32);
      v39 = *(v11 + 32);
      v40 = *(v9 + 8);
      v41 = *(v9 + 12);
      v42 = HIBYTE(v40);
      v43 = BYTE2(v40);
      v44 = BYTE1(v40);
      v45 = v40;
      v47 = *(v11 + 8);
      v46 = *(v11 + 12);
      v48 = *(v6 + 192) != 0;
      v58 = 136321794;
      v59 = "fbapspManager_outputRequiresSubPipeChange";
      v60 = 2048;
      v61 = a1;
      v62 = 2082;
      v63 = v24;
      v64 = 2048;
      v65 = v28;
      v66 = 2048;
      v67 = v29;
      v68 = 1024;
      v69 = v34;
      v70 = 1024;
      v71 = v36;
      v72 = 1024;
      v73 = v30;
      v74 = 1024;
      v75 = v33;
      v76 = 1024;
      v77 = v31;
      v78 = 1024;
      v79 = v32;
      v80 = 1024;
      v81 = v35;
      v82 = 1024;
      v83 = v37;
      v84 = 1024;
      v85 = v38;
      v86 = 1024;
      v87 = v39;
      v88 = 1024;
      v89 = v41;
      v90 = 1024;
      v91 = v46;
      v92 = 1024;
      v93 = v42;
      v94 = 1024;
      v95 = v43;
      v96 = 1024;
      v97 = v44;
      v98 = 1024;
      v99 = v45;
      v100 = 1024;
      v101 = HIBYTE(v47);
      v102 = 1024;
      v103 = BYTE2(v47);
      v104 = 1024;
      v105 = BYTE1(v47);
      v106 = 1024;
      v107 = v47;
      v108 = 1024;
      v109 = 1;
      v110 = 1024;
      v111 = v48;
      v27 = OUTLINED_FUNCTION_12_17(v24, v32, v112, v35, &dword_1962D5000, v37, v38, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s contentFormatASBD(transportFormatASBD). mSampleRate=%f(%f), mChannelsPerFrame=%u(%u), mBytesPerPacket=%u(%u), mFramesPerPacket=%u(%u), mBytesPerFrame=%u(%u), mBitsPerChannel=%u(%u), mFormatFlags=0x%x(0x%x) mFormatID=%c%c%c%c(%c%c%c%c) outputRequiresSubPipeChange=%d using recommendedTransportFormatDesc=%d\n");
      v2 = &unk_1EAF16000;
    }

    else
    {
      v27 = 0;
    }

    v13 = 1;
    OUTLINED_FUNCTION_417(v2[482], 1, 1, v27, v27 != v112);
  }

LABEL_26:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v56)
  {
    CFRelease(v56);
  }

  return v13;
}

uint64_t fbapspManager_addListenersForSubPipe(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterAddWeakListeners();
}

uint64_t fbapspManager_setAudioProcessingTapOnSubPipe(uint64_t a1)
{
  result = *(CMBaseObjectGetDerivedStorage() + 120);
  if (result)
  {
    FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
    VTable = CMBaseObjectGetVTable();
    v3 = *(VTable + 8);
    result = VTable + 8;
    if (*(v3 + 56))
    {
      v4 = OUTLINED_FUNCTION_228();

      return v5(v4);
    }
  }

  return result;
}

uint64_t fbapspManager_setTimePitchAlgorithmOnSubPipe(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  result = *(DerivedStorage + 120);
  if (result)
  {
    if (*(DerivedStorage + 448))
    {
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
      if (*(*(CMBaseObjectGetVTable() + 8) + 56))
      {
        v3 = OUTLINED_FUNCTION_228();

        return v4(v3);
      }

      else
      {
        return 4294954514;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t fbapspManager_setAudioCurvesOnSubPipe(uint64_t a1, const void *a2, uint64_t a3)
{
  v77 = a3;
  v107 = *MEMORY[0x1E69E9840];
  v95 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v94 = 0;
  v93 = 0;
  memset(context, 0, sizeof(context));
  v15 = *MEMORY[0x1E6960CC0];
  *&v90.value = *MEMORY[0x1E6960CC0];
  v16 = *(MEMORY[0x1E6960CC0] + 16);
  v90.epoch = v16;
  v91 = 0;
  if (!*(DerivedStorage + 120))
  {
    return v95;
  }

  v17 = DerivedStorage;
  if (*(DerivedStorage + 156) != 3)
  {
    return v95;
  }

  v79 = v15;
  if (*(DerivedStorage + 364))
  {
    v15 = *(DerivedStorage + 352);
    *&v90.value = v15;
    v90.epoch = *(DerivedStorage + 368);
  }

  v18 = (DerivedStorage + 388);
  if (*(DerivedStorage + 400))
  {
    OUTLINED_FUNCTION_25_10(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v15, p_rhs, v73, v75, v77, v79.n128_i64[0], v79.n128_i64[1], v81, v84, v86, v88, v14, v90.value);
    *&rhs.value = *v18;
    rhs.epoch = *(v17 + 404);
    DerivedStorage = CMTimeAdd(&v90, &lhs, &rhs);
  }

  if (dword_1EAF16F18)
  {
    LODWORD(v97.value) = 0;
    LOBYTE(type.value) = 0;
    OUTLINED_FUNCTION_52_5();
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    value_low = LOBYTE(type.value);
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type.value);
    OUTLINED_FUNCTION_28();
    if (v3)
    {
      if (a1)
      {
        v21 = CMBaseObjectGetDerivedStorage();
        v31 = v21;
      }

      else
      {
        v31 = "";
      }

      OUTLINED_FUNCTION_25_10(v21, v22, v23, v24, v25, v26, v27, v28, v29, p_rhs, v73, v75, v77, v79.n128_i64[0], v79.n128_i64[1], v81, v84, v86, v88, v30, v90.value);
      Seconds = CMTimeGetSeconds(&lhs);
      *&lhs.value = *v18;
      lhs.epoch = *(v17 + 404);
      v33 = CMTimeGetSeconds(&lhs);
      lhs = *(v17 + 352);
      v34 = CMTimeGetSeconds(&lhs);
      LODWORD(rhs.value) = 136316418;
      *(&rhs.value + 4) = "fbapspManager_setAudioCurvesOnSubPipe";
      LOWORD(rhs.flags) = 2048;
      *(&rhs.flags + 2) = a1;
      HIWORD(rhs.epoch) = 2082;
      v99 = v31;
      v100 = 2048;
      v101 = Seconds;
      v102 = 2048;
      v103 = v33;
      v104 = 2048;
      v105 = v34;
      LODWORD(v73) = 62;
      p_rhs = &rhs;
      OUTLINED_FUNCTION_108();
      _os_log_send_and_compose_impl(v35, v36, v37, v38, v39, os_log_and_send_and_compose_flags_and_os_log_type, value_low, v40);
    }

    OUTLINED_FUNCTION_7();
    v15.n128_f64[0] = OUTLINED_FUNCTION_417(v41, v42, v43, v44, v45);
  }

  OUTLINED_FUNCTION_25_10(DerivedStorage, v7, v8, v9, v10, v11, v12, v13, v15, p_rhs, v73, v75, v77, v79.n128_i64[0], v79.n128_i64[1], v81, v84, v86, v88, v14, v90.value);
  *&rhs.value = v80;
  rhs.epoch = v16;
  v46 = CMTimeCompare(&lhs, &rhs);
  if (!a2 || !v46)
  {
    if (a2)
    {
      v49 = CFRetain(a2);
      a2 = 0;
      v60 = 0;
    }

    else
    {
      v60 = 0;
      v49 = 0;
    }

    goto LABEL_37;
  }

  v47 = *MEMORY[0x1E695E480];
  MutableCopy = FigCFDictionaryCreateMutableCopy();
  if (!MutableCopy)
  {
    return -12786;
  }

  v49 = MutableCopy;
  ValueIfPresent = FigCFDictionaryGetValueIfPresent();
  if (ValueIfPresent)
  {
    v58 = v94;
    OUTLINED_FUNCTION_660(ValueIfPresent, v51, v52, v53, v54, v55, v56, v57, v72, v74, v76, v78, v80, *(&v80 + 1), v82, v85, v87, v89, *&v90.value);
    lhs = **&MEMORY[0x1E6960C70];
    v59 = FigCFArrayCreateMutableCopy();
    v60 = v59;
    if (v58 && v59)
    {
      Count = CFArrayGetCount(v58);
      if (Count < 1)
      {
LABEL_27:
        FigCFDictionarySetValue();
        goto LABEL_32;
      }

      v62 = Count;
      for (i = 0; i < v62; i += 3)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v58, i);
        CMTimeMakeFromDictionary(&lhs, ValueAtIndex);
        v97 = lhs;
        type = v83;
        CMTimeAdd(&rhs, &v97, &type);
        lhs = rhs;
        v65 = CMTimeCopyAsDictionary(&rhs, v47);
        CFArraySetValueAtIndex(v60, i, v65);
        if (v65)
        {
          CFRelease(v65);
        }
      }
    }

    if (!v60)
    {
      v95 = -12786;
LABEL_46:
      CFRelease(v49);
      return v95;
    }

    goto LABEL_27;
  }

  v60 = 0;
LABEL_32:
  if (!FigCFDictionaryGetValueIfPresent())
  {
    a2 = 0;
    goto LABEL_37;
  }

  a2 = FigCFDictionaryCreateMutableCopy();
  if (a2)
  {
    *&context[0] = &v95;
    *(context + 8) = v90;
    v93 = a2;
    CFDictionaryApplyFunction(v91, fbapspManager_retimeProcessingUnitScheduledParametersForIdentifier, context);
    v95 = **&context[0];
    if (v95)
    {
      goto LABEL_41;
    }

    FigCFDictionarySetValue();
LABEL_37:
    FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
    v67 = v66;
    v68 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v68)
    {
      v69 = v68(v67, v78, v49);
    }

    else
    {
      v69 = -12782;
    }

    v95 = v69;
LABEL_41:
    if (!v60)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  v95 = -12786;
  if (v60)
  {
LABEL_42:
    CFRelease(v60);
  }

LABEL_43:
  if (a2)
  {
    CFRelease(a2);
  }

  if (v49)
  {
    goto LABEL_46;
  }

  return v95;
}

void __fbapspManager_subPipeFinishedProcessingData_block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x1E69E9840];
  if (FigCFEqual())
  {
    fbapspManager_postNotification(*(a1 + 48), @"PlayResourceReleased", 0);
  }

  v3 = fbapspManager_disconnectSbufBridge(*(a1 + 48));
  OUTLINED_FUNCTION_0_5(v3);
  if (!v4)
  {
    if (*(*(a1 + 56) + 153) || (v5 = fbapspManager_clearCurrentSubPipe(*(a1 + 48), 0, 1), OUTLINED_FUNCTION_0_5(v5), !v6))
    {
      fbapspManager_setSubPipeTerminationInFlight(*(a1 + 48), 0);
      v7 = fbapspManager_processPendingSbufsOnSubPipeFinished(*(a1 + 48));
      OUTLINED_FUNCTION_0_5(v7);
      if (!v8)
      {
        v9 = FigCFEqual();
        v10 = *(a1 + 56);
        v11 = *(v10 + 156);
        if (v9 && v11 == 3)
        {
          fbapspManager_postNotification(*(a1 + 48), @"OverlapStartTimeReached", 0);
        }

        else if (v11 == 4 && *(v10 + 384) == 2 && *(v10 + 153))
        {
          if (dword_1EAF16F18)
          {
            OUTLINED_FUNCTION_147();
            v12 = OUTLINED_FUNCTION_53_4();
            v20 = OUTLINED_FUNCTION_126(v12, v13, v14, v15, v16, v17, v18, v19, v38, v40, v42, *v44, v44[2], v44[3], v44[4]);
            OUTLINED_FUNCTION_86_2(v20, v21, v22, v23, v24, v25, v26, v27, v39, v41, v43, v45, v46, v47, v48);
            OUTLINED_FUNCTION_7_22();
            if (v1)
            {
              if (*(a1 + 48))
              {
                CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_2_6();
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_4_41(v28, v29, v49, v30, &dword_1962D5000, v31, v32, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s No op. (mixing + outro + milestoneSet)  We will wait for milestone for state change.\n");
              OUTLINED_FUNCTION_329_0();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524(v33, v34, v35, v36, v37);
          }
        }

        else
        {
          fbapspManager_setProcessingState(*(a1 + 48), 1);
        }

        fbapspManager_scheduleProcessingDataIfPossible(*(a1 + 48));
      }
    }
  }

  fbapspManager_releaseAsync(*(a1 + 48));
}

void __fbapspManager_subPipePassedTimelineMilestone_block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  if (*(v3 + 156) == 4 && *(v3 + 384) == 2)
  {
    if (*(v3 + 153))
    {
      v4 = fbapspManager_disconnectSbufBridge(*(a1 + 48));
      OUTLINED_FUNCTION_0_5(v4);
      if (!v5)
      {
        v6 = fbapspManager_clearCurrentSubPipe(*(a1 + 48), 1, 1);
        OUTLINED_FUNCTION_0_5(v6);
        if (!v7)
        {
          fbapspManager_setSubPipeTerminationInFlight(*(a1 + 48), 0);
          fbapspManager_setProcessingState(*(a1 + 48), 1);
          fbapspManager_postNotification(*(a1 + 48), @"OverlapOutroEndTimeProcessed", 0);
          *(*(a1 + 40) + 153) = 0;
          v8 = fbapspManager_lastProcessedOPTSInMediaTime(&v75);
          OUTLINED_FUNCTION_56_5(v8, v9, v10, v11, v12, v13, v14, v15, v16, v44, v48, v52, v56, v63, v65, v67, v69, v71, v73, v17, v75.value);
          if (dword_1EAF16F18)
          {
            v26 = OUTLINED_FUNCTION_16_12(v18, v19, v20, v21, v22, v23, v24, v25, v45, v49, v53, v57, SBYTE2(v57), SBYTE3(v57), SHIDWORD(v57));
            OUTLINED_FUNCTION_86_2(v26, v27, v28, v29, v30, v31, v32, v33, v46, v50, v54, v58, v60, v61, v62);
            OUTLINED_FUNCTION_7_22();
            if (v1)
            {
              if (*(a1 + 48))
              {
                CMBaseObjectGetDerivedStorage();
              }

              OUTLINED_FUNCTION_47_4(*(a1 + 40), v47, v51, v55, v59, v64, v66, v68, v70, v72, v74, *&v75.value, v75.epoch);
              OUTLINED_FUNCTION_2_6();
              OUTLINED_FUNCTION_24_7();
              OUTLINED_FUNCTION_39();
              OUTLINED_FUNCTION_4_41(v34, v35, &v75, v36, &dword_1962D5000, v37, v38, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s mixToStopMixingMediaTime set %1.3f\n");
              OUTLINED_FUNCTION_329_0();
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524(v39, v40, v41, v42, v43);
          }
        }
      }
    }
  }

  fbapspManager_releaseAsync(*(a1 + 48));
}

void __fbapspManager_copyProperty_block_invoke(void *a1)
{
  v2 = a1[5];
  v1 = a1[6];
  v4 = a1[7];
  v3 = a1[8];
  CMBaseObjectGetDerivedStorage();
  OUTLINED_FUNCTION_106(MEMORY[0x1E6960C70]);
  if (*(v5 + 456))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_8;
  }

  v6 = v5;
  if (CFEqual(v1, @"SourceSampleBufferConsumer"))
  {
    Float64 = *(v6 + 96);
    if (!Float64)
    {
LABEL_7:
      v8 = 0;
      *v3 = Float64;
      goto LABEL_8;
    }

LABEL_4:
    Float64 = CFRetain(Float64);
    goto LABEL_7;
  }

  if (CFEqual(v1, @"CurrentRate"))
  {
    Float64 = FigCFNumberCreateFloat64();
    goto LABEL_7;
  }

  if (CFEqual(v1, @"CurrentSubpipeType"))
  {
    if (!*(v6 + 120))
    {
      v8 = 0;
      *v3 = 0;
      goto LABEL_8;
    }

    FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
    v11 = v10;
    v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v12)
    {
      v12(v11, @"SubPipeType", v4, v3);
    }

    goto LABEL_13;
  }

  if (CFEqual(v1, @"MixStartMediaTime"))
  {
    v13 = 352;
    if ((*(v6 + 364) & 1) == 0)
    {
      v13 = 328;
    }

    v14 = (v6 + v13);
    v32 = *v14;
    v33 = *(v14 + 2);
    v29 = v32;
    v30 = v33;
    v15 = &v29;
    goto LABEL_18;
  }

  if (CFEqual(v1, @"ReadyToMix"))
  {
    isReadyToMix = fbapspManager_isReadyToMix(v2);
    v17 = MEMORY[0x1E695E4D0];
    if (!isReadyToMix)
    {
      v17 = MEMORY[0x1E695E4C0];
    }

    goto LABEL_22;
  }

  if (CFEqual(v1, @"LastProcessedOPTS"))
  {
    fbapspManager_lastProcessedOPTSInMediaTime(&v31);
    v32 = *&v31.value;
    epoch = v31.epoch;
LABEL_26:
    v33 = epoch;
LABEL_29:
    v15 = &v32;
LABEL_18:
    Float64 = CMTimeCopyAsDictionary(v15, v4);
    goto LABEL_7;
  }

  if (CFEqual(v1, @"FirstProcessedOPTS"))
  {
    v33 = *(v6 + 536);
    v32 = *(v6 + 520);
    goto LABEL_29;
  }

  if (CFEqual(v1, @"ProcessingState"))
  {
    v19 = *(v6 + 156) - 1;
    if (v19 > 4)
    {
      v8 = 1061109567;
      goto LABEL_8;
    }

    *v3 = CFRetain(*(&off_1E7482E10 + v19));
    v20 = *(v6 + 156);
    if ((v20 - 1) >= 4)
    {
      if (v20 == 5)
      {
        v21 = "StopMixing";
      }

      else
      {
        v21 = "UNKNONW";
      }
    }

    else
    {
      v21 = off_1E7482E38[v20 - 1];
    }

    Float64 = CFStringCreateWithCString(v4, v21, 0x8000100u);
    goto LABEL_7;
  }

  if (CFEqual(v1, @"MilestoneSet"))
  {
    v17 = MEMORY[0x1E695E4D0];
    if (!*(v6 + 153))
    {
      v17 = MEMORY[0x1E695E4C0];
    }

LABEL_22:
    Float64 = *v17;
    if (!*v17)
    {
      goto LABEL_7;
    }

    goto LABEL_4;
  }

  if (CFEqual(v1, @"MixingToStopMixingMediaTime"))
  {
    v32 = *(v6 + 304);
    epoch = *(v6 + 320);
    goto LABEL_26;
  }

  if (!CFEqual(v1, @"ContentStreamFormatDescription"))
  {
    if (*(v6 + 120))
    {
      FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
      v8 = CMBaseObjectCopyProperty(v25, v1, v4, v3);
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  v23 = (v6 + 176);
  v22 = *(v6 + 176);
  if (v22)
  {
    v24 = 0;
    goto LABEL_57;
  }

  v26 = *(v6 + 608);
  if (v26)
  {
    v27 = CFRetain(v26);
  }

  else
  {
    v27 = CMBufferQueueCopyHead(*(v6 + 128));
  }

  v24 = v27;
  if (CMSampleBufferGetFormatDescription(v27))
  {
    v28 = FigEndpointStreamAudioFormatDescriptionCreateWithCMFormatDescription();
    if (!v28)
    {
      v22 = *v23;
      if (!*v23)
      {
LABEL_58:
        v8 = 0;
        *v3 = v22;
        goto LABEL_59;
      }

LABEL_57:
      v22 = CFRetain(v22);
      goto LABEL_58;
    }

    v8 = v28;
  }

  else
  {
    v8 = 0;
  }

LABEL_59:
  if (v24)
  {
    CFRelease(v24);
  }

LABEL_8:
  OUTLINED_FUNCTION_2_4();
  *(v9 + 24) = v8;
}

void __fbapspManager_setProperty_block_invoke(uint64_t a1)
{
  v183 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 40) + 456))
  {
    goto LABEL_14;
  }

  if (CFEqual(@"ThreadPriority", *(a1 + 48)))
  {
    v4 = *(a1 + 56);
    if (v4)
    {
      v5 = CFGetTypeID(v4);
      if (v5 == CFNumberGetTypeID())
      {
        if (!*(*(a1 + 40) + 120))
        {
LABEL_14:
          OUTLINED_FUNCTION_372();
          return;
        }

        v6 = *(a1 + 56);
        FigBufferedAirPlayAudioChainSubPipeGetCMBaseObject();
        v8 = v7;
        v9 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v9)
        {
          v10 = v9(v8, @"ThreadPriority", v6);
        }

        else
        {
          v10 = 4294954514;
        }

LABEL_13:
        OUTLINED_FUNCTION_12_7(v10);
        goto LABEL_14;
      }
    }

LABEL_12:
    OUTLINED_FUNCTION_303();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d");
    goto LABEL_13;
  }

  if (CFEqual(@"DecodeForPrerollRate", *(a1 + 48)))
  {
    v11 = *(a1 + 56);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = CFGetTypeID(v11);
    if (v12 != CFNumberGetTypeID())
    {
      goto LABEL_12;
    }

    v27 = *(a1 + 56);
    v26 = *(a1 + 64);
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    valuePtr.value = 0;
    Value = CFNumberGetValue(v27, kCFNumberFloat64Type, &valuePtr);
    if (*(DerivedStorage + 72) == 1)
    {
      *(DerivedStorage + 56) = valuePtr.value;
      if (dword_1EAF16F18)
      {
        v37 = OUTLINED_FUNCTION_34_9(Value, v30, v31, v32, v33, v34, v35, v36, v152, v155, v158, v162, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v166, v167, v168, *type);
        OUTLINED_FUNCTION_435_0(v37, v38, v39, v40, v41, v42, v43, v44, v153, v156, v159, v163, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v166, v167, v168, *type);
        OUTLINED_FUNCTION_46();
        if (!v2)
        {
          goto LABEL_98;
        }

        if (v26)
        {
          v45 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v45 = "";
        }

        v84 = *(DerivedStorage + 56);
        v170 = 136315906;
        v171 = "fbapspManager_setDecodeForPrerollRateRateIfNeeded";
        v172 = 2048;
        v173 = v26;
        v174 = 2082;
        v175 = v45;
        v176 = 2048;
        v177 = v84;
        OUTLINED_FUNCTION_100();
        v90 = "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s new decodeForPrerollRate=%1.3f ";
LABEL_97:
        OUTLINED_FUNCTION_10_3(v85, v86, &time, v87, &dword_1962D5000, v88, v89, v90);
LABEL_98:
        OUTLINED_FUNCTION_7();
        OUTLINED_FUNCTION_238_0(v109, v110, v111, v112, v113);
      }
    }

    else if (dword_1EAF16F18)
    {
      v49 = OUTLINED_FUNCTION_34_9(Value, v30, v31, v32, v33, v34, v35, v36, v152, v155, v158, v162, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v166, v167, v168, *type);
      OUTLINED_FUNCTION_435_0(v49, v50, v51, v52, v53, v54, v55, v56, v154, v157, v160, v164, valuePtr.value, *&valuePtr.timescale, valuePtr.epoch, v166, v167, v168, *type);
      OUTLINED_FUNCTION_46();
      if (!v2)
      {
        goto LABEL_98;
      }

      if (v26)
      {
        v73 = CMBaseObjectGetDerivedStorage();
      }

      else
      {
        v73 = "";
      }

      v91 = *(DerivedStorage + 56);
      v92 = *(DerivedStorage + 72);
      switch(v92)
      {
        case 1:
          v93 = "Stopped";
          break;
        case 2:
          v93 = "Playing";
          break;
        case 3:
          v93 = "Paused";
          break;
        default:
          v93 = "UNKNONW";
          break;
      }

      v170 = 136316418;
      v171 = "fbapspManager_setDecodeForPrerollRateRateIfNeeded";
      v172 = 2048;
      v173 = v26;
      v174 = 2082;
      v175 = v73;
      v176 = 2048;
      v177 = valuePtr.value;
      v178 = 2048;
      v179 = v91;
      v180 = 2080;
      v181 = v93;
      OUTLINED_FUNCTION_100();
      v90 = "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s decodeForPrerollRate:%1.3f, currentPipelineRate:%1.3f. currentState:%s  CANNOT set new rate since its not in Stopped state.";
      goto LABEL_97;
    }

    v106 = *(DerivedStorage + 56);
    v105 = v26;
    goto LABEL_100;
  }

  if (CFEqual(@"PipelineRate", *(a1 + 48)))
  {
    v13 = *(a1 + 56);
    if (!v13 || (v14 = CFGetTypeID(v13), v14 != CFNumberGetTypeID()))
    {
      OUTLINED_FUNCTION_3_38();
      if (v15)
      {
        goto LABEL_14;
      }

      goto LABEL_12;
    }

    CFNumberGetValue(*(a1 + 56), kCFNumberFloat64Type, (*(a1 + 40) + 56));
    if (dword_1EAF16F18)
    {
      LODWORD(valuePtr.value) = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      OUTLINED_FUNCTION_53_4();
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      OUTLINED_FUNCTION_7_22();
      if (v1)
      {
        v79 = *(a1 + 64);
        if (v79)
        {
          v80 = CMBaseObjectGetDerivedStorage();
        }

        else
        {
          v80 = "";
        }

        v94 = *(*(a1 + 40) + 56);
        v170 = 136315906;
        v171 = "fbapspManager_setProperty_block_invoke";
        v172 = 2048;
        v173 = v79;
        v174 = 2082;
        v175 = v80;
        v176 = 2048;
        v177 = v94;
        OUTLINED_FUNCTION_100();
        OUTLINED_FUNCTION_4_41(v95, v96, &time, v97, &dword_1962D5000, v98, v99, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s setProperty PipelineRate=%1.3f ");
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_524(v100, v101, v102, v103, v104);
    }

    v105 = *(a1 + 64);
    v106 = *(*(a1 + 40) + 56);
LABEL_100:
    fbapspManager_startDataFlowIfRateIsValid(v105, v106);
    goto LABEL_13;
  }

  if (CFEqual(@"LoudnessInfo", *(a1 + 48)))
  {
    v16 = *(a1 + 56);
    if (v16)
    {
      v17 = CFGetTypeID(v16);
      if (v17 != CFDictionaryGetTypeID())
      {
        if (*(a1 + 56))
        {
          OUTLINED_FUNCTION_3_38();
          if (v18)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }
    }

    v19 = *(*(a1 + 40) + 216);
    if (v19)
    {
      CFRelease(v19);
      *(*(a1 + 40) + 216) = 0;
    }

    v20 = *(a1 + 56);
    if (v20)
    {
      *(*(a1 + 40) + 216) = CFRetain(v20);
    }

    else
    {
      *(*(a1 + 40) + 216) = CFDictionaryCreate(*MEMORY[0x1E695E480], 0, 0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (!*(*(a1 + 40) + 216))
      {
        goto LABEL_12;
      }
    }

    fbapspManager_setLoudnessInfoOnSubPipe(*(a1 + 64));
    OUTLINED_FUNCTION_2_4();
    *(v21 + 24) = 0;
    goto LABEL_14;
  }

  if (!CFEqual(@"AudioProcessingTap", *(a1 + 48)))
  {
    if (CFEqual(@"OverlapRange", *(a1 + 48)))
    {
      OUTLINED_FUNCTION_372();

      fbapspManager_processOverlapRange(v46, v47);
      return;
    }

    if (CFEqual(@"MixStartMediaTime", *(a1 + 48)))
    {
      v58 = *(a1 + 56);
      if (v58)
      {
        v59 = CFGetTypeID(v58);
        if (v59 == CFDictionaryGetTypeID())
        {
          valuePtr = **&MEMORY[0x1E6960C70];
          v161 = *&valuePtr.value;
          epoch = valuePtr.epoch;
          CMTimeMakeFromDictionary(&valuePtr, *(a1 + 56));
          v61 = *(a1 + 40);
          *(v61 + 352) = v161;
          *(v61 + 368) = epoch;
          if (dword_1EAF16F18)
          {
            *type = 0;
            v168 = OS_LOG_TYPE_DEFAULT;
            v62 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v62, v168);
            OUTLINED_FUNCTION_7_22();
            if (v1)
            {
              v71 = *(a1 + 64);
              if (v71)
              {
                v63 = CMBaseObjectGetDerivedStorage();
                v72 = v63;
              }

              else
              {
                v72 = "";
              }

              OUTLINED_FUNCTION_23_11(v63, v64, v65, v66, v67, v68, v69, v70, v152, v155, v161, *(&v161 + 1), *&valuePtr.value);
              CMTimeGetSeconds(&time);
              v170 = 136315906;
              OUTLINED_FUNCTION_37_6();
              v173 = v71;
              v174 = 2082;
              v175 = v72;
              v176 = v116;
              v177 = v117;
              OUTLINED_FUNCTION_100();
              OUTLINED_FUNCTION_4_41(v118, v119, &time, v120, &dword_1962D5000, v121, v122, "<<<< FigBufferedAirPlaySubPipeManager >>>> %s: [%p] %{public}s setProperty RetimeStartTime: %1.3f");
            }

            OUTLINED_FUNCTION_7();
            OUTLINED_FUNCTION_524(v123, v124, v125, v126, v127);
          }

          *(*(a1 + 40) + 328) = valuePtr;
        }
      }

      goto LABEL_14;
    }

    if (CFEqual(@"AudioCurves", *(a1 + 48)))
    {
      v74 = *(a1 + 56);
      if (!v74)
      {
LABEL_104:
        v115 = *(a1 + 40);
        v78 = *(v115 + 416);
        *(v115 + 416) = 0;
        goto LABEL_116;
      }

      CFGetTypeID(v74);
      CFDictionaryGetTypeID();
      v75 = OUTLINED_FUNCTION_28_10();
      if (!v76)
      {
        if (v75)
        {
          OUTLINED_FUNCTION_3_38();
          if (v114)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }

        goto LABEL_104;
      }

      v77 = *(a1 + 40);
      v78 = *(v77 + 416);
      *(v77 + 416) = v75;
      if (!v75)
      {
LABEL_116:
        if (!v78)
        {
          goto LABEL_14;
        }

        goto LABEL_117;
      }

LABEL_91:
      CFRetain(v75);
      goto LABEL_116;
    }

    if (CFEqual(@"SecondaryAudioCurves", *(a1 + 48)))
    {
      v107 = *(a1 + 56);
      if (v107)
      {
        CFGetTypeID(v107);
        CFDictionaryGetTypeID();
        v75 = OUTLINED_FUNCTION_28_10();
        if (v76)
        {
          v108 = *(a1 + 40);
          v78 = *(v108 + 424);
          *(v108 + 424) = v75;
          if (!v75)
          {
            goto LABEL_116;
          }

          goto LABEL_91;
        }

        if (v75)
        {
          OUTLINED_FUNCTION_3_38();
          if (v128)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }

      v129 = *(a1 + 40);
      v78 = *(v129 + 424);
      *(v129 + 424) = 0;
      goto LABEL_116;
    }

    if (CFEqual(@"WarehouseRetransmissionAvailable", *(a1 + 48)))
    {
      *(*(a1 + 40) + 512) = *MEMORY[0x1E695E4D0] == *(a1 + 56);
      goto LABEL_14;
    }

    if (CFEqual(@"AudioProcessingUnits", *(a1 + 48)))
    {
      v132 = *(a1 + 56);
      if (v132)
      {
        CFGetTypeID(v132);
        CFArrayGetTypeID();
        v75 = OUTLINED_FUNCTION_28_10();
        if (v76)
        {
          v133 = *(a1 + 40);
          v78 = *(v133 + 432);
          *(v133 + 432) = v75;
          if (!v75)
          {
            goto LABEL_116;
          }

          goto LABEL_91;
        }

        if (v75)
        {
          OUTLINED_FUNCTION_3_38();
          if (v136)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }

      v137 = *(a1 + 40);
      v78 = *(v137 + 432);
      *(v137 + 432) = 0;
      goto LABEL_116;
    }

    if (CFEqual(@"ExpectScaledEdits", *(a1 + 48)))
    {
      v134 = *(a1 + 56);
      if (v134)
      {
        CFGetTypeID(v134);
        CFBooleanGetTypeID();
        v75 = OUTLINED_FUNCTION_28_10();
        if (v76)
        {
          v135 = *(a1 + 40);
          v78 = *(v135 + 440);
          *(v135 + 440) = v75;
          if (!v75)
          {
            goto LABEL_116;
          }

          goto LABEL_91;
        }

        if (v75)
        {
          OUTLINED_FUNCTION_3_38();
          if (v144)
          {
            goto LABEL_14;
          }

          goto LABEL_12;
        }
      }

      v145 = *(a1 + 40);
      v78 = *(v145 + 440);
      *(v145 + 440) = 0;
      goto LABEL_116;
    }

    if (!CFEqual(@"TimePitchAlgorithm", *(a1 + 48)))
    {
      if (!CFEqual(@"RecommendedTransportFormatDescription", *(a1 + 48)))
      {
        goto LABEL_14;
      }

      v146 = *(a1 + 56);
      if (!v146)
      {
        goto LABEL_14;
      }

      v147 = CFGetTypeID(v146);
      if (v147 != FigEndpointStreamAudioFormatDescriptionGetTypeID())
      {
        goto LABEL_14;
      }

      v148 = *(a1 + 40);
      v149 = *(v148 + 192);
      v150 = *(a1 + 56);
      *(v148 + 192) = v150;
      if (v150)
      {
        CFRetain(v150);
      }

      if (!v149)
      {
        goto LABEL_14;
      }

LABEL_117:
      OUTLINED_FUNCTION_372();

      CFRelease(v130);
      return;
    }

    v138 = *(a1 + 56);
    if (v138)
    {
      v139 = CFGetTypeID(v138);
      TypeID = CFStringGetTypeID();
      v141 = *(a1 + 56);
      if (v139 == TypeID)
      {
        v151 = *(a1 + 40);
        v143 = *(v151 + 448);
        *(v151 + 448) = v141;
        if (v141)
        {
          CFRetain(v141);
        }

        goto LABEL_142;
      }

      if (v141)
      {
        goto LABEL_14;
      }
    }

    v142 = *(a1 + 40);
    v143 = *(v142 + 448);
    *(v142 + 448) = 0;
LABEL_142:
    if (v143)
    {
      CFRelease(v143);
    }

    v10 = fbapspManager_setTimePitchAlgorithmOnSubPipe(*(a1 + 64));
    goto LABEL_13;
  }

  if (*(a1 + 56))
  {
    v22 = MTAudioProcessingTapGetTypeID();
    if (v22 != CFGetTypeID(*(a1 + 56)))
    {
      goto LABEL_14;
    }

    v23 = *(a1 + 56);
    v24 = *(a1 + 40);
    v25 = *(v24 + 64);
    *(v24 + 64) = v23;
    if (v23)
    {
      CFRetain(v23);
    }
  }

  else
  {
    v81 = *(a1 + 40);
    v25 = *(v81 + 64);
    *(v81 + 64) = 0;
  }

  if (v25)
  {
    CFRelease(v25);
  }

  OUTLINED_FUNCTION_372();

  fbapspManager_setAudioProcessingTapOnSubPipe(v82);
}