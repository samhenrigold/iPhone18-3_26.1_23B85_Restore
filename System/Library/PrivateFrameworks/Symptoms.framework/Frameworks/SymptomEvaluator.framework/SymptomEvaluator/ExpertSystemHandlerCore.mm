@interface ExpertSystemHandlerCore
+ (id)configureClass:(id)class;
+ (id)internalStateDictionary;
- (BOOL)noteSymptom:(id)symptom;
- (ExpertSystemHandlerCore)initWithQueue:(id)queue;
- (int)read:(id)read returnedValues:(id)values;
- (void)cancelAllTimers;
- (void)cancelTimerWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)scheduleTimerFor:(unint64_t)for leeway:(unint64_t)leeway identifier:(id)identifier queue:(id)queue eventHandler:(id)handler cancelHandler:(id)cancelHandler;
@end

@implementation ExpertSystemHandlerCore

- (ExpertSystemHandlerCore)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = ExpertSystemHandlerCore;
  v6 = [(ExpertSystemHandlerCore *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

- (void)dealloc
{
  [(ExpertSystemHandlerCore *)self cancelAllTimers];
  v3.receiver = self;
  v3.super_class = ExpertSystemHandlerCore;
  [(ExpertSystemHandlerCore *)&v3 dealloc];
}

- (void)scheduleTimerFor:(unint64_t)for leeway:(unint64_t)leeway identifier:(id)identifier queue:(id)queue eventHandler:(id)handler cancelHandler:(id)cancelHandler
{
  v45 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  queueCopy = queue;
  handlerCopy = handler;
  cancelHandlerCopy = cancelHandler;
  if (for && (v18 = [identifierCopy length], handlerCopy) && queueCopy && v18)
  {
    activeTimers = self->_activeTimers;
    if (!activeTimers)
    {
      v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v21 = self->_activeTimers;
      self->_activeTimers = v20;

      activeTimers = self->_activeTimers;
    }

    v22 = [(NSMutableDictionary *)activeTimers objectForKeyedSubscript:identifierCopy];

    v23 = debuggabilityLogHandle;
    v24 = os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_INFO);
    if (v22)
    {
      if (v24)
      {
        *buf = 138412290;
        forCopy2 = identifierCopy;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "ES: Active timer already exists for identifier %@", buf, 0xCu);
      }
    }

    else
    {
      if (v24)
      {
        *buf = 138412802;
        forCopy2 = identifierCopy;
        v37 = 2048;
        leewayCopy2 = for;
        v39 = 2048;
        leewayCopy = leeway;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "ExpertSystemCore: Scheduling timer with identifier %@ to fire in %ld seconds (leeway: %ld)", buf, 0x20u);
      }

      objc_initWeak(buf, self);
      v28 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
      v29 = dispatch_time(0, 1000000000 * for);
      dispatch_source_set_timer(v28, v29, 0xFFFFFFFFFFFFFFFFLL, 1000000000 * leeway);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __95__ExpertSystemHandlerCore_scheduleTimerFor_leeway_identifier_queue_eventHandler_cancelHandler___block_invoke;
      handler[3] = &unk_27898D608;
      v33 = handlerCopy;
      objc_copyWeak(&v34, buf);
      v30 = identifierCopy;
      v32 = v30;
      dispatch_source_set_event_handler(v28, handler);
      if (cancelHandlerCopy)
      {
        dispatch_source_set_cancel_handler(v28, cancelHandlerCopy);
      }

      [(NSMutableDictionary *)self->_activeTimers setObject:v28 forKeyedSubscript:v30];
      dispatch_resume(v28);

      objc_destroyWeak(&v34);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v25 = debuggabilityLogHandle;
    if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v26 = v25;
      v27 = _Block_copy(handlerCopy);
      *buf = 134219010;
      forCopy2 = for;
      v37 = 2048;
      leewayCopy2 = leeway;
      v39 = 2112;
      leewayCopy = identifierCopy;
      v41 = 2048;
      v42 = queueCopy;
      v43 = 2048;
      v44 = v27;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "ES: Invalid parameters scheduling timer (duration %ld, leeway %ld, identifier %@, queue: %p, handler %p)", buf, 0x34u);
    }
  }
}

void __95__ExpertSystemHandlerCore_scheduleTimerFor_leeway_identifier_queue_eventHandler_cancelHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    [WeakRetained cancelTimerWithIdentifier:*(a1 + 32)];
    WeakRetained = v4;
  }
}

- (void)cancelTimerWithIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v5 = [(NSMutableDictionary *)self->_activeTimers objectForKeyedSubscript:identifierCopy];
    v6 = debuggabilityLogHandle;
    if (v5)
    {
      if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v7 = 138412290;
        v8 = identifierCopy;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "ES: Cancelling timer with identifier %@", &v7, 0xCu);
      }

      dispatch_source_cancel(v5);
      [(NSMutableDictionary *)self->_activeTimers setObject:0 forKeyedSubscript:identifierCopy];
    }

    else if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138412290;
      v8 = identifierCopy;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "ES: No active timer to cancel with identifier %@", &v7, 0xCu);
    }
  }
}

- (void)cancelAllTimers
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = debuggabilityLogHandle;
  if (os_log_type_enabled(debuggabilityLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    activeTimers = self->_activeTimers;
    v5 = v3;
    v6 = 134217984;
    v7 = [(NSMutableDictionary *)activeTimers count];
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "ES: Cancelling all %ld timers", &v6, 0xCu);
  }

  [(NSMutableDictionary *)self->_activeTimers enumerateKeysAndObjectsUsingBlock:&__block_literal_global_25];
  [(NSMutableDictionary *)self->_activeTimers removeAllObjects];
}

+ (id)configureClass:(id)class
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ExpertSystemHandlerCore.m" lineNumber:118 description:{@"Subclasses must provide an impl for %s", "+[ExpertSystemHandlerCore configureClass:]"}];

  return 0;
}

+ (id)internalStateDictionary
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ExpertSystemHandlerCore.m" lineNumber:124 description:{@"Subclasses must provide an impl for %s", "+[ExpertSystemHandlerCore internalStateDictionary]"}];

  return 0;
}

- (int)read:(id)read returnedValues:(id)values
{
  valuesCopy = values;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [valuesCopy setObject:v6 forKey:@"GENERIC_CONFIG_TARGET"];

  return 0;
}

- (BOOL)noteSymptom:(id)symptom
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"ExpertSystemHandlerCore.m" lineNumber:141 description:{@"Subclasses must provide an impl for %s", "-[ExpertSystemHandlerCore noteSymptom:]"}];

  return 0;
}

@end