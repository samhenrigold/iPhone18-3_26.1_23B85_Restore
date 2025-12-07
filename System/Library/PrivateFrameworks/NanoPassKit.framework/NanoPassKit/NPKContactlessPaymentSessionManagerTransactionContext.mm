@interface NPKContactlessPaymentSessionManagerTransactionContext
+ (id)_NPKTransactionContextActionDescriptionForNPKTransactionContextAction:(unint64_t)action;
- (NPKContactlessPaymentSessionManagerTransactionContext)init;
- (id)description;
- (void)forceToTransitTypeTransactionWithTransactionStatus:(unint64_t)status;
- (void)updateWithConcreteTransactions:(id)transactions ephemeralTransaction:(id)transaction updatedPassTransitItems:(id)items paymentApplication:(id)application;
@end

@implementation NPKContactlessPaymentSessionManagerTransactionContext

- (NPKContactlessPaymentSessionManagerTransactionContext)init
{
  v5.receiver = self;
  v5.super_class = NPKContactlessPaymentSessionManagerTransactionContext;
  v2 = [(NPKContactlessPaymentSessionManagerTransactionContext *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NPKContactlessPaymentSessionManagerTransactionContext *)v2 setTransactionStatus:2];
  }

  return v3;
}

- (void)updateWithConcreteTransactions:(id)transactions ephemeralTransaction:(id)transaction updatedPassTransitItems:(id)items paymentApplication:(id)application
{
  v65 = *MEMORY[0x277D85DE8];
  transactionsCopy = transactions;
  transactionCopy = transaction;
  itemsCopy = items;
  applicationCopy = application;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__7;
  v61 = __Block_byref_object_dispose__7;
  v62 = 0;
  v53 = 0;
  v54 = &v53;
  v55 = 0x2020000000;
  v56 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__7;
  v51 = __Block_byref_object_dispose__7;
  v52 = 0;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v14 = [MEMORY[0x277CCAC30] predicateWithBlock:&__block_literal_global_10];
  v15 = [itemsCopy filteredArrayUsingPredicate:v14];

  v17 = pk_General_log(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);

  if (v18)
  {
    v20 = pk_General_log(v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      *v64 = transactionsCopy;
      *&v64[8] = 2112;
      *&v64[10] = transactionCopy;
      *&v64[18] = 2112;
      *&v64[20] = itemsCopy;
      *&v64[28] = 2112;
      *&v64[30] = applicationCopy;
      _os_log_impl(&dword_25B300000, v20, OS_LOG_TYPE_DEFAULT, "Notice: NPKPaymentView: updateWithConcreteTransactions:%@ ephemeralTransaction:%@ updatedPassTransitItems:%@ paymentApplication:%@", buf, 0x2Au);
    }
  }

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __152__NPKContactlessPaymentSessionManagerTransactionContext_updateWithConcreteTransactions_ephemeralTransaction_updatedPassTransitItems_paymentApplication___block_invoke_384;
  aBlock[3] = &unk_279946D90;
  v39 = &v53;
  v40 = &v43;
  v41 = &v47;
  v21 = applicationCopy;
  v38 = v21;
  v42 = &v57;
  v22 = _Block_copy(aBlock);
  v23 = v22;
  if (transactionCopy)
  {
    (*(v22 + 2))(v22, transactionCopy);
  }

  else
  {
    v32 = MEMORY[0x277D85DD0];
    v33 = 3221225472;
    v34 = __152__NPKContactlessPaymentSessionManagerTransactionContext_updateWithConcreteTransactions_ephemeralTransaction_updatedPassTransitItems_paymentApplication___block_invoke_402;
    v35 = &unk_279946DB8;
    v36 = v22;
    [transactionsCopy enumerateObjectsUsingBlock:&v32];
  }

  [(NPKContactlessPaymentSessionManagerTransactionContext *)self setPaymentTransaction:v58[5], v32, v33, v34, v35];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)self setTransactionType:v54[3]];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)self setTransactionDescription:v48[5]];
  [(NPKContactlessPaymentSessionManagerTransactionContext *)self setDisplayablePassItems:v15];
  v24 = pk_Payment_log([(NPKContactlessPaymentSessionManagerTransactionContext *)self setAction:v44[3]]);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);

  if (v25)
  {
    v27 = pk_Payment_log(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(v54 + 6);
      v29 = [objc_opt_class() _NPKTransactionContextActionDescriptionForNPKTransactionContextAction:v44[3]];
      v30 = v48[5];
      v31 = v58[5];
      *buf = 67110146;
      *v64 = v28;
      *&v64[4] = 2112;
      *&v64[6] = v15;
      *&v64[14] = 2112;
      *&v64[16] = v29;
      *&v64[24] = 2112;
      *&v64[26] = v30;
      *&v64[34] = 2112;
      *&v64[36] = v31;
      _os_log_impl(&dword_25B300000, v27, OS_LOG_TYPE_DEFAULT, "Notice: Transaction complete context: got transaction type %d displayable pass Items %@ action %@ transactionDescription:%@ transactions:%@", buf, 0x30u);
    }
  }

  _Block_object_dispose(&v43, 8);
  _Block_object_dispose(&v47, 8);

  _Block_object_dispose(&v53, 8);
  _Block_object_dispose(&v57, 8);
}

uint64_t __152__NPKContactlessPaymentSessionManagerTransactionContext_updateWithConcreteTransactions_ephemeralTransaction_updatedPassTransitItems_paymentApplication___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_286D1AA50])
  {
    v3 = 1;
  }

  else if ([v2 conformsToProtocol:&unk_286D1ABC0])
  {
    v3 = [v2 isCountBasedCommutePlan];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __152__NPKContactlessPaymentSessionManagerTransactionContext_updateWithConcreteTransactions_ephemeralTransaction_updatedPassTransitItems_paymentApplication___block_invoke_384(uint64_t a1, void *a2)
{
  v40 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = pk_ui_log(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_ui_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [v4 transitType];
      v10 = [v4 transitType];
      v11 = [v4 amount];
      v12 = [v4 amounts];
      v30 = 138413314;
      v31 = v4;
      v32 = 2048;
      v33 = v9;
      v34 = 2048;
      v35 = v10;
      v36 = 2112;
      v37 = v11;
      v38 = 2112;
      v39 = v12;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: NPKPaymentView: Evaluate transaction %@ with type:%ld transitSubtype:%ld amount:%@ amounts: %@ ", &v30, 0x34u);
    }
  }

  if ([v4 transactionType] == 2)
  {
    v13 = [v4 transitType];
    v14 = *(*(a1 + 40) + 8);
    if (v13 == 1025)
    {
      *(v14 + 24) = 1;
      if (([v4 enRoute] & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 2;
      }

      v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
      v16 = v15;
      v17 = @"TRANSIT_TRANSACTION_TITLE_GREEN_CAR";
      goto LABEL_14;
    }

    if (v13 == 257)
    {
      *(v14 + 24) = 2;
      if (([v4 enRoute] & 1) == 0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 2;
      }

      v15 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.NanoPassKitUI"];
      v16 = v15;
      v17 = @"TRANSIT_TRANSACTION_TITLE_SHINKANSEN";
LABEL_14:
      v18 = [v15 localizedStringForKey:v17 value:&stru_286C934F8 table:@"NanoPassKitUI-Transit"];
      v19 = *(*(a1 + 56) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      goto LABEL_15;
    }

    if (!*(v14 + 24))
    {
      *(v14 + 24) = 3;
    }

    v21 = [v4 amount];
    if (v21)
    {
      v22 = v21;
      v23 = [v4 currencyCode];

      if (!v23)
      {
        v24 = [*(a1 + 32) appletCurrencyCode];
        [v4 setCurrencyCode:v24];
      }
    }

    v25 = [v4 amount];
    if (v25 && ([v4 currencyCode], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
    }

    else
    {
      v27 = [v4 amounts];
      if (![v27 count])
      {
        v28 = [v4 plans];
        v29 = [v28 count];

        if (v25)
        {
        }

        if (!v29)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (!v25)
      {
LABEL_27:
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), a2);
LABEL_28:
        if ([v4 enRoute])
        {
          *(*(*(a1 + 48) + 8) + 24) = 1;
        }

        goto LABEL_15;
      }
    }

    goto LABEL_27;
  }

LABEL_15:
}

- (void)forceToTransitTypeTransactionWithTransactionStatus:(unint64_t)status
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = pk_General_log(self);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);

  if (v6)
  {
    v8 = pk_General_log(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      statusCopy = status;
      _os_log_impl(&dword_25B300000, v8, OS_LOG_TYPE_DEFAULT, "Notice: Requested forceToTransitTypeTransactionWithTransactionStatus:%lu", &v9, 0xCu);
    }
  }

  if (status <= 5)
  {
    [(NPKContactlessPaymentSessionManagerTransactionContext *)self setTransactionStatus:qword_25B59A938[status]];
  }
}

+ (id)_NPKTransactionContextActionDescriptionForNPKTransactionContextAction:(unint64_t)action
{
  if (action - 1 > 4)
  {
    return @"None";
  }

  else
  {
    return off_279947090[action - 1];
  }
}

- (id)description
{
  v17.receiver = self;
  v17.super_class = NPKContactlessPaymentSessionManagerTransactionContext;
  v3 = [(NPKContactlessPaymentSessionManagerTransactionContext *)&v17 description];
  v4 = [v3 mutableCopy];

  transactionPass = [(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionPass];
  valueAddedServicePass = [(NPKContactlessPaymentSessionManagerTransactionContext *)self valueAddedServicePass];
  transactionDescription = [(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionDescription];
  v8 = NSStringFromNPKContactlessPaymentSessionTransactionType([(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionType]);
  transactionDescription2 = [(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionDescription];
  displayablePassItems = [(NPKContactlessPaymentSessionManagerTransactionContext *)self displayablePassItems];
  v11 = NSStringFromNPKTransactionContextStatus([(NPKContactlessPaymentSessionManagerTransactionContext *)self transactionStatus]);
  [v4 appendFormat:@" (transactionPass %@ valueAddedServicePass %@ paymentMethodDescription %@ transactionType %@ transactionDescription %@ displayablePassItems %@ transactionStatus: %@)\n", transactionPass, valueAddedServicePass, transactionDescription, v8, transactionDescription2, displayablePassItems, v11];

  paymentBarcode = [(NPKContactlessPaymentSessionManagerTransactionContext *)self paymentBarcode];
  [v4 appendFormat:@" (Barcode payment related: paymentBarcode %@ authentication requested %d)", paymentBarcode, -[NPKContactlessPaymentSessionManagerTransactionContext authenticationRequested](self, "authenticationRequested")];

  v13 = NSStringFromNPKDataReleaseStatus([(NPKContactlessPaymentSessionManagerTransactionContext *)self releaseDataStatus]);
  [v4 appendFormat:@" (releaseDataStatus:%@)\n", v13];

  v14 = [objc_opt_class() _NPKTransactionContextActionDescriptionForNPKTransactionContextAction:{-[NPKContactlessPaymentSessionManagerTransactionContext action](self, "action")}];
  [v4 appendFormat:@" (Action :%@)", v14];
  accessory = [(NPKContactlessPaymentSessionManagerTransactionContext *)self accessory];
  [v4 appendFormat:@" (Accessory :%@)", accessory];

  return v4;
}

@end