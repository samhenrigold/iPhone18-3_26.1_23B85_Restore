@interface MCMCommandContext
+ (id)privileged;
+ (id)privilegedWithUserIdentity:(id)identity userIdentityCache:(id)cache;
- (MCMCommandContext)initWithClientIdentity:(id)identity containerCache:(id)cache containerFactory:(id)factory userIdentityCache:(id)identityCache clientFactory:(id)clientFactory kernelPersonaID:(unsigned int)d globalConfiguration:(id)configuration;
- (MCMCommandContext)initWithClientIdentity:(id)identity containerCache:(id)cache containerFactory:(id)factory userIdentityCache:(id)identityCache clientFactory:(id)clientFactory kernelPersonaID:(unsigned int)d globalConfiguration:(id)configuration classIterator:(id)self0;
@end

@implementation MCMCommandContext

- (MCMCommandContext)initWithClientIdentity:(id)identity containerCache:(id)cache containerFactory:(id)factory userIdentityCache:(id)identityCache clientFactory:(id)clientFactory kernelPersonaID:(unsigned int)d globalConfiguration:(id)configuration classIterator:(id)self0
{
  v28 = *MEMORY[0x1E69E9840];
  identityCopy = identity;
  cacheCopy = cache;
  factoryCopy = factory;
  identityCacheCopy = identityCache;
  clientFactoryCopy = clientFactory;
  configurationCopy = configuration;
  iteratorCopy = iterator;
  v27.receiver = self;
  v27.super_class = MCMCommandContext;
  v18 = [(MCMCommandContext *)&v27 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_clientIdentity, identity);
    objc_storeStrong(&v19->_containerCache, cache);
    objc_storeStrong(&v19->_containerFactory, factory);
    objc_storeStrong(&v19->_userIdentityCache, identityCache);
    objc_storeStrong(&v19->_clientFactory, clientFactory);
    v19->_kernelPersonaID = d;
    objc_storeStrong(&v19->_globalConfiguration, configuration);
    objc_storeStrong(&v19->_classIterator, iterator);
  }

  return v19;
}

- (MCMCommandContext)initWithClientIdentity:(id)identity containerCache:(id)cache containerFactory:(id)factory userIdentityCache:(id)identityCache clientFactory:(id)clientFactory kernelPersonaID:(unsigned int)d globalConfiguration:(id)configuration
{
  v9 = *&d;
  configurationCopy = configuration;
  clientFactoryCopy = clientFactory;
  identityCacheCopy = identityCache;
  factoryCopy = factory;
  cacheCopy = cache;
  identityCopy = identity;
  v22 = [MCMContainerClassIterator alloc];
  staticConfig = [configurationCopy staticConfig];
  v24 = [(MCMContainerClassIterator *)v22 initWithStaticConfig:staticConfig userIdentityCache:identityCacheCopy];

  v25 = [(MCMCommandContext *)self initWithClientIdentity:identityCopy containerCache:cacheCopy containerFactory:factoryCopy userIdentityCache:identityCacheCopy clientFactory:clientFactoryCopy kernelPersonaID:v9 globalConfiguration:configurationCopy classIterator:v24];
  return v25;
}

+ (id)privilegedWithUserIdentity:(id)identity userIdentityCache:(id)cache
{
  cacheCopy = cache;
  v6 = [MCMClientIdentity anonymousPrivilegedClientIdentityWithUserIdentity:identity];
  v7 = [MCMContainerFactory alloc];
  v8 = [(MCMContainerFactory *)v7 initWithContainerCache:gContainerCache clientIdentity:v6 userIdentityCache:cacheCopy];
  v9 = [MCMContainerClassIterator alloc];
  v10 = containermanager_copy_global_configuration();
  staticConfig = [v10 staticConfig];
  v12 = [(MCMContainerClassIterator *)v9 initWithStaticConfig:staticConfig userIdentityCache:cacheCopy];

  v13 = [MCMCommandContext alloc];
  v14 = gContainerCache;
  v15 = containermanager_copy_global_configuration();
  v16 = [(MCMCommandContext *)v13 initWithClientIdentity:v6 containerCache:v14 containerFactory:v8 userIdentityCache:cacheCopy clientFactory:0 kernelPersonaID:0 globalConfiguration:v15 classIterator:v12];

  return v16;
}

+ (id)privileged
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __31__MCMCommandContext_privileged__block_invoke;
  v4[3] = &__block_descriptor_40_e5_v8__0l;
  v4[4] = self;
  if (privileged_token != -1)
  {
    dispatch_once(&privileged_token, v4);
  }

  v2 = privileged_privilegedContext;

  return v2;
}

void __31__MCMCommandContext_privileged__block_invoke(uint64_t a1)
{
  v6 = +[MCMUserIdentitySharedCache sharedInstance];
  v2 = *(a1 + 32);
  v3 = [v6 defaultUserIdentity];
  v4 = [v2 privilegedWithUserIdentity:v3 userIdentityCache:v6];
  v5 = privileged_privilegedContext;
  privileged_privilegedContext = v4;
}

@end