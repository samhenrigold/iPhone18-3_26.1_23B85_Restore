@interface WFShortcutsV12CustomModificationStep
- (BOOL)gatherStateFromPreviousContext:(id)context error:(id *)error;
- (BOOL)performModificationsWithContext:(id)context error:(id *)error;
- (BOOL)shouldAddWorkflowToLibrary:(id)library;
- (id)createLibraryFromCurrentDatabaseSnapshot:(id)snapshot;
@end

@implementation WFShortcutsV12CustomModificationStep

- (BOOL)shouldAddWorkflowToLibrary:(id)library
{
  libraryCopy = library;
  if (([libraryCopy hiddenFromLibraryAndSync] & 1) != 0 || (objc_msgSend(libraryCopy, "tombstoned") & 1) != 0 || (objc_msgSend(libraryCopy, "conflictOf"), (v4 = objc_claimAutoreleasedReturnValue()) != 0) && (v5 = v4, objc_msgSend(libraryCopy, "conflictOf"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "tombstoned"), v6, v5, !v7))
  {
    v9 = 0;
  }

  else
  {
    name = [libraryCopy name];
    v9 = name != 0;
  }

  return v9;
}

- (id)createLibraryFromCurrentDatabaseSnapshot:(id)snapshot
{
  v41 = *MEMORY[0x1E69E9840];
  snapshotCopy = snapshot;
  v4 = getWFCoherenceLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v36 = "[WFShortcutsV12CustomModificationStep createLibraryFromCurrentDatabaseSnapshot:]";
    _os_log_impl(&dword_1CA256000, v4, OS_LOG_TYPE_DEFAULT, "%s Creating Library from Core Data snapshot.", buf, 0xCu);
  }

  v5 = [[WFLibrary alloc] initWithIdentifier:@"Library-2"];
  v6 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Collection"];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"identifier", @"Root"];
  [v6 setPredicate:v7];

  [v6 setFetchLimit:1];
  v8 = [snapshotCopy executeFetchRequest:v6 error:0];
  firstObject = [v8 firstObject];

  if (firstObject)
  {
    v27 = v5;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v12 = [firstObject valueForKey:@"shortcuts"];
    v13 = [firstObject valueForKey:@"collections"];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke;
    v33[3] = &unk_1E8375CF8;
    v33[4] = self;
    v34 = array;
    v14 = array;
    [v12 enumerateObjectsUsingBlock:v33];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_2;
    v31[3] = &unk_1E8375D20;
    v31[4] = self;
    v15 = array2;
    v32 = v15;
    [v13 enumerateObjectsUsingBlock:v31];
    v16 = getWFCoherenceLogObject();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v12 count];
      v18 = [v15 count];
      *buf = 136315650;
      v36 = "[WFShortcutsV12CustomModificationStep createLibraryFromCurrentDatabaseSnapshot:]";
      v37 = 2050;
      v38 = v17;
      v39 = 2050;
      v40 = v18;
      _os_log_impl(&dword_1CA256000, v16, OS_LOG_TYPE_DEFAULT, "%s Overwriting library with %{public}lu shortcuts and %{public}lu folders.", buf, 0x20u);
    }

    v5 = v27;
    [(WFLibrary *)v27 overwriteShortcutsAndFolders:v14 folders:v15];
  }

  v19 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Collection"];
  v20 = WFGetBuiltInCollectionIdentifiers(0);
  v21 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY parents = nil && (%K in %@)", @"identifier", v20];
  [v19 setPredicate:v21];

  v22 = [snapshotCopy executeFetchRequest:v19 error:0];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_209;
  v29[3] = &unk_1E8375D20;
  v29[4] = self;
  v23 = v5;
  v30 = v23;
  [v22 enumerateObjectsUsingBlock:v29];
  v24 = v30;
  v25 = v23;

  return v23;
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) shouldAddWorkflowToLibrary:?])
  {
    v3 = *(a1 + 40);
    v4 = [v5 workflowID];
    [v3 addObject:v4];
  }
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"shortcuts"];
  v5 = [MEMORY[0x1E695DF70] array];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_3;
  v19 = &unk_1E8375CF8;
  v20 = *(a1 + 32);
  v21 = v5;
  v6 = v5;
  [v4 enumerateObjectsUsingBlock:&v16];
  v7 = [v3 valueForKey:{@"identifier", v16, v17, v18, v19, v20}];
  v8 = [v3 valueForKey:@"name"];
  v9 = v8;
  v10 = &stru_1F4A1C408;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v3 valueForKey:@"icon"];

  v13 = [v12 glyphNumber];
  v14 = [objc_alloc(MEMORY[0x1E69E0DD0]) initWithIdentifier:v7 isFolder:1 name:v11 glyphCharacter:v13 isDeleted:0];

  v15 = [[WFLibraryCollection alloc] initWithWorkflowCollection:v14 shortcutIdentifiers:v6];
  [*(a1 + 40) addObject:v15];
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_209(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 valueForKey:@"identifier"];
  v5 = [v3 valueForKey:@"shortcuts"];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_2_210;
  v8[3] = &unk_1E8375D48;
  v6 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v9 = v6;
  v10 = v4;
  v7 = v4;
  [v5 enumerateObjectsUsingBlock:v8];
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_2_210(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([*(a1 + 32) shouldAddWorkflowToLibrary:v3])
  {
    v4 = *(a1 + 40);
    v5 = [v3 workflowID];
    v6 = *(a1 + 48);
    v10 = 0;
    [v4 appendShortcutWithIdentifier:v5 toCollectionWithIdentifier:v6 error:&v10];
    v7 = v10;

    if (v7)
    {
      v8 = getWFDatabaseLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *(a1 + 48);
        *buf = 136315650;
        v12 = "[WFShortcutsV12CustomModificationStep createLibraryFromCurrentDatabaseSnapshot:]_block_invoke_2";
        v13 = 2114;
        v14 = v9;
        v15 = 2114;
        v16 = v7;
        _os_log_impl(&dword_1CA256000, v8, OS_LOG_TYPE_ERROR, "%s Failed to add shortcut to collection with identifier: %{public}@, error: %{public}@", buf, 0x20u);
      }
    }
  }
}

void __81__WFShortcutsV12CustomModificationStep_createLibraryFromCurrentDatabaseSnapshot___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) shouldAddWorkflowToLibrary:?])
  {
    v3 = *(a1 + 40);
    v4 = [v5 workflowID];
    [v3 addObject:v4];
  }
}

- (BOOL)performModificationsWithContext:(id)context error:(id *)error
{
  contextCopy = context;
  libraryToWrite = [(WFShortcutsV12CustomModificationStep *)self libraryToWrite];

  if (!libraryToWrite)
  {
    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Library"];
  v9 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v8];
  v10 = [contextCopy executeRequest:v9 error:error];

  if (!v10)
  {

    LOBYTE(v14) = 0;
    goto LABEL_6;
  }

  libraryToWrite2 = [(WFShortcutsV12CustomModificationStep *)self libraryToWrite];
  v12 = [libraryToWrite2 capsuleDataWithPersistenceMode:0 error:0];

  v13 = [[WFCoreDataLibrary alloc] initWithContext:contextCopy];
  [(WFCoreDataLibrary *)v13 setIdentifier:@"Library-2"];
  [(WFCoreDataLibrary *)v13 setData:v12];
  [(WFCoreDataLibrary *)v13 setSyncHash:[WFLibraryRecord syncHashFromData:v12]];
  [(WFCoreDataLibrary *)v13 setResetVersion:1];
  v14 = [contextCopy save:error];

  if (v14)
  {
LABEL_4:
    LOBYTE(v14) = 1;
  }

LABEL_6:

  return v14;
}

- (BOOL)gatherStateFromPreviousContext:(id)context error:(id *)error
{
  contextCopy = context;
  v6 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Library"];
  [v6 setFetchLimit:1];
  v7 = [contextCopy executeFetchRequest:v6 error:0];
  firstObject = [v7 firstObject];
  identifier = [firstObject identifier];
  if (identifier == @"Library-2")
  {
    v12 = @"Library-2";

    goto LABEL_13;
  }

  v10 = identifier;
  if (!identifier || (v11 = objc_msgSend_isEqualToString_(identifier), v10, v10, (v11 & 1) == 0))
  {
    identifier2 = [firstObject identifier];
    if (identifier2 == @"Library")
    {
    }

    else
    {
      v14 = identifier2;
      if (!identifier2 || (isEqualToString = objc_msgSend_isEqualToString_(identifier2), v14, v14, !isEqualToString))
      {
        v12 = [(WFShortcutsV12CustomModificationStep *)self createLibraryFromCurrentDatabaseSnapshot:contextCopy];
        [(WFShortcutsV12CustomModificationStep *)self setLibraryToWrite:v12];
        goto LABEL_13;
      }
    }

    v16 = [WFLibrary alloc];
    identifier3 = [firstObject identifier];
    data = [firstObject data];
    v12 = [(WFLibrary *)v16 initWithIdentifier:identifier3 data:data];

    libraryByErasingChangeHistory = [(__CFString *)v12 libraryByErasingChangeHistory];
    [(WFShortcutsV12CustomModificationStep *)self setLibraryToWrite:libraryByErasingChangeHistory];

LABEL_13:
  }

  return 1;
}

@end