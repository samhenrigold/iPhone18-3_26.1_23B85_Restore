@interface GCLightXPCProxyClientEndpointDescription
- (GCLightXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCLightXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialLight:(id)light;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCLightXPCProxyClientEndpointDescription

- (GCLightXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialLight:(id)light
{
  identifierCopy = identifier;
  lightCopy = light;
  v12.receiver = self;
  v12.super_class = GCLightXPCProxyClientEndpointDescription;
  v8 = [(GCLightXPCProxyClientEndpointDescription *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_initialLight, light);
  }

  return v8;
}

- (GCLightXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = GCLightXPCProxyClientEndpointDescription;
  v5 = [(GCLightXPCProxyClientEndpointDescription *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = GCIPCObjectIdentifier_Classes(v5);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initialLight"];
    initialLight = v6->_initialLight;
    v6->_initialLight = v10;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  initialLight = self->_initialLight;
  coderCopy = coder;
  [coderCopy encodeObject:initialLight forKey:@"initialLight"];
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
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB3588];

  if (v8)
  {
    lightXPCProxyServiceRemoteServer = [v8 lightXPCProxyServiceRemoteServer];
    v12 = [[GCLightXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialLight:self->_initialLight];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v12];

    v14 = dispatch_semaphore_create(0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __67__GCLightXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v23[3] = &unk_1E841A560;
    v15 = v12;
    v24 = v15;
    v25 = v8;
    v26 = v14;
    v16 = v14;
    v17 = v8;
    [lightXPCProxyServiceRemoteServer lightXPCProxyServiceClientEndpointConnect:v15 reply:v23];
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

intptr_t __67__GCLightXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 lightXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

@end