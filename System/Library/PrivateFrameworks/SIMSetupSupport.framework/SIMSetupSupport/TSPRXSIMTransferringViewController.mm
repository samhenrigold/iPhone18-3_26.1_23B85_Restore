@interface TSPRXSIMTransferringViewController
- (TSPRXSIMTransferringViewController)initWithTitle:(id)title subtitle:(id)subtitle otpDetectorNeeded:(BOOL)needed;
- (void)_maybeEnableOneTimeCodeCheck;
- (void)_setupOneTimeCodeDetection;
@end

@implementation TSPRXSIMTransferringViewController

- (TSPRXSIMTransferringViewController)initWithTitle:(id)title subtitle:(id)subtitle otpDetectorNeeded:(BOOL)needed
{
  neededCopy = needed;
  v10.receiver = self;
  v10.super_class = TSPRXSIMTransferringViewController;
  v6 = [(TSIDSSimTransferringViewController *)&v10 initWithTitle:title subtitle:subtitle];
  v7 = v6;
  if (v6)
  {
    if (neededCopy)
    {
      [(TSPRXSIMTransferringViewController *)v6 _maybeEnableOneTimeCodeCheck];
    }

    v8 = v7;
  }

  return v7;
}

- (void)_maybeEnableOneTimeCodeCheck
{
  v3 = objc_alloc(MEMORY[0x277CC37B0]);
  v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
  client = self->_client;
  self->_client = v4;

  objc_initWeak(&location, self);
  v6 = self->_client;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke;
  v7[3] = &unk_279B453B0;
  objc_copyWeak(&v8, &location);
  [(CoreTelephonyClient *)v6 getSubscriptionInfo:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v6)
    {
      obj = _TSLogDomain(WeakRetained);
      if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
      {
        __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke_cold_1(v6, obj);
      }
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      obj = [v5 subscriptions];
      v9 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v22;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v22 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v13 = *(*(&v21 + 1) + 8 * i);
            v14 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
            v27[0] = @"PhoneAccountTransfer";
            v27[1] = @"OneTimeCodeForTransfer";
            v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
            v16 = [v8 client];
            v17 = [v16 copyCarrierBundleValue:v13 keyHierarchy:v15 bundleType:v14 error:0];

            if (v17)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v18 = [v17 BOOLValue];
                if (v18)
                {
                  v19 = _TSLogDomain(v18);
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 136315138;
                    v26 = "[TSPRXSIMTransferringViewController _maybeEnableOneTimeCodeCheck]_block_invoke";
                    _os_log_impl(&dword_262AA8000, v19, OS_LOG_TYPE_DEFAULT, "start monitor OTP @%s", buf, 0xCu);
                  }

                  [v8 _setupOneTimeCodeDetection];
                  goto LABEL_21;
                }
              }
            }
          }

          v10 = [obj countByEnumeratingWithState:&v21 objects:v28 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

LABEL_21:
        v6 = 0;
      }
    }
  }

  else
  {
    obj = _TSLogDomain(0);
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke_cold_2(obj);
    }
  }
}

- (void)_setupOneTimeCodeDetection
{
  objc_initWeak(&location, self);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v3 = getIMOneTimeCodeAcceleratorClass_softClass;
  v15 = getIMOneTimeCodeAcceleratorClass_softClass;
  if (!getIMOneTimeCodeAcceleratorClass_softClass)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __getIMOneTimeCodeAcceleratorClass_block_invoke;
    v11[3] = &unk_279B44778;
    v11[4] = &v12;
    __getIMOneTimeCodeAcceleratorClass_block_invoke(v11);
    v3 = v13[3];
  }

  v4 = v3;
  _Block_object_dispose(&v12, 8);
  v5 = [v3 alloc];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke;
  v8[3] = &unk_279B44388;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v6 = [v5 initWithBlockForUpdates:v8];
  oneTimeCodeAccelerator = self->_oneTimeCodeAccelerator;
  self->_oneTimeCodeAccelerator = v6;

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _TSLogDomain(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = "[TSPRXSIMTransferringViewController _setupOneTimeCodeDetection]_block_invoke";
    _os_log_impl(&dword_262AA8000, v4, OS_LOG_TYPE_DEFAULT, "detect codes: %@ @%s", buf, 0x16u);
  }

  v5 = [v3 firstObject];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v6 = getIMOneTimeCodeKeySymbolLoc_ptr;
  v19 = getIMOneTimeCodeKeySymbolLoc_ptr;
  if (!getIMOneTimeCodeKeySymbolLoc_ptr)
  {
    *buf = MEMORY[0x277D85DD0];
    *&buf[8] = 3221225472;
    *&buf[16] = __getIMOneTimeCodeKeySymbolLoc_block_invoke;
    v21 = &unk_279B44778;
    v22 = &v16;
    v7 = IMCoreLibrary();
    v8 = dlsym(v7, "IMOneTimeCodeKey");
    *(v22[1] + 24) = v8;
    getIMOneTimeCodeKeySymbolLoc_ptr = *(v22[1] + 24);
    v6 = v17[3];
  }

  _Block_object_dispose(&v16, 8);
  if (!v6)
  {
    __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke_cold_1();
    __break(1u);
  }

  v9 = *v6;
  v10 = [v5 objectForKeyedSubscript:v9];

  v12 = _TSLogDomain(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = "[TSPRXSIMTransferringViewController _setupOneTimeCodeDetection]_block_invoke";
    _os_log_impl(&dword_262AA8000, v12, OS_LOG_TYPE_DEFAULT, "OTP : %@ @%s", buf, 0x16u);
  }

  if (v10 && [v10 length])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke_65;
    block[3] = &unk_279B446B0;
    objc_copyWeak(&v15, (a1 + 40));
    block[4] = *(a1 + 32);
    v14 = v10;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v15);
  }
}

void __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke_65(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"PRXCARD_ONE_TIME_CODE_%@" value:&stru_28753DF48 table:@"Localizable"];
  v6 = [v3 stringWithFormat:v5, *(a1 + 40)];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v8 = [WeakRetained placeHolderLabel];
  [v8 setText:v6];

  v9 = objc_loadWeakRetained((a1 + 48));
  v10 = [v9 placeHolderLabel];
  [v10 setBoldSubString:*(a1 + 40)];

  v12 = objc_loadWeakRetained((a1 + 48));
  v11 = [v12 placeHolderLabel];
  [v11 setHidden:0];
}

void __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 138412546;
  v3 = a1;
  v4 = 2080;
  v5 = "[TSPRXSIMTransferringViewController _maybeEnableOneTimeCodeCheck]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, a2, OS_LOG_TYPE_ERROR, "[E]get subscription failed : %@ @%s", &v2, 0x16u);
}

void __66__TSPRXSIMTransferringViewController__maybeEnableOneTimeCodeCheck__block_invoke_cold_2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "[TSPRXSIMTransferringViewController _maybeEnableOneTimeCodeCheck]_block_invoke";
  _os_log_error_impl(&dword_262AA8000, log, OS_LOG_TYPE_ERROR, "[E]Self doesnt exist @%s", &v1, 0xCu);
}

uint64_t __64__TSPRXSIMTransferringViewController__setupOneTimeCodeDetection__block_invoke_cold_1()
{
  v0 = dlerror();
  abort_report_np("%s", v0);
  return __getIMOneTimeCodeAcceleratorClass_block_invoke_cold_1();
}

@end