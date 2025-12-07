@interface NADWorkspaceConnection
- (NADWorkspaceConnection)initWithApplicationStore:(id)store;
- (void)getWorkspaceInfoIncludingHiddenApps:(BOOL)apps completion:(id)completion;
@end

@implementation NADWorkspaceConnection

- (NADWorkspaceConnection)initWithApplicationStore:(id)store
{
  storeCopy = store;
  v9.receiver = self;
  v9.super_class = NADWorkspaceConnection;
  v6 = [(NADWorkspaceConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_applicationStore, store);
  }

  return v7;
}

- (void)getWorkspaceInfoIncludingHiddenApps:(BOOL)apps completion:(id)completion
{
  appsCopy = apps;
  completionCopy = completion;
  applicationStore = [(NADWorkspaceConnection *)self applicationStore];
  v15 = 0;
  v16 = 0;
  v14 = 0;
  [applicationStore getAllApplications:&v16 UUID:&v15 sequenceNumber:&v14 includeHidden:appsCopy];
  v8 = v15;
  v9 = v16;
  v10 = v14;
  v11 = v8;
  v12 = v9;

  v13 = [[NARWorkspaceInfo alloc] initWithApplications:v12 UUID:v11 sequenceNumber:v10];
  completionCopy[2](completionCopy, v13);
}

@end