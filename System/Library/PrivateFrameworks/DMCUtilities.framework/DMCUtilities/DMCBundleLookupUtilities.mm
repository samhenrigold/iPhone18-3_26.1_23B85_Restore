@interface DMCBundleLookupUtilities
+ (id)bundleIDFromAuditToken:(id *)token;
+ (id)teamIDFromAuditToken:(id *)token;
@end

@implementation DMCBundleLookupUtilities

+ (id)bundleIDFromAuditToken:(id *)token
{
  v32 = *MEMORY[0x1E69E9840];
  v30 = 0;
  v4 = *&token->var0[4];
  *buf.val = *token->var0;
  *&buf.val[4] = v4;
  v5 = CPCopyBundleIdentifierAndTeamFromAuditToken();
  if (!v5)
  {
    v14 = *MEMORY[0x1E695E480];
    v15 = *&token->var0[4];
    *buf.val = *token->var0;
    *&buf.val[4] = v15;
    v16 = SecTaskCreateWithAuditToken(v14, &buf);
    if (!v16)
    {
      v25 = *DMCLogObjects(0, v17);
      v8 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        goto LABEL_17;
      }

      LOWORD(buf.val[0]) = 0;
      v10 = "Failed to create SecTask from audit token";
      v11 = v25;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 2;
      goto LABEL_4;
    }

    v18 = v16;
    cf = 0;
    v19 = SecTaskCopySigningIdentifier(v16, &cf);
    v30 = v19;
    v21 = *DMCLogObjects(v19, v20);
    if (v19)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        buf.val[0] = 138543362;
        *&buf.val[1] = v30;
        v22 = "Looked up bundle ID %{public}@ using SecTask";
        v23 = v21;
        v24 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&dword_1B1630000, v23, v24, v22, &buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 138543362;
      *&buf.val[1] = cf;
      v22 = "Failed to look up bundle ID using SecTask with error: %{public}@";
      v23 = v21;
      v24 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    if (cf)
    {
      CFRelease(cf);
    }

    CFRelease(v18);
    goto LABEL_17;
  }

  v7 = *DMCLogObjects(v5, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    buf.val[0] = 138543362;
    *&buf.val[1] = v30;
    v10 = "Looked up bundle ID %{public}@ from audit token using entitlement";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 12;
LABEL_4:
    _os_log_impl(&dword_1B1630000, v11, v12, v10, &buf, v13);
  }

LABEL_17:
  v26 = v30;
  if (!v30)
  {
    v27 = *DMCLogObjects(v8, v9);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.val[0]) = 0;
      _os_log_impl(&dword_1B1630000, v27, OS_LOG_TYPE_ERROR, "Could not look up bundle identifier using audit token", &buf, 2u);
    }
  }

  return v26;
}

+ (id)teamIDFromAuditToken:(id *)token
{
  v29 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v4 = *&token->var0[4];
  *buf.val = *token->var0;
  *&buf.val[4] = v4;
  v5 = CPCopyBundleIdentifierAndTeamFromAuditToken();
  if (!v5)
  {
    v14 = *MEMORY[0x1E695E480];
    v15 = *&token->var0[4];
    *buf.val = *token->var0;
    *&buf.val[4] = v15;
    v16 = SecTaskCreateWithAuditToken(v14, &buf);
    if (!v16)
    {
      v24 = *DMCLogObjects(0, v17);
      v8 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
      if (!v8)
      {
        goto LABEL_15;
      }

      LOWORD(buf.val[0]) = 0;
      v10 = "Failed to create SecTask from audit token";
      v11 = v24;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 2;
      goto LABEL_4;
    }

    v18 = v16;
    v27 = SecTaskCopyTeamIdentifier();
    v20 = *DMCLogObjects(v27, v19);
    if (v27)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        buf.val[0] = 138543362;
        *&buf.val[1] = v27;
        v21 = "Looked up team ID %{public}@ using SecTask";
        v22 = v20;
        v23 = OS_LOG_TYPE_DEBUG;
LABEL_13:
        _os_log_impl(&dword_1B1630000, v22, v23, v21, &buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      buf.val[0] = 138543362;
      *&buf.val[1] = 0;
      v21 = "Failed to look up team ID using SecTask with error: %{public}@";
      v22 = v20;
      v23 = OS_LOG_TYPE_ERROR;
      goto LABEL_13;
    }

    CFRelease(v18);
    goto LABEL_15;
  }

  v7 = *DMCLogObjects(v5, v6);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v8)
  {
    buf.val[0] = 138543362;
    *&buf.val[1] = 0;
    v10 = "Looked up team ID %{public}@ from audit token using entitlement";
    v11 = v7;
    v12 = OS_LOG_TYPE_DEBUG;
    v13 = 12;
LABEL_4:
    _os_log_impl(&dword_1B1630000, v11, v12, v10, &buf, v13);
  }

LABEL_15:
  if (!v27)
  {
    v25 = *DMCLogObjects(v8, v9);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.val[0]) = 0;
      _os_log_impl(&dword_1B1630000, v25, OS_LOG_TYPE_ERROR, "Could not look up team identifier using audit token", &buf, 2u);
    }
  }

  return v27;
}

@end