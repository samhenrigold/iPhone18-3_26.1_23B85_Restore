@interface MCMResultWithContainersArrayBase
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultWithContainersArrayBase)initWithContainerPaths:(id)paths containerIdentities:(id)identities includePath:(BOOL)path clientIdentity:(id)identity skipSandboxExtensions:(BOOL)extensions;
- (MCMResultWithContainersArrayBase)initWithContainers:(id)containers includePath:(BOOL)path includeInfo:(BOOL)info includeUserManagedAssetsRelPath:(BOOL)relPath includeCreator:(BOOL)creator clientIdentity:(id)identity skipSandboxExtensions:(BOOL)extensions;
- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity;
- (void)_encodeContainerIdentitiesAndPathsOnXPCContainers:(id)containers;
- (void)_encodeContainersOnXPCContainers:(id)containers;
@end

@implementation MCMResultWithContainersArrayBase

- (id)_tokenForContainerPath:(id)path containerIdentity:(id)identity
{
  identityCopy = identity;
  pathCopy = path;
  v8 = [MCMSandboxExtension alloc];
  clientIdentity = [(MCMResultWithContainersArrayBase *)self clientIdentity];
  v10 = [(MCMSandboxExtension *)v8 initWithClientIdentity:clientIdentity containerPath:pathCopy containerIdentity:identityCopy];

  if (v10)
  {
    [(MCMSandboxExtension *)v10 setUseLegacyExtensionPolicy:1];
    [(MCMSandboxExtension *)v10 setUseProxiedClientForTarget:1];
    v11 = [(MCMSandboxExtension *)v10 tokenForPart:0 partDomain:0 error:0];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_encodeContainerIdentitiesAndPathsOnXPCContainers:(id)containers
{
  xarray = containers;
  containerIdentities = [(MCMResultWithContainersArrayBase *)self containerIdentities];

  if (containerIdentities)
  {
    containerIdentities2 = [(MCMResultWithContainersArrayBase *)self containerIdentities];
    v6 = [containerIdentities2 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        containerIdentities3 = [(MCMResultWithContainersArrayBase *)self containerIdentities];
        v9 = [containerIdentities3 objectAtIndexedSubscript:v7];

        containerPaths = [(MCMResultWithContainersArrayBase *)self containerPaths];
        v11 = [containerPaths objectAtIndexedSubscript:v7];

        v12 = xpc_dictionary_create(0, 0, 0);
        v13 = 0;
        if (![(MCMResultWithContainersArrayBase *)self skipSandboxExtensions])
        {
          v13 = [(MCMResultWithContainersArrayBase *)self _tokenForContainerPath:v11 containerIdentity:v9];
        }

        v14 = [MCMResultWithContainerBase alloc];
        uuid = [v9 uuid];
        v16 = [(MCMResultWithContainerBase *)v14 initWithContainerPath:v11 containerIdentity:v9 uuid:uuid sandboxToken:v13 includePath:[(MCMResultWithContainersArrayBase *)self includePath]];

        [(MCMResultWithContainerBase *)v16 encodeResultOntoReply:v12];
        xpc_array_append_value(xarray, v12);

        ++v7;
        containerIdentities4 = [(MCMResultWithContainersArrayBase *)self containerIdentities];
        v18 = [containerIdentities4 count];
      }

      while (v7 < v18);
    }
  }
}

- (void)_encodeContainersOnXPCContainers:(id)containers
{
  xarray = containers;
  containers = [(MCMResultWithContainersArrayBase *)self containers];

  if (containers)
  {
    containers2 = [(MCMResultWithContainersArrayBase *)self containers];
    v6 = [containers2 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        containers3 = [(MCMResultWithContainersArrayBase *)self containers];
        v9 = [containers3 objectAtIndexedSubscript:v7];

        v10 = xpc_dictionary_create(0, 0, 0);
        v11 = 0;
        if (![(MCMResultWithContainersArrayBase *)self skipSandboxExtensions])
        {
          containerPath = [v9 containerPath];
          containerIdentity = [v9 containerIdentity];
          v11 = [(MCMResultWithContainersArrayBase *)self _tokenForContainerPath:containerPath containerIdentity:containerIdentity];
        }

        v14 = [[MCMResultWithContainerBase alloc] initWithMetadata:v9 sandboxToken:v11 includePath:[(MCMResultWithContainersArrayBase *)self includePath] includeInfo:[(MCMResultWithContainersArrayBase *)self includeInfo] includeUserManagedAssetsRelPath:[(MCMResultWithContainersArrayBase *)self includeUserManagedAssetsRelPath] includeCreator:[(MCMResultWithContainersArrayBase *)self includeCreator]];
        [(MCMResultWithContainerBase *)v14 encodeResultOntoReply:v10];
        xpc_array_append_value(xarray, v10);

        ++v7;
        containers4 = [(MCMResultWithContainersArrayBase *)self containers];
        v16 = [containers4 count];
      }

      while (v7 < v16);
    }
  }
}

- (MCMResultWithContainersArrayBase)initWithContainers:(id)containers includePath:(BOOL)path includeInfo:(BOOL)info includeUserManagedAssetsRelPath:(BOOL)relPath includeCreator:(BOOL)creator clientIdentity:(id)identity skipSandboxExtensions:(BOOL)extensions
{
  v24 = *MEMORY[0x1E69E9840];
  containersCopy = containers;
  identityCopy = identity;
  v23.receiver = self;
  v23.super_class = MCMResultWithContainersArrayBase;
  v18 = [(MCMResultBase *)&v23 init];
  v19 = v18;
  if (v18)
  {
    containerPaths = v18->_containerPaths;
    v18->_containerPaths = 0;

    containerIdentities = v19->_containerIdentities;
    v19->_containerIdentities = 0;

    objc_storeStrong(&v19->_containers, containers);
    v19->_includePath = path;
    v19->_includeInfo = info;
    v19->_includeUserManagedAssetsRelPath = relPath;
    v19->_includeCreator = creator;
    objc_storeStrong(&v19->_clientIdentity, identity);
    v19->_skipSandboxExtensions = extensions;
  }

  return v19;
}

- (MCMResultWithContainersArrayBase)initWithContainerPaths:(id)paths containerIdentities:(id)identities includePath:(BOOL)path clientIdentity:(id)identity skipSandboxExtensions:(BOOL)extensions
{
  v21 = *MEMORY[0x1E69E9840];
  pathsCopy = paths;
  identitiesCopy = identities;
  identityCopy = identity;
  v20.receiver = self;
  v20.super_class = MCMResultWithContainersArrayBase;
  v16 = [(MCMResultBase *)&v20 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_containerPaths, paths);
    objc_storeStrong(&v17->_containerIdentities, identities);
    containers = v17->_containers;
    v17->_containers = 0;

    v17->_includePath = path;
    v17->_includeInfo = 0;
    v17->_includeUserManagedAssetsRelPath = 0;
    v17->_includeCreator = 0;
    objc_storeStrong(&v17->_clientIdentity, identity);
    v17->_skipSandboxExtensions = extensions;
  }

  return v17;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v10 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v9.receiver = self;
  v9.super_class = MCMResultWithContainersArrayBase;
  v5 = [(MCMResultBase *)&v9 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      v7 = xpc_array_create(0, 0);
      [(MCMResultWithContainersArrayBase *)self _encodeContainersOnXPCContainers:v7];
      [(MCMResultWithContainersArrayBase *)self _encodeContainerIdentitiesAndPathsOnXPCContainers:v7];
      xpc_dictionary_set_value(replyCopy, "ReplyContainersArray", v7);
    }
  }

  return v5;
}

@end