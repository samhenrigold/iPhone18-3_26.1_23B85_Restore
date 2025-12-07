@interface TCSContactsDataSource
+ (id)descriptorForRequiredKeys;
- (BOOL)_contactArray:(id)array differsFromArray:(id)fromArray;
- (BOOL)isContactAllowed:(id)allowed;
- (BOOL)isContactAnInviter:(id)inviter;
- (TCSContactsDataSource)initWithContactStore:(id)store contacts:(id)contacts;
- (TCSContactsDataSourceDelegate)delegate;
- (id)_contactMapFromArray:(id)array;
- (id)_contactsForSection:(int64_t)section;
- (id)_sortedContactsArrayFromArray:(id)array;
- (id)_sortedContactsArrayFromArray:(id)array forSection:(int64_t)section;
- (id)_unsortedContactsArray;
- (id)contactWithIdentifier:(id)identifier;
- (int64_t)_sectionForContact:(id)contact;
- (int64_t)inviteContact:(id)contact;
- (unint64_t)sectionCount;
- (void)_handleDeviceFirstUnlock;
- (void)_notifyDelegateContactsChanged;
- (void)_notifyDelegateRecencyChanged;
- (void)_updateSortedContactsAndNotifyIfChanged:(BOOL)changed;
- (void)contactBecameAccepted:(id)accepted;
- (void)dealloc;
- (void)destinationsDidChange:(id)change;
- (void)logSortedContacts;
- (void)recencyDidChange:(id)change;
- (void)removeContact:(id)contact;
- (void)removeContact:(id)contact inSection:(int64_t)section;
@end

@implementation TCSContactsDataSource

- (TCSContactsDataSource)initWithContactStore:(id)store contacts:(id)contacts
{
  storeCopy = store;
  contactsCopy = contacts;
  v24.receiver = self;
  v24.super_class = TCSContactsDataSource;
  v9 = [(TCSContactsDataSource *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_contactStore, store);
    objc_storeStrong(&v10->_contacts, contacts);
    [(TCSContacts *)v10->_contacts addObserver:v10];
    objc_initWeak(&location, v10);
    uTF8String = [*MEMORY[0x277D218C0] UTF8String];
    v12 = MEMORY[0x277D85CD0];
    v13 = MEMORY[0x277D85CD0];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __55__TCSContactsDataSource_initWithContactStore_contacts___block_invoke;
    handler[3] = &unk_279DC1A78;
    objc_copyWeak(&v22, &location);
    notify_register_dispatch(uTF8String, &v10->_namePrefChangeToken, v12, handler);

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v10 selector:sel__handleContactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];
    v15 = +[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];
    if (v15)
    {
      [(TCSContactsDataSource *)v10 _updateSortedContactsAndNotifyIfChanged:0];
    }

    else
    {
      _TCSInitializeLogging(v15, v16);
      v17 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&dword_26F110000, v17, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource will need to wait for first device unlock before it can generate Walkie-Talkie contacts for display.", v20, 2u);
      }

      v18 = +[TCSBehavior sharedBehavior];
      [defaultCenter addObserver:v10 selector:sel__handleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v18];
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __55__TCSContactsDataSource_initWithContactStore_contacts___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && WeakRetained[14] == a2)
  {
    v4 = WeakRetained;
    [WeakRetained _handlePersonNamePreferencesChangeNotification];
    WeakRetained = v4;
  }
}

- (void)dealloc
{
  [(TCSContacts *)self->_contacts removeObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  notify_cancel(self->_namePrefChangeToken);
  v4.receiver = self;
  v4.super_class = TCSContactsDataSource;
  [(TCSContactsDataSource *)&v4 dealloc];
}

- (unint64_t)sectionCount
{
  v3 = [(NSArray *)self->_sortedContacts count];
  v4 = [(NSArray *)self->_sortedInviters count];
  v5 = 1;
  if (v3)
  {
    v5 = 2;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3 != 0;
  }

  if ([(NSArray *)self->_sortedInvitees count])
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_1 != -1)
  {
    +[TCSContactsDataSource descriptorForRequiredKeys];
  }

  v3 = descriptorForRequiredKeys_cn_once_object_1;

  return v3;
}

void __50__TCSContactsDataSource_descriptorForRequiredKeys__block_invoke()
{
  v8[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBDA58];
  v1 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:0];
  v8[0] = v1;
  v2 = [MEMORY[0x277CBDA58] descriptorForAllComparatorKeys];
  v3 = *MEMORY[0x277CBD098];
  v8[1] = v2;
  v8[2] = v3;
  v8[3] = *MEMORY[0x277CBCFC0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:4];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TCSContactsDataSource descriptorForRequiredKeys]_block_invoke"];
  v6 = [v0 descriptorWithKeyDescriptors:v4 description:v5];
  v7 = descriptorForRequiredKeys_cn_once_object_1;
  descriptorForRequiredKeys_cn_once_object_1 = v6;
}

- (int64_t)inviteContact:(id)contact
{
  v46[1] = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  sortedInvitees = [(TCSContactsDataSource *)self sortedInvitees];
  v6 = [sortedInvitees mutableCopy];

  v7 = [v6 containsObject:contactCopy];
  if (!v7)
  {
    sortedInviters = [(TCSContactsDataSource *)self sortedInviters];
    v11 = [sortedInviters containsObject:contactCopy];

    if (v11)
    {
      _TCSInitializeLogging(v12, v13);
      v14 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSContactsDataSource inviteContact:v14];
      }

      goto LABEL_10;
    }

    sortedContacts = [(TCSContactsDataSource *)self sortedContacts];
    v16 = [sortedContacts containsObject:contactCopy];

    if (v16)
    {
      _TCSInitializeLogging(v17, v18);
      v19 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
      {
        [TCSContactsDataSource inviteContact:v19];
      }

      goto LABEL_10;
    }

    v22 = +[TCSContactsDataSource descriptorForRequiredKeys];
    v46[0] = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:1];

    if ([contactCopy areKeysAvailable:v23])
    {
      v24 = contactCopy;
    }

    else
    {
      contactStore = self->_contactStore;
      identifier = [contactCopy identifier];
      v43 = 0;
      v24 = [(CNContactStore *)contactStore unifiedContactWithIdentifier:identifier keysToFetch:v23 error:&v43];
      v27 = v43;

      if (v27)
      {
        _TCSInitializeLogging(v28, v29);
        if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
        {
          [TCSContactsDataSource inviteContact:];
        }

        v20 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_21;
      }
    }

    [v6 addObject:v24];
    v30 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:v6];
    sortedInvitees = self->_sortedInvitees;
    self->_sortedInvitees = v30;

    v32 = [(TCSContactsDataSource *)self _contactMapFromArray:self->_sortedInvitees];
    inviteeContactMap = self->_inviteeContactMap;
    self->_inviteeContactMap = v32;

    allowedContactIdentifiers = self->_allowedContactIdentifiers;
    identifier2 = [v24 identifier];
    [(NSMutableSet *)allowedContactIdentifiers addObject:identifier2];

    _TCSInitializeLogging(v36, v37);
    v38 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v38;
      v40 = [TCSContacts _safeContactDetailStringForLogging:v24];
      *buf = 138412290;
      v45 = v40;
      _os_log_impl(&dword_26F110000, v39, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource added an invited contact %@", buf, 0xCu);
    }

    [(TCSContacts *)self->_contacts removeObserver:self];
    contacts = self->_contacts;
    v42 = [TCSContacts canonicalDestinationsForContact:v24];
    [(TCSContacts *)contacts addDestinations:v42];

    [(TCSContacts *)self->_contacts addObserver:self];
    v20 = [(NSArray *)self->_sortedInvitees indexOfObject:v24];
LABEL_21:

    contactCopy = v24;
    goto LABEL_11;
  }

  _TCSInitializeLogging(v7, v8);
  v9 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
  {
    [TCSContactsDataSource inviteContact:v9];
  }

LABEL_10:
  v20 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_11:

  return v20;
}

- (void)removeContact:(id)contact
{
  contactCopy = contact;
  v5 = [(TCSContactsDataSource *)self _sectionForContact:contactCopy];
  if (v5 == -1)
  {
    _TCSInitializeLogging(-1, v6);
    v7 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContactsDataSource removeContact:v7];
    }
  }

  else
  {
    [(TCSContactsDataSource *)self removeContact:contactCopy inSection:v5];
  }
}

- (void)removeContact:(id)contact inSection:(int64_t)section
{
  v30 = *MEMORY[0x277D85DE8];
  contactCopy = contact;
  v7 = [(TCSContactsDataSource *)self _contactsForSection:section];
  v8 = [v7 mutableCopy];

  v9 = [v8 containsObject:contactCopy];
  if (v9)
  {
    [v8 removeObject:contactCopy];
    if (section <= 2)
    {
      v11 = [v8 copy];
      v12 = &self->super.isa + section;
      v13 = v12[10];
      v12[10] = v11;

      v14 = [(TCSContactsDataSource *)self _contactMapFromArray:v12[10]];
      v15 = v12[4];
      v12[4] = v14;
    }

    allowedContactIdentifiers = self->_allowedContactIdentifiers;
    identifier = [contactCopy identifier];
    [(NSMutableSet *)allowedContactIdentifiers removeObject:identifier];

    inviterContactIdentifiers = self->_inviterContactIdentifiers;
    identifier2 = [contactCopy identifier];
    [(NSMutableSet *)inviterContactIdentifiers removeObject:identifier2];

    _TCSInitializeLogging(v20, v21);
    v22 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v22;
      v24 = [TCSContacts _safeContactDetailStringForLogging:contactCopy];
      v28 = 138412290;
      v29 = v24;
      _os_log_impl(&dword_26F110000, v23, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource removed contact %@", &v28, 0xCu);
    }

    [(TCSContacts *)self->_contacts removeObserver:self];
    contacts = self->_contacts;
    v26 = [TCSContacts canonicalDestinationsForContact:contactCopy];
    [(TCSContacts *)contacts removeDestinations:v26];

    [(TCSContacts *)self->_contacts addObserver:self];
    [(TCSContactsDataSource *)self _updateSortedContactsAndNotifyIfChanged:0];
  }

  else
  {
    _TCSInitializeLogging(v9, v10);
    v27 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [TCSContactsDataSource removeContact:v27];
    }
  }
}

- (BOOL)isContactAllowed:(id)allowed
{
  allowedContactIdentifiers = self->_allowedContactIdentifiers;
  identifier = [allowed identifier];
  LOBYTE(allowedContactIdentifiers) = [(NSMutableSet *)allowedContactIdentifiers containsObject:identifier];

  return allowedContactIdentifiers;
}

- (BOOL)isContactAnInviter:(id)inviter
{
  inviterContactIdentifiers = self->_inviterContactIdentifiers;
  identifier = [inviter identifier];
  LOBYTE(inviterContactIdentifiers) = [(NSMutableSet *)inviterContactIdentifiers containsObject:identifier];

  return inviterContactIdentifiers;
}

- (id)contactWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_allowedContactMap objectForKeyedSubscript:identifierCopy];
  if (v5 || ([(NSDictionary *)self->_inviterContactMap objectForKeyedSubscript:identifierCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || ([(NSDictionary *)self->_inviteeContactMap objectForKeyedSubscript:identifierCopy], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v7 = v5;
  }

  else
  {
    _TCSInitializeLogging(0, v6);
    v9 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_ERROR))
    {
      [(TCSContactsDataSource *)v9 contactWithIdentifier:identifierCopy];
    }

    v7 = 0;
  }

  return v7;
}

- (void)logSortedContacts
{
  selfCopy = self;
  v65 = *MEMORY[0x277D85DE8];
  v3 = [(NSArray *)self->_sortedContacts count];
  v4 = [(NSArray *)selfCopy->_sortedInviters count]+ v3;
  v5 = [(NSArray *)selfCopy->_sortedInvitees count];
  if (v4 + v5)
  {
    v8 = [(NSArray *)selfCopy->_sortedContacts count];
    v47 = selfCopy;
    if (v8)
    {
      _TCSInitializeLogging(v8, v9);
      v10 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v10, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource has allowed contacts:", buf, 2u);
      }

      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v11 = selfCopy->_sortedContacts;
      v12 = [(NSArray *)v11 countByEnumeratingWithState:&v56 objects:v64 count:16];
      if (v12)
      {
        v14 = v12;
        v15 = *v57;
        do
        {
          v16 = 0;
          do
          {
            if (*v57 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v56 + 1) + 8 * v16);
            _TCSInitializeLogging(v12, v13);
            v18 = TCSLogDefault;
            v12 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
            if (v12)
            {
              v19 = v18;
              v20 = [TCSContacts _safeContactDetailStringForLogging:v17];
              *buf = 138412290;
              v63 = v20;
              _os_log_impl(&dword_26F110000, v19, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
            }

            ++v16;
          }

          while (v14 != v16);
          v12 = [(NSArray *)v11 countByEnumeratingWithState:&v56 objects:v64 count:16];
          v14 = v12;
        }

        while (v12);
      }

      selfCopy = v47;
    }

    v21 = [(NSArray *)selfCopy->_sortedInviters count];
    if (v21)
    {
      _TCSInitializeLogging(v21, v22);
      v23 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v23, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource has contacts with unresolved incoming invites:", buf, 2u);
      }

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v24 = selfCopy->_sortedInviters;
      v25 = [(NSArray *)v24 countByEnumeratingWithState:&v52 objects:v61 count:16];
      if (v25)
      {
        v27 = v25;
        v28 = *v53;
        do
        {
          v29 = 0;
          do
          {
            if (*v53 != v28)
            {
              objc_enumerationMutation(v24);
            }

            v30 = *(*(&v52 + 1) + 8 * v29);
            _TCSInitializeLogging(v25, v26);
            v31 = TCSLogDefault;
            v25 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
            if (v25)
            {
              v32 = v31;
              v33 = [TCSContacts _safeContactDetailStringForLogging:v30];
              *buf = 138412290;
              v63 = v33;
              _os_log_impl(&dword_26F110000, v32, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
            }

            ++v29;
          }

          while (v27 != v29);
          v25 = [(NSArray *)v24 countByEnumeratingWithState:&v52 objects:v61 count:16];
          v27 = v25;
        }

        while (v25);
      }

      selfCopy = v47;
    }

    v34 = [(NSArray *)selfCopy->_sortedInvitees count];
    if (v34)
    {
      _TCSInitializeLogging(v34, v35);
      v36 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v36, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource has contacts with unresolved outgoing invites:", buf, 2u);
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v37 = selfCopy->_sortedInvitees;
      v38 = [(NSArray *)v37 countByEnumeratingWithState:&v48 objects:v60 count:16];
      if (v38)
      {
        v40 = v38;
        v41 = *v49;
        do
        {
          v42 = 0;
          do
          {
            if (*v49 != v41)
            {
              objc_enumerationMutation(v37);
            }

            v43 = *(*(&v48 + 1) + 8 * v42);
            _TCSInitializeLogging(v38, v39);
            v44 = TCSLogDefault;
            v38 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
            if (v38)
            {
              v45 = v44;
              v46 = [TCSContacts _safeContactDetailStringForLogging:v43];
              *buf = 138412290;
              v63 = v46;
              _os_log_impl(&dword_26F110000, v45, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
            }

            ++v42;
          }

          while (v40 != v42);
          v38 = [(NSArray *)v37 countByEnumeratingWithState:&v48 objects:v60 count:16];
          v40 = v38;
        }

        while (v38);
      }
    }
  }

  else
  {
    _TCSInitializeLogging(v5, v6);
    v7 = TCSLogDefault;
    if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v7, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource has no contacts to display.", buf, 2u);
    }
  }
}

- (void)destinationsDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__TCSContactsDataSource_destinationsDidChange___block_invoke;
  v3[3] = &unk_279DC19E0;
  v3[4] = self;
  TCSGuaranteeMainThread(v3);
}

- (void)recencyDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __42__TCSContactsDataSource_recencyDidChange___block_invoke;
  v3[3] = &unk_279DC19E0;
  v3[4] = self;
  TCSGuaranteeMainThread(v3);
}

uint64_t __42__TCSContactsDataSource_recencyDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _updateSortedContactsAndNotifyIfChanged:0];
  v2 = *(a1 + 32);

  return [v2 _notifyDelegateRecencyChanged];
}

- (void)contactBecameAccepted:(id)accepted
{
  acceptedCopy = accepted;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__TCSContactsDataSource_contactBecameAccepted___block_invoke;
  v6[3] = &unk_279DC1AF0;
  v7 = acceptedCopy;
  selfCopy = self;
  v5 = acceptedCopy;
  TCSGuaranteeMainThread(v6);
}

uint64_t __47__TCSContactsDataSource_contactBecameAccepted___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  _TCSInitializeLogging(a1, a2);
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = v3;
    v6 = [TCSContacts _safeContactDetailStringForLogging:v4];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_26F110000, v5, OS_LOG_TYPE_DEFAULT, "Contact was promoted to the allowlist: %@", &v8, 0xCu);
  }

  return [*(a1 + 40) _updateSortedContactsAndNotifyIfChanged:1];
}

- (id)_contactMapFromArray:(id)array
{
  v19 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = arrayCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        identifier = [v10 identifier];
        [dictionary setObject:v10 forKeyedSubscript:identifier];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [dictionary copy];

  return v12;
}

- (void)_updateSortedContactsAndNotifyIfChanged:(BOOL)changed
{
  changedCopy = changed;
  v62 = *MEMORY[0x277D85DE8];
  _unsortedContactsArray = [(TCSContactsDataSource *)self _unsortedContactsArray];
  v6 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:_unsortedContactsArray forSection:0];
  v7 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:_unsortedContactsArray forSection:1];
  v8 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:_unsortedContactsArray forSection:2];
  sortedContacts = self->_sortedContacts;
  if (sortedContacts && ![(TCSContactsDataSource *)self _contactArray:sortedContacts differsFromArray:v6])
  {
    v12 = 0;
  }

  else
  {
    objc_storeStrong(&self->_sortedContacts, v6);
    v10 = [(TCSContactsDataSource *)self _contactMapFromArray:v6];
    allowedContactMap = self->_allowedContactMap;
    self->_allowedContactMap = v10;

    v12 = 1;
  }

  sortedInviters = self->_sortedInviters;
  if (!sortedInviters || [(TCSContactsDataSource *)self _contactArray:sortedInviters differsFromArray:v7])
  {
    objc_storeStrong(&self->_sortedInviters, v7);
    v14 = [(TCSContactsDataSource *)self _contactMapFromArray:v7];
    inviterContactMap = self->_inviterContactMap;
    self->_inviterContactMap = v14;

    v12 = 1;
  }

  sortedInvitees = self->_sortedInvitees;
  if (sortedInvitees && ![(TCSContactsDataSource *)self _contactArray:sortedInvitees differsFromArray:v8])
  {
    if (!v12)
    {
      goto LABEL_35;
    }
  }

  else
  {
    objc_storeStrong(&self->_sortedInvitees, v8);
    v17 = [(TCSContactsDataSource *)self _contactMapFromArray:v8];
    inviteeContactMap = self->_inviteeContactMap;
    self->_inviteeContactMap = v17;
  }

  v44 = v7;
  v45 = changedCopy;
  v46 = v6;
  v19 = [MEMORY[0x277CBEB58] set];
  allowedContactIdentifiers = self->_allowedContactIdentifiers;
  self->_allowedContactIdentifiers = v19;

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v21 = self->_sortedContacts;
  v22 = [(NSArray *)v21 countByEnumeratingWithState:&v55 objects:v61 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v56;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v56 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = self->_allowedContactIdentifiers;
        identifier = [*(*(&v55 + 1) + 8 * i) identifier];
        [(NSMutableSet *)v26 addObject:identifier];
      }

      v23 = [(NSArray *)v21 countByEnumeratingWithState:&v55 objects:v61 count:16];
    }

    while (v23);
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v28 = self->_sortedInvitees;
  v29 = [(NSArray *)v28 countByEnumeratingWithState:&v51 objects:v60 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v52;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v52 != v31)
        {
          objc_enumerationMutation(v28);
        }

        v33 = self->_allowedContactIdentifiers;
        identifier2 = [*(*(&v51 + 1) + 8 * j) identifier];
        [(NSMutableSet *)v33 addObject:identifier2];
      }

      v30 = [(NSArray *)v28 countByEnumeratingWithState:&v51 objects:v60 count:16];
    }

    while (v30);
  }

  v35 = [MEMORY[0x277CBEB58] set];
  inviterContactIdentifiers = self->_inviterContactIdentifiers;
  self->_inviterContactIdentifiers = v35;

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v37 = self->_sortedInviters;
  v38 = [(NSArray *)v37 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v48;
    do
    {
      for (k = 0; k != v39; ++k)
      {
        if (*v48 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = self->_inviterContactIdentifiers;
        identifier3 = [*(*(&v47 + 1) + 8 * k) identifier];
        [(NSMutableSet *)v42 addObject:identifier3];
      }

      v39 = [(NSArray *)v37 countByEnumeratingWithState:&v47 objects:v59 count:16];
    }

    while (v39);
  }

  [(TCSContactsDataSource *)self logSortedContacts];
  v6 = v46;
  v7 = v44;
  if (v45)
  {
    [(TCSContactsDataSource *)self _notifyDelegateContactsChanged];
  }

LABEL_35:
}

- (void)_notifyDelegateContactsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 contactsDidChange:self];
  }
}

- (void)_notifyDelegateRecencyChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 recencyDidChange:self];
  }
}

- (id)_unsortedContactsArray
{
  v25 = *MEMORY[0x277D85DE8];
  destinations = [(TCSContacts *)self->_contacts destinations];
  v4 = [destinations copy];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = v4;
  v5 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        contactStore = [(TCSContactsDataSource *)self contactStore];
        v11 = +[TCSContactsDataSource descriptorForRequiredKeys];
        v23 = v11;
        v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
        v13 = [TCSContacts _unifiedContactWithIdentifier:0 orDestination:v9 usingContactStore:contactStore keysToFetch:v12];

        if (v13)
        {
          identifier = [v13 identifier];
          [dictionary setValue:v13 forKey:identifier];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  allValues = [dictionary allValues];

  return allValues;
}

- (id)_sortedContactsArrayFromArray:(id)array forSection:(int64_t)section
{
  v5 = MEMORY[0x277CCAC30];
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __66__TCSContactsDataSource__sortedContactsArrayFromArray_forSection___block_invoke;
  v14 = &unk_279DC1B18;
  selfCopy = self;
  sectionCopy = section;
  arrayCopy = array;
  v7 = [v5 predicateWithBlock:&v11];
  v8 = [arrayCopy filteredArrayUsingPredicate:{v7, v11, v12, v13, v14, selfCopy, sectionCopy}];

  v9 = [(TCSContactsDataSource *)self _sortedContactsArrayFromArray:v8];

  return v9;
}

BOOL __66__TCSContactsDataSource__sortedContactsArrayFromArray_forSection___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 8) stateForContact:a2];
  v4 = *(a1 + 40);
  v5 = v3 == 4;
  v6 = v3 == 3;
  if (v4)
  {
    v6 = 0;
  }

  if (v4 != 1)
  {
    v5 = v6;
  }

  if (v4 == 2)
  {
    return (v3 - 1) < 2;
  }

  else
  {
    return v5;
  }
}

- (id)_sortedContactsArrayFromArray:(id)array
{
  v3 = MEMORY[0x277CBDAD0];
  arrayCopy = array;
  sharedDefaults = [v3 sharedDefaults];
  sortOrder = [sharedDefaults sortOrder];

  v7 = [MEMORY[0x277CBDA58] comparatorForNameSortOrder:sortOrder];
  v8 = [arrayCopy sortedArrayUsingComparator:v7];

  return v8;
}

- (id)_contactsForSection:(int64_t)section
{
  if (section == 2)
  {
    sortedInvitees = [(TCSContactsDataSource *)self sortedInvitees];
  }

  else if (section == 1)
  {
    sortedInvitees = [(TCSContactsDataSource *)self sortedInviters];
  }

  else if (section)
  {
    sortedInvitees = 0;
  }

  else
  {
    sortedInvitees = [(TCSContactsDataSource *)self sortedContacts];
  }

  return sortedInvitees;
}

- (int64_t)_sectionForContact:(id)contact
{
  contactCopy = contact;
  allowedContactMap = self->_allowedContactMap;
  identifier = [contactCopy identifier];
  v7 = [(NSDictionary *)allowedContactMap objectForKeyedSubscript:identifier];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    inviterContactMap = self->_inviterContactMap;
    identifier2 = [contactCopy identifier];
    v11 = [(NSDictionary *)inviterContactMap objectForKeyedSubscript:identifier2];

    if (v11)
    {
      v8 = 1;
    }

    else
    {
      inviteeContactMap = self->_inviteeContactMap;
      identifier3 = [contactCopy identifier];
      v14 = [(NSDictionary *)inviteeContactMap objectForKeyedSubscript:identifier3];

      if (v14)
      {
        v8 = 2;
      }

      else
      {
        v8 = -1;
      }
    }
  }

  return v8;
}

- (BOOL)_contactArray:(id)array differsFromArray:(id)fromArray
{
  arrayCopy = array;
  fromArrayCopy = fromArray;
  v7 = [arrayCopy count];
  if (v7 != [fromArrayCopy count])
  {
LABEL_12:
    v14 = 1;
    goto LABEL_13;
  }

  if ([arrayCopy count])
  {
    v8 = 0;
    while (1)
    {
      v9 = [arrayCopy objectAtIndexedSubscript:v8];
      v10 = [fromArrayCopy objectAtIndexedSubscript:v8];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      objc_opt_class();
      v12 = objc_opt_isKindOfClass();
      v13 = v12;
      if (((isKindOfClass & 1) == 0 || (v12 & 1) == 0 || !+[TCSContacts _isUnknownContact:equalToUnknownContact:](TCSContacts, "_isUnknownContact:equalToUnknownContact:", v9, v10)) && (((isKindOfClass | v13) & 1) != 0 || ([v9 isEqual:v10] & 1) == 0))
      {
        break;
      }

      if (++v8 >= [arrayCopy count])
      {
        goto LABEL_10;
      }
    }

    goto LABEL_12;
  }

LABEL_10:
  v14 = 0;
LABEL_13:

  return v14;
}

- (void)_handleDeviceFirstUnlock
{
  _TCSInitializeLogging(self, a2);
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSContactsDataSource was notified of first device unlock.", v4, 2u);
  }

  [(TCSContactsDataSource *)self _updateSortedContactsAndNotifyIfChanged:1];
}

- (TCSContactsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)inviteContact:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26F110000, v0, OS_LOG_TYPE_ERROR, "Error remaking contact: %@", v1, 0xCu);
}

- (void)inviteContact:(void *)a1 .cold.2(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() _safeContactDetailStringForLogging:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26F110000, v4, v5, "Attempt to add an invited contact that is already allowed: %@", v6, v7, v8, v9);
}

- (void)inviteContact:(void *)a1 .cold.3(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() _safeContactDetailStringForLogging:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26F110000, v4, v5, "Attempt to add an invited contact that has a pending remote invite awaiting user response: %@", v6, v7, v8, v9);
}

- (void)inviteContact:(void *)a1 .cold.4(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() _safeContactDetailStringForLogging:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26F110000, v4, v5, "Attempt to add an invited contact that was already marked as such: %@", v6, v7, v8, v9);
}

- (void)removeContact:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() _safeContactDetailStringForLogging:?];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_26F110000, v4, v5, "Attempt to remove a contact not contained within the contacts data source: %@", v6, v7, v8, v9);
}

- (void)contactWithIdentifier:(void *)a1 .cold.1(void *a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = TCSLogSafeDescription(a2);
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_26F110000, v3, OS_LOG_TYPE_ERROR, "Map lookup for contact identifier %@ did not find any contact.", v5, 0xCu);
}

@end