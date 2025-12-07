@interface SMBFPClient
+ (id)locallyBuildFPDomain:(id)domain displayName:(id)name provider:(id)provider how:(int)how;
+ (id)locallyDestroyFPDomain:(id)domain provider:(id)provider;
+ (id)newClientForProvider:(id)provider;
- (id)fixupConnectionFor:(id)for;
@end

@implementation SMBFPClient

- (id)fixupConnectionFor:(id)for
{
  forCopy = for;
  v6 = objc_opt_new();
  v7 = OBJC_IVAR___LiveFSMountClient_helper;
  objc_storeStrong(&self->LiveFSMountClient_opaque[OBJC_IVAR___LiveFSMountClient_helper], v6);
  if (*&self->LiveFSMountClient_opaque[v7])
  {
    objc_storeStrong(&self->LiveFSMountClient_opaque[OBJC_IVAR___LiveFSMountClient_provider], for);
    [v6 setProviderName:forCopy];
    v8 = *&self->LiveFSMountClient_opaque[v7];
    v9 = OBJC_IVAR___LiveFSMountClient_conn;
    [*&self->LiveFSMountClient_opaque[OBJC_IVAR___LiveFSMountClient_conn] setExportedObject:v8];
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LiveFSMounterClient];
    [*&self->LiveFSMountClient_opaque[v9] setExportedInterface:v10];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

+ (id)newClientForProvider:(id)provider
{
  providerCopy = provider;
  v5 = [[self alloc] initWithProvider:providerCopy];

  return v5;
}

+ (id)locallyBuildFPDomain:(id)domain displayName:(id)name provider:(id)provider how:(int)how
{
  v6 = *&how;
  domainCopy = domain;
  nameCopy = name;
  providerCopy = provider;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_10002B0C8;
  v22 = sub_10002B0D8;
  v23 = 0;
  v12 = objc_opt_new();
  v13 = v12;
  if (v12)
  {
    [v12 setProviderName:providerCopy];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_10002B79C;
    v17[3] = &unk_10008DF18;
    v17[4] = &v18;
    [v13 createDomain:domainCopy displayName:nameCopy how:v6 storageName:domainCopy reply:v17];
    v14 = v19[5];
  }

  else
  {
    v14 = [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  }

  v15 = v14;

  _Block_object_dispose(&v18, 8);

  return v15;
}

+ (id)locallyDestroyFPDomain:(id)domain provider:(id)provider
{
  domainCopy = domain;
  providerCopy = provider;
  v7 = objc_opt_new();
  v8 = v7;
  if (v7)
  {
    [v7 setProviderName:providerCopy];
    [v8 destroyDomain:domainCopy];
  }

  else
  {
    [NSError errorWithDomain:NSPOSIXErrorDomain code:12 userInfo:0];
  }
  v9 = ;

  return v9;
}

@end