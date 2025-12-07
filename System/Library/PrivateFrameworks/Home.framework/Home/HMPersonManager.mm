@interface HMPersonManager
@end

@implementation HMPersonManager

void __56__HMPersonManager_HFAdditions__hf_personWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEB98] na_setWithSafeObject:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__HMPersonManager_HFAdditions__hf_personWithIdentifier___block_invoke_2;
  v9[3] = &unk_277DFD018;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v10 = v3;
  v11 = v6;
  v12 = v7;
  v8 = v3;
  [v4 fetchPersonsWithUUIDs:v5 completion:v9];
}

void __56__HMPersonManager_HFAdditions__hf_personWithIdentifier___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = *(a1 + 32);
    v8 = [v5 anyObject];
    [v7 finishWithResult:v8];
  }

  else
  {
    if (v6)
    {
      v9 = v6;
    }

    else
    {
      v9 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    }

    v8 = v9;
    v10 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = 138412802;
      v14 = v11;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v8;
      _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "%@: Unable to fetch person with identifier:%@ (error: %@)", &v13, 0x20u);
    }

    [*(a1 + 32) finishWithError:v8];
  }
}

void __68__HMPersonManager_HFAdditions__hf_faceCropsForPersonWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB98];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v2 na_setWithSafeObject:v4];
  [v3 fetchFaceCropsForPersonsWithUUIDs:v6 completion:v5];
}

id __68__HMPersonManager_HFAdditions__hf_faceCropsForPersonWithIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (![v3 count])
  {
    v4 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "%@: No face crops for person with identifier:%@", &v12, 0x16u);
    }
  }

  v5 = [v3 allObjects];
  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_134];

  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = MEMORY[0x277CBEBF8];
  }

  v8 = [MEMORY[0x277D2C900] futureWithResult:v7];

  return v8;
}

uint64_t __68__HMPersonManager_HFAdditions__hf_faceCropsForPersonWithIdentifier___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = objc_opt_class();
  v7 = v4;
  if (!v7)
  {
    goto LABEL_7;
  }

  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v7;
  if (!v8)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v6, objc_opt_class()}];

LABEL_7:
    v9 = 0;
  }

  v12 = objc_opt_class();
  v13 = v5;
  if (!v13)
  {
LABEL_14:
    v15 = 0;
    goto LABEL_15;
  }

  if (objc_opt_isKindOfClass())
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v15 = v13;
  if (!v14)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:{"id  _Nullable NAAssertCast(Class  _Nonnull __unsafe_unretained, id  _Nonnull __strong)"}];
    [v16 handleFailureInFunction:v17 file:@"NSObject+NAAdditions.h" lineNumber:54 description:{@"Expected class of %@ but was %@", v12, objc_opt_class()}];

    goto LABEL_14;
  }

LABEL_15:

  v18 = [v9 dateCreated];
  v19 = [v15 dateCreated];
  v20 = [v18 compare:v19];

  return v20;
}

id __70__HMPersonManager_HFAdditions__hf_keyFaceCropForPersonWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 count];
  v4 = MEMORY[0x277D2C900];
  if (v3)
  {
    v5 = [v2 lastObject];
    [v4 futureWithResult:v5];
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hf_errorWithCode:30];
    [v4 futureWithError:v5];
  }
  v6 = ;

  return v6;
}

void __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [*(a1 + 32) mutableCopy];
  if (!v5)
  {
    v6 = objc_alloc(MEMORY[0x277CD1C70]);
    v7 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v6 initWithUUID:v7];
  }

  [v5 setName:*(a1 + 40)];
  v8 = [v5 personLinks];
  if ([v8 count])
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_2;
    v21[3] = &unk_277DFD040;
    v21[4] = WeakRetained;
    v9 = [v8 na_filter:v21];
    v10 = [v5 personLinks];
    v11 = [v10 na_setByRemovingObjectsFromSet:v9];

    [v5 setPersonLinks:v11];
    v12 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v23 = v9;
      v24 = 2112;
      v25 = v11;
      _os_log_impl(&dword_20D9BF000, v12, OS_LOG_TYPE_DEFAULT, "Removing links %@, setting person links to %@", buf, 0x16u);
    }
  }

  v13 = [MEMORY[0x277CBEB98] setWithObject:v5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_15;
  v16[3] = &unk_277DFD090;
  objc_copyWeak(&v20, (a1 + 48));
  v14 = v5;
  v17 = v14;
  v15 = v3;
  v18 = v15;
  v19 = *(a1 + 32);
  [WeakRetained addOrUpdatePersons:v13 completion:v16];

  objc_destroyWeak(&v20);
}

BOOL __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 personManagerUUID];
  v4 = [*(a1 + 32) UUID];
  v5 = v3 != v4;

  return v5;
}

void __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_15(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = HFLogForCategory(0x13uLL);
  v6 = v5;
  if (v3)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      *buf = 138412802;
      v18 = WeakRetained;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%@: Unable to update person:%@ (error:%@)", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 32);
      *buf = 138412802;
      v18 = WeakRetained;
      v19 = 2112;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@: Renamed and updated person %@ to %@", buf, 0x20u);
    }

    v9 = +[HFHomeKitDispatcher sharedDispatcher];
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_17;
    v14 = &unk_277DFD068;
    v15 = WeakRetained;
    v16 = *(a1 + 32);
    [v9 dispatchHomePersonManagerObserverMessage:&v11 sender:0];

    [*(a1 + 40) finishWithResult:{*(a1 + 32), v11, v12, v13, v14, v15}];
  }
}

void __51__HMPersonManager_HFAdditions__hf_namePerson_name___block_invoke_17(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    [v5 personManager:v3 didUpdatePersons:v4];
  }
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] hf_faceCropsForPersonWithIdentifier:a1[5]];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_2;
  v7[3] = &unk_277DFD0E0;
  objc_copyWeak(&v10, a1 + 6);
  v8 = a1[5];
  v5 = v3;
  v9 = v5;
  v6 = [v4 addCompletionBlock:v7];

  objc_destroyWeak(&v10);
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_2(id *a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = a1[4];
    *buf = 138412546;
    v20 = WeakRetained;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@: Removing person with identifier:%@", buf, 0x16u);
  }

  v10 = [MEMORY[0x277CBEB98] setWithObject:a1[4]];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_20;
  v13[3] = &unk_277DFD0B8;
  objc_copyWeak(&v18, a1 + 6);
  v14 = a1[4];
  v15 = a1[5];
  v11 = v6;
  v16 = v11;
  v12 = v5;
  v17 = v12;
  [WeakRetained removePersonsWithUUIDs:v10 completion:v13];

  objc_destroyWeak(&v18);
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_20(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v3)
  {
    v5 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 138412802;
      v18 = WeakRetained;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@: Unable to remove person with identifier:%@ (error: %@)", buf, 0x20u);
    }

    [*(a1 + 40) finishWithError:*(a1 + 48)];
  }

  else
  {
    if (*(a1 + 56))
    {
      v6 = *(a1 + 56);
    }

    else
    {
      v6 = MEMORY[0x277CBEBF8];
    }

    v7 = [v6 na_map:&__block_literal_global_24_5];
    v8 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v18 = WeakRetained;
      v19 = 2112;
      v20 = v7;
      _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%@: Removing face crops with identifiers:%@", buf, 0x16u);
    }

    v9 = [MEMORY[0x277CBEB98] setWithArray:v7];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_25;
    v12[3] = &unk_277DFD090;
    objc_copyWeak(&v16, (a1 + 64));
    v13 = *(a1 + 32);
    v10 = v7;
    v14 = v10;
    v15 = *(a1 + 40);
    [WeakRetained removeFaceCropsWithUUIDs:v9 completion:v12];

    objc_destroyWeak(&v16);
  }
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_25(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_2_26;
  v11 = &unk_277DFD068;
  v12 = WeakRetained;
  v13 = *(a1 + 32);
  [v5 dispatchHomePersonManagerObserverMessage:&v8 sender:0];

  if (v3)
  {
    v6 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      *buf = 138412802;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_ERROR, "%@: Unable to remove face crops with identifiers:%@ (error: %@)", buf, 0x20u);
    }

    [*(a1 + 48) finishWithError:{v3, v8, v9, v10, v11, v12}];
  }

  else
  {
    [*(a1 + 48) finishWithNoResult];
  }
}

void __56__HMPersonManager_HFAdditions__hf_removePersonWithUUID___block_invoke_2_26(uint64_t a1, void *a2)
{
  v5 = a2;
  if (objc_opt_respondsToSelector())
  {
    v3 = *(a1 + 32);
    v4 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
    [v5 personManager:v3 didRemovePersonsWithUUIDs:v4];
  }
}

void __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    *buf = 138412546;
    v15 = v5;
    v16 = 2112;
    v17 = v6;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@: Removing face crops with identifiers:%@", buf, 0x16u);
  }

  if ([*(a1 + 40) count])
  {
    v8 = *(a1 + 40);
    v7 = (a1 + 40);
    v9 = *(v7 - 1);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke_30;
    v10[3] = &unk_277DFD130;
    objc_copyWeak(&v13, v7 + 1);
    v11 = *v7;
    v12 = v3;
    [v9 removeFaceCropsWithUUIDs:v8 completion:v10];

    objc_destroyWeak(&v13);
  }

  else
  {
    [v3 finishWithNoResult];
  }
}

void __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke_30(id *a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (v3)
  {
    v5 = HFLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      *buf = 138412802;
      v15 = WeakRetained;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@: Unable to remove face crop with identifier:%@ (error: %@)", buf, 0x20u);
    }

    [a1[5] finishWithError:v3];
  }

  else
  {
    v6 = +[HFHomeKitDispatcher sharedDispatcher];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke_31;
    v11 = &unk_277DFD068;
    v12 = WeakRetained;
    v13 = a1[4];
    [v6 dispatchHomePersonManagerObserverMessage:&v8 sender:0];

    [a1[5] finishWithNoResult];
  }
}

void __60__HMPersonManager_HFAdditions__hf_removeFaceCropsWithUUIDs___block_invoke_31(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 personManager:*(a1 + 32) didRemoveFaceCropsWithUUIDs:*(a1 + 40)];
  }
}

void __80__HMPersonManager_HFAdditions__hf_associateFaceCropsWithUUIDs_toPersonWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __80__HMPersonManager_HFAdditions__hf_associateFaceCropsWithUUIDs_toPersonWithUUID___block_invoke_2;
  v8[3] = &unk_277DF81C8;
  v8[4] = WeakRetained;
  v9 = v5;
  v10 = v3;
  v11 = *(a1 + 32);
  v7 = v3;
  [WeakRetained associateFaceCropsWithUUIDs:v6 toPersonWithUUID:v9 forSource:2 completion:v8];
}

void __80__HMPersonManager_HFAdditions__hf_associateFaceCropsWithUUIDs_toPersonWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x13uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      v11 = 138412802;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      v15 = 2112;
      v16 = v3;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "%@: Unable to associate face crops to person with identifier:%@ (error: %@)", &v11, 0x20u);
    }

    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 56);
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      v11 = 138412802;
      v12 = v7;
      v13 = 2112;
      v14 = v6;
      v15 = 2112;
      v16 = v8;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@: Associated face crops:%@ to person with identifier:%@", &v11, 0x20u);
    }

    [*(a1 + 48) finishWithNoResult];
  }
}

void __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) hf_faceCropsForPersonWithIdentifier:*(a1 + 40)];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_2;
  v9[3] = &unk_277DFD1A8;
  v5 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v5;
  v6 = *(a1 + 48);
  v13 = *(a1 + 56);
  v11 = v6;
  v12 = v3;
  v7 = v3;
  v8 = [v4 addSuccessBlock:v9];
}

void __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_2(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 na_map:&__block_literal_global_35_2];
  v5 = HFLogForCategory(0x13uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    *buf = 138413058;
    v22 = v6;
    v23 = 2112;
    v24 = v3;
    v25 = 2112;
    v26 = v7;
    v27 = 2112;
    v28 = v8;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@: Reassociating face crops:%@ from person with identifier:%@ to person with identifier:%@", buf, 0x2Au);
  }

  v9 = *(a1 + 32);
  v10 = [MEMORY[0x277CBEB98] setWithArray:v4];
  v11 = [v9 hf_associateFaceCropsWithUUIDs:v10 toPersonWithUUID:*(a1 + 48)];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_36;
  v17[3] = &unk_277DFD180;
  v20 = *(a1 + 64);
  v12 = *(a1 + 40);
  v17[4] = *(a1 + 32);
  v18 = v12;
  v19 = *(a1 + 56);
  v13 = [v11 addSuccessBlock:v17];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_4;
  v15[3] = &unk_277DF2D08;
  v16 = *(a1 + 56);
  v14 = [v13 addFailureBlock:v15];
}

void __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_36(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v2 = [*(a1 + 32) hf_removePersonWithUUID:*(a1 + 40)];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_2_37;
    v8[3] = &unk_277DFD158;
    v9 = *(a1 + 48);
    v3 = [v2 addSuccessBlock:v8];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __104__HMPersonManager_HFAdditions__hf_reassociateFaceCropsFromPersonWithUUID_toPersonWithUUID_removePerson___block_invoke_3_39;
    v6[3] = &unk_277DF2D08;
    v7 = *(a1 + 48);
    v4 = [v3 addFailureBlock:v6];
  }

  else
  {
    v5 = *(a1 + 48);

    [v5 finishWithNoResult];
  }
}

void __79__HMPersonManager_HFAdditions__hf_linkFromPerson_toPerson_toPersonManagerUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEB98] setWithObject:*(a1 + 40)];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMPersonManager_HFAdditions__hf_linkFromPerson_toPerson_toPersonManagerUUID___block_invoke_2;
  v7[3] = &unk_277DF6FE8;
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = v3;
  v6 = v3;
  [v4 addOrUpdatePersons:v5 completion:v7];
}

void __79__HMPersonManager_HFAdditions__hf_linkFromPerson_toPerson_toPersonManagerUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x13uLL);
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_error_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_ERROR, "Unable to create link between person %@ and %@", &v10, 0x16u);
    }

    [*(a1 + 48) finishWithError:v3];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v10 = 138412546;
      v11 = v6;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Created link between person %@ and %@", &v10, 0x16u);
    }

    [*(a1 + 48) finishWithNoResult];
  }
}

@end