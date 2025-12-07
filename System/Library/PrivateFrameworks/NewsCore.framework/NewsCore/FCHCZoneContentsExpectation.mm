@interface FCHCZoneContentsExpectation
- (void)validate;
@end

@implementation FCHCZoneContentsExpectation

- (void)validate
{
  v35[1] = *MEMORY[0x1E69E9840];
  v18 = objc_alloc_init(MEMORY[0x1E695B918]);
  selfCopy = self;
  zoneID = [(FCHCZoneContentsExpectation *)self zoneID];
  v35[0] = zoneID;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:1];
  [v18 setRecordZoneIDs:v4];

  [v18 setFetchAllChanges:1];
  array = [MEMORY[0x1E695DF70] array];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __39__FCHCZoneContentsExpectation_validate__block_invoke;
  v32[3] = &unk_1E7C37FE0;
  v6 = array;
  v33 = v6;
  [v18 setRecordChangedBlock:v32];
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__5;
  v30 = __Block_byref_object_dispose__5;
  v31 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __39__FCHCZoneContentsExpectation_validate__block_invoke_2;
  v25[3] = &unk_1E7C38008;
  v25[4] = &v26;
  [v18 setFetchRecordZoneChangesCompletionBlock:v25];
  database = [(FCHCZoneContentsExpectation *)self database];
  [database addOperation:v18];

  [v18 waitUntilFinished];
  [MEMORY[0x1E696AF00] isMainThread];
  v8 = MEMORY[0x1E695D920];
  if (v27[5])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D920] format:{@"error fetching zone changes from database: %@", v27[5]}];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  recordTests = [(FCHCZoneContentsExpectation *)self recordTests];
  v10 = [recordTests countByEnumeratingWithState:&v21 objects:v34 count:16];
  if (v10)
  {
    v11 = *v22;
    v12 = *v8;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(recordTests);
        }

        v14 = *(*(&v21 + 1) + 8 * i);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __39__FCHCZoneContentsExpectation_validate__block_invoke_3;
        v20[3] = &unk_1E7C38030;
        v20[4] = v14;
        v15 = [v6 fc_containsObjectPassingTest:v20];
        [MEMORY[0x1E696AF00] isMainThread];
        if ((v15 & 1) == 0)
        {
          v16 = MEMORY[0x1E695DF30];
          zoneID2 = [(FCHCZoneContentsExpectation *)selfCopy zoneID];
          [v16 raise:v12 format:{@"missing records in zone: %@\nfound: %@", zoneID2, v6}];
        }
      }

      v10 = [recordTests countByEnumeratingWithState:&v21 objects:v34 count:16];
    }

    while (v10);
  }

  _Block_object_dispose(&v26, 8);
}

uint64_t __39__FCHCZoneContentsExpectation_validate__block_invoke_3(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 recordType];
  v5 = [*(a1 + 32) recordType];
  v6 = [v4 isEqualToString:v5];

  v7 = MEMORY[0x1E695DFD8];
  v41 = a1;
  v8 = [*(a1 + 32) unencryptedFields];
  v9 = [v7 setWithArray:v8];

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v51;
    do
    {
      v14 = 0;
      do
      {
        if (*v51 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v50 + 1) + 8 * v14);
        v16 = [v3 encryptedValuesByKey];
        v17 = [v16 objectForKeyedSubscript:v15];

        v6 = (v17 == 0) & v6;
        ++v14;
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v50 objects:v56 count:16];
    }

    while (v12);
  }

  v18 = MEMORY[0x1E695DFD8];
  v19 = [*(v41 + 32) encryptedFields];
  v20 = [v18 setWithArray:v19];

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v21 = v20;
  v22 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v47;
    do
    {
      v25 = 0;
      do
      {
        if (*v47 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v46 + 1) + 8 * v25);
        v27 = [v3 valuesByKey];
        v28 = [v27 objectForKeyedSubscript:v26];

        v6 = (v28 == 0) & v6;
        ++v25;
      }

      while (v23 != v25);
      v23 = [v21 countByEnumeratingWithState:&v46 objects:v55 count:16];
    }

    while (v23);
  }

  v40 = v10;

  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v29 = [*(v41 + 32) expectedValues];
  v30 = [v29 countByEnumeratingWithState:&v42 objects:v54 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v43;
    do
    {
      v33 = 0;
      do
      {
        if (*v43 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v42 + 1) + 8 * v33);
        v35 = [*(v41 + 32) expectedValues];
        v36 = [v35 objectForKeyedSubscript:v34];

        if ([v21 containsObject:v34])
        {
          [v3 encryptedValuesByKey];
        }

        else
        {
          [v3 valuesByKey];
        }
        v37 = ;
        v38 = [v37 objectForKeyedSubscript:v34];

        v6 = [v38 isEqual:v36] & v6;
        ++v33;
      }

      while (v31 != v33);
      v31 = [v29 countByEnumeratingWithState:&v42 objects:v54 count:16];
    }

    while (v31);
  }

  return v6;
}

@end