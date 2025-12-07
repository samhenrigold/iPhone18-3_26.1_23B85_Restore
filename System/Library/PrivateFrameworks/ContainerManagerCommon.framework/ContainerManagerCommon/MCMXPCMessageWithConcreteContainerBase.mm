@interface MCMXPCMessageWithConcreteContainerBase
- (MCMXPCMessageWithConcreteContainerBase)initWithConcreteContainer:(id)container context:(id)context;
- (MCMXPCMessageWithConcreteContainerBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageWithConcreteContainerBase

- (unsigned)disposition
{
  v7 = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = MCMXPCMessageWithConcreteContainerBase;
  disposition = [(MCMXPCMessageBase *)&v6 disposition];
  if (disposition == 1)
  {
    concreteContainerIdentity = [(MCMXPCMessageWithConcreteContainerBase *)self concreteContainerIdentity];
    disposition = [concreteContainerIdentity disposition];
  }

  return disposition;
}

- (MCMXPCMessageWithConcreteContainerBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  v22[0] = 1;
  v21.receiver = self;
  v21.super_class = MCMXPCMessageWithConcreteContainerBase;
  v10 = [(MCMXPCMessageBase *)&v21 initWithXPCObject:objectCopy context:contextCopy error:v22];
  if (v10)
  {
    v11 = xpc_dictionary_get_dictionary(objectCopy, "Container");
    v12 = container_xpc_decode_container_object();
    if (v12)
    {
      v13 = [MCMConcreteContainerIdentityForLibsystem alloc];
      clientIdentity = [contextCopy clientIdentity];
      userIdentity = [clientIdentity userIdentity];
      userIdentityCache = [contextCopy userIdentityCache];
      v17 = [(MCMConcreteContainerIdentityForLibsystem *)v13 initWithLibsystemContainer:v12 defaultUserIdentity:userIdentity userIdentityCache:userIdentityCache error:v22];
      concreteContainerIdentity = v10->_concreteContainerIdentity;
      v10->_concreteContainerIdentity = v17;

      if (v10->_concreteContainerIdentity)
      {
        v10->_includedPath = container_get_path() != 0;
        v19 = container_get_info();
        v10->_includedInfo = v19 != 0;

        v10->_includedUserManagedAssetsPath = container_get_user_managed_assets_relative_path() != 0;
        v10->_includedCreator = container_get_creator_codesign_identifier() != 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  if (v22[0] != 1)
  {

    v10 = 0;
    if (error)
    {
      *error = v22[0];
    }
  }

  MEMORY[0x1E12D3190](v12);

  return v10;
}

- (MCMXPCMessageWithConcreteContainerBase)initWithConcreteContainer:(id)container context:(id)context
{
  v12 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  v11.receiver = self;
  v11.super_class = MCMXPCMessageWithConcreteContainerBase;
  v8 = [(MCMXPCMessageBase *)&v11 initWithContext:context];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_concreteContainerIdentity, container);
  }

  return v9;
}

@end