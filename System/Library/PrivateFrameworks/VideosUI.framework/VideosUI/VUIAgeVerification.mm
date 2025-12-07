@interface VUIAgeVerification
+ (id)sharedInstance;
- (void)configureAgeVerification:(id)verification;
- (void)performAgeGateVerificationWithRatingValue:(id)value ratingDomain:(id)domain adamId:(id)id resourceType:(id)type canonicalMeta:(id)meta completion:(id)completion;
@end

@implementation VUIAgeVerification

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_8 != -1)
  {
    +[VUIAgeVerification sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_5;

  return v3;
}

void __36__VUIAgeVerification_sharedInstance__block_invoke()
{
  v0 = objc_opt_new();
  v1 = sharedInstance_sharedInstance_5;
  sharedInstance_sharedInstance_5 = v0;
}

- (void)configureAgeVerification:(id)verification
{
  v12 = *MEMORY[0x1E69E9840];
  verificationCopy = verification;
  v5 = VUIDefaultLogObject(verificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [verificationCopy description];
    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::setting preflightConfigDictionary %@", &v10, 0xCu);
  }

  v7 = [verificationCopy vui_numberForKey:@"isAgeVerificationEnabled"];
  -[VUIAgeVerification setIsAgeVerificationEnabled:](self, "setIsAgeVerificationEnabled:", [v7 BOOLValue]);
  v8 = [verificationCopy vui_numberForKey:@"minTvRatingRequiringAgeVerification"];
  if (v8)
  {
    [(VUIAgeVerification *)self setMinTvRatingRequiringAgeVerification:v8];
  }

  v9 = [verificationCopy vui_numberForKey:@"minMovieRatingRequiringAgeVerification"];
  if (v9)
  {
    [(VUIAgeVerification *)self setMinMovieRatingRequiringAgeVerification:v9];
  }
}

- (void)performAgeGateVerificationWithRatingValue:(id)value ratingDomain:(id)domain adamId:(id)id resourceType:(id)type canonicalMeta:(id)meta completion:(id)completion
{
  v76 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  domainCopy = domain;
  idCopy = id;
  *&v17 = COERCE_DOUBLE(type);
  metaCopy = meta;
  completionCopy = completion;
  v19 = VUIDefaultLogObject(completionCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v69 = idCopy;
    v70 = 2112;
    v71 = v17;
    v72 = 2112;
    v73 = valueCopy;
    v74 = 2112;
    v75 = domainCopy;
    _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::Checking content with rating:%@ for ratingDomain:%@ adamId:%@ resourceType:%@", buf, 0x2Au);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  notificationToken = [(VUIAgeVerification *)self notificationToken];
  [defaultCenter removeObserver:notificationToken];

  LOBYTE(notificationToken) = [domainCopy isEqualToString:*MEMORY[0x1E69D5B18]];
  intValue = [valueCopy intValue];
  if (notificationToken)
  {
    [(VUIAgeVerification *)self minTvRatingRequiringAgeVerification];
  }

  else
  {
    [(VUIAgeVerification *)self minMovieRatingRequiringAgeVerification];
  }
  v23 = ;
  intValue2 = [v23 intValue];

  if (valueCopy && intValue >= intValue2)
  {
    v55 = metaCopy;
    activeAccount = [MEMORY[0x1E69D5920] activeAccount];
    v26 = [activeAccount ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C498]];
    [v26 doubleValue];
    v28 = v27;

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSince1970];
    v31 = v30;

    v33 = VUIDefaultLogObject(v32);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v69 = v31;
      v70 = 2048;
      *&v71 = v28 / 1000.0;
      _os_log_impl(&dword_1E323F000, v33, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::Content is restricted - checking if user needs age verification. Timestamp = %f , AMSAccountFlagAgeVerificationExpiration = %f", buf, 0x16u);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke;
    aBlock[3] = &unk_1E872E9F0;
    v63 = completionCopy;
    v34 = _Block_copy(aBlock);
    vui_defaultBag = [MEMORY[0x1E698C7D8] vui_defaultBag];
    v35 = MEMORY[0x1E695DF90];
    v36 = &stru_1F5DB25C0;
    v66[0] = VUIAgeVerificationAdamId;
    v66[1] = VUIAgeVerificationResourceType;
    v53 = idCopy;
    if (idCopy)
    {
      v37 = idCopy;
    }

    else
    {
      v37 = &stru_1F5DB25C0;
    }

    if (*&v17 != 0.0)
    {
      v36 = v17;
    }

    v67[0] = v37;
    v67[1] = v36;
    v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
    v39 = [v35 dictionaryWithDictionary:v38];

    if (v55)
    {
      [v39 addEntriesFromDictionary:?];
    }

    v54 = domainCopy;
    v52 = v17;
    if ([MEMORY[0x1E69DF6F0] isTV])
    {
      v40 = 0;
    }

    else
    {
      v64 = VUIAgeVerificationClientFields;
      v65 = v39;
      v40 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v65 forKeys:&v64 count:1];
    }

    v43 = objc_alloc(MEMORY[0x1E698CC48]);
    v44 = +[VUIPreflightManager defaultPreflightManager];
    presentingController = [v44 presentingController];
    v46 = [v43 initWithAccount:activeAccount bag:vui_defaultBag options:v40 viewController:presentingController];

    isVerificationNeeded = [v46 isVerificationNeeded];
    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4;
    v57[3] = &unk_1E8730950;
    selfCopy = self;
    v60 = v34;
    v58 = v46;
    v61 = v31;
    v48 = v46;
    v49 = v34;
    [isVerificationNeeded addFinishBlock:v57];

    idCopy = v53;
    domainCopy = v54;
    v17 = v52;
    metaCopy = v55;
    v42 = completionCopy;
  }

  else
  {
    v41 = VUIDefaultLogObject(v25);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v41, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::content not restricted", buf, 2u);
    }

    v42 = completionCopy;
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke(uint64_t a1, char a2, int a3)
{
  if (a3)
  {
    v5 = dispatch_time(0, 1000000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_2;
    block[3] = &unk_1E872FFC0;
    v6 = &v13;
    v13 = *(a1 + 32);
    v14 = a2;
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v8 = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_3;
    v9 = &unk_1E872FFC0;
    v6 = &v10;
    v10 = *(a1 + 32);
    v11 = a2;
    if ([MEMORY[0x1E696AF00] isMainThread])
    {
      v8(v7);
    }

    else
    {
      dispatch_async(MEMORY[0x1E69E96A0], v7);
    }
  }
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = VUIDefaultLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v15 = [a2 requiredType];
    v16 = VUIDefaultLogObject(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v32 = v15;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::AMSUIAgeVerificationTask isVerificationNeeded: resultType=%lu", buf, 0xCu);
    }

    if (v15)
    {
      if (v15 == 1)
      {
        v14 = *(*(a1 + 48) + 16);
        goto LABEL_6;
      }

      if ((v15 & 0xFFFFFFFFFFFFFFFELL) == 2)
      {
        v18 = [*(a1 + 32) performTask];
        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 3221225472;
        v27[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30;
        v27[3] = &unk_1E8730928;
        v19 = *(a1 + 48);
        v27[4] = *(a1 + 40);
        v28 = v19;
        v29 = *(a1 + 56);
        v30 = v15;
        [v18 addFinishBlock:v27];

        goto LABEL_7;
      }

      v20 = VUIDefaultLogObject(v17);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4_cold_2(v15, v20, v21, v22, v23, v24, v25, v26);
      }
    }
  }

  v14 = *(*(a1 + 48) + 16);
LABEL_6:
  v14();
LABEL_7:
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30(void *a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = VUIDefaultLogObject(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }

LABEL_5:
    v14 = *(a1[5] + 16);
LABEL_6:
    v14();
    goto LABEL_7;
  }

  v15 = [a2 successType];
  v16 = VUIDefaultLogObject(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v34 = v15;
    _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::AMSUIAgeVerificationTask performTask: successType=%lu", buf, 0xCu);
  }

  if (!v15)
  {
    goto LABEL_5;
  }

  if ((v15 & 0xFFFFFFFFFFFFFFFDLL) == 1)
  {
    v14 = *(a1[5] + 16);
    goto LABEL_6;
  }

  v18 = VUIDefaultLogObject(v17);
  v19 = v18;
  if (v15 != 2)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30_cold_2(a1, v19, v26, v27, v28, v29, v30, v31);
    }

    goto LABEL_5;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v19, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::starting verification flow, adding observer for ACDAccountStoreDidChangeNotification", buf, 2u);
  }

  (*(a1[5] + 16))();
  v20 = [MEMORY[0x1E696AD88] defaultCenter];
  v21 = *MEMORY[0x1E6959968];
  v22 = [MEMORY[0x1E696ADC8] mainQueue];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_32;
  v32[3] = &unk_1E8730900;
  v32[5] = a1[6];
  v32[4] = a1[4];
  v23 = [v20 addObserverForName:v21 object:0 queue:v22 usingBlock:v32];
  v24 = a1[4];
  v25 = *(v24 + 32);
  *(v24 + 32) = v23;

LABEL_7:
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_32(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69D5920] activeAccount];
  v3 = [v2 ams_accountFlagValueForAccountFlag:*MEMORY[0x1E698C498]];
  [v3 doubleValue];
  v5 = v4 / 1000.0;

  v7 = VUIDefaultLogObject(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 134217984;
    v13 = v5;
    _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::received ACDAccountStoreDidChangeNotification during age verification - rechecking AMSAccountFlagAgeVerificationExpiration=%f", &v12, 0xCu);
  }

  v8 = *(a1 + 40);
  v10 = VUIDefaultLogObject(v9);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5 <= v8)
  {
    if (v11)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::user is still not age-verified", &v12, 2u);
    }
  }

  else
  {
    if (v11)
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIAgeVerificationManager::user is now age-verified. Use will need to retry playback", &v12, 2u);
    }

    v10 = [MEMORY[0x1E696AD88] defaultCenter];
    [v10 removeObserver:*(*(a1 + 32) + 32)];
  }
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1E323F000, a2, a3, "VUIAgeVerificationManager::Error returned in AMSUIAgeVerificationTask isVerificationNeeded: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_4_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1E323F000, a2, a3, "VUIAgeVerificationManager::Unknown resultType returned %lul", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0_0(&dword_1E323F000, a2, a3, "VUIAgeVerificationManager::AMSUIAgeVerificationTask performTask: error= %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __122__VUIAgeVerification_performAgeGateVerificationWithRatingValue_ratingDomain_adamId_resourceType_canonicalMeta_completion___block_invoke_30_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 134217984;
  *(&v8 + 4) = *(a1 + 56);
  OUTLINED_FUNCTION_0_0(&dword_1E323F000, a2, a3, "VUIAgeVerificationManager::Unknown successType returned %lul", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end