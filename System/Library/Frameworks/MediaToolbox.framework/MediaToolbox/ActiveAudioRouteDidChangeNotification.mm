@interface ActiveAudioRouteDidChangeNotification
@end

@implementation ActiveAudioRouteDidChangeNotification

void __playerceleste_ActiveAudioRouteDidChangeNotification_block_invoke(uint64_t a1)
{
  v19[16] = *MEMORY[0x1E69E9840];
  v17 = 0;
  if (*(a1 + 32))
  {
    if (dword_1EAF17958)
    {
      LODWORD(value) = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    v3 = *(a1 + 48);
    if (*(v3 + 128) && *(v3 + 130) && *(a1 + 56))
    {
      v4 = *MEMORY[0x1E695E4C0];
      value = *MEMORY[0x1E695E4C0];
      FigCFDictionaryGetIntIfPresent();
      CFDictionaryGetValue(*(a1 + 56), *MEMORY[0x1E69AED48]);
      CFDictionaryGetValue(*(a1 + 56), *MEMORY[0x1E69AED38]);
      if (CFDictionaryGetValueIfPresent(*(a1 + 56), *MEMORY[0x1E69AED58], &value) && CFBooleanGetValue(value))
      {
        if (*(*(a1 + 48) + 162))
        {
          v19[0] = 0;
          v5 = *(a1 + 32);
          v6 = *(*(CMBaseObjectGetVTable() + 16) + 32);
          if (v6)
          {
            v7 = v6(v5, 0, v19);
            v8 = 0;
            v9 = v19[0];
            if (!v7 && v19[0])
            {
              *cf = 0;
              FigPlaybackItemGetFigBaseObject();
              v11 = v10;
              v12 = *(*(CMBaseObjectGetVTable() + 8) + 48);
              if (v12)
              {
                v12(v11, @"HasEnabledAudio", *MEMORY[0x1E695E480], cf);
                v8 = *cf == v4;
                if (*cf)
                {
                  CFRelease(*cf);
                }
              }

              else
              {
                v8 = v4 == 0;
              }

              v9 = v19[0];
            }

            if (v9)
            {
              CFRelease(v9);
            }
          }

          else
          {
            v8 = 0;
          }

          v13 = 0;
        }

        else
        {
          v13 = 0;
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
        v13 = 1;
      }

      if (v17 == 2)
      {
        if (dword_1EAF17958)
        {
          v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
        }

        if (((v13 | v8) & 1) == 0)
        {
          playerceleste_pauseCurrentlyPlayingMovie(*(a1 + 32), 12);
        }
      }

      if (playerceleste_shouldPauseAndResumeForAirPlayRouteChange_onceToken != -1)
      {
        __playerceleste_ActiveAudioRouteDidChangeNotification_block_invoke_cold_1();
      }
    }

    FigPlayerReevaluateRouteConfigurationForReason(*(a1 + 32), 0, @"ActiveAudioRouteDidChange from celeste player");
    v15 = *(a1 + 40);
    if (v15)
    {
      CFRelease(v15);
    }
  }
}

@end