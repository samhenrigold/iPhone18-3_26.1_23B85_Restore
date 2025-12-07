@interface SGRemindersAdapter
+ (BOOL)reminderHasDuplicate:(id)duplicate usingStore:(id)store;
+ (id)_remindersFoundInAppsListInREMStore:(id)store;
+ (id)constructNotesForReminder:(id)reminder;
+ (id)reminderPredicateForReminder:(id)reminder;
+ (unint64_t)remindersCreatedBetweenStartDate:(id)date endDate:(id)endDate;
- (BOOL)_deleteReminder:(id)reminder usingReminderStore:(id)store;
- (BOOL)_saveReminder:(id)reminder usingReminderStore:(id)store;
- (SGRemindersAdapter)initWithSGSqlEntityStore:(id)store;
- (SGRemindersAdapter)initWithSGSqlEntityStore:(id)store andREMStore:(id)mStore;
- (SGSqlEntityStore)store;
- (id)_remRemindersAssociatedWithStorageReminder:(id)reminder remStore:(id)store;
- (id)_remRemindersAssociatedWithTitle:(id)title sourceUniqueIdentifier:(id)identifier usingStore:(id)store;
- (id)sourceUniqueIdentifierForStorageReminder:(id)reminder;
- (void)addReminder:(id)reminder;
- (void)confirmReminderFromOtherDevice:(id)device;
- (void)confirmReminderFromThisDevice:(id)device;
- (void)orphanReminder:(id)reminder;
- (void)rejectReminder:(id)reminder;
- (void)rejectReminderFromOtherDevice:(id)device;
- (void)rejectReminderFromThisDevice:(id)device;
- (void)reminderAlarmTriggeredFromThisDevice:(id)device;
@end

@implementation SGRemindersAdapter

- (SGSqlEntityStore)store
{
  WeakRetained = objc_loadWeakRetained(&self->_store);

  return WeakRetained;
}

- (id)_remRemindersAssociatedWithTitle:(id)title sourceUniqueIdentifier:(id)identifier usingStore:(id)store
{
  v45 = *MEMORY[0x277D85DE8];
  titleCopy = title;
  identifierCopy = identifier;
  storeCopy = store;
  v31 = objc_opt_new();
  v29 = storeCopy;
  [objc_opt_class() _remindersFoundInAppsListInREMStore:storeCopy];
  v28 = v39 = 0;
  v8 = [v28 fetchRemindersWithError:&v39];
  v27 = v39;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v36;
    v12 = 0x277CCA000uLL;
    do
    {
      v13 = 0;
      do
      {
        if (*v36 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v35 + 1) + 8 * v13);
        v15 = *(v12 + 2760);
        v16 = objc_opt_class();
        siriFoundInAppsData = [v14 siriFoundInAppsData];
        v34 = 0;
        v18 = [v15 unarchivedObjectOfClass:v16 fromData:siriFoundInAppsData error:&v34];
        v19 = v34;

        if (v18)
        {
          title = [v14 title];
          string = [title string];
          if ([titleCopy isEqualToString:string])
          {
          }

          else
          {
            sourceUniqueIdentifier = [v18 sourceUniqueIdentifier];
            v24 = [identifierCopy isEqualToString:sourceUniqueIdentifier];

            v12 = 0x277CCA000;
            if (!v24)
            {
              goto LABEL_14;
            }
          }

          [v31 addObject:v14];
        }

        else
        {
          v22 = sgRemindersLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            objectID = [v14 objectID];
            *buf = 138412546;
            v41 = objectID;
            v42 = 2112;
            v43 = v19;
            _os_log_error_impl(&dword_231E60000, v22, OS_LOG_TYPE_ERROR, "Unable to load metadata from reminder with id: %@ error: %@", buf, 0x16u);

            v12 = 0x277CCA000;
          }
        }

LABEL_14:

        ++v13;
      }

      while (v10 != v13);
      v10 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
    }

    while (v10);
  }

  return v31;
}

- (id)_remRemindersAssociatedWithStorageReminder:(id)reminder remStore:(id)store
{
  storeCopy = store;
  reminderCopy = reminder;
  title = [reminderCopy title];
  v9 = [(SGRemindersAdapter *)self sourceUniqueIdentifierForStorageReminder:reminderCopy];

  v10 = [(SGRemindersAdapter *)self _remRemindersAssociatedWithTitle:title sourceUniqueIdentifier:v9 usingStore:storeCopy];

  return v10;
}

- (BOOL)_deleteReminder:(id)reminder usingReminderStore:(id)store
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277D447D8];
  storeCopy = store;
  reminderCopy = reminder;
  v8 = [[v5 alloc] initWithStore:storeCopy];
  v9 = [objc_opt_class() _remindersFoundInAppsListInREMStore:storeCopy];

  v10 = [v8 updateList:v9];
  v11 = [v8 updateReminder:reminderCopy];

  [v11 removeFromList];
  v16 = 0;
  v12 = [v8 saveSynchronouslyWithError:&v16];
  v13 = v16;
  if ((v12 & 1) == 0)
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v13;
      _os_log_error_impl(&dword_231E60000, v14, OS_LOG_TYPE_ERROR, "Unable to delete reminder in ReminderKit error: %@", buf, 0xCu);
    }
  }

  return v12;
}

- (BOOL)_saveReminder:(id)reminder usingReminderStore:(id)store
{
  v53 = *MEMORY[0x277D85DE8];
  reminderCopy = reminder;
  v6 = [objc_opt_class() _remindersFoundInAppsListInREMStore:self->_reminderStore];
  if (v6)
  {
    v7 = [objc_alloc(MEMORY[0x277D447D8]) initWithStore:self->_reminderStore];
    v8 = [v7 updateList:v6];
    title = [reminderCopy title];
    v48 = v8;
    v10 = [v7 addReminderWithTitle:title toListChangeItem:v8];

    v11 = objc_alloc(MEMORY[0x277D020D8]);
    recordId = [reminderCopy recordId];
    v13 = [(SGRemindersAdapter *)self sourceUniqueIdentifierForStorageReminder:reminderCopy];
    v14 = [v11 initWithRecordId:recordId sourceUniqueIdentifier:v13];

    v50 = 0;
    v47 = v14;
    v15 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v50];
    v16 = v50;
    v46 = v15;
    if (v15)
    {
      [v10 setSiriFoundInAppsData:v15];
    }

    else
    {
      v19 = sgRemindersLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v16;
        _os_log_error_impl(&dword_231E60000, v19, OS_LOG_TYPE_ERROR, "Unable to serialize ReminderMetadata: %@", buf, 0xCu);
      }
    }

    dueDateComponents = [reminderCopy dueDateComponents];

    if (dueDateComponents)
    {
      v21 = objc_alloc(MEMORY[0x277D44578]);
      dueDateComponents2 = [reminderCopy dueDateComponents];
      v23 = [v21 initWithDateComponents:dueDateComponents2];

      v24 = [v10 addAlarmWithTrigger:v23];
      dueDateComponents3 = [reminderCopy dueDateComponents];
      [v10 setDueDateComponents:dueDateComponents3];
    }

    dueLocation = [reminderCopy dueLocation];

    if (dueLocation)
    {
      v27 = objc_alloc(MEMORY[0x277D44868]);
      dueLocation2 = [reminderCopy dueLocation];
      label = [dueLocation2 label];
      v30 = [v27 initWithTitle:label];

      dueLocation3 = [reminderCopy dueLocation];
      [dueLocation3 latitude];
      [v30 setLatitude:?];

      dueLocation4 = [reminderCopy dueLocation];
      [dueLocation4 longitude];
      [v30 setLongitude:?];

      dueLocation5 = [reminderCopy dueLocation];
      [dueLocation5 accuracy];
      [v30 setRadius:?];

      dueLocationTrigger = [reminderCopy dueLocationTrigger];
      if (dueLocationTrigger == 1)
      {
        v35 = 1;
      }

      else
      {
        v35 = 2 * (dueLocationTrigger == 2);
      }

      v36 = [objc_alloc(MEMORY[0x277D44580]) initWithStructuredLocation:v30 proximity:v35];
      v37 = [v10 addAlarmWithTrigger:v36];
    }

    v38 = [objc_opt_class() constructNotesForReminder:reminderCopy];
    if (v38)
    {
      v39 = [objc_alloc(MEMORY[0x277CCA898]) initWithString:v38];
      [v10 setNotes:v39];
    }

    origin = [reminderCopy origin];
    universalURL = [origin universalURL];

    v42 = sgRemindersLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v52 = universalURL;
      _os_log_impl(&dword_231E60000, v42, OS_LOG_TYPE_INFO, "Saving Reminder with universal link: %@", buf, 0xCu);
    }

    if (universalURL)
    {
      v43 = [objc_alloc(MEMORY[0x277D448F0]) initWithUniversalLink:universalURL];
      [v10 setUserActivity:v43];
    }

    v49 = 0;
    v18 = [v7 saveSynchronouslyWithError:&v49];
    v17 = v49;
    if ((v18 & 1) == 0)
    {
      v44 = sgRemindersLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v52 = v17;
        _os_log_error_impl(&dword_231E60000, v44, OS_LOG_TYPE_ERROR, "Unable to save reminder in ReminderKit error: %@", buf, 0xCu);
      }
    }
  }

  else
  {
    v17 = sgRemindersLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_231E60000, v17, OS_LOG_TYPE_ERROR, "Unable to load RemindersFoundInApps list", buf, 2u);
    }

    v18 = 0;
  }

  return v18;
}

- (id)sourceUniqueIdentifierForStorageReminder:(id)reminder
{
  duplicateKey = [reminder duplicateKey];
  parentKey = [duplicateKey parentKey];
  entityKey = [parentKey entityKey];
  serialize = [entityKey serialize];

  if (serialize)
  {
    v7 = [[SGMessageKey alloc] initWithSerialized:serialize];
    uniqueIdentifier = [(SGMessageKey *)v7 uniqueIdentifier];
  }

  else
  {
    uniqueIdentifier = 0;
  }

  return uniqueIdentifier;
}

- (void)rejectReminder:(id)reminder
{
  reminderCopy = reminder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(SGRemindersAdapter *)selfCopy _remRemindersAssociatedWithStorageReminder:reminderCopy remStore:selfCopy->_reminderStore];
  if (objc_msgSend_count(v6) < 2)
  {
    if (objc_msgSend_count(v6) == 1)
    {
      firstObject = [v6 firstObject];
      [(SGRemindersAdapter *)selfCopy _deleteReminder:firstObject usingReminderStore:selfCopy->_reminderStore];
    }

    else
    {
      firstObject = sgRemindersLogHandle();
      if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEBUG))
      {
        *v8 = 0;
        _os_log_debug_impl(&dword_231E60000, firstObject, OS_LOG_TYPE_DEBUG, "Didn't find any REMReminders to reject", v8, 2u);
      }
    }
  }

  else
  {
    firstObject = sgRemindersLogHandle();
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_231E60000, firstObject, OS_LOG_TYPE_DEFAULT, "Multiple reminders linked to one storage reminder", buf, 2u);
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)orphanReminder:(id)reminder
{
  reminderCopy = reminder;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Removing pseudo reminder because of parent deletion", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminder:reminderCopy];
}

- (void)rejectReminderFromOtherDevice:(id)device
{
  deviceCopy = device;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Rejecting reminder from other device", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminder:deviceCopy];
}

- (void)confirmReminderFromOtherDevice:(id)device
{
  deviceCopy = device;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Confirming reminder from other device", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminder:deviceCopy];
}

- (void)reminderAlarmTriggeredFromThisDevice:(id)device
{
  deviceCopy = device;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: alarm triggered from this device", buf, 2u);
  }

  if ([deviceCopy isAllDay])
  {
    v6 = sgRemindersLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_231E60000, v6, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Not removing reminder since it's an allDay reminder", v7, 2u);
    }
  }

  else
  {
    [(SGRemindersAdapter *)self rejectReminder:deviceCopy];
  }
}

- (void)rejectReminderFromThisDevice:(id)device
{
  deviceCopy = device;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Rejecting reminder", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminder:deviceCopy];
}

- (void)confirmReminderFromThisDevice:(id)device
{
  deviceCopy = device;
  v5 = sgRemindersLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_231E60000, v5, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Confirming reminder", v6, 2u);
  }

  [(SGRemindersAdapter *)self rejectReminderFromThisDevice:deviceCopy];
}

- (void)addReminder:(id)reminder
{
  v20 = *MEMORY[0x277D85DE8];
  reminderCopy = reminder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = +[SGSuggestHistory sharedSuggestHistory];
  v7 = [v6 isValidNewReminder:reminderCopy];

  if (!v7)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v18) = 0;
      _os_log_impl(&dword_231E60000, v12, OS_LOG_TYPE_INFO, "Reminder is not a valid new one, already exists in SGSuggestHistory", &v18, 2u);
    }

    goto LABEL_21;
  }

  dueDateComponents = [reminderCopy dueDateComponents];
  if (dueDateComponents)
  {
    dueDateComponents2 = [reminderCopy dueDateComponents];
    date = [MEMORY[0x277CBEAA8] date];
    if (+[SGReminderDissector isReminderDueDateComponentsInPast:givenReferenceDate:allDay:](SGReminderDissector, "isReminderDueDateComponentsInPast:givenReferenceDate:allDay:", dueDateComponents2, date, [reminderCopy isAllDay]))
    {
      showPastEvents = [MEMORY[0x277D02098] showPastEvents];

      if ((showPastEvents & 1) == 0)
      {
        v12 = sgRemindersLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(v18) = 0;
          v13 = "SGRemindersAdapter: Not adding reminder that has dueDate in the past";
LABEL_16:
          _os_log_debug_impl(&dword_231E60000, v12, OS_LOG_TYPE_DEBUG, v13, &v18, 2u);
          goto LABEL_21;
        }

        goto LABEL_21;
      }
    }

    else
    {
    }
  }

  v14 = [(SGRemindersAdapter *)selfCopy _remRemindersAssociatedWithStorageReminder:reminderCopy remStore:selfCopy->_reminderStore];
  v15 = objc_msgSend_count(v14);

  if (v15)
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      v13 = "SGRemindersAdapter: PseudoReminder found in Found in Apps list, not adding";
      goto LABEL_16;
    }

LABEL_21:

    goto LABEL_22;
  }

  if ([objc_opt_class() reminderHasDuplicate:reminderCopy usingStore:selfCopy->_reminderStore])
  {
    v12 = sgRemindersLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v18) = 0;
      v13 = "SGRemindersAdapter: Duplicate found in user defined list, not adding";
      goto LABEL_16;
    }

    goto LABEL_21;
  }

  v16 = sgRemindersLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    recordId = [reminderCopy recordId];
    v18 = 138412290;
    v19 = recordId;
    _os_log_impl(&dword_231E60000, v16, OS_LOG_TYPE_INFO, "SGRemindersAdapter: Adding Reminder with recordId: %@", &v18, 0xCu);
  }

  if ([(SGRemindersAdapter *)selfCopy _saveReminder:reminderCopy usingReminderStore:selfCopy->_reminderStore])
  {
    v12 = +[SGRTCLogging defaultLogger];
    [v12 logReminderInteractionFromReminder:reminderCopy interface:0 actionType:1];
    goto LABEL_21;
  }

LABEL_22:
  objc_sync_exit(selfCopy);
}

- (SGRemindersAdapter)initWithSGSqlEntityStore:(id)store andREMStore:(id)mStore
{
  storeCopy = store;
  mStoreCopy = mStore;
  v11.receiver = self;
  v11.super_class = SGRemindersAdapter;
  v8 = [(SGRemindersAdapter *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_store, storeCopy);
    objc_storeStrong(&v9->_reminderStore, mStore);
  }

  return v9;
}

- (SGRemindersAdapter)initWithSGSqlEntityStore:(id)store
{
  storeCopy = store;
  v5 = objc_opt_new();
  v6 = [(SGRemindersAdapter *)self initWithSGSqlEntityStore:storeCopy andREMStore:v5];

  return v6;
}

+ (id)constructNotesForReminder:(id)reminder
{
  v23[1] = *MEMORY[0x277D85DE8];
  reminderCopy = reminder;
  origin = [reminderCopy origin];
  localizedApplicationName = [origin localizedApplicationName];

  v6 = +[SGContactStoreFactory contactStore];
  contactIdentifier = [reminderCopy contactIdentifier];
  v8 = [MEMORY[0x277CBDA78] descriptorForRequiredKeysForStyle:1000];
  v23[0] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v18 = 0;
  v10 = [SGContactsInterface unifiedContactWithIdentifier:contactIdentifier keysToFetch:v9 usingContactStore:v6 error:&v18];
  v11 = v18;

  if (v10 && ([MEMORY[0x277CBDA78] stringFromContact:v10 style:1000], (v12 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v13 = v12;
    v14 = [SGFoundInAppsStrings foundInAppsStringLongVersionForAppName:localizedApplicationName contactName:v12];

    v15 = v14;
  }

  else
  {
    v14 = sgRemindersLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = [reminderCopy loggingIdentifier];
      *buf = 138543618;
      v20 = loggingIdentifier;
      v21 = 2114;
      v22 = v11;
      _os_log_impl(&dword_231E60000, v14, OS_LOG_TYPE_DEFAULT, "SGRemindersAdapter - [SGStorageReminder (%{public}@)] constructNotesForReminder: Unable to fetch contact: %{public}@", buf, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

+ (unint64_t)remindersCreatedBetweenStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v7 = objc_opt_new();
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__SGRemindersAdapter_remindersCreatedBetweenStartDate_endDate___block_invoke;
  v12[3] = &unk_27894C528;
  v8 = dateCopy;
  v13 = v8;
  v9 = endDateCopy;
  v14 = v9;
  v15 = &v16;
  [v7 enumerateAllRemindersWithBlock:v12];
  v10 = v17[3];

  _Block_object_dispose(&v16, 8);
  return v10;
}

void __63__SGRemindersAdapter_remindersCreatedBetweenStartDate_endDate___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v14 = a2;
  v5 = [v14 creationDate];
  [v5 timeIntervalSinceReferenceDate];
  v7 = v6;
  [*(a1 + 32) timeIntervalSinceReferenceDate];
  if (v7 >= v8)
  {
    v9 = [v14 creationDate];
    [v9 timeIntervalSinceReferenceDate];
    v11 = v10;
    [*(a1 + 40) timeIntervalSinceReferenceDate];
    v13 = v12;

    if (v11 <= v13)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }
  }

  else
  {
  }

  if (*(*(*(a1 + 48) + 8) + 24) >= 0x33uLL)
  {
    *a3 = 1;
  }
}

+ (BOOL)reminderHasDuplicate:(id)duplicate usingStore:(id)store
{
  v49 = *MEMORY[0x277D85DE8];
  duplicateCopy = duplicate;
  storeCopy = store;
  if (!storeCopy)
  {
    storeCopy = objc_opt_new();
  }

  v8 = [self reminderPredicateForReminder:duplicateCopy];
  v47 = 0;
  v9 = [storeCopy fetchRemindersMatchingPredicateDescriptor:v8 sortDescriptors:0 options:0 error:&v47];
  v10 = v47;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = v9;
  v11 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v11)
  {
    v12 = v11;
    v38 = v10;
    v39 = v8;
    v40 = storeCopy;
    v13 = *v44;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v44 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v43 + 1) + 8 * i);
        v16 = objc_autoreleasePoolPush();
        if (([v15 isCompleted] & 1) == 0)
        {
          title = [v15 title];
          string = [title string];
          title2 = [duplicateCopy title];
          v20 = [string isEqualToString:title2];

          if (v20)
          {
            v35 = sgRemindersLogHandle();
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
            {
LABEL_22:
              v8 = v39;
              storeCopy = v40;
              v10 = v38;

              objc_autoreleasePoolPop(v16);
              v34 = 1;
              goto LABEL_23;
            }

            *buf = 0;
            v36 = "SGRemindersAdapter: Duplicate reminder found based on exact title match";
LABEL_25:
            _os_log_debug_impl(&dword_231E60000, v35, OS_LOG_TYPE_DEBUG, v36, buf, 2u);
            goto LABEL_22;
          }

          dueDateComponents = [v15 dueDateComponents];
          dueDateComponents2 = [duplicateCopy dueDateComponents];
          v23 = [dueDateComponents isEqual:dueDateComponents2];

          if (v23)
          {
            title3 = [duplicateCopy title];
            title4 = [v15 title];
            string2 = [title4 string];
            v27 = [SGLevenshtein distanceBetweenStrings:title3 and:string2];

            title5 = [duplicateCopy title];
            v29 = [title5 length];

            title6 = [v15 title];
            string3 = [title6 string];
            v32 = [string3 length];

            v33 = v29 <= v32 ? v32 : v29;
            if (v27 / v33 < 0.5)
            {
              v35 = sgRemindersLogHandle();
              if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
              {
                goto LABEL_22;
              }

              *buf = 0;
              v36 = "SGRemindersAdapter: Duplicate reminder found based on dueDate and edit distance of title";
              goto LABEL_25;
            }
          }
        }

        objc_autoreleasePoolPop(v16);
      }

      v12 = [obj countByEnumeratingWithState:&v43 objects:v48 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }

    v34 = 0;
    v8 = v39;
    storeCopy = v40;
    v10 = v38;
  }

  else
  {
    v34 = 0;
  }

LABEL_23:

  return v34;
}

+ (id)reminderPredicateForReminder:(id)reminder
{
  v37 = *MEMORY[0x277D85DE8];
  reminderCopy = reminder;
  title = [reminderCopy title];
  v4 = [SGReminderMessage searchTokensForReminderTitle:title];

  v5 = objc_opt_new();
  v6 = [MEMORY[0x277D447C0] predicateDescriptorForRemindersWithCompleted:0];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v4;
  v7 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v31;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v31 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = [MEMORY[0x277D447C0] predicateDescriptorForRemindersWithTitleContains:*(*(&v30 + 1) + 8 * i)];
        v12 = MEMORY[0x277D447C0];
        v35[0] = v6;
        v35[1] = v11;
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:2];
        v14 = [v12 andPredicateDescriptorWithDescriptors:v13];

        [v5 addObject:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v8);
  }

  dueDateComponents = [reminderCopy dueDateComponents];
  date = [dueDateComponents date];

  if (date)
  {
    v17 = MEMORY[0x277D447C0];
    dueDateComponents2 = [reminderCopy dueDateComponents];
    date2 = [dueDateComponents2 date];
    dueDateComponents3 = [reminderCopy dueDateComponents];
    date3 = [dueDateComponents3 date];
    v22 = [v17 predicateDescriptorForRemindersWithDueDateBetween:date2 and:date3];

    v23 = MEMORY[0x277D447C0];
    v34[0] = v6;
    v34[1] = v22;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
    v25 = [v23 andPredicateDescriptorWithDescriptors:v24];

    [v5 addObject:v25];
  }

  v26 = [MEMORY[0x277D447C0] orPredicateDescriptorWithDescriptors:v5];

  return v26;
}

+ (id)_remindersFoundInAppsListInREMStore:(id)store
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v3 = [store fetchSiriFoundInAppsListWithError:&v7];
  v4 = v7;
  if (!v3)
  {
    v5 = sgRemindersLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v4;
      _os_log_error_impl(&dword_231E60000, v5, OS_LOG_TYPE_ERROR, "Unable to retrieve found in apps list: %@", buf, 0xCu);
    }
  }

  return v3;
}

@end