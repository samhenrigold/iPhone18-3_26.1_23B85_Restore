@interface SetEventsInternal
@end

@implementation SetEventsInternal

void __fpic_SetEventsInternal_block_invoke(uint64_t a1)
{
  v1 = a1;
  v91 = *MEMORY[0x1E69E9840];
  cf = 0;
  fpic_CopyEventsWithOfflineURLsIfNecessary(*(a1 + 104), *(a1 + 96), &cf);
  v2 = cf;
  v3 = *(v1 + 104);
  v4 = *(v1 + 112);
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (v2)
  {
    Count = CFArrayGetCount(v2);
  }

  else
  {
    Count = 0;
  }

  v7 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
    v42 = v70;
    v9 = 0;
    goto LABEL_20;
  }

  v9 = CFDictionaryCreateMutable(v7, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (!v9)
  {
    OUTLINED_FUNCTION_376();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
    v42 = v71;
    CFRelease(Mutable);
    Mutable = 0;
    goto LABEL_20;
  }

  v92.location = 0;
  v92.length = Count;
  CFArrayAppendArray(Mutable, v2, v92);
  if (Count < 1)
  {
    v42 = 0;
    goto LABEL_20;
  }

  allocator = v7;
  v75 = v1;
  theArray = Mutable;
  v10 = (DerivedStorage + 88);
  v11 = Count + 1;
  v78 = v9;
  v76 = v3;
  while (1)
  {
    v12 = OUTLINED_FUNCTION_284();
    ValueAtIndex = CFArrayGetValueAtIndex(v12, v13);
    v15 = (*v10)(v3, v4, ValueAtIndex);
    v16 = FigPlayerInterstitialEventCopyPrimaryItem(v15);
    if (!v16)
    {
      OUTLINED_FUNCTION_120();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
      v42 = v68;
      goto LABEL_65;
    }

    v17 = v16;
    v18 = OUTLINED_FUNCTION_183_2();
    if (!fpic_doesPlayerItemWrapperBelongToCurrentlyEngagedPrimaryItem(v18, v19, v4))
    {
      break;
    }

LABEL_17:
    CFRelease(v17);
    if (--v11 <= 1)
    {
      v42 = 0;
      v1 = v75;
      Mutable = theArray;
      goto LABEL_20;
    }
  }

  v20 = OUTLINED_FUNCTION_620();
  if (CFDictionaryContainsKey(v20, v21))
  {
LABEL_13:
    v27 = OUTLINED_FUNCTION_620();
    Value = CFDictionaryGetValue(v27, v28);
    CFArrayInsertValueAtIndex(Value, 0, ValueAtIndex);
    CFArrayRemoveValueAtIndex(theArray, v11 - 2);
    if (dword_1EAF178D0)
    {
      v82 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v31 = type;
      v32 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type);
      if (OUTLINED_FUNCTION_15_52(v32))
      {
        v83 = 136315906;
        v84 = "fpic_filterIncomingEventsForCurrentPrimaryItem";
        v85 = 2048;
        v86 = v3;
        v87 = 2112;
        v88 = v15;
        v89 = 2048;
        v90 = v17;
        OUTLINED_FUNCTION_95_1();
        v72 = &v83;
        OUTLINED_FUNCTION_108();
        _os_log_send_and_compose_impl(v33, v34, v35, v36, &dword_1962D5000, os_log_and_send_and_compose_flags_and_os_log_type, v31, "<<<< FigPlayerInterstitial >>>> %s: %p: observed %@ for primary item wrapper %p that isn't engaged.");
      }

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_467(v37, v38, v39, v40, v41);
      v9 = v78;
    }

    goto LABEL_17;
  }

  v22 = CFArrayCreateMutable(allocator, 0, MEMORY[0x1E695E9C0]);
  if (v22)
  {
    v23 = v22;
    v24 = OUTLINED_FUNCTION_313_1();
    CFDictionaryAddValue(v24, v25, v23);
    v26 = v23;
    v9 = v78;
    v3 = v76;
    CFRelease(v26);
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_120();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v72, v73, v74);
  v42 = v69;
  CFRelease(v17);
  v9 = v78;
LABEL_65:
  CFRelease(theArray);
  CFRelease(v9);
  Mutable = 0;
  v9 = 0;
  v1 = v75;
LABEL_20:
  *(*(*(v1 + 32) + 8) + 24) = v42;
  OUTLINED_FUNCTION_50_14();
  if (!v43)
  {
    if (Mutable)
    {
      v44 = CFArrayGetCount(Mutable);
    }

    else
    {
      v44 = 0;
    }

    OUTLINED_FUNCTION_313_1();
    v45 = v9;
    if (!FigCFEqual() && v44 < 1)
    {
      v46 = 0;
      goto LABEL_43;
    }

    if (v44 >= 1)
    {
      CFArrayGetValueAtIndex(Mutable, 0);
      OUTLINED_FUNCTION_399();
      v67 = fpic_UnwrapEvent();
      v46 = FigPlayerInterstitialEventCopyPrimaryItem(v67);
    }

    else
    {
      v46 = 0;
    }

    if (*(v1 + 128))
    {
      v47 = *(v1 + 120);
      if (v44)
      {
        v48 = 1;
      }

      else
      {
        v48 = *(v47 + 216) == 0;
      }

      *(v47 + 1140) = v48;
    }

    else
    {
      v49 = *(v1 + 120);
      v50 = *(v49 + 216);
      *(v49 + 216) = Mutable;
      if (Mutable)
      {
        CFRetain(Mutable);
      }

      if (v50)
      {
        CFRelease(v50);
      }
    }

    v51 = *(v1 + 120);
    v52 = Mutable;
    v9 = v45;
    if (*(v1 + 128))
    {
      if (!*(v51 + 1140))
      {
        v52 = *(v51 + 216);
      }

      goto LABEL_42;
    }

    if (!*(v51 + 1140))
    {
LABEL_42:
      fpic_setEventsInAddOrderForPlayerItem(*(v1 + 104), v46, v52, *(v1 + 112), (*(*(v1 + 40) + 8) + 24), (*(*(v1 + 48) + 8) + 24), (*(*(v1 + 56) + 8) + 24), *(*(*(v1 + 64) + 8) + 24), (*(*(v1 + 72) + 8) + 24), (*(*(v1 + 80) + 8) + 24), (*(*(v1 + 88) + 8) + 32));
      OUTLINED_FUNCTION_30_8(v53, *(v1 + 32));
      OUTLINED_FUNCTION_50_14();
      if (!v54)
      {
LABEL_43:
        v55 = *(v1 + 104);
        v56 = *(v1 + 112);
        v57 = FigCFDictionaryCopyArrayOfKeys();
        if (v57)
        {
          v58 = v57;
          v59 = CFArrayGetCount(v57);
          v60 = v59 - 1;
          if (v59 < 1)
          {
            v65 = 0;
          }

          else
          {
            v61 = 0;
            do
            {
              v62 = CFArrayGetValueAtIndex(v58, v61);
              v63 = CFDictionaryGetValue(v45, v62);
              fpic_setEventsInAddOrderForPlayerItem(v55, v62, v63, v56, 0, 0, 0, 0, 0, 0, 0);
              v65 = v64;
              if (v64)
              {
                break;
              }
            }

            while (v60 != v61++);
          }

          CFRelease(v58);
        }

        else
        {
          v65 = 0;
        }

        *(*(*(v1 + 32) + 8) + 24) = v65;
        v9 = v45;
      }
    }

    if (v46)
    {
      CFRelease(v46);
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (cf)
  {
    CFRelease(cf);
  }
}

@end