@interface UIKeyboardArbiterClientHandle
@end

@implementation UIKeyboardArbiterClientHandle

void __48___UIKeyboardArbiterClientHandle_didAttachLayer__block_invoke(void *a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D47008];
  v4 = a1[4];
  v5 = a2;
  v6 = [v3 targetWithPid:objc_msgSend(v4 environmentIdentifier:{"processIdentifier"), a1[5]}];
  [v5 setTarget:v6];

  [v5 setInheritingEnvironment:a1[6]];
  v7 = [MEMORY[0x277D46E88] grantWithNamespace:*MEMORY[0x277D77860] sourceEnvironment:a1[6] attributes:0];
  v9[0] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];
  [v5 setAdditionalAttributes:v8];
}

void __44___UIKeyboardArbiterClientHandle_invalidate__block_invoke(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    memset(v12, 0, sizeof(v12));
    v3 = _UIArbiterLog();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v10 = 138412290;
    v11 = v5;
    v7 = _os_log_send_and_compose_impl(v6, 0, v12, 512, &dword_2557BA000, v3, 2, "[%@] Disabled keyboard disablement due to invalidation", &v10, 12);

    v8 = +[_UIKeyboardArbiterDebug sharedInstance];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
    [v8 debugWithMessage:v9];

    if (v7 != v12)
    {
      free(v7);
    }
  }
}

void __61___UIKeyboardArbiterClientHandle_beginAcquiringFocusOnQueue___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    memset(v12, 0, sizeof(v12));
    v3 = _UIArbiterLog();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_ERROR);
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v10 = 138412290;
    v11 = v5;
    v7 = _os_log_send_and_compose_impl(v6, 0, v12, 512, &dword_2557BA000, v3, 16, "[%@] Acquiring focus timer elapsed, clearing acquiring focus state", &v10, 12);

    v8 = +[_UIKeyboardArbiterDebug sharedInstance];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v12];
    [v8 errorWithMessage:v9];

    if (v7 != v12)
    {
      free(v7);
    }

    [WeakRetained clearAcquiringFocus];
  }
}

void __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke(uint64_t a1, int a2)
{
  v48 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v3 = _UIArbiterLog();
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    v5 = *(a1 + 32);
    if (v4)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v14 = 138412290;
    v15 = v5;
    v7 = _os_log_send_and_compose_impl(v6, 0, &v16, 512, &dword_2557BA000, v3, 2, "[%@] took process assertion", &v14, 12);

    v8 = +[_UIKeyboardArbiterDebug sharedInstance];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v16];
    [v8 debugWithMessage:v9];
  }

  else
  {
    v46 = 0uLL;
    v47 = 0uLL;
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    v40 = 0uLL;
    v41 = 0uLL;
    v38 = 0uLL;
    v39 = 0uLL;
    v36 = 0uLL;
    v37 = 0uLL;
    v34 = 0uLL;
    v35 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v30 = 0uLL;
    v31 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v18 = 0uLL;
    v19 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
    v10 = _UIArbiterLog();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
    v12 = *(a1 + 32);
    if (v11)
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    v14 = 138412290;
    v15 = v12;
    v7 = _os_log_send_and_compose_impl(v13, 0, &v16, 512, &dword_2557BA000, v10, 16, "[%@] could not take process assertion", &v14, 12);

    v8 = +[_UIKeyboardArbiterDebug sharedInstance];
    v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:&v16];
    [v8 errorWithMessage:v9];
  }

  if (v7 != &v16)
  {
    free(v7);
  }
}

void __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke_577(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(v17, 0, sizeof(v17));
  v4 = a3;
  v5 = _UIArbiterLog();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v13 = 138412546;
  v14 = v7;
  v15 = 2112;
  v16 = v4;
  v9 = _os_log_send_and_compose_impl(v8, 0, v17, 512, &dword_2557BA000, v5, 16, "[%@] assertion invalidated: %@", &v13, 22);

  v10 = +[_UIKeyboardArbiterDebug sharedInstance];
  v11 = objc_alloc(MEMORY[0x277CCACA8]);

  v12 = [v11 initWithUTF8String:v17];
  [v10 errorWithMessage:v12];

  if (v9 != v17)
  {
    free(v9);
  }
}

void __72___UIKeyboardArbiterClientHandle_takeProcessAssertionOnRemoteWithQueue___block_invoke_582(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(v1 + 128) - 1;
  *(v1 + 128) = v2;
  if (!v2)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 120))
    {
      if (*(v4 + 24))
      {
        memset(v18, 0, sizeof(v18));
        v5 = _UIArbiterLog();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          v6 = 3;
        }

        else
        {
          v6 = 2;
        }

        v7 = *(a1 + 32);
        v8 = *(v7 + 120);
        v14 = 138412546;
        v15 = v7;
        v16 = 2048;
        v17 = v8;
        v9 = _os_log_send_and_compose_impl(v6, 0, v18, 512, &dword_2557BA000, v5, 16, "[%@] timed out with %lu assertions remaining, disconnecting", &v14, 22);

        v10 = +[_UIKeyboardArbiterDebug sharedInstance];
        v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v18];
        [v10 errorWithMessage:v11];

        if (v9 != v18)
        {
          free(v9);
        }

        if (TIGetDisableArbiterConnectionTimeoutValue_onceToken != -1)
        {
          dispatch_once(&TIGetDisableArbiterConnectionTimeoutValue_onceToken, &__block_literal_global_788);
        }

        v12 = [MEMORY[0x277D6F470] sharedPreferencesController];
        v13 = [v12 valueForPreferenceKey:@"DisableArbiterConnectionTimeout"];

        LOBYTE(v12) = [v13 BOOLValue];
        if ((v12 & 1) == 0)
        {
          [*(*(a1 + 32) + 176) invalidate];
        }
      }
    }
  }
}

void __54___UIKeyboardArbiterClientHandle_setAllVisibleFrames___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2[3] activeInputDestinationHandle];

  if (v2 == v3)
  {
    v4 = MEMORY[0x277D75830];
    v6 = [*(*(a1 + 32) + 24) activeInputDestinationHandle];
    if (v6)
    {
      v5 = *(a1 + 40);
    }

    else
    {
      v5 = 0;
    }

    [v4 setAllVisibleFrames:v5];
  }
}

void __56___UIKeyboardArbiterClientHandle_userFirstTapOnKeyboard__block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCACA8];
  v5 = [MEMORY[0x277CBEAA8] date];
  v6 = [*(a1 + 32) bundleIdentifier];
  v7 = [v4 stringWithFormat:@"================ Last detected blank keyboard at %@, firstTapOn: %@ ====================", v5, v6];

  v14 = @"Description";
  v15 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v16[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  [*(*(a1 + 32) + 24) setBlankKeyboardLogs:v9];

  if (v3)
  {
    v10 = [*(*(a1 + 32) + 24) blankKeyboardLogs];
    v11 = [v3 count];
    v12 = v3;
    if (v11 >= 0x33)
    {
      v12 = [v3 subarrayWithRange:{objc_msgSend(v3, "count") - 50, 50}];
    }

    v13 = [v10 arrayByAddingObjectsFromArray:v12];
    [*(*(a1 + 32) + 24) setBlankKeyboardLogs:v13];

    if (v11 >= 0x33)
    {
    }
  }
}

@end