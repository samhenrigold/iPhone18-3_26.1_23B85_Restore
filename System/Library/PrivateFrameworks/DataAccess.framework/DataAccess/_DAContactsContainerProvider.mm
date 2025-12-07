@interface _DAContactsContainerProvider
- (BOOL)setLastSyncDateForContainer:(id)container;
- (_DAContactsContainerProvider)initWithContactStore:(id)store;
- (id)allContainers;
- (id)allContainersForAccountWithExternalIdentifier:(id)identifier;
- (id)containerWithExternalIdentifier:(id)identifier forAccountWithExternalIdentifier:(id)externalIdentifier;
- (id)createNewContainerWithType:(int)type name:(id)name externalIdentifier:(id)identifier constraintsPath:(id)path syncData:(id)data contentReadonly:(BOOL)readonly propertiesReadonly:(BOOL)propertiesReadonly forAccount:(id)self0;
- (void)setDefaultContainer:(id)container withLocalDBHelper:(id)helper onlyIfNotSet:(BOOL)set;
@end

@implementation _DAContactsContainerProvider

- (_DAContactsContainerProvider)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _DAContactsContainerProvider;
  v6 = [(_DAContactsContainerProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (id)containerWithExternalIdentifier:(id)identifier forAccountWithExternalIdentifier:(id)externalIdentifier
{
  v37 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v7 = [MEMORY[0x277CBDA28] predicateForAccountWithExternalIdentifier:externalIdentifier];
  contactStore = [(_DAContactsContainerProvider *)self contactStore];
  v35 = 0;
  v9 = [contactStore accountsMatchingPredicate:v7 error:&v35];
  v10 = v35;
  firstObject = [v9 firstObject];

  v12 = MEMORY[0x277CBDAD8];
  identifier = [firstObject identifier];
  v14 = [v12 predicateForContainersInAccountWithIdentifier:identifier includingDisabledContainers:1];

  contactStore2 = [(_DAContactsContainerProvider *)self contactStore];
  v34 = 0;
  v16 = [contactStore2 containersMatchingPredicate:v14 error:&v34];
  v17 = v34;

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v18 = v16;
  v19 = [v18 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v19)
  {
    v27 = v17;
    v28 = v10;
    v29 = v7;
    v20 = *v31;
LABEL_3:
    v21 = 0;
    while (1)
    {
      if (*v31 != v20)
      {
        objc_enumerationMutation(v18);
      }

      v22 = *(*(&v30 + 1) + 8 * v21);
      externalIdentifier = [v22 externalIdentifier];
      v24 = [externalIdentifier isEqualToString:identifierCopy];

      if (v24)
      {
        break;
      }

      if (v19 == ++v21)
      {
        v19 = [v18 countByEnumeratingWithState:&v30 objects:v36 count:16];
        if (v19)
        {
          goto LABEL_3;
        }

        v25 = v18;
        goto LABEL_12;
      }
    }

    v25 = v22;

    if (v25)
    {
      v19 = [[DAContactsContainer alloc] initWithCNContainer:v25];
LABEL_12:
      v10 = v28;
      v7 = v29;
      v17 = v27;
      goto LABEL_14;
    }

    v19 = 0;
    v10 = v28;
    v7 = v29;
    v17 = v27;
  }

  else
  {
    v25 = v18;
LABEL_14:
  }

  return v19;
}

- (id)allContainers
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBDAD8] predicateForContainersIncludingDisabled:1];
  contactStore = [(_DAContactsContainerProvider *)self contactStore];
  v21 = 0;
  v5 = [contactStore containersMatchingPredicate:v3 error:&v21];
  v6 = v21;

  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        v14 = [DAContactsContainer alloc];
        v15 = [(DAContactsContainer *)v14 initWithCNContainer:v13, v17];
        [array addObject:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)allContainersForAccountWithExternalIdentifier:(id)identifier
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBDA28] predicateForAccountWithExternalIdentifier:identifier];
  contactStore = [(_DAContactsContainerProvider *)self contactStore];
  v29 = 0;
  v23 = v4;
  v6 = [contactStore accountsMatchingPredicate:v4 error:&v29];
  v22 = v29;
  firstObject = [v6 firstObject];

  v8 = MEMORY[0x277CBDAD8];
  identifier = [firstObject identifier];
  v10 = [v8 predicateForContainersInAccountWithIdentifier:identifier includingDisabledContainers:1];

  contactStore2 = [(_DAContactsContainerProvider *)self contactStore];
  v28 = 0;
  v12 = [contactStore2 containersMatchingPredicate:v10 error:&v28];
  v13 = v28;

  array = [MEMORY[0x277CBEB18] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [[DAContactsContainer alloc] initWithCNContainer:*(*(&v24 + 1) + 8 * i)];
        [array addObject:v20];
      }

      v17 = [v15 countByEnumeratingWithState:&v24 objects:v30 count:16];
    }

    while (v17);
  }

  return array;
}

- (id)createNewContainerWithType:(int)type name:(id)name externalIdentifier:(id)identifier constraintsPath:(id)path syncData:(id)data contentReadonly:(BOOL)readonly propertiesReadonly:(BOOL)propertiesReadonly forAccount:(id)self0
{
  readonlyCopy = readonly;
  v16 = MEMORY[0x277CBDB48];
  accountCopy = account;
  dataCopy = data;
  pathCopy = path;
  identifierCopy = identifier;
  nameCopy = name;
  v22 = objc_alloc_init(v16);
  [v22 setType:type];
  [v22 setName:nameCopy];

  [v22 setExternalIdentifier:identifierCopy];
  [v22 setConstraintsPath:pathCopy];

  [v22 setExternalSyncData:dataCopy];
  identifier = [accountCopy identifier];

  [v22 setAccountIdentifier:identifier];
  v24 = [[DAContactsContainer alloc] initWithCNContainer:v22];
  [(DAContactsContainer *)v24 setContentReadonly:readonlyCopy];
  [(DAContactsContainer *)v24 setArePropertiesReadonly:propertiesReadonly];

  return v24;
}

- (void)setDefaultContainer:(id)container withLocalDBHelper:(id)helper onlyIfNotSet:(BOOL)set
{
  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    *v7 = 0;
    _os_log_impl(&dword_24844D000, v5, v6, "Setting default container is not implemented yet. <rdar://problem/40239535>", v7, 2u);
  }
}

- (BOOL)setLastSyncDateForContainer:(id)container
{
  containerCopy = container;
  v4 = DALoggingwithCategory();
  v5 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v4, v5))
  {
    *v7 = 0;
    _os_log_impl(&dword_24844D000, v4, v5, "Setting last sync date on container is not implemented yet.", v7, 2u);
  }

  v6 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"setLastSyncDateForContainer" userInfo:0];
  objc_exception_throw(v6);
}

@end