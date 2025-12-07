@interface BRProcessMonitor
- (BOOL)_isProcessForeground:(id)foreground bundleID:(id)d;
- (id)_bundleIDForPID:(int)d;
- (id)initForProcessID:(int)d observer:(id)observer;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BRProcessMonitor

- (BOOL)_isProcessForeground:(id)foreground bundleID:(id)d
{
  foregroundCopy = foreground;
  dCopy = d;
  if (_isProcessForeground_bundleID__onceToken != -1)
  {
    [BRProcessMonitor _isProcessForeground:bundleID:];
  }

  v7 = [_isProcessForeground_bundleID__EXTENSION_BUNDLE_IDS containsObject:dCopy];
  taskState = [foregroundCopy taskState];
  if (taskState == 4)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  if ((v7 & 1) == 0 && taskState == 4)
  {
    endowmentNamespaces = [foregroundCopy endowmentNamespaces];
    v9 = [endowmentNamespaces containsObject:@"com.apple.frontboard.visibility"];
  }

  return v9;
}

uint64_t __50__BRProcessMonitor__isProcessForeground_bundleID___block_invoke()
{
  _isProcessForeground_bundleID__EXTENSION_BUNDLE_IDS = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F23E63B8];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_bundleIDForPID:(int)d
{
  v3 = MEMORY[0x1E69C75D0];
  v4 = MEMORY[0x1E69C7610];
  v5 = [MEMORY[0x1E69C7640] targetWithPid:*&d];
  v6 = [v4 predicateMatchingTarget:v5];
  v7 = [v3 handleForPredicate:v6 error:0];

  bundle = [v7 bundle];
  identifier = [bundle identifier];

  return identifier;
}

- (id)initForProcessID:(int)d observer:(id)observer
{
  v4 = *&d;
  observerCopy = observer;
  v24.receiver = self;
  v24.super_class = BRProcessMonitor;
  v7 = [(BRProcessMonitor *)&v24 init];
  v8 = v7;
  if (!v7)
  {
    goto LABEL_4;
  }

  objc_storeWeak(&v7->_weakObserver, observerCopy);
  v9 = [(BRProcessMonitor *)v8 _bundleIDForPID:v4];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x1E69C75F8];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __46__BRProcessMonitor_initForProcessID_observer___block_invoke;
    v20[3] = &unk_1E7A15470;
    v23 = v4;
    v21 = v9;
    v12 = v8;
    v22 = v12;
    v13 = v10;
    v14 = [v11 monitorWithConfiguration:v20];
    monitor = v12->_monitor;
    v12->_monitor = v14;

LABEL_4:
    v16 = v8;
    goto LABEL_8;
  }

  v17 = brc_bread_crumbs("[BRProcessMonitor initForProcessID:observer:]", 56);
  v18 = brc_default_log(1, 0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [(BRProcessMonitor *)v17 initForProcessID:v4 observer:v18];
  }

  v16 = 0;
LABEL_8:

  return v16;
}

void __46__BRProcessMonitor_initForProcessID_observer___block_invoke(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = brc_bread_crumbs("[BRProcessMonitor initForProcessID:observer:]_block_invoke", 60);
  v5 = brc_default_log(1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    __46__BRProcessMonitor_initForProcessID_observer___block_invoke_cold_1(a1, v4, v5);
  }

  v6 = [MEMORY[0x1E69C7610] predicateMatchingBundleIdentifier:*(a1 + 32)];
  v13[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  [v3 setPredicates:v7];
  v8 = [MEMORY[0x1E69C7630] descriptor];
  [v8 setValues:1];
  [v8 setEndowmentNamespaces:&unk_1F23E63D0];
  [v3 setStateDescriptor:v8];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__BRProcessMonitor_initForProcessID_observer___block_invoke_23;
  v9[3] = &unk_1E7A15448;
  v12 = *(a1 + 48);
  v10 = *(a1 + 40);
  v11 = *(a1 + 32);
  [v3 setUpdateHandler:v9];
}

void __46__BRProcessMonitor_initForProcessID_observer___block_invoke_23(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([a3 pid] == *(a1 + 48))
  {
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    if (WeakRetained)
    {
      v8 = [v6 state];
      v9 = [*(a1 + 32) _isProcessForeground:v8 bundleID:*(a1 + 40)];
      v10 = brc_bread_crumbs("[BRProcessMonitor initForProcessID:observer:]_block_invoke", 76);
      v11 = brc_default_log(1, 0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *(a1 + 40);
        v13 = *(a1 + 48);
        v14 = 138413314;
        v15 = v12;
        v16 = 1024;
        v17 = v13;
        v18 = 1024;
        v19 = v9;
        v20 = 2112;
        v21 = v6;
        v22 = 2112;
        v23 = v10;
        _os_log_debug_impl(&dword_1AE2A9000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] Received an update handler for bundleID = %@, pid = %d, isForeground = %d, update = %@%@", &v14, 0x2Cu);
      }

      [WeakRetained process:*(a1 + 48) didBecomeForeground:v9];
    }
  }
}

- (void)invalidate
{
  [self->_monitor invalidate];
  monitor = self->_monitor;
  self->_monitor = 0;

  objc_storeWeak(&self->_weakObserver, 0);
}

- (void)dealloc
{
  [(BRProcessMonitor *)self invalidate];
  v3.receiver = self;
  v3.super_class = BRProcessMonitor;
  [(BRProcessMonitor *)&v3 dealloc];
}

- (void)initForProcessID:(os_log_t)log observer:.cold.1(uint64_t a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v3[0] = 67109378;
  v3[1] = a2;
  v4 = 2112;
  v5 = a1;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] There is no bundleID for the provided pid %d%@", v3, 0x12u);
}

void __46__BRProcessMonitor_initForProcessID_observer___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 48);
  v4 = *(a1 + 32);
  v5[0] = 67109634;
  v5[1] = v3;
  v6 = 2112;
  v7 = v4;
  v8 = 2112;
  v9 = a2;
  _os_log_debug_impl(&dword_1AE2A9000, log, OS_LOG_TYPE_DEBUG, "[DEBUG] creating monitor for %d with bundleID = %@%@", v5, 0x1Cu);
}

@end