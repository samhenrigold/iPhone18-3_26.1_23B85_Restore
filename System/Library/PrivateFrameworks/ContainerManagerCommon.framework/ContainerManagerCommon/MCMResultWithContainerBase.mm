@interface MCMResultWithContainerBase
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultWithContainerBase)initWithContainerPath:(id)path containerIdentity:(id)identity uuid:(id)uuid sandboxToken:(id)token includePath:(BOOL)includePath;
- (MCMResultWithContainerBase)initWithMetadata:(id)metadata sandboxToken:(id)token includePath:(BOOL)path includeInfo:(BOOL)info includeUserManagedAssetsRelPath:(BOOL)relPath includeCreator:(BOOL)creator;
- (MCMResultWithContainerBase)initWithUUID:(id)d containerPathIdentifier:(id)identifier identifier:(id)a5 containerClass:(unint64_t)class POSIXUser:(id)user personaUniqueString:(id)string sandboxToken:(id)token existed:(BOOL)self0 url:(id)self1 info:(id)self2 transient:(BOOL)self3 userManagedAssetsRelPath:(id)self4 creator:(id)self5;
@end

@implementation MCMResultWithContainerBase

- (MCMResultWithContainerBase)initWithMetadata:(id)metadata sandboxToken:(id)token includePath:(BOOL)path includeInfo:(BOOL)info includeUserManagedAssetsRelPath:(BOOL)relPath includeCreator:(BOOL)creator
{
  creatorCopy = creator;
  relPathCopy = relPath;
  infoCopy = info;
  pathCopy = path;
  metadataCopy = metadata;
  tokenCopy = token;
  if (relPathCopy && [metadataCopy conformsToProtocol:&unk_1F5A81C70])
  {
    userManagedAssetsDirName = [metadataCopy userManagedAssetsDirName];
  }

  else
  {
    userManagedAssetsDirName = 0;
  }

  v31 = tokenCopy;
  if (creatorCopy && [metadataCopy conformsToProtocol:&unk_1F5A81C70])
  {
    creator = [metadataCopy creator];
  }

  else
  {
    creator = 0;
  }

  uuid = [metadataCopy uuid];
  containerPath = [metadataCopy containerPath];
  containerPathIdentifier = [containerPath containerPathIdentifier];
  identifier = [metadataCopy identifier];
  containerClass = [metadataCopy containerClass];
  userIdentity = [metadataCopy userIdentity];
  posixUser = [userIdentity posixUser];
  userIdentity2 = [metadataCopy userIdentity];
  personaUniqueString = [userIdentity2 personaUniqueString];
  existed = [metadataCopy existed];
  v30 = pathCopy;
  if (pathCopy)
  {
    containerPath2 = [metadataCopy containerPath];
    containerDataURL = [containerPath2 containerDataURL];
    if (!infoCopy)
    {
      goto LABEL_16;
    }
  }

  else
  {
    containerDataURL = 0;
    if (!infoCopy)
    {
      goto LABEL_16;
    }
  }

  if ([metadataCopy conformsToProtocol:&unk_1F5A81C70])
  {
    info = [metadataCopy info];
    infoCopy = 1;
    goto LABEL_17;
  }

  infoCopy = 0;
LABEL_16:
  info = 0;
LABEL_17:
  LOBYTE(v26) = [metadataCopy transient];
  LOBYTE(v25) = existed;
  v23 = [(MCMResultWithContainerBase *)self initWithUUID:uuid containerPathIdentifier:containerPathIdentifier identifier:identifier containerClass:containerClass POSIXUser:posixUser personaUniqueString:personaUniqueString sandboxToken:v31 existed:v25 url:containerDataURL info:info transient:v26 userManagedAssetsRelPath:userManagedAssetsDirName creator:creator];
  if (infoCopy)
  {
  }

  if (v30)
  {
  }

  return v23;
}

- (MCMResultWithContainerBase)initWithContainerPath:(id)path containerIdentity:(id)identity uuid:(id)uuid sandboxToken:(id)token includePath:(BOOL)includePath
{
  includePathCopy = includePath;
  pathCopy = path;
  tokenCopy = token;
  uuidCopy = uuid;
  identityCopy = identity;
  containerClassPath = [pathCopy containerClassPath];
  userIdentity = [containerClassPath userIdentity];
  containerPathIdentifier = [pathCopy containerPathIdentifier];
  identifier = [identityCopy identifier];

  containerClass = [containerClassPath containerClass];
  posixUser = [userIdentity posixUser];
  personaUniqueString = [userIdentity personaUniqueString];
  exists = [pathCopy exists];
  v24 = includePathCopy;
  if (includePathCopy)
  {
    containerDataURL = [pathCopy containerDataURL];
  }

  else
  {
    containerDataURL = 0;
  }

  LOBYTE(v23) = [pathCopy transient];
  LOBYTE(v22) = exists;
  v20 = [(MCMResultWithContainerBase *)self initWithUUID:uuidCopy containerPathIdentifier:containerPathIdentifier identifier:identifier containerClass:containerClass POSIXUser:posixUser personaUniqueString:personaUniqueString sandboxToken:tokenCopy existed:v22 url:containerDataURL info:0 transient:v23 userManagedAssetsRelPath:0 creator:0];

  if (v24)
  {
  }

  return v20;
}

- (MCMResultWithContainerBase)initWithUUID:(id)d containerPathIdentifier:(id)identifier identifier:(id)a5 containerClass:(unint64_t)class POSIXUser:(id)user personaUniqueString:(id)string sandboxToken:(id)token existed:(BOOL)self0 url:(id)self1 info:(id)self2 transient:(BOOL)self3 userManagedAssetsRelPath:(id)self4 creator:(id)self5
{
  v38 = *MEMORY[0x1E69E9840];
  dCopy = d;
  obj = identifier;
  identifierCopy = identifier;
  v28 = a5;
  v32 = a5;
  userCopy = user;
  stringCopy = string;
  tokenCopy = token;
  urlCopy = url;
  infoCopy = info;
  pathCopy = path;
  creatorCopy = creator;
  v37.receiver = self;
  v37.super_class = MCMResultWithContainerBase;
  v24 = [(MCMResultBase *)&v37 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_uuid, d);
    v25->_existed = existed;
    objc_storeStrong(&v25->_containerPathIdentifier, obj);
    objc_storeStrong(&v25->_identifier, v28);
    v25->_containerClass = class;
    objc_storeStrong(&v25->_posixUser, user);
    objc_storeStrong(&v25->_personaUniqueString, string);
    objc_storeStrong(&v25->_sandboxToken, token);
    objc_storeStrong(&v25->_url, url);
    objc_storeStrong(&v25->_info, info);
    v25->_transient = transient;
    objc_storeStrong(&v25->_userManagedAssetsRelPath, path);
    objc_storeStrong(&v25->_creator, creator);
  }

  return v25;
}

- (BOOL)encodeResultOntoReply:(id)reply
{
  v26[2] = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v25.receiver = self;
  v25.super_class = MCMResultWithContainerBase;
  v5 = [(MCMResultBase *)&v25 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      v24 = xpc_dictionary_create(0, 0, 0);
      v7 = [(MCMResultWithContainerBase *)self url];

      if (v7)
      {
        v8 = [(MCMResultWithContainerBase *)self url];
        [v8 fileSystemRepresentation];
      }

      info = [(MCMResultWithContainerBase *)self info];

      if (info)
      {
        info2 = [(MCMResultWithContainerBase *)self info];
        v11 = _CFXPCCreateXPCObjectFromCFObject();
      }

      else
      {
        v11 = 0;
      }

      userManagedAssetsRelPath = [(MCMResultWithContainerBase *)self userManagedAssetsRelPath];

      if (userManagedAssetsRelPath)
      {
        userManagedAssetsRelPath2 = [(MCMResultWithContainerBase *)self userManagedAssetsRelPath];
        [userManagedAssetsRelPath2 UTF8String];
      }

      creator = [(MCMResultWithContainerBase *)self creator];

      if (creator)
      {
        creator2 = [(MCMResultWithContainerBase *)self creator];
        [creator2 UTF8String];
      }

      [(MCMResultWithContainerBase *)self existed];
      sandboxToken = [(MCMResultWithContainerBase *)self sandboxToken];
      [sandboxToken UTF8String];
      [(MCMResultWithContainerBase *)self transient];
      v23 = v11;
      container_xpc_encode_container_metadata_as_object();

      v26[0] = 0;
      v26[1] = 0;
      uuid = [(MCMResultWithContainerBase *)self uuid];
      [uuid getUUIDBytes:v26];

      identifier = [(MCMResultWithContainerBase *)self identifier];
      [identifier UTF8String];
      [(MCMResultWithContainerBase *)self containerClass];
      posixUser = [(MCMResultWithContainerBase *)self posixUser];
      [posixUser UID];
      containerPathIdentifier = [(MCMResultWithContainerBase *)self containerPathIdentifier];
      [containerPathIdentifier UTF8String];
      personaUniqueString = [(MCMResultWithContainerBase *)self personaUniqueString];
      [personaUniqueString UTF8String];
      container_xpc_encode_container_as_object();
    }
  }

  return v5;
}

@end