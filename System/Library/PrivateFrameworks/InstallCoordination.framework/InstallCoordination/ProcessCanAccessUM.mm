@interface ProcessCanAccessUM
@end

@implementation ProcessCanAccessUM

void ___ProcessCanAccessUM_block_invoke()
{
  v47 = *MEMORY[0x1E69E9840];
  v31 = 0;
  v0 = _ClientProcessLookupMachPortName("com.apple.mobile.usermanagerd.xpc", &v31);
  v1 = v31;
  v30 = 0;
  v2 = _ClientProcessLookupMachPortName("com.apple.mobile.keybagd.UserManager.xpc", &v30);
  v3 = v30;
  *error = 0;
  v4 = SecTaskCreateFromSelf(0);
  if (!v4)
  {
    v11 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      ___ProcessCanAccessUM_block_invoke_cold_3();
    }

    v13 = _CreateError("_ProcessHasUMEntitlement", 361, @"IXErrorDomain", 1uLL, 0, 0, @"SecTaskCreateFromSelf returned NULL when attempting to fetch UM entitlement", v12, v29);
    goto LABEL_14;
  }

  v5 = v4;
  v6 = SecTaskCopyValueForEntitlement(v4, @"com.apple.usermanagerd.persona.fetch", error);
  if (!v6)
  {
    v14 = IXGetLoggingHandle(kIXLoggingSubsystem);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      ___ProcessCanAccessUM_block_invoke_cold_2(error);
    }

    v15 = *error;
    v13 = _CreateError("_ProcessHasUMEntitlement", 367, @"IXErrorDomain", 1uLL, *error, 0, @"SecTaskCopyValueForEntitlement returned NULL when attempting to fetch the value for the entitlement com.apple.usermanagerd.persona.fetch in the current process.", v16, v29);

    CFRelease(v5);
LABEL_14:
    v20 = v13;

    v10 = 0;
    v9 = v13;
    goto LABEL_15;
  }

  v7 = v6;
  v8 = IXBooleanValue(v6, 0);

  if (v8)
  {
    CFRelease(v5);
    v9 = 0;
    v10 = 1;
    goto LABEL_15;
  }

  v17 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    ___ProcessCanAccessUM_block_invoke_cold_1();
  }

  v10 = 1;
  v19 = _CreateError("_ProcessHasUMEntitlement", 373, @"IXErrorDomain", 1uLL, 0, 0, @"Client process has a value other than true for the entitlement com.apple.usermanagerd.persona.fetch.", v18, v29);

  CFRelease(v5);
  v13 = 0;
  v9 = 0;
  if (!v19)
  {
    goto LABEL_14;
  }

LABEL_15:
  v21 = v9;
  if (v0)
  {
    _ProcessCanAccessUM_canQueryUM = v2 & v10;
    if (v2 & v10)
    {
      goto LABEL_24;
    }
  }

  else
  {
    _ProcessCanAccessUM_canQueryUM = 0;
  }

  v22 = IXGetLoggingHandle(kIXLoggingSubsystem);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    *error = 136316930;
    *&error[4] = "_ProcessCanAccessUM_block_invoke";
    v33 = 1024;
    if (v0)
    {
      v23 = 89;
    }

    else
    {
      v23 = 78;
    }

    v34 = v23;
    if (v2)
    {
      v27 = 89;
    }

    else
    {
      v27 = 78;
    }

    v35 = 1024;
    if (v10)
    {
      v28 = 89;
    }

    else
    {
      v28 = 78;
    }

    v36 = v27;
    v37 = 1024;
    v38 = v28;
    v39 = 2112;
    v40 = v1;
    v41 = 2112;
    v42 = v3;
    v43 = 2112;
    v44 = v21;
    v45 = 2112;
    v46 = 0;
    _os_log_error_impl(&dword_1DA47A000, v22, OS_LOG_TYPE_ERROR, "%s: This process can't access UM (mach-lookup com.apple.mobile.usermanagerd.xpc: %c, mach-lookup com.apple.mobile.keybagd.UserManager.xpc: %c, entitlement com.apple.usermanagerd.persona.fetch: %c): (%@, %@, %@) : %@", error, 0x46u);
  }

  else if (v0)
  {
    v23 = 89;
  }

  else
  {
    v23 = 78;
  }

  v25 = _CreateError("_ProcessCanAccessUM_block_invoke", 433, @"IXErrorDomain", 1uLL, 0, 0, @"This process can't access UM (mach-lookup com.apple.mobile.usermanagerd.xpc: %c, mach-lookup com.apple.mobile.keybagd.UserManager.xpc: %c, entitlement com.apple.usermanagerd.persona.fetch: %c): (%@, %@, %@)", v24, v23);
  v26 = _ProcessCanAccessUM_error;
  _ProcessCanAccessUM_error = v25;

LABEL_24:
}

void ___ProcessCanAccessUM_block_invoke_cold_1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: Client process has a value other than true for the entitlement com.apple.usermanagerd.persona.fetch. : %@", v2, v3, v4, v5, v6);
}

void ___ProcessCanAccessUM_block_invoke_cold_2(void **a1)
{
  v1 = *a1;
  v8 = 136315394;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v2, v3, "%s: SecTaskCopyValueForEntitlement returned NULL when attempting to fetch the value for the entitlement com.apple.usermanagerd.persona.fetch in the current process. : %@", v4, v5, v6, v7, v8);
}

void ___ProcessCanAccessUM_block_invoke_cold_3()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_1_2(&dword_1DA47A000, v0, v1, "%s: SecTaskCreateFromSelf returned NULL when attempting to fetch UM entitlement : %@", v2, v3, v4, v5, v6);
}

@end