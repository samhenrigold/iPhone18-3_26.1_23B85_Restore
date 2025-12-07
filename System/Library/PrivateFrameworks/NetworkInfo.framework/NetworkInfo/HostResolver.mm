@interface HostResolver
- (HostResolver)initWithQueue:(id)queue;
- (void)resolveHostname:(id)hostname withCompletion:(id)completion;
@end

@implementation HostResolver

- (HostResolver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = HostResolver;
  v6 = [(HostResolver *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->queue, queue);
  }

  return v7;
}

- (void)resolveHostname:(id)hostname withCompletion:(id)completion
{
  hostnameCopy = hostname;
  completionCopy = completion;
  v7 = dispatch_semaphore_create(0);
  host = nw_endpoint_create_host([hostnameCopy cStringUsingEncoding:4], "0");
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v11 = nw_resolver_create_with_endpoint();
  v12 = v7;
  nw_resolver_set_update_handler();
  v9 = dispatch_time(0, 5000000000);
  dispatch_semaphore_wait(v12, v9);
  v10 = [v14[5] count] != 0;
  completionCopy[2](completionCopy, v10, v14[5]);

  _Block_object_dispose(&v13, 8);
}

void __47__HostResolver_resolveHostname_withCompletion___block_invoke(uint64_t a1, int a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  count = nw_array_get_count();
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:count];
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (count)
  {
    for (i = 0; i != count; ++i)
    {
      v11 = nw_array_get_object_at_index();
      address = nw_endpoint_get_address(v11);
      v13 = getnameinfo(address, address->sa_len, v27, 0x401u, 0, 0, 10);
      if (v13)
      {
        netqual_log_init(v13, v14);
        v15 = os_log_netqual;
        if (os_log_type_enabled(os_log_netqual, OS_LOG_TYPE_ERROR))
        {
          v16 = v15;
          v17 = *__error();
          *buf = 136315906;
          v20 = "[HostResolver resolveHostname:withCompletion:]_block_invoke";
          v21 = 1024;
          v22 = 52;
          v23 = 2048;
          v24 = address;
          v25 = 1024;
          v26 = v17;
          _os_log_error_impl(&dword_25B859000, v16, OS_LOG_TYPE_ERROR, "%s:%u - Could not getnameinfo %p: errno=%d", buf, 0x22u);
        }
      }

      else
      {
        v18 = [MEMORY[0x277CCACA8] stringWithCString:v27 encoding:4];
        [*(*(*(a1 + 48) + 8) + 40) addObject:v18];
      }
    }
  }

  if (a2 == 2)
  {
    nw_resolver_cancel();
    dispatch_semaphore_signal(*(a1 + 40));
  }
}

@end