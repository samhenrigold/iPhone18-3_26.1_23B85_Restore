@interface CDCoreDataContextPersisting
@end

@implementation CDCoreDataContextPersisting

void __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695D5E8] fetchRequestWithEntityName:*(a1 + 32)];
  [v2 setFetchLimit:1];
  [v2 setIncludesPendingChanges:1];
  [v2 setPredicate:*(a1 + 40)];
  v3 = *(a1 + 48);
  v13 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v13];
  v5 = v13;
  if (v5)
  {
    v6 = [MEMORY[0x1E6997908] contextChannel];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke_cold_1(v5, v6);
    }
  }

  if ([v4 count])
  {
    v7 = [v4 firstObject];
  }

  else
  {
    if (*(a1 + 72) != 1)
    {
      goto LABEL_15;
    }

    v7 = [MEMORY[0x1E695D5C0] insertNewObjectForEntityForName:*(a1 + 32) inManagedObjectContext:*(a1 + 48)];
  }

  v8 = v7;
  if (v7)
  {
    (*(*(a1 + 56) + 16))();

    v9 = *(a1 + 48);
    v12 = 0;
    v10 = [v9 save:&v12];
    v5 = v12;
    *(*(*(a1 + 64) + 8) + 24) = v10;
    if (v5)
    {
      v11 = [MEMORY[0x1E6997908] contextChannel];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke_cold_2(v5, v11);
      }
    }

    [*(a1 + 48) processPendingChanges];
    [*(a1 + 48) refreshAllObjects];
  }

LABEL_15:
}

void __73___CDCoreDataContextPersisting_fromEntityWithName_deleteObjectsMatching___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695D5E8] fetchRequestWithEntityName:a1[4]];
  [v2 setFetchLimit:0];
  [v2 setIncludesPendingChanges:1];
  [v2 setPredicate:a1[5]];
  v3 = [objc_alloc(MEMORY[0x1E695D540]) initWithFetchRequest:v2];
  [v3 setResultType:0];
  v4 = a1[6];
  v8 = 0;
  v5 = [v4 executeRequest:v3 error:&v8];
  v6 = v8;
  v7 = [v5 result];
  *(*(a1[7] + 8) + 24) = [v7 BOOLValue];
}

void __96___CDCoreDataContextPersisting_fromEntityWithName_fetchAllObjectsMatchingPredicate_handlingMOs___block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E695D5E8] fetchRequestWithEntityName:a1[4]];
  [v2 setFetchLimit:0];
  [v2 setIncludesPendingChanges:1];
  [v2 setPredicate:a1[5]];
  v3 = a1[6];
  v6 = 0;
  v4 = [v3 executeFetchRequest:v2 error:&v6];
  v5 = v6;
  (*(a1[7] + 16))();
}

void __53___CDCoreDataContextPersisting_saveValue_forKeyPath___block_invoke(uint64_t a1)
{
  if (![*(a1 + 32) isEphemeral] || objc_msgSend(*(*(a1 + 40) + 24), "countForObject:", *(a1 + 32)))
  {
    v2 = *(a1 + 40);
    v3 = [v2 uniquenessPredicateForKeyPath:*(a1 + 32)];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __53___CDCoreDataContextPersisting_saveValue_forKeyPath___block_invoke_2;
    v4[3] = &unk_1E7886360;
    v5 = *(a1 + 32);
    v6 = *(a1 + 48);
    [v2 withMOFromEntityWithName:@"ContextualKeyPath" andUniqunessPredicate:v3 insertOrUpdate:v4];
  }
}

void __49___CDCoreDataContextPersisting_saveRegistration___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) predicate];
  v3 = [v2 keyPaths];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(a1 + 40) + 24) addObject:*(*(&v12 + 1) + 8 * i)];
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v8 = *(a1 + 40);
  v9 = [v8 uniqunessPredicateForRegistration:*(a1 + 32)];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __49___CDCoreDataContextPersisting_saveRegistration___block_invoke_2;
  v10[3] = &unk_1E7886388;
  v11 = *(a1 + 32);
  [v8 withMOFromEntityWithName:@"ContextualChangeRegistration" andUniqunessPredicate:v9 insertOrUpdate:v10];
}

void __49___CDCoreDataContextPersisting_saveRegistration___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6997908];
  v4 = a2;
  v5 = [v3 contextChannel];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_1A9611000, v5, OS_LOG_TYPE_DEFAULT, "Saving registration: %@", &v7, 0xCu);
  }

  [_CDContextualChangeRegistrationMO hydrateMO:v4 fromRegistration:*(a1 + 32)];
}

void __51___CDCoreDataContextPersisting_deleteRegistration___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [v2 uniqunessPredicateForRegistration:*(a1 + 40)];
  [v2 withMOFromEntityWithName:@"ContextualChangeRegistration" andUniqunessPredicate:v3 update:&__block_literal_global_8];

  v4 = [*(a1 + 40) predicate];
  v5 = [v4 keyPaths];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(a1 + 32) + 24) removeObject:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  [*(a1 + 32) _deleteKeyPaths:v6];
}

uint64_t __45___CDCoreDataContextPersisting_deleteAllData__block_invoke(uint64_t a1)
{
  [*(a1 + 32) fromEntityWithName:@"ContextualKeyPath" deleteObjectsMatching:0];
  v2 = *(a1 + 32);

  return [v2 fromEntityWithName:@"ContextualChangeRegistration" deleteObjectsMatching:0];
}

void __56___CDCoreDataContextPersisting_deleteDataCreatedBefore___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"creationDate < %@", *(a1 + 32)];
  [*(a1 + 40) fromEntityWithName:@"ContextualKeyPath" deleteObjectsMatching:v2];
  [*(a1 + 40) fromEntityWithName:@"ContextualChangeRegistration" deleteObjectsMatching:v2];
}

void __42___CDCoreDataContextPersisting_loadValues__block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __42___CDCoreDataContextPersisting_loadValues__block_invoke_2;
  v2[3] = &unk_1E78863D0;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [v1 fromEntityWithName:@"ContextualKeyPath" fetchAllObjectsMatchingPredicate:0 handlingMOs:v2];
}

void __42___CDCoreDataContextPersisting_loadValues__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        v9 = [_CDContextualKeyPathMO materializedKeyPathFrom:v8];
        v10 = [_CDContextualKeyPathMO materializedContextValueFrom:v8];
        [*(a1 + 32) setObject:v10 forKeyedSubscript:v9];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

void __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  *v12 = 0x1500000001;
  v8 = 0;
  v9 = 0;
  v7 = 16;
  if (sysctl(v12, 2u, &v8, &v7, 0, 0) == -1)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke_cold_1();
    }

    v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:0.0];
  }

  else
  {
    v2 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSince1970:v9 / 1000000.0 + v8];
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v2;
      _os_log_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEFAULT, "Device boot time: %@", buf, 0xCu);
    }
  }

  v3 = [_CDContextualChangeRegistrationMO predicateForActiveRegistrationsInBootSession:v2];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke_2;
  v5[3] = &unk_1E78863D0;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v4 fromEntityWithName:@"ContextualChangeRegistration" fetchAllObjectsMatchingPredicate:v3 handlingMOs:v5];
}

void __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = [_CDContextualChangeRegistrationMO materializedRegistrationFrom:v9];
        if (v10)
        {
          [*(a1 + 32) addObject:v10];
        }

        else
        {
          if (!v6)
          {
            v6 = [v9 managedObjectContext];
          }

          [v6 deleteObject:v9];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  [v6 save:0];
}

void __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9611000, a2, OS_LOG_TYPE_ERROR, "Error fetching MO: %@", &v2, 0xCu);
}

void __94___CDCoreDataContextPersisting__withMOFromEntityWithName_andUniqunessPredicate_insert_update___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1A9611000, a2, OS_LOG_TYPE_ERROR, "Error saving MO: %@", &v2, 0xCu);
}

void __49___CDCoreDataContextPersisting_loadRegistrations__block_invoke_cold_1()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = __error();
  v1 = strerror(*v0);
  v2 = 136446210;
  v3 = v1;
  _os_log_fault_impl(&dword_1A9611000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to determine KERN_BOOTTIME: %{public}s", &v2, 0xCu);
}

@end