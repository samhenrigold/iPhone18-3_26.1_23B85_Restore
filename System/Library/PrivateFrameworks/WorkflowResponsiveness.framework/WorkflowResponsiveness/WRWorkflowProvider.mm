@interface WRWorkflowProvider
+ (id)providerForAllWorkflowsWithQueue:(id)queue callback:(id)callback;
+ (id)providerForWorkflowWithName:(id)name queue:(id)queue callback:(id)callback;
- (WRWorkflowProvider)initWithQueue:(id)queue;
- (void)dealloc;
- (void)handleSettingsChanged:(BOOL)changed;
- (void)registerNotification;
@end

@implementation WRWorkflowProvider

- (void)handleSettingsChanged:(BOOL)changed
{
  v3 = __error();
  v4 = *v3;
  v5 = _wrlog(v3);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    [WRWorkflowProvider handleSettingsChanged:];
  }

  *__error() = v4;
}

- (void)registerNotification
{
  if (val && *(val + 2) == -1)
  {
    objc_initWeak(&location, val);
    v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v3 = dispatch_queue_create("com.apple.WorkflowResponsiveness.tasking", v2);

    out_token = 0;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __42__WRWorkflowProvider_registerNotification__block_invoke;
    handler[3] = &unk_279EE37A0;
    objc_copyWeak(&v18, &location);
    if (notify_register_dispatch("com.apple.da.tasking_changed", &out_token, v3, handler))
    {
      v4 = __error();
      v5 = *v4;
      v6 = _wrlog(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        [WRWorkflowProvider registerNotification];
      }

      *__error() = v5;
      v7 = -1;
    }

    else
    {
      v7 = out_token;
    }

    *(val + 2) = v7;
    out_token = 0;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __42__WRWorkflowProvider_registerNotification__block_invoke_214;
    v15 = &unk_279EE37A0;
    objc_copyWeak(&v16, &location);
    if (notify_register_dispatch("com.apple.workflow_responsiveness.settings_changed", &out_token, v3, &v12))
    {
      v8 = __error();
      v9 = *v8;
      v10 = _wrlog(v8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        [WRWorkflowProvider registerNotification];
      }

      *__error() = v9;
      v11 = -1;
    }

    else
    {
      v11 = out_token;
    }

    *(val + 3) = v11;
    [val handleSettingsChanged:{1, v12, v13, v14, v15}];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }
}

void __42__WRWorkflowProvider_registerNotification__block_invoke(uint64_t a1)
{
  v2 = __error();
  v3 = *v2;
  v4 = _wrlog(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __42__WRWorkflowProvider_registerNotification__block_invoke_cold_1();
  }

  *__error() = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSettingsChanged:0];
}

void __42__WRWorkflowProvider_registerNotification__block_invoke_214(uint64_t a1)
{
  v2 = __error();
  v3 = *v2;
  v4 = _wrlog(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __42__WRWorkflowProvider_registerNotification__block_invoke_214_cold_1();
  }

  *__error() = v3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleSettingsChanged:0];
}

- (WRWorkflowProvider)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = WRWorkflowProvider;
  v6 = [(WRWorkflowProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    *&v6->_taskingNotifyToken = -1;
    objc_storeStrong(&v6->_callbackQueue, queue);
  }

  return v7;
}

- (void)dealloc
{
  if (!self)
  {
    notify_cancel(0);
    wrSettingsChangedNotifyToken = 0;
LABEL_5:
    notify_cancel(wrSettingsChangedNotifyToken);
    goto LABEL_6;
  }

  taskingNotifyToken = self->_taskingNotifyToken;
  if (taskingNotifyToken != -1)
  {
    notify_cancel(taskingNotifyToken);
  }

  wrSettingsChangedNotifyToken = self->_wrSettingsChangedNotifyToken;
  if (wrSettingsChangedNotifyToken != -1)
  {
    goto LABEL_5;
  }

LABEL_6:
  v5.receiver = self;
  v5.super_class = WRWorkflowProvider;
  [(WRWorkflowProvider *)&v5 dealloc];
}

+ (id)providerForAllWorkflowsWithQueue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  queueCopy = queue;
  v7 = [[WRWorkflowProviderAllWorkflows alloc] initWithQueue:queueCopy callback:callbackCopy];

  [(WRWorkflowProvider *)v7 registerNotification];

  return v7;
}

+ (id)providerForWorkflowWithName:(id)name queue:(id)queue callback:(id)callback
{
  callbackCopy = callback;
  queueCopy = queue;
  nameCopy = name;
  v10 = [[WRWorkflowProviderSingleWorkflow alloc] initWithWorkflowName:nameCopy queue:queueCopy callback:callbackCopy];

  [(WRWorkflowProvider *)v10 registerNotification];

  return v10;
}

- (void)handleSettingsChanged:.cold.1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4_0();
  _os_log_fault_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__WRWorkflowProvider_registerNotification__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__WRWorkflowProvider_registerNotification__block_invoke_214_cold_1()
{
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

@end