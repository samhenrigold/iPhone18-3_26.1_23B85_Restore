id SDError(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x29EDCA608];
  v3 = MEMORY[0x29EDB9FA0];
  v4 = a2;
  v5 = [v3 alloc];
  v9 = @"description";
  v10[0] = v4;
  v6 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = [v5 initWithDomain:@"SpotlightDiagnosticErrorDomain" code:a1 userInfo:v6];

  return v7;
}

uint64_t SDIsAppleInternalInstall(uint64_t a1, uint64_t a2)
{
  if (SDIsAppleInternalInstall_onceToken != -1)
  {
    SDIsAppleInternalInstall_cold_1();
  }

  return SDIsAppleInternalInstall_isInternalInstall;
}

void __SDIsAppleInternalInstall_block_invoke()
{
  v1 = MGCopyAnswer();
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v0 = [v1 isEqualToString:@"Internal"];
  }

  else
  {
    v0 = 0;
  }

  SDIsAppleInternalInstall_isInternalInstall = v0;
}

uint64_t SDGetActiveUID()
{
  v0 = getpwnam("mobile");
  if (v0)
  {
    return v0->pw_uid;
  }

  else
  {
    return 501;
  }
}

void sub_29EC16BD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, ...)
{
  va_start(va, a56);
  if (a2 == 1)
  {
    v57 = objc_begin_catch(exception_object);
    v58 = [v57 reason];
    v59 = SDError(-5001, v58);

    v64 = [v57 reason];
    NSLog(&cfstr_Error.isa);

    v61 = SDLogCategoryClient(v60);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = [v57 reason];
      __87__SDCoreSpotlightDiagnosticClient_getStatus_protectionClasses_queue_completionHandler___block_invoke_cold_1(v62, va, v61);
    }

    v63 = *(v56 + 48);
    if (v63)
    {
      (*(v63 + 16))(v63, 0, v59);
    }

    objc_end_catch();
    JUMPOUT(0x29EC16B88);
  }

  _Unwind_Resume(exception_object);
}

id SDLogCategoryClient(uint64_t a1)
{
  if (SDLogCategoryClient_onceToken != -1)
  {
    SDLogCategoryClient_cold_1();
  }

  v2 = SDLogCategoryClient_clientLog;

  return v2;
}

uint64_t __SDLogCategoryClient_block_invoke()
{
  SDLogCategoryClient_clientLog = os_log_create("com.apple.spotlight.diagnostic", "Client");

  return MEMORY[0x2A1C71028]();
}

id SDLogCategoryExtension(uint64_t a1)
{
  if (SDLogCategoryExtension_onceToken != -1)
  {
    SDLogCategoryExtension_cold_1();
  }

  v2 = SDLogCategoryExtension_extensionLog;

  return v2;
}

uint64_t __SDLogCategoryExtension_block_invoke()
{
  SDLogCategoryExtension_extensionLog = os_log_create("com.apple.spotlight.diagnostic", "Extension");

  return MEMORY[0x2A1C71028]();
}

id SDLogCategoryHelper(uint64_t a1)
{
  if (SDLogCategoryHelper_onceToken != -1)
  {
    SDLogCategoryHelper_cold_1();
  }

  v2 = SDLogCategoryHelper_helperLog;

  return v2;
}

uint64_t __SDLogCategoryHelper_block_invoke()
{
  SDLogCategoryHelper_helperLog = os_log_create("com.apple.spotlight.diagnostic", "Helper");

  return MEMORY[0x2A1C71028]();
}

id SDLogCategoryUserHelper(uint64_t a1)
{
  if (SDLogCategoryUserHelper_onceToken != -1)
  {
    SDLogCategoryUserHelper_cold_1();
  }

  v2 = SDLogCategoryUserHelper_userHelperLog;

  return v2;
}

uint64_t __SDLogCategoryUserHelper_block_invoke()
{
  SDLogCategoryUserHelper_userHelperLog = os_log_create("com.apple.spotlight.diagnostic", "UserHelper");

  return MEMORY[0x2A1C71028]();
}