@interface GCAdaptiveTriggersXPCProxyClientEndpointDescription
- (GCAdaptiveTriggersXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCAdaptiveTriggersXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialStatuses:(id)statuses;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCAdaptiveTriggersXPCProxyClientEndpointDescription

- (GCAdaptiveTriggersXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialStatuses:(id)statuses
{
  identifierCopy = identifier;
  statusesCopy = statuses;
  v12.receiver = self;
  v12.super_class = GCAdaptiveTriggersXPCProxyClientEndpointDescription;
  v8 = [(GCAdaptiveTriggersXPCProxyClientEndpointDescription *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_initialStatuses, statuses);
  }

  return v8;
}

- (GCAdaptiveTriggersXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = GCAdaptiveTriggersXPCProxyClientEndpointDescription;
  v5 = [(GCAdaptiveTriggersXPCProxyClientEndpointDescription *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"initialStatuses"];
    initialStatuses = v5->_initialStatuses;
    v5->_initialStatuses = v9;

    v12 = GCIPCObjectIdentifier_Classes(v11);
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  initialStatuses = self->_initialStatuses;
  coderCopy = coder;
  [coderCopy encodeObject:initialStatuses forKey:@"initialStatuses"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
}

- (id)materializeWithContext:(id)context
{
  contextCopy = context;
  v5 = contextCopy;
  materializedObject = self->_materializedObject;
  if (materializedObject)
  {
    goto LABEL_4;
  }

  iPCServiceRegistry = [contextCopy IPCServiceRegistry];
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB3948];

  if (v8)
  {
    adaptiveTriggersXPCProxyServiceRemoteServer = [v8 adaptiveTriggersXPCProxyServiceRemoteServer];
    v12 = [[GCAdaptiveTriggersXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialStatuses:self->_initialStatuses];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v12];

    v14 = dispatch_semaphore_create(0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __78__GCAdaptiveTriggersXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v23[3] = &unk_1E841AE08;
    v15 = v12;
    v24 = v15;
    v25 = v8;
    v26 = v14;
    v16 = v14;
    v17 = v8;
    [adaptiveTriggersXPCProxyServiceRemoteServer adaptiveTriggersXPCProxyServiceClientEndpointConnect:v15 reply:v23];
    v18 = dispatch_time(0, 1000000000);
    dispatch_semaphore_wait(v16, v18);
    v19 = self->_materializedObject;
    self->_materializedObject = v15;
    v20 = v15;

    materializedObject = self->_materializedObject;
LABEL_4:
    v21 = materializedObject;
    goto LABEL_5;
  }

  if (gc_isInternalBuild(v9, v10))
  {
    [GCBatteryXPCProxyClientEndpointDescription materializeWithContext:?];
  }

  v21 = 0;
LABEL_5:

  return v21;
}

intptr_t __78__GCAdaptiveTriggersXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 adaptiveTriggersXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

@end