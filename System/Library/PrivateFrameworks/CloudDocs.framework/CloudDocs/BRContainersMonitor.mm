@interface BRContainersMonitor
+ (BOOL)isContainerIDForeground:(id)foreground;
+ (id)bundleIDFromPrimaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier;
+ (id)containerIDFromPrimaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier;
- (BRContainersMonitor)init;
- (void)addObserver:(id)observer forContainerID:(id)d;
- (void)dealloc;
- (void)removeObserver:(id)observer forContainerID:(id)d;
@end

@implementation BRContainersMonitor

- (BRContainersMonitor)init
{
  v12.receiver = self;
  v12.super_class = BRContainersMonitor;
  v2 = [(BRContainersMonitor *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    observersByContainerID = v2->_observersByContainerID;
    v2->_observersByContainerID = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    notifyTokenByContainerID = v2->_notifyTokenByContainerID;
    v2->_notifyTokenByContainerID = v5;

    v7 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(v7, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.clouddocs.containers.monitor", v8);

    queue = v2->_queue;
    v2->_queue = v9;
  }

  return v2;
}

- (void)dealloc
{
  v0 = brc_bread_crumbs("[BRContainersMonitor dealloc]", 69);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] API MISUSE: There were observers remaining at dealloc time. Call -removeObserver:forContainerID: first.%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

+ (id)containerIDFromPrimaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  memset(v13, 0, sizeof(v13));
  __brc_create_section(0, "+[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:]", 81, 0, v13);
  v7 = brc_bread_crumbs("+[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:]", 81);
  v8 = brc_default_log(1, 0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v15 = v13[0];
    v16 = 2112;
    v17 = identifierCopy;
    v18 = 2112;
    v19 = secondaryIdentifierCopy;
    v20 = 2112;
    v21 = v7;
    _os_log_debug_impl(&dword_1AE2A9000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx asking container ID for %@, %@%@", buf, 0x2Au);
  }

  if ([secondaryIdentifierCopy isEqualToString:@"com.apple.bird"])
  {
    v9 = [@"com.apple.clouddocs." stringByAppendingString:identifierCopy];
    v10 = brc_bread_crumbs("+[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:]", 87);
    v11 = brc_default_log(1, 0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      +[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:];
    }
  }

  else
  {
    v9 = 0;
  }

  __brc_leave_section(v13);

  return v9;
}

+ (id)bundleIDFromPrimaryIdentifier:(id)identifier secondaryIdentifier:(id)secondaryIdentifier
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  secondaryIdentifierCopy = secondaryIdentifier;
  memset(v15, 0, sizeof(v15));
  __brc_create_section(0, "+[BRContainersMonitor bundleIDFromPrimaryIdentifier:secondaryIdentifier:]", 94, 0, v15);
  v8 = brc_bread_crumbs("+[BRContainersMonitor bundleIDFromPrimaryIdentifier:secondaryIdentifier:]", 94);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v17 = v15[0];
    v18 = 2112;
    v19 = identifierCopy;
    v20 = 2112;
    v21 = secondaryIdentifierCopy;
    v22 = 2112;
    v23 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx asking bundle ID for %@, %@%@", buf, 0x2Au);
  }

  v10 = [self containerIDFromPrimaryIdentifier:identifierCopy secondaryIdentifier:secondaryIdentifierCopy];
  if (v10)
  {
    v11 = @"com.apple.bird";
    v12 = brc_bread_crumbs("+[BRContainersMonitor bundleIDFromPrimaryIdentifier:secondaryIdentifier:]", 144);
    v13 = brc_default_log(1, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      +[BRContainersMonitor containerIDFromPrimaryIdentifier:secondaryIdentifier:];
    }
  }

  else
  {
    v12 = brc_bread_crumbs("+[BRContainersMonitor bundleIDFromPrimaryIdentifier:secondaryIdentifier:]", 99);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412802;
      v17 = identifierCopy;
      v18 = 2112;
      v19 = secondaryIdentifierCopy;
      v20 = 2112;
      v21 = v12;
      _os_log_fault_impl(&dword_1AE2A9000, v13, OS_LOG_TYPE_FAULT, "[CRIT] UNREACHABLE: not a CloudDocs identifier pair (%@, %@)%@", buf, 0x20u);
    }

    v11 = 0;
  }

  __brc_leave_section(v15);

  return v11;
}

- (void)addObserver:(id)observer forContainerID:(id)d
{
  v42 = *MEMORY[0x1E69E9840];
  observerCopy = observer;
  dCopy = d;
  memset(v37, 0, sizeof(v37));
  __brc_create_section(0, "[BRContainersMonitor addObserver:forContainerID:]", 151, 0, v37);
  v8 = brc_bread_crumbs("[BRContainersMonitor addObserver:forContainerID:]", 151);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    *handler = 134218498;
    *&handler[4] = v37[0];
    *&handler[12] = 2112;
    *&handler[14] = dCopy;
    *&handler[22] = 2112;
    *&handler[24] = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx adding observer for %@%@", handler, 0x20u);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  out_token = 0;
  v11 = [(NSMutableDictionary *)selfCopy->_observersByContainerID objectForKey:dCopy];
  if (!v11)
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:1];
    [(NSMutableDictionary *)selfCopy->_observersByContainerID setObject:v11 forKey:dCopy];
  }

  [v11 addObject:observerCopy];
  v12 = notifyNameWithPrefixedContainerID(dCopy);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __50__BRContainersMonitor_addObserver_forContainerID___block_invoke;
  v33[3] = &unk_1E7A15540;
  v33[4] = selfCopy;
  v13 = dCopy;
  v34 = v13;
  v14 = v12;
  v35 = v14;
  v15 = MEMORY[0x1B26FEA90](v33);
  v16 = v14;
  uTF8String = [v14 UTF8String];
  v18 = selfCopy->_queue;
  v19 = v15;
  mEMORY[0x1E69DF068] = [MEMORY[0x1E69DF068] sharedManager];
  br_currentPersonaID = [mEMORY[0x1E69DF068] br_currentPersonaID];

  *handler = MEMORY[0x1E69E9820];
  *&handler[8] = 3221225472;
  *&handler[16] = __br_notify_register_dispatch_block_invoke_3;
  *&handler[24] = &unk_1E7A14940;
  v22 = br_currentPersonaID;
  v39 = v22;
  v41 = uTF8String;
  v23 = v19;
  v40 = v23;
  notify_register_dispatch(uTF8String, &out_token, v18, handler);

  notifyTokenByContainerID = selfCopy->_notifyTokenByContainerID;
  v25 = [MEMORY[0x1E696AD98] numberWithInt:out_token];
  [(NSMutableDictionary *)notifyTokenByContainerID setObject:v25 forKey:v13];

  v26 = brc_bread_crumbs("[BRContainersMonitor addObserver:forContainerID:]", 193);
  v27 = brc_default_log(1, 0);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
  {
    *handler = 67109634;
    *&handler[4] = out_token;
    *&handler[8] = 2112;
    *&handler[10] = v14;
    *&handler[18] = 2112;
    *&handler[20] = v26;
    _os_log_debug_impl(&dword_1AE2A9000, v27, OS_LOG_TYPE_DEBUG, "[DEBUG] Registered token %d for %@%@", handler, 0x1Cu);
  }

  queue = selfCopy->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__BRContainersMonitor_addObserver_forContainerID___block_invoke_15;
  block[3] = &unk_1E7A15568;
  v31 = v23;
  v32 = out_token;
  v29 = v23;
  dispatch_async(queue, block);

  objc_sync_exit(selfCopy);
  __brc_leave_section(v37);
}

void __50__BRContainersMonitor_addObserver_forContainerID___block_invoke(uint64_t a1, int a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v4 = *(a1 + 32);
  objc_sync_enter(v4);
  v5 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v6 = [v5 copy];

  objc_sync_exit(v4);
  brc_notify_get_state(a2, &v22, [*(a1 + 48) UTF8String]);
  v7 = v22;
  v8 = brc_bread_crumbs("[BRContainersMonitor addObserver:forContainerID:]_block_invoke", 181);
  v9 = brc_default_log(1, 0);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v16 = *(a1 + 40);
    *buf = 138413058;
    v25 = v16;
    if (v7)
    {
      v17 = "foreground";
    }

    else
    {
      v17 = "background";
    }

    v26 = 2080;
    v27 = v17;
    v28 = 1024;
    v29 = a2;
    v30 = 2112;
    v31 = v8;
    _os_log_debug_impl(&dword_1AE2A9000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ is now %s for token %d%@", buf, 0x26u);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = *v19;
    do
    {
      v13 = 0;
      do
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = *(*(&v18 + 1) + 8 * v13);
        v15 = *(a1 + 40);
        if (v7)
        {
          [v14 containerDidEnterForeground:v15];
        }

        else
        {
          [v14 containerDidEnterBackground:{v15, v18}];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v11);
  }
}

- (void)removeObserver:(id)observer forContainerID:(id)d
{
  observerCopy = observer;
  dCopy = d;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [(NSMutableDictionary *)selfCopy->_observersByContainerID objectForKey:dCopy];
  if (([v9 containsObject:observerCopy] & 1) == 0)
  {
    v12 = brc_bread_crumbs("[BRContainersMonitor removeObserver:forContainerID:]", 205);
    v13 = brc_default_log(0, 0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [BRContainersMonitor removeObserver:v12 forContainerID:v13];
    }
  }

  [v9 removeObject:observerCopy];
  if (![v9 count])
  {
    [(NSMutableDictionary *)selfCopy->_observersByContainerID removeObjectForKey:dCopy];
    v10 = [(NSMutableDictionary *)selfCopy->_notifyTokenByContainerID objectForKey:dCopy];
    intValue = [v10 intValue];

    notify_cancel(intValue);
  }

  objc_sync_exit(selfCopy);
}

+ (BOOL)isContainerIDForeground:(id)foreground
{
  foregroundCopy = foreground;
  if (![BRContainersMonitor isContainerID:foregroundCopy])
  {
    +[BRContainersMonitor isContainerIDForeground:];
  }

  val = -1;
  v7 = 0;
  v4 = notifyNameWithPrefixedContainerID(foregroundCopy);
  brc_notify_register_check([v4 UTF8String], &val);
  if (notify_is_valid_token(val))
  {
    brc_notify_get_state(val, &v7, [v4 UTF8String]);
    v5 = v7 != 0;
    notify_cancel(val);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (void)containerIDFromPrimaryIdentifier:secondaryIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_debug_impl(v0, v1, OS_LOG_TYPE_DEBUG, v2, v3, 0x16u);
}

- (void)removeObserver:(uint64_t)a1 forContainerID:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_1AE2A9000, a2, OS_LOG_TYPE_FAULT, "[CRIT] API MISUSE: removed non existing observer%@", &v2, 0xCu);
}

+ (void)isContainerIDForeground:.cold.1()
{
  v0 = brc_bread_crumbs("+[BRContainersMonitor isContainerIDForeground:]", 218);
  v1 = brc_default_log(0, 0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    LODWORD(v8) = 138412290;
    *(&v8 + 4) = v0;
    OUTLINED_FUNCTION_10(&dword_1AE2A9000, v2, v3, "[CRIT] Assertion failed: [BRContainersMonitor isContainerID:containerID]%@", v4, v5, v6, v7, v8, DWORD2(v8));
  }
}

@end