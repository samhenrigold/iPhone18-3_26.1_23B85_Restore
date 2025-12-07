@interface CalReminderMigrationContext
- (BOOL)_setup;
- (BOOL)_tryBeginMigration;
- (BOOL)ensureAccountsExist:(id)exist;
- (BOOL)finishMigrationWithSave:(BOOL)save;
- (BOOL)isCurrentOrderedListItemsContextEmpty;
- (REMAccountChangeItem)localAccountChangeItem;
- (REMSaveRequest)saveRequest;
- (id)_initWithReminderKitProvider:(id)provider;
- (id)_sortedAddedListChangeItems;
- (id)accountsForAccountIdentifiers;
- (id)existingAccountChangeItemWithAccountIdentifier:(id)identifier;
- (id)reminderStore;
- (void)_loadAccountsIfNeeded;
- (void)_sortAddedReminderListsInAccountChangeItem:(id)item;
- (void)_verifyAccountHasNoLists:(id)lists withAccountIdentifier:(id)identifier;
- (void)popOrderedListItemsContextAndSortListsInAccountChangeItem:(id)item;
- (void)pushOrderedListItemsContext;
- (void)recordAddedListChangeItem:(id)item withOriginalIdentifier:(id)identifier order:(id)order;
- (void)recordMigrationFailureWithDescription:(id)description inStage:(unint64_t)stage underlyingError:(id)error relatedTo:(id)to isFatal:(BOOL)fatal;
@end

@implementation CalReminderMigrationContext

- (BOOL)_tryBeginMigration
{
  _setup = [(CalReminderMigrationContext *)self _setup];
  if (!_setup)
  {
    [(CalReminderMigrationContext *)self finishMigrationWithSave:0];
  }

  return _setup;
}

- (id)_initWithReminderKitProvider:(id)provider
{
  providerCopy = provider;
  v13.receiver = self;
  v13.super_class = CalReminderMigrationContext;
  v6 = [(CalReminderMigrationContext *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_reminderKitProvider, provider);
    newDatabaseMigrationContext = [providerCopy newDatabaseMigrationContext];
    remDatabaseMigrationContext = v7->_remDatabaseMigrationContext;
    v7->_remDatabaseMigrationContext = newDatabaseMigrationContext;

    v10 = objc_opt_new();
    orderedListChangeItemsStack = v7->_orderedListChangeItemsStack;
    v7->_orderedListChangeItemsStack = v10;
  }

  return v7;
}

- (BOOL)_setup
{
  if (![(CalReminderMigrationContext *)self shouldPerformMigration])
  {
    return 1;
  }

  [(CalReminderMigrationContext *)self _willBeginMigration];
  reminderStore = [(CalReminderMigrationContext *)self reminderStore];
  if (reminderStore)
  {
    saveRequest = [(CalReminderMigrationContext *)self saveRequest];
    v5 = saveRequest != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)ensureAccountsExist:(id)exist
{
  remDatabaseMigrationContext = self->_remDatabaseMigrationContext;
  v9 = 0;
  v5 = [(CalReminderKitDatabaseMigrationContext *)remDatabaseMigrationContext ensureAccountsExist:exist error:&v9];
  v6 = v9;
  if ((v5 & 1) == 0)
  {
    v7 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CalReminderMigrationContext ensureAccountsExist:];
    }

    [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to create accounts" inStage:2 underlyingError:v6];
  }

  return v5;
}

- (id)reminderStore
{
  reminderStore = self->_reminderStore;
  if (!reminderStore)
  {
    reminderStore = [(CalReminderKitDatabaseMigrationContext *)self->_remDatabaseMigrationContext reminderStore];
    v5 = self->_reminderStore;
    self->_reminderStore = reminderStore;

    reminderStore = self->_reminderStore;
    if (!reminderStore)
    {
      v6 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext reminderStore];
      }

      [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to get reminder store" inStage:1 underlyingError:0];
      reminderStore = self->_reminderStore;
    }
  }

  return reminderStore;
}

- (REMSaveRequest)saveRequest
{
  saveRequest = self->_saveRequest;
  if (!saveRequest)
  {
    reminderKitProvider = [(CalReminderMigrationContext *)self reminderKitProvider];
    reminderStore = [(CalReminderMigrationContext *)self reminderStore];
    v6 = [reminderKitProvider newSaveRequestWithStore:reminderStore];
    v7 = self->_saveRequest;
    self->_saveRequest = v6;

    v8 = self->_saveRequest;
    if (!v8)
    {
      v9 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext saveRequest];
      }

      [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to create save request" inStage:1 underlyingError:0];
      v8 = self->_saveRequest;
    }

    [(REMSaveRequest *)v8 setAuthor:*MEMORY[0x277CF7900]];
    [(REMSaveRequest *)self->_saveRequest setCloneCompletedRecurrentRemindersAtSave:0];
    saveRequest = self->_saveRequest;
  }

  return saveRequest;
}

- (REMAccountChangeItem)localAccountChangeItem
{
  localAccountChangeItem = self->_localAccountChangeItem;
  if (!localAccountChangeItem)
  {
    [(CalReminderMigrationContext *)self _loadAccountsIfNeeded];
    if (self->_localAccount)
    {
      saveRequest = [(CalReminderMigrationContext *)self saveRequest];
      v5 = [saveRequest updateAccount:self->_localAccount];
    }

    else
    {
      v6 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext localAccountChangeItem];
      }

      saveRequest = [(CalReminderMigrationContext *)self saveRequest];
      v5 = [saveRequest _addAccountWithType:1 name:@"Local"];
    }

    v7 = self->_localAccountChangeItem;
    self->_localAccountChangeItem = v5;

    localAccountChangeItem = self->_localAccountChangeItem;
  }

  v8 = localAccountChangeItem;

  return v8;
}

- (id)existingAccountChangeItemWithAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  accountChangeItemsForAccountIdentifiers = self->_accountChangeItemsForAccountIdentifiers;
  if (!accountChangeItemsForAccountIdentifiers)
  {
    v6 = objc_opt_new();
    v7 = self->_accountChangeItemsForAccountIdentifiers;
    self->_accountChangeItemsForAccountIdentifiers = v6;

    accountChangeItemsForAccountIdentifiers = self->_accountChangeItemsForAccountIdentifiers;
  }

  v8 = [(NSMutableDictionary *)accountChangeItemsForAccountIdentifiers objectForKeyedSubscript:identifierCopy];
  if (!v8)
  {
    accountsForAccountIdentifiers = [(CalReminderMigrationContext *)self accountsForAccountIdentifiers];
    v10 = [accountsForAccountIdentifiers objectForKeyedSubscript:identifierCopy];

    if (v10)
    {
      saveRequest = [(CalReminderMigrationContext *)self saveRequest];
      v8 = [saveRequest updateAccount:v10];

      if (v8)
      {
        [(NSMutableDictionary *)self->_accountChangeItemsForAccountIdentifiers setObject:v8 forKeyedSubscript:identifierCopy];
      }

      else
      {
        v13 = +[CalMigrationLog reminders];
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          [CalReminderMigrationContext existingAccountChangeItemWithAccountIdentifier:];
        }
      }

      [(CalReminderMigrationContext *)self _verifyAccountHasNoLists:v10 withAccountIdentifier:identifierCopy];
    }

    else
    {
      v12 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext existingAccountChangeItemWithAccountIdentifier:];
      }

      v8 = 0;
    }
  }

  return v8;
}

- (void)_verifyAccountHasNoLists:(id)lists withAccountIdentifier:(id)identifier
{
  listsCopy = lists;
  identifierCopy = identifier;
  v12 = 0;
  v8 = [listsCopy fetchListsWithError:&v12];
  v9 = v12;
  if (!v8)
  {
    v10 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(CalReminderMigrationContext *)identifierCopy _verifyAccountHasNoLists:listsCopy withAccountIdentifier:v10];
    }
  }

  if ([v8 count])
  {
    v11 = +[CalMigrationLog reminders];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CalReminderMigrationContext _verifyAccountHasNoLists:withAccountIdentifier:];
    }

    [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Migrating data into account with existing lists" inStage:2 underlyingError:0 relatedTo:identifierCopy];
  }
}

- (id)accountsForAccountIdentifiers
{
  [(CalReminderMigrationContext *)self _loadAccountsIfNeeded];
  accountsForAccountIdentifiers = self->_accountsForAccountIdentifiers;

  return accountsForAccountIdentifiers;
}

- (void)_loadAccountsIfNeeded
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)recordAddedListChangeItem:(id)item withOriginalIdentifier:(id)identifier order:(id)order
{
  itemCopy = item;
  identifierCopy = identifier;
  orderCopy = order;
  if (identifierCopy)
  {
    defaultListOriginalIdentifier = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];
    if (defaultListOriginalIdentifier)
    {
      v11 = defaultListOriginalIdentifier;
      defaultListOriginalIdentifier2 = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];
      v13 = [identifierCopy isEqualToString:defaultListOriginalIdentifier2];

      if (v13)
      {
        objectID = [itemCopy objectID];
        defaultListMigratedIdentifier = self->_defaultListMigratedIdentifier;
        self->_defaultListMigratedIdentifier = objectID;
      }
    }
  }

  v16 = objc_opt_new();
  [v16 setListChangeItem:itemCopy];
  if (orderCopy)
  {
    integerValue = [orderCopy integerValue];
  }

  else
  {
    integerValue = 0x7FFFFFFFFFFFFFFFLL;
  }

  [v16 setOrder:integerValue];
  lastObject = [(NSMutableArray *)self->_orderedListChangeItemsStack lastObject];
  [lastObject addObject:v16];
}

- (void)pushOrderedListItemsContext
{
  orderedListChangeItemsStack = self->_orderedListChangeItemsStack;
  v3 = objc_opt_new();
  [(NSMutableArray *)orderedListChangeItemsStack addObject:v3];
}

- (void)popOrderedListItemsContextAndSortListsInAccountChangeItem:(id)item
{
  [(CalReminderMigrationContext *)self _sortAddedReminderListsInAccountChangeItem:item];
  orderedListChangeItemsStack = self->_orderedListChangeItemsStack;

  [(NSMutableArray *)orderedListChangeItemsStack removeLastObject];
}

- (BOOL)isCurrentOrderedListItemsContextEmpty
{
  lastObject = [(NSMutableArray *)self->_orderedListChangeItemsStack lastObject];
  v3 = [lastObject count] == 0;

  return v3;
}

- (void)_sortAddedReminderListsInAccountChangeItem:(id)item
{
  v41 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  [(CalReminderMigrationContext *)self _sortedAddedListChangeItems];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v29 = 0u;
  v5 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = 0;
    listChangeItem = 0;
    v10 = *v27;
    v11 = 0x278D6D000uLL;
    *&v6 = 138413314;
    v22 = v6;
    v23 = itemCopy;
    do
    {
      v12 = 0;
      v13 = listChangeItem;
      v24 = v7;
      do
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v26 + 1) + 8 * v12);
        listChangeItem = [v14 listChangeItem];
        order = [v14 order];
        if (order == 0x7FFFFFFFFFFFFFFFLL)
        {
          ++v8;
        }

        else
        {
          v8 = order;
        }

        reminders = [*(v11 + 312) reminders];
        if (os_log_type_enabled(reminders, OS_LOG_TYPE_DEFAULT))
        {
          name = [listChangeItem name];
          objectID = [listChangeItem objectID];
          name2 = [v13 name];
          [v13 objectID];
          v21 = v20 = v10;
          *buf = v22;
          v31 = name;
          v32 = 2114;
          v33 = objectID;
          v34 = 2112;
          v35 = name2;
          v36 = 2114;
          v37 = v21;
          v38 = 2048;
          v39 = v8;
          _os_log_impl(&dword_2428EA000, reminders, OS_LOG_TYPE_DEFAULT, "Inserting List %@ (%{public}@) after list %@ (%{public}@) and assigning it order %li", buf, 0x34u);

          v10 = v20;
          v7 = v24;

          itemCopy = v23;
          v11 = 0x278D6D000;
        }

        [listChangeItem setDaDisplayOrder:v8];
        [itemCopy insertListChangeItem:listChangeItem afterListChangeItem:v13];

        ++v12;
        v13 = listChangeItem;
      }

      while (v7 != v12);
      v7 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
    }

    while (v7);
  }
}

- (id)_sortedAddedListChangeItems
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"order" ascending:1];
  v8[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

  lastObject = [(NSMutableArray *)self->_orderedListChangeItemsStack lastObject];
  v6 = [lastObject sortedArrayUsingDescriptors:v4];

  return v6;
}

- (void)recordMigrationFailureWithDescription:(id)description inStage:(unint64_t)stage underlyingError:(id)error relatedTo:(id)to isFatal:(BOOL)fatal
{
  fatalCopy = fatal;
  toCopy = to;
  errorCopy = error;
  descriptionCopy = description;
  v15 = [[CalMigrationFailure alloc] initWithDescription:descriptionCopy stage:stage underlyingError:errorCopy relatedPath:toCopy isFatal:fatalCopy];

  [(CalReminderKitDatabaseMigrationContext *)self->_remDatabaseMigrationContext recordMigrationFailure:v15];
  if (fatalCopy)
  {
    self->_recordedAnyFatalFailures = 1;
  }
}

- (BOOL)finishMigrationWithSave:(BOOL)save
{
  v22 = *MEMORY[0x277D85DE8];
  if (save)
  {
    saveRequest = [(CalReminderMigrationContext *)self saveRequest];
    v17 = 0;
    v5 = [saveRequest saveSynchronouslyWithError:&v17];
    v6 = v17;

    if ((v5 & 1) == 0)
    {
      v7 = +[CalMigrationLog reminders];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CalReminderMigrationContext finishMigrationWithSave:];
      }

      [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to save reminder store" inStage:5 underlyingError:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  recordedAnyFatalFailures = self->_recordedAnyFatalFailures;
  if (!recordedAnyFatalFailures)
  {
    defaultListOriginalIdentifier = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];

    if (defaultListOriginalIdentifier)
    {
      defaultListMigratedIdentifier = self->_defaultListMigratedIdentifier;
      v11 = +[CalMigrationLog reminders];
      v12 = v11;
      if (defaultListMigratedIdentifier)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          defaultListOriginalIdentifier2 = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];
          defaultListMigratedIdentifier = [(CalReminderMigrationContext *)self defaultListMigratedIdentifier];
          *buf = 138543618;
          v19 = defaultListOriginalIdentifier2;
          v20 = 2114;
          v21 = defaultListMigratedIdentifier;
          _os_log_impl(&dword_2428EA000, v12, OS_LOG_TYPE_DEFAULT, "Migrating default reminder list with original identifier %{public}@ and migrated identifier %{public}@", buf, 0x16u);
        }

        reminderKitProvider = [(CalReminderMigrationContext *)self reminderKitProvider];
        [reminderKitProvider setDefaultReminderListIdentifier:self->_defaultListMigratedIdentifier];
      }

      else
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          [(CalReminderMigrationContext *)self finishMigrationWithSave:v12];
        }

        reminderKitProvider = [(CalReminderMigrationContext *)self defaultListOriginalIdentifier];
        [(CalReminderMigrationContext *)self recordMigrationFailureWithDescription:@"Failed to find migrated default reminder list" inStage:5 underlyingError:0 relatedTo:reminderKitProvider isFatal:0];
      }
    }

    else
    {
      reminderKitProvider = +[CalMigrationLog reminders];
      if (os_log_type_enabled(reminderKitProvider, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2428EA000, reminderKitProvider, OS_LOG_TYPE_DEFAULT, "No default reminder list was set.", buf, 2u);
      }
    }
  }

  [(CalReminderMigrationContext *)self _didEndMigrationWithSuccess:!recordedAnyFatalFailures];

  return !recordedAnyFatalFailures;
}

- (void)ensureAccountsExist:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)existingAccountChangeItemWithAccountIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)existingAccountChangeItemWithAccountIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_verifyAccountHasNoLists:(NSObject *)a3 withAccountIdentifier:.cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = [a2 objectID];
  v6 = 138543618;
  v7 = a1;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_2428EA000, a3, OS_LOG_TYPE_ERROR, "Failed to fetch lists for account with identifier = %{public}@, objectID = %{public}@", &v6, 0x16u);
}

- (void)_verifyAccountHasNoLists:withAccountIdentifier:.cold.2()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)finishMigrationWithSave:.cold.1()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)finishMigrationWithSave:(void *)a1 .cold.2(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 defaultListOriginalIdentifier];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_2428EA000, a2, OS_LOG_TYPE_ERROR, "Failed to find migrated default reminder list with original identifier %{public}@", v4, 0xCu);
}

@end