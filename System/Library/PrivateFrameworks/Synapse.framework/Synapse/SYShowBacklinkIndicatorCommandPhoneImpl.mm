@interface SYShowBacklinkIndicatorCommandPhoneImpl
- (SYShowBacklinkIndicatorCommandPhoneImpl)initWithDomainIdentifiers:(id)identifiers linkIdentifiers:(id)linkIdentifiers;
- (void)runWithCompletion:(id)completion;
@end

@implementation SYShowBacklinkIndicatorCommandPhoneImpl

- (SYShowBacklinkIndicatorCommandPhoneImpl)initWithDomainIdentifiers:(id)identifiers linkIdentifiers:(id)linkIdentifiers
{
  identifiersCopy = identifiers;
  linkIdentifiersCopy = linkIdentifiers;
  v12.receiver = self;
  v12.super_class = SYShowBacklinkIndicatorCommandPhoneImpl;
  v8 = [(SYShowBacklinkIndicatorCommandPhoneImpl *)&v12 init];
  if (v8)
  {
    v9 = SYMakeUserActivity(@"com.apple.notes.activity.show-backlink", identifiersCopy, linkIdentifiersCopy);
    userActivity = v8->_userActivity;
    v8->_userActivity = v9;
  }

  return v8;
}

- (void)runWithCompletion:(id)completion
{
  v46 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke;
  v35[3] = &unk_27856C208;
  v5 = completionCopy;
  v36 = v5;
  v6 = MEMORY[0x22AA6A360](v35);
  if (SYIsQuickNoteOnPhoneEnabled())
  {
    v34 = 0;
    v7 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.BacklinkIndicator" allowPlaceholder:1 error:&v34];
    v8 = v34;
    if (v8)
    {
      v9 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        userActivity = self->_userActivity;
        *buf = 138412802;
        *&buf[4] = @"com.apple.BacklinkIndicator";
        *&buf[12] = 2112;
        *&buf[14] = userActivity;
        *&buf[22] = 2112;
        v44 = v8;
        _os_log_error_impl(&dword_225901000, v9, OS_LOG_TYPE_ERROR, "Failed to find record for %@ to show backlink indicator for activity: %@, error: %@", buf, 0x20u);
      }

      v6[2](v6);
      goto LABEL_32;
    }

    if ([(NSUserActivity *)self->_userActivity _syIsShowBacklinkIndicatorUserActivity])
    {
LABEL_10:
      v11 = objc_alloc_init(MEMORY[0x277CC1F00]);
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v12 = getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_ptr;
      v40 = getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_ptr;
      if (!getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_block_invoke;
        v44 = &unk_27856B3C8;
        v45 = &v37;
        __getFBSOpenApplicationOptionKeyActivateSuspendedSymbolLoc_block_invoke(buf);
        v12 = v38[3];
      }

      _Block_object_dispose(&v37, 8);
      if (!v12)
      {
        [SYShowBacklinkIndicatorCommandPhoneImpl runWithCompletion:];
      }

      v41 = *v12;
      v42 = MEMORY[0x277CBEC38];
      v13 = MEMORY[0x277CBEAC0];
      v14 = v41;
      v15 = [v13 dictionaryWithObjects:&v42 forKeys:&v41 count:1];

      [v11 setFrontBoardOptions:v15];
      objc_initWeak(buf, self);
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v17 = self->_userActivity;
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke_8;
      v30[3] = &unk_27856C230;
      objc_copyWeak(&v32, buf);
      v31 = v6;
      [defaultWorkspace openUserActivity:v17 usingApplicationRecord:v7 configuration:v11 completionHandler:v30];

      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);

      goto LABEL_32;
    }

    v29 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifier:@"com.apple.BacklinkIndicator"];
    v33 = 0;
    v18 = [MEMORY[0x277D46F48] handleForPredicate:v29 error:&v33];
    v19 = v33;
    if (v19)
    {
      v20 = 1;
    }

    else
    {
      v20 = v18 == 0;
    }

    v21 = v20;
    v28 = v21;
    if (!v20)
    {
      goto LABEL_25;
    }

    v22 = os_log_create("com.apple.synapse", "");
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      [(SYShowBacklinkIndicatorCommandPhoneImpl *)@"com.apple.BacklinkIndicator" runWithCompletion:v19, v22];
    }

    if (v18)
    {
LABEL_25:
      currentState = [v18 currentState];
      isRunning = [currentState isRunning];

      if (isRunning)
      {
        if (!v28)
        {

          goto LABEL_10;
        }
      }

      else
      {
        v25 = os_log_create("com.apple.synapse", "");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          v26 = self->_userActivity;
          *buf = 138412290;
          *&buf[4] = v26;
          _os_log_impl(&dword_225901000, v25, OS_LOG_TYPE_INFO, "Backlink indicator isn't running. Skip request to hide the backlink indicator for activity: %@", buf, 0xCu);
        }
      }
    }

    v6[2](v6);

LABEL_32:
    goto LABEL_33;
  }

  v10 = os_log_create("com.apple.synapse", "");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_225901000, v10, OS_LOG_TYPE_INFO, "Feature Flag is not enabled.", buf, 2u);
  }

  v6[2](v6);
LABEL_33:
}

uint64_t __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke_8(uint64_t a1, int a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v7 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke_8_cold_1(WeakRetained, v5, v7);
      }
    }

    if (a2)
    {
      v8 = os_log_create("com.apple.synapse", "");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = WeakRetained[1];
        v10 = [v9 userInfo];
        v11 = 138412802;
        v12 = @"com.apple.BacklinkIndicator";
        v13 = 2112;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        _os_log_impl(&dword_225901000, v8, OS_LOG_TYPE_INFO, "Successfully invoked %@ to show or hide backlink indicator for activity: %@, userInfo: %@", &v11, 0x20u);
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

- (void)runWithCompletion:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Failed to create handle for process: %@, error: %@", &v3, 0x16u);
}

- (void)runWithCompletion:.cold.2()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"NSString *getFBSOpenApplicationOptionKeyActivateSuspended(void)"];
  [v0 handleFailureInFunction:v1 file:@"SYShowBacklinkIndicatorCommandPhoneImpl.m" lineNumber:26 description:{@"%s", dlerror()}];

  __break(1u);
}

void __61__SYShowBacklinkIndicatorCommandPhoneImpl_runWithCompletion___block_invoke_8_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 8);
  v4 = 138412802;
  v5 = @"com.apple.BacklinkIndicator";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_225901000, log, OS_LOG_TYPE_ERROR, "Failed to invoke %@ to show backlink indicator for activity: %@, error: %@", &v4, 0x20u);
}

@end