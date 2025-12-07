@interface TKTokenDriverConfiguration
+ (NSDictionary)driverConfigurations;
+ (id)_connectionWithCTKDConnection:(id)connection;
+ (id)_driverConfigurationsWithConnection:(id)connection;
+ (id)driverConfigurationsWithCTKDConnection:(id)connection;
+ (id)driverConfigurationsWithClient:(id)client;
- (NSDictionary)tokenConfigurations;
- (TKTokenDriverConfiguration)initWithClassID:(id)d configurationConnection:(id)connection;
- (id)beginTransaction;
- (id)createTokenConfigurationWithInstanceID:(id)d persistent:(BOOL)persistent;
- (void)removeTokenConfigurationForTokenInstanceID:(TKTokenInstanceID)instanceID;
@end

@implementation TKTokenDriverConfiguration

+ (id)driverConfigurationsWithClient:(id)client
{
  ctkdConnection = [client ctkdConnection];
  v4 = [TKTokenDriverConfiguration _connectionWithCTKDConnection:ctkdConnection];

  v5 = [TKTokenDriverConfiguration _driverConfigurationsWithConnection:v4];

  return v5;
}

+ (id)driverConfigurationsWithCTKDConnection:(id)connection
{
  v3 = [TKTokenDriverConfiguration _connectionWithCTKDConnection:connection];
  v4 = [TKTokenDriverConfiguration _driverConfigurationsWithConnection:v3];

  return v4;
}

+ (NSDictionary)driverConfigurations
{
  if (driverConfigurations_onceToken != -1)
  {
    +[TKTokenDriverConfiguration driverConfigurations];
  }

  v3 = driverConfigurations_connection;

  return [self _driverConfigurationsWithConnection:v3];
}

uint64_t __50__TKTokenDriverConfiguration_driverConfigurations__block_invoke()
{
  driverConfigurations_connection = [TKTokenDriverConfiguration _connectionWithCTKDConnection:0];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_connectionWithCTKDConnection:(id)connection
{
  connectionCopy = connection;
  if (!connectionCopy)
  {
    connectionCopy = objc_alloc_init(TKCTKDConnection);
  }

  configurationEndpoint = [(TKCTKDConnection *)connectionCopy configurationEndpoint];
  if (configurationEndpoint)
  {
    v5 = [[TKTokenConfigurationConnection alloc] initWithEndpoint:configurationEndpoint];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_driverConfigurationsWithConnection:(id)connection
{
  connectionCopy = connection;
  if (connectionCopy)
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = __Block_byref_object_copy__2;
    v18 = __Block_byref_object_dispose__2;
    v19 = [MEMORY[0x1E695E0F8] mutableCopy];
    configurationProtocol = [connectionCopy configurationProtocol];
    v8 = MEMORY[0x1E69E9820];
    v9 = 3221225472;
    v10 = __66__TKTokenDriverConfiguration__driverConfigurationsWithConnection___block_invoke;
    v11 = &unk_1E86B75C0;
    v12 = connectionCopy;
    v13 = &v14;
    [configurationProtocol getClassIDsWithReply:&v8];

    v5 = [v15[5] copy];
    _Block_object_dispose(&v14, 8);
  }

  else
  {
    v6 = TK_LOG_tokencfg(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TKTokenDriverConfiguration _driverConfigurationsWithConnection:v6];
    }

    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

void __66__TKTokenDriverConfiguration__driverConfigurationsWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [[TKTokenDriverConfiguration alloc] initWithClassID:v8 configurationConnection:*(a1 + 32)];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v9 forKeyedSubscript:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }
}

- (TKTokenDriverConfiguration)initWithClassID:(id)d configurationConnection:(id)connection
{
  dCopy = d;
  connectionCopy = connection;
  v12.receiver = self;
  v12.super_class = TKTokenDriverConfiguration;
  v9 = [(TKTokenDriverConfiguration *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_classID, d);
    objc_storeStrong(&v10->_configurationConnection, connection);
  }

  return v10;
}

- (NSDictionary)tokenConfigurations
{
  v3 = [MEMORY[0x1E695E0F8] mutableCopy];
  configurationProtocol = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  classID = [(TKTokenDriverConfiguration *)self classID];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __49__TKTokenDriverConfiguration_tokenConfigurations__block_invoke;
  v12 = &unk_1E86B75E8;
  selfCopy = self;
  v14 = v3;
  v6 = v3;
  [configurationProtocol getTokenIDsForClassID:classID reply:&v9];

  v7 = [v6 copy];

  return v7;
}

void __49__TKTokenDriverConfiguration_tokenConfigurations__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [[TKTokenConfiguration alloc] initWithTokenID:v8 configurationConnection:*(*(a1 + 32) + 8)];
        v10 = *(a1 + 40);
        v11 = [v8 instanceID];
        [v10 setObject:v9 forKeyedSubscript:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (id)beginTransaction
{
  configurationProtocol = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  [configurationProtocol beginTransactionWithReply:&__block_literal_global_196];

  v4 = [[TKTokenConfigurationTransaction alloc] initWithConfigurationConnection:self->_configurationConnection];

  return v4;
}

- (id)createTokenConfigurationWithInstanceID:(id)d persistent:(BOOL)persistent
{
  persistentCopy = persistent;
  dCopy = d;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2;
  v20 = __Block_byref_object_dispose__2;
  v21 = 0;
  v7 = [[TKTokenID alloc] initWithClassID:self->_classID instanceID:dCopy];
  configurationProtocol = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80__TKTokenDriverConfiguration_createTokenConfigurationWithInstanceID_persistent___block_invoke;
  v12[3] = &unk_1E86B70D8;
  v15 = &v16;
  v9 = v7;
  v13 = v9;
  selfCopy = self;
  [configurationProtocol createTokenID:v9 persistent:persistentCopy reply:v12];

  v10 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v10;
}

uint64_t __80__TKTokenDriverConfiguration_createTokenConfigurationWithInstanceID_persistent___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [[TKTokenConfiguration alloc] initWithTokenID:a1[4] configurationConnection:*(a1[5] + 8)];

  return MEMORY[0x1EEE66BB8]();
}

- (void)removeTokenConfigurationForTokenInstanceID:(TKTokenInstanceID)instanceID
{
  v4 = instanceID;
  v6 = [[TKTokenID alloc] initWithClassID:self->_classID instanceID:v4];

  configurationProtocol = [(TKTokenConfigurationConnection *)self->_configurationConnection configurationProtocol];
  [configurationProtocol removeTokenID:v6 reply:&__block_literal_global_198];
}

@end