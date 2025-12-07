@interface FTRegAppleIDSetupManager
+ (id)sharedInstance;
- (BOOL)_shouldAttemptAccountRegistration;
- (BOOL)_shouldShowAliasSelectionUI;
- (BOOL)aliasIsEnabled:(id)enabled;
- (BOOL)beginSetupWithCompletionHandler:(id)handler;
- (BOOL)shouldShowAliasSelectionUI;
- (BOOL)showsPhoneNumberDisplayString;
- (FTRegAppleIDSetupManager)init;
- (IDSAccountController)faceTimeAccountController;
- (IDSAccountController)iMessageAccountController;
- (id)_appleID;
- (id)accountControllerForService:(id)service;
- (id)phoneNumberDisplayString;
- (void)_cleanup;
- (void)_notifySuccess:(BOOL)success error:(id)error;
- (void)_updateCandidateAliases;
- (void)_updateSelectionSummaryText;
- (void)addSetupDictionary:(id)dictionary forService:(int64_t)service;
- (void)setSelectedAliases:(id)aliases;
@end

@implementation FTRegAppleIDSetupManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[FTRegAppleIDSetupManager sharedInstance];
  }

  v3 = sharedInstance___instance;

  return v3;
}

uint64_t __42__FTRegAppleIDSetupManager_sharedInstance__block_invoke()
{
  sharedInstance___instance = objc_alloc_init(FTRegAppleIDSetupManager);

  return MEMORY[0x2821F96F8]();
}

- (FTRegAppleIDSetupManager)init
{
  v6.receiver = self;
  v6.super_class = FTRegAppleIDSetupManager;
  v2 = [(FTRegAppleIDSetupManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    setupOperations = v2->_setupOperations;
    v2->_setupOperations = v3;
  }

  return v2;
}

- (IDSAccountController)iMessageAccountController
{
  iMessageAccountController = self->_iMessageAccountController;
  if (!iMessageAccountController)
  {
    v4 = objc_alloc(MEMORY[0x277D186C8]);
    v5 = [v4 initWithService:*MEMORY[0x277D186B0]];
    v6 = self->_iMessageAccountController;
    self->_iMessageAccountController = v5;

    iMessageAccountController = self->_iMessageAccountController;
  }

  return iMessageAccountController;
}

- (IDSAccountController)faceTimeAccountController
{
  faceTimeAccountController = self->_faceTimeAccountController;
  if (!faceTimeAccountController)
  {
    v4 = objc_alloc(MEMORY[0x277D186C8]);
    v5 = [v4 initWithService:*MEMORY[0x277D18698]];
    v6 = self->_faceTimeAccountController;
    self->_faceTimeAccountController = v5;

    faceTimeAccountController = self->_faceTimeAccountController;
  }

  return faceTimeAccountController;
}

- (id)accountControllerForService:(id)service
{
  if ([service isEqualToString:*MEMORY[0x277D186B0]])
  {
    [(FTRegAppleIDSetupManager *)self iMessageAccountController];
  }

  else
  {
    [(FTRegAppleIDSetupManager *)self faceTimeAccountController];
  }
  v4 = ;

  return v4;
}

- (void)_cleanup
{
  [(FTRegAppleIDSetupManager *)self setSetupOperations:0];
  [(FTRegAppleIDSetupManager *)self setCandidateAliases:0];
  [(FTRegAppleIDSetupManager *)self setSelectedAliases:0];

  [(FTRegAppleIDSetupManager *)self setHandler:0];
}

- (void)_notifySuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  handler = [(FTRegAppleIDSetupManager *)self handler];

  if (handler)
  {
    handler2 = [(FTRegAppleIDSetupManager *)self handler];
    v8 = [handler2 copy];

    [(FTRegAppleIDSetupManager *)self setHandler:0];
    (v8)[2](v8, successCopy, errorCopy);
  }

  [(FTRegAppleIDSetupManager *)self _cleanup];
}

- (id)_appleID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __36__FTRegAppleIDSetupManager__appleID__block_invoke;
  v5[3] = &unk_278DE8BB8;
  v5[4] = &v6;
  [setupOperations enumerateKeysAndObjectsUsingBlock:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __36__FTRegAppleIDSetupManager__appleID__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v7 = IDSParseAuthDictionary();
  v6 = [v7 objectForKey:*MEMORY[0x277D187C0]];
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), v6);
    if (a4)
    {
      *a4 = 1;
    }
  }
}

- (BOOL)_shouldAttemptAccountRegistration
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __61__FTRegAppleIDSetupManager__shouldAttemptAccountRegistration__block_invoke;
  v5[3] = &unk_278DE8BE0;
  v5[4] = selfCopy;
  v5[5] = &v6;
  [setupOperations enumerateKeysAndObjectsUsingBlock:v5];

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

void __61__FTRegAppleIDSetupManager__shouldAttemptAccountRegistration__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = IDSParseAuthDictionary();
  v6 = [v5 objectForKey:*MEMORY[0x277D187C0]];
  v7 = [v4 intValue];

  v8 = MEMORY[0x277D186B0];
  if (v7 != 1)
  {
    v8 = MEMORY[0x277D18698];
  }

  v9 = *v8;
  v10 = [*(a1 + 32) accountControllerForService:v9];
  v11 = [v10 serviceName];
  v12 = [v10 accountWithLoginID:v6 service:v11];

  v13 = [v12 isActive];
  if (!v13 || (v13 = [v12 registrationStatus], v13 != 5))
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v15 = csui_log(v13, v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (*(*(*(a1 + 40) + 8) + 24))
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = 138412546;
    v18 = v16;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_243BE5000, v15, OS_LOG_TYPE_DEFAULT, "Should attempt registration: %@ for account %@", &v17, 0x16u);
  }
}

- (void)addSetupDictionary:(id)dictionary forService:(int64_t)service
{
  v13 = *MEMORY[0x277D85DE8];
  if (dictionary)
  {
    dictionaryCopy = dictionary;
    v8 = csui_log(dictionaryCopy, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134217984;
      serviceCopy = service;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Adding setup dictionary for service type: %ld", &v11, 0xCu);
    }

    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:&__block_literal_global_57_0];
    v9 = [objc_alloc(MEMORY[0x277CCABB0]) initWithInteger:service];
    setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
    [setupOperations setObject:dictionaryCopy forKey:v9];

    [(FTRegAppleIDSetupManager *)self _updateCandidateAliases];
  }
}

void __58__FTRegAppleIDSetupManager_addSetupDictionary_forService___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v6 = [v4 isEqual:@"password"];
  v7 = v6;
  v9 = csui_log(v6, v8);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v7)
  {
    if (v10)
    {
      LOWORD(v14) = 0;
      v11 = "  => password : REDACTED";
      v12 = v9;
      v13 = 2;
LABEL_6:
      _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
    }
  }

  else if (v10)
  {
    v14 = 138412546;
    v15 = v4;
    v16 = 2112;
    v17 = v5;
    v11 = "  => %@ : %@";
    v12 = v9;
    v13 = 22;
    goto LABEL_6;
  }
}

- (BOOL)_shouldShowAliasSelectionUI
{
  v18 = *MEMORY[0x277D85DE8];
  _shouldAttemptAccountRegistration = [(FTRegAppleIDSetupManager *)self _shouldAttemptAccountRegistration];
  if (_shouldAttemptAccountRegistration)
  {
    candidateAliases = [(FTRegAppleIDSetupManager *)self candidateAliases];
    v6 = _IDSCopyOrderedAliases();
    v7 = [(__CFString *)v6 count];
    v9 = csui_log(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412290;
      v17 = v6;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_DEFAULT, "  => Squashed sorted candidates: %@", &v16, 0xCu);
    }

    showsPhoneNumberDisplayString = [(FTRegAppleIDSetupManager *)self showsPhoneNumberDisplayString];
    v11 = 1;
    if (showsPhoneNumberDisplayString)
    {
      v11 = 2;
    }

    v12 = v7 > v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = csui_log(_shouldAttemptAccountRegistration, v4);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = @"NO";
    if (v12)
    {
      v14 = @"YES";
    }

    v16 = 138412290;
    v17 = v14;
    _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_DEFAULT, "shouldShowAliasSelectionUI: %@", &v16, 0xCu);
  }

  return v12;
}

- (BOOL)shouldShowAliasSelectionUI
{
  [(FTRegAppleIDSetupManager *)self _updateCandidateAliases];

  return [(FTRegAppleIDSetupManager *)self _shouldShowAliasSelectionUI];
}

- (BOOL)aliasIsEnabled:(id)enabled
{
  enabledCopy = enabled;
  v5 = CommunicationsSetupUIBundle();
  v6 = CNFRegStringTableName();
  v7 = [v5 localizedStringForKey:@"YOUR_NUMBER_STRING" value:&stru_2856D3978 table:v6];
  v8 = [enabledCopy isEqualToString:v7];

  if (v8)
  {
    v9 = 0;
  }

  else if ([(FTRegAppleIDSetupManager *)self showsPhoneNumberDisplayString])
  {
    phoneNumberDisplayString = [(FTRegAppleIDSetupManager *)self phoneNumberDisplayString];
    v11 = [enabledCopy isEqualToString:phoneNumberDisplayString];

    v9 = v11 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9 & 1;
}

- (BOOL)showsPhoneNumberDisplayString
{
  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  supportsSMSIdentification = [mEMORY[0x277D07DB0] supportsSMSIdentification];

  return supportsSMSIdentification;
}

- (id)phoneNumberDisplayString
{
  if ([(FTRegAppleIDSetupManager *)self showsPhoneNumberDisplayString])
  {
    mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
    telephoneNumber = [mEMORY[0x277D07DB0] telephoneNumber];
    _stripFZIDPrefix = [telephoneNumber _stripFZIDPrefix];

    if ([_stripFZIDPrefix length])
    {
      CNFRegFormattedPhoneNumberForString(_stripFZIDPrefix);
    }

    else
    {
      CNFRegLocalPhoneNumberDisplayString();
    }
    v5 = ;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_updateSelectionSummaryText
{
  v45 = *MEMORY[0x277D85DE8];
  _appleID = [(FTRegAppleIDSetupManager *)self _appleID];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  selfCopy = self;
  selectedAliases = [(FTRegAppleIDSetupManager *)self selectedAliases];
  v4 = [selectedAliases countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v4)
  {

LABEL_27:
    [(FTRegAppleIDSetupManager *)selfCopy setSelectionSummaryText:0];
    v7 = 0;
    goto LABEL_38;
  }

  v5 = v4;
  _appearsToBePhoneNumber = 0;
  v7 = 0;
  v8 = *v41;
  obj = selectedAliases;
  while (2)
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v41 != v8)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v40 + 1) + 8 * i);
      v11 = CommunicationsSetupUIBundle();
      v12 = CNFRegStringTableName();
      v13 = [v11 localizedStringForKey:@"YOUR_NUMBER_STRING" value:&stru_2856D3978 table:v12];
      v14 = [v10 isEqualToString:v13];

      if (v14)
      {
        v20 = v10;

LABEL_22:
        v7 = v20;
        v19 = obj;
        goto LABEL_23;
      }

      if ([(FTRegAppleIDSetupManager *)selfCopy showsPhoneNumberDisplayString])
      {
        phoneNumberDisplayString = [(FTRegAppleIDSetupManager *)selfCopy phoneNumberDisplayString];
        v16 = [v10 isEqualToString:phoneNumberDisplayString];

        if (v16)
        {
          v20 = v10;

          _appearsToBePhoneNumber = [v20 _appearsToBePhoneNumber];
          goto LABEL_22;
        }
      }

      if (((v7 != 0) & _appearsToBePhoneNumber) != 0)
      {
        _appearsToBePhoneNumber = 1;
        continue;
      }

      _appearsToBePhoneNumber2 = [v10 _appearsToBePhoneNumber];
      if ((_appearsToBePhoneNumber2 & 1) == 0 && v7)
      {
        if (![v10 isEqualToString:_appleID])
        {
          continue;
        }

        _appearsToBePhoneNumber2 = 0;
      }

      v18 = v10;

      _appearsToBePhoneNumber = _appearsToBePhoneNumber2;
      v7 = v18;
    }

    v19 = obj;
    v5 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v5)
    {
      continue;
    }

    break;
  }

LABEL_23:

  if (!v7)
  {
    goto LABEL_27;
  }

  mEMORY[0x277D07DB0] = [MEMORY[0x277D07DB0] sharedInstance];
  callingAvailable = [mEMORY[0x277D07DB0] callingAvailable];

  if (v14)
  {
    v23 = CommunicationsSetupUIBundle();
    v24 = CNFRegStringTableName();
    if (callingAvailable)
    {
      v25 = @"BUDDY_CALLERID_GENERIC_PHONE";
    }

    else
    {
      v25 = @"BUDDY_CALLERID_GENERIC_PHONE_NO_FACETIME_AUDIO";
    }

    v36 = [v23 localizedStringForKey:v25 value:&stru_2856D3978 table:v24];
    [(FTRegAppleIDSetupManager *)selfCopy setSelectionSummaryText:v36];
  }

  else
  {
    v26 = [v7 _appearsToBePhoneNumber] | _appearsToBePhoneNumber;
    v27 = MEMORY[0x277CCACA8];
    v28 = CommunicationsSetupUIBundle();
    v29 = @"BUDDY_CALLERID_UNQUOTED_NO_FACETIME_AUDIO";
    if (callingAvailable)
    {
      v29 = @"BUDDY_CALLERID_UNQUOTED";
    }

    v30 = @"BUDDY_CALLERID_QUOTED";
    if (!callingAvailable)
    {
      v30 = @"BUDDY_CALLERID_QUOTED_NO_FACETIME_AUDIO";
    }

    if (v26)
    {
      v31 = v29;
    }

    else
    {
      v31 = v30;
    }

    v32 = CNFStringKeyForIdiom(v31);
    v33 = CNFRegStringTableName();
    v34 = [v28 localizedStringForKey:v32 value:&stru_2856D3978 table:v33];
    v35 = [v27 stringWithFormat:v34, v7];

    [(FTRegAppleIDSetupManager *)selfCopy setSelectionSummaryText:v35];
  }

LABEL_38:
}

- (void)_updateCandidateAliases
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = csui_log(self, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_243BE5000, v3, OS_LOG_TYPE_DEFAULT, "Updating candidate aliases", buf, 2u);
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__2;
  v38 = __Block_byref_object_dispose__2;
  v39 = 0;
  v4 = objc_autoreleasePoolPush();
  setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __51__FTRegAppleIDSetupManager__updateCandidateAliases__block_invoke;
  v33[3] = &unk_278DE8BB8;
  v33[4] = buf;
  [setupOperations enumerateKeysAndObjectsUsingBlock:v33];

  objc_autoreleasePoolPop(v4);
  allObjects = [*(v35 + 5) allObjects];
  v7 = _IDSCopyOrderedAliases();

  v10 = csui_log(v8, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(v35 + 5);
    *v41 = 138412290;
    v42 = v11;
    _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "Candidates: %@", v41, 0xCu);
  }

  v14 = csui_log(v12, v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 138412290;
    v42 = v7;
    _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_DEFAULT, "Sorted candidate aliases: %@", v41, 0xCu);
  }

  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([(FTRegAppleIDSetupManager *)self showsPhoneNumberDisplayString])
  {
    phoneNumberDisplayString = [(FTRegAppleIDSetupManager *)self phoneNumberDisplayString];
    [v15 addObject:phoneNumberDisplayString];
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v7;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v18)
  {
    v19 = *v30;
    do
    {
      v20 = 0;
      do
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v17);
        }

        _stripFZIDPrefix = [*(*(&v29 + 1) + 8 * v20) _stripFZIDPrefix];
        if ([_stripFZIDPrefix _appearsToBePhoneNumber])
        {
          v22 = CNFRegFormattedPhoneNumberForString(_stripFZIDPrefix);
          if ([v22 length] && (objc_msgSend(v15, "containsObject:", v22) & 1) == 0)
          {
            [v15 addObject:v22];
          }
        }

        else if (([v15 containsObject:_stripFZIDPrefix] & 1) == 0)
        {
          [v15 addObject:_stripFZIDPrefix];
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v17 countByEnumeratingWithState:&v29 objects:v40 count:16];
    }

    while (v18);
  }

  v25 = csui_log(v23, v24);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 138412290;
    v42 = v15;
    _os_log_impl(&dword_243BE5000, v25, OS_LOG_TYPE_DEFAULT, "Setting candidate aliases to: %@", v41, 0xCu);
  }

  [(FTRegAppleIDSetupManager *)self setCandidateAliases:v15];
  v26 = [(FTRegAppleIDSetupManager *)self setSelectedAliases:v15];
  v28 = csui_log(v26, v27);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *v41 = 0;
    _os_log_impl(&dword_243BE5000, v28, OS_LOG_TYPE_DEFAULT, "...Done", v41, 2u);
  }

  _Block_object_dispose(buf, 8);
}

void __51__FTRegAppleIDSetupManager__updateCandidateAliases__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = IDSParseAuthDictionary();
  v4 = [v10 objectForKey:*MEMORY[0x277D187C8]];
  v5 = [v4 __imArrayByApplyingBlock:&__block_literal_global_87_0];

  if (v5)
  {
    v6 = *(*(*(a1 + 32) + 8) + 40);
    if (v6)
    {
      v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
      [v6 intersectSet:v7];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:v5];
      v9 = *(*(a1 + 32) + 8);
      v7 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

id __51__FTRegAppleIDSetupManager__updateCandidateAliases__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 objectForKey:@"uri"];
  v4 = [v2 objectForKey:@"status"];

  LODWORD(v2) = [v4 intValue];
  if (v2 == 5051)
  {
    v5 = [v3 _stripFZIDPrefix];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)setSelectedAliases:(id)aliases
{
  v13 = *MEMORY[0x277D85DE8];
  aliasesCopy = aliases;
  v5 = aliasesCopy;
  if (self->_selectedAliases != aliasesCopy)
  {
    v6 = [(NSArray *)aliasesCopy copy];
    selectedAliases = self->_selectedAliases;
    self->_selectedAliases = v6;

    v10 = csui_log(v8, v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v5;
      _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_DEFAULT, "Set selected aliases: %@", &v11, 0xCu);
    }

    [(FTRegAppleIDSetupManager *)self _updateSelectionSummaryText];
  }
}

- (BOOL)beginSetupWithCompletionHandler:(id)handler
{
  v22 = *MEMORY[0x277D85DE8];
  [(FTRegAppleIDSetupManager *)self setHandler:handler];
  setupOperations = [(FTRegAppleIDSetupManager *)self setupOperations];
  v5 = [setupOperations count];

  if (v5)
  {
    v8 = csui_log(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      if ([(FTRegAppleIDSetupManager *)self _shouldShowAliasSelectionUI])
      {
        v9 = @"YES";
      }

      else
      {
        v9 = @"NO";
      }

      selectedAliases = [(FTRegAppleIDSetupManager *)self selectedAliases];
      *buf = 138412546;
      v19 = v9;
      v20 = 2112;
      v21 = selectedAliases;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Starting setup operation. Should show selection UI:%@  selectedAliases: %@", buf, 0x16u);
    }

    setupOperations2 = [(FTRegAppleIDSetupManager *)self setupOperations];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_97;
    v16[3] = &unk_278DE8C58;
    v16[4] = self;
    [setupOperations2 enumerateKeysAndObjectsUsingBlock:v16];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_104;
    v15[3] = &unk_278DE7E08;
    v15[4] = self;
    v12 = MEMORY[0x277D85CD0];
    v13 = v15;
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke;
    block[3] = &unk_278DE7E08;
    block[4] = self;
    v12 = MEMORY[0x277D85CD0];
    v13 = block;
  }

  dispatch_async(v12, v13);
  return 1;
}

void __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_97(uint64_t a1, void *a2, uint64_t a3)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = IDSParseAuthDictionary();
  v6 = [v4 intValue];

  v7 = MEMORY[0x277D186B0];
  if (v6 != 1)
  {
    v7 = MEMORY[0x277D18698];
  }

  v8 = *v7;
  v9 = [*(a1 + 32) accountControllerForService:v8];
  v10 = [*(a1 + 32) selectedAliases];
  if (![*(a1 + 32) showsPhoneNumberDisplayString])
  {
    v11 = v10;
    goto LABEL_7;
  }

  if ([v10 count] >= 2)
  {
    v11 = [v10 subarrayWithRange:{1, objc_msgSend(v10, "count") - 1}];
LABEL_7:
    v12 = v11;
    goto LABEL_9;
  }

  v12 = 0;
LABEL_9:
  v13 = [v12 __imArrayByApplyingBlock:&__block_literal_global_99];
  v14 = [MEMORY[0x277D07DB0] sharedInstance];
  v15 = [v14 supportsSMSIdentification];

  if (v15)
  {
    if ([v13 count])
    {
      [v13 arrayByAddingObject:*MEMORY[0x277D18AB8]];
    }

    else
    {
      IMSingleObjectArray();
    }
    v16 = ;

    v13 = v16;
  }

  v17 = [v5 objectForKey:*MEMORY[0x277D187C0]];
  v18 = [v5 objectForKey:*MEMORY[0x277D187D0]];
  v20 = csui_log(v18, v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413058;
    v38 = v8;
    v39 = 2112;
    v40 = v17;
    v41 = 2112;
    v42 = v18;
    v43 = 2112;
    v44 = v13;
    _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_DEFAULT, " => Setting up service: %@   with apple id: %@  profile id: %@  aliases: %@", buf, 0x2Au);
  }

  v21 = [v9 serviceName];
  v22 = [v9 accountWithLoginID:v17 service:v21];

  v23 = [v22 isActive];
  if (v23 && (v23 = [v22 registrationStatus], v23 == 5))
  {
    v25 = csui_log(v23, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v22;
      v26 = " => Has existing registered account: %@";
      v27 = v25;
      v28 = 12;
LABEL_25:
      _os_log_impl(&dword_243BE5000, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);
    }
  }

  else
  {
    v29 = csui_log(v23, v24);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = v22;
      _os_log_impl(&dword_243BE5000, v29, OS_LOG_TYPE_DEFAULT, " => Existing account: %@", buf, 0xCu);
    }

    v30 = [v22 isUserDisabled];
    if (!v30)
    {
      v33 = v9;
      v34 = v5;
      v35 = v13;
      v36 = v8;
      v32 = dispatch_get_global_queue(21, 0);
      IDSRegistrationControlGetStateForRegistrationType();

      v25 = v33;
      goto LABEL_27;
    }

    v25 = csui_log(v30, v31);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v26 = " => Account was disabled by the user, not setting up...";
      v27 = v25;
      v28 = 2;
      goto LABEL_25;
    }
  }

LABEL_27:
}

void __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_100(uint64_t a1, uint64_t a2)
{
  if (a2 == 1)
  {
    v2 = csui_log(a1, 1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&dword_243BE5000, v2, OS_LOG_TYPE_DEFAULT, " => Do not have permission to use PhoneNumber, not setting up...", v7, 2u);
    }
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = *(a1 + 40);
    v6 = [*(a1 + 48) __imSetFromArray];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_2_101;
    v8[3] = &unk_278DE8C08;
    v9 = *(a1 + 56);
    [v4 setupAccountWithSetupParameters:v5 aliases:v6 completionHandler:v8];

    v2 = v9;
  }
}

void __60__FTRegAppleIDSetupManager_beginSetupWithCompletionHandler___block_invoke_2_101(uint64_t a1, uint64_t a2, int a3, void *a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v8 = csui_log(v6, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = @"NO";
    v11 = 138412802;
    if (a3)
    {
      v10 = @"YES";
    }

    v12 = v9;
    v13 = 2112;
    v14 = v10;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_DEFAULT, "Got response from setup operation for service: %@. Success=%@, error=%@", &v11, 0x20u);
  }
}

@end