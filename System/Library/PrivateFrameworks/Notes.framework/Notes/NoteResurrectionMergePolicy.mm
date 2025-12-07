@interface NoteResurrectionMergePolicy
+ (id)sharedNoteResurrectionMergePolicy;
- (BOOL)accountExists:(id)exists;
- (BOOL)resolveConflicts:(id)conflicts error:(id *)error;
- (id)localStoreForNote:(id)note;
- (id)snapshotFromRecord:(id)record;
@end

@implementation NoteResurrectionMergePolicy

+ (id)sharedNoteResurrectionMergePolicy
{
  v2 = sharedNoteResurrectionMergePolicy_sharedMergePolicy;
  if (!sharedNoteResurrectionMergePolicy_sharedMergePolicy)
  {
    v3 = [(NSMergePolicy *)[NoteResurrectionMergePolicy alloc] initWithMergeType:2];
    v4 = sharedNoteResurrectionMergePolicy_sharedMergePolicy;
    sharedNoteResurrectionMergePolicy_sharedMergePolicy = v3;

    v2 = sharedNoteResurrectionMergePolicy_sharedMergePolicy;
  }

  return v2;
}

- (id)localStoreForNote:(id)note
{
  noteCopy = note;
  v4 = objc_alloc_init(MEMORY[0x277CBE440]);
  managedObjectContext = [noteCopy managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  [v4 setPersistentStoreCoordinator:persistentStoreCoordinator];

  v7 = objc_alloc_init(MEMORY[0x277CBE428]);
  v8 = [MEMORY[0x277CBE408] entityForName:@"Account" inManagedObjectContext:v4];
  [v7 setEntity:v8];
  v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"accountIdentifier == %@", @"local://local/account"];
  [v7 setPredicate:v9];
  v20 = 0;
  v10 = [v4 executeFetchRequest:v7 error:&v20];
  v11 = v20;
  v12 = v11;
  if (v11)
  {
    userInfo = [v11 userInfo];
    NSLog(&cfstr_ErrorGettingDe.isa, v12, userInfo);
  }

  lastObject = [v10 lastObject];
  defaultStore = [lastObject defaultStore];
  objectID = [defaultStore objectID];

  managedObjectContext2 = [noteCopy managedObjectContext];
  v18 = [managedObjectContext2 objectWithID:objectID];

  return v18;
}

- (BOOL)accountExists:(id)exists
{
  v3 = MEMORY[0x277CBE440];
  existsCopy = exists;
  v5 = objc_alloc_init(v3);
  managedObjectContext = [existsCopy managedObjectContext];
  persistentStoreCoordinator = [managedObjectContext persistentStoreCoordinator];
  [v5 setPersistentStoreCoordinator:persistentStoreCoordinator];

  v8 = objc_alloc_init(MEMORY[0x277CBE428]);
  v9 = [MEMORY[0x277CBE408] entityForName:@"Account" inManagedObjectContext:v5];
  [v8 setEntity:v9];
  v10 = MEMORY[0x277CCAC30];
  accountIdentifier = [existsCopy accountIdentifier];

  v12 = [v10 predicateWithFormat:@"accountIdentifier == %@", accountIdentifier];

  [v8 setPredicate:v12];
  v15 = 0;
  v13 = [v5 executeFetchRequest:v8 error:&v15];
  LOBYTE(accountIdentifier) = [v13 count] == 1;

  return accountIdentifier;
}

- (id)snapshotFromRecord:(id)record
{
  recordCopy = record;
  objectSnapshot = [recordCopy objectSnapshot];
  if (objectSnapshot)
  {
    [recordCopy objectSnapshot];
  }

  else
  {
    [recordCopy cachedSnapshot];
  }
  v5 = ;

  return v5;
}

- (BOOL)resolveConflicts:(id)conflicts error:(id *)error
{
  v137 = *MEMORY[0x277D85DE8];
  conflictsCopy = conflicts;
  selfCopy = self;
  v130.receiver = self;
  v130.super_class = NoteResurrectionMergePolicy;
  v7 = [(NSMergePolicy *)&v130 resolveConflicts:conflictsCopy error:error];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_98;
  }

  v86 = v7;
  v94 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v96 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v101 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v100 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v87 = conflictsCopy;
  obj = conflictsCopy;
  v9 = [obj countByEnumeratingWithState:&v126 objects:v136 count:16];
  if (v9)
  {
    v10 = v9;
    v104 = 0;
    v105 = 0;
    v95 = 0;
    v99 = 0;
    v11 = 0;
    v12 = 0;
    v13 = *v127;
    v92 = *v127;
    while (1)
    {
      v14 = 0;
      v97 = v10;
      do
      {
        if (*v127 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v126 + 1) + 8 * v14);
        sourceObject = [v15 sourceObject];
        entity = [sourceObject entity];
        if (!v105)
        {
          managedObjectContext = [sourceObject managedObjectContext];
          v19 = [MEMORY[0x277CBE408] entityForName:@"Note" inManagedObjectContext:managedObjectContext];

          v20 = [MEMORY[0x277CBE408] entityForName:@"NoteBody" inManagedObjectContext:managedObjectContext];

          v21 = [MEMORY[0x277CBE408] entityForName:@"NoteChange" inManagedObjectContext:managedObjectContext];

          v22 = [MEMORY[0x277CBE408] entityForName:@"Store" inManagedObjectContext:managedObjectContext];

          v105 = managedObjectContext;
          v23 = [MEMORY[0x277CBE408] entityForName:@"Account" inManagedObjectContext:managedObjectContext];

          v95 = v23;
          v13 = v92;
          v10 = v97;
          v99 = v22;
          v104 = v21;
          v11 = v20;
          v12 = v19;
        }

        if (![v15 newVersionNumber])
        {
          if ([entity isEqual:v12])
          {
            objectID = [sourceObject objectID];
            [v94 setObject:sourceObject forKey:objectID];
          }

          else if ([entity isEqual:v11])
          {
            objectID = [(NoteResurrectionMergePolicy *)selfCopy snapshotFromRecord:v15];
            v25 = [objectID objectForKey:@"owner"];
            [v96 setObject:sourceObject forKey:v25];
          }

          else
          {
            if ([entity isEqual:v99])
            {
              objectID = [sourceObject objectID];
              v26 = v101;
            }

            else
            {
              if (![entity isEqual:v95])
              {
                goto LABEL_20;
              }

              objectID = [sourceObject objectID];
              v26 = v100;
            }

            [v26 addObject:objectID];
          }
        }

LABEL_20:

        ++v14;
      }

      while (v10 != v14);
      v10 = [obj countByEnumeratingWithState:&v126 objects:v136 count:16];
      if (!v10)
      {
        goto LABEL_24;
      }
    }
  }

  v104 = 0;
  v105 = 0;
  v95 = 0;
  v99 = 0;
  v11 = 0;
  v12 = 0;
LABEL_24:

  v27 = v96;
  v28 = v105;
  if (![v94 count] && !objc_msgSend(v96, "count") && !objc_msgSend(v101, "count") && !objc_msgSend(v100, "count"))
  {
    goto LABEL_97;
  }

  v124 = 0u;
  v125 = 0u;
  v122 = 0u;
  v123 = 0u;
  insertedObjects = [v105 insertedObjects];
  v29 = [insertedObjects countByEnumeratingWithState:&v122 objects:v135 count:16];
  v89 = v11;
  v98 = v12;
  if (!v29)
  {
    goto LABEL_53;
  }

  v30 = v29;
  v31 = *v123;
  v88 = *v123;
  do
  {
    for (i = 0; i != v30; ++i)
    {
      if (*v123 != v31)
      {
        objc_enumerationMutation(insertedObjects);
      }

      v33 = *(*(&v122 + 1) + 8 * i);
      entity2 = [v33 entity];
      v35 = [entity2 isEqual:v12];
      if (v35)
      {
        obja = entity2;
        owner = v33;
        goto LABEL_37;
      }

      if ([entity2 isEqual:v11])
      {
        obja = entity2;
        owner = [v33 owner];
LABEL_37:
        v37 = owner;
        store = [owner store];
        objectID2 = [store objectID];
        if ([v101 containsObject:objectID2])
        {

          goto LABEL_40;
        }

        store2 = [v37 store];
        account = [store2 account];
        [account objectID];
        v43 = v42 = v30;
        v93 = [v100 containsObject:v43];

        v30 = v42;
        v11 = v89;

        v31 = v88;
        if (v93)
        {
LABEL_40:
          objectID3 = [v37 objectID];
          v27 = v96;
          if (v35)
          {
            v45 = v94;
          }

          else
          {
            v45 = v96;
          }

          [v45 setObject:v33 forKey:objectID3];
        }

        else
        {
          v27 = v96;
        }

        v12 = v98;
        entity2 = obja;
        goto LABEL_50;
      }

      if (![entity2 isEqual:v99])
      {
        goto LABEL_51;
      }

      v46 = entity2;
      v37 = v33;
      account2 = [v37 account];
      objectID4 = [account2 objectID];
      v49 = [v100 containsObject:objectID4];

      if (v49)
      {
        objectID5 = [v37 objectID];
        [v101 addObject:objectID5];

        [v105 deleteObject:v37];
      }

      v12 = v98;
      entity2 = v46;
      v11 = v89;
LABEL_50:

      v28 = v105;
LABEL_51:
    }

    v30 = [insertedObjects countByEnumeratingWithState:&v122 objects:v135 count:16];
  }

  while (v30);
LABEL_53:

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  v51 = v94;
  v52 = [v51 countByEnumeratingWithState:&v118 objects:v134 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = 0;
    v55 = *v119;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v119 != v55)
        {
          objc_enumerationMutation(v51);
        }

        v57 = *(*(&v118 + 1) + 8 * j);
        v58 = [v51 objectForKey:v57];
        v59 = [v27 objectForKey:v57];
        if (v59)
        {
          [v28 _forceInsertionForObject:v58];
          [v28 _forceInsertionForObject:v59];
          if (!v54)
          {
            v54 = [(NoteResurrectionMergePolicy *)selfCopy localStoreForNote:v58];
          }

          [v58 setStore:v54];
        }

        else
        {
          [v28 deleteObject:v58];
        }

        [v27 removeObjectForKey:v57];
      }

      v53 = [v51 countByEnumeratingWithState:&v118 objects:v134 count:16];
    }

    while (v53);
  }

  else
  {
    v54 = 0;
  }

  v116 = 0u;
  v117 = 0u;
  v114 = 0u;
  v115 = 0u;
  v60 = v27;
  v61 = [v60 countByEnumeratingWithState:&v114 objects:v133 count:16];
  if (v61)
  {
    v62 = v61;
    v63 = *v115;
    do
    {
      for (k = 0; k != v62; ++k)
      {
        if (*v115 != v63)
        {
          objc_enumerationMutation(v60);
        }

        v65 = [v60 objectForKey:*(*(&v114 + 1) + 8 * k)];
        [v28 deleteObject:v65];
      }

      v62 = [v60 countByEnumeratingWithState:&v114 objects:v133 count:16];
    }

    while (v62);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  insertedObjects2 = [v28 insertedObjects];
  v67 = [insertedObjects2 countByEnumeratingWithState:&v110 objects:v132 count:16];
  if (v67)
  {
    v68 = v67;
    v69 = *v111;
    do
    {
      for (m = 0; m != v68; ++m)
      {
        if (*v111 != v69)
        {
          objc_enumerationMutation(insertedObjects2);
        }

        v71 = *(*(&v110 + 1) + 8 * m);
        entity3 = [v71 entity];
        if ([entity3 isEqual:v104])
        {
          store3 = [v71 store];
          objectID6 = [store3 objectID];
          v75 = [v101 containsObject:objectID6];

          if (v75)
          {
            [v105 deleteObject:v71];
          }
        }
      }

      v68 = [insertedObjects2 countByEnumeratingWithState:&v110 objects:v132 count:16];
    }

    while (v68);
  }

  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v76 = v101;
  v77 = [v76 countByEnumeratingWithState:&v106 objects:v131 count:16];
  v27 = v96;
  v28 = v105;
  if (v77)
  {
    v78 = v77;
    v79 = *v107;
    do
    {
      for (n = 0; n != v78; ++n)
      {
        if (*v107 != v79)
        {
          objc_enumerationMutation(v76);
        }

        v81 = [v105 objectWithID:*(*(&v106 + 1) + 8 * n)];
        account3 = [v81 account];

        if (account3)
        {
          objectID7 = [account3 objectID];
          if ([v100 containsObject:objectID7])
          {
          }

          else
          {
            v84 = [(NoteResurrectionMergePolicy *)selfCopy accountExists:account3];

            if (!v84)
            {
              [v105 deleteObject:account3];
            }
          }
        }
      }

      v78 = [v76 countByEnumeratingWithState:&v106 objects:v131 count:16];
    }

    while (v78);
  }

  v11 = v89;
  v12 = v98;
LABEL_97:

  conflictsCopy = v87;
  v8 = v86;
LABEL_98:

  return v8;
}

@end