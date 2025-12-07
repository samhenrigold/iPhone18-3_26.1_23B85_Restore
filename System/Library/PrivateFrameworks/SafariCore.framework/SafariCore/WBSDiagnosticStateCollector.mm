@interface WBSDiagnosticStateCollector
+ (id)registeredStateCollectorWithLogLabel:(id)label payloadProvider:(id)provider;
- (WBSDiagnosticStateCollector)initWithLogLabel:(id)label queue:(id)queue payloadProvider:(id)provider;
- (os_state_data_s)_createOSStateDataWithHints:(os_state_hints_s *)hints;
- (void)dealloc;
- (void)unregister;
@end

@implementation WBSDiagnosticStateCollector

- (WBSDiagnosticStateCollector)initWithLogLabel:(id)label queue:(id)queue payloadProvider:(id)provider
{
  labelCopy = label;
  queueCopy = queue;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = WBSDiagnosticStateCollector;
  v11 = [(WBSDiagnosticStateCollector *)&v18 init];
  if (v11)
  {
    v12 = [labelCopy copy];
    logLabel = v11->_logLabel;
    v11->_logLabel = v12;

    objc_storeStrong(&v11->_queue, queue);
    v14 = [providerCopy copy];
    payloadProvider = v11->_payloadProvider;
    v11->_payloadProvider = v14;

    v16 = v11;
  }

  return v11;
}

+ (id)registeredStateCollectorWithLogLabel:(id)label payloadProvider:(id)provider
{
  providerCopy = provider;
  labelCopy = label;
  v8 = [[self alloc] initWithLogLabel:labelCopy payloadProvider:providerCopy];

  [v8 registerWithSysdiagnose];

  return v8;
}

- (void)dealloc
{
  [(WBSDiagnosticStateCollector *)self unregister];
  v3.receiver = self;
  v3.super_class = WBSDiagnosticStateCollector;
  [(WBSDiagnosticStateCollector *)&v3 dealloc];
}

- (void)unregister
{
  if (self->_stateHandler)
  {
    os_state_remove_handler();
    self->_stateHandler = 0;
  }
}

- (os_state_data_s)_createOSStateDataWithHints:(os_state_hints_s *)hints
{
  if (hints->var2 - 1 < 2)
  {
    return 0;
  }

  v5 = (*(self->_payloadProvider + 2))();
  if (v5)
  {
    v15 = 0;
    v6 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:&v15];
    v7 = v15;
    v9 = v7;
    if (v6)
    {
      v10 = v7 == 0;
    }

    else
    {
      v10 = 0;
    }

    if (v10)
    {
      v12 = [v6 length];
      v13 = malloc_type_malloc(v12 + 200, 0xBAB68B7uLL);
      v3 = v13;
      if (v13)
      {
        bzero(v13, v12 + 200);
        v3->var0 = 1;
        [(NSString *)self->_logLabel UTF8String];
        __strlcpy_chk();
        v3->var1.var1 = v12;
        memmove(v3->var4, [v6 bytes], v12);
      }
    }

    else
    {
      v11 = WBS_LOG_CHANNEL_PREFIXOther(v7, v8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(WBSDiagnosticStateCollector *)self _createOSStateDataWithHints:v11, v9];
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_createOSStateDataWithHints:(void *)a3 .cold.1(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 safari_privacyPreservingDescription];
  v7 = 138543618;
  v8 = v4;
  v9 = 2114;
  v10 = v6;
  _os_log_error_impl(&dword_1B8447000, v5, OS_LOG_TYPE_ERROR, "Failed to serialize diagnostic state for '%{public}@': %{public}@", &v7, 0x16u);
}

@end