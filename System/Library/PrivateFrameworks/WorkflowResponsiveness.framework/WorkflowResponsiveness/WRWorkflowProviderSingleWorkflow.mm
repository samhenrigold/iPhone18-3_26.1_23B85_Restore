@interface WRWorkflowProviderSingleWorkflow
- (WRWorkflowProviderSingleWorkflow)initWithWorkflowName:(id)name queue:(id)queue callback:(id)callback;
- (void)handleSettingsChanged:(BOOL)changed;
@end

@implementation WRWorkflowProviderSingleWorkflow

- (WRWorkflowProviderSingleWorkflow)initWithWorkflowName:(id)name queue:(id)queue callback:(id)callback
{
  nameCopy = name;
  callbackCopy = callback;
  v16.receiver = self;
  v16.super_class = WRWorkflowProviderSingleWorkflow;
  v10 = [(WRWorkflowProvider *)&v16 initWithQueue:queue];
  if (v10)
  {
    v11 = [nameCopy copy];
    workflowName = v10->_workflowName;
    v10->_workflowName = v11;

    v13 = MEMORY[0x277C5A9A0](callbackCopy);
    callback = v10->_callback;
    v10->_callback = v13;
  }

  return v10;
}

- (void)handleSettingsChanged:(BOOL)changed
{
  v33 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = OUTLINED_FUNCTION_5_0(self, a2);
  }

  else
  {
    v5 = 0;
  }

  v6 = [WRWorkflow workflowWithName:v5];
  v8 = v6;
  if (!v6)
  {
    if (self)
    {
      OUTLINED_FUNCTION_5_0(0, v7);
    }

    v9 = __error();
    v10 = *v9;
    v11 = _wrlog(v9);
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v12)
    {
      if (self)
      {
        v14 = OUTLINED_FUNCTION_5_0(v12, v13);
      }

      else
      {
        v14 = 0;
      }

      *buf = 138543362;
      v32 = v14;
      _os_log_impl(&dword_2746E5000, v11, OS_LOG_TYPE_INFO, "%{public}@: No workflow with name", buf, 0xCu);
    }

    v6 = __error();
    *v6 = v10;
  }

  if (changed)
  {
LABEL_26:
    if (!self)
    {
      Property = 0;
      goto LABEL_28;
    }

LABEL_27:
    objc_setProperty_atomic(self, v7, v8, 32);
    Property = objc_getProperty(self, v27, 16, 1);
LABEL_28:
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __58__WRWorkflowProviderSingleWorkflow_handleSettingsChanged___block_invoke;
    v29[3] = &unk_279EE37C8;
    v29[4] = self;
    v30 = v8;
    dispatch_async(Property, v29);

    goto LABEL_29;
  }

  if (self)
  {
    v15 = OUTLINED_FUNCTION_8_0(v6, v7, 32);
  }

  else
  {
    v15 = 0;
  }

  if (!(v8 | v15))
  {
    goto LABEL_29;
  }

  if (!self)
  {
    v18 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v16 = OUTLINED_FUNCTION_8_0(v15, v7, 32);
  v18 = v16;
  if (!v8 || !v16)
  {
    goto LABEL_25;
  }

  v19 = [OUTLINED_FUNCTION_8_0(v16 v17];

  if (v19)
  {
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_5_0(v20, v7);
  v21 = __error();
  v22 = *v21;
  v23 = _wrlog(v21);
  v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG);
  if (v24)
  {
    v26 = OUTLINED_FUNCTION_5_0(v24, v25);
    *buf = 138543362;
    v32 = v26;
    _os_log_debug_impl(&dword_2746E5000, v23, OS_LOG_TYPE_DEBUG, "%{public}@: No changes after tasking notification", buf, 0xCu);
  }

  *__error() = v22;
LABEL_29:
}

uint64_t __58__WRWorkflowProviderSingleWorkflow_handleSettingsChanged___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 40, 1);
  }

  v3 = Property[2];

  return v3();
}

@end