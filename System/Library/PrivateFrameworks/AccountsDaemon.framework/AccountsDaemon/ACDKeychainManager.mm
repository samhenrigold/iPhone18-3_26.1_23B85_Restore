@interface ACDKeychainManager
+ (ACDServer)server;
+ (BOOL)_keychainLock_removeItemForService:(id)service username:(id)username accessGroup:(id)group options:(id)options error:(id *)error;
+ (BOOL)_removeCredentialItemWithKey:(id)key forAccountWithID:(id)d username:(id)username accountTypeID:(id)iD clientID:(id)clientID options:(id)options error:(id *)error;
+ (BOOL)_removeItemForService:(id)service username:(id)username accessGroup:(id)group options:(id)options error:(id *)error;
+ (BOOL)_shouldSyncCredentialForAccount:(id)account;
+ (id)_credentialForAccountWithID:(id)d accountTypeID:(id)iD credentialType:(id)type clientID:(id)clientID allowAdditionalAccountTypeSegment:(BOOL)segment options:(id)options error:(id *)error;
+ (id)_fetchOptionsForAccount:(id)account;
+ (id)_itemForServiceName:(id)name username:(id)username accessGroup:(id)group options:(id)options error:(id *)error;
+ (id)credentialForAccount:(id)account clientID:(id)d error:(id *)error;
+ (id)credentialForManagedAccountObject:(id)object clientID:(id)d error:(id *)error;
+ (id)keychainServiceNameForClientID:(id)d accountTypeIdentifier:(id)identifier additionalAccountTypeSegment:(id)segment key:(id)key;
+ (void)_accountTypeIdentifierFromComponents:(id)components handler:(id)handler;
+ (void)_createNoSyncOAuthTokens:(id)tokens account:(id)account clientID:(id)d;
+ (void)_fallbackToUnsyncedOAuthTokens:(id)tokens;
+ (void)_keychainLock_addItem:(id)item forServiceName:(id)name username:(id)username accessGroup:(id)group accessibility:(id)accessibility syncable:(BOOL)syncable requiresTouchID:(BOOL)d error:(id *)self0;
+ (void)_keychainLock_updateItem:(id)item existingPassword:(id)password forServiceName:(id)name username:(id)username accessGroup:(id)group accessibility:(id)accessibility options:(id)options error:(id *)self0;
+ (void)_migrateCredential:(id)credential forAccount:(id)account clientID:(id)d;
+ (void)_removeCredentialsForAccount:(id)account clientID:(id)d options:(id)options error:(id *)error;
+ (void)_saveCredential:(id)credential forAccount:(id)account clientID:(id)d error:(id *)error;
+ (void)_setCredentialForAccount:(id)account clientID:(id)d handleCredentialItemRemovals:(BOOL)removals error:(id *)error;
+ (void)_setItem:(id)item forServiceName:(id)name username:(id)username accessGroup:(id)group accessibility:(id)accessibility syncable:(BOOL)syncable requiresTouchID:(BOOL)d options:(id)self0 error:(id *)self1;
+ (void)_setNonPersistentCredentialTimerForAccount:(id)account;
+ (void)componentsFromKeychainServiceName:(id)name handler:(id)handler;
+ (void)initialize;
+ (void)notifiyCredentialChangedForAccount:(id)account;
+ (void)removeCredentialForAccount:(id)account clientID:(id)d error:(id *)error;
+ (void)removeCredentialForAccount:(id)account error:(id *)error;
+ (void)removeCredentialForAccount:(id)account key:(id)key error:(id *)error;
@end

@implementation ACDKeychainManager

+ (void)initialize
{
  _ac_keychainLock = objc_opt_new();

  MEMORY[0x2821F96F8]();
}

+ (ACDServer)server
{
  WeakRetained = objc_loadWeakRetained(&sServer);

  return WeakRetained;
}

+ (id)_fetchOptionsForAccount:(id)account
{
  accountCopy = account;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if ([self _shouldSyncCredentialForAccount:accountCopy])
  {
    [v5 setObject:*MEMORY[0x277CDC148] forKeyedSubscript:*MEMORY[0x277CDC140]];
  }

  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v8 = [identifier isEqual:*MEMORY[0x277CB8BB0]];

  if (v8)
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"ICLOUD_STORAGE" value:&stru_2835374D8 table:@"Localizable"];
    [v5 setObject:v10 forKeyedSubscript:*MEMORY[0x277CDC5C0]];
  }

  if ([v5 count])
  {
    v11 = [v5 copy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (id)credentialForManagedAccountObject:(id)object clientID:(id)d error:(id *)error
{
  v8 = MEMORY[0x277CB8F30];
  dCopy = d;
  objectCopy = object;
  v11 = [[v8 alloc] initWithManagedAccount:objectCopy];

  v12 = [self credentialForAccount:v11 clientID:dCopy error:error];

  return v12;
}

+ (id)credentialForAccount:(id)account clientID:(id)d error:(id *)error
{
  v50[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dCopy = d;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];

  accountType2 = [accountCopy accountType];
  credentialType = [accountType2 credentialType];

  v15 = _ACDKeychainLogSystem(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager credentialForAccount:clientID:error:];
  }

  v16 = [MEMORY[0x277CB8F38] credentialPolicyIsMixedForAccountTypeIdentifier:identifier];
  accountType3 = [accountCopy accountType];
  credentialProtectionPolicy = [accountType3 credentialProtectionPolicy];
  v19 = [ACDKeychain canAccessPasswordsWithPolicy:credentialProtectionPolicy];

  if ((v19 | v16))
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy_;
    v47 = __Block_byref_object_dispose_;
    v48 = 0;
    if (error)
    {
      *error = 0;
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = __Block_byref_object_copy_;
    v42 = __Block_byref_object_dispose_;
    v43 = 0;
    v21 = MEMORY[0x277CB8F98];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke;
    v30[3] = &unk_27848BCA8;
    v31 = accountCopy;
    p_buf = &buf;
    v36 = &v38;
    selfCopy = self;
    v32 = identifier;
    v33 = credentialType;
    v34 = dCopy;
    v22 = [v21 performWithinPersonaForAccount:v31 withBlock:v30];
    if (*(*(&buf + 1) + 40))
    {
      v23 = _ACDKeychainLogSystem(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        +[ACDKeychainManager credentialForAccount:clientID:error:];
      }

      if (error)
      {
        v22 = *(*(&buf + 1) + 40);
        *error = v22;
      }
    }

    v24 = _ACDKeychainLogSystem(v22);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager credentialForAccount:clientID:error:];
    }

    error = v39[5];
    _Block_object_dispose(&v38, 8);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v25 = _ACDKeychainLogSystem(v20);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [accountCopy identifier];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = identifier2;
      _os_log_impl(&dword_221D2F000, v25, OS_LOG_TYPE_DEFAULT, "Credential for account %@ is not currently available", &buf, 0xCu);
    }

    if (error)
    {
      v27 = MEMORY[0x277CCA9B8];
      v49 = *MEMORY[0x277CCA450];
      v50[0] = @"Credential data is currently unavailable for Account ";
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:&v49 count:1];
      *error = [v27 errorWithDomain:*MEMORY[0x277CB8DC0] code:10 userInfo:v28];

      error = 0;
    }
  }

  return error;
}

void __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) credentialLocation];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 identifier];

    if (v4)
    {
      v6 = [*(a1 + 32) identifier];
      goto LABEL_6;
    }
  }

  else
  {
    v5 = [v3 qualifiedUsername];
    if (v5)
    {

      v6 = [*(a1 + 32) qualifiedUsername];
LABEL_6:
      v7 = v6;
      v8 = *(a1 + 80);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = *(a1 + 40);
      v12 = [v8 _fetchOptionsForAccount:*(a1 + 32)];
      v13 = a1 + 64;
      v14 = *(*(a1 + 64) + 8);
      obj = *(v14 + 40);
      v15 = [v8 _credentialForAccountWithID:v7 accountTypeID:v11 credentialType:v9 clientID:v10 allowAdditionalAccountTypeSegment:1 options:v12 error:&obj];
      objc_storeStrong((v14 + 40), obj);
      v16 = *(*(a1 + 72) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      v18 = [*(*(*(a1 + 72) + 8) + 40) keysForCredentialItems];
      if ([v18 count])
      {
        v19 = *(*(*v13 + 8) + 40);

        if (!v19)
        {
LABEL_45:
          v73 = [*(*(*(a1 + 72) + 8) + 40) oauthTokenNoSync];

          v74 = *(a1 + 80);
          v75 = *(*(*(a1 + 72) + 8) + 40);
          if (v73)
          {
            [v74 _fallbackToUnsyncedOAuthTokens:v75];
          }

          else
          {
            [v74 _createNoSyncOAuthTokens:v75 account:*(a1 + 32) clientID:*(a1 + 56)];
          }

          goto LABEL_48;
        }
      }

      else
      {
      }

      v25 = _ACDKeychainLogSystem(v20);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke_cold_1();
      }

      v26 = *(a1 + 32);
      if (v2)
      {
        [v26 qualifiedUsername];
      }

      else
      {
        [v26 identifier];
      }
      v27 = ;
      v28 = v27;
      if (v27 && [v27 length])
      {
        v29 = *(a1 + 80);
        v76 = v7;
        v30 = *(a1 + 48);
        v31 = *(a1 + 56);
        v32 = *(a1 + 40);
        v33 = [v29 _fetchOptionsForAccount:*(a1 + 32)];
        v34 = *(*(a1 + 64) + 8);
        v79 = *(v34 + 40);
        v35 = v30;
        v7 = v76;
        v36 = [v29 _credentialForAccountWithID:v28 accountTypeID:v32 credentialType:v35 clientID:v31 allowAdditionalAccountTypeSegment:0 options:v33 error:&v79];
        objc_storeStrong((v34 + 40), v79);
        v37 = *(*(a1 + 72) + 8);
        v38 = *(v37 + 40);
        *(v37 + 40) = v36;
      }

      v39 = [*(*(*(a1 + 72) + 8) + 40) keysForCredentialItems];
      if ([v39 count])
      {
        v40 = *(*(*v13 + 8) + 40);

        if (!v40)
        {
          if (v2)
          {
            goto LABEL_44;
          }

          v41 = [*(a1 + 32) qualifiedUsername];

          if (!v41)
          {
            goto LABEL_44;
          }

          v43 = _ACDKeychainLogSystem(v42);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_38;
          }

          v44 = *(a1 + 32);
          v45 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138412546;
          v82 = v44;
          v83 = 2112;
          v84 = v45;
          v46 = "Found an identifier-based credential for account %@ which isn't set to use them! Migrating to qualifiedUsreName-based credential. Error: %@";
          goto LABEL_37;
        }
      }

      else
      {
      }

      v47 = [*(*(*(a1 + 72) + 8) + 40) keysForCredentialItems];
      if ([v47 count] && !*(*(*v13 + 8) + 40))
      {
      }

      else
      {
        v48 = [*(a1 + 32) username];
        v49 = [v48 length];

        if (v49)
        {
          v77 = v7;
          v51 = v28;
          v52 = _ACDKeychainLogSystem(v50);
          if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
          {
            __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke_cold_2();
          }

          v53 = *(a1 + 80);
          v54 = [*(a1 + 32) username];
          v55 = *(a1 + 48);
          v56 = *(a1 + 56);
          v57 = *(a1 + 40);
          v58 = [*(a1 + 80) _fetchOptionsForAccount:*(a1 + 32)];
          v59 = *(*(a1 + 64) + 8);
          v78 = *(v59 + 40);
          v60 = [v53 _credentialForAccountWithID:v54 accountTypeID:v57 credentialType:v55 clientID:v56 allowAdditionalAccountTypeSegment:0 options:v58 error:&v78];
          objc_storeStrong((v59 + 40), v78);
          v61 = *(*(a1 + 72) + 8);
          v62 = *(v61 + 40);
          *(v61 + 40) = v60;

          v63 = [*(*(*(a1 + 72) + 8) + 40) keysForCredentialItems];
          if (![v63 count])
          {

            v28 = v51;
            v7 = v77;
            goto LABEL_44;
          }

          v64 = *(*(*v13 + 8) + 40);

          v28 = v51;
          v7 = v77;
          if (v64)
          {
LABEL_44:

            goto LABEL_45;
          }

          v43 = _ACDKeychainLogSystem(v65);
          if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
LABEL_38:

            [*(a1 + 80) _migrateCredential:*(*(*(a1 + 72) + 8) + 40) forAccount:*(a1 + 32) clientID:*(a1 + 56)];
            goto LABEL_44;
          }

          v66 = *(a1 + 32);
          v67 = *(*(*(a1 + 64) + 8) + 40);
          *buf = 138412546;
          v82 = v66;
          v83 = 2112;
          v84 = v67;
          v46 = "Found a legacy username-based credential for account %@! Migrating to QualifiedUsername-based credential. Error: %@";
LABEL_37:
          _os_log_impl(&dword_221D2F000, v43, OS_LOG_TYPE_DEFAULT, v46, buf, 0x16u);
          goto LABEL_38;
        }
      }

      v68 = _ACDKeychainLogSystem(v50);
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        v69 = [*(a1 + 32) identifier];
        *buf = 138412290;
        v82 = v69;
        _os_log_impl(&dword_221D2F000, v68, OS_LOG_TYPE_DEFAULT, "No username for account %@. Can't look up credential", buf, 0xCu);
      }

      v70 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:11 userInfo:0];
      v71 = *(*v13 + 8);
      v72 = *(v71 + 40);
      *(v71 + 40) = v70;

      goto LABEL_44;
    }
  }

  v21 = _ACDKeychainLogSystem(v5);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [*(a1 + 32) identifier];
    *buf = 138412290;
    v82 = v22;
    _os_log_impl(&dword_221D2F000, v21, OS_LOG_TYPE_DEFAULT, "Nil qualifiedUsername for account %@. Can't look up credential", buf, 0xCu);
  }

  v23 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:11 userInfo:0];
  v24 = *(*(a1 + 64) + 8);
  v7 = *(v24 + 40);
  *(v24 + 40) = v23;
LABEL_48:
}

+ (id)_credentialForAccountWithID:(id)d accountTypeID:(id)iD credentialType:(id)type clientID:(id)clientID allowAdditionalAccountTypeSegment:(BOOL)segment options:(id)options error:(id *)error
{
  segmentCopy = segment;
  v47 = *MEMORY[0x277D85DE8];
  dCopy = d;
  iDCopy = iD;
  typeCopy = type;
  clientIDCopy = clientID;
  optionsCopy = options;
  v16 = _ACDKeychainLogSystem(optionsCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [ACDKeychainManager _credentialForAccountWithID:dCopy accountTypeID:? credentialType:? clientID:? allowAdditionalAccountTypeSegment:? options:? error:?];
  }

  v37 = objc_alloc_init(MEMORY[0x277CB8F38]);
  [v37 setCredentialType:typeCopy];
  v17 = [MEMORY[0x277CB8F38] supportedKeysForAccountTypeIdentifier:iDCopy credentialType:typeCopy];
  if ([v17 count])
  {
    if (segmentCopy)
    {
LABEL_5:
      v18 = [MEMORY[0x277CB8F38] additionalServiceSegmentForAccountTypeIdentifier:iDCopy];
      goto LABEL_10;
    }
  }

  else
  {
    v19 = _ACDKeychainLogSystem(0);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      +[ACDKeychainManager _credentialForAccountWithID:accountTypeID:credentialType:clientID:allowAdditionalAccountTypeSegment:options:error:];
    }

    if (segmentCopy)
    {
      goto LABEL_5;
    }
  }

  v18 = 0;
LABEL_10:
  v36 = [MEMORY[0x277CB8F38] credentialPolicyIsMixedForAccountTypeIdentifier:iDCopy];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v20 = v17;
  v21 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v21)
  {
    v22 = v21;
    v35 = typeCopy;
    v23 = *v43;
    while (2)
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v43 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = *(*(&v42 + 1) + 8 * i);
        v26 = iDCopy;
        v27 = [ACDKeychainManager keychainServiceNameForClientID:clientIDCopy accountTypeIdentifier:iDCopy additionalAccountTypeSegment:v18 key:v25];
        v41 = 0;
        v28 = [ACDKeychainManager _itemForServiceName:v27 username:dCopy accessGroup:0 options:optionsCopy error:&v41];
        v29 = v41;
        v30 = v29;
        if (v29 && !(([v29 code] == 11) | v36 & 1))
        {
          if (error)
          {
            v31 = v30;
            *error = v30;
          }

          v37 = 0;
          iDCopy = v26;
          goto LABEL_25;
        }

        if (v28)
        {
          [v37 setCredentialItem:v28 forKey:v25];
        }

        iDCopy = v26;
      }

      v22 = [v20 countByEnumeratingWithState:&v42 objects:v46 count:16];
      if (v22)
      {
        continue;
      }

      break;
    }

LABEL_25:
    typeCopy = v35;
  }

  v33 = _ACDKeychainLogSystem(v32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager _credentialForAccountWithID:accountTypeID:credentialType:clientID:allowAdditionalAccountTypeSegment:options:error:];
  }

  return v37;
}

+ (void)_setCredentialForAccount:(id)account clientID:(id)d handleCredentialItemRemovals:(BOOL)removals error:(id *)error
{
  removalsCopy = removals;
  v79[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dCopy = d;
  internalCredential = [accountCopy internalCredential];
  v13 = _ACDKeychainLogSystem(internalCredential);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v46 = [MEMORY[0x277CCABB0] numberWithBool:removalsCopy];
    *v75 = 138413058;
    *&v75[4] = internalCredential;
    *&v75[12] = 2112;
    *&v75[14] = accountCopy;
    *&v75[22] = 2112;
    v76 = dCopy;
    LOWORD(v77) = 2112;
    *(&v77 + 2) = v46;
    _os_log_debug_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEBUG, "Setting credential=%@; for account=%@; client=%@; handle credential removals=%@", v75, 0x2Au);
  }

  accountType = [accountCopy accountType];
  credentialProtectionPolicy = [accountType credentialProtectionPolicy];
  v16 = [ACDKeychain canAccessPasswordsWithPolicy:credentialProtectionPolicy];

  if (v16)
  {
    *v75 = 0;
    *&v75[8] = v75;
    *&v75[16] = 0x3032000000;
    v76 = __Block_byref_object_copy_;
    *&v77 = __Block_byref_object_dispose_;
    *(&v77 + 1) = 0;
    if (error)
    {
      *error = 0;
    }

    v65 = 0;
    v66 = &v65;
    v67 = 0x3032000000;
    v68 = __Block_byref_object_copy_;
    v69 = __Block_byref_object_dispose_;
    v70 = 0;
    if (removalsCopy)
    {
      if (internalCredential && (v18 = [internalCredential requiresTouchID], !v18))
      {
        v26 = _ACDKeychainLogSystem(v18);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_221D2F000, v26, OS_LOG_TYPE_DEFAULT, "Fetching exting credential to handle removed credential items", buf, 2u);
        }

        v27 = MEMORY[0x277CB8F98];
        v60[0] = MEMORY[0x277D85DD0];
        v60[1] = 3221225472;
        v60[2] = __91__ACDKeychainManager__setCredentialForAccount_clientID_handleCredentialItemRemovals_error___block_invoke;
        v60[3] = &unk_27848BCD0;
        v63 = &v65;
        v61 = accountCopy;
        v62 = dCopy;
        [v27 performWithinPersonaForAccount:v61 withBlock:v60];

        v20 = v61;
      }

      else
      {
        v64 = 0;
        [ACDKeychainManager removeCredentialForAccount:accountCopy clientID:dCopy error:&v64];
        v19 = v64;
        v20 = v19;
        if (v19)
        {
          v21 = _ACDKeychainLogSystem(v19);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v72 = accountCopy;
            v73 = 2112;
            v74 = v20;
            _os_log_impl(&dword_221D2F000, v21, OS_LOG_TYPE_DEFAULT, "Unable to remove existing credential for account %@. Error: %@", buf, 0x16u);
          }
        }
      }
    }

    v28 = *&v75[8];
    obj = *(*&v75[8] + 40);
    [self _saveCredential:internalCredential forAccount:accountCopy clientID:dCopy error:&obj];
    objc_storeStrong((v28 + 40), obj);
    v29 = *(*&v75[8] + 40);
    if (v29)
    {
      if (error)
      {
        *error = v29;
      }
    }

    else
    {
      if (internalCredential && removalsCopy)
      {
        keysForCredentialItems = [v66[5] keysForCredentialItems];
        v31 = [keysForCredentialItems mutableCopy];

        internalCredential2 = [accountCopy internalCredential];
        keysForCredentialItems2 = [internalCredential2 keysForCredentialItems];
        [v31 removeObjectsInArray:keysForCredentialItems2];

        v34 = MEMORY[0x277CB8F98];
        v53[0] = MEMORY[0x277D85DD0];
        v53[1] = 3221225472;
        v53[2] = __91__ACDKeychainManager__setCredentialForAccount_clientID_handleCredentialItemRemovals_error___block_invoke_2;
        v53[3] = &unk_27848BCF8;
        v35 = v31;
        v54 = v35;
        v55 = accountCopy;
        v56 = dCopy;
        v57 = v75;
        selfCopy = self;
        [v34 performWithinPersonaForAccount:v55 withBlock:v53];
      }

      v36 = MEMORY[0x277CB8F98];
      v47 = MEMORY[0x277D85DD0];
      v48 = 3221225472;
      v49 = __91__ACDKeychainManager__setCredentialForAccount_clientID_handleCredentialItemRemovals_error___block_invoke_25;
      v50 = &unk_27848BD20;
      selfCopy2 = self;
      v37 = accountCopy;
      v51 = v37;
      [v36 performWithinPersonaForAccount:v37 withBlock:&v47];
      v38 = MEMORY[0x277CB8F38];
      accountType2 = [v37 accountType];
      identifier = [accountType2 identifier];
      accountType3 = [v37 accountType];
      credentialType = [accountType3 credentialType];
      v43 = [v38 nonPersistentKeysForAccountTypeIdentifier:identifier credentialType:credentialType];

      if (v43)
      {
        v44 = [self _setNonPersistentCredentialTimerForAccount:v37];
      }

      v45 = _ACDKeychainLogSystem(v44);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        [ACDKeychainManager _setCredentialForAccount:v45 clientID:? handleCredentialItemRemovals:? error:?];
      }
    }

    _Block_object_dispose(&v65, 8);

    _Block_object_dispose(v75, 8);
  }

  else
  {
    v22 = _ACDKeychainLogSystem(v17);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      identifier2 = [accountCopy identifier];
      *v75 = 138412290;
      *&v75[4] = identifier2;
      _os_log_impl(&dword_221D2F000, v22, OS_LOG_TYPE_DEFAULT, "Credential for account %@ is not currently available", v75, 0xCu);
    }

    if (error)
    {
      v24 = MEMORY[0x277CCA9B8];
      v78 = *MEMORY[0x277CCA450];
      v79[0] = @"Credential data is currently unavailable.";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v79 forKeys:&v78 count:1];
      *error = [v24 errorWithDomain:*MEMORY[0x277CB8DC0] code:10 userInfo:v25];
    }
  }
}

uint64_t __91__ACDKeychainManager__setCredentialForAccount_clientID_handleCredentialItemRemovals_error___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [ACDKeychainManager credentialForAccount:a1[4] clientID:a1[5] error:0];

  return MEMORY[0x2821F96F8]();
}

void __91__ACDKeychainManager__setCredentialForAccount_clientID_handleCredentialItemRemovals_error___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = *(a1 + 32);
  v16 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v16)
  {
    v15 = *v20;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        v3 = [*(a1 + 40) identifier];
        v4 = [*(a1 + 40) qualifiedUsername];
        v5 = [*(a1 + 40) accountType];
        v6 = [v5 identifier];
        v7 = *(a1 + 48);
        v8 = [*(a1 + 64) _fetchOptionsForAccount:*(a1 + 40)];
        v9 = *(*(a1 + 56) + 8);
        v18 = *(v9 + 40);
        [ACDKeychainManager _removeCredentialItemWithKey:v17 forAccountWithID:v3 username:v4 accountTypeID:v6 clientID:v7 options:v8 error:&v18];
        objc_storeStrong((v9 + 40), v18);

        if (*(*(*(a1 + 56) + 8) + 40))
        {
          v11 = _ACDKeychainLogSystem(v10);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            v12 = *(a1 + 40);
            v13 = *(*(*(a1 + 56) + 8) + 40);
            *buf = 138412546;
            v24 = v12;
            v25 = 2112;
            v26 = v13;
            _os_log_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEFAULT, "Removal from keychain failed for account %@. Error: %@", buf, 0x16u);
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v16);
  }
}

void __91__ACDKeychainManager__setCredentialForAccount_clientID_handleCredentialItemRemovals_error___block_invoke_25(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_class() server];
  [v3 credentialsDidChangeForAccount:*(a1 + 32)];
}

+ (void)_saveCredential:(id)credential forAccount:(id)account clientID:(id)d error:(id *)error
{
  v61 = *MEMORY[0x277D85DE8];
  credentialCopy = credential;
  accountCopy = account;
  dCopy = d;
  v42 = accountCopy;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];

  if (identifier)
  {
    keysForCredentialItems = [credentialCopy keysForCredentialItems];
    v13 = _ACDKeychainLogSystem(keysForCredentialItems);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412802;
      *&buf[4] = credentialCopy;
      *&buf[12] = 2112;
      *&buf[14] = accountCopy;
      *&buf[22] = 2112;
      v58 = dCopy;
      _os_log_debug_impl(&dword_221D2F000, v13, OS_LOG_TYPE_DEBUG, "Asked to save credential: %@ for Account - %@ with the clientID - %@", buf, 0x20u);
    }

    v14 = [self _shouldSyncCredentialForAccount:accountCopy];
    v15 = MEMORY[0x277CB8F38];
    accountType2 = [accountCopy accountType];
    identifier2 = [accountType2 identifier];
    v37 = [v15 additionalServiceSegmentForAccountTypeIdentifier:identifier2];

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v58 = __Block_byref_object_copy_;
    v59 = __Block_byref_object_dispose_;
    v60 = 0;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = keysForCredentialItems;
    v18 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
    if (v18)
    {
      v19 = *v53;
      v20 = *MEMORY[0x277CB8E20];
LABEL_6:
      v21 = 0;
      while (1)
      {
        if (*v53 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v52 + 1) + 8 * v21);
        if (![v22 isEqualToString:v20] || (v14 & 1) != 0)
        {
          accountType3 = [v42 accountType];
          identifier3 = [accountType3 identifier];
          v25 = [ACDKeychainManager keychainServiceNameForClientID:dCopy accountTypeIdentifier:identifier3 additionalAccountTypeSegment:v37 key:v22];

          v26 = MEMORY[0x277CB8F38];
          accountType4 = [v42 accountType];
          identifier4 = [accountType4 identifier];
          v29 = [v26 credentialPolicyForAccountTypeIdentifier:identifier4 key:v22 clientID:dCopy];

          v30 = MEMORY[0x277CB8F98];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __64__ACDKeychainManager__saveCredential_forAccount_clientID_error___block_invoke;
          v43[3] = &unk_27848BD48;
          v31 = v42;
          v44 = v31;
          v45 = credentialCopy;
          v46 = v22;
          v32 = v25;
          v47 = v32;
          v33 = v29;
          v51 = v14;
          v48 = v33;
          v49 = buf;
          selfCopy = self;
          [v30 performWithinPersonaForAccount:v31 withBlock:v43];
          LOBYTE(v29) = *(*&buf[8] + 40) == 0;

          if ((v29 & 1) == 0)
          {
            break;
          }
        }

        if (v18 == ++v21)
        {
          v18 = [obj countByEnumeratingWithState:&v52 objects:v56 count:16];
          if (v18)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    if (error)
    {
      v34 = *(*&buf[8] + 40);
      if (v34)
      {
        *error = v34;
      }
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v35 = _ACDLogSystem(v11);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [ACDKeychainManager _saveCredential:accountCopy forAccount:v35 clientID:? error:?];
    }

    if (error)
    {
      *error = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CB8DC0] code:4 userInfo:0];
    }
  }
}

void __64__ACDKeychainManager__saveCredential_forAccount_clientID_error___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) credentialLocation];
  v3 = [*(a1 + 40) credentialItemForKey:*(a1 + 48)];
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  if (v2)
  {
    [v5 identifier];
  }

  else
  {
    [v5 qualifiedUsername];
  }
  v6 = ;
  v7 = *(a1 + 64);
  if ([*(a1 + 48) isEqualToString:*MEMORY[0x277CB8E20]])
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 88);
  }

  v9 = [*(a1 + 40) requiresTouchID];
  v10 = [*(a1 + 80) _fetchOptionsForAccount:*(a1 + 32)];
  v11 = *(*(a1 + 72) + 8);
  obj = *(v11 + 40);
  LOBYTE(v12) = v9;
  [ACDKeychainManager _setItem:v3 forServiceName:v4 username:v6 accessGroup:0 accessibility:v7 syncable:v8 requiresTouchID:v12 options:v10 error:&obj];
  objc_storeStrong((v11 + 40), obj);
}

+ (void)_setNonPersistentCredentialTimerForAccount:(id)account
{
  accountCopy = account;
  mEMORY[0x277CB8F78] = [MEMORY[0x277CB8F78] sharedInstance];
  v5 = [mEMORY[0x277CB8F78] valueForManagedDefault:*MEMORY[0x277CB8E08]];
  bOOLValue = [v5 BOOLValue];

  v8 = _ACDKeychainLogSystem(v7);
  v9 = v8;
  if (bOOLValue)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_221D2F000, v9, OS_LOG_TYPE_DEFAULT, "NOT setting timer to erase volatile keychain items because of user preference.", v10, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager _setNonPersistentCredentialTimerForAccount:];
    }

    v9 = +[ACDKeychainCleanupActivity sharedActivity];
    [v9 queueNonPersistentCredentialRemoval:accountCopy];
  }
}

+ (void)removeCredentialForAccount:(id)account error:(id *)error
{
  v6 = MEMORY[0x277CB8F30];
  accountCopy = account;
  v8 = [[v6 alloc] initWithManagedAccount:accountCopy];

  [self removeCredentialForAccount:v8 clientID:0 error:error];
}

+ (void)removeCredentialForAccount:(id)account clientID:(id)d error:(id *)error
{
  v31[1] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dCopy = d;
  v10 = _ACDLogSystem(dCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager removeCredentialForAccount:clientID:error:];
  }

  accountType = [accountCopy accountType];
  credentialProtectionPolicy = [accountType credentialProtectionPolicy];
  v13 = [ACDKeychain canAccessPasswordsWithPolicy:credentialProtectionPolicy];

  if (v13)
  {
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy_;
    v28 = __Block_byref_object_dispose_;
    v29 = 0;
    v14 = MEMORY[0x277CB8F98];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __64__ACDKeychainManager_removeCredentialForAccount_clientID_error___block_invoke;
    v19[3] = &unk_27848BD70;
    selfCopy = self;
    v20 = accountCopy;
    v21 = dCopy;
    v22 = &v24;
    v15 = [v14 performWithinPersonaForAccount:v20 withBlock:v19];
    if (error)
    {
      v15 = v25[5];
      if (v15)
      {
        v15 = v15;
        *error = v15;
      }
    }

    v16 = _ACDLogSystem(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager removeCredentialForAccount:clientID:error:];
    }

    _Block_object_dispose(&v24, 8);
  }

  else if (error)
  {
    v17 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v31[0] = @"Credential data is currently unavailable.";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    *error = [v17 errorWithDomain:*MEMORY[0x277CB8DC0] code:10 userInfo:v18];
  }
}

void __64__ACDKeychainManager_removeCredentialForAccount_clientID_error___block_invoke(void *a1)
{
  v2 = a1[7];
  v3 = a1[4];
  v4 = a1[5];
  v5 = [v2 _fetchOptionsForAccount:v3];
  v6 = *(a1[6] + 8);
  obj = *(v6 + 40);
  [v2 _removeCredentialsForAccount:v3 clientID:v4 options:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
}

+ (void)_removeCredentialsForAccount:(id)account clientID:(id)d options:(id)options error:(id *)error
{
  v48 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  dCopy = d;
  optionsCopy = options;
  v11 = _ACDKeychainLogSystem(optionsCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager _removeCredentialsForAccount:clientID:options:error:];
  }

  v36 = dCopy;

  v12 = MEMORY[0x277CB8F38];
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  accountType2 = [accountCopy accountType];
  credentialType = [accountType2 credentialType];
  v17 = [v12 supportedKeysForAccountTypeIdentifier:identifier credentialType:credentialType];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v18 = v17;
  v19 = [v18 countByEnumeratingWithState:&v37 objects:v47 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v38;
    obj = v18;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v38 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v37 + 1) + 8 * i);
        identifier2 = [accountCopy identifier];
        qualifiedUsername = [accountCopy qualifiedUsername];
        accountType3 = [accountCopy accountType];
        identifier3 = [accountType3 identifier];
        [self _removeCredentialItemWithKey:v23 forAccountWithID:identifier2 username:qualifiedUsername accountTypeID:identifier3 clientID:v36 options:optionsCopy error:error];

        if (error && *error)
        {
          v29 = _ACDKeychainLogSystem(v28);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            identifier4 = [accountCopy identifier];
            v31 = *error;
            *buf = 138412802;
            v42 = v23;
            v43 = 2112;
            v44 = identifier4;
            v45 = 2112;
            v46 = v31;
            _os_log_impl(&dword_221D2F000, v29, OS_LOG_TYPE_DEFAULT, "Unable to remove credential %@ from %@. Error: %@", buf, 0x20u);
          }
        }
      }

      v18 = obj;
      v20 = [obj countByEnumeratingWithState:&v37 objects:v47 count:16];
    }

    while (v20);
  }

  if (!v36)
  {
    server = [objc_opt_class() server];
    [server credentialsDidChangeForAccount:accountCopy];
  }
}

+ (void)removeCredentialForAccount:(id)account key:(id)key error:(id *)error
{
  v27 = *MEMORY[0x277D85DE8];
  accountCopy = account;
  keyCopy = key;
  v10 = _ACDKeychainLogSystem(keyCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = keyCopy;
    *&buf[12] = 2112;
    *&buf[14] = accountCopy;
    _os_log_impl(&dword_221D2F000, v10, OS_LOG_TYPE_DEFAULT, "Remove credential key: %@ for account: %@", buf, 0x16u);
  }

  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v22 = 0;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v11 = MEMORY[0x277CB8F98];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __59__ACDKeychainManager_removeCredentialForAccount_key_error___block_invoke;
  v15[3] = &unk_27848BD98;
  v18 = v21;
  selfCopy = self;
  v12 = keyCopy;
  v16 = v12;
  v13 = accountCopy;
  v17 = v13;
  v19 = buf;
  [v11 performWithinPersonaForAccount:v13 withBlock:v15];
  if (error)
  {
    v14 = *(*&buf[8] + 40);
    if (v14)
    {
      *error = v14;
    }
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(v21, 8);
}

void __59__ACDKeychainManager_removeCredentialForAccount_key_error___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) identifier];
  v5 = [*(a1 + 40) qualifiedUsername];
  v6 = [*(a1 + 40) accountType];
  v7 = [v6 identifier];
  v8 = [*(a1 + 64) _fetchOptionsForAccount:*(a1 + 40)];
  v9 = *(*(a1 + 56) + 8);
  obj = *(v9 + 40);
  LOBYTE(v2) = [v2 _removeCredentialItemWithKey:v3 forAccountWithID:v4 username:v5 accountTypeID:v7 clientID:0 options:v8 error:&obj];
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v2;

  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v10 = [objc_opt_class() server];
    [v10 credentialsDidChangeForAccount:*(a1 + 40)];
  }
}

+ (BOOL)_removeCredentialItemWithKey:(id)key forAccountWithID:(id)d username:(id)username accountTypeID:(id)iD clientID:(id)clientID options:(id)options error:(id *)error
{
  dCopy = d;
  optionsCopy = options;
  v16 = MEMORY[0x277CB8F38];
  clientIDCopy = clientID;
  iDCopy = iD;
  usernameCopy = username;
  keyCopy = key;
  v21 = [v16 additionalServiceSegmentForAccountTypeIdentifier:iDCopy];
  v22 = [ACDKeychainManager keychainServiceNameForClientID:clientIDCopy accountTypeIdentifier:iDCopy additionalAccountTypeSegment:v21 key:keyCopy];

  v23 = [ACDKeychainManager _removeItemForService:v22 username:usernameCopy accessGroup:0 options:optionsCopy error:error];
  v24 = dCopy != 0 || v23;
  if (dCopy && !v23)
  {
    v24 = [ACDKeychainManager _removeItemForService:v22 username:dCopy accessGroup:0 options:optionsCopy error:error];
  }

  return v24;
}

+ (id)keychainServiceNameForClientID:(id)d accountTypeIdentifier:(id)identifier additionalAccountTypeSegment:(id)segment key:(id)key
{
  dCopy = d;
  identifierCopy = identifier;
  segmentCopy = segment;
  keyCopy = key;
  v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
  v14 = v13;
  if (dCopy)
  {
    [v13 addObject:dCopy];
  }

  [v14 addObject:identifierCopy];
  if (segmentCopy)
  {
    [v14 addObject:segmentCopy];
  }

  [v14 addObject:keyCopy];
  v15 = [v14 componentsJoinedByString:@"."];

  return v15;
}

+ (void)componentsFromKeychainServiceName:(id)name handler:(id)handler
{
  handlerCopy = handler;
  v7 = [name componentsSeparatedByString:@"."];
  v8 = [v7 mutableCopy];

  lastObject = [v8 lastObject];
  [v8 removeLastObject];
  if ([lastObject length] && (objc_msgSend(MEMORY[0x277CB8F38], "allSupportedKeys"), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "containsObject:", lastObject), v10, (v11 & 1) != 0))
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __64__ACDKeychainManager_componentsFromKeychainServiceName_handler___block_invoke;
    v12[3] = &unk_27848BDC0;
    v14 = handlerCopy;
    v13 = lastObject;
    [self _accountTypeIdentifierFromComponents:v8 handler:v12];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0, 0, 0);
  }
}

void __64__ACDKeychainManager_componentsFromKeychainServiceName_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if ([v10 length] && (objc_msgSend(MEMORY[0x277CB8F58], "allIdentifiers"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "containsObject:", v10), v6, (v7 & 1) != 0))
  {
    if ([v5 count])
    {
      v8 = [v5 componentsJoinedByString:@"."];
      (*(*(a1 + 40) + 16))();

      goto LABEL_7;
    }

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v9 = *(*(a1 + 40) + 16);
  }

  v9();
LABEL_7:
}

+ (void)_accountTypeIdentifierFromComponents:(id)components handler:(id)handler
{
  componentsCopy = components;
  handlerCopy = handler;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__ACDKeychainManager__accountTypeIdentifierFromComponents_handler___block_invoke;
  v12[3] = &unk_27848BDE8;
  v8 = v7;
  v13 = v8;
  v14 = v20;
  v15 = &v16;
  [componentsCopy enumerateObjectsWithOptions:2 usingBlock:v12];
  if (v17[3])
  {
    v9 = [v8 componentsJoinedByString:@"."];
    v10 = [v8 count];
    if (v10 == [componentsCopy count])
    {
      handlerCopy[2](handlerCopy, v9, 0);
    }

    else
    {
      v11 = [componentsCopy subarrayWithRange:{0, objc_msgSend(componentsCopy, "count") - objc_msgSend(v8, "count")}];
      (handlerCopy)[2](handlerCopy, v9, v11);
    }
  }

  else
  {
    handlerCopy[2](handlerCopy, 0, 0);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(v20, 8);
}

void __67__ACDKeychainManager__accountTypeIdentifierFromComponents_handler___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  [*(a1 + 32) insertObject:? atIndex:?];
  if (*(*(*(a1 + 40) + 8) + 24) == 1 && [v6 isEqualToString:@"com"])
  {
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a4 = 1;
  }

  *(*(*(a1 + 40) + 8) + 24) = [v6 isEqualToString:@"apple"];
}

+ (void)_migrateCredential:(id)credential forAccount:(id)account clientID:(id)d
{
  credentialCopy = credential;
  accountCopy = account;
  dCopy = d;
  v18 = 0;
  [self _saveCredential:credentialCopy forAccount:accountCopy clientID:dCopy error:&v18];
  v11 = v18;
  if (!v11)
  {
    v12 = MEMORY[0x277CB8F98];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__ACDKeychainManager__migrateCredential_forAccount_clientID___block_invoke;
    v13[3] = &unk_27848BE10;
    v14 = credentialCopy;
    v15 = dCopy;
    v16 = accountCopy;
    selfCopy = self;
    [v12 performWithinPersonaForAccount:v16 withBlock:v13];
  }
}

void __61__ACDKeychainManager__migrateCredential_forAccount_clientID___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [*(a1 + 32) keysForCredentialItems];
  v2 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    do
    {
      v5 = 0;
      do
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * v5);
        v7 = *(a1 + 40);
        v8 = [*(a1 + 48) accountType];
        v9 = [v8 identifier];
        v10 = [ACDKeychainManager keychainServiceNameForClientID:v7 accountTypeIdentifier:v9 additionalAccountTypeSegment:0 key:v6];

        if (![*(a1 + 48) credentialLocation])
        {
          v11 = [*(a1 + 48) identifier];
          v12 = [*(a1 + 56) _fetchOptionsForAccount:*(a1 + 48)];
          [ACDKeychainManager _removeItemForService:v10 username:v11 accessGroup:0 options:v12 error:0];
        }

        v13 = [*(a1 + 48) username];
        if (v13)
        {
          v14 = v13;
          v15 = [*(a1 + 48) username];
          v16 = [*(a1 + 48) qualifiedUsername];
          v17 = [v15 isEqualToString:v16];

          if ((v17 & 1) == 0)
          {
            v18 = [*(a1 + 48) username];
            v19 = [*(a1 + 56) _fetchOptionsForAccount:*(a1 + 48)];
            [ACDKeychainManager _removeItemForService:v10 username:v18 accessGroup:0 options:v19 error:0];
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v3);
  }
}

+ (id)_itemForServiceName:(id)name username:(id)username accessGroup:(id)group options:(id)options error:(id *)error
{
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  optionsCopy = options;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = __Block_byref_object_copy_;
  v39 = __Block_byref_object_dispose_;
  v40 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy_;
  v33 = __Block_byref_object_dispose_;
  v34 = 0;
  v15 = _ac_keychainLock;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke;
  v22[3] = &unk_27848BE38;
  v27 = &v35;
  v16 = nameCopy;
  v23 = v16;
  v17 = usernameCopy;
  v24 = v17;
  v18 = groupCopy;
  v25 = v18;
  v19 = optionsCopy;
  v26 = v19;
  v28 = &v29;
  [v15 lockPerformForService:v16 username:v17 block:v22];
  if (error)
  {
    *error = v30[5];
  }

  v20 = v36[5];

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v20;
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke(void *a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a1 + 4;
  v2 = a1[4];
  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v26 = 0;
  v7 = [ACDKeychain passwordForServiceName:v2 username:v4 accessGroup:v5 options:v6 error:&v26];
  v8 = v26;
  v9 = *(a1[8] + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v7;

  if (*(*(a1[8] + 8) + 40))
  {
    v12 = v8 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (v12)
  {
    v17 = _ACDKeychainLogSystem(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_4((a1 + 4), (a1 + 5));
    }
  }

  else if (v8)
  {
    v13 = [v8 code];
    v14 = _ACDKeychainLogSystem(v13);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG);
    if (v13 == -25308)
    {
      if (v15)
      {
        __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_1((a1 + 4), (a1 + 5));
      }

      v16 = 10;
    }

    else if (v13 == -25300)
    {
      if (v15)
      {
        __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_2((a1 + 4), (a1 + 5));
      }

      v16 = 11;
    }

    else
    {
      if (v15)
      {
        v24 = *v3;
        v25 = ACHashedString();
        *buf = 138412802;
        v30 = v8;
        v31 = 2112;
        v32 = v24;
        v33 = 2112;
        v34 = v25;
        _os_log_debug_impl(&dword_221D2F000, v14, OS_LOG_TYPE_DEBUG, "Keychain fetch failed with error: %@ for item: %@.%@", buf, 0x20u);
      }

      v16 = 12;
    }

    v18 = MEMORY[0x277CCA9B8];
    v19 = *MEMORY[0x277CB8DC0];
    v27[0] = *MEMORY[0x277CCA450];
    v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to fetch credential from keychain (%ld)", objc_msgSend(v8, "code")];
    v27[1] = *MEMORY[0x277CCA7E8];
    v28[0] = v17;
    v28[1] = v8;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    v21 = [v18 errorWithDomain:v19 code:v16 userInfo:v20];
    v22 = *(a1[9] + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  else
  {
    v17 = _ACDKeychainLogSystem(v11);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_3((a1 + 4), (a1 + 5));
    }
  }
}

+ (BOOL)_shouldSyncCredentialForAccount:(id)account
{
  v23[25] = *MEMORY[0x277D85DE8];
  accountCopy = account;
  v4 = *MEMORY[0x277CB8D30];
  v23[0] = *MEMORY[0x277CB8C30];
  v23[1] = v4;
  v5 = *MEMORY[0x277CB8D20];
  v23[2] = *MEMORY[0x277CB8D50];
  v23[3] = v5;
  v6 = *MEMORY[0x277CB8D28];
  v23[4] = *MEMORY[0x277CB8C18];
  v23[5] = v6;
  v23[6] = *MEMORY[0x277CB8D00];
  v23[7] = @"com.apple.linkedin";
  v7 = *MEMORY[0x277CB8D10];
  v23[8] = *MEMORY[0x277CB8D18];
  v23[9] = v7;
  v8 = *MEMORY[0x277CB8BD8];
  v23[10] = *MEMORY[0x277CB8BC8];
  v23[11] = v8;
  v9 = *MEMORY[0x277CB8C60];
  v23[12] = *MEMORY[0x277CB8BC0];
  v23[13] = v9;
  v10 = *MEMORY[0x277CB8CF8];
  v23[14] = *MEMORY[0x277CB8CD8];
  v23[15] = v10;
  v11 = *MEMORY[0x277CB8D38];
  v23[16] = *MEMORY[0x277CB8C98];
  v23[17] = v11;
  v12 = *MEMORY[0x277CB8C68];
  v23[18] = *MEMORY[0x277CB8C70];
  v23[19] = v12;
  v13 = *MEMORY[0x277CB8B80];
  v23[20] = *MEMORY[0x277CB8B98];
  v23[21] = v13;
  v14 = *MEMORY[0x277CB8CE8];
  v23[22] = *MEMORY[0x277CB8B88];
  v23[23] = v14;
  v23[24] = *MEMORY[0x277CB8CC8];
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:25];
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  if ([v15 containsObject:identifier])
  {
    v18 = [accountCopy objectForKeyedSubscript:*MEMORY[0x277CB8A90]];
    if (v18)
    {
      LOBYTE(v19) = 0;
    }

    else
    {
      v20 = [accountCopy accountPropertyForKey:@"mcPayloadUUID"];
      if (v20)
      {
        LOBYTE(v19) = 0;
      }

      else
      {
        v21 = [accountCopy objectForKeyedSubscript:*MEMORY[0x277CB8B68]];
        v19 = [v21 BOOLValue] ^ 1;
      }
    }
  }

  else
  {
    LOBYTE(v19) = 0;
  }

  return v19;
}

+ (void)_setItem:(id)item forServiceName:(id)name username:(id)username accessGroup:(id)group accessibility:(id)accessibility syncable:(BOOL)syncable requiresTouchID:(BOOL)d options:(id)self0 error:(id *)self1
{
  itemCopy = item;
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  accessibilityCopy = accessibility;
  optionsCopy = options;
  v41 = 0;
  v42 = &v41;
  v43 = 0x3032000000;
  v44 = __Block_byref_object_copy_;
  v45 = __Block_byref_object_dispose_;
  v46 = 0;
  v22 = _ac_keychainLock;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __120__ACDKeychainManager__setItem_forServiceName_username_accessGroup_accessibility_syncable_requiresTouchID_options_error___block_invoke;
  v30[3] = &unk_27848BE60;
  v23 = nameCopy;
  v31 = v23;
  v24 = itemCopy;
  v32 = v24;
  v25 = usernameCopy;
  v33 = v25;
  v26 = groupCopy;
  v34 = v26;
  v27 = optionsCopy;
  v35 = v27;
  v37 = &v41;
  selfCopy = self;
  v28 = accessibilityCopy;
  v36 = v28;
  syncableCopy = syncable;
  dCopy = d;
  [v22 lockPerformForService:v23 username:v25 block:v30];
  if (error)
  {
    *error = v42[5];
  }

  _Block_object_dispose(&v41, 8);
}

void __120__ACDKeychainManager__setItem_forServiceName_username_accessGroup_accessibility_syncable_requiresTouchID_options_error___block_invoke(uint64_t a1)
{
  v36[2] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) length] && objc_msgSend(*(a1 + 40), "length") && objc_msgSend(*(a1 + 48), "length"))
  {
    v2 = *(a1 + 32);
    v3 = *(a1 + 48);
    v4 = *(a1 + 56);
    v5 = *(a1 + 64);
    v34 = 0;
    v6 = [ACDKeychain passwordForServiceName:v2 username:v3 accessGroup:v4 options:v5 error:&v34];
    v7 = v34;
    v8 = v7;
    if (v7 && [v7 code] != -25300)
    {
      v18 = MEMORY[0x277CCACA8];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v8, "code")}];
      v20 = [v18 stringWithFormat:@"Unable to fetch existing credential due to error %@", v19];

      v21 = MEMORY[0x277CCA9B8];
      v22 = *MEMORY[0x277CB8DC0];
      v23 = *MEMORY[0x277CCA7E8];
      v35[0] = *MEMORY[0x277CCA450];
      v35[1] = v23;
      v36[0] = v20;
      v36[1] = v8;
      v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
      v25 = [v21 errorWithDomain:v22 code:13 userInfo:v24];
      v26 = *(*(a1 + 80) + 8);
      v27 = *(v26 + 40);
      *(v26 + 40) = v25;
    }

    else
    {
      v9 = *(a1 + 88);
      v11 = *(a1 + 32);
      v10 = *(a1 + 40);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      v14 = *(a1 + 72);
      if (v6)
      {
        v15 = *(a1 + 64);
        v16 = *(*(a1 + 80) + 8);
        v33 = *(v16 + 40);
        [v9 _keychainLock_updateItem:v10 existingPassword:v6 forServiceName:v11 username:v12 accessGroup:v13 accessibility:v14 options:v15 error:&v33];
        v17 = v33;
      }

      else
      {
        v28 = *(a1 + 96);
        v29 = *(a1 + 97);
        v16 = *(*(a1 + 80) + 8);
        v32 = *(v16 + 40);
        LOBYTE(v31) = v29;
        [v9 _keychainLock_addItem:v10 forServiceName:v11 username:v12 accessGroup:v13 accessibility:v14 syncable:v28 requiresTouchID:v31 error:&v32];
        v17 = v32;
      }

      v30 = v17;
      v20 = *(v16 + 40);
      *(v16 + 40) = v30;
    }
  }
}

+ (void)_keychainLock_updateItem:(id)item existingPassword:(id)password forServiceName:(id)name username:(id)username accessGroup:(id)group accessibility:(id)accessibility options:(id)options error:(id *)self0
{
  v38[2] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  accessibilityCopy = accessibility;
  optionsCopy = options;
  v21 = [password isEqualToString:itemCopy];
  if ((v21 & 1) == 0)
  {
    v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v23 = [itemCopy dataUsingEncoding:4];
    v24 = [v22 setObject:v23 forKey:*MEMORY[0x277CDC5E8]];
    if (accessibilityCopy)
    {
      v25 = _ACDKeychainLogSystem(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
      }

      [v22 setObject:accessibilityCopy forKey:*MEMORY[0x277CDBED8]];
    }

    v36 = 0;
    [ACDKeychain updateItemForServiceName:nameCopy username:usernameCopy accessGroup:groupCopy newValues:v22 options:optionsCopy error:&v36];
    v26 = v36;
    v27 = _ACDKeychainLogSystem(v26);
    v28 = v27;
    if (v26)
    {
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
      }

      if (!error)
      {
        goto LABEL_16;
      }

      v29 = MEMORY[0x277CCACA8];
      v35 = v23;
      v30 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v26, "code")}];
      v28 = [v29 stringWithFormat:@"Unable to store credential due to error %@", v30];

      v34 = MEMORY[0x277CCA9B8];
      v33 = *MEMORY[0x277CB8DC0];
      v31 = *MEMORY[0x277CCA7E8];
      v37[0] = *MEMORY[0x277CCA450];
      v37[1] = v31;
      v38[0] = v28;
      v38[1] = v26;
      v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
      *error = [v34 errorWithDomain:v33 code:13 userInfo:v32];

      v23 = v35;
    }

    else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
    }

LABEL_16:
    goto LABEL_17;
  }

  v22 = _ACDKeychainLogSystem(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
  {
    +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
  }

LABEL_17:
}

+ (void)_keychainLock_addItem:(id)item forServiceName:(id)name username:(id)username accessGroup:(id)group accessibility:(id)accessibility syncable:(BOOL)syncable requiresTouchID:(BOOL)d error:(id *)self0
{
  syncableCopy = syncable;
  v49[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  nameCopy = name;
  usernameCopy = username;
  groupCopy = group;
  accessibilityCopy = accessibility;
  v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v20 = v19;
  if (accessibilityCopy && !d)
  {
    v21 = _ACDKeychainLogSystem(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager _keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:];
    }

    [v20 setObject:accessibilityCopy forKey:*MEMORY[0x277CDBED8]];
  }

  v22 = MEMORY[0x277CBED10];
  if (syncableCopy)
  {
    v22 = MEMORY[0x277CBED28];
  }

  [v20 setObject:*v22 forKey:*MEMORY[0x277CDC140]];
  if (!d)
  {
LABEL_20:
    v28 = [itemCopy dataUsingEncoding:4];
    v44 = 0;
    [ACDKeychain addItemWithServiceName:nameCopy username:usernameCopy accessGroup:groupCopy passwordData:v28 options:v20 error:&v44];
    v30 = v44;
    v31 = _ACDKeychainLogSystem(v30);
    v32 = v31;
    if (v30)
    {
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        +[ACDKeychainManager _keychainLock_addItem:forServiceName:username:accessGroup:accessibility:syncable:requiresTouchID:error:];
      }

      if (!error)
      {
        goto LABEL_28;
      }

      v42 = nameCopy;
      v33 = MEMORY[0x277CCACA8];
      v34 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v30, "code")}];
      v32 = [v33 stringWithFormat:@"Unable to store credential due to error %@", v34];

      v35 = MEMORY[0x277CCA9B8];
      v36 = *MEMORY[0x277CB8DC0];
      v37 = *MEMORY[0x277CCA7E8];
      v46[0] = *MEMORY[0x277CCA450];
      v46[1] = v37;
      v47[0] = v32;
      v47[1] = v30;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
      v38 = groupCopy;
      v40 = v39 = usernameCopy;
      v41 = v35;
      nameCopy = v42;
      *error = [v41 errorWithDomain:v36 code:13 userInfo:v40];

      usernameCopy = v39;
      groupCopy = v38;
    }

    else if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
    {
      +[ACDKeychainManager _keychainLock_addItem:forServiceName:username:accessGroup:accessibility:syncable:requiresTouchID:error:];
    }

LABEL_28:
    goto LABEL_29;
  }

  error = 0;
  v23 = SecAccessControlCreateWithFlags(*MEMORY[0x277CBECE8], *MEMORY[0x277CDBF10], 1uLL, &error);
  if (v23)
  {
    v24 = error == 0;
  }

  else
  {
    v24 = 0;
  }

  if (v24)
  {
    v29 = v23;
    [v20 setObject:v23 forKeyedSubscript:*MEMORY[0x277CDBEC0]];

    goto LABEL_20;
  }

  v25 = _ACDKeychainLogSystem(v23);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    +[ACDKeychainManager _keychainLock_addItem:forServiceName:username:accessGroup:accessibility:syncable:requiresTouchID:error:];
  }

  if (error)
  {
    CFRelease(error);
  }

  if (error)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = *MEMORY[0x277CB8DC0];
    v48 = *MEMORY[0x277CCA450];
    v49[0] = @"Unable to store credential due to error with SecAccessControlRef";
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
    *error = [v26 errorWithDomain:v27 code:13 userInfo:v28];
LABEL_29:
  }
}

+ (BOOL)_removeItemForService:(id)service username:(id)username accessGroup:(id)group options:(id)options error:(id *)error
{
  serviceCopy = service;
  usernameCopy = username;
  groupCopy = group;
  optionsCopy = options;
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  v16 = _ac_keychainLock;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __79__ACDKeychainManager__removeItemForService_username_accessGroup_options_error___block_invoke;
  v24[3] = &unk_27848BE88;
  v29 = &v38;
  selfCopy = self;
  v17 = serviceCopy;
  v25 = v17;
  v18 = usernameCopy;
  v26 = v18;
  v19 = groupCopy;
  v27 = v19;
  v20 = optionsCopy;
  v28 = v20;
  v30 = &v32;
  v21 = _ACDKeychainLogSystem([v16 lockPerformForService:v17 username:v18 block:v24]);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [ACDKeychainManager _removeItemForService:v21 username:? accessGroup:? options:? error:?];
  }

  if (error)
  {
    *error = v33[5];
  }

  v22 = *(v39 + 24);

  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v38, 8);

  return v22;
}

void __79__ACDKeychainManager__removeItemForService_username_accessGroup_options_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];
  v6 = a1[10];
  v7 = *(a1[9] + 8);
  obj = *(v7 + 40);
  v8 = [v6 _keychainLock_removeItemForService:v2 username:v3 accessGroup:v4 options:v5 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[8] + 8) + 24) = v8;
}

+ (BOOL)_keychainLock_removeItemForService:(id)service username:(id)username accessGroup:(id)group options:(id)options error:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  usernameCopy = username;
  groupCopy = group;
  optionsCopy = options;
  if ([serviceCopy length] && objc_msgSend(usernameCopy, "length"))
  {
    if (error)
    {
      *error = 0;
    }

    v27 = 0;
    [ACDKeychain removeItemForServiceName:serviceCopy username:usernameCopy accessGroup:groupCopy options:optionsCopy error:&v27];
    v15 = v27;
    v16 = v15 == 0;
    v17 = _ACDKeychainLogSystem(v15);
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
    if (v15)
    {
      if (v18)
      {
        +[ACDKeychainManager _keychainLock_removeItemForService:username:accessGroup:options:error:];
      }

      if (!error)
      {
        goto LABEL_14;
      }

      v19 = MEMORY[0x277CCACA8];
      v20 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v15, "code")}];
      v17 = [v19 stringWithFormat:@"Unable to remove credential due to error %@", v20];

      v26 = MEMORY[0x277CCA9B8];
      v21 = *MEMORY[0x277CB8DC0];
      v22 = *MEMORY[0x277CCA7E8];
      v28[0] = *MEMORY[0x277CCA450];
      v28[1] = v22;
      v29[0] = v17;
      v29[1] = v15;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      *error = [v26 errorWithDomain:v21 code:14 userInfo:v23];
    }

    else if (v18)
    {
      v25 = ACHashedString();
      *buf = 138412802;
      v31 = serviceCopy;
      v32 = 2112;
      v33 = v25;
      v34 = 2112;
      v35 = groupCopy;
      _os_log_debug_impl(&dword_221D2F000, v17, OS_LOG_TYPE_DEBUG, "Keychain item removal succeeded for item service:%@ username:%@ group:%@", buf, 0x20u);
    }

LABEL_14:
    goto LABEL_15;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

+ (void)_createNoSyncOAuthTokens:(id)tokens account:(id)account clientID:(id)d
{
  tokensCopy = tokens;
  accountCopy = account;
  dCopy = d;
  credentialType = [tokensCopy credentialType];
  if ([credentialType isEqualToString:*MEMORY[0x277CB8D98]])
  {
    oauthToken = [tokensCopy oauthToken];

    if (oauthToken)
    {
      oauthToken2 = [tokensCopy oauthToken];
      [tokensCopy setOauthTokenNoSync:oauthToken2];
      goto LABEL_9;
    }
  }

  else
  {
  }

  oauthToken2 = [tokensCopy credentialType];
  if ([oauthToken2 isEqualToString:*MEMORY[0x277CB8D90]])
  {
    oauthToken3 = [tokensCopy oauthToken];
    if (oauthToken3)
    {
      v15 = oauthToken3;
      oauthTokenSecret = [tokensCopy oauthTokenSecret];

      if (!oauthTokenSecret)
      {
        goto LABEL_10;
      }

      v17 = MEMORY[0x277CCACA8];
      oauthToken2 = [tokensCopy oauthToken];
      v18 = *MEMORY[0x277CB8E28];
      oauthTokenSecret2 = [tokensCopy oauthTokenSecret];
      v20 = [v17 stringWithFormat:@"%@%@%@", oauthToken2, v18, oauthTokenSecret2];
      [tokensCopy setOauthTokenNoSync:v20];
    }
  }

LABEL_9:

LABEL_10:
  oauthTokenNoSync = [tokensCopy oauthTokenNoSync];

  if (oauthTokenNoSync)
  {
    v22 = 0;
    [self _saveCredential:tokensCopy forAccount:accountCopy clientID:dCopy error:&v22];
  }
}

+ (void)_fallbackToUnsyncedOAuthTokens:(id)tokens
{
  tokensCopy = tokens;
  oauthTokenNoSync = [tokensCopy oauthTokenNoSync];
  if (oauthTokenNoSync)
  {
    credentialType = [tokensCopy credentialType];
    if ([credentialType isEqualToString:*MEMORY[0x277CB8D98]])
    {
      oauthToken = [tokensCopy oauthToken];

      if (!oauthToken)
      {
        [tokensCopy setOauthToken:oauthTokenNoSync];
        goto LABEL_15;
      }
    }

    else
    {
    }

    credentialType2 = [tokensCopy credentialType];
    if ([credentialType2 isEqualToString:*MEMORY[0x277CB8D90]])
    {
      oauthToken2 = [tokensCopy oauthToken];
      if (oauthToken2)
      {
        v10 = oauthToken2;
        oauthTokenSecret = [tokensCopy oauthTokenSecret];

        if (oauthTokenSecret)
        {
          goto LABEL_15;
        }
      }

      else
      {
      }

      credentialType2 = [oauthTokenNoSync componentsSeparatedByString:*MEMORY[0x277CB8E28]];
      if ([credentialType2 count] != 2)
      {
        [(ACDKeychainManager *)a2 _fallbackToUnsyncedOAuthTokens:self];
      }

      v12 = [credentialType2 objectAtIndexedSubscript:0];
      [tokensCopy setOauthToken:v12];

      v13 = [credentialType2 objectAtIndexedSubscript:1];
      [tokensCopy setOauthTokenSecret:v13];
    }
  }

LABEL_15:
}

+ (void)notifiyCredentialChangedForAccount:(id)account
{
  accountCopy = account;
  server = [objc_opt_class() server];
  [server credentialsDidChangeForAccount:accountCopy];
}

+ (void)credentialForAccount:clientID:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)credentialForAccount:clientID:error:.cold.2()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "credentialForAccount encountered an error: %@", v1, 0xCu);
}

+ (void)credentialForAccount:clientID:error:.cold.3()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "credentialForAccount is returning %@", v2, v3, v4, v5);
}

void __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Credential fetch failed with primary id. Will try again with secondary id. Error: %@", v2, v3, v4, v5);
}

void __58__ACDKeychainManager_credentialForAccount_clientID_error___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_5(&dword_221D2F000, v0, v1, "Credential fetch failed for UUID. Will try again with username instead of qualifiedUserName or UUID. Error: %@", v2, v3, v4, v5);
}

+ (void)_credentialForAccountWithID:(uint64_t)a1 accountTypeID:credentialType:clientID:allowAdditionalAccountTypeSegment:options:error:.cold.1(uint64_t a1)
{
  v1 = ACHashedString();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v2, v3, "ACDKeychainManager is fetching credential for account %@ and client ID %@.", v4, v5, v6, v7);
}

+ (void)_saveCredential:(uint64_t)a1 forAccount:(NSObject *)a2 clientID:error:.cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136446467;
  v3 = "+[ACDKeychainManager _saveCredential:forAccount:clientID:error:]";
  v4 = 2113;
  v5 = a1;
  _os_log_error_impl(&dword_221D2F000, a2, OS_LOG_TYPE_ERROR, "%{public}s error, account %{private}@ lacks an account type identifier", &v2, 0x16u);
}

+ (void)removeCredentialForAccount:clientID:error:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_8();
  v2 = 1026;
  v3 = 461;
  _os_log_debug_impl(&dword_221D2F000, v0, OS_LOG_TYPE_DEBUG, "%{private}s:%{public}d is returning", v1, 0x12u);
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  v2 = ACHashedString();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v3, v4, "Keychain fetch denied for item: %@.%@", v5, v6, v7, v8);
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_2(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  v2 = ACHashedString();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v3, v4, "Keychain fetch found no match for item: %@.%@", v5, v6, v7, v8);
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_3(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  v2 = ACHashedString();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v3, v4, "Keychain fetch succeeded with empty results for item: %@.%@", v5, v6, v7, v8);
}

void __77__ACDKeychainManager__itemForServiceName_username_accessGroup_options_error___block_invoke_cold_4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_0(a1, a2);
  v2 = ACHashedString();
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_3(&dword_221D2F000, v3, v4, "Keychain fetch succeeded for item: %@.%@", v5, v6, v7, v8);
}

+ (void)_keychainLock_updateItem:existingPassword:forServiceName:username:accessGroup:accessibility:options:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_keychainLock_addItem:forServiceName:username:accessGroup:accessibility:syncable:requiresTouchID:error:.cold.4()
{
  OUTLINED_FUNCTION_9(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_8();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "Unable to create SecAccessControlRef on item that requires Touch ID. Error: %@", v1, 0xCu);
}

+ (void)_keychainLock_removeItemForService:username:accessGroup:options:error:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

+ (void)_fallbackToUnsyncedOAuthTokens:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ACDKeychainManager.m" lineNumber:947 description:@"*** _fallbackToUnsyncedOAuthTokens: bad format"];
}

@end