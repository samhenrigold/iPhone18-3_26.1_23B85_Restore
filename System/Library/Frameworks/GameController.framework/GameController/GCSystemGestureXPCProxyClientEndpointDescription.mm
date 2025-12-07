@interface GCSystemGestureXPCProxyClientEndpointDescription
- (GCSystemGestureXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCSystemGestureXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier;
- (id)materializeWithContext:(id)context;
@end

@implementation GCSystemGestureXPCProxyClientEndpointDescription

- (GCSystemGestureXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = GCSystemGestureXPCProxyClientEndpointDescription;
  v5 = [(GCSystemGestureXPCProxyClientEndpointDescription *)&v9 init];
  if (v5)
  {
    v6 = [identifierCopy copyWithZone:0];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (GCSystemGestureXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GCSystemGestureXPCProxyClientEndpointDescription;
  v5 = [(GCSystemGestureXPCProxyClientEndpointDescription *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = GCIPCObjectIdentifier_Classes(v5);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v8;
  }

  return v6;
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
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB39A8];

  if (v8)
  {
    systemGestureXPCProxyServiceRemoteServer = [v8 systemGestureXPCProxyServiceRemoteServer];
    v12 = [[GCSystemGestureXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v12];

    v14 = dispatch_semaphore_create(0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __75__GCSystemGestureXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v23[3] = &unk_1E841B1B0;
    v15 = v12;
    v24 = v15;
    v25 = v8;
    v26 = v14;
    v16 = v14;
    v17 = v8;
    [systemGestureXPCProxyServiceRemoteServer systemGestureXPCProxyServiceClientEndpointConnect:v15 reply:v23];
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

intptr_t __75__GCSystemGestureXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 systemGestureXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

@end