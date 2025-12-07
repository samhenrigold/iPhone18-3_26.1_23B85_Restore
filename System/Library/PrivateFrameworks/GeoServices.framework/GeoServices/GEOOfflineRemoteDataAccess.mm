@interface GEOOfflineRemoteDataAccess
- (GEOOfflineRemoteDataAccess)init;
- (void)_ensureConnection;
@end

@implementation GEOOfflineRemoteDataAccess

- (GEOOfflineRemoteDataAccess)init
{
  v6.receiver = self;
  v6.super_class = GEOOfflineRemoteDataAccess;
  v2 = [(GEOOfflineRemoteDataAccess *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_createdConnection.lock._os_unfair_lock_opaque = 0;
    v2->_createdConnection.didRun = 0;
    v4 = v2;
  }

  return v3;
}

void __47__GEOOfflineRemoteDataAccess__ensureConnection__block_invoke(uint64_t a1)
{
  global_queue = geo_get_global_queue();
  v2 = [GEOXPCConnection createServerConnectionFor:22 debugIdentifier:@"OfflineData" queue:global_queue eventHandler:0];
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
}

- (void)_ensureConnection
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __47__GEOOfflineRemoteDataAccess__ensureConnection__block_invoke;
  v2[3] = &unk_1E7071900;
  v2[4] = self;
  GEOOnce(&self->_createdConnection, v2);
}

@end