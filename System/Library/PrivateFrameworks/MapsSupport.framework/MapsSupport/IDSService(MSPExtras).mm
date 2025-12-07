@interface IDSService(MSPExtras)
+ (id)_msp_IDSIdentifierFor:()MSPExtras;
+ (id)_msp_IDSIdentifiersFor:()MSPExtras;
- (BOOL)_msp_hasValidIDSAccount;
- (id)_msp_accountFromIdentifier:()MSPExtras;
- (id)_msp_currentAccount;
- (id)_msp_currentAccountIdentifier;
- (id)_msp_removeSelfFrom:()MSPExtras;
@end

@implementation IDSService(MSPExtras)

- (BOOL)_msp_hasValidIDSAccount
{
  _msp_currentAccount = [self _msp_currentAccount];
  v2 = _msp_currentAccount != 0;

  return v2;
}

- (id)_msp_currentAccount
{
  accounts = [self accounts];
  allObjects = [accounts allObjects];

  v3 = [allObjects count];
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__4;
  v11 = __Block_byref_object_dispose__4;
  v12 = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __44__IDSService_MSPExtras___msp_currentAccount__block_invoke;
  v6[3] = &unk_279867EB0;
  v6[4] = &v7;
  v6[5] = v3;
  [allObjects enumerateObjectsUsingBlock:v6];
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_msp_currentAccountIdentifier
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = MSPGetSharedTripLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    _msp_currentAccount = [self _msp_currentAccount];
    aliasStrings = [_msp_currentAccount aliasStrings];
    *buf = 138412290;
    v39 = aliasStrings;
    _os_log_impl(&dword_25813A000, v2, OS_LOG_TYPE_DEFAULT, "_msp_currentAccountIdentifier choosing from aliasStrings %@", buf, 0xCu);
  }

  _msp_currentAccount2 = [self _msp_currentAccount];
  aliasStrings2 = [_msp_currentAccount2 aliasStrings];
  v7 = [aliasStrings2 count];

  if (v7)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    _msp_currentAccount3 = [self _msp_currentAccount];
    aliasStrings3 = [_msp_currentAccount3 aliasStrings];

    v10 = [aliasStrings3 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(aliasStrings3);
          }

          v14 = *(*(&v32 + 1) + 8 * i);
          _msp_currentAccount4 = [self _msp_currentAccount];
          loginID = [_msp_currentAccount4 loginID];
          LOBYTE(v14) = [v14 isEqualToString:loginID];

          if (v14)
          {
            _msp_currentAccount5 = [self _msp_currentAccount];
            loginID2 = [_msp_currentAccount5 loginID];
            goto LABEL_22;
          }
        }

        v11 = [aliasStrings3 countByEnumeratingWithState:&v32 objects:v37 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    _msp_currentAccount6 = [self _msp_currentAccount];
    aliasStrings3 = [_msp_currentAccount6 aliasStrings];

    v18 = [aliasStrings3 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v29;
      while (2)
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v29 != v20)
          {
            objc_enumerationMutation(aliasStrings3);
          }

          v22 = *(*(&v28 + 1) + 8 * j);
          if ([v22 containsString:@"@"])
          {
            loginID3 = v22;
            goto LABEL_25;
          }
        }

        v19 = [aliasStrings3 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v19)
        {
          continue;
        }

        break;
      }
    }

    aliasStrings3 = [self _msp_currentAccount];
    _msp_currentAccount5 = [aliasStrings3 aliasStrings];
    loginID2 = [_msp_currentAccount5 objectAtIndexedSubscript:0];
LABEL_22:
    v25 = loginID2;
  }

  else
  {
    aliasStrings3 = [self _msp_currentAccount];
    loginID3 = [aliasStrings3 loginID];
LABEL_25:
    v25 = loginID3;
  }

  return v25;
}

- (id)_msp_accountFromIdentifier:()MSPExtras
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  accounts = [self accounts];
  v6 = [MEMORY[0x277CCAC30] predicateWithFormat:@"uniqueID == %@", v4];
  v7 = [accounts filteredSetUsingPredicate:v6];

  allObjects = [v7 allObjects];
  firstObject = [allObjects firstObject];

  v11 = MSPGetSharedTripLog(v10);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (firstObject)
  {
    if (v12)
    {
      *buf = 138412802;
      v17 = firstObject;
      v18 = 2112;
      v19 = v4;
      v20 = 2112;
      v21 = accounts;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_INFO, "_msp_accountFromIdentifier foundAccount %@ for identifier %@ from set %@", buf, 0x20u);
    }

    firstObject2 = firstObject;
  }

  else
  {
    if (v12)
    {
      *buf = 138412546;
      v17 = v4;
      v18 = 2112;
      v19 = accounts;
      _os_log_impl(&dword_25813A000, v11, OS_LOG_TYPE_INFO, "_msp_accountFromIdentifier no account for identifier %@ from set %@", buf, 0x16u);
    }

    allObjects2 = [accounts allObjects];
    firstObject2 = [allObjects2 firstObject];
  }

  return firstObject2;
}

- (id)_msp_removeSelfFrom:()MSPExtras
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = a3;
  v4 = [v21 mutableCopy];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  activeAliases = [self activeAliases];
  v6 = [activeAliases copy];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v12 = v21;
        v13 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            for (j = 0; j != v14; ++j)
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v22 + 1) + 8 * j);
              if ([v17 containsString:v11])
              {
                [v4 removeObject:v17];
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v14);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  v18 = [v4 copy];

  return v18;
}

+ (id)_msp_IDSIdentifiersFor:()MSPExtras
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [objc_opt_class() _msp_IDSIdentifierFor:{*(*(&v13 + 1) + 8 * i), v13}];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [v4 copy];

  return v11;
}

+ (id)_msp_IDSIdentifierFor:()MSPExtras
{
  v3 = a3;
  mEMORY[0x277D0EC70] = [MEMORY[0x277D0EC70] sharedPlatform];
  if ([mEMORY[0x277D0EC70] isInternalInstall])
  {
    IsValid = MSPSharedTripVirtualReceiverIsValid(v3);

    if (IsValid)
    {
      goto LABEL_6;
    }
  }

  else
  {
  }

  if (IDSIDHasToken())
  {
LABEL_6:
    v6 = v3;
    goto LABEL_8;
  }

  v6 = IDSCopyBestGuessIDForID();
LABEL_8:
  v7 = v6;

  return v7;
}

@end