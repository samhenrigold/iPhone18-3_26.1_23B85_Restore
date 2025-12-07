@interface ESFolderSyncRequest
- (ESFolderSyncRequest)initWithFolder:(id)folder hasRemoteChanges:(BOOL)changes isInitialUberSync:(BOOL)sync;
- (id)description;
@end

@implementation ESFolderSyncRequest

- (ESFolderSyncRequest)initWithFolder:(id)folder hasRemoteChanges:(BOOL)changes isInitialUberSync:(BOOL)sync
{
  syncCopy = sync;
  changesCopy = changes;
  folderCopy = folder;
  v12.receiver = self;
  v12.super_class = ESFolderSyncRequest;
  v9 = [(ESFolderSyncRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(ESFolderSyncRequest *)v9 setFolder:folderCopy];
    [(ESFolderSyncRequest *)v10 setHasRemoteChanges:changesCopy];
    [(ESFolderSyncRequest *)v10 setIsInitialUberSync:syncCopy];
    [(ESFolderSyncRequest *)v10 setIsResyncAfterConnectionFailed:0];
    [(ESFolderSyncRequest *)v10 setIsResyncAfterServerError:0];
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  folder = [(ESFolderSyncRequest *)self folder];
  hasRemoteChanges = [(ESFolderSyncRequest *)self hasRemoteChanges];
  isInitialUberSync = [(ESFolderSyncRequest *)self isInitialUberSync];
  isResyncAfterConnectionFailed = [(ESFolderSyncRequest *)self isResyncAfterConnectionFailed];
  actions = [(ESFolderSyncRequest *)self actions];
  v10 = [v3 stringWithFormat:@"<%@: %p> { Folder %@, hasRemoteChanges: %d, isInitialUberSync %d isResyncAfterConnectionFailed %d actions %@ }", v4, self, folder, hasRemoteChanges, isInitialUberSync, isResyncAfterConnectionFailed, actions];

  return v10;
}

@end