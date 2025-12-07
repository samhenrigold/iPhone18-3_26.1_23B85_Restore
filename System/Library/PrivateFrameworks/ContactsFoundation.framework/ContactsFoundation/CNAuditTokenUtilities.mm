@interface CNAuditTokenUtilities
+ (id)_bundleIdentifierFromInfoPlistForAuditToken:(id *)token;
+ (id)_bundleIdentifierFromSecTaskForAuditToken:(id *)token;
+ (id)bundleIdentifierForAuditToken:(id)token;
+ (id)os_log;
+ (id)processNameForAuditToken:(id)token;
+ (int)processIdentifierForAuditToken:(id)token;
@end

@implementation CNAuditTokenUtilities

+ (id)os_log
{
  if (os_log_cn_once_token_1_12 != -1)
  {
    +[CNAuditTokenUtilities os_log];
  }

  v3 = os_log_cn_once_object_1_12;

  return v3;
}

uint64_t __31__CNAuditTokenUtilities_os_log__block_invoke()
{
  v0 = os_log_create("com.apple.contacts.foundation", "CNAuditTokenUtilities");
  v1 = os_log_cn_once_object_1_12;
  os_log_cn_once_object_1_12 = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (id)bundleIdentifierForAuditToken:(id)token
{
  tokenCopy = token;
  v5 = tokenCopy;
  if (!tokenCopy)
  {
    v9 = 0;
    goto LABEL_16;
  }

  objc_msgSend_audit_token(tokenCopy);
  v6 = [self _bundleIdentifierFromSecTaskForAuditToken:v15];
  if (off_1EF440728(&__block_literal_global_122, v6))
  {
    os_log = [self os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_DEBUG))
    {
      [(CNAuditTokenUtilities *)v6 bundleIdentifierForAuditToken:os_log];
    }

    v8 = v6;
  }

  else
  {
    objc_msgSend_audit_token(v5);
    v10 = [self _bundleIdentifierFromInfoPlistForAuditToken:v15];

    v11 = off_1EF440728(&__block_literal_global_122, v10);
    os_log2 = [self os_log];
    v13 = os_log2;
    if (!v11)
    {
      if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
      {
        +[CNAuditTokenUtilities bundleIdentifierForAuditToken:];
      }

      v9 = 0;
      goto LABEL_15;
    }

    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_DEBUG))
    {
      [(CNAuditTokenUtilities *)v10 bundleIdentifierForAuditToken:v13];
    }

    v8 = v10;
  }

  v10 = v8;
  v9 = v8;
LABEL_15:

LABEL_16:

  return v9;
}

+ (id)processNameForAuditToken:(id)token
{
  v11 = *MEMORY[0x1E69E9840];
  if (token)
  {
    objc_msgSend_audit_token(token, a2);
    v4 = audit_token_to_pid(&atoken);
    LOBYTE(atoken.val[0]) = 0;
    if (proc_pidpath(v4, &atoken, 0x800u) > 0)
    {
      v5 = strrchr(&atoken, 47);
      if (v5)
      {
        p_atoken = (v5 + 1);
      }

      else
      {
        p_atoken = &atoken;
      }

      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:p_atoken];
      goto LABEL_11;
    }

    os_log = [self os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities processNameForAuditToken:];
    }
  }

  v7 = 0;
LABEL_11:

  return v7;
}

+ (int)processIdentifierForAuditToken:(id)token
{
  if (!token)
  {
    return 0;
  }

  objc_msgSend_audit_token(token, a2);
  return audit_token_to_pid(&v4);
}

+ (id)_bundleIdentifierFromSecTaskForAuditToken:(id *)token
{
  v4 = *&token->var0[4];
  *v21.val = *token->var0;
  *&v21.val[4] = v4;
  v5 = SecTaskCreateWithAuditToken(0, &v21);
  if (!v5)
  {
    os_log = [self os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities _bundleIdentifierFromSecTaskForAuditToken:];
    }

    goto LABEL_7;
  }

  v6 = v5;
  *__error() = 0;
  *v21.val = 0;
  v7 = SecTaskCopySigningIdentifier(v6, &v21);
  if (v7)
  {
    v8 = v7;
    CFRelease(v6);
    goto LABEL_29;
  }

  os_log2 = [self os_log];
  if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
  {
    +[CNAuditTokenUtilities _bundleIdentifierFromSecTaskForAuditToken:];
  }

  v11 = SecTaskCopyValueForEntitlement(v6, @"application-identifier", &v21);
  if (!v11)
  {
    os_log3 = [self os_log];
    if (os_log_type_enabled(os_log3, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities _bundleIdentifierFromSecTaskForAuditToken:];
    }

    CFRelease(v6);
LABEL_7:
    v8 = 0;
    goto LABEL_29;
  }

  v12 = v11;
  if ([v11 length] < 0xB || objc_msgSend(v12, "characterAtIndex:", 10) != 46)
  {
    goto LABEL_27;
  }

  v13 = 0;
  do
  {
    v14 = [v12 characterAtIndex:v13];
    v16 = (v14 - 65) < 0x1A || (v14 - 48) < 0xA;
  }

  while (v16 && v13++ < 9);
  if (!v16 || ([v12 substringWithRange:{11, objc_msgSend(v12, "length") - 11}], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_27:
    v18 = [v12 copy];
  }

  CFRelease(v6);
  v8 = v18;

LABEL_29:

  return v8;
}

+ (id)_bundleIdentifierFromInfoPlistForAuditToken:(id *)token
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = audit_token_to_pid(v16);
  v5 = proc_pidpath(v4, v16, 0x1000u);
  if (v5 <= 0)
  {
    os_log = [self os_log];
    if (os_log_type_enabled(os_log, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities _bundleIdentifierFromInfoPlistForAuditToken:];
    }

    goto LABEL_8;
  }

  os_log = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:v16 length:v5 encoding:4];
  if (access([os_log UTF8String], 4))
  {
    os_log2 = [self os_log];
    if (os_log_type_enabled(os_log2, OS_LOG_TYPE_ERROR))
    {
      +[CNAuditTokenUtilities _bundleIdentifierFromInfoPlistForAuditToken:];
    }

    goto LABEL_8;
  }

  v10 = CFURLCreateWithFileSystemPath(0, os_log, kCFURLPOSIXPathStyle, 0);
  if (!v10)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v11 = v10;
  v12 = _CFBundleCopyBundleURLForExecutableURL();
  if (v12)
  {
    v13 = v12;
    v14 = CFBundleCreate(0, v12);
    if (v14)
    {
      v15 = v14;
      v8 = CFBundleGetIdentifier(v14);
      CFRelease(v15);
    }

    else
    {
      v8 = 0;
    }

    CFRelease(v13);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v11);
LABEL_9:

  return v8;
}

+ (void)bundleIdentifierForAuditToken:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)bundleIdentifierForAuditToken:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Looked up bundle ID %@ from audit token using Info.plist.", &v2, 0xCu);
}

+ (void)bundleIdentifierForAuditToken:(uint64_t)a1 .cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1859F0000, a2, OS_LOG_TYPE_DEBUG, "Looked up bundle ID %@ from audit token using SecTask.", &v2, 0xCu);
}

+ (void)processNameForAuditToken:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_bundleIdentifierFromSecTaskForAuditToken:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)_bundleIdentifierFromSecTaskForAuditToken:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end