@interface GCSettingsXPCProxyClientEndpointDescription
- (GCSettingsXPCProxyClientEndpointDescription)initWithCoder:(id)coder;
- (GCSettingsXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile;
- (id)materializeWithContext:(id)context;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCSettingsXPCProxyClientEndpointDescription

- (GCSettingsXPCProxyClientEndpointDescription)initWithIdentifier:(id)identifier initialValueForProfile:(id)profile
{
  identifierCopy = identifier;
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = GCSettingsXPCProxyClientEndpointDescription;
  v8 = [(GCSettingsXPCProxyClientEndpointDescription *)&v12 init];
  if (v8)
  {
    v9 = [identifierCopy copyWithZone:0];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    objc_storeStrong(&v8->_initialProfile, profile);
  }

  return v8;
}

- (GCSettingsXPCProxyClientEndpointDescription)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = GCSettingsXPCProxyClientEndpointDescription;
  v5 = [(GCSettingsXPCProxyClientEndpointDescription *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = GCIPCObjectIdentifier_Classes(v5);
    v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"identifier"];
    identifier = v6->_identifier;
    v6->_identifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_initialProfile"];
    initialProfile = v6->_initialProfile;
    v6->_initialProfile = v10;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_initialProfile forKey:@"_initialProfile"];
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
  v8 = [iPCServiceRegistry serviceClientForIPCService:&unk_1F4EB3828];

  if (v8)
  {
    settingsXPCProxyServiceRemoteServer = [v8 settingsXPCProxyServiceRemoteServer];
    v12 = [[GCSettingsXPCProxyClientEndpoint alloc] initWithIdentifier:self->_identifier initialValueForProfile:self->_initialProfile];
    iPCObjectRegistry = [v5 IPCObjectRegistry];
    [iPCObjectRegistry registerIPCObject:v12];

    v14 = dispatch_semaphore_create(0);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__GCSettingsXPCProxyClientEndpointDescription_materializeWithContext___block_invoke;
    v23[3] = &unk_1E841A8D0;
    v15 = v12;
    v24 = v15;
    v25 = v8;
    v26 = v14;
    v16 = v14;
    v17 = v8;
    [settingsXPCProxyServiceRemoteServer settingsXPCProxyServiceClientEndpointConnect:v15 reply:v23];
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
    [GCSettingsXPCProxyClientEndpointDescription materializeWithContext:?];
  }

  v21 = 0;
LABEL_5:

  return v21;
}

intptr_t __70__GCSettingsXPCProxyClientEndpointDescription_materializeWithContext___block_invoke(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 settingsXPCProxyServiceConnection];
  [v3 setRemoteEndpoint:v5 connection:v6];

  v7 = a1[6];

  return dispatch_semaphore_signal(v7);
}

- (void)materializeWithContext:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = getGCLogger(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_debug_impl(&dword_1D2CD5000, v2, OS_LOG_TYPE_DEBUG, "Materialization failure - Service not present: %@", &v3, 0xCu);
  }
}

@end