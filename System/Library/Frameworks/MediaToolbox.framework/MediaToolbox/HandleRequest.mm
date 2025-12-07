@interface HandleRequest
@end

@implementation HandleRequest

void __urlProcessor_HandleRequest_block_invoke(uint64_t a1)
{
  v20 = 0;
  cf = 0;
  v19[0] = 1;
  v19[1] = urlProcessor_contentKeyRequestDidSucceed;
  v19[2] = urlProcessor_contentKeyRequestDidFail;
  v19[3] = urlProcessor_contentKeyRequestDidUpdateContentKeyBossToNewBoss;
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    FigCFDictionarySetValue();
    if (*(*(a1 + 32) + 32))
    {
      FigCFDictionarySetValue();
    }

    if (!FigContentKeySpecifierCreate(1, *(a1 + 40), 0, 0, &cf))
    {
      v5 = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v5)
      {
        v6 = v5;
        CFDictionarySetValue(v5, @"kCKRPCO_AssociatedObjectID", *(*(a1 + 32) + 152));
        if (!FigContentKeyRequestParamsCreate(v3, cf, 0, 2, 2, 0, 0, *(a1 + 48), *(a1 + 56), *(a1 + 88), v6, &v20))
        {
          v7 = *(a1 + 32);
          v8 = *(v7 + 24);
          v9 = v20;
          v10 = *(a1 + 64);
          v11 = *(a1 + 72);
          v12 = *(v7 + 120);
          v13 = *(a1 + 80);
          v14 = *(*(CMBaseObjectGetVTable() + 16) + 8);
          if (v14)
          {
            v14(v8, v9, 5, 0, Mutable, v10, v19, v11, v12, v13 + 16);
          }
        }

        CFRelease(v6);
      }

      else
      {
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17360, 4294948145, "<<<< FigAirPlayURLProcessor >>>>", 1382, v1);
      }
    }
  }

  else
  {
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", qword_1EAF17360, 4294954510, "<<<< FigAirPlayURLProcessor >>>>", 1371, v1);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v15 = *(a1 + 40);
  if (v15)
  {
    CFRelease(v15);
  }

  v16 = *(a1 + 64);
  if (v16)
  {
    CFRelease(v16);
  }

  v17 = *(a1 + 72);
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

void __urlProcessor_HandleRequest_block_invoke_2(uint64_t a1)
{
  v48 = *MEMORY[0x1E69E9840];
  cf = 0;
  v36 = 0;
  FigReadWriteLockLockForRead();
  v3 = *(a1 + 32);
  if (*v3 || !*(v3 + 32) || !*(a1 + 40))
  {
    v4 = 0;
LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  v17 = *MEMORY[0x1E695E480];
  Mutable = FigCustomURLRequestInfoCreateMutable();
  if (Mutable || (Mutable = FigCustomURLRequestInfoSetHTTPHeaders()) != 0 || (Mutable = FigCustomURLRequestInfoSetCryptor()) != 0 || (Mutable = FigCustomURLRequestInfoSetIsSecureStopSupported()) != 0)
  {
    v4 = Mutable;
    goto LABEL_3;
  }

  if (*(a1 + 89))
  {
    v19 = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
    v5 = v19;
    if (!v19)
    {
      OUTLINED_FUNCTION_243();
      FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v33, v34, v35);
      goto LABEL_47;
    }

    CFArrayAppendValue(v19, @"com.apple.streamingkeydelivery.contentkey");
    if (*(a1 + 90))
    {
      CFArrayAppendValue(v5, @"com.apple.streamingkeydelivery.persistentcontentkey");
    }

    IsRenewalRequest = FigCustomURLRequestInfoSetAllowedUniversalTypeIdentifiers();
    if (IsRenewalRequest)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v5 = 0;
  }

  IsRenewalRequest = FigCustomURLRequestInfoSetIsFromPreMonarchAirPlayReceiver();
  if (IsRenewalRequest)
  {
    goto LABEL_47;
  }

  if (urlp_FigCFDictionaryGetBooleanIfPresent(*(a1 + 72), *MEMORY[0x1E6960D28], &v36))
  {
    if (v36)
    {
      IsRenewalRequest = FigCustomURLRequestInfoSetIsRenewalRequest();
      if (IsRenewalRequest)
      {
        goto LABEL_47;
      }
    }
  }

  v26 = cf;
  if (cf)
  {
    v26 = CFRetain(cf);
    v27 = cf;
  }

  else
  {
    v27 = 0;
  }

  *(*(a1 + 40) + 32) = v26;
  v28 = *(a1 + 32);
  v29 = *(a1 + 40);
  v1 = *(v28 + 32);
  v30 = *(a1 + 80);
  v31 = *(v28 + 120);
  v32 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v32)
  {
    IsRenewalRequest = v32(v1, v27, v30, v31, urlProcessor_customURLLoaderDataCallback, v29 + 8);
LABEL_47:
    v4 = IsRenewalRequest;
    goto LABEL_4;
  }

  v4 = -12782;
LABEL_4:
  FigReadWriteLockUnlockForRead();
  if (v4)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    OUTLINED_FUNCTION_46();
    if (v1)
    {
      v7 = *(a1 + 80);
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v9 = (DerivedStorage + 128);
      v10 = *(*(a1 + 40) + 16);
      if (!DerivedStorage)
      {
        v9 = "";
      }

      v38 = 136316162;
      v39 = "urlProcessor_HandleRequest_block_invoke_2";
      v40 = 2048;
      v41 = v7;
      v42 = 2082;
      v43 = v9;
      v44 = 2048;
      v45 = v10;
      v46 = 1024;
      v47 = v4;
      OUTLINED_FUNCTION_39();
      v11 = OUTLINED_FUNCTION_30();
      _os_log_send_and_compose_impl(v11, v12, v13, v14, v15, os_log_and_send_and_compose_flags_and_os_log_type, 0, v16);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v21 = *(a1 + 48);
  if (v21)
  {
    CFRelease(v21);
  }

  v22 = *(a1 + 56);
  if (v22)
  {
    CFRelease(v22);
  }

  v23 = *(a1 + 80);
  if (v23)
  {
    CFRelease(v23);
  }

  v24 = *(a1 + 72);
  if (v24)
  {
    CFRelease(v24);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v25 = *(a1 + 64);
  if (v25)
  {
    CFRelease(v25);
  }
}

@end