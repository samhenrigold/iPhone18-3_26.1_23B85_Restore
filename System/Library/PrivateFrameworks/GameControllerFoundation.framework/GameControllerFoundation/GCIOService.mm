@interface GCIOService
+ (id)addMatchingNotification:(id)notification type:(const char *)type matching:(id)matching handler:(id)handler;
- (GCIOService)initWithPort:(unsigned int)port error:(id *)p_isa;
- (IOCFPlugInInterfaceStruct)createCFPlugInInterface:(__CFUUID *)interface score:(int *)score error:(id *)error;
- (id)addInterestNotification:(id)notification type:(const char *)type handler:(id)handler;
@end

@implementation GCIOService

- (GCIOService)initWithPort:(unsigned int)port error:(id *)p_isa
{
  v5 = *&port;
  v14[1] = *MEMORY[0x1E69E9840];
  v7 = objc_opt_class();
  if ([v7 isEqual:objc_opt_class()] && !IOObjectConformsTo(v5, "IOService"))
  {
    if (p_isa)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A5A0];
      v13 = *MEMORY[0x1E696A588];
      v14[0] = @"Port does not reference an IOService.";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      *p_isa = [v9 errorWithDomain:v10 code:4 userInfo:v11];

      p_isa = 0;
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = GCIOService;
    self = [(GCIORegistryEntry *)&v12 initWithPort:v5 error:p_isa];
    p_isa = &self->super.super.super.isa;
  }

  return p_isa;
}

+ (id)addMatchingNotification:(id)notification type:(const char *)type matching:(id)matching handler:(id)handler
{
  v46 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  matchingCopy = matching;
  handlerCopy = handler;
  notification = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__5;
  v42 = __Block_byref_object_dispose__5;
  v43 = 0;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke;
  v35[3] = &unk_1E8414828;
  v37 = &v38;
  v12 = handlerCopy;
  v36 = v12;
  v13 = [v35 copy];
  v14 = notificationCopy;
  port = [notificationCopy port];
  v16 = matchingCopy;
  v17 = IOServiceAddMatchingNotification(port, type, v16, __IOServiceMatchingCallback, v13, &notification);
  v18 = v17;
  if (v17)
  {
    v21 = _gc_log_iokit(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      [GCIOService addMatchingNotification:type type:v18 matching:v21 handler:?];
    }

    v26 = 0;
  }

  else
  {
    v19 = [GCIOIterator alloc];
    v34 = 0;
    v20 = [(GCIOIterator *)v19 initWithPort:notification objectClass:objc_opt_class() error:&v34];
    v21 = v34;
    v22 = v39[5];
    v39[5] = v20;

    if (v39[5])
    {
      IOObjectRelease(notification);
      queue = [notificationCopy queue];
      dispatch_async(queue, v13);

      v25 = [GCDisposable alloc];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke_7;
      v30[3] = &unk_1E8414878;
      v33 = &v38;
      v31 = notificationCopy;
      v32 = v13;
      v26 = [(GCDisposable *)v25 initWithCleanupHandler:v30];

      v27 = v31;
    }

    else
    {
      v27 = _gc_log_iokit(v23);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        localizedFailureReason = [v21 localizedFailureReason];
        [GCIOService addMatchingNotification:type type:localizedFailureReason matching:buf handler:v27];
      }

      v26 = 0;
    }
  }

  _Block_object_dispose(&v38, 8);

  return v26;
}

uint64_t __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke(uint64_t result)
{
  if (*(*(*(result + 40) + 8) + 40))
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke_7(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = 0;

  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__GCIOService_addMatchingNotification_type_matching_handler___block_invoke_2;
  block[3] = &unk_1E8414850;
  v6 = *(a1 + 40);
  dispatch_async(v4, block);
}

- (id)addInterestNotification:(id)notification type:(const char *)type handler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  notification = 0;
  v9 = [handler copy];
  port = [notificationCopy port];
  port2 = [(GCIOObject *)self port];
  v12 = IOServiceAddInterestNotification(port, port2, type, __IOServiceNotificationCallback, v9, &notification);
  if (v12)
  {
    v17 = v12;
    v15 = _gc_log_iokit(v12);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      selfCopy = self;
      v25 = 2082;
      typeCopy = type;
      v27 = 1024;
      v28 = v17;
      _os_log_error_impl(&dword_1D2C3B000, v15, OS_LOG_TYPE_ERROR, "%@ Error registering interest notification for '%{public}s': %{mach.errno}d", buf, 0x1Cu);
    }

    v14 = 0;
  }

  else
  {
    v13 = [GCDisposable alloc];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __52__GCIOService_addInterestNotification_type_handler___block_invoke;
    v18[3] = &unk_1E84148A0;
    notificationCopy2 = notification;
    v19 = notificationCopy;
    v20 = v9;
    v14 = [(GCDisposable *)v13 initWithCleanupHandler:v18];

    v15 = v19;
  }

  return v14;
}

void __52__GCIOService_addInterestNotification_type_handler___block_invoke(uint64_t a1)
{
  IOObjectRelease(*(a1 + 48));
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__GCIOService_addInterestNotification_type_handler___block_invoke_2;
  block[3] = &unk_1E8414850;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (IOCFPlugInInterfaceStruct)createCFPlugInInterface:(__CFUUID *)interface score:(int *)score error:(id *)error
{
  v19[1] = *MEMORY[0x1E69E9840];
  theScore = 0;
  theInterface = 0;
  port = [(GCIOObject *)self port];
  v9 = CFUUIDGetConstantUUIDWithBytes(0, 0xC2u, 0x44u, 0xE8u, 0x58u, 0x10u, 0x9Cu, 0x11u, 0xD4u, 0x91u, 0xD4u, 0, 0x50u, 0xE4u, 0xC6u, 0x42u, 0x6Fu);
  v10 = IOCreatePlugInInterfaceForService(port, interface, v9, &theInterface, &theScore);
  if (v10)
  {
    if (error)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A5A0];
      v14 = v10;
      v18 = *MEMORY[0x1E696A580];
      v19[0] = @"CFPlugIn instantiation failed.";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = [v12 errorWithDomain:v13 code:v14 userInfo:v15];
    }

    return 0;
  }

  else
  {
    if (score)
    {
      *score = theScore;
    }

    return theInterface;
  }
}

+ (void)addMatchingNotification:(os_log_t)log type:matching:handler:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 136446466;
  v4 = a1;
  v5 = 1024;
  v6 = a2;
  _os_log_error_impl(&dword_1D2C3B000, log, OS_LOG_TYPE_ERROR, "<IOService> Error registering matching notification for '%{public}s': %{mach.errno}d", &v3, 0x12u);
}

+ (void)addMatchingNotification:(uint64_t)a1 type:(void *)a2 matching:(uint8_t *)buf handler:(os_log_t)log .cold.2(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 136446466;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1D2C3B000, log, OS_LOG_TYPE_ERROR, "<IOService> Error creating iterator for matching notification for '%{public}s': %{public}@", buf, 0x16u);
}

@end