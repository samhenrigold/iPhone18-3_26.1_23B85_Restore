@interface GEOTileRequester
- (GEOResourceManifestManager)resourceManifestManager;
- (GEOTileRequesterDelegate)delegate;
- (void)tearDown;
@end

@implementation GEOTileRequester

- (GEOResourceManifestManager)resourceManifestManager
{
  tileRequest = [(GEOTileRequester *)self tileRequest];
  manifestConfiguration = [tileRequest manifestConfiguration];
  v4 = [GEOResourceManifestManager modernManagerForConfiguration:manifestConfiguration];

  return v4;
}

- (GEOTileRequesterDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)tearDown
{
  delegateQueue = self->_delegateQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__GEOTileRequester_tearDown__block_invoke;
  block[3] = &unk_1E7071900;
  block[4] = self;
  dispatch_async(delegateQueue, block);
}

@end