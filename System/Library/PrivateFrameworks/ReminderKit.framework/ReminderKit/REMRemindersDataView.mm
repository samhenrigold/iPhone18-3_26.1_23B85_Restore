@interface REMRemindersDataView
+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store requestedReminderIDs:(id)ds;
+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store requestedStringIdentifiers:(id)identifiers identifierSelector:(SEL)selector;
+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store showMarkedForDeleteObjects:(BOOL)objects;
- (REMRemindersDataView)initWithStore:(id)store;
- (id)fetchAllRemindersWithExternalIdentifier:(id)identifier error:(id *)error;
- (id)fetchObjectIDsOfRemindersWithParentReminderID:(id)d includeIncomplete:(BOOL)incomplete includeCompleted:(BOOL)completed isUnsupported:(BOOL)unsupported error:(id *)error;
- (id)fetchReminderWithDACalendarItemUniqueIdentifier:(id)identifier inList:(id)list error:(id *)error;
- (id)fetchReminderWithExternalIdentifier:(id)identifier inList:(id)list error:(id *)error;
- (id)fetchReminderWithObjectID:(id)d fetchOptions:(id)options error:(id *)error;
- (id)fetchRemindersCountWithBatchCreationID:(id)d includingCompleted:(BOOL)completed error:(id *)error;
- (id)fetchRemindersCountWithListID:(id)d includingCompleted:(BOOL)completed error:(id *)error;
- (id)fetchRemindersCountWithParentReminderID:(id)d error:(id *)error;
- (id)fetchRemindersIncludingUnsupportedWithObjectIDs:(id)ds error:(id *)error;
- (id)fetchRemindersMatchingPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(id)options error:(id *)error;
- (id)fetchRemindersWithBatchCreationID:(id)d includingCompleted:(BOOL)completed error:(id *)error;
- (id)fetchRemindersWithDACalendarItemUniqueIdentifiers:(id)identifiers inList:(id)list error:(id *)error;
- (id)fetchRemindersWithExternalIdentifiers:(id)identifiers inList:(id)list error:(id *)error;
- (id)fetchRemindersWithListID:(id)d includingSubtasks:(BOOL)subtasks includingCompleted:(BOOL)completed error:(id *)error;
- (id)fetchRemindersWithLocationAlarmsIncludingCompleted:(BOOL)completed error:(id *)error;
- (id)fetchRemindersWithObjectIDs:(id)ds fetchOptions:(id)options error:(id *)error;
- (id)fetchRemindersWithParentReminderID:(id)d accountID:(id)iD subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error;
- (id)fetchRemindersWithParentReminderIDs:(id)ds error:(id *)error;
- (id)fetchSubtasksOfParentReminder:(id)reminder subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error;
- (id)fetchSubtasksOfParentReminderChangeItem:(id)item subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error;
- (int64_t)fetchSubtasksMasksWithParentReminderID:(id)d includingConcealed:(BOOL)concealed error:(id *)error;
@end

@implementation REMRemindersDataView

- (REMRemindersDataView)initWithStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = REMRemindersDataView;
  v6 = [(REMRemindersDataView *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_store, store);
  }

  return v7;
}

- (id)fetchRemindersWithListID:(id)d includingSubtasks:(BOOL)subtasks includingCompleted:(BOOL)completed error:(id *)error
{
  completedCopy = completed;
  subtasksCopy = subtasks;
  dCopy = d;
  v11 = [[REMRemindersDataViewInvocation_fetchByListID alloc] initWithListID:dCopy includingSubtasks:subtasksCopy includingCompleted:completedCopy];

  store = [(REMRemindersDataView *)self store];
  v13 = [store resultFromPerformingInvocation:v11 error:error];

  v14 = objc_opt_class();
  v15 = REMDynamicCast(v14, v13);
  accountStorages = [v15 accountStorages];
  listStorages = [v15 listStorages];
  reminderStorages = [v15 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  objectIDs = [v15 objectIDs];
  v21 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v21;
}

- (id)fetchRemindersWithParentReminderID:(id)d accountID:(id)iD subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  iDCopy = iD;
  dCopy = d;
  v15 = [[REMRemindersDataViewInvocation_fetchByParentReminderID alloc] initWithParentReminderID:dCopy accountID:iDCopy subtaskFetchOption:option reminderFetchOptions:optionsCopy];

  store = [(REMRemindersDataView *)self store];
  v17 = [store resultFromPerformingInvocation:v15 error:error];

  v18 = objc_opt_class();
  v19 = REMDynamicCast(v18, v17);
  accountStorages = [v19 accountStorages];
  listStorages = [v19 listStorages];
  reminderStorages = [v19 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  objectIDs = [v19 objectIDs];
  v25 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v25;
}

- (id)fetchSubtasksOfParentReminder:(id)reminder subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  reminderCopy = reminder;
  objectID = [reminderCopy objectID];
  accountID = [reminderCopy accountID];

  v14 = [(REMRemindersDataView *)self fetchRemindersWithParentReminderID:objectID accountID:accountID subtaskFetchOption:option reminderFetchOptions:optionsCopy error:error];

  return v14;
}

- (id)fetchSubtasksOfParentReminderChangeItem:(id)item subtaskFetchOption:(int64_t)option reminderFetchOptions:(id)options error:(id *)error
{
  optionsCopy = options;
  itemCopy = item;
  objectID = [itemCopy objectID];
  accountID = [itemCopy accountID];

  v14 = [(REMRemindersDataView *)self fetchRemindersWithParentReminderID:objectID accountID:accountID subtaskFetchOption:option reminderFetchOptions:optionsCopy error:error];

  return v14;
}

- (id)fetchReminderWithObjectID:(id)d fetchOptions:(id)options error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v18[0] = dCopy;
  v9 = MEMORY[0x1E695DEC8];
  optionsCopy = options;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [(REMRemindersDataView *)self fetchRemindersWithObjectIDs:v11 fetchOptions:optionsCopy error:error];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 objectForKeyedSubscript:dCopy];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[REMLogStore read];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = dCopy;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMRemindersDataView: Requested to fetch non-existent reminder {objectID: %{public}@}", &v16, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithObjectID:dCopy];
    *error = v13 = 0;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

LABEL_8:

  return v13;
}

- (id)fetchRemindersWithObjectIDs:(id)ds fetchOptions:(id)options error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  optionsCopy = options;
  if ([dsCopy count])
  {
    includeConcealed = [optionsCopy includeConcealed];
    v11 = [[REMRemindersDataViewInvocation_fetchByObjectID alloc] initWithObjectIDs:dsCopy fetchOptions:optionsCopy];
    store = [(REMRemindersDataView *)self store];
    v33 = v11;
    v13 = [store resultFromPerformingInvocation:v11 error:error];

    v14 = objc_opt_class();
    v15 = REMDynamicCast(v14, v13);
    accountStorages = [v15 accountStorages];
    listStorages = [v15 listStorages];
    reminderStorages = [v15 reminderStorages];
    store2 = [(REMRemindersDataView *)self store];
    v20 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 showMarkedForDeleteObjects:includeConcealed];

    if (v20)
    {
      v31 = v13;
      v32 = optionsCopy;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v22 = dsCopy;
      v23 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v35;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v35 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = [v20 objectForKeyedSubscript:*(*(&v34 + 1) + 8 * i)];
            v28 = v27;
            if (v27)
            {
              objectID = [v27 objectID];
              [dictionary setObject:v28 forKeyedSubscript:objectID];
            }
          }

          v24 = [v22 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v24);
      }

      v13 = v31;
      optionsCopy = v32;
    }

    else
    {
      dictionary = 0;
    }
  }

  else
  {
    dictionary = MEMORY[0x1E695E0F8];
  }

  return dictionary;
}

- (id)fetchRemindersIncludingUnsupportedWithObjectIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v7 = +[REMReminderFetchOptions fetchOptionsIncludingConcealed];
  v8 = [(REMRemindersDataView *)self fetchRemindersWithObjectIDs:dsCopy fetchOptions:v7 error:error];

  return v8;
}

- (id)fetchRemindersMatchingPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(id)options error:(id *)error
{
  optionsCopy = options;
  descriptorsCopy = descriptors;
  descriptorCopy = descriptor;
  v13 = [[REMRemindersDataViewInvocation_fetchByPredicateDescriptor alloc] initWithPredicateDescriptor:descriptorCopy sortDescriptors:descriptorsCopy options:optionsCopy];

  store = [(REMRemindersDataView *)self store];
  v15 = [store resultFromPerformingInvocation:v13 error:error];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  accountStorages = [v17 accountStorages];
  listStorages = [v17 listStorages];
  reminderStorages = [v17 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  objectIDs = [v17 objectIDs];
  v23 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v23;
}

- (id)fetchRemindersWithParentReminderIDs:(id)ds error:(id *)error
{
  dsCopy = ds;
  v7 = [[REMRemindersDataViewInvocation_fetchByParentReminderIDs alloc] initWithParentReminderIDs:dsCopy];

  store = [(REMRemindersDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = REMDynamicCast(v10, v9);
  accountStorages = [v11 accountStorages];
  listStorages = [v11 listStorages];
  reminderStorages = [v11 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  objectIDs = [v11 objectIDs];
  v17 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v17;
}

- (id)fetchObjectIDsOfRemindersWithParentReminderID:(id)d includeIncomplete:(BOOL)incomplete includeCompleted:(BOOL)completed isUnsupported:(BOOL)unsupported error:(id *)error
{
  unsupportedCopy = unsupported;
  completedCopy = completed;
  incompleteCopy = incomplete;
  dCopy = d;
  v13 = [[REMRemindersDataViewInvocation_fetchReminderIDsByParentReminderID alloc] initWithParentReminderID:dCopy includeIncomplete:incompleteCopy includeCompleted:completedCopy isUnsupported:unsupportedCopy];

  store = [(REMRemindersDataView *)self store];
  v15 = [store resultFromPerformingInvocation:v13 error:error];

  v16 = objc_opt_class();
  v17 = REMDynamicCast(v16, v15);
  objectIDs = [v17 objectIDs];

  return objectIDs;
}

- (id)fetchRemindersCountWithListID:(id)d includingCompleted:(BOOL)completed error:(id *)error
{
  completedCopy = completed;
  dCopy = d;
  v9 = [[REMRemindersDataViewInvocation_fetchRemindersCountByListID alloc] initWithListID:dCopy includingCompleted:completedCopy];

  store = [(REMRemindersDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = [v11 storedPropertyForKey:@"RemindersCount"];
  v14 = REMDynamicCast(v12, v13);

  if (error && !v14 && !*error)
  {
    *error = +[REMError unexpectedError];
  }

  return v14;
}

- (id)fetchRemindersCountWithParentReminderID:(id)d error:(id *)error
{
  dCopy = d;
  v7 = [[REMRemindersDataViewInvocation_fetchRemindersCountByParentReminderID alloc] initWithParentReminderID:dCopy];
  store = [(REMRemindersDataView *)self store];
  v9 = [store resultFromPerformingInvocation:v7 error:error];

  v10 = objc_opt_class();
  v11 = [v9 storedPropertyForKey:@"RemindersCount"];
  v12 = REMDynamicCast(v10, v11);

  if (!v12)
  {
    v14 = +[REMLogStore read];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [REMRemindersDataView fetchRemindersCountWithParentReminderID:dCopy error:v14];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  return v12;
}

- (int64_t)fetchSubtasksMasksWithParentReminderID:(id)d includingConcealed:(BOOL)concealed error:(id *)error
{
  concealedCopy = concealed;
  dCopy = d;
  v9 = [[REMRemindersDataViewInvocation_fetchSubtasksMasksByParentReminderID alloc] initWithParentReminderID:dCopy includingConcealed:concealedCopy];
  store = [(REMRemindersDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = [v11 storedPropertyForKey:@"ReminderSubtasksMasks"];
  v14 = REMDynamicCast(v12, v13);

  if (!v14)
  {
    v17 = +[REMLogStore read];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [REMRemindersDataView fetchSubtasksMasksWithParentReminderID:dCopy includingConcealed:v17 error:?];
    }

    if (error && !*error)
    {
      *error = +[REMError unexpectedError];
    }
  }

  unsignedIntegerValue = [v14 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (id)fetchRemindersWithLocationAlarmsIncludingCompleted:(BOOL)completed error:(id *)error
{
  v6 = [[REMRemindersDataViewInvocation_fetchRemindersWithLocationAlarms alloc] initWithIncludingCompleted:completed];
  store = [(REMRemindersDataView *)self store];
  v8 = [store resultFromPerformingInvocation:v6 error:error];

  v9 = objc_opt_class();
  v10 = REMDynamicCast(v9, v8);
  accountStorages = [v10 accountStorages];
  listStorages = [v10 listStorages];
  reminderStorages = [v10 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  objectIDs = [v10 objectIDs];
  v16 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v16;
}

- (id)fetchRemindersWithBatchCreationID:(id)d includingCompleted:(BOOL)completed error:(id *)error
{
  completedCopy = completed;
  dCopy = d;
  v9 = [[REMRemindersDataViewInvocation_fetchByBatchCreationID alloc] initWithBatchCreationID:dCopy includingCompleted:completedCopy];

  store = [(REMRemindersDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  reminderStorages = [v13 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  objectIDs = [v13 objectIDs];
  v19 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedReminderIDs:objectIDs];

  return v19;
}

- (id)fetchRemindersCountWithBatchCreationID:(id)d includingCompleted:(BOOL)completed error:(id *)error
{
  completedCopy = completed;
  dCopy = d;
  v9 = [[REMRemindersDataViewInvocation_fetchRemindersCountByBatchCreationID alloc] initWithBatchCreationID:dCopy includingCompleted:completedCopy];

  store = [(REMRemindersDataView *)self store];
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = [v11 storedPropertyForKey:@"RemindersCount"];
  v14 = REMDynamicCast(v12, v13);

  if (error && !v14 && !*error)
  {
    *error = +[REMError unexpectedError];
  }

  return v14;
}

- (id)fetchReminderWithExternalIdentifier:(id)identifier inList:(id)list error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v9 = identifierCopy;
  if (!identifierCopy)
  {
    v14 = 0;
    goto LABEL_11;
  }

  v19[0] = identifierCopy;
  v10 = MEMORY[0x1E695DEC8];
  listCopy = list;
  v12 = [v10 arrayWithObjects:v19 count:1];
  v13 = [(REMRemindersDataView *)self fetchRemindersWithExternalIdentifiers:v12 inList:listCopy error:error];

  if (!v13)
  {
    goto LABEL_9;
  }

  v14 = [v13 objectForKeyedSubscript:v9];
  if (!v14)
  {
    v15 = +[REMLogStore read];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v9;
      _os_log_impl(&dword_19A0DB000, v15, OS_LOG_TYPE_DEFAULT, "Requested non-existent reminder {externalIdentifier: %@}", &v17, 0xCu);
    }

    if (error)
    {
      [REMError noSuchObjectErrorWithExternalIdentifier:v9];
      *error = v14 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v14 = 0;
  }

LABEL_10:

LABEL_11:

  return v14;
}

- (id)fetchRemindersWithExternalIdentifiers:(id)identifiers inList:(id)list error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  listCopy = list;
  v10 = [REMRemindersDataViewInvocation_fetchByExternalIdentifier alloc];
  v33 = listCopy;
  objectID = [listCopy objectID];
  v12 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)v10 initWithExternalIdentifiers:identifiersCopy listObjectID:objectID];

  store = [(REMRemindersDataView *)self store];
  v14 = [store resultFromPerformingInvocation:v12 error:error];

  v15 = objc_opt_class();
  v16 = REMDynamicCast(v15, v14);
  accountStorages = [v16 accountStorages];
  listStorages = [v16 listStorages];
  reminderStorages = [v16 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  v21 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedStringIdentifiers:identifiersCopy identifierSelector:sel_externalIdentifier];

  if (v21)
  {
    v31 = v14;
    v32 = v12;
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v21, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v34 + 1) + 8 * i);
          externalIdentifier = [v28 externalIdentifier];
          [v22 setObject:v28 forKeyedSubscript:externalIdentifier];
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v25);
    }

    v14 = v31;
    v12 = v32;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

- (id)fetchAllRemindersWithExternalIdentifier:(id)identifier error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v7 = [REMRemindersDataViewInvocation_fetchByExternalIdentifier alloc];
  v27[0] = identifierCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
  v9 = [(REMRemindersDataViewInvocation_fetchByExternalIdentifier *)v7 initWithExternalIdentifiers:v8 listObjectID:0];

  store = [(REMRemindersDataView *)self store];
  errorCopy = error;
  v11 = [store resultFromPerformingInvocation:v9 error:error];

  v12 = objc_opt_class();
  v13 = REMDynamicCast(v12, v11);
  accountStorages = [v13 accountStorages];
  listStorages = [v13 listStorages];
  reminderStorages = [v13 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  v18 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2];

  allValues = [v18 allValues];
  v20 = allValues;
  if (allValues && [allValues count])
  {
    v21 = v20;
  }

  else
  {
    v22 = +[REMLogStore read];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = identifierCopy;
      _os_log_impl(&dword_19A0DB000, v22, OS_LOG_TYPE_DEFAULT, "REMRemindersDataView: Requested to fetch non-existent reminders {externalIdentifier: %{public}@}", buf, 0xCu);
    }

    if (errorCopy)
    {
      [REMError noSuchObjectErrorWithExternalIdentifier:identifierCopy];
      *errorCopy = v21 = 0;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)fetchReminderWithDACalendarItemUniqueIdentifier:(id)identifier inList:(id)list error:(id *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v18[0] = identifierCopy;
  v9 = MEMORY[0x1E695DEC8];
  listCopy = list;
  v11 = [v9 arrayWithObjects:v18 count:1];
  v12 = [(REMRemindersDataView *)self fetchRemindersWithDACalendarItemUniqueIdentifiers:v11 inList:listCopy error:error];

  if (!v12)
  {
    goto LABEL_7;
  }

  v13 = [v12 objectForKeyedSubscript:identifierCopy];
  if (v13)
  {
    goto LABEL_8;
  }

  v14 = +[REMLogStore read];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543362;
    v17 = identifierCopy;
    _os_log_impl(&dword_19A0DB000, v14, OS_LOG_TYPE_DEFAULT, "REMRemindersDataView: Requested to fetch non-existent reminder {daCalendarItemUniqueIdentifier: %{public}@}", &v16, 0xCu);
  }

  if (error)
  {
    [REMError noSuchObjectErrorWithDACalendarItemUniqueIdentifier:identifierCopy];
    *error = v13 = 0;
  }

  else
  {
LABEL_7:
    v13 = 0;
  }

LABEL_8:

  return v13;
}

- (id)fetchRemindersWithDACalendarItemUniqueIdentifiers:(id)identifiers inList:(id)list error:(id *)error
{
  v39 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  listCopy = list;
  v10 = [REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier alloc];
  v33 = listCopy;
  objectID = [listCopy objectID];
  v12 = [(REMRemindersDataViewInvocation_fetchByDACalendarItemUniqueIdentifier *)v10 initWithDACalendarItemUniqueIdentifiers:identifiersCopy listObjectID:objectID];

  store = [(REMRemindersDataView *)self store];
  v14 = [store resultFromPerformingInvocation:v12 error:error];

  v15 = objc_opt_class();
  v16 = REMDynamicCast(v15, v14);
  accountStorages = [v16 accountStorages];
  listStorages = [v16 listStorages];
  reminderStorages = [v16 reminderStorages];
  store2 = [(REMRemindersDataView *)self store];
  v21 = [REMRemindersDataView remindersFromAccountStorages:accountStorages listStorages:listStorages reminderStorages:reminderStorages store:store2 requestedStringIdentifiers:identifiersCopy identifierSelector:sel_daCalendarItemUniqueIdentifier];

  if (v21)
  {
    v31 = v14;
    v32 = v12;
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v21, "count")}];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v23 = v21;
    v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v35;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v35 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v34 + 1) + 8 * i);
          daCalendarItemUniqueIdentifier = [v28 daCalendarItemUniqueIdentifier];
          [v22 setObject:v28 forKeyedSubscript:daCalendarItemUniqueIdentifier];
        }

        v25 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v25);
    }

    v14 = v31;
    v12 = v32;
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store requestedReminderIDs:(id)ds
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v13 = [self remindersFromAccountStorages:storages listStorages:listStorages reminderStorages:reminderStorages store:store];
  if (v13)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(dsCopy, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = dsCopy;
    v16 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v13 objectForKeyedSubscript:{*(*(&v22 + 1) + 8 * i), v22}];
          if (v20)
          {
            [v14 addObject:v20];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v17);
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store requestedStringIdentifiers:(id)identifiers identifierSelector:(SEL)selector
{
  v46 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  v15 = [self remindersFromAccountStorages:storages listStorages:listStorages reminderStorages:reminderStorages store:store];
  v16 = v15;
  if (v15)
  {
    v35 = identifiersCopy;
    allValues = [v15 allValues];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v19 = allValues;
    v20 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v41;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v41 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v40 + 1) + 8 * i);
          v25 = NSStringFromSelector(selector);
          v26 = [v24 valueForKey:v25];

          if (v26)
          {
            [dictionary setObject:v24 forKeyedSubscript:v26];
          }
        }

        v21 = [v19 countByEnumeratingWithState:&v40 objects:v45 count:16];
      }

      while (v21);
    }

    identifiersCopy = v35;
    v27 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v35, "count")}];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v28 = v35;
    v29 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v37;
      do
      {
        for (j = 0; j != v30; ++j)
        {
          if (*v37 != v31)
          {
            objc_enumerationMutation(v28);
          }

          v33 = [dictionary objectForKeyedSubscript:*(*(&v36 + 1) + 8 * j)];
          if (v33)
          {
            [v27 addObject:v33];
          }
        }

        v30 = [v28 countByEnumeratingWithState:&v36 objects:v44 count:16];
      }

      while (v30);
    }
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

+ (id)remindersFromAccountStorages:(id)storages listStorages:(id)listStorages reminderStorages:(id)reminderStorages store:(id)store showMarkedForDeleteObjects:(BOOL)objects
{
  objectsCopy = objects;
  v59 = *MEMORY[0x1E69E9840];
  listStoragesCopy = listStorages;
  reminderStoragesCopy = reminderStorages;
  storeCopy = store;
  if (!reminderStoragesCopy)
  {
    v13 = 0;
    goto LABEL_29;
  }

  v42 = [REMAccountsDataView accountsFromAccountStorages:storages store:storeCopy];
  v39 = listStoragesCopy;
  v44 = [REMListsDataView listsFromAccounts:"listsFromAccounts:listStorages:store:" listStorages:? store:?];
  v13 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(reminderStoragesCopy, "count")}];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v38 = reminderStoragesCopy;
  v14 = reminderStoragesCopy;
  v15 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (!v15)
  {
    goto LABEL_18;
  }

  v16 = v15;
  v17 = *v50;
  do
  {
    for (i = 0; i != v16; ++i)
    {
      if (*v50 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v19 = *(*(&v49 + 1) + 8 * i);
      listID = [v19 listID];

      if (listID)
      {
        listID2 = [v19 listID];
        v22 = [v44 objectForKeyedSubscript:listID2];

        v23 = [[REMReminder alloc] initWithStore:storeCopy list:v22 storage:v19];
      }

      else
      {
        if (!objectsCopy)
        {
          continue;
        }

        accountID = [v19 accountID];
        v22 = [v42 objectForKeyedSubscript:accountID];

        if (!v22)
        {
          v25 = +[REMLogStore read];
          if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
          {
            objectID = [v19 objectID];
            accountID2 = [v19 accountID];
            *buf = 138543618;
            v55 = objectID;
            v56 = 2114;
            v57 = accountID2;
            _os_log_fault_impl(&dword_19A0DB000, v25, OS_LOG_TYPE_FAULT, "REMRemindersDataView: Could not map an account for the fetched reminder {reminderID: %{public}@, accountID: %{public}@}", buf, 0x16u);
          }
        }

        v23 = [[REMReminder alloc] initWithStore:storeCopy account:v22 storage:v19];
      }

      v26 = v23;
      objectID2 = [(REMReminder *)v23 objectID];
      [v13 setObject:v26 forKeyedSubscript:objectID2];
    }

    v16 = [v14 countByEnumeratingWithState:&v49 objects:v58 count:16];
  }

  while (v16);
LABEL_18:

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  allValues = [v13 allValues];
  v29 = [allValues countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v46;
    do
    {
      for (j = 0; j != v30; ++j)
      {
        if (*v46 != v31)
        {
          objc_enumerationMutation(allValues);
        }

        v33 = *(*(&v45 + 1) + 8 * j);
        storage = [v33 storage];
        parentReminderID = [storage parentReminderID];
        if (parentReminderID)
        {
          v36 = [v13 objectForKeyedSubscript:parentReminderID];
          [v33 setParentReminder:v36];
        }
      }

      v30 = [allValues countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v30);
  }

  reminderStoragesCopy = v38;
  listStoragesCopy = v39;
LABEL_29:

  return v13;
}

- (void)fetchRemindersCountWithParentReminderID:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch reminders count with parentReminderID {parentReminderID: %@}", &v2, 0xCu);
}

- (void)fetchSubtasksMasksWithParentReminderID:(uint64_t)a1 includingConcealed:(NSObject *)a2 error:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_19A0DB000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch reminder subtasks masks with parentReminderID {parentReminderID: %@}", &v2, 0xCu);
}

@end