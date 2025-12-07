@interface CDSpotlightCoalescedDeletionManager
@end

@implementation CDSpotlightCoalescedDeletionManager

_CDSpotlightCoalescedDeletionOperation *__60___CDSpotlightCoalescedDeletionManager_setupCoalescingTimer__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = objc_opt_new();
  }

  v9 = v8;
  if (v7)
  {
    *a4 = [v8 addDeletion:v7];
    v10 = +[_CDLogging spotlightReceiverChannel];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = @"NO";
      if (*a4)
      {
        v11 = @"YES";
      }

      v13 = 138412546;
      v14 = v7;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_191750000, v10, OS_LOG_TYPE_INFO, "_CDSpotlightCoalescedDeletionManager coalescing new deletion operation: %@, change was consequential: %@", &v13, 0x16u);
    }
  }

  return v9;
}

void __60___CDSpotlightCoalescedDeletionManager_setupCoalescingTimer__block_invoke_17(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[_CDLogging spotlightReceiverChannel];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v7 = v3;
    _os_log_impl(&dword_191750000, v4, OS_LOG_TYPE_DEFAULT, "_CDSpotlightCoalescedDeletionManager running coalesced delete operation: %@", buf, 0xCu);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __60___CDSpotlightCoalescedDeletionManager_setupCoalescingTimer__block_invoke_18;
  v5[3] = &unk_1E736A7A0;
  v5[4] = *(a1 + 32);
  [v3 enumerateDeletionPredicatesAndCompletionsWithBlock:v5];
}

void __60___CDSpotlightCoalescedDeletionManager_setupCoalescingTimer__block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60___CDSpotlightCoalescedDeletionManager_setupCoalescingTimer__block_invoke_2;
  v8[3] = &unk_1E736A4B0;
  v9 = v5;
  v7 = v5;
  [v6 deleteKnowledgeEventsMatchingPredicate:a2 withCompletion:v8];
}

void __60___CDSpotlightCoalescedDeletionManager_setupCoalescingTimer__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = *(a1 + 32);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        v12 = objc_autoreleasePoolPush();
        (*(v11 + 16))(v11, a2, v5);
        objc_autoreleasePoolPop(v12);
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

@end