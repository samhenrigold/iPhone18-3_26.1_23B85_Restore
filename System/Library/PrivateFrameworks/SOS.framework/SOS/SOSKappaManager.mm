@interface SOSKappaManager
+ (id)sharedInstance;
+ (int64_t)mapSOSFlowStateToKappaState:(int64_t)state;
+ (unint64_t)mapServerResponseToKappaResponse:(int64_t)response;
- (NSXPCConnection)connection;
- (SOSKappaManager)init;
- (SOSKappaManager)initWithQueue:(id)queue;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)detectedAnomalyWithElectedDevice:(unint64_t)device completion:(id)completion;
- (void)didDismissClientSOSBeforeSOSCall:(int64_t)call;
- (void)didUpdateSOSStatus:(id)status;
- (void)dismissClientSOSWithCompletion:(id)completion;
- (void)forceStartConnection;
- (void)removeObserver:(id)observer;
- (void)setConnection:(id)connection;
- (void)setSendingLocationUpdate:(BOOL)update;
- (void)triggerKappaWithCompletion:(id)completion;
- (void)updateClientCurrentSOSButtonPressState:(id)state;
- (void)updateClientCurrentSOSInitiationState:(int64_t)state;
- (void)updateClientCurrentSOSInteractiveState:(int64_t)state;
- (void)updateObserversWithKappaStatus:(id)status;
@end

@implementation SOSKappaManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SOSKappaManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_3 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_3, block);
  }

  v2 = sharedInstance_inst_0;

  return v2;
}

void __33__SOSKappaManager_sharedInstance__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.SOS.queue.%@.%p", objc_opt_class(), *(a1 + 32)];
  v4 = [v3 UTF8String];
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create(v4, v5);

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__SOSKappaManager_sharedInstance__block_invoke_2;
  block[3] = &unk_279B53E18;
  v7 = *(a1 + 32);
  v10 = v6;
  v11 = v7;
  v8 = v6;
  dispatch_sync(v8, block);
}

uint64_t __33__SOSKappaManager_sharedInstance__block_invoke_2(uint64_t a1)
{
  sharedInstance_inst_0 = [objc_alloc(*(a1 + 40)) initWithQueue:*(a1 + 32)];

  return MEMORY[0x2821F96F8]();
}

- (SOSKappaManager)init
{
  [(SOSKappaManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (SOSKappaManager)initWithQueue:(id)queue
{
  queueCopy = queue;
  dispatch_assert_queue_V2(queueCopy);
  v6 = [SOSEntitlement currentProcessHasEntitlement:@"com.apple.sos.trigger"];
  if (v6)
  {
    v21.receiver = self;
    v21.super_class = SOSKappaManager;
    v7 = [(SOSKappaManager *)&v21 init];
    v8 = v7;
    if (v7)
    {
      v9 = sos_default_log(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&dword_264323000, v9, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,init", buf, 2u);
      }

      objc_storeStrong(&v8->_serialQueue, queue);
      weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
      observers = v8->_observers;
      v8->_observers = weakObjectsHashTable;

      objc_initWeak(buf, v8);
      v12 = SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME;
      v13 = MEMORY[0x277D85CD0];
      v14 = MEMORY[0x277D85CD0];
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __33__SOSKappaManager_initWithQueue___block_invoke;
      handler[3] = &unk_279B53E40;
      objc_copyWeak(&v19, buf);
      notify_register_dispatch(v12, &v8->_connectionRequestNotificationToken, v13, handler);

      [(SOSKappaManager *)v8 forceStartConnection];
      objc_destroyWeak(&v19);
      objc_destroyWeak(buf);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v16 = sos_default_log(v6);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_264323000, v16, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,missing SOSTriggerEntitlement", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

void __33__SOSKappaManager_initWithQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __33__SOSKappaManager_initWithQueue___block_invoke_2;
    block[3] = &unk_279B532A0;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void __33__SOSKappaManager_initWithQueue___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  state64 = 0;
  state = notify_get_state([*(a1 + 32) connectionRequestNotificationToken], &state64);
  v3 = sos_default_log(state);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v6 = SOSD_CONNECTION_REQUEST_NOTIFICATION_NAME;
    v7 = 2048;
    v8 = state64;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,handling %s,state,%lld", buf, 0x16u);
  }

  if (state64)
  {
    [*(a1 + 32) forceStartConnection];
  }
}

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
    [(NSXPCConnection *)self->_connection setInvalidationHandler:0];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:0];
    v4 = self->_connection;
    self->_connection = 0;
  }

  notify_cancel(self->_connectionRequestNotificationToken);
  v5.receiver = self;
  v5.super_class = SOSKappaManager;
  [(SOSKappaManager *)&v5 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = [(SOSKappaManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __31__SOSKappaManager_addObserver___block_invoke;
  v7[3] = &unk_279B53BA0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(serialQueue, v7);
}

void __31__SOSKappaManager_addObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 addObject:*(a1 + 40)];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  serialQueue = [(SOSKappaManager *)self serialQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__SOSKappaManager_removeObserver___block_invoke;
  v7[3] = &unk_279B53BA0;
  v7[4] = self;
  v8 = observerCopy;
  v6 = observerCopy;
  dispatch_async(serialQueue, v7);
}

void __34__SOSKappaManager_removeObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observers];
  [v2 removeObject:*(a1 + 40)];
}

- (void)triggerKappaWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  uUID = [MEMORY[0x277CCAD78] UUID];
  v5 = sos_default_log(uUID);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v13[5];
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_264323000, v5, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,Kappa triggered,%@", buf, 0xCu);
  }

  serialQueue = [(SOSKappaManager *)self serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke;
  block[3] = &unk_279B53EB8;
  v10 = completionCopy;
  v11 = &v12;
  block[4] = self;
  v8 = completionCopy;
  dispatch_async(serialQueue, block);

  _Block_object_dispose(&v12, 8);
}

void __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_2;
  v12[3] = &unk_279B53E68;
  v8 = *(a1 + 40);
  v3 = v8;
  v13 = v8;
  v4 = [v2 remoteObjectProxyWithErrorHandler:v12];
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(*(v6 + 8) + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_36;
  v9[3] = &unk_279B53E90;
  v11 = v6;
  v10 = v5;
  [v4 triggerSOSWithUUID:v7 triggerMechanism:7 completion:v9];
}

void __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_2_cold_1(a1, v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 3, 0);
  }
}

uint64_t __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_36(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a2 <= 6)
  {
    if (((1 << a2) & 0x5A) != 0)
    {
      v4 = sos_default_log(a1);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(*(a1 + 40) + 8) + 40);
        v18 = 67109378;
        *v19 = a2;
        *&v19[4] = 2112;
        *&v19[6] = v5;
        _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,failure response (%d) to Kappa trigger,%@", &v18, 0x12u);
      }

      v6 = *(*(a1 + 40) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = 0;
      goto LABEL_6;
    }

    if (a2 == 2)
    {
      v7 = +[SOSKappaManager currentSOSStatus];
      v12 = sos_default_log(v7);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(*(*(a1 + 40) + 8) + 40);
        v14 = [v7 uuid];
        v18 = 138412546;
        *v19 = v13;
        *&v19[8] = 2112;
        *&v19[10] = v14;
        _os_log_impl(&dword_264323000, v12, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,already active response to Kappa trigger,%@,active flow,%@", &v18, 0x16u);
      }

      v15 = [v7 uuid];
      v16 = *(*(a1 + 40) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      goto LABEL_6;
    }

    if (a2 == 5)
    {
      v7 = sos_default_log(a1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(*(*(a1 + 40) + 8) + 40);
        v18 = 138412290;
        *v19 = v9;
        v10 = "SOSKappaManager,successful response to Kappa trigger,%@,pushed to paired device";
LABEL_17:
        _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, v10, &v18, 0xCu);
        goto LABEL_6;
      }

      goto LABEL_6;
    }
  }

  if (!a2)
  {
    v7 = sos_default_log(a1);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 40) + 8) + 40);
      v18 = 138412290;
      *v19 = v11;
      v10 = "SOSKappaManager,successful response to Kappa trigger,%@";
      goto LABEL_17;
    }

LABEL_6:
  }

  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, a2, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

- (void)detectedAnomalyWithElectedDevice:(unint64_t)device completion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = sos_default_log(completionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    deviceCopy = device;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,anomaly detected,device,%d", buf, 8u);
  }

  if (device == 1)
  {
    serialQueue = [(SOSKappaManager *)self serialQueue];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke;
    v9[3] = &unk_279B53510;
    v9[4] = self;
    v10 = completionCopy;
    dispatch_async(serialQueue, v9);
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_2;
  v7[3] = &unk_279B53980;
  v8 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v7];
  v4 = [MEMORY[0x277CCAD78] UUID];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_39;
  v5[3] = &unk_279B53EE0;
  v6 = *(a1 + 40);
  [v3 triggerSOSWithUUID:v4 triggerMechanism:7 completion:v5];
}

void __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sos_default_log(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_2_cold_1(v3, v4);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 3);
  }
}

void __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_39(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2 == 5)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    LOWORD(v10[0]) = 0;
    v6 = "SOSKappaManager,successful response to anomaly detected on paired device";
    goto LABEL_7;
  }

  if (!a2)
  {
    if (!v5)
    {
      goto LABEL_11;
    }

    LOWORD(v10[0]) = 0;
    v6 = "SOSKappaManager,successful response to anomaly detected";
LABEL_7:
    v7 = v4;
    v8 = 2;
    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_11;
  }

  v10[0] = 67109120;
  v10[1] = a2;
  v6 = "SOSKappaManager,failure response to anomaly detected,%d";
  v7 = v4;
  v8 = 8;
LABEL_10:
  _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, v6, v10, v8);
LABEL_11:

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, [SOSKappaManager mapServerResponseToKappaResponse:a2]);
  }
}

- (void)setSendingLocationUpdate:(BOOL)update
{
  updateCopy = update;
  v6 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = updateCopy;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,sending location updates %d", v5, 8u);
  }
}

- (void)updateClientCurrentSOSInitiationState:(int64_t)state
{
  stateCopy = state;
  v6 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = stateCopy;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,initiation state updated to %d", v5, 8u);
  }
}

- (void)updateClientCurrentSOSInteractiveState:(int64_t)state
{
  stateCopy = state;
  v6 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = stateCopy;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,interactive state updated to %d", v5, 8u);
  }
}

- (void)updateClientCurrentSOSButtonPressState:(id)state
{
  v3 = sos_default_log(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,button press state updated", v4, 2u);
  }
}

- (void)dismissClientSOSWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = sos_default_log(completionCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,sos dismiss received", v5, 2u);
  }

  completionCopy[2](completionCopy, 1);
}

- (void)didDismissClientSOSBeforeSOSCall:(int64_t)call
{
  callCopy = call;
  v6 = *MEMORY[0x277D85DE8];
  v4 = sos_default_log(self);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = callCopy;
    _os_log_impl(&dword_264323000, v4, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,sos dismissal type is %d", v5, 8u);
  }
}

- (void)didUpdateSOSStatus:(id)status
{
  v11 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  serialQueue = [(SOSKappaManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  v7 = sos_default_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = statusCopy;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,receiving update to SOSStatus: %@", &v9, 0xCu);
  }

  v8 = [[SOSKappaStatus alloc] initWithSOSStatus:statusCopy];
  -[SOSKappaStatus setSosKappaState:](v8, "setSosKappaState:", +[SOSKappaManager mapSOSFlowStateToKappaState:](SOSKappaManager, "mapSOSFlowStateToKappaState:", [statusCopy flowState]));
  [(SOSKappaManager *)self updateObserversWithKappaStatus:v8];
}

- (void)updateObserversWithKappaStatus:(id)status
{
  v21 = *MEMORY[0x277D85DE8];
  statusCopy = status;
  isKappaFlow = [statusCopy isKappaFlow];
  v6 = isKappaFlow;
  v7 = sos_default_log(isKappaFlow);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      *buf = 138412290;
      v20 = statusCopy;
      _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,updating observers with status: %@", buf, 0xCu);
    }

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    observers = [(SOSKappaManager *)self observers];
    v7 = [observers copy];

    v10 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v14 + 1) + 8 * i) updatedSOSKappaStatus:statusCopy];
        }

        v11 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }
  }

  else if (v8)
  {
    *buf = 138412290;
    v20 = statusCopy;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,not a Kappa flow so not updating observers with status: %@", buf, 0xCu);
  }
}

- (void)setConnection:(id)connection
{
  connectionCopy = connection;
  serialQueue = [(SOSKappaManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  connection = self->_connection;
  p_connection = &self->_connection;
  connectionCopy2 = connection;
  if (connection != connectionCopy)
  {
    if (connectionCopy2)
    {
      [(NSXPCConnection *)connectionCopy2 invalidate];
      [(NSXPCConnection *)*p_connection setInvalidationHandler:0];
      [(NSXPCConnection *)*p_connection setInterruptionHandler:0];
    }

    objc_storeStrong(p_connection, connection);
  }
}

- (NSXPCConnection)connection
{
  serialQueue = [(SOSKappaManager *)self serialQueue];
  dispatch_assert_queue_V2(serialQueue);

  connection = self->_connection;
  if (!connection)
  {
    v5 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.sos" options:4096];
    v6 = self->_connection;
    self->_connection = v5;

    v7 = self->_connection;
    serialQueue2 = [(SOSKappaManager *)self serialQueue];
    [(NSXPCConnection *)v7 _setQueue:serialQueue2];

    v9 = self->_connection;
    v10 = SOSServerInterface();
    [(NSXPCConnection *)v9 setRemoteObjectInterface:v10];

    v11 = self->_connection;
    v12 = SOSClientInterface();
    [(NSXPCConnection *)v11 setExportedInterface:v12];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_7];
    objc_initWeak(&location, self);
    v14 = MEMORY[0x277D85DD0];
    v15 = 3221225472;
    v16 = __29__SOSKappaManager_connection__block_invoke_43;
    v17 = &unk_279B53930;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:&v14];
    [(NSXPCConnection *)self->_connection resume:v14];
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __29__SOSKappaManager_connection__block_invoke(uint64_t a1)
{
  v1 = sos_default_log(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_264323000, v1, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,SOS server connection interrupted", v2, 2u);
  }
}

void __29__SOSKappaManager_connection__block_invoke_43(uint64_t a1)
{
  v2 = sos_default_log(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_264323000, v2, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,SOS server connection invalidated", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__SOSKappaManager_connection__block_invoke_44;
  block[3] = &unk_279B53930;
  objc_copyWeak(&v6, (a1 + 32));
  dispatch_async(v4, block);

  objc_destroyWeak(&v6);
}

void __29__SOSKappaManager_connection__block_invoke_44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setConnection:0];
}

- (void)forceStartConnection
{
  objc_initWeak(&location, self);
  connection = [(SOSKappaManager *)self connection];
  v4 = [connection remoteObjectProxyWithErrorHandler:&__block_literal_global_46];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __39__SOSKappaManager_forceStartConnection__block_invoke_47;
  v5[3] = &unk_279B53F08;
  objc_copyWeak(&v6, &location);
  [v4 syncState:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __39__SOSKappaManager_forceStartConnection__block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = sos_default_log(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_264323000, v3, OS_LOG_TYPE_DEFAULT, "[WARN] SOSKappaManager,failed to send message on sosd launch due to error %@", &v4, 0xCu);
  }
}

void __39__SOSKappaManager_forceStartConnection__block_invoke_47(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [SOSKappaStatus alloc];
  v3 = +[SOSKappaManager currentSOSStatus];
  v4 = [(SOSKappaStatus *)v2 initWithSOSStatus:v3];

  v5 = [(SOSKappaStatus *)v4 sosStatus];
  -[SOSKappaStatus setSosKappaState:](v4, "setSosKappaState:", +[SOSKappaManager mapSOSFlowStateToKappaState:](SOSKappaManager, "mapSOSFlowStateToKappaState:", [v5 flowState]));

  v7 = sos_default_log(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_264323000, v7, OS_LOG_TYPE_DEFAULT, "SOSKappaManager,successfully connected to sosd with current SOSStatus: %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateObserversWithKappaStatus:v4];
}

+ (unint64_t)mapServerResponseToKappaResponse:(int64_t)response
{
  if ((response - 1) >= 6)
  {
    return 0;
  }

  else
  {
    return response;
  }
}

+ (int64_t)mapSOSFlowStateToKappaState:(int64_t)state
{
  if ((state - 1) >= 0xB)
  {
    return 0;
  }

  else
  {
    return state;
  }
}

void __46__SOSKappaManager_triggerKappaWithCompletion___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_264323000, log, OS_LOG_TYPE_ERROR, "SOSKappaManager,connection failure during Kappa trigger,%@,error,%@", &v4, 0x16u);
}

void __63__SOSKappaManager_detectedAnomalyWithElectedDevice_completion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_264323000, a2, OS_LOG_TYPE_ERROR, "SOSKappaManager,error from remoteObjectProxyWithErrorHandler: %@", &v2, 0xCu);
}

@end