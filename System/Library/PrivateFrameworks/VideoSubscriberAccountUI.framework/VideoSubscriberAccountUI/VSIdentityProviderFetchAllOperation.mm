@interface VSIdentityProviderFetchAllOperation
- (VSIdentityProviderFetchAllOperation)init;
- (void)executionDidBegin;
@end

@implementation VSIdentityProviderFetchAllOperation

- (VSIdentityProviderFetchAllOperation)init
{
  v10.receiver = self;
  v10.super_class = VSIdentityProviderFetchAllOperation;
  v2 = [(VSIdentityProviderFetchAllOperation *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    subqueue = v2->_subqueue;
    v2->_subqueue = v3;

    [(NSOperationQueue *)v2->_subqueue setName:@"VSIdentityProviderFetchAllOperation"];
    v5 = objc_alloc_init(MEMORY[0x277CE2298]);
    v6 = v2->_result;
    v2->_result = v5;

    v7 = objc_alloc_init(MEMORY[0x277CE2238]);
    currentDevice = v2->_currentDevice;
    v2->_currentDevice = v7;
  }

  return v2;
}

- (void)executionDidBegin
{
  v3 = objc_alloc_init(MEMORY[0x277CE2228]);
  v4 = objc_alloc_init(VSIdentityProviderFetchAllFromStoreOperation);
  auditToken = [(VSIdentityProviderFetchAllOperation *)self auditToken];
  [(VSIdentityProviderFetchAllFromStoreOperation *)v4 setAuditToken:auditToken];

  objc_initWeak(&location, self);
  v6 = MEMORY[0x277CCA8C8];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke;
  v11[3] = &unk_279E19548;
  v7 = v4;
  v12 = v7;
  objc_copyWeak(&v15, &location);
  v8 = v3;
  v13 = v8;
  selfCopy = self;
  v9 = [v6 blockOperationWithBlock:v11];
  [v9 addDependency:v8];
  [v9 addDependency:v7];
  subqueue = [(VSIdentityProviderFetchAllOperation *)self subqueue];
  [subqueue addOperation:v7];
  [subqueue addOperation:v8];
  [subqueue addOperation:v9];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke(id *a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [a1[4] result];
  v4 = [v3 forceUnwrapObject];
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_2;
  v51[3] = &unk_279E194A8;
  objc_copyWeak(&v53, a1 + 7);
  v5 = v2;
  v52 = v5;
  v49[0] = MEMORY[0x277D85DD0];
  v49[1] = 3221225472;
  v49[2] = __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_3;
  v49[3] = &unk_279E194D0;
  objc_copyWeak(&v50, a1 + 7);
  [v4 unwrapObject:v51 error:v49];

  v6 = [a1[5] result];
  v7 = [v6 forceUnwrapObject];
  v46[0] = MEMORY[0x277D85DD0];
  v46[1] = 3221225472;
  v46[2] = __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_10;
  v46[3] = &unk_279E194A8;
  objc_copyWeak(&v48, a1 + 7);
  v25 = v5;
  v47 = v25;
  [v7 unwrapObject:v46 error:&__block_literal_global_1];

  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = __Block_byref_object_copy__0;
  v44 = __Block_byref_object_dispose__0;
  v45 = 0;
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__0;
  v38 = __Block_byref_object_dispose__0;
  v39 = 0;
  v8 = objc_alloc_init(MEMORY[0x277CE22D8]);
  v9 = [a1[6] currentDevice];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_30;
  v30[3] = &unk_279E19520;
  v32 = &v40;
  v33 = &v34;
  v10 = v8;
  v31 = v10;
  [v9 fetchSetTopBoxProfileWithCompletion:v30];

  [v10 wait];
  if (v41[5])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = v25;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v58 count:16];
    if (v12)
    {
      v13 = *v27;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v27 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v26 + 1) + 8 * i);
          if (([v15 isApplication] & 1) == 0)
          {
            v16 = [v15 uniqueID];
            v17 = [v16 forceUnwrapObject];
            v18 = [v17 isEqualToString:v41[5]];

            if (v18)
            {
              v19 = VSDefaultLogObject();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                v20 = [v15 uniqueID];
                *buf = 138412546;
                v55 = v20;
                v56 = 2048;
                v57 = -10;
                _os_log_impl(&dword_270DD4000, v19, OS_LOG_TYPE_DEFAULT, "Identity provider with ID %@ is STB vendor, setting rank override %ld", buf, 0x16u);
              }

              [v15 setRankForSorting:&unk_2880D26B0];
              if ([v35[5] length])
              {
                [v15 setUserToken:v35[5]];
              }

              v21 = VSDefaultLogObject();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                v22 = [v15 providerID];
                *buf = 138412290;
                v55 = v22;
                _os_log_impl(&dword_270DD4000, v21, OS_LOG_TYPE_DEFAULT, "VSIdentityProviderFetchAllOperation: Found STB provider %@", buf, 0xCu);
              }

              goto LABEL_19;
            }
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v26 objects:v58 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_19:
  }

  v23 = VSDefaultLogObject();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
    *buf = 138412290;
    v55 = v24;
    _os_log_impl(&dword_270DD4000, v23, OS_LOG_TYPE_DEFAULT, "Will finish with %@ providers", buf, 0xCu);
  }

  [a1[6] finishExecutionIfPossible];
  _Block_object_dispose(&v34, 8);

  _Block_object_dispose(&v40, 8);
  objc_destroyWeak(&v48);
  objc_destroyWeak(&v50);

  objc_destroyWeak(&v53);
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [*(a1 + 32) addObjectsFromArray:v3];

  v4 = MEMORY[0x277CE2298];
  v5 = [MEMORY[0x277CE2250] failableWithObject:*(a1 + 32)];
  v6 = [v4 optionalWithObject:v5];
  [WeakRetained setResult:v6];
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = VSErrorLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_3_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = MEMORY[0x277CE2298];
  v13 = [MEMORY[0x277CE2250] failableWithError:v3];
  v14 = [v12 optionalWithObject:v13];
  [WeakRetained setResult:v14];
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_10(uint64_t a1, void *a2)
{
  *(&v113[2] + 4) = *MEMORY[0x277D85DE8];
  v66 = a2;
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v66, "count")}];
    *buf = 138412290;
    v113[0] = v4;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Did obtain %@ developer providers", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = [WeakRetained applicationAccountProviders];
  v64 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = [WeakRetained applicationAccountProviders];

  v60 = WeakRetained;
  v61 = a1;
  v59 = v6;
  if (v7)
  {
    if (!v6)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The applicationProvidersOrNil parameter must not be nil."];
    }

    v8 = v6;
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    obj = v8;
    v70 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
    if (v70)
    {
      v69 = *v100;
      do
      {
        v10 = 0;
        do
        {
          if (*v100 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v72 = v10;
          v11 = *(*(&v99 + 1) + 8 * v10);
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v12 = v66;
          v13 = [v12 countByEnumeratingWithState:&v95 objects:v110 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v96;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v96 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v95 + 1) + 8 * i);
                v18 = [v11 identifier];
                v19 = [v17 providerID];
                v20 = [v19 forceUnwrapObject];
                v21 = [v18 isEqualToString:v20];

                if (v21)
                {
                  v22 = VSErrorLogObject();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_10_cold_1(buf, v11, v113, v22);
                  }

                  [v9 addObject:v11];
                }
              }

              v14 = [v12 countByEnumeratingWithState:&v95 objects:v110 count:16];
            }

            while (v14);
          }

          v10 = v72 + 1;
        }

        while (v72 + 1 != v70);
        v70 = [obj countByEnumeratingWithState:&v99 objects:v111 count:16];
      }

      while (v70);
    }

    v23 = [obj mutableCopy];
    [v23 removeObjectsInArray:v9];

    v64 = v23;
    a1 = v61;
  }

  v71 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v73 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v91 = 0u;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v62 = *(a1 + 32);
  v65 = [v62 countByEnumeratingWithState:&v91 objects:v109 count:16];
  if (v65)
  {
    v63 = *v92;
    do
    {
      v24 = 0;
      do
      {
        if (*v92 != v63)
        {
          objc_enumerationMutation(v62);
        }

        obja = v24;
        v25 = *(*(&v91 + 1) + 8 * v24);
        v26 = [v25 providerID];
        v27 = [v26 forceUnwrapObject];

        v89 = 0u;
        v90 = 0u;
        v87 = 0u;
        v88 = 0u;
        v28 = v66;
        v29 = [v28 countByEnumeratingWithState:&v87 objects:v108 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v88;
          do
          {
            for (j = 0; j != v30; ++j)
            {
              if (*v88 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v87 + 1) + 8 * j);
              v34 = [v33 providerID];
              v83[0] = MEMORY[0x277D85DD0];
              v83[1] = 3221225472;
              v83[2] = __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_16;
              v83[3] = &unk_279E194F8;
              v84 = v27;
              v85 = v73;
              v86 = v25;
              v82[0] = MEMORY[0x277D85DD0];
              v82[1] = 3221225472;
              v82[2] = __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_18;
              v82[3] = &unk_279E19290;
              v82[4] = v33;
              [v34 conditionallyUnwrapObject:v83 otherwise:v82];
            }

            v30 = [v28 countByEnumeratingWithState:&v87 objects:v108 count:16];
          }

          while (v30);
        }

        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v35 = v64;
        v36 = [v35 countByEnumeratingWithState:&v78 objects:v107 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v79;
          do
          {
            for (k = 0; k != v37; ++k)
            {
              if (*v79 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v40 = *(*(&v78 + 1) + 8 * k);
              v41 = [v40 identifier];
              v42 = [v27 isEqualToString:v41];

              if (v42)
              {
                v43 = VSErrorLogObject();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  *v105 = 138412290;
                  v106 = v27;
                  _os_log_error_impl(&dword_270DD4000, v43, OS_LOG_TYPE_ERROR, "Application Provider %@ conflicts with production provider.  Using production provider instead.", v105, 0xCu);
                }

                [v71 addObject:v40];
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v78 objects:v107 count:16];
          }

          while (v37);
        }

        v24 = obja + 1;
      }

      while (obja + 1 != v65);
      v65 = [v62 countByEnumeratingWithState:&v91 objects:v109 count:16];
    }

    while (v65);
  }

  v44 = [v64 mutableCopy];
  [v44 removeObjectsInArray:v71];
  [*(v61 + 32) removeObjectsInArray:v73];
  [*(v61 + 32) addObjectsFromArray:v66];
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v45 = [v44 copy];
  v46 = [v45 countByEnumeratingWithState:&v74 objects:v104 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v75;
    do
    {
      for (m = 0; m != v47; ++m)
      {
        if (*v75 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = [objc_alloc(MEMORY[0x277CE2260]) initWithApplicationProvider:*(*(&v74 + 1) + 8 * m)];
        [*(v61 + 32) addObject:v50];
      }

      v47 = [v45 countByEnumeratingWithState:&v74 objects:v104 count:16];
    }

    while (v47);
  }

  v51 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"nameForSorting" ascending:1 selector:sel_localizedCaseInsensitiveCompare_];
  v52 = *(v61 + 32);
  v103 = v51;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
  [v52 sortUsingDescriptors:v53];

  v54 = VSDefaultLogObject();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v55 = [*(v61 + 32) count];
    *v105 = 134217984;
    v106 = v55;
    _os_log_impl(&dword_270DD4000, v54, OS_LOG_TYPE_DEFAULT, "Obtained %ld all providers", v105, 0xCu);
  }

  v56 = MEMORY[0x277CE2298];
  v57 = [MEMORY[0x277CE2250] failableWithObject:*(v61 + 32)];
  v58 = [v56 optionalWithObject:v57];
  [v60 setResult:v58];
}

void *__56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_16(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) isEqualToString:a2];
  if (result)
  {
    v4 = VSDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Dev provider conflicts with store", v5, 2u);
    }

    return [*(a1 + 40) addObject:*(a1 + 48)];
  }

  return result;
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = VSErrorLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_18_cold_1(a1, v6, v7, v8, v9, v10, v11, v12);
  }
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_28(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_28_cold_1(v2, v3, v4, v5, v6, v7, v8, v9);
  }
}

uint64_t __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_30(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 providerID];
  v5 = *(a1[5] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 userToken];

  v8 = *(a1[6] + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  v10 = a1[4];

  return [v10 signal];
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_3_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_270DD4000, a2, a3, "Error from store fetch operation: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_10_cold_1(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 identifier];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_270DD4000, a4, OS_LOG_TYPE_ERROR, "Application Provider %@ conflicts with developer-added provider.  Using developer provider instead.", a1, 0xCu);
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_18_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_0(&dword_270DD4000, a2, a3, "Developer Provider %@ is missing required property providerID, skipping", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __56__VSIdentityProviderFetchAllOperation_executionDidBegin__block_invoke_28_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_0(&dword_270DD4000, a2, a3, "Error from developer fetch operation: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

@end