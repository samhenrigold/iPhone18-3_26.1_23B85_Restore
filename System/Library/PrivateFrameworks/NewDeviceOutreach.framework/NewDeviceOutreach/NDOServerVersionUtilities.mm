@interface NDOServerVersionUtilities
+ (BOOL)isHighServerVersionFeaturesetEnabled;
+ (id)clientConfig;
+ (id)getValidServerVersionCache;
+ (id)readAPSSupportedOverride;
+ (id)readULWebURLOverride;
+ (id)readWebURLOverride;
+ (void)_dictionaryFromURL:(id)l shouldRetry:(BOOL)retry withCompletion:(id)completion;
+ (void)_supportedVersionsForClientAndServer:(unint64_t)server withCompletion:(id)completion;
+ (void)getDecodedParamsForPath:(id)path withCompletion:(id)completion;
+ (void)getValidServerVersionCache;
+ (void)isHighServerVersionFeaturesetEnabled:(id)enabled;
+ (void)isHighServerVersionFeaturesetEnabled:(unint64_t)enabled withCompletion:(id)completion;
+ (void)readAPSSupportedOverride;
+ (void)serverVersionSupported:(id)supported;
@end

@implementation NDOServerVersionUtilities

+ (void)_dictionaryFromURL:(id)l shouldRetry:(BOOL)retry withCompletion:(id)completion
{
  lCopy = l;
  completionCopy = completion;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__2;
  v21[4] = __Block_byref_object_dispose__2;
  v22 = 0;
  if (retry)
  {
    mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sharedSession];
  }

  else
  {
    defaultSessionConfiguration = [MEMORY[0x277CCAD38] defaultSessionConfiguration];
    [defaultSessionConfiguration setRequestCachePolicy:1];
    mEMORY[0x277CCAD30] = [MEMORY[0x277CCAD30] sessionWithConfiguration:defaultSessionConfiguration];
  }

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke;
  v15[3] = &unk_2799763F0;
  v18 = v21;
  v12 = lCopy;
  v16 = v12;
  v13 = completionCopy;
  retryCopy = retry;
  v17 = v13;
  selfCopy = self;
  v14 = [mEMORY[0x277CCAD30] dataTaskWithURL:v12 completionHandler:v15];
  [v14 resume];

  _Block_object_dispose(v21, 8);
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  v7 = v6;
  if (a2)
  {
    v20 = 0;
    v8 = [MEMORY[0x277CCAC58] propertyListWithData:a2 options:0 format:0 error:&v20];
    v9 = v20;
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v8;

    if (v9)
    {
      v13 = _NDOLogSystem(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_1();
      }
    }

    else
    {
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0 && *(a1 + 64) == 1)
      {
        v17 = _NDOLogSystem(isKindOfClass);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_2();
        }

        [*(a1 + 56) _dictionaryFromURL:*(a1 + 32) shouldRetry:0 withCompletion:*(a1 + 40)];
        goto LABEL_19;
      }

      objc_opt_class();
      v18 = objc_opt_isKindOfClass();
      if (v18 & 1) != 0 || (*(a1 + 64))
      {
        v14 = *(*(a1 + 40) + 16);
        goto LABEL_18;
      }

      v19 = _NDOLogSystem(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_3();
      }
    }

    v14 = *(*(a1 + 40) + 16);
LABEL_18:
    v14();
LABEL_19:

    goto LABEL_20;
  }

  v15 = _NDOLogSystem(v6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_4();
  }

  (*(*(a1 + 40) + 16))();
LABEL_20:
}

+ (void)_supportedVersionsForClientAndServer:(unint64_t)server withCompletion:(id)completion
{
  v64 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v58[0] = 0;
  v58[1] = v58;
  v58[2] = 0x3032000000;
  v58[3] = __Block_byref_object_copy__2;
  v58[4] = __Block_byref_object_dispose__2;
  v59 = 0;
  v52 = 0;
  v53 = &v52;
  v54 = 0x3032000000;
  v55 = __Block_byref_object_copy__2;
  v56 = __Block_byref_object_dispose__2;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v57 = [standardUserDefaults objectForKey:@"ServerVersionOverride"];

  v9 = _NDOLogSystem(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    serverCopy = server;
    _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, " Server lookup policy:%ld", buf, 0xCu);
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke;
  aBlock[3] = &unk_279976418;
  v50 = &v52;
  v10 = completionCopy;
  v49 = v10;
  v51 = v58;
  v11 = _Block_copy(aBlock);
  v12 = v11;
  if (!v53[5])
  {
    v16 = +[NDOServerVersionUtilities getValidServerVersionCache];
    if (server == 1)
    {
      objc_storeStrong(v53 + 5, v16);
      if (v53[5])
      {
        v23 = _NDOLogSystem(v22);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v53[5];
          *buf = 138412290;
          serverCopy = v24;
          _os_log_impl(&dword_25BD52000, v23, OS_LOG_TYPE_DEFAULT, "Using Cached Server version: %@", buf, 0xCu);
        }
      }

      else
      {
        v25 = MEMORY[0x277CCABB0];
        standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v27 = [v25 numberWithInteger:{objc_msgSend(standardUserDefaults2, "integerForKey:", @"LowServerVersion"}];
        v28 = v27;
        v29 = &unk_286D6E4E0;
        if (v27)
        {
          v29 = v27;
        }

        v23 = v29;

        v30 = MEMORY[0x277CCABB0];
        standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
        v32 = [v30 numberWithInteger:{objc_msgSend(standardUserDefaults3, "integerForKey:", @"HighServerVersion"}];
        v33 = v32;
        v34 = &unk_286D6E4F8;
        if (v32)
        {
          v34 = v32;
        }

        v35 = v34;

        v60[0] = @"LowServerVersion";
        v60[1] = @"HighServerVersion";
        v61[0] = v23;
        v61[1] = v35;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v61 forKeys:v60 count:2];
        v37 = v53[5];
        v53[5] = v36;

        v39 = _NDOLogSystem(v38);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v53[5];
          *buf = 138412290;
          serverCopy = v40;
          _os_log_impl(&dword_25BD52000, v39, OS_LOG_TYPE_DEFAULT, "Using Client version: %@", buf, 0xCu);
        }
      }

      (v12)[2](v12, v53[5]);
      goto LABEL_25;
    }

    if (server == 2)
    {
      v17 = MEMORY[0x277CBEBC0];
      standardUserDefaults4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v19 = [standardUserDefaults4 objectForKey:@"ServerVersionURL"];
      v20 = [v17 URLWithString:v19];

      v21 = v45;
      v45[0] = MEMORY[0x277D85DD0];
      v45[1] = 3221225472;
      v45[2] = __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_32;
      v45[3] = &unk_279976440;
      v47 = &v52;
      v45[4] = v16;
      v46 = v12;
      [self _dictionaryFromURL:v20 shouldRetry:1 withCompletion:v45];
    }

    else
    {
      if (v53[5] || (objc_storeStrong(v53 + 5, v16), v53[5]))
      {
        (v12[2])(v12);
        goto LABEL_25;
      }

      v41 = MEMORY[0x277CBEBC0];
      standardUserDefaults5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v43 = [standardUserDefaults5 objectForKey:@"ServerVersionURL"];
      v20 = [v41 URLWithString:v43];

      v21 = v44;
      v44[0] = MEMORY[0x277D85DD0];
      v44[1] = 3221225472;
      v44[2] = __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_36;
      v44[3] = &unk_279976378;
      v44[5] = &v52;
      v44[4] = v12;
      [self _dictionaryFromURL:v20 shouldRetry:1 withCompletion:v44];
    }

LABEL_25:
    goto LABEL_26;
  }

  v13 = _NDOLogSystem(v11);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v53[5];
    *buf = 138412290;
    serverCopy = v14;
    _os_log_impl(&dword_25BD52000, v13, OS_LOG_TYPE_DEFAULT, "Using Overridden Server version  %@", buf, 0xCu);
  }

  standardUserDefaults6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults6 setObject:v53[5] forKey:@"ServerVersionCache"];

  (v12)[2](v12, v53[5]);
LABEL_26:

  _Block_object_dispose(&v52, 8);
  _Block_object_dispose(v58, 8);
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke(void *a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), a2);
  v6 = _NDOLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(*(a1[5] + 8) + 40);
    *buf = 138412290;
    v41 = v7;
    _os_log_impl(&dword_25BD52000, v6, OS_LOG_TYPE_DEFAULT, "Server version  %@", buf, 0xCu);
  }

  if (!*(*(a1[5] + 8) + 40))
  {
    v12 = _NDOLogSystem(v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_4();
    }

    goto LABEL_11;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v12 = _NDOLogSystem(isKindOfClass);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_1();
    }

LABEL_11:

    (*(a1[4] + 16))();
    goto LABEL_36;
  }

  v10 = [*(*(a1[5] + 8) + 40) objectForKey:@"LowServerVersion"];
  if (_NSIsNSString())
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v10, "integerValue")}];
  }

  else
  {
    v11 = v10;
  }

  v13 = v11;
  if (!v11)
  {
    v16 = _NDOLogSystem(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_3();
    }

    (*(a1[4] + 16))();
    goto LABEL_32;
  }

  v14 = [*(*(a1[5] + 8) + 40) objectForKey:@"HighServerVersion"];

  if (_NSIsNSString())
  {
    v15 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v14, "integerValue")}];
  }

  else
  {
    v15 = v14;
  }

  v17 = v15;
  if (v15)
  {
    v18 = [MEMORY[0x277CBEB98] setWithObjects:{v13, v15, 0}];
    v19 = *(a1[6] + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;

    v22 = _NDOLogSystem(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = *(*(a1[6] + 8) + 40);
      *buf = 138412290;
      v41 = v23;
      _os_log_impl(&dword_25BD52000, v22, OS_LOG_TYPE_DEFAULT, "Server versions '%@'", buf, 0xCu);
    }

    v24 = MEMORY[0x277CCABB0];
    v25 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v26 = [v24 numberWithInteger:{objc_msgSend(v25, "integerForKey:", @"LowServerVersion"}];
    v27 = v26;
    v28 = &unk_286D6E4E0;
    if (v26)
    {
      v28 = v26;
    }

    v29 = v28;

    v30 = MEMORY[0x277CCABB0];
    v31 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v32 = [v30 numberWithInteger:{objc_msgSend(v31, "integerForKey:", @"HighServerVersion"}];
    v33 = v32;
    v34 = &unk_286D6E4F8;
    if (v32)
    {
      v34 = v32;
    }

    v35 = v34;

    v10 = [MEMORY[0x277CBEB98] setWithObjects:{v29, v35, 0}];
    v36 = _NDOLogSystem(v10);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v10;
      _os_log_impl(&dword_25BD52000, v36, OS_LOG_TYPE_DEFAULT, "Client versions '%@'", buf, 0xCu);
    }

    v37 = [v10 mutableCopy];
    v38 = _NDOLogSystem([v37 intersectSet:*(*(a1[6] + 8) + 40)]);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v37;
      _os_log_impl(&dword_25BD52000, v38, OS_LOG_TYPE_DEFAULT, "clientAndServerSet '%@'", buf, 0xCu);
    }

    (*(a1[4] + 16))();
LABEL_32:

    goto LABEL_36;
  }

  v39 = _NDOLogSystem(0);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_2();
  }

  (*(a1[4] + 16))();
LABEL_36:
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_32(uint64_t a1, void *a2)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v5 = *(*(a1 + 48) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    objc_storeStrong(v6, *(a1 + 32));
    if (!*(*(*(a1 + 48) + 8) + 40))
    {
      v8 = MEMORY[0x277CCABB0];
      v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v10 = [v8 numberWithInteger:{objc_msgSend(v9, "integerForKey:", @"LowServerVersion"}];
      v11 = v10;
      v12 = &unk_286D6E4E0;
      if (v10)
      {
        v12 = v10;
      }

      v13 = v12;

      v14 = MEMORY[0x277CCABB0];
      v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
      v16 = [v14 numberWithInteger:{objc_msgSend(v15, "integerForKey:", @"HighServerVersion"}];
      v17 = v16;
      v18 = &unk_286D6E4F8;
      if (v16)
      {
        v18 = v16;
      }

      v19 = v18;

      v32[0] = @"LowServerVersion";
      v32[1] = @"HighServerVersion";
      v33[0] = v13;
      v33[1] = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
      v21 = *(*(a1 + 48) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v24 = _NDOLogSystem(v23);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = *(*(*(a1 + 48) + 8) + 40);
        v30 = 138412290;
        v31 = v25;
        _os_log_impl(&dword_25BD52000, v24, OS_LOG_TYPE_DEFAULT, "Using Client version: %@", &v30, 0xCu);
      }
    }
  }

  v26 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v26 setObject:*(*(*(a1 + 48) + 8) + 40) forKey:@"ServerVersionCache"];

  v28 = _NDOLogSystem(v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = *(*(*(a1 + 48) + 8) + 40);
    v30 = 138412290;
    v31 = v29;
    _os_log_impl(&dword_25BD52000, v28, OS_LOG_TYPE_DEFAULT, "Caching Server version  %@", &v30, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_36(uint64_t a1, void *a2)
{
  v29[2] = *MEMORY[0x277D85DE8];
  v4 = a2;
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v5 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v5 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:@"ServerVersionCache"];

    v7 = _NDOLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v26 = 138412290;
      v27 = v8;
      _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "Caching Server version  %@", &v26, 0xCu);
    }
  }

  else
  {
    v9 = MEMORY[0x277CCABB0];
    v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v11 = [v9 numberWithInteger:{objc_msgSend(v10, "integerForKey:", @"LowServerVersion"}];
    v12 = v11;
    v13 = &unk_286D6E4E0;
    if (v11)
    {
      v13 = v11;
    }

    v7 = v13;

    v14 = MEMORY[0x277CCABB0];
    v15 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v16 = [v14 numberWithInteger:{objc_msgSend(v15, "integerForKey:", @"HighServerVersion"}];
    v17 = v16;
    v18 = &unk_286D6E4F8;
    if (v16)
    {
      v18 = v16;
    }

    v19 = v18;

    v28[0] = @"LowServerVersion";
    v28[1] = @"HighServerVersion";
    v29[0] = v7;
    v29[1] = v19;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v21 = *(*(a1 + 40) + 8);
    v22 = *(v21 + 40);
    *(v21 + 40) = v20;

    v24 = _NDOLogSystem(v23);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(*(*(a1 + 40) + 8) + 40);
      v26 = 138412290;
      v27 = v25;
      _os_log_impl(&dword_25BD52000, v24, OS_LOG_TYPE_DEFAULT, "Using Client version: %@", &v26, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (id)getValidServerVersionCache
{
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [standardUserDefaults objectForKey:@"ServerVersionCache"];

  if (v3 && (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v6 = _NDOLogSystem(isKindOfClass);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      +[NDOServerVersionUtilities getValidServerVersionCache];
    }

    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 removeObjectForKey:@"ServerVersionCache"];

    v5 = 0;
  }

  else
  {
    v5 = v3;
  }

  return v5;
}

+ (void)serverVersionSupported:(id)supported
{
  supportedCopy = supported;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__NDOServerVersionUtilities_serverVersionSupported___block_invoke;
  v6[3] = &unk_279976468;
  v7 = supportedCopy;
  v5 = supportedCopy;
  [self _supportedVersionsForClientAndServer:2 withCompletion:v6];
}

void __52__NDOServerVersionUtilities_serverVersionSupported___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = _NDOLogSystem(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "Server version supported by client version - '%@'", &v6, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)isHighServerVersionFeaturesetEnabled:(unint64_t)enabled withCompletion:(id)completion
{
  completionCopy = completion;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__NDOServerVersionUtilities_isHighServerVersionFeaturesetEnabled_withCompletion___block_invoke;
  v8[3] = &unk_279976468;
  v9 = completionCopy;
  v7 = completionCopy;
  [self _supportedVersionsForClientAndServer:enabled withCompletion:v8];
}

void __81__NDOServerVersionUtilities_isHighServerVersionFeaturesetEnabled_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 count];
  if (v4)
  {
    v5 = MEMORY[0x277CCABB0];
    v6 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v7 = [v5 numberWithInteger:{objc_msgSend(v6, "integerForKey:", @"HighServerVersion"}];

    v8 = [v3 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  v9 = _NDOLogSystem(v4);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v8)
    {
      v10 = @"YES";
    }

    v11 = 138412290;
    v12 = v10;
    _os_log_impl(&dword_25BD52000, v9, OS_LOG_TYPE_DEFAULT, "High Server version supported - %@", &v11, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

+ (void)isHighServerVersionFeaturesetEnabled:(id)enabled
{
  enabledCopy = enabled;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__NDOServerVersionUtilities_isHighServerVersionFeaturesetEnabled___block_invoke;
  v6[3] = &unk_279976490;
  v7 = enabledCopy;
  v5 = enabledCopy;
  [self isHighServerVersionFeaturesetEnabled:0 withCompletion:v6];
}

+ (BOOL)isHighServerVersionFeaturesetEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __65__NDOServerVersionUtilities_isHighServerVersionFeaturesetEnabled__block_invoke;
  v10[3] = &unk_2799764B8;
  v10[4] = &v11;
  [self _supportedVersionsForClientAndServer:1 withCompletion:v10];
  v2 = [v12[5] count];
  if (v2)
  {
    v3 = MEMORY[0x277CCABB0];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5 = [v3 numberWithInteger:{objc_msgSend(standardUserDefaults, "integerForKey:", @"HighServerVersion"}];

    v6 = [v12[5] containsObject:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = _NDOLogSystem(v2);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v6)
    {
      v8 = @"YES";
    }

    *buf = 138412290;
    v18 = v8;
    _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "High Server version supported - %@", buf, 0xCu);
  }

  _Block_object_dispose(&v11, 8);
  return v6;
}

+ (id)readWebURLOverride
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[NDOServerVersionUtilities readWebURLOverride]";
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"WebFlowURL"];

  return v4;
}

+ (id)readULWebURLOverride
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "+[NDOServerVersionUtilities readULWebURLOverride]";
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"ULWebFlowURL"];

  return v4;
}

+ (id)readAPSSupportedOverride
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "+[NDOServerVersionUtilities readAPSSupportedOverride]";
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v4 = [standardUserDefaults objectForKey:@"isAPSSupported"];

  if (!v4)
  {
    v6 = _NDOLogSystem(v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      +[(NDOServerVersionUtilities *)v6];
    }
  }

  return v4;
}

+ (void)getDecodedParamsForPath:(id)path withCompletion:(id)completion
{
  v36 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  completionCopy = completion;
  v8 = _NDOLogSystem(completionCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [NDOServerVersionUtilities getDecodedParamsForPath:v8 withCompletion:?];
  }

  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__2;
  v30[4] = __Block_byref_object_dispose__2;
  v31 = 0;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v10 = [standardUserDefaults stringForKey:@"UniversalLinkEncodedParams"];

  v11 = dispatch_group_create();
  v12 = v11;
  if (pathCopy && (v11 = [pathCopy length]) != 0 || v10)
  {
    dispatch_group_enter(v12);
    v14 = MEMORY[0x277CBEBC0];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v16 = [standardUserDefaults2 objectForKey:@"ServerVersionURL"];
    v17 = [v14 URLWithString:v16];

    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke;
    v25[3] = &unk_2799764E0;
    v26 = v10;
    v18 = pathCopy;
    v27 = v18;
    v29 = v30;
    v19 = v12;
    v28 = v19;
    [self _dictionaryFromURL:v17 shouldRetry:1 withCompletion:v25];
    v20 = dispatch_get_global_queue(21, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke_2;
    block[3] = &unk_279976508;
    v24 = v30;
    v23 = completionCopy;
    v22 = v18;
    dispatch_group_notify(v19, v20, block);
  }

  else
  {
    v13 = _NDOLogSystem(v11);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v33 = "+[NDOServerVersionUtilities getDecodedParamsForPath:withCompletion:]";
      v34 = 2114;
      v35 = pathCopy;
      _os_log_impl(&dword_25BD52000, v13, OS_LOG_TYPE_DEFAULT, "%{public}s: No valid params found for: %{public}@", buf, 0x16u);
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }

  _Block_object_dispose(v30, 8);
}

void __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v9 = [a2 objectForKey:@"ulmapping"];
  if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v3 = *(a1 + 32);
    if (!v3)
    {
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  v3 = *(a1 + 32);
  if (v3)
  {
LABEL_7:
    v4 = v3;
LABEL_8:
    if ([v4 length])
    {
      v5 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBase64EncodedString:v4 options:0];
      v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v5 encoding:4];
      v7 = *(*(a1 + 56) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    goto LABEL_10;
  }

  v4 = [v9 objectForKey:*(a1 + 40)];
  if (v4)
  {
    goto LABEL_8;
  }

LABEL_10:

LABEL_11:
  dispatch_group_leave(*(a1 + 48));
}

uint64_t __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (v2 && (v2 = [v2 length]) != 0)
  {
    v3 = *(*(a1 + 40) + 16);

    return v3();
  }

  else
  {
    v5 = _NDOLogSystem(v2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke_2_cold_1();
    }

    return (*(*(a1 + 40) + 16))();
  }
}

+ (id)clientConfig
{
  getValidServerVersionCache = [self getValidServerVersionCache];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [getValidServerVersionCache objectForKey:@"clientConfig"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }
  }

  v3 = 0;
LABEL_5:

  return v3;
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __75__NDOServerVersionUtilities__dictionaryFromURL_shouldRetry_withCompletion___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __81__NDOServerVersionUtilities__supportedVersionsForClientAndServer_withCompletion___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)getValidServerVersionCache
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)readAPSSupportedOverride
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136446210;
  v2 = "+[NDOServerVersionUtilities readAPSSupportedOverride]";
  _os_log_debug_impl(&dword_25BD52000, log, OS_LOG_TYPE_DEBUG, "%{public}s: Override isAPSSupported nil", &v1, 0xCu);
}

+ (void)getDecodedParamsForPath:(os_log_t)log withCompletion:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "+[NDOServerVersionUtilities getDecodedParamsForPath:withCompletion:]";
  _os_log_debug_impl(&dword_25BD52000, log, OS_LOG_TYPE_DEBUG, "%s", &v1, 0xCu);
}

void __68__NDOServerVersionUtilities_getDecodedParamsForPath_withCompletion___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_2_0(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end