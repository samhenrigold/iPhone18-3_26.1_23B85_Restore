@interface BYSettingsManagerClient
- (BOOL)hasStashedValuesOnDisk;
- (BYSettingsManagerClient)init;
- (void)_connectToDaemon;
@end

@implementation BYSettingsManagerClient

- (BYSettingsManagerClient)init
{
  v5.receiver = self;
  v5.super_class = BYSettingsManagerClient;
  v2 = [(BYSettingsManagerClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BYSettingsManagerClient *)v2 _connectToDaemon];
  }

  return v3;
}

- (BOOL)hasStashedValuesOnDisk
{
  connection = [(BYSettingsManagerClient *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_18];

  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__BYSettingsManagerClient_hasStashedValuesOnDisk__block_invoke_14;
  v5[3] = &unk_1E7D03218;
  v5[4] = &v6;
  [v3 hasStashedValuesOnDisk:v5];
  LOBYTE(connection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);

  return connection;
}

void __49__BYSettingsManagerClient_hasStashedValuesOnDisk__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _BYLoggingFacility(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v5)
  {
    if (_BYIsInternalInstall(v5, v6))
    {
      v7 = 0;
      v8 = v3;
    }

    else if (v3)
    {
      v9 = MEMORY[0x1E696AEC0];
      v2 = [v3 domain];
      v8 = [v9 stringWithFormat:@"<Error domain: %@, code %ld>", v2, objc_msgSend(v3, "code")];
      v7 = 1;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    *buf = 138543362;
    v11 = v8;
    _os_log_error_impl(&dword_1B862F000, v4, OS_LOG_TYPE_ERROR, "Unable to retrieve whether or not stashed values exist on disk: %{public}@", buf, 0xCu);
    if (v7)
    {
    }
  }
}

- (void)_connectToDaemon
{
  v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.purplebuddy.budd.settings.xpc" options:0];
  [(BYSettingsManagerClient *)self setConnection:v3];

  v4 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F30B4D58];
  connection = [(BYSettingsManagerClient *)self connection];
  [connection setRemoteObjectInterface:v4];

  connection2 = [(BYSettingsManagerClient *)self connection];
  [connection2 setInvalidationHandler:&__block_literal_global_67];

  connection3 = [(BYSettingsManagerClient *)self connection];
  [connection3 setInterruptionHandler:&__block_literal_global_70];

  connection4 = [(BYSettingsManagerClient *)self connection];
  [connection4 resume];
}

void __43__BYSettingsManagerClient__connectToDaemon__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = _BYLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __43__BYSettingsManagerClient__connectToDaemon__block_invoke_cold_1(v2);
  }
}

void __43__BYSettingsManagerClient__connectToDaemon__block_invoke_68(uint64_t a1, uint64_t a2)
{
  v2 = _BYLoggingFacility(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __43__BYSettingsManagerClient__connectToDaemon__block_invoke_68_cold_1(v2);
  }
}

@end