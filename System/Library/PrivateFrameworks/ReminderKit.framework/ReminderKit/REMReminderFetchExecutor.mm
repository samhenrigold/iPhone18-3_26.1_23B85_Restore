@interface REMReminderFetchExecutor
- (REMReminderFetchExecutor)initWithCoder:(id)coder;
- (REMReminderFetchExecutor)initWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(unint64_t)options;
- (id)description;
- (id)resultsFromFetchResult:(id)result inList:(id)list error:(id *)error;
- (id)resultsFromFetchResult:(id)result inParentReminder:(id)reminder error:(id *)error;
- (id)resultsFromFetchResult:(id)result inStore:(id)store error:(id *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REMReminderFetchExecutor

- (REMReminderFetchExecutor)initWithPredicateDescriptor:(id)descriptor sortDescriptors:(id)descriptors options:(unint64_t)options
{
  descriptorCopy = descriptor;
  descriptorsCopy = descriptors;
  v14.receiver = self;
  v14.super_class = REMReminderFetchExecutor;
  v11 = [(REMReminderFetchExecutor *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_predicateDescriptor, descriptor);
    objc_storeStrong(&v12->_sortDescriptors, descriptors);
    v12->_options = options;
  }

  return v12;
}

- (REMReminderFetchExecutor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = REMReminderFetchExecutor;
  v5 = [(_REMFetchExecutor *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"predicateDescriptor"];
    predicateDescriptor = v5->_predicateDescriptor;
    v5->_predicateDescriptor = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"sortDescriptors"];
    sortDescriptors = v5->_sortDescriptors;
    v5->_sortDescriptors = v11;

    v5->_options = [coderCopy decodeIntegerForKey:@"options"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = REMReminderFetchExecutor;
  coderCopy = coder;
  [(_REMFetchExecutor *)&v7 encodeWithCoder:coderCopy];
  v5 = [(REMReminderFetchExecutor *)self predicateDescriptor:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"predicateDescriptor"];

  sortDescriptors = [(REMReminderFetchExecutor *)self sortDescriptors];
  [coderCopy encodeObject:sortDescriptors forKey:@"sortDescriptors"];

  [coderCopy encodeInteger:-[REMReminderFetchExecutor options](self forKey:{"options"), @"options"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  predicateDescriptor = [(REMReminderFetchExecutor *)self predicateDescriptor];
  sortDescriptors = [(REMReminderFetchExecutor *)self sortDescriptors];
  v7 = [v3 stringWithFormat:@"<%@: %p predicate: %@, sortDescriptors: %@>", v4, self, predicateDescriptor, sortDescriptors];

  return v7;
}

- (id)resultsFromFetchResult:(id)result inStore:(id)store error:(id *)error
{
  v91 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  storeCopy = store;
  v8 = objc_alloc(MEMORY[0x1E695DF90]);
  fetchedAccountStorages = [resultCopy fetchedAccountStorages];
  v65 = [v8 initWithCapacity:{objc_msgSend(fetchedAccountStorages, "count")}];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v64 = resultCopy;
  fetchedAccountStorages2 = [resultCopy fetchedAccountStorages];
  v11 = [fetchedAccountStorages2 countByEnumeratingWithState:&v82 objects:v90 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v83;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v83 != v13)
        {
          objc_enumerationMutation(fetchedAccountStorages2);
        }

        v15 = [[REMAccount alloc] initWithStore:storeCopy storage:*(*(&v82 + 1) + 8 * i)];
        objectID = [(REMAccount *)v15 objectID];
        [v65 setObject:v15 forKeyedSubscript:objectID];
      }

      v12 = [fetchedAccountStorages2 countByEnumeratingWithState:&v82 objects:v90 count:16];
    }

    while (v12);
  }

  v17 = objc_alloc(MEMORY[0x1E695DF90]);
  fetchedListStorages = [v64 fetchedListStorages];
  v19 = [v17 initWithCapacity:{objc_msgSend(fetchedListStorages, "count")}];

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  fetchedListStorages2 = [v64 fetchedListStorages];
  v21 = [fetchedListStorages2 countByEnumeratingWithState:&v78 objects:v89 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v79;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v79 != v23)
        {
          objc_enumerationMutation(fetchedListStorages2);
        }

        v25 = *(*(&v78 + 1) + 8 * j);
        accountID = [v25 accountID];
        v27 = [v65 objectForKeyedSubscript:accountID];

        v28 = [[REMList alloc] initWithStore:storeCopy account:v27 storage:v25];
        objectID2 = [(REMList *)v28 objectID];
        [v19 setObject:v28 forKeyedSubscript:objectID2];
      }

      v22 = [fetchedListStorages2 countByEnumeratingWithState:&v78 objects:v89 count:16];
    }

    while (v22);
  }

  v30 = objc_alloc(MEMORY[0x1E695DF90]);
  fetchedReminderStorages = [v64 fetchedReminderStorages];
  v32 = [v30 initWithCapacity:{objc_msgSend(fetchedReminderStorages, "count")}];

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  fetchedReminderStorages2 = [v64 fetchedReminderStorages];
  v34 = [fetchedReminderStorages2 countByEnumeratingWithState:&v74 objects:v88 count:16];
  if (v34)
  {
    v35 = v34;
    v36 = *v75;
    do
    {
      for (k = 0; k != v35; ++k)
      {
        if (*v75 != v36)
        {
          objc_enumerationMutation(fetchedReminderStorages2);
        }

        v38 = *(*(&v74 + 1) + 8 * k);
        listID = [v38 listID];

        if (listID)
        {
          listID2 = [v38 listID];
          v41 = [v19 objectForKeyedSubscript:listID2];

          v42 = [[REMReminder alloc] initWithStore:storeCopy list:v41 storage:v38];
          objectID3 = [(REMReminder *)v42 objectID];
          [v32 setObject:v42 forKeyedSubscript:objectID3];
        }
      }

      v35 = [fetchedReminderStorages2 countByEnumeratingWithState:&v74 objects:v88 count:16];
    }

    while (v35);
  }

  v63 = v19;

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  allValues = [v32 allValues];
  v45 = [allValues countByEnumeratingWithState:&v70 objects:v87 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v71;
    do
    {
      for (m = 0; m != v46; ++m)
      {
        if (*v71 != v47)
        {
          objc_enumerationMutation(allValues);
        }

        v49 = *(*(&v70 + 1) + 8 * m);
        storage = [v49 storage];
        parentReminderID = [storage parentReminderID];
        if (parentReminderID)
        {
          v52 = [v32 objectForKeyedSubscript:parentReminderID];
          [v49 setParentReminder:v52];
        }
      }

      v46 = [allValues countByEnumeratingWithState:&v70 objects:v87 count:16];
    }

    while (v46);
  }

  v53 = objc_alloc(MEMORY[0x1E695DF70]);
  requestedObjectIDs = [v64 requestedObjectIDs];
  v55 = [v53 initWithCapacity:{objc_msgSend(requestedObjectIDs, "count")}];

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  requestedObjectIDs2 = [v64 requestedObjectIDs];
  v57 = [requestedObjectIDs2 countByEnumeratingWithState:&v66 objects:v86 count:16];
  if (v57)
  {
    v58 = v57;
    v59 = *v67;
    do
    {
      for (n = 0; n != v58; ++n)
      {
        if (*v67 != v59)
        {
          objc_enumerationMutation(requestedObjectIDs2);
        }

        v61 = [v32 objectForKeyedSubscript:*(*(&v66 + 1) + 8 * n)];
        if (v61)
        {
          [v55 addObject:v61];
        }
      }

      v58 = [requestedObjectIDs2 countByEnumeratingWithState:&v66 objects:v86 count:16];
    }

    while (v58);
  }

  return v55;
}

- (id)resultsFromFetchResult:(id)result inList:(id)list error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  listCopy = list;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  fetchedReminderStorages = [resultCopy fetchedReminderStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(fetchedReminderStorages, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = resultCopy;
  fetchedReminderStorages2 = [resultCopy fetchedReminderStorages];
  v12 = [fetchedReminderStorages2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(fetchedReminderStorages2);
        }

        v16 = *(*(&v22 + 1) + 8 * i);
        v17 = [REMReminder alloc];
        store = [listCopy store];
        v19 = [(REMReminder *)v17 initWithStore:store list:listCopy storage:v16];

        [v10 addObject:v19];
      }

      v13 = [fetchedReminderStorages2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  return v10;
}

- (id)resultsFromFetchResult:(id)result inParentReminder:(id)reminder error:(id *)error
{
  v27 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  reminderCopy = reminder;
  v8 = objc_alloc(MEMORY[0x1E695DF70]);
  fetchedReminderStorages = [resultCopy fetchedReminderStorages];
  v10 = [v8 initWithCapacity:{objc_msgSend(fetchedReminderStorages, "count")}];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [resultCopy fetchedReminderStorages];
  v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        v16 = [REMReminder alloc];
        store = [reminderCopy store];
        list = [reminderCopy list];
        v19 = [(REMReminder *)v16 initWithStore:store list:list storage:v15];

        [(REMReminder *)v19 setParentReminder:reminderCopy];
        [v10 addObject:v19];
      }

      v12 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v12);
  }

  return v10;
}

@end