@interface NSItemProvider
@end

@implementation NSItemProvider

void __51__NSItemProvider_SafariExtras__safari_timeoutQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v0 = dispatch_queue_create("com.apple.mobilesafari.NSItemProviderTimeoutQueue", v2);
  v1 = safari_timeoutQueue_queue;
  safari_timeoutQueue_queue = v0;
}

uint64_t __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke(uint64_t a1, void *a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277CBEAA8] date];
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x2020000000;
  v44 = 0;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__9;
  v41 = __Block_byref_object_dispose__9;
  v5 = [MEMORY[0x277CCAA88] safari_timeoutQueue];
  v42 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v5);

  v6 = v38[5];
  v7 = dispatch_time(0, 300000000);
  dispatch_source_set_timer(v6, v7, 0x11E1A300uLL, 0x5F5E100uLL);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_5;
  aBlock[3] = &unk_2781D9448;
  aBlock[4] = *(a1 + 32);
  v8 = v4;
  v32 = v8;
  v35 = v43;
  v9 = v3;
  v34 = v9;
  v33 = *(a1 + 40);
  v36 = &v37;
  v10 = _Block_copy(aBlock);
  dispatch_source_set_event_handler(v38[5], v10);
  dispatch_activate(v38[5]);
  v13 = WBS_LOG_CHANNEL_PREFIXOther(v11, v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_cold_1(v15, (a1 + 32), buf, v13);
  }

  v16 = *(a1 + 40);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_6;
  v22[3] = &unk_2781D9498;
  v17 = v8;
  v18 = *(a1 + 32);
  v23 = v17;
  v24 = v18;
  v28 = v43;
  v29 = &v37;
  v19 = v9;
  v26 = v19;
  v25 = *(a1 + 40);
  v30 = 0x3FD3333333333333;
  v20 = v10;
  v27 = v20;
  [v16 _loadAsynchronousFieldsWithUpdateHandler:v22];

  _Block_object_dispose(&v37, 8);
  _Block_object_dispose(v43, 8);

  return 0;
}

void __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_5(uint64_t a1, uint64_t a2)
{
  v3 = WBS_LOG_CHANNEL_PREFIXOther(a1, a2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_5_cold_1(a1, v3);
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  v4 = *(a1 + 56);
  v5 = [*(a1 + 48) dataRepresentation];
  (*(v4 + 16))(v4, v5, 0);

  dispatch_source_cancel(*(*(*(a1 + 72) + 8) + 40));
  v6 = *(*(a1 + 72) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_6(uint64_t a1, char a2)
{
  v4 = [MEMORY[0x277CCAA88] safari_timeoutQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_2;
  block[3] = &unk_2781D9470;
  v5 = *(a1 + 32);
  v16 = a2;
  v14 = *(a1 + 72);
  *&v6 = v5;
  *(&v6 + 1) = *(a1 + 40);
  v9 = v6;
  v7 = *(a1 + 56);
  *&v8 = *(a1 + 48);
  *(&v8 + 1) = v7;
  v11 = v9;
  v12 = v8;
  v15 = *(a1 + 88);
  v13 = *(a1 + 64);
  dispatch_async(v4, block);
}

void __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] date];
  [v2 timeIntervalSinceDate:*(a1 + 32)];
  v4 = v3;

  if (*(*(*(a1 + 72) + 8) + 24) == 1)
  {
    if (*(a1 + 96))
    {
      v7 = WBS_LOG_CHANNEL_PREFIXOther(v5, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_2_cold_3(a1, v7);
      }
    }
  }

  else if (*(a1 + 96))
  {
    v8 = WBS_LOG_CHANNEL_PREFIXOther(v5, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_2_cold_2(a1, v8);
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    dispatch_source_cancel(*(*(*(a1 + 80) + 8) + 40));
    v9 = *(*(a1 + 80) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    v11 = *(a1 + 56);
    v12 = [*(a1 + 48) dataRepresentation];
    (*(v11 + 16))(v11, v12, 0);
  }

  else if (v4 >= *(a1 + 88))
  {
    v14 = *(*(a1 + 64) + 16);

    v14();
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXOther(v5, v6);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_2_cold_1(a1, v13);
    }
  }
}

void __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_cold_1(void *a1, uint64_t *a2, uint8_t *buf, os_log_t log)
{
  v5 = *a2;
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = v5;
  _os_log_debug_impl(&dword_215819000, log, OS_LOG_TYPE_DEBUG, "Starting fetch of metadata for copy for <%{public}@: %p>", buf, 0x16u);
}

void __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_5_cold_1(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x277CBEAA8] date];
  [v7 timeIntervalSinceDate:*(a1 + 40)];
  v9 = 138543874;
  v10 = v5;
  v11 = 2048;
  v12 = v6;
  v13 = 2048;
  v14 = v8;
  _os_log_debug_impl(&dword_215819000, v3, OS_LOG_TYPE_DEBUG, "Timed out fetching metadata for copy for <%{public}@: %p> in %fs", &v9, 0x20u);
}

void __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5(&dword_215819000, v5, v6, "Completed partial fetch of metadata for copy for <%{public}@: %p> in %fs", v7, v8, v9, v10);
}

void __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_2_cold_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5(&dword_215819000, v5, v6, "Completed fetch of metadata for copy for <%{public}@: %p> in %fs", v7, v8, v9, v10);
}

void __60__NSItemProvider_SafariExtras__safari_registerLinkMetadata___block_invoke_2_cold_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  OUTLINED_FUNCTION_0_4();
  OUTLINED_FUNCTION_1_5(&dword_215819000, v5, v6, "Timeout exceeded: Completed fetch of metadata for copy for <%{public}@: %p> in %fs", v7, v8, v9, v10);
}

@end