@interface ACDKeychainMigrator
+ (id)sharedInstance;
- (ACDKeychainMigrator)init;
- (BOOL)migrateKeychainItem:(id)item toKeybag:(BOOL)keybag;
- (id)_keychainItemFromAttributes:(id)attributes;
- (id)_keychainItemFromAttributesArray:(id)array;
- (id)_keychainItemsForAccount:(id)account accountTypeIdentifiers:(id)identifiers;
- (id)allKeychainItems;
- (id)keychainItemsForAccounts:(id)accounts;
- (void)_migrateUUIDKeychainItems:(id)items;
- (void)_validateKeychainItemClass:(id)class;
- (void)migrateAllKeychainItems;
@end

@implementation ACDKeychainMigrator

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ACDKeychainMigrator_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sharedInstance;

  return v2;
}

uint64_t __37__ACDKeychainMigrator_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sharedInstance = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (ACDKeychainMigrator)init
{
  v6.receiver = self;
  v6.super_class = ACDKeychainMigrator;
  v2 = [(ACDKeychainMigrator *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CB8F48]);
    accountStore = v2->_accountStore;
    v2->_accountStore = v3;
  }

  return v2;
}

- (void)migrateAllKeychainItems
{
  v20 = *MEMORY[0x277D85DE8];
  allKeychainItems = [(ACDKeychainMigrator *)self allKeychainItems];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [allKeychainItems countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v14;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allKeychainItems);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        hasCustomAccessControl = [v9 hasCustomAccessControl];
        if (hasCustomAccessControl)
        {
          v11 = _ACDKeychainLogSystem(hasCustomAccessControl);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            *buf = v12;
            v18 = v9;
            _os_log_debug_impl(&dword_221D2F000, v11, OS_LOG_TYPE_DEBUG, "Keychain item (%@) has custom access control, skipping...", buf, 0xCu);
          }
        }

        else
        {
          [(ACDKeychainMigrator *)self migrateKeychainItem:v9 toKeybag:1];
        }
      }

      v6 = [allKeychainItems countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v6);
  }
}

- (BOOL)migrateKeychainItem:(id)item toKeybag:(BOOL)keybag
{
  itemCopy = item;
  version = [itemCopy version];
  if (version > 8)
  {
    v9 = 1;
    goto LABEL_26;
  }

  v7 = version;
  v8 = _ACDKeychainLogSystem(version);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [ACDKeychainMigrator migrateKeychainItem:itemCopy toKeybag:v7];
  }

  if (v7 <= 0)
  {
    [(ACDKeychainMigrator *)self _validateKeychainItemClass:itemCopy];
    goto LABEL_14;
  }

  if (v7 == 1)
  {
LABEL_14:
    [(ACDKeychainMigrator *)self _validateKeychainItemClass:itemCopy];
    goto LABEL_15;
  }

  if (v7 <= 2)
  {
LABEL_15:
    [(ACDKeychainMigrator *)self _migrateUUIDKeychainItems:itemCopy];
    goto LABEL_16;
  }

  if (v7 <= 4)
  {
LABEL_16:
    [(ACDKeychainMigrator *)self _validateKeychainItemClass:itemCopy];
    goto LABEL_17;
  }

  if (v7 == 5)
  {
LABEL_17:
    [(ACDKeychainMigrator *)self _validateKeychainItemClass:itemCopy];
    goto LABEL_18;
  }

  if (v7 > 6)
  {
    if (v7 == 8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_18:
  [(ACDKeychainMigrator *)self _validateKeychainItemClass:itemCopy];
LABEL_19:
  [(ACDKeychainMigrator *)self _validateKeychainItemClass:itemCopy];
LABEL_20:
  [(ACDKeychainMigrator *)self _validateKeychainItemClass:itemCopy];
  [itemCopy setVersion:9];
  v14 = 0;
  v9 = [itemCopy save:&v14];
  v10 = v14;
  v11 = _ACDKeychainLogSystem(v10);
  v12 = v11;
  if (v10)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ACDKeychainMigrator migrateKeychainItem:toKeybag:];
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [ACDKeychainMigrator migrateKeychainItem:toKeybag:];
  }

LABEL_26:
  return v9;
}

- (void)_validateKeychainItemClass:(id)class
{
  classCopy = class;
  service = [classCopy service];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke;
  v6[3] = &unk_27848C840;
  v7 = classCopy;
  v5 = classCopy;
  [ACDKeychainManager componentsFromKeychainServiceName:service handler:v6];
}

void __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (v8)
  {
    if (v9)
    {
      v11 = [MEMORY[0x277CB8F58] allIdentifiers];
      v12 = [v11 containsObject:v8];

      if (v12)
      {
        v14 = [MEMORY[0x277CB8F38] credentialPolicyForAccountTypeIdentifier:v8 key:v10 clientID:v7];
        if (v14)
        {
          v15 = [*(a1 + 32) accessibility];
          v16 = [v15 isEqualToString:v14];

          if ((v16 & 1) == 0)
          {
            v18 = _ACDKeychainLogSystem(v17);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = *(a1 + 32);
              v31 = 138412546;
              v32 = v19;
              v33 = 2112;
              v34 = v14;
              _os_log_impl(&dword_221D2F000, v18, OS_LOG_TYPE_DEFAULT, "Found mismatched keychain item accessibility: %@ :: expected: %@", &v31, 0x16u);
            }

            [*(a1 + 32) setAccessibility:v14];
          }

          v20 = [*(a1 + 32) accessibility];
          if ([v20 isEqualToString:*MEMORY[0x277CDBEE8]])
          {
            v21 = [*(a1 + 32) synchronizable];

            if (v21)
            {
              v23 = _ACDKeychainLogSystem(v22);
              if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
              {
                v24 = *(a1 + 32);
                v31 = 138412290;
                v32 = v24;
                _os_log_impl(&dword_221D2F000, v23, OS_LOG_TYPE_DEFAULT, "Found keychain item with accessibility kSecAttrAccessibleAfterFirstUnlockThisDeviceOnly marked as syncable: %@", &v31, 0xCu);
              }

              [*(a1 + 32) setSynchronizable:0];
            }

            goto LABEL_23;
          }
        }

        else
        {
          v20 = _ACDKeychainLogSystem(0);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_2(a1, v20, v25, v26, v27, v28, v29, v30);
          }
        }

        goto LABEL_23;
      }

      v14 = _ACDKeychainLogSystem(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_1();
      }
    }

    else
    {
      v14 = _ACDKeychainLogSystem(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_3(a1);
      }
    }
  }

  else
  {
    v14 = _ACDKeychainLogSystem(v9);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_4(a1);
    }
  }

LABEL_23:
}

- (void)_migrateUUIDKeychainItems:(id)items
{
  v24 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  account = [itemsCopy account];
  v6 = [account length];

  if (v6 == 36)
  {
    accountStore = self->_accountStore;
    account2 = [itemsCopy account];
    v10 = [(ACAccountStore *)accountStore accountWithIdentifier:account2];

    if (v10)
    {
      username = [v10 username];
      v13 = [username length];

      v15 = _ACDKeychainLogSystem(v14);
      username3 = v15;
      if (v13)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          username2 = [v10 username];
          v18 = ACHashedString();
          account3 = [itemsCopy account];
          v20 = 138412546;
          v21 = v18;
          v22 = 2112;
          v23 = account3;
          _os_log_impl(&dword_221D2F000, username3, OS_LOG_TYPE_DEFAULT, "Updating keychain item acct: %@ old: %@", &v20, 0x16u);
        }

        username3 = [v10 username];
        [itemsCopy setAccount:username3];
      }

      else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [ACDKeychainMigrator _migrateUUIDKeychainItems:];
      }
    }

    else
    {
      username3 = _ACDKeychainLogSystem(v11);
      if (os_log_type_enabled(username3, OS_LOG_TYPE_DEBUG))
      {
        [ACDKeychainMigrator _migrateUUIDKeychainItems:itemsCopy];
      }
    }
  }

  else
  {
    v10 = _ACDKeychainLogSystem(v7);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [ACDKeychainMigrator _migrateUUIDKeychainItems:v10];
    }
  }
}

- (id)allKeychainItems
{
  accounts = [(ACAccountStore *)self->_accountStore accounts];
  v4 = [(ACDKeychainMigrator *)self keychainItemsForAccounts:accounts];

  return v4;
}

- (id)keychainItemsForAccounts:(id)accounts
{
  v34 = *MEMORY[0x277D85DE8];
  accountsCopy = accounts;
  v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = accountsCopy;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v6)
  {
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        accountType = [v9 accountType];
        identifier = [accountType identifier];

        if ([identifier length])
        {
          qualifiedUsername = [v9 qualifiedUsername];
          if ([qualifiedUsername length])
          {
            v13 = [v4 objectForKeyedSubscript:qualifiedUsername];
            v14 = v13;
            if (v13)
            {
              [v13 addObject:identifier];
            }

            else
            {
              v15 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{identifier, 0}];
              [v4 setObject:v15 forKeyedSubscript:qualifiedUsername];
            }
          }

          identifier2 = [v9 identifier];
          if ([identifier2 length])
          {
            v17 = [v4 objectForKeyedSubscript:identifier2];
            v18 = v17;
            if (v17)
            {
              [v17 addObject:identifier];
            }

            else
            {
              v19 = [objc_alloc(MEMORY[0x277CBEB58]) initWithObjects:{identifier, 0}];
              [v4 setObject:v19 forKeyedSubscript:identifier2];
            }
          }
        }

        else
        {
          qualifiedUsername = _ACDKeychainLogSystem(0);
          if (os_log_type_enabled(qualifiedUsername, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v9;
            _os_log_error_impl(&dword_221D2F000, qualifiedUsername, OS_LOG_TYPE_ERROR, "Account (%@) has and empty accountType identifier!", &buf, 0xCu);
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v6);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__4;
  v31 = __Block_byref_object_dispose__4;
  v32 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __48__ACDKeychainMigrator_keychainItemsForAccounts___block_invoke;
  v23[3] = &unk_27848C868;
  v23[4] = self;
  v23[5] = &buf;
  [v4 enumerateKeysAndObjectsUsingBlock:v23];
  v20 = [*(*(&buf + 1) + 40) copy];
  _Block_object_dispose(&buf, 8);

  return v20;
}

uint64_t __48__ACDKeychainMigrator_keychainItemsForAccounts___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*(a1 + 32) _keychainItemsForAccount:a2 accountTypeIdentifiers:a3];
  if (v4)
  {
    [*(*(*(a1 + 40) + 8) + 40) addObjectsFromArray:v4];
  }

  return MEMORY[0x2821F96F8]();
}

- (id)_keychainItemsForAccount:(id)account accountTypeIdentifiers:(id)identifiers
{
  accountCopy = account;
  identifiersCopy = identifiers;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBF20], accountCopy);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDBEC8], @"apple");
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC140], *MEMORY[0x277CDC148]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC238]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC428], *MEMORY[0x277CDC430]);
  v9 = *MEMORY[0x277CBED28];
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC550], *MEMORY[0x277CBED28]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC560], v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC5A8], *MEMORY[0x277CDC5B8]);
  result = 0;
  v10 = SecItemCopyMatching(Mutable, &result);
  if (v10)
  {
    v11 = v10;
    v12 = _ACDKeychainLogSystem(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [(ACDKeychainMigrator *)accountCopy _keychainItemsForAccount:v11 accountTypeIdentifiers:v12];
    }

    v13 = 0;
  }

  else
  {
    v13 = [(ACDKeychainMigrator *)self _keychainItemFromAttributesArray:result];
  }

  if (result)
  {
    CFRelease(result);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v18 = MEMORY[0x277D85DD0];
  v19 = 3221225472;
  v20 = __71__ACDKeychainMigrator__keychainItemsForAccount_accountTypeIdentifiers___block_invoke;
  v21 = &unk_27848C8B8;
  v22 = identifiersCopy;
  v14 = identifiersCopy;
  v15 = [v13 indexesOfObjectsPassingTest:&v18];
  v16 = [v13 objectsAtIndexes:{v15, v18, v19, v20, v21}];

  return v16;
}

uint64_t __71__ACDKeychainMigrator__keychainItemsForAccount_accountTypeIdentifiers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v4 = [v3 service];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__ACDKeychainMigrator__keychainItemsForAccount_accountTypeIdentifiers___block_invoke_2;
  v7[3] = &unk_27848C890;
  v8 = *(a1 + 32);
  v9 = &v10;
  [ACDKeychainManager componentsFromKeychainServiceName:v4 handler:v7];

  v5 = *(v11 + 24);
  _Block_object_dispose(&v10, 8);

  return v5;
}

void __71__ACDKeychainMigrator__keychainItemsForAccount_accountTypeIdentifiers___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = a4;
  if ([*(a1 + 32) containsObject:a3])
  {
    v6 = [MEMORY[0x277CB8F38] allSupportedKeys];
    v7 = [v6 containsObject:v8];

    if (v7)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (id)_keychainItemFromAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = [attributesCopy objectForKeyedSubscript:*MEMORY[0x277CDC5F0]];

  if (v4)
  {
    v4 = [[ACDKeychainItem alloc] initWithPersistentRef:v4 properties:attributesCopy];
  }

  return v4;
}

- (id)_keychainItemFromAttributesArray:(id)array
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(arrayCopy, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = arrayCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ACDKeychainMigrator *)self _keychainItemFromAttributes:*(*(&v14 + 1) + 8 * i), v14];
        if (v11)
        {
          [v5 addObject:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];

  return v12;
}

- (void)migrateKeychainItem:(uint64_t)a1 toKeybag:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CCABB0] numberWithInteger:a2];
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x20u);
}

- (void)migrateKeychainItem:toKeybag:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_221D2F000, v1, OS_LOG_TYPE_ERROR, "Failed to migrate keychain item %@: %@", v2, 0x16u);
}

void __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_2(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = *(a1 + 32);
  OUTLINED_FUNCTION_5(&dword_221D2F000, a2, a3, "Could not determine expected accessibility for %@.", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_3(uint64_t a1)
{
  v1 = [*(a1 + 32) service];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

void __50__ACDKeychainMigrator__validateKeychainItemClass___block_invoke_cold_4(uint64_t a1)
{
  v1 = [*(a1 + 32) service];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_migrateUUIDKeychainItems:.cold.2()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4();
  _os_log_error_impl(&dword_221D2F000, v0, OS_LOG_TYPE_ERROR, "Found account %@ is missing username, will not update item.", v1, 0xCu);
}

- (void)_migrateUUIDKeychainItems:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 account];
  v2 = ACHashedString();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_9_0();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0xCu);
}

- (void)_keychainItemsForAccount:(NSObject *)a3 accountTypeIdentifiers:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CCABB0] numberWithInt:a2];
  OUTLINED_FUNCTION_10();
  _os_log_error_impl(&dword_221D2F000, a3, OS_LOG_TYPE_ERROR, "Failed to query keychain for account: %@, errno %@", v5, 0x16u);
}

@end