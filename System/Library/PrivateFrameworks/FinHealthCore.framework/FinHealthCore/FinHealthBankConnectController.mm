@interface FinHealthBankConnectController
+ (id)sharedInstance;
- (id)_init;
- (void)_parityCheckBetweenWalletSourceTransaction:(id)transaction andFinanceSourceTransaction:(id)sourceTransaction;
- (void)updateTransactionsWithCompletion:(id)completion;
@end

@implementation FinHealthBankConnectController

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FinHealthBankConnectController sharedInstance];
  }

  v3 = sharedInstance_fhBankConnectController;

  return v3;
}

uint64_t __48__FinHealthBankConnectController_sharedInstance__block_invoke()
{
  sharedInstance_fhBankConnectController = [[FinHealthBankConnectController alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = FinHealthBankConnectController;
  return [(FinHealthBankConnectController *)&v3 init];
}

- (void)updateTransactionsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc_init(_TtC13FinHealthCore19FinanceKitDataStore);
  v6 = [[FHDatabaseManager alloc] init:0];
  v7 = [v6 processingDataForFeature:@"FHProcessingHistoryBankConnectTransactions"];
  getFHAccounts = [v6 getFHAccounts];
  [(FinHealthBankConnectController *)self setUpdateInProgress:1];
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke;
  v17[3] = &unk_2785CAF28;
  objc_copyWeak(&v19, &location);
  v9 = v6;
  v18 = v9;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_83;
  v14[3] = &unk_2785CAF78;
  objc_copyWeak(&v16, &location);
  v10 = v9;
  v15 = v10;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_87;
  v12[3] = &unk_2785CAFA0;
  v12[4] = self;
  v11 = completionCopy;
  v13 = v11;
  [(FinanceKitDataStore *)v5 streamTransactionsSince:v7 savedAccounts:getFHAccounts transactionHandler:v17 accountHandler:v14 completionHandler:v12];

  objc_destroyWeak(&v16);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v74 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = WeakRetained;
  if (WeakRetained)
  {
    v55 = WeakRetained;
    v57 = v7;
    v58 = v8;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v12 = v7;
    v61 = [v12 countByEnumeratingWithState:&v66 objects:v73 count:16];
    v56 = v9;
    if (!v61)
    {
      LOBYTE(v15) = 1;
      goto LABEL_41;
    }

    v13 = *v67;
    v14 = @"FinHealthCore";
    v15 = 1;
    v59 = a1;
    while (1)
    {
      for (i = 0; i != v61; ++i)
      {
        if (*v67 != v13)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v66 + 1) + 8 * i);
        v18 = *(a1 + 32);
        v19 = [v17 identifier];
        v20 = [v18 getTransactionByIdentifier:v19];

        if (![v20 transactionInternalState] && objc_msgSend(v17, "accountType") == 4 && (objc_msgSend(*(a1 + 32), "insertTransactionInInternalStateDirty:", v17) & 1) == 0)
        {
          v21 = FinHealthLogObject(v14);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = [v17 identifier];
            *buf = 138412290;
            v72 = v22;
            _os_log_impl(&dword_226DD4000, v21, OS_LOG_TYPE_ERROR, "Failed to insert initial bankConnect transaction with transaction identifier: %@", buf, 0xCu);
          }

          v15 = 0;
        }

        if ([v17 accountType] != 4)
        {
          if ([v17 accountType] != 2 && objc_msgSend(v17, "accountType") != 1)
          {
            goto LABEL_34;
          }

          v30 = [v17 transactionServiceIdentifier];

          if (v30)
          {
            if ([*(a1 + 32) updateFinanceIdentifiers:v17])
            {
              goto LABEL_34;
            }
          }

          else
          {
            v33 = FinHealthLogObject(v14);
            if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
            {
              v34 = [v17 financeTransactionIdentifier];
              *buf = 138412290;
              v72 = v34;
              _os_log_impl(&dword_226DD4000, v33, OS_LOG_TYPE_DEBUG, "No transaction service identifier for financeTransactionIdentifier %@ for Card/Cash  from FinanceKit source", buf, 0xCu);
            }
          }

LABEL_31:
          v35 = FinHealthLogObject(v14);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v36 = [v17 identifier];
            *buf = 138412290;
            v72 = v36;
            _os_log_impl(&dword_226DD4000, v35, OS_LOG_TYPE_ERROR, "Failed to update transaction with financeTransactionIdentifier: %@", buf, 0xCu);
          }

          v15 = 0;
          goto LABEL_34;
        }

        if ([v17 bankConnectTransactionHasBeenUpdatedFrom:v20])
        {
          v23 = [*(a1 + 32) updateTransactionInternalStateByTransaction:v17 newInternalState:7];
          v24 = FinHealthLogObject(v14);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
          {
            [v17 identifier];
            v25 = v14;
            v26 = v13;
            v27 = v12;
            v29 = v28 = v15;
            *buf = 138412290;
            v72 = v29;
            _os_log_impl(&dword_226DD4000, v24, OS_LOG_TYPE_DEBUG, "Updating BC transaction %@", buf, 0xCu);

            v15 = v28;
            v12 = v27;
            v13 = v26;
            v14 = v25;
            a1 = v59;
          }

          if ((v23 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v31 = FinHealthLogObject(v14);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
          {
            v32 = [v17 identifier];
            *buf = 138412290;
            v72 = v32;
            _os_log_impl(&dword_226DD4000, v31, OS_LOG_TYPE_DEBUG, "Updating BC transaction %@ without recomputing insights", buf, 0xCu);
          }

          if (([*(a1 + 32) updateTransactionInternalStateByTransaction:v17 newInternalState:2] & 1) == 0)
          {
            goto LABEL_31;
          }
        }

LABEL_34:
      }

      v61 = [v12 countByEnumeratingWithState:&v66 objects:v73 count:16];
      if (!v61)
      {
LABEL_41:
        v60 = v15;

        v64 = 0u;
        v65 = 0u;
        v62 = 0u;
        v63 = 0u;
        v38 = v58;
        v39 = [v38 countByEnumeratingWithState:&v62 objects:v70 count:16];
        if (!v39)
        {
          goto LABEL_64;
        }

        v40 = v39;
        v41 = *v63;
        while (1)
        {
          for (j = 0; j != v40; ++j)
          {
            if (*v63 != v41)
            {
              objc_enumerationMutation(v38);
            }

            v43 = *(*(&v62 + 1) + 8 * j);
            v44 = [*(a1 + 32) getTransactionByFinanceTransactionIdentifier:v43];
            v45 = v44;
            if (v44)
            {
              if ([v44 accountType] == 4)
              {
                v46 = [*(a1 + 32) deleteBankConnectTransactionWithFinanceTransactionIdentifier:v43];
                v47 = FinHealthLogObject(@"FinHealthCore");
                v48 = v47;
                if (v46)
                {
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v72 = v43;
                    v49 = v48;
                    v50 = OS_LOG_TYPE_DEBUG;
                    v51 = "Deleted bank connect transaction with financeTransactionIdentifier: %@";
                    goto LABEL_60;
                  }

                  goto LABEL_61;
                }

                if (!os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_61;
                }

                *buf = 138412290;
                v72 = v43;
                v49 = v48;
                v50 = OS_LOG_TYPE_ERROR;
                v51 = "Failed to delete bank connect transaction with financeTransactionIdentifier: %@";
                goto LABEL_60;
              }

              if ([v45 accountType] == 2 || objc_msgSend(v45, "accountType") == 1)
              {
                v52 = [*(a1 + 32) removeFinanceTransactionIdentifier:v43];
                v53 = FinHealthLogObject(@"FinHealthCore");
                v48 = v53;
                if (v52)
                {
                  if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138412290;
                    v72 = v43;
                    v49 = v48;
                    v50 = OS_LOG_TYPE_DEBUG;
                    v51 = "Removed financeTransactionIdentifier value of card/cash transaction with financeTransactionIdentifier: %@ from FinanceKit source";
                    goto LABEL_60;
                  }

LABEL_61:

                  goto LABEL_62;
                }

                if (!os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_61;
                }

                *buf = 138412290;
                v72 = v43;
                v49 = v48;
                v50 = OS_LOG_TYPE_ERROR;
                v51 = "Failed to remove financeTransactionIdentifier from card/cash transaction with financeTransactionIdentifier: %@";
LABEL_60:
                _os_log_impl(&dword_226DD4000, v49, v50, v51, buf, 0xCu);
                goto LABEL_61;
              }
            }

LABEL_62:
          }

          v40 = [v38 countByEnumeratingWithState:&v62 objects:v70 count:16];
          if (!v40)
          {
LABEL_64:

            v7 = v57;
            v8 = v58;
            v11 = v55;
            v9 = v56;
            if ((v60 & 1) != 0 && [v56 length])
            {
              v54 = FinHealthLogObject(@"FinHealthCore");
              if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v72 = v56;
                _os_log_impl(&dword_226DD4000, v54, OS_LOG_TYPE_DEBUG, "Saving history token: %@", buf, 0xCu);
              }

              [*(a1 + 32) updateProcessingTimeForFeature:@"FHProcessingHistoryBankConnectTransactions" data:v56];
            }

            goto LABEL_69;
          }
        }
      }
    }
  }

  v37 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_226DD4000, v37, OS_LOG_TYPE_INFO, "warning: updateTransactionsWithCompletion : Failed to save transactions because self was released", buf, 2u);
  }

LABEL_69:
}

uint64_t __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_83(uint64_t a1, void *a2, void *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v25 = a3;
  v23 = v5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *v35 = 0;
    v36 = v35;
    v37 = 0x2020000000;
    v38 = 1;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v31 objects:v42 count:16];
    if (v7)
    {
      v8 = *v32;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v32 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          if (([v10 accountType] == 4 || objc_msgSend(v10, "accountType") == 5) && (objc_msgSend(*(a1 + 32), "insertOrUpdateBankConnectAccount:", v10) & 1) == 0)
          {
            v36[24] = 0;
            v11 = FinHealthLogObject(@"FinHealthCore");
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = [v10 accountID];
              *buf = 138412290;
              v41 = v12;
              _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_ERROR, "Failed to update account with accountID: %@", buf, 0xCu);
            }
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v31 objects:v42 count:16];
      }

      while (v7);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v13 = v25;
    v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v14)
    {
      v15 = *v28;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v28 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v17 = *(*(&v27 + 1) + 8 * j);
          if ([v17 accountType] == 4 || objc_msgSend(v17, "accountType") == 5)
          {
            v18 = *(a1 + 32);
            v19 = [v17 accountID];
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_84;
            v26[3] = &unk_2785CAF50;
            v26[4] = v17;
            v26[5] = v35;
            [v18 deleteAllDataForTransactionSourceIdentifier:v19 force:1 completion:v26];
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v14);
    }

    v20 = v36[24];
    _Block_object_dispose(v35, 8);
  }

  else
  {
    v21 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *v35 = 0;
      _os_log_impl(&dword_226DD4000, v21, OS_LOG_TYPE_INFO, "warning: updateTransactionsWithCompletion : Failed to save accounts because self was released", v35, 2u);
    }

    v20 = 0;
  }

  return v20 & 1;
}

void __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_84(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v6 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [*(a1 + 32) accountID];
      v8 = 138412546;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_226DD4000, v6, OS_LOG_TYPE_ERROR, "Failed to delete account with accountID: %@ with error=%@", &v8, 0x16u);
    }
  }
}

void __67__FinHealthBankConnectController_updateTransactionsWithCompletion___block_invoke_87(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = FinHealthLogObject(@"FinHealthCore");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 localizedFailureReason];
      v7 = 138412546;
      v8 = v3;
      v9 = 2112;
      v10 = v6;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_ERROR, "mergeTransactionsWithCompletion : failed with error = %@ reason = %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v7) = 0;
    _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "mergeTransactionsWithCompletion : complete", &v7, 2u);
  }

  [*(a1 + 32) setUpdateInProgress:0];
  (*(*(a1 + 40) + 16))();
}

- (void)_parityCheckBetweenWalletSourceTransaction:(id)transaction andFinanceSourceTransaction:(id)sourceTransaction
{
  v93 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  sourceTransactionCopy = sourceTransaction;
  amount = [transactionCopy amount];
  amount2 = [sourceTransactionCopy amount];
  v9 = [amount isEqual:amount2];

  if ((v9 & 1) == 0)
  {
    if ([transactionCopy transactionType] != 3 || (v10 = MEMORY[0x277CCA980], objc_msgSend(transactionCopy, "amount"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "abs:", v11), amount5 = objc_claimAutoreleasedReturnValue(), v13 = MEMORY[0x277CCA980], objc_msgSend(sourceTransactionCopy, "amount"), v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "abs:", v14), zero = objc_claimAutoreleasedReturnValue(), v16 = -[NSObject compare:](amount5, "compare:", zero), zero, v14, amount5, v11, v16))
    {
      amount5 = FinHealthLogObject(@"FinHealthCore");
      if (!os_log_type_enabled(amount5, OS_LOG_TYPE_ERROR))
      {
LABEL_7:

        goto LABEL_8;
      }

      identifier = [transactionCopy identifier];
      amount3 = [transactionCopy amount];
      amount4 = [sourceTransactionCopy amount];
      *v90 = 138413058;
      *&v90[4] = identifier;
      *&v90[12] = 2112;
      *&v90[14] = @"amount";
      *&v90[22] = 2112;
      v91 = amount3;
      *v92 = 2112;
      *&v92[2] = amount4;
      v20 = "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@";
      v21 = amount5;
      v22 = 42;
LABEL_6:
      _os_log_impl(&dword_226DD4000, v21, OS_LOG_TYPE_ERROR, v20, v90, v22);

      goto LABEL_7;
    }

    peerPaymentType = [transactionCopy peerPaymentType];
    if (peerPaymentType == 2)
    {
      amount5 = [sourceTransactionCopy amount];
      zero = [MEMORY[0x277CCA980] zero];
      if ([amount5 compare:zero]== -1)
      {

        goto LABEL_7;
      }

      if ([transactionCopy peerPaymentType] != 1)
      {

LABEL_45:
        amount5 = FinHealthLogObject(@"FinHealthCore");
        if (!os_log_type_enabled(amount5, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        identifier = [transactionCopy identifier];
        amount3 = [transactionCopy amount];
        amount4 = [sourceTransactionCopy amount];
        *v90 = 138413314;
        *&v90[4] = identifier;
        *&v90[12] = 2112;
        *&v90[14] = @"amount";
        *&v90[22] = 2112;
        v91 = amount3;
        *v92 = 2112;
        *&v92[2] = amount4;
        *&v92[10] = 2048;
        *&v92[12] = [transactionCopy peerPaymentType];
        v20 = "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@, peerPaymentType: %lu";
        v21 = amount5;
        v22 = 52;
        goto LABEL_6;
      }
    }

    else if ([transactionCopy peerPaymentType] != 1)
    {
      goto LABEL_45;
    }

    amount6 = [sourceTransactionCopy amount];
    zero2 = [MEMORY[0x277CCA980] zero];
    v89 = [amount6 compare:zero2];

    if (peerPaymentType == 2)
    {
    }

    if (v89 != 1)
    {
      goto LABEL_45;
    }
  }

LABEL_8:
  currencyCode = [transactionCopy currencyCode];
  currencyCode2 = [sourceTransactionCopy currencyCode];
  v25 = [currencyCode isEqualToString:currencyCode2];

  if ((v25 & 1) == 0)
  {
    v26 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      identifier2 = [transactionCopy identifier];
      currencyCode3 = [transactionCopy currencyCode];
      currencyCode4 = [sourceTransactionCopy currencyCode];
      *v90 = 138413058;
      *&v90[4] = identifier2;
      *&v90[12] = 2112;
      *&v90[14] = @"currencyCode";
      *&v90[22] = 2112;
      v91 = currencyCode3;
      *v92 = 2112;
      *&v92[2] = currencyCode4;
      _os_log_impl(&dword_226DD4000, v26, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@", v90, 0x2Au);
    }
  }

  transactionDate = [transactionCopy transactionDate];
  [transactionDate timeIntervalSinceReferenceDate];
  v32 = v31;
  transactionDate2 = [sourceTransactionCopy transactionDate];
  [transactionDate2 timeIntervalSinceReferenceDate];
  v35 = v34;

  if (v32 != v35)
  {
    v36 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      identifier3 = [transactionCopy identifier];
      transactionDate3 = [transactionCopy transactionDate];
      transactionDate4 = [transactionCopy transactionDate];
      [transactionDate4 timeIntervalSinceReferenceDate];
      v41 = v40;
      transactionDate5 = [sourceTransactionCopy transactionDate];
      transactionDate6 = [sourceTransactionCopy transactionDate];
      [transactionDate6 timeIntervalSinceReferenceDate];
      *v90 = 138413570;
      *&v90[4] = identifier3;
      *&v90[12] = 2112;
      *&v90[14] = @"transactionDate";
      *&v90[22] = 2112;
      v91 = transactionDate3;
      *v92 = 2048;
      *&v92[2] = v41;
      *&v92[10] = 2112;
      *&v92[12] = transactionDate5;
      *&v92[20] = 2048;
      *&v92[22] = v44;
      _os_log_impl(&dword_226DD4000, v36, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@ timestamp: %f,  [FK source] %@ timestamp: %f", v90, 0x3Eu);
    }
  }

  transactionStatusChangedDate = [transactionCopy transactionStatusChangedDate];
  [transactionStatusChangedDate timeIntervalSinceReferenceDate];
  v47 = v46;
  transactionStatusChangedDate2 = [sourceTransactionCopy transactionStatusChangedDate];
  [transactionStatusChangedDate2 timeIntervalSinceReferenceDate];
  v50 = v49;

  if (v47 != v50)
  {
    v51 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      identifier4 = [transactionCopy identifier];
      transactionStatusChangedDate3 = [transactionCopy transactionStatusChangedDate];
      transactionStatusChangedDate4 = [transactionCopy transactionStatusChangedDate];
      [transactionStatusChangedDate4 timeIntervalSinceReferenceDate];
      v56 = v55;
      transactionStatusChangedDate5 = [sourceTransactionCopy transactionStatusChangedDate];
      transactionStatusChangedDate6 = [sourceTransactionCopy transactionStatusChangedDate];
      [transactionStatusChangedDate6 timeIntervalSinceReferenceDate];
      *v90 = 138413570;
      *&v90[4] = identifier4;
      *&v90[12] = 2112;
      *&v90[14] = @"transactionStatusChangedDate";
      *&v90[22] = 2112;
      v91 = transactionStatusChangedDate3;
      *v92 = 2048;
      *&v92[2] = v56;
      *&v92[10] = 2112;
      *&v92[12] = transactionStatusChangedDate5;
      *&v92[20] = 2048;
      *&v92[22] = v59;
      _os_log_impl(&dword_226DD4000, v51, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@ timestamp: %f,  [FK source] %@ timestamp: %f", v90, 0x3Eu);
    }
  }

  name = [transactionCopy name];
  name2 = [sourceTransactionCopy name];
  v62 = FHEqualStrings(name, name2);

  if ((v62 & 1) == 0)
  {
    v63 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      identifier5 = [transactionCopy identifier];
      name3 = [transactionCopy name];
      name4 = [sourceTransactionCopy name];
      *v90 = 138413058;
      *&v90[4] = identifier5;
      *&v90[12] = 2112;
      *&v90[14] = @"name";
      *&v90[22] = 2112;
      v91 = name3;
      *v92 = 2112;
      *&v92[2] = name4;
      _os_log_impl(&dword_226DD4000, v63, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@", v90, 0x2Au);
    }
  }

  displayName = [transactionCopy displayName];
  displayName2 = [sourceTransactionCopy displayName];
  v69 = FHEqualStrings(displayName, displayName2);

  if ((v69 & 1) == 0)
  {
    v70 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      identifier6 = [transactionCopy identifier];
      displayName3 = [transactionCopy displayName];
      displayName4 = [sourceTransactionCopy displayName];
      *v90 = 138413058;
      *&v90[4] = identifier6;
      *&v90[12] = 2112;
      *&v90[14] = @"displayName";
      *&v90[22] = 2112;
      v91 = displayName3;
      *v92 = 2112;
      *&v92[2] = displayName4;
      _os_log_impl(&dword_226DD4000, v70, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@", v90, 0x2Au);
    }
  }

  location = [transactionCopy location];
  location2 = [sourceTransactionCopy location];
  v76 = FHEqualObjects(location, location2);

  if ((v76 & 1) == 0)
  {
    v77 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
    {
      identifier7 = [transactionCopy identifier];
      location3 = [transactionCopy location];
      location4 = [sourceTransactionCopy location];
      *v90 = 138413058;
      *&v90[4] = identifier7;
      *&v90[12] = 2112;
      *&v90[14] = @"location";
      *&v90[22] = 2112;
      v91 = location3;
      *v92 = 2112;
      *&v92[2] = location4;
      _os_log_impl(&dword_226DD4000, v77, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %@,  [FK source] %@", v90, 0x2Au);
    }
  }

  transactionStatus = [transactionCopy transactionStatus];
  if (transactionStatus != [sourceTransactionCopy transactionStatus])
  {
    v82 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      identifier8 = [transactionCopy identifier];
      transactionStatus2 = [transactionCopy transactionStatus];
      transactionStatus3 = [sourceTransactionCopy transactionStatus];
      *v90 = 138413058;
      *&v90[4] = identifier8;
      *&v90[12] = 2112;
      *&v90[14] = @"transactionStatus";
      *&v90[22] = 2048;
      v91 = transactionStatus2;
      *v92 = 2048;
      *&v92[2] = transactionStatus3;
      _os_log_impl(&dword_226DD4000, v82, OS_LOG_TYPE_ERROR, "parity check for transaction %@ - %@ not match: [Wallet source] %ld,  [FK source] %ld", v90, 0x2Au);
    }
  }
}

@end