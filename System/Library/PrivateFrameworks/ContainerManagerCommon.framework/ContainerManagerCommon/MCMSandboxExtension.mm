@interface MCMSandboxExtension
- (BOOL)useLegacyExtensionPolicy;
- (BOOL)useProxiedClientForTarget;
- (MCMClientAuthorizes)clientIdentity;
- (MCMContainerConfiguration)containerConfig;
- (MCMContainerIdentityHasConfig)containerIdentity;
- (MCMContainerPathCanBeTransient)containerPath;
- (MCMEntitlements)entitlements;
- (MCMSandboxExtension)init;
- (MCMSandboxExtension)initWithClientIdentity:(id)identity containerPath:(id)path containerIdentity:(id)containerIdentity;
- (NSString)clientTeamIdentifier;
- (id)tokenForPart:(unint64_t)part partDomain:(id)domain error:(id *)error;
- (unint64_t)reason;
- (unint64_t)type;
- (void)setReason:(unint64_t)reason;
- (void)setType:(unint64_t)type;
- (void)setUseLegacyExtensionPolicy:(BOOL)policy;
- (void)setUseProxiedClientForTarget:(BOOL)target;
@end

@implementation MCMSandboxExtension

- (MCMClientAuthorizes)clientIdentity
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (BOOL)useProxiedClientForTarget
{
  v3 = OBJC_IVAR___MCMSandboxExtension_useProxiedClientForTarget;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setUseLegacyExtensionPolicy:(BOOL)policy
{
  v5 = OBJC_IVAR___MCMSandboxExtension_useLegacyExtensionPolicy;
  swift_beginAccess();
  *(self + v5) = policy;
}

- (void)setUseProxiedClientForTarget:(BOOL)target
{
  v5 = OBJC_IVAR___MCMSandboxExtension_useProxiedClientForTarget;
  swift_beginAccess();
  *(self + v5) = target;
}

- (id)tokenForPart:(unint64_t)part partDomain:(id)domain error:(id *)error
{
  if (domain)
  {
    v8 = sub_1DF3B0DCC();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  selfCopy = self;
  sub_1DF2CE5BC(part, v8, v10, error);
  v13 = v12;

  v10, v14, v15, v16, v17, v18, v19, v20;
  if (v13)
  {
    v21 = sub_1DF3B0DBC();
    v13, v22, v23, v24, v25, v26, v27, v28;
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (unint64_t)type
{
  v3 = OBJC_IVAR___MCMSandboxExtension_type;
  swift_beginAccess();
  return *(self + v3);
}

- (BOOL)useLegacyExtensionPolicy
{
  v3 = OBJC_IVAR___MCMSandboxExtension_useLegacyExtensionPolicy;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setReason:(unint64_t)reason
{
  v5 = OBJC_IVAR___MCMSandboxExtension_reason;
  swift_beginAccess();
  *(self + v5) = reason;
}

- (MCMContainerPathCanBeTransient)containerPath
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (MCMSandboxExtension)initWithClientIdentity:(id)identity containerPath:(id)path containerIdentity:(id)containerIdentity
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = sub_1DF2CDEF0(identity, path, containerIdentity);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v8;
}

- (MCMContainerIdentityHasConfig)containerIdentity
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (MCMContainerConfiguration)containerConfig
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (MCMEntitlements)entitlements
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (unint64_t)reason
{
  v3 = OBJC_IVAR___MCMSandboxExtension_reason;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setType:(unint64_t)type
{
  v5 = OBJC_IVAR___MCMSandboxExtension_type;
  swift_beginAccess();
  *(self + v5) = type;
}

- (NSString)clientTeamIdentifier
{
  v2 = *(self + OBJC_IVAR___MCMSandboxExtension_clientTeamIdentifier + 8);
  if (v2)
  {

    v3 = sub_1DF3B0DBC();
    v2, v4, v5, v6, v7, v8, v9, v10;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (MCMSandboxExtension)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end