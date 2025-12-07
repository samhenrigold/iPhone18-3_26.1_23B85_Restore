@interface SBSUtils
+ (id)connectionWithExportedObject:(id)object;
+ (id)createProxyConnectionForRapportTarget:(id)target;
+ (id)createProxyConnectionForXPCWithExportedObject:(id)object connection:(id *)connection;
@end

@implementation SBSUtils

+ (id)createProxyConnectionForRapportTarget:(id)target
{
  targetCopy = target;
  v4 = [[SBSRemoteDeviceSender alloc] initWithDevice:targetCopy];

  return v4;
}

+ (id)connectionWithExportedObject:(id)object
{
  v13[2] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.soundboardservices.server" options:4096];
  v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCB3C8];
  [v4 setRemoteObjectInterface:v5];

  if (objectCopy)
  {
    v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287BCD1E0];
    [v4 setExportedInterface:v6];

    [v4 setExportedObject:objectCopy];
  }

  remoteObjectInterface = [v4 remoteObjectInterface];
  v8 = [remoteObjectInterface classesForSelector:sel_getAllSyncedAlarmsAndTimers_ argumentIndex:0 ofReply:1];
  v9 = [v8 mutableCopy];

  v13[0] = objc_opt_class();
  v13[1] = objc_opt_class();
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  [v9 addObjectsFromArray:v10];
  remoteObjectInterface2 = [v4 remoteObjectInterface];
  [remoteObjectInterface2 setClasses:v9 forSelector:sel_getAllSyncedAlarmsAndTimers_ argumentIndex:0 ofReply:1];

  [v4 setInterruptionHandler:&__block_literal_global_541];
  [v4 setInvalidationHandler:&__block_literal_global_158];
  [v4 resume];

  return v4;
}

void __41__SBSUtils_connectionWithExportedObject___block_invoke_156()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = _SBSLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "+[SBSUtils connectionWithExportedObject:]_block_invoke";
    _os_log_impl(&dword_26B246000, v0, OS_LOG_TYPE_DEFAULT, "%s - Connection to SoundBoard server was invalidated!\n", &v1, 0xCu);
  }
}

void __41__SBSUtils_connectionWithExportedObject___block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = _SBSLoggingFacility();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "+[SBSUtils connectionWithExportedObject:]_block_invoke";
    _os_log_impl(&dword_26B246000, v0, OS_LOG_TYPE_DEFAULT, "%s - Connection to SoundBoard server was interrupted!\n", &v1, 0xCu);
  }
}

+ (id)createProxyConnectionForXPCWithExportedObject:(id)object connection:(id *)connection
{
  v5 = [SBSUtils connectionWithExportedObject:object];
  if (connection)
  {
    objc_storeStrong(connection, v5);
  }

  remoteObjectProxy = [v5 remoteObjectProxy];

  return remoteObjectProxy;
}

@end