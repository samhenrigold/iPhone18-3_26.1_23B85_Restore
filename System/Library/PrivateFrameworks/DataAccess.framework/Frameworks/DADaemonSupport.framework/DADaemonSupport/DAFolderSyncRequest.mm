@interface DAFolderSyncRequest
- (DAFolderSyncRequest)initWithFolder:(id)folder hasRemoteChanges:(BOOL)changes isInitialUberSync:(BOOL)sync;
- (id)description;
@end

@implementation DAFolderSyncRequest

- (DAFolderSyncRequest)initWithFolder:(id)folder hasRemoteChanges:(BOOL)changes isInitialUberSync:(BOOL)sync
{
  syncCopy = sync;
  changesCopy = changes;
  folderCopy = folder;
  v12.receiver = self;
  v12.super_class = DAFolderSyncRequest;
  v9 = [(DAFolderSyncRequest *)&v12 init];
  v10 = v9;
  if (v9)
  {
    [(DAFolderSyncRequest *)v9 setFolder:folderCopy];
    [(DAFolderSyncRequest *)v10 setHasRemoteChanges:changesCopy];
    [(DAFolderSyncRequest *)v10 setIsInitialUberSync:syncCopy];
    [(DAFolderSyncRequest *)v10 setIsResyncAfterConnectionFailed:0];
    [(DAFolderSyncRequest *)v10 setIsResyncAfterServerError:0];
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  folder = [(DAFolderSyncRequest *)self folder];
  hasRemoteChanges = [(DAFolderSyncRequest *)self hasRemoteChanges];
  isInitialUberSync = [(DAFolderSyncRequest *)self isInitialUberSync];
  isResyncAfterConnectionFailed = [(DAFolderSyncRequest *)self isResyncAfterConnectionFailed];
  actions = [(DAFolderSyncRequest *)self actions];
  v10 = [v3 stringWithFormat:@"<%@: %p> { Folder %@, hasRemoteChanges: %d, isInitialUberSync %d isResyncAfterConnectionFailed %d actions %@ }", v4, self, folder, hasRemoteChanges, isInitialUberSync, isResyncAfterConnectionFailed, actions];

  return v10;
}

@end