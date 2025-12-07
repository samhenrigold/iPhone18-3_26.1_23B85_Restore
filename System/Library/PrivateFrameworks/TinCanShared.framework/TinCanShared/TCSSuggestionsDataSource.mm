@interface TCSSuggestionsDataSource
+ (id)descriptorForRequiredKeys;
- (BOOL)hasSuggestions;
- (NSArray)suggestedContacts;
- (TCSSuggestionsDataSource)initWithSuggestions:(id)suggestions;
- (TCSSuggestionsDataSourceDelegate)delegate;
- (id)_sortedContactsArrayFromArray:(id)array;
- (void)_handleDeviceFirstUnlock;
- (void)_handlePersonNamePreferencesChangeNotification;
- (void)_invalidate;
- (void)_notifyDelegateSuggestionsChanged;
- (void)dealloc;
- (void)suggestionsDidChange:(id)change;
@end

@implementation TCSSuggestionsDataSource

- (TCSSuggestionsDataSource)initWithSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  v16.receiver = self;
  v16.super_class = TCSSuggestionsDataSource;
  v6 = [(TCSSuggestionsDataSource *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_suggestions, suggestions);
    [(TCSSuggestions *)v7->_suggestions addObserver:v7];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v7 selector:sel__handleContactStoreDidChange_ name:*MEMORY[0x277CBD140] object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v7, _TCSSuggestionsDataSourcePersonNamePreferencesChangeHandler, *MEMORY[0x277D218C0], 0, 0);
    v10 = +[TCSBehavior isMobileKeyBagDisabledOrDeviceUnlockedSinceBoot];
    if ((v10 & 1) == 0)
    {
      _TCSInitializeLogging(v10, v11);
      v12 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_26F110000, v12, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource will need to wait for first device unlock before it can generate Walkie-Talkie suggested contacts for display.", v15, 2u);
      }

      v13 = +[TCSBehavior sharedBehavior];
      [defaultCenter addObserver:v7 selector:sel__handleDeviceFirstUnlock name:@"TCSFirstUnlockNotification" object:v13];
    }
  }

  return v7;
}

- (void)dealloc
{
  [(TCSSuggestions *)self->_suggestions removeObserver:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5.receiver = self;
  v5.super_class = TCSSuggestionsDataSource;
  [(TCSSuggestionsDataSource *)&v5 dealloc];
}

- (BOOL)hasSuggestions
{
  suggestedContacts = [(TCSSuggestionsDataSource *)self suggestedContacts];
  v3 = [suggestedContacts count] != 0;

  return v3;
}

- (NSArray)suggestedContacts
{
  selfCopy = self;
  v69 = *MEMORY[0x277D85DE8];
  suggestedContacts = self->_suggestedContacts;
  if (!suggestedContacts)
  {
    suggestedDestinations = [(TCSSuggestions *)selfCopy->_suggestions suggestedDestinations];
    v5 = [suggestedDestinations copy];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    obj = v5;
    v6 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v60;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v60 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v59 + 1) + 8 * i);
          v11 = selfCopy;
          contactStore = [(TCSSuggestions *)selfCopy->_suggestions contactStore];
          v13 = +[TCSSuggestionsDataSource descriptorForRequiredKeys];
          v67 = v13;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
          v15 = [TCSContacts _unifiedContactWithIdentifier:0 orDestination:v10 usingContactStore:contactStore keysToFetch:v14];

          if (v15)
          {
            identifier = [v15 identifier];
            [dictionary setValue:v15 forKey:identifier];
          }

          selfCopy = v11;
        }

        v7 = [obj countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v7);
    }

    v17 = MEMORY[0x277CBEB58];
    allValues = [dictionary allValues];
    v19 = [v17 setWithArray:allValues];

    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __45__TCSSuggestionsDataSource_suggestedContacts__block_invoke;
    v58[3] = &unk_279DC1E40;
    v58[4] = selfCopy;
    v50 = [v19 objectsPassingTest:v58];
    [v19 minusSet:?];
    v57[0] = MEMORY[0x277D85DD0];
    v57[1] = 3221225472;
    v57[2] = __45__TCSSuggestionsDataSource_suggestedContacts__block_invoke_2;
    v57[3] = &unk_279DC1E40;
    v57[4] = selfCopy;
    v20 = [v19 objectsPassingTest:v57];
    [v19 minusSet:v20];
    contactStore2 = [(TCSSuggestions *)selfCopy->_suggestions contactStore];
    v22 = +[TCSSuggestionsDataSource descriptorForRequiredKeys];
    v66 = v22;
    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v66 count:1];
    v24 = [TCSContacts _unifiedMeContactFromContactStore:contactStore2 keysToFetch:v23];

    v25 = [v19 containsObject:v24];
    if (v25)
    {
      _TCSInitializeLogging(v25, v26);
      v27 = TCSLogDefault;
      if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v27, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource is omitting the Me card from suggested contacts.", buf, 2u);
      }

      [v19 removeObject:v24];
    }

    allObjects = [v19 allObjects];
    v29 = [(TCSSuggestionsDataSource *)selfCopy _sortedContactsArrayFromArray:allObjects];
    v30 = selfCopy->_suggestedContacts;
    selfCopy->_suggestedContacts = v29;

    v31 = [(NSArray *)selfCopy->_suggestedContacts count];
    _TCSInitializeLogging(v31, v32);
    v33 = TCSLogDefault;
    v34 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
    if (v31)
    {
      v46 = v24;
      v47 = v20;
      v48 = v19;
      if (v34)
      {
        *buf = 0;
        _os_log_impl(&dword_26F110000, v33, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource has suggested contacts:", buf, 2u);
      }

      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v49 = selfCopy;
      v35 = selfCopy->_suggestedContacts;
      v36 = [(NSArray *)v35 countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (v36)
      {
        v38 = v36;
        v39 = *v54;
        do
        {
          v40 = 0;
          do
          {
            if (*v54 != v39)
            {
              objc_enumerationMutation(v35);
            }

            v41 = *(*(&v53 + 1) + 8 * v40);
            _TCSInitializeLogging(v36, v37);
            v42 = TCSLogDefault;
            v36 = os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT);
            if (v36)
            {
              v43 = v42;
              v44 = [TCSContacts _safeContactDetailStringForLogging:v41];
              *buf = 138412290;
              v64 = v44;
              _os_log_impl(&dword_26F110000, v43, OS_LOG_TYPE_DEFAULT, "    %@", buf, 0xCu);
            }

            ++v40;
          }

          while (v38 != v40);
          v36 = [(NSArray *)v35 countByEnumeratingWithState:&v53 objects:v65 count:16];
          v38 = v36;
        }

        while (v36);
      }

      v19 = v48;
      selfCopy = v49;
      v24 = v46;
      v20 = v47;
    }

    else if (v34)
    {
      *buf = 0;
      _os_log_impl(&dword_26F110000, v33, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource has no suggested contacts to display.", buf, 2u);
    }

    suggestedContacts = selfCopy->_suggestedContacts;
  }

  return suggestedContacts;
}

uint64_t __45__TCSSuggestionsDataSource_suggestedContacts__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  v4 = [v2 contacts];
  v5 = [v4 isContactAccepted:v3];

  return v5;
}

BOOL __45__TCSSuggestionsDataSource_suggestedContacts__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = a2;
  v4 = [v2 contacts];
  v5 = [v4 stateForContact:v3];

  return v5 == 4;
}

+ (id)descriptorForRequiredKeys
{
  if (descriptorForRequiredKeys_cn_once_token_5 != -1)
  {
    +[TCSSuggestionsDataSource descriptorForRequiredKeys];
  }

  v3 = descriptorForRequiredKeys_cn_once_object_5;

  return v3;
}

void __53__TCSSuggestionsDataSource_descriptorForRequiredKeys__block_invoke()
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
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TCSSuggestionsDataSource descriptorForRequiredKeys]_block_invoke"];
  v6 = [v0 descriptorWithKeyDescriptors:v4 description:v5];
  v7 = descriptorForRequiredKeys_cn_once_object_5;
  descriptorForRequiredKeys_cn_once_object_5 = v6;
}

- (void)suggestionsDidChange:(id)change
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __49__TCSSuggestionsDataSource_suggestionsDidChange___block_invoke;
  v3[3] = &unk_279DC19E0;
  v3[4] = self;
  TCSGuaranteeMainThread(v3);
}

- (void)_invalidate
{
  suggestedContacts = self->_suggestedContacts;
  self->_suggestedContacts = 0;

  [(TCSSuggestionsDataSource *)self _notifyDelegateSuggestionsChanged];
}

- (void)_notifyDelegateSuggestionsChanged
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 suggestedContactsDidChange:self];
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

- (void)_handlePersonNamePreferencesChangeNotification
{
  v3 = [(TCSSuggestionsDataSource *)self _sortedContactsArrayFromArray:self->_suggestedContacts];
  suggestedContacts = self->_suggestedContacts;
  self->_suggestedContacts = v3;

  [(TCSSuggestionsDataSource *)self _notifyDelegateSuggestionsChanged];
}

- (void)_handleDeviceFirstUnlock
{
  _TCSInitializeLogging(self, a2);
  v3 = TCSLogDefault;
  if (os_log_type_enabled(TCSLogDefault, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26F110000, v3, OS_LOG_TYPE_DEFAULT, "TCSSuggestionsDataSource was notified of first device unlock.", v4, 2u);
  }

  [(TCSSuggestionsDataSource *)self _invalidate];
}

- (TCSSuggestionsDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end