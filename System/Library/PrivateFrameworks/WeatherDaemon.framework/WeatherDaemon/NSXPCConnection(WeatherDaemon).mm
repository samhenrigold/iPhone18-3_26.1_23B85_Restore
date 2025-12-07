@interface NSXPCConnection(WeatherDaemon)
- (id)wd_bundleIdentifier;
- (id)wd_codesigningIdentifier;
- (void)wd_codesigningIdentifier;
@end

@implementation NSXPCConnection(WeatherDaemon)

- (id)wd_bundleIdentifier
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  objc_msgSend_auditToken(self, a2);
  memset(buf, 0, sizeof(buf));
  v3 = MSVBundleIDForAuditToken();
  if (!v3)
  {
    v4 = WDLogForCategory(1uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_1B6020000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to retrieve bundle identifier of the requesting application from the audit_token_t; instead, using bundle identifier.", buf, 0xCu);
    }
  }

  v25 = 0;
  *buf = v26;
  *&buf[16] = v27;
  v5 = [MEMORY[0x1E6963620] bundleRecordForAuditToken:buf error:&v25];
  v6 = v25;
  if (v6)
  {
    v7 = WDLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      msv_description = [v6 msv_description];
      *buf = 138543618;
      *&buf[4] = self;
      *&buf[12] = 2114;
      *&buf[14] = msv_description;
      _os_log_impl(&dword_1B6020000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: Failed to retrieve bundle extension record with error: %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_20;
    }

    v7 = v5;
    containingBundleRecord = [v7 containingBundleRecord];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = containingBundleRecord;
    }

    else
    {
      v11 = WDLogForCategory(1uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = NSStringFromClass(v12);
        v14 = objc_opt_class();
        v15 = NSStringFromClass(v14);
        *buf = 138544386;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v7;
        *&buf[22] = 2114;
        *&buf[24] = v13;
        v29 = 2114;
        v30 = containingBundleRecord;
        v31 = 2114;
        v32 = v15;
        _os_log_impl(&dword_1B6020000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: Requesting application extension %{public}@ (%{public}@) has a containing bundle which is not an application: %{public}@ (%{public}@).", buf, 0x34u);
      }

      v10 = 0;
    }

    bundleIdentifier = [v10 bundleIdentifier];
    if (bundleIdentifier)
    {
      v17 = WDLogForCategory(1uLL);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v24 = NSStringFromClass(v18);
        v19 = objc_opt_class();
        v20 = NSStringFromClass(v19);
        *buf = 138544642;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v7;
        *&buf[22] = 2114;
        *&buf[24] = v24;
        v29 = 2114;
        v30 = bundleIdentifier;
        v31 = 2114;
        v32 = v10;
        v33 = 2114;
        v34 = v20;
        _os_log_impl(&dword_1B6020000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: Client is an application extension: %{public}@ (%{public}@). Using bundle identifier %{public}@ from containing application: %{public}@ (%{public}@).", buf, 0x3Eu);
      }

      v21 = bundleIdentifier;
      v3 = v21;
    }
  }

LABEL_20:
  v22 = v3;

  return v22;
}

- (id)wd_codesigningIdentifier
{
  v2 = *MEMORY[0x1E695E480];
  objc_msgSend_auditToken(self, a2);
  v3 = SecTaskCreateWithAuditToken(v2, &cf);
  if (v3)
  {
    v4 = v3;
    *cf.val = 0;
    v5 = SecTaskCopySigningIdentifier(v3, &cf);
    if (*cf.val)
    {
      v6 = WDLogForCategory(1uLL);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [(NSXPCConnection(WeatherDaemon) *)&cf wd_codesigningIdentifier];
      }

      CFRelease(*cf.val);
    }

    CFRelease(v4);
  }

  else
  {
    v7 = WDLogForCategory(1uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(NSXPCConnection(WeatherDaemon) *)v7 wd_codesigningIdentifier];
    }

    v5 = 0;
  }

  return v5;
}

- (void)wd_codesigningIdentifier
{
  v3 = *MEMORY[0x1E69E9840];
  v1 = 136446210;
  v2 = "[NSXPCConnection(WeatherDaemon) wd_codesigningIdentifier]";
  _os_log_error_impl(&dword_1B6020000, log, OS_LOG_TYPE_ERROR, "could not create task ref in %{public}s", &v1, 0xCu);
}

@end