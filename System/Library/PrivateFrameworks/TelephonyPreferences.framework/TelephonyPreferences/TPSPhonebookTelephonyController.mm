@interface TPSPhonebookTelephonyController
- (CTPhoneNumberInfo)phoneNumberInfo;
- (TPSPhonebookTelephonyController)init;
- (TPSPhonebookTelephonyController)initWithSubscriptionContext:(id)context;
- (id)getPhoneNumberInfo;
- (id)getPhoneNumberInfoWithError:(id *)error;
- (void)fetchPhoneNumberInfo;
- (void)fetchPhoneNumberInfoWithCompletion:(id)completion;
- (void)phoneBookSelected:(id)selected;
- (void)phoneNumberChanged:(id)changed;
- (void)savePhoneBookEntryAtIndex:(int)index withContactName:(id)name contactNumber:(id)number;
- (void)savePhoneBookEntryAtIndex:(int)index withContactName:(id)name contactNumber:(id)number completion:(id)completion;
- (void)selectPhoneBookWithName:(int)name password:(id)password completion:(id)completion;
- (void)setPhoneNumberInfo:(id)info;
- (void)updatePhoneNumberInfo:(id)info label:(id)label number:(id)number completion:(id)completion;
@end

@implementation TPSPhonebookTelephonyController

- (TPSPhonebookTelephonyController)init
{
  [(TPSPhonebookTelephonyController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (TPSPhonebookTelephonyController)initWithSubscriptionContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = TPSPhonebookTelephonyController;
  v6 = [(TPSTelephonyController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_subscriptionContext, context);
    [(TPSPhonebookTelephonyController *)v7 fetchPhoneNumberInfo];
  }

  return v7;
}

- (CTPhoneNumberInfo)phoneNumberInfo
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__4;
  v9 = __Block_byref_object_dispose__4;
  v10 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__TPSPhonebookTelephonyController_phoneNumberInfo__block_invoke;
  v4[3] = &unk_2782E3AA0;
  v4[4] = self;
  v4[5] = &v5;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __50__TPSPhonebookTelephonyController_phoneNumberInfo__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[9];
  if (!v3)
  {
    v4 = [v2 getPhoneNumberInfo];
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    v3 = *(*(a1 + 32) + 72);
  }

  v7 = (*(*(a1 + 40) + 8) + 40);

  objc_storeStrong(v7, v3);
}

- (void)setPhoneNumberInfo:(id)info
{
  infoCopy = info;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke;
  v6[3] = &unk_2782E39D0;
  v6[4] = self;
  v7 = infoCopy;
  v5 = infoCopy;
  [(TPSTelephonyController *)self performAtomicAccessorBlock:v6];
}

void __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke(uint64_t a1)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (*(v4 + 72) != v3)
  {
    v9 = v1;
    v10 = v2;
    objc_storeStrong((v4 + 72), v3);
    v6 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke_2;
    v7[3] = &unk_2782E39D0;
    v7[4] = v6;
    v8 = *(a1 + 40);
    [v6 performAtomicDelegateBlock:v7];
  }
}

void __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v2 = [*(a1 + 32) delegateToQueue];
  v3 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v14 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          v8 = [*(a1 + 32) delegateToQueue];
          v9 = [v8 objectForKey:v7];

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __54__TPSPhonebookTelephonyController_setPhoneNumberInfo___block_invoke_3;
          block[3] = &unk_2782E3888;
          v10 = *(a1 + 32);
          v11 = *(a1 + 40);
          block[4] = v7;
          block[5] = v10;
          v13 = v11;
          dispatch_async(v9, block);
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }
}

- (id)getPhoneNumberInfo
{
  v22 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  if ([mEMORY[0x277D07DB0] isGreenTea] && objc_msgSend(mEMORY[0x277D07DB0], "deviceType") == 4)
  {
    v6 = TPSLog(4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B8E9000, v6, OS_LOG_TYPE_DEFAULT, "Skipping phone number lookup on GreenTea iPad", buf, 2u);
    }

    v7 = 0;
  }

  else
  {
    v15 = 0;
    v7 = [(TPSPhonebookTelephonyController *)self getPhoneNumberInfoWithError:&v15];
    v8 = v15;
    v6 = v8;
    if (v8)
    {
      v10 = TPSLog(v8, v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = NSStringFromSelector(a2);
        *buf = 138412802;
        v17 = v12;
        v18 = 2112;
        v19 = v14;
        v20 = 2112;
        v21 = v6;
        _os_log_error_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", buf, 0x20u);
      }
    }
  }

  return v7;
}

- (id)getPhoneNumberInfoWithError:(id *)error
{
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  v7 = [telephonyClient getPhoneNumber:subscriptionContext error:error];

  return v7;
}

- (void)fetchPhoneNumberInfo
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __55__TPSPhonebookTelephonyController_fetchPhoneNumberInfo__block_invoke;
  v2[3] = &unk_2782E4160;
  v2[4] = self;
  v2[5] = a2;
  [(TPSPhonebookTelephonyController *)self fetchPhoneNumberInfoWithCompletion:v2];
}

void __55__TPSPhonebookTelephonyController_fetchPhoneNumberInfo__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [*(a1 + 32) setPhoneNumberInfo:a2];
  if (v5)
  {
    v8 = TPSLog(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = v9;
      v12 = NSStringFromSelector(v10);
      v13 = 138412802;
      v14 = v9;
      v15 = 2112;
      v16 = v12;
      v17 = 2112;
      v18 = v5;
      _os_log_error_impl(&dword_21B8E9000, v8, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v13, 0x20u);
    }
  }
}

- (void)fetchPhoneNumberInfoWithCompletion:(id)completion
{
  completionCopy = completion;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  [telephonyClient getPhoneNumberWithCompletion:subscriptionContext completion:completionCopy];
}

- (void)selectPhoneBookWithName:(int)name password:(id)password completion:(id)completion
{
  v6 = *&name;
  completionCopy = completion;
  passwordCopy = password;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  [telephonyClient selectPhonebook:subscriptionContext forPhonebookName:v6 withPassword:passwordCopy completion:completionCopy];
}

- (void)savePhoneBookEntryAtIndex:(int)index withContactName:(id)name contactNumber:(id)number
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __91__TPSPhonebookTelephonyController_savePhoneBookEntryAtIndex_withContactName_contactNumber___block_invoke;
  v5[3] = &unk_2782E3DA8;
  v5[4] = self;
  v5[5] = a2;
  [(TPSPhonebookTelephonyController *)self savePhoneBookEntryAtIndex:*&index withContactName:name contactNumber:name completion:v5];
}

void __91__TPSPhonebookTelephonyController_savePhoneBookEntryAtIndex_withContactName_contactNumber___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    v6 = TPSLog(v3, v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __91__TPSPhonebookTelephonyController_savePhoneBookEntryAtIndex_withContactName_contactNumber___block_invoke_cold_1(a1, v5, v6);
    }
  }
}

- (void)savePhoneBookEntryAtIndex:(int)index withContactName:(id)name contactNumber:(id)number completion:(id)completion
{
  v8 = *&index;
  completionCopy = completion;
  numberCopy = number;
  nameCopy = name;
  telephonyClient = [(TPSTelephonyController *)self telephonyClient];
  subscriptionContext = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  [telephonyClient savePhonebookEntry:subscriptionContext atIndex:v8 withContactName:nameCopy contactNumber:numberCopy completion:completionCopy];
}

- (void)updatePhoneNumberInfo:(id)info label:(id)label number:(id)number completion:(id)completion
{
  completionCopy = completion;
  [(TPSPhonebookTelephonyController *)self setUpdatePhoneNumber:number];
  [(TPSPhonebookTelephonyController *)self setUpdatePhoneNumberInfoCompletion:completionCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __81__TPSPhonebookTelephonyController_updatePhoneNumberInfo_label_number_completion___block_invoke;
  v9[3] = &unk_2782E3A48;
  v9[4] = self;
  [(TPSPhonebookTelephonyController *)self selectPhoneBookWithName:2 password:0 completion:v9];
}

void *__81__TPSPhonebookTelephonyController_updatePhoneNumberInfo_label_number_completion___block_invoke(void *result, void *a2)
{
  if (a2)
  {
    v2 = result;
    v3 = result[4];
    v4 = a2;
    [v3 setUpdatePhoneNumber:0];
    v5 = [v2[4] updatePhoneNumberInfoCompletion];
    (v5)[2](v5, v4);

    v6 = v2[4];

    return [v6 setUpdatePhoneNumberInfoCompletion:0];
  }

  return result;
}

- (void)phoneNumberChanged:(id)changed
{
  v21 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  subscriptionContext = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  v7 = [changedCopy isEqual:subscriptionContext];

  if (v7)
  {
    v10 = TPSLog(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      v15 = 138412802;
      v16 = v11;
      v17 = 2112;
      v18 = v13;
      v19 = 2112;
      v20 = subscriptionContext;
      _os_log_impl(&dword_21B8E9000, v10, OS_LOG_TYPE_DEFAULT, "[%@ %@] for subscription context %@.", &v15, 0x20u);
    }

    getPhoneNumberInfo = [(TPSPhonebookTelephonyController *)self getPhoneNumberInfo];
    [(TPSPhonebookTelephonyController *)self setPhoneNumberInfo:getPhoneNumberInfo];
  }
}

- (void)phoneBookSelected:(id)selected
{
  v39 = *MEMORY[0x277D85DE8];
  selectedCopy = selected;
  subscriptionContext = [(TPSPhonebookTelephonyController *)self subscriptionContext];
  v7 = [selectedCopy isEqual:subscriptionContext];

  if (v7)
  {
    updatePhoneNumber = [(TPSPhonebookTelephonyController *)self updatePhoneNumber];

    if (updatePhoneNumber)
    {
      v11 = TPSLog(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = objc_opt_class();
        v13 = v12;
        v14 = NSStringFromSelector(a2);
        *buf = 138412802;
        v30 = v12;
        v31 = 2112;
        v32 = v14;
        v33 = 2112;
        v34 = subscriptionContext;
        _os_log_impl(&dword_21B8E9000, v11, OS_LOG_TYPE_DEFAULT, "[%@ %@] for subscription context %@.", buf, 0x20u);
      }

      updatePhoneNumber2 = [(TPSPhonebookTelephonyController *)self updatePhoneNumber];
      v16 = [MEMORY[0x277CCACA8] tps_stringWithCTPhoneBookName:2];
      v18 = TPSLog(v16, v17);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413314;
        v30 = subscriptionContext;
        v31 = 2112;
        v32 = @"My Number";
        v33 = 2112;
        v34 = updatePhoneNumber2;
        v35 = 2112;
        v36 = v16;
        v37 = 1024;
        v38 = 1;
        _os_log_impl(&dword_21B8E9000, v18, OS_LOG_TYPE_DEFAULT, "Updating phone number (subscriptionContext: %@, label: %@, number: %@, selectedPhoneBookName: %@, index: %u).", buf, 0x30u);
      }

      telephonyClient = [(TPSTelephonyController *)self telephonyClient];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __53__TPSPhonebookTelephonyController_phoneBookSelected___block_invoke;
      v22[3] = &unk_2782E4188;
      v23 = subscriptionContext;
      v24 = @"My Number";
      v25 = updatePhoneNumber2;
      v26 = v16;
      v28 = 1;
      selfCopy = self;
      v20 = v16;
      v21 = updatePhoneNumber2;
      [telephonyClient savePhonebookEntry:v23 atIndex:1 withContactName:@"My Number" contactNumber:v21 completion:v22];
    }
  }
}

void __53__TPSPhonebookTelephonyController_phoneBookSelected___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v5 = TPSLog(v3, v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v10 = *(a1 + 72);
    v12 = 138413570;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    v18 = 2112;
    v19 = v9;
    v20 = 1024;
    v21 = v10;
    v22 = 2112;
    v23 = v3;
    _os_log_impl(&dword_21B8E9000, v5, OS_LOG_TYPE_DEFAULT, "Received response for update phone number (subscriptionContext: %@, label: %@, number: %@, selectedPhoneBookName: %@, index: %u, error: %@).", &v12, 0x3Au);
  }

  [*(a1 + 64) setUpdatePhoneNumber:0];
  v11 = [*(a1 + 64) updatePhoneNumberInfoCompletion];
  (v11)[2](v11, v3);

  [*(a1 + 64) setUpdatePhoneNumberInfoCompletion:0];
}

void __91__TPSPhonebookTelephonyController_savePhoneBookEntryAtIndex_withContactName_contactNumber___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = objc_opt_class();
  v7 = *(a1 + 40);
  v8 = v6;
  v9 = NSStringFromSelector(v7);
  v10 = 138412802;
  v11 = v6;
  v12 = 2112;
  v13 = v9;
  v14 = 2112;
  v15 = a2;
  _os_log_error_impl(&dword_21B8E9000, a3, OS_LOG_TYPE_ERROR, "[%@ %@] failed with error %@.", &v10, 0x20u);
}

@end