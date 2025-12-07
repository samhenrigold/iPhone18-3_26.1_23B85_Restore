uint64_t fvdp_copySupportedDigitalOutModes(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_copySupportedDigitalOutModes_block_invoke;
  block[3] = &__block_descriptor_tmp_427;
  block[4] = a2;
  block[5] = DerivedStorage;
  block[6] = a3;
  dispatch_sync(v7, block);
  return 0;
}

uint64_t fvdp_setDigitalOutMode(uint64_t a1, int a2, int a3)
{
  v14 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v7 = *(DerivedStorage + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_setDigitalOutMode_block_invoke;
  block[3] = &__block_descriptor_tmp_428;
  block[4] = DerivedStorage;
  v10 = a2;
  v11 = a3;
  dispatch_async(v7, block);
  return 0;
}

uint64_t fvdp_enableMirroring(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (dword_1EAF17550)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(DerivedStorage + 208) = a2 == 0;
  return 0;
}

uint64_t fvdp_submitPixelBuffer(uint64_t a1, __CVBuffer *a2, uint64_t a3, int a4, const void *a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  v44 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v26 = *(DerivedStorage + 208);
  if (dword_1EAF17550 >= 2)
  {
    v43 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(DerivedStorage + 24) == 2)
  {
    if (a2)
    {
      v27 = *(DerivedStorage + 632);
      if (!v27)
      {
        *(DerivedStorage + 632) = 2;
        __dmb(0xBu);
        v27 = *(DerivedStorage + 632);
      }

      if (v27 == 1)
      {
        v28 = CVBufferCopyAttachment(a2, @"FVDWritebackBuffer", 0);
        v29 = FigCFEqual();
        if (v28)
        {
          CFRelease(v28);
        }

        if (!v29)
        {
          v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          return 4294955226;
        }
      }

      v30 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10E00401916B1CBuLL);
      CFRetain(a2);
    }

    else
    {
      v30 = malloc_type_calloc(1uLL, 0xB0uLL, 0x10E00401916B1CBuLL);
    }

    *v30 = a2;
    v30[1] = a6;
    v30[2] = a7;
    v30[3] = a8;
    v30[4] = a9;
    v30[5] = a10;
    v30[6] = a11;
    v30[7] = a12;
    v30[8] = a13;
    *(v30 + 34) = a4;
    *(v30 + 20) = FigHostTimeToNanoseconds();
    *(v30 + 9) = a3;
    if (a5)
    {
      v31 = CFRetain(a5);
    }

    else
    {
      v31 = 0;
    }

    *(v30 + 18) = v31;
    if (a2)
    {
      v32 = CVBufferCopyAttachment(a2, @"FVDFrameUserData", 0);
    }

    else
    {
      v32 = 0;
    }

    *(v30 + 19) = v32;
    if (*(DerivedStorage + 744) || *(DerivedStorage + 745))
    {
      *(v30 + 12) = mach_absolute_time();
    }

    if (*(DerivedStorage + 746) && *MEMORY[0x1E695FF58] == 1)
    {
      kdebug_trace();
    }

    if (*(DerivedStorage + 736) || *(DerivedStorage + 737))
    {
      atomic_fetch_add_explicit((DerivedStorage + 688), 1u, memory_order_relaxed);
    }

    if (a2)
    {
      v33 = *(DerivedStorage + 728);
      *(DerivedStorage + 728) = v33 + 1;
      if (!v33)
      {
        v43 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v36 = *(DerivedStorage + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_submitPixelBuffer_block_invoke;
    block[3] = &__block_descriptor_tmp_430;
    v41 = v26;
    block[4] = DerivedStorage;
    block[5] = v30;
    dispatch_async(v36, block);
    return 0;
  }

  else
  {
    v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    return 4294955224;
  }
}

uint64_t fvdp_copyWritebackPixelBuffer(uint64_t a1, uint64_t a2, int a3, CVBufferRef *a4, double a5, double a6)
{
  v8 = a2;
  v55 = *MEMORY[0x1E69E9840];
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v12 = *(DerivedStorage + 208);
  v13 = *(DerivedStorage + 16);
  if (dword_1EAF17550 >= 2)
  {
    v37 = v6;
    v14 = *(DerivedStorage + 16);
    v47 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v13 = v14;
  }

  if (*(DerivedStorage + 24) == 2)
  {
    if (a5 == *MEMORY[0x1E695F060] && a6 == *(MEMORY[0x1E695F060] + 8))
    {
      v47 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v32 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v20 = 4294955226;
    }

    else
    {
      v17 = *(DerivedStorage + 632);
      if (!v17)
      {
        *(DerivedStorage + 632) = 1;
        __dmb(0xBu);
        v17 = *(DerivedStorage + 632);
      }

      if (v17 == 1)
      {
        v18 = *(DerivedStorage + 732);
        *(DerivedStorage + 732) = v18 + 1;
        if (!v18)
        {
          v47 = 0;
          type = OS_LOG_TYPE_DEFAULT;
          v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (writebackCacheCopyBuffer(*(DerivedStorage + 640), v8, v12, a4, a5, a6))
        {
          return 0;
        }

        if (a3)
        {
          if (atomic_fetch_add_explicit((DerivedStorage + 648), 1u, memory_order_relaxed) > 29)
          {
            v39 = v12;
            v23 = a4;
            atomic_fetch_add_explicit((DerivedStorage + 648), 0xFFFFFFFF, memory_order_relaxed);
            v47 = 0;
            type = OS_LOG_TYPE_DEFAULT;
            v24 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
            a4 = v23;
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            v12 = v39;
          }

          else
          {
            v21 = *(DerivedStorage + 8);
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 0x40000000;
            block[2] = __fvdp_copyWritebackPixelBuffer_block_invoke;
            block[3] = &__block_descriptor_tmp_460;
            block[4] = DerivedStorage;
            *&block[5] = a5;
            *&block[6] = a6;
            v44 = v8;
            v45 = v12;
            dispatch_async(v21, block);
          }
        }

        else
        {
          v22 = *(DerivedStorage + 8);
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 0x40000000;
          v40[2] = __fvdp_copyWritebackPixelBuffer_block_invoke_461;
          v40[3] = &__block_descriptor_tmp_462;
          v40[4] = DerivedStorage;
          *&v40[5] = a5;
          *&v40[6] = a6;
          v41 = v8;
          v42 = v12;
          dispatch_sync(v22, v40);
        }

        if (writebackCacheCopyBuffer(*(DerivedStorage + 640), v8, v12, a4, a5, a6))
        {
          v20 = 0;
        }

        else
        {
          v20 = 4294955223;
        }
      }

      else
      {
        v47 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v33 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v35, v36, v37);
        v20 = v34;
      }
    }
  }

  else
  {
    v47 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v31 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v20 = 4294955224;
  }

  if (v20 && dword_1EAF17550 >= 2)
  {
    v47 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v25 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v26 = v47;
    v27 = type;
    if (os_log_type_enabled(v25, type))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 0xFFFFFFFE;
    }

    if (v28)
    {
      v29 = &stru_1F0B1AFB8;
      if (v13)
      {
        v29 = v13;
      }

      v48 = 138412802;
      v49 = v29;
      v50 = 2080;
      v51 = "fvdp_copyWritebackPixelBuffer";
      v52 = 1024;
      LODWORD(v53) = v20;
      LODWORD(v36) = 28;
      _os_log_send_and_compose_impl(v28, 0, v54, 128, &dword_1962D5000, v25, v27, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: error: %d", &v48, v36);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v20;
}

CFTypeRef *__fvdp_plugSink_block_invoke(CFTypeRef *result)
{
  v1 = result;
  v2 = result[5];
  if (v2[6] || *(v2 + 8))
  {
    *(*(result[4] + 1) + 24) = -12070;
  }

  else
  {
    result = CFRetain(result[6]);
    *(v1[5] + 8) = v1[6];
  }

  return result;
}

void __fvdp_unplugSink_block_invoke(void *a1)
{
  v2 = a1[5];
  if (!*(v2 + 24) && (v3 = *(v2 + 64), v3 == a1[6]))
  {
    if (v3)
    {
      CFRelease(v3);
      *(a1[5] + 64) = 0;
    }
  }

  else
  {
    *(*(a1[4] + 8) + 24) = -12070;
  }
}

void __fvdp_start_block_invoke(void *a1)
{
  v289[16] = *MEMORY[0x1E69E9840];
  cf = 0;
  v276 = 0;
  v2 = a1[5];
  if (*(v2 + 24) || !*(v2 + 64))
  {
    *v284 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
LABEL_414:
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v247 = *(a1[4] + 8);
    v248 = -12070;
LABEL_415:
    *(v247 + 24) = v248;
    goto LABEL_416;
  }

  allocator = *MEMORY[0x1E695E480];
  FigVirtualDisplaySinkGetCMBaseObject();
  v5 = v4;
  v6 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v6)
  {
    v6(v5, @"Type", allocator, v2 + 72);
  }

  if (dword_1EAF17550)
  {
    *v284 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = a1[5];
  *(v8 + 32) = 65000000000;
  *(v8 + 48) = 0;
  *(v8 + 316) = 875704422;
  *(v8 + 632) = 0x3432306600000000;
  *(v8 + 648) = 0;
  *(v8 + 392) = 0;
  v9 = *(v8 + 640);
  v10 = *(v9 + 24);
  if (v10)
  {
    CFRelease(v10);
  }

  *(v9 + 24) = 0;
  *(v8 + 360) = 0;
  *(v8 + 312) = 1718908515;
  *(v8 + 504) = 20;
  *(v8 + 488) = 100000000;
  *(v8 + 508) = 0;
  *(v8 + 353) = 1;
  if (*(v8 + 496))
  {
    v252 = *(v8 + 16);
    *v284 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v253 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v254 = *v284;
    if (os_log_type_enabled(v253, OS_LOG_TYPE_DEFAULT))
    {
      v255 = v254;
    }

    else
    {
      v255 = v254 & 0xFFFFFFFE;
    }

    if (v255)
    {
      v271 = &stru_1F0B1AFB8;
      if (v252)
      {
        v271 = v252;
      }

      *buffer = 138412802;
      *&buffer[4] = v271;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_encoderControlInitCompressionProperties";
      *&buffer[22] = 1024;
      *v283 = 1966;
      _os_log_send_and_compose_impl(v255, 0, v289, 128, &dword_1962D5000, v253, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: %d: check failed", buffer, 28);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  *(v8 + 496) = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v11 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(*(v8 + 496), *MEMORY[0x1E6983530], *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(*(v8 + 496), *MEMORY[0x1E6983518], *MEMORY[0x1E695E4C0]);
  CFDictionarySetValue(*(v8 + 496), *MEMORY[0x1E69837F0], v11);
  fvdp_encoderControlSetBitrate(v8, 0x7A1200u);
  fvdp_encoderControlSetFramerate(v8, 60);
  *(v8 + 440) = 0;
  *(v8 + 464) = 30;
  *(v8 + 168) = 0x3FAEB851EB851EB8;
  *(v8 + 208) = 0;
  *(v8 + 210) = 0;
  *(v8 + 352) = 0;
  *(v8 + 652) = 0;
  *(v8 + 472) = 0;
  if (colorTagForIndex_once != -1)
  {
    __fvdp_start_block_invoke_cold_1();
  }

  *(v8 + 376) = &qword_1EAF19C20;
  v273 = *MEMORY[0x1E6965D30];
  *(v8 + 368) = CFRetain(*MEMORY[0x1E6965D30]);
  *(v8 + 356) = 2;
  *(v8 + 400) = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt();
  FigCFDictionarySetValue();
  *(v8 + 736) = dword_1EAF17550 != 0;
  *(v8 + 744) = 0;
  *(v8 + 746) = FigDebugIsInternalBuild();
  *(v8 + 384) = 0;
  *(v8 + 386) = 1;
  if (CFEqual(*(v8 + 72), @"Octavia"))
  {
    *(v8 + 504) = 37;
    fvdp_encoderControlSetBitrate(v8, 0x1312D00u);
  }

  else if (CFEqual(*(v8 + 72), @"FileWriter"))
  {
    *(v8 + 464) = 0;
  }

  v12 = a1[5];
  v13 = a1[7];
  *v284 = 0;
  *v278 = 0;
  if (v13)
  {
    Value = CFDictionaryGetValue(v13, @"usage");
    v15 = @"AirPlay";
    if (Value)
    {
      v16 = Value;
      v17 = CFGetTypeID(Value);
      if (v17 == CFStringGetTypeID())
      {
        v15 = v16;
      }
    }

    if (CFEqual(v15, @"AirPlay"))
    {
      goto LABEL_61;
    }

    if (CFEqual(v15, @"CarPlay"))
    {
      CFDictionarySetValue(*(v12 + 496), *MEMORY[0x1E6983628], v11);
      *(v12 + 504) = 38;
      if (colorTagForIndex_once != -1)
      {
        __fvdp_start_block_invoke_cold_1();
      }

      *(v12 + 376) = &qword_1EAF19B60;
      goto LABEL_62;
    }

    if (CFEqual(v15, @"CarPlayHEVC"))
    {
      CFDictionarySetValue(*(v12 + 496), *MEMORY[0x1E6983628], v11);
      *(v12 + 312) = 1718908520;
      *(v12 + 504) = 38;
      if (colorTagForIndex_once != -1)
      {
        __fvdp_start_block_invoke_cold_1();
      }

      *(v12 + 376) = &qword_1EAF19B80;
      *(v12 + 356) = 3;
      if (FVDUtilsAGXPixelFormatsSupported(v23, v24))
      {
        *(v12 + 316) = 641230384;
        *(v12 + 636) = 641230384;
      }

      goto LABEL_62;
    }

    if (!CFEqual(v15, @"Stevenote"))
    {
      v18 = CFEqual(v15, @"AirPlayHEVC");
      if (!v18)
      {
        v20 = CFEqual(v15, @"AirPlayHDR");
        if (v20)
        {
          if (!FVDUtilsHEVCEncoderSupports42010(v20, v21))
          {
            goto LABEL_58;
          }

          *(v12 + 312) = 0x7834323066747668;
          *(v12 + 636) = 2016686640;
          *(v12 + 356) = 3;
          if (colorTagForIndex_once != -1)
          {
            __fvdp_start_block_invoke_cold_1();
          }

          *(v12 + 376) = &qword_1EAF19BC0;
          *(v12 + 384) = 1;
          v249 = *MEMORY[0x1E6983670];
          CFDictionarySetValue(*(v12 + 496), *MEMORY[0x1E6983670], *MEMORY[0x1E6983CB0]);
          CFDictionarySetValue(*(v12 + 496), *MEMORY[0x1E69837B8], v11);
          fvdp_encoderControlSetBitrate(v12, 0xE4E1C0u);
          v250 = CFDictionaryGetValue(v13, @"HDRInfo");
          if (!v250)
          {
            goto LABEL_58;
          }

          CFDictionaryGetValue(v250, @"HDRMode");
          if (!FigCFEqual())
          {
            if (!FigCFEqual())
            {
              if (FigCFEqual())
              {
                CFDictionarySetValue(*(v12 + 496), v249, *MEMORY[0x1E6983CC0]);
              }

              goto LABEL_61;
            }

            *(v12 + 385) = 1;
            if (colorTagForIndex_once == -1)
            {
              goto LABEL_429;
            }

            goto LABEL_440;
          }

          *(v12 + 385) = 1;
          if (colorTagForIndex_once == -1)
          {
LABEL_393:
            v251 = &qword_1EAF19BE0;
LABEL_430:
            *(v12 + 376) = v251;
            goto LABEL_61;
          }
        }

        else
        {
          if (!CFEqual(v15, @"UncompressedHDR"))
          {
            if (CFEqual(v15, @"Valeria"))
            {
              *(v12 + 504) = 0;
              *(v12 + 464) = 0x7FFFFFFF;
              goto LABEL_62;
            }

            if (!CFEqual(v15, @"Uncompressed"))
            {
              *type = 0;
              v280 = OS_LOG_TYPE_DEFAULT;
              v22 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
LABEL_63:
              fig_log_call_emit_and_clean_up_after_send_and_compose();
              if (FigCFDictionaryGetInt32IfPresent())
              {
                fvdp_encoderControlSetBitrate(v12, *v278);
                *type = 0;
                v280 = OS_LOG_TYPE_DEFAULT;
                v36 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (FigCFDictionaryGetInt32IfPresent())
              {
                fvdp_encoderControlSetFramerate(v12, *v278);
                *type = 0;
                v280 = OS_LOG_TYPE_DEFAULT;
                v37 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (FigCFDictionaryGetInt32IfPresent())
              {
                v38 = *v278;
                *(v12 + 316) = *v278;
                *(v12 + 636) = v38;
                *type = 0;
                v280 = OS_LOG_TYPE_DEFAULT;
                v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (FigCFDictionaryGetDoubleIfPresent() && *v284 > 0.0)
              {
                FigCFDictionarySetDouble();
                *type = 0;
                v280 = OS_LOG_TYPE_DEFAULT;
                v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              if (*(v12 + 360) >= 1)
              {
                FigCFDictionaryGetInt32IfPresent();
                writebackCacheSetPoolCapacity(*(v12 + 640), *(v12 + 360));
              }

              if (CFDictionaryContainsKey(v13, @"colorSpace"))
              {
                *(v12 + 376) = 0;
              }

              if (CFDictionaryContainsKey(v13, @"chromaLocation"))
              {
                v41 = *(v12 + 368);
                v42 = CFDictionaryGetValue(v13, @"chromaLocation");
                *(v12 + 368) = v42;
                if (v42)
                {
                  CFRetain(v42);
                }

                if (v41)
                {
                  CFRelease(v41);
                }

                *type = 0;
                v280 = OS_LOG_TYPE_DEFAULT;
                v43 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              FigCFDictionaryGetInt32IfPresent();
              FigCFDictionaryGetInt32IfPresent();
              FigCFDictionaryGetInt32IfPresent();
              FigCFDictionaryGetInt32IfPresent();
              FigCFDictionaryGetInt32IfPresent();
              FigCFDictionaryGetBooleanIfPresent();
              FigCFDictionaryGetBooleanIfPresent();
              FigCFDictionaryGetBooleanIfPresent();
              CFDictionaryGetValue(v13, @"MirroringMode");
              FigCFDictionarySetValue();
              CFDictionaryGetValue(v13, @"DisplayID");
              FigCFDictionarySetValue();
              CFDictionaryGetValue(v13, @"ContentIDs");
              FigCFDictionarySetValue();
              CFDictionaryGetValue(v13, @"DisplayLabel");
              FigCFDictionarySetValue();
              CFDictionaryGetValue(v13, @"clientPID");
              FigCFDictionarySetValue();
              CFDictionaryGetValue(v13, @"IncludePrivateContent");
              FigCFDictionarySetValue();
              CFDictionaryGetValue(v13, @"AllowRemoteControlLayers");
              FigCFDictionarySetValue();
              CFDictionaryGetValue(v13, @"NotifyOnDisallowedCloningLayers");
              FigCFDictionarySetValue();
              CFDictionaryGetValue(v13, @"HDRToneMappingMode");
              FigCFDictionarySetValue();
              if (FigCFDictionaryGetInt32IfPresent())
              {
                LODWORD(v289[0]) = 0;
                FigCFDictionaryGetInt32IfPresent();
                if (*v278 >= 1 && SLODWORD(v289[0]) >= 1)
                {
                  FigCFDictionarySetBoolean();
                  FigCFDictionarySetInt();
                  FigCFDictionarySetInt();
                }
              }

              if (*(v12 + 392))
              {
                CFDictionarySetValue(*(v12 + 400), @"IsAOCPProtected", v11);
              }

              v44 = CFDictionaryGetValue(v13, @"encodeSettings");
              if (v44)
              {
                v45 = CFDictionaryGetValue(v44, @"encoderUsage");
                v46 = *(v12 + 504);
                if (prefsGetH264EncoderUsageIfValid(v45, (v12 + 504)))
                {
                  if (v46 != *(v12 + 504))
                  {
                    *type = 0;
                    v280 = OS_LOG_TYPE_DEFAULT;
                    v47 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                    os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT);
                    fig_log_call_emit_and_clean_up_after_send_and_compose();
                  }
                }
              }

              if (*(v12 + 312) != 1852796517 && FigCFDictionaryGetInt32IfPresent())
              {
                if (FVDUtilsEncoderCodecSupported(*v278))
                {
                  *(v12 + 312) = *v278;
                }

                *type = 0;
                v280 = OS_LOG_TYPE_DEFAULT;
                v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
                os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
                fig_log_call_emit_and_clean_up_after_send_and_compose();
              }

              goto LABEL_97;
            }

            *(v12 + 312) = 1852796517;
            *(v12 + 464) = 0;
            *(v12 + 360) = 8;
LABEL_61:
            fvdp_applyProtectionOptions(v12, v13);
LABEL_62:
            *type = 0;
            v280 = OS_LOG_TYPE_DEFAULT;
            v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
            goto LABEL_63;
          }

          v33 = CFDictionaryGetValue(v13, @"HDRInfo");
          *(v12 + 464) = 0;
          *(v12 + 360) = 8;
          *(v12 + 312) = 0x783432306E6F6E65;
          *(v12 + 636) = 2016686640;
          if (colorTagForIndex_once != -1)
          {
            __fvdp_start_block_invoke_cold_1();
          }

          *(v12 + 376) = &qword_1EAF19BC0;
          *(v12 + 384) = 1;
          if (!v33)
          {
LABEL_58:
            v34 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
            goto LABEL_61;
          }

          CFDictionaryGetValue(v33, @"HDRMode");
          if (!FigCFEqual())
          {
            if (!FigCFEqual())
            {
              goto LABEL_61;
            }

            *(v12 + 385) = 1;
            if (colorTagForIndex_once == -1)
            {
              goto LABEL_429;
            }

LABEL_440:
            __fvdp_start_block_invoke_cold_1();
LABEL_429:
            v251 = &qword_1EAF19C00;
            goto LABEL_430;
          }

          *(v12 + 385) = 1;
          if (colorTagForIndex_once == -1)
          {
            goto LABEL_393;
          }
        }

        __fvdp_start_block_invoke_cold_1();
        goto LABEL_393;
      }

      if (FVDUtilsHEVCEncoderSupports4K60(v18, v19))
      {
        if (FVDUtilsLoadVCPEncoder())
        {
          v30 = 1718908520;
        }

        else
        {
          v30 = 1752589105;
        }

        *(v12 + 312) = v30;
        *(v12 + 356) = 3;
      }

      else
      {
        v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        *(v12 + 312) = 1718908515;
      }

      v31 = v12;
      v32 = 10000000;
LABEL_60:
      fvdp_encoderControlSetBitrate(v31, v32);
      goto LABEL_61;
    }

    LOBYTE(v289[0]) = 0;
    buffer[0] = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    FigCFDictionaryGetBooleanIfPresent();
    FigCFDictionaryGetBooleanIfPresent();
    BooleanIfPresent = FigCFDictionaryGetBooleanIfPresent();
    if (buffer[0] && (BooleanIfPresent = FVDUtilsHEVCEncoderSupports4K60(BooleanIfPresent, v26), BooleanIfPresent))
    {
      *(v12 + 312) = 0x3434346668766331;
      v27 = 875836518;
    }

    else
    {
      if (!LOBYTE(v289[0]) || !FVDUtilsH264EncoderSupports444(BooleanIfPresent, v26))
      {
        *(v12 + 312) = 0x34343466736A7067;
        *(v12 + 636) = 1111970369;
        *(v12 + 464) = 1;
        v27 = 3;
        v28 = 356;
LABEL_54:
        *(v12 + v28) = v27;
        v31 = v12;
        v32 = 40000000;
        goto LABEL_60;
      }

      v27 = 875836518;
      *(v12 + 316) = 875836518;
    }

    v28 = 636;
    goto LABEL_54;
  }

LABEL_97:
  v49 = a1[5];
  v279 = 0;
  v50 = *(v49 + 16);
  v51 = FigVirtualDisplayPrefsCopyValue(@"wirelessdisplay_encoderusage");
  if (v51)
  {
    v52 = v51;
    v53 = (v49 + 504);
    v54 = *(v49 + 504);
    if (prefsGetH264EncoderUsageIfValid(v51, (v49 + 504)) && v54 != *v53)
    {
      *v284 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v55 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v56 = *v284;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v57 = v56;
      }

      else
      {
        v57 = v56 & 0xFFFFFFFE;
      }

      if (v57)
      {
        v58 = &stru_1F0B1AFB8;
        v59 = *v53;
        if (v50)
        {
          v58 = v50;
        }

        *buffer = 138413058;
        *&buffer[4] = v58;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 1024;
        *v283 = v54;
        *&v283[4] = 1024;
        *&v283[6] = v59;
        LODWORD(v272) = 34;
        _os_log_send_and_compose_impl(v57, 0, v289, 128, &dword_1962D5000, v55, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting H.264 encoder usage: old value: %d, new value: %d", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    CFRelease(v52);
  }

  v279 = 0;
  v60 = FigVirtualDisplayPrefsCopyValue(@"wirelessdisplay_encoderpriority");
  if (v60)
  {
    v61 = v60;
    *v278 = 40;
    FigCFDictionaryGetInt32IfPresent();
    v62 = CFGetTypeID(v61);
    if (v62 == CFStringGetTypeID())
    {
      if (CFStringGetCString(v61, buffer, 32, 0x8000100u))
      {
        v63 = 0;
        while (strcasecmp(buffer, prefsGetEncoderPriorityIfValid_names[v63]))
        {
          if (++v63 == 5)
          {
            *type = 0;
            v280 = OS_LOG_TYPE_DEFAULT;
            v64 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT);
            goto LABEL_124;
          }
        }

        v65 = prefsGetEncoderPriorityIfValid_values[v63];
        if (*v278 == v65)
        {
          goto LABEL_125;
        }

        FigCFDictionarySetInt32();
        *v284 = 0;
        type[0] = OS_LOG_TYPE_DEFAULT;
        v66 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v67 = *v284;
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v68 = v67;
        }

        else
        {
          v68 = v67 & 0xFFFFFFFE;
        }

        if (v68)
        {
          v69 = &stru_1F0B1AFB8;
          if (v50)
          {
            v69 = v50;
          }

          *buffer = 138413058;
          *&buffer[4] = v69;
          *&buffer[12] = 2080;
          *&buffer[14] = "fvdp_initFromPrefs";
          *&buffer[22] = 1024;
          *v283 = *v278;
          *&v283[4] = 1024;
          *&v283[6] = v65;
          LODWORD(v272) = 34;
          _os_log_send_and_compose_impl(v68, 0, v289, 128, &dword_1962D5000, v66, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting encoder priority: old value: %d, new value: %d", buffer, v272);
        }

LABEL_124:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        __fvdp_start_block_invoke_cold_10();
      }
    }

LABEL_125:
    CFRelease(v61);
  }

  v279 = 0;
  Double = FigVirtualDisplayPrefsGetDouble(@"wirelessdisplay_keyframe_interval", &v279);
  if (v279)
  {
    v71 = Double;
    if (Double > 0.0)
    {
      FigCFDictionarySetDouble();
      *v284 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v72 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v73 = *v284;
      v74 = type[0];
      if (os_log_type_enabled(v72, type[0]))
      {
        v75 = v73;
      }

      else
      {
        v75 = v73 & 0xFFFFFFFE;
      }

      if (v75)
      {
        v76 = &stru_1F0B1AFB8;
        if (v50)
        {
          v76 = v50;
        }

        *buffer = 138412802;
        *&buffer[4] = v76;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2048;
        *v283 = v71;
        LODWORD(v272) = 32;
        _os_log_send_and_compose_impl(v75, 0, v289, 128, &dword_1962D5000, v72, v74, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting max keyframe interval duration to %f secs", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v279 = 0;
  Integer = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_bitrate", &v279);
  if (v279)
  {
    v78 = Integer;
    fvdp_encoderControlSetBitrate(v49, Integer);
    *(v49 + 593) = 1;
    *v284 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v79 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v80 = *v284;
    v81 = type[0];
    if (os_log_type_enabled(v79, type[0]))
    {
      v82 = v80;
    }

    else
    {
      v82 = v80 & 0xFFFFFFFE;
    }

    if (v82)
    {
      v83 = &stru_1F0B1AFB8;
      if (v50)
      {
        v83 = v50;
      }

      *buffer = 138412802;
      *&buffer[4] = v83;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_initFromPrefs";
      *&buffer[22] = 1024;
      *v283 = v78;
      LODWORD(v272) = 28;
      _os_log_send_and_compose_impl(v82, 0, v289, 128, &dword_1962D5000, v79, v81, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting fixed bitrate %d bps, will ignore bitrates suggested by sink", buffer, v272);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v279 = 0;
  v84 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_fps", &v279);
  if (v279)
  {
    v85 = v84;
    fvdp_encoderControlSetFramerate(v49, v84);
    *(v49 + 594) = 1;
    *v284 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v86 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v87 = *v284;
    v88 = type[0];
    if (os_log_type_enabled(v86, type[0]))
    {
      v89 = v87;
    }

    else
    {
      v89 = v87 & 0xFFFFFFFE;
    }

    if (v89)
    {
      v90 = &stru_1F0B1AFB8;
      if (v50)
      {
        v90 = v50;
      }

      *buffer = 138412802;
      *&buffer[4] = v90;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_initFromPrefs";
      *&buffer[22] = 1024;
      *v283 = v85;
      LODWORD(v272) = 28;
      _os_log_send_and_compose_impl(v89, 0, v289, 128, &dword_1962D5000, v86, v88, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting fixed framerate %d fps, will ignore framerates suggested by sink", buffer, v272);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v279 = 0;
  v91 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_inactivity_timeout", &v279);
  if (v279)
  {
    v93 = v91;
    if (v91 >= 1)
    {
      *(v49 + 32) = 1000000000 * v91;
      *v284 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v94 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v95 = *v284;
      v96 = type[0];
      if (os_log_type_enabled(v94, type[0]))
      {
        v97 = v95;
      }

      else
      {
        v97 = v95 & 0xFFFFFFFE;
      }

      if (v97)
      {
        v98 = &stru_1F0B1AFB8;
        if (v50)
        {
          v98 = v50;
        }

        *buffer = 138412802;
        *&buffer[4] = v98;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 1024;
        *v283 = v93;
        LODWORD(v272) = 28;
        _os_log_send_and_compose_impl(v97, 0, v289, 128, &dword_1962D5000, v94, v96, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting inactivity timeout to %d seconds", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*(v49 + 312) != 1852796517)
  {
    v99 = (v49 + 312);
    prefsGetOSTypeIfPresent(@"wirelessdisplay_encoder_codec_type", (v49 + 312), v92);
    if (*(v49 + 392))
    {
      v100 = *v99;
      if (*v99 == 1718908528 || v100 == 1869117027)
      {
LABEL_177:
        v107 = v100 - 1718908515;
        if (v107 <= 0xD && ((1 << v107) & 0x2021) != 0)
        {
          FVDUtilsLoadVCPEncoder();
        }

        goto LABEL_180;
      }

      *(v49 + 392) = 0;
      CFDictionaryRemoveValue(*(v49 + 496), *MEMORY[0x1E6983610]);
      CFDictionaryRemoveValue(*(v49 + 496), *MEMORY[0x1E6983618]);
      *v284 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v101 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v102 = *v284;
      v103 = type[0];
      if (os_log_type_enabled(v101, type[0]))
      {
        v104 = v102;
      }

      else
      {
        v104 = v102 & 0xFFFFFFFE;
      }

      if (v104)
      {
        v105 = *v99;
        v106 = &stru_1F0B1AFB8;
        if (v50)
        {
          v106 = v50;
        }

        *buffer = 138413570;
        *&buffer[4] = v106;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 1024;
        *v283 = HIBYTE(v105);
        *&v283[4] = 1024;
        *&v283[6] = BYTE2(v105);
        *&v283[10] = 1024;
        *&v283[12] = BYTE1(v105);
        *&v283[16] = 1024;
        *&v283[18] = v105;
        LODWORD(v272) = 46;
        _os_log_send_and_compose_impl(v104, 0, v289, 128, &dword_1962D5000, v101, v103, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: unsetting protection options for codec '%c%c%c%c'", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v100 = *v99;
    goto LABEL_177;
  }

LABEL_180:
  prefsGetOSTypeIfPresent(@"wirelessdisplay_encoder_input_pixel_format", (v49 + 316), v92);
  prefsGetOSTypeIfPresent(@"wirelessdisplay_writeback_pixel_format", (v49 + 636), v108);
  v109 = *(v49 + 356);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v110 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_encodermaxframes", type);
  if (type[0])
  {
    v111 = v110;
    *(v49 + 356) = v110;
    if (v110 != v109)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v112 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v113 = *v284;
      if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
      {
        v114 = v113;
      }

      else
      {
        v114 = v113 & 0xFFFFFFFE;
      }

      if (v114)
      {
        v115 = &stru_1F0B1AFB8;
        if (v50)
        {
          v115 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v115;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_encodermaxframes";
        *&v283[8] = 2048;
        *&v283[10] = v109;
        *&v283[18] = 2048;
        *&v283[20] = v111;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v114, 0, v289, 128, &dword_1962D5000, v112, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v116 = *(v49 + 464);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v117 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_maxtimesreencodeidle", type);
  if (type[0])
  {
    v118 = v117;
    *(v49 + 464) = v117;
    if (v117 != v116)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v119 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v120 = *v284;
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v121 = v120;
      }

      else
      {
        v121 = v120 & 0xFFFFFFFE;
      }

      if (v121)
      {
        v122 = &stru_1F0B1AFB8;
        if (v50)
        {
          v122 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v122;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_maxtimesreencodeidle";
        *&v283[8] = 2048;
        *&v283[10] = v116;
        *&v283[18] = 2048;
        *&v283[20] = v118;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v121, 0, v289, 128, &dword_1962D5000, v119, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v123 = *(v49 + 508);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v124 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_minrepeatedframes", type);
  if (type[0])
  {
    v125 = v124;
    *(v49 + 508) = v124;
    if (v124 != v123)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v126 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v127 = *v284;
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        v128 = v127;
      }

      else
      {
        v128 = v127 & 0xFFFFFFFE;
      }

      if (v128)
      {
        v129 = &stru_1F0B1AFB8;
        if (v50)
        {
          v129 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v129;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_minrepeatedframes";
        *&v283[8] = 2048;
        *&v283[10] = v123;
        *&v283[18] = 2048;
        *&v283[20] = v125;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v128, 0, v289, 128, &dword_1962D5000, v126, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v130 = *(v49 + 652);
  type[0] = OS_LOG_TYPE_DEFAULT;
  Boolean = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_forcebuffercopy", type);
  if (type[0])
  {
    v132 = Boolean;
    *(v49 + 652) = Boolean;
    if (Boolean != v130)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v133 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v134 = *v284;
      if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
      {
        v135 = v134;
      }

      else
      {
        v135 = v134 & 0xFFFFFFFE;
      }

      if (v135)
      {
        v136 = &stru_1F0B1AFB8;
        if (v50)
        {
          v136 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v136;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_forcebuffercopy";
        *&v283[8] = 2048;
        *&v283[10] = v130;
        *&v283[18] = 2048;
        *&v283[20] = v132;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v135, 0, v289, 128, &dword_1962D5000, v133, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v137 = *(v49 + 353);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v138 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_hw_acc", type);
  if (type[0])
  {
    v139 = v138;
    *(v49 + 353) = v138;
    if (v138 != v137)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v140 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v141 = *v284;
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        v142 = v141;
      }

      else
      {
        v142 = v141 & 0xFFFFFFFE;
      }

      if (v142)
      {
        v143 = &stru_1F0B1AFB8;
        if (v50)
        {
          v143 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v143;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_enable_hw_acc";
        *&v283[8] = 2048;
        *&v283[10] = v137;
        *&v283[18] = 2048;
        *&v283[20] = v139;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v142, 0, v289, 128, &dword_1962D5000, v140, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v144 = *(v49 + 210);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v145 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_fill_display", type);
  if (type[0])
  {
    v146 = v145;
    *(v49 + 210) = v145;
    if (v145 != v144)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v147 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v148 = *v284;
      if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
      {
        v149 = v148;
      }

      else
      {
        v149 = v148 & 0xFFFFFFFE;
      }

      if (v149)
      {
        v150 = &stru_1F0B1AFB8;
        if (v50)
        {
          v150 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v150;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_fill_display";
        *&v283[8] = 2048;
        *&v283[10] = v144;
        *&v283[18] = 2048;
        *&v283[20] = v146;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v149, 0, v289, 128, &dword_1962D5000, v147, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v151 = *(v49 + 744);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v152 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_timestamps_logging", type);
  if (type[0])
  {
    v153 = v152;
    *(v49 + 744) = v152;
    if (v152 != v151)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v154 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v155 = *v284;
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEFAULT))
      {
        v156 = v155;
      }

      else
      {
        v156 = v155 & 0xFFFFFFFE;
      }

      if (v156)
      {
        v157 = &stru_1F0B1AFB8;
        if (v50)
        {
          v157 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v157;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_enable_timestamps_logging";
        *&v283[8] = 2048;
        *&v283[10] = v151;
        *&v283[18] = 2048;
        *&v283[20] = v153;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v156, 0, v289, 128, &dword_1962D5000, v154, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v158 = *(v49 + 745);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v159 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_timestamps_diagnostic", type);
  if (type[0])
  {
    v160 = v159;
    *(v49 + 745) = v159;
    if (v159 != v158)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v161 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v162 = *v284;
      if (os_log_type_enabled(v161, OS_LOG_TYPE_DEFAULT))
      {
        v163 = v162;
      }

      else
      {
        v163 = v162 & 0xFFFFFFFE;
      }

      if (v163)
      {
        v164 = &stru_1F0B1AFB8;
        if (v50)
        {
          v164 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v164;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_enable_timestamps_diagnostic";
        *&v283[8] = 2048;
        *&v283[10] = v158;
        *&v283[18] = 2048;
        *&v283[20] = v160;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v163, 0, v289, 128, &dword_1962D5000, v161, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v165 = *(v49 + 736);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v166 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_stats_logging", type);
  if (type[0])
  {
    v167 = v166;
    *(v49 + 736) = v166;
    if (v166 != v165)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v168 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v169 = *v284;
      if (os_log_type_enabled(v168, OS_LOG_TYPE_DEFAULT))
      {
        v170 = v169;
      }

      else
      {
        v170 = v169 & 0xFFFFFFFE;
      }

      if (v170)
      {
        v171 = &stru_1F0B1AFB8;
        if (v50)
        {
          v171 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v171;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_enable_stats_logging";
        *&v283[8] = 2048;
        *&v283[10] = v165;
        *&v283[18] = 2048;
        *&v283[20] = v167;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v170, 0, v289, 128, &dword_1962D5000, v168, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*(v49 + 737))
  {
    v172 = 1;
  }

  else
  {
    v172 = *(v49 + 745) != 0;
  }

  *(v49 + 737) = v172;
  v173 = *(v49 + 746);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v174 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_enable_ktrace", type);
  if (type[0])
  {
    v175 = v174;
    *(v49 + 746) = v174;
    if (v174 != v173)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v176 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v177 = *v284;
      if (os_log_type_enabled(v176, OS_LOG_TYPE_DEFAULT))
      {
        v178 = v177;
      }

      else
      {
        v178 = v177 & 0xFFFFFFFE;
      }

      if (v178)
      {
        v179 = &stru_1F0B1AFB8;
        if (v50)
        {
          v179 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v179;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_enable_ktrace";
        *&v283[8] = 2048;
        *&v283[10] = v173;
        *&v283[18] = 2048;
        *&v283[20] = v175;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v178, 0, v289, 128, &dword_1962D5000, v176, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v180 = *(v49 + 360);
  if (v180 >= 1)
  {
    type[0] = OS_LOG_TYPE_DEFAULT;
    v181 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_imagepool_size", type);
    if (type[0])
    {
      v182 = v181;
      *(v49 + 360) = v181;
      if (v181 != v180)
      {
        *v284 = 0;
        v278[0] = OS_LOG_TYPE_DEFAULT;
        v183 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        v184 = *v284;
        if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
        {
          v185 = v184;
        }

        else
        {
          v185 = v184 & 0xFFFFFFFE;
        }

        if (v185)
        {
          v186 = &stru_1F0B1AFB8;
          if (v50)
          {
            v186 = v50;
          }

          *buffer = 138413314;
          *&buffer[4] = v186;
          *&buffer[12] = 2080;
          *&buffer[14] = "fvdp_initFromPrefs";
          *&buffer[22] = 2112;
          *v283 = @"wirelessdisplay_imagepool_size";
          *&v283[8] = 2048;
          *&v283[10] = v180;
          *&v283[18] = 2048;
          *&v283[20] = v182;
          LODWORD(v272) = 52;
          _os_log_send_and_compose_impl(v185, 0, v289, 128, &dword_1962D5000, v183, 0, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    v187 = *(v49 + 360);
    if (v187 != v180)
    {
      writebackCacheSetPoolCapacity(*(v49 + 640), v187);
    }
  }

  BooleanWithDefault = FigVirtualDisplayPrefsGetBooleanWithDefault(@"wirelessdisplay_enable_extended_color", *(v49 + 352));
  if (BooleanWithDefault)
  {
    v190 = FVDUtilsMainDisplaySupportsExtendedColor(BooleanWithDefault, v189) != 0;
  }

  else
  {
    v190 = 0;
  }

  *(v49 + 352) = v190;
  if (dword_1EAF17550)
  {
    *v284 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v191 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v192 = *v284;
    v193 = type[0];
    if (os_log_type_enabled(v191, type[0]))
    {
      v194 = v192;
    }

    else
    {
      v194 = v192 & 0xFFFFFFFE;
    }

    if (v194)
    {
      v195 = &stru_1F0B1AFB8;
      v196 = *(v49 + 352);
      if (v50)
      {
        v195 = v50;
      }

      *buffer = 138412802;
      *&buffer[4] = v195;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_initFromPrefs";
      if (v196)
      {
        v197 = "";
      }

      else
      {
        v197 = "not ";
      }

      *&buffer[22] = 2080;
      *v283 = v197;
      LODWORD(v272) = 32;
      _os_log_send_and_compose_impl(v194, 0, v289, 128, &dword_1962D5000, v191, v193, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: %susing extended color", COERCE_DOUBLE(138412802), buffer, v272);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v190 = *(v49 + 352);
  }

  if (v190)
  {
    if (colorTagForIndex_once != -1)
    {
      __fvdp_start_block_invoke_cold_1();
    }

    *(v49 + 376) = &qword_1EAF19BA0;
  }

  v279 = 0;
  v198 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_colortag_index", &v279);
  if (v279)
  {
    v199 = v198;
    if (v198 > 7)
    {
      v200 = 0;
    }

    else
    {
      if (colorTagForIndex_once != -1)
      {
        __fvdp_start_block_invoke_cold_1();
      }

      v200 = &colorTagForIndex_colorTags[4 * v199];
    }

    *(v49 + 376) = v200;
    if (dword_1EAF17550)
    {
      *v284 = 0;
      type[0] = OS_LOG_TYPE_DEFAULT;
      v201 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v202 = *v284;
      v203 = type[0];
      if (os_log_type_enabled(v201, type[0]))
      {
        v204 = v202;
      }

      else
      {
        v204 = v202 & 0xFFFFFFFE;
      }

      if (v204)
      {
        v205 = &stru_1F0B1AFB8;
        if (v50)
        {
          v205 = v50;
        }

        v206 = *(v49 + 376);
        if (v206)
        {
          v207 = *v206;
        }

        else
        {
          v207 = "none";
        }

        *buffer = 138412802;
        *&buffer[4] = v205;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2080;
        *v283 = v207;
        LODWORD(v272) = 32;
        _os_log_send_and_compose_impl(v204, 0, v289, 128, &dword_1962D5000, v201, v203, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting color tag to '%s'", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v278[0] = OS_LOG_TYPE_DEFAULT;
  v208 = FigVirtualDisplayPrefsGetInteger(@"wirelessdisplay_chromalocation_index", v278);
  if (v278[0])
  {
    v209 = *MEMORY[0x1E6965D20];
    *buffer = v273;
    *&buffer[8] = v209;
    v210 = *MEMORY[0x1E6965D38];
    *&buffer[16] = *MEMORY[0x1E6965D40];
    *v283 = v210;
    v211 = *MEMORY[0x1E6965D08];
    *&v283[8] = *MEMORY[0x1E6965D10];
    *&v283[16] = v211;
    if (v208 >= 6)
    {
      v213 = *(v49 + 368);
      *(v49 + 368) = 0;
    }

    else
    {
      v212 = *&buffer[8 * v208];
      v213 = *(v49 + 368);
      *(v49 + 368) = v212;
      if (v212)
      {
        CFRetain(v212);
        if (!v213)
        {
          goto LABEL_341;
        }

        goto LABEL_340;
      }
    }

    v212 = @"none";
    if (!v213)
    {
LABEL_341:
      *type = 0;
      v280 = OS_LOG_TYPE_DEFAULT;
      v214 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v215 = *type;
      v216 = v280;
      if (os_log_type_enabled(v214, v280))
      {
        v217 = v215;
      }

      else
      {
        v217 = v215 & 0xFFFFFFFE;
      }

      if (v217)
      {
        *v284 = 138412802;
        *&v284[4] = &stru_1F0B1AFB8;
        v285 = 2080;
        v286 = "prefsInitPixelBufferChromaLocation";
        v287 = 2112;
        v288 = v212;
        LODWORD(v272) = 32;
        _os_log_send_and_compose_impl(v217, 0, v289, 128, &dword_1962D5000, v214, v216, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting chroma location to '%@'", v284, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
      goto LABEL_347;
    }

LABEL_340:
    CFRelease(v213);
    goto LABEL_341;
  }

LABEL_347:
  v218 = *(v49 + 386);
  type[0] = OS_LOG_TYPE_DEFAULT;
  v219 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_encode_in_process", type);
  if (type[0])
  {
    v221 = v219;
    *(v49 + 386) = v219;
    if (v219 != v218)
    {
      *v284 = 0;
      v278[0] = OS_LOG_TYPE_DEFAULT;
      v222 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v223 = *v284;
      v224 = v278[0];
      if (os_log_type_enabled(v222, v278[0]))
      {
        v225 = v223;
      }

      else
      {
        v225 = v223 & 0xFFFFFFFE;
      }

      if (v225)
      {
        v226 = &stru_1F0B1AFB8;
        if (v50)
        {
          v226 = v50;
        }

        *buffer = 138413314;
        *&buffer[4] = v226;
        *&buffer[12] = 2080;
        *&buffer[14] = "fvdp_initFromPrefs";
        *&buffer[22] = 2112;
        *v283 = @"wirelessdisplay_encode_in_process";
        *&v283[8] = 2048;
        *&v283[10] = v218;
        *&v283[18] = 2048;
        *&v283[20] = v221;
        LODWORD(v272) = 52;
        _os_log_send_and_compose_impl(v225, 0, v289, 128, &dword_1962D5000, v222, v224, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: setting '%@': old value: %g, new value: %g", buffer, v272);
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  fvdp_checkForTaps(v49, 1, v220);
  v227 = a1[5];
  v228 = *(v227 + 64);
  v289[0] = MEMORY[0x1E69E9820];
  v289[1] = 0x40000000;
  v289[2] = __fvdp_configureSink_block_invoke;
  v289[3] = &__block_descriptor_tmp_410;
  v289[4] = v227;
  v229 = *(*(CMBaseObjectGetVTable() + 16) + 72);
  if (v229)
  {
    v229(v228, v289);
  }

  if (*(v227 + 744) || *(v227 + 745))
  {
    FigVirtualDisplaySinkGetCMBaseObject();
    v231 = v230;
    v232 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v232)
    {
      v232(v231, @"anchorTimestampInfo", @"SubSu");
    }

    if (timestampsGetTimestampNameInfo_once != -1)
    {
      __fvdp_start_block_invoke_cold_13();
    }

    v233 = timestampsGetTimestampNameInfo_timestampInfoArray;
    FigVirtualDisplaySinkGetCMBaseObject();
    v235 = v234;
    v236 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v236)
    {
      v236(v235, @"timestampInfo", v233);
    }
  }

  FigVirtualDisplaySinkGetCMBaseObject();
  v238 = v237;
  v239 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v239)
  {
    v240 = v239(v238, @"displayInfo", allocator, &cf);
  }

  else
  {
    v240 = -12782;
  }

  *(*(a1[4] + 8) + 24) = v240;
  v241 = a1[4];
  v242 = *(*(v241 + 8) + 24);
  if (v242)
  {
    *v284 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v256 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v257 = *v284;
    v258 = type[0];
    if (os_log_type_enabled(v256, type[0]))
    {
      v259 = v257;
    }

    else
    {
      v259 = v257 & 0xFFFFFFFE;
    }

    if (v259)
    {
      v260 = a1[6];
      if (!v260)
      {
        v260 = &stru_1F0B1AFB8;
      }

      *buffer = 138413058;
      *&buffer[4] = v260;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_start_block_invoke";
      *&buffer[22] = 1024;
      *v283 = 4428;
      *&v283[4] = 1024;
      *&v283[6] = v242;
      LODWORD(v272) = 34;
      _os_log_send_and_compose_impl(v259, 0, v289, 128, &dword_1962D5000, v256, v258, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: %d: got error %d", COERCE_DOUBLE(138413058), buffer, v272);
    }

    goto LABEL_431;
  }

  if (!cf)
  {
    *v284 = 0;
    type[0] = OS_LOG_TYPE_DEFAULT;
    v261 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v262 = *v284;
    v263 = type[0];
    if (os_log_type_enabled(v261, type[0]))
    {
      v264 = v262;
    }

    else
    {
      v264 = v262 & 0xFFFFFFFE;
    }

    if (v264)
    {
      v265 = a1[6];
      if (!v265)
      {
        v265 = &stru_1F0B1AFB8;
      }

      *buffer = 138412802;
      *&buffer[4] = v265;
      *&buffer[12] = 2080;
      *&buffer[14] = "fvdp_start_block_invoke";
      *&buffer[22] = 1024;
      *v283 = 4429;
      LODWORD(v272) = 28;
      _os_log_send_and_compose_impl(v264, 0, v289, 128, &dword_1962D5000, v261, v263, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: %d: false condition", buffer, v272);
    }

    goto LABEL_414;
  }

  v243 = a1[5];
  v244 = *(v243 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_start_block_invoke_265;
  block[3] = &unk_1E748F8B0;
  block[4] = v241;
  block[5] = v243;
  block[6] = cf;
  dispatch_sync(v244, block);
  v245 = *(*(a1[4] + 8) + 24);
  if (!v245)
  {
    FigCFDictionaryGetBooleanIfPresent();
    v246 = a1[5];
    if (v276)
    {
      *(v246 + 24) = 1;
      goto LABEL_416;
    }

    fvdp_startTimers(v246);
    v247 = a1[5];
    v248 = 2;
    goto LABEL_415;
  }

  *v284 = 0;
  type[0] = OS_LOG_TYPE_DEFAULT;
  v266 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v267 = *v284;
  v268 = type[0];
  if (os_log_type_enabled(v266, type[0]))
  {
    v269 = v267;
  }

  else
  {
    v269 = v267 & 0xFFFFFFFE;
  }

  if (v269)
  {
    v270 = a1[6];
    if (!v270)
    {
      v270 = &stru_1F0B1AFB8;
    }

    *buffer = 138413058;
    *&buffer[4] = v270;
    *&buffer[12] = 2080;
    *&buffer[14] = "fvdp_start_block_invoke_2";
    *&buffer[22] = 1024;
    *v283 = 4433;
    *&v283[4] = 1024;
    *&v283[6] = v245;
    LODWORD(v272) = 34;
    _os_log_send_and_compose_impl(v269, 0, v289, 128, &dword_1962D5000, v266, v268, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: %d: got error %d", COERCE_DOUBLE(138413058), buffer, v272);
  }

LABEL_431:
  fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_416:
  if (cf)
  {
    CFRelease(cf);
  }

  if (*(*(a1[4] + 8) + 24))
  {
    fvdp_cleanup(a1[5]);
  }
}

void __fvdp_start_block_invoke_265(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a1[5];
  v2 = a1[6];
  Value = CFDictionaryGetValue(v2, @"colorModes");
  v5 = CFDictionaryGetValue(v2, @"timingModes");
  v6 = CFDictionaryGetValue(v2, @"displaySizeInPhysicalUnits");
  FigCFDictionaryGetDoubleIfPresent();
  *(v3 + 176) = 0x3FF0000000000000;
  if (Value)
  {
    v7 = v5 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7 && CFArrayGetCount(Value) && CFArrayGetCount(v5))
  {
    v8 = &dword_1EAF17000;
    if (dword_1EAF17550 >= 2)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v8 = &dword_1EAF17000;
      if (dword_1EAF17550 >= 2)
      {
        v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = &dword_1EAF17000;
      }
    }

    v11 = *(v3 + 184);
    *(v3 + 184) = Value;
    CFRetain(Value);
    if (v11)
    {
      CFRelease(v11);
    }

    v12 = *(v3 + 192);
    *(v3 + 192) = v5;
    CFRetain(v5);
    if (v12)
    {
      CFRelease(v12);
    }

    if (v6)
    {
      CGSizeMakeWithDictionaryRepresentation(v6, (v3 + 144));
      FigDisplayModes_CreateSquarePixelTimingModesArrayFromTimingModesAndDisplaySize(*(v3 + 192), (v3 + 200), *(v3 + 144), *(v3 + 152), *(v3 + 176));
    }

    *(v3 + 80) = 0;
    FigCFDictionaryGetBooleanIfPresent();
    v13 = *(v3 + 88);
    v14 = CFDictionaryGetValue(v2, @"displayName");
    *(v3 + 88) = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    if (v13)
    {
      CFRelease(v13);
    }

    v15 = *(v3 + 96);
    v16 = CFDictionaryGetValue(v2, @"displayUUID");
    *(v3 + 96) = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    v17 = *(v3 + 104);
    v18 = CFDictionaryGetValue(v2, @"displayEDID");
    *(v3 + 104) = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    if (v17)
    {
      CFRelease(v17);
    }

    v19 = v8[340];
    if (v19)
    {
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v19 = 0;
    }
  }

  else
  {
    v21 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v19 = -12070;
  }

  *(*(a1[4] + 8) + 24) = v19;
}

void fvdp_startTimers(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17550)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v3 = *(a1 + 480);
  v4 = dispatch_time(0, *(a1 + 488));
  dispatch_source_set_timer(v3, v4, *(a1 + 488), 0x989680uLL);
  if (*(a1 + 736) || *(a1 + 737))
  {
    *(a1 + 680) = FigGetUpTimeNanoseconds();
    v5 = *(a1 + 672);
    v6 = dispatch_time(0, 1000000000);
    dispatch_source_set_timer(v5, v6, 0x3B9ACA00uLL, 0x5F5E100uLL);
  }

  *(a1 + 48) = 0;
  v7 = *(a1 + 40);
  v8 = dispatch_time(0, *(a1 + 32));
  dispatch_source_set_timer(v7, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
}

void writebackCacheSetPoolCapacity(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    Mutable = 0;
  }

  else
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    FigCFDictionarySetInt32();
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 24) = Mutable;
}

void fvdp_encoderControlSetBitrate(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 576) != a2)
  {
    if (dword_1EAF17550 <= 1)
    {
      *(a1 + 568) = 2;
      v5 = vcvtd_n_f64_s32(a2, 3uLL);
      *(a1 + 520) = v5;
      *(a1 + 544) = 0x3FF0000000000000;
    }

    else
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v6 = dword_1EAF17550;
      *(a1 + 568) = 2;
      v5 = vcvtd_n_f64_s32(a2, 3uLL);
      *(a1 + 520) = v5;
      *(a1 + 544) = 0x3FF0000000000000;
      if (v6 > 1)
      {
        v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v8 = dword_1EAF17550;
        *(a1 + 528) = *(a1 + 520) * 0.2;
        *(a1 + 552) = 0x3FB999999999999ALL;
        if (v8 >= 2)
        {
          v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        goto LABEL_8;
      }
    }

    *(a1 + 528) = v5 * 0.2;
    *(a1 + 552) = 0x3FB999999999999ALL;
LABEL_8:
    *(a1 + 576) = a2;
    *(a1 + 572) = 1;
  }
}

double fvdp_encoderControlSetFramerate(uint64_t a1, int a2)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 408) != a2)
  {
    if (dword_1EAF17550)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(a1 + 408) = a2;
    *(a1 + 416) = 0x3B9ACA00uLL / a2;
    result = a2;
    *(a1 + 584) = a2;
    *(a1 + 592) = 1;
  }

  return result;
}

uint64_t __colorTagForIndex_block_invoke()
{
  v0 = *MEMORY[0x1E6965DB8];
  v1 = *MEMORY[0x1E6965FD0];
  v2 = *MEMORY[0x1E6965F50];
  v3 = *MEMORY[0x1E6965FC8];
  v4 = *MEMORY[0x1E6965F88];
  v5 = *MEMORY[0x1E6965DD0];
  v6 = *MEMORY[0x1E6965DB0];
  v7 = *MEMORY[0x1E6965FB0];
  v8 = *MEMORY[0x1E6965F70];
  v9 = *MEMORY[0x1E6965FA8];
  result = *MEMORY[0x1E6965F48];
  colorTagForIndex_colorTags[0] = "AirPlay";
  *algn_1EAF19B48 = v0;
  qword_1EAF19B50 = v1;
  unk_1EAF19B58 = v2;
  qword_1EAF19B60 = "CarPlay";
  unk_1EAF19B68 = v0;
  qword_1EAF19B70 = v3;
  unk_1EAF19B78 = v4;
  qword_1EAF19B80 = "CarPlayHEVC";
  unk_1EAF19B88 = v0;
  qword_1EAF19B90 = v1;
  unk_1EAF19B98 = v4;
  qword_1EAF19BA0 = "ExtendedColor";
  unk_1EAF19BA8 = v5;
  qword_1EAF19BB0 = v1;
  unk_1EAF19BB8 = v2;
  qword_1EAF19BC0 = "HDR10";
  unk_1EAF19BC8 = v6;
  qword_1EAF19BD0 = v7;
  unk_1EAF19BD8 = v8;
  qword_1EAF19BE0 = "DoVi";
  unk_1EAF19BE8 = 0;
  qword_1EAF19BF0 = v9;
  unk_1EAF19BF8 = v8;
  qword_1EAF19C00 = "HLG";
  unk_1EAF19C08 = v6;
  qword_1EAF19C10 = v7;
  unk_1EAF19C18 = result;
  qword_1EAF19C20 = "AirPlaysRGB";
  unk_1EAF19C28 = v0;
  qword_1EAF19C30 = v1;
  unk_1EAF19C38 = v4;
  return result;
}

void fvdp_checkForTaps(uint64_t a1, int a2, __n128 a3)
{
  v11 = *MEMORY[0x1E69E9840];
  Boolean = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_tap_input", 0);
  v7 = FigVirtualDisplayPrefsGetBoolean(@"wirelessdisplay_tap_output", 0);
  if (a2)
  {
    if (Boolean && !*(a1 + 656))
    {
      *(a1 + 656) = tapCreate(@"input", v6);
    }

    if (v7 && !*(a1 + 664))
    {
      if (*(a1 + 312) == 1852796517)
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        *(a1 + 664) = tapCreate(@"output", v6);
      }
    }

    if (*(a1 + 656) || *(a1 + 664))
    {
      *(a1 + 440) = 1666666;
    }
  }

  else
  {
    if (!Boolean)
    {
      v9 = *(a1 + 656);
      if (v9)
      {
        tapDestroy(v9);
        *(a1 + 656) = 0;
      }
    }

    if (!v7)
    {
      v10 = *(a1 + 664);
      if (v10)
      {
        tapDestroy(v10);
        *(a1 + 664) = 0;
      }
    }
  }
}

void *tapCreate(const void *a1, uint64_t a2)
{
  cf[24] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  v3 = *MEMORY[0x1E695E480];
  TempDirectory = FVDUtilsGetTempDirectory(a1, a2);
  v5 = getpid();
  v6 = CFStringCreateWithFormat(v3, 0, @"%@tap-%@-%d-%d.mov", TempDirectory, a1, v5, atomic_fetch_add_explicit(tapCreate_count, 1u, memory_order_relaxed) + 1);
  if (FigVirtualDisplaySinkFileWriterCreate(v3, cf) || (FigVirtualDisplaySinkGetCMBaseObject(), v8 = v7, (v9 = *(*(CMBaseObjectGetVTable() + 8) + 56)) == 0) || v9(v8, @"Destination", v6) || (v10 = cf[0], (v11 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || v11(v10, 0, 0))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v16 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v12 = 0;
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v12 = malloc_type_calloc(1uLL, 0x18uLL, 0x6004082687C62uLL);
    if (a1)
    {
      v13 = CFRetain(a1);
    }

    else
    {
      v13 = 0;
    }

    *v12 = cf[0];
    v12[1] = v13;
    cf[0] = 0;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    if (!v6)
    {
      goto LABEL_15;
    }
  }

  CFRelease(v6);
LABEL_15:
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  return v12;
}

void __fvdp_configureSink_block_invoke(uint64_t a1, CFTypeRef cf, CFTypeRef a3)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (a3)
  {
    CFRetain(a3);
  }

  v6 = *(a1 + 32);
  v7 = *(v6 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_configureSink_block_invoke_2;
  block[3] = &__block_descriptor_tmp_409;
  block[4] = v6;
  block[5] = cf;
  block[6] = a3;
  dispatch_async(v7, block);
}

void __fvdp_configureSink_block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[6];
  if (FigCFEqual())
  {
    if (dword_1EAF17550)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v2 + 595) = 1;
  }

  else if (FigCFEqual())
  {
    if (dword_1EAF17550)
    {
      v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    *(v2 + 596) = 1;
  }

  else if (FigCFEqual())
  {
    Value = CFDictionaryGetValue(v3, @"tokens");
    if (Value)
    {
      v7 = Value;
      if (dword_1EAF17550 >= 2)
      {
        v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      Mutable = *(v2 + 616);
      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        *(v2 + 616) = Mutable;
      }

      v14.length = CFArrayGetCount(v7);
      v14.location = 0;
      CFArrayAppendArray(Mutable, v7, v14);
    }
  }

  else if (FigCFEqual())
  {
    *(v2 + 468) = 1;
    FigCFDictionaryGetInt32IfPresent();
    if (dword_1EAF17550)
    {
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  v9 = a1[5];
  if (v9)
  {
    CFRelease(v9);
  }

  v10 = a1[6];
  if (v10)
  {
    CFRelease(v10);
  }
}

void __fvdp_stop_block_invoke(uint64_t a1, __n128 a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  if (v4 != 2 && dword_1EAF17550 != 0)
  {
    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v3 = *(a1 + 32);
  }

  *(v3 + 24) = 0;
  __dmb(0xBu);
  fvdp_stopTimers(*(a1 + 32));
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_stop_block_invoke_416;
  block[3] = &__block_descriptor_tmp_417;
  block[4] = v7;
  dispatch_sync(v8, block);
  if (v4)
  {
    v19 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v10 = v19;
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
      v13 = &stru_1F0B1AFB8;
      v14 = *(a1 + 32);
      if (*(a1 + 40))
      {
        v13 = *(a1 + 40);
      }

      v15 = *(v14 + 728);
      v16 = *(v14 + 732);
      v20 = 138413058;
      v21 = v13;
      v22 = 2080;
      v23 = "fvdp_stop_block_invoke_2";
      v24 = 1024;
      v25 = v15;
      v26 = 1024;
      v27 = v16;
      _os_log_send_and_compose_impl(v12, 0, v28, 128, &dword_1962D5000, v9, v11, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: received: %u source frames, %u writeback requests", &v20, 34);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  fvdp_cleanup(*(a1 + 32));
}

void fvdp_stopTimers(NSObject **a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1EAF17550)
  {
    v6 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  dispatch_source_set_timer(a1[60], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  dispatch_source_set_timer(a1[84], 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  v3 = a1[1];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_stopTimers_block_invoke;
  block[3] = &__block_descriptor_tmp_420;
  block[4] = a1;
  dispatch_sync(v3, block);
}

void *fvdp_shutdownEncoderAndPools(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  fvdp_teardownCompressionSession(a1);
  v3 = *(a1 + 328);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 328) = 0;
  }

  v4 = *MEMORY[0x1E695F060];
  *(a1 + 216) = *MEMORY[0x1E695F060];
  *(a1 + 232) = v4;
  v5 = *MEMORY[0x1E695F058];
  v6 = *(MEMORY[0x1E695F058] + 16);
  *(a1 + 248) = *MEMORY[0x1E695F058];
  *(a1 + 264) = v6;
  *(a1 + 280) = v5;
  *(a1 + 296) = v6;
  return writebackCacheInitWithPool(*(a1 + 640), 0, 0, 0);
}

void __fvdp_stopTimers_block_invoke(uint64_t a1)
{
  dispatch_source_set_timer(*(*(a1 + 32) + 456), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  dispatch_source_set_timer(*(*(a1 + 32) + 40), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  *(*(a1 + 32) + 48) = 0;
}

void fvdp_teardownCompressionSession(uint64_t a1)
{
  v2 = *(a1 + 320);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 320) = 0;
  }

  v3 = *(a1 + 336);
  if (v3)
  {
    v5 = **&MEMORY[0x1E6960C70];
    VTCompressionSessionCompleteFrames(v3, &v5);
    v4 = *(a1 + 336);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 336) = 0;
    }

    dispatch_source_set_timer(*(a1 + 456), 0xFFFFFFFFFFFFFFFFLL, 0, 0);
  }
}

uint64_t __fvdp_suspend_block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (*(v2 + 24) != 2 && dword_1EAF17550 != 0)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v2 = *(a1 + 32);
  }

  *(v2 + 24) = 1;
  __dmb(0xBu);
  fvdp_stopTimers(*(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __fvdp_suspend_block_invoke_421;
  block[3] = &__block_descriptor_tmp_422;
  block[4] = v5;
  dispatch_sync(v6, block);
  fvdp_checkForTaps(*(a1 + 32), 0, v7);
  if (dword_1EAF17550)
  {
    v20 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v9 = v20;
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
      v12 = &stru_1F0B1AFB8;
      if (*(a1 + 40))
      {
        v12 = *(a1 + 40);
      }

      v21 = 138412546;
      v22 = v12;
      v23 = 2080;
      v24 = "fvdp_suspend_block_invoke_2";
      _os_log_send_and_compose_impl(v11, 0, v25, 128, &dword_1962D5000, v8, v10, "<<<< FigVirtualDisplayProcessor >>>>%@ %s: sending 'ClearScreen' to sink", &v21, 22);
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v13 = *(*(a1 + 32) + 64);
  VTable = CMBaseObjectGetVTable();
  v16 = *(VTable + 16);
  result = VTable + 16;
  v17 = *(v16 + 56);
  if (v17)
  {
    return v17(v13, @"clearScreen", *MEMORY[0x1E695E4D0], 0);
  }

  return result;
}

void __fvdp_resume_block_invoke(void *a1, __n128 a2)
{
  block[26] = *MEMORY[0x1E69E9840];
  v4 = a1 + 5;
  v3 = a1[5];
  if (*(v3 + 24) == 1)
  {
    fvdp_checkForTaps(v3, 1, a2);
    v5 = *v4;
    v6 = *(*v4 + 8);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __fvdp_resume_block_invoke_2;
    block[3] = &__block_descriptor_tmp_425;
    block[4] = v5;
    dispatch_sync(v6, block);
    fvdp_startTimers(*v4);
    v7 = 2;
  }

  else
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v4 = (a1[4] + 8);
    v7 = -12070;
  }

  *(*v4 + 24) = v7;
}

CFTypeRef __fvdp_copySupportedDigitalOutModes_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 184);
  if (v2)
  {
    v2 = CFRetain(v2);
  }

  **(a1 + 32) = v2;
  v3 = *(a1 + 40);
  result = *(v3 + 200);
  if (result || (result = *(v3 + 192)) != 0)
  {
    result = CFRetain(result);
  }

  **(a1 + 48) = result;
  return result;
}

void __fvdp_setDigitalOutMode_block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 44);
  if (FigDisplayModes_ExtractDimensionsFromTimingMode(*(v1 + 192), v2, (v1 + 112)))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EAF17550)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = *(v1 + 200);
  if (v5)
  {
    if (FigDisplayModes_ExtractDimensionsFromTimingMode(v5, v2, (v1 + 128)))
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    if (dword_1EAF17550)
    {
      v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    *(v1 + 128) = *(v1 + 112);
  }

  if (FigDisplayModes_ExtractOverscanInfoFromTimingMode(*(v1 + 192), v2, (v1 + 160)))
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (dword_1EAF17550)
  {
    v9 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*(v1 + 64))
  {
    DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(*(v1 + 112));
    v11 = *(v1 + 336);
    if (v11)
    {
      completeUntilPresentationTimeStamp = **&MEMORY[0x1E6960C70];
      VTCompressionSessionCompleteFrames(v11, &completeUntilPresentationTimeStamp);
    }

    FigVirtualDisplaySinkGetCMBaseObject();
    v13 = v12;
    v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (v14)
    {
      v14(v13, @"virtualDisplayModeSize", DictionaryRepresentation);
    }

    if (DictionaryRepresentation)
    {
      CFRelease(DictionaryRepresentation);
    }
  }
}

void cvPixelBufferSetColorAttachments(CVBufferRef buffer, void *a2, CFTypeRef value)
{
  if (buffer)
  {
    if (a2)
    {
      v6 = a2[1];
      if (v6)
      {
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965D88], v6, kCVAttachmentMode_ShouldPropagate);
      }

      v7 = a2[3];
      if (v7)
      {
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965F30], v7, kCVAttachmentMode_ShouldPropagate);
      }

      v8 = a2[2];
      if (v8)
      {
        CVBufferSetAttachment(buffer, *MEMORY[0x1E6965F98], v8, kCVAttachmentMode_ShouldPropagate);
      }
    }

    if (value)
    {
      CVBufferSetAttachment(buffer, *MEMORY[0x1E6965D00], value, kCVAttachmentMode_ShouldPropagate);
      v9 = *MEMORY[0x1E6965CF0];

      CVBufferSetAttachment(buffer, v9, value, kCVAttachmentMode_ShouldPropagate);
    }
  }
}

uint64_t fvdp_createPixelBufferPool(uint64_t a1, uint64_t a2, CVPixelBufferPoolRef *a3, double a4, double a5)
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = *MEMORY[0x1E695E480];
  v7 = MEMORY[0x1E695E9D8];
  v8 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  FigCFDictionarySetInt32();
  v10 = CFDictionaryCreateMutable(v6, 0, v7, v8);
  CFDictionarySetValue(v10, *MEMORY[0x1E696CF98], @"FigVirtualDisplay");
  if (a2)
  {
    FigCFDictionarySetInt64();
  }

  CFDictionarySetValue(Mutable, *MEMORY[0x1E69660D8], v10);
  v11 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32();
  v12 = CVPixelBufferPoolCreate(v6, v11, Mutable, a3);
  if (!v12)
  {
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (v11)
  {
LABEL_5:
    CFRelease(v11);
  }

LABEL_6:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v12;
}

uint64_t vtSessionSetPropertyInt32(const void *a1, const __CFString *a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr);
  v6 = VTSessionSetProperty(a1, a2, v5);
  CFRelease(v5);
  return v6;
}

void fvdp_encoderControlApply(uint64_t a1, int a2)
{
  v4 = MEMORY[0x1E695E480];
  if (*(a1 + 572) | a2)
  {
    v5 = *(a1 + 312);
    if (v5 > 1752589104)
    {
      if (v5 != 1752589105 && v5 != 1869117027 && v5 != 1836415073)
      {
        goto LABEL_27;
      }
    }

    else if (((v5 - 1718908515) > 0xD || ((1 << (v5 - 99)) & 0x2021) == 0) && v5 != 1635148593)
    {
      goto LABEL_27;
    }

    v10 = *(a1 + 504);
    v11 = v10 > 0x26;
    v12 = (1 << v10) & 0x6000100000;
    if (v11 || v12 == 0)
    {
LABEL_27:
      vtSessionSetPropertyInt32(*(a1 + 336), *MEMORY[0x1E6983558], *(a1 + 576));
      goto LABEL_28;
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (*(a1 + 568) >= 1)
    {
      v15 = 0;
      v16 = a1 + 544;
      do
      {
        FigCFArrayAppendDouble();
        v16 += 8;
        FigCFArrayAppendDouble();
        ++v15;
      }

      while (v15 < *(a1 + 568));
    }

    VTSessionSetProperty(*(a1 + 336), *MEMORY[0x1E69835E0], Mutable);
    CFRelease(Mutable);
  }

LABEL_28:
  if (*(a1 + 592) | a2)
  {
    v17 = *(a1 + 336);
    v18 = *MEMORY[0x1E6983638];
    valuePtr = *(a1 + 584);
    v19 = CFNumberCreate(*v4, kCFNumberDoubleType, &valuePtr);
    VTSessionSetProperty(v17, v18, v19);
    CFRelease(v19);
  }

  *(a1 + 572) = 0;
  *(a1 + 592) = 0;
}

void __fvdp_timestampsReportForFrame_block_invoke()
{
  qword_1ED4CB030 = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v0 = 2u;
  do
  {
    CFStringAppendFormat(qword_1ED4CB030, 0, @"  %@", kTimestampNames[v0++]);
  }

  while (v0 != 7);
}

uint64_t fvdp_shouldDropFrame(uint64_t a1)
{
  propertyValueOut[16] = *MEMORY[0x1E69E9840];
  if (!**(a1 + 56))
  {
    return 0;
  }

  v2 = *(a1 + 472);
  if (v2 != 2)
  {
    if (v2 == 1 && *(a1 + 209))
    {
      if (dword_1EAF17550)
      {
        goto LABEL_18;
      }

      return 1;
    }

    goto LABEL_8;
  }

  if (*(a1 + 209))
  {
LABEL_8:
    if (*(a1 + 356) >= 1)
    {
      v3 = *(a1 + 336);
      if (v3)
      {
        v4 = *MEMORY[0x1E6983758];
        valuePtr = 0;
        propertyValueOut[0] = 0;
        VTSessionCopyProperty(v3, v4, *MEMORY[0x1E695E480], propertyValueOut);
        if (propertyValueOut[0])
        {
          v5 = CFGetTypeID(propertyValueOut[0]);
          if (v5 == CFNumberGetTypeID())
          {
            CFNumberGetValue(propertyValueOut[0], kCFNumberSInt32Type, &valuePtr);
          }

          if (propertyValueOut[0])
          {
            CFRelease(propertyValueOut[0]);
          }
        }

        v6 = valuePtr;
        if (dword_1EAF17550 >= 3)
        {
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (v6 >= *(a1 + 356))
        {
          if (dword_1EAF17550)
          {
            v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (!*(a1 + 736) && !*(a1 + 737))
          {
            return 1;
          }

          v16 = (a1 + 708);
          goto LABEL_38;
        }
      }
    }

    v10 = *(a1 + 64);
    v11 = *(*(CMBaseObjectGetVTable() + 16) + 80);
    if (v11 && v11(v10))
    {
      if (dword_1EAF17550)
      {
        v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      if (!*(a1 + 736) && !*(a1 + 737))
      {
        return 1;
      }

      v16 = (a1 + 712);
LABEL_38:
      v9 = 1;
      atomic_fetch_add_explicit(v16, 1u, memory_order_relaxed);
      return v9;
    }

    v13 = *(a1 + 468);
    if (v13 >= 1)
    {
      if (dword_1EAF17550)
      {
        v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        v13 = *(a1 + 468);
      }

      *(a1 + 468) = v13 - 1;
      return 1;
    }

    return 0;
  }

  if (!dword_1EAF17550)
  {
    return 1;
  }

LABEL_18:
  v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  v9 = 1;
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return v9;
}

uint64_t fvdp_createSampleBufferWithPixelBuffer(__CVBuffer *a1, int64_t value, CMVideoFormatDescriptionRef *a3, CMSampleBufferRef *a4)
{
  formatDescriptionOut[22] = *MEMORY[0x1E69E9840];
  formatDescriptionOut[0] = 0;
  memset(&sampleTiming, 0, sizeof(sampleTiming));
  if (a1 && a3 && a4)
  {
    CMTimeMake(&sampleTiming.presentationTimeStamp, value, 1000000000);
    sampleTiming.decodeTimeStamp = **&MEMORY[0x1E6960C70];
    sampleTiming.duration = sampleTiming.decodeTimeStamp;
    v7 = *a3;
    v8 = *MEMORY[0x1E695E480];
    v9 = 1;
    v10 = *a3;
    while (1)
    {
      if (v10)
      {
        v11 = 0;
      }

      else
      {
        v12 = CMVideoFormatDescriptionCreateForImageBuffer(v8, a1, formatDescriptionOut);
        if (v12)
        {
          v16 = v12;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          goto LABEL_25;
        }

        v11 = formatDescriptionOut[0];
      }

      if (v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }

      v14 = CMSampleBufferCreateReadyWithImageBuffer(v8, a1, v13, &sampleTiming, a4);
      v15 = formatDescriptionOut[0];
      if (!v14)
      {
        if (!formatDescriptionOut[0])
        {
          return 0;
        }

        if (*a3)
        {
          CFRelease(*a3);
          v15 = formatDescriptionOut[0];
        }

        v16 = 0;
        *a3 = v15;
        return v16;
      }

      v16 = v14;
      if (v14 != -12743 || formatDescriptionOut[0])
      {
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
LABEL_25:
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        goto LABEL_26;
      }

      v10 = 0;
      v17 = (v7 == 0) | ~v9;
      v9 = 0;
      if (v17)
      {
        return 0;
      }
    }
  }

  fvdp_createSampleBufferWithPixelBuffer_cold_1();
  v16 = 4294955226;
LABEL_26:
  if (formatDescriptionOut[0])
  {
    CFRelease(formatDescriptionOut[0]);
  }

  return v16;
}

BOOL writebackCacheCopyBuffer(void *a1, int a2, int a3, CVBufferRef *a4, double a5, double a6)
{
  if (!a1)
  {
    writebackCacheCopyBuffer_cold_1();
    return 0;
  }

  FigSimpleMutexLock();
  v12 = a5 == *(a1 + 7) && a6 == *(a1 + 8);
  if (v12 && *(a1 + 22) == a2 && *(a1 + 92) == a3)
  {
    v13 = a1[4];
    if (v13)
    {
LABEL_12:
      v15 = v13 != 0;
      if (a4 && v13)
      {
        *a4 = v13;
        a1[4] = 0;
        v15 = 1;
      }

      goto LABEL_16;
    }

    v14 = a1[1];
    if (v14)
    {
      CVPixelBufferPoolCreatePixelBufferWithAuxAttributes(*MEMORY[0x1E695E480], v14, a1[2], a1 + 4);
      cvPixelBufferSetColorAttachments(a1[4], a1[6], a1[5]);
      v13 = a1[4];
      goto LABEL_12;
    }
  }

  v15 = 0;
LABEL_16:
  FigSimpleMutexUnlock();
  if (a4 && v15)
  {
    CVBufferSetAttachment(*a4, @"FVDWritebackBuffer", *MEMORY[0x1E695E4D0], kCVAttachmentMode_ShouldNotPropagate);
    return 1;
  }

  return v15;
}

uint64_t OUTLINED_FUNCTION_27_19(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_37_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, int a18)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_38_14@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int16 a6, char a7, char a8)
{
  *(v8 - 56) = a1;

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_40_15(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_46_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, int a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_47_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, int a19)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_51_13(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, os_log_type_t type, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_52_13(unsigned __int16 a1, uint64_t a2)
{

  return kdebug_trace();
}

void OUTLINED_FUNCTION_56_12(uint64_t a1@<X8>)
{
  *(v3 - 84) = v1;
  *(a1 + 14) = v2;
  *(v3 - 74) = 1024;
}

uint64_t OUTLINED_FUNCTION_63_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, char a14, int a15)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

BOOL OUTLINED_FUNCTION_64_9(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v13 = v8[35];
  v14 = v8[36];
  v15 = v8[37];
  v16 = v8[38];
  v17 = v10;
  v18 = v12;
  v19 = v11;

  return CGRectEqualToRect(*&v13, *(&a8 - 3));
}

BOOL OUTLINED_FUNCTION_65_8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_66_8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, os_log_type_t type, int a14, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_68_8(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_69_4(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, os_log_type_t type, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_73_5(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, os_log_type_t type, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, int a38)
{

  return os_log_type_enabled(a1, type);
}

uint64_t OUTLINED_FUNCTION_75_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, int a14)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

uint64_t OUTLINED_FUNCTION_79_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int16 a13, char a14, char a15, int a16)
{

  return fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
}

double OUTLINED_FUNCTION_89_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  fig_log_call_emit_and_clean_up_after_send_and_compose();
  return result;
}

BOOL OUTLINED_FUNCTION_101_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, os_log_type_t type, int a17)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_102_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13, os_log_type_t type, int a15)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_106_1(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_107_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, os_log_type_t type, int a14)
{

  return os_log_type_enabled(a1, type);
}

BOOL OUTLINED_FUNCTION_108_2(NSObject *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, os_log_type_t type, int a18)
{

  return os_log_type_enabled(a1, type);
}

uint64_t FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder(uint64_t a1, const void *a2, CFTypeRef *a3)
{
  if (!a2)
  {
    FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder_cold_2(&v8);
    return v8;
  }

  if (!a3)
  {
    FigTTMLDocumentWriterCreateWritingDirectionSpanBuilder_cold_1(&v8);
    return v8;
  }

  FigTTMLDocumentWriterGetClassID();
  v5 = CMDerivedObjectCreate();
  if (!v5)
  {
    FigTTMLDocumentWriterGetCMBaseObject();
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    *DerivedStorage = CFRetain(a2);
    *a3 = 0;
  }

  return v5;
}

void figTTMLDocumentWriterWritingDirectionSpanBuilder_Finalize()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

uint64_t figTTMLDocumentWriterWritingDirectionSpanBuilder_StartElement(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v3 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterStartElement(v3, a2);
}

uint64_t figTTMLDocumentWriterWritingDirectionSpanBuilder_EndElement()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterEndElement(v0);
}

uint64_t figTTMLDocumentWriterWritingDirectionSpanBuilder_AddCaptionData(uint64_t a1, uint64_t a2)
{
  FigTTMLDocumentWriterGetCMBaseObject();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v5 = *(DerivedStorage + 8);
  start.epoch = *(DerivedStorage + 24);
  *&start.value = v5;
  v7 = *(DerivedStorage + 32);
  CMTimeRangeFromTimeToTime(&v9, &start, &v7);
  return processPropertyAtDepthLevel(a1, a2, &v9, 0);
}

uint64_t figTTMLDocumentWriterWritingDirectionSpanBuilder_Flush()
{
  FigTTMLDocumentWriterGetCMBaseObject();
  v0 = *CMBaseObjectGetDerivedStorage();

  return FigTTMLDocumentWriterFlush(v0);
}

uint64_t processPropertyAtDepthLevel(uint64_t a1, uint64_t a2, _OWORD *a3, CFIndex a4)
{
  v44[0] = 0;
  v7 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v7)
  {
    v8 = v7(a2);
  }

  else
  {
    v8 = &stru_1F0B1AFB8;
  }

  Length = CFStringGetLength(v8);
  if (Length < 1)
  {
    v24 = 0;
    goto LABEL_61;
  }

  v9 = 0;
  v10 = 0;
  v35 = 0;
  v11 = 0;
  v12 = 0;
  v37 = *MEMORY[0x1E6961548];
  v13 = *MEMORY[0x1E695E480];
  v34 = a2;
  v36 = *MEMORY[0x1E695E480];
  do
  {
    v42 = 0;
    v43 = 0;
    if (v44[0])
    {
      CFRelease(v44[0]);
      v44[0] = 0;
    }

    v14 = *(*(CMBaseObjectGetVTable() + 16) + 24);
    if (!v14)
    {
      v24 = 4294954514;
      goto LABEL_57;
    }

    v15 = v14(a2, v9, v37, v13, v44, &v42);
    if (v15)
    {
      v24 = v15;
      goto LABEL_57;
    }

    if (v12)
    {
      CFRelease(v12);
    }

    if (!v44[0])
    {
      goto LABEL_37;
    }

    cf[0] = 0;
    v45[0] = 0;
    Mutable = FigCaptionDynamicStyleCreateMutable();
    if (Mutable)
    {
      v24 = Mutable;
      v12 = 0;
    }

    else
    {
      KeyFrameCount = FigCaptionDynamicStyleGetKeyFrameCount();
      if (KeyFrameCount < 1)
      {
        v12 = 0;
        v24 = 0;
      }

      else
      {
        v18 = KeyFrameCount;
        v19 = v11;
        v20 = v10;
        v21 = 0;
        v22 = 0;
        do
        {
          v44[1] = 0;
          if (v45[0])
          {
            CFRelease(v45[0]);
            v45[0] = 0;
          }

          v23 = FigCaptionDynamicStyleCopyKeyFrameValueAtIndex();
          if (v23)
          {
            goto LABEL_51;
          }

          if (CFArrayGetCount(v45[0]) > a4)
          {
            CFArrayGetValueAtIndex(v45[0], a4);
            v22 = 1;
          }

          v23 = FigCaptionDynamicStyleAddKeyFrameValue();
          if (v23)
          {
LABEL_51:
            v24 = v23;
            v12 = 0;
            goto LABEL_27;
          }

          ++v21;
        }

        while (v18 != v21);
        if (v22)
        {
          v24 = 0;
          v12 = cf[0];
          cf[0] = 0;
        }

        else
        {
          v12 = 0;
          v24 = 0;
        }

LABEL_27:
        v10 = v20;
        v11 = v19;
        a2 = v34;
      }

      v13 = v36;
    }

    if (v45[0])
    {
      CFRelease(v45[0]);
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (v24)
    {
      goto LABEL_57;
    }

    if (v12)
    {
      if (FigCFEqual())
      {
        v25 = v43;
        v10 += v43;
        goto LABEL_46;
      }

      v26 = v12;
      if (v11)
      {
LABEL_49:
        v29 = a3[1];
        *cf = *a3;
        v40 = v29;
        v41 = a3[2];
        v30 = writeNestedSpan(a1, a2, v35, v10, cf, v11, a4);
        if (v30)
        {
          v24 = v30;
          v12 = v26;
          goto LABEL_57;
        }

        CFRelease(v11);
      }
    }

    else
    {
LABEL_37:
      v26 = 0;
      if (v11)
      {
        goto LABEL_49;
      }
    }

    if (v26)
    {
      v12 = 0;
      v25 = v43;
      v11 = v26;
      v35 = v42;
      v10 = v43;
    }

    else
    {
      cf[0] = 0;
      FigTTMLDocumentWriterGetCMBaseObject();
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v28 = FigCaptionDataCopySubrange();
      if (!v28)
      {
        v28 = FigTTMLDocumentWriterAddCaptionData(*DerivedStorage, cf[0]);
      }

      v24 = v28;
      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      v12 = 0;
      v11 = 0;
      if (v24)
      {
        goto LABEL_57;
      }

      v25 = v43;
    }

LABEL_46:
    v9 += v25;
  }

  while (v9 < Length);
  if (v11)
  {
    v32 = a3[1];
    *cf = *a3;
    v40 = v32;
    v41 = a3[2];
    v24 = writeNestedSpan(a1, a2, v35, v10, cf, v11, a4);
    if (!v24)
    {
      CFRelease(v11);
      v11 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

LABEL_57:
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

LABEL_61:
  if (v44[0])
  {
    CFRelease(v44[0]);
  }

  return v24;
}

void OUTLINED_FUNCTION_0_139()
{
  v3 = *v0;

  CFDictionaryApplyFunction(v1, writeAttribute, v3);
}

uint64_t FigSampleBufferConsumerRemoteXPC_ensureClientEstablished()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __FigSampleBufferConsumerRemoteXPC_ensureClientEstablished_block_invoke;
  block[3] = &unk_1E748FBC8;
  block[4] = &v3;
  if (FigSampleBufferConsumerRemoteXPC_ensureClientEstablished_sFigSampleBufferConsumerRemoteClientSetupOnce != -1)
  {
    dispatch_once(&FigSampleBufferConsumerRemoteXPC_ensureClientEstablished_sFigSampleBufferConsumerRemoteClientSetupOnce, block);
  }

  v0 = *(v4 + 6);
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t remoteXPCSampleBufferConsumer_CreateInternal(uint64_t a1, CFTypeRef *a2)
{
  FigSampleBufferConsumerGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    return v4;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  DerivedStorage[1] = a1;
  DerivedStorage[2] = FigSimpleMutexCreate();
  v6 = FigDispatchQueueCreateWithPriority();
  DerivedStorage[3] = v6;
  if (!v6)
  {
    remoteXPCSampleBufferConsumer_CreateInternal_cold_1(&v9);
    return v9;
  }

  v4 = FigXPCRemoteClientAssociateObject();
  if (v4)
  {
    return v4;
  }

  v7 = FigXPCRemoteClientCopyMemoryOrigin();
  if (!v7)
  {
    *a2 = 0;
  }

  return v7;
}

_BYTE *remoteXPCSampleBufferConsumerClient_DeadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *result = 1;
  return result;
}

void FigSampleBufferConsumerRemoteXPC_handleLowWaterTriggerCallbackAsync(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    v3(*(DerivedStorage + 64));
  }

  FigSimpleMutexUnlock();
  if (a1)
  {

    CFRelease(a1);
  }
}

uint64_t remoteXPCSampleBufferConsumer_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    remoteXPCSampleBufferConsumer_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(v4 + 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_121(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  a11 = 0;
  a12 = 0;
  a10 = 0;

  return remoteXPCSampleBufferConsumer_GetObjectID(a1, &a10);
}

uint64_t OUTLINED_FUNCTION_6_78(uint64_t a1)
{

  return FigXPCRemoteClientSendSyncMessageCreatingReply();
}

uint64_t FigNeroidCreateRemote(uint64_t a1, CFTypeRef *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  if (a2)
  {
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x2020000000;
    v12 = 0;
    cf[0] = MEMORY[0x1E69E9820];
    cf[1] = 3221225472;
    cf[2] = __neroidRemote_ensureClientEstablished_block_invoke;
    cf[3] = &unk_1E7486A28;
    cf[4] = v11;
    if (neroidRemote_ensureClientEstablished_sFigNeroidRemoteClientSetupOnce != -1)
    {
      dispatch_once(&neroidRemote_ensureClientEstablished_sFigNeroidRemoteClientSetupOnce, cf);
    }

    v4 = *(v11[1] + 24);
    _Block_object_dispose(v11, 8);
    if (!v4)
    {
      v5 = FigXPCCreateBasicMessage();
      if (v5)
      {
        v4 = v5;
      }

      else
      {
        v4 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (!v4)
        {
          uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
          cf[0] = 0;
          FigNeroidGetClassID(uint64, v9);
          v4 = CMDerivedObjectCreate();
          if (v4)
          {
            if (cf[0])
            {
              CFRelease(cf[0]);
            }
          }

          else
          {
            *(CMBaseObjectGetDerivedStorage() + 8) = uint64;
            FigXPCRemoteClientAssociateObject();
            *a2 = cf[0];
          }
        }
      }
    }
  }

  else
  {
    FigNeroidCreateRemote_cold_1(cf);
    v4 = LODWORD(cf[0]);
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  if (v4)
  {
    v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v4;
}

void __neroidRemote_ensureClientEstablished_block_invoke(uint64_t a1)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"Neroid_ServerConnectionDied");
  *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCreate();
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    *(*(*(a1 + 32) + 8) + 24) = FigXPCRemoteClientCopyPrimaryConnection();
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      *(*(*(a1 + 32) + 8) + 24) = FigXPCConnectionSetCustomServerTimeoutPerConnection();
    }
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

uint64_t neroidRemote_deadConnectionCallback(uint64_t a1)
{
  result = CMBaseObjectGetDerivedStorage();
  *(result + 1) = 1;
  return result;
}

__CFString *neroidRemote_CopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigNeroidRemote %p>", a1);
  return Mutable;
}

uint64_t neroidRemote_CopyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = 0;
  ObjectID = neroidRemote_getObjectID(a1, &v6);
  if (!ObjectID)
  {
    ObjectID = FigXPCSendStdCopyPropertyMessage();
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return ObjectID;
}

uint64_t neroidRemote_SetProperty(uint64_t a1, const void *a2, void *a3)
{
  v31 = 0;
  ObjectID = neroidRemote_getObjectID(a1, &v31);
  if (!ObjectID)
  {
    if (CFEqual(a2, @"DisplayLayer"))
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      v8 = objc_autoreleasePoolPush();
      if (*(DerivedStorage + 16) == a3)
      {
        ObjectID = 0;
LABEL_29:
        objc_autoreleasePoolPop(v8);
        goto LABEL_30;
      }

      [MEMORY[0x1E6979518] begin];
      if (!pthread_main_np())
      {
        [MEMORY[0x1E6979518] activateBackground:1];
      }

      [MEMORY[0x1E6979518] setDisableActions:1];
      v9 = *(DerivedStorage + 16);
      *(DerivedStorage + 16) = a3;
      [MEMORY[0x1E6979518] commit];
      v10 = CMBaseObjectGetDerivedStorage();
      cf = 0;
      v11 = objc_autoreleasePoolPush();
      if (!*(v10 + 16))
      {
        neroidRemote_removeHostLayer(a1);
        ObjectID = 0;
        goto LABEL_13;
      }

      valuePtr = 0;
      FigBytePumpGetFigBaseObject();
      v13 = v12;
      v14 = *(*(CMBaseObjectGetVTable() + 8) + 56);
      if (!v14)
      {
        goto LABEL_23;
      }

      v15 = v14(v13, 0x1F0B47B98, *MEMORY[0x1E695E4D0]);
      if (v15)
      {
LABEL_9:
        ObjectID = v15;
LABEL_13:
        DictionaryRepresentation = 0;
LABEL_25:
        objc_autoreleasePoolPop(v11);
        if (cf)
        {
          CFRelease(cf);
        }

        if (DictionaryRepresentation)
        {
          CFRelease(DictionaryRepresentation);
        }

        goto LABEL_29;
      }

      FigBytePumpGetFigBaseObject();
      v18 = v17;
      v19 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v19)
      {
        v15 = v19(v18, 0x1F0B47B78, 0, &cf);
        if (v15)
        {
          goto LABEL_9;
        }

        if (!cf || (v20 = CFGetTypeID(cf), v20 != CFNumberGetTypeID()))
        {
          neroidRemote_SetProperty_cold_1(&v34);
          DictionaryRepresentation = 0;
          ObjectID = v34;
          goto LABEL_25;
        }

        if (!CFNumberGetValue(cf, kCFNumberSInt32Type, &valuePtr))
        {
          DictionaryRepresentation = 0;
          ObjectID = 4294950606;
          goto LABEL_25;
        }

        [MEMORY[0x1E6979518] begin];
        if (!pthread_main_np())
        {
          [MEMORY[0x1E6979518] activateBackground:1];
        }

        [MEMORY[0x1E6979518] setDisableActions:1];
        v21 = *(v10 + 24);
        if (v21)
        {
          [v21 removeFromSuperlayer];
        }

        else
        {
          v23 = [MEMORY[0x1E69793A8] layer];
          *(v10 + 24) = v23;
          if (!v23)
          {
            [MEMORY[0x1E6979518] commit];
            DictionaryRepresentation = 0;
            ObjectID = 4294950605;
            goto LABEL_25;
          }

          v24 = v23;
        }

        [*(v10 + 24) setName:@"FigNeroidRemoteLayerHost"];
        [*(v10 + 24) setContextId:valuePtr];
        [*(v10 + 16) addSublayer:*(v10 + 24)];
        v25 = *(v10 + 24);
        [*(v10 + 16) bounds];
        [v25 setFrame:?];
        [*(v10 + 16) bounds];
        v35.width = v26;
        v35.height = v27;
        DictionaryRepresentation = CGSizeCreateDictionaryRepresentation(v35);
        FigBytePumpGetFigBaseObject();
        v29 = v28;
        v30 = *(*(CMBaseObjectGetVTable() + 8) + 56);
        if (v30)
        {
          ObjectID = v30(v29, 0x1F0B31798, DictionaryRepresentation);
          if (!ObjectID)
          {
            [MEMORY[0x1E6979518] commit];
          }

          goto LABEL_25;
        }
      }

      else
      {
LABEL_23:
        DictionaryRepresentation = 0;
      }

      ObjectID = 4294954514;
      goto LABEL_25;
    }

    ObjectID = FigXPCSendStdSetPropertyMessage();
  }

LABEL_30:
  FigXPCRemoteClientKillServerOnTimeout();
  return ObjectID;
}

void neroidRemote_removeHostLayer(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = objc_autoreleasePoolPush();
  if (*(DerivedStorage + 24))
  {
    [MEMORY[0x1E6979518] begin];
    if (!pthread_main_np())
    {
      [MEMORY[0x1E6979518] activateBackground:1];
    }

    [MEMORY[0x1E6979518] setDisableActions:1];
    [*(DerivedStorage + 24) removeFromSuperlayer];

    *(DerivedStorage + 24) = 0;
    [MEMORY[0x1E6979518] commit];
  }

  objc_autoreleasePoolPop(v2);
}

uint64_t neroidRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    neroidRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (DerivedStorage[1])
    {
      neroidRemote_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *(v4 + 1);
    }
  }

  return result;
}

uint64_t neroidRemote_Start(uint64_t a1)
{
  v7[20] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
  fig_log_call_emit_and_clean_up_after_send_and_compose();
  ObjectID = neroidRemote_getObjectID(a1, v7);
  if (ObjectID)
  {
    v4 = ObjectID;
  }

  else
  {
    v5 = FigXPCCreateBasicMessage();
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v4 = FigXPCRemoteClientSendSyncMessage();
    }
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v4;
}

uint64_t MTAudioProcessingTapXPCServerCopyTapForID(uint64_t a1, CFTypeRef *a2)
{
  v2 = FigXPCServerRetainNeighborObjectFromID();
  if (v2)
  {
    return v2;
  }

  MTAudioProcessingTapXPCServerCopyTapForID_cold_1(&v5);
  return v5;
}

uint64_t MTAudioProcessingTapServerStart(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!FigServer_IsMediaplaybackd())
  {
    FigServer_IsAirplayd();
  }

  return FigXPCServerStart();
}

uint64_t aptXPCServer_NotificationFilter(int a1, int a2, CFTypeRef cf1)
{
  if (CFEqual(cf1, @"MTAudioProcessingTapNotification_InitializeTapCompleted"))
  {
    return 1;
  }

  result = CFEqual(cf1, @"MTAudioProcessingTapNotification_CreateAQTapCompleted");
  if (result)
  {
    return 1;
  }

  return result;
}

void aptapS_BaseClass_Finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  for (i = *(DerivedStorage + 24); i; i = *(DerivedStorage + 24))
  {
    v4 = i[1];
    *(DerivedStorage + 24) = *i;
    if (v4)
    {
      aptapS_DisposeSubmixTap(a1, i);
    }

    free(i);
  }

  v5 = *(DerivedStorage + 8);
  if (v5)
  {
    os_release(v5);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *aptapS_BaseClass_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<MTAudioProcessingTapServer %p> Retain count %d Created with flags = 0x%x", a1, v4, *(DerivedStorage + 16));
  return Mutable;
}

void aptapS_DisposeSubmixTap(uint64_t result, uint64_t a2)
{
  *(a2 + 16) = 0;
  v3 = *(a2 + 24);
  if (v3)
  {
    CFDictionaryFromPointer = MTAudioProcessingTapCreateCFDictionaryFromPointer(@"SubmixTapServerPointer", v3);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    if (CFDictionaryFromPointer)
    {
      CFRelease(CFDictionaryFromPointer);
    }

    ATSubmixTapDispose();
  }

  *(a2 + 24) = 0;
}

void aptapS_Class_InitializeTap(uint64_t a1, uint64_t a2)
{
  v3 = (CMBaseObjectGetDerivedStorage() + 24);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (v3[1] == a2)
    {
      v4 = v3[3];
      v5 = @"SubmixTapServerPointer";
      goto LABEL_6;
    }
  }

  v5 = @"AQTapServerPointer";
  v4 = a2;
LABEL_6:
  CFDictionaryFromPointer = MTAudioProcessingTapCreateCFDictionaryFromPointer(v5, v4);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (CFDictionaryFromPointer)
  {

    CFRelease(CFDictionaryFromPointer);
  }
}

uint64_t aptapS_Class_CreateAQTap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, AudioQueueProcessingTapRef *a5)
{
  v6 = a3;
  v7 = a2;
  CMBaseObjectGetDerivedStorage();
  v8 = AudioQueueProcessingTapNew_CMServer();
  if (!v8)
  {
    CFDictionaryFromPointerAndTrackID = MTAudioProcessingTapCreateCFDictionaryFromPointerAndTrackID(@"AQTapServerPointer", 0, @"TrackID", v7, @"AudioStreamToken", v6);
    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
    *a5 = 0;
    if (CFDictionaryFromPointerAndTrackID)
    {
      CFRelease(CFDictionaryFromPointerAndTrackID);
    }
  }

  return v8;
}

void aptapS_Class_DisposeAQTap(uint64_t a1, AudioQueueProcessingTapRef inAQTap)
{
  AudioQueueProcessingTapDispose(inAQTap);
  CFDictionaryFromPointer = MTAudioProcessingTapCreateCFDictionaryFromPointer(@"AQTapServerPointer", inAQTap);
  CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification();
  if (CFDictionaryFromPointer)
  {

    CFRelease(CFDictionaryFromPointer);
  }
}

uint64_t aptapS_Class_SetTimelineInfo(int a1, int a2, AudioQueueRef inAQ, float a4, float a5, uint64_t a6, uint64_t a7)
{
  inData = a6;
  v9 = a4;
  v10 = a7;
  v11 = a5;
  return AudioQueueSetProperty(inAQ, 0x636D7469u, &inData, 0x18u);
}

void aptapS_Class_RemoveAQFromSubmixTap(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = CMBaseObjectGetDerivedStorage() + 24;
  while (1)
  {
    v5 = *v5;
    if (!v5)
    {
      break;
    }

    if (*(v5 + 8) == a2)
    {
      ATAssignToSubmixTap();
      v6 = *(v5 + 16) - 1;
      *(v5 + 16) = v6;
      if (!v6 && FigAtomicCompareAndSwapPtr())
      {

        aptapS_DisposeSubmixTap(a1, v5);
      }

      return;
    }
  }
}

uint64_t aptapS_Class_SetSubmixTimelineInfo(uint64_t a1, uint64_t a2, _BYTE **a3, void *a4, int a5, float a6, float a7)
{
  v13 = CMBaseObjectGetDerivedStorage() + 24;
  do
  {
    v13 = *v13;
    if (!v13)
    {
      return 0;
    }
  }

  while (*(v13 + 8) != a2);
  if (!a5 && *(v13 + 16) != 1)
  {
    return 0;
  }

  v14 = *(v13 + 32);
  if (v14 == 0.0)
  {
    value = *a3;
    v17 = *a4;
  }

  else
  {
    v19 = *a3;
    CMTimeConvertScale(&v20, &v19, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    value = v20.value;
    v16 = *(v13 + 32);
    v19 = *a4;
    CMTimeConvertScale(&v20, &v19, v16, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v17 = v20.value;
  }

  v20.value = value;
  *&v20.timescale = a6;
  *&v20.flags = v17;
  *(&v20.epoch + 1) = a7;
  return ATSubmixTapSetTimelineInfo();
}

void figCaptionFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 48) = 0;
  }
}

__CFString *figCaptionCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *MEMORY[0x1E695E480];
  v6 = *DerivedStorage;
  v7 = *(DerivedStorage + 32);
  *&range.start.epoch = *(DerivedStorage + 16);
  *&range.duration.timescale = v7;
  *&range.start.value = v6;
  v8 = CMTimeRangeCopyDescription(v5, &range);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = @"<no timing>";
  }

  v11 = *(DerivedStorage + 48);
  v12 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (v12)
  {
    v13 = v12(v11);
  }

  else
  {
    v13 = &stru_1F0B1AFB8;
  }

  CFStringAppendFormat(Mutable, 0, @"\tCaption: %p timing:%@ text<%@>", a1, v10, v13);
  if (v9)
  {
    CFRelease(v9);
  }

  return Mutable;
}

uint64_t figCaptionCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, CFDictionaryRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  v17 = 0;
  if (!a2)
  {
    figCaptionCopyProperty_cold_3(&v16);
    return LODWORD(v16.start.value);
  }

  if (!a4)
  {
    figCaptionCopyProperty_cold_2(&v16);
    return LODWORD(v16.start.value);
  }

  if (CFEqual(a2, @"TimeRange"))
  {
    memset(&v16, 0, sizeof(v16));
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 8);
    if (v8)
    {
      v8(&v16, a1);
    }

    else
    {
      v9 = *(MEMORY[0x1E6960C98] + 16);
      *&v16.start.value = *MEMORY[0x1E6960C98];
      *&v16.start.epoch = v9;
      *&v16.duration.timescale = *(MEMORY[0x1E6960C98] + 32);
    }

    v15 = v16;
    v10 = CMTimeRangeCopyAsDictionary(&v15, a3);
    if (!v10)
    {
      figCaptionCopyProperty_cold_1(&v16, &v15);
      return LODWORD(v15.start.value);
    }

    MutableCopy = 0;
  }

  else if (CFEqual(a2, @"CaptionData"))
  {
    MutableCopy = FigCaptionDataCreateMutableCopy();
    v10 = v17;
    if (MutableCopy)
    {
      return MutableCopy;
    }
  }

  else
  {
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v13)
    {
      MutableCopy = v13(CMBaseObject, a2, a3, &v17);
      v10 = v17;
    }

    else
    {
      v10 = 0;
      MutableCopy = 4294954514;
    }
  }

  *a4 = v10;
  return MutableCopy;
}

uint64_t figCaptionSetProperty(const void *a1, const void *a2, const __CFDictionary *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a2)
  {
    figCaptionSetProperty_cold_3(&v16);
    return LODWORD(v16.start.value);
  }

  if (!a3)
  {
    figCaptionSetProperty_cold_2(&v16);
    return LODWORD(v16.start.value);
  }

  v7 = DerivedStorage;
  if (CFEqual(a2, @"TimeRange"))
  {
    memset(&v15, 0, sizeof(v15));
    CMTimeRangeMakeFromDictionary(&v15, a3);
    v14 = v15;
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
    if (v8)
    {
      v16 = v14;
      return v8(a1, &v16);
    }

    return 4294954514;
  }

  if (CFEqual(a2, @"CaptionData"))
  {
    v16.start.value = 0;
    v10 = CFGetTypeID(a3);
    if (v10 == FigCaptionDataGetTypeID())
    {
      CFGetAllocator(a1);
      result = FigCaptionDataCreateMutableCopy();
      if (!result)
      {
        v11 = *(v7 + 48);
        if (v11)
        {
          CFRelease(v11);
        }

        result = 0;
        *(v7 + 48) = v16.start.value;
      }
    }

    else
    {
      figCaptionSetProperty_cold_1(&v15);
      return LODWORD(v15.start.value);
    }
  }

  else
  {
    CMBaseObject = FigCaptionDataGetCMBaseObject();
    v13 = *(*(CMBaseObjectGetVTable() + 8) + 56);
    if (!v13)
    {
      return 4294954514;
    }

    return v13(CMBaseObject, a2, a3);
  }

  return result;
}

__n128 figCaptionGetTimeRange@<Q0>(uint64_t a2@<X8>)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  *a2 = *DerivedStorage;
  *(a2 + 16) = v4;
  result = *(DerivedStorage + 32);
  *(a2 + 32) = result;
  return result;
}

uint64_t figCaptionSetTimeRange(uint64_t a1, __int128 *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if ((*(a2 + 3) & 0x1D) == 1)
  {
    if ((*(a2 + 9) & 0x1D) == 1)
    {
      v4 = 0;
      v5 = *a2;
      v6 = a2[2];
      DerivedStorage[1] = a2[1];
      DerivedStorage[2] = v6;
      *DerivedStorage = v5;
    }

    else
    {
      figCaptionSetTimeRange_cold_2(&v9);
      return v9;
    }
  }

  else
  {
    figCaptionSetTimeRange_cold_1(&v8);
    return v8;
  }

  return v4;
}

uint64_t RegisterFigSampleBufferAudioRendererType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigSampleBufferAudioRendererGetTypeID()
{
  MEMORY[0x19A8D3660](&FigSampleBufferAudioRendererGetClassID_sRegisterFigSampleBufferAudioRendererTypeOnce, RegisterFigSampleBufferAudioRendererType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigPWDKeyExchangeReceiverGetClassID(uint64_t a1, uint64_t a2)
{
  if (FigPWDKeyExchangeReceiverGetClassID_onceToken != -1)
  {
    FigPWDKeyExchangeReceiverGetClassID_cold_1();
  }

  return sFigPWDKeyExchangeReceiverClassID;
}

uint64_t RegisterFigPWDKeyExchangeReceiverBaseTypeOnce()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigPWDKeyExchangeReceiverGetTypeID(uint64_t a1, uint64_t a2)
{
  if (FigPWDKeyExchangeReceiverGetClassID_onceToken != -1)
  {
    FigPWDKeyExchangeReceiverGetClassID_cold_1();
  }

  return CMBaseClassGetCFTypeID();
}

uint64_t acif_invalidate(uint64_t a1)
{
  v3 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  dispatch_sync_f(*DerivedStorage, &DerivedStorage, acif_invalidateDispatch);
  return v3;
}

void acif_finalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a1)
  {
    v3 = *(*(CMBaseObjectGetVTable() + 8) + 24);
    if (v3)
    {
      v3(a1);
    }
  }

  v4 = *(DerivedStorage + 16);
  if (v4)
  {
    CFRelease(v4);
    *(DerivedStorage + 16) = 0;
  }

  v5 = *(DerivedStorage + 24);
  if (v5)
  {
    CFRelease(v5);
    *(DerivedStorage + 24) = 0;
  }

  v6 = *(DerivedStorage + 32);
  if (v6)
  {
    CFRelease(v6);
    *(DerivedStorage + 32) = 0;
  }

  v7 = *(DerivedStorage + 40);
  if (v7)
  {
    CFRelease(v7);
    *(DerivedStorage + 40) = 0;
  }

  if (*DerivedStorage)
  {
    dispatch_release(*DerivedStorage);
    *DerivedStorage = 0;
  }
}

double acif_copyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (a4)
    {
      if (CFEqual(@"AssetCacheInspectorProperty_PlayableOffline", a2))
      {
        if (FigCFURLIsLocalResource())
        {
          v8 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v8 = MEMORY[0x1E695E4C0];
        }

        *a4 = *v8;
      }

      else
      {
        emitter = fig_log_get_emitter();

        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954513, "<<<< FigAssetCacheInspector_File >>>>", 101, v4);
      }
    }

    else
    {
      acif_copyProperty_cold_1(&v10);
    }
  }

  else
  {
    acif_copyProperty_cold_2(&v11);
  }

  return result;
}

uint64_t acif_copyCompletelyCachedMediaSelectionOptionsInGroup(uint64_t a1, const __CFDictionary *a2, uint64_t a3, CFArrayRef *a4)
{
  CMBaseObjectGetDerivedStorage();
  if (a2 && (v6 = CFGetTypeID(a2), v6 == CFDictionaryGetTypeID()))
  {
    if (a4)
    {
      if (FigCFURLIsLocalResource())
      {
        Value = CFDictionaryGetValue(a2, @"MediaSelectionGroupOptions");
        if (Value)
        {
          v8 = CFRetain(Value);
        }

        else
        {
          v8 = 0;
        }

        result = 0;
        *a4 = v8;
      }

      else
      {
        v9 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);
        *a4 = v9;
        if (v9)
        {
          return 0;
        }

        else
        {
          acif_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_1(&v11);
          return v11;
        }
      }
    }

    else
    {
      acif_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_2(&v12);
      return v12;
    }
  }

  else
  {
    acif_copyCompletelyCachedMediaSelectionOptionsInGroup_cold_3(&v13);
    return v13;
  }

  return result;
}

uint64_t FigSampleGeneratorRemoteCreateForFormatReader(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5)
{
  if (a2)
  {

    return figSampleGeneratorRemoteCreateCommon(a1, a2, 0, 0, a3, a4, a5);
  }

  else
  {
    v9 = v5;
    v10 = v6;
    FigSampleGeneratorRemoteCreateForFormatReader_cold_1(&v8);
    return v8;
  }
}

uint64_t FigSampleGeneratorRemoteCreateForTrackReader(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    return figSampleGeneratorRemoteCreateCommon(a1, 0, a2, 0, a3, a4, a5);
  }

  else
  {
    v9 = v5;
    v10 = v6;
    FigSampleGeneratorRemoteCreateForTrackReader_cold_1(&v8);
    return v8;
  }
}

uint64_t FigSampleGeneratorRemoteCreateForTrackReaderProducingByteReferenceSampleBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a2)
  {

    return figSampleGeneratorRemoteCreateCommon(a1, 0, a2, 1, a3, a4, a5);
  }

  else
  {
    v9 = v5;
    v10 = v6;
    FigSampleGeneratorRemoteCreateForTrackReaderProducingByteReferenceSampleBuffers_cold_1(&v8);
    return v8;
  }
}

uint64_t remoteSampleGenerator_DeadConnectionCallback(const void *a1)
{
  *(CMBaseObjectGetDerivedStorage() + 8) = 1;
  v2 = CFGetTypeID(a1);
  result = FigSampleGeneratorGetTypeID();
  if (v2 == result)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    FigSimpleMutexLock();
    v5 = *(DerivedStorage + 24);
    if (v5)
    {
      CFDictionaryApplyFunction(v5, remoteSampleGenerator_markSampleBufferDataFailed, 0);
      CFDictionaryRemoveAllValues(*(DerivedStorage + 24));
    }

    return FigSimpleMutexUnlock();
  }

  return result;
}

__CFString *remoteSampleGenerator_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " SERVER DIED";
  }

  else
  {
    v6 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSampleGeneratorRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s>", a1, v5, *DerivedStorage, v6);
  return Mutable;
}

uint64_t remoteSampleGenerator_CreateSampleBufferAtCursor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, __int128 a9, uint64_t a10, CFTypeRef *a11)
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v19 = a10;
  SampleBuffer = remoteSampleGenerator_createSampleBuffer(a1, v13, 0, a11);
  FigXPCRemoteClientKillServerOnTimeout();
  return SampleBuffer;
}

uint64_t remoteSampleGeneratorBatch_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteSampleGeneratorBatch_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

void *CreateSampleBufferRequestor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = malloc_type_calloc(1uLL, 0x20uLL, 0x10E00403B2942D6uLL);
  v9 = v8;
  if (v8)
  {
    *v8 = a2;
    v8[1] = a1;
    v8[2] = a3;
    v8[3] = a4;
  }

  else
  {
    CreateSampleBufferRequestor_cold_1();
  }

  return v9;
}

uint64_t remoteSampleGenerator_createSampleBufferGeneratorRequestXPCMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = 403;
    goto LABEL_16;
  }

  if (!a4)
  {
    v7 = 404;
    goto LABEL_16;
  }

  *(a4 + 16) = *(a1 + 24);
  *a4 = *(a1 + 8);
  *(a4 + 20) = *(a1 + 36);
  if (!a2)
  {
    v7 = 412;
    goto LABEL_16;
  }

  if (FigSampleCursorXPCRemoteGetObjectID(a2, a4 + 32) || !*(a4 + 32))
  {
    v7 = 414;
LABEL_16:
    remoteSampleGenerator_createSampleBufferGeneratorRequestXPCMessage_cold_1(v7, &v8);
    return v8;
  }

  if (a3 && (FigSampleCursorXPCRemoteGetObjectID(a3, a4 + 40) || !*(a4 + 40)))
  {
    v7 = 418;
    goto LABEL_16;
  }

  return 0;
}

uint64_t remoteSampleGenerator_GetObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    remoteSampleGenerator_GetObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *v4;
  }

  return result;
}

__CFString *remoteSampleGeneratorBatch_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  v6 = "open";
  v7 = *(DerivedStorage + 28);
  if (v7 > 1)
  {
    v6 = "completed";
  }

  if (v7 == 1)
  {
    v6 = "committed";
  }

  if (*(DerivedStorage + 8))
  {
    v8 = " SERVER DIED";
  }

  else
  {
    v8 = "";
  }

  CFStringAppendFormat(Mutable, 0, @"<FigSampleGeneratorBatchRemote(XPC) %p retainCount: %ld ObjectID: %016llx%s State: %s(%d)", a1, v5, *DerivedStorage, v8, v6, v7);
  return Mutable;
}

uint64_t remoteSampleGeneratorBatch_removeListener(uint64_t a1, uint64_t a2)
{
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();

  return FigNotificationCenterRemoveWeakListener();
}

uint64_t remoteSampleGeneratorBatch_completionCallback(uint64_t a1, uint64_t a2, uint64_t a3, opaqueCMSampleBuffer *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  CMNotificationCenterGetDefaultLocalCenter();
  FigNotificationCenterRemoveWeakListener();
  FigSimpleMutexLock();
  if (FigCFEqual())
  {
    statusOut = 0;
    HasDataFailed = CMSampleBufferHasDataFailed(a4, &statusOut);
    v7 = statusOut;
    v8 = CMBaseObjectGetDerivedStorage();
    if (v7 != -16751 || HasDataFailed == 0)
    {
      v10 = 3;
    }

    else
    {
      v10 = 4;
    }

    *(v8 + 28) = v10;
  }

  CFSetRemoveValue(*(DerivedStorage + 40), a4);
  if (!CFSetGetCount(*(DerivedStorage + 40)))
  {
    if ((*(DerivedStorage + 28) - 3) >= 2)
    {
      *(CMBaseObjectGetDerivedStorage() + 28) = 2;
    }

    CMNotificationCenterGetDefaultLocalCenter();
    CMNotificationCenterPostNotification();
  }

  return FigSimpleMutexUnlock();
}

uint64_t remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CMSampleBufferRef *a12)
{
  sbuf = 0;
  if (!a1)
  {
    remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_5(&v33);
LABEL_17:
    v22 = v33;
    goto LABEL_14;
  }

  if (!a12)
  {
    remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_4(&v33);
    goto LABEL_17;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSimpleMutexLock();
  if (*(DerivedStorage + 28))
  {
    remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_1(&v33);
  }

  else
  {
    v24[0] = a2;
    v24[1] = a3;
    v24[2] = a4;
    v25 = a5;
    v26 = a6;
    v27 = a7;
    v28 = a8;
    v30 = a10;
    v29 = a9;
    v31 = a11;
    if (remoteSampleGenerator_createSampleBuffer(*(DerivedStorage + 32), v24, a1, &sbuf) || (v21 = sbuf) == 0)
    {
      remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_3(&v33);
    }

    else
    {
      if (!*(DerivedStorage + 24))
      {
LABEL_9:
        if (!CMSampleBufferDataIsReady(v21))
        {
          CFSetAddValue(*(DerivedStorage + 40), sbuf);
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
          CMNotificationCenterGetDefaultLocalCenter();
          FigNotificationCenterAddWeakListener();
        }

        v22 = 0;
        *a12 = sbuf;
        sbuf = 0;
        goto LABEL_12;
      }

      if (CMSampleBufferDataIsReady(sbuf))
      {
        v21 = sbuf;
        goto LABEL_9;
      }

      remoteSampleGeneratorBatch_CreateAndAddSampleBufferAtCursor_cold_2(&v33);
    }
  }

  v22 = v33;
LABEL_12:
  FigSimpleMutexUnlock();
  if (sbuf)
  {
    CFRelease(sbuf);
  }

LABEL_14:
  FigXPCRemoteClientKillServerOnTimeout();
  return v22;
}

uint64_t remoteSampleGeneratorBatch_GetState(uint64_t a1, _DWORD *a2)
{
  if (a1)
  {
    v2 = 0;
    *a2 = *(CMBaseObjectGetDerivedStorage() + 28);
  }

  else
  {
    remoteSampleGeneratorBatch_GetState_cold_1(&v4);
    v2 = v4;
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

void FigMediaProcessorCreateForCustom(const __CFAllocator *a1, const __CFString *a2, uint64_t a3, uint64_t a4, const void *a5, void *a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, unsigned int a13, uint64_t *a14)
{
  v38 = 0;
  v36 = 0;
  cf = 0;
  v35 = 0;
  if ((a5 == 0) != (a6 != 0))
  {
    v15 = v14;
    v16 = 88;
LABEL_9:

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 4294954516, "(Fig)", v16, v15, a7, a8);
    return;
  }

  if (!a9)
  {
    v15 = v14;
    v16 = 90;
    goto LABEL_9;
  }

  FigSampleBufferProcessorCreateForCustom(a1, a2, a3, a4, &v38);
  if (!v22)
  {
    v23 = *MEMORY[0x1E695E480];
    if (a5)
    {
      FigSampleBufferProviderCreateForBufferQueue(v23, a5, &cf);
      if (v24)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v25 = *a7;
      v34 = *(a7 + 16);
      v26 = a8[1];
      v30 = *a8;
      v31 = v26;
      v32 = a8[2];
      v33 = v25;
      if (FigSampleBufferProviderCreateForVisualContext(v23, a6, &v33, &v30, &cf))
      {
        goto LABEL_14;
      }
    }

    v30 = *a10;
    *&v31 = *(a10 + 16);
    v33 = *a11;
    v34 = *(a11 + 16);
    FigSampleBufferConsumerCreateForBufferQueue(a9, &v30, &v33, &v36);
    if (!v27)
    {
      if (a12)
      {
        FigActivitySchedulerCreateForCFRunLoop(a1, a12, &v35);
        if (v28)
        {
          goto LABEL_14;
        }
      }

      else
      {
        FigActivitySchedulerCreateForNewThread(a1, a13, @"com.apple.coremedia.mediaprocessor.videocustom", &v35);
        if (v29)
        {
          goto LABEL_14;
        }
      }

      FigMediaProcessorCreate(a1, v38, cf, v36, v35, a14);
    }
  }

LABEL_14:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v38)
  {
    CFRelease(v38);
  }

  if (v36)
  {
    CFRelease(v36);
  }
}

uint64_t FigSampleBufferProcessorCreateCustomProcessors(CFStringRef theString, __CFArray **a2)
{
  v3 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @",");
  if (ArrayBySeparatingStrings)
  {
    v5 = ArrayBySeparatingStrings;
    Count = CFArrayGetCount(ArrayBySeparatingStrings);
    if (Count)
    {
      v7 = Count;
      Mutable = CFArrayCreateMutable(v3, Count, MEMORY[0x1E695E9C0]);
      if (v7 >= 1)
      {
        for (i = 0; i != v7; ++i)
        {
          value = 0;
          ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
          if (CFEqual(ValueAtIndex, @"monochrome"))
          {
            FigSampleBufferProcessorCreateForMonochrome(v3, &value);
          }

          if (value)
          {
            CFArrayAppendValue(Mutable, value);
            CFRelease(value);
          }
        }
      }

      if (Mutable)
      {
        if (CFArrayGetCount(Mutable) < 1)
        {
          *a2 = 0;
          CFRelease(Mutable);
        }

        else
        {
          *a2 = Mutable;
        }
      }
    }

    CFRelease(v5);
  }

  return 0;
}

void FigSampleBufferProcessorCreateForCustom(int a1, const __CFString *cf1, uint64_t a3, uint64_t a4, void *a5)
{
  v15 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (CFEqual(cf1, @"monochrome"))
  {
    FigSampleBufferProcessorCreateForMonochrome(*MEMORY[0x1E695E480], &v11);
  }

  else
  {
    if (!CFStringGetCString(cf1, buffer, 1024, 0x8000100u) || (snprintf(__str, 0x400uLL, "%s/%s.videoprocessor", "/System/Library/VideoProcessors", buffer), snprintf(__symbol, 0x400uLL, "%s%s", "FigSampleBufferProcessorCreateFor", buffer), (v9 = dlopen(__str, 4)) == 0) || (v10 = dlsym(v9, __symbol)) == 0)
    {
      v8 = v11;
      goto LABEL_9;
    }

    v10(*MEMORY[0x1E695E480], a3, &v11);
  }

  v8 = v11;
LABEL_9:
  *a5 = v8;
}

CFURLRef FigFairPlayCopyDefaultKeybagFolderURL()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = getuid();
  v1 = getpwuid(v0);
  if (v1)
  {
    snprintf(__str, 0x400uLL, "%s/Media/iTunes_Control/iTunes/", v1->pw_dir);
    v2 = *MEMORY[0x1E695E480];
    v3 = strlen(__str);
    result = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x1E695E480], __str, v3, 1u);
    if (result)
    {
      return result;
    }
  }

  else
  {
    v2 = *MEMORY[0x1E695E480];
  }

  return CFURLCreateWithFileSystemPath(v2, @"/", kCFURLPOSIXPathStyle, 1u);
}

__CFString *FigFairPlayCopyAbsolutePathFromURL(const __CFURL *a1)
{
  if (a1 && (v1 = CFURLCopyAbsoluteURL(a1)) != 0)
  {
    v2 = v1;
    v3 = CFURLCopyFileSystemPath(v1, kCFURLPOSIXPathStyle);
    CFRelease(v2);
  }

  else
  {
    v3 = 0;
  }

  if (v3)
  {
    return v3;
  }

  else
  {
    return @"/";
  }
}

CFDictionaryRef FigFairPlayCopySinfExtensionsFromFormatDescription(const opaqueCMFormatDescription *a1)
{
  v41[1] = *MEMORY[0x1E69E9840];
  Extension = CMFormatDescriptionGetExtension(a1, *MEMORY[0x1E69600A0]);
  if (!Extension)
  {
    goto LABEL_34;
  }

  v3 = Extension;
  v4 = CFGetTypeID(Extension);
  if (v4 != CFDictionaryGetTypeID())
  {
    goto LABEL_34;
  }

  values = 0;
  v41[0] = 0;
  keys = 0;
  v39 = 0;
  Value = CFDictionaryGetValue(v3, @"sinf");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFDataGetTypeID()))
  {
    p_keys = &v39;
    p_values = v41;
    v8 = CFDataGetLength(v6) + 8;
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v8);
    CFDataIncreaseLength(Mutable, v8);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    *MutableBytePtr = bswap32(v8);
    *(MutableBytePtr + 1) = 1718511987;
    BytePtr = CFDataGetBytePtr(v6);
    Length = CFDataGetLength(v6);
    memcpy(MutableBytePtr + 8, BytePtr, Length);
    values = Mutable;
    v36 = 1;
    numValues = 1;
    keys = @"sinf";
  }

  else
  {
    v36 = 0;
    numValues = 0;
    p_values = &values;
    p_keys = &keys;
  }

  v13 = 0;
  v14 = 1;
  do
  {
    v15 = v14;
    v16 = *(&off_1E748FE90 + v13);
    v17 = CFDictionaryGetValue(v3, v16);
    if (v17)
    {
      v18 = v17;
      v19 = CFGetTypeID(v17);
      if (v19 == CFDataGetTypeID() && CFDataGetLength(v18) >= 0x10)
      {
        v20 = CFDataGetBytePtr(v18);
        if (*v20 == 0xA7458277191E8547 && *(v20 + 1) == 0x65FB4846FF1A9E8FLL)
        {
          v25 = CFDataGetLength(v18) + 8;
          v22 = *MEMORY[0x1E695E480];
          v26 = CFDataCreateMutable(*MEMORY[0x1E695E480], v25);
          CFDataIncreaseLength(v26, v25);
          v27 = CFDataGetMutableBytePtr(v26);
          *v27 = bswap32(v25);
          *(v27 + 1) = bswap32(*&aDiuudiuufnisih[4 * v13]);
          v28 = CFDataGetBytePtr(v18);
          v29 = CFDataGetLength(v18);
          memcpy(v27 + 8, v28, v29);
          *p_keys = CFRetain(v16);
          *p_values = v26;
          v23 = numValues + 1;
          goto LABEL_20;
        }
      }
    }

    v14 = 0;
    v13 = 1;
  }

  while ((v15 & 1) != 0);
  if (!v36)
  {
    v24 = 0;
    v23 = numValues;
    goto LABEL_21;
  }

  v22 = *MEMORY[0x1E695E480];
  v23 = numValues;
LABEL_20:
  v24 = CFDictionaryCreate(v22, &keys, &values, v23, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
LABEL_21:
  if (v23 >= 1)
  {
    v30 = v23 + 1;
    v31 = &v41[v23 - 2];
    do
    {
      if (*v31)
      {
        CFRelease(*v31);
      }

      --v30;
      --v31;
    }

    while (v30 > 1);
  }

  if (!v24)
  {
LABEL_34:
    if (CMFormatDescriptionGetMediaType(a1) == 1936684398 && (values = 0, (MagicCookie = CMAudioFormatDescriptionGetMagicCookie(a1, &values)) != 0))
    {
      return FigFairPlayCopySinfExtensionsFromAtomContainer(MagicCookie, values);
    }

    else
    {
      return 0;
    }
  }

  return v24;
}

CFDictionaryRef FigFairPlayCopySinfExtensionsFromAtomContainer(const UInt8 *a1, uint64_t a2)
{
  values[2] = *MEMORY[0x1E69E9840];
  values[0] = 0;
  values[1] = 0;
  keys[0] = 0;
  keys[1] = 0;
  if (FigAtomStreamInitWithMemoryBlock())
  {
    return 0;
  }

  if (FigAtomStreamPositionAtFirstAtomWithType() || FigAtomStreamGetCurrentAtomGlobalOffset())
  {
    v3 = 0;
  }

  else
  {
    keys[0] = @"sinf";
    values[0] = CFDataCreate(*MEMORY[0x1E695E480], a1, 0);
    v3 = 1;
  }

  if (!FigAtomStreamPositionAtFirstAtomWithType())
  {
    FigAtomStreamGetCurrentAtomGlobalOffset();
  }

  if (!FigAtomStreamPositionAtFirstAtomWithType())
  {
    FigAtomStreamGetCurrentAtomUUIDType();
  }

  if (!v3)
  {
    return 0;
  }

  v4 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 2;
  v6 = values;
  do
  {
    if (*v6)
    {
      CFRelease(*v6);
    }

    --v5;
    --v6;
  }

  while (v5 > 1);
  return v4;
}

const void *FigFairPlayGetBestSinfFromSinfExtensions(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, @"UUID"))
  {
    v2 = @"UUID";
  }

  else
  {
    v2 = @"uuid";
  }

  result = CFDictionaryGetValue(a1, v2);
  if (!result)
  {
    result = CFDictionaryGetValue(a1, @"sinf");
    if (!result)
    {
      result = CFDictionaryGetValue(a1, @"pinf");
      if (!result)
      {

        return CFDictionaryGetValue(a1, @"dpInfo");
      }
    }
  }

  return result;
}

const void *FigFairPlayGetExtendedSinfFromSinfExtensions(const __CFDictionary *a1)
{
  if (CFDictionaryContainsKey(a1, @"UUID"))
  {
    v2 = @"UUID";
  }

  else
  {
    v2 = @"uuid";
  }

  return CFDictionaryGetValue(a1, v2);
}

uint64_t FigFairPlayGetSkipParametersFromSinf(const __CFDictionary *a1, _DWORD *a2)
{
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (BestSinfFromSinfExtensions)
  {
    v4 = BestSinfFromSinfExtensions;
    v18 = 0;
    BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
    Length = CFDataGetLength(v4);
    hZZRqgZwI(BytePtr, Length, 19, &v18);
    result = FAIRPLAY_CALL_LOG(v7);
    if (result)
    {
      v9 = 0;
LABEL_7:
      v10 = 0;
      goto LABEL_8;
    }

    v9 = v18;
    v12 = CFDataGetBytePtr(v4);
    v13 = CFDataGetLength(v4);
    hZZRqgZwI(v12, v13, 20, &v18);
    result = FAIRPLAY_CALL_LOG(v14);
    if (result)
    {
      goto LABEL_7;
    }

    v10 = v18;
    v15 = CFDataGetBytePtr(v4);
    v16 = CFDataGetLength(v4);
    hZZRqgZwI(v15, v16, 21, &v18);
    result = FAIRPLAY_CALL_LOG(v17);
    if (result)
    {
LABEL_8:
      v11 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_9;
    }

    v11 = v18;
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    result = 4294955146;
    if (!a2)
    {
      return result;
    }
  }

LABEL_9:
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  return result;
}

uint64_t FigFairPlayGetMediaKindFromSinf(const __CFDictionary *a1, uint64_t *a2)
{
  v13 = 0;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (!BestSinfFromSinfExtensions)
  {
    v12 = 0;
    result = 4294955146;
    if (!a2)
    {
      return result;
    }

    goto LABEL_9;
  }

  v4 = BestSinfFromSinfExtensions;
  BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
  Length = CFDataGetLength(v4);
  hZZRqgZwI(BytePtr, Length, 11, &v13);
  LODWORD(result) = FAIRPLAY_CALL_LOG(v7);
  v9 = result == 0;
  v10 = v13 == 0;
  v11 = !v9 || !v10;
  if (v9 && v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = v13;
  }

  if (v11)
  {
    result = result;
  }

  else
  {
    result = 0;
  }

  if (a2)
  {
LABEL_9:
    *a2 = v12;
  }

  return result;
}

uint64_t FigFairPlayGetSchemeFromSinf(const __CFDictionary *a1, unsigned int *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"sinf");
  if (Value)
  {
    v5 = Value;
    v15 = 0;
    v16[0] = 0x7363686D73696E66;
    v14 = 0;
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(v5);
    result = FigFairPlayGetSinfChildDataWithPath(BytePtr, Length, v16, 2, &v15, &v14);
    if (result)
    {
      v9 = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_20;
    }

    if (v14 != 12)
    {
      v9 = 0;
      result = 4294925279;
      if (!a2)
      {
        return result;
      }

      goto LABEL_20;
    }

    result = 0;
    v9 = bswap32(*(v15 + 4));
    if (a2)
    {
LABEL_20:
      *a2 = v9;
    }
  }

  else
  {
    if (CFDictionaryContainsKey(a1, @"UUID"))
    {
      v10 = @"UUID";
    }

    else
    {
      v10 = @"uuid";
    }

    v11 = CFDictionaryGetValue(a1, v10);
    if (v11 && (v12 = v11, CFDataGetLength(v11) >= 0x18))
    {
      v13 = CFDataGetBytePtr(v12);
      if (*(v13 + 1) ^ 0xA7458277191E8547 | *(v13 + 2) ^ 0x65FB4846FF1A9E8FLL)
      {
        v9 = 0;
      }

      else
      {
        v9 = 1769239918;
      }
    }

    else
    {
      v9 = 0;
    }

    result = 4294955146;
    if (a2)
    {
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t FigFairPlayGetSinfChildDataWithPath(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  result = 4294955146;
  if (a1)
  {
    if (a3)
    {
      result = FigAtomStreamInitWithMemoryBlock();
      if (!result)
      {
        result = FigAtomStreamPositionViaAtomPath();
        if (!result)
        {
          result = FigAtomStreamGetCurrentAtomTypeAndDataLength();
          if (!result)
          {
            result = FigAtomStreamGetCurrentAtomDataGlobalOffset();
            if (!result)
            {
              if (a5)
              {
                *a5 = a1;
              }

              result = 0;
              if (a6)
              {
                *a6 = 0;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t FigFairPlayIsRentalSinf(const __CFDictionary *a1, BOOL *a2)
{
  v9 = 1;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (BestSinfFromSinfExtensions)
  {
    v4 = BestSinfFromSinfExtensions;
    BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
    Length = CFDataGetLength(v4);
    hZZRqgZwI(BytePtr, Length, 14, &v9);
    result = FAIRPLAY_CALL_LOG(v7);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 4294955146;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v9 != 0;
  return result;
}

uint64_t FigFairPlayIsHDCPRequiredSinf(const __CFDictionary *a1, BOOL *a2)
{
  v13 = 4;
  v12 = 0x40000000;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (BestSinfFromSinfExtensions)
  {
    v4 = BestSinfFromSinfExtensions;
    BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
    Length = CFDataGetLength(v4);
    hZZRqgZwI(BytePtr, Length, 15, &v13);
    result = FAIRPLAY_CALL_LOG(v7);
    if (!result)
    {
      v9 = CFDataGetBytePtr(v4);
      v10 = CFDataGetLength(v4);
      hZZRqgZwI(v9, v10, 12, &v12);
      result = FAIRPLAY_CALL_LOG(v11);
    }
  }

  else
  {
    result = 4294955146;
  }

  if (a2)
  {
    *a2 = v12 != 0;
  }

  return result;
}

uint64_t FigFairPlayIsLowValueSinf(const __CFDictionary *a1, BOOL *a2)
{
  v9 = 0;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (BestSinfFromSinfExtensions)
  {
    v4 = BestSinfFromSinfExtensions;
    BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
    Length = CFDataGetLength(v4);
    hZZRqgZwI(BytePtr, Length, 16, &v9);
    result = FAIRPLAY_CALL_LOG(v7);
    if (!a2)
    {
      return result;
    }
  }

  else
  {
    result = 4294955146;
    if (!a2)
    {
      return result;
    }
  }

  *a2 = v9 != 0;
  return result;
}

uint64_t FigFairPlayIsSkipEncrypted(const __CFDictionary *a1, BOOL *a2)
{
  v9 = 0;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (!BestSinfFromSinfExtensions)
  {
    return 4294955146;
  }

  v4 = BestSinfFromSinfExtensions;
  BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
  Length = CFDataGetLength(v4);
  hZZRqgZwI(BytePtr, Length, 13, &v9);
  result = FAIRPLAY_CALL_LOG(v7);
  if (a2)
  {
    if (!result)
    {
      *a2 = v9 == 3;
    }
  }

  return result;
}

uint64_t FigFairPlayIsPreviewEncrypted(const __CFDictionary *a1, BOOL *a2)
{
  v9 = 0;
  BestSinfFromSinfExtensions = FigFairPlayGetBestSinfFromSinfExtensions(a1);
  if (!BestSinfFromSinfExtensions)
  {
    return 4294955146;
  }

  v4 = BestSinfFromSinfExtensions;
  BytePtr = CFDataGetBytePtr(BestSinfFromSinfExtensions);
  Length = CFDataGetLength(v4);
  hZZRqgZwI(BytePtr, Length, 1, &v9);
  result = FAIRPLAY_CALL_LOG(v7);
  if (a2)
  {
    if (!result)
    {
      *a2 = v9 == 0;
    }
  }

  return result;
}

uint64_t FigFairPlayIsPlaceholder(const __CFDictionary *a1, BOOL *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *"fnisihcsresu";
  v10 = 1970496882;
  Value = CFDictionaryGetValue(a1, @"sinf");
  if (!Value)
  {
    v7 = 0;
    if (!a2)
    {
      return 0;
    }

    goto LABEL_3;
  }

  v4 = Value;
  BytePtr = CFDataGetBytePtr(Value);
  Length = CFDataGetLength(v4);
  v7 = FigFairPlayGetSinfChildDataWithPath(BytePtr, Length, &v9, 3, 0, 0) != 0;
  if (a2)
  {
LABEL_3:
    *a2 = v7;
  }

  return 0;
}

uint64_t FigFairPlayGetSinfExtensionType(const __CFDictionary *a1, int *a2)
{
  if (!a1)
  {
    return 4294955146;
  }

  if (!a2)
  {
    return 0;
  }

  if (CFDictionaryContainsKey(a1, @"sinf") || CFDictionaryContainsKey(a1, @"UUID") || CFDictionaryContainsKey(a1, @"uuid"))
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (CFDictionaryContainsKey(a1, @"dpInfo") != 0);
  }

  result = 0;
  *a2 = v4;
  return result;
}

CFTypeRef FigFairPlayCopyDisposeStorageAllocator()
{
  MEMORY[0x19A8D3660](&sFairPlayDisposeStorageAllocatorContextOnce, FigFairPlayInitFairPlayDisposeStorageAllocatorContext);
  result = sFairPlayDisposeStorageAllocator;
  if (sFairPlayDisposeStorageAllocator)
  {

    return CFRetain(result);
  }

  return result;
}

CFAllocatorRef FigFairPlayInitFairPlayDisposeStorageAllocatorContext()
{
  v1.reallocate = 0;
  memset(&v1, 0, 40);
  v1.allocate = FigFairPlayDisposeStorageAllocatorAllocateCallback;
  v1.deallocate = FigFairPlayDisposeStorageAllocatorDeallocateCallback;
  v1.preferredSize = 0;
  result = CFAllocatorCreate(*MEMORY[0x1E695E480], &v1);
  sFairPlayDisposeStorageAllocator = result;
  return result;
}

uint64_t FigCFKBCryptRefRegisterClass(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

uint64_t FigCFKBCryptRefCreate(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_92 != -1)
  {
    FigCFKBCryptRefCreate_cold_1();
  }

  result = _CFRuntimeCreateInstance();
  *(result + 16) = a2;
  return result;
}

uint64_t FigFairPlayDisposeStorageAllocatorDeallocateCallback(uint64_t a1)
{
  v1 = jEHf8Xzsv8K(a1);

  return FAIRPLAY_CALL_LOG(v1);
}

uint64_t FigCFKBCryptRefFinalize(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    v2 = Hz73b(result);

    return FAIRPLAY_CALL_LOG(v2);
  }

  return result;
}

void FigAssetCacheInspectorStartServer(uint64_t a1)
{
  if (FigServer_IsMediaparserd())
  {
    fig_log_get_emitter();
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 1, assetCacheInspectorServer_handleRemoteMessage, 0);
  }

  else
  {
    FigServer_IsMediaplaybackd();
    FigXPCServerStart();
  }
}

void FreeAVITrackArray(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      if (*(a1 + 48) >= 1)
      {
        v3 = 0;
        v4 = 0;
        do
        {
          TearDownPerTrackInfo(*(a1 + 64) + v3);
          ++v4;
          v3 += 108;
        }

        while (v4 < *(a1 + 48));
        v2 = *(a1 + 64);
      }

      free(v2);
      *(a1 + 64) = 0;
      *(a1 + 48) = 0;
    }
  }
}

void TearDownPerTrackInfo(uint64_t a1)
{
  if (a1)
  {
    FigFormatDescriptionRelease();
    *(a1 + 8) = 0;
    free(*(a1 + 100));
    *(a1 + 100) = 0;
    *(a1 + 92) = 0;
  }
}

void ProcessChildRIFFAtoms(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = 0;
  v7 = (a2 + 8);
  do
  {
    if (RIFFAtomStreamGetCurrentAtomTypeAndDataLength(a1, &v14, 0))
    {
      break;
    }

    if (a3 >= 1)
    {
      v8 = v7;
      v9 = v7;
      v10 = a3;
      while (1)
      {
        if (v14 == *(v9 - 2))
        {
          if (v14 != 1380533830 && v14 != 1279873876)
          {
            break;
          }

          v13 = 0;
          if (RIFFAtomStreamGetCurrentAtomLISTType(a1, &v13))
          {
            return;
          }

          if (*(v9 - 1) == v13)
          {
            break;
          }
        }

        v9 += 4;
        v8 += 4;
        if (!--v10)
        {
          goto LABEL_16;
        }
      }

      if ((*v9)(a1, a4))
      {
        break;
      }
    }

LABEL_16:
    RIFFAtomStreamAdvanceToNextAtom(a1);
  }

  while (!v12);
}

uint64_t Parse_idx1(uint64_t a1, uint64_t **a2)
{
  if (!(*a2)[6])
  {
    Parse_idx1_cold_2(&v19);
    v8 = 0;
    v2 = v19;
    goto LABEL_25;
  }

  if (!*(*a2 + 108))
  {
    v19 = 0;
    CurrentAtomTypeAndDataLength = RIFFAtomStreamGetCurrentAtomTypeAndDataLength(a1, 0, &v19);
    if (CurrentAtomTypeAndDataLength)
    {
      v2 = CurrentAtomTypeAndDataLength;
      v8 = 0;
    }

    else
    {
      v6 = v19;
      v7 = (*a2)[8];
      v8 = malloc_type_malloc(0x4000uLL, 0x1000040451B5BE8uLL);
      if (v8)
      {
        if (v6 < 0x10)
        {
LABEL_24:
          v2 = 0;
        }

        else
        {
          v9 = 0;
          v10 = v6 >> 4;
          while (1)
          {
            v11 = v10 >= 1024 ? 1024 : v10;
            RIFFAtomStreamReadCurrentAtomData(a1, v9, 16 * v11, v8);
            if (v12)
            {
              break;
            }

            if (v10 >= 1)
            {
              v13 = 0;
              while (1)
              {
                v14 = &v8[16 * v13];
                v15 = *a2;
                if (*v14 == *v7)
                {
                  goto LABEL_21;
                }

                v16 = v15[6];
                if (v16 >= 1)
                {
                  break;
                }

LABEL_22:
                if (++v13 == v11)
                {
                  goto LABEL_23;
                }
              }

              v17 = v15[8];
              while (*v17 != *v14)
              {
                v17 += 27;
                if (!--v16)
                {
                  goto LABEL_22;
                }
              }

              v7 = v17;
LABEL_21:
              v12 = AddChunkToTrack(v15[3], *(v14 + 2) + v15[4] + 16, *(v14 + 3), *(v14 + 1), v7);
              if (v12)
              {
                break;
              }

              goto LABEL_22;
            }

LABEL_23:
            v9 += 16 * v11;
            v10 -= v11;
            if (!v10)
            {
              goto LABEL_24;
            }
          }

          v2 = v12;
        }
      }

      else
      {
        Parse_idx1_cold_1(&v20);
        v2 = v20;
      }
    }

LABEL_25:
    free(v8);
    return v2;
  }

  return 0;
}

uint64_t Parse_strn(uint64_t a1)
{
  cf = 0;
  RIFFAtomStreamReadCurrentAtomDataAndCreateBBuf(a1, 0, 0, &cf);
  v2 = v1;
  if (cf)
  {
    CFRelease(cf);
  }

  return v2;
}

uint64_t AddChunkToTrack(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int *a5)
{
  if ((a3 & 0x80000000) != 0)
  {
    AddChunkToTrack_cold_6(&v30);
    return v30;
  }

  v7 = a3;
  v10 = a5[23];
  if (v10 == a5[24])
  {
    v11 = *(a5 + 25);
    if (!v11)
    {
      v17 = malloc_type_malloc(0x60000uLL, 0x1000040504FFAC1uLL);
      *(a5 + 25) = v17;
      if (!v17)
      {
        AddChunkToTrack_cold_5(&v30);
        return v30;
      }

      *(a5 + 23) = 0x400000000000;
      if (v7)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    v12 = v10 + 0x2000;
    v13 = malloc_type_realloc(v11, 24 * (v10 + 0x2000), 0x1000040504FFAC1uLL);
    if (!v13)
    {
      AddChunkToTrack_cold_1(&v30);
      return v30;
    }

    a5[24] = v12;
    *(a5 + 25) = v13;
  }

  if (v7)
  {
LABEL_7:
    v14 = a5[23];
    v15 = *(a5 + 25) + 24 * v14;
    *(v15 + 16) = a4;
    *v15 = a2;
    *(v15 + 8) = v7;
    v16 = a5[22];
    *(v15 + 20) = v16;
    goto LABEL_25;
  }

LABEL_10:
  if (a5[1] != 1986618469 || a5[23] < 1 || (v18 = *a5, v29 = 0, v30 = 0, (v19 = *(*(CMBaseObjectGetVTable() + 16) + 8)) == 0) || (!v19(a1, 8, a2 - 8, &v30, &v29) ? (v20 = v29 == 8) : (v20 = 0), v20 ? (v21 = HIDWORD(v30) == 0) : (v21 = 0), v21 ? (v22 = v30 == v18) : (v22 = 0), !v22 || (v14 = a5[23], v23 = *(a5 + 25) + 24 * v14, *(v23 + 16) = *(v23 - 8), v24 = *(v23 - 24), *v23 = v24, v16 = a5[22], *(v23 + 20) = v16, (v7 = DWORD2(v24)) == 0)))
  {
    AddChunkToTrack_cold_4(&v30);
    return v30;
  }

LABEL_25:
  a5[23] = v14 + 1;
  v25 = *(a5 + 17);
  if (v25)
  {
    v26 = v7 / v25;
    if (v26 <= 0)
    {
      AddChunkToTrack_cold_2(&v30);
      return v30;
    }
  }

  else
  {
    v26 = 1;
  }

  v27 = v26 + v16;
  if (!(v27 >> 31))
  {
    result = 0;
    a5[22] = v27;
    return result;
  }

  AddChunkToTrack_cold_3(&v30);
  return v30;
}

void OUTLINED_FUNCTION_1_125(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14)
{
  a13 = 0u;
  a14 = 0u;
  a11 = 0u;
  a12 = 0u;
  a9 = 0u;
  a10 = 0u;

  RIFFAtomStreamInitWithParent(a1, 0, &a9);
}

uint64_t AVIFormatReaderCreateFromStream(const void *a1, const __CFAllocator *a2, CFTypeRef *a3)
{
  FigFormatReaderGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    return v6;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (sRegisterAVIFileInfoTypeOnce != -1)
  {
    AVIFormatReaderCreateFromStream_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    AVIFormatReaderCreateFromStream_cold_2(&value);
    return value;
  }

  v9 = Instance;
  *(Instance + 24) = CFRetain(a1);
  Default = a2;
  if (!a2)
  {
    Default = CFAllocatorGetDefault();
  }

  *(v9 + 16) = CFRetain(Default);
  *DerivedStorage = v9;
  ParseAVIFile(v9);
  if (v6)
  {
    return v6;
  }

  v11 = *(*DerivedStorage + 6);
  if (v11)
  {
    DerivedStorage[1] = CFArrayCreateMutable(*MEMORY[0x1E695E480], v11, MEMORY[0x1E695E9C0]);
    v12 = *DerivedStorage;
    if (*(*DerivedStorage + 6) >= 1)
    {
      v13 = 0;
      do
      {
        value = 0;
        FigTrackReaderGetClassID();
        if (!CMDerivedObjectCreate())
        {
          v14 = CMBaseObjectGetDerivedStorage();
          *v14 = CFRetain(v12);
          *(v14 + 8) = v13;
          if (value)
          {
            CFArrayAppendValue(DerivedStorage[1], value);
            CFRelease(value);
          }
        }

        ++v13;
        v12 = *DerivedStorage;
      }

      while (v13 < *(*DerivedStorage + 6));
    }
  }

  v15 = 0;
  *a3 = 0;
  return v15;
}

uint64_t AVIFormatReaderConvertCodecElementsToMediaSubType(int a1, char *__s1, uint64_t a3, _DWORD *a4, int *a5, int *a6)
{
  if (a3)
  {
    if (a6)
    {
      result = 0;
      v7 = 8;
LABEL_4:
      *a6 = v7;
      return result;
    }

    return 0;
  }

  if (!__s1)
  {
    if (a6)
    {
      result = 0;
      v7 = 4;
      goto LABEL_4;
    }

    return 0;
  }

  if (!a1)
  {
    return FigAudioFormatReaderConvertCodecElementsToMediaSubType(1463899717, a1, __s1, 0, a4, a5, a6);
  }

  if (a1 != 1296715847)
  {
    if (*__s1 - 51 < 0xFFFFFFFD)
    {
      return 0;
    }

    return FigAudioFormatReaderConvertCodecElementsToMediaSubType(1463899717, a1, __s1, 0, a4, a5, a6);
  }

  if (a4)
  {
    *a4 = 1986618469;
  }

  if (a5)
  {
    *a5 = 1684890161;
  }

  if (a6)
  {
    *a6 = 0;
  }

  return 1;
}

void AVIFormatReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  v2 = *(DerivedStorage + 8);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 8) = 0;
  }
}

__CFString *AVIFormatReaderCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(*DerivedStorage + 24);
  if (v5)
  {
    v6 = CFCopyDescription(v5);
    CFStringAppendFormat(Mutable, 0, @"\tAVI FormatReader: stream<%@> trackCount<%d>", v6, *(*DerivedStorage + 48));
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    CFStringAppendFormat(Mutable, 0, @"\tAVI FormatReader: stream<%@> trackCount<%d>", 0, *(*DerivedStorage + 48));
  }

  return Mutable;
}

uint64_t AVIFormatReaderCopyProperty(uint64_t a1, const void *a2, const __CFAllocator *a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!a4)
  {
    AVIFormatReaderCopyProperty_cold_2(&v13);
    return LODWORD(v13.value);
  }

  if (!a2)
  {
    AVIFormatReaderCopyProperty_cold_1(&v13);
    return LODWORD(v13.value);
  }

  v8 = DerivedStorage;
  *a4 = 0;
  if (CFEqual(a2, @"Duration") || CFEqual(a2, @"NominalDuration"))
  {
    v13 = *(*v8 + 72);
    IdentityMatrixCFArray = CMTimeCopyAsDictionary(&v13, a3);
    goto LABEL_6;
  }

  if (CFEqual(a2, @"Identifier"))
  {
    v12 = kFigFormatReaderIdentifier_AVI;
LABEL_13:
    IdentityMatrixCFArray = CFRetain(*v12);
    goto LABEL_6;
  }

  if (CFEqual(a2, @"AccurateDurationIsKnown") || CFEqual(a2, @"SampleCursorTimeAccuracyIsExact"))
  {
    v12 = MEMORY[0x1E695E4D0];
    goto LABEL_13;
  }

  if (CFEqual(a2, @"PreferredRate") || CFEqual(a2, @"PreferredVolume"))
  {
    LODWORD(v13.value) = 1065353216;
    IdentityMatrixCFArray = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &v13);
  }

  else
  {
    if (!CFEqual(a2, @"MovieMatrix"))
    {
      return 4294954512;
    }

    IdentityMatrixCFArray = wvtt_CreateIdentityMatrixCFArray(a3);
  }

LABEL_6:
  v10 = IdentityMatrixCFArray;
  result = 0;
  *a4 = v10;
  return result;
}

uint64_t AVIFormatReaderGetTrackCount(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    result = 0;
    *a2 = *(*v4 + 48);
  }

  else
  {
    AVIFormatReaderGetTrackCount_cold_1(&v6);
    return v6;
  }

  return result;
}

void AVIFormatReaderCopyTrackByID(uint64_t a1, int a2, void *a3, _DWORD *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v9 = *(*DerivedStorage + 6);
  if (v9 < 1)
  {
LABEL_5:
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954453, "<<< FFR_AVI >>>", 1197, v4);
  }

  else
  {
    v10 = DerivedStorage;
    v11 = 0;
    v12 = 0;
    while (*(*(*DerivedStorage + 8) + v11) != a2)
    {
      ++v12;
      v11 += 108;
      if (v9 == v12)
      {
        goto LABEL_5;
      }
    }

    if (a3)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], v12);
      if (ValueAtIndex)
      {
        ValueAtIndex = CFRetain(ValueAtIndex);
      }

      *a3 = ValueAtIndex;
    }

    if (a4)
    {
      *a4 = *(*(*v10 + 8) + v11 + 4);
    }
  }
}

uint64_t AVIFormatReaderCopyTrackByType(uint64_t a1, uint64_t a2, int a3, void *a4, _DWORD *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = *(*DerivedStorage + 6);
  if (v10 < 1)
  {
    return 4294954453;
  }

  v11 = 0;
  v12 = 0;
  for (i = (*(*DerivedStorage + 8) + 4); *i != a3; i += 27)
  {
LABEL_6:
    if (v10 == ++v11)
    {
      return 4294954453;
    }
  }

  if (v12 != a2)
  {
    ++v12;
    goto LABEL_6;
  }

  if (a4)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(DerivedStorage[1], v11);
    if (ValueAtIndex)
    {
      ValueAtIndex = CFRetain(ValueAtIndex);
    }

    *a4 = ValueAtIndex;
  }

  result = 0;
  if (a5)
  {
    *a5 = *(i - 1);
  }

  return result;
}

uint64_t RegisterAVIFileInfoType()
{
  result = _CFRuntimeRegisterClass();
  sAVIFileInfoID = result;
  return result;
}

double InitAVIFileInfo(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

void FinalizeAVIFileInfo(uint64_t a1)
{
  FreeAVITrackArray(a1);
  v2 = *(a1 + 24);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    CFRelease(v3);
  }
}

void AVITrackReaderFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  *(DerivedStorage + 8) = -1;
}

__CFString *AVITrackReaderCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *DerivedStorage;
  if (*DerivedStorage)
  {
    v6 = *(DerivedStorage + 8);
    if (v6 != -1)
    {
      v7 = (*(v5 + 64) + 108 * v6);
      v8 = *(v5 + 24);
      if (v8)
      {
        v9 = CFCopyDescription(v8);
      }

      else
      {
        v9 = 0;
      }

      v11 = *v7;
      v10 = v7[1];
      v12 = HIBYTE(v10);
      v13 = BYTE2(v10);
      v14 = BYTE1(v10);
      v15 = v10;
      v16 = v7[22];
      v17 = *(v7 + 5);
      time.epoch = *(v7 + 9);
      *&time.value = v17;
      Seconds = CMTimeGetSeconds(&time);
      CFStringAppendFormat(Mutable, 0, @"\t AVITrackReader: stream<%@> trackType %c%c%c%c trackID %d contains %d samples media duration %1.3f seconds (%lld/%d)", v9, v12, v13, v14, v15, v11, v16, *&Seconds, *(v7 + 5), v7[7]);
      if (v9)
      {
        CFRelease(v9);
      }
    }
  }

  return Mutable;
}

uint64_t TrackIndexToTrack(uint64_t a1, unsigned int a2, void *a3)
{
  if (a1)
  {
    if ((a2 & 0x80000000) != 0 || *(a1 + 48) <= a2)
    {
      TrackIndexToTrack_cold_1(&v5);
      return v5;
    }

    else
    {
      result = 0;
      *a3 = *(a1 + 64) + 108 * a2;
    }
  }

  else
  {
    TrackIndexToTrack_cold_2(&v6);
    return v6;
  }

  return result;
}

CFDictionaryRef CreateDimensionDictionary(const __CFAllocator *a1, float a2, float a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = a3;
  valuePtr = a2;
  *keys = xmmword_1E748FEC0;
  v4 = *MEMORY[0x1E695E480];
  values = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloat32Type, &valuePtr);
  cf = CFNumberCreate(v4, kCFNumberFloat32Type, &v7);
  v5 = CFDictionaryCreate(a1, keys, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (values)
  {
    CFRelease(values);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v5;
}

double AVITrackReaderCopySampleCursorService(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!*DerivedStorage || (v5 = DerivedStorage, *(DerivedStorage + 8) == -1))
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954511, "<<< FFR_AVI >>>", 958, v2);
  }

  else
  {
    FigSampleCursorServiceGetClassID();
    if (CMDerivedObjectCreate())
    {
      return AVITrackReaderCopySampleCursorService_cold_1();
    }

    else
    {
      v6 = CMBaseObjectGetDerivedStorage();
      v8 = *v5;
      if (*v5)
      {
        v8 = CFRetain(v8);
      }

      *v6 = v8;
      *(v6 + 8) = *(v5 + 8);
      *a2 = 0;
    }
  }

  return result;
}

void AVICursorServiceFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  *(DerivedStorage + 8) = -1;
}

__CFString *AVICursorServiceCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  CFStringAppendFormat(Mutable, 0, @"<FigFormatReader_AVI_SampleCursorService %p>{ trackIndex %d }", a1, *(DerivedStorage + 8));
  return Mutable;
}

void ComputeSampleDeltaForDuration(uint64_t a1, CMTime *a2, int a3, int *a4, _BYTE *a5, char *a6)
{
  v11 = *(a1 + 52);
  v17 = *a2;
  CMTimeConvertScale(&v18, &v17, v11, kCMTimeRoundingMethod_RoundTowardZero);
  if ((v18.flags & 0x1D) == 1)
  {
    v12 = v18.value / *(a1 + 44) + a3;
    v13 = *(a1 + 88);
    if (v12 < v13)
    {
      v14 = 0;
      v15 = v12 >> 31;
      v16 = v12 & ~(v12 >> 31);
      goto LABEL_11;
    }

    LOBYTE(v15) = 0;
    goto LABEL_9;
  }

  if ((~v18.flags & 9) == 0)
  {
    v16 = 0;
    v14 = 0;
    LOBYTE(v15) = 1;
    goto LABEL_11;
  }

  if ((~v18.flags & 5) == 0)
  {
    LOBYTE(v15) = 0;
    v13 = *(a1 + 88);
LABEL_9:
    v16 = v13 - 1;
    v14 = 1;
    goto LABEL_11;
  }

  fig_log_get_emitter();
  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v17.value, v17.timescale, LODWORD(v17.epoch));
  v16 = 0;
  LOBYTE(v15) = 0;
  v14 = 0;
LABEL_11:
  *a4 = v16;
  if (a5)
  {
    *a5 = v15;
  }

  if (a6)
  {
    *a6 = v14;
  }
}

void CreateAVISampleCursor(void *a1, uint64_t a2, int32_t a3, void *a4)
{
  v21 = 0;
  *a4 = 0;
  v5 = *(a2 + 88);
  if (v5 <= a3)
  {
    CreateAVISampleCursor_cold_1(&v20);
  }

  else if (v5)
  {
    FigSampleCursorGetClassID();
    if (CMDerivedObjectCreate())
    {
      CreateAVISampleCursor_cold_2();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = CFRetain(a1);
      *(DerivedStorage + 8) = a2;
      *(DerivedStorage + 16) = a3;
      v11 = *(a2 + 60);
      *(DerivedStorage + 48) = *(a2 + 44);
      *(DerivedStorage + 64) = v11;
      v19 = *(a2 + 44);
      CMTimeMultiply(&v20, &v19, a3);
      *(DerivedStorage + 24) = v20;
      v12 = *(DerivedStorage + 8);
      v13 = *(v12 + 100);
      if (*(v13 + 20) <= a3)
      {
        v15 = *(v12 + 92);
        if (v15 < 2)
        {
          LODWORD(v17) = 1;
        }

        else
        {
          v16 = (v13 + 44);
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            v16 += 6;
            if (v18 > a3)
            {
              break;
            }

            if (v15 == ++v17)
            {
              LODWORD(v17) = v15;
              goto LABEL_16;
            }
          }
        }

        if (v17 > v15)
        {
          CreateAVISampleCursor_cold_3(&v20);
        }

        else
        {
LABEL_16:
          *(DerivedStorage + 20) = v17 - 1;
          *a4 = v21;
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v19.value, v19.timescale, LODWORD(v19.epoch));
      }
    }
  }

  else
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954454, "<<< FFR_AVI >>>", 622, v4);
  }
}

double AVISampleCursorFinalize(uint64_t a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    CFRelease(*DerivedStorage);
    *DerivedStorage = 0;
  }

  *(DerivedStorage + 8) = 0;
  result = 0.0;
  *(DerivedStorage + 16) = 0u;
  *(DerivedStorage + 32) = 0u;
  *(DerivedStorage + 48) = 0u;
  *(DerivedStorage + 64) = 0;
  return result;
}

__CFString *AVISampleCursorCopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = *(DerivedStorage + 8);
  v6 = *v5;
  CFStringAppendFormat(Mutable, 0, @"<AVI SampleCursor %p>{ sampleNum %d, Track ID %d (%c%c%c%c), Type %c%c%c%c }", a1, *(DerivedStorage + 16), v6, BYTE3(v6), BYTE2(v6), BYTE1(v6), v6, HIBYTE(v5[1]), BYTE2(v5[1]), BYTE1(v5[1]), v5[1]);
  return Mutable;
}

uint64_t AVISampleCursorCopyProperty(int a1, CFTypeRef cf1, uint64_t a3, void *a4)
{
  if (a4)
  {
    if (cf1)
    {
      *a4 = 0;
      if (CFEqual(cf1, @"CursorPlayableHorizon"))
      {
        return 4294954513;
      }

      else if (CFEqual(cf1, @"CursorPlayableThroughEndOfTrack"))
      {
        return 4294954513;
      }

      else
      {
        return 4294954512;
      }
    }

    else
    {
      AVISampleCursorCopyProperty_cold_1(&v6);
      return v6;
    }
  }

  else
  {
    AVISampleCursorCopyProperty_cold_2(&v7);
    return v7;
  }
}

uint64_t AVISampleCursorCopy(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  FigSampleCursorGetClassID();
  v4 = CMDerivedObjectCreate();
  if (v4)
  {
    AVISampleCursorCopy_cold_1();
  }

  else
  {
    v5 = CMBaseObjectGetDerivedStorage();
    *v5 = *DerivedStorage;
    v7 = *(DerivedStorage + 32);
    v6 = *(DerivedStorage + 48);
    v8 = *(DerivedStorage + 16);
    *(v5 + 64) = *(DerivedStorage + 64);
    *(v5 + 32) = v7;
    *(v5 + 48) = v6;
    *(v5 + 16) = v8;
    v9 = *v5;
    if (v9)
    {
      CFRetain(v9);
    }

    *a2 = 0;
  }

  return v4;
}

uint64_t AVISampleCursorCompareInDecodeOrder(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CMBaseObjectGetDerivedStorage();
  v4 = *(DerivedStorage + 16);
  v5 = *(v3 + 16);
  v6 = v4 < v5;
  v7 = v4 > v5;
  if (v6)
  {
    return -1;
  }

  else
  {
    return v7;
  }
}

uint64_t AVISampleCursorGetPresentationTimeStamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    *(a2 + 16) = *(DerivedStorage + 40);
    *a2 = v4;
  }

  return 0;
}

uint64_t AVISampleCursorGetDecodeTimeStamp(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 24);
    *(a2 + 16) = *(DerivedStorage + 40);
    *a2 = v4;
  }

  return 0;
}

uint64_t AVISampleCursorGetDuration(uint64_t a1, uint64_t a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(DerivedStorage + 48);
    *(a2 + 16) = *(DerivedStorage + 64);
    *a2 = v4;
  }

  return 0;
}

uint64_t AVISampleCursorGetDependencyInfo(uint64_t a1, BOOL *a2, _BYTE *a3, _DWORD *a4, _BYTE *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    *a2 = (*(*(*(DerivedStorage + 8) + 100) + 24 * *(DerivedStorage + 20) + 16) & 0x10) != 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  return 0;
}

void AVISampleCursorStepByDecodeTime(uint64_t a1, CMTime *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  time1 = *a2;
  time2 = **&MEMORY[0x1E6960CC0];
  if (CMTimeCompare(&time1, &time2))
  {
    v9 = 0;
    v8 = 0;
    time2.value = 0;
    v5 = *(DerivedStorage + 8);
    v6 = *(DerivedStorage + 16);
    time1 = *a2;
    ComputeSampleDeltaForDuration(v5, &time1, v6, &v9, &v8, &v8 + 1);
    if (!v7)
    {
      AVISampleCursorStepInDecodeOrderAndReportStepsTaken(a1, v9 - *(DerivedStorage + 16), &time2);
    }
  }
}

uint64_t AVISampleCursorCopySampleLocation(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v10 = DerivedStorage;
  if (a5)
  {
    *a5 = 0;
  }

  if (a4)
  {
    v11 = *(*DerivedStorage + 24);
    if (v11)
    {
      v11 = CFRetain(v11);
    }

    *a4 = v11;
  }

  v12 = *(v10 + 8);
  v13 = *(v12 + 68);
  if (v13)
  {
    if (a2)
    {
      v14 = *(v12 + 100) + 24 * *(v10 + 20);
      *a2 = *v14 + v13 * (*(v10 + 16) - *(v14 + 20));
    }

    if (!a3)
    {
      return 0;
    }

LABEL_16:
    *a3 = v13;
    return 0;
  }

  if (a2)
  {
    *a2 = *(*(v12 + 100) + 24 * *(v10 + 20));
  }

  if (a3)
  {
    v13 = *(*(v12 + 100) + 24 * *(v10 + 20) + 8);
    goto LABEL_16;
  }

  return 0;
}

uint64_t AVISampleCursorCopyChunkDetails(uint64_t a1, void *a2, void *a3, void *a4, void *a5, uint64_t *a6, void *a7, uint64_t a8, _BYTE *a9, _BYTE *a10)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v17 = DerivedStorage;
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    v18 = *(*DerivedStorage + 24);
    if (v18)
    {
      v18 = CFRetain(v18);
    }

    *a2 = v18;
  }

  if (a4)
  {
    *a4 = *(*(*(v17 + 8) + 100) + 24 * *(v17 + 20));
  }

  if (a5)
  {
    *a5 = *(*(*(v17 + 8) + 100) + 24 * *(v17 + 20) + 8);
  }

  if (a6)
  {
    v19 = *(v17 + 8);
    v20 = *(v19 + 68);
    if (v20)
    {
      v21 = *(*(v19 + 100) + 24 * *(v17 + 20) + 8) / v20;
    }

    else
    {
      v21 = 1;
    }

    *a6 = v21;
  }

  if (a7)
  {
    v22 = *(v17 + 8);
    if (*(v22 + 68))
    {
      v23 = (*(v17 + 16) - *(*(v22 + 100) + 24 * *(v17 + 20) + 20));
      if (v23 < 0)
      {
        AVISampleCursorCopyChunkDetails_cold_1(&v25);
        return v25;
      }
    }

    else
    {
      v23 = 0;
    }

    *a7 = v23;
  }

  if (a9)
  {
    *a9 = 1;
  }

  result = 0;
  if (a10)
  {
    *a10 = 1;
  }

  return result;
}

uint64_t AVISampleCursorCopyFormatDescription(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = *(*(DerivedStorage + 8) + 8);
    if (v4)
    {
      v4 = CFRetain(v4);
    }

    *a2 = v4;
  }

  return 0;
}

uint64_t AVISampleCursorStepInDecodeOrderAndReportStepsTaken(uint64_t a1, uint64_t a2, void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v6 = DerivedStorage;
  v7 = *(DerivedStorage + 16);
  if ((v7 ^ 0x7FFFFFFF) < a2)
  {
    v8 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  if (v7 < -a2)
  {
    v8 = 0;
    goto LABEL_6;
  }

  v8 = v7 + a2;
  if (v7 + a2 >= 0)
  {
LABEL_6:
    v9 = *(*(DerivedStorage + 8) + 88);
    if (v8 >= v9)
    {
      v10 = v9 - 1;
    }

    else
    {
      v10 = v8;
    }

    if (a3)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v10 = 0;
  if (a3)
  {
LABEL_10:
    *a3 = v10 - v7;
  }

LABEL_11:
  if (v10 != v7)
  {
    time = *(DerivedStorage + 48);
    CMTimeMultiply(&rhs, &time, v10 - v7);
    v24 = *(v6 + 24);
    CMTimeAdd(&time, &v24, &rhs);
    *(v6 + 24) = time;
  }

  *(v6 + 16) = v10;
  v11 = *(v6 + 8);
  if (!*(v11 + 68))
  {
    result = 0;
    *(v6 + 20) = v10;
    return result;
  }

  v12 = *(v6 + 20);
  v13 = *(v11 + 100);
  if (v10 >= *(v13 + 24 * v12 + 20))
  {
    v17 = v12;
    v18 = *(v11 + 92);
    if (v18 <= v12 + 1)
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = v18;
    }

    v20 = v19 - 1;
    --v12;
    v21 = v17 + 1;
    v22 = (v13 + 24 * v17 + 44);
    while (v21 < v18)
    {
      v23 = *v22;
      v22 += 6;
      ++v12;
      ++v21;
      if (v10 < v23)
      {
        goto LABEL_28;
      }
    }

    v12 = v20;
LABEL_28:
    if (v12 < 0)
    {
      AVISampleCursorStepInDecodeOrderAndReportStepsTaken_cold_2(&time);
    }

    else
    {
      if (v12 < v18)
      {
LABEL_30:
        result = 0;
        *(v6 + 20) = v12;
        return result;
      }

      AVISampleCursorStepInDecodeOrderAndReportStepsTaken_cold_1(&time);
    }
  }

  else
  {
    v14 = (v13 + 24 * v12 - 4);
    while (v12 > 0)
    {
      v15 = *v14;
      v14 -= 6;
      --v12;
      if (v10 >= v15)
      {
        goto LABEL_30;
      }
    }

    AVISampleCursorStepInDecodeOrderAndReportStepsTaken_cold_3(&time);
  }

  return LODWORD(time.value);
}

uint64_t OUTLINED_FUNCTION_1_126(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  v12 = *a1;
  v13 = *(a1 + 8);

  return TrackIndexToTrack(v12, v13, &a10);
}

double RIFFAtomStreamInitWithByteStream(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  number = 0;
  CMBaseObject = CMByteStreamGetCMBaseObject();
  v9 = *(*(CMBaseObjectGetVTable() + 8) + 48);
  if (v9)
  {
    v11 = *MEMORY[0x1E695FF78];
    v14 = 0;
    if (!v9(CMBaseObject, v11, 0, &number))
    {
      CFNumberGetValue(number, kCFNumberSInt64Type, &v14);
      CFRelease(number);
      if (a2 < 0 || (v12 = v14, v13 = &v14[-a2], v14 <= a2))
      {
        fig_log_get_emitter();
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v14, number, v16);
      }

      else
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
        *(a4 + 32) = 0u;
        *(a4 + 48) = 0u;
        *(a4 + 64) = 0u;
        *(a4 + 80) = 0u;
        *a4 = a3;
        *(a4 + 8) = a1;
        *(a4 + 16) = v12;
        *(a4 + 24) = ReadBytesFromByteStreamDataSource;
        *(a4 + 32) = ReadBBufFromByteStreamDataSource;
        *(a4 + 40) = a2;
        *(a4 + 48) = v13;
        return CommonRIFFStreamInitialization(a4);
      }
    }
  }

  return result;
}

uint64_t ReadBytesFromByteStreamDataSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 8);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

uint64_t ReadBBufFromByteStreamDataSource(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(*(CMBaseObjectGetVTable() + 16) + 32);
  if (!v10)
  {
    return 4294954514;
  }

  return v10(v9, a2, a3, a4, a5);
}

double CommonRIFFStreamInitialization(unsigned int *a1)
{
  v10 = 0;
  v3 = *(a1 + 5);
  v4 = *(a1 + 6) + v3;
  ReadRIFFHeader((a1 + 2), v3, v4, a1 + 16, a1 + 9, a1 + 22, &v10);
  if (!v6)
  {
    v7 = *(a1 + 9);
    if (v7 >= 8 && (*(a1 + 5) + v7) <= v4)
    {
      v9 = v10;
      *(a1 + 7) = v10;
      *(a1 + 10) = v7 - v9;
    }

    else
    {
      emitter = fig_log_get_emitter();

      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954952, "(Fig)", 148, v1);
    }
  }

  return result;
}

void RIFFAtomStreamInitWithParent(uint64_t a1, unint64_t a2, uint64_t a3)
{
  *a3 = 0;
  v4 = *(a1 + 8);
  *(a3 + 24) = *(a1 + 24);
  *(a3 + 8) = v4;
  v5 = *(a1 + 56) + *(a1 + 40);
  v6 = *(a1 + 80);
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  if (v6 >= a2)
  {
    v17 = 0;
    v13 = v6 + v5;
    ReadRIFFHeader(a3 + 8, v5 + a2, v6 + v5, (a3 + 64), (a3 + 72), (a3 + 88), &v17);
    if (v14)
    {
      return;
    }

    v15 = *(a3 + 72);
    if (v15 >= 8 && v15 + a2 + *(a3 + 40) <= v13)
    {
      v16 = v17;
      *(a3 + 56) = v17 + a2;
      *(a3 + 80) = v15 - v16;
      return;
    }

    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 4294954952;
    v10 = 229;
  }

  else
  {
    emitter = fig_log_get_emitter();
    v8 = v3;
    v9 = 4294954953;
    v10 = 214;
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, v9, "(Fig)", v10, v8);
}

uint64_t RIFFAtomStreamGetCurrentAtomTypeAndDataLength(uint64_t a1, _DWORD *a2, void *a3)
{
  if (a2)
  {
    *a2 = *(a1 + 64);
  }

  if (a3)
  {
    *a3 = *(a1 + 80);
  }

  return 0;
}

uint64_t RIFFAtomStreamGetCurrentAtomLISTType(uint64_t a1, _DWORD *a2)
{
  v2 = *(a1 + 64);
  if (v2 != 1380533830 && v2 != 1279873876)
  {
    return 4294954951;
  }

  result = 0;
  *a2 = *(a1 + 88);
  return result;
}

double RIFFAtomStreamReadCurrentAtomData(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  if (v5 <= a2 || a3 + a2 > v5)
  {
    emitter = fig_log_get_emitter();

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954955, "(Fig)", 366, v4);
  }

  else
  {
    v12 = 0;
    v9 = (*(a1 + 24))(a1 + 8, a3, *(a1 + 40) + a2 + *(a1 + 56), a4, &v12);
    if (!v9 && v12 != a3)
    {
      fig_log_get_emitter();
      return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, v12, v13);
    }
  }

  return result;
}

uint64_t RIFFAtomStreamGetCurrentAtomGlobalOffset(void *a1, void *a2, void *a3)
{
  if (a2)
  {
    *a2 = a1[7] + a1[5] - a1[9] + a1[10];
  }

  if (a3)
  {
    *a3 = a1[9];
  }

  return 0;
}

void RIFFAtomStreamReadCurrentAtomDataAndCreateBBuf(uint64_t a1, uint64_t a2, size_t a3, CMBlockBufferRef *a4)
{
  v5 = *(a1 + 80);
  if (v5 <= a2 || a3 + a2 > v5)
  {
    emitter = fig_log_get_emitter();

    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 4294954955, "(Fig)", 391, v4);
  }

  else
  {
    sourceBuffer = 0;
    v14 = 0;
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      v9 = v5 - a2;
    }

    if (!(*(a1 + 32))(a1 + 8, v9, *(a1 + 40) + a2 + *(a1 + 56), &sourceBuffer, &v14))
    {
      if (v14 == v9)
      {
        if (CMBlockBufferIsRangeContiguous(sourceBuffer, 0, v9))
        {
          *a4 = sourceBuffer;
        }

        else
        {
          blockBufferOut = 0;
          CMBlockBufferCreateContiguous(*MEMORY[0x1E695E480], sourceBuffer, *MEMORY[0x1E695E480], 0, 0, v9, 0, &blockBufferOut);
          v10 = sourceBuffer;
          *a4 = blockBufferOut;
          if (v10)
          {
            CFRelease(v10);
          }
        }
      }

      else
      {
        if (sourceBuffer)
        {
          CFRelease(sourceBuffer);
        }

        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v11, blockBufferOut, sourceBuffer);
      }
    }
  }
}

void RIFFAtomStreamAdvanceToNextAtom(void *a1)
{
  v1 = a1[6];
  v2 = a1[10] + a1[7];
  if (v2 != v1)
  {
    v14 = 0;
    v13 = 0;
    v12 = 0;
    v10 = 0;
    v4 = a1[5];
    v5 = v4 + v1;
    ReadRIFFHeader((a1 + 1), v4 + v2, v4 + v1, &v14, &v13, &v12, &v10);
    if (!v6)
    {
      v7 = v13;
      if (v13 >= 8 && (v13 + v2 + a1[5]) <= v5)
      {
        v8 = v14;
        *(a1 + 16) = v14;
        v9 = v10;
        a1[7] = &v10[v2];
        a1[9] = v7;
        a1[10] = v7 - v9;
        if (v8 == 1380533830 || v8 == 1279873876)
        {
          *(a1 + 22) = v12;
        }
      }

      else
      {
        fig_log_get_emitter();
        FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v10, v11, v13);
      }
    }
  }
}

uint64_t RegisterFigMutableMovieBaseType()
{
  CMBaseGetClassID();

  return FigBaseClassRegisterClass();
}

uint64_t FigMutableMovieGetTypeID()
{
  MEMORY[0x19A8D3660](&FigMutableMovieGetClassID_sRegisterFigMutableMovieBaseTypeOnce, RegisterFigMutableMovieBaseType);

  return CMBaseClassGetCFTypeID();
}

uint64_t FigMutableMovieCreateEmpty(int a1, __CFString *a2, int a3, uint64_t a4, CFTypeRef *a5, int a6, int a7, int a8)
{
  v47 = 0;
  var38[0] = 0;
  if (a5)
  {
    if (!a2)
    {
      a2 = @"com.apple.quicktime-movie";
    }

    createMutableMovieObject(a1, a2, a3, var38, &v47, a6, a7, a8, v41, v42, v43, v44, v45, cf, v47, var38[0], var38[1], var38[2], var38[3], var38[4], var38[5], var38[6], var38[7], var38[8]);
    if (v10)
    {
      v39 = v10;
      goto LABEL_44;
    }

    if (v47)
    {
      if (a4)
      {
        v45 = 0;
        cf = 0;
        v43 = 0;
        v44 = 0;
        v42 = 0;
        v11 = *MEMORY[0x1E695E480];
        FigFormatReaderGetFigBaseObject();
        v13 = v12;
        v14 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v14)
        {
          v14(v13, @"PreferredVolume", v11, &cf);
        }

        v15 = cf;
        if (cf)
        {
          v16 = var38[0];
          v17 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v17)
          {
            v17(v16, @"PreferredVolume", v15);
          }
        }

        FigFormatReaderGetFigBaseObject();
        v19 = v18;
        v20 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v20)
        {
          v20(v19, @"PreferredRate", v11, &v45);
        }

        v21 = v45;
        if (v45)
        {
          v22 = var38[0];
          v23 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v23)
          {
            v23(v22, @"PreferredVolume", v21);
          }
        }

        FigFormatReaderGetFigBaseObject();
        v25 = v24;
        v26 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v26)
        {
          v26(v25, @"MovieMatrix", v11, &v44);
          v27 = v44;
          if (v44)
          {
            v28 = var38[0];
            v29 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v29)
            {
              v29(v28, @"MovieMatrix", v27);
            }
          }
        }

        FigFormatReaderGetFigBaseObject();
        v31 = v30;
        v32 = *(*(CMBaseObjectGetVTable() + 8) + 48);
        if (v32)
        {
          v32(v31, @"Timescale", v11, &v43);
          v33 = v43;
          if (v43)
          {
            v34 = var38[0];
            v35 = *(*(CMBaseObjectGetVTable() + 8) + 56);
            if (v35)
            {
              v35(v34, @"MovieTimeScale", v33);
            }
          }
        }

        FigMetadataCopyMovieMetadata(a4, v11, &v42);
        v36 = v42;
        if (v42)
        {
          v37 = var38[0];
          v38 = *(*(CMBaseObjectGetVTable() + 8) + 56);
          if (v38)
          {
            v38(v37, @"Metadata", v36);
          }
        }

        if (cf)
        {
          CFRelease(cf);
        }

        if (v45)
        {
          CFRelease(v45);
        }

        if (v44)
        {
          CFRelease(v44);
        }

        if (v43)
        {
          CFRelease(v43);
        }

        if (v42)
        {
          CFRelease(v42);
        }
      }

      v39 = 0;
      *a5 = var38[0];
      return v39;
    }

    FigMutableMovieCreateEmpty_cold_1(&cf);
  }

  else
  {
    FigMutableMovieCreateEmpty_cold_2(&cf);
  }

  v39 = cf;
LABEL_44:
  if (var38[0])
  {
    CFRelease(var38[0]);
  }

  return v39;
}

uint64_t FigMutableMovieCreateWithByteStream(int a1, uint64_t a2, __CFString *a3, int a4, void *a5)
{
  if (!a2)
  {
    FigMutableMovieCreateWithByteStream_cold_2(&v8);
    return v8;
  }

  if (!a5)
  {
    FigMutableMovieCreateWithByteStream_cold_1(&v8);
    return v8;
  }

  if (!a3)
  {
    a3 = @"com.apple.quicktime-movie";
  }

  MutableMovieObjectWithByteStream = createMutableMovieObjectWithByteStream(a1, a2, a3, a4);
  if (!MutableMovieObjectWithByteStream)
  {
    *a5 = 0;
  }

  return MutableMovieObjectWithByteStream;
}

void releaseTrack(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    v4 = a2[1];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[2];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a2[5];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a2[6];
    if (v7)
    {
      CFRelease(v7);
    }

    releaseSource(*MEMORY[0x1E695E480], a2[16]);

    CFAllocatorDeallocate(a1, a2);
  }
}

void releaseSource(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    v4 = a2[2];
    if (v4)
    {
      CFRelease(v4);
    }

    v5 = a2[4];
    if (v5)
    {
      CFRelease(v5);
    }

    v6 = a2[3];
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = a2[5];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a2[6];
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = a2[17];
    if (v9)
    {
      CFRelease(v9);
    }

    deleteTimeMappingArray(a2[8]);
    deleteTimeMappingArray(a2[9]);
    deleteTimeMappingArray(a2[10]);
    deleteTimeMappingArray(a2[11]);
    MediaSampleTimingGeneratorRelease(a2[7]);

    CFAllocatorDeallocate(a1, a2);
  }
}

void deleteTimeMappingArray(void **a1)
{
  if (a1)
  {
    free(*a1);

    free(a1);
  }
}

uint64_t getMaximumEditedTrackDuration@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x1E6960CC0];
  *a2 = *MEMORY[0x1E6960CC0];
  *(a2 + 16) = *(v4 + 16);
  FigSimpleMutexLock();
  v5 = *(a1 + 56);
  if (v5)
  {
    Count = CFArrayGetCount(v5);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i != v7; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), i);
        memset(&v13, 0, sizeof(v13));
        getTrackEditedDuration(a1, ValueAtIndex, &v13);
        time1 = v13;
        v11 = *a2;
        if (CMTimeCompare(&time1, &v11) >= 1)
        {
          *a2 = v13;
        }
      }
    }
  }

  return FigSimpleMutexUnlock();
}

__CFArray *copyArrayOfKnownMetadataFormats(const __CFAllocator *a1)
{
  Mutable = CFArrayCreateMutable(a1, 0, 0);
  v2 = Mutable;
  if (Mutable)
  {
    CFArrayAppendValue(Mutable, @"com.apple.quicktime.udta");
    CFArrayAppendValue(v2, @"com.apple.quicktime.mdta");
    CFArrayAppendValue(v2, @"org.mp4ra");
    CFArrayAppendValue(v2, @"com.apple.itunes");
    CFArrayAppendValue(v2, @"org.id3");
    CFArrayAppendValue(v2, @"com.apple.quicktime.HLS");
  }

  return v2;
}

uint64_t FigMutableMovieCopyTrackProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 48);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, @"TrackProtectedStatus", a3, a4);
}

uint64_t CFArrayToFigMatrix(const __CFArray *a1, uint64_t a2)
{
  v16 = 0;
  v14 = 0u;
  v15 = 0u;
  result = 4294950861;
  if (a1 && a2)
  {
    TypeID = CFArrayGetTypeID();
    if (TypeID == CFGetTypeID(a1) && CFArrayGetCount(a1) == 9)
    {
      v6 = 0;
      v7 = 0;
      v8 = &v14;
LABEL_6:
      v9 = v8;
      v10 = 3;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v6);
        v12 = CFNumberGetTypeID();
        if (v12 != CFGetTypeID(ValueAtIndex))
        {
          break;
        }

        ++v6;
        CFNumberGetValue(ValueAtIndex, kCFNumberFloat32Type, v9);
        v9 += 4;
        if (!--v10)
        {
          ++v7;
          v8 = (v8 + 12);
          if (v7 != 3)
          {
            goto LABEL_6;
          }

          result = 0;
          v13 = v15;
          *a2 = v14;
          *(a2 + 16) = v13;
          *(a2 + 32) = v16;
          return result;
        }
      }
    }

    return 4294950861;
  }

  return result;
}

const __CFString *convertCFStringToOSType(const __CFString *result)
{
  *buffer = 0;
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    if (Length >= 4)
    {
      v3 = 4;
    }

    else
    {
      v3 = Length;
    }

    v5.location = 0;
    v5.length = v3;
    if (v3 == CFStringGetBytes(v1, v5, 0, 0, 0, buffer, 4, 0))
    {
      return bswap32(*buffer);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t MutableMovie_CopyFormatReader(uint64_t a1, int a2, uint64_t a3, void *a4)
{
  v9 = 0;
  if (a1 && a4)
  {
    DerivedStorage = CMBaseObjectGetDerivedStorage();
    if (DerivedStorage)
    {
      if (*DerivedStorage)
      {
        v8 = 0;
        result = 4294950869;
      }

      else
      {
        result = MovieFormatReaderCreateWithMovieInformation(*(DerivedStorage + 24), a2 != 0, &v9);
        v8 = v9;
      }
    }

    else
    {
      v8 = 0;
      result = 4294950861;
    }

    goto LABEL_6;
  }

  result = 4294950861;
  if (a4)
  {
    v8 = 0;
LABEL_6:
    *a4 = v8;
  }

  return result;
}

uint64_t MutableMovie_WriteHeader(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4, int a5)
{
  if (!a1)
  {
    MutableMovie_WriteHeader_cold_5(&v12);
    return v12;
  }

  if (!a2)
  {
    MutableMovie_WriteHeader_cold_4(&v12);
    return v12;
  }

  if (!a3)
  {
    MutableMovie_WriteHeader_cold_3(&v12);
    return v12;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    MutableMovie_WriteHeader_cold_2(&v12);
    return v12;
  }

  if (*DerivedStorage)
  {
    MutableMovie_WriteHeader_cold_1(&v12);
    return v12;
  }

  FigFileDoesFileExist();
  v9 = CMByteStreamCreateForFileURL();
  if (v9)
  {
    return v9;
  }

  else
  {
    return writeHeaderToByteStream(a1, a2, 0, a4);
  }
}

uint64_t MutableMovie_WriteHeaderToByteStream(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  if (!a1)
  {
    MutableMovie_WriteHeaderToByteStream_cold_5(&v10);
    return v10;
  }

  if (!a2)
  {
    MutableMovie_WriteHeaderToByteStream_cold_4(&v10);
    return v10;
  }

  if (!a3)
  {
    MutableMovie_WriteHeaderToByteStream_cold_3(&v10);
    return v10;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!DerivedStorage)
  {
    MutableMovie_WriteHeaderToByteStream_cold_2(&v10);
    return v10;
  }

  if (*DerivedStorage)
  {
    MutableMovie_WriteHeaderToByteStream_cold_1(&v10);
    return v10;
  }

  return writeHeaderToByteStream(a1, a2, a3, a4);
}

uint64_t createMovieHeaderMakerFromMiP(uint64_t a1, const void *a2, void *a3)
{
  v20 = 0;
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (DerivedStorage)
  {
    if (*DerivedStorage)
    {
      v7 = 4294950869;
    }

    else
    {
      v7 = 4294950861;
      if (a2 && a3)
      {
        v8 = MovieInformationLockForRead(a2);
        if (v8 || (MovieHeaderMakerCreateWithMovieInformation(*MEMORY[0x1E695E480], a2, 0, &v20), v8))
        {
          v7 = v8;
          goto LABEL_21;
        }

        if (!v20)
        {
          createMovieHeaderMakerFromMiP_cold_1(&v19);
          v7 = v19;
          goto LABEL_21;
        }

        TrackCount = MovieInformationGetTrackCount(a2);
        if (TrackCount < 1)
        {
LABEL_18:
          v7 = 0;
        }

        else
        {
          v10 = TrackCount;
          v11 = 0;
          while (1)
          {
            v19 = 0;
            TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(a2, v11);
            v18 = 0;
            if (!TrackForTrackIndex)
            {
              break;
            }

            v13 = TrackForTrackIndex;
            BasicInfo = MovieTrackGetBasicInfo(TrackForTrackIndex, 0, &v18);
            if (BasicInfo)
            {
              goto LABEL_23;
            }

            if (!v18)
            {
              break;
            }

            MovieHeaderMakerAddTrack(v20, v13, &v19);
            if (BasicInfo || (Storage = MutableMovieTrackGetStorage(a1, v18)) != 0 && (v16 = *(Storage + 6)) != 0 && (BasicInfo = MovieHeaderMakerTrackSetSampleReferenceBaseURL(v20, v19, v16), BasicInfo))
            {
LABEL_23:
              v7 = BasicInfo;
              goto LABEL_19;
            }

            if (v10 == ++v11)
            {
              goto LABEL_18;
            }
          }

          v7 = 4294950872;
        }

LABEL_19:
        MovieInformationUnlockForRead(a2);
      }
    }
  }

  else
  {
    v7 = 4294950861;
  }

  if (a3)
  {
LABEL_21:
    *a3 = v20;
  }

  return v7;
}

uint64_t CMByteStreamWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(CMBaseObjectGetVTable() + 16) + 16);
  if (!v8)
  {
    return 4294954514;
  }

  return v8(a1, a2, a3, a4, 0);
}

void syncPropertiesOfNewTrackWithSourceTrackUsingTrackReaderOrOptionsDictionary(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"TrackEnabled", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"TrackLanguageCode", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"ExtendedLanguageTagString", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"TrackTimescale", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"Volume", a3, a4);
  setTrackPropertyFromTrackReaderOrOptionsDictionary(a1, a2, @"TrackMatrix", a3, a4);
  if (a4)
  {
    v8[0] = a1;
    v8[1] = a2;
    CFDictionaryApplyFunction(a4, setTrackPropertiesFromOptionsDictionary, v8);
  }
}

void setTrackPropertyFromTrackReaderOrOptionsDictionary(uint64_t a1, uint64_t a2, __CFString *cf1, uint64_t a4, const __CFDictionary *a5)
{
  cf = 0;
  if (CFEqual(cf1, @"TrackTimescale"))
  {
    v10 = @"MediaTimeScale";
  }

  else if (CFEqual(cf1, @"TrackLanguageCode"))
  {
    v10 = @"LanguageCode";
  }

  else if (CFEqual(cf1, @"ExtendedLanguageTagString"))
  {
    v10 = @"ExtendedLanguageTag";
  }

  else if (CFEqual(cf1, @"TrackFormatDescriptionArray"))
  {
    v10 = @"FormatDescriptionArray";
  }

  else if (CFEqual(cf1, @"TrackExcludeFromAutoSelection"))
  {
    v10 = @"IsExcludedFromAutoselection";
  }

  else if (CFEqual(cf1, @"TrackIsSelfContained"))
  {
    v10 = @"IsSelfContained";
  }

  else
  {
    v10 = cf1;
  }

  if (a5 && CFDictionaryContainsKey(a5, cf1))
  {
    Value = CFDictionaryGetValue(a5, cf1);
    v12 = *(*(CMBaseObjectGetVTable() + 16) + 56);
    if (v12)
    {

      v12(a1, a2, v10, Value);
    }
  }

  else if (a4)
  {
    FigTrackReaderGetFigBaseObject();
    v14 = v13;
    v15 = *(*(CMBaseObjectGetVTable() + 8) + 48);
    if (v15)
    {
      if (!v15(v14, cf1, *MEMORY[0x1E695E480], &cf))
      {
        v16 = cf;
        v17 = *(*(CMBaseObjectGetVTable() + 16) + 56);
        if (v17)
        {
          v17(a1, a2, v10, v16);
        }

        if (cf)
        {
          CFRelease(cf);
        }
      }
    }
  }
}

uint64_t setTrackPropertiesFromOptionsDictionary(uint64_t result, uint64_t a2, uint64_t *a3)
{
  if (result)
  {
    if (a3)
    {
      v4 = result;
      v5 = *a3;
      v6 = *(a3 + 2);
      VTable = CMBaseObjectGetVTable();
      v8 = *(VTable + 16);
      result = VTable + 16;
      v9 = *(v8 + 56);
      if (v9)
      {

        return v9(v5, v6, v4, a2);
      }
    }
  }

  return result;
}

uint64_t FigFormatReaderCopyTrackByID_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v6)
  {
    return 4294954514;
  }

  return v6(a1, a2, a3, 0);
}

uint64_t setClosedCaptionTrackDimensionsIfNeeded(uint64_t a1)
{
  v11 = 0;
  TrackCount = MovieInformationGetTrackCount(a1);
  if (TrackCount < 1)
  {
    return 0;
  }

  v3 = TrackCount;
  for (i = 0; i != v3; ++i)
  {
    TrackForTrackIndex = MovieInformationFindTrackForTrackIndex(a1, i);
    if (MovieTrackGetMediaType(TrackForTrackIndex) == 1986618469)
    {
      MovieTrackGetSpatialInformation(TrackForTrackIndex, &v11 + 1, &v11, 0);
    }
  }

  result = 0;
  if (*(&v11 + 1) != 0.0 && *&v11 != 0.0 && v3 >= 1)
  {
    v8 = 0;
    while (1)
    {
      v9 = MovieInformationFindTrackForTrackIndex(a1, v8);
      if (MovieTrackGetMediaType(v9) == 1668047728)
      {
        v10 = 0;
        MovieTrackGetSpatialInformation(v9, &v10 + 1, &v10, 0);
        if (*(&v10 + 1) == 0.0 || *&v10 == 0.0)
        {
          result = MovieTrackSetTrackDimensions(v9, *(&v11 + 1), *&v11);
          if (result)
          {
            break;
          }
        }
      }

      if (v3 == ++v8)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t addSample(CMSampleBufferRef sbuf, uint64_t a2, uint64_t *a3)
{
  if (a3)
  {
    return addSampleBufferToTrack(*a3, a3[1], a3[2], a3[3], sbuf);
  }

  else
  {
    return 4294950861;
  }
}

uint64_t addSampleBufferToTrack(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, CMSampleBufferRef sbuf)
{
  NumSamples = CMSampleBufferGetNumSamples(sbuf);
  v43 = 0;
  timingArrayEntriesNeededOut = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v11 = *(a1 + 128);
  OutputSampleTimingInfoArray = CMSampleBufferGetOutputSampleTimingInfoArray(sbuf, 0, 0, &timingArrayEntriesNeededOut);
  if (OutputSampleTimingInfoArray != -12736)
  {
    v14 = OutputSampleTimingInfoArray;
    if (OutputSampleTimingInfoArray)
    {
      v13 = 0;
      goto LABEL_6;
    }

    if ((timingArrayEntriesNeededOut - 0x38E38E38E38E38FLL) < 0xFC71C71C71C71C72)
    {
      v13 = 0;
      v14 = 4294950861;
      goto LABEL_6;
    }

    v15 = malloc_type_malloc(72 * timingArrayEntriesNeededOut, 0x1000040FF89C88EuLL);
    if (!v15)
    {
      v14 = 4294950861;
      v13 = v41;
      goto LABEL_6;
    }

    v16 = v15;
    v17 = CMSampleBufferGetOutputSampleTimingInfoArray(sbuf, timingArrayEntriesNeededOut, v15, 0);
    v18 = MEMORY[0x1E695E480];
    if (v17 || (MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArray(*(v11 + 56), NumSamples, timingArrayEntriesNeededOut, v16, &v43, &v42, &v41, &v40), v17) || v40 && (v42 && (sizeArrayEntriesNeededOut = *(v41 + 3 * v42 - 3), v19 = *(a1 + 16), ptr = sizeArrayEntriesNeededOut, MovieTrackSetLastSampleDecodeDuration(v19, &ptr), v17) || (MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v41), v41 = 0, v17 = MediaSampleTimingGeneratorCreateMediaSampleTimingInfoArrayWithDefaultLastSampleDuration(*(v11 + 56), &v43, &v42, &v41), v17)))
    {
      v14 = v17;
LABEL_39:
      MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v41);
      CFAllocatorDeallocate(*v18, v16);
      return v14;
    }

    v20 = v43;
    v35 = v41;
    v36 = v42;
    FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
    SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(sbuf, 0);
    v21 = *v18;
    v22 = CMCopyDictionaryOfAttachments(*v18, sbuf, 1u);
    sizeArrayEntriesNeededOut.value = 0;
    ptr.value = 0;
    v48[0] = 0;
    v47 = 0;
    if (CMSampleBufferGetSampleSizeArray(sbuf, 0, 0, &sizeArrayEntriesNeededOut.value) == -12735)
    {
      if (*a1 == 1936684398)
      {
        if (v20 >= 1)
        {
          v32 = v20;
          v46 = 0;
          IsNonInterleavedPCMAudioSample = FigMovieIsNonInterleavedPCMAudioSample(sbuf, &v46);
          allocator = v21;
          if (IsNonInterleavedPCMAudioSample)
          {
            goto LABEL_29;
          }

          if (!v46)
          {
            IsNonInterleavedPCMAudioSample = FigMovieCreateContiguousBBufFromNonContiguousAudioSample(sbuf, v21, &v47, v21, &sizeArrayEntriesNeededOut.value, &ptr);
            if (!IsNonInterleavedPCMAudioSample)
            {
              v24 = v47;
              *(*(a1 + 128) + 96) = a4;
              if (!v24)
              {
                v14 = 0;
                goto LABEL_30;
              }

              goto LABEL_27;
            }

LABEL_29:
            v14 = IsNonInterleavedPCMAudioSample;
            goto LABEL_30;
          }

          addSampleBufferToTrack_cold_1(&valuePtr);
          v14 = valuePtr;
LABEL_30:
          v21 = allocator;
          if (!v22)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }
      }

      else
      {
        *(*(a1 + 128) + 96) = a4;
      }

      v14 = 4294954561;
      if (!v22)
      {
LABEL_35:
        if (v47)
        {
          CFRelease(v47);
        }

        if (ptr.value)
        {
          CFAllocatorDeallocate(v21, ptr.value);
        }

        goto LABEL_39;
      }

LABEL_34:
      CFRelease(v22);
      goto LABEL_35;
    }

    v32 = v20;
    allocator = v21;
    v25 = MEMORY[0x19A8CC720](v21, 8 * sizeArrayEntriesNeededOut.value, 0x100004000313F17, 0);
    ptr.value = v25;
    SampleSizeArray = CMSampleBufferGetSampleSizeArray(sbuf, sizeArrayEntriesNeededOut.value, v25, 0);
    if (SampleSizeArray)
    {
      v14 = SampleSizeArray;
    }

    else
    {
      DataBuffer = CMSampleBufferGetDataBuffer(sbuf);
      if (DataBuffer || (DataBuffer = CMSampleBufferGetImageBuffer(sbuf)) != 0)
      {
        v24 = DataBuffer;
        *(*(a1 + 128) + 96) = a4;
        v18 = MEMORY[0x1E695E480];
LABEL_27:
        IsNonInterleavedPCMAudioSample = MovieTrackFindOrAddSampleDescription(*(a1 + 16), FormatDescription, a2, v48);
        if (!IsNonInterleavedPCMAudioSample)
        {
          MovieInformationEvaluateTrackAlternateGroupAssignment(*(a1 + 8), *(a1 + 16));
          MediaDataChunkWriterTrackAppendSampleData(*(a1 + 24), *(a1 + 32), a3, v24, v48[0], v32, v36, v35, sizeArrayEntriesNeededOut.value, ptr.value, SampleAttachmentsArray, v22);
        }

        goto LABEL_29;
      }

      v29 = CMGetAttachment(sbuf, *MEMORY[0x1E6960528], 0);
      *(*(a1 + 128) + 96) = a4;
      if (v29)
      {
        valuePtr = 0;
        CFNumberGetValue(v29, kCFNumberSInt64Type, &valuePtr);
        v30 = CMGetAttachment(sbuf, *MEMORY[0x1E6960530], 0);
        v31 = MovieTrackFindOrAddSampleDescription(*(a1 + 16), FormatDescription, v30, v48);
        if (!v31)
        {
          MovieInformationEvaluateTrackAlternateGroupAssignment(*(a1 + 8), *(a1 + 16));
          MediaDataChunkWriterTrackAppendSampleReference(*(a1 + 24), *(a1 + 32), valuePtr, v48[0], v20, v36, v35, sizeArrayEntriesNeededOut.value, v25, SampleAttachmentsArray, v22);
        }

        v14 = v31;
        v18 = MEMORY[0x1E695E480];
        if (!v22)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v14 = 0;
    }

    v18 = MEMORY[0x1E695E480];
    goto LABEL_30;
  }

  v13 = 0;
  v14 = 0;
LABEL_6:
  MediaSampleTimingGeneratorDisposeMediaSampleTimingInfoArray(v13);
  return v14;
}

uint64_t writeMdatHeader(uint64_t a1)
{
  v2 = 0;
  if (a1)
  {
    writeMdatHeader_cold_1(&v2, a1, &v3);
  }

  else
  {
    writeMdatHeader_cold_2(&v3);
  }

  return v3;
}

CMTime *GetTotalEditSegmentDuration@<X0>(CMTime *result@<X0>, CMTime *a2@<X8>)
{
  *a2 = **&MEMORY[0x1E6960CC0];
  value = result[34].value;
  v5 = (value - 1);
  if (value >= 1)
  {
    v12 = v2;
    v13 = v3;
    v6 = (result[33].epoch + 96 * v5 + 48);
    v7 = v5 + 1;
    while ((*(v6 - 36) & 1) == 0)
    {
      v6 -= 6;
      if (v7-- <= 1)
      {
        return result;
      }
    }

    v9 = *v6;
    v10 = v6[2];
    *&v11.start.epoch = v6[1];
    *&v11.duration.timescale = v10;
    *&v11.start.value = v9;
    return CMTimeRangeGetEnd(a2, &v11);
  }

  return result;
}

void releaseSourceArray(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count >= 1)
    {
      v3 = Count + 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v3 - 2);
        v5 = CFGetAllocator(a1);
        releaseSource(v5, ValueAtIndex);
        --v3;
      }

      while (v3 > 1);
    }

    CFRelease(a1);
  }
}