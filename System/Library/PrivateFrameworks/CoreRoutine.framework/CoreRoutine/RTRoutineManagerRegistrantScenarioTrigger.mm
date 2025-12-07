@interface RTRoutineManagerRegistrantScenarioTrigger
- (RTRoutineManagerRegistrantScenarioTrigger)init;
- (id)startMonitoringForScenarioTriggerTypes:(unint64_t)types handler:(id)handler;
- (id)stopMonitoringForScenarioTriggerTypes:(unint64_t)types;
- (void)onScenarioTriggers:(id)triggers error:(id)error;
@end

@implementation RTRoutineManagerRegistrantScenarioTrigger

- (RTRoutineManagerRegistrantScenarioTrigger)init
{
  v6.receiver = self;
  v6.super_class = RTRoutineManagerRegistrantScenarioTrigger;
  v2 = [(RTRoutineManagerRegistrantScenarioTrigger *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    scenarioTriggerHandlers = v2->__scenarioTriggerHandlers;
    v2->__scenarioTriggerHandlers = v3;
  }

  return v2;
}

- (id)startMonitoringForScenarioTriggerTypes:(unint64_t)types handler:(id)handler
{
  v15[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    while (types)
    {
      v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:types & -types];
      scenarioTriggerHandlers = self->__scenarioTriggerHandlers;
      v9 = MEMORY[0x1BFB54DD0](handlerCopy);
      [(NSMutableDictionary *)scenarioTriggerHandlers setObject:v9 forKey:v7];

      self->_monitoredScenarioTriggerTypes |= types & -types;
      types &= types - 1;
    }

    v12 = 0;
    self->_registered = self->_monitoredScenarioTriggerTypes != 0;
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v14 = *MEMORY[0x1E696A578];
    v15[0] = @"Invalid parameter value for handler.  Requires non-nil value.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v12 = [v10 errorWithDomain:@"RTErrorDomain" code:7 userInfo:v11];
  }

  return v12;
}

- (id)stopMonitoringForScenarioTriggerTypes:(unint64_t)types
{
  if (types)
  {
    typesCopy = types;
    do
    {
      v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:typesCopy & -typesCopy];
      [(NSMutableDictionary *)self->__scenarioTriggerHandlers removeObjectForKey:v5];
      self->_monitoredScenarioTriggerTypes &= ~(typesCopy & -typesCopy);
      typesCopy &= typesCopy - 1;
    }

    while (typesCopy);
  }

  self->_registered = self->_monitoredScenarioTriggerTypes != 0;
  return 0;
}

- (void)onScenarioTriggers:(id)triggers error:(id)error
{
  v44 = *MEMORY[0x1E69E9840];
  triggersCopy = triggers;
  errorCopy = error;
  monitoredScenarioTriggerTypes = self->_monitoredScenarioTriggerTypes;
  v9 = objc_opt_new();
  while (monitoredScenarioTriggerTypes)
  {
    v10 = [RTScenarioTrigger scenarioTriggerTypeToString:monitoredScenarioTriggerTypes & -monitoredScenarioTriggerTypes];
    if (v10)
    {
      [v9 addObject:v10];
    }

    monitoredScenarioTriggerTypes &= monitoredScenarioTriggerTypes - 1;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = NSStringFromSelector(a2);
      if (self->_registered)
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      [v9 componentsJoinedByString:{@", "}];
      v15 = v14 = v9;
      *buf = 138413314;
      v35 = v12;
      v36 = 2112;
      v37 = v13;
      v38 = 2112;
      v39 = v15;
      v40 = 2112;
      v41 = triggersCopy;
      v42 = 2112;
      v43 = errorCopy;
      _os_log_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_INFO, "%@, registered, %@, monitoredScenarioTriggerTypes, %@, scenarioTriggers, %@, error, %@", buf, 0x34u);

      v9 = v14;
    }
  }

  if (self->_registered)
  {
    v26 = v9;
    v27 = triggersCopy;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = triggersCopy;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * i);
          v22 = self->_monitoredScenarioTriggerTypes;
          if (([v21 type] & v22) != 0)
          {
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v21, "type")}];
            v24 = [(NSMutableDictionary *)self->__scenarioTriggerHandlers objectForKey:v23];
            v25 = v24;
            if (v24)
            {
              (*(v24 + 16))(v24, v21, errorCopy);
            }
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v18);
    }

    v9 = v26;
    triggersCopy = v27;
  }
}

@end