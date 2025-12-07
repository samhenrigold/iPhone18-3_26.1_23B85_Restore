@interface FPItemOperationLocator(Daemon)
- (id)startAccessingLocator;
- (void)annotateWithPersonaSandboxIfNeeded:()Daemon;
@end

@implementation FPItemOperationLocator(Daemon)

- (id)startAccessingLocator
{
  asFPItem = [self asFPItem];
  fileURL = [asFPItem fileURL];

  if (fileURL && [fileURL startAccessingSecurityScopedResource])
  {
    v3 = MEMORY[0x1E69672A0];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __55__FPItemOperationLocator_Daemon__startAccessingLocator__block_invoke;
    v6[3] = &unk_1E83BE068;
    v7 = fileURL;
    v4 = [v3 tokenWithBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)annotateWithPersonaSandboxIfNeeded:()Daemon
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  asFPItem = [self asFPItem];
  fileURL = [asFPItem fileURL];

  asFPItem2 = [self asFPItem];
  itemID = [asFPItem2 itemID];
  v9 = [v4 domainFromItemID:itemID reason:0];

  if (fileURL)
  {
    mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
    currentPersona = [mEMORY[0x1E69DF068] currentPersona];

    v39 = 0;
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    nsDomain = [v9 nsDomain];
    personaIdentifier = [nsDomain personaIdentifier];
    v15 = personaIdentifier;
    if (userPersonaUniqueString == personaIdentifier)
    {
    }

    else
    {
      nsDomain2 = [v9 nsDomain];
      personaIdentifier2 = [nsDomain2 personaIdentifier];
      v18 = [userPersonaUniqueString isEqualToString:personaIdentifier2];

      if ((v18 & 1) == 0 && voucher_process_can_use_arbitrary_personas())
      {
        v38 = 0;
        v19 = [currentPersona copyCurrentPersonaContextWithError:&v38];
        v20 = v38;
        v21 = v39;
        v39 = v19;

        if (v20)
        {
          v22 = fp_current_or_default_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [(FPItemOperationLocator(Daemon) *)v20 annotateWithPersonaSandboxIfNeeded:v22];
          }
        }

        nsDomain3 = [v9 nsDomain];
        personaIdentifier3 = [nsDomain3 personaIdentifier];
        v25 = [currentPersona generateAndRestorePersonaContextWithPersonaUniqueString:personaIdentifier3];

        if (v25)
        {
          v26 = fp_current_or_default_log();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            nsDomain4 = [v9 nsDomain];
            personaIdentifier4 = [nsDomain4 personaIdentifier];
            *buf = 138412546;
            *&buf[4] = personaIdentifier4;
            v43 = 2112;
            v44 = v25;
            _os_log_error_impl(&dword_1CEFC7000, v26, OS_LOG_TYPE_ERROR, "[ERROR] Can't adopt persona %@: %@", buf, 0x16u);
          }
        }

        goto LABEL_19;
      }
    }

    v25 = 0;
LABEL_19:
    v33 = *MEMORY[0x1E69E9BB0];
    *buf = 0;
    v34 = fileURL;
    v35 = [v34 fp_issueSandboxExtensionOfClass:v33 report:0 error:buf];
    [MEMORY[0x1E6967408] assembleURL:v34 sandbox:v35 physicalURL:0 physicalSandbox:0];

    _FPRestorePersona();
    goto LABEL_20;
  }

  v27 = fp_current_or_default_log();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [(FPItemOperationLocator(Daemon) *)self annotateWithPersonaSandboxIfNeeded:v27];
  }

  if (v9)
  {
    v28 = dispatch_group_create();
    dispatch_group_enter(v28);
    defaultBackend = [v9 defaultBackend];
    asFPItem3 = [self asFPItem];
    itemID2 = [asFPItem3 itemID];
    v32 = +[FPDRequest requestForSelf];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __69__FPItemOperationLocator_Daemon__annotateWithPersonaSandboxIfNeeded___block_invoke;
    v40[3] = &unk_1E83C0978;
    v40[4] = self;
    v41 = v28;
    v25 = v28;
    [defaultBackend URLForItemID:itemID2 creatingPlaceholderIfMissing:1 ignoreAlternateContentsURL:1 forBookmarkResolution:0 request:v32 completionHandler:v40];

    dispatch_group_wait(v25, 0xFFFFFFFFFFFFFFFFLL);
LABEL_20:
  }
}

- (void)annotateWithPersonaSandboxIfNeeded:()Daemon .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] won't restore persona: %@", &v2, 0xCu);
}

- (void)annotateWithPersonaSandboxIfNeeded:()Daemon .cold.2(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 asFPItem];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1CEFC7000, a2, OS_LOG_TYPE_ERROR, "[ERROR] Copied item %@ unexpectedly doesn't have a URL, fetching one", &v4, 0xCu);
}

@end