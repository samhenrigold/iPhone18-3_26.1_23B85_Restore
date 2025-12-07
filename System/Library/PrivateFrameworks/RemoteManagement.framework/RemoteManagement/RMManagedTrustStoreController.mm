@interface RMManagedTrustStoreController
+ (id)newManagedTrustStoreControllerProtocolForScope:(int64_t)scope personaID:(id)d;
- (BOOL)removeTrustForCertificateRef:(id)ref configurationKey:(id)key fullTrust:(BOOL)trust error:(id *)error;
- (BOOL)setTrustForCertificateRef:(id)ref configurationKey:(id)key fullTrust:(BOOL)trust error:(id *)error;
- (RMManagedTrustStoreController)initWithScope:(int64_t)scope personaID:(id)d;
@end

@implementation RMManagedTrustStoreController

+ (id)newManagedTrustStoreControllerProtocolForScope:(int64_t)scope personaID:(id)d
{
  dCopy = d;
  v6 = [[RMManagedTrustStoreController alloc] initWithScope:scope personaID:dCopy];

  return v6;
}

- (RMManagedTrustStoreController)initWithScope:(int64_t)scope personaID:(id)d
{
  dCopy = d;
  v12.receiver = self;
  v12.super_class = RMManagedTrustStoreController;
  v8 = [(RMManagedTrustStoreController *)&v12 init];
  v9 = v8;
  if (v8)
  {
    v8->_scope = scope == 1;
    objc_storeStrong(&v8->_personaID, d);
    v10 = +[RMLog managedTrustStoreController];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(RMManagedTrustStoreController *)dCopy initWithScope:scope personaID:v10];
    }
  }

  return v9;
}

- (BOOL)setTrustForCertificateRef:(id)ref configurationKey:(id)key fullTrust:(BOOL)trust error:(id *)error
{
  trustCopy = trust;
  keyCopy = key;
  refCopy = ref;
  v12 = +[_TtC16RemoteManagement19RMManagedTrustStore sharedInstance];
  scope = [(RMManagedTrustStoreController *)self scope];
  personaID = [(RMManagedTrustStoreController *)self personaID];
  LOBYTE(error) = [v12 setTrustForCertificateRef:refCopy configurationKey:keyCopy fullTrust:trustCopy scope:scope persona:personaID error:error];

  return error;
}

- (BOOL)removeTrustForCertificateRef:(id)ref configurationKey:(id)key fullTrust:(BOOL)trust error:(id *)error
{
  trustCopy = trust;
  keyCopy = key;
  refCopy = ref;
  v12 = +[_TtC16RemoteManagement19RMManagedTrustStore sharedInstance];
  scope = [(RMManagedTrustStoreController *)self scope];
  personaID = [(RMManagedTrustStoreController *)self personaID];
  LOBYTE(error) = [v12 removeTrustForCertificateRef:refCopy configurationKey:keyCopy fullTrust:trustCopy scope:scope persona:personaID error:error];

  return error;
}

- (void)initWithScope:(os_log_t)log personaID:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 134218242;
  v4 = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_debug_impl(&dword_1E1168000, log, OS_LOG_TYPE_DEBUG, "Created with scope: %ld personaID: %{public}@", &v3, 0x16u);
}

@end