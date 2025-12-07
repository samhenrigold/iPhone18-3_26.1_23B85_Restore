@interface MCMManagedUserPathRegistry
- (MCMManagedUserPathRegistry)initWithUserIdentity:(id)identity daemonUser:(id)user;
- (void)_initPathPropertiesWithUserIdentity:(id)identity;
@end

@implementation MCMManagedUserPathRegistry

- (void)_initPathPropertiesWithUserIdentity:(id)identity
{
  identityCopy = identity;
  homeDirectoryURL = [identityCopy homeDirectoryURL];
  posixUser = [identityCopy posixUser];
  v6 = [[MCMManagedPath alloc] initWithURL:homeDirectoryURL flags:0 ACLConfig:0 mode:493 dpClass:0xFFFFFFFFLL owner:posixUser parent:0];
  userHome = self->_userHome;
  self->_userHome = v6;

  v8 = [(MCMManagedPath *)self->_userHome managedPathByAppendingPathComponent:@"Library" flags:2 ACLConfig:2 mode:493 dpClass:0xFFFFFFFFLL owner:posixUser];
  userLibrary = self->_userLibrary;
  self->_userLibrary = v8;

  if ([identityCopy isDataSeparated])
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  v11 = [(MCMManagedPath *)self->_userLibrary managedPathByAppendingPathComponent:@"Caches" flags:v10 ACLConfig:2 mode:493 dpClass:0xFFFFFFFFLL owner:posixUser];
  userCaches = self->_userCaches;
  self->_userCaches = v11;

  v13 = [(MCMManagedPath *)self->_userCaches managedPathByAppendingPathComponent:@"com.apple.containermanagerd" flags:3 ACLConfig:1 mode:493 dpClass:4 owner:posixUser];
  containermanagerUserCaches = self->_containermanagerUserCaches;
  self->_containermanagerUserCaches = v13;

  v15 = [(MCMManagedPath *)self->_containermanagerUserCaches managedPathByAppendingPathComponent:@"Dead" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:posixUser];
  containermanagerUserDeathrow = self->_containermanagerUserDeathrow;
  self->_containermanagerUserDeathrow = v15;

  containermanagerUserLibrary = self->_containermanagerUserLibrary;
  self->_containermanagerUserLibrary = 0;

  containermanagerUserPendingUpdates = self->_containermanagerUserPendingUpdates;
  self->_containermanagerUserPendingUpdates = 0;

  containermanagerUserReplaceOperations = self->_containermanagerUserReplaceOperations;
  self->_containermanagerUserReplaceOperations = 0;

  containermanagerUserDeleteOperations = self->_containermanagerUserDeleteOperations;
  self->_containermanagerUserDeleteOperations = 0;

  isDataSeparated = [identityCopy isDataSeparated];
  if ((isDataSeparated & 1) == 0)
  {
    v22 = [(MCMManagedPath *)self->_userLibrary managedPathByAppendingPathComponent:@"MobileContainerManager" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:posixUser];
    v23 = self->_containermanagerUserLibrary;
    self->_containermanagerUserLibrary = v22;

    v24 = [(MCMManagedPath *)self->_containermanagerUserLibrary managedPathByAppendingPathComponent:@"PendingUpdates" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:posixUser];
    v25 = self->_containermanagerUserPendingUpdates;
    self->_containermanagerUserPendingUpdates = v24;

    v26 = [(MCMManagedPath *)self->_containermanagerUserLibrary managedPathByAppendingPathComponent:@"Replace" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:posixUser];
    v27 = self->_containermanagerUserReplaceOperations;
    self->_containermanagerUserReplaceOperations = v26;

    v28 = [(MCMManagedPath *)self->_containermanagerUserLibrary managedPathByAppendingPathComponent:@"Delete" flags:7 ACLConfig:1 mode:493 dpClass:4 owner:posixUser];
    v29 = self->_containermanagerUserDeleteOperations;
    self->_containermanagerUserDeleteOperations = v28;
  }
}

- (MCMManagedUserPathRegistry)initWithUserIdentity:(id)identity daemonUser:(id)user
{
  v18[5] = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  v16.receiver = self;
  v16.super_class = MCMManagedUserPathRegistry;
  v8 = [(MCMManagedPathRegistry *)&v16 initWithDaemonUser:user privileged:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_userIdentity, identity);
    [(MCMManagedUserPathRegistry *)v9 _initPathPropertiesWithUserIdentity:identityCopy];
    v18[0] = v9->_userHome;
    v18[1] = v9->_userLibrary;
    v18[2] = v9->_userCaches;
    v18[3] = v9->_containermanagerUserCaches;
    v18[4] = v9->_containermanagerUserDeathrow;
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
    [(MCMManagedPathRegistry *)v9 _addPaths:v10];

    if (v9->_containermanagerUserLibrary)
    {
      containermanagerUserPendingUpdates = v9->_containermanagerUserPendingUpdates;
      if (containermanagerUserPendingUpdates)
      {
        containermanagerUserReplaceOperations = v9->_containermanagerUserReplaceOperations;
        if (containermanagerUserReplaceOperations)
        {
          containermanagerUserDeleteOperations = v9->_containermanagerUserDeleteOperations;
          if (containermanagerUserDeleteOperations)
          {
            v17[0] = v9->_containermanagerUserLibrary;
            v17[1] = containermanagerUserPendingUpdates;
            v17[2] = containermanagerUserReplaceOperations;
            v17[3] = containermanagerUserDeleteOperations;
            v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:4];
            [(MCMManagedPathRegistry *)v9 _addPaths:v14];
          }
        }
      }
    }
  }

  return v9;
}

@end