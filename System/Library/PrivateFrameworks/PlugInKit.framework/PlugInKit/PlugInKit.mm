uint64_t sub_1C68931D0()
{
  qword_1ED6EF068 = objc_alloc_init(PKHost);

  return MEMORY[0x1EEE66BB8]();
}

id pklog_handle_for_category(int a1)
{
  if (qword_1ED6EF118 != -1)
  {
    v4 = a1;
    sub_1C689370C();
    a1 = v4;
  }

  v2 = qword_1ED6EF098[a1];

  return v2;
}

uint64_t sub_1C68933DC()
{
  v0 = os_log_create("com.apple.PlugInKit", "unspecified");
  v1 = qword_1ED6EF098[0];
  qword_1ED6EF098[0] = v0;

  v2 = os_log_create("com.apple.PlugInKit", "xpc");
  v3 = qword_1ED6EF0A0;
  qword_1ED6EF0A0 = v2;

  v4 = os_log_create("com.apple.PlugInKit", "nsextension");
  v5 = qword_1ED6EF0A8;
  qword_1ED6EF0A8 = v4;

  v6 = os_log_create("com.apple.PlugInKit", "ls");
  v7 = qword_1ED6EF0B0;
  qword_1ED6EF0B0 = v6;

  v8 = os_log_create("com.apple.PlugInKit", "sandbox");
  v9 = qword_1ED6EF0B8;
  qword_1ED6EF0B8 = v8;

  v10 = os_log_create("com.apple.PlugInKit", "assertions");
  v11 = qword_1ED6EF0C0;
  qword_1ED6EF0C0 = v10;

  v12 = os_log_create("com.apple.PlugInKit", "discovery");
  v13 = qword_1ED6EF0C8;
  qword_1ED6EF0C8 = v12;

  v14 = os_log_create("com.apple.PlugInKit", "lifecycle");
  v15 = qword_1ED6EF0D0;
  qword_1ED6EF0D0 = v14;

  v16 = os_log_create("com.apple.PlugInKit", "subsystems");
  v17 = qword_1ED6EF0D8;
  qword_1ED6EF0D8 = v16;

  v18 = os_log_create("com.apple.PlugInKit", "cache");
  v19 = qword_1ED6EF0E0;
  qword_1ED6EF0E0 = v18;

  v20 = os_log_create("com.apple.PlugInKit", "annotations");
  v21 = qword_1ED6EF0E8;
  qword_1ED6EF0E8 = v20;

  v22 = os_log_create("com.apple.PlugInKit", "holds");
  v23 = qword_1ED6EF0F0;
  qword_1ED6EF0F0 = v22;

  v24 = os_log_create("com.apple.PlugInKit", "manager");
  v25 = qword_1ED6EF0F8;
  qword_1ED6EF0F8 = v24;

  v26 = os_log_create("com.apple.PlugInKit", "persona");
  v27 = qword_1ED6EF100;
  qword_1ED6EF100 = v26;

  v28 = os_log_create("com.apple.PlugInKit", "capture");
  v29 = qword_1ED6EF108;
  qword_1ED6EF108 = v28;

  qword_1ED6EF110 = os_log_create("com.apple.PlugInKit", "api_misuse");

  return MEMORY[0x1EEE66BB8]();
}

uint64_t PKGetThreadPriority()
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  *thread_info_out = 0u;
  thread_info_outCnt = 28;
  v0 = MEMORY[0x1C695FEB0]();
  if (thread_info(v0, 5u, thread_info_out, &thread_info_outCnt))
  {
    v1 = 4294966296;
  }

  else
  {
    v1 = DWORD1(v6);
  }

  mach_port_deallocate(*MEMORY[0x1E69E9A60], v0);
  return v1;
}

uint64_t sub_1C6893694(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1C68936A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1C68936B4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1C68936C4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_1C68936D4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

BOOL sub_1C68939B0(int *out_token, dispatch_queue_t queue, notify_handler_t handler)
{
  v3 = notify_register_dispatch(qword_1EC1D16E0, out_token, queue, handler);
  if (v3)
  {
    v4 = pklog_handle_for_category(10);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5880();
    }
  }

  return v3 == 0;
}

void sub_1C6893CE0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

uint64_t sub_1C6893D88()
{
  qword_1ED6EF058 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

id pkIssueSandboxExtensionForMachService(void *a1, __int128 *a2)
{
  v3 = a1;
  [v3 UTF8String];
  v9 = *a2;
  v10 = a2[1];
  v4 = sandbox_extension_issue_mach_to_process();
  if (v4)
  {
    v5 = v4;
    v6 = pklog_handle_for_category(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1C6895324(v3);
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v5, v9, v10}];
    free(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id pkIssueSandboxExtensionForURL(void *a1, __int128 *a2)
{
  v3 = a1;
  [v3 fileSystemRepresentation];
  v9 = *a2;
  v10 = a2[1];
  v4 = sandbox_extension_issue_file_to_process();
  if (v4)
  {
    v5 = v4;
    v6 = pklog_handle_for_category(4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1C6895180(v3);
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v5, v9, v10}];
    free(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1C6894FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C6894FFC(uint64_t a1)
{
  v3 = [*(a1 + 32) annotations];
  v2 = [v3 objectForKeyedSubscript:@"election"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 integerValue];
}

uint64_t pklog_get_persona_type_and_name(uint64_t result, uint64_t a2, const char **a3, const char **a4)
{
  v6 = "<unknown>";
  v7 = "NOPERSONA";
  if (result != -1 && a2)
  {
    result = kpersona_info();
    if ((result & 0x80000000) != 0)
    {
      v6 = "<unknown>";
      v7 = "NOPERSONA";
    }

    else
    {
      v9 = *(a2 + 8) - 2;
      if (v9 > 4)
      {
        v7 = "<unknown>";
      }

      else
      {
        v7 = off_1E827FAB0[v9];
      }

      v6 = (a2 + 88);
    }
  }

  if (a3)
  {
    *a3 = v7;
  }

  if (a4)
  {
    *a4 = v6;
  }

  return result;
}

void sub_1C6895180(void *a1)
{
  v1 = [a1 path];
  [v1 UTF8String];
  sub_1C68952AC();
  sub_1C6895224(&dword_1C6892000, v2, v3, "issued file extension for [%s]", v4, v5, v6, v7);
}

void sub_1C6895224(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_1C689528C(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C6895324(void *a1)
{
  [a1 UTF8String];
  sub_1C68952AC();
  sub_1C6895224(&dword_1C6892000, v1, v2, "issued mach extension for [%s]", v3, v4, v5, v6);
}

void sub_1C68954F8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void sub_1C6895550(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1C689556C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C689570C(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void sub_1C689585C(void *a1)
{
  [a1 handle];
  sub_1C689558C();
  sub_1C689572C();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

void sub_1C6895910(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x34u);
}

void sub_1C6895964(void *a1)
{
  [a1 handle];
  sub_1C689558C();
  sub_1C689572C();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
}

id sub_1C6895D90(void *a1, void *a2)
{
  v38[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sub_1C68960F0(v3, a2);
LABEL_33:
    v4 = v4;
    v25 = v4;
    goto LABEL_34;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v4 = 0;
    goto LABEL_33;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v7 = *v32;
    v8 = @"__XX_COMPOUND";
    do
    {
      v9 = 0;
      if (v6 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v6;
      }

      v11 = v8;
      do
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v8 = [(__CFString *)v11 stringByAppendingFormat:@"__%@", *(*(&v31 + 1) + 8 * v9)];

        ++v9;
        v11 = v8;
      }

      while (v10 != v9);
      v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = @"__XX_COMPOUND";
  }

  v12 = objc_allocateProtocol([(__CFString *)v8 UTF8String]);
  if (v12)
  {
    v4 = v12;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v14)
    {
      v15 = *v28;
      while (2)
      {
        v16 = 0;
        if (v14 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v14;
        }

        do
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = sub_1C68960F0(*(*(&v27 + 1) + 8 * v16), a2);
          if (!v18)
          {

            v19 = 0;
            goto LABEL_32;
          }

          protocol_addProtocol(v4, v18);

          ++v16;
        }

        while (v17 != v16);
        v14 = [v13 countByEnumeratingWithState:&v27 objects:v35 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    objc_registerProtocol(v4);
    v19 = 1;
  }

  else
  {
    v20 = objc_getProtocol([(__CFString *)v8 UTF8String]);
    v4 = v20;
    v19 = 1;
    if (a2 && !v20)
    {
      v21 = MEMORY[0x1E696ABC0];
      v37 = *MEMORY[0x1E696A578];
      v38[0] = @"unable to create compound protocol";
      v19 = 1;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v23 = [v21 errorWithDomain:@"PlugInKit" code:12 userInfo:v22];

      v24 = v23;
      v4 = 0;
      *a2 = v23;
    }
  }

LABEL_32:

  if (v19)
  {
    goto LABEL_33;
  }

  v25 = 0;
LABEL_34:

  return v25;
}

id sub_1C68960F0(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_getProtocol([v3 UTF8String]);
  if (!v4)
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"unable to locate protocol [%@] - check that it is defined and not inadvertently optimized away", v3];
    v6 = pklog_handle_for_category(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5938();

      if (!a2)
      {
        goto LABEL_5;
      }
    }

    else
    {

      if (!a2)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    *a2 = pkError(12, v5);
    goto LABEL_5;
  }

LABEL_6:

  return v4;
}

void sub_1C6896BE8()
{
  v6[2] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v6[0] = @"NSExtension";
  v6[1] = @"CleanTimeout";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];
  v5[0] = @"NSExtension";
  v5[1] = @"NSExtensionSandboxProfile";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:2];
  v3 = [v0 setWithObjects:{v1, v2, 0}];
  v4 = qword_1ED6EF080;
  qword_1ED6EF080 = v3;
}

void sub_1C6897398()
{
  v0 = NSClassFromString(&cfstr_Expkservice.isa);
  if (_os_feature_enabled_impl())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = objc_alloc_init(PKService);
  }

  else
  {
    v3 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "Bootstrapping; Using EXPKService", v6, 2u);
    }

    v2 = [(objc_class *)v0 defaultService];
  }

  v5 = qword_1ED6EF078;
  qword_1ED6EF078 = v2;
}

id __PLUGINKIT_CALLING_OUT_TO_CLIENT_SUBSYSTEM_FOR_INIT__(void *a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [a1 initForPlugInKitWithOptions:v3];
  }

  else
  {
    [a1 initForPlugInKit];
  }
  v4 = ;

  return v4;
}

id pkErrorf(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v10 = a2;
  if (v10)
  {
    v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v10 arguments:&a9];
    v12 = MEMORY[0x1E696ABC0];
    v16 = *MEMORY[0x1E696A578];
    v17[0] = v11;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v14 = [v12 errorWithDomain:@"PlugInKit" code:a1 userInfo:v13];
  }

  else
  {
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"PlugInKit" code:a1 userInfo:0];
  }

  return v14;
}

void sub_1C68984F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696AD98] numberWithInteger:*(a1 + 40)];
  [v1 setAnnotation:@"election" value:v2];
}

void sub_1C6898680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C6898698(uint64_t a1)
{
  v5 = [*(a1 + 32) annotations];
  v2 = [v5 objectForKeyedSubscript:@"extension"];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1C6898C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C6898C30(uint64_t a1)
{
  v5 = [*(a1 + 32) sourceForm];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1C6898F68(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = pklog_handle_for_category(7);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7[0] = 67240192;
    v7[1] = v3 == 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v5, OS_SIGNPOST_INTERVAL_END, v6, "HostBeginUsing", " success=%{public, signpost.description:attribute}d ", v7, 8u);
  }

  __PLUGINKIT_HANDING_CONTROL_TO_CLIENT__(v3, *(a1 + 32));
}

void sub_1C68993A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1C68993C8(void *a1)
{
  v2 = a1[4];
  v1 = a1[5];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1C689943C;
  v5[3] = &unk_1E827F240;
  v3 = a1[6];
  v5[4] = a1[7];
  return [v2 startPlugInRequest:v1 synchronously:1 subsystemOptions:v3 completion:v5];
}

void sub_1C689A2F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, id a49, id location, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  objc_destroyWeak(&a49);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a65, 8);
  _Unwind_Resume(a1);
}

void sub_1C689A380(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) state];
  if (v2 <= 2)
  {
    if (v2 == 1)
    {
      v9 = [*(a1 + 32) isData];
      v10 = v9;
      if (v9)
      {
        v11 = 0;
      }

      else
      {
        v9 = [*(a1 + 32) plugInPrincipal];
        v11 = v9 == 0;
      }

      if (v11)
      {
        sub_1C68B3EF0();
      }

      if ((v10 & 1) == 0)
      {
      }

      [*(a1 + 32) setUseCount:{objc_msgSend(*(a1 + 32), "useCount") + 1}];
      v13 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [*(a1 + 32) uuid];
        v15 = [*(a1 + 32) multipleInstanceUUID];
        v16 = [*(a1 + 32) identifier];
        v17 = [*(a1 + 32) version];
        v18 = [*(a1 + 32) useCount];
        v19 = 138544386;
        v20 = v14;
        v21 = 2114;
        v22 = v15;
        v23 = 2112;
        v24 = v16;
        v25 = 2112;
        v26 = v17;
        v27 = 1024;
        v28 = v18;
        _os_log_impl(&dword_1C6892000, v13, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] plugin reference count incremented to %d, and ready for host.", &v19, 0x30u);
      }

      [*(a1 + 32) addRequestUUID:*(a1 + 40)];
      (*(*(a1 + 48) + 16))();
      goto LABEL_25;
    }

    if (v2 != 2)
    {
      return;
    }

    v3 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B3E2C();
    }

    v4 = *(a1 + 48);
    v5 = @"plugin has died and must be rediscovered";
    v6 = 5;
LABEL_12:
    v8 = pkError(v6, v5);
    (*(v4 + 16))(v4, v8);

LABEL_25:
    *(*(*(a1 + 56) + 8) + 24) = 1;
    return;
  }

  if (v2 != 3)
  {
    if (v2 != 4)
    {
      return;
    }

    v7 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B3D68();
    }

    v4 = *(a1 + 48);
    v5 = @"plugin is spent and cannot be used anymore";
    v6 = 17;
    goto LABEL_12;
  }

  v12 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B3CA4();
  }
}

void sub_1C689A64C(uint64_t a1, void *a2, int a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    if (v5)
    {
      if (!a3)
      {
LABEL_5:
        v7 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          sub_1C68B3F1C();
        }

        v8 = [WeakRetained _startQueue];
        dispatch_resume(v8);

        (*(*(a1 + 40) + 16))();
        goto LABEL_11;
      }
    }

    else
    {
      v17 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [WeakRetained uuid];
        v19 = [WeakRetained multipleInstanceUUID];
        v20 = [WeakRetained identifier];
        v21 = [WeakRetained version];
        v22 = 138544130;
        v23 = v18;
        v24 = 2114;
        v25 = v19;
        v26 = 2112;
        v27 = v20;
        v28 = 2112;
        v29 = v21;
        _os_log_impl(&dword_1C6892000, v17, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] plugin loaded and ready for host", &v22, 0x2Au);
      }

      if (!a3)
      {
        goto LABEL_5;
      }
    }

    [*(a1 + 32) deactivatePlugIn:WeakRetained];
    goto LABEL_5;
  }

  v9 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B3FD8(v9);
  }

LABEL_11:
  if (*(*(*(a1 + 48) + 8) + 40))
  {
    v10 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [WeakRetained uuid];
      v12 = [WeakRetained multipleInstanceUUID];
      v13 = [WeakRetained identifier];
      v14 = [WeakRetained version];
      v22 = 138544130;
      v23 = v11;
      v24 = 2114;
      v25 = v12;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_1C6892000, v10, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] invalidating startup assertion", &v22, 0x2Au);
    }

    [*(*(*(a1 + 48) + 8) + 40) invalidate];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;
  }
}

void sub_1C689A954(uint64_t a1, void *a2, void *a3, void *a4)
{
  v167[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = pklog_handle_for_category(7);
  v11 = v10;
  v12 = *(a1 + 88);
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v11, OS_SIGNPOST_INTERVAL_END, v12, "HostToDaemonReadyPlugIns", &unk_1C68BDED5, buf, 2u);
  }

  if (!v7)
  {
    v106 = [v8 objectAtIndexedSubscript:0];
    v14 = [v9 count];
    if (v14)
    {
      v15 = [v9 objectAtIndexedSubscript:0];
    }

    else
    {
      v15 = 0;
    }

    v107 = v15;
    if (v14)
    {
    }

    v16 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [*(a1 + 32) uuid];
      v18 = [*(a1 + 32) multipleInstanceUUID];
      v19 = [*(a1 + 32) identifier];
      v20 = [*(a1 + 32) version];
      *buf = 138544386;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      *&buf[22] = 2112;
      *&buf[24] = v19;
      LOWORD(v149[0]) = 2112;
      *(v149 + 2) = v20;
      WORD5(v149[0]) = 2112;
      *(v149 + 12) = v106;
      _os_log_impl(&dword_1C6892000, v16, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] got pid from ready request: %@", buf, 0x34u);
    }

    if (v107)
    {
      v21 = [*(a1 + 32) uuid];
      v22 = [v21 isEqual:v107] ^ 1;
    }

    else
    {
      v22 = 0;
    }

    if (v22)
    {
      v23 = [*(a1 + 40) discoveryMap];
      v24 = [v23 objectForKey:v107];

      if (v24)
      {
        v25 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
        {
          sub_1C68B40E8();
        }
      }

      v26 = pklog_handle_for_category(15);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        sub_1C68B41B4();
      }
    }

    if (!v106 || !objc_opt_class())
    {
      goto LABEL_69;
    }

    v27 = [v106 intValue];
    v28 = [*(a1 + 32) external];
    v29 = [v28 runningboard];
    v30 = [v29 processAssertionWithPID:v27 flags:7 reason:9 name:@"com.apple.extension.session"];
    v31 = *(*(a1 + 80) + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v128[0] = MEMORY[0x1E69E9820];
    v128[1] = 3221225472;
    v128[2] = sub_1C689BABC;
    v128[3] = &unk_1E827F1A0;
    v128[4] = *(a1 + 32);
    v129 = *(a1 + 48);
    [*(*(*(a1 + 80) + 8) + 40) setInvalidationHandler:v128];
    LOBYTE(v27) = [*(*(*(a1 + 80) + 8) + 40) acquire];
    v33 = pklog_handle_for_category(7);
    v34 = v33;
    if ((v27 & 1) == 0)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B4288();
      }

      [*(*(*(a1 + 80) + 8) + 40) invalidate];
      v57 = *(*(a1 + 80) + 8);
      v58 = *(v57 + 40);
      *(v57 + 40) = 0;

      v59 = pkError(4, @"could not acquire startup assertion");
      (*(*(a1 + 72) + 16))();

      goto LABEL_71;
    }

    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [*(a1 + 32) uuid];
      v36 = [*(a1 + 32) multipleInstanceUUID];
      v37 = [*(a1 + 32) identifier];
      v38 = [*(a1 + 32) version];
      *buf = 138544130;
      *&buf[4] = v35;
      *&buf[12] = 2114;
      *&buf[14] = v36;
      *&buf[22] = 2112;
      *&buf[24] = v37;
      LOWORD(v149[0]) = 2112;
      *(v149 + 2) = v38;
      _os_log_impl(&dword_1C6892000, v34, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] acquired startup assertion", buf, 0x2Au);
    }

    v39 = pklog_handle_for_category(7);
    v40 = os_signpost_id_make_with_pointer(v39, *(a1 + 32));

    v41 = pklog_handle_for_category(7);
    v42 = v41;
    if (v40 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v41))
    {
      v43 = [*(a1 + 32) identifier];
      v44 = [*(a1 + 32) uuid];
      *buf = 138478083;
      *&buf[4] = v43;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v42, OS_SIGNPOST_INTERVAL_BEGIN, v40, "HostRBExtensionCheck", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@ ", buf, 0x16u);
    }

    v45 = [*(a1 + 32) external];
    v46 = [v45 runningboard];
    v47 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v106, "intValue")}];
    v127 = 0;
    v48 = [v46 taskStatesForPID:v47 error:&v127];
    v49 = v127;

    v50 = pklog_handle_for_category(7);
    v51 = v50;
    if (v40 - 1 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v50))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_1C6892000, v51, OS_SIGNPOST_INTERVAL_END, v40, "HostRBExtensionCheck", &unk_1C68BDED5, buf, 2u);
    }

    if (v48)
    {
      v52 = [v48 count];
      if (v52)
      {
        if (v52 != 1)
        {
          v56 = pklog_handle_for_category(7);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
          {
            sub_1C68B45AC();
          }

          goto LABEL_62;
        }

        v53 = [v48 objectAtIndexedSubscript:0];
        v54 = [v53 isRunning];

        v55 = pklog_handle_for_category(7);
        v56 = v55;
        if (v54)
        {
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEBUG))
          {
            sub_1C68B44E0();
          }

LABEL_62:
          v62 = 0;
          goto LABEL_63;
        }

        if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
        {
          sub_1C68B4418();
        }
      }

      else
      {
        v56 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_1C68B4350();
        }
      }

LABEL_59:
      v62 = 1;
LABEL_63:

      goto LABEL_64;
    }

    if (!v49)
    {
      v62 = 0;
LABEL_64:
      if (v62)
      {
        v64 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          sub_1C68B4810();
        }

        [*(*(*(a1 + 80) + 8) + 40) invalidate];
        v65 = *(*(a1 + 80) + 8);
        v66 = *(v65 + 40);
        *(v65 + 40) = 0;

        v67 = pkError(4, @"Extension process exited while/after acquiring startup assertion");
        (*(*(a1 + 72) + 16))();

        goto LABEL_71;
      }

LABEL_69:
      if (![*(a1 + 32) isData])
      {
        v71 = [*(a1 + 32) serviceExtension];

        if (v71)
        {
          v72 = *(a1 + 32);
          v73 = [v72 serviceExtension];
          v167[0] = v73;
          v74 = [MEMORY[0x1E695DEC8] arrayWithObjects:v167 count:1];
          v123 = 0;
          LOBYTE(v72) = [v72 loadExtensions:v74 error:&v123];
          v7 = v123;

          if ((v72 & 1) == 0)
          {
            v75 = pklog_handle_for_category(7);
            if (os_log_type_enabled(v75, OS_LOG_TYPE_ERROR))
            {
              sub_1C68B48D8();
            }

            (*(*(a1 + 72) + 16))();
            goto LABEL_89;
          }
        }

        else
        {
          v7 = 0;
        }

        [*(a1 + 48) setDelegate:*(a1 + 32)];
        v76 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F4647D88];
        [*(a1 + 48) setRemoteObjectInterface:v76];

        [*(a1 + 48) setExportedObject:*(a1 + 40)];
        v77 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F464CEA8];
        [*(a1 + 48) setExportedInterface:v77];

        objc_initWeak(&location, *(a1 + 32));
        v119[0] = MEMORY[0x1E69E9820];
        v119[1] = 3221225472;
        v119[2] = sub_1C689BC8C;
        v119[3] = &unk_1E827F308;
        objc_copyWeak(&v121, &location);
        v120 = *(a1 + 72);
        v105 = MEMORY[0x1C6960190](v119);
        v78 = [*(a1 + 48) synchronousRemoteObjectProxyWithErrorHandler:v105];
        [*(a1 + 32) setSyncService:v78];

        v79 = [*(a1 + 32) syncService];
        [v79 set_userInfo:&unk_1F46431B0];

        v80 = [*(a1 + 48) remoteObjectProxyWithErrorHandler:v105];
        [*(a1 + 32) setService:v80];

        v81 = *(a1 + 32);
        if (*(a1 + 96) == 1)
        {
          [v81 syncService];
        }

        else
        {
          [v81 service];
        }
        v82 = ;
        v104 = v82;

        v117[0] = MEMORY[0x1E69E9820];
        v117[1] = 3221225472;
        v117[2] = sub_1C689BD1C;
        v117[3] = &unk_1E827F358;
        objc_copyWeak(&v118, &location);
        [*(a1 + 48) setInterruptionHandler:v117];
        v115[0] = MEMORY[0x1E69E9820];
        v115[1] = 3221225472;
        v115[2] = sub_1C689C090;
        v115[3] = &unk_1E827F358;
        objc_copyWeak(&v116, &location);
        [*(a1 + 48) setInvalidationHandler:v115];
        v83 = [*(a1 + 32) multipleInstanceUUID];

        if (v83)
        {
          *buf = 0;
          *&buf[8] = 0;
          v84 = [*(a1 + 32) multipleInstanceUUID];
          [v84 getUUIDBytes:buf];

          v85 = [*(a1 + 32) pluginConnection];
          v86 = [v85 _xpcConnection];
          xpc_connection_set_oneshot_instance();
        }

        [*(a1 + 32) resume];
        v103 = v8;
        v165 = 0u;
        memset(v166, 0, sizeof(v166));
        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v159 = 0u;
        v160 = 0u;
        v157 = 0u;
        v158 = 0u;
        v155 = 0u;
        v156 = 0u;
        v153 = 0u;
        v154 = 0u;
        v151 = 0u;
        v152 = 0u;
        v150 = 0u;
        memset(v149, 0, sizeof(v149));
        memset(buf, 0, sizeof(buf));
        v113 = 0;
        v114 = 0;
        current_persona = voucher_get_current_persona();
        v88 = current_persona;
        memset(buf, 0, sizeof(buf));
        memset(v149, 0, sizeof(v149));
        v150 = 0u;
        v151 = 0u;
        v152 = 0u;
        v153 = 0u;
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        v159 = 0u;
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        v165 = 0u;
        memset(v166, 0, sizeof(v166));
        *buf = 1;
        pklog_get_persona_type_and_name(current_persona, buf, &v114, &v113);
        v89 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          v90 = [*(a1 + 32) uuid];
          v91 = [*(a1 + 32) multipleInstanceUUID];
          v92 = [*(a1 + 32) identifier];
          v93 = [*(a1 + 32) version];
          v94 = geteuid();
          v95 = getuid();
          *v130 = 138545410;
          v131 = v90;
          v132 = 2114;
          v133 = v91;
          v134 = 2112;
          v135 = v92;
          v136 = 2112;
          v137 = v93;
          v138 = 1024;
          v139 = v94;
          v140 = 1024;
          v141 = v95;
          v142 = 1024;
          v143 = v88;
          v144 = 2080;
          v145 = v114;
          v146 = 2080;
          v147 = v113;
          _os_log_impl(&dword_1C6892000, v89, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] Prepare using sent as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", v130, 0x50u);
        }

        v8 = v103;
        v96 = pklog_handle_for_category(7);
        v97 = v96;
        v98 = *(a1 + 88);
        if (v98 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v96))
        {
          v99 = [*(a1 + 32) identifier];
          v100 = [*(a1 + 32) uuid];
          *buf = 138478083;
          *&buf[4] = v99;
          *&buf[12] = 2114;
          *&buf[14] = v100;
          _os_signpost_emit_with_name_impl(&dword_1C6892000, v97, OS_SIGNPOST_INTERVAL_BEGIN, v98, "HostToExtensionPrepareUsing", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@ ", buf, 0x16u);
        }

        v101 = *(a1 + 32);
        v108[0] = MEMORY[0x1E69E9820];
        v108[1] = 3221225472;
        v108[2] = sub_1C689C2FC;
        v108[3] = &unk_1E827F3A8;
        v112[1] = *(a1 + 88);
        v108[4] = v101;
        v111 = *(a1 + 72);
        v102 = v104;
        v109 = v102;
        objc_copyWeak(v112, &location);
        v110 = *(a1 + 64);
        [v101 preparePlugInUsingService:v102 completion:v108];

        objc_destroyWeak(v112);
        objc_destroyWeak(&v116);
        objc_destroyWeak(&v118);

        objc_destroyWeak(&v121);
        objc_destroyWeak(&location);
        goto LABEL_89;
      }

      v68 = *(a1 + 56);
      v69 = *(a1 + 96);
      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v124[2] = sub_1C689BB14;
      v124[3] = &unk_1E827F2E0;
      v70 = *(a1 + 40);
      v124[4] = *(a1 + 32);
      v126 = *(a1 + 72);
      v125 = *(a1 + 64);
      [v70 accessPlugIns:v68 synchronously:v69 flags:0 extensions:v124];

LABEL_71:
      v7 = 0;
LABEL_89:

      goto LABEL_90;
    }

    v60 = [v49 domain];
    v61 = v60;
    if (v60 == *MEMORY[0x1E69C76A8])
    {
      v63 = [v49 code] == 1;

      if (v63)
      {
        v56 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          sub_1C68B4748();
        }

        goto LABEL_59;
      }
    }

    else
    {
    }

    v56 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B467C();
    }

    goto LABEL_62;
  }

  v13 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B401C();
  }

  (*(*(a1 + 72) + 16))();
LABEL_90:
}

void sub_1C689BA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, id location)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a36);
  objc_destroyWeak(&a42);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t sub_1C689BABC(uint64_t a1)
{
  v2 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B49A0();
  }

  return [*(a1 + 40) invalidate];
}

void sub_1C689BB14(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v11 = 0;
  v4 = [v3 loadExtensions:a2 error:&v11];
  v5 = v11;
  if (v4)
  {
    v6 = [*(a1 + 32) _syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C689BC3C;
    block[3] = &unk_1E827F1A0;
    v7 = *(a1 + 40);
    block[4] = *(a1 + 32);
    v10 = v7;
    dispatch_sync(v6, block);

    v8 = [MEMORY[0x1E695DF00] date];
    [*(a1 + 32) setBeganUsingAt:v8];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

uint64_t sub_1C689BC3C(uint64_t a1)
{
  [*(a1 + 32) addRequestUUID:*(a1 + 40)];
  [*(a1 + 32) changeState:1];
  v2 = *(a1 + 32);

  return [v2 setUseCount:1];
}

void sub_1C689BC8C(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B4A68();
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1C689BD1C(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v17[0] = 0;
    v17[1] = v17;
    v17[2] = 0x3032000000;
    v17[3] = sub_1C6893694;
    v17[4] = sub_1C689454C;
    v18 = [WeakRetained service];
    v3 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v6 = [v2 uuid];
      v7 = [v2 multipleInstanceUUID];
      v8 = [v2 identifier];
      v9 = [v2 version];
      *buf = 138544130;
      v20 = v6;
      v21 = 2114;
      v22 = v7;
      v23 = 2112;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      _os_log_debug_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEBUG, "[u %{public}@:m %{public}@] [%@(%@)] interrupted", buf, 0x2Au);
    }

    if (([v2 terminating] & 1) == 0)
    {
      v4 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v10 = [v2 uuid];
        v11 = [v2 multipleInstanceUUID];
        v12 = [v2 identifier];
        v13 = [v2 version];
        *buf = 138544130;
        v20 = v10;
        v21 = 2114;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        _os_log_error_impl(&dword_1C6892000, v4, OS_LOG_TYPE_ERROR, "[u %{public}@:m %{public}@] [%@(%@)] Connection to plugin interrupted while in use.", buf, 0x2Au);
      }
    }

    v5 = [v2 _syncQueue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = sub_1C689C034;
    v14[3] = &unk_1E827F330;
    v15 = v2;
    v16 = v17;
    dispatch_async(v5, v14);

    _Block_object_dispose(v17, 8);
  }
}

void sub_1C689C008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C689C034(uint64_t a1)
{
  if ([*(a1 + 32) state])
  {
    [*(a1 + 32) unwind:2 force:0];
  }

  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;
}

void sub_1C689C090(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      sub_1C68B4B54();
    }

    if (([WeakRetained terminating] & 1) == 0)
    {
      v3 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B4C10();
      }
    }

    v4 = [WeakRetained _syncQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C689C1A0;
    block[3] = &unk_1E827F1C8;
    v6 = WeakRetained;
    dispatch_async(v4, block);
  }
}

void *sub_1C689C1A0(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [*(a1 + 32) multipleInstanceUUID];
    v5 = [*(a1 + 32) identifier];
    v6 = [*(a1 + 32) version];
    v9 = 138544130;
    v10 = v3;
    v11 = 2114;
    v12 = v4;
    v13 = 2112;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_1C6892000, v2, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] Emptying requests set", &v9, 0x2Au);
  }

  v7 = [*(a1 + 32) requests];
  [v7 removeAllObjects];

  result = [*(a1 + 32) state];
  if (result)
  {
    return [*(a1 + 32) unwind:2 force:0];
  }

  return result;
}

void sub_1C689C2FC(uint64_t a1, void *a2, void *a3)
{
  v93 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = pklog_handle_for_category(7);
  v8 = v7;
  v9 = *(a1 + 72);
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v8, OS_SIGNPOST_INTERVAL_END, v9, "HostToExtensionPrepareUsing", &unk_1C68BDED5, buf, 2u);
  }

  if (v5)
  {
    v10 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v37 = [*(a1 + 32) uuid];
      v38 = [*(a1 + 32) multipleInstanceUUID];
      v39 = [*(a1 + 32) identifier];
      v40 = [*(a1 + 32) version];
      *buf = 138544642;
      *&buf[4] = v37;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      *&buf[22] = 2112;
      *&buf[24] = v39;
      LOWORD(v75[0]) = 2112;
      *(v75 + 2) = v40;
      WORD5(v75[0]) = 2114;
      *(v75 + 12) = v5;
      WORD2(v75[1]) = 2114;
      *(&v75[1] + 6) = v6;
      _os_log_error_impl(&dword_1C6892000, v10, OS_LOG_TYPE_ERROR, "[u %{public}@:m %{public}@] [%@(%@)] Failed to start plugin; prepareUsing returned error: %{public}@, response: %{public}@", buf, 0x3Eu);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v11 = *(a1 + 32);
    v12 = [v6 objectForKeyedSubscript:@"sandboxExtensions"];
    v55 = 0;
    v13 = [v11 loadExtensions:v12 error:&v55];
    v5 = v55;

    if (v13)
    {
      v14 = [*(a1 + 32) protocolSpec];
      v54 = v5;
      v15 = sub_1C6895D90(v14, &v54);
      v16 = v54;

      if (v15)
      {
        v17 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v15];
        v18 = [*(a1 + 32) pluginConnection];
        v19 = [v18 remoteObjectInterface];
        [v19 setInterface:v17 forSelector:sel_beginUsingPlugIn_ready_ argumentIndex:1 ofReply:1];

        v20 = [*(a1 + 32) augmentInterface:v17];

        if (v20)
        {
          v21 = pklog_handle_for_category(7);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            sub_1C68B4CC8();
          }

          (*(*(a1 + 56) + 16))();
        }

        else
        {
          v91 = 0u;
          memset(v92, 0, sizeof(v92));
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v85 = 0u;
          v86 = 0u;
          v83 = 0u;
          v84 = 0u;
          v81 = 0u;
          v82 = 0u;
          v79 = 0u;
          v80 = 0u;
          v77 = 0u;
          v78 = 0u;
          v76 = 0u;
          memset(v75, 0, sizeof(v75));
          memset(buf, 0, sizeof(buf));
          v52 = 0;
          v53 = 0;
          current_persona = voucher_get_current_persona();
          v25 = current_persona;
          memset(buf, 0, sizeof(buf));
          memset(v75, 0, sizeof(v75));
          v76 = 0u;
          v77 = 0u;
          v78 = 0u;
          v79 = 0u;
          v80 = 0u;
          v81 = 0u;
          v82 = 0u;
          v83 = 0u;
          v84 = 0u;
          v85 = 0u;
          v86 = 0u;
          v87 = 0u;
          v88 = 0u;
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          memset(v92, 0, sizeof(v92));
          *buf = 1;
          pklog_get_persona_type_and_name(current_persona, buf, &v53, &v52);
          v26 = pklog_handle_for_category(7);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [*(a1 + 32) uuid];
            v47 = [*(a1 + 32) multipleInstanceUUID];
            v46 = [*(a1 + 32) identifier];
            v27 = [*(a1 + 32) version];
            v28 = geteuid();
            v29 = getuid();
            *v56 = 138545410;
            v57 = v45;
            v58 = 2114;
            v59 = v47;
            v60 = 2112;
            v61 = v46;
            v62 = 2112;
            v63 = v27;
            v64 = 1024;
            v65 = v28;
            v66 = 1024;
            v67 = v29;
            v68 = 1024;
            v69 = v25;
            v70 = 2080;
            v71 = v53;
            v72 = 2080;
            v73 = v52;
            _os_log_impl(&dword_1C6892000, v26, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] Begin using sent as euid = %d, uid = %d, personaid = %d, type = %s, name = %s", v56, 0x50u);
          }

          v30 = pklog_handle_for_category(7);
          v31 = v30;
          v32 = *(a1 + 72);
          if (v32 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v30))
          {
            v33 = [*(a1 + 32) identifier];
            v34 = [*(a1 + 32) uuid];
            *buf = 138478083;
            *&buf[4] = v33;
            *&buf[12] = 2114;
            *&buf[14] = v34;
            _os_signpost_emit_with_name_impl(&dword_1C6892000, v31, OS_SIGNPOST_INTERVAL_BEGIN, v32, "HostToExtensionBeginUsing", " identifier=%{private, signpost.description:attribute}@  uuid=%{public, signpost.description:attribute}@ ", buf, 0x16u);
          }

          v35 = *(a1 + 40);
          v36 = [*(a1 + 32) queuedHostPrincipal];
          v48[0] = MEMORY[0x1E69E9820];
          v48[1] = 3221225472;
          v48[2] = sub_1C689CAA0;
          v48[3] = &unk_1E827F380;
          v51[1] = *(a1 + 72);
          objc_copyWeak(v51, (a1 + 64));
          v50 = *(a1 + 56);
          v49 = *(a1 + 48);
          [v35 beginUsingPlugIn:v36 ready:v48];

          objc_destroyWeak(v51);
        }

        v16 = v20;
      }

      else
      {
        v23 = pklog_handle_for_category(7);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          sub_1C68B4D90();
        }

        (*(*(a1 + 56) + 16))();
      }

      v5 = v16;
    }

    else
    {
      v22 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v41 = [*(a1 + 32) uuid];
        v42 = [*(a1 + 32) multipleInstanceUUID];
        v43 = [*(a1 + 32) identifier];
        v44 = [*(a1 + 32) version];
        *buf = 138544642;
        *&buf[4] = v41;
        *&buf[12] = 2114;
        *&buf[14] = v42;
        *&buf[22] = 2112;
        *&buf[24] = v43;
        LOWORD(v75[0]) = 2112;
        *(v75 + 2) = v44;
        WORD5(v75[0]) = 2114;
        *(v75 + 12) = v5;
        WORD2(v75[1]) = 2114;
        *(&v75[1] + 6) = v6;
        _os_log_error_impl(&dword_1C6892000, v22, OS_LOG_TYPE_ERROR, "[u %{public}@:m %{public}@] [%@(%@)] Failed to start plugin; could not consume sandbox file extensions: %{public}@, response: %{public}@", buf, 0x3Eu);
      }

      (*(*(a1 + 56) + 16))();
    }
  }
}

void sub_1C689CAA0(uint64_t a1, uint64_t a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = pklog_handle_for_category(7);
  v6 = v5;
  v7 = *(a1 + 56);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v6, OS_SIGNPOST_INTERVAL_END, v7, "HostToExtensionBeginUsing", &unk_1C68BDED5, buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    if (v4)
    {
      v10 = [WeakRetained protocolSpec];
      v11 = [v10 isEqual:@"NSObject"];

      if (v11)
      {
        v12 = [MEMORY[0x1E695DFB0] null];

        v4 = v12;
      }

      [v9 setUseCount:1];
      [v9 setPlugInPrincipal:v4];
      [v9 setEmbeddedPrincipal:0];
      v13 = [v9 _syncQueue];
      v26 = MEMORY[0x1E69E9820];
      v27 = 3221225472;
      v28 = sub_1C689CE3C;
      v29 = &unk_1E827F1A0;
      v14 = v9;
      v30 = v14;
      v31 = *(a1 + 32);
      dispatch_sync(v13, &v26);

      v15 = [MEMORY[0x1E695DF00] date];
      [v14 setBeganUsingAt:v15];

      (*(*(a1 + 40) + 16))();
      v16 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [v14 uuid];
        v18 = [v14 multipleInstanceUUID];
        v19 = [v14 identifier];
        v20 = [v14 version];
        *buf = 138544130;
        v33 = v17;
        v34 = 2114;
        v35 = v18;
        v36 = 2112;
        v37 = v19;
        v38 = 2112;
        v39 = v20;
        _os_log_impl(&dword_1C6892000, v16, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] telling plugin that host has control", buf, 0x2Au);
      }

      v21 = [v14 service];
      [v21 hostHasControl];
    }

    else
    {
      v24 = pklog_handle_for_category(7);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B4E80();
      }

      v25 = *(a1 + 40);
      v4 = pkError(5, @"plug-in failed to initialize");
      (*(v25 + 16))(v25, v4, 1);
    }
  }

  else
  {
    v22 = *(a1 + 40);
    v23 = pkError(5, @"plug-in failed to initialize as self was nil");
    (*(v22 + 16))(v22, v23, 1);
  }
}

uint64_t sub_1C689CE3C(uint64_t a1)
{
  [*(a1 + 32) addRequestUUID:*(a1 + 40)];
  v2 = *(a1 + 32);

  return [v2 changeState:1];
}

void sub_1C689D3D8(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"sandboxExtensions"];
  }

  (*(*(a1 + 32) + 16))();
}

uint64_t sub_1C689D7A0()
{
  getpid();
  result = sandbox_check();
  byte_1EC1D1D30 = result != 0;
  return result;
}

void sub_1C689DB44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C689DB5C(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 32))
  {
LABEL_8:
    if ([*(a1 + 40) useCount] <= 1)
    {
      [*(a1 + 40) setTerminating:1];
    }

    [*(a1 + 40) unwind:0 force:0];
    return;
  }

  v2 = [*(a1 + 40) requests];
  v3 = [v2 containsObject:*(a1 + 32)];

  v4 = pklog_handle_for_category(7);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v6 = [*(a1 + 40) uuid];
      v7 = [*(a1 + 40) multipleInstanceUUID];
      v8 = [*(a1 + 40) identifier];
      v9 = [*(a1 + 40) version];
      v10 = *(a1 + 32);
      *buf = 138544386;
      v32 = v6;
      v33 = 2114;
      v34 = v7;
      v35 = 2112;
      v36 = v8;
      v37 = 2112;
      v38 = v9;
      v39 = 2112;
      v40 = v10;
      _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] ending request: %@", buf, 0x34u);
    }

    v11 = [*(a1 + 40) requests];
    [v11 removeObject:*(a1 + 32)];

    v12 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1C68B5018();
    }

    goto LABEL_8;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) uuid];
    v14 = [*(a1 + 40) multipleInstanceUUID];
    v15 = [*(a1 + 40) identifier];
    v16 = [*(a1 + 40) version];
    v17 = *(a1 + 32);
    *buf = 138544386;
    v32 = v13;
    v33 = 2114;
    v34 = v14;
    v35 = 2112;
    v36 = v15;
    v37 = 2112;
    v38 = v16;
    v39 = 2112;
    v40 = v17;
    _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_DEFAULT, "[u %{public}@:m %{public}@] [%@(%@)] ignoring expired end request: [%@]", buf, 0x34u);
  }

  v18 = [*(a1 + 40) uuid];
  v19 = [*(a1 + 40) multipleInstanceUUID];
  v20 = [*(a1 + 40) identifier];
  v30 = [*(a1 + 40) version];
  v27 = pkErrorf(15, @"[u %@:m %@] [%@(%@)] endUsingRequest: called with unknown/expired request [%@]", v21, v22, v23, v24, v25, v26, v18);
  v28 = *(*(a1 + 48) + 8);
  v29 = *(v28 + 40);
  *(v28 + 40) = v27;
}

void sub_1C689DF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C689EF28(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = *(a1 + 32);
  v9.super_class = PKDiscoveryDriver;
  v2 = objc_msgSendSuper2(&v9, sel_init);
  if (v2)
  {
    v3 = +[PKCapabilities frameworkQueueAttr];
    v4 = dispatch_queue_create("discovery driver", v3);
    [v2 setQueue:v4];

    v5 = dispatch_queue_create("discovery sync", v3);
    [v2 setSync:v5];

    [v2 setAttributes:*(a1 + 40)];
    [v2 setFlags:*(a1 + 80)];
    [v2 setReport:*(a1 + 64)];
    [v2 setRelatedActivity:*(a1 + 48)];
    [v2 setHost:*(a1 + 56)];
    v6 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v11 = v2;
      _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> created discovery driver", buf, 0xCu);
    }
  }

  v7 = *(*(a1 + 72) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v2;
}

uint64_t sub_1C689F150(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_1C6892000, v2, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> destroying discovery driver", &v5, 0xCu);
  }

  return [*(a1 + 32) removeWatchers];
}

void sub_1C689F2B8(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) host];
  v3 = [*(a1 + 32) attributes];
  v4 = [*(a1 + 32) flags];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1C689F3DC;
  v5[3] = &unk_1E827F508;
  objc_copyWeak(&v7, &location);
  v6 = *(a1 + 40);
  v8 = *(a1 + 48);
  [v2 discoverPlugInsForAttributes:v3 flags:v4 found:v5];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void sub_1C689F3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C689F3DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained report];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C689F51C;
    block[3] = &unk_1E827F4E0;
    objc_copyWeak(&v16, (a1 + 40));
    v13 = v5;
    v14 = v6;
    v15 = *(a1 + 32);
    v17 = *(a1 + 48);
    dispatch_async(v11, block);

    objc_destroyWeak(&v16);
  }
}

void sub_1C689F51C(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = [WeakRetained report];

  if (v3)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      if ([v4 isEqual:*(a1 + 48)] && (*(a1 + 64) & 1) == 0)
      {
        v11 = pklog_handle_for_category(6);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          v15 = WeakRetained;
          _os_log_impl(&dword_1C6892000, v11, OS_LOG_TYPE_INFO, "<PKDiscoveryDriver:%p> no visible outcome changes", buf, 0xCu);
        }
      }

      else
      {
        [WeakRetained setLastResults:*(a1 + 32)];
        v5 = pklog_handle_for_category(6);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = [*(a1 + 32) count];
          *buf = 134218240;
          v15 = WeakRetained;
          v16 = 1024;
          v17 = v6;
          _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> delivering update to host (%u plugins)", buf, 0x12u);
        }

        v7 = [WeakRetained report];
        v7[2](v7, *(a1 + 32), 0);

        v8 = [WeakRetained sync];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_1C689F77C;
        block[3] = &unk_1E827F358;
        objc_copyWeak(&v13, (a1 + 56));
        dispatch_async(v8, block);

        objc_destroyWeak(&v13);
      }
    }

    else
    {
      v9 = pklog_handle_for_category(6);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1C68B52F4(WeakRetained, a1, v9);
      }

      v10 = [WeakRetained report];
      v10[2](v10, 0, *(a1 + 40));
    }
  }
}

uint64_t sub_1C689F77C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (![WeakRetained annotationNotifyToken])
    {
      [v3 installWatchers];
    }
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C689F8C8(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) count] && objc_msgSend(*(a1 + 40), "count"))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
    v4 = *(a1 + 32);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = sub_1C689FB74;
    v21[3] = &unk_1E827F558;
    v5 = v3;
    v22 = v5;
    [v4 enumerateObjectsUsingBlock:v21];
    v6 = *(a1 + 40);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = sub_1C689FBCC;
    v19 = &unk_1E827F580;
    v7 = v5;
    v20 = v7;
    v8 = [v6 objectsPassingTest:&v16];
    v9 = [v8 count];
    if (v9 == [*(a1 + 40) count] && (*(a1 + 56) & 1) == 0)
    {
      v14 = pklog_handle_for_category(6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = *(a1 + 48);
        *buf = 134217984;
        v24 = v15;
        _os_log_impl(&dword_1C6892000, v14, OS_LOG_TYPE_INFO, "<PKDiscoveryDriver:%p> no relevant uninstalled plugins", buf, 0xCu);
      }
    }

    else
    {
      v10 = [*(a1 + 48) queue];
      dispatch_assert_queue_V2(v10);

      [*(a1 + 48) setLastResults:v8];
      v11 = pklog_handle_for_category(6);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = *(a1 + 48);
        v13 = [v8 count];
        *buf = 134218240;
        v24 = v12;
        v25 = 1024;
        v26 = v13;
        _os_log_impl(&dword_1C6892000, v11, OS_LOG_TYPE_DEFAULT, "<PKDiscoveryDriver:%p> delivering update to host (%u plugins)", buf, 0x12u);
      }

      v14 = [*(a1 + 48) report];
      (*(v14 + 16))(v14, v8, 0);
    }

    objc_autoreleasePoolPop(v2);
  }
}

void sub_1C689FB74(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 pluginUUID];
  [v2 addObject:v3];
}

uint64_t sub_1C689FBCC(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = [a2 effectiveUUID];
  v4 = [*(a1 + 32) containsObject:v3];
  if (v4)
  {
    v5 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_1C6892000, v5, OS_LOG_TYPE_DEFAULT, "removing uninstalled plugin %@", &v7, 0xCu);
    }
  }

  return v4 ^ 1u;
}

void sub_1C689FE74(uint64_t a1)
{
  v2 = [*(a1 + 32) lastResults];
  if (v2)
  {
    v3 = *(a1 + 40);

    if (v3)
    {
      v4 = *(a1 + 40);
      v5 = pkError(13, @"query cancelled");
      (*(v4 + 16))(v4, 0, v5);
    }
  }
}

void sub_1C689FF10(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained report];
  v3 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1C6960190](v2);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "Annotations changed, re-performing query for continuous discovery, report block = <%p>.", &v6, 0xCu);
  }

  if (v2)
  {
    v5 = [WeakRetained lastResults];
    [WeakRetained performWithPreviousResults:v5 forceNotify:1];
  }
}

void sub_1C68A0014(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained report];
  v3 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = MEMORY[0x1C6960190](v2);
    v6 = 134217984;
    v7 = v4;
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "ManagedConfiguration effective settings changed, re-performing query for continuous discovery, report block = <%p>.", &v6, 0xCu);
  }

  if (v2)
  {
    v5 = [WeakRetained lastResults];
    [WeakRetained performWithPreviousResults:v5 forceNotify:1];
  }
}

void sub_1C68A0118(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained queue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = sub_1C68A01E8;
    v7[3] = &unk_1E827F490;
    v9 = *(a1 + 32);
    v8 = v3;
    dispatch_async(v6, v7);
  }
}

void sub_1C68A0820(uint64_t a1)
{
  v2 = [*(a1 + 32) wdriver];
  if (v2)
  {
    v5 = v2;
    v3 = [*(a1 + 40) count];
    v4 = [v5 lastResults];
    if (v3)
    {
      [v5 _performWithPreviousResults:v4 forceNotify:0 uninstalledProxies:*(a1 + 40)];
    }

    else
    {
      [v5 performWithPreviousResults:v4 forceNotify:0];
    }

    v2 = v5;
  }
}

void sub_1C68A0B50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) daemon];
  v5 = [v4 errorInReply:v3];

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) daemon];
    v7 = xpc_dictionary_get_value(v3, "matches");
    v8 = [v6 convertFromXPC:v7];

    v9 = objc_alloc(MEMORY[0x1E696AFB0]);
    v10 = [v8 objectForKeyedSubscript:@"uuid"];
    v11 = [v9 initWithUUIDString:v10];

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_1C68936B4;
    v37 = sub_1C689455C;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v12 = [*(a1 + 32) hostQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C68A0E4C;
    block[3] = &unk_1E827F670;
    v13 = *(a1 + 32);
    v27 = &v33;
    block[4] = v13;
    v14 = v11;
    v25 = v14;
    v28 = &v29;
    v15 = v8;
    v26 = v15;
    dispatch_sync(v12, block);

    if (*(v30 + 24) == 1)
    {
      v17 = [v34[5] _syncQueue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1C68A0F58;
      v20[3] = &unk_1E827F698;
      v23 = &v33;
      v18 = v15;
      v19 = *(a1 + 32);
      v21 = v18;
      v22 = v19;
      dispatch_sync(v17, v20);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v34[5], 0, v16);

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }
}

void sub_1C68A0E28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C68A0E4C(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveryMap];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v6 = [[PKHostPlugIn alloc] initWithForm:*(a1 + 48) host:*(a1 + 32)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v11 = [*(a1 + 32) discoveryMap];
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = [v9 uuid];
    [v11 setObject:v9 forKey:v10];
  }
}

void sub_1C68A10DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C68A1100(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

void sub_1C68A1244(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) daemon];
  v5 = [v4 errorInReply:v3];

  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) daemon];
    v7 = xpc_dictionary_get_value(v3, "matches");
    v8 = [v6 convertFromXPC:v7];

    v9 = objc_alloc(MEMORY[0x1E696AFB0]);
    v10 = [v8 objectForKeyedSubscript:@"uuid"];
    v11 = [v9 initWithUUIDString:v10];

    v33 = 0;
    v34 = &v33;
    v35 = 0x3032000000;
    v36 = sub_1C68936B4;
    v37 = sub_1C689455C;
    v38 = 0;
    v29 = 0;
    v30 = &v29;
    v31 = 0x2020000000;
    v32 = 0;
    v12 = [*(a1 + 32) hostQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_1C68A1540;
    block[3] = &unk_1E827F670;
    v13 = *(a1 + 32);
    v27 = &v33;
    block[4] = v13;
    v14 = v11;
    v25 = v14;
    v28 = &v29;
    v15 = v8;
    v26 = v15;
    dispatch_sync(v12, block);

    if (*(v30 + 24) == 1)
    {
      v17 = [v34[5] _syncQueue];
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = sub_1C68A164C;
      v20[3] = &unk_1E827F698;
      v23 = &v33;
      v18 = v15;
      v19 = *(a1 + 32);
      v21 = v18;
      v22 = v19;
      dispatch_sync(v17, v20);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v34[5], 0, v16);

    _Block_object_dispose(&v29, 8);
    _Block_object_dispose(&v33, 8);
  }
}

void sub_1C68A151C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_1C68A1540(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveryMap];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v6 = [[PKHostPlugIn alloc] initWithForm:*(a1 + 48) host:*(a1 + 32)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v11 = [*(a1 + 32) discoveryMap];
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = [v9 uuid];
    [v11 setObject:v9 forKey:v10];
  }
}

void sub_1C68A1780(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 40) rewriteDiscoveryAttributes:*(a1 + 32) flags:*(a1 + 64)];
  v3 = [v2 objectForKeyedSubscript:@"NSExtensionPointName"];
  if (v3)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      v3 = @"multiple";
    }
  }

  v4 = PKGetThreadPriority();
  v5 = *(a1 + 64);
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x2020000000;
  v35[3] = 0;
  v6 = pklog_handle_for_category(6);
  v7 = os_signpost_id_make_with_pointer(v6, *(a1 + 48));

  v8 = pklog_handle_for_category(6);
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v10 = *(a1 + 48);
    *buf = 138478595;
    v37 = v3;
    v38 = 2114;
    v39 = v10;
    v40 = 1026;
    *v41 = (v5 >> 10) & 1;
    *&v41[4] = 1026;
    *&v41[6] = v4;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "HostDiscovery", " identifier=%{private, signpost.description:attribute}@  discoveryUUID=%{public, signpost.description:attribute}@  sync=%{public, signpost.description:attribute}d  priority=%{public, signpost.description:attribute}d ", buf, 0x22u);
  }

  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = sub_1C68A1C48;
  v31[3] = &unk_1E827F710;
  v33 = v35;
  v34 = v7;
  v32 = *(a1 + 56);
  v11 = MEMORY[0x1C6960190](v31);
  v12 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v13 = *(a1 + 48);
    v15 = *(a1 + 64);
    *buf = 138413058;
    v37 = v13;
    v38 = 2048;
    v39 = v14;
    v40 = 2048;
    *v41 = v15;
    *&v41[8] = 2114;
    v42 = v3;
    _os_log_impl(&dword_1C6892000, v12, OS_LOG_TYPE_DEFAULT, "[d %@] <PKHost:%p> Beginning discovery for flags: %lu, point: %{public}@", buf, 0x2Au);
  }

  v16 = pklog_handle_for_category(6);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 40);
    v17 = *(a1 + 48);
    v19 = *(a1 + 32);
    *buf = 138412802;
    v37 = v17;
    v38 = 2048;
    v39 = v18;
    v40 = 2114;
    *v41 = v19;
    _os_log_impl(&dword_1C6892000, v16, OS_LOG_TYPE_INFO, "[d %@] <PKHost:%p> Query: %{public}@", buf, 0x20u);
  }

  if ((*(a1 + 64) & 0x100) != 0)
  {
    v22 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5380();
    }

    v23 = pkError(3, @"cannot request embedded plug-ins without using the UsesEmbeddedCode key");
    (v11)[2](v11, 0, v23);
  }

  else if ((~*(a1 + 64) & 0x480) != 0)
  {
    v24 = [*(a1 + 40) daemon];
    v25 = *(a1 + 64);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = sub_1C68A1D60;
    v27[3] = &unk_1E827F738;
    v26 = *(a1 + 48);
    v27[4] = *(a1 + 40);
    v28 = v26;
    v29 = v11;
    v30 = v35;
    [v24 matchPlugIns:v2 flags:v25 uuid:v28 reply:v27];
  }

  else
  {
    v20 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B53DC();
    }

    v21 = pkError(18, @"PKDiscoverContinuous and PKDiscoverSynchronous incompatible");
    (v11)[2](v11, 0, v21);
  }

  _Block_object_dispose(v35, 8);
}

void sub_1C68A1C14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C68A1C48(void *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = pklog_handle_for_category(6);
  v8 = v7;
  v9 = a1[6];
  if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v10 = *(*(a1[5] + 8) + 24);
    v12 = 134349056;
    v13 = v10;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v8, OS_SIGNPOST_INTERVAL_END, v9, "HostDiscovery", " count=%{public, signpost.description:attribute}lu ", &v12, 0xCu);
  }

  v11 = a1[4];
  if (v11)
  {
    (*(v11 + 16))(v11, v5, v6);
  }
}

void sub_1C68A1D60(uint64_t a1, void *a2)
{
  v78 = *MEMORY[0x1E69E9840];
  xdict = a2;
  v48 = a1;
  v3 = [*(a1 + 32) daemon];
  v42 = [v3 errorInReply:xdict];

  if (v42)
  {
    v4 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v40 = *(v48 + 32);
      v39 = *(v48 + 40);
      *buf = 138412802;
      *&buf[4] = v39;
      *&buf[12] = 2048;
      *&buf[14] = v40;
      *&buf[22] = 2112;
      v74 = v42;
      _os_log_error_impl(&dword_1C6892000, v4, OS_LOG_TYPE_ERROR, "[d %@] <PKHost:%p> Failed discovery: %@.", buf, 0x20u);
    }

    (*(*(v48 + 48) + 16))();
  }

  else
  {
    v5 = [*(v48 + 32) daemon];
    v6 = xpc_dictionary_get_value(xdict, "matches");
    v7 = [v5 convertFromXPC:v6];

    v46 = [MEMORY[0x1E695DFA8] set];
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v8)
    {
      v9 = *v68;
      do
      {
        v10 = 0;
        if (v8 <= 1)
        {
          v11 = 1;
        }

        else
        {
          v11 = v8;
        }

        do
        {
          if (*v68 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v67 + 1) + 8 * v10);
          v13 = objc_alloc(MEMORY[0x1E696AFB0]);
          v14 = [v12 objectForKeyedSubscript:@"uuid"];
          v15 = [v13 initWithUUIDString:v14];

          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v74 = sub_1C68936B4;
          v75 = sub_1C689455C;
          v76 = 0;
          v63 = 0;
          v64 = &v63;
          v65 = 0x2020000000;
          v66 = 0;
          v16 = [*(v48 + 32) hostQueue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_1C68A2410;
          block[3] = &unk_1E827F670;
          v17 = *(v48 + 32);
          v61 = buf;
          block[4] = v17;
          v18 = v15;
          v62 = &v63;
          v59 = v18;
          v60 = v12;
          dispatch_sync(v16, block);

          if (*(v64 + 24) == 1)
          {
            v19 = [*(*&buf[8] + 40) _syncQueue];
            v57[0] = MEMORY[0x1E69E9820];
            v57[1] = 3221225472;
            v57[2] = sub_1C68A251C;
            v57[3] = &unk_1E827F698;
            v20 = *(v48 + 32);
            v57[4] = v12;
            v57[5] = v20;
            v57[6] = buf;
            dispatch_sync(v19, v57);
          }

          [v46 addObject:*(*&buf[8] + 40)];

          _Block_object_dispose(&v63, 8);
          _Block_object_dispose(buf, 8);

          ++v10;
        }

        while (v11 != v10);
        v8 = [obj countByEnumeratingWithState:&v67 objects:v77 count:16];
      }

      while (v8);
    }

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v47 = v46;
    v21 = [v47 countByEnumeratingWithState:&v53 objects:v72 count:16];
    if (v21)
    {
      v43 = *v54;
      do
      {
        v22 = 0;
        if (v21 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v21;
        }

        v44 = v23;
        do
        {
          if (*v54 != v43)
          {
            objc_enumerationMutation(v47);
          }

          v24 = *(*(&v53 + 1) + 8 * v22);
          v25 = [v24 supersedingUUID];

          if (v25)
          {
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            v26 = v47;
            v27 = [v26 countByEnumeratingWithState:&v49 objects:v71 count:16];
            if (v27)
            {
              v28 = *v50;
              do
              {
                v29 = 0;
                if (v27 <= 1)
                {
                  v30 = 1;
                }

                else
                {
                  v30 = v27;
                }

                do
                {
                  if (*v50 != v28)
                  {
                    objc_enumerationMutation(v26);
                  }

                  v31 = *(*(&v49 + 1) + 8 * v29);
                  v32 = [v31 uuid];
                  v33 = [v24 supersedingUUID];
                  v34 = [v32 isEqual:v33];

                  if (v34)
                  {
                    [v24 setSupersededBy:v31];
                  }

                  ++v29;
                }

                while (v30 != v29);
                v27 = [v26 countByEnumeratingWithState:&v49 objects:v71 count:16];
              }

              while (v27);
            }
          }

          else
          {
            [v24 setSupersededBy:0];
          }

          ++v22;
        }

        while (v22 != v44);
        v21 = [v47 countByEnumeratingWithState:&v53 objects:v72 count:16];
      }

      while (v21);
    }

    *(*(*(v48 + 56) + 8) + 24) = [obj count];
    v35 = pklog_handle_for_category(6);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v37 = *(v48 + 32);
      v36 = *(v48 + 40);
      v38 = *(*(*(v48 + 56) + 8) + 24);
      *buf = 138412802;
      *&buf[4] = v36;
      *&buf[12] = 2048;
      *&buf[14] = v37;
      *&buf[22] = 2048;
      v74 = v38;
      _os_log_impl(&dword_1C6892000, v35, OS_LOG_TYPE_DEFAULT, "[d %@] <PKHost:%p> Completed discovery. Final # of matches: %lu", buf, 0x20u);
    }

    (*(*(v48 + 48) + 16))();
  }
}

void sub_1C68A23E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&STACK[0x2A0], 8);
  _Unwind_Resume(a1);
}

void sub_1C68A2410(uint64_t a1)
{
  v2 = [*(a1 + 32) discoveryMap];
  v3 = [v2 objectForKey:*(a1 + 40)];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (*(*(*(a1 + 56) + 8) + 40))
  {
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

  else
  {
    v6 = [[PKHostPlugIn alloc] initWithForm:*(a1 + 48) host:*(a1 + 32)];
    v7 = *(*(a1 + 56) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;

    v11 = [*(a1 + 32) discoveryMap];
    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = [v9 uuid];
    [v11 setObject:v9 forKey:v10];
  }
}

void sub_1C68A2934(uint64_t a1, xpc_object_t xdict)
{
  v4 = xpc_dictionary_get_array(xdict, "extensions");
  if (v4)
  {
    v3 = _CFXPCCreateCFObjectFromXPCObject();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void sub_1C68A2AFC(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = xpc_dictionary_get_array(xdict, "pidarray");
  v4 = xpc_dictionary_get_array(xdict, "uuids");
  v5 = v4;
  if (v3)
  {
    v6 = _CFXPCCreateCFObjectFromXPCObject();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_3:
  v7 = objc_opt_new();
  if (xpc_array_get_count(v5))
  {
    v8 = 0;
    do
    {
      v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:{xpc_array_get_uuid(v5, v8)}];
      [v7 addObject:v9];

      ++v8;
    }

    while (v8 < xpc_array_get_count(v5));
  }

LABEL_9:
  v10 = *(a1 + 40);
  v11 = [*(a1 + 32) daemon];
  v12 = [v11 errorInReply:xdict];
  (*(v10 + 16))(v10, v12, v6, v7);
}

void sub_1C68A30D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C68A30E8(uint64_t a1)
{
  v2 = [*(a1 + 32) activePlugIns];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 48) + 8) + 40);
  if (v6 && [v6 state] != 1)
  {
    v7 = *(*(a1 + 48) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = 0;
  }
}

void sub_1C68A32B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C68A32CC(uint64_t a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) discoveryMap];
  v3 = [*(a1 + 40) uuid];
  v4 = [v2 objectForKey:v3];

  v5 = [*(a1 + 40) multipleInstanceUUID];
  if (v5)
  {
  }

  else
  {
    v6 = *(a1 + 40);

    if (v4 != v6)
    {
      sub_1C68B5438(a1, (a1 + 32), (a1 + 40), v4);
    }
  }

  v7 = [*(a1 + 32) activePlugIns];
  v8 = [*(a1 + 40) identifier];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v12 = *(*(*(a1 + 48) + 8) + 40);
  if (v12)
  {
    if ([v12 state])
    {
      goto LABEL_17;
    }

    v13 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B54C4(a1 + 48, v13);
    }

    v14 = [*(a1 + 32) activePlugIns];
    v15 = [*(*(*(a1 + 48) + 8) + 40) identifier];
    [v14 removeObjectForKey:v15];

    v16 = *(*(a1 + 48) + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = 0;
  }

  v18 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = [*(a1 + 40) uuid];
    v20 = [*(a1 + 40) multipleInstanceUUID];
    v21 = [*(a1 + 40) identifier];
    v22 = [*(a1 + 40) version];
    v33 = 138544130;
    v34 = v19;
    v35 = 2114;
    v36 = v20;
    v37 = 2112;
    v38 = v21;
    v39 = 2112;
    v40 = v22;
    _os_log_impl(&dword_1C6892000, v18, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] activating plugin", &v33, 0x2Au);
  }

  v23 = [*(a1 + 40) multipleInstanceUUID];

  if (!v23)
  {
    v24 = *(a1 + 40);
    v25 = [*(a1 + 32) activePlugIns];
    v26 = [*(a1 + 40) identifier];
    [v25 setObject:v24 forKeyedSubscript:v26];
  }

  v27 = [*(a1 + 32) activeOneShots];
  v28 = [*(a1 + 40) effectiveUUID];
  v29 = [v27 objectForKeyedSubscript:v28];

  if (v29)
  {
    sub_1C68B55EC(a1, (a1 + 32), (a1 + 40));
  }

  v30 = *(a1 + 40);
  v31 = [*(a1 + 32) activeOneShots];
  v32 = [*(a1 + 40) effectiveUUID];
  [v31 setObject:v30 forKeyedSubscript:v32];

LABEL_17:
}

void sub_1C68A36F4(uint64_t a1)
{
  v30 = *MEMORY[0x1E69E9840];
  v2 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(a1 + 32) uuid];
    v4 = [*(a1 + 32) multipleInstanceUUID];
    v5 = [*(a1 + 32) identifier];
    v6 = [*(a1 + 32) version];
    *buf = 138544130;
    v23 = v3;
    v24 = 2114;
    v25 = v4;
    v26 = 2112;
    v27 = v5;
    v28 = 2112;
    v29 = v6;
    _os_log_impl(&dword_1C6892000, v2, OS_LOG_TYPE_INFO, "[u %{public}@:m %{public}@] [%@(%@)] deactivating plugin", buf, 0x2Au);
  }

  v7 = [*(a1 + 32) multipleInstanceUUID];

  if (!v7)
  {
    v8 = [*(a1 + 40) activePlugIns];
    v9 = [*(a1 + 32) identifier];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = [v10 identifier];
      v12 = [*(a1 + 32) identifier];
      v13 = [v11 isEqualToString:v12] ^ 1;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:*(a1 + 48) object:*(a1 + 40) file:@"PKHost.m" lineNumber:435 description:{@"deactivating plugin %@ but encountered %@", *(a1 + 32), v10}];
    }

    v15 = [*(a1 + 40) activePlugIns];
    v16 = [*(a1 + 32) identifier];
    [v15 removeObjectForKey:v16];
  }

  v17 = [*(a1 + 40) activeOneShots];
  v18 = [*(a1 + 32) effectiveUUID];
  v19 = [v17 objectForKeyedSubscript:v18];

  if (!v19)
  {
    sub_1C68B5698(a1, (a1 + 40), (a1 + 32));
  }

  v20 = [*(a1 + 40) activeOneShots];
  v21 = [*(a1 + 32) effectiveUUID];
  [v20 removeObjectForKey:v21];
}

void sub_1C68A3A5C(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v2 = [v5 infoDictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 8);
  *(v3 + 8) = v2;
}

void sub_1C68A3B6C(void *a1, uint64_t a2, void *a3, unsigned int a4, void *a5, void *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a5;
  v24 = a6;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v22 = v9;
  [v11 setObject:v9 forKeyedSubscript:MEMORY[0x1E695E0F0]];
  if ([v11 count])
  {
    v27 = v11;
    do
    {
      context = objc_autoreleasePoolPush();
      v12 = [v11 allKeys];
      v13 = [v12 firstObject];

      v14 = [v11 objectForKeyedSubscript:v13];
      [v11 removeObjectForKey:v13];
      v15 = [a1 _mutableDictionaryAtKeyPath:v13];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      obj = [v14 allKeys];
      v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v16)
      {
        v17 = *v32;
        do
        {
          v18 = 0;
          if (v16 <= 1)
          {
            v19 = 1;
          }

          else
          {
            v19 = v16;
          }

          do
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(obj);
            }

            v20 = *(*(&v31 + 1) + 8 * v18);
            v21 = [v13 arrayByAddingObject:v20];
            if (v10 && [v10 containsObject:v21])
            {
              [a1 _overlayCustomValueAtKeyPath:v21 intoTargetDictionary:v15 fromSourceDictionary:v14 handler:v24];
            }

            else
            {
              v28[0] = MEMORY[0x1E69E9820];
              v28[1] = 3221225472;
              v28[2] = sub_1C68A3E40;
              v28[3] = &unk_1E827F848;
              v29 = v27;
              v30 = v21;
              [a1 _overlayValueAtKey:v20 intoTargetDictionary:v15 fromSourceDictionary:v14 targetTakePrecedent:a4 nestedDictionaryHandler:v28];
            }

            ++v18;
          }

          while (v19 != v18);
          v16 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v16);
      }

      objc_autoreleasePoolPop(context);
      v11 = v27;
    }

    while ([v27 count]);
  }
}

void sub_1C68A3E50(void *a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      v7 = 0;
      if (v5 <= 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = v5;
      }

      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v7) mutableCopy];
        v10 = [v9 lastObject];
        [v9 removeLastObject];
        v11 = [a1 _mutableDictionaryAtKeyPath:v9];
        [v11 removeObjectForKey:v10];

        ++v7;
      }

      while (v8 != v7);
      v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_1C68A3F98(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, int a6, void *a7)
{
  v16 = a3;
  v11 = a4;
  v12 = a7;
  v13 = [a5 objectForKeyedSubscript:v16];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12[2](v12, v13);
  }

  else
  {
    if (a6)
    {
      v14 = [v11 objectForKeyedSubscript:v16];
      v15 = v14 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      [v11 setObject:v13 forKeyedSubscript:v16];
    }
  }
}

void sub_1C68A40A0(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6)
{
  v17 = a3;
  v9 = a4;
  v10 = a6;
  v11 = a5;
  v12 = [v17 lastObject];
  v13 = [v9 objectForKeyedSubscript:v12];
  v14 = [v11 objectForKeyedSubscript:v12];

  if (v10)
  {
    v15 = v10[2](v10, v17, v13, v14);
    v16 = v9;
    if (v15)
    {
      [v9 setObject:v15 forKeyedSubscript:v12];
      goto LABEL_6;
    }
  }

  else
  {
    v15 = 0;
    v16 = v9;
  }

  [v16 removeObjectForKey:v12];
LABEL_6:
}

id sub_1C68A41BC(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = a1;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    v8 = v5;
    do
    {
      v9 = 0;
      if (v6 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v6;
      }

      v11 = v8;
      do
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v12 = *(*(&v15 + 1) + 8 * v9);
        v13 = [v11 objectForKeyedSubscript:v12];
        v8 = [v5 _createOrConvertToMutableDictionaryFromDictionary:v13];
        [v11 setObject:v8 forKeyedSubscript:v12];

        ++v9;
        v11 = v8;
      }

      while (v10 != v9);
      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

id sub_1C68A4330(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v4 = v3;
  if (!v3 || (v5 = [v3 mutableCopy]) == 0)
  {
    v5 = [MEMORY[0x1E695DF90] dictionary];
  }

  return v5;
}

void __PLUGINKIT_HANDING_CONTROL_TO_CLIENT__(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);

    v3(a2, a1);
  }

  else
  {
    v4 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      sub_1C68B57CC(v4);
    }
  }
}

uint64_t pkUseInternalDiagnostics(uint64_t a1, uint64_t a2)
{
  if (qword_1EC1D1CE8 != -1)
  {
    sub_1C68B5810();
  }

  return byte_1EC1D1CF0;
}

uint64_t sub_1C68A45CC()
{
  result = os_variant_has_internal_diagnostics();
  byte_1EC1D1CF0 = result;
  return result;
}

BOOL PKAnnotationNotificationPost()
{
  v0 = notify_post(qword_1EC1D16E0);
  if (v0)
  {
    v1 = pklog_handle_for_category(10);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5824();
    }
  }

  return v0 == 0;
}

BOOL sub_1C68A4694(int a1)
{
  v1 = notify_cancel(a1);
  if (v1)
  {
    v2 = pklog_handle_for_category(10);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B58DC();
    }
  }

  return v1 == 0;
}

id pkError(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  if (a2)
  {
    v9 = *MEMORY[0x1E696A578];
    v10[0] = a2;
    v4 = MEMORY[0x1E695DF20];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v3 errorWithDomain:@"PlugInKit" code:a1 userInfo:v6];
  }

  else
  {
    v6 = 0;
    v7 = [v3 errorWithDomain:@"PlugInKit" code:a1 userInfo:0];
  }

  return v7;
}

id sub_1C68A480C(void *a1, uint64_t a2, void *a3)
{
  v51 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v7 = [v6 componentsSeparatedByString:{@", "}];
  v8 = [v7 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v8)
  {
    v9 = *v46;
    v34 = v7;
    v35 = *v46;
    v32 = v6;
    v33 = v5;
    v31 = a2;
LABEL_3:
    v10 = 0;
    if (v8 <= 1)
    {
      v11 = 1;
    }

    else
    {
      v11 = v8;
    }

    v36 = v11;
    while (1)
    {
      if (*v46 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v12 = [*(*(&v45 + 1) + 8 * v10) componentsSeparatedByString:{@":", v31, v32, v33}];
      if ([v12 count] != 3)
      {
        v40 = pkError(6, v6);

LABEL_44:
        v29 = v40;
        goto LABEL_45;
      }

      v13 = [v12 objectAtIndexedSubscript:0];
      v38 = [v13 isEqualToString:@"request"];
      v39 = v13;
      if (v38 & 1) != 0 || ([v13 isEqualToString:@"reply"])
      {
        break;
      }

      v40 = pkError(6, v13);
      v28 = 0;
LABEL_40:

      if (!v28)
      {
        goto LABEL_44;
      }

      if (++v10 == v11)
      {
        v8 = [v7 countByEnumeratingWithState:&v45 objects:v50 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_43;
      }
    }

    v14 = [v12 objectAtIndexedSubscript:1];
    v37 = [v14 integerValue];

    v15 = [v12 objectAtIndexedSubscript:2];
    if ([v15 characterAtIndex:0] == 123)
    {
      if ([v15 characterAtIndex:{objc_msgSend(v15, "length") - 1}] != 125)
      {
        v40 = pkError(6, v15);
        v28 = 0;
LABEL_39:

        v11 = v36;
        goto LABEL_40;
      }

      v16 = [MEMORY[0x1E695DFA8] set];
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v17 = 1;
      v18 = [v15 substringWithRange:{1, objc_msgSend(v15, "length") - 2}];
      v19 = [v18 componentsSeparatedByString:@"+"];

      v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
      if (v20)
      {
        v21 = *v42;
        do
        {
          v22 = 0;
          if (v20 <= 1)
          {
            v23 = 1;
          }

          else
          {
            v23 = v20;
          }

          do
          {
            if (*v42 != v21)
            {
              objc_enumerationMutation(v19);
            }

            v24 = *(*(&v41 + 1) + 8 * v22);
            v25 = objc_lookUpClass([v24 UTF8String]);
            if (!v25)
            {
              v40 = pkError(6, v24);
              v17 = 0;
              goto LABEL_33;
            }

            [v16 addObject:v25];
            ++v22;
          }

          while (v23 != v22);
          v20 = [v19 countByEnumeratingWithState:&v41 objects:v49 count:16];
        }

        while (v20);
        v17 = 1;
LABEL_33:
        v6 = v32;
        v5 = v33;
        a2 = v31;
      }

      if (v17)
      {
        [v5 setClasses:v16 forSelector:a2 argumentIndex:v37 ofReply:v38 ^ 1u];

        v7 = v34;
        goto LABEL_36;
      }

      v28 = 0;
      v7 = v34;
    }

    else
    {
      v26 = sub_1C68960F0(v15, 0);
      if (v26)
      {
        v27 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:v26];
        [v5 setInterface:v27 forSelector:a2 argumentIndex:v37 ofReply:v38 ^ 1u];

LABEL_36:
        v9 = v35;
        v28 = 1;
        goto LABEL_39;
      }

      v40 = pkError(6, v15);

      v28 = 0;
    }

    v9 = v35;
    goto LABEL_39;
  }

LABEL_43:
  v29 = 0;
LABEL_45:

  return v29;
}

uint64_t pkIsInSpecialSession()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = pklog_handle_for_category(0);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    v2 = 136315394;
    v3 = 0;
    v4 = 1024;
    v5 = 0;
    _os_log_impl(&dword_1C6892000, v0, OS_LOG_TYPE_INFO, "vproc manager: [%s], in special session: %d", &v2, 0x12u);
  }

  return 0;
}

id sub_1C68A4D54(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:0];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      if (v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = v6[2](v6, *(*(&v15 + 1) + 8 * v11));
        if (v13)
        {
          [v7 addObject:{v13, v15}];
        }

        ++v11;
      }

      while (v12 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  return v7;
}

id sub_1C68A4EC8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 mutableCopy];
  [v8 setObject:v6 forKeyedSubscript:v7];

  v9 = [v8 copy];

  return v9;
}

id sub_1C68A4F50(void *a1)
{
  if (([a1 conformsToProtocol:&unk_1F464CF28] & 1) == 0)
  {
    sub_1C68B59AC();
  }

  v2 = sub_1C68A4FA0(a1);

  return v2;
}

__CFString *sub_1C68A4FA0(void *a1)
{
  v1 = a1;
  v2 = MEMORY[0x1C6960700]();
  v3 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"(%s)", xpc_type_get_name(v2)];
  if (v2 == MEMORY[0x1E69E9E58])
  {
    if (v1 == MEMORY[0x1E69E9E10])
    {
      v5 = @"true";
    }

    else
    {
      v5 = @"false";
    }

    v6 = v5;
  }

  else if (v2 == MEMORY[0x1E69E9EB0])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLongLong:xpc_int64_get_value(v1)];
  }

  else if (v2 == MEMORY[0x1E69E9F18])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithUnsignedLongLong:xpc_uint64_get_value(v1)];
  }

  else if (v2 == MEMORY[0x1E69E9E88])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AD98]) initWithDouble:xpc_double_get_value(v1)];
  }

  else if (v2 == MEMORY[0x1E69E9E78])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSince1970:xpc_date_get_value(v1) / 1000000000.0];
  }

  else if (v2 == MEMORY[0x1E69E9E70])
  {
    v7 = objc_alloc(MEMORY[0x1E695DEF0]);
    bytes_ptr = xpc_data_get_bytes_ptr(v1);
    v6 = [v7 initWithBytes:bytes_ptr length:xpc_data_get_length(v1)];
  }

  else if (v2 == MEMORY[0x1E69E9F10])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCString:xpc_string_get_string_ptr(v1) encoding:4];
  }

  else if (v2 == MEMORY[0x1E69E9F20])
  {
    v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:xpc_uuid_get_bytes(v1)];
  }

  else if (v2 == MEMORY[0x1E69E9E80])
  {
    v6 = sub_1C68A5508(v1);
  }

  else if (v2 == MEMORY[0x1E69E9E50])
  {
    v6 = sub_1C68A55B8(v1);
  }

  else
  {
    if (v2 != MEMORY[0x1E69E9E98])
    {
      v4 = 0;
      goto LABEL_28;
    }

    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [v9 initWithFormat:@"%s", xpc_dictionary_get_string(v1, *MEMORY[0x1E69E9E28])];
  }

  v4 = v6;
LABEL_28:
  if (v4)
  {
    if (v2 == MEMORY[0x1E69E9E80] || v2 == MEMORY[0x1E69E9E50])
    {
      v10 = v4;
    }

    else
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@: %@", v3, v4];
    }
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  return v11;
}

id sub_1C68A5300(void *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = [a1 pluginUUID];
  v14 = 0;
  v3 = [objc_alloc(MEMORY[0x1E69635D0]) initWithUUID:v2 error:&v14];
  v4 = v14;
  if (v3)
  {
    v5 = [v3 containingBundleRecord];
    v6 = [v5 managedPersonas];

    if ([v6 count])
    {
      v7 = v6;
      v8 = pklog_handle_for_category(13);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [a1 pluginUUID];
        v10 = [a1 pluginIdentifier];
        v11 = [a1 bundleVersion];
        *buf = 138544130;
        v16 = v9;
        v17 = 2112;
        v18 = v10;
        v19 = 2112;
        v20 = v11;
        v21 = 2112;
        v22 = v7;
        _os_log_impl(&dword_1C6892000, v8, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] added persona strings: %@", buf, 0x2Au);
      }
    }

    else
    {
      v7 = 0;
    }

    v12 = [v7 copy];
  }

  else
  {
    v6 = pklog_handle_for_category(3);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B59C8();
    }

    v7 = 0;
    v12 = 0;
  }

  return v12;
}

id sub_1C68A5508(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = sub_1C68A5668;
  applier[3] = &unk_1E827F870;
  v3 = v2;
  v6 = v3;
  xpc_dictionary_apply(v1, applier);

  return v3;
}

id sub_1C68A55B8(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  applier[0] = MEMORY[0x1E69E9820];
  applier[1] = 3221225472;
  applier[2] = sub_1C68A56DC;
  applier[3] = &unk_1E827F898;
  v3 = v2;
  v6 = v3;
  xpc_array_apply(v1, applier);

  return v3;
}

uint64_t sub_1C68A5668(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C68A4FA0(a3);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];

  return 1;
}

uint64_t sub_1C68A56DC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C68A4FA0(a3);
  [*(a1 + 32) setObject:v5 atIndexedSubscript:a2];

  return 1;
}

id sub_1C68A7114(uint64_t a1, void *a2, void *a3, void *a4)
{
  v15[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v15[0] = @"NSExtension";
  v15[1] = @"Shared";
  v9 = MEMORY[0x1E695DEC8];
  v10 = a2;
  v11 = [v9 arrayWithObjects:v15 count:2];
  v12 = [v10 isEqual:v11];

  v13 = v8;
  if (v12)
  {
    v13 = [*(a1 + 32) mergeSharedResources:v8 into:v7];
  }

  return v13;
}

void sub_1C68A7818()
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = 37;
  if (sysctlbyname("kern.bootsessionuuid", &unk_1EC1D1D08, &v5, 0, 0) < 0)
  {
    v0 = pklog_handle_for_category(10);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B5D5C(v0);
    }
  }

  v1 = objc_alloc(MEMORY[0x1E696AEC0]);
  v2 = [v1 initWithBytesNoCopy:&unk_1EC1D1D08 length:v5 - 1 encoding:4 freeWhenDone:0];
  v3 = qword_1EC1D1CF8;
  qword_1EC1D1CF8 = v2;

  v4 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v7 = qword_1EC1D1CF8;
    _os_log_impl(&dword_1C6892000, v4, OS_LOG_TYPE_INFO, "Got boot session uuid: %@", buf, 0xCu);
  }
}

void sub_1C68A89B8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [a2 objectForKeyedSubscript:@"NSExtensionFileProviderActionName"];
  if (v4)
  {
    v5 = [*(a1 + 40) localizedStringForKey:v4 value:v4 table:0];
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v4];
  }

  else
  {
    v5 = pklog_handle_for_category(3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B640C();
    }
  }
}

void sub_1C68A8F10(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 80));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1C68A8F58(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = pklog_handle_for_category(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained uuid];
    v5 = [WeakRetained identifier];
    v6 = [WeakRetained version];
    v7 = objc_loadWeakRetained((a1 + 40));
    v8 = 138544130;
    v9 = v4;
    v10 = 2112;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 1024;
    v15 = [v7 processIdentifier];
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] host connection from pid %d interrupted", &v8, 0x26u);
  }
}

void sub_1C68A9090(id *a1)
{
  v28 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  v3 = pklog_handle_for_category(1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [WeakRetained uuid];
    v5 = [WeakRetained identifier];
    v6 = [WeakRetained version];
    v7 = objc_loadWeakRetained(a1 + 6);
    *buf = 138544130;
    v21 = v4;
    v22 = 2112;
    v23 = v5;
    v24 = 2112;
    v25 = v6;
    v26 = 1024;
    v27 = [v7 processIdentifier];
    _os_log_impl(&dword_1C6892000, v3, OS_LOG_TYPE_DEFAULT, "[u %{public}@] [%@(%@)] host connection from pid %d invalidated", buf, 0x26u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [a1[4] subsystems];
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = *v16;
    do
    {
      v11 = 0;
      if (v9 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v9;
      }

      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          v14 = objc_loadWeakRetained(a1 + 5);
          [v13 communicationsFailed:v14];
        }

        ++v11;
      }

      while (v12 != v11);
      v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

void sub_1C68A9E10(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = pklog_handle_for_category(7);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B6580();
    }
  }

  v8 = [v6 objectForKeyedSubscript:@"sandboxExtensions"];
  (*(*(a1 + 40) + 16))();
}

void sub_1C68AAA44(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objc_opt_class() && (objc_opt_respondsToSelector() & 1) == 0)
  {
    v2 = pklog_handle_for_category(5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = [*(a1 + 32) uuid];
      v4 = [*(a1 + 32) identifier];
      v5 = [*(a1 + 32) version];
      *buf = 138543874;
      v12 = v3;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1C6892000, v2, OS_LOG_TYPE_INFO, "[u %{public}@] [%@(%@)] invalidating checkin assertion", buf, 0x20u);
    }

    v6 = [*(a1 + 40) external];
    v7 = [v6 runningboard];
    [v7 plugInHandshakeComplete];
  }

  v8 = [*(a1 + 40) timerQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1C68AAC50;
  block[3] = &unk_1E827F1C8;
  block[4] = *(a1 + 40);
  dispatch_sync(v8, block);

  v9 = pklog_handle_for_category(7);
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1C6892000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "ExtensionStartup", &unk_1C68BDED5, buf, 2u);
  }
}

void sub_1C68AAC50(uint64_t a1)
{
  v2 = [*(a1 + 32) firstHostRequestTimer];

  if (v2)
  {
    v3 = [*(a1 + 32) firstHostRequestTimer];
    dispatch_source_cancel(v3);

    v4 = *(a1 + 32);

    [v4 setFirstHostRequestTimer:0];
  }
}

void sub_1C68AAFE0(uint64_t a1)
{
  v2 = [*(a1 + 32) timerQueue];
  v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v2);
  [*(a1 + 32) setFirstHostRequestTimer:v3];

  v4 = [*(a1 + 32) firstHostRequestTimer];
  dispatch_source_set_event_handler(v4, &unk_1F46392E8);

  v5 = dispatch_time(0, 2000000000);
  v6 = [*(a1 + 32) firstHostRequestTimer];
  dispatch_source_set_timer(v6, v5, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

  v7 = [*(a1 + 32) firstHostRequestTimer];
  dispatch_resume(v7);
}

void sub_1C68AB0D4()
{
  v0 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    sub_1C68B6A80(v0, v1, v2, v3, v4, v5, v6, v7);
  }
}

void sub_1C68AC42C(uint64_t a1)
{
  v2 = [*(a1 + 32) terminationTimer];

  if (v2)
  {
    v3 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
    v4 = [*(a1 + 32) terminationTimer];
    dispatch_source_set_timer(v4, v3, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);
  }

  else
  {
    v5 = [*(a1 + 32) timerQueue];
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v5);
    [*(a1 + 32) setTerminationTimer:v6];

    v7 = [*(a1 + 32) terminationTimer];
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_1C68AC5C4;
    handler[3] = &unk_1E827F1C8;
    handler[4] = *(a1 + 32);
    dispatch_source_set_event_handler(v7, handler);

    v8 = dispatch_time(0, (*(a1 + 40) * 1000000000.0));
    v9 = [*(a1 + 32) terminationTimer];
    dispatch_source_set_timer(v9, v8, 0xFFFFFFFFFFFFFFFFLL, 0x3B9ACA00uLL);

    v4 = [*(a1 + 32) terminationTimer];
    dispatch_resume(v4);
  }
}

void sub_1C68AC5C4(uint64_t a1)
{
  v2 = pklog_handle_for_category(7);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1C6892000, v2, OS_LOG_TYPE_DEFAULT, "Exiting when clean", v5, 2u);
  }

  v3 = [*(a1 + 32) external];
  v4 = [v3 sys];
  [v4 xpc_transaction_exit_clean];
}

void sub_1C68AC6DC(uint64_t a1)
{
  v2 = [*(a1 + 32) external];
  v3 = [v2 sys];
  [v3 xpc_transaction_interrupt_clean_exit];

  v4 = [*(a1 + 32) terminationTimer];

  if (v4)
  {
    v5 = [*(a1 + 32) terminationTimer];
    dispatch_source_cancel(v5);

    v6 = *(a1 + 32);

    [v6 setTerminationTimer:0];
  }
}

void sub_1C68ACA44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1C68ACF88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C68ACFA8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x1C6960700]() == MEMORY[0x1E69E9E98])
  {
    xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28]);
    v4 = pklog_handle_for_category(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B701C(a1);
    }
  }
}

void sub_1C68AE13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v24 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C68AE17C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x1C6960700]() == MEMORY[0x1E69E9E98])
  {
    xpc_dictionary_get_string(v3, *MEMORY[0x1E69E9E28]);
    v4 = pklog_handle_for_category(1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B7124(a1);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1C68AE224(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3 != MEMORY[0x1E69E9E18] || (*(a1 + 56) == 1 ? (v6 = WeakRetained == 0) : (v6 = 1), v6))
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = pklog_handle_for_category(1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B71BC();
    }

    uint64 = xpc_dictionary_get_uint64(*(a1 + 32), "flags");
    xpc_dictionary_set_uint64(*(a1 + 32), "flags", uint64 & 0xFFFFFFFFFFFF7FFFLL);
    objc_initWeak(&location, v5);
    v10 = v5[3];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1C68AE3A4;
    v11[3] = &unk_1E827FA40;
    objc_copyWeak(&v14, &location);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    dispatch_async(v10, v11);

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

uint64_t sub_1C68AE3A4(xpc_object_t *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    xpc_connection_send_message_with_reply(*(WeakRetained + 2), a1[4], *(WeakRetained + 3), a1[5]);
  }

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C68AE544(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  *uuid = 0;
  v11 = 0;
  v4 = [v3 uuid];
  [v4 getUUIDBytes:uuid];

  xpc_array_set_uuid(*(a1 + 32), 0xFFFFFFFFFFFFFFFFLL, uuid);
  v5 = *(a1 + 40);
  v6 = [v3 path];
  xpc_array_set_string(v5, 0xFFFFFFFFFFFFFFFFLL, [v6 UTF8String]);

  v7 = [v3 multipleInstanceUUID];

  if (v7)
  {
    v8 = [v3 multipleInstanceUUID];
    v9 = uuid;
    [v8 getUUIDBytes:uuid];
  }

  else
  {
    v9 = &unk_1C68C0FEE;
  }

  xpc_array_set_uuid(*(a1 + 48), 0xFFFFFFFFFFFFFFFFLL, v9);
}

uint64_t sub_1C68AFF54()
{
  qword_1ED6EF048 = [[PKManager alloc] initForService:0];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1C68B0064()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1EC1D1D48;
  qword_1EC1D1D48 = v0;

  dword_1EC1D1D50 = 0;
}

void sub_1C68B04B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1C68B04FC(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained errorInReply:v3];

  v6 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained((a1 + 56));
    v8 = [*(a1 + 32) path];
    v9 = 134218498;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> register plugin at [%@] completed, error = %@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1C68B0844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_1C68B0888(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained errorInReply:v3];

  v6 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained((a1 + 56));
    v8 = [*(a1 + 32) path];
    v9 = 134218498;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> unregister plugin at [%@] completed, error = %@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1C68B0E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 56));
  objc_destroyWeak((v20 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v21 - 144));
  _Unwind_Resume(a1);
}

void sub_1C68B0EA8(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained errorInReply:v3];

  v6 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained((a1 + 56));
    v8 = [*(a1 + 32) bundlePath];
    v9 = 134218498;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> register plugins in bundle at [%@] completed, error = %@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1C68B13B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 56));
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak((v19 - 128));
  _Unwind_Resume(a1);
}

void sub_1C68B13EC(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained errorInReply:v3];

  v6 = pklog_handle_for_category(12);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_loadWeakRetained((a1 + 56));
    v8 = [*(a1 + 32) path];
    v9 = 134218498;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> unregister plugins in bundle at [%@] completed, error = %@", &v9, 0x20u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_1C68B1CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C68B1CD4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1C68B1EFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va1, a13);
  va_start(va, a13);
  v14 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1C68B1F20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1C68B2154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C68B2178(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1C68B23B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C68B23DC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1C68B2604(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1C68B2628(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void sub_1C68B2A00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C68B2A34(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained errorInReply:v3];

  if (v5)
  {
    v6 = xpc_dictionary_get_value(v3, "conflicts");

    if (v6)
    {
      v7 = _CFXPCCreateCFObjectFromXPCObject();
      v8 = [v5 userInfo];
      v9 = [v8 mutableCopy];

      [v9 setObject:v7 forKeyedSubscript:@"busyPlugInUUIDs"];
      v10 = MEMORY[0x1E696ABC0];
      v11 = [v5 domain];
      v12 = [v10 errorWithDomain:v11 code:objc_msgSend(v5 userInfo:{"code"), v9}];

      v5 = v12;
    }

    v13 = pklog_handle_for_category(11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B7600();
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    uuid = xpc_dictionary_get_uuid(v3, "uuids");

    if (uuid)
    {
      v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:uuid];
      v15 = pklog_handle_for_category(11);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v18 = *(a1 + 64);
        v22 = 134218754;
        v23 = v16;
        v24 = 2112;
        v25 = v17;
        v26 = 2048;
        v27 = v18;
        v28 = 2114;
        v29 = v5;
        _os_log_impl(&dword_1C6892000, v15, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> hold request for [%@] with flags: 0x%llx completed with hold token: [%{public}@]", &v22, 0x2Au);
      }

      v19 = *(*(a1 + 48) + 16);
    }

    else
    {
      v20 = pklog_handle_for_category(11);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
      {
        sub_1C68B7684();
      }

      v21 = *(a1 + 48);
      v5 = pkError(4, @"missing hold UUID in apparently successful hold request");
      v19 = *(v21 + 16);
    }

    v19();
  }
}

void sub_1C68B2E28(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1C68B2E4C(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [WeakRetained errorInReply:v3];

  v6 = pklog_handle_for_category(11);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B777C();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 134218242;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1C6892000, v7, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> released hold [%{public}@]", &v10, 0x16u);
  }
}

void sub_1C68B30B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_1C68B30D8(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained errorInReply:v3];

  v6 = pklog_handle_for_category(11);
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B786C();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = 134218242;
    v11 = v8;
    v12 = 2114;
    v13 = v9;
    _os_log_impl(&dword_1C6892000, v7, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> released hold [%{public}@]", &v10, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1C68B33C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  objc_destroyWeak((v17 + 56));
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v18 - 72));
  _Unwind_Resume(a1);
}

void sub_1C68B33F0(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained errorInReply:v3];

  v6 = *(*(a1 + 48) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  v8 = *(*(*(a1 + 48) + 8) + 40);
  v9 = pklog_handle_for_category(11);
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1C68B795C();
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v13 = 134218242;
    v14 = v11;
    v15 = 2114;
    v16 = v12;
    _os_log_impl(&dword_1C6892000, v10, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> released hold [%{public}@]", &v13, 0x16u);
  }
}

void sub_1C68B36D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1C68B3700(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained errorInReply:v3];

  v6 = pklog_handle_for_category(10);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = 134218498;
    v10 = v7;
    v11 = 2112;
    v12 = v5;
    v13 = 2112;
    v14 = v8;
    _os_log_impl(&dword_1C6892000, v6, OS_LOG_TYPE_DEFAULT, "<PKManager:%p> bulk update extension states completed with error: %@ for %@", &v9, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_1C68B39AC()
{
  sub_1C68955B0();
  sub_1C6895934();
  [v4 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689594C() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895958() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895614();
  sub_1C6895928();
  _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B3A68()
{
  sub_1C68955B0();
  sub_1C68970B8();
  v2 = [v1 uuid];
  v3 = [v0 multipleInstanceUUID];
  v4 = [v0 identifier];
  v5 = [v0 version];
  sub_1C689520C();
  sub_1C68970C8();
  sub_1C6895928();
  _os_log_fault_impl(v6, v7, OS_LOG_TYPE_FAULT, v8, v9, 0x34u);

  sub_1C68955C4();
}

void sub_1C68B3B3C(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1C6892000, a2, OS_LOG_TYPE_FAULT, "Failed to encode subsystem options: %@.", &v2, 0xCu);
}

void sub_1C68B3BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C68955B0();
  a23 = v24;
  a24 = v25;
  v27 = v26;
  v29 = v28;
  a16 = *MEMORY[0x1E69E9840];
  v30 = [v28 uuid];
  v31 = [v29 multipleInstanceUUID];
  v32 = [v29 identifier];
  v33 = [v29 version];
  v34 = [v29 requests];
  [v34 count];
  sub_1C68954C4();
  a12 = v32;
  sub_1C68958F8();
  sub_1C6895910(&dword_1C6892000, v27, v35, "[u %{public}@:m %{public}@] [%@(%@)] %lu current requests", &a9);

  sub_1C68955C4();
}

void sub_1C68B3CA4()
{
  sub_1C68955B0();
  sub_1C6895934();
  v2 = [sub_1C6895074(v1) uuid];
  v3 = [*v0 multipleInstanceUUID];
  v4 = [*v0 identifier];
  [*v0 version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895614();
  sub_1C689E924();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B3D68()
{
  sub_1C68955B0();
  sub_1C6895934();
  v2 = [sub_1C6895074(v1) uuid];
  v3 = [*v0 multipleInstanceUUID];
  v4 = [*v0 identifier];
  [*v0 version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895614();
  sub_1C689E924();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B3E2C()
{
  sub_1C68955B0();
  sub_1C6895934();
  v2 = [sub_1C6895074(v1) uuid];
  v3 = [*v0 multipleInstanceUUID];
  v4 = [*v0 identifier];
  [*v0 version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895614();
  sub_1C689E924();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B3F1C()
{
  sub_1C68955B0();
  sub_1C6895934();
  [v4 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689594C() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895958() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895614();
  sub_1C6895928();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B401C()
{
  sub_1C68955B0();
  sub_1C689E914();
  [*(v3 + 32) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E94C() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C689E934() version];
  sub_1C6895270();
  sub_1C689E8F4();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x34u);

  sub_1C68955C4();
}

void sub_1C68B40E8()
{
  sub_1C68955B0();
  sub_1C689E914();
  [*(v3 + 32) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E94C() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C689E934() version];
  sub_1C68954C4();
  sub_1C6895480();
  sub_1C689E958();
  sub_1C6895608();
  sub_1C6895910(v5, v6, v7, v8, v9);

  sub_1C68955C4();
}

void sub_1C68B41B4()
{
  sub_1C68955B0();
  sub_1C689E914();
  [*(v3 + 32) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E94C() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C689E934() version];
  sub_1C68954C4();
  sub_1C6895480();
  sub_1C689E958();
  sub_1C6895608();
  _os_log_fault_impl(v5, v6, OS_LOG_TYPE_FAULT, v7, v8, 0x34u);

  sub_1C68955C4();
}

void sub_1C68B4288()
{
  sub_1C68955B0();
  sub_1C68955D8();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955F0() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955E4() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C68955FC() version];
  sub_1C68954C4();
  sub_1C68950B4();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B4350()
{
  sub_1C68955B0();
  sub_1C68955D8();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955F0() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955E4() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C68955FC() version];
  sub_1C68954C4();
  sub_1C68950B4();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B4418()
{
  sub_1C68955B0();
  sub_1C68955D8();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955F0() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955E4() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C68955FC() version];
  sub_1C68954C4();
  sub_1C68950B4();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B44E0()
{
  sub_1C68955B0();
  sub_1C68955D8();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955F0() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955E4() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C68955FC() version];
  sub_1C68954C4();
  sub_1C68950B4();
  sub_1C6895608();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B45AC()
{
  sub_1C68955B0();
  sub_1C689E914();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E94C() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C689E934() version];
  sub_1C68954C4();
  sub_1C6895480();
  sub_1C689E958();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x34u);

  sub_1C68955C4();
}

void sub_1C68B467C()
{
  sub_1C68955B0();
  sub_1C689E914();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E94C() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C689E934() version];
  sub_1C68954C4();
  sub_1C6895480();
  sub_1C689E958();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x34u);

  sub_1C68955C4();
}

void sub_1C68B4748()
{
  sub_1C68955B0();
  sub_1C68955D8();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955F0() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955E4() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C68955FC() version];
  sub_1C68954C4();
  sub_1C68950B4();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B4810()
{
  sub_1C68955B0();
  sub_1C68955D8();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955F0() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955E4() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C68955FC() version];
  sub_1C68954C4();
  sub_1C68950B4();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B48D8()
{
  sub_1C68955B0();
  sub_1C689E914();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E94C() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C689E934() version];
  sub_1C6895270();
  sub_1C689E8F4();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x34u);

  sub_1C68955C4();
}

void sub_1C68B49A0()
{
  sub_1C68955B0();
  sub_1C6895934();
  v2 = [*(v1 + 32) uuid];
  v3 = [v0[4] multipleInstanceUUID];
  v4 = [v0[4] identifier];
  [v0[4] version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895614();
  sub_1C689E924();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B4A68()
{
  sub_1C68955B0();
  sub_1C68970B8();
  v2 = [v1 uuid];
  v3 = [v0 multipleInstanceUUID];
  v4 = [v0 identifier];
  v5 = [v0 version];
  sub_1C689520C();
  sub_1C689E924();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x34u);

  sub_1C68955C4();
}

void sub_1C68B4B54()
{
  sub_1C68955B0();
  sub_1C6895934();
  [v4 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689594C() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895958() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895614();
  sub_1C6895928();
  _os_log_debug_impl(v5, v6, OS_LOG_TYPE_DEBUG, v7, v8, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B4C10()
{
  sub_1C68955B0();
  sub_1C6895934();
  [v4 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689594C() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895958() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895614();
  sub_1C689E924();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B4CC8()
{
  sub_1C68955B0();
  sub_1C689E914();
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E94C() identifier];
  objc_claimAutoreleasedReturnValue();
  v4 = [sub_1C689E934() version];
  sub_1C6895270();
  sub_1C689E8F4();
  sub_1C689E8E4();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x34u);

  sub_1C68955C4();
}

void sub_1C68B4D90()
{
  sub_1C68955B0();
  v4 = v3;
  [sub_1C6895074(v3) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689E940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_1C689E94C() identifier];
  [*v4 version];
  objc_claimAutoreleasedReturnValue();
  v6 = [sub_1C689E934() protocolSpec];
  sub_1C68954C4();
  sub_1C689E8E4();
  _os_log_error_impl(v7, v8, v9, v10, v11, 0x34u);

  sub_1C68955C4();
}

void sub_1C68B4E80()
{
  sub_1C68955B0();
  sub_1C6895934();
  [v4 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895940() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C689594C() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C6895958() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895614();
  sub_1C689E924();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x2Au);

  sub_1C68955C4();
}

void sub_1C68B4F4C()
{
  sub_1C68955B0();
  sub_1C68970B8();
  v2 = [v1 uuid];
  v3 = [v0 multipleInstanceUUID];
  v4 = [v0 identifier];
  v5 = [v0 version];
  sub_1C689520C();
  sub_1C68970C8();
  sub_1C6895928();
  sub_1C6895910(v6, v7, v8, v9, v10);

  sub_1C68955C4();
}

void sub_1C68B5018()
{
  sub_1C68955B0();
  sub_1C68955D8();
  [sub_1C6895074(v4) uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955F0() multipleInstanceUUID];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68955E4() identifier];
  objc_claimAutoreleasedReturnValue();
  v5 = [sub_1C68955FC() version];
  v6 = [*v3 requests];
  [v6 count];
  sub_1C68954C4();
  sub_1C68958F8();
  sub_1C6895608();
  sub_1C6895910(v7, v8, v9, v10, v11);

  sub_1C68955C4();
}

void sub_1C68B5120(void *a1, uint64_t a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 url];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1C6892000, a3, OS_LOG_TYPE_ERROR, "unable to terminate plugin at %@: %@", &v6, 0x16u);
}

void sub_1C68B51D0(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_1C6892000, log, OS_LOG_TYPE_ERROR, "could not create extension point record for %@: %@", &v3, 0x16u);
}

void sub_1C68B5258(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 138412290;
  v6 = v4;
  _os_log_error_impl(&dword_1C6892000, a2, OS_LOG_TYPE_ERROR, "Unexpected class for extension point record: %@", &v5, 0xCu);
}

void sub_1C68B52F4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 40);
  v4 = 134218242;
  v5 = a1;
  v6 = 2112;
  v7 = v3;
  _os_log_error_impl(&dword_1C6892000, log, OS_LOG_TYPE_ERROR, "<PKDiscoveryDriver:%p> error: %@", &v4, 0x16u);
}

void sub_1C68B5438(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  [v8 handleFailureInMethod:*(a1 + 56) object:*a2 file:@"PKHost.m" lineNumber:408 description:{@"plugin %@ activating but discovery map contains %@", *a3, a4}];
}

void sub_1C68B54C4(uint64_t a1, NSObject *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [*(*(*a1 + 8) + 40) uuid];
  v4 = [sub_1C68954E8() multipleInstanceUUID];
  v5 = [sub_1C68954E8() identifier];
  v6 = [sub_1C68954E8() version];
  v7 = 138544386;
  v8 = v3;
  v9 = 2114;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  v13 = 2112;
  v14 = v6;
  v15 = 2048;
  v16 = [sub_1C68954E8() state];
  _os_log_error_impl(&dword_1C6892000, a2, OS_LOG_TYPE_ERROR, "[u %{public}@:m %{public}@] [%@(%@)] purging stale active plugin from state: %lu", &v7, 0x34u);
}

void sub_1C68B55EC(uint64_t a1, uint64_t *a2, id *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = *(a1 + 56);
  v8 = *a2;
  v9 = [*a3 effectiveUUID];
  v10 = [v9 UUIDString];
  [v6 handleFailureInMethod:v7 object:v8 file:@"PKHost.m" lineNumber:423 description:{@"superseding active UUID: %@", v10}];
}

void sub_1C68B5698(uint64_t a1, uint64_t *a2, id *a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = *(a1 + 48);
  v8 = *a2;
  v9 = [*a3 effectiveUUID];
  v10 = [v9 UUIDString];
  [v6 handleFailureInMethod:v7 object:v8 file:@"PKHost.m" lineNumber:438 description:{@"deactivating inactive UUID: %@", v10}];
}

void sub_1C68B5938()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1C68952AC();
  _os_log_error_impl(&dword_1C6892000, v0, OS_LOG_TYPE_ERROR, "%@", v1, 0xCu);
}

void sub_1C68B59C8()
{
  v5 = *MEMORY[0x1E69E9840];
  sub_1C68952AC();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1C6892000, v1, OS_LOG_TYPE_ERROR, "unable to get LSApplicationExtensionRecord for %@: %@", v2, 0x16u);
}

void sub_1C68B5AA4(uint64_t a1, void *a2)
{
  v6 = [a2 path];
  sub_1C6895244();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0x16u);
}

void sub_1C68B5B54(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138543618;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_1C6892000, log, OS_LOG_TYPE_ERROR, "plugin sdk [%{public}@] not registered for platform %u", &v3, 0x12u);
}

void sub_1C68B5BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, void *a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C6895080();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  a14 = *MEMORY[0x1E69E9840];
  v28 = [v26 uuid];
  v29 = [v27 identifier];
  v30 = [v27 version];
  v31 = objc_opt_class();
  v32 = NSStringFromClass(v31);
  sub_1C6895490();
  *(&a10 + 6) = v29;
  HIWORD(a10) = v33;
  a11 = v30;
  LOWORD(a12) = 2114;
  *(&a12 + 2) = v34;
  _os_log_error_impl(&dword_1C6892000, v25, OS_LOG_TYPE_ERROR, "[u %{public}@] [%@(%@)] invalid NSExtensionPointIdentifier: [%{public}@]", &a9, 0x2Au);

  sub_1C68950C4();
}

void sub_1C68B5CD8()
{
  sub_1C68A8C60();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"PKPlugInCore.m" lineNumber:361 description:@"cannot resolve SDK without materialized Info.plist"];
}

void sub_1C68B5DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, void *a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  sub_1C6895080();
  a21 = v22;
  a22 = v23;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  a14 = *MEMORY[0x1E69E9840];
  v30 = [v28 uuid];
  v31 = [v29 identifier];
  v32 = [v29 version];
  v33 = [v27 objectForKeyedSubscript:@"annotations"];
  sub_1C6895490();
  *(&a10 + 6) = v31;
  HIWORD(a10) = v34;
  a11 = v32;
  LOWORD(a12) = 2080;
  *(&a12 + 2) = "[PKPlugInCore updateFromForm:]";
  WORD5(a12) = v34;
  *(&a12 + 12) = v35;
  _os_log_debug_impl(&dword_1C6892000, v25, OS_LOG_TYPE_DEBUG, "[u %{public}@] [%@(%@)] %s got annotation from form: %@", &a9, 0x34u);

  sub_1C68950C4();
}

void sub_1C68B5EB0()
{
  sub_1C68A8C60();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:v1 object:v0 file:@"PKPlugInCore.m" lineNumber:570 description:@"unknown plug-in configuration style"];
}

void sub_1C68B5F20(uint64_t a1)
{
  v1 = objc_opt_class();
  v6 = NSStringFromClass(v1);
  sub_1C6895244();
  _os_log_error_impl(v2, v3, OS_LOG_TYPE_ERROR, v4, v5, 0xCu);
}

void sub_1C68B5FB8()
{
  sub_1C6895080();
  sub_1C6895514();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68A8C48() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68A8C54() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C689568C();
  sub_1C68A8C6C();
  sub_1C6895244();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x2Au);

  sub_1C68950C4();
}

void sub_1C68B6068()
{
  sub_1C68A8C60();
  v2 = [v1 uuid];
  v3 = [v0 identifier];
  [v0 version];
  objc_claimAutoreleasedReturnValue();
  sub_1C68952B8();
  sub_1C6895244();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x20u);
}

void sub_1C68B611C()
{
  sub_1C6895080();
  sub_1C6895514();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68A8C48() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68A8C54() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C689568C();
  sub_1C68A8C6C();
  sub_1C6895244();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x2Au);

  sub_1C68950C4();
}

void sub_1C68B61CC()
{
  sub_1C6895080();
  sub_1C6895514();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68A8C48() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68A8C54() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C689568C();
  sub_1C68A8C6C();
  sub_1C6895244();
  _os_log_fault_impl(v4, v5, OS_LOG_TYPE_FAULT, v6, v7, 0x2Au);

  sub_1C68950C4();
}

void sub_1C68B627C()
{
  sub_1C6895080();
  sub_1C6895514();
  [v2 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68A8C48() identifier];
  objc_claimAutoreleasedReturnValue();
  v7 = [sub_1C68A8C54() version];
  sub_1C6895244();
  _os_log_debug_impl(v3, v4, OS_LOG_TYPE_DEBUG, v5, v6, 0x2Au);

  sub_1C68950C4();
}

void sub_1C68B6358()
{
  sub_1C68A8C60();
  v2 = [v1 uuid];
  v3 = [v0 identifier];
  [v0 version];
  objc_claimAutoreleasedReturnValue();
  sub_1C68952B8();
  sub_1C6895244();
  _os_log_debug_impl(v4, v5, OS_LOG_TYPE_DEBUG, v6, v7, 0x20u);
}

void sub_1C68B640C()
{
  sub_1C6895080();
  sub_1C6895514();
  v2 = [*(v1 + 48) uuid];
  v3 = [v0[6] identifier];
  [v0[6] version];
  objc_claimAutoreleasedReturnValue();
  sub_1C689568C();
  sub_1C68A8C6C();
  sub_1C6895244();
  _os_log_error_impl(v4, v5, OS_LOG_TYPE_ERROR, v6, v7, 0x2Au);

  sub_1C68950C4();
}

void sub_1C68B64CC()
{
  sub_1C6895250();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68AA994() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68AA988() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C68956B8();
  sub_1C68954A8();
  sub_1C68952E4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1C68B6580()
{
  sub_1C6895250();
  v2 = [*(v1 + 32) uuid];
  v3 = [v0[4] identifier];
  [v0[4] version];
  objc_claimAutoreleasedReturnValue();
  sub_1C68956B8();
  sub_1C68952E4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1C68B6644()
{
  sub_1C6895250();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68AA994() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68AA988() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C68956B8();
  sub_1C68952E4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1C68B66FC(void *a1)
{
  v2 = [a1 uuid];
  v3 = [a1 identifier];
  [a1 version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895524();
  sub_1C68952E4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1C68B67B0(void *a1)
{
  v2 = [a1 uuid];
  v3 = [a1 identifier];
  [a1 version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895524();
  sub_1C68952E4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1C68B6864()
{
  sub_1C6895250();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68AA994() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68AA988() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C68956B8();
  sub_1C68954A8();
  sub_1C68952E4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1C68B6918()
{
  sub_1C6895250();
  [v3 uuid];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68AA994() identifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1C68AA988() version];
  objc_claimAutoreleasedReturnValue();
  sub_1C68956B8();
  sub_1C68954A8();
  sub_1C68952E4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x2Au);
}

void sub_1C68B69CC(void *a1)
{
  v2 = [a1 uuid];
  v3 = [a1 identifier];
  [a1 version];
  objc_claimAutoreleasedReturnValue();
  sub_1C6895524();
  sub_1C68952E4();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

void sub_1C68B6A80(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = 0x4000000000000000;
  sub_1C6895550(&dword_1C6892000, a1, a3, "WARNING: Did not receive handshake message from the host after waiting ~%0.0f seconds. THIS MAY BE A SPURIOUS LAUNCH OF THE PLUGIN due to a message to an XPC endpoint other than the main service endpoint, or the CPU is highly contended and this extension or its host is not getting enough CPU time.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1C68B6D6C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "[PKService launchContainingApplicationForPlugInNamed:]";
  sub_1C6895550(&dword_1C6892000, a1, a3, "%s unsupported", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1C68B6DE4(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 personalities];
  sub_1C68952F4();
  _os_log_error_impl(&dword_1C6892000, a2, OS_LOG_TYPE_ERROR, "WARNING! Sole personality requested when nil; THIS MAY BE A SPURIOUS LAUNCH OF THE PLUGIN due to a message to an XPC endpoint other than the main service endpoint; personalities: %@", v4, 0xCu);
}

void sub_1C68B6E70(void *a1, void *a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = [a1 uuid];
  v7 = [a1 identifier];
  v8 = [a1 version];
  v9 = [a2 personalities];
  v10 = 138544130;
  v11 = v6;
  v12 = 2112;
  v13 = v7;
  v14 = 2112;
  v15 = v8;
  v16 = 2112;
  v17 = v9;
  _os_log_error_impl(&dword_1C6892000, a3, OS_LOG_TYPE_ERROR, "[u %{public}@] [%@(%@)] WARNING! Sole personality is ambiguous; this may lead to erratic behavior; personalities: %@", &v10, 0x2Au);
}

void sub_1C68B701C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  sub_1C68956FC();
  sub_1C689556C(&dword_1C6892000, v2, v3, "%@: XPC error talking to pkd: %{public}s", v4, v5, v6, v7);
}

void sub_1C68B70B4()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1C68956FC();
  _os_log_error_impl(&dword_1C6892000, v0, OS_LOG_TYPE_ERROR, "persona missing personaUniqueString: %@", v1, 0xCu);
}

void sub_1C68B7124(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  sub_1C68956FC();
  sub_1C689556C(&dword_1C6892000, v2, v3, "%@: XPC error sending request to pkd: %{public}s", v4, v5, v6, v7);
}

void sub_1C68B71BC()
{
  v2 = *MEMORY[0x1E69E9840];
  sub_1C68956FC();
  _os_log_error_impl(&dword_1C6892000, v0, OS_LOG_TYPE_ERROR, "%@: retrying async request", v1, 0xCu);
}

void sub_1C68B722C(uint64_t a1, uint64_t a2)
{
  *v8 = 138543618;
  *&v8[4] = a1;
  *&v8[12] = 2080;
  *&v8[14] = xpc_strerror();
  sub_1C689570C(&dword_1C6892000, v2, v3, "failed to init PKBundle with path '%{public}@': %s", v4, v5, v6, v7, *v8, *&v8[8], *&v8[16]);
}

void sub_1C68B72BC(void *a1, uint64_t a2)
{
  v3 = [a1 debugDescription];
  *v10 = 138543618;
  *&v10[4] = v3;
  *&v10[12] = 2114;
  *&v10[14] = a2;
  sub_1C689570C(&dword_1C6892000, v4, v5, "unexpectedly succeeded in getting LSApplicationExtensionRecord : %{public}@ when initializing appex bundle at %{public}@ failed", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_1C68B735C(void *a1)
{
  v2 = [a1 path];
  v3 = [a1 _bundle];
  *v10 = 138412546;
  *&v10[4] = v2;
  *&v10[12] = 2112;
  *&v10[14] = v3;
  sub_1C689570C(&dword_1C6892000, v4, v5, "failed to retrieve Info.plist for %@ through %@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_1C68B7410(void *a1, uint64_t a2)
{
  v3 = [a1 path];
  *v10 = 138412546;
  *&v10[4] = v3;
  *&v10[12] = 2112;
  *&v10[14] = a2;
  sub_1C689570C(&dword_1C6892000, v4, v5, "failed to convert Info.plist to dictionary: %@ source=%@", v6, v7, v8, v9, *v10, *&v10[8], *&v10[16]);
}

void sub_1C68B74B0()
{
  __error();
  sub_1C689572C();
  _os_log_error_impl(v0, v1, OS_LOG_TYPE_ERROR, v2, v3, 8u);
}

void sub_1C68B7538(void *a1)
{
  [a1 handle];
  __error();
  sub_1C689572C();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0x12u);
}

void sub_1C68B7600()
{
  sub_1C68954B8(*MEMORY[0x1E69E9840]);
  sub_1C6895308();
  sub_1C68955A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void sub_1C68B7684()
{
  sub_1C68954B8(*MEMORY[0x1E69E9840]);
  sub_1C6895308();
  v3 = 2048;
  v4 = v0;
  _os_log_fault_impl(&dword_1C6892000, v1, OS_LOG_TYPE_FAULT, "<PKManager:%p> hold request for [%@] with flags: 0x%llx returned no hold token", v2, 0x20u);
}

void sub_1C68B7704()
{
  sub_1C6895260();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"PKManager.m" lineNumber:509 description:{@"bad plugin hold token:%@", v0}];
}

void sub_1C68B777C()
{
  sub_1C68954B8(*MEMORY[0x1E69E9840]);
  sub_1C6895738();
  sub_1C68955A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1C68B77F4()
{
  sub_1C6895260();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"PKManager.m" lineNumber:523 description:{@"bad plugin hold token:%@", v0}];
}

void sub_1C68B786C()
{
  sub_1C68954B8(*MEMORY[0x1E69E9840]);
  sub_1C6895738();
  sub_1C68955A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void sub_1C68B78E4()
{
  sub_1C6895260();
  v3 = [MEMORY[0x1E696AAA8] currentHandler];
  [v3 handleFailureInMethod:v2 object:v1 file:@"PKManager.m" lineNumber:538 description:{@"bad plugin hold token:%@", v0}];
}

void sub_1C68B795C()
{
  sub_1C68954B8(*MEMORY[0x1E69E9840]);
  sub_1C6895738();
  sub_1C68955A0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}