@interface HDTaskServerEndpoint
- (HDProfile)profile;
- (HDTaskServer)taskServer;
- (HDTaskServerDelegate)taskServerDelegate;
- (HDTaskServerEndpoint)initWithTaskServerClass:(Class)class taskConfiguration:(id)configuration healthStoreConfiguration:(id)storeConfiguration taskUUID:(id)d instanceUUID:(id)iD profile:(id)profile databaseAccessibilityAssertions:(id)assertions connectionQueue:(id)self0;
- (HDTaskServerEndpointDelegate)delegate;
- (_TtC12HealthDaemon29HDHealthStoreClientAssertions)databaseAccessibilityAssertions;
- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error;
- (void)connectionConfiguredForListener:(id)listener client:(id)client exportedObject:(id)object;
- (void)connectionInvalidatedForListener:(id)listener client:(id)client exportedObject:(id)object;
- (void)dealloc;
@end

@implementation HDTaskServerEndpoint

- (HDTaskServerEndpoint)initWithTaskServerClass:(Class)class taskConfiguration:(id)configuration healthStoreConfiguration:(id)storeConfiguration taskUUID:(id)d instanceUUID:(id)iD profile:(id)profile databaseAccessibilityAssertions:(id)assertions connectionQueue:(id)self0
{
  configurationCopy = configuration;
  storeConfigurationCopy = storeConfiguration;
  dCopy = d;
  iDCopy = iD;
  profileCopy = profile;
  assertionsCopy = assertions;
  queueCopy = queue;
  v46.receiver = self;
  v46.super_class = HDTaskServerEndpoint;
  v23 = [(HDTaskServerEndpoint *)&v46 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_taskServerClass, class);
    v25 = objc_msgSend_copy(dCopy);
    taskUUID = v24->_taskUUID;
    v24->_taskUUID = v25;

    v27 = objc_msgSend_copy(iDCopy);
    instanceUUID = v24->_instanceUUID;
    v24->_instanceUUID = v27;

    v29 = objc_msgSend_copy(configurationCopy);
    taskConfiguration = v24->_taskConfiguration;
    v24->_taskConfiguration = v29;

    v31 = objc_msgSend_copy(storeConfigurationCopy);
    healthStoreConfiguration = v24->_healthStoreConfiguration;
    v24->_healthStoreConfiguration = v31;

    objc_storeWeak(&v24->_profile, profileCopy);
    objc_storeWeak(&v24->_databaseAccessibilityAssertions, assertionsCopy);
    v44 = dCopy;
    v45 = profileCopy;
    v33 = configurationCopy;
    WeakRetained = objc_loadWeakRetained(&v24->_profile);
    [WeakRetained daemon];
    v36 = v35 = queueCopy;
    [v36 connectionManager];
    v37 = iDCopy;
    v39 = v38 = storeConfigurationCopy;
    v40 = NSStringFromClass(class);
    v41 = [v39 createAnonymousListenerWithLabel:v40];
    listener = v24->_listener;
    v24->_listener = v41;

    storeConfigurationCopy = v38;
    iDCopy = v37;

    queueCopy = v35;
    configurationCopy = v33;
    dCopy = v44;
    profileCopy = v45;
    [(HDXPCListener *)v24->_listener setConnectionQueue:queueCopy];
    [(HDXPCListener *)v24->_listener setDelegate:v24];
  }

  return v24;
}

- (void)dealloc
{
  [(HDTaskServerEndpoint *)self invalidate];
  v3.receiver = self;
  v3.super_class = HDTaskServerEndpoint;
  [(HDTaskServerEndpoint *)&v3 dealloc];
}

- (id)exportObjectForListener:(id)listener client:(id)client error:(id *)error
{
  clientCopy = client;
  delegate = [(HDTaskServerEndpoint *)self delegate];
  taskServerDelegate = [(HDTaskServerEndpoint *)self taskServerDelegate];
  v10 = [HDHealthStoreClient alloc];
  healthStoreConfiguration = self->_healthStoreConfiguration;
  WeakRetained = objc_loadWeakRetained(&self->_profile);
  v13 = objc_loadWeakRetained(&self->_databaseAccessibilityAssertions);
  v14 = [(HDHealthStoreClient *)v10 initWithXPCClient:clientCopy configuration:healthStoreConfiguration profile:WeakRetained databaseAccessibilityAssertions:v13];

  v15 = objc_opt_respondsToSelector();
  taskServerClass = self->_taskServerClass;
  if ((v15 & 1) == 0)
  {
    if (([(objc_class *)taskServerClass instancesRespondToSelector:sel_initWithUUID_configuration_client_delegate_]& 1) == 0)
    {
      goto LABEL_10;
    }

    v23 = [objc_alloc(self->_taskServerClass) initWithUUID:self->_taskUUID configuration:self->_taskConfiguration client:v14 delegate:taskServerDelegate];
    if (!v23)
    {
      goto LABEL_10;
    }

    v19 = v23;
    v21 = 0;
LABEL_9:
    objc_storeWeak(&self->_taskServer, v19);
    goto LABEL_17;
  }

  taskUUID = self->_taskUUID;
  taskConfiguration = self->_taskConfiguration;
  v31 = 0;
  v19 = [(objc_class *)taskServerClass createTaskServerWithUUID:taskUUID configuration:taskConfiguration client:v14 delegate:taskServerDelegate error:&v31];
  v20 = v31;
  v21 = v20;
  if (v19)
  {
    goto LABEL_9;
  }

  if (!v20)
  {
LABEL_10:
    v24 = MEMORY[0x277CCA9B8];
    v25 = self->_taskServerClass;
    uUIDString = [(NSUUID *)self->_taskUUID UUIDString];
    v27 = [v24 hk_error:124 format:{@"Failed to create %@ task server (%@)", v25, uUIDString}];
    if (v27)
    {
      v28 = v27;
      if (error)
      {
        v29 = v27;
        *error = v28;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v21 = 0;
    goto LABEL_16;
  }

  if (error)
  {
    v22 = v20;
    *error = v21;
  }

  else
  {
    _HKLogDroppedError();
  }

LABEL_16:
  [delegate taskServerDidFailToInitializeForUUID:self->_taskUUID];
  v19 = 0;
LABEL_17:

  return v19;
}

- (void)connectionConfiguredForListener:(id)listener client:(id)client exportedObject:(id)object
{
  objectCopy = object;
  profile = [(HDTaskServerEndpoint *)self profile];
  delegate = [(HDTaskServerEndpoint *)self delegate];
  v12 = objectCopy;
  daemon = [profile daemon];
  taskServerRegistry = [daemon taskServerRegistry];
  [taskServerRegistry didCreateTaskServer:v12];

  [delegate taskServerDidFinishInitialization:v12];
  daemon2 = [profile daemon];
  [daemon2 unitTest_taskServerDidInit:v12];
}

- (void)connectionInvalidatedForListener:(id)listener client:(id)client exportedObject:(id)object
{
  v16[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  profile = [(HDTaskServerEndpoint *)self profile];
  delegate = [(HDTaskServerEndpoint *)self delegate];
  v9 = objectCopy;
  [delegate taskServerDidInvalidate:v9];
  daemon = [profile daemon];
  taskServerRegistry = [daemon taskServerRegistry];
  [taskServerRegistry taskServerDidInvalidate:v9];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  taskUUID = self->_taskUUID;
  v15 = @"HDTaskServerUUIDKey";
  v16[0] = taskUUID;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  [defaultCenter postNotificationName:@"HDTaskServerDidInvalidateNotification" object:0 userInfo:v14];
}

- (HDProfile)profile
{
  WeakRetained = objc_loadWeakRetained(&self->_profile);

  return WeakRetained;
}

- (_TtC12HealthDaemon29HDHealthStoreClientAssertions)databaseAccessibilityAssertions
{
  WeakRetained = objc_loadWeakRetained(&self->_databaseAccessibilityAssertions);

  return WeakRetained;
}

- (HDTaskServer)taskServer
{
  WeakRetained = objc_loadWeakRetained(&self->_taskServer);

  return WeakRetained;
}

- (HDTaskServerEndpointDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HDTaskServerDelegate)taskServerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_taskServerDelegate);

  return WeakRetained;
}

@end