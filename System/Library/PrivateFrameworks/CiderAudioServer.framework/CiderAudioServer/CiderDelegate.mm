@interface CiderDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CiderDelegate)init;
@end

@implementation CiderDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v13 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  util::server_log(connectionCopy);
  v6 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "InCider.mm";
    v11 = 1024;
    v12 = 87;
    _os_log_impl(&dword_24348C000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d New XPC connection created", &v9, 0x12u);
  }

  [(util *)connectionCopy setExportedObject:self->mObject];
  v7 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_285637F70];
  [(util *)connectionCopy setExportedInterface:v7];

  [(util *)connectionCopy setInterruptionHandler:&__block_literal_global];
  [(util *)connectionCopy setInvalidationHandler:&__block_literal_global_63];
  [(util *)connectionCopy resume];

  return 1;
}

void __52__CiderDelegate_listener_shouldAcceptNewConnection___block_invoke_61(util *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  util::server_log(a1);
  v1 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "InCider.mm";
    v4 = 1024;
    v5 = 95;
    _os_log_impl(&dword_24348C000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Existing Cider XPC connection invalidated", &v2, 0x12u);
  }
}

void __52__CiderDelegate_listener_shouldAcceptNewConnection___block_invoke(util *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  util::server_log(a1);
  v1 = util::server_log(void)::sLogCat;
  if (os_log_type_enabled(util::server_log(void)::sLogCat, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 136315394;
    v3 = "InCider.mm";
    v4 = 1024;
    v5 = 92;
    _os_log_impl(&dword_24348C000, v1, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Existing Cider XPC connection interrupted", &v2, 0x12u);
  }
}

- (CiderDelegate)init
{
  v6.receiver = self;
  v6.super_class = CiderDelegate;
  v2 = [(CiderDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(CiderObject);
    mObject = v2->mObject;
    v2->mObject = v3;
  }

  return v2;
}

@end