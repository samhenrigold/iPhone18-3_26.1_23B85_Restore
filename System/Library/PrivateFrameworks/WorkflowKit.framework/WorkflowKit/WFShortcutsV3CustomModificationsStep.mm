@interface WFShortcutsV3CustomModificationsStep
- (BOOL)performModificationsWithContext:(id)context error:(id *)error;
@end

@implementation WFShortcutsV3CustomModificationsStep

- (BOOL)performModificationsWithContext:(id)context error:(id *)error
{
  v69[1] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v38 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Shortcut"];
  [v5 setFetchLimit:5];
  [v5 setPropertiesToFetch:&unk_1F4A9B770];
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"workflowID" ascending:1];
  v69[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:1];
  [v5 setSortDescriptors:v7];

  v65 = 0;
  v44 = contextCopy;
  v41 = v5;
  v8 = [contextCopy executeFetchRequest:v5 error:&v65];
  v9 = v65;
  while ([v8 count])
  {
    context = objc_autoreleasePoolPush();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v61 objects:v68 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v62;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v62 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v61 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v60 = v9;
          WFMigratePropertyListObject(v15, @"actions", @"actionsData", &v60);
          v17 = v60;

          v59 = v17;
          WFMigratePropertyListObject(v15, @"importQuestions", @"importQuestionsData", &v59);
          v18 = v59;

          v58 = v18;
          WFMigratePropertyListObject(v15, @"inputClasses", @"inputClassesData", &v58);
          v9 = v58;

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v61 objects:v68 count:16];
      }

      while (v12);
    }

    v57 = v9;
    [v44 save:&v57];
    v19 = v57;

    [v44 reset];
    [v41 setFetchOffset:{objc_msgSend(v41, "fetchOffset") + objc_msgSend(v41, "fetchLimit")}];
    v56 = v19;
    v8 = [v44 executeFetchRequest:v41 error:&v56];
    v9 = v56;

    objc_autoreleasePoolPop(context);
  }

  objc_autoreleasePoolPop(v38);
  v39 = objc_autoreleasePoolPush();
  v20 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Collection"];
  [v20 setFetchLimit:5];
  [v20 setPropertiesToFetch:&unk_1F4A9B788];
  v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"identifier" ascending:1];
  v67 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v67 count:1];
  [v20 setSortDescriptors:v22];

  v55 = v9;
  v23 = [v44 executeFetchRequest:v20 error:&v55];
  v24 = v55;

  while ([v23 count])
  {
    contexta = objc_autoreleasePoolPush();
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v25 = v23;
    v26 = [v25 countByEnumeratingWithState:&v51 objects:v66 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v52;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v52 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = *(*(&v51 + 1) + 8 * j);
          v31 = objc_autoreleasePoolPush();
          v50 = v24;
          WFMigratePropertyListObject(v30, @"lastRemoteCollectionOrdering", @"lastRemoteCollectionOrderingData", &v50);
          v32 = v50;

          v49 = v32;
          WFMigratePropertyListObject(v30, @"lastRemoteCollectionOrderingSubset", @"lastRemoteCollectionOrderingSubsetData", &v49);
          v33 = v49;

          v48 = v33;
          WFMigratePropertyListObject(v30, @"lastRemoteShortcutOrdering", @"lastRemoteShortcutOrderingData", &v48);
          v34 = v48;

          v47 = v34;
          WFMigratePropertyListObject(v30, @"lastRemoteShortcutOrderingSubset", @"lastRemoteShortcutOrderingSubsetData", &v47);
          v24 = v47;

          objc_autoreleasePoolPop(v31);
        }

        v27 = [v25 countByEnumeratingWithState:&v51 objects:v66 count:16];
      }

      while (v27);
    }

    v46 = v24;
    [v44 save:&v46];
    v35 = v46;

    [v44 reset];
    [v20 setFetchOffset:{objc_msgSend(v20, "fetchOffset") + objc_msgSend(v20, "fetchLimit")}];
    v45 = v35;
    v23 = [v44 executeFetchRequest:v20 error:&v45];
    v24 = v45;

    objc_autoreleasePoolPop(contexta);
  }

  objc_autoreleasePoolPop(v39);
  if (error)
  {
    v36 = v24;
    *error = v24;
  }

  return v24 == 0;
}

@end