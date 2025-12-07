@interface _CardDAVActionsContactsHandler
+ (OS_os_log)os_log;
- (BOOL)handleAction:(id)action forContainer:(id)container inAccount:(id)account withFolderURL:(id)l isInitialSync:(BOOL)sync arePartialResults:(BOOL)results syncInfo:(id)info heldAsideGroups:(id)self0 internalReference:(id)self1;
- (_CardDAVActionsContactsHandler)initWithContactStore:(id)store;
- (id)localItemForExternalURL:(id)l forContainer:(id)container withStoreURL:(id)rL;
- (id)matchingContactForExternalID:(id)d;
- (id)matchingGroupForExternalID:(id)d inContainer:(id)container;
@end

@implementation _CardDAVActionsContactsHandler

+ (OS_os_log)os_log
{
  if (qword_46F98 != -1)
  {
    sub_25DA4();
  }

  v3 = qword_46FA0;

  return v3;
}

- (_CardDAVActionsContactsHandler)initWithContactStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = _CardDAVActionsContactsHandler;
  v6 = [(_CardDAVActionsContactsHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactStore, store);
  }

  return v7;
}

- (BOOL)handleAction:(id)action forContainer:(id)container inAccount:(id)account withFolderURL:(id)l isInitialSync:(BOOL)sync arePartialResults:(BOOL)results syncInfo:(id)info heldAsideGroups:(id)self0 internalReference:(id)self1
{
  syncCopy = sync;
  actionCopy = action;
  containerCopy = container;
  accountCopy = account;
  lCopy = l;
  infoCopy = info;
  groupsCopy = groups;
  changedItem = [actionCopy changedItem];
  asContainer = [containerCopy asContainer];
  serverID = [changedItem serverID];
  v23 = [(_CardDAVActionsContactsHandler *)self localItemForExternalURL:serverID forContainer:containerCopy withStoreURL:lCopy];

  if (!v23 && syncCopy)
  {
    if ([infoCopy startedWithNoContacts])
    {
      v23 = 0;
    }

    else
    {
      v23 = [(_CardDAVActionsContactsHandler *)self copyExistingContactForItem:changedItem inStore:asContainer];
    }
  }

  itemChangeType = [actionCopy itemChangeType];
  if (itemChangeType < 2)
  {
    os_log = [objc_opt_class() os_log];
    v26 = os_log_type_enabled(os_log, OS_LOG_TYPE_INFO);
    if (v23)
    {
      if (v26)
      {
        v27 = objc_opt_class();
        NSStringFromClass(v27);
        v46 = infoCopy;
        v29 = v28 = accountCopy;
        *buf = 138412290;
        v53 = v29;
        _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_INFO, "updating %@", buf, 0xCu);

        accountCopy = v28;
        infoCopy = v46;
      }
    }

    else if (v26)
    {
      v33 = objc_opt_class();
      NSStringFromClass(v33);
      v34 = v47 = accountCopy;
      *buf = 138412290;
      v53 = v34;
      _os_log_impl(&dword_0, os_log, OS_LOG_TYPE_INFO, "adding %@", buf, 0xCu);

      accountCopy = v47;
    }

    LOBYTE(v45) = !results;
    v35 = [changedItem saveWithLocalObject:v23 toContainer:containerCopy containerURL:lCopy shouldMergeProperties:syncCopy outMergeDidChooseLocalProperties:0 account:accountCopy shouldSaveGroups:v45];
    v30 = infoCopy;
    if (v35)
    {
      os_log2 = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log2, OS_LOG_TYPE_INFO))
      {
        v37 = objc_opt_class();
        NSStringFromClass(v37);
        v38 = v48 = accountCopy;
        serverID2 = [changedItem serverID];
        clientID = [changedItem clientID];
        *buf = 138412802;
        v53 = v38;
        v54 = 2112;
        v55 = serverID2;
        v56 = 2112;
        v57 = clientID;
        _os_log_impl(&dword_0, os_log2, OS_LOG_TYPE_INFO, "saved %@, server id %@, clientID %@", buf, 0x20u);

        accountCopy = v48;
      }

      v32 = 1;
      goto LABEL_25;
    }

    if ([v23 isGroup])
    {
      os_log3 = [objc_opt_class() os_log];
      if (os_log_type_enabled(os_log3, OS_LOG_TYPE_INFO))
      {
        [changedItem serverID];
        v43 = v42 = accountCopy;
        *buf = 138412290;
        v53 = v43;
        _os_log_impl(&dword_0, os_log3, OS_LOG_TYPE_INFO, "Holding aside group with server id %@", buf, 0xCu);

        accountCopy = v42;
      }

      v31 = groupsCopy;
      [groupsCopy addObject:actionCopy];
      goto LABEL_23;
    }

LABEL_24:
    v32 = 0;
LABEL_25:
    v31 = groupsCopy;
    goto LABEL_26;
  }

  v30 = infoCopy;
  if (itemChangeType != &dword_0 + 2)
  {
    goto LABEL_24;
  }

  v31 = groupsCopy;
  if (!v23)
  {
LABEL_23:
    v32 = 0;
    goto LABEL_26;
  }

  [changedItem setLocalItem:v23];
  [changedItem deleteFromContainer:0];
  v32 = 1;
LABEL_26:

  return v32;
}

- (id)localItemForExternalURL:(id)l forContainer:(id)container withStoreURL:(id)rL
{
  containerCopy = container;
  v9 = [l da_leastInfoStringRepresentationRelativeToParentURL:rL];
  v10 = [(_CardDAVActionsContactsHandler *)self matchingContactForExternalID:v9];
  if (!v10)
  {
    v11 = [(_CardDAVActionsContactsHandler *)self matchingGroupForExternalID:v9 inContainer:containerCopy];
  }

  return v10;
}

- (id)matchingContactForExternalID:(id)d
{
  dCopy = d;
  v5 = +[CardDAVVCardItemCNImplementation keysToFetch];
  v6 = [[CNContactFetchRequest alloc] initWithKeysToFetch:v5];
  [v6 setUnifyResults:0];
  [v6 setSortOrder:0];
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_23BE4;
  v22 = sub_23BF4;
  v23 = 0;
  contactStore = [(_CardDAVActionsContactsHandler *)self contactStore];
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_23BFC;
  v15 = &unk_3CF18;
  v8 = dCopy;
  v16 = v8;
  v17 = &v18;
  [contactStore enumerateContactsWithFetchRequest:v6 error:0 usingBlock:&v12];

  if (v19[5])
  {
    v9 = [DAContactsContact alloc];
    v10 = [(DAContactsContact *)v9 initWithContact:v19[5], v12, v13, v14, v15];
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v18, 8);

  return v10;
}

- (id)matchingGroupForExternalID:(id)d inContainer:(id)container
{
  dCopy = d;
  asContainer = [container asContainer];
  identifier = [asContainer identifier];
  v9 = [CNGroup predicateForGroupsInContainerWithIdentifier:identifier];

  contactStore = [(_CardDAVActionsContactsHandler *)self contactStore];
  v26 = 0;
  v11 = [contactStore groupsMatchingPredicate:v9 error:&v26];
  v12 = v26;

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = v11;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v14)
  {
    v15 = *v23;
LABEL_3:
    v16 = 0;
    while (1)
    {
      if (*v23 != v15)
      {
        objc_enumerationMutation(v13);
      }

      v17 = *(*(&v22 + 1) + 8 * v16);
      externalIdentifier = [v17 externalIdentifier];
      v19 = [externalIdentifier isEqualToString:dCopy];

      if (v19)
      {
        break;
      }

      if (v14 == ++v16)
      {
        v14 = [v13 countByEnumeratingWithState:&v22 objects:v27 count:16];
        if (v14)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v20 = v17;

    if (v20)
    {
      v14 = [[DAContactsGroup alloc] initWithGroup:v20];
      goto LABEL_12;
    }

    v14 = 0;
  }

  else
  {
LABEL_9:
    v20 = v13;
LABEL_12:
  }

  return v14;
}

@end