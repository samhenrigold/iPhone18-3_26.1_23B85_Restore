@interface SGLowMemoryContactEnumeration
+ (void)enumerateContactIdentifierBatchesUsingBlock:(id)block;
+ (void)enumerateContactIdentifiersUsingBlock:(id)block;
@end

@implementation SGLowMemoryContactEnumeration

+ (void)enumerateContactIdentifiersUsingBlock:(id)block
{
  blockCopy = block;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __71__SGLowMemoryContactEnumeration_enumerateContactIdentifiersUsingBlock___block_invoke;
  v6[3] = &unk_27894D470;
  v5 = blockCopy;
  v7 = v5;
  v8 = v9;
  [self enumerateContactIdentifierBatchesUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __71__SGLowMemoryContactEnumeration_enumerateContactIdentifiersUsingBlock___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v12 = a2;
  v5 = objc_msgSend_count(v12);
  if (v5)
  {
    v6 = 0;
    v7 = v5 - 1;
    do
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = [v12 objectAtIndexedSubscript:v6];
      ++*(*(*(a1 + 40) + 8) + 24);
      (*(v9 + 16))(v9, v10);

      LOBYTE(v9) = *a3;
      objc_autoreleasePoolPop(v8);
      if (v9)
      {
        break;
      }
    }

    while (v7 != v6++);
  }
}

+ (void)enumerateContactIdentifierBatchesUsingBlock:(id)block
{
  v39[2] = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v4 = objc_opt_new();
  [v4 setLowPriority:1];
  [v4 setFetchAttributes:MEMORY[0x277CBEBF8]];
  [v4 setReason:@"reason:SGLowMemoryContactEnumeration-1; code:9"];
  v5 = [objc_alloc(MEMORY[0x277CC3498]) initWithQueryString:@"true" context:v4];
  [v5 setBundleIDs:&unk_28474A600];
  [v5 setPrivateIndex:0];
  if ([MEMORY[0x277D42598] isDeviceFormattedForProtection])
  {
    v6 = *MEMORY[0x277CCA1B8];
    v39[0] = *MEMORY[0x277CCA1A0];
    v39[1] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    [v5 setProtectionClasses:v7];
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("SGLowMemoryContactEnumeration", v8);

  v10 = dispatch_semaphore_create(0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__11856;
  v37 = __Block_byref_object_dispose__11857;
  v38 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke;
  v24[3] = &unk_27894D448;
  v11 = v9;
  v25 = v11;
  v27 = &v29;
  v28 = &v33;
  v12 = v10;
  v26 = v12;
  [v5 setFoundItemsHandler:v24];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_4;
  v20 = &unk_278951198;
  v13 = v11;
  v21 = v13;
  v23 = &v29;
  v14 = v12;
  v22 = v14;
  [v5 setCompletionHandler:&v17];
  [v5 start];
  while (1)
  {
    dispatch_semaphore_wait(v14, 0xFFFFFFFFFFFFFFFFLL);
    if (v30[3])
    {
      break;
    }

    v15 = objc_autoreleasePoolPush();
    blockCopy[2](blockCopy, v34[5], (v30 + 3));
    if (*(v30 + 24) == 1)
    {
      [v5 cancel];
    }

    objc_autoreleasePoolPop(v15);
    v16 = *(v30 + 24);
    dispatch_resume(v13);
    if (v16)
    {
      goto LABEL_10;
    }
  }

  dispatch_resume(v13);
LABEL_10:

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);
}

void __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_2;
  block[3] = &unk_27894D420;
  v10 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_sync(v8, block);
}

void __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_5;
  v6[3] = &unk_278953EC0;
  v10 = *(a1 + 48);
  v7 = v3;
  v8 = v4;
  v9 = *(a1 + 40);
  v5 = v3;
  dispatch_sync(v8, v6);
}

intptr_t __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_5(intptr_t result)
{
  v7 = *MEMORY[0x277D85DE8];
  v1 = *(*(result + 56) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    v2 = result;
    *(v1 + 24) = 1;
    if (*(result + 32))
    {
      v3 = sgLogHandle();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
      {
        v4 = *(v2 + 32);
        v5 = 138412290;
        v6 = v4;
        _os_log_fault_impl(&dword_231E60000, v3, OS_LOG_TYPE_FAULT, "SGLowMemoryContactEnumeration got an error from Spotlight: %@", &v5, 0xCu);
      }

      if (_PASEvaluateLogFaultAndProbCrashCriteria())
      {
        abort();
      }
    }

    dispatch_suspend(*(v2 + 40));
    return dispatch_semaphore_signal(*(v2 + 48));
  }

  return result;
}

intptr_t __77__SGLowMemoryContactEnumeration_enumerateContactIdentifierBatchesUsingBlock___block_invoke_2(intptr_t result)
{
  if ((*(*(*(result + 56) + 8) + 24) & 1) == 0)
  {
    v2 = result;
    v3 = [*(result + 32) _pas_proxyArrayWithMapping:&__block_literal_global_11862];
    v4 = *(*(v2 + 64) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    dispatch_suspend(*(v2 + 40));
    v6 = *(v2 + 48);

    return dispatch_semaphore_signal(v6);
  }

  return result;
}

@end