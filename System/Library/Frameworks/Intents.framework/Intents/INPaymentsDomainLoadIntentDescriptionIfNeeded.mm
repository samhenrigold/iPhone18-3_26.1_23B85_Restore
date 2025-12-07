@interface INPaymentsDomainLoadIntentDescriptionIfNeeded
@end

@implementation INPaymentsDomainLoadIntentDescriptionIfNeeded

void ___INPaymentsDomainLoadIntentDescriptionIfNeeded_block_invoke()
{
  v90[6] = *MEMORY[0x1E69E9840];
  v0 = [INIntentDescription alloc];
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v78 = [[INIntentSlotDescription alloc] initWithName:@"billPayee" tag:2 facadePropertyName:@"billPayee" dataPropertyName:@"billPayee" isExtended:0 isPrivate:0 valueType:59 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA3F8 provideOptionsSelectorStrings:&unk_1F02DA410 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveBillPayeeForPayBill_withCompletion_, sel_resolveBillPayeeForPayBill_completion_, 0];
  v89[0] = v78;
  v77 = [[INIntentSlotDescription alloc] initWithName:@"fromAccount" tag:4 facadePropertyName:@"fromAccount" dataPropertyName:@"fromAccount" isExtended:0 isPrivate:0 valueType:61 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA428 provideOptionsSelectorStrings:&unk_1F02DA440 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveFromAccountForPayBill_withCompletion_, sel_resolveFromAccountForPayBill_completion_, 0];
  v89[1] = v77;
  v76 = [[INIntentSlotDescription alloc] initWithName:@"transactionAmount" tag:5 facadePropertyName:@"transactionAmount" dataPropertyName:@"transactionAmount" isExtended:0 isPrivate:0 valueType:62 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA458 provideOptionsSelectorStrings:&unk_1F02DA470 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTransactionAmountForPayBill_withCompletion_, sel_resolveTransactionAmountForPayBill_completion_, 0];
  v89[2] = v76;
  v75 = [[INIntentSlotDescription alloc] initWithName:@"transactionScheduledDate" tag:6 facadePropertyName:@"transactionScheduledDate" dataPropertyName:@"transactionScheduledDate" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA488 provideOptionsSelectorStrings:&unk_1F02DA4A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTransactionScheduledDateForPayBill_withCompletion_, sel_resolveTransactionScheduledDateForPayBill_completion_, 0];
  v89[3] = v75;
  v74 = [[INIntentSlotDescription alloc] initWithName:@"transactionNote" tag:7 facadePropertyName:@"transactionNote" dataPropertyName:@"transactionNote" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA4B8 provideOptionsSelectorStrings:&unk_1F02DA4D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTransactionNoteForPayBill_withCompletion_, sel_resolveTransactionNoteForPayBill_completion_, 0];
  v89[4] = v74;
  v73 = [[INIntentSlotDescription alloc] initWithName:@"billType" tag:8 facadePropertyName:@"billType" dataPropertyName:@"billType" isExtended:0 isPrivate:0 valueType:57 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA4E8 provideOptionsSelectorStrings:&unk_1F02DA500 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveBillTypeForPayBill_withCompletion_, sel_resolveBillTypeForPayBill_completion_, 0];
  v89[5] = v73;
  v72 = [[INIntentSlotDescription alloc] initWithName:@"dueDate" tag:9 facadePropertyName:@"dueDate" dataPropertyName:@"dueDate" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA518 provideOptionsSelectorStrings:&unk_1F02DA530 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDueDateForPayBill_withCompletion_, sel_resolveDueDateForPayBill_completion_, 0];
  v89[6] = v72;
  v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v89 count:7];
  v70 = _INIntentSchemaBuildIntentSlotDescriptionMap(v71);
  v69 = [(INIntentDescription *)v0 initWithName:@"PayBillIntent" responseName:@"PayBillIntentResponse" facadeClass:v1 dataClass:v2 type:@"sirikit.intent.payments.PayBillIntent" isPrivate:0 handleSelector:sel_handlePayBill_completion_ confirmSelector:sel_confirmPayBill_completion_ slotsByName:v70];
  v90[0] = v69;
  v3 = [INIntentDescription alloc];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v68 = [[INIntentSlotDescription alloc] initWithName:@"payer" tag:2 facadePropertyName:@"payer" dataPropertyName:@"payer" isExtended:0 isPrivate:0 valueType:10 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA548 provideOptionsSelectorStrings:&unk_1F02DA560 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePayerForRequestPayment_completion_, sel_resolvePayerForRequestPayment_withCompletion_, 0];
  v88[0] = v68;
  v67 = [[INIntentSlotDescription alloc] initWithName:@"currencyAmount" tag:3 facadePropertyName:@"currencyAmount" dataPropertyName:@"currencyAmount" isExtended:0 isPrivate:0 valueType:53 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA578 provideOptionsSelectorStrings:&unk_1F02DA590 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCurrencyAmountForRequestPayment_completion_, sel_resolveCurrencyAmountForRequestPayment_withCompletion_, 0];
  v88[1] = v67;
  v66 = [[INIntentSlotDescription alloc] initWithName:@"note" tag:5 facadePropertyName:@"note" dataPropertyName:@"note" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA5A8 provideOptionsSelectorStrings:&unk_1F02DA5C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveNoteForRequestPayment_withCompletion_, sel_resolveNoteForRequestPayment_completion_, 0];
  v88[2] = v66;
  v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:v88 count:3];
  v64 = _INIntentSchemaBuildIntentSlotDescriptionMap(v65);
  v63 = [(INIntentDescription *)v3 initWithName:@"RequestPaymentIntent" responseName:@"RequestPaymentIntentResponse" facadeClass:v4 dataClass:v5 type:@"sirikit.intent.payments.RequestPaymentIntent" isPrivate:0 handleSelector:sel_handleRequestPayment_completion_ confirmSelector:sel_confirmRequestPayment_completion_ slotsByName:v64];
  v90[1] = v63;
  v6 = [INIntentDescription alloc];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v62 = [[INIntentSlotDescription alloc] initWithName:@"accountNickname" tag:2 facadePropertyName:@"accountNickname" dataPropertyName:@"accountNickname" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA5D8 provideOptionsSelectorStrings:&unk_1F02DA5F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAccountNicknameForSearchForAccounts_withCompletion_, sel_resolveAccountNicknameForSearchForAccounts_completion_, 0];
  v87[0] = v62;
  v61 = [[INIntentSlotDescription alloc] initWithName:@"accountType" tag:4 facadePropertyName:@"accountType" dataPropertyName:@"accountType" isExtended:0 isPrivate:0 valueType:63 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA608 provideOptionsSelectorStrings:&unk_1F02DA620 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveAccountTypeForSearchForAccounts_withCompletion_, sel_resolveAccountTypeForSearchForAccounts_completion_, 0];
  v87[1] = v61;
  v60 = [[INIntentSlotDescription alloc] initWithName:@"organizationName" tag:5 facadePropertyName:@"organizationName" dataPropertyName:@"organizationName" isExtended:0 isPrivate:0 valueType:12 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA638 provideOptionsSelectorStrings:&unk_1F02DA650 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveOrganizationNameForSearchForAccounts_withCompletion_, sel_resolveOrganizationNameForSearchForAccounts_completion_, 0];
  v87[2] = v60;
  v59 = [[INIntentSlotDescription alloc] initWithName:@"requestedBalanceType" tag:6 facadePropertyName:@"requestedBalanceType" dataPropertyName:@"requestedBalanceType" isExtended:0 isPrivate:0 valueType:64 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA668 provideOptionsSelectorStrings:&unk_1F02DA680 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveRequestedBalanceTypeForSearchForAccounts_withCompletion_, sel_resolveRequestedBalanceTypeForSearchForAccounts_completion_, 0];
  v87[3] = v59;
  v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:4];
  v57 = _INIntentSchemaBuildIntentSlotDescriptionMap(v58);
  v56 = [(INIntentDescription *)v6 initWithName:@"SearchForAccountsIntent" responseName:@"SearchForAccountsIntentResponse" facadeClass:v7 dataClass:v8 type:@"sirikit.intent.payments.SearchForAccountsIntent" isPrivate:0 handleSelector:sel_handleSearchForAccounts_completion_ confirmSelector:sel_confirmSearchForAccounts_completion_ slotsByName:v57];
  v90[2] = v56;
  v9 = [INIntentDescription alloc];
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v55 = [[INIntentSlotDescription alloc] initWithName:@"billPayee" tag:2 facadePropertyName:@"billPayee" dataPropertyName:@"billPayee" isExtended:0 isPrivate:0 valueType:59 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA698 provideOptionsSelectorStrings:&unk_1F02DA6B0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveBillPayeeForSearchForBills_withCompletion_, sel_resolveBillPayeeForSearchForBills_completion_, 0];
  v86[0] = v55;
  v54 = [[INIntentSlotDescription alloc] initWithName:@"paymentDateRange" tag:3 facadePropertyName:@"paymentDateRange" dataPropertyName:@"paymentDateRange" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA6C8 provideOptionsSelectorStrings:&unk_1F02DA6E0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePaymentDateRangeForSearchForBills_withCompletion_, sel_resolvePaymentDateRangeForSearchForBills_completion_, 0];
  v86[1] = v54;
  v53 = [[INIntentSlotDescription alloc] initWithName:@"billType" tag:4 facadePropertyName:@"billType" dataPropertyName:@"billType" isExtended:0 isPrivate:0 valueType:57 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA6F8 provideOptionsSelectorStrings:&unk_1F02DA710 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveBillTypeForSearchForBills_withCompletion_, sel_resolveBillTypeForSearchForBills_completion_, 0];
  v86[2] = v53;
  v52 = [[INIntentSlotDescription alloc] initWithName:@"status" tag:5 facadePropertyName:@"status" dataPropertyName:@"status" isExtended:0 isPrivate:0 valueType:58 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA728 provideOptionsSelectorStrings:&unk_1F02DA740 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveStatusForSearchForBills_withCompletion_, sel_resolveStatusForSearchForBills_completion_, 0];
  v86[3] = v52;
  v51 = [[INIntentSlotDescription alloc] initWithName:@"dueDateRange" tag:6 facadePropertyName:@"dueDateRange" dataPropertyName:@"dueDateRange" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA758 provideOptionsSelectorStrings:&unk_1F02DA770 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveDueDateRangeForSearchForBills_withCompletion_, sel_resolveDueDateRangeForSearchForBills_completion_, 0];
  v86[4] = v51;
  v50 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:5];
  v49 = _INIntentSchemaBuildIntentSlotDescriptionMap(v50);
  v48 = [(INIntentDescription *)v9 initWithName:@"SearchForBillsIntent" responseName:@"SearchForBillsIntentResponse" facadeClass:v10 dataClass:v11 type:@"sirikit.intent.payments.SearchForBillsIntent" isPrivate:0 handleSelector:sel_handleSearchForBills_completion_ confirmSelector:sel_confirmSearchForBills_completion_ slotsByName:v49];
  v90[3] = v48;
  v12 = [INIntentDescription alloc];
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v47 = [[INIntentSlotDescription alloc] initWithName:@"payee" tag:2 facadePropertyName:@"payee" dataPropertyName:@"payee" isExtended:0 isPrivate:0 valueType:10 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA788 provideOptionsSelectorStrings:&unk_1F02DA7A0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolvePayeeForSendPayment_completion_, sel_resolvePayeeForSendPayment_withCompletion_, 0];
  v85[0] = v47;
  v46 = [[INIntentSlotDescription alloc] initWithName:@"currencyAmount" tag:3 facadePropertyName:@"currencyAmount" dataPropertyName:@"currencyAmount" isExtended:0 isPrivate:0 valueType:53 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA7B8 provideOptionsSelectorStrings:&unk_1F02DA7D0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveCurrencyAmountForSendPayment_completion_, sel_resolveCurrencyAmountForSendPayment_withCompletion_, 0];
  v85[1] = v46;
  v45 = [[INIntentSlotDescription alloc] initWithName:@"note" tag:5 facadePropertyName:@"note" dataPropertyName:@"note" isExtended:0 isPrivate:0 valueType:30 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA7E8 provideOptionsSelectorStrings:&unk_1F02DA800 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveNoteForSendPayment_withCompletion_, sel_resolveNoteForSendPayment_completion_, 0];
  v85[2] = v45;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];
  v43 = _INIntentSchemaBuildIntentSlotDescriptionMap(v44);
  v15 = [(INIntentDescription *)v12 initWithName:@"SendPaymentIntent" responseName:@"SendPaymentIntentResponse" facadeClass:v13 dataClass:v14 type:@"sirikit.intent.payments.SendPaymentIntent" isPrivate:0 handleSelector:sel_handleSendPayment_completion_ confirmSelector:sel_confirmSendPayment_completion_ slotsByName:v43];
  v90[4] = v15;
  v42 = [INIntentDescription alloc];
  v41 = objc_opt_class();
  v40 = objc_opt_class();
  v16 = [[INIntentSlotDescription alloc] initWithName:@"fromAccount" tag:4 facadePropertyName:@"fromAccount" dataPropertyName:@"fromAccount" isExtended:0 isPrivate:0 valueType:61 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA818 provideOptionsSelectorStrings:&unk_1F02DA830 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveFromAccountForTransferMoney_withCompletion_, sel_resolveFromAccountForTransferMoney_completion_, 0];
  v84[0] = v16;
  v17 = [[INIntentSlotDescription alloc] initWithName:@"toAccount" tag:5 facadePropertyName:@"toAccount" dataPropertyName:@"toAccount" isExtended:0 isPrivate:0 valueType:61 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA848 provideOptionsSelectorStrings:&unk_1F02DA860 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveToAccountForTransferMoney_withCompletion_, sel_resolveToAccountForTransferMoney_completion_, 0];
  v84[1] = v17;
  v18 = [[INIntentSlotDescription alloc] initWithName:@"transactionAmount" tag:6 facadePropertyName:@"transactionAmount" dataPropertyName:@"transactionAmount" isExtended:0 isPrivate:0 valueType:62 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA878 provideOptionsSelectorStrings:&unk_1F02DA890 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTransactionAmountForTransferMoney_withCompletion_, sel_resolveTransactionAmountForTransferMoney_completion_, 0];
  v84[2] = v18;
  v19 = [[INIntentSlotDescription alloc] initWithName:@"transactionScheduledDate" tag:7 facadePropertyName:@"transactionScheduledDate" dataPropertyName:@"transactionScheduledDate" isExtended:0 isPrivate:0 valueType:16 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA8A8 provideOptionsSelectorStrings:&unk_1F02DA8C0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTransactionScheduledDateForTransferMoney_withCompletion_, sel_resolveTransactionScheduledDateForTransferMoney_completion_, 0];
  v84[3] = v19;
  v20 = [[INIntentSlotDescription alloc] initWithName:@"transactionNote" tag:8 facadePropertyName:@"transactionNote" dataPropertyName:@"transactionNote" isExtended:0 isPrivate:0 valueType:7 valueStyle:1 defaultValueSelectorStrings:&unk_1F02DA8D8 provideOptionsSelectorStrings:&unk_1F02DA8F0 resolutionResultClass:objc_opt_class() resolveSelectors:sel_resolveTransactionNoteForTransferMoney_withCompletion_, sel_resolveTransactionNoteForTransferMoney_completion_, 0];
  v84[4] = v20;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:5];
  v22 = _INIntentSchemaBuildIntentSlotDescriptionMap(v21);
  v23 = [(INIntentDescription *)v42 initWithName:@"TransferMoneyIntent" responseName:@"TransferMoneyIntentResponse" facadeClass:v41 dataClass:v40 type:@"sirikit.intent.payments.TransferMoneyIntent" isPrivate:0 handleSelector:sel_handleTransferMoney_completion_ confirmSelector:sel_confirmTransferMoney_completion_ slotsByName:v22];
  v90[5] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:6];

  v25 = [v24 count];
  v26 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v25];
  v27 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v25];
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v28 = v24;
  v29 = [v28 countByEnumeratingWithState:&v79 objects:v83 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v80;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v80 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = *(*(&v79 + 1) + 8 * i);
        v34 = [v33 name];
        [v26 setObject:v33 forKey:v34];

        v35 = [v33 type];
        [v27 setObject:v33 forKey:v35];
      }

      v30 = [v28 countByEnumeratingWithState:&v79 objects:v83 count:16];
    }

    while (v30);
  }

  v36 = [v26 copy];
  v37 = sPaymentsDomain_intentDescsByName;
  sPaymentsDomain_intentDescsByName = v36;

  v38 = [v27 copy];
  v39 = sPaymentsDomain_intentDescsByType;
  sPaymentsDomain_intentDescsByType = v38;
}

@end