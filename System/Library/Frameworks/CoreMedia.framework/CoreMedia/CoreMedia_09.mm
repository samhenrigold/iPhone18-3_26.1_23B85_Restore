void fig_post_a_symptom_guts(uint64_t a1)
{
  if (fig_post_a_symptom_guts_onceToken != -1)
  {
    fig_post_a_symptom_guts_cold_1();
  }

  v2 = fig_post_a_symptom_guts_sFigLogOSLogSymptom;
  if (os_log_type_enabled(fig_post_a_symptom_guts_sFigLogOSLogSymptom, OS_LOG_TYPE_ERROR))
  {
    fig_post_a_symptom_guts_cold_2(a1, v2);
  }
}

uint64_t __fig_post_a_symptom_guts_block_invoke()
{
  fig_post_a_symptom_guts_sFigLogOSLogSymptom = os_log_create("com.apple.coremedia", "Symptoms");

  return FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
}

void *fig_log_handle()
{
  result = fig_log_get_emitter("com.apple.coremedia", "");
  if (result)
  {
    return *result;
  }

  return result;
}

CFMutableDictionaryRef __fig_log_get_emitter_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
  fig_log_get_emitter_emitterTable = result;
  return result;
}

void fig_note_initialize_category_with_default_work_cf(uint64_t a1, const __CFString *a2, const __CFString *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, void *a8)
{
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  FigThreadRunOnce(&sFigNoteInit, fig_note_init_timestamps_once);
  v23 = 0;
  v24 = 0;
  v22[0] = a3;
  v22[1] = a2;
  v22[2] = a5;
  v22[3] = a4;
  v22[4] = a1;
  v22[5] = a6;
  if (initialize_fignote_variable_registry_sInitRegistryOnce != -1)
  {
    fig_note_initialize_category_with_default_work_cf_cold_1();
  }

  dispatch_sync_f(gFigNoteVariableRegistry_0, v22, perform_fignote_variable_registration);
  v15 = v23;
  if (v24 && v23)
  {
    v16 = CFPreferencesCopyAppValue(a2, a3);
    v17 = v16;
    v18 = gAllowAutomaticFigNotes;
    if (gAllowAutomaticFigNotes)
    {
      v18 = *(v15 + 16);
    }

    **(v15 + 8) = v18;
    if (v16)
    {
      v19 = CFGetTypeID(v16);
      if (v19 == CFStringGetTypeID())
      {
        LODWORD(v22[0]) = 0;
        if (!fig_note_get_value_for_string_preference(v17, v22))
        {
          goto LABEL_16;
        }
      }

      else
      {
        v20 = CFGetTypeID(v17);
        if (v20 != CFNumberGetTypeID())
        {
          v21 = CFGetTypeID(v17);
          if (v21 == CFBooleanGetTypeID())
          {
            **(v15 + 8) = CFEqual(v17, *MEMORY[0x1E695E4D0]);
          }

          goto LABEL_16;
        }

        LODWORD(v22[0]) = 0;
        if (!CFNumberGetValue(v17, kCFNumberIntType, v22))
        {
LABEL_16:
          CFRelease(v17);
          goto LABEL_17;
        }
      }

      **(v15 + 8) = v22[0];
      goto LABEL_16;
    }
  }

LABEL_17:
  if (a8)
  {
    if (v15)
    {
      *a8 = *v15;
    }
  }
}

void fig_note_initialize_category_with_default_work(uint64_t a1, const char *a2, const char *a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, void *a8)
{
  v14 = *MEMORY[0x1E695E480];
  v15 = CFStringCreateWithCString(*MEMORY[0x1E695E480], a2, 0x8000100u);
  v16 = CFStringCreateWithCString(v14, a3, 0x8000100u);
  fig_note_initialize_category_with_default_work_cf(a1, v15, v16, a4, a5, a6, v17, a8);
  if (v15)
  {
    CFRelease(v15);
  }

  if (v16)
  {

    CFRelease(v16);
  }
}

uint64_t FigNote_OneTimeInitializationForMediaServerd(uint64_t a1)
{
  if (initialize_fignote_variable_registry_sInitRegistryOnce != -1)
  {
    fig_note_initialize_category_with_default_work_cf_cold_1();
  }

  sRunningInMediaserverd = 1;
  keyExistsAndHasValidFormat = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"rpc_timeout", @"com.apple.coremedia", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v2 = 1000000 * AppIntegerValue;
  }

  else
  {
    v2 = 9000000000;
  }

  FigRPCServer_SetTimeoutNanoseconds(v2);
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  return fig_note_read_control_preferences();
}

uint64_t fig_note_read_control_preferences()
{
  FigReentrantMutexLock(gFigLogControlMutex);
  v0 = CFPreferencesCopyAppValue(@"fig_notes", @"com.apple.coremedia");
  if (v0)
  {
    v1 = v0;
    v2 = CFGetTypeID(v0);
    if (v2 == CFStringGetTypeID())
    {
      fig_note_close_external_log_file();
      if (CFStringCompare(v1, @"true", 1uLL) && CFStringCompare(v1, @"yes", 1uLL) && CFStringCompare(v1, @"on", 1uLL) && CFStringCompare(v1, @"oslog", 1uLL))
      {
        if (CFStringCompare(v1, @"syslog", 1uLL) == kCFCompareEqualTo)
        {
          _MergedGlobals_1 = 1;
          goto LABEL_28;
        }

        if (CFStringCompare(v1, @"stderr", 1uLL))
        {
          if (CFStringCompare(v1, @"stdout", 1uLL))
          {
            if (CFStringCompare(v1, @"external", 1uLL) == kCFCompareEqualTo || CFStringCompare(v1, @"external_no_echo_oslog", 1uLL) == kCFCompareEqualTo || CFStringCompare(v1, @"public", 1uLL) == kCFCompareEqualTo && sRunningInMediaserverd)
            {
              fig_note_configure_external_log_file(v1);
LABEL_28:
              CFRelease(v1);
              goto LABEL_29;
            }

            if (CFStringCompare(v1, @"bbuf", 1uLL))
            {
              if (CFStringCompare(v1, @"ring", 1uLL))
              {
                IntValue = CFStringGetIntValue(v1);
                goto LABEL_23;
              }

              v5 = &byte_1ED4CC000;
              v6 = 6;
            }

            else
            {
              if (!sNoteBBufQueue)
              {
                sNoteBBufQueue = dispatch_queue_create("com.apple.coremedia.fignote", 0);
                CMBlockBufferCreateEmpty(*MEMORY[0x1E695E480], 0x100u, 0, &sNoteBBuf);
              }

              v5 = &byte_1ED4CC000;
              v6 = 5;
            }
          }

          else
          {
            v5 = &byte_1ED4CC000;
            v6 = 3;
          }
        }

        else
        {
          v5 = &byte_1ED4CC000;
          v6 = 2;
        }
      }

      else
      {
        v5 = &byte_1ED4CC000;
        v6 = 8;
      }

      *(v5 + 84) = v6;
      goto LABEL_28;
    }

    v3 = CFGetTypeID(v1);
    if (v3 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
      v4 = valuePtr == 0;
LABEL_24:
      v9 = !v4;
      _MergedGlobals_1 = 8 * v9;
      goto LABEL_28;
    }

    v7 = CFGetTypeID(v1);
    if (v7 != CFBooleanGetTypeID())
    {
      goto LABEL_28;
    }

    IntValue = CFEqual(v1, *MEMORY[0x1E695E4D0]);
LABEL_23:
    v4 = IntValue == 0;
    goto LABEL_24;
  }

  fig_note_close_external_log_file();
  if (_MergedGlobals_1 != 8)
  {
    _MergedGlobals_1 = 8;
  }

LABEL_29:
  v10 = CFPreferencesCopyAppValue(@"automatic_fig_notes", @"com.apple.coremedia");
  gAllowAutomaticFigNotes = 1;
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFStringGetTypeID())
    {
      v18 = 0;
      if (!fig_note_get_value_for_string_preference(v11, &v18))
      {
LABEL_36:
        CFRelease(v11);
        return FigReentrantMutexUnlock(gFigLogControlMutex);
      }

      v13 = v18;
    }

    else
    {
      v14 = CFGetTypeID(v11);
      if (v14 != CFNumberGetTypeID())
      {
        v16 = CFGetTypeID(v11);
        if (v16 == CFBooleanGetTypeID())
        {
          gAllowAutomaticFigNotes = CFEqual(v11, *MEMORY[0x1E695E4D0]);
        }

        goto LABEL_36;
      }

      v17 = 0;
      CFNumberGetValue(v11, kCFNumberIntType, &v17);
      v13 = v17 != 0;
    }

    gAllowAutomaticFigNotes = v13;
    goto LABEL_36;
  }

  return FigReentrantMutexUnlock(gFigLogControlMutex);
}

uint64_t FigNote_RefreshControlPreferences()
{
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);

  return fig_note_read_control_preferences();
}

uint64_t FigNote_ChangeValue(uint64_t a1, uint64_t a2, int a3)
{
  v3 = 4294950614;
  v8 = -16682;
  if (gFigNoteVariableRegistry_0)
  {
    v4 = gFigNoteVariableRegistry_1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __FigNote_ChangeValue_block_invoke;
    v6[3] = &__block_descriptor_tmp_12_0;
    v6[4] = a1;
    v6[5] = a2;
    v7 = a3;
    v6[6] = &v8;
    dispatch_sync(gFigNoteVariableRegistry_0, v6);
    return v8;
  }

  return v3;
}

uint64_t FigNote_GetValue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 4294950614;
  v7 = -16682;
  if (gFigNoteVariableRegistry_0)
  {
    v4 = gFigNoteVariableRegistry_1 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __FigNote_GetValue_block_invoke;
    block[3] = &__block_descriptor_tmp_13_2;
    block[4] = a1;
    block[5] = a2;
    block[6] = a3;
    block[7] = &v7;
    dispatch_sync(gFigNoteVariableRegistry_0, block);
    return v7;
  }

  return v3;
}

uint64_t fignote_initialize_ringlog(uint64_t a1, uint64_t a2)
{
  if (fignote_initialize_ringlog_initializeLogRingBuffer != -1)
  {
    fignote_initialize_ringlog_cold_1();
  }

  if (byte_1ED4CC168)
  {
    return 0;
  }

  else
  {
    return 4294950613;
  }
}

void fig_note_dropRingBufferDataStructuresInternal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1ED4CC170)
  {
    CFRelease(qword_1ED4CC170);
    qword_1ED4CC170 = 0;
  }

  else
  {
    fig_note_dropRingBufferDataStructuresInternal_cold_1(0, a2, a3, a4, a5, a6, a7, a8, v8);
  }
}

void fig_log_ring_backing_deallocator(uint64_t a1, CFTypeRef cf)
{
  if (a1)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }
}

uint64_t FigNote_CopyKeys(uint64_t a1, void *a2)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  if (gFigNoteVariableRegistry_0)
  {
    v2 = gFigNoteVariableRegistry_1 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || (v7[0] = MEMORY[0x1E69E9820], v7[1] = 0x40000000, v7[2] = __FigNote_CopyKeys_block_invoke, v7[3] = &unk_1E74A0818, v7[4] = &v8, v7[5] = a1, dispatch_sync(gFigNoteVariableRegistry_0, v7), (v4 = v9[3]) == 0))
  {
    v5 = 4294950614;
  }

  else
  {
    v12.length = CFArrayGetCount(v9[3]);
    v12.location = 0;
    CFArraySortValues(v4, v12, MEMORY[0x1E695D7F0], 0);
    v5 = 0;
    *a2 = v9[3];
  }

  _Block_object_dispose(&v8, 8);
  return v5;
}

uint64_t fig_note_write_to_external_log_file(const char *a1)
{
  FigThreadRunOnce(&stru_1ED4CC158, fig_note_init_logging_once);
  FigReentrantMutexLock(gFigLogControlMutex);
  if (sExternalLogfile)
  {
    v2 = fprintf(sExternalLogfile, "%s\n", a1);
    fflush(sExternalLogfile);
    if (v2 >= 1 && sExternalLogfileSizeLimit != 0)
    {
      sExternalLogfileNumBytesWritten += v2;
      if (sExternalLogfileNumBytesWritten > sExternalLogfileSizeLimit)
      {
        fig_note_close_external_log_file();
        unlink(sExternalLogfilePath);
        fig_note_open_external_log_file();
      }
    }
  }

  v4 = gFigLogControlMutex;

  return FigReentrantMutexUnlock(v4);
}

void append_and_release_noteBBuf(CMBlockBufferRef targetBBuf)
{
  CMBlockBufferAppendBufferReference(sNoteBBuf, targetBBuf, 0, 0, 0);

  CFRelease(targetBBuf);
}

uint64_t safe_snprintf_0(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  LODWORD(result) = vsnprintf(a1, 0x600uLL, "[%s] ", va);
  if (result >= 0x5FF)
  {
    return 1535;
  }

  else
  {
    return result;
  }
}

uint64_t fig_note_close_external_log_file()
{
  FigReentrantMutexLock(gFigLogControlMutex);
  if (sExternalLogfile)
  {
    if (sFigNoteExternalLogDeleteWatchSource)
    {
      dispatch_source_cancel(sFigNoteExternalLogDeleteWatchSource);
      dispatch_release(sFigNoteExternalLogDeleteWatchSource);
      sFigNoteExternalLogDeleteWatchSource = 0;
    }

    else
    {
      fclose(sExternalLogfile);
    }

    sExternalLogfile = 0;
  }

  v0 = gFigLogControlMutex;

  return FigReentrantMutexUnlock(v0);
}

uint64_t fig_note_open_external_log_file()
{
  v11 = *MEMORY[0x1E69E9840];
  FigReentrantMutexLock(gFigLogControlMutex);
  v8 = 0;
  time(&v8);
  if (sPublicLogFileInUse == 1)
  {
    qmemcpy(handler, "/private/var/mobile/Library/Logs/CrashReporter/mediaserverd_log_", sizeof(handler));
    v0 = localtime(&v8);
    strftime(v10, 0x3C0uLL, "%Y-%m-%d-%H%M%S.txt", v0);
    __strlcpy_chk();
  }

  sExternalLogfileNumBytesWritten = 0;
  v1 = fopen(sExternalLogfilePath, "ab");
  sExternalLogfile = v1;
  if (v1)
  {
    setvbuf(v1, 0, 2, 0);
    v2 = sExternalLogfile;
    v3 = ctime(&v8);
    fprintf(v2, "\n\n\n=== New Log Starting At %.24s =============================================================\n", v3);
    _MergedGlobals_1 = 4;
    if (sExternalEchoToOSLog)
    {
      fwrite("**** WARNING: Using external_no_echo_oslog causes standard Fig logging to be omitted from the log captured by sysdiagnose, which will mean that engineering is not able to analyze radars created while it's set\n\n", 0xD2uLL, 1uLL, sExternalLogfile);
    }

    else
    {
      _MergedGlobals_1 = 9;
    }

    sExternalLogfileNumBytesWritten = MEMORY[0x19A8D9180](sExternalLogfile);
    v4 = sExternalLogfile;
    if (sExternalLogfile)
    {
      v5 = fileno(sExternalLogfile);
      global_queue = dispatch_get_global_queue(0, 0);
      sFigNoteExternalLogDeleteWatchSource = dispatch_source_create(MEMORY[0x1E69E9728], v5, 1uLL, global_queue);
      dispatch_source_set_event_handler(sFigNoteExternalLogDeleteWatchSource, &__block_literal_global_35);
      *&handler[0] = MEMORY[0x1E69E9820];
      *(&handler[0] + 1) = 0x40000000;
      *&handler[1] = __fig_note_setup_log_delete_watch_block_invoke_2;
      *(&handler[1] + 1) = &__block_descriptor_tmp_36;
      *&handler[2] = v4;
      dispatch_source_set_cancel_handler(sFigNoteExternalLogDeleteWatchSource, handler);
      dispatch_resume(sFigNoteExternalLogDeleteWatchSource);
    }
  }

  else
  {
    _MergedGlobals_1 = 8;
  }

  return FigReentrantMutexUnlock(gFigLogControlMutex);
}

uint64_t __fig_note_setup_log_delete_watch_block_invoke()
{
  FigReentrantMutexLock(gFigLogControlMutex);
  if (sExternalLogfile)
  {
    fig_note_close_external_log_file();
    fig_note_open_external_log_file();
  }

  v0 = gFigLogControlMutex;

  return FigReentrantMutexUnlock(v0);
}

void __fig_log_append_to_ring_buffer_async_block_invoke(uint64_t a1)
{
  v1 = a1;
  v52 = *MEMORY[0x1E69E9840];
  if (*(a1 + 48))
  {
    v2 = byte_1ED4CC191 == 0;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    byte_1ED4CC191 = 1;
    v3 = @"==== WARNING: One or more messages were dropped ====";
  }

  else
  {
    v3 = *(a1 + 32);
    if (!*(a1 + 48))
    {
      byte_1ED4CC191 = 0;
    }

    if (!v3)
    {
      goto LABEL_59;
    }
  }

  v31 = *(a1 + 40);
  Length = CFStringGetLength(v3);
  sourceBytes = 0;
  destination = 0;
  lengthAtOffsetOut = 0;
  dataPointerOut = 0;
  dispatch_assert_queue_V2(qword_1ED4CC188);
  if (qword_1ED4CC170)
  {
    v53.location = 0;
    v53.length = Length;
    CFStringGetBytes(v3, v53, 0x8000100u, 0, 0, 0, 0, &sourceBytes);
    sourceBytes += 4;
    if (sourceBytes <= qword_1ED4CC180)
    {
      v28 = Length;
      v29 = v3;
      v30 = v1;
      v6 = 0x7FFFFFFFFFFFFFFFLL;
      v7 = 0x7FFFFFFFFFFFFFFFLL;
      do
      {
LABEL_15:
        v8 = qword_1ED4CC178;
        v9 = (v7 >> 42) & 0x1FFFFF;
        v10 = (qword_1ED4CC178 >> 42) & 0x1FFFFF;
        v11 = qword_1ED4CC178;
        if (v9 == v10)
        {
          v12 = (v7 >> 21) & 0x1FFFFF;
          v13 = v7 & 0x1FFFFF;
          if (v12 == ((qword_1ED4CC178 >> 21) & 0x1FFFFF) && v13 == (qword_1ED4CC178 & 0x1FFFFF))
          {
            os_log = fig_log_emitter_get_os_log(v31, 0, 0);
            if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 134219776;
              v37 = qword_1ED4CC180;
              v38 = 1024;
              v39 = v13;
              v40 = 1024;
              v41 = v12;
              v42 = 1024;
              v43 = v9;
              v44 = 1024;
              v45 = v6 & 0x1FFFFF;
              v46 = 1024;
              v47 = (v6 >> 21) & 0x1FFFFF;
              v48 = 1024;
              v49 = (v6 >> 42) & 0x1FFFFF;
              v50 = 1024;
              v51 = destination;
              _os_log_error_impl(&dword_196FA7000, os_log, OS_LOG_TYPE_ERROR, "Ring buffer (size %zu) contained unrecoverable garbage when going from (oldest:%d loop:%d latest:%d) to (oldest:%d loop:%d latest:%d). Last log size read from buffer was %u", buf, 0x36u);
            }

            LODWORD(v10) = 0x1FFFFF;
            v11 = v6 & 0x8000000000000000 | 0x7FFFFC00001FFFFFLL;
          }

          else
          {
            v10 = (v7 >> 42) & 0x1FFFFF;
            v11 = qword_1ED4CC178;
          }
        }

        v16 = v11 & 0xFFFFFFFFFFE00000;
        if (v10 == 0x1FFFFF)
        {
          v17 = 0;
        }

        else
        {
          v17 = v10;
        }

        if (v10 != 0x1FFFFF)
        {
          v16 = v11;
        }

        v18 = (v17 + sourceBytes) & 0x1FFFFF;
        v19 = v16 & 0x8000000000000000;
        v20 = v16 & 0x800003FFFFFFFFFFLL | (((v17 + sourceBytes) & 0x1FFFFFLL) << 42);
        if (qword_1ED4CC180 < v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v17;
        }

        if (qword_1ED4CC180 < v18)
        {
          v20 = (v19 | (v17 << 21)) & 0x800003FFFFFFFFFFLL | ((sourceBytes & 0x1FFFFF) << 42);
        }

        if (((v20 >> 42) & 0x1FFFFF) <= ((v20 >> 21) & 0x1FFFFF))
        {
          v6 = v20;
        }

        else
        {
          v6 = v20 & 0xFFFFFC00001FFFFFLL | (((v20 >> 42) & 0x1FFFFF) << 21);
        }

        if (v10 != 0x1FFFFF)
        {
          v22 = v6 & 0x1FFFFF;
          if (v21 <= (v6 & 0x1FFFFF))
          {
            while (v22 < ((v6 >> 42) & 0x1FFFFF))
            {
              CMBlockBufferCopyDataBytes(qword_1ED4CC170, v6 & 0x1FFFFF, 4uLL, &destination);
              if (destination < 4 || (qword_1ED4CC180 >= destination ? (v24 = (v6 & 0x1FFFFF) > qword_1ED4CC180 - destination) : (v24 = 1), v24))
              {
                v7 = v8;
                goto LABEL_15;
              }

              v25 = (destination + v6) & 0x1FFFFF;
              if (v25 >= ((v8 >> 21) & 0x1FFFFF))
              {
                v6 = (v6 >> 21) & 0x3FFFFE00000 | v6 & 0xFFFFFC0000000000;
              }

              else
              {
                v6 = v6 & 0xFFFFFFFFFFE00000 | v25;
              }

              v22 = v6 & 0x1FFFFF;
              if (v21 > (v6 & 0x1FFFFF))
              {
                break;
              }
            }
          }
        }

        v23 = v8;
        atomic_compare_exchange_strong_explicit(&qword_1ED4CC178, &v23, v6, memory_order_relaxed, memory_order_relaxed);
        v7 = v8;
      }

      while (v23 != v8);
      CMBlockBufferReplaceDataBytes(&sourceBytes, qword_1ED4CC170, v21, 4uLL);
      CMBlockBufferGetDataPointer(qword_1ED4CC170, v21 + 4, &lengthAtOffsetOut, 0, &dataPointerOut);
      if (lengthAtOffsetOut >= sourceBytes)
      {
        v26 = sourceBytes;
      }

      else
      {
        v26 = lengthAtOffsetOut;
      }

      v54.length = v28;
      v54.location = 0;
      CFStringGetBytes(v29, v54, 0x8000100u, 0, 0, dataPointerOut, v26, 0);
      v1 = v30;
    }

    else
    {
      v5 = fig_log_emitter_get_os_log(v31, 0, 0);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __fig_log_append_to_ring_buffer_async_block_invoke_cold_1(&sourceBytes, v5);
      }
    }
  }

  v27 = *(v1 + 32);
  if (v27)
  {
    CFRelease(v27);
  }

LABEL_59:
  atomic_fetch_add_explicit(&unk_1ED4CC190, 0xFFu, memory_order_relaxed);
}

void perform_fignote_variable_registration(uint64_t a1)
{
  value = 0;
  Mutable = CFDictionaryGetValue(gFigNoteVariableRegistry_1, *a1);
  if (!Mutable)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(gFigNoteVariableRegistry_1, *a1, Mutable);
    CFRelease(Mutable);
  }

  if (!CFDictionaryGetValueIfPresent(Mutable, *(a1 + 8), &value))
  {
    value = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
    CFDictionarySetValue(Mutable, *(a1 + 8), value);
    CFRelease(value);
  }

  Count = CFArrayGetCount(value);
  if (Count < 1)
  {
LABEL_9:
    v7 = malloc_type_calloc(1uLL, 0x18uLL, 0x10300409B68AA8EuLL);
    v8 = v7;
    if (v7)
    {
      v7[1] = *(a1 + 32);
      *(v7 + 4) = *(a1 + 40);
      *v7 = fig_log_get_emitter(*(a1 + 16), *(a1 + 24));
      CFArrayAppendValue(value, v8);
      *(a1 + 56) = 1;
    }
  }

  else
  {
    v4 = Count;
    v5 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(value, v5);
      if (ValueAtIndex[1] == *(a1 + 32))
      {
        break;
      }

      if (v4 == ++v5)
      {
        goto LABEL_9;
      }
    }

    v8 = ValueAtIndex;
  }

  *(a1 + 48) = v8;
}

BOOL fig_note_get_value_for_string_preference(const __CFString *a1, int *a2)
{
  v4 = 1;
  if (CFStringCompare(a1, @"true", 1uLL))
  {
    v5 = 1;
    if (CFStringCompare(a1, @"yes", 1uLL) == kCFCompareEqualTo)
    {
      v4 = 1;
      goto LABEL_13;
    }

    v5 = 1;
    if (CFStringCompare(a1, @"on", 1uLL) == kCFCompareEqualTo)
    {
      v4 = 1;
      goto LABEL_13;
    }

    v5 = 1;
    if (CFStringCompare(a1, @"false", 1uLL) == kCFCompareEqualTo || (v5 = 1, CFStringCompare(a1, @"no", 1uLL) == kCFCompareEqualTo) || (v5 = 1, CFStringCompare(a1, @"off", 1uLL) == kCFCompareEqualTo))
    {
      v4 = 0;
      goto LABEL_13;
    }

    if (!CFEqual(a1, @"0"))
    {
      IntValue = CFStringGetIntValue(a1);
      v5 = IntValue != 0;
      v4 = IntValue & ~(IntValue >> 31);
      goto LABEL_13;
    }

    v4 = 0;
  }

  v5 = 1;
LABEL_13:
  *a2 = v4;
  return v5;
}

void initialize_fignote_variable_registry_once()
{
  gFigNoteVariableRegistry_0 = dispatch_queue_create("fignote_variable_registry_queue", 0);
  gFigNoteVariableRegistry_1 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

  FigInstallSysdiagnoseBlock(@"FigNoteVariableRegistry", &__block_literal_global_68);
}

void __initialize_fignote_variable_registry_once_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = 0;
  os_log_and_send_and_compose_flags = fig_log_emitter_get_os_log_and_send_and_compose_flags(0, &v4);
  v1 = v4;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags, OS_LOG_TYPE_DEFAULT))
  {
    v2 = v1;
  }

  else
  {
    v2 = v1 & 0xFFFFFFFE;
  }

  if (v2)
  {
    v5 = 136315138;
    v6 = "";
    v3 = _os_log_send_and_compose_impl(v2, 0, block, 128, &dword_196FA7000, os_log_and_send_and_compose_flags, 0, "|FigNote| %s: ------------ FigNote Variable Registry ------------", &v5);
    LOBYTE(v1) = v4;
  }

  else
  {
    v3 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 0, v3, v3 != block, v1);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __DumpVariableRegistry_block_invoke;
  block[3] = &__block_descriptor_tmp_69;
  v8 = 1;
  dispatch_sync(gFigNoteVariableRegistry_0, block);
}

void __DumpVariableRegistry_block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v1 = DumpNonDefaultRegisteredVariablesDictionaryApplierFunction;
  }

  else
  {
    v1 = DumpAllRegisteredVariablesDictionaryApplierFunction;
  }

  CFDictionaryApplyFunction(gFigNoteVariableRegistry_1, DumpVariableAppIDDictionaryApplierFunction, v1);
}

void DumpNonDefaultRegisteredVariablesDictionaryApplierFunction(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  v30 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      if (*ValueAtIndex[1] != *(ValueAtIndex + 4))
      {
        v10 = ValueAtIndex;
        v18 = 0;
        os_log_and_send_and_compose_flags = fig_log_emitter_get_os_log_and_send_and_compose_flags(0, &v18);
        v12 = v18;
        if (os_log_type_enabled(os_log_and_send_and_compose_flags, OS_LOG_TYPE_DEFAULT))
        {
          v13 = v12;
        }

        else
        {
          v13 = v12 & 0xFFFFFFFE;
        }

        if (v13)
        {
          v14 = *v10[1];
          v15 = *(v10 + 4);
          v19 = 136316162;
          v20 = "";
          v21 = 2112;
          v22 = a3;
          v23 = 2112;
          v24 = a1;
          v25 = 1024;
          v26 = v14;
          v27 = 1024;
          v28 = v15;
          LODWORD(v17) = 44;
          v16 = _os_log_send_and_compose_impl(v13, 0, v29, 128, &dword_196FA7000, os_log_and_send_and_compose_flags, 0, "|FigNote| %s: \t%@ %@ %d (default %d)", &v19, v17);
          LOBYTE(v12) = v18;
        }

        else
        {
          v16 = 0;
        }

        fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 0, v16, v16 != v29, v12);
      }
    }
  }
}

void DumpAllRegisteredVariablesDictionaryApplierFunction(uint64_t a1, CFArrayRef theArray, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      v17 = 0;
      os_log_and_send_and_compose_flags = fig_log_emitter_get_os_log_and_send_and_compose_flags(0, &v17);
      v11 = v17;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 & 0xFFFFFFFE;
      }

      if (v12)
      {
        v13 = *ValueAtIndex[1];
        v14 = *(ValueAtIndex + 4);
        v18 = 136316162;
        v19 = "";
        v20 = 2112;
        v21 = a3;
        v22 = 2112;
        v23 = a1;
        v24 = 1024;
        v25 = v13;
        v26 = 1024;
        v27 = v14;
        LODWORD(v16) = 44;
        v15 = _os_log_send_and_compose_impl(v12, 0, v28, 128, &dword_196FA7000, os_log_and_send_and_compose_flags, 0, "|FigNote| %s: \t%@ %@ %d (default %d)", &v18, v16);
        LOBYTE(v11) = v17;
      }

      else
      {
        v15 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(0, 1, 0, v15, v15 != v28, v11);
    }
  }
}

uint64_t fig_note_configure_external_log_file(const __CFString *a1)
{
  sExternalEchoToOSLog = CFStringCompare(a1, @"external_no_echo_oslog", 1uLL) == kCFCompareEqualTo;
  if (CFStringCompare(a1, @"public", 1uLL))
  {
    sPublicLogFileInUse = 0;
    v2 = CFPreferencesCopyAppValue(@"fig_notes_log", @"com.apple.coremedia");
    if (v2)
    {
      v3 = v2;
      v4 = CFGetTypeID(v2);
      if (v4 == CFStringGetTypeID())
      {
        CFStringGetCString(v3, sExternalLogfilePath, 1024, 0x8000100u);
      }

      CFRelease(v3);
    }
  }

  else
  {
    sPublicLogFileInUse = 1;
  }

  v5 = CFPreferencesCopyAppValue(@"fig_notes_log_limit", @"com.apple.coremedia");
  if (v5)
  {
    v6 = v5;
    v7 = CFGetTypeID(v5);
    if (v7 == CFStringGetTypeID())
    {
      sExternalLogfileSizeLimit = CFStringGetIntValue(v6);
    }

    else
    {
      v8 = CFGetTypeID(v6);
      if (v8 == CFNumberGetTypeID())
      {
        CFNumberGetValue(v6, kCFNumberSInt64Type, &sExternalLogfileSizeLimit);
      }
    }

    if (sExternalLogfileSizeLimit && sExternalLogfileSizeLimit < 0x10000)
    {
      sExternalLogfileSizeLimit = 0x10000;
    }

    CFRelease(v6);
  }

  return fig_note_open_external_log_file();
}

uint64_t initialize_logRingBuffer(uint64_t a1, uint64_t a2)
{
  result = FigDebugIsInternalBuild(a1, a2);
  if (result)
  {
    byte_1ED4CC168 = 1;
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    result = dispatch_queue_create("com.apple.coremedia.fig_note.ring", v3);
    qword_1ED4CC188 = result;
  }

  else
  {
    byte_1ED4CC168 = 0;
  }

  return result;
}

size_t FigTimeCodeFormatDescriptionRegisterOnce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  v10 = 0;
  v14 = figTimeCodeFormatDescriptionFinalize;
  v13 = figTimeCodeFormatDescriptionCopyDebugDesc;
  v11 = 32;
  v12 = figTimeCodeFormatDescriptionEqual;
  return FigDerivedFormatDescriptionRegister(0x746D6364u, &v10, a3, a4, a5, a6, a7, a8, v9);
}

OSStatus CMTimeCodeFormatDescriptionCreate(CFAllocatorRef allocator, CMTimeCodeFormatType timeCodeFormatType, CMTime *frameDuration, uint32_t frameQuanta, uint32_t flags, CFDictionaryRef extensions, CMTimeCodeFormatDescriptionRef *formatDescriptionOut)
{
  cf = 0;
  if (!formatDescriptionOut)
  {
    v17 = v8;
    v18 = 144;
LABEL_17:

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", v18, v17, formatDescriptionOut, v7, v36);
  }

  if (timeCodeFormatType > 1952658995)
  {
    if (timeCodeFormatType == 1952658996)
    {
      goto LABEL_9;
    }

    v16 = 1953325924;
  }

  else
  {
    if (timeCodeFormatType == 1668166450)
    {
      goto LABEL_9;
    }

    v16 = 1668167220;
  }

  if (timeCodeFormatType != v16)
  {
    v17 = v8;
    v18 = 152;
    goto LABEL_17;
  }

LABEL_9:
  if ((frameDuration->flags & 1) == 0)
  {
    v17 = v8;
    v18 = 157;
    goto LABEL_17;
  }

  if (!frameQuanta)
  {
    v17 = v8;
    v18 = 162;
    goto LABEL_17;
  }

  FigThreadRunOnce(&sFigTimeCodeFormatDescriptionRegisterOnce, FigTimeCodeFormatDescriptionRegisterOnce);
  v29 = FigDerivedFormatDescriptionCreate(allocator, 0x746D6364, timeCodeFormatType, extensions, &cf, v19, v20, v21, v33);
  if (v29)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(cf, v22, v23, v24, v25, v26, v27, v28);
    epoch = frameDuration->epoch;
    *DerivedStorage = *&frameDuration->value;
    *(DerivedStorage + 16) = epoch;
    *(DerivedStorage + 24) = frameQuanta;
    *(DerivedStorage + 28) = flags;
    *formatDescriptionOut = cf;
  }

  return v29;
}

CMTime *__cdecl CMTimeCodeFormatDescriptionGetFrameDuration(CMTime *__return_ptr retstr, CMTimeCodeFormatDescriptionRef timeCodeFormatDescription)
{
  *&retstr->value = *&kCMTimeInvalid.value;
  retstr->epoch = 0;
  if (timeCodeFormatDescription)
  {
    result = FigDerivedFormatDescriptionGetDerivedStorage(timeCodeFormatDescription, v2, v3, v4, v5, v6, v7, v8);
    *&retstr->value = *&result->value;
    retstr->epoch = result->epoch;
  }

  else
  {

    return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0xC0, v9, v7, v8, v13);
  }

  return result;
}

uint32_t CMTimeCodeFormatDescriptionGetFrameQuanta(CMTimeCodeFormatDescriptionRef timeCodeFormatDescription)
{
  if (timeCodeFormatDescription)
  {
    return *(FigDerivedFormatDescriptionGetDerivedStorage(timeCodeFormatDescription, v1, v2, v3, v4, v5, v6, v7) + 24);
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0xD1, v8, v6, v7, vars0);
  return 0;
}

uint32_t CMTimeCodeFormatDescriptionGetTimeCodeFlags(CMTimeCodeFormatDescriptionRef desc)
{
  if (desc)
  {
    return *(FigDerivedFormatDescriptionGetDerivedStorage(desc, v1, v2, v3, v4, v5, v6, v7) + 28);
  }

  FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE5AuLL, "(Fig)", 0xE2, v8, v6, v7, vars0);
  return 0;
}

__CFString *figTimeCodeFormatDescriptionCopyDebugDesc(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  v10 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v10, 0);
  v12 = CFGetAllocator(a1);
  v13 = *DerivedStorage;
  time.epoch = *(DerivedStorage + 16);
  *&time.value = v13;
  v14 = CMTimeCopyDescription(v12, &time);
  CFStringAppendFormat(Mutable, 0, @"\t\tframeDuration: %@", v14);
  CFRelease(v14);
  CFStringAppendFormat(Mutable, 0, @"\t\tframes/sec: %d", *(DerivedStorage + 24));
  CFStringAppendFormat(Mutable, 0, @"\t\ttcFlags: %d", *(DerivedStorage + 28));
  return Mutable;
}

BOOL figTimeCodeFormatDescriptionEqual(const opaqueCMFormatDescription *a1, const opaqueCMFormatDescription *a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8)
{
  v11 = a1;
  DerivedStorage = FigDerivedFormatDescriptionGetDerivedStorage(a1, a2, a3, a4, a5, a6, a7, a8);
  Extensions = CMFormatDescriptionGetExtensions(v11);
  v21 = FigDerivedFormatDescriptionGetDerivedStorage(a2, v14, v15, v16, v17, v18, v19, v20);
  v22 = CMFormatDescriptionGetExtensions(a2);
  LODWORD(v11) = CMFormatDescriptionGetMediaSubType(v11);
  if (v11 == CMFormatDescriptionGetMediaSubType(a2) && (v23 = *DerivedStorage, time1.epoch = *(DerivedStorage + 16), *&time1.value = v23, v24 = *v21, v26.epoch = *(v21 + 16), *&v26.value = v24, !CMTimeCompare(&time1, &v26)) && *(DerivedStorage + 24) == *(v21 + 24) && *(DerivedStorage + 28) == *(v21 + 28))
  {
    return FigFormatDescriptionExtensionsDictionariesEqualIgnoringKeys(Extensions, v22, a3, a4) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t FigSandboxRegistrationAssociateWithURL(FigSandboxRegistrationObjCWrapper *a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    if (a2)
    {
      v4 = objc_alloc_init(MEMORY[0x1E696AAC8]);
      v2 = [[FigSandboxRegistrationObjCWrapper alloc] initWithRegistration:v2];
      if (v2)
      {
        objc_setAssociatedObject(a2, &urlSBRegKey, v2, 0x301);
        v5 = 0;
      }

      else
      {
        FigSandboxRegistrationAssociateWithURL_cold_1(&v7);
        v5 = v7;
      }
    }

    else
    {
      FigSandboxRegistrationAssociateWithURL_cold_2(&v8);
      v4 = 0;
      v2 = 0;
      v5 = v8;
    }
  }

  else
  {
    FigSandboxRegistrationAssociateWithURL_cold_3(&v9);
    v4 = 0;
    v5 = v9;
  }

  [v4 drain];
  return v5;
}

uint64_t FigGetSandboxRegistrationAssociatedWithURL(void *a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = objc_autoreleasePoolPush();
      AssociatedObject = objc_getAssociatedObject(a1, &urlSBRegKey);
      if (AssociatedObject)
      {
        AssociatedObject = [AssociatedObject _sandboxRegistration];
      }

      *a2 = AssociatedObject;
      objc_autoreleasePoolPop(v4);
      return 0;
    }

    else
    {
      FigGetSandboxRegistrationAssociatedWithURL_cold_1(&v7);
      return v7;
    }
  }

  else
  {
    FigGetSandboxRegistrationAssociatedWithURL_cold_2(&v8);
    return v8;
  }
}

uint64_t FigCreateBase32EncodedStringFromBytes(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFStringRef *a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {

        return figNumericsCreateEncodedStringFromBytes(a1, 5uLL, "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", a2, a3, a4, a5);
      }

      else
      {
        FigCreateBase32EncodedStringFromBytes_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigCreateBase32EncodedStringFromBytes_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigCreateBase32EncodedStringFromBytes_cold_3(&v8);
    return v8;
  }
}

uint64_t figNumericsCreateEncodedStringFromBytes(const __CFAllocator *a1, unint64_t a2, char *__s, uint64_t a4, uint64_t a5, int a6, CFStringRef *a7)
{
  if (!(strlen(__s) >> a2))
  {
    figNumericsCreateEncodedStringFromBytes_cold_3(&v45);
    v23 = 0;
    v41 = v45;
    goto LABEL_28;
  }

  if (a6)
  {
    v14 = (a2 + 8 * a5 - 1) / a2 + 8;
  }

  else
  {
    v14 = (a2 + 8 * a5 - 1) / a2;
  }

  v15 = MEMORY[0x19A8D7200](a1, v14, 3272708871, 0);
  v23 = v15;
  if (!v15)
  {
    figNumericsCreateEncodedStringFromBytes_cold_2(&v44, v16, v17, v18, v19, v20, v21, v22);
    v41 = v44;
    goto LABEL_28;
  }

  if (a5)
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    do
    {
      v27 = *(a4 + v24) | (v27 << 8);
      if (v26 + 8 >= a2)
      {
        v28 = &v15[v25];
        v29 = 8 - a2 + v26;
        v26 += 8;
        do
        {
          *v28++ = __s[v27 >> v29];
          v26 -= a2;
          v27 &= ~(-1 << v29);
          ++v25;
          v29 -= a2;
        }

        while (v26 >= a2);
      }

      else
      {
        v26 += 8;
      }

      ++v24;
    }

    while (v24 != a5);
    if (v26)
    {
      v15[v25++] = __s[v27 << (a2 - v26)];
    }

    if (!a6)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  v25 = 0;
  if (a6)
  {
LABEL_18:
    if (((v25 * a2) & 7) != 0)
    {
      v30 = a2 + a2 * v25;
      v31 = &v15[v25];
      do
      {
        *v31++ = 61;
        ++v25;
        v32 = (v30 & 7) == 0;
        v30 += a2;
      }

      while (!v32);
    }
  }

LABEL_22:
  v33 = CFStringCreateWithBytesNoCopy(a1, v15, v25, 0x8000100u, 0, a1);
  *a7 = v33;
  if (v33)
  {
    return 0;
  }

  figNumericsCreateEncodedStringFromBytes_cold_1(&v43, v34, v35, v36, v37, v38, v39, v40);
  v41 = v43;
LABEL_28:
  if (v41)
  {
    CFAllocatorDeallocate(a1, v23);
  }

  return v41;
}

uint64_t FigCreateBase64EncodedStringFromBytes(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int a4, CFStringRef *a5)
{
  if (a2)
  {
    if (a3)
    {
      if (a5)
      {

        return figNumericsCreateEncodedStringFromBytes(a1, 6uLL, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", a2, a3, a4, a5);
      }

      else
      {
        FigCreateBase64EncodedStringFromBytes_cold_1(&v6);
        return v6;
      }
    }

    else
    {
      FigCreateBase64EncodedStringFromBytes_cold_2(&v7);
      return v7;
    }
  }

  else
  {
    FigCreateBase64EncodedStringFromBytes_cold_3(&v8);
    return v8;
  }
}

uint64_t FigCreateBase64EncodedStringFromCFData(const __CFAllocator *a1, CFDataRef theData, int a3, CFStringRef *a4)
{
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);

    return FigCreateBase64EncodedStringFromBytes(a1, BytePtr, Length, a3, a4);
  }

  else
  {
    FigCreateBase64EncodedStringFromCFData_cold_1(&v11);
    return v11;
  }
}

uint64_t FigCreateHexStringFromCFData(const __CFAllocator *a1, const __CFData *a2, int a3, CFStringRef *a4)
{
  if (a4)
  {
    Mutable = CFStringCreateMutable(a1, 0);
    if (Mutable)
    {
      v16 = Mutable;
      if (a2)
      {
        if (CFDataGetLength(a2) >= 1)
        {
          BytePtr = CFDataGetBytePtr(a2);
          CFStringAppendFormat(v16, 0, @"0x");
          Length = CFDataGetLength(a2);
          v19 = Length;
          if (a3)
          {
            if (Length >= 1)
            {
              v20 = 0;
              do
              {
                CFStringAppendFormat(v16, 0, @"%02x", BytePtr[v20++]);
              }

              while (v20 < CFDataGetLength(a2));
            }
          }

          else if (Length >= 1)
          {
            v21 = BytePtr - 1;
            do
            {
              CFStringAppendFormat(v16, 0, @"%02x", v21[v19]);
            }

            while (v19-- > 1);
          }
        }

        v23 = 0;
      }

      else
      {
        FigCreateHexStringFromCFData_cold_1(&v25);
        v23 = v25;
      }

      *a4 = CFStringCreateCopy(a1, v16);
      CFRelease(v16);
    }

    else
    {
      FigCreateHexStringFromCFData_cold_2(&v26, v9, v10, v11, v12, v13, v14, v15);
      return v26;
    }
  }

  else
  {
    FigCreateHexStringFromCFData_cold_3(&v27);
    return v27;
  }

  return v23;
}

OSStatus CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(CFAllocatorRef allocator, const uint8_t *timeCodeDescriptionData, size_t size, CMTimeCodeDescriptionFlavor flavor, CMTimeCodeFormatDescriptionRef *formatDescriptionOut)
{
  v74 = *MEMORY[0x1E69E9840];
  memset(&v68, 0, sizeof(v68));
  formatDescriptionOuta = 0;
  if (timeCodeDescriptionData)
  {
    if (size < 0x22)
    {
      v9 = 445;
      goto LABEL_23;
    }

    if (!formatDescriptionOut)
    {
      v9 = 450;
LABEL_23:
      v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", v9, v7, v5, v6, v62);
      v34 = 0;
LABEL_77:
      if (formatDescriptionOuta)
      {
        CFRelease(formatDescriptionOuta);
      }

      goto LABEL_79;
    }

    v63 = *(timeCodeDescriptionData + 7);
    v64 = *(timeCodeDescriptionData + 6);
    v14 = 34;
    v15 = timeCodeDescriptionData[32];
    v65 = *(timeCodeDescriptionData + 5);
    v66 = *(timeCodeDescriptionData + 1);
    do
    {
      if (v14 + 8 > size)
      {
        goto LABEL_14;
      }

      v16 = &timeCodeDescriptionData[v14];
      v17 = bswap32(*&timeCodeDescriptionData[v14]);
      v18 = v17 - 8;
      if (v17 < 8)
      {
        goto LABEL_14;
      }

      v14 += v17;
      if (v14 > size)
      {
        v35 = v7;
        v36 = 4294954582;
        v37 = 314;
        goto LABEL_26;
      }
    }

    while (*(v16 + 1) != 1701667182);
    if (v18 < 4)
    {
LABEL_14:
      v19 = 0;
      v20 = 0;
      v21 = 1;
      goto LABEL_15;
    }

    v41 = *(v16 + 4);
    v19 = v16 + 8;
    v20 = bswap32(v41) >> 16;
    if (v20 + 4 > v18)
    {
      v35 = v7;
      v36 = 4294954582;
      v37 = 333;
LABEL_26:
      v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v36, "(Fig)", v37, v35, v5, v6, v62);
      v34 = 0;
      if (v31)
      {
        goto LABEL_77;
      }

      goto LABEL_65;
    }

    v21 = 2;
LABEL_15:
    v22 = v21;
    v23 = malloc_type_calloc(v21, 8uLL, 0x6004044C4A2DFuLL);
    if (!v23)
    {
      v35 = v7;
      v36 = 4294954583;
      v37 = 347;
      goto LABEL_26;
    }

    v24 = v23;
    HIDWORD(v62) = v15;
    v27 = malloc_type_calloc(v22, 8uLL, 0xC0040B8AA526DuLL);
    if (!v27)
    {
      v38 = v7;
      v39 = 4294954583;
      v40 = 353;
LABEL_52:
      v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, v39, "(Fig)", v40, v38, v25, v26, v62);
LABEL_53:
      v34 = 0;
LABEL_54:
      v47 = 0;
      v48 = 8 * v22;
      do
      {
        v49 = v24[v47 / 8];
        if (v49)
        {
          CFRelease(v49);
        }

        v47 += 8;
      }

      while (v48 != v47);
      free(v24);
      if (v27)
      {
        v50 = 0;
        do
        {
          v51 = v27[v50 / 8];
          if (v51)
          {
            CFRelease(v51);
          }

          v50 += 8;
        }

        while (v48 != v50);
        free(v27);
      }

      v15 = HIDWORD(v62);
      if (v31)
      {
        goto LABEL_77;
      }

LABEL_65:
      CMTimeMake(&v68, bswap32(v63), bswap32(v64));
      v54 = bswap32(v66);
      v55 = bswap32(v65);
      v56 = 1952658996;
      if (v54 == 1952658996)
      {
        v58 = 1668167220;
        v57 = (v55 & 8) == 0;
      }

      else
      {
        v56 = 1953325924;
        if (v54 != 1953325924)
        {
          v61 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", 0xA1, v7, v52, v53, v62);
          if (v61)
          {
            v31 = v61;
            goto LABEL_77;
          }

          v60 = 0;
          v59 = 0;
          goto LABEL_73;
        }

        v57 = (v55 & 8) == 0;
        v58 = 1668166450;
      }

      if (v57)
      {
        v59 = v56;
      }

      else
      {
        v59 = v58;
      }

      v60 = v55 & 0xFFFFFFF7;
LABEL_73:
      keys = v68;
      v31 = CMTimeCodeFormatDescriptionCreate(allocator, v59, &keys, v15, v60, v34, &formatDescriptionOuta);
      if (v31)
      {
        goto LABEL_77;
      }

      *formatDescriptionOut = formatDescriptionOuta;
      formatDescriptionOuta = 0;
LABEL_79:
      if (v34)
      {
        CFRelease(v34);
      }

      return v31;
    }

    v28 = @"VerbatimSampleDescription";
    if (@"VerbatimSampleDescription")
    {
      v28 = CFRetain(@"VerbatimSampleDescription");
    }

    *v24 = v28;
    *v27 = CFDataCreate(allocator, timeCodeDescriptionData, size);
    if (!v19)
    {
      v42 = 1;
LABEL_47:
      if (v22 == v42)
      {
        v34 = CFDictionaryCreate(allocator, v24, v27, v22, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (v34)
        {
          v31 = 0;
        }

        else
        {
          v31 = -12711;
        }

        goto LABEL_54;
      }

      v38 = v7;
      v39 = 4294954584;
      v40 = 382;
      goto LABEL_52;
    }

    v29 = bswap32(*(v19 + 1));
    valuePtr = HIWORD(v29);
    keys.value = 0;
    *&keys.timescale = 0;
    values = 0;
    v73 = 0;
    cf = 0;
    v30 = FigCFStringCreateWithBytesAndMovieLangCode(allocator, v19 + 4, v20, HIWORD(v29), 0, &cf, v25, v26, v62);
    if (v30)
    {
      v31 = v30;
      v32 = 0;
      v33 = 0;
LABEL_39:
      if (cf)
      {
        CFRelease(cf);
      }

      if (v33)
      {
        CFRelease(v33);
      }

      if (v31)
      {
        goto LABEL_53;
      }

      v46 = @"TimeCode_SourceReferenceName";
      if (@"TimeCode_SourceReferenceName")
      {
        v46 = CFRetain(@"TimeCode_SourceReferenceName");
      }

      v24[1] = v46;
      v27[1] = v32;
      v42 = 2;
      goto LABEL_47;
    }

    keys.value = @"TimeCode_SourceReferenceName_Value";
    values = cf;
    v43 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt16Type, &valuePtr);
    v33 = v43;
    if (v43)
    {
      *&keys.timescale = @"TimeCode_SourceReferenceName_LangCode";
      v73 = v43;
      v44 = CFDictionaryCreate(allocator, &keys, &values, 2, 0, MEMORY[0x1E695E9E8]);
      if (v44)
      {
        v32 = v44;
        v31 = 0;
        goto LABEL_39;
      }

      v45 = 263;
    }

    else
    {
      v45 = 249;
    }

    v31 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE57uLL, "(Fig)", v45, v7, v25, v26, v62);
    v32 = 0;
    goto LABEL_39;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", 0x1B8, v7, v5, v6, v76);
}

OSStatus CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionBlockBuffer(CFAllocatorRef allocator, CMBlockBufferRef timeCodeDescriptionBlockBuffer, CMTimeCodeDescriptionFlavor flavor, CMTimeCodeFormatDescriptionRef *formatDescriptionOut)
{
  cf = 0;
  if (timeCodeDescriptionBlockBuffer)
  {
    if (formatDescriptionOut)
    {
      dataPointerOut = 0;
      DataLength = CMBlockBufferGetDataLength(timeCodeDescriptionBlockBuffer);
      if (CMBlockBufferIsRangeContiguous(timeCodeDescriptionBlockBuffer, 0, 0))
      {
        v11 = CFRetain(timeCodeDescriptionBlockBuffer);
        cf = v11;
      }

      else
      {
        Contiguous = CMBlockBufferCreateContiguous(allocator, timeCodeDescriptionBlockBuffer, allocator, 0, 0, DataLength, 0, &cf);
        v11 = cf;
        if (Contiguous)
        {
          goto LABEL_12;
        }
      }

      CMBlockBufferGetDataPointer(v11, 0, 0, 0, &dataPointerOut);
      Contiguous = CMTimeCodeFormatDescriptionCreateFromBigEndianTimeCodeDescriptionData(allocator, dataPointerOut, DataLength, v12, formatDescriptionOut);
      v11 = cf;
LABEL_12:
      if (v11)
      {
        CFRelease(v11);
      }

      return Contiguous;
    }

    v14 = v6;
    v15 = 511;
  }

  else
  {
    v14 = v6;
    v15 = 506;
  }

  return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", v15, v14, v4, v5, v20);
}

OSStatus CMTimeCodeFormatDescriptionCopyAsBigEndianTimeCodeDescriptionBlockBuffer(CFAllocatorRef allocator, CMTimeCodeFormatDescriptionRef timeCodeFormatDescription, CMTimeCodeDescriptionFlavor flavor, CMBlockBufferRef *blockBufferOut)
{
  v43 = 0;
  v41 = 0;
  ptr = 0;
  dataPointerOut = 0;
  theBuffer = 0;
  if (!timeCodeFormatDescription)
  {
    v14 = v6;
    v15 = 573;
LABEL_35:
    DataPointer = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", v15, v14, v4, v5, blockBufferOuta);
    goto LABEL_36;
  }

  TypeID = CMFormatDescriptionGetTypeID();
  if (TypeID != CFGetTypeID(timeCodeFormatDescription))
  {
    v14 = v6;
    v15 = 578;
    goto LABEL_35;
  }

  if (CMFormatDescriptionGetMediaType(timeCodeFormatDescription) != 1953325924)
  {
    v14 = v6;
    v15 = 583;
    goto LABEL_35;
  }

  MediaSubType = CMFormatDescriptionGetMediaSubType(timeCodeFormatDescription);
  v12 = MediaSubType;
  if (MediaSubType > 1952658995)
  {
    if (MediaSubType == 1952658996)
    {
      goto LABEL_13;
    }

    v13 = 1953325924;
  }

  else
  {
    if (MediaSubType == 1668166450)
    {
      goto LABEL_13;
    }

    v13 = 1668167220;
  }

  if (MediaSubType != v13)
  {
    v14 = v6;
    v15 = 592;
    goto LABEL_35;
  }

LABEL_13:
  if (!blockBufferOut)
  {
    v14 = v6;
    v15 = 597;
    goto LABEL_35;
  }

  CMTimeCodeFormatDescriptionGetFrameDuration(&v38, timeCodeFormatDescription);
  if ((v38.flags & 1) == 0)
  {
    v14 = v6;
    v15 = 603;
    goto LABEL_35;
  }

  value = v38.value;
  timescale = v38.timescale;
  FrameQuanta = CMTimeCodeFormatDescriptionGetFrameQuanta(timeCodeFormatDescription);
  if (!FrameQuanta)
  {
    v14 = v6;
    v15 = 609;
    goto LABEL_35;
  }

  v19 = FrameQuanta;
  TimeCodeFlags = CMTimeCodeFormatDescriptionGetTimeCodeFlags(timeCodeFormatDescription);
  Extension = CMFormatDescriptionGetExtension(timeCodeFormatDescription, @"VerbatimSampleDescription");
  if (!Extension || (v22 = Extension, v23 = CFGetTypeID(Extension), v23 != CFDataGetTypeID()))
  {
    v28 = CMFormatDescriptionGetExtension(timeCodeFormatDescription, @"TimeCode_SourceReferenceName");
    if (v28 && (v29 = v28, v30 = CFGetTypeID(v28), v30 == CFDictionaryGetTypeID()) && !createaSourceReferenceNameStringFromDictionary(allocator, v29, &v43, &ptr, &v41))
    {
      v31 = v41 + 12;
    }

    else
    {
      v31 = 0;
    }

    DataPointer = CMBlockBufferCreateWithMemoryBlock(allocator, 0, v31 + 34, allocator, 0, 0, v31 + 34, 1u, &theBuffer);
    if (DataPointer)
    {
      goto LABEL_36;
    }

    DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
    if (DataPointer)
    {
      goto LABEL_36;
    }

    if (v12 > 1952658995)
    {
      if (v12 == 1952658996 || v12 == 1953325924)
      {
        goto LABEL_47;
      }
    }

    else
    {
      if (v12 == 1668166450)
      {
        TimeCodeFlags |= 8u;
        v12 = 1953325924;
        goto LABEL_47;
      }

      if (v12 == 1668167220)
      {
        TimeCodeFlags |= 8u;
        v12 = 1952658996;
LABEL_47:
        v33 = dataPointerOut;
        *dataPointerOut = bswap32(v31 + 34);
        *(v33 + 1) = bswap32(v12);
        *(v33 + 1) = 0xFFFF000000000000;
        *(v33 + 4) = 0;
        *(v33 + 5) = bswap32(TimeCodeFlags);
        *(v33 + 6) = bswap32(timescale);
        *(v33 + 7) = bswap32(value);
        v33[32] = v19;
        v33[33] = 0;
        if (v31)
        {
          v38.value = 0;
          DataPointer = CMBlockBufferGetDataPointer(theBuffer, 0x22uLL, 0, 0, &v38);
          if (DataPointer)
          {
            goto LABEL_36;
          }

          *v38.value = bswap32(v31);
          *(v38.value + 4) = 1701667182;
          v34 = v38.value;
          v36 = v41;
          v35 = ptr;
          *(v38.value + 8) = bswap32(v41) >> 16;
          *(v34 + 10) = bswap32(v43) >> 16;
          memmove((v34 + 12), v35, v36);
        }

        v27 = 0;
        goto LABEL_51;
      }
    }

    v12 = 0;
    goto LABEL_47;
  }

  Length = CFDataGetLength(v22);
  BytePtr = CFDataGetBytePtr(v22);
  v38.value = 0;
  DataPointer = CMBlockBufferCreateWithMemoryBlock(allocator, 0, Length, allocator, 0, 0, Length, 1u, &theBuffer);
  if (DataPointer)
  {
LABEL_36:
    v27 = DataPointer;
    goto LABEL_37;
  }

  v27 = CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &v38);
  if (v27)
  {
    goto LABEL_37;
  }

  memcpy(v38.value, BytePtr, Length);
LABEL_51:
  *blockBufferOut = theBuffer;
  theBuffer = 0;
LABEL_37:
  if (ptr)
  {
    CFAllocatorDeallocate(allocator, ptr);
  }

  if (theBuffer)
  {
    CFRelease(theBuffer);
  }

  return v27;
}

uint64_t createaSourceReferenceNameStringFromDictionary(uint64_t a1, CFDictionaryRef theDict, unsigned __int16 *a3, UInt8 **a4, uint64_t *a5)
{
  valuePtr = 0;
  Value = CFDictionaryGetValue(theDict, @"TimeCode_SourceReferenceName_Value");
  v11 = CFDictionaryGetValue(theDict, @"TimeCode_SourceReferenceName_LangCode");
  if (Value)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    return 4294954584;
  }

  v15 = 0;
  CFNumberGetValue(v11, kCFNumberSInt16Type, &valuePtr);
  v13 = FigCreateBytesFromCFStringAndMovieLangCode(a1, Value, valuePtr, 0, &v15);
  result = 0;
  *a3 = valuePtr;
  *a4 = v13;
  *a5 = v15;
  return result;
}

int8x8_t figBridge_FlipTimeCodeDescriptionData(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, size_t a7, CMBlockBufferFlags a8, CMBlockBufferRef *a9)
{
  if (!a1)
  {
    v10 = 775;
    goto LABEL_5;
  }

  if (a2 <= 0x21)
  {
    v10 = 780;
LABEL_5:
    FigSignalErrorAtGM("%s signalled err=%d at <>:%d", 0, 0xFFFFCE58uLL, "(Fig)", v10, v9, a7, a8, a9);
    return result;
  }

  result = vrev32_s8(*a1);
  v12 = bswap32(*(a1 + 8));
  v13 = bswap32(*(a1 + 12)) >> 16;
  v14 = bswap32(*(a1 + 14)) >> 16;
  v15 = vrev32q_s8(*(a1 + 16));
  *a1 = result;
  *(a1 + 8) = v12;
  *(a1 + 12) = v13;
  *(a1 + 14) = v14;
  *(a1 + 16) = v15;
  return result;
}

size_t FigBlockBufferHexDumpWithEmitter(OpaqueCMBlockBuffer *a1, size_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unsigned int a6, uint64_t (*a7)(uint64_t a1, const char *a2), uint64_t a8)
{
  v9 = a6;
  v91 = *MEMORY[0x1E69E9840];
  v89 = 0u;
  v88 = 0u;
  v87 = 0u;
  v86 = 0u;
  v85 = 0u;
  v84 = 0u;
  v83 = 0u;
  v82 = 0u;
  v14 = "%#6zx: ";
  if ((a6 & 2) == 0)
  {
    v14 = "%5zd: ";
  }

  v15 = "/* %#6zx: */ ";
  if ((a6 & 2) == 0)
  {
    v15 = "/* %5zd: */ ";
  }

  if ((a6 & 0x10) != 0)
  {
    v14 = v15;
  }

  v69 = v14;
  if ((a6 & 0x10) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = a6 & 1;
  }

  v72 = v16;
  if ((a6 & 0x10) != 0)
  {
    v17 = 0;
  }

  else
  {
    v17 = (a6 >> 2) & 1;
  }

  v71 = v17;
  if ((a6 & 0x10) != 0)
  {
    v18 = 0;
  }

  else
  {
    v18 = (((a6 >> 2) & 1) == 0) & (a6 >> 3);
  }

  result = CMBlockBufferGetDataLength(a1);
  offset = a2;
  v68 = result;
  v20 = result - a2;
  if (result > a2)
  {
    returnedPointerOut = 0;
    if (a7)
    {
      v21 = a7;
    }

    else
    {
      v21 = DefaultBBufHexDumpEmitter;
    }

    v73 = v21;
    v22 = 128;
    if (a5 < 0x80)
    {
      v22 = a5;
    }

    if (a5)
    {
      v23 = v22;
    }

    else
    {
      v23 = 16;
    }

    if (v20 >= a3)
    {
      v24 = a3;
    }

    else
    {
      v24 = result - a2;
    }

    if (a3)
    {
      v20 = v24;
    }

    v25 = v23 * a4;
    if (v20 < v23 * a4)
    {
      v25 = v20;
    }

    if (a4 > 0)
    {
      v20 = v25;
    }

    v67 = v20;
    if (v20)
    {
      v76 = 0;
      v26 = 0;
      v27 = v20;
      v28 = a2;
      do
      {
        if (v27 >= v23)
        {
          v29 = v23;
        }

        else
        {
          v29 = v27;
        }

        if (v71)
        {
          v89 = 0u;
          v88 = 0u;
          v87 = 0u;
          v86 = 0u;
          v85 = 0u;
          v84 = 0u;
          v83 = 0u;
          v82 = 0u;
          if (v23)
          {
            v30 = 0;
            v31 = v29;
            v32 = v28;
            do
            {
              lengthAtOffsetOut = 0;
              CMBlockBufferGetDataPointer(a1, v32, &lengthAtOffsetOut, 0, 0);
              v33 = v31 >= lengthAtOffsetOut;
              v31 -= lengthAtOffsetOut;
              if (!v33)
              {
                break;
              }

              v30 += lengthAtOffsetOut;
              v32 += lengthAtOffsetOut;
              *(&v82 + v30 - 1) = 1;
            }

            while (v31);
          }
        }

        v34 = v27 - v29;
        CMBlockBufferAccessDataBytes(a1, v28, v29, temporaryBlock, &returnedPointerOut);
        if (v72 && v34)
        {
          if (!v23)
          {
LABEL_53:
            ++v26;
            v76 += v29;
            goto LABEL_129;
          }

          v35 = returnedPointerOut;
          if (v29 <= 1)
          {
            v36 = 1;
          }

          else
          {
            v36 = v29;
          }

          while (!*v35++)
          {
            if (!--v36)
            {
              goto LABEL_53;
            }
          }
        }

        v74 = v27 - v29;
        if (v26)
        {
          snprintf(__str, 0x400uLL, "    * %zd zeroes", v76);
          result = v73(a8, __str);
          if (result)
          {
            return result;
          }

          v76 = 0;
        }

        v38 = fmtcheck(v69, "%zd");
        v39 = snprintf(__str, 0x400uLL, v38, v28 - offset);
        v40 = 1024 - v39;
        if (v39 >= 1024)
        {
          v41 = 0;
        }

        else
        {
          v41 = v39;
        }

        v42 = &__str[v41];
        if (v39 >= 1024)
        {
          v40 = 0;
        }

        v77 = v29;
        if (v23)
        {
          v43 = 0;
          if (v29 <= 1)
          {
            v44 = 1;
          }

          else
          {
            v44 = v29;
          }

          do
          {
            v45 = v40;
            if ((v9 & 0x10) != 0)
            {
              v47 = snprintf(v42, v40, "0x%02X, ", returnedPointerOut[v43++]);
            }

            else
            {
              if (!v18 || (v46 = "", ((v43 + 1) & 3) == 0))
              {
                v46 = " ";
                if (*(&v82 + v43))
                {
                  v46 = "|";
                }
              }

              v47 = snprintf(v42, v40, "%02X%s", returnedPointerOut[v43++], v46);
            }

            v40 = v45 - v47;
            if (v45 <= v47)
            {
              v48 = 0;
            }

            else
            {
              v48 = v47;
            }

            v42 += v48;
            if (v45 <= v47)
            {
              v40 = 0;
            }
          }

          while (v43 != v44);
        }

        v49 = v40;
        v50 = v77;
        if (v27 < v23)
        {
          do
          {
            if ((v9 & 0x10) != 0)
            {
              v53 = snprintf(v42, v49, "      ");
              ++v50;
            }

            else
            {
              v51 = (++v50 & 3) == 0 || v18 == 0;
              v52 = "";
              if (v51)
              {
                v52 = " ";
              }

              v53 = snprintf(v42, v49, "  %s", v52);
            }

            if (v49 <= v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = v53;
            }

            v42 += v54;
            if (v49 <= v53)
            {
              v49 = 0;
            }

            else
            {
              v49 -= v53;
            }
          }

          while (v50 != v23);
        }

        v55 = snprintf(v42, v49, "  ");
        if (v49 <= v55)
        {
          v56 = 0;
        }

        else
        {
          v56 = v55;
        }

        v57 = &v42[v56];
        if (v49 <= v55)
        {
          v58 = 0;
        }

        else
        {
          v58 = v49 - v55;
        }

        if ((v9 & 0x10) != 0)
        {
        }

        result = v73(a8, __str);
        v34 = v74;
        if (result)
        {
          return result;
        }

        v26 = 0;
LABEL_129:
        v28 += v29;
        v27 = v34;
      }

      while (v34);
    }

    if (v67 + offset < v68)
    {
      v73(a8, "  ...");
    }

    return v73(a8, 0);
  }

  return result;
}

uint64_t DefaultBBufHexDumpEmitter(uint64_t a1, const char *a2)
{
  if (a2)
  {
    fprintf(*MEMORY[0x1E69E9848], "%s\n", a2);
  }

  return 0;
}

uint64_t cfStringBBufHexDumpEmitter(__CFString *a1, uint64_t a2)
{
  if (a2)
  {
    CFStringAppendFormat(a1, 0, @"%s\n", a2);
  }

  return 0;
}

uint64_t FigBlockBufferCompare(OpaqueCMBlockBuffer *a1, OpaqueCMBlockBuffer *a2)
{
  DataLength = CMBlockBufferGetDataLength(a1);
  v5 = CMBlockBufferGetDataLength(a2);
  if (DataLength == v5)
  {
    v6 = 0;
    while (1)
    {
      v12 = 0;
      lengthAtOffsetOut = 0;
      v10 = 0;
      dataPointerOut = 0;
      CMBlockBufferGetDataPointer(a1, v6, &lengthAtOffsetOut, 0, &dataPointerOut);
      CMBlockBufferGetDataPointer(a2, v6, &v12, 0, &v10);
      v7 = lengthAtOffsetOut >= v12 ? v12 : lengthAtOffsetOut;
      if (!v7)
      {
        break;
      }

      result = memcmp(dataPointerOut, v10, v7);
      v6 += v7;
      if (result)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6 >= DataLength;
      }

      if (v9)
      {
        return result;
      }
    }

    if (lengthAtOffsetOut == v12)
    {
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else if (DataLength > v5)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t FigCreateCFDataWithBlockBufferNoCopy(const __CFAllocator *a1, CMBlockBufferRef theBuffer, size_t offset, unint64_t a4, CFDataRef *a5)
{
  if (!a5)
  {
    FigCreateCFDataWithBlockBufferNoCopy_cold_3(&context);
    return LODWORD(context.version);
  }

  dataPointerOut = 0;
  v13 = 0;
  result = CMBlockBufferGetDataPointer(theBuffer, offset, &v13, 0, &dataPointerOut);
  if (result)
  {
    v10 = 0;
    goto LABEL_9;
  }

  if (!a4)
  {
    a4 = v13;
LABEL_7:
    context.version = 0;
    context.info = theBuffer;
    context.retain = MEMORY[0x1E695D7C8];
    context.release = MEMORY[0x1E695D7C0];
    context.copyDescription = 0;
    context.deallocate = BBufUtilDummyDeallocate;
    context.preferredSize = 0;
    context.allocate = BBufUtilDummyAllocate;
    context.reallocate = 0;
    v11 = CFAllocatorCreate(a1, &context);
    if (v11)
    {
      v12 = v11;
      v10 = CFDataCreateWithBytesNoCopy(a1, dataPointerOut, a4, v11);
      CFRelease(v12);
      result = 0;
    }

    else
    {
      FigCreateCFDataWithBlockBufferNoCopy_cold_2(&v16);
      v10 = 0;
      result = v16;
    }

    goto LABEL_9;
  }

  if (v13 >= a4)
  {
    goto LABEL_7;
  }

  FigCreateCFDataWithBlockBufferNoCopy_cold_1(&context);
  v10 = 0;
  result = LODWORD(context.version);
LABEL_9:
  *a5 = v10;
  return result;
}

uint64_t FigCreateBlockBufferWithCFDataNoCopy(const __CFAllocator *a1, CFDataRef theData, unint64_t a3, size_t a4, CMBlockBufferRef *a5)
{
  blockBufferOut = 0;
  if (!theData)
  {
    v14 = FigCreateBlockBufferWithCFDataNoCopy_cold_6(a5, &customBlockSource);
    version = customBlockSource.version;
    if (v14)
    {
      return version;
    }

    goto LABEL_12;
  }

  if (!a5)
  {
    FigCreateBlockBufferWithCFDataNoCopy_cold_5(&customBlockSource);
    return customBlockSource.version;
  }

  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (!BytePtr)
  {
    FigCreateBlockBufferWithCFDataNoCopy_cold_4(&customBlockSource);
    goto LABEL_20;
  }

  if (Length <= a3)
  {
    FigCreateBlockBufferWithCFDataNoCopy_cold_1(&customBlockSource);
    goto LABEL_20;
  }

  if (!a4)
  {
    a4 = Length - a3;
    goto LABEL_10;
  }

  if (Length < a4)
  {
    FigCreateBlockBufferWithCFDataNoCopy_cold_3(&customBlockSource);
    goto LABEL_20;
  }

  if (Length - a4 >= a3)
  {
LABEL_10:
    customBlockSource.version = 0;
    customBlockSource.AllocateBlock = 0;
    customBlockSource.FreeBlock = BBufUtilCFDataReleaser;
    customBlockSource.refCon = CFRetain(theData);
    version = CMBlockBufferCreateWithMemoryBlock(a1, &BytePtr[a3], a4, 0, &customBlockSource, 0, a4, 0, &blockBufferOut);
    if (version)
    {
      CFRelease(theData);
    }

    goto LABEL_12;
  }

  FigCreateBlockBufferWithCFDataNoCopy_cold_2(&customBlockSource);
LABEL_20:
  version = customBlockSource.version;
LABEL_12:
  *a5 = blockBufferOut;
  return version;
}

uint64_t FigCreateBlockBufferCopyingMemoryBlock(CFAllocatorRef blockAllocator, const void *a2, size_t dataLength, CMBlockBufferRef *a4)
{
  destinationBuffer = 0;
  v7 = CMBlockBufferCreateWithMemoryBlock(blockAllocator, 0, dataLength, blockAllocator, 0, 0, dataLength, 1u, &destinationBuffer);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = CMBlockBufferReplaceDataBytes(a2, destinationBuffer, 0, dataLength);
    if (!v8)
    {
      *a4 = destinationBuffer;
      return v8;
    }
  }

  if (destinationBuffer)
  {
    CFRelease(destinationBuffer);
  }

  return v8;
}

void CMMemoryPoolInvalidate(CMMemoryPoolRef pool)
{
  v1 = *(pool + 2);
  if (v1)
  {
    FigSimpleMutexLock(*(v1 + 56));
    if (*(v1 + 16))
    {
      *(v1 + 16) = 0;
      poolBlockState_FreeBlocks(v1, 1, 0);
    }

    v2 = *(v1 + 56);

    FigSimpleMutexUnlock(v2);
  }
}

void poolBlockState_FreeBlocks(uint64_t a1, int a2, _BYTE *a3)
{
  if (a3)
  {
    *a3 = 0;
  }

  if (a2)
  {
    UpTimeNanoseconds = 0;
  }

  else
  {
    UpTimeNanoseconds = FigGetUpTimeNanoseconds();
    if (UpTimeNanoseconds < *(a1 + 48))
    {
      return;
    }
  }

  Count = CFArrayGetCount(*(a1 + 72));
  if (Count < 1)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    if (!a2)
    {
      goto LABEL_25;
    }

    return;
  }

  v8 = Count + 1;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 72), v8 - 2);
    v11 = ValueAtIndex;
    if (*(ValueAtIndex + 8))
    {
      v12 = ValueAtIndex[3];
LABEL_10:
      if (v9 >= v12)
      {
        v9 = v12;
      }

      if (a2)
      {
        goto LABEL_21;
      }

      goto LABEL_17;
    }

    if (a2 != 1)
    {
      v12 = ValueAtIndex[3];
      if (v12 >= UpTimeNanoseconds)
      {
        goto LABEL_10;
      }
    }

    poolBlockState_DeallocateVMMemory(ValueAtIndex);
    CFArrayRemoveValueAtIndex(*(a1 + 72), v8 - 2);
    CFDictionaryRemoveValue(*(a1 + 80), *v11);
    poolBlockState_postForgottenSerialNumber(a1, v11);
    free(v11);
    if (a2)
    {
      goto LABEL_21;
    }

LABEL_17:
    if (((v8 - 2) & 0xF) == 0)
    {
      v13 = FigGetUpTimeNanoseconds() - UpTimeNanoseconds;
      if (a3 && v13 >= 5000001)
      {
        *a3 = 1;
        return;
      }

      if (v13 >= 5000001)
      {
        return;
      }
    }

LABEL_21:
    --v8;
  }

  while (v8 > 1);
  if (a2)
  {
    return;
  }

LABEL_25:
  v14 = UpTimeNanoseconds + 5000000;
  if (v9 > UpTimeNanoseconds + 5000000)
  {
    v14 = v9;
  }

  *(a1 + 48) = v14;
}

uint64_t RegisterFigMemoryPoolType()
{
  result = _CFRuntimeRegisterClass();
  sFigMemoryPoolID = result;
  return result;
}

void *poolingAllocator_Reallocate(const void *a1, size_t a2, uint64_t a3, uint64_t a4)
{
  FigSimpleMutexLock(*(a4 + 56));
  Value = CFDictionaryGetValue(*(a4 + 64), a1);
  if (Value)
  {
    v8 = Value[1];
    FigSimpleMutexUnlock(*(a4 + 56));
    Internal = poolBlockState_AllocateInternal(a2, a4, 0, 0);
    v10 = Internal;
    if (Internal)
    {
      if (v8 >= a2)
      {
        v11 = a2;
      }

      else
      {
        v11 = v8;
      }

      memcpy(Internal, a1, v11);
      poolingAllocator_Deallocate(a1, a4);
    }
  }

  else
  {
    FigSimpleMutexUnlock(*(a4 + 56));
    return 0;
  }

  return v10;
}

uint64_t poolingAllocator_Deallocate(const void *a1, uint64_t a2)
{
  FigSimpleMutexLock(*(a2 + 56));
  Value = CFDictionaryGetValue(*(a2 + 64), a1);
  if (Value)
  {
    poolBlockState_DecrementUseCountInternal(a2, Value);
  }

  poolBlockState_FreeBlocks(a2, 0, 0);
  v5 = *(a2 + 56);

  return FigSimpleMutexUnlock(v5);
}

uint64_t poolBlockState_Create(const __CFAllocator *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, const void *a6, const void *a7, void *a8)
{
  v37 = *MEMORY[0x1E69E9840];
  memset(&valueCallBacks, 0, sizeof(valueCallBacks));
  memset(&callBacks, 0, sizeof(callBacks));
  if (qword_1ED4CCB50 != -1)
  {
    poolBlockState_Create_cold_1();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    poolBlockState_Create_cold_8(__str);
    return *__str;
  }

  v17 = Instance;
  *(Instance + 16) = a4;
  *(Instance + 24) = a5;
  *(Instance + 32) = a3;
  if (a6)
  {
    v18 = CFRetain(a6);
  }

  else
  {
    v18 = 0;
  }

  v17[5] = v18;
  v19 = FigSimpleMutexCreate();
  v17[7] = v19;
  if (a2)
  {
    v17[12] = FigCFWeakReferenceHolderCreateWithReferencedObject(a2);
    v19 = v17[7];
  }

  if (!v19)
  {
    poolBlockState_Create_cold_7(__str);
LABEL_29:
    v24 = *__str;
    goto LABEL_30;
  }

  if (a7)
  {
    Value = FigCFDictionaryGetValue(a7);
    if (Value)
    {
      Value = CFRetain(Value);
    }

    v17[13] = Value;
  }

  valueCallBacks.copyDescription = poolBlockState_copyBlockInfoDescription;
  v21 = CFDictionaryCreateMutable(a1, 0, 0, &valueCallBacks);
  v17[8] = v21;
  if (!v21)
  {
    poolBlockState_Create_cold_6(__str);
    goto LABEL_29;
  }

  callBacks.copyDescription = poolBlockState_copyBlockInfoDescription;
  v22 = CFArrayCreateMutable(a1, 0, &callBacks);
  v17[9] = v22;
  if (!v22)
  {
    poolBlockState_Create_cold_5(__str);
    goto LABEL_29;
  }

  v23 = CFDictionaryCreateMutable(a1, 0, 0, &valueCallBacks);
  v17[10] = v23;
  if (!v23)
  {
    poolBlockState_Create_cold_4(__str);
    goto LABEL_29;
  }

  v17[11] = *MEMORY[0x1E69E9AC8];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  *__str = 0u;
  if (v17[14] || v17[15])
  {
    goto LABEL_19;
  }

  snprintf(__str, 0x50uLL, "com.apple.coremedia.memorypool.ageout.%p", v17);
  v26 = FigDispatchQueueCreateWithPriority(__str, 0, 0);
  v17[14] = v26;
  if (!v26)
  {
    v28 = 1012;
LABEL_33:
    if (poolBlockState_Create_cold_2(v28))
    {
      goto LABEL_19;
    }

    v24 = v31;
LABEL_30:
    CFRelease(v17);
    return v24;
  }

  v27 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v26);
  v17[15] = v27;
  if (!v27)
  {
    v28 = 1015;
    goto LABEL_33;
  }

  poolBlockState_Create_cold_3();
LABEL_19:
  v24 = 0;
  *a8 = v17;
  return v24;
}

BOOL FigMemoryPoolIsPoolAllocator(const __CFAllocator *a1)
{
  memset(&v2, 0, sizeof(v2));
  result = 0;
  if (a1)
  {
    CFAllocatorGetContext(a1, &v2);
    if (v2.allocate == poolingAllocator_Allocate)
    {
      return 1;
    }
  }

  return result;
}

void CMMemoryPoolFlush(CMMemoryPoolRef pool)
{
  v1 = *(pool + 2);
  if (v1)
  {
    FigSimpleMutexLock(*(v1 + 56));
    if (*(v1 + 16))
    {
      poolBlockState_FreeBlocks(v1, 1, 0);
    }

    v2 = *(v1 + 56);

    FigSimpleMutexUnlock(v2);
  }
}

uint64_t FigMemoryPoolCopyStats(uint64_t a1, CFMutableDictionaryRef *a2)
{
  if (a1)
  {
    if (a2)
    {
      v3 = *(a1 + 16);
      FigSimpleMutexLock(*(v3 + 56));
      Count = CFDictionaryGetCount(*(v3 + 64));
      FigSimpleMutexUnlock(*(v3 + 56));
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      FigCFDictionarySetInt32(Mutable, @"FigMemoryPool_NumberOfBlocksInUse", Count, v6, v7, v8, v9, v10);
      result = 0;
      *a2 = Mutable;
    }

    else
    {
      FigMemoryPoolCopyStats_cold_1(&v12);
      return v12;
    }
  }

  else
  {
    FigMemoryPoolCopyStats_cold_2(&v13);
    return v13;
  }

  return result;
}

CFNumberRef CMMemoryPoolCreateBlockBufferWithOptions(uint64_t a1, size_t a2, char a3, uint64_t a4, CMBlockBufferRef *a5)
{
  valuePtr = 0;
  theBuffer = 0;
  blockLength = 0;
  if (!a1)
  {
    CMMemoryPoolCreateBlockBufferWithOptions_cold_2(&dataPointerOut);
LABEL_15:
    v13 = dataPointerOut;
    goto LABEL_10;
  }

  v9 = poolBlockState_AllocateInternal(a2, *(a1 + 16), &valuePtr, &blockLength);
  if (!v9)
  {
    CMMemoryPoolCreateBlockBufferWithOptions_cold_1(&dataPointerOut);
    goto LABEL_15;
  }

  v10 = v9;
  v11 = *MEMORY[0x1E695E480];
  v12 = CMBlockBufferCreateWithMemoryBlock(*MEMORY[0x1E695E480], v9, blockLength, *(a1 + 24), 0, 0, a2, 0, &theBuffer);
  if (v12)
  {
    v13 = v12;
    CFAllocatorDeallocate(*(a1 + 24), v10);
LABEL_10:
    if (theBuffer)
    {
      CFRelease(theBuffer);
    }

    return v13;
  }

  v13 = CFNumberCreate(v11, kCFNumberSInt64Type, &valuePtr);
  CMSetAttachment(theBuffer, @"MemoryPoolBlockSerialNumber", v13, 0);
  CMSetAttachment(theBuffer, @"OwningPoolBlockState", *(a1 + 16), 0);
  if (a3)
  {
    v14 = (a2 + 0x3FFF) & 0xFFFFFFFFFFFFC000;
    v15 = v14 - a2;
    if (v14 > a2 && v14 <= blockLength)
    {
      dataPointerOut = 0;
      CMBlockBufferGetDataPointer(theBuffer, 0, 0, 0, &dataPointerOut);
      v19 = v15;
      bzero(&dataPointerOut[a2], v15);
      v16 = CFNumberCreate(v11, kCFNumberSInt32Type, &v19);
      CMSetAttachment(theBuffer, @"NumTrailingPaddingBytes", v16, 0);
      CFRelease(v16);
    }
  }

  *a5 = theBuffer;
  theBuffer = 0;
  if (v13)
  {
    CFRelease(v13);
    v13 = 0;
    goto LABEL_10;
  }

  return v13;
}

void *poolBlockState_AllocateInternal(void *result, uint64_t a2, void *a3, void *a4)
{
  key = 0;
  if (result)
  {
    v7 = result;
    FigSimpleMutexLock(*(a2 + 56));
    v8 = &dword_19716620C;
    v9 = 6;
    while ((*v8 & (v7 >> 4)) == 0)
    {
      v8 += 2;
      if (!--v9)
      {
        goto LABEL_7;
      }
    }

    v10 = (v7 + *(v8 - 1) - 1) & *v8;
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_7:
    v10 = (v7 + 0x3FFF) & 0xFFFFC000;
LABEL_8:
    v11 = v10;
    v12 = *(a2 + 24);
    Count = CFArrayGetCount(*(a2 + 72));
    if (Count < 1)
    {
      v22 = 0;
LABEL_20:
      v25 = *(a2 + 104);
      if (v25)
      {
        Port = FigMachPortHolderGetPort(v25);
      }

      else
      {
        Port = 0;
      }

      if (FigVMPageAllocateWithOwnershipIdentity(&key, v11, Port, 2, v14, v15, v16, v17))
      {
        key = 0;
        if (!v22)
        {
LABEL_29:
          poolBlockState_FreeBlocks(a2, 0, 0);
          FigSimpleMutexUnlock(*(a2 + 56));
          return key;
        }

        if (!a3)
        {
LABEL_27:
          if (a4)
          {
            *a4 = v22[1];
          }

          goto LABEL_29;
        }

LABEL_26:
        *a3 = *v22;
        goto LABEL_27;
      }

      v22 = malloc_type_calloc(1uLL, 0x28uLL, 0x10800407C5467E8uLL);
      v30 = key;
      v22[1] = v11;
      v22[2] = v30;
      v22[3] = 0;
      *(v22 + 8) = 1;
      v31 = poolBlockState_newMemoryBlockSerialNumber(v22);
      *v22 = v31;
      CFDictionarySetValue(*(a2 + 80), v31, v22);
      v28 = *(a2 + 64);
      v29 = key;
    }

    else
    {
      v18 = v11 >> 1;
      if (v11 >> 1 >= v12)
      {
        v18 = v12;
      }

      v19 = v18 + v11;
      v20 = Count + 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a2 + 72), v20 - 2);
        v22 = ValueAtIndex;
        v23 = ValueAtIndex[1];
        if (v23 >= v11 && v23 <= v19)
        {
          break;
        }

        if (--v20 < 2)
        {
          goto LABEL_20;
        }
      }

      key = ValueAtIndex[2];
      v27 = key;
      ++*(ValueAtIndex + 8);
      CFArrayRemoveValueAtIndex(*(a2 + 72), v20 - 2);
      v28 = *(a2 + 64);
      v29 = v27;
    }

    CFDictionarySetValue(v28, v29, v22);
    if (!a3)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  return result;
}

unint64_t FigMemoryPoolCreateContiguousBlockBuffer(uint64_t a1, CFAllocatorRef structureAllocator, CFAllocatorRef blockAllocator, CMBlockBufferCustomBlockSource *customBlockSource, CMBlockBufferRef theBuffer, size_t offsetToData, size_t dataLength, CMBlockBufferFlags flags, CMBlockBufferRef *a9)
{
  v28 = 0;
  blockBufferOut = 0;
  dataPointerOut = 0;
  if (qword_1ED4CCB30 != -1)
  {
    FigMemoryPoolCreateContiguousBlockBuffer_cold_1();
  }

  if (_MergedGlobals_37)
  {
    DataPointer = CMBlockBufferCreateContiguous(structureAllocator, theBuffer, blockAllocator, customBlockSource, offsetToData, dataLength, flags, &blockBufferOut);
    if (DataPointer)
    {
      goto LABEL_20;
    }

    goto LABEL_16;
  }

  v18 = CMBlockBufferGetDataLength(theBuffer);
  if (v18 <= offsetToData)
  {
    v23 = 1992;
  }

  else
  {
    if (v18 - offsetToData >= dataLength)
    {
      if (!dataLength)
      {
        dataLength = v18 - offsetToData;
      }

      if ((flags & 2) != 0 || (v25 = 0, v26 = 0, FigBlockBufferGetDataPointerAndOrigin(theBuffer, offsetToData, &v26, 0, 0, &v28, &v25, v20, v24)) || v26 < dataLength || !FigIsMemoryPoolBlockBuffer(theBuffer))
      {
        DataPointer = CMMemoryPoolCreateBlockBufferWithOptions(a1, dataLength, flags, v19, &blockBufferOut);
        if (DataPointer)
        {
          goto LABEL_20;
        }

        DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, 0, 0, &dataPointerOut);
        if (DataPointer)
        {
          goto LABEL_20;
        }

        DataPointer = CMBlockBufferCopyDataBytes(theBuffer, offsetToData, dataLength, dataPointerOut);
        if (DataPointer)
        {
          goto LABEL_20;
        }
      }

      else
      {
        DataPointer = CMBlockBufferCreateWithBufferReference(*MEMORY[0x1E695E480], theBuffer, offsetToData, dataLength, flags, &blockBufferOut);
        if (DataPointer)
        {
LABEL_20:
          v21 = DataPointer;
          goto LABEL_24;
        }
      }

LABEL_16:
      v21 = 0;
      *a9 = blockBufferOut;
      return v21;
    }

    v23 = 1993;
  }

  FigMemoryPoolCreateContiguousBlockBuffer_cold_2(v23, &v26);
  v21 = v26;
LABEL_24:
  if (blockBufferOut)
  {
    CFRelease(blockBufferOut);
  }

  return v21;
}

BOOL fmp_readContiguousBlockBufferDefaultOnce(_BYTE *a1)
{
  result = FigGetCFPreferenceBooleanWithDefault(@"do_not_use_memory_pool_for_creating_contiguous_block_buffers", @"com.apple.coremedia", 0);
  *a1 = result;
  return result;
}

size_t memoryOrigin_unregisterUseOfBlock(uint64_t a1, const void *a2)
{
  if (a2)
  {
    FigReentrantMutexLock(*(a1 + 16));
    Value = CFDictionaryGetValue(*(a1 + 24), a2);
    if (Value)
    {
      memoryOrigin_unregisterUseOfBlock_cold_1(Value, &v12 + 1, &v13);
      v9 = HIDWORD(v12);
      v10 = v13;
    }

    else
    {
      emitter = fig_log_get_emitter("com.apple.coremedia", "");
      v9 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC360uLL, "<<<< MemoryPool >>>>", 0x9B5, v2, v7, v8, v12);
      v10 = 0;
    }

    FigReentrantMutexUnlock(*(a1 + 16));
    if (!v9)
    {
      poolBlockState_DecrementBlockUseCount();
    }

    if (v10)
    {
      CFRelease(v10);
    }
  }

  else
  {
    memoryOrigin_unregisterUseOfBlock_cold_2(&v13);
    return v13;
  }

  return v9;
}

uint64_t FigMemoryOriginUpdateRecipientStateFromXPCMessage(uint64_t a1, void *a2, const char *a3)
{
  cf = 0;
  if (!a1)
  {
    FigMemoryOriginUpdateRecipientStateFromXPCMessage_cold_2(&v9);
    return v9;
  }

  if (!a2)
  {
    FigMemoryOriginUpdateRecipientStateFromXPCMessage_cold_1(&v9);
    return v9;
  }

  v4 = FigXPCMessageCopyCFArray(a2, a3, &cf);
  v5 = cf;
  if (v4)
  {
    v6 = v4;
    if (!cf)
    {
      return v6;
    }

    goto LABEL_5;
  }

  v6 = memoryOrigin_unregisterUseOfMultipleBlocks(a1, cf);
  v5 = cf;
  if (cf)
  {
LABEL_5:
    CFRelease(v5);
  }

  return v6;
}

uint64_t FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2(void *a1, CFTypeRef *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "OriginObjectID");
  v9 = FigXPCServerRetainNeighborObjectFromID(qword_1ED4CCB38, uint64, a2, v4, v5, v6, v7, v8);
  if (v9)
  {
    if (!a2)
    {
      return v9;
    }
  }

  else
  {
    v10 = CFGetTypeID(*a2);
    if (qword_1ED4CCB80 != -1)
    {
      FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2_cold_1();
    }

    if (v10 == qword_1ED4CCB88)
    {
      return 0;
    }

    FigMemoryOriginCompleteEstablishingMemoryRecipientUsingXPCMessage2_cold_2(&v12);
    v9 = v12;
    if (!a2)
    {
      return v9;
    }
  }

  if (v9 && *a2)
  {
    CFRelease(*a2);
    *a2 = 0;
  }

  return v9;
}

uint64_t FigMemoryOriginGetObjectID(uint64_t a1, void *a2)
{
  if (a1)
  {
    if (a2)
    {
      result = 0;
      *a2 = *(a1 + 40);
    }

    else
    {
      FigMemoryOriginGetObjectID_cold_1(&v4);
      return v4;
    }
  }

  else
  {
    FigMemoryOriginGetObjectID_cold_2(&v5);
    return v5;
  }

  return result;
}

uint64_t FigMemoryOriginServerCopyMemoryOriginForObjectID(uint64_t a1, CFTypeRef *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  cf = 0;
  if (!a2)
  {
    FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_5(&v13);
    return v13;
  }

  *a2 = 0;
  if (!a1)
  {
    FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_4(&v13);
    return v13;
  }

  if (!qword_1ED4CCB38)
  {
    FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_3(&v13);
    return v13;
  }

  v9 = FigXPCServerRetainNeighborObjectFromID(qword_1ED4CCB38, a1, &cf, a4, a5, a6, a7, a8);
  if (!v9)
  {
    v10 = CFGetTypeID(cf);
    if (qword_1ED4CCB80 != -1)
    {
      FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_1();
    }

    if (v10 != qword_1ED4CCB88)
    {
      FigMemoryOriginServerCopyMemoryOriginForObjectID_cold_2(&cf, &v13);
      return v13;
    }
  }

  *a2 = cf;
  return v9;
}

size_t CreateSubBlockBuffer(const void *a1, uint64_t a2, xpc_object_t xdict, size_t *a4, uint64_t a5, OpaqueCMBlockBuffer **a6)
{
  xdicta[16] = *MEMORY[0x1E69E9840];
  if (xdict)
  {
    value = xpc_dictionary_get_value(xdict, "OriginData");
    int64 = xpc_dictionary_get_int64(xdict, "BlockSerialNumber");
    offsetToData = xpc_dictionary_get_int64(xdict, "OffsetInOrigin");
    dataLength = xpc_dictionary_get_int64(xdict, "BlockBufferLength");
    v11 = xpc_dictionary_get_int64(xdict, "RoundTripBlockSerialNumber");
    uint64 = xpc_dictionary_get_uint64(xdict, "RoundTripOriginObjectID");
  }

  else
  {
    value = 0;
    offsetToData = *a4;
    dataLength = a4[1];
    uint64 = a4[3];
    v11 = a4[4];
    int64 = a4[2];
  }

  bufferReference = 0;
  v98 = int64;
  v88 = a2;
  v15 = *(a2 + 32);
  v87 = (a2 + 32);
  cf = 0;
  valuePtr = 0;
  idx = -1;
  FigSimpleMutexLock(*v15);
  ImportedBlockEntryForSerialNumber = receivedMemoryAllocator_findImportedBlockEntryForSerialNumber(v15, int64, &idx);
  if (ImportedBlockEntryForSerialNumber)
  {
    v23 = ImportedBlockEntryForSerialNumber;
    v24 = 0;
    v25 = 0;
    v26 = 0;
LABEL_6:
    valuePtr = v23[1];
    goto LABEL_47;
  }

  if (v11)
  {
    if (uint64)
    {
      FigMemoryOriginServerCopyMemoryOriginForObjectID(uint64, &cf, v17, v18, v19, v20, v21, v22);
      v27 = cf;
      if (cf)
      {
        FigReentrantMutexLock(*(cf + 2));
        v28 = CFDictionaryGetValue(*(v27 + 3), v11);
        if (!v28)
        {
          FigReentrantMutexUnlock(*(v27 + 2));
          if (value)
          {
            goto LABEL_13;
          }

          goto LABEL_15;
        }

        v24 = CFRetain(*v28);
        FigReentrantMutexUnlock(*(v27 + 2));
        if (v24)
        {
          xdicta[0] = 0;
          *v100 = 0;
          poolBlockState_IncrementBlockUseCountAndAccessMemory(v24, v11, xdicta, v100);
          receivedMemoryAllocator_tellOriginToDecrementUseCountOfBlock(v15, int64, v74, v75, v76, v77, v78, v79);
          v80 = MEMORY[0x19A8D7200](a1, 64, 0x10700402D552879, 0);
          v23 = v80;
          if (v80)
          {
            *v80 = 0u;
            *(v80 + 16) = 0u;
            *(v80 + 32) = 0u;
            *(v80 + 48) = 0u;
            *v80 = 0;
            *(v80 + 8) = v11;
            v81 = *v100;
            *(v80 + 16) = xdicta[0];
            *(v80 + 24) = v81;
            *(v80 + 48) = CFRetain(v24);
            *(v23 + 20) = 256;
            if (a1)
            {
              v82 = CFRetain(a1);
            }

            else
            {
              v82 = 0;
            }

            v25 = 0;
            v26 = 0;
            v23[7] = v82;
            v23[4] = 0;
            goto LABEL_6;
          }

          emitter = fig_log_get_emitter("com.apple.coremedia", "");
          v41 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFC355uLL, "<<<< MemoryPool >>>>", 0x104D, v6, v84, v85, blockBufferOut);
LABEL_109:
          v57 = 0;
          v26 = 0;
          v66 = v41 == 0;
          goto LABEL_110;
        }
      }
    }
  }

  if (value)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_39;
  }

LABEL_15:
  xdicta[0] = 0;
  *v100 = 0;
  if (a5)
  {
    v29 = (a2 + 32);
    if (*(a5 + 12))
    {
      if (*(a5 + 24))
      {
        v30 = *(a5 + 16);
        if (v30)
        {
          count = xpc_array_get_count(v30);
          v32 = xpc_array_get_count(*(a5 + 24));
          v33 = 1;
          if (!count || v32 != count)
          {
            goto LABEL_31;
          }

          v34 = 0;
          while (xpc_array_get_int64(*(a5 + 16), v34) != int64)
          {
            if (count == ++v34)
            {
              goto LABEL_30;
            }
          }

          v35 = xpc_array_get_value(*(a5 + 24), v34);
          v36 = MEMORY[0x19A8DA4F0]();
          if (v35)
          {
            v37 = v36 == MEMORY[0x1E69E9F08];
          }

          else
          {
            v37 = 0;
          }

          if (v37)
          {
            goto LABEL_36;
          }
        }
      }

LABEL_30:
      v33 = 1;
    }

    else
    {
      CreateSubBlockBuffer_cold_1(v87, a5, (a5 + 12), &region);
      v33 = region;
    }
  }

  else
  {
    v33 = 1;
    v29 = (a2 + 32);
  }

LABEL_31:
  FigXPCCreateBasicMessage(0x66746368u, *&(*v29)[4], xdicta);
  xpc_dictionary_set_int64(xdicta[0], "BlockSerialNumber", int64);
  if ((v33 & 1) == 0)
  {
    (*v29)[9].i32[0] += xpc_array_get_count(*(a5 + 16));
    xpc_dictionary_set_value(xdicta[0], "AdditionalBlockSerialNumbers", *(a5 + 16));
  }

  v38 = *v29;
  v38[9] = vadd_s32((*v29)[9], 0x100000001);
  v39 = FigXPCRemoteClientSendSyncMessageCreatingReply(*&v38[3], xdicta[0], v100);
  if (v39)
  {
    v41 = v39;
    v23 = 0;
    goto LABEL_37;
  }

  v35 = xpc_dictionary_get_value(*v100, "OriginData");
  if ((v33 & 1) == 0)
  {
    v40 = xpc_dictionary_get_value(*v100, "AdditionalDataObjects");
    *(a5 + 24) = v40;
    FigXPCRetain(v40);
  }

LABEL_36:
  v23 = FigXPCRetain(v35);
  v41 = 0;
LABEL_37:
  FigXPCRelease(*v100);
  FigXPCRelease(xdicta[0]);
  if (v41)
  {
    v24 = 0;
    goto LABEL_109;
  }

  value = v23;
LABEL_39:
  v44 = *(v15 + 40);
  region = 0;
  v45 = xpc_shmem_map(value, &region);
  if (v45 && region)
  {
    v46 = v45;
    v25 = v23;
    v47 = malloc_type_calloc(1uLL, 0x28uLL, 0x10800407C5467E8uLL);
    v48 = region;
    *(v47 + 1) = v46;
    *(v47 + 2) = v48;
    *(v47 + 3) = 0;
    *(v47 + 8) = 1;
    *v47 = poolBlockState_newMemoryBlockSerialNumber(v47);
    *(v47 + 36) = 1;
    FigSimpleMutexLock(*(v44 + 56));
    CFDictionarySetValue(*(v44 + 80), *v47, v47);
    CFDictionarySetValue(*(v44 + 64), *(v47 + 2), v47);
    FigSimpleMutexUnlock(*(v44 + 56));
    v49 = *(v47 + 1);
    valuePtr = *v47;
    v24 = *(v47 + 2);
  }

  else
  {
    v24 = 0;
    if (!CreateSubBlockBuffer_cold_2())
    {
      v41 = LODWORD(xdicta[0]);
      goto LABEL_109;
    }

    v25 = v23;
    v49 = 0;
  }

  v50 = MEMORY[0x19A8D7200](a1, 64, 0x10700402D552879, 0);
  if (!v50)
  {
    CreateSubBlockBuffer_cold_4(xdicta);
    v24 = 0;
    v41 = LODWORD(xdicta[0]);
    v23 = v25;
    goto LABEL_109;
  }

  v23 = v50;
  *v50 = 0u;
  *(v50 + 16) = 0u;
  *(v50 + 32) = 0u;
  *(v50 + 48) = 0u;
  *(v50 + 16) = v24;
  *(v50 + 24) = v49;
  *v50 = v98;
  *(v50 + 8) = valuePtr;
  *(v50 + 48) = CFRetain(*(v15 + 40));
  *(v23 + 40) = 0;
  if (a1)
  {
    v51 = CFRetain(a1);
  }

  else
  {
    v51 = 0;
  }

  v23[7] = v51;
  v23[4] = 0;
  *(v23 + 41) = 0;
  CFArrayInsertValueAtIndex(*(v15 + 8), idx, v23);
  v24 = 0;
  v26 = 1;
LABEL_47:
  v52 = 1;
  if (!*(v23 + 40))
  {
    *(v23 + 40) = 1;
    v53 = CFDictionaryGetValue(*(v15 + 16), v23[2]);
    if (!v53)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, 0);
      if (!Mutable)
      {
        CreateSubBlockBuffer_cold_3(xdicta);
        v57 = 0;
        v52 = 0;
        v41 = LODWORD(xdicta[0]);
        goto LABEL_107;
      }

      v53 = Mutable;
      CFDictionarySetValue(*(v15 + 16), v23[2], Mutable);
      CFRelease(v53);
    }

    CFArrayAppendValue(v53, v23);
    v52 = 0;
  }

  v55 = v23[4];
  if (v55)
  {
    v56 = FigCFWeakReferenceHolderCopyReferencedObject(v55);
    bufferReference = v56;
  }

  else
  {
    v56 = bufferReference;
  }

  v42 = offsetToData;
  if (!v56)
  {
    v58 = CMBlockBufferCreateWithMemoryBlock(a1, v23[2], v23[3], *(v88 + 24), 0, 0, v23[3], 0, &bufferReference);
    if (!v58)
    {
      v59 = *MEMORY[0x1E695E480];
      v60 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt64Type, &valuePtr);
      CMSetAttachment(bufferReference, @"MemoryPoolBlockSerialNumber", v60, 0);
      if (v60)
      {
        CFRelease(v60);
      }

      CMSetAttachment(bufferReference, @"OwningPoolBlockState", v23[6], 0);
      if (*v23)
      {
        v61 = CFNumberCreate(v59, kCFNumberSInt64Type, &v98);
        CMSetAttachment(bufferReference, @"ImportedBlockSerialNumber", v61, 0);
        CFRelease(v61);
        v62 = CFNumberCreate(v59, kCFNumberSInt64Type, (v88 + 16));
        CMSetAttachment(bufferReference, @"RecipientObjectID", v62, 0);
        CFRelease(v62);
      }

      v63 = v23[4];
      if (v63)
      {
        CFRelease(v63);
      }

      v23[4] = FigCFWeakReferenceHolderCreateWithReferencedObject(bufferReference);
      v42 = offsetToData;
      if (offsetToData)
      {
        goto LABEL_57;
      }

LABEL_66:
      v64 = v23[3];
      v57 = bufferReference;
      v43 = dataLength;
      v23 = v25;
      if (v64 == dataLength)
      {
LABEL_69:
        v41 = 0;
        bufferReference = 0;
        goto LABEL_70;
      }

      goto LABEL_67;
    }

    v41 = v58;
    v57 = 0;
LABEL_107:
    v23 = v25;
    goto LABEL_70;
  }

  if (!offsetToData)
  {
    goto LABEL_66;
  }

LABEL_57:
  v57 = bufferReference;
  v43 = dataLength;
  v23 = v25;
LABEL_67:
  xdicta[0] = 0;
  v65 = CMBlockBufferCreateWithBufferReference(a1, v57, v42, v43, 0, xdicta);
  if (!v65)
  {
    CFRelease(bufferReference);
    v57 = xdicta[0];
    goto LABEL_69;
  }

  v41 = v65;
  v57 = 0;
LABEL_70:
  v66 = v41 == 0;
  if (bufferReference)
  {
    v67 = 1;
  }

  else
  {
    v67 = v41 == 0;
  }

  if (v52 || !v67)
  {
LABEL_110:
    receivedMemoryAllocator_tellOriginToDecrementUseCountOfBlock(*v87, v98, v42, v43, v19, v20, v21, v22);
    FigSimpleMutexUnlock(*v15);
    if (v66)
    {
      goto LABEL_84;
    }

    goto LABEL_76;
  }

  FigSimpleMutexUnlock(*v15);
  if (!v41)
  {
    goto LABEL_84;
  }

LABEL_76:
  v93 = 0;
  type = OS_LOG_TYPE_DEFAULT;
  os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v93, &type);
  v69 = v93;
  v70 = type;
  if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
  {
    v71 = v69;
  }

  else
  {
    v71 = v69 & 0xFFFFFFFE;
  }

  if (v71)
  {
    *v100 = 136315394;
    *&v100[4] = "memoryRecipient_createRecipientBlockBuffer";
    v101 = 1024;
    v102 = v41;
    v72 = _os_log_send_and_compose_impl(v71, 0, xdicta, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v70, "<<<< MemoryPool >>>> %s: <ERROR> encountered error %d while creating recipient block buffer", v100, 18);
    LOBYTE(v69) = v93;
  }

  else
  {
    v72 = 0;
  }

  fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v72, v72 != xdicta, v69);
  if (v26)
  {
    poolBlockState_DecrementBlockUseCount();
  }

LABEL_84:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v24)
  {
    CFRelease(v24);
  }

  if (bufferReference)
  {
    CFRelease(bufferReference);
  }

  FigXPCRelease(v23);
  if (v41)
  {
    if (v57)
    {
      CFRelease(v57);
    }
  }

  else
  {
    *a6 = v57;
  }

  return v41;
}

size_t FigMemoryRecipientCopyBlockBufferFromXPCMessage(const __CFAllocator *a1, uint64_t a2, xpc_object_t xdict, char *key, CMBlockBufferRef *a5)
{
  targetBBuf = 0;
  blockBufferOut = 0;
  if (!a2)
  {
    FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_4(&v22);
LABEL_28:
    v18 = v22;
    goto LABEL_16;
  }

  if (!xdict)
  {
    FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_3(&v22);
    goto LABEL_28;
  }

  if (!key)
  {
    FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_2(&v22);
    goto LABEL_28;
  }

  if (!a5)
  {
    FigMemoryRecipientCopyBlockBufferFromXPCMessage_cold_1(&v22);
    return v22;
  }

  value = xpc_dictionary_get_value(xdict, key);
  if (!value)
  {
LABEL_20:
    v18 = 0;
    goto LABEL_21;
  }

  v9 = value;
  v10 = xpc_dictionary_get_value(value, "SubBlockArray");
  if (v10)
  {
    v11 = v10;
    count = xpc_array_get_count(v10);
    v13 = CMBlockBufferCreateEmpty(a1, count, 0, &blockBufferOut);
    if (!v13)
    {
      if (count)
      {
        v14 = 0;
        while (1)
        {
          v15 = xpc_array_get_value(v11, v14);
          appended = CreateSubBlockBuffer(a1, a2, v15, 0, 0, &targetBBuf);
          v17 = targetBBuf;
          if (appended)
          {
            break;
          }

          appended = CMBlockBufferAppendBufferReference(blockBufferOut, targetBBuf, 0, 0, 0);
          if (appended)
          {
            break;
          }

          if (v17)
          {
            CFRelease(v17);
            targetBBuf = 0;
          }

          if (count == ++v14)
          {
            v18 = 0;
            goto LABEL_16;
          }
        }

        v18 = appended;
        if (v17)
        {
          CFRelease(v17);
        }

LABEL_16:
        if (!a5)
        {
          return v18;
        }

        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else
  {
    v13 = CreateSubBlockBuffer(a1, a2, v9, 0, 0, &blockBufferOut);
  }

  v18 = v13;
LABEL_21:
  *a5 = blockBufferOut;
  return v18;
}

uint64_t FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage(uint64_t a1, void *a2, const char *a3)
{
  if (a1)
  {
    if (a2)
    {
      FigSimpleMutexLock(**(a1 + 32));
      if (CFArrayGetCount(*(*(a1 + 32) + 64)) < 1)
      {
        v6 = 0;
      }

      else
      {
        dispatch_source_set_timer(*(*(a1 + 32) + 56), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
        v6 = FigXPCMessageSetCFArray(a2, a3, *(*(a1 + 32) + 64));
        if (!v6)
        {
          CFArrayRemoveAllValues(*(*(a1 + 32) + 64));
        }
      }

      FigSimpleMutexUnlock(**(a1 + 32));
    }

    else
    {
      FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage_cold_1(&v8);
      return v8;
    }
  }

  else
  {
    FigMemoryRecipientAppendRecipientStateUpdateToXPCMessage_cold_2(&v9);
    return v9;
  }

  return v6;
}

uint64_t FigMemoryRecipientAppendRecipientStateUpdateToIPCMessageData(uint64_t a1, _DWORD *a2, unint64_t a3, unint64_t *a4)
{
  if (!a1)
  {
    FigMemoryRecipientAppendRecipientStateUpdateToIPCMessageData_cold_1(&v23);
    v8 = 0;
    result = v23;
    if (!a4)
    {
      return result;
    }

    goto LABEL_15;
  }

  result = 0;
  v8 = 0;
  if (a2 && a3 >= 0xC)
  {
    v22 = 0;
    FigSimpleMutexLock(**(a1 + 32));
    Count = CFArrayGetCount(*(*(a1 + 32) + 64));
    if (Count < 1)
    {
      v8 = 0;
    }

    else
    {
      v16 = Count;
      v17 = 0;
      v18 = a3 - 8;
      v19 = 12;
      do
      {
        FigCFArrayGetInt64AtIndex(*(*(a1 + 32) + 64), 0, &v22, v11, v12, v13, v14, v15);
        CFArrayRemoveValueAtIndex(*(*(a1 + 32) + 64), 0);
        *&a2[2 * v17++ + 1] = v22;
        v20 = v19 + 8;
        if (!--v16)
        {
          break;
        }

        v21 = v19 > v18;
        v19 += 8;
      }

      while (!v21);
      v8 = v20 - 8;
      if (!v16)
      {
        dispatch_source_set_timer(*(*(a1 + 32) + 56), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      }

      *a2 = v17;
    }

    FigSimpleMutexUnlock(**(a1 + 32));
    result = 0;
  }

  if (a4)
  {
LABEL_15:
    *a4 = v8;
  }

  return result;
}

size_t FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2(xpc_object_t xdict, void *a2, const char *a3, uint64_t **a4)
{
  v82 = *MEMORY[0x1E69E9840];
  if (FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_sRecipientRemoteClients != -1)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_1();
  }

  value = xpc_dictionary_get_value(xdict, "MemoryOriginEndpoint");
  if (!value)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_10(&context);
    return LODWORD(context.version);
  }

  v9 = value;
  if (MEMORY[0x19A8DA4F0]() != MEMORY[0x1E69E9E90])
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_2(&context);
    return LODWORD(context.version);
  }

  uint64 = xpc_dictionary_get_uint64(xdict, "MemoryOriginServerToken");
  if (!uint64)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_9(&context);
    return LODWORD(context.version);
  }

  v11 = uint64;
  FigSimpleMutexLock(qword_1ED4CCB00);
  v18 = FigCFWeakReferenceTableCopyValue(qword_1ED4CCB08, v11, v12, v13, v14, v15, v16, v17);
  v25 = v18;
  if (v18)
  {
    Instance = CFRetain(v18);
    v27 = 0;
    v28 = 0;
    goto LABEL_39;
  }

  v70 = a2;
  v29 = FigCFWeakReferenceTableCopyValue(qword_1ED4CCB10, v11, v19, v20, v21, v22, v23, v24);
  v28 = v29;
  if (v29)
  {
    v27 = CFRetain(v29);
    v30 = *MEMORY[0x1E695E480];
    goto LABEL_15;
  }

  v71 = 0;
  v30 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DeathNoticeName", @"MemoryRecipient_ServerDied");
  CFDictionarySetValue(Mutable, @"xpcRemoteClientOption_DoNotMonitorConnection", *MEMORY[0x1E695E4D0]);
  v32 = FigXPCRemoteClientCreateWithXPCEndpoint("FigMemoryRecipient", v9, &MemoryRecipientCreateRemoteClientWithXPCEndpoint_sMemoryRecipientRemoteClientCallbacks, Mutable, &v71);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v32)
  {
    v27 = 0;
    if (!FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_3())
    {
      version_low = LODWORD(context.version);
      Instance = 0;
      goto LABEL_76;
    }
  }

  else
  {
    v27 = v71;
  }

  v33 = FigCFWeakReferenceTableAddValueAssociatedWithKey(qword_1ED4CCB10, v27, v11);
  if (v33)
  {
    version_low = v33;
    Instance = 0;
LABEL_76:
    FigSimpleMutexUnlock(qword_1ED4CCB00);
    if (!v27)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

LABEL_15:
  v72 = 0;
  xdicta = 0;
  if (memoryRecipient_GetTypeID_sRegisterMemoryRecipientTypeOnce != -1)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_4();
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_8(&context);
    version_low = LODWORD(context.version);
    a2 = v70;
    goto LABEL_37;
  }

  v34 = FigXPCCreateBasicMessage(0x63726538u, 0, &xdicta);
  if (v34 || (xpc_dictionary_set_string(xdicta, ".DebugName", a3), memset(buffer, 0, sizeof(buffer)), v35 = getpid(), proc_name(v35, buffer, 0x20u), xpc_dictionary_set_string(xdicta, ".ProcessName", buffer), v34 = FigXPCRemoteClientSendSyncMessageCreatingReply(v27, xdicta, &v72), v34))
  {
    version_low = v34;
    a2 = v70;
    goto LABEL_72;
  }

  v69 = a4;
  v36 = xpc_dictionary_get_uint64(v72, ".objectID");
  Instance[2] = v36;
  memset(&context, 0, sizeof(context));
  v37 = malloc_type_calloc(1uLL, 0x50uLL, 0x102004088C0405BuLL);
  if (!v37)
  {
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_7(&v78);
    version_low = v78;
    a2 = v70;
    goto LABEL_71;
  }

  v38 = v37;
  v39 = FigSimpleMutexCreate();
  *v38 = v39;
  if (!v39)
  {
    v66 = 3771;
LABEL_61:
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_5(v66, &v78);
    version_low = v78;
    goto LABEL_62;
  }

  v40 = CFArrayCreateMutable(v30, 0, 0);
  v38[1] = v40;
  if (!v40)
  {
    v66 = 3774;
    goto LABEL_61;
  }

  v41 = CFDictionaryCreateMutable(v30, 0, 0, MEMORY[0x1E695E9E8]);
  v38[2] = v41;
  if (!v41)
  {
    v66 = 3777;
    goto LABEL_61;
  }

  v42 = poolBlockState_Create(v30, 0, 0, 0, 0, @"ReceivedMemoryAllocatorPBS", 0, v38 + 5);
  if (v42)
  {
    version_low = v42;
LABEL_62:
    a2 = v70;
    receivedMemoryAllocator_ReleaseInfo(v38);
    a4 = v69;
    goto LABEL_71;
  }

  v38[3] = CFRetain(v27);
  v38[4] = v36;
  context.info = v38;
  context.release = receivedMemoryAllocator_ReleaseInfo;
  context.deallocate = receivedMemoryAllocator_Deallocate;
  v43 = CFAllocatorCreate(0, &context);
  if (!v43)
  {
    v66 = 3791;
    goto LABEL_61;
  }

  v44 = v43;
  label = 0;
  v78 = 0;
  cf = 0;
  v75 = 0;
  ServerPID = FigXPCRemoteClientGetServerPID(v27, &v75);
  if (!ServerPID)
  {
    FigServer_CopyProcessName(v75, &cf, v46, v47, v48, v49, v50, v51);
    CStringPtrAndBufferToFree = FigCFStringGetCStringPtrAndBufferToFree(cf, 0x8000100u, &v78);
    v53 = "()";
    if (CStringPtrAndBufferToFree)
    {
      v53 = CStringPtrAndBufferToFree;
    }

    asprintf(&label, "com.apple.coremedia.memoryrecipient.use-count-batching.%s-%d", v53, v75);
    free(v78);
    if (cf)
    {
      CFRelease(cf);
    }

    v38[6] = dispatch_queue_create(label, 0);
    free(label);
    if (v38[6])
    {
      v54 = CFArrayCreateMutable(v30, 0, MEMORY[0x1E695E9C0]);
      v38[8] = v54;
      if (v54)
      {
        v55 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v38[6]);
        v38[7] = v55;
        a2 = v70;
        if (v55)
        {
          v56 = FigCFWeakReferenceHolderCreateWithReferencedObject(v44);
          dispatch_set_context(v38[7], v56);
          dispatch_set_finalizer_f(v38[7], receivedMemoryAllocator_finalizeUseCountUpdateTimer);
          v57 = v38[7];
          handler[0] = MEMORY[0x1E69E9820];
          handler[1] = 0x40000000;
          handler[2] = __CreateReceivedMemoryAllocator_block_invoke;
          handler[3] = &__block_descriptor_tmp_127;
          handler[4] = v56;
          dispatch_source_set_event_handler(v57, handler);
          dispatch_source_set_timer(v38[7], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
          dispatch_resume(v38[7]);
          if (v56)
          {
            Instance[3] = v44;
            Instance[4] = v38;
            a4 = v69;
            goto LABEL_36;
          }

          v67 = 3848;
        }

        else
        {
          v67 = 3822;
        }

        goto LABEL_69;
      }

      v67 = 3819;
    }

    else
    {
      v67 = 3816;
    }

    a2 = v70;
LABEL_69:
    FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_cold_5(v67, &v80);
    version_low = v80;
    a4 = v69;
    goto LABEL_70;
  }

  version_low = ServerPID;
  a4 = v69;
  a2 = v70;
LABEL_70:
  CFRelease(v44);
LABEL_71:
  if (!version_low)
  {
LABEL_36:
    version_low = FigXPCRemoteClientAssociateObject(v27, Instance, v36, v58, v59, v60, v61, v62, v68);
    if (!version_low)
    {
      goto LABEL_37;
    }
  }

LABEL_72:
  CFRelease(Instance);
  Instance = 0;
LABEL_37:
  FigXPCRelease(xdicta);
  FigXPCRelease(v72);
  if (version_low)
  {
    goto LABEL_76;
  }

  v64 = FigCFWeakReferenceTableAddValueAssociatedWithKey(qword_1ED4CCB08, Instance, v11);
  if (v64)
  {
    version_low = v64;
    goto LABEL_76;
  }

LABEL_39:
  xpc_dictionary_set_uint64(a2, "OriginObjectID", Instance[2]);
  *a4 = Instance;
  FigSimpleMutexUnlock(qword_1ED4CCB00);
  if (v25)
  {
    CFRelease(v25);
  }

  Instance = 0;
  version_low = 0;
  if (!v27)
  {
    goto LABEL_43;
  }

LABEL_42:
  CFRelease(v27);
LABEL_43:
  if (v28)
  {
    CFRelease(v28);
  }

  if (Instance)
  {
    CFRelease(Instance);
  }

  return version_low;
}

uint64_t __FigMemoryRecipientCreateWithXPCMessage1AndUpdateXPCMessage2_block_invoke()
{
  qword_1ED4CCB00 = FigSimpleMutexCreate();
  v0 = *MEMORY[0x1E695E480];
  FigCFWeakReferenceTableCreate(*MEMORY[0x1E695E480], 1, &qword_1ED4CCB08);

  return FigCFWeakReferenceTableCreate(v0, 1, &qword_1ED4CCB10);
}

void transactionThreadDestructor(void *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*a1)
    {
      v10 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type(0, 0, &v10, &type);
      v3 = v10;
      v4 = type;
      if (os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, type))
      {
        v5 = v3;
      }

      else
      {
        v5 = v3 & 0xFFFFFFFE;
      }

      if (v5)
      {
        v11 = 136315394;
        v12 = "transactionThreadDestructor";
        v13 = 2048;
        v14 = a1;
        v6 = _os_log_send_and_compose_impl(v5, 0, v15, 128, &dword_196FA7000, os_log_and_send_and_compose_flags_and_os_log_type, v4, "<<<< MemoryPool >>>> %s: [Leak risk] Incomplete transaction found [%p]. This might cause leak of shared memory buffers.", &v11, 22);
        LOBYTE(v3) = v10;
      }

      else
      {
        v6 = 0;
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose(0, 0, 1, v6, v6 != v15, v3);
    }

    v7 = a1[1];
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = a1[2];
    if (v8)
    {
      CFRelease(v8);
    }

    free(a1);
  }
}

uint64_t FigMemoryOriginCompleteTransaction(uint64_t a1)
{
  v1 = a1;
  Value = FigThreadGetValue(qword_1ED4CCB48);
  v3 = Value;
  if (Value && *Value)
  {
    FigMemoryOriginCompleteTransaction_cold_2(Value, v1, &v8);
    v4 = v8;
  }

  else
  {
    v6 = FigMemoryOriginCompleteTransaction_cold_1(Value == 0, &v7);
    v4 = v7;
    if (v6)
    {
      return v4;
    }
  }

  FigCFArrayRemoveAllValues(v3[1]);
  FigCFArrayRemoveAllValues(v3[2]);
  *v3 = 0;
  return v4;
}

uint64_t FigMemoryRecipientCopyStats(uint64_t a1, CFMutableDictionaryRef *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigSimpleMutexLock(**(a1 + 32));
  Count = CFDictionaryGetCount(*(*(a1 + 32) + 16));
  FigCFDictionarySetCFIndex(Mutable, @"FigMemoryRecipient_NumberOfBlocksInUse", Count, v6, v7, v8, v9, v10);
  FigCFDictionarySetInt32(Mutable, @"FigMemoryRecipient_NumberOfMessagesSentToFetchSharedMemoryBlocks", *(*(a1 + 32) + 76), v11, v12, v13, v14, v15);
  FigCFDictionarySetInt32(Mutable, @"FigMemoryRecipient_NumberOfSharedMemoryBlocksFetched", *(*(a1 + 32) + 72), v16, v17, v18, v19, v20);
  FigSimpleMutexUnlock(**(a1 + 32));
  *a2 = Mutable;
  return 0;
}

uint64_t poolBlockState_DeallocateVMMemory(uint64_t result)
{
  if (!*(result + 36))
  {
    JUMPOUT(0x19A8DA090);
  }

  if (*(result + 16))
  {
    return munmap(*(result + 16), *(result + 8));
  }

  return result;
}

void poolBlockState_postForgottenSerialNumber(uint64_t a1, uint64_t *a2)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt64(Mutable, @"pool_BlockSerialNumber", *a2, v5, v6, v7, v8, v9);
  DefaultLocalCenter = CMNotificationCenterGetDefaultLocalCenter();
  CMNotificationCenterPostNotification(DefaultLocalCenter, @"pool_ForgetBlock", a1, Mutable, 0, v11, v12, v13, v14);

  CFRelease(Mutable);
}

uint64_t figMemoryPoolInit(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void figMemoryPoolFinalize(OpaqueCMMemoryPool *a1)
{
  CMMemoryPoolInvalidate(a1);
  v2 = *(a1 + 3);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 3) = 0;
  }

  v3 = *(a1 + 2);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 2) = 0;
  }
}

__CFString *figMemoryPoolCopyDebugDesc(void *a1)
{
  v2 = a1[2];
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFCopyDescription(v2);
  v6 = CFGetRetainCount(a1);
  CFStringAppendFormat(Mutable, 0, @"FigMemoryPool %p RC: %d poolingAllocator: %p %@", a1, v6, a1[3], v5);
  if (v5)
  {
    CFRelease(v5);
  }

  return Mutable;
}

__CFString *poolBlockState_copyBlockInfoDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  CFStringAppendFormat(Mutable, 0, @"info %p ptr %p size %zd, expiryNanos %lld BlockSN %016llx useCount %d", a1, *(a1 + 16), *(a1 + 8), *(a1 + 24), *a1, *(a1 + 32));
  return Mutable;
}

uint64_t poolBlockState_RegisterType(uint64_t *a1)
{
  result = _CFRuntimeRegisterClass();
  *a1 = result;
  return result;
}

double poolBlockState_Init(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  return result;
}

pthread_mutex_t *poolBlockState_Finalize(void *a1)
{
  v2 = a1[15];
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = a1[15];
    if (v3)
    {
      dispatch_release(v3);
      a1[15] = 0;
    }
  }

  v4 = a1[14];
  if (v4)
  {
    dispatch_release(v4);
    a1[14] = 0;
  }

  v5 = a1[8];
  if (v5)
  {
    CFRelease(v5);
    a1[8] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  v8 = a1[5];
  if (v8)
  {
    CFRelease(v8);
    a1[5] = 0;
  }

  v9 = a1[12];
  if (v9)
  {
    CFRelease(v9);
    a1[12] = 0;
  }

  v10 = a1[13];
  if (v10)
  {
    CFRelease(v10);
    a1[13] = 0;
  }

  result = a1[7];
  if (result)
  {
    result = FigSimpleMutexDestroy(result);
    a1[7] = 0;
  }

  return result;
}

__CFString *poolBlockState_CopyFormattingDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  FigSimpleMutexLock(*(a1 + 56));
  v4 = CFGetRetainCount(a1);
  v5 = *(a1 + 40);
  Count = FigCFDictionaryGetCount(*(a1 + 64));
  v7 = *(a1 + 72);
  if (v7)
  {
    v7 = CFArrayGetCount(v7);
  }

  v8 = &stru_1F0B78830;
  if (v5)
  {
    v8 = v5;
  }

  CFStringAppendFormat(Mutable, 0, @"<PoolBlockState %p RC: %d %@ blocksInUse: %ld blocksForReuse: %ld>", a1, v4, v8, Count, v7);
  FigSimpleMutexUnlock(*(a1 + 56));
  return Mutable;
}

__CFString *poolBlockState_CopyDebugDesc(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  FigSimpleMutexLock(*(a1 + 56));
  v4 = CFGetRetainCount(a1);
  v5 = &stru_1F0B78830;
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  if (*(a1 + 16))
  {
    v6 = "recyclingEnabled";
  }

  else
  {
    v6 = "recyclingDisabled";
  }

  CFStringAppendFormat(Mutable, 0, @"PoolBlockState %p RC: %d %@ %s blocksInUse: %p %@ blocksForReuse: %p %@", a1, v4, v5, v6, *(a1 + 64), *(a1 + 64), *(a1 + 72), *(a1 + 72));
  FigSimpleMutexUnlock(*(a1 + 56));
  return Mutable;
}

void poolBlockState_finalizeAgeOutTimer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

unint64_t poolBlockState_newMemoryBlockSerialNumber(uint64_t a1)
{
  if (qword_1ED4CCB60 != -1)
  {
    poolBlockState_newMemoryBlockSerialNumber_cold_1();
  }

  return FigAtomicIncrement64(&qword_1ED4CCB68);
}

uint64_t poolBlockState_InitBlockSerialNumber(void *a1)
{
  result = getpid();
  *a1 = result << 47;
  return result;
}

uint64_t poolBlockState_IncrementBlockUseCountAndAccessMemory(uint64_t a1, const void *a2, void *a3, void *a4)
{
  FigSimpleMutexLock(*(a1 + 56));
  Value = CFDictionaryGetValue(*(a1 + 80), a2);
  ++Value[8];
  v9 = *(Value + 1);
  *a3 = *(Value + 2);
  *a4 = v9;
  v10 = *(a1 + 56);

  return FigSimpleMutexUnlock(v10);
}

void memoryOrigin_disposeOriginEntry(const void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void __EnsureMemoryOriginServerStarted_block_invoke()
{
  v0 = getpid();
  qword_1ED4CCB70 = FigGetUpTimeNanoseconds() & 0x1FFFFFFFFFFLL | (v0 << 47);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (Mutable)
  {
    v2 = Mutable;
    FigCFDictionarySetValue(Mutable, @"xpcServerOption_OptOutOfPurge", *MEMORY[0x1E695E4D0]);
    v7 = FigXPCServerStartWithNewXPCEndpoint("MemoryOriginServer", MemoryOriginServerStart_callbacks, v2, &qword_1ED4CCB38, v3, v4, v5, v6);
    CFRelease(v2);
  }

  else
  {
    __EnsureMemoryOriginServerStarted_block_invoke_cold_1(&v8);
    v7 = v8;
  }

  dword_1ED4CCB2C = v7;
}

double memoryOrigin_Init(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t memoryOrigin_Finalize(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    CFDictionaryApplyFunction(v2, memoryOrigin_disposeEachOriginEntry, 0);
    v3 = *(a1 + 24);
    if (v3)
    {
      CFRelease(v3);
      *(a1 + 24) = 0;
    }
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 32) = 0;
  }

  free(*(a1 + 48));
  *(a1 + 48) = 0;
  free(*(a1 + 64));
  *(a1 + 64) = 0;
  v5 = *(a1 + 72);
  if (v5)
  {
    os_release(v5);
    *(a1 + 72) = 0;
  }

  v6 = *(a1 + 16);

  return FigReentrantMutexDestroy(v6);
}

void memoryOrigin_disposeEachOriginEntry(int a1, const void **a2)
{
  if (*(a2 + 4) >= 1)
  {
    memoryOrigin_disposeEachOriginEntry_cold_1();
  }

  memoryOrigin_disposeOriginEntry(a2);
}

uint64_t receivedMemoryAllocator_compareBlockEntryWithSerialNumber(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  if (a1 != a3)
  {
    a2 = a1;
  }

  v5 = -1;
  if (a1 != a3)
  {
    v5 = 1;
  }

  v6 = 1;
  if (a1 != a3)
  {
    v6 = -1;
  }

  v7 = *a2;
  v8 = v3 < v7;
  if (v3 <= v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = v6;
  }

  if (v8)
  {
    return v5;
  }

  else
  {
    return v9;
  }
}

uint64_t memoryRecipient_NotificationFilter(int a1, CFTypeRef cf1, uint64_t a3, int a4)
{
  if (CFEqual(cf1, @"ForgetBlock"))
  {
    memoryRecipient_NotificationFilter_cold_1(a1, a4);
  }

  return 1;
}

void receivedMemoryAllocator_originDidForgetImportedBlockAtIndex(uint64_t a1, CFIndex a2)
{
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 8), a2);
  ValueAtIndex[41] = 1;
  CFArrayRemoveValueAtIndex(*(a1 + 8), a2);
  if (!ValueAtIndex[40])
  {

    receivedMemoryAllocator_disposeReceivedMemoryEntry(ValueAtIndex, v5);
  }
}

void receivedMemoryAllocator_disposeReceivedMemoryEntry(void *result, uint64_t a2)
{
  if (result)
  {
    receivedMemoryAllocator_disposeReceivedMemoryEntry_cold_1(result);
  }
}

void *memoryRecipient_Init(void *result)
{
  result[2] = 0;
  result[3] = 0;
  result[4] = 0;
  return result;
}

void memoryRecipient_Finalize(uint64_t a1)
{
  if (*(a1 + 24))
  {
    FigSimpleMutexLock(**(a1 + 32));
    Count = CFArrayGetCount(*(*(a1 + 32) + 8));
    if (Count >= 1)
    {
      v3 = Count;
      do
      {
        receivedMemoryAllocator_originDidForgetImportedBlockAtIndex(*(a1 + 32), 0);
        --v3;
      }

      while (v3);
    }

    FigSimpleMutexUnlock(**(a1 + 32));
    v4 = *(a1 + 24);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 24) = 0;
    }
  }
}

__CFString *memoryRecipient_CopyDebugDesc(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  FigSimpleMutexLock(**(a1 + 32));
  Count = CFArrayGetCount(*(*(a1 + 32) + 8));
  v4 = CFDictionaryGetCount(*(*(a1 + 32) + 16));
  CFStringAppendFormat(Mutable, 0, @"FigMemoryRecipient %p ObjectID %016llx receivedMemoryAllocator %p %ld memory blocks (%ld in use)", a1, *(a1 + 16), *(a1 + 24), Count, v4);
  FigSimpleMutexUnlock(**(a1 + 32));
  return Mutable;
}

void receivedMemoryAllocator_ReleaseInfo(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    if (v2)
    {
      dispatch_source_cancel(v2);
      v10 = *(a1 + 56);
      if (v10)
      {
        dispatch_release(v10);
        *(a1 + 56) = 0;
      }

      receivedMemoryAllocator_sendPendingBatchOfBlockSNtoDecrementUseCount(a1);
    }

    v3 = *(a1 + 48);
    if (v3)
    {
      dispatch_release(v3);
      *(a1 + 48) = 0;
    }

    v4 = *(a1 + 64);
    if (v4)
    {
      CFRelease(v4);
      *(a1 + 64) = 0;
    }

    v5 = *(a1 + 8);
    if (v5)
    {
      FigCFArrayApplyBlock(v5, &__block_literal_global_131);
    }

    v6 = *(a1 + 40);
    if (v6)
    {
      CFRelease(v6);
      *(a1 + 40) = 0;
    }

    v7 = *(a1 + 8);
    if (v7)
    {
      CFRelease(v7);
      *(a1 + 8) = 0;
    }

    v8 = *(a1 + 16);
    if (v8)
    {
      CFRelease(v8);
      *(a1 + 16) = 0;
    }

    v9 = *(a1 + 24);
    if (v9)
    {
      CFRelease(v9);
      *(a1 + 24) = 0;
    }

    FigSimpleMutexDestroy(*a1);

    free(a1);
  }
}

void receivedMemoryAllocator_Deallocate(const void *a1, uint64_t a2)
{
  FigSimpleMutexLock(*a2);
  Value = CFDictionaryGetValue(*(a2 + 16), a1);
  if (Value && (v5 = Value, Count = CFArrayGetCount(Value), Count >= 1))
  {
    v7 = Count;
    v8 = 0;
    Mutable = 0;
    v10 = *MEMORY[0x1E695E480];
    v11 = MEMORY[0x1E695E9C0];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      v13 = FigCFWeakReferenceHolderCopyReferencedObject(ValueAtIndex[4]);
      if (!v13)
      {
        *(ValueAtIndex + 40) = 0;
        CFArrayRemoveValueAtIndex(v5, v8);
        if (v7 == 1)
        {
          CFDictionaryRemoveValue(*(a2 + 16), a1);
        }

        if (*(ValueAtIndex + 41))
        {
          receivedMemoryAllocator_disposeReceivedMemoryEntry(ValueAtIndex, v15);
        }

        else
        {
          receivedMemoryAllocator_tellOriginToDecrementUseCountOfBlock(a2, *ValueAtIndex, v16, v17, v18, v19, v20, v21);
        }

        goto LABEL_11;
      }

      v14 = v13;
      if (*ValueAtIndex)
      {
        break;
      }

      if (!Mutable)
      {
        Mutable = CFArrayCreateMutable(v10, 0, v11);
      }

      CFArrayAppendValue(Mutable, v14);
      CFRelease(v14);
      if (v7 == ++v8)
      {
        goto LABEL_11;
      }
    }

    FigSimpleMutexUnlock(*a2);
    CFRelease(v14);
    if (Mutable)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Mutable = 0;
LABEL_11:
    FigSimpleMutexUnlock(*a2);
    if (Mutable)
    {
LABEL_12:

      CFRelease(Mutable);
    }
  }
}

void receivedMemoryAllocator_finalizeUseCountUpdateTimer(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

void __CreateReceivedMemoryAllocator_block_invoke(uint64_t a1)
{
  if (FigCFWeakReferenceHolderCopyReferencedObject(*(a1 + 32)))
  {
    __CreateReceivedMemoryAllocator_block_invoke_cold_1();
  }
}

CFTypeRef OUTLINED_FUNCTION_14_8(uint64_t a1, const __CFString *a2)
{

  return CMGetAttachment(v2, a2, 0);
}

uint64_t FigTransportStreamGetClassID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_38 != -1)
  {
    FigTransportStreamGetClassID_cold_1();
  }

  return qword_1ED4CCB98;
}

size_t stream_getClassID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CMBlockBufferRef *a9)
{
  ClassID = CMBaseGetClassID();

  return FigBaseClassRegisterClass(&stream_getClassID_sClassDesc, ClassID, 1, a1, v11, v12, v13, v14, a9);
}

uint64_t FigTransportStreamGetTypeID(uint64_t a1, uint64_t a2)
{
  if (_MergedGlobals_38 != -1)
  {
    FigTransportStreamGetClassID_cold_1();
  }

  v3 = qword_1ED4CCB98;

  return CMBaseClassGetCFTypeID(v3);
}

size_t FigEndpointPlaybackSessionStartServer()
{
  v12[0] = 1;
  v12[1] = HandleEndpointPlaybackSessionRemoteMessage;
  v13 = 0u;
  v14 = 0u;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  FigCFDictionarySetInt32(Mutable, @"xpcServerOption_SelfTerminationTimeout", 30, v1, v2, v3, v4, v5);
  v10 = FigXPCServerStart("com.apple.coremedia.endpointplaybacksession.xpc", v12, Mutable, &gEndpointPlaybackSessionServer, v6, v7, v8, v9);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v10;
}

uint64_t FigXPCEndpointPlaybackSessionServerAssociateCopiedNeighborFigEndpointPlaybackSession(uint64_t a1, const void *a2, uint64_t a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x10200404161829EuLL);
  if (v6)
  {
    FigXPCEndpointPlaybackSessionServerAssociateCopiedNeighborFigEndpointPlaybackSession_cold_2(a2, v6);
  }

  else if (!FigXPCEndpointPlaybackSessionServerAssociateCopiedNeighborFigEndpointPlaybackSession_cold_1(&v9))
  {
    v7 = v9;
    goto LABEL_4;
  }

  v7 = FigXPCServerAssociateCopiedObjectWithNeighborProcess(gEndpointPlaybackSessionServer, a1, a2, v6, DisposeSessionEventHandlerState, 0, a3);
  if (v7)
  {
LABEL_4:
    DisposeSessionEventHandlerState(v6);
  }

  return v7;
}

void DisposeSessionEventHandlerState(void *a1)
{
  if (a1)
  {
    v2 = *a1;
    if (*a1)
    {
      v3 = *(*(CMBaseObjectGetVTable(*a1) + 16) + 120);
      if (v3)
      {
        v3(v2, 0, 0, 0);
      }
    }

    v4 = *(a1 + 3);
    if (v4)
    {
      Count = CFArrayGetCount(v4);
      if (Count >= 1)
      {
        v11 = Count;
        for (i = 0; i != v11; ++i)
        {
          v15 = 0;
          FigCFArrayGetInt64AtIndex(*(a1 + 3), i, &v15, v6, v7, v8, v9, v10);
          sandbox_extension_release();
        }
      }

      v13 = *(a1 + 3);
      if (v13)
      {
        CFRelease(v13);
        *(a1 + 3) = 0;
      }
    }

    v14 = *(a1 + 2);
    if (v14)
    {
      *(a1 + 2) = 0;
      xpc_release(v14);
    }

    if (*a1)
    {
      CFRelease(*a1);
    }

    free(a1);
  }
}

void *CreateCompletionCallbackParametersFromMessageAndConnection_0(void *a1, void *a2)
{
  uint64 = xpc_dictionary_get_uint64(a1, "CompletionID");
  if (!uint64)
  {
    return 0;
  }

  v5 = uint64;
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x10200403ED2C137uLL);
  v14 = v6;
  if (v6)
  {
    *v6 = v5;
    v6[1] = xpc_dictionary_get_uint64(a1, ".objectID");
    v14[2] = FigXPCRetain(a2);
  }

  else
  {
    CreateCompletionCallbackParametersFromMessageAndConnection_cold_1_0(0, v7, v8, v9, v10, v11, v12, v13, v16);
  }

  return v14;
}

size_t checkRequestAgainstSandboxRules(_xpc_connection_s *a1, uint64_t a2, void *a3, CFDictionaryRef theDict)
{
  v23 = *MEMORY[0x1E69E9840];
  if (!CFDictionaryGetValue(theDict, @"path"))
  {
    xpc_connection_get_pid(a1);
    bzero(v22, 0x400uLL);
    if (!sandbox_container_path_for_pid())
    {
      result = CFDictionaryGetValue(theDict, @"Content-Location");
      if (!result)
      {
        return result;
      }

      if (!FigXPCConnectionHasEntitlement(a1, "com.apple.security.network.client", v12, v13, v14, v15, v16, v17))
      {
        emitter = fig_log_get_emitter("com.apple.coremedia", "");
        return FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFBE96uLL, "<< FigEndpointPlaybackSessionXPCServer >>", 0x1DD, v4, v19, v20, v21);
      }
    }

    return 0;
  }

  if (xpc_dictionary_get_string(a3, "SExtToken"))
  {
    v9 = sandbox_extension_consume();
    if (v9 != -1)
    {
      SInt64 = FigCFNumberCreateSInt64(*MEMORY[0x1E695E480], v9);
      CFArrayAppendValue(*(a2 + 24), SInt64);
      if (SInt64)
      {
        CFRelease(SInt64);
      }

      return 0;
    }

    __error();
    return 4294950551;
  }

  else
  {
    checkRequestAgainstSandboxRules_cold_1(v22);
    return v22[0];
  }
}

uint64_t OUTLINED_FUNCTION_4_18(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 + 8);

  return FigXPCCreateBasicMessage(0x63616C62u, v4, va);
}

void *OUTLINED_FUNCTION_11_10()
{

  return CreateCompletionCallbackParametersFromMessageAndConnection_0(v0, v1);
}

void OUTLINED_FUNCTION_14_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t message)
{
  v12 = *(v10 + 16);

  xpc_connection_send_message(v12, message);
}

size_t OUTLINED_FUNCTION_15_9(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, CFDictionaryRef theDict)
{

  return checkRequestAgainstSandboxRules(v20, v21, v19, theDict);
}

uint64_t FigH264Bridge_GetWidthAndHeightFromParsedSPS(uint64_t result, void *a2, void *a3)
{
  *a2 = 16 * *(result + 324) + 16;
  v3 = 2 - *(result + 332);
  *a3 = 16 * (v3 + v3 * *(result + 328));
  if (*(result + 344))
  {
    v4 = *(result + 40);
    if (v4 > 3)
    {
      v5 = -2;
      v6 = -2;
    }

    else
    {
      v5 = qword_197166288[v4];
      v6 = qword_1971662A8[v4];
    }

    v7 = *(result + 360) + *(result + 356);
    *a2 += v5 * (*(result + 352) + *(result + 348));
    *a3 += v6 * v3 * v7;
  }

  return result;
}

uint64_t FigH264Bridge_GetSPSAndPPSCountFromAVCC(const __CFData *a1, uint64_t *a2, uint64_t *a3)
{
  if (a1 && (v6 = CFGetTypeID(a1), v6 == CFDataGetTypeID()))
  {
    Length = CFDataGetLength(a1);
    BytePtr = CFDataGetBytePtr(a1);
    if (Length <= 5)
    {
      FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_5(&v16);
    }

    else if (*BytePtr == 1)
    {
      v9 = 0;
      v10 = 1;
      v11 = 5;
      while (1)
      {
        if (Length <= v11)
        {
          FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_2(&v16);
          return v16;
        }

        v12 = v10;
        v13 = BytePtr[v11++];
        v14 = (v12 & 1) != 0 ? v13 & 0x1F : v13;
        if (v14)
        {
          break;
        }

LABEL_14:
        if (a2 == 0 || (v12 & 1) == 0)
        {
          if (a3 != 0 && (v9 & 1) != 0)
          {
            result = 0;
            *a3 = v13;
            return result;
          }
        }

        else
        {
          *a2 = v13 & 0x1F;
        }

        v10 = 0;
        v9 = 1;
        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      while (1)
      {
        if (Length <= v11 + 1)
        {
          FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_3(&v16);
          return v16;
        }

        v11 += (BytePtr[v11 + 1] | (BytePtr[v11] << 8)) + 2;
        if (Length < v11)
        {
          break;
        }

        if (!--v14)
        {
          goto LABEL_14;
        }
      }

      FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_4(&v16);
    }

    else
    {
      FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_1(&v16);
    }
  }

  else
  {
    FigH264Bridge_GetSPSAndPPSCountFromAVCC_cold_6(&v16);
  }

  return v16;
}

size_t FigH264Bridge_CreateAVCCFromH264ParameterSets(int a1, size_t count, uint64_t a3, uint64_t a4, unsigned int a5, CMBlockBufferRef *a6, void *a7, __CFData **a8)
{
  v12 = a5;
  v13 = a4;
  v200 = *MEMORY[0x1E69E9840];
  v165 = 0u;
  v166 = 0u;
  theData = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (!a3)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_28(bytes);
LABEL_227:
    v129 = 0;
    goto LABEL_228;
  }

  if (!a4)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_27(bytes);
    goto LABEL_227;
  }

  if (count <= 1)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_26(bytes);
    goto LABEL_227;
  }

  if (a5 > 4 || ((1 << a5) & 0x16) == 0)
  {
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    v134 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE58uLL, "<<<< H264Bridge >>>>", 0xC8C, v8, v136, v137, v143);
    v129 = 0;
    goto LABEL_198;
  }

  if (!a8)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_25(bytes);
    goto LABEL_227;
  }

  *a8 = 0;
  v14 = malloc_type_calloc(count, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v14)
  {
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_24(bytes);
    goto LABEL_227;
  }

  v144 = a6;
  v147 = a7;
  v145 = v12;
  v146 = a8;
  v15 = 0;
  v156 = 0;
  v157 = 0;
  v158 = 0;
  v159 = 0;
  v153 = 0;
  v154 = 0;
  __base = v14;
  v16 = v14 + 2;
  v155 = -1;
  v17 = 7;
  v151 = -1;
  v152 = -1;
  v149 = 1;
  v150 = -1;
  v18 = count;
  while (1)
  {
    v19 = *(v13 + 8 * v15);
    if (v19 >= 0x10000)
    {
      FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_23(bytes);
      goto LABEL_214;
    }

    if (!v19)
    {
      FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_22(bytes);
      goto LABEL_214;
    }

    v20 = *(a3 + 8 * v15);
    if (!v20)
    {
      FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_21(bytes);
      goto LABEL_214;
    }

    v21 = *v20;
    if (v21 <= 31)
    {
      v122 = fig_log_get_emitter("com.apple.coremedia", "");
      v125 = 4294954584;
      v126 = 3235;
      goto LABEL_195;
    }

    v22 = v21 & 0x1F;
    v23 = (1 << (v21 & 0x1F)) & 0x2180;
    if (v22 > 0xD || v23 == 0)
    {
      v122 = fig_log_get_emitter("com.apple.coremedia", "");
      v125 = 4294954584;
      v126 = 3243;
LABEL_195:
      v43 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v122, v125, "<<<< H264Bridge >>>>", v126, v8, v123, v124, v144);
LABEL_196:
      v134 = v43;
      goto LABEL_197;
    }

    *(v16 - 1) = v15;
    v16[1] = v22;
    *&v165 = v20;
    v25 = *(v13 + 8 * v15);
    DWORD2(v165) = v25;
    if (v22 == 7)
    {
      *&v166 = v20 + 4;
      if (v25 < 8uLL)
      {
        if (v25 >= 5uLL)
        {
          DWORD2(v166) = 0;
          __memcpy_chk();
          v18 = count;
        }
      }

      else
      {
        DWORD2(v166) = *(v20 + 1);
      }

      v26 = 4;
    }

    else
    {
      *&v166 = v20 + 1;
      if (v25 < 5uLL)
      {
        if (v25 >= 2uLL)
        {
          DWORD2(v166) = 0;
          __memcpy_chk();
          v18 = count;
        }
      }

      else
      {
        DWORD2(v166) = *(v20 + 1);
      }

      v26 = 1;
    }

    v27 = bswap32(DWORD2(v166));
    DWORD2(v166) = v27;
    BYTE12(v166) = 0;
    if (!(v27 >> 19))
    {
      goto LABEL_213;
    }

    v28 = &v20[v26];
    v29 = __clz(v27);
    v30 = v29 + 1;
    v31 = v27 << (v29 + 1) >> -v29;
    if (!v29)
    {
      v31 = 0;
    }

    *v16 = v31 + ~(-1 << v29);
    v32 = v30 + v29;
    v33 = &v28[(v30 + v29) >> 3];
    v34 = v20 + v25 - v33;
    if (v34 <= 3)
    {
      v35 = v32 & 7;
      if (v34 <= 0)
      {
        v36 = v33;
      }

      else
      {
        v36 = v33 + 1;
      }

      v37 = v34 - (v34 > 0);
      if (v37 > 0)
      {
        ++v36;
      }

      v38 = v37 - (v37 > 0);
      v39 = v38 <= 0;
      v40 = v38 & (v38 >> 31);
      v41 = v39 ? v36 : v36 + 1;
      if (v40 | v35 && v41 == v33)
      {
LABEL_213:
        FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_1(bytes);
        goto LABEL_214;
      }
    }

    if (v22 == 13)
    {
      ++v159;
      goto LABEL_165;
    }

    if (v22 == 8)
    {
      ++v158;
      goto LABEL_165;
    }

    if (v22 == 7)
    {
      break;
    }

LABEL_165:
    v17 += v19 + 2;
    ++v15;
    v16 += 4;
    if (v18 == v15)
    {
      v127 = v159;
      v128 = v156;
      if (v149)
      {
        if (v144)
        {
          *v144 = v153;
        }

        if (v147)
        {
          *v147 = v154;
        }
      }

      if (v156)
      {
        v129 = __base;
        if (v158)
        {
          v130 = HIDWORD(v157) - 100;
          if ((HIDWORD(v157) - 100) > 0x2C || ((1 << v130) & 0x100000400401) == 0)
          {
            v128 = v156 + v159;
            v127 = 0;
          }

          if (v128 >= 0x20)
          {
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_17(bytes);
          }

          else if (v158 >= 0x100)
          {
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_16(bytes);
          }

          else if (v127 >= 0x100)
          {
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_15(bytes);
          }

          else
          {
            qsort(__base, v18, 0x10uLL, FigH264Bridge_sortParameterSets);
            if (v130 <= 0x2C && ((1 << v130) & 0x100000400401) != 0)
            {
              v17 += 4;
            }

            Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v17);
            if (Mutable)
            {
              v132 = Mutable;
              bytes[0] = 1;
              bytes[1] = BYTE4(v157);
              bytes[2] = v155;
              bytes[3] = v157;
              bytes[4] = (v145 - 1) | 0xFC;
              bytes[5] = v128 | 0xE0;
              CFDataAppendBytes(Mutable, bytes, 6);
              if (v127)
              {
                v133 = 0;
              }

              else
              {
                v133 = 13;
              }

              FigH264Bridge_addSortedParameterSetsToData(v132, count, __base, a3, v13, 7, v133);
              bytes[0] = v158;
              CFDataAppendBytes(v132, bytes, 1);
              FigH264Bridge_addSortedParameterSetsToData(v132, count, __base, a3, v13, 8, 0);
              if (v130 <= 0x2C && ((1 << v130) & 0x100000400401) != 0)
              {
                bytes[0] = v152 | 0xFC;
                bytes[1] = v151 | 0xF8;
                bytes[2] = v150 | 0xF8;
                bytes[3] = v127;
                CFDataAppendBytes(v132, bytes, 4);
                FigH264Bridge_addSortedParameterSetsToData(v132, count, __base, a3, v13, 13, 0);
              }

              v134 = 0;
              *v146 = v132;
              goto LABEL_198;
            }

            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_14(bytes);
          }
        }

        else
        {
          FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_18(bytes);
        }

LABEL_228:
        v134 = *bytes;
        goto LABEL_198;
      }

      FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_19(bytes);
LABEL_214:
      v134 = *bytes;
      goto LABEL_197;
    }
  }

  v162 = 0;
  v163 = 0;
  v198 = 0u;
  v199 = 0u;
  v196 = 0u;
  v197 = 0u;
  v194 = 0u;
  v195 = 0u;
  v192 = 0u;
  v193 = 0u;
  v190 = 0u;
  v191 = 0u;
  v188 = 0u;
  v189 = 0u;
  v186 = 0u;
  v187 = 0u;
  v184 = 0u;
  v185 = 0u;
  v182 = 0u;
  v183 = 0u;
  v180 = 0u;
  v181 = 0u;
  v178 = 0u;
  v179 = 0u;
  v176 = 0u;
  v177 = 0u;
  v174 = 0u;
  v175 = 0u;
  v172 = 0u;
  v173 = 0u;
  v170 = 0u;
  v171 = 0u;
  *bytes = 0u;
  v169 = 0u;
  v43 = RemoveEmulation3Byte(v20, v25, &theData);
  if (v43)
  {
    goto LABEL_196;
  }

  v44 = theData;
  if (theData)
  {
    *&v165 = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(v44);
    v45 = v165;
  }

  else
  {
    v45 = *(a3 + 8 * v15);
    *&v165 = v45;
    Length = *(v13 + 8 * v15);
  }

  DWORD2(v165) = Length;
  *&v166 = v45;
  if (Length < 4uLL)
  {
    if (Length)
    {
      DWORD2(v166) = 0;
      __memcpy_chk();
    }
  }

  else
  {
    DWORD2(v166) = *v45;
  }

  DWORD2(v166) = bswap32(DWORD2(v166));
  BYTE12(v166) = 0;
  if (PullParamSetSPS(&v165, bytes))
  {
    v47 = 0;
    v48 = 0;
    v162 = 0;
    v163 = 0;
  }

  else
  {
    FigH264Bridge_GetWidthAndHeightFromParsedSPS(bytes, &v163, &v162);
    v47 = v162;
    v48 = v163;
  }

  if (v153 && v153 != v48 || v154 && v154 != v47)
  {
    v149 = 0;
  }

  v49 = v165;
  *&v166 = v165;
  v50 = DWORD2(v165);
  if (DWORD2(v165) < 4)
  {
    if (DWORD2(v165))
    {
      DWORD2(v166) = 0;
      v51 = v47;
      v52 = v13;
      v53 = v44;
      v54 = v48;
      __memcpy_chk();
      v48 = v54;
      v44 = v53;
      v13 = v52;
      v47 = v51;
    }
  }

  else
  {
    DWORD2(v166) = *v165;
  }

  DWORD2(v166) = bswap32(DWORD2(v166));
  BYTE12(v166) = 0;
  if (v50 - 1 >= 4)
  {
    v55 = (v49 + 4);
    if ((v50 - 6) >= 0xFFFFFFFC)
    {
      v56 = v49[2];
      v57 = v49[3];
      v59 = v49[4] << 24;
    }

    else
    {
      v56 = v49[2];
      if ((v50 - 7) >= 0xFFFFFFFC)
      {
        v57 = v49[3];
        v58 = (v49[4] << 16) | (v49[5] << 8);
LABEL_80:
        v59 = v58 << 8;
      }

      else
      {
        v57 = v49[3];
        if ((v50 & 0xFFFFFFFC) == 4)
        {
          v58 = (v49[4] << 16) | (v49[5] << 8) | v49[6];
          goto LABEL_80;
        }

        v59 = bswap32(*v55);
      }
    }

    if (!(v59 >> 19))
    {
      goto LABEL_215;
    }

    v60 = v49 + v50;
    v61 = v49[1];
    v62 = __clz(v59);
    v63 = v55 + (v62 >> 2);
    v64 = v49 + v50 - v63;
    if (v64 < 4)
    {
      v67 = v64 - 1;
      v66 = v64 == 1;
      if (v64 < 1)
      {
        goto LABEL_215;
      }

      v68 = *v63;
      if (v66)
      {
        v65 = v68 << 24;
      }

      else
      {
        v69 = (v68 << 16) | (v63[1] << 8);
        if (v67 != 1)
        {
          v69 |= v63[2];
        }

        v65 = v69 << 8;
      }
    }

    else
    {
      v65 = bswap32(*v63);
    }

    if (v61 <= SHIDWORD(v157))
    {
      v70 = HIDWORD(v157);
    }

    else
    {
      v70 = v49[1];
    }

    v71 = v157;
    if (v57 > v157)
    {
      v71 = v57;
    }

    v157 = __PAIR64__(v70, v71);
    if ((v61 - 100) <= 0x2C && ((1 << (v61 - 100)) & 0x100000400401) != 0)
    {
      v72 = (2 * (v62 & 3)) | 1;
      v73 = v65 << ((2 * (v62 & 3)) | 1);
      if (!(v73 >> 19))
      {
        goto LABEL_108;
      }

      v74 = __clz(v73);
      v75 = v73 << (v74 + 1) >> -v74;
      if (v74)
      {
        v76 = v75;
      }

      else
      {
        v76 = 0;
      }

      v77 = v74 + v72 + v74 + 1;
      v78 = v77 >> 3;
      v79 = v77 & 7;
      v80 = &v63[v78];
      v81 = v60 - v80;
      if (v60 - v80 < 4)
      {
        if (v81 < 1)
        {
          v82 = v79 | v81;
          if (v82)
          {
LABEL_108:
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_2(&v167);
            goto LABEL_236;
          }
        }

        else
        {
          v83 = *v80;
          if (v81 == 1)
          {
            v82 = v83 << 24;
          }

          else
          {
            v84 = (v83 << 16) | (v80[1] << 8);
            if (v81 != 2)
            {
              v84 |= v80[2];
            }

            v82 = v84 << 8;
          }
        }
      }

      else
      {
        v82 = bswap32(*v80);
      }

      v85 = v76 + ~(-1 << v74);
      if (v85 == 3)
      {
        v86 = v79 + 1;
        v87 = v86 >> 3;
        v79 = v86 & 7;
        v80 += v87;
        v88 = v60 - v80;
        if (v60 - v80 < 4)
        {
          if (v88 < 1)
          {
            v89 = v79 | v88;
            if (v89)
            {
              FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_3(&v167);
              goto LABEL_236;
            }
          }

          else
          {
            v91 = *v80;
            if (v88 == 1)
            {
              v89 = v91 << 24;
            }

            else
            {
              v92 = (v91 << 16) | (v80[1] << 8);
              if (v88 != 2)
              {
                v92 |= v80[2];
              }

              v89 = v92 << 8;
            }
          }
        }

        else
        {
          v89 = bswap32(*v80);
        }

        v90 = v89 << v79;
      }

      else
      {
        v90 = v82 << v79;
      }

      if (!(v90 >> 19))
      {
        goto LABEL_134;
      }

      v93 = __clz(v90);
      v94 = v90 << (v93 + 1) >> -v93;
      if (!v93)
      {
        v94 = 0;
      }

      v95 = v93 + v79 + v93 + 1;
      v96 = v95 >> 3;
      v97 = v95 & 7;
      v98 = &v80[v96];
      v99 = v60 - v98;
      if (v60 - v98 < 4)
      {
        if (v99 < 1)
        {
          v100 = v97 | v99;
          if (v100)
          {
LABEL_134:
            FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_4(&v167);
            goto LABEL_236;
          }
        }

        else
        {
          v101 = *v98;
          if (v99 == 1)
          {
            v100 = v101 << 24;
          }

          else
          {
            v102 = (v101 << 16) | (v98[1] << 8);
            if (v99 != 2)
            {
              v102 |= v98[2];
            }

            v100 = v102 << 8;
          }
        }
      }

      else
      {
        v100 = bswap32(*v98);
      }

      v103 = v100 << v97;
      if (!((v100 << v97) >> 19))
      {
        goto LABEL_220;
      }

      v104 = __clz(v103);
      v105 = v103 << (v104 + 1) >> -v104;
      if (!v104)
      {
        v105 = 0;
      }

      v106 = v104 + v97 + v104 + 1;
      v107 = &v98[v106 >> 3];
      v108 = v60 - v107;
      if (v108 <= 3)
      {
        v109 = v106 & 7;
        if (v108 <= 0)
        {
          v110 = v107;
        }

        else
        {
          v110 = v107 + 1;
        }

        v111 = v108 - (v108 > 0);
        if (v111 > 0)
        {
          ++v110;
        }

        v112 = v111 - (v111 > 0);
        v113 = v112 & (v112 >> 31);
        v114 = v112 <= 0 ? v110 : v110 + 1;
        if (v113 | v109 && v114 == v107)
        {
LABEL_220:
          FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_5(&v167);
          goto LABEL_236;
        }
      }

      v115 = v152;
      if (v152 == -1)
      {
        v115 = v85;
      }

      else if (v152 != v85)
      {
        FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_6(&v167);
        goto LABEL_236;
      }

      v152 = v115;
      v116 = v151;
      if (v151 == -1)
      {
        v116 = v94 + ~(-1 << v93);
        v117 = v150;
      }

      else
      {
        v117 = v150;
        if (v151 != v94 + ~(-1 << v93))
        {
          FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_7(&v167);
          goto LABEL_236;
        }
      }

      v151 = v116;
      if (v117 != -1)
      {
        if (v117 != v105 + ~(-1 << v104))
        {
          FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_8(&v167);
          goto LABEL_236;
        }

        goto LABEL_162;
      }

      v150 = v105 + ~(-1 << v104);
      if (!v44)
      {
LABEL_164:
        ++v156;
        v155 &= v56;
        v153 = v48;
        v154 = v47;
        v18 = count;
        goto LABEL_165;
      }
    }

    else
    {
LABEL_162:
      if (!v44)
      {
        goto LABEL_164;
      }
    }

    v118 = v44;
    v119 = v47;
    v120 = v48;
    v121 = v56;
    CFRelease(v118);
    v56 = v121;
    v48 = v120;
    v47 = v119;
    theData = 0;
    goto LABEL_164;
  }

  if (v50 - 1 >= 1)
  {
    if (v50 == 2)
    {
      v122 = fig_log_get_emitter("com.apple.coremedia", "");
      v125 = 4294954582;
      v126 = 3317;
      goto LABEL_195;
    }

    if (v50 == 3)
    {
      v122 = fig_log_get_emitter("com.apple.coremedia", "");
      v125 = 4294954582;
      v126 = 3318;
      goto LABEL_195;
    }

LABEL_215:
    FigH264Bridge_CreateAVCCFromH264ParameterSets_cold_12(&v167);
LABEL_236:
    v134 = v167;
LABEL_197:
    v129 = __base;
    goto LABEL_198;
  }

  v139 = fig_log_get_emitter("com.apple.coremedia", "");
  v129 = __base;
  if (v50 == 1)
  {
    v142 = 3316;
  }

  else
  {
    v142 = 3315;
  }

  v134 = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", v139, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v142, v8, v140, v141, v144);
LABEL_198:
  if (theData)
  {
    CFRelease(theData);
  }

  free(v129);
  return v134;
}

uint64_t FigH264Bridge_sortParameterSets(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  if (v2 > v3)
  {
    return 1;
  }

  v5 = *(a1 + 12);
  v6 = *(a2 + 12);
  v7 = v5 >= v6;
  v8 = v5 > v6;
  if (v7)
  {
    return v8;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void FigH264Bridge_addSortedParameterSetsToData(CFMutableDataRef theData, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (a2)
  {
    v12 = a2;
    do
    {
      v14 = *(a3 + 3);
      if (v14 == a6 || v14 == a7)
      {
        v16 = *a3;
        *bytes = bswap32(*(a5 + 8 * *a3)) >> 16;
        CFDataAppendBytes(theData, bytes, 2);
        CFDataAppendBytes(theData, *(a4 + 8 * v16), *(a5 + 8 * v16));
      }

      a3 += 2;
      --v12;
    }

    while (v12);
  }
}

size_t FigH264Bridge_CreateAVCCFromSPSAndPPS(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, __CFData **a7)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v9[0] = a2;
  v9[1] = a4;
  v8[0] = a3;
  v8[1] = a5;
  return FigH264Bridge_CreateAVCCFromH264ParameterSets(a1, 2uLL, v9, v8, a6, 0, 0, a7);
}

size_t PullParamSetPPS(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = a1[2];
  v12 = *(a1 + 6);
  v13 = *(a1 + 28);
  v14 = *(a1 + 2);
  v15 = *a1;
  *(a2 + 80) = 0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v16 = v13 + 1;
  v17 = (v13 + 1) & 7;
  v18 = (v11 + (v16 >> 3));
  v19 = v15 + v14;
  v20 = v15 + v14 - v18;
  if (v20 < 4)
  {
    if (v20 < 1)
    {
      v23 = 0;
      if (v17 | v20)
      {
        v39 = 1579;
        LOBYTE(v30) = v17;
        goto LABEL_403;
      }

      v21 = 0;
    }

    else
    {
      v22 = *v18;
      if (v20 == 1)
      {
        v21 = v22 << 24;
      }

      else
      {
        v24 = (v22 << 16) | (v18[1] << 8);
        if (v20 != 2)
        {
          v24 |= v18[2];
        }

        v21 = v24 << 8;
      }
    }
  }

  else
  {
    v21 = bswap32(*v18);
  }

  v25 = (v17 + 2) & 7;
  v18 += (v17 + 2) >> 3;
  v26 = v19 - v18;
  if (v19 - v18 < 4)
  {
    if (v26 < 1)
    {
      v23 = 0;
      if (v25 | v26)
      {
        v39 = 1580;
        LOBYTE(v30) = (v17 + 2) & 7;
        goto LABEL_403;
      }

      v27 = 0;
    }

    else
    {
      v28 = *v18;
      if (v26 == 1)
      {
        v27 = v28 << 24;
      }

      else
      {
        v29 = (v28 << 16) | (v18[1] << 8);
        if (v26 != 2)
        {
          v29 |= v18[2];
        }

        v27 = v29 << 8;
      }
    }
  }

  else
  {
    v27 = bswap32(*v18);
  }

  v30 = (v25 + 5) & 7;
  v18 += (v25 + 5) >> 3;
  v31 = v19 - v18;
  if (v19 - v18 < 4)
  {
    if (v31 < 1)
    {
      v23 = 0;
      if (v30 | v31)
      {
        v39 = 1581;
        goto LABEL_403;
      }

      if (v12 < 0)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v32 = *v18;
      if (v31 == 1)
      {
        v23 = v32 << 24;
        if (v12 < 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v40 = (v32 << 16) | (v18[1] << 8);
        if (v31 != 2)
        {
          v40 |= v18[2];
        }

        v23 = v40 << 8;
        if (v12 < 0)
        {
          goto LABEL_23;
        }
      }
    }
  }

  else
  {
    v23 = bswap32(*v18);
    if (v12 < 0)
    {
LABEL_23:
      PullParamSetPPS_cold_11(a1, a2, a3, a4, a5, a6, a7, a8, v200);
      return 4294954582;
    }
  }

  if (!(v21 << v17 >> 30))
  {
    PullParamSetPPS_cold_10(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  if (v27 << v25 >> 27 != 8)
  {
    PullParamSetPPS_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  v23 <<= v30;
  if (v23 < 0x80000)
  {
    goto LABEL_41;
  }

  v33 = __clz(v23);
  v34 = v23 << (v33 + 1) >> -v33;
  if (!v33)
  {
    v34 = 0;
  }

  v35 = v34 + ~(-1 << v33);
  *a2 = v35;
  v36 = v33 + v30 + v33 + 1;
  v30 = v36 & 7;
  v18 += v36 >> 3;
  v37 = v19 - v18;
  if (v19 - v18 >= 4)
  {
    v23 = bswap32(*v18);
    goto LABEL_49;
  }

  if (v37 < 1)
  {
    v23 = 0;
    if (!(v30 | v37))
    {
      goto LABEL_49;
    }

LABEL_41:
    v39 = 1587;
    goto LABEL_403;
  }

  v38 = *v18;
  if (v37 == 1)
  {
    v23 = v38 << 24;
  }

  else
  {
    v41 = (v38 << 16) | (v18[1] << 8);
    if (v37 != 2)
    {
      v41 |= v18[2];
    }

    v23 = v41 << 8;
  }

LABEL_49:
  if (v35 >= 0x100)
  {
    PullParamSetPPS_cold_9(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  v23 <<= v30;
  if (v23 < 0x80000)
  {
    goto LABEL_59;
  }

  v42 = __clz(v23);
  v43 = v23 << (v42 + 1) >> -v42;
  if (!v42)
  {
    v43 = 0;
  }

  v44 = v43 + ~(-1 << v42);
  *(a2 + 4) = v44;
  v45 = v42 + v30 + v42 + 1;
  v30 = v45 & 7;
  v18 += v45 >> 3;
  v46 = v19 - v18;
  if (v19 - v18 >= 4)
  {
    v23 = bswap32(*v18);
    goto LABEL_63;
  }

  if (v46 < 1)
  {
    v23 = 0;
    if (!(v30 | v46))
    {
      goto LABEL_63;
    }

LABEL_59:
    v39 = 1589;
    goto LABEL_403;
  }

  v47 = *v18;
  if (v46 == 1)
  {
    v23 = v47 << 24;
  }

  else
  {
    v48 = (v47 << 16) | (v18[1] << 8);
    if (v46 != 2)
    {
      v48 |= v18[2];
    }

    v23 = v48 << 8;
  }

LABEL_63:
  if (v44 >= 0x20)
  {
    PullParamSetPPS_cold_8(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  *(a2 + 8) = ((v23 << v30) & 0x80000000) != 0;
  v49 = (v30 + 1) >> 3;
  v30 = (v30 + 1) & 7;
  v18 += v49;
  v50 = v19 - v18;
  if (v19 - v18 < 4)
  {
    if (v50 < 1)
    {
      v23 = 0;
      if (v30 | v50)
      {
        v39 = 1595;
        goto LABEL_403;
      }
    }

    else
    {
      v51 = *v18;
      if (v50 == 1)
      {
        v23 = v51 << 24;
      }

      else
      {
        v52 = (v51 << 16) | (v18[1] << 8);
        if (v50 != 2)
        {
          v52 |= v18[2];
        }

        v23 = v52 << 8;
      }
    }
  }

  else
  {
    v23 = bswap32(*v18);
  }

  *(a2 + 9) = ((v23 << v30) & 0x80000000) != 0;
  v53 = (v30 + 1) >> 3;
  v30 = (v30 + 1) & 7;
  v18 += v53;
  v54 = v19 - v18;
  if (v19 - v18 < 4)
  {
    if (v54 < 1)
    {
      v23 = 0;
      if (v30 | v54)
      {
        v39 = 1596;
        goto LABEL_403;
      }
    }

    else
    {
      v55 = *v18;
      if (v54 == 1)
      {
        v23 = v55 << 24;
      }

      else
      {
        v56 = (v55 << 16) | (v18[1] << 8);
        if (v54 != 2)
        {
          v56 |= v18[2];
        }

        v23 = v56 << 8;
      }
    }
  }

  else
  {
    v23 = bswap32(*v18);
  }

  v57 = v23 << v30;
  if (v23 << v30 >= 0x80000)
  {
    v58 = __clz(v57);
    v59 = v57 << (v58 + 1) >> -v58;
    if (!v58)
    {
      v59 = 0;
    }

    v60 = v59 + ~(-1 << v58);
    *(a2 + 12) = v60;
    v61 = v58 + v30 + v58 + 1;
    v30 = v61 & 7;
    v18 += v61 >> 3;
    v62 = v19 - v18;
    if (v19 - v18 >= 4)
    {
      v23 = bswap32(*v18);
      goto LABEL_104;
    }

    if (v62 >= 1)
    {
      v65 = *v18;
      if (v62 == 1)
      {
        v23 = v65 << 24;
      }

      else
      {
        v67 = (v65 << 16) | (v18[1] << 8);
        if (v62 != 2)
        {
          v67 |= v18[2];
        }

        v23 = v67 << 8;
      }

LABEL_104:
      v23 <<= v30;
      if (!v60)
      {
        goto LABEL_263;
      }

      goto LABEL_156;
    }

    v23 = 0;
    if (!(v30 | v62))
    {
      goto LABEL_104;
    }

LABEL_388:
    v39 = 1597;
    goto LABEL_403;
  }

  v63 = (v30 + 1) >> 3;
  v30 = (v30 + 1) & 7;
  v18 += v63;
  v64 = v19 - v18;
  if (v19 - v18 < 4)
  {
    if (v64 < 1)
    {
      v23 = 0;
      if (v30 | v64)
      {
        goto LABEL_388;
      }
    }

    else
    {
      v66 = *v18;
      if (v64 == 1)
      {
        v23 = v66 << 24;
      }

      else
      {
        v68 = (v66 << 16) | (v18[1] << 8);
        if (v64 != 2)
        {
          v68 |= v18[2];
        }

        v23 = v68 << 8;
      }
    }
  }

  else
  {
    v23 = bswap32(*v18);
  }

  v69 = 0;
  v23 <<= v30;
  v39 = 1597;
  do
  {
    v70 = v30;
    v71 = v23;
    v72 = (v30 + 1) >> 3;
    v30 = (v30 + 1) & 7;
    v18 += v72;
    v73 = v19 - v18;
    if (v19 - v18 < 4)
    {
      if (v73 < 1)
      {
        v23 = 0;
        if (v30 | v73)
        {
          goto LABEL_403;
        }
      }

      else
      {
        v74 = *v18;
        if (v73 == 1)
        {
          v23 = v74 << 24;
        }

        else
        {
          v75 = (v74 << 16) | (v18[1] << 8);
          if (v73 != 2)
          {
            v75 |= v18[2];
          }

          v23 = v75 << 8;
        }
      }
    }

    else
    {
      v23 = bswap32(*v18);
    }

    v23 <<= v30;
    ++v69;
  }

  while ((v71 & 0x80000000) == 0);
  if (v69 - 1 > 0x1E)
  {
    goto LABEL_388;
  }

  v76 = ((v70 + 1) & 7) + v69;
  if (v69 <= 0x18)
  {
    v30 = v76 & 7;
    v18 += v76 >> 3;
    v77 = v19 - v18;
    if (v19 - v18 >= 4)
    {
      v78 = bswap32(*v18);
      goto LABEL_140;
    }

    if (v77 >= 1)
    {
      v83 = *v18;
      if (v77 == 1)
      {
        v78 = v83 << 24;
      }

      else
      {
        v85 = (v83 << 16) | (v18[1] << 8);
        if (v77 != 2)
        {
          v85 |= v18[2];
        }

        v78 = v85 << 8;
      }

      goto LABEL_140;
    }

    v78 = 0;
    if (!(v30 | v77))
    {
LABEL_140:
      v86 = v23 >> -v69;
      v23 = v78 << v30;
      goto LABEL_155;
    }

LABEL_150:
    v39 = 1597;
    v23 = 0;
    goto LABEL_403;
  }

  v79 = (v76 - 16) >> 3;
  v30 = v76 & 7;
  v80 = &v18[v79];
  v81 = v19 - (v18 + v79);
  if (v81 < 4)
  {
    if (v81 < 1)
    {
      v82 = 0;
      if (v30 | v81)
      {
        v39 = 1597;
        v23 = 0;
        v18 = v80;
        goto LABEL_403;
      }
    }

    else
    {
      v84 = *v80;
      if (v81 == 1)
      {
        v82 = v84 << 24;
      }

      else
      {
        v87 = (v84 << 16) | (v80[1] << 8);
        if (v81 != 2)
        {
          v87 |= v80[2];
        }

        v82 = v87 << 8;
      }
    }
  }

  else
  {
    v82 = bswap32(*v80);
  }

  v18 = v80 + 2;
  v88 = v19 - (v80 + 2);
  if (v88 < 4)
  {
    if (v88 < 1)
    {
      v89 = 0;
      if (v30 | v88)
      {
        goto LABEL_150;
      }
    }

    else
    {
      v90 = *v18;
      if (v88 == 1)
      {
        v89 = v90 << 24;
      }

      else
      {
        v91 = (v90 << 16) | (v80[3] << 8);
        if (v88 != 2)
        {
          v91 |= v80[4];
        }

        v89 = v91 << 8;
      }
    }
  }

  else
  {
    v89 = bswap32(*v18);
  }

  v92 = v23 >> (48 - v69);
  v23 = v89 << v30;
  HIDWORD(v93) = v92;
  LODWORD(v93) = v82 << v30;
  v86 = v93 >> 16;
LABEL_155:
  v60 = v86 + ~(-1 << v69);
  *(a2 + 12) = v60;
  if (!v60)
  {
    goto LABEL_263;
  }

LABEL_156:
  if (v23 < 0x80000)
  {
    goto LABEL_165;
  }

  v94 = __clz(v23);
  v95 = v23 << (v94 + 1) >> -v94;
  if (!v94)
  {
    v95 = 0;
  }

  v96 = v95 + ~(-1 << v94);
  *(a2 + 16) = v96;
  v97 = v94 + v30 + v94 + 1;
  v30 = v97 & 7;
  v18 += v97 >> 3;
  v98 = v19 - v18;
  if (v19 - v18 >= 4)
  {
    v23 = bswap32(*v18);
    goto LABEL_169;
  }

  if (v98 < 1)
  {
    v23 = 0;
    if (!(v30 | v98))
    {
      goto LABEL_169;
    }

LABEL_165:
    v39 = 1604;
    goto LABEL_403;
  }

  v99 = *v18;
  if (v98 == 1)
  {
    v23 = v99 << 24;
  }

  else
  {
    v100 = (v99 << 16) | (v18[1] << 8);
    if (v98 != 2)
    {
      v100 |= v18[2];
    }

    v23 = v100 << 8;
  }

LABEL_169:
  v23 <<= v30;
  if (v96 <= 2)
  {
    if (!v96)
    {
      v39 = 1609;
      while (v23 >= 0x80000)
      {
        v118 = v30 + 2 * __clz(v23) + 1;
        v30 = v118 & 7;
        v18 += v118 >> 3;
        v119 = v19 - v18;
        if (v19 - v18 < 4)
        {
          if (v119 < 1)
          {
            v23 = 0;
            if (v30 | v119)
            {
              goto LABEL_403;
            }
          }

          else
          {
            v120 = *v18;
            if (v119 == 1)
            {
              v23 = v120 << 24;
            }

            else
            {
              v121 = (v120 << 16) | (v18[1] << 8);
              if (v119 != 2)
              {
                v121 |= v18[2];
              }

              v23 = v121 << 8;
            }
          }
        }

        else
        {
          v23 = bswap32(*v18);
        }

        v23 <<= v30;
        if (++v96 > v60)
        {
          goto LABEL_263;
        }
      }

      goto LABEL_403;
    }

    if (v96 == 2)
    {
      v103 = 0;
      v39 = 1615;
      while (v23 >= 0x80000)
      {
        v104 = v30 + 2 * __clz(v23) + 1;
        v30 = v104 & 7;
        v18 += v104 >> 3;
        v105 = v19 - v18;
        if (v19 - v18 < 4)
        {
          if (v105 < 1)
          {
            v23 = 0;
            if (v30 | v105)
            {
              goto LABEL_403;
            }
          }

          else
          {
            v106 = *v18;
            if (v105 == 1)
            {
              v23 = v106 << 24;
            }

            else
            {
              v107 = (v106 << 16) | (v18[1] << 8);
              if (v105 != 2)
              {
                v107 |= v18[2];
              }

              v23 = v107 << 8;
            }
          }
        }

        else
        {
          v23 = bswap32(*v18);
        }

        v23 <<= v30;
        if (v23 < 0x80000)
        {
LABEL_387:
          v39 = 1616;
          goto LABEL_403;
        }

        v108 = v30 + 2 * __clz(v23) + 1;
        v30 = v108 & 7;
        v18 += v108 >> 3;
        v109 = v19 - v18;
        if (v19 - v18 < 4)
        {
          if (v109 < 1)
          {
            v23 = 0;
            if (v30 | v109)
            {
              goto LABEL_387;
            }
          }

          else
          {
            v110 = *v18;
            if (v109 == 1)
            {
              v23 = v110 << 24;
            }

            else
            {
              v111 = (v110 << 16) | (v18[1] << 8);
              if (v109 != 2)
              {
                v111 |= v18[2];
              }

              v23 = v111 << 8;
            }
          }
        }

        else
        {
          v23 = bswap32(*v18);
        }

        v23 <<= v30;
        if (++v103 > v60)
        {
          goto LABEL_263;
        }
      }

      goto LABEL_403;
    }

    goto LABEL_263;
  }

  if ((v96 - 3) < 3)
  {
    v101 = (v30 + 1) >> 3;
    v30 = (v30 + 1) & 7;
    v18 += v101;
    v102 = v19 - v18;
    if (v19 - v18 < 4)
    {
      if (v102 < 1)
      {
        v23 = 0;
        if (v30 | v102)
        {
          v39 = 1622;
          goto LABEL_403;
        }
      }

      else
      {
        v117 = *v18;
        if (v102 == 1)
        {
          v23 = v117 << 24;
        }

        else
        {
          v123 = (v117 << 16) | (v18[1] << 8);
          if (v102 != 2)
          {
            v123 |= v18[2];
          }

          v23 = v123 << 8;
        }
      }
    }

    else
    {
      v23 = bswap32(*v18);
    }

    v23 <<= v30;
    if (v23 >= 0x80000)
    {
      v124 = v30 + 2 * __clz(v23) + 1;
      v30 = v124 & 7;
      v18 += v124 >> 3;
      v125 = v19 - v18;
      if (v19 - v18 >= 4)
      {
        v23 = bswap32(*v18);
        goto LABEL_243;
      }

      if (v125 >= 1)
      {
        v126 = *v18;
        if (v125 == 1)
        {
          v23 = v126 << 24;
        }

        else
        {
          v127 = (v126 << 16) | (v18[1] << 8);
          if (v125 != 2)
          {
            v127 |= v18[2];
          }

          v23 = v127 << 8;
        }

        goto LABEL_243;
      }

      v23 = 0;
      if (!(v30 | v125))
      {
LABEL_243:
        v23 <<= v30;
        goto LABEL_263;
      }
    }

    v39 = 1623;
    goto LABEL_403;
  }

  if (v96 == 6)
  {
    v112 = log2((v60 + 1));
    if (v23 >= 0x80000)
    {
      v113 = __clz(v23);
      if (v113)
      {
        v114 = v23 << (v113 + 1) >> -v113;
      }

      else
      {
        v114 = 0;
      }

      v115 = v113 + v30 + v113 + 1;
      v30 = v115 & 7;
      v18 += v115 >> 3;
      v116 = v19 - v18;
      if (v19 - v18 >= 4)
      {
        v23 = bswap32(*v18);
        goto LABEL_249;
      }

      if (v116 >= 1)
      {
        v122 = *v18;
        if (v116 == 1)
        {
          v23 = v122 << 24;
        }

        else
        {
          v128 = (v122 << 16) | (v18[1] << 8);
          if (v116 != 2)
          {
            v128 |= v18[2];
          }

          v23 = v128 << 8;
        }

LABEL_249:
        v129 = 0;
        v130 = vcvtpd_s64_f64(v112);
        v131 = v114 + ~(-1 << v113);
        v23 <<= v30;
        v39 = 1632;
        v132 = v18;
        v133 = v30;
        while (v130 - 26 >= 0xFFFFFFE7)
        {
          v134 = v133 + v130;
          v135 = v134 >> 3;
          v133 = v134 & 7;
          v132 += v135;
          v136 = v19 - v132;
          if (v19 - v132 < 4)
          {
            if (v136 < 1)
            {
              v137 = 0;
              if (v133 | v136)
              {
                LOBYTE(v30) = v133;
                v23 = 0;
                v18 = v132;
                goto LABEL_403;
              }
            }

            else
            {
              v138 = *v132;
              if (v136 == 1)
              {
                v137 = v138 << 24;
              }

              else
              {
                v139 = (v138 << 16) | (v132[1] << 8);
                if (v136 != 2)
                {
                  v139 |= v132[2];
                }

                v137 = v139 << 8;
              }
            }
          }

          else
          {
            v137 = bswap32(*v132);
          }

          if (++v129 > v131)
          {
            v23 = v137 << v133;
            v30 = v133;
            v18 = v132;
            goto LABEL_263;
          }
        }

        goto LABEL_403;
      }

      v23 = 0;
      if (!(v30 | v116))
      {
        goto LABEL_249;
      }
    }

    v39 = 1630;
    goto LABEL_403;
  }

LABEL_263:
  if (v23 < 0x80000)
  {
    goto LABEL_272;
  }

  v140 = __clz(v23);
  v141 = v23 << (v140 + 1) >> -v140;
  if (!v140)
  {
    v141 = 0;
  }

  v142 = v141 + ~(-1 << v140);
  *(a2 + 56) = v142;
  v143 = v140 + v30 + v140 + 1;
  v30 = v143 & 7;
  v18 += v143 >> 3;
  v144 = v19 - v18;
  if (v19 - v18 >= 4)
  {
    v23 = bswap32(*v18);
    goto LABEL_276;
  }

  if (v144 >= 1)
  {
    v145 = *v18;
    if (v144 == 1)
    {
      v23 = v145 << 24;
    }

    else
    {
      v146 = (v145 << 16) | (v18[1] << 8);
      if (v144 != 2)
      {
        v146 |= v18[2];
      }

      v23 = v146 << 8;
    }

    goto LABEL_276;
  }

  v23 = 0;
  if (v30 | v144)
  {
LABEL_272:
    v39 = 1637;
    goto LABEL_403;
  }

LABEL_276:
  if (v142 >= 0x20)
  {
    PullParamSetPPS_cold_7(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  v23 <<= v30;
  if (v23 < 0x80000)
  {
    goto LABEL_286;
  }

  v147 = __clz(v23);
  v148 = v23 << (v147 + 1) >> -v147;
  if (!v147)
  {
    v148 = 0;
  }

  v149 = v148 + ~(-1 << v147);
  *(a2 + 60) = v149;
  v150 = v147 + v30 + v147 + 1;
  v30 = v150 & 7;
  v18 += v150 >> 3;
  v151 = v19 - v18;
  if (v19 - v18 >= 4)
  {
    v23 = bswap32(*v18);
    goto LABEL_290;
  }

  if (v151 >= 1)
  {
    v152 = *v18;
    if (v151 == 1)
    {
      v23 = v152 << 24;
    }

    else
    {
      v153 = (v152 << 16) | (v18[1] << 8);
      if (v151 != 2)
      {
        v153 |= v18[2];
      }

      v23 = v153 << 8;
    }

    goto LABEL_290;
  }

  v23 = 0;
  if (v30 | v151)
  {
LABEL_286:
    v39 = 1639;
    goto LABEL_403;
  }

LABEL_290:
  if (v149 >= 0x20)
  {
    PullParamSetPPS_cold_6(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  *(a2 + 64) = ((v23 << v30) & 0x80000000) != 0;
  v154 = (v30 + 1) >> 3;
  v30 = (v30 + 1) & 7;
  v18 += v154;
  v155 = v19 - v18;
  if (v19 - v18 < 4)
  {
    if (v155 < 1)
    {
      v23 = 0;
      if (v30 | v155)
      {
        v39 = 1642;
        goto LABEL_403;
      }
    }

    else
    {
      v156 = *v18;
      if (v155 == 1)
      {
        v23 = v156 << 24;
      }

      else
      {
        v157 = (v156 << 16) | (v18[1] << 8);
        if (v155 != 2)
        {
          v157 |= v18[2];
        }

        v23 = v157 << 8;
      }
    }
  }

  else
  {
    v23 = bswap32(*v18);
  }

  v158 = v23 << v30 >> 30;
  *(a2 + 68) = v158;
  v159 = (v30 + 2) >> 3;
  v30 = (v30 + 2) & 7;
  v18 += v159;
  v160 = v19 - v18;
  if (v19 - v18 < 4)
  {
    if (v160 < 1)
    {
      v23 = 0;
      if (v30 | v160)
      {
        v39 = 1643;
        goto LABEL_403;
      }
    }

    else
    {
      v161 = *v18;
      if (v160 == 1)
      {
        v23 = v161 << 24;
      }

      else
      {
        v162 = (v161 << 16) | (v18[1] << 8);
        if (v160 != 2)
        {
          v162 |= v18[2];
        }

        v23 = v162 << 8;
      }
    }
  }

  else
  {
    v23 = bswap32(*v18);
  }

  if (v158 == 3)
  {
    PullParamSetPPS_cold_5(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  v23 <<= v30;
  if (v23 < 0x80000)
  {
    goto LABEL_321;
  }

  v163 = __clz(v23);
  v164 = v23 << (v163 + 1) >> -v163;
  if (!v163)
  {
    v164 = 0;
  }

  v165 = v163 + v30 + v163 + 1;
  v30 = v165 & 7;
  v18 += v165 >> 3;
  v166 = v19 - v18;
  if (v19 - v18 >= 4)
  {
    v23 = bswap32(*v18);
    goto LABEL_325;
  }

  if (v166 >= 1)
  {
    v167 = *v18;
    if (v166 == 1)
    {
      v23 = v167 << 24;
    }

    else
    {
      v168 = (v167 << 16) | (v18[1] << 8);
      if (v166 != 2)
      {
        v168 |= v18[2];
      }

      v23 = v168 << 8;
    }

    goto LABEL_325;
  }

  v23 = 0;
  if (v30 | v166)
  {
LABEL_321:
    v39 = 1645;
    goto LABEL_403;
  }

LABEL_325:
  v169 = ((v164 + (1 << v163)) >> 1) - ((v164 + (1 << v163)) >> 1) * 2 * ((v164 + (1 << v163)) & 1);
  *(a2 + 72) = v169;
  if (v169 - 26 <= 0xFFFFFFA7)
  {
    PullParamSetPPS_cold_4(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  v23 <<= v30;
  if (v23 < 0x80000)
  {
    goto LABEL_335;
  }

  v170 = __clz(v23);
  v171 = v23 << (v170 + 1) >> -v170;
  if (!v170)
  {
    v171 = 0;
  }

  v172 = v170 + v30 + v170 + 1;
  v30 = v172 & 7;
  v18 += v172 >> 3;
  v173 = v19 - v18;
  if (v19 - v18 >= 4)
  {
    v23 = bswap32(*v18);
    goto LABEL_339;
  }

  if (v173 >= 1)
  {
    v174 = *v18;
    if (v173 == 1)
    {
      v23 = v174 << 24;
    }

    else
    {
      v175 = (v174 << 16) | (v18[1] << 8);
      if (v173 != 2)
      {
        v175 |= v18[2];
      }

      v23 = v175 << 8;
    }

    goto LABEL_339;
  }

  v23 = 0;
  if (v30 | v173)
  {
LABEL_335:
    v39 = 1647;
    goto LABEL_403;
  }

LABEL_339:
  v176 = ((v171 + (1 << v170)) >> 1) - ((v171 + (1 << v170)) >> 1) * 2 * ((v171 + (1 << v170)) & 1);
  *(a2 + 76) = v176;
  if (v176 - 26 <= 0xFFFFFFCB)
  {
    PullParamSetPPS_cold_3(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  v23 <<= v30;
  if (v23 < 0x80000)
  {
    goto LABEL_349;
  }

  v177 = __clz(v23);
  v178 = v23 << (v177 + 1) >> -v177;
  if (!v177)
  {
    v178 = 0;
  }

  v179 = v177 + v30 + v177 + 1;
  v30 = v179 & 7;
  v18 += v179 >> 3;
  v180 = v19 - v18;
  if (v19 - v18 >= 4)
  {
    v23 = bswap32(*v18);
    goto LABEL_353;
  }

  if (v180 >= 1)
  {
    v181 = *v18;
    if (v180 == 1)
    {
      v23 = v181 << 24;
    }

    else
    {
      v182 = (v181 << 16) | (v18[1] << 8);
      if (v180 != 2)
      {
        v182 |= v18[2];
      }

      v23 = v182 << 8;
    }

    goto LABEL_353;
  }

  v23 = 0;
  if (v30 | v180)
  {
LABEL_349:
    v39 = 1649;
    goto LABEL_403;
  }

LABEL_353:
  v183 = ((v178 + (1 << v177)) >> 1) - ((v178 + (1 << v177)) >> 1) * 2 * ((v178 + (1 << v177)) & 1);
  *(a2 + 80) = v183;
  if (v183 - 13 <= 0xFFFFFFE6)
  {
    PullParamSetPPS_cold_2(a1, a2, a3, a4, a5, a6, a7, a8, v200);
    return 4294954582;
  }

  *(a2 + 84) = ((v23 << v30) & 0x80000000) != 0;
  v184 = (v30 + 1) >> 3;
  v30 = (v30 + 1) & 7;
  v18 += v184;
  v185 = v19 - v18;
  if (v19 - v18 < 4)
  {
    if (v185 < 1)
    {
      v23 = 0;
      if (v30 | v185)
      {
        v39 = 1652;
        goto LABEL_403;
      }
    }

    else
    {
      v186 = *v18;
      if (v185 == 1)
      {
        v23 = v186 << 24;
      }

      else
      {
        v187 = (v186 << 16) | (v18[1] << 8);
        if (v185 != 2)
        {
          v187 |= v18[2];
        }

        v23 = v187 << 8;
      }
    }
  }

  else
  {
    v23 = bswap32(*v18);
  }

  *(a2 + 85) = ((v23 << v30) & 0x80000000) != 0;
  v188 = (v30 + 1) >> 3;
  v30 = (v30 + 1) & 7;
  v18 += v188;
  v189 = v19 - v18;
  if (v19 - v18 < 4)
  {
    if (v189 < 1)
    {
      v23 = 0;
      if (v30 | v189)
      {
        v39 = 1653;
        goto LABEL_403;
      }
    }

    else
    {
      v190 = *v18;
      if (v189 == 1)
      {
        v23 = v190 << 24;
      }

      else
      {
        v191 = (v190 << 16) | (v18[1] << 8);
        if (v189 != 2)
        {
          v191 |= v18[2];
        }

        v23 = v191 << 8;
      }
    }
  }

  else
  {
    v23 = bswap32(*v18);
  }

  *(a2 + 86) = ((v23 << v30) & 0x80000000) != 0;
  v192 = (v30 + 1) >> 3;
  v30 = (v30 + 1) & 7;
  v18 += v192;
  v193 = v19 - v18;
  if (v19 - v18 >= 4)
  {
    v23 = bswap32(*v18);
    goto LABEL_384;
  }

  if (v193 >= 1)
  {
    v194 = *v18;
    if (v193 == 1)
    {
      v23 = v194 << 24;
    }

    else
    {
      v195 = (v194 << 16) | (v18[1] << 8);
      if (v193 != 2)
      {
        v195 |= v18[2];
      }

      v23 = v195 << 8;
    }

    goto LABEL_384;
  }

  v23 = 0;
  if (!(v30 | v193))
  {
LABEL_384:
    v23 <<= v30;
LABEL_385:
    result = 0;
    a1[2] = v18;
    *(a1 + 6) = v23;
    *(a1 + 28) = v30;
    return result;
  }

  v39 = 1654;
LABEL_403:
  emitter = fig_log_get_emitter("com.apple.coremedia", "");
  result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v39, v8, v198, v199, v200);
  if (!result)
  {
    goto LABEL_385;
  }

  return result;
}

uint64_t FigH264Bridge_CopyDataWithEmulationPreventionBytesRemoved(const __CFData *a1, __CFData **a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);

  return RemoveEmulation3Byte(BytePtr, Length, a2);
}

void FigH264Bridge_HLSfMP4ParsingInfoDestroy(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

size_t PullVUIParamSet(uint64_t *a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a1;
  v11 = *(a1 + 2);
  v12 = *(a1 + 28);
  v13 = *(a1 + 6);
  v14 = a1[2];
  *a2 = v13 >> 31;
  v15 = ++v12 & 7;
  v16 = (v14 + (v12 >> 3));
  v17 = v10 + v11;
  v18 = v10 + v11 - v16;
  if (v18 < 4)
  {
    if (v18 < 1)
    {
      v19 = 0;
      if (v15 | v18)
      {
        v21 = 1147;
        goto LABEL_758;
      }
    }

    else
    {
      v20 = *v16;
      if (v18 == 1)
      {
        v19 = v20 << 24;
      }

      else
      {
        v22 = (v20 << 16) | (*(v16 + 1) << 8);
        if (v18 != 2)
        {
          v22 |= *(v16 + 2);
        }

        v19 = v22 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  v23 = v19 << v15;
  if ((v13 & 0x80000000) != 0)
  {
    v25 = HIBYTE(v23);
    a2[1] = HIBYTE(v23);
    v24 = (v16 + 1);
    v26 = v17 - (v16 + 1);
    if (v26 < 4)
    {
      if (v26 < 1)
      {
        v19 = 0;
        if (v15 | v26)
        {
          v21 = 1153;
          goto LABEL_41;
        }
      }

      else
      {
        v27 = *v24;
        if (v26 == 1)
        {
          v19 = v27 << 24;
        }

        else
        {
          v28 = (v27 << 16) | (*(v16 + 2) << 8);
          if (v26 != 2)
          {
            v28 |= *(v16 + 3);
          }

          v19 = v28 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v24);
    }

    v23 = v19 << v15;
    if (v25 != 255)
    {
      goto LABEL_46;
    }

    a2[2] = HIWORD(v23);
    v24 = (v16 + 3);
    v29 = v17 - (v16 + 3);
    if (v29 < 4)
    {
      if (v29 < 1)
      {
        v19 = 0;
        if (v15 | v29)
        {
          v21 = 1156;
          goto LABEL_41;
        }
      }

      else
      {
        v30 = *v24;
        if (v29 == 1)
        {
          v19 = v30 << 24;
        }

        else
        {
          v31 = (v30 << 16) | (*(v16 + 4) << 8);
          if (v29 != 2)
          {
            v31 |= *(v16 + 5);
          }

          v19 = v31 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v24);
    }

    a2[3] = v19 << v15 >> 16;
    v24 = (v16 + 5);
    v32 = v17 - (v16 + 5);
    if (v32 >= 4)
    {
      v19 = bswap32(*v24);
      goto LABEL_45;
    }

    if (v32 >= 1)
    {
      v33 = *v24;
      if (v32 == 1)
      {
        v19 = v33 << 24;
      }

      else
      {
        v34 = (v33 << 16) | (*(v16 + 6) << 8);
        if (v32 != 2)
        {
          v34 |= *(v16 + 7);
        }

        v19 = v34 << 8;
      }

      goto LABEL_45;
    }

    v19 = 0;
    if (!(v15 | v32))
    {
LABEL_45:
      v23 = v19 << v15;
      goto LABEL_46;
    }

    v21 = 1157;
LABEL_41:
    v16 = v24;
    goto LABEL_758;
  }

  v24 = v16;
LABEL_46:
  v35 = v14 - v10;
  if (v11 < v35)
  {
    PullVUIParamSet_cold_5(a1, a2, a3, a4, a5, a6, a7, a8, v334);
    return 4294954582;
  }

  a2[4] = v23 >> 31;
  v36 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v24 + v36);
  v37 = v17 - (v24 + v36);
  if (v37 < 4)
  {
    if (v37 < 1)
    {
      v19 = 0;
      if (v15 | v37)
      {
        v21 = 1162;
        goto LABEL_758;
      }
    }

    else
    {
      v38 = *v16;
      if (v37 == 1)
      {
        v19 = v38 << 24;
      }

      else
      {
        v39 = (v38 << 16) | (*(v16 + 1) << 8);
        if (v37 != 2)
        {
          v39 |= *(v16 + 2);
        }

        v19 = v39 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  v40 = v19 << v15;
  if ((v23 & 0x80000000) != 0)
  {
    a2[5] = v40 >> 31;
    v41 = (v15 + 1) >> 3;
    v15 = (v15 + 1) & 7;
    v16 = (v16 + v41);
    v42 = v17 - v16;
    if (v17 - v16 < 4)
    {
      if (v42 < 1)
      {
        v19 = 0;
        if (v15 | v42)
        {
          v21 = 1168;
          goto LABEL_758;
        }
      }

      else
      {
        v43 = *v16;
        if (v42 == 1)
        {
          v19 = v43 << 24;
        }

        else
        {
          v44 = (v43 << 16) | (*(v16 + 1) << 8);
          if (v42 != 2)
          {
            v44 |= *(v16 + 2);
          }

          v19 = v44 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v16);
    }

    v40 = v19 << v15;
  }

  a2[6] = v40 >> 31;
  v45 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v16 + v45);
  v46 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v46 < 1)
    {
      v19 = 0;
      if (v15 | v46)
      {
        v21 = 1171;
        goto LABEL_758;
      }
    }

    else
    {
      v47 = *v16;
      if (v46 == 1)
      {
        v19 = v47 << 24;
      }

      else
      {
        v48 = (v47 << 16) | (*(v16 + 1) << 8);
        if (v46 != 2)
        {
          v48 |= *(v16 + 2);
        }

        v19 = v48 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  v49 = v19 << v15;
  if ((v40 & 0x80000000) != 0)
  {
    a2[7] = v49 >> 29;
    v50 = (v15 + 3) >> 3;
    v15 = (v15 + 3) & 7;
    v16 = (v16 + v50);
    v51 = v17 - v16;
    if (v17 - v16 < 4)
    {
      if (v51 < 1)
      {
        v19 = 0;
        if (v15 | v51)
        {
          v21 = 1177;
          goto LABEL_758;
        }
      }

      else
      {
        v52 = *v16;
        if (v51 == 1)
        {
          v19 = v52 << 24;
        }

        else
        {
          v53 = (v52 << 16) | (*(v16 + 1) << 8);
          if (v51 != 2)
          {
            v53 |= *(v16 + 2);
          }

          v19 = v53 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v16);
    }

    a2[8] = v19 << v15 >> 31;
    v54 = (v15 + 1) >> 3;
    v15 = (v15 + 1) & 7;
    v16 = (v16 + v54);
    v55 = v17 - v16;
    if (v17 - v16 < 4)
    {
      if (v55 < 1)
      {
        v19 = 0;
        if (v15 | v55)
        {
          v21 = 1178;
          goto LABEL_758;
        }
      }

      else
      {
        v56 = *v16;
        if (v55 == 1)
        {
          v19 = v56 << 24;
        }

        else
        {
          v57 = (v56 << 16) | (*(v16 + 1) << 8);
          if (v55 != 2)
          {
            v57 |= *(v16 + 2);
          }

          v19 = v57 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v16);
    }

    v58 = v19 << v15;
    a2[9] = v19 << v15 >> 31;
    v59 = (v15 + 1) >> 3;
    v15 = (v15 + 1) & 7;
    v60 = v16 + v59;
    v61 = v17 - (v16 + v59);
    if (v61 < 4)
    {
      if (v61 < 1)
      {
        v19 = 0;
        if (v15 | v61)
        {
          v21 = 1179;
LABEL_761:
          v16 = v60;
          goto LABEL_758;
        }
      }

      else
      {
        v62 = *v60;
        if (v61 == 1)
        {
          v19 = v62 << 24;
        }

        else
        {
          v63 = (v62 << 16) | (v60[1] << 8);
          if (v61 != 2)
          {
            v63 |= v60[2];
          }

          v19 = v63 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v60);
    }

    v49 = v19 << v15;
    if ((v58 & 0x80000000) != 0)
    {
      a2[10] = HIBYTE(v49);
      v16 = (v60 + 1);
      v64 = v17 - (v60 + 1);
      if (v64 < 4)
      {
        if (v64 < 1)
        {
          v19 = 0;
          if (v15 | v64)
          {
            v21 = 1183;
            goto LABEL_758;
          }
        }

        else
        {
          v65 = *v16;
          if (v64 == 1)
          {
            v19 = v65 << 24;
          }

          else
          {
            v66 = (v65 << 16) | (v60[2] << 8);
            if (v64 != 2)
            {
              v66 |= v60[3];
            }

            v19 = v66 << 8;
          }
        }
      }

      else
      {
        v19 = bswap32(*v16);
      }

      a2[11] = v19 << v15 >> 24;
      v16 = (v60 + 2);
      v67 = v17 - (v60 + 2);
      if (v67 < 4)
      {
        if (v67 < 1)
        {
          v19 = 0;
          if (v15 | v67)
          {
            v21 = 1184;
            goto LABEL_758;
          }
        }

        else
        {
          v68 = *v16;
          if (v67 == 1)
          {
            v19 = v68 << 24;
          }

          else
          {
            v69 = (v68 << 16) | (v60[3] << 8);
            if (v67 != 2)
            {
              v69 |= v60[4];
            }

            v19 = v69 << 8;
          }
        }
      }

      else
      {
        v19 = bswap32(*v16);
      }

      a2[12] = v19 << v15 >> 24;
      v16 = (v60 + 3);
      v70 = v17 - (v60 + 3);
      if (v70 < 4)
      {
        if (v70 < 1)
        {
          v19 = 0;
          if (v15 | v70)
          {
            v21 = 1185;
            goto LABEL_758;
          }
        }

        else
        {
          v71 = *v16;
          if (v70 == 1)
          {
            v19 = v71 << 24;
          }

          else
          {
            v72 = (v71 << 16) | (v60[4] << 8);
            if (v70 != 2)
            {
              v72 |= v60[5];
            }

            v19 = v72 << 8;
          }
        }
      }

      else
      {
        v19 = bswap32(*v16);
      }

      v49 = v19 << v15;
    }

    else
    {
      v16 = v60;
    }
  }

  a2[13] = v49 >> 31;
  v73 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v16 + v73);
  v74 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v74 < 1)
    {
      v19 = 0;
      if (v15 | v74)
      {
        v21 = 1190;
        goto LABEL_758;
      }
    }

    else
    {
      v75 = *v16;
      if (v74 == 1)
      {
        v19 = v75 << 24;
      }

      else
      {
        v76 = (v75 << 16) | (*(v16 + 1) << 8);
        if (v74 != 2)
        {
          v76 |= *(v16 + 2);
        }

        v19 = v76 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  v19 <<= v15;
  if ((v49 & 0x80000000) == 0)
  {
    v77 = v19;
    goto LABEL_182;
  }

  if (v19 < 0x80000)
  {
    goto LABEL_164;
  }

  v78 = __clz(v19);
  v79 = v19 << (v78 + 1) >> -v78;
  if (!v78)
  {
    v79 = 0;
  }

  a2[14] = v79 + ~(-1 << v78);
  v80 = v78 + v15 + v78 + 1;
  v15 = v80 & 7;
  v16 = (v16 + (v80 >> 3));
  v81 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_168;
  }

  if (v81 >= 1)
  {
    v82 = *v16;
    if (v81 == 1)
    {
      v19 = v82 << 24;
    }

    else
    {
      v83 = (v82 << 16) | (*(v16 + 1) << 8);
      if (v81 != 2)
      {
        v83 |= *(v16 + 2);
      }

      v19 = v83 << 8;
    }

    goto LABEL_168;
  }

  v19 = 0;
  if (v15 | v81)
  {
LABEL_164:
    v21 = 1193;
    goto LABEL_758;
  }

LABEL_168:
  v19 <<= v15;
  if (v19 < 0x80000)
  {
    goto LABEL_177;
  }

  v84 = __clz(v19);
  v85 = v19 << (v84 + 1) >> -v84;
  if (!v84)
  {
    v85 = 0;
  }

  a2[15] = v85 + ~(-1 << v84);
  v86 = v84 + v15 + v84 + 1;
  v15 = v86 & 7;
  v16 = (v16 + (v86 >> 3));
  v87 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_181;
  }

  if (v87 >= 1)
  {
    v88 = *v16;
    if (v87 == 1)
    {
      v19 = v88 << 24;
    }

    else
    {
      v89 = (v88 << 16) | (*(v16 + 1) << 8);
      if (v87 != 2)
      {
        v89 |= *(v16 + 2);
      }

      v19 = v89 << 8;
    }

    goto LABEL_181;
  }

  v19 = 0;
  if (v15 | v87)
  {
LABEL_177:
    v21 = 1194;
    goto LABEL_758;
  }

LABEL_181:
  v77 = v19 << v15;
  v11 = *(a1 + 2);
  v35 = *(a1 + 4) - *a1;
LABEL_182:
  if (v11 < v35)
  {
    PullVUIParamSet_cold_4(a1, a2, a3, a4, a5, a6, a7, a8, v334);
    return 4294954582;
  }

  a2[16] = v77 >> 31;
  v90 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v16 + v90);
  v91 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v91 < 1)
    {
      v19 = 0;
      if (v15 | v91)
      {
        v21 = 1201;
        goto LABEL_758;
      }
    }

    else
    {
      v92 = *v16;
      if (v91 == 1)
      {
        v19 = v92 << 24;
      }

      else
      {
        v93 = (v92 << 16) | (*(v16 + 1) << 8);
        if (v91 != 2)
        {
          v93 |= *(v16 + 2);
        }

        v19 = v93 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  v94 = v19 << v15;
  if ((v77 & 0x80000000) == 0)
  {
    goto LABEL_245;
  }

  v95 = (v16 + 2);
  v96 = v17 - (v16 + 2);
  if (v96 < 4)
  {
    if (v96 < 1)
    {
      v19 = 0;
      if (v15 | v96)
      {
        goto LABEL_768;
      }

      v97 = 0;
    }

    else
    {
      v98 = *v95;
      if (v96 == 1)
      {
        v97 = v98 << 24;
      }

      else
      {
        v99 = (v98 << 16) | (*(v16 + 3) << 8);
        if (v96 != 2)
        {
          v99 |= *(v16 + 4);
        }

        v97 = v99 << 8;
      }
    }
  }

  else
  {
    v97 = bswap32(*v95);
  }

  v95 = v16 + 1;
  v100 = v17 - (v16 + 4);
  if (v100 >= 4)
  {
    v101 = bswap32(*v95);
    goto LABEL_214;
  }

  if (v100 < 1)
  {
    v19 = 0;
    if (!(v15 | v100))
    {
      v101 = 0;
      goto LABEL_214;
    }

LABEL_768:
    v21 = 1204;
    v16 = v95;
    goto LABEL_758;
  }

  v102 = *v95;
  if (v100 == 1)
  {
    v101 = v102 << 24;
  }

  else
  {
    v103 = (v102 << 16) | (*(v16 + 5) << 8);
    if (v100 != 2)
    {
      v103 |= *(v16 + 6);
    }

    v101 = v103 << 8;
  }

LABEL_214:
  a2[17] = (v97 << v15 >> 16) | v94 & 0xFFFF0000;
  v104 = (v16 + 6);
  v105 = v17 - (v16 + 6);
  if (v105 < 4)
  {
    if (v105 < 1)
    {
      v19 = 0;
      if (v15 | v105)
      {
        goto LABEL_230;
      }

      v106 = 0;
    }

    else
    {
      v107 = *v104;
      if (v105 == 1)
      {
        v106 = v107 << 24;
      }

      else
      {
        v108 = (v107 << 16) | (*(v16 + 7) << 8);
        if (v105 != 2)
        {
          v108 |= *(v16 + 8);
        }

        v106 = v108 << 8;
      }
    }
  }

  else
  {
    v106 = bswap32(*v104);
  }

  v104 = v16 + 2;
  v109 = v17 - (v16 + 8);
  if (v109 >= 4)
  {
    v19 = bswap32(*v104);
    goto LABEL_234;
  }

  if (v109 >= 1)
  {
    v110 = *v104;
    if (v109 == 1)
    {
      v19 = v110 << 24;
    }

    else
    {
      v111 = (v110 << 16) | (*(v16 + 9) << 8);
      if (v109 != 2)
      {
        v111 |= *(v16 + 10);
      }

      v19 = v111 << 8;
    }

    goto LABEL_234;
  }

  v19 = 0;
  if (v15 | v109)
  {
LABEL_230:
    v21 = 1205;
    v16 = v104;
    goto LABEL_758;
  }

LABEL_234:
  a2[18] = (v106 << v15 >> 16) | (v101 << v15) & 0xFFFF0000;
  a2[19] = v19 << v15 >> 31;
  v112 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v104 + v112);
  v113 = v17 - (v104 + v112);
  if (v113 < 4)
  {
    if (v113 < 1)
    {
      v19 = 0;
      if (v15 | v113)
      {
        v21 = 1206;
        goto LABEL_758;
      }
    }

    else
    {
      v114 = *v16;
      if (v113 == 1)
      {
        v19 = v114 << 24;
      }

      else
      {
        v115 = (v114 << 16) | (*(v16 + 1) << 8);
        if (v113 != 2)
        {
          v115 |= *(v16 + 2);
        }

        v19 = v115 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  v94 = v19 << v15;
LABEL_245:
  if (*(a1 + 2) < *(a1 + 4) - *a1)
  {
    PullVUIParamSet_cold_3(a1, a2, a3, a4, a5, a6, a7, a8, v334);
    return 4294954582;
  }

  a2[20] = v94 >> 31;
  v116 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v16 + v116);
  v117 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v117 < 1)
    {
      v19 = 0;
      if (v15 | v117)
      {
        v21 = 1214;
        goto LABEL_758;
      }
    }

    else
    {
      v118 = *v16;
      if (v117 == 1)
      {
        v19 = v118 << 24;
      }

      else
      {
        v119 = (v118 << 16) | (*(v16 + 1) << 8);
        if (v117 != 2)
        {
          v119 |= *(v16 + 2);
        }

        v19 = v119 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  v19 <<= v15;
  if ((v94 & 0x80000000) == 0)
  {
    v120 = v19;
    goto LABEL_436;
  }

  if (v19 < 0x80000)
  {
    goto LABEL_268;
  }

  v121 = __clz(v19);
  if (v121)
  {
    v122 = v19 << (v121 + 1) >> -v121;
  }

  else
  {
    v122 = 0;
  }

  v123 = -1 << v121;
  v124 = v122 + ~(-1 << v121);
  a2[32] = v124;
  v125 = v121 + v15 + v121 + 1;
  v15 = v125 & 7;
  v16 = (v16 + (v125 >> 3));
  v126 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_272;
  }

  if (v126 >= 1)
  {
    v127 = *v16;
    if (v126 == 1)
    {
      v19 = v127 << 24;
    }

    else
    {
      v128 = (v127 << 16) | (*(v16 + 1) << 8);
      if (v126 != 2)
      {
        v128 |= *(v16 + 2);
      }

      v19 = v128 << 8;
    }

    goto LABEL_272;
  }

  v19 = 0;
  if (v15 | v126)
  {
LABEL_268:
    v21 = 1222;
    goto LABEL_758;
  }

LABEL_272:
  v19 <<= v15;
  if (v124 > 0x1F)
  {
    v21 = 1223;
    goto LABEL_758;
  }

  a2[33] = v19 >> 28;
  v129 = (v15 + 4) >> 3;
  v15 = (v15 + 4) & 7;
  v16 = (v16 + v129);
  v130 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v130 < 1)
    {
      v19 = 0;
      if (v15 | v130)
      {
        v21 = 1224;
        goto LABEL_758;
      }
    }

    else
    {
      v131 = *v16;
      if (v130 == 1)
      {
        v19 = v131 << 24;
      }

      else
      {
        v132 = (v131 << 16) | (*(v16 + 1) << 8);
        if (v130 != 2)
        {
          v132 |= *(v16 + 2);
        }

        v19 = v132 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  a2[34] = v19 << v15 >> 28;
  v133 = (v15 + 4) >> 3;
  v15 = (v15 + 4) & 7;
  v16 = (v16 + v133);
  v134 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v134 < 1)
    {
      v19 = 0;
      if (v15 | v134)
      {
        v21 = 1225;
        goto LABEL_758;
      }
    }

    else
    {
      v135 = *v16;
      if (v134 == 1)
      {
        v19 = v135 << 24;
      }

      else
      {
        v136 = (v135 << 16) | (*(v16 + 1) << 8);
        if (v134 != 2)
        {
          v136 |= *(v16 + 2);
        }

        v19 = v136 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  v137 = 0;
  v138 = v19 << v15;
  v139 = v122 - v123;
  v21 = 1228;
  do
  {
    if (v138 >= 0x80000)
    {
      v140 = v15 + 2 * __clz(v138) + 1;
      v15 = v140 & 7;
      v16 = (v16 + (v140 >> 3));
LABEL_321:
      v153 = v17 - v16;
      if (v17 - v16 >= 4)
      {
        goto LABEL_329;
      }

      if (v153 < 1)
      {
        v19 = 0;
        if (v15 | v153)
        {
          goto LABEL_758;
        }
      }

      else
      {
        v154 = *v16;
        if (v153 == 1)
        {
          v19 = v154 << 24;
        }

        else
        {
          v158 = (v154 << 16) | (*(v16 + 1) << 8);
          if (v153 != 2)
          {
            v158 |= *(v16 + 2);
          }

          v19 = v158 << 8;
        }
      }

      goto LABEL_343;
    }

    v141 = (v15 + 1) >> 3;
    v15 = (v15 + 1) & 7;
    v16 = (v16 + v141);
    v142 = v17 - v16;
    if (v17 - v16 < 4)
    {
      if (v142 < 1)
      {
        v19 = 0;
        if (v15 | v142)
        {
          goto LABEL_758;
        }
      }

      else
      {
        v143 = *v16;
        if (v142 == 1)
        {
          v19 = v143 << 24;
        }

        else
        {
          v144 = (v143 << 16) | (*(v16 + 1) << 8);
          if (v142 != 2)
          {
            v144 |= *(v16 + 2);
          }

          v19 = v144 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v16);
    }

    v145 = 0;
    v19 <<= v15;
    do
    {
      v146 = v15;
      v147 = v19;
      v148 = (v15 + 1) >> 3;
      v15 = (v15 + 1) & 7;
      v16 = (v16 + v148);
      v149 = v17 - v16;
      if (v17 - v16 < 4)
      {
        if (v149 < 1)
        {
          v19 = 0;
          if (v15 | v149)
          {
            goto LABEL_758;
          }
        }

        else
        {
          v150 = *v16;
          if (v149 == 1)
          {
            v19 = v150 << 24;
          }

          else
          {
            v151 = (v150 << 16) | (*(v16 + 1) << 8);
            if (v149 != 2)
            {
              v151 |= *(v16 + 2);
            }

            v19 = v151 << 8;
          }
        }
      }

      else
      {
        v19 = bswap32(*v16);
      }

      v19 <<= v15;
      ++v145;
    }

    while ((v147 & 0x80000000) == 0);
    if (v145 - 1 > 0x1E)
    {
      goto LABEL_758;
    }

    v152 = ((v146 + 1) & 7) + v145;
    if (v145 <= 0x18)
    {
      v15 = v152 & 7;
      v16 = (v16 + (v152 >> 3));
      goto LABEL_321;
    }

    v15 = v152 & 7;
    v60 = v16 + ((v152 - 16) >> 3);
    v155 = v17 - v60;
    if (v17 - v60 <= 3 && v155 <= 0 && v15 | v155)
    {
LABEL_760:
      v19 = 0;
      goto LABEL_761;
    }

    v16 = (v60 + 2);
    v156 = v17 - (v60 + 2);
    if (v156 >= 4)
    {
LABEL_329:
      v19 = bswap32(*v16);
      goto LABEL_343;
    }

    if (v156 < 1)
    {
      v19 = 0;
      if (v15 | v156)
      {
        goto LABEL_758;
      }
    }

    else
    {
      v157 = *v16;
      if (v156 == 1)
      {
        v19 = v157 << 24;
      }

      else
      {
        v159 = (v157 << 16) | (v60[3] << 8);
        if (v156 != 2)
        {
          v159 |= v60[4];
        }

        v19 = v159 << 8;
      }
    }

LABEL_343:
    if (v19 << v15 < 0x80000)
    {
      v163 = (v15 + 1) >> 3;
      v15 = (v15 + 1) & 7;
      v16 = (v16 + v163);
      v164 = v17 - v16;
      if (v17 - v16 < 4)
      {
        if (v164 < 1)
        {
          v19 = 0;
          if (v15 | v164)
          {
            goto LABEL_755;
          }
        }

        else
        {
          v165 = *v16;
          if (v164 == 1)
          {
            v19 = v165 << 24;
          }

          else
          {
            v166 = (v165 << 16) | (*(v16 + 1) << 8);
            if (v164 != 2)
            {
              v166 |= *(v16 + 2);
            }

            v19 = v166 << 8;
          }
        }
      }

      else
      {
        v19 = bswap32(*v16);
      }

      v167 = 0;
      v19 <<= v15;
      do
      {
        v168 = v15;
        v169 = v19;
        v170 = (v15 + 1) >> 3;
        v15 = (v15 + 1) & 7;
        v16 = (v16 + v170);
        v171 = v17 - v16;
        if (v17 - v16 < 4)
        {
          if (v171 < 1)
          {
            v19 = 0;
            if (v15 | v171)
            {
              goto LABEL_755;
            }
          }

          else
          {
            v172 = *v16;
            if (v171 == 1)
            {
              v19 = v172 << 24;
            }

            else
            {
              v173 = (v172 << 16) | (*(v16 + 1) << 8);
              if (v171 != 2)
              {
                v173 |= *(v16 + 2);
              }

              v19 = v173 << 8;
            }
          }
        }

        else
        {
          v19 = bswap32(*v16);
        }

        v19 <<= v15;
        ++v167;
      }

      while ((v169 & 0x80000000) == 0);
      if (v167 - 1 > 0x1E)
      {
        goto LABEL_755;
      }

      v174 = ((v168 + 1) & 7) + v167;
      if (v167 > 0x18)
      {
        v15 = v174 & 7;
        v16 = (v16 + ((v174 - 16) >> 3));
        v175 = v17 - v16;
        if (v17 - v16 <= 3 && v175 <= 0 && v15 | v175)
        {
          goto LABEL_754;
        }

        v16 = (v16 + 2);
      }

      else
      {
        v15 = v174 & 7;
        v16 = (v16 + (v174 >> 3));
      }

      v176 = v17 - v16;
      if (v17 - v16 <= 3 && v176 <= 0 && v15 | v176)
      {
        goto LABEL_754;
      }
    }

    else
    {
      v160 = v15 + 2 * __clz(v19 << v15) + 1;
      v15 = v160 & 7;
      v16 = (v16 + (v160 >> 3));
      if (v17 - v16 <= 3 && v17 - v16 <= 0 && (v15 | (v17 - v16)) != 0)
      {
LABEL_754:
        v19 = 0;
LABEL_755:
        v21 = 1229;
        goto LABEL_758;
      }
    }

    v177 = (v15 + 1) >> 3;
    v15 = (v15 + 1) & 7;
    v16 = (v16 + v177);
    v178 = v17 - v16;
    if (v17 - v16 < 4)
    {
      if (v178 < 1)
      {
        v19 = 0;
        if (v15 | v178)
        {
          v21 = 1230;
          goto LABEL_758;
        }
      }

      else
      {
        v179 = *v16;
        if (v178 == 1)
        {
          v19 = v179 << 24;
        }

        else
        {
          v180 = (v179 << 16) | (*(v16 + 1) << 8);
          if (v178 != 2)
          {
            v180 |= *(v16 + 2);
          }

          v19 = v180 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v16);
    }

    v138 = v19 << v15;
    ++v137;
  }

  while (v137 != v139);
  a2[35] = v138 >> 27;
  v181 = (v15 + 5) >> 3;
  v15 = (v15 + 5) & 7;
  v16 = (v16 + v181);
  v182 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_405;
  }

  if (v182 < 1)
  {
    v19 = 0;
    if (!(v15 | v182))
    {
      goto LABEL_405;
    }

    v21 = 1233;
    goto LABEL_758;
  }

  v183 = *v16;
  if (v182 == 1)
  {
    v19 = v183 << 24;
  }

  else
  {
    v184 = (v183 << 16) | (*(v16 + 1) << 8);
    if (v182 != 2)
    {
      v184 |= *(v16 + 2);
    }

    v19 = v184 << 8;
  }

LABEL_405:
  a2[36] = v19 << v15 >> 27;
  v185 = (v15 + 5) >> 3;
  v15 = (v15 + 5) & 7;
  v16 = (v16 + v185);
  v186 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_415;
  }

  if (v186 < 1)
  {
    v19 = 0;
    if (!(v15 | v186))
    {
      goto LABEL_415;
    }

    v21 = 1234;
    goto LABEL_758;
  }

  v187 = *v16;
  if (v186 == 1)
  {
    v19 = v187 << 24;
  }

  else
  {
    v188 = (v187 << 16) | (*(v16 + 1) << 8);
    if (v186 != 2)
    {
      v188 |= *(v16 + 2);
    }

    v19 = v188 << 8;
  }

LABEL_415:
  a2[37] = v19 << v15 >> 27;
  v189 = (v15 + 5) >> 3;
  v15 = (v15 + 5) & 7;
  v16 = (v16 + v189);
  v190 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_425;
  }

  if (v190 < 1)
  {
    v19 = 0;
    if (!(v15 | v190))
    {
      goto LABEL_425;
    }

    v21 = 1235;
    goto LABEL_758;
  }

  v191 = *v16;
  if (v190 == 1)
  {
    v19 = v191 << 24;
  }

  else
  {
    v192 = (v191 << 16) | (*(v16 + 1) << 8);
    if (v190 != 2)
    {
      v192 |= *(v16 + 2);
    }

    v19 = v192 << 8;
  }

LABEL_425:
  a2[38] = v19 << v15 >> 27;
  v193 = (v15 + 5) >> 3;
  v15 = (v15 + 5) & 7;
  v16 = (v16 + v193);
  v194 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_435;
  }

  if (v194 < 1)
  {
    v19 = 0;
    if (!(v15 | v194))
    {
      goto LABEL_435;
    }

    v21 = 1236;
    goto LABEL_758;
  }

  v195 = *v16;
  if (v194 == 1)
  {
    v19 = v195 << 24;
  }

  else
  {
    v196 = (v195 << 16) | (*(v16 + 1) << 8);
    if (v194 != 2)
    {
      v196 |= *(v16 + 2);
    }

    v19 = v196 << 8;
  }

LABEL_435:
  v120 = v19 << v15;
LABEL_436:
  a2[21] = v120 >> 31;
  v197 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v16 + v197);
  v198 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_446;
  }

  if (v198 < 1)
  {
    v19 = 0;
    if (!(v15 | v198))
    {
      goto LABEL_446;
    }

    v21 = 1239;
    goto LABEL_758;
  }

  v199 = *v16;
  if (v198 == 1)
  {
    v19 = v199 << 24;
  }

  else
  {
    v200 = (v199 << 16) | (*(v16 + 1) << 8);
    if (v198 != 2)
    {
      v200 |= *(v16 + 2);
    }

    v19 = v200 << 8;
  }

LABEL_446:
  v19 <<= v15;
  if ((v120 & 0x80000000) == 0)
  {
    goto LABEL_626;
  }

  if (v19 < 0x80000)
  {
LABEL_457:
    v21 = 1247;
    goto LABEL_758;
  }

  v201 = __clz(v19);
  if (v201)
  {
    v202 = v19 << (v201 + 1) >> -v201;
  }

  else
  {
    v202 = 0;
  }

  v203 = -1 << v201;
  v204 = v202 + ~(-1 << v201);
  a2[32] = v204;
  v205 = v201 + v15 + v201 + 1;
  v15 = v205 & 7;
  v16 = (v16 + (v205 >> 3));
  v206 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_461;
  }

  if (v206 < 1)
  {
    v19 = 0;
    if (!(v15 | v206))
    {
      goto LABEL_461;
    }

    goto LABEL_457;
  }

  v207 = *v16;
  if (v206 == 1)
  {
    v19 = v207 << 24;
  }

  else
  {
    v208 = (v207 << 16) | (*(v16 + 1) << 8);
    if (v206 != 2)
    {
      v208 |= *(v16 + 2);
    }

    v19 = v208 << 8;
  }

LABEL_461:
  v19 <<= v15;
  if (v204 > 0x1F)
  {
    v21 = 1248;
    goto LABEL_758;
  }

  a2[33] = v19 >> 28;
  v209 = (v15 + 4) >> 3;
  v15 = (v15 + 4) & 7;
  v16 = (v16 + v209);
  v210 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_472;
  }

  if (v210 < 1)
  {
    v19 = 0;
    if (!(v15 | v210))
    {
      goto LABEL_472;
    }

    v21 = 1249;
    goto LABEL_758;
  }

  v211 = *v16;
  if (v210 == 1)
  {
    v19 = v211 << 24;
  }

  else
  {
    v212 = (v211 << 16) | (*(v16 + 1) << 8);
    if (v210 != 2)
    {
      v212 |= *(v16 + 2);
    }

    v19 = v212 << 8;
  }

LABEL_472:
  a2[34] = v19 << v15 >> 28;
  v213 = (v15 + 4) >> 3;
  v15 = (v15 + 4) & 7;
  v16 = (v16 + v213);
  v214 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_482;
  }

  if (v214 < 1)
  {
    v19 = 0;
    if (!(v15 | v214))
    {
      goto LABEL_482;
    }

    v21 = 1250;
LABEL_758:
    emitter = fig_log_get_emitter("com.apple.coremedia", "");
    result = FigSignalErrorAtGM("%s signalled err=%d at <>:%d", emitter, 0xFFFFCE56uLL, "<<<< H264Bridge >>>>", v21, v8, v332, v333, v334);
    if (!result)
    {
      goto LABEL_750;
    }

    return result;
  }

  v215 = *v16;
  if (v214 == 1)
  {
    v19 = v215 << 24;
  }

  else
  {
    v216 = (v215 << 16) | (*(v16 + 1) << 8);
    if (v214 != 2)
    {
      v216 |= *(v16 + 2);
    }

    v19 = v216 << 8;
  }

LABEL_482:
  v217 = 0;
  v218 = v19 << v15;
  v219 = v202 - v203;
  v21 = 1253;
  while (2)
  {
    if (v218 >= 0x80000)
    {
      v220 = v15 + 2 * __clz(v218) + 1;
      v15 = v220 & 7;
      v16 = (v16 + (v220 >> 3));
      goto LABEL_510;
    }

    v221 = (v15 + 1) >> 3;
    v15 = (v15 + 1) & 7;
    v16 = (v16 + v221);
    v222 = v17 - v16;
    if (v17 - v16 < 4)
    {
      if (v222 < 1)
      {
        v19 = 0;
        if (v15 | v222)
        {
          goto LABEL_758;
        }
      }

      else
      {
        v223 = *v16;
        if (v222 == 1)
        {
          v19 = v223 << 24;
        }

        else
        {
          v224 = (v223 << 16) | (*(v16 + 1) << 8);
          if (v222 != 2)
          {
            v224 |= *(v16 + 2);
          }

          v19 = v224 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v16);
    }

    v225 = 0;
    v19 <<= v15;
    do
    {
      v226 = v15;
      v227 = v19;
      v228 = (v15 + 1) >> 3;
      v15 = (v15 + 1) & 7;
      v16 = (v16 + v228);
      v229 = v17 - v16;
      if (v17 - v16 < 4)
      {
        if (v229 < 1)
        {
          v19 = 0;
          if (v15 | v229)
          {
            goto LABEL_758;
          }
        }

        else
        {
          v230 = *v16;
          if (v229 == 1)
          {
            v19 = v230 << 24;
          }

          else
          {
            v231 = (v230 << 16) | (*(v16 + 1) << 8);
            if (v229 != 2)
            {
              v231 |= *(v16 + 2);
            }

            v19 = v231 << 8;
          }
        }
      }

      else
      {
        v19 = bswap32(*v16);
      }

      v19 <<= v15;
      ++v225;
    }

    while ((v227 & 0x80000000) == 0);
    if (v225 - 1 > 0x1E)
    {
      goto LABEL_758;
    }

    v232 = ((v226 + 1) & 7) + v225;
    if (v225 <= 0x18)
    {
      v15 = v232 & 7;
      v16 = (v16 + (v232 >> 3));
LABEL_510:
      v233 = v17 - v16;
      if (v17 - v16 < 4)
      {
        if (v233 < 1)
        {
          v19 = 0;
          if (v15 | v233)
          {
            goto LABEL_758;
          }
        }

        else
        {
          v234 = *v16;
          if (v233 == 1)
          {
            v19 = v234 << 24;
          }

          else
          {
            v238 = (v234 << 16) | (*(v16 + 1) << 8);
            if (v233 != 2)
            {
              v238 |= *(v16 + 2);
            }

            v19 = v238 << 8;
          }
        }

        goto LABEL_532;
      }

LABEL_518:
      v19 = bswap32(*v16);
      goto LABEL_532;
    }

    v15 = v232 & 7;
    v60 = v16 + ((v232 - 16) >> 3);
    v235 = v17 - v60;
    if (v17 - v60 <= 3 && v235 <= 0 && v15 | v235)
    {
      goto LABEL_760;
    }

    v16 = (v60 + 2);
    v236 = v17 - (v60 + 2);
    if (v236 >= 4)
    {
      goto LABEL_518;
    }

    if (v236 < 1)
    {
      v19 = 0;
      if (v15 | v236)
      {
        goto LABEL_758;
      }
    }

    else
    {
      v237 = *v16;
      if (v236 == 1)
      {
        v19 = v237 << 24;
      }

      else
      {
        v239 = (v237 << 16) | (v60[3] << 8);
        if (v236 != 2)
        {
          v239 |= v60[4];
        }

        v19 = v239 << 8;
      }
    }

LABEL_532:
    if (v19 << v15 < 0x80000)
    {
      v243 = (v15 + 1) >> 3;
      v15 = (v15 + 1) & 7;
      v16 = (v16 + v243);
      v244 = v17 - v16;
      if (v17 - v16 < 4)
      {
        if (v244 < 1)
        {
          v19 = 0;
          if (v15 | v244)
          {
            goto LABEL_757;
          }
        }

        else
        {
          v245 = *v16;
          if (v244 == 1)
          {
            v19 = v245 << 24;
          }

          else
          {
            v246 = (v245 << 16) | (*(v16 + 1) << 8);
            if (v244 != 2)
            {
              v246 |= *(v16 + 2);
            }

            v19 = v246 << 8;
          }
        }
      }

      else
      {
        v19 = bswap32(*v16);
      }

      v247 = 0;
      v19 <<= v15;
      do
      {
        v248 = v15;
        v249 = v19;
        v250 = (v15 + 1) >> 3;
        v15 = (v15 + 1) & 7;
        v16 = (v16 + v250);
        v251 = v17 - v16;
        if (v17 - v16 < 4)
        {
          if (v251 < 1)
          {
            v19 = 0;
            if (v15 | v251)
            {
              goto LABEL_757;
            }
          }

          else
          {
            v252 = *v16;
            if (v251 == 1)
            {
              v19 = v252 << 24;
            }

            else
            {
              v253 = (v252 << 16) | (*(v16 + 1) << 8);
              if (v251 != 2)
              {
                v253 |= *(v16 + 2);
              }

              v19 = v253 << 8;
            }
          }
        }

        else
        {
          v19 = bswap32(*v16);
        }

        v19 <<= v15;
        ++v247;
      }

      while ((v249 & 0x80000000) == 0);
      if (v247 - 1 > 0x1E)
      {
        goto LABEL_757;
      }

      v254 = ((v248 + 1) & 7) + v247;
      if (v247 > 0x18)
      {
        v15 = v254 & 7;
        v16 = (v16 + ((v254 - 16) >> 3));
        v255 = v17 - v16;
        if (v17 - v16 <= 3 && v255 <= 0 && v15 | v255)
        {
          goto LABEL_756;
        }

        v16 = (v16 + 2);
      }

      else
      {
        v15 = v254 & 7;
        v16 = (v16 + (v254 >> 3));
      }

      v256 = v17 - v16;
      if (v17 - v16 <= 3 && v256 <= 0 && v15 | v256)
      {
        goto LABEL_756;
      }
    }

    else
    {
      v240 = v15 + 2 * __clz(v19 << v15) + 1;
      v15 = v240 & 7;
      v16 = (v16 + (v240 >> 3));
      if (v17 - v16 <= 3 && v17 - v16 <= 0 && (v15 | (v17 - v16)) != 0)
      {
LABEL_756:
        v19 = 0;
LABEL_757:
        v21 = 1254;
        goto LABEL_758;
      }
    }

    v257 = (v15 + 1) >> 3;
    v15 = (v15 + 1) & 7;
    v16 = (v16 + v257);
    v258 = v17 - v16;
    if (v17 - v16 < 4)
    {
      if (v258 < 1)
      {
        v19 = 0;
        if (v15 | v258)
        {
          v21 = 1255;
          goto LABEL_758;
        }
      }

      else
      {
        v259 = *v16;
        if (v258 == 1)
        {
          v19 = v259 << 24;
        }

        else
        {
          v260 = (v259 << 16) | (*(v16 + 1) << 8);
          if (v258 != 2)
          {
            v260 |= *(v16 + 2);
          }

          v19 = v260 << 8;
        }
      }
    }

    else
    {
      v19 = bswap32(*v16);
    }

    if (*(a1 + 2) < *(a1 + 4) - *a1)
    {
      PullVUIParamSet_cold_1(a1, a2, a3, a4, a5, a6, a7, a8, v334);
      return 4294954582;
    }

    v218 = v19 << v15;
    if (++v217 != v219)
    {
      continue;
    }

    break;
  }

  a2[35] = v218 >> 27;
  v261 = (v15 + 5) >> 3;
  v15 = (v15 + 5) & 7;
  v16 = (v16 + v261);
  v262 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v262 < 1)
    {
      v19 = 0;
      if (v15 | v262)
      {
        v21 = 1258;
        goto LABEL_758;
      }
    }

    else
    {
      v263 = *v16;
      if (v262 == 1)
      {
        v19 = v263 << 24;
      }

      else
      {
        v264 = (v263 << 16) | (*(v16 + 1) << 8);
        if (v262 != 2)
        {
          v264 |= *(v16 + 2);
        }

        v19 = v264 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  a2[36] = v19 << v15 >> 27;
  v265 = (v15 + 5) >> 3;
  v15 = (v15 + 5) & 7;
  v16 = (v16 + v265);
  v266 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v266 < 1)
    {
      v19 = 0;
      if (v15 | v266)
      {
        v21 = 1259;
        goto LABEL_758;
      }
    }

    else
    {
      v267 = *v16;
      if (v266 == 1)
      {
        v19 = v267 << 24;
      }

      else
      {
        v268 = (v267 << 16) | (*(v16 + 1) << 8);
        if (v266 != 2)
        {
          v268 |= *(v16 + 2);
        }

        v19 = v268 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  a2[37] = v19 << v15 >> 27;
  v269 = (v15 + 5) >> 3;
  v15 = (v15 + 5) & 7;
  v16 = (v16 + v269);
  v270 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v270 < 1)
    {
      v19 = 0;
      if (v15 | v270)
      {
        v21 = 1260;
        goto LABEL_758;
      }
    }

    else
    {
      v271 = *v16;
      if (v270 == 1)
      {
        v19 = v271 << 24;
      }

      else
      {
        v272 = (v271 << 16) | (*(v16 + 1) << 8);
        if (v270 != 2)
        {
          v272 |= *(v16 + 2);
        }

        v19 = v272 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  a2[38] = v19 << v15 >> 27;
  v273 = (v15 + 5) >> 3;
  v15 = (v15 + 5) & 7;
  v16 = (v16 + v273);
  v274 = v17 - v16;
  if (v17 - v16 < 4)
  {
    if (v274 < 1)
    {
      v19 = 0;
      if (v15 | v274)
      {
        v21 = 1261;
        goto LABEL_758;
      }
    }

    else
    {
      v275 = *v16;
      if (v274 == 1)
      {
        v19 = v275 << 24;
      }

      else
      {
        v276 = (v275 << 16) | (*(v16 + 1) << 8);
        if (v274 != 2)
        {
          v276 |= *(v16 + 2);
        }

        v19 = v276 << 8;
      }
    }
  }

  else
  {
    v19 = bswap32(*v16);
  }

  v19 <<= v15;
LABEL_626:
  if (*(a1 + 2) < *(a1 + 4) - *a1)
  {
    PullVUIParamSet_cold_2(a1, a2, a3, a4, a5, a6, a7, a8, v334);
    return 4294954582;
  }

  if (!a2[20] && !a2[21])
  {
    goto LABEL_640;
  }

  a2[22] = v19 >> 31;
  v277 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v16 + v277);
  v278 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_639;
  }

  if (v278 < 1)
  {
    v19 = 0;
    if (!(v15 | v278))
    {
      goto LABEL_639;
    }

    v21 = 1267;
    goto LABEL_758;
  }

  v279 = *v16;
  if (v278 == 1)
  {
    v19 = v279 << 24;
  }

  else
  {
    v280 = (v279 << 16) | (*(v16 + 1) << 8);
    if (v278 != 2)
    {
      v280 |= *(v16 + 2);
    }

    v19 = v280 << 8;
  }

LABEL_639:
  v19 <<= v15;
LABEL_640:
  a2[23] = v19 >> 31;
  v281 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v16 + v281);
  v282 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_650;
  }

  if (v282 < 1)
  {
    v19 = 0;
    if (!(v15 | v282))
    {
      goto LABEL_650;
    }

    v21 = 1270;
    goto LABEL_758;
  }

  v283 = *v16;
  if (v282 == 1)
  {
    v19 = v283 << 24;
  }

  else
  {
    v284 = (v283 << 16) | (*(v16 + 1) << 8);
    if (v282 != 2)
    {
      v284 |= *(v16 + 2);
    }

    v19 = v284 << 8;
  }

LABEL_650:
  v285 = v19 << v15;
  a2[24] = v19 << v15 >> 31;
  v286 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v16 + v286);
  v287 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_660;
  }

  if (v287 < 1)
  {
    v19 = 0;
    if (!(v15 | v287))
    {
      goto LABEL_660;
    }

    v21 = 1272;
    goto LABEL_758;
  }

  v288 = *v16;
  if (v287 == 1)
  {
    v19 = v288 << 24;
  }

  else
  {
    v289 = (v288 << 16) | (*(v16 + 1) << 8);
    if (v287 != 2)
    {
      v289 |= *(v16 + 2);
    }

    v19 = v289 << 8;
  }

LABEL_660:
  v19 <<= v15;
  if ((v285 & 0x80000000) == 0)
  {
    goto LABEL_750;
  }

  a2[25] = v19 >> 31;
  v290 = (v15 + 1) >> 3;
  v15 = (v15 + 1) & 7;
  v16 = (v16 + v290);
  v291 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_671;
  }

  if (v291 < 1)
  {
    v19 = 0;
    if (!(v15 | v291))
    {
      goto LABEL_671;
    }

    v21 = 1279;
    goto LABEL_758;
  }

  v292 = *v16;
  if (v291 == 1)
  {
    v19 = v292 << 24;
  }

  else
  {
    v293 = (v292 << 16) | (*(v16 + 1) << 8);
    if (v291 != 2)
    {
      v293 |= *(v16 + 2);
    }

    v19 = v293 << 8;
  }

LABEL_671:
  v19 <<= v15;
  if (v19 < 0x80000)
  {
LABEL_680:
    v21 = 1280;
    goto LABEL_758;
  }

  v294 = __clz(v19);
  v295 = v19 << (v294 + 1) >> -v294;
  if (!v294)
  {
    v295 = 0;
  }

  a2[26] = v295 + ~(-1 << v294);
  v296 = v294 + v15 + v294 + 1;
  v15 = v296 & 7;
  v16 = (v16 + (v296 >> 3));
  v297 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_684;
  }

  if (v297 < 1)
  {
    v19 = 0;
    if (!(v15 | v297))
    {
      goto LABEL_684;
    }

    goto LABEL_680;
  }

  v298 = *v16;
  if (v297 == 1)
  {
    v19 = v298 << 24;
  }

  else
  {
    v299 = (v298 << 16) | (*(v16 + 1) << 8);
    if (v297 != 2)
    {
      v299 |= *(v16 + 2);
    }

    v19 = v299 << 8;
  }

LABEL_684:
  v19 <<= v15;
  if (v19 < 0x80000)
  {
LABEL_693:
    v21 = 1281;
    goto LABEL_758;
  }

  v300 = __clz(v19);
  v301 = v19 << (v300 + 1) >> -v300;
  if (!v300)
  {
    v301 = 0;
  }

  a2[27] = v301 + ~(-1 << v300);
  v302 = v300 + v15 + v300 + 1;
  v15 = v302 & 7;
  v16 = (v16 + (v302 >> 3));
  v303 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_697;
  }

  if (v303 < 1)
  {
    v19 = 0;
    if (!(v15 | v303))
    {
      goto LABEL_697;
    }

    goto LABEL_693;
  }

  v304 = *v16;
  if (v303 == 1)
  {
    v19 = v304 << 24;
  }

  else
  {
    v305 = (v304 << 16) | (*(v16 + 1) << 8);
    if (v303 != 2)
    {
      v305 |= *(v16 + 2);
    }

    v19 = v305 << 8;
  }

LABEL_697:
  v19 <<= v15;
  if (v19 < 0x80000)
  {
LABEL_706:
    v21 = 1282;
    goto LABEL_758;
  }

  v306 = __clz(v19);
  v307 = v19 << (v306 + 1) >> -v306;
  if (!v306)
  {
    v307 = 0;
  }

  a2[28] = v307 + ~(-1 << v306);
  v308 = v306 + v15 + v306 + 1;
  v15 = v308 & 7;
  v16 = (v16 + (v308 >> 3));
  v309 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_710;
  }

  if (v309 < 1)
  {
    v19 = 0;
    if (!(v15 | v309))
    {
      goto LABEL_710;
    }

    goto LABEL_706;
  }

  v310 = *v16;
  if (v309 == 1)
  {
    v19 = v310 << 24;
  }

  else
  {
    v311 = (v310 << 16) | (*(v16 + 1) << 8);
    if (v309 != 2)
    {
      v311 |= *(v16 + 2);
    }

    v19 = v311 << 8;
  }

LABEL_710:
  v19 <<= v15;
  if (v19 < 0x80000)
  {
LABEL_719:
    v21 = 1283;
    goto LABEL_758;
  }

  v312 = __clz(v19);
  v313 = v19 << (v312 + 1) >> -v312;
  if (!v312)
  {
    v313 = 0;
  }

  a2[29] = v313 + ~(-1 << v312);
  v314 = v312 + v15 + v312 + 1;
  v15 = v314 & 7;
  v16 = (v16 + (v314 >> 3));
  v315 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_723;
  }

  if (v315 < 1)
  {
    v19 = 0;
    if (!(v15 | v315))
    {
      goto LABEL_723;
    }

    goto LABEL_719;
  }

  v316 = *v16;
  if (v315 == 1)
  {
    v19 = v316 << 24;
  }

  else
  {
    v317 = (v316 << 16) | (*(v16 + 1) << 8);
    if (v315 != 2)
    {
      v317 |= *(v16 + 2);
    }

    v19 = v317 << 8;
  }

LABEL_723:
  v19 <<= v15;
  if (v19 < 0x80000)
  {
LABEL_732:
    v21 = 1284;
    goto LABEL_758;
  }

  v318 = __clz(v19);
  v319 = v19 << (v318 + 1) >> -v318;
  if (!v318)
  {
    v319 = 0;
  }

  a2[30] = v319 + ~(-1 << v318);
  v320 = v318 + v15 + v318 + 1;
  v15 = v320 & 7;
  v16 = (v16 + (v320 >> 3));
  v321 = v17 - v16;
  if (v17 - v16 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_736;
  }

  if (v321 < 1)
  {
    v19 = 0;
    if (!(v15 | v321))
    {
      goto LABEL_736;
    }

    goto LABEL_732;
  }

  v322 = *v16;
  if (v321 == 1)
  {
    v19 = v322 << 24;
  }

  else
  {
    v323 = (v322 << 16) | (*(v16 + 1) << 8);
    if (v321 != 2)
    {
      v323 |= *(v16 + 2);
    }

    v19 = v323 << 8;
  }

LABEL_736:
  v19 <<= v15;
  if (v19 < 0x80000)
  {
LABEL_745:
    v21 = 1285;
    goto LABEL_758;
  }

  v324 = __clz(v19);
  v325 = v19 << (v324 + 1) >> -v324;
  if (!v324)
  {
    v325 = 0;
  }

  a2[31] = v325 + ~(-1 << v324);
  v326 = v324 + v15 + v324 + 1;
  v15 = v326 & 7;
  v16 = (v16 + (v326 >> 3));
  v327 = v17 - v16;
  if (v327 >= 4)
  {
    v19 = bswap32(*v16);
    goto LABEL_749;
  }

  if (v327 < 1)
  {
    v19 = 0;
    if (!(v15 | v327))
    {
      goto LABEL_749;
    }

    goto LABEL_745;
  }

  v328 = *v16;
  if (v327 == 1)
  {
    v19 = v328 << 24;
  }

  else
  {
    v329 = (v328 << 16) | (*(v16 + 1) << 8);
    if (v327 != 2)
    {
      v329 |= *(v16 + 2);
    }

    v19 = v329 << 8;
  }

LABEL_749:
  v19 <<= v15;
LABEL_750:
  result = 0;
  a1[2] = v16;
  *(a1 + 6) = v19;
  *(a1 + 28) = v15;
  return result;
}