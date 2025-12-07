@interface FigRCLCreateConfiguration
@end

@implementation FigRCLCreateConfiguration

void __rcl_FigRCLCreateConfiguration_dispatcher_block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (qword_1ED4CB6F0 != -1)
  {
    OUTLINED_FUNCTION_1_158(&qword_1ED4CB6F0);
  }

  v2 = qword_1ED4CB6F8;
  if (qword_1ED4CB6F8 && !*(qword_1ED4CB6F8 + 8))
  {
    if (v1 && *v1 && *(v1 + 8))
    {
      v3 = *MEMORY[0x1E695E480];
      v4 = CFURLCreateWithString(*MEMORY[0x1E695E480], *v1, 0);
      if (!v4)
      {
        return;
      }

      v5 = v4;
      v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10A0040FB48983FuLL);
      if (!v6)
      {
LABEL_13:
        CFRelease(v5);
        return;
      }

      v7 = v6;
      v6[2] = v1;
      v8 = *(v2 + 32);
      v9 = *(*(CMBaseObjectGetVTable() + 16) + 8);
      if (v9)
      {
        memset(v30, 0, 112);
        v10 = v9(v8, v3, 0, v5, 0, 0, 0, 4, v30, 0, 0, 0, rcl_HTTPReadCallback, 0, v7 + 3, v7 + 4);
        if (!v10)
        {
          *v7 = 0;
          v11 = *(v2 + 16);
          v7[1] = v11;
          *v11 = v7;
          *(v2 + 16) = v7;
          goto LABEL_13;
        }

        v12 = v10;
      }

      else
      {
        v12 = -12782;
      }

      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v14 = os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      if (OUTLINED_FUNCTION_115_1(v14))
      {
        v15 = *v1;
        v24 = 136315650;
        v25 = "rcl_IssueFigHTTPRequest";
        v26 = 2112;
        v27 = v15;
        v28 = 1024;
        v29 = v12;
        LODWORD(v23) = 28;
        OUTLINED_FUNCTION_36();
        _os_log_send_and_compose_impl(v16, v17, v18, v19, v20, v21, 0, v22, &v24, v23);
      }

      OUTLINED_FUNCTION_16();
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      CFRelease(v5);
    }

    else
    {
      v7 = 0;
    }

    rcl_ReleaseConnectionData(v7);
  }
}

@end