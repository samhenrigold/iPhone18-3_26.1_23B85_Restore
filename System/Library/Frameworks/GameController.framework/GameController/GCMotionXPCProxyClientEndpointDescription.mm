@interface GCMotionXPCProxyClientEndpointDescription
- (GCMotionXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCMotionXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialSensorsActive:(BOOL)active;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCMotionXPCProxyClientEndpointDescription

- (GCMotionXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialSensorsActive:(BOOL)active
{
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = GCMotionXPCProxyClientEndpointDescription;
  v7 = [(GCMotionXPCProxyClientEndpointDescription *)&v11 init];
  if (v7)
  {
    v8 = [identifierCopy copyWithZone:0];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    v7->_initialSensorsActive = active;
  }

  return v7;
}

- (GCMotionXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = GCMotionXPCProxyClientEndpointDescription;
  v5 = [(GCMotionXPCProxyClientEndpointDescription *)&v11 init];
  v6 = v5;
  if (v5)
  {
    v7 = GCIPCObjectIdentifier_Classes(v5);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v6->_initialSensorsActive = [coderCopy decodeBoolForKey:@"initialSensorsActive"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  initialSensorsActive = self->_initialSensorsActive;
  coderCopy = coder;
  [coderCopy encodeInteger:initialSensorsActive forKey:@"initialSensorsActive"];
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
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB2F58];

  if (v8)
  {
    motionXPCProxyServiceRemoteServer = [v8 motionXPCProxyServiceRemoteServer];
    v12 = [[GCMotionXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialSensorsActive:self->_initialSensorsActive];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v12];

    v14 = dispatch_semaphore_create(0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __68__GCMotionXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v23[3] = &unk_1E84196A0;
    v15 = v12;
    v24 = v15;
    v25 = v8;
    v26 = v14;
    v16 = v14;
    v17 = v8;
    [motionXPCProxyServiceRemoteServer motionXPCProxyServiceClientEndpointConnect:v15 reply:v23];
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

intptr_t __68__GCMotionXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 motionXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

@end