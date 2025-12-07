@interface PNRPhoneNumberResolver
- (PNRPhoneNumberResolver)init;
- (id)_notAPhoneNumberError;
- (id)_notFullyQualifiedError;
- (id)resolvePhoneNumber:(id)number countryCode:(id)code error:(id *)error;
- (void)resolveFullyQualifiedPhoneNumber:(id)number inCountry:(id)country logId:(id)id resultBlock:(id)block;
- (void)resolvePhoneNumbers:(id)numbers queue:(id)queue handler:(id)handler;
@end

@implementation PNRPhoneNumberResolver

- (PNRPhoneNumberResolver)init
{
  v7.receiver = self;
  v7.super_class = PNRPhoneNumberResolver;
  v2 = [(PNRPhoneNumberResolver *)&v7 init];
  if (v2)
  {
    if (init_onceToken != -1)
    {
      [PNRPhoneNumberResolver init];
    }

    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.PhoneNumberResolver.resolve", v3);
    resolveQueue = v2->_resolveQueue;
    v2->_resolveQueue = v4;
  }

  return v2;
}

uint64_t __30__PNRPhoneNumberResolver_init__block_invoke()
{
  _log = os_log_create("com.apple.PhoneNumberResolver", "Resolver");

  return MEMORY[0x2821F96F8]();
}

- (id)_notAPhoneNumberError
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA068];
  v8[0] = @"not a phone number";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v3 errorWithDomain:@"PNRError" code:2 userInfo:v4];

  [(PNRPhoneNumberResolver *)self _recordUsageAnalyticForCountryCode:@"10" success:0];

  return v5;
}

- (id)_notFullyQualifiedError
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v7 = *MEMORY[0x277CCA068];
  v8[0] = @"not fully qualified";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v5 = [v3 errorWithDomain:@"PNRError" code:3 userInfo:v4];

  [(PNRPhoneNumberResolver *)self _recordUsageAnalyticForCountryCode:@"100" success:0];

  return v5;
}

- (void)resolvePhoneNumbers:(id)numbers queue:(id)queue handler:(id)handler
{
  v56 = *MEMORY[0x277D85DE8];
  numbersCopy = numbers;
  queue = queue;
  handlerCopy = handler;
  v35 = objc_alloc_init(PNRPhoneNumberResolutionResultSet);
  v36 = +[PNRUtils _currentCountry];
  group = dispatch_group_create();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = numbersCopy;
  v9 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v9)
  {
    v10 = v9;
    v34 = *v48;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v48 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v47 + 1) + 8 * i);
        v13 = objc_alloc_init(MEMORY[0x277CCAD78]);
        v14 = [v12 objectForKeyedSubscript:@"kGEOPhoneNumberKey"];
        v15 = [v12 objectForKeyedSubscript:@"kGEOPhoneNumberCountryKey"];
        v16 = v15;
        v17 = v36;
        if (v15)
        {
          v17 = v15;
        }

        v18 = v17;

        v19 = _log;
        if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
        {
          *buf = 138543619;
          v52 = v13;
          v53 = 2113;
          v54 = v14;
          _os_log_impl(&dword_25E515000, v19, OS_LOG_TYPE_INFO, "[%{public}@] resolving %{private}@ asynchronously", buf, 0x16u);
        }

        v20 = [PNRUtils _stringByStrippingFormattingAndNotVisiblyAllowable:v14];
        if (![PNRUtils _isValidPhoneNumber:v20])
        {
          _notAPhoneNumberError = [(PNRPhoneNumberResolver *)self _notAPhoneNumberError];
          [(PNRPhoneNumberResolutionResultSet *)v35 setError:_notAPhoneNumberError forPhoneNumber:v14];
          v24 = _log;
          if (!os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          *buf = 138543619;
          v52 = v13;
          v53 = 2113;
          v54 = v14;
          v25 = v24;
          v26 = "[%{public}@] '%{private}@' is not a valid phone number";
          goto LABEL_17;
        }

        if ([v20 hasPrefix:@"+"])
        {
          v21 = [v20 substringFromIndex:1];
          dispatch_group_enter(group);
          resolveQueue = self->_resolveQueue;
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke;
          block[3] = &unk_279A240F0;
          block[4] = self;
          v41 = v21;
          v42 = v18;
          v43 = v13;
          v44 = v35;
          v45 = v14;
          v46 = group;
          _notAPhoneNumberError = v21;
          dispatch_async(resolveQueue, block);

          goto LABEL_18;
        }

        _notAPhoneNumberError = [(PNRPhoneNumberResolver *)self _notFullyQualifiedError];
        [(PNRPhoneNumberResolutionResultSet *)v35 setError:_notAPhoneNumberError forPhoneNumber:v14];
        v27 = _log;
        if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
        {
          *buf = 138543619;
          v52 = v13;
          v53 = 2113;
          v54 = v14;
          v25 = v27;
          v26 = "[%{public}@] '%{private}@' is not a fully qualified phone number";
LABEL_17:
          _os_log_impl(&dword_25E515000, v25, OS_LOG_TYPE_INFO, v26, buf, 0x16u);
        }

LABEL_18:
      }

      v10 = [obj countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v10);
  }

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke_71;
  v37[3] = &unk_279A24118;
  v38 = v35;
  v39 = handlerCopy;
  v28 = v35;
  v29 = handlerCopy;
  dispatch_group_notify(group, queue, v37);
}

void __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke_2;
  v12[3] = &unk_279A240C8;
  v6 = *(a1 + 64);
  v7 = *(a1 + 72);
  v8 = *(a1 + 56);
  v9 = *(a1 + 48);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  *&v11 = v6;
  *(&v11 + 1) = v7;
  v13 = v11;
  v14 = v10;
  v15 = *(a1 + 80);
  [v2 resolveFullyQualifiedPhoneNumber:v3 inCountry:v4 logId:v5 resultBlock:v12];
}

void __60__PNRPhoneNumberResolver_resolvePhoneNumbers_queue_handler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    [*(a1 + 32) setResult:v7 resultDataSource:a3 forPhoneNumber:*(a1 + 40)];
    v10 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 40);
      v11 = *(a1 + 48);
      v13 = *(a1 + 56);
      v20 = 138544131;
      v21 = v11;
      v22 = 2113;
      v23 = v12;
      v24 = 2113;
      v25 = v13;
      v26 = 2113;
      v27 = v7;
      v14 = "[%{public}@] result for '%{private}@/%{private}@' is '%{private}@'";
LABEL_8:
      _os_log_impl(&dword_25E515000, v10, OS_LOG_TYPE_INFO, v14, &v20, 0x2Au);
    }
  }

  else
  {
    if (!v8)
    {
      v15 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA068];
      v29[0] = @"no result";
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v9 = [v15 errorWithDomain:@"PNRError" code:1 userInfo:v16];
    }

    [*(a1 + 32) setError:v9 forPhoneNumber:*(a1 + 40)];
    v10 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v18 = *(a1 + 40);
      v17 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = 138544131;
      v21 = v17;
      v22 = 2113;
      v23 = v18;
      v24 = 2113;
      v25 = v19;
      v26 = 2114;
      v27 = v9;
      v14 = "[%{public}@] no result found for '%{private}@'/'%{private}@' (%{public}@)";
      goto LABEL_8;
    }
  }

  dispatch_group_leave(*(a1 + 64));
}

- (id)resolvePhoneNumber:(id)number countryCode:(id)code error:(id *)error
{
  v29 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  codeCopy = code;
  v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
  v11 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    *buf = 138543619;
    *&buf[4] = v10;
    *&buf[12] = 2113;
    *&buf[14] = numberCopy;
    _os_log_impl(&dword_25E515000, v11, OS_LOG_TYPE_INFO, "[%{public}@] resolving %{private}@ synchronously", buf, 0x16u);
  }

  v12 = [PNRUtils _stringByStrippingFormattingAndNotVisiblyAllowable:numberCopy];
  if (![PNRUtils _isValidPhoneNumber:v12])
  {
    _notAPhoneNumberError = [(PNRPhoneNumberResolver *)self _notAPhoneNumberError];
    v13 = _notAPhoneNumberError;
    if (error)
    {
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  if (([v12 hasPrefix:@"+"] & 1) == 0)
  {
    _notAPhoneNumberError = [(PNRPhoneNumberResolver *)self _notFullyQualifiedError];
    v13 = _notAPhoneNumberError;
    if (error)
    {
LABEL_11:
      v16 = _notAPhoneNumberError;
      v14 = 0;
      *error = v13;
      goto LABEL_13;
    }

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v13 = [v12 substringFromIndex:1];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v26 = __Block_byref_object_copy_;
  v27 = __Block_byref_object_dispose_;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy_;
  v23 = __Block_byref_object_dispose_;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__PNRPhoneNumberResolver_resolvePhoneNumber_countryCode_error___block_invoke;
  v18[3] = &unk_279A24140;
  v18[4] = buf;
  v18[5] = &v19;
  [(PNRPhoneNumberResolver *)self resolveFullyQualifiedPhoneNumber:v13 inCountry:codeCopy logId:v10 resultBlock:v18];
  if (error)
  {
    *error = v20[5];
  }

  v14 = *(*&buf[8] + 40);
  _Block_object_dispose(&v19, 8);

  _Block_object_dispose(buf, 8);
LABEL_13:

  return v14;
}

void __63__PNRPhoneNumberResolver_resolvePhoneNumber_countryCode_error___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;
  v12 = v6;

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v7;
}

- (void)resolveFullyQualifiedPhoneNumber:(id)number inCountry:(id)country logId:(id)id resultBlock:(id)block
{
  v63[1] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  countryCopy = country;
  idCopy = id;
  blockCopy = block;
  v14 = +[PNRResourceManager sharedManager];
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = __Block_byref_object_copy_;
  v60 = __Block_byref_object_dispose_;
  v61 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2020000000;
  v55 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy_;
  v50 = __Block_byref_object_dispose_;
  v51 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy_;
  v44 = __Block_byref_object_dispose_;
  v45 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke;
  v26 = &unk_279A241E0;
  v15 = idCopy;
  v27 = v15;
  v31 = &v46;
  v32 = &v40;
  v16 = numberCopy;
  v28 = v16;
  v17 = v14;
  v29 = v17;
  v18 = countryCopy;
  v30 = v18;
  v33 = &v52;
  v34 = &v36;
  v35 = &v56;
  [v17 lookupCCForPhoneNumber:v16 logId:v15 withResult:&v23];
  if (v57[5])
  {
    v19 = 0;
  }

  else
  {
    v20 = v41[5];
    if (v20)
    {
      v21 = MEMORY[0x277CCA9B8];
      v62 = *MEMORY[0x277CCA7E8];
      v63[0] = v20;
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v63 forKeys:&v62 count:1];
      v19 = [v21 errorWithDomain:@"PNRError" code:1 userInfo:v22];
    }

    else
    {
      v19 = 0;
    }
  }

  [(PNRPhoneNumberResolver *)self _recordUsageAnalyticForCountryCode:v47[5] success:*(v37 + 24), blockCopy, v23, v24, v25, v26];
  blockCopy[2](blockCopy, v57[5], v53[3], v19);

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  _Block_object_dispose(&v46, 8);
  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(&v56, 8);
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    v8 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v9 = *(a1 + 32);
      *buf = 138543618;
      v41 = v9;
      v42 = 2114;
      v43 = v7;
      _os_log_impl(&dword_25E515000, v8, OS_LOG_TYPE_INFO, "[%{public}@] couldn't determine cc (%{public}@)", buf, 0x16u);
    }

    v10 = *(*(a1 + 64) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = @"1000";

    v12 = *(*(a1 + 72) + 8);
    v13 = v7;
    v14 = *(v12 + 40);
    *(v12 + 40) = v13;
  }

  else
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
    v15 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 138543875;
      v41 = v16;
      v42 = 2114;
      v43 = v6;
      v44 = 2113;
      v45 = v17;
      _os_log_impl(&dword_25E515000, v15, OS_LOG_TYPE_INFO, "[%{public}@] determined cc %{public}@ for %{private}@", buf, 0x20u);
    }

    v18 = [*(a1 + 40) substringFromIndex:{objc_msgSend(v6, "length")}];
    v19 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v20 = *(a1 + 32);
      *buf = 138543619;
      v41 = v20;
      v42 = 2113;
      v43 = v18;
      _os_log_impl(&dword_25E515000, v19, OS_LOG_TYPE_INFO, "[%{public}@] now resolving %{private}@", buf, 0x16u);
    }

    v22 = *(a1 + 48);
    v21 = *(a1 + 56);
    v23 = *(a1 + 32);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_76;
    v30[3] = &unk_279A241B8;
    v36 = *(a1 + 80);
    v31 = v23;
    v32 = v18;
    v24 = v6;
    v25 = *(a1 + 72);
    v33 = v24;
    v37 = v25;
    v26 = *(a1 + 48);
    v27 = *(a1 + 88);
    v34 = v26;
    v38 = v27;
    v28 = *(a1 + 40);
    v29 = *(a1 + 96);
    v35 = v28;
    v39 = v29;
    v14 = v18;
    [v22 lookupStringForPhoneNumber:v14 inCC:v24 countryCodeOfDevice:v21 logId:v31 withResult:v30];
  }
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_76(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  v9 = v8;
  *(*(*(a1 + 72) + 8) + 24) = a3;
  if (v7)
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
    v10 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 64);
      *buf = 138543619;
      *&buf[4] = v11;
      *&buf[12] = 2113;
      *&buf[14] = v12;
      _os_log_impl(&dword_25E515000, v10, OS_LOG_TYPE_INFO, "[%{public}@] found result in db for phNo %{private}@", buf, 0x16u);
    }

LABEL_16:
    v26 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v27 = *(a1 + 32);
      v28 = *(a1 + 64);
      *buf = 138543875;
      *&buf[4] = v27;
      *&buf[12] = 2113;
      *&buf[14] = v28;
      *&buf[22] = 2113;
      v50 = v7;
      _os_log_impl(&dword_25E515000, v26, OS_LOG_TYPE_INFO, "[%{public}@] resolved %{private}@ to %{private}@", buf, 0x20u);
    }

    goto LABEL_21;
  }

  if (v8)
  {
    v13 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      v16 = *(a1 + 48);
      *buf = 138544131;
      *&buf[4] = v14;
      *&buf[12] = 2113;
      *&buf[14] = v15;
      *&buf[22] = 2113;
      v50 = v16;
      LOWORD(v51) = 2114;
      *(&v51 + 2) = v9;
      _os_log_impl(&dword_25E515000, v13, OS_LOG_TYPE_INFO, "[%{public}@] lookup of %{private}@ in %{private}@ ended in error (%{public}@)", buf, 0x2Au);
    }

    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a4);
  }

  v17 = _log;
  if (os_log_type_enabled(_log, OS_LOG_TYPE_INFO))
  {
    v18 = *(a1 + 32);
    v19 = *(a1 + 48);
    *buf = 138543618;
    *&buf[4] = v18;
    *&buf[12] = 2114;
    *&buf[14] = v19;
    _os_log_impl(&dword_25E515000, v17, OS_LOG_TYPE_INFO, "[%{public}@] using only cc of %{public}@ for resolution", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v50 = __Block_byref_object_copy_;
  *&v51 = __Block_byref_object_dispose_;
  *(&v51 + 1) = 0;
  if ([*(a1 + 48) isEqualToString:@"1"])
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 32);
    v22 = *(a1 + 40);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_80;
    v46[3] = &unk_279A24168;
    v48[1] = *(a1 + 80);
    v47 = v21;
    v48[0] = *(a1 + 40);
    v48[2] = buf;
    v48[3] = *(a1 + 72);
    [v20 lookupISOCountryCodeFromNANPNumber:v22 logId:v47 withResult:v46];
    v23 = &v47;
    v24 = v48;
  }

  else
  {
    v25 = *(a1 + 48);
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_82;
    v43[3] = &unk_279A24168;
    v45[1] = *(a1 + 80);
    v44 = *(a1 + 32);
    v45[0] = *(a1 + 40);
    v45[2] = buf;
    v45[3] = *(a1 + 72);
    [PNRUtils _countryCodeFromInternationalCode:v25 result:v43];
    v23 = &v44;
    v24 = v45;
  }

  v7 = *(*&buf[8] + 40);
  if (v7)
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy_;
    v41 = __Block_byref_object_dispose_;
    v42 = 0;
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_83;
    v32[3] = &unk_279A24190;
    v34 = *(a1 + 80);
    v33 = *(a1 + 32);
    v35 = buf;
    v36 = &v37;
    [PNRUtils _localizedCountryNameForISOCountryCode:v7 result:v32];
    v7 = v38[5];

    _Block_object_dispose(&v37, 8);
  }

  _Block_object_dispose(buf, 8);

  if (v7)
  {
    goto LABEL_16;
  }

  if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
  {
    __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_76_cold_1();
  }

  v7 = 0;
LABEL_21:
  v29 = *(*(a1 + 96) + 8);
  v30 = *(v29 + 40);
  *(v29 + 40) = v7;
  v31 = v7;
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_80(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = *(a1[6] + 8);
    if (*(v9 + 40))
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v8 domain];
      v12 = [v8 code];
      v13 = *(*(a1[6] + 8) + 40);
      v19 = *MEMORY[0x277CCA7E8];
      v20[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v15 = [v10 initWithDomain:v11 code:v12 userInfo:v14];
      v16 = *(a1[6] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      v18 = v7;
      v11 = *(v9 + 40);
      *(v9 + 40) = v18;
    }

    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_80_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *(*(a1[8] + 8) + 24) = 2;
  }
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_82(void *a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = *(a1[6] + 8);
    if (*(v9 + 40))
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v8 domain];
      v12 = [v8 code];
      v13 = *(*(a1[6] + 8) + 40);
      v19 = *MEMORY[0x277CCA7E8];
      v20[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      v15 = [v10 initWithDomain:v11 code:v12 userInfo:v14];
      v16 = *(a1[6] + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      v18 = v7;
      v11 = *(v9 + 40);
      *(v9 + 40) = v18;
    }

    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_82_cold_1();
    }
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a2);
    *(*(a1[8] + 8) + 24) = 3;
  }
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = *(*(a1 + 40) + 8);
    if (*(v9 + 40))
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v8 domain];
      v12 = [v8 code];
      v13 = *(*(*(a1 + 40) + 8) + 40);
      v20 = *MEMORY[0x277CCA7E8];
      v21[0] = v13;
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v15 = [v10 initWithDomain:v11 code:v12 userInfo:v14];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;
    }

    else
    {
      v18 = v7;
      v11 = *(v9 + 40);
      *(v9 + 40) = v18;
    }

    v19 = _log;
    if (os_log_type_enabled(_log, OS_LOG_TYPE_ERROR))
    {
      __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_83_cold_1(a1, v8, v19);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }
}

id __69__PNRPhoneNumberResolver__recordUsageAnalyticForCountryCode_success___block_invoke(uint64_t a1)
{
  v7[3] = *MEMORY[0x277D85DE8];
  v7[0] = &unk_28703BAC0;
  v6[0] = @"Count";
  v6[1] = @"cc";
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(a1 + 32)];
  v7[1] = v2;
  v6[2] = @"success";
  v3 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 36)];
  v7[2] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:3];

  return v4;
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_76_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  v3 = v0;
  _os_log_error_impl(&dword_25E515000, v1, OS_LOG_TYPE_ERROR, "[%{public}@] didn't resolved %{private}@ : %{public}@", v2, 0x20u);
}

void __87__PNRPhoneNumberResolver_resolveFullyQualifiedPhoneNumber_inCountry_logId_resultBlock___block_invoke_83_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543874;
  *&v3[4] = *(a1 + 32);
  *&v3[12] = 2114;
  *&v3[14] = *(*(*(a1 + 48) + 8) + 40);
  *&v3[22] = 2114;
  OUTLINED_FUNCTION_1_0(&dword_25E515000, a2, a3, "[%{public}@] localized country name lookup failure for country code %{public}@ (%{public}@)", *v3, *&v3[8], *&v3[16], a2);
}

@end