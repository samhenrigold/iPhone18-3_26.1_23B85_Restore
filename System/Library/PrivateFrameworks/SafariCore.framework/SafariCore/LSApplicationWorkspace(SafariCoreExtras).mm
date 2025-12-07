@interface LSApplicationWorkspace(SafariCoreExtras)
- (void)safari_setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:()SafariCoreExtras shouldFallBackToSystemHandlerIfNeeded:completionHandler:;
- (void)safari_setDefaultOTPAuthURLHandlerToApplicationWithBundleIdentifier:()SafariCoreExtras shouldFallBackToSystemHandlerIfNeeded:completionHandler:;
- (void)safari_setDefaultURLHandlerForScheme:()SafariCoreExtras toApplicationWithBundleIdentifier:completionHandler:;
@end

@implementation LSApplicationWorkspace(SafariCoreExtras)

- (void)safari_setDefaultURLHandlerForScheme:()SafariCoreExtras toApplicationWithBundleIdentifier:completionHandler:
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12 = WBS_LOG_CHANNEL_PREFIXOther(v10, v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 138412546;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    _os_log_impl(&dword_1B8447000, v12, OS_LOG_TYPE_INFO, "Attempting to set default URL handler for scheme %@ to bundle ID %@", buf, 0x16u);
  }

  v22 = 0;
  v13 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:v9 allowPlaceholder:0 error:&v22];
  v14 = v22;
  v16 = v14;
  if (v13)
  {
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __133__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultURLHandlerForScheme_toApplicationWithBundleIdentifier_completionHandler___block_invoke;
    v18[3] = &unk_1E7CF23A0;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    [self setDefaultURLHandlerForScheme:v19 to:v13 completion:v18];
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXOther(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [LSApplicationWorkspace(SafariCoreExtras) safari_setDefaultURLHandlerForScheme:v9 toApplicationWithBundleIdentifier:v17 completionHandler:v16];
    }

    (*(v10 + 2))(v10, 0, v16);
  }
}

- (void)safari_setDefaultOTPAuthURLHandlerToApplicationWithBundleIdentifier:()SafariCoreExtras shouldFallBackToSystemHandlerIfNeeded:completionHandler:
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __168__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultOTPAuthURLHandlerToApplicationWithBundleIdentifier_shouldFallBackToSystemHandlerIfNeeded_completionHandler___block_invoke;
  v10[3] = &unk_1E7CF23C8;
  v12 = a4;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [self safari_setDefaultURLHandlerForScheme:@"otpauth" toApplicationWithBundleIdentifier:a3 completionHandler:v10];
}

- (void)safari_setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier:()SafariCoreExtras shouldFallBackToSystemHandlerIfNeeded:completionHandler:
{
  v8 = a5;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __177__LSApplicationWorkspace_SafariCoreExtras__safari_setDefaultOTPAuthMigrationURLHandlerToApplicationWithBundleIdentifier_shouldFallBackToSystemHandlerIfNeeded_completionHandler___block_invoke;
  v10[3] = &unk_1E7CF23C8;
  v12 = a4;
  v10[4] = self;
  v11 = v8;
  v9 = v8;
  [self safari_setDefaultURLHandlerForScheme:@"otpauth-migration" toApplicationWithBundleIdentifier:a3 completionHandler:v10];
}

- (void)safari_setDefaultURLHandlerForScheme:()SafariCoreExtras toApplicationWithBundleIdentifier:completionHandler:.cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138412546;
  v8 = a1;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1B8447000, v5, OS_LOG_TYPE_ERROR, "Failed to load application record for bundle ID %@; error=%{public}@", &v7, 0x16u);
}

@end