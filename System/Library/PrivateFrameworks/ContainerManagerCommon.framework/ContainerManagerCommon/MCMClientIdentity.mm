@interface MCMClientIdentity
+ (id)anonymousPrivilegedClientIdentityWithUserIdentity:(id)identity;
+ (id)privilegedClientIdentityWithUserIdentity:(id)identity kernel:(BOOL)kernel;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isAllowedToAccessCodesignMapping;
- (BOOL)isAllowedToAccessInfoMetadata;
- (BOOL)isAllowedToAccessUserAssets;
- (BOOL)isAllowedToChangeReferences;
- (BOOL)isAllowedToCheckAuthorization;
- (BOOL)isAllowedToControlCaches;
- (BOOL)isAllowedToDelete;
- (BOOL)isAllowedToReadReferences;
- (BOOL)isAllowedToRecreateContainerStructure;
- (BOOL)isAllowedToRegenerateDirectoryUUIDs;
- (BOOL)isAllowedToReplaceContainers;
- (BOOL)isAllowedToRestoreContainer;
- (BOOL)isAllowedToSetDataProtection;
- (BOOL)isAllowedToStageSharedContent;
- (BOOL)isAllowedToStartDataMigration;
- (BOOL)isAllowedToStartUserDataMigration;
- (BOOL)isAllowedToTest;
- (MCMAllowsOperation)entitlementAllowance;
- (MCMClientHasEntitlementsAllowingOperation)proximateClient;
- (MCMClientIdentity)init;
- (MCMClientIdentity)initWithPOSIXUser:(id)user POSIXPID:(int)d platform:(unsigned int)platform userIdentity:(id)identity proximateClient:(id)client auditToken:(id *)token codeSignInfo:(id)info sandboxed:(BOOL)self0 sandboxContainerURL:(id)self1 testClient:(BOOL)self2 kernel:(BOOL)self3;
- (NSString)description;
- (container_client)createLibsystemClient;
- (id)clientIdentityByChangingCached:(BOOL)cached;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initInternal;
- (id)shortDescription;
- (unint64_t)isAllowedToPerformOperationType:(unint64_t)type containerIdentity:(id)identity part:(unint64_t)part partDomain:(id)domain access:(unint64_t)access;
- (unint64_t)isAllowedToPerformOperationType:(unint64_t)type forAllContainersOfContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain access:(unint64_t)access;
@end

@implementation MCMClientIdentity

- (id)initInternal
{
  v4 = *MEMORY[0x1E69E9840];
  v3.receiver = self;
  v3.super_class = MCMClientIdentity;
  return [(MCMClientIdentity *)&v3 init];
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self[2].var0[6];
  *retstr->var0 = *&self[2].var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (MCMClientHasEntitlementsAllowingOperation)proximateClient
{
  if (self->_proximateClient)
  {
    self = self->_proximateClient;
  }

  return self;
}

- (MCMAllowsOperation)entitlementAllowance
{
  codeSignInfo = self->_codeSignInfo;

  return [(MCMClientCodeSignInfo *)codeSignInfo entitlements];
}

- (id)shortDescription
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__MCMClientIdentity_shortDescription__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __37__MCMClientIdentity_shortDescription__block_invoke(uint64_t a1, int a2)
{
  v44 = MEMORY[0x1E696AEC0];
  v49 = [*(a1 + 32) codeSignInfo];
  v4 = [v49 identifier];
  v5 = v4;
  v6 = v4;
  if (a2)
  {
    v6 = [v4 redactedDescription];
  }

  v7 = *(a1 + 32);
  v8 = v7[2];
  v46 = v8;
  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v32 = [v8 codeSignInfo];
    v31 = [v32 identifier];
    v51 = [v9 stringWithFormat:@"(%@)", v31];
    v7 = *(a1 + 32);
  }

  else
  {
    v51 = &stru_1F5A5B2B8;
  }

  v45 = [v7 codeSignInfo];
  v10 = [v45 teamIdentifier];
  v11 = v10;
  v47 = v6;
  v43 = v10;
  if (a2)
  {
    v12 = [v10 redactedDescription];
    v41 = [*(a1 + 32) userIdentity];
    v30 = [v41 shortDescription];
    v50 = [v30 redactedDescription];
    v40 = v12;
    v42 = v12;
  }

  else
  {
    v42 = [*(a1 + 32) userIdentity];
    [v42 shortDescription];
    v50 = v40 = v11;
    v41 = v50;
  }

  v48 = v5;
  v39 = [*(a1 + 32) posixUser];
  v37 = [v39 UID];
  v36 = [*(a1 + 32) posixPID];
  v35 = [*(a1 + 32) isSandboxed];
  v34 = [*(a1 + 32) platform];
  v38 = [*(a1 + 32) codeSignInfo];
  v33 = [v38 isSigned];
  v13 = [*(a1 + 32) codeSignInfo];
  v14 = [v13 isSignatureValid];
  v15 = [*(a1 + 32) codeSignInfo];
  v16 = [v15 isPlatformBinary];
  v17 = [*(a1 + 32) sandboxContainerURL];
  v18 = [v17 path];
  v19 = v18;
  v20 = v18;
  if (a2)
  {
    v20 = [v18 redactedDescription];
  }

  if ([*(a1 + 32) cached])
  {
    v21 = ", cached";
  }

  else
  {
    v21 = "";
  }

  v22 = [*(a1 + 32) codeSignInfo];
  v23 = [v22 cached];
  v24 = ", cs cached";
  if (!v23)
  {
    v24 = "";
  }

  v25 = [v44 stringWithFormat:@"<%@%@/%@, u=%@, uid=%u, pid=%u, sandboxed=%d, platform=%d (%d/%d/%d) [%@]%s%s>", v47, v51, v40, v50, v37, v36, v35, v34, v33, v14, v16, v20, v21, v24];

  if (a2)
  {

    v19 = v15;
    v17 = v13;
    v15 = v38;
    v13 = v39;
    v26 = v48;
    v27 = v30;
    v28 = v50;
  }

  else
  {
    v28 = v38;
    v27 = v39;
    v26 = v48;
  }

  if (v46)
  {
  }

  if (a2)
  {
  }

  return v25;
}

- (NSString)description
{
  v6[5] = *MEMORY[0x1E69E9840];
  v3 = [MCMLazyDescription alloc];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __32__MCMClientIdentity_description__block_invoke;
  v6[3] = &unk_1E86B1128;
  v6[4] = self;
  v4 = [(MCMLazyDescription *)v3 initWithDescriber:v6];

  return v4;
}

id __32__MCMClientIdentity_description__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v49 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v54 = NSStringFromClass(v4);
  v5 = *(*(a1 + 32) + 16);
  v53 = v5;
  v47 = *(a1 + 32);
  if (v5)
  {
    v6 = MEMORY[0x1E696AEC0];
    v34 = [v5 codeSignInfo];
    v33 = [v34 identifier];
    v7 = [v6 stringWithFormat:@"(via [%@]) ", v33];
  }

  else
  {
    v7 = &stru_1F5A5B2B8;
  }

  v51 = [*(a1 + 32) codeSignInfo];
  v8 = [v51 identifier];
  v9 = v8;
  v52 = v7;
  v50 = v8;
  if (v2)
  {
    v10 = [v8 redactedDescription];
    v48 = [*(a1 + 32) codeSignInfo];
    v46 = [v48 teamIdentifier];
    v11 = [v46 redactedDescription];
    v32 = [*(a1 + 32) userIdentity];
    v43 = [v32 redactedDescription];
    v31 = [*(a1 + 32) posixUser];
    v55 = [v31 redactedDescription];
    v42 = v10;
    v44 = v11;
    v45 = v10;
    v41 = v11;
  }

  else
  {
    v45 = [*(a1 + 32) codeSignInfo];
    v12 = [v45 teamIdentifier];
    v13 = [*(a1 + 32) userIdentity];
    [*(a1 + 32) posixUser];
    v42 = v9;
    v43 = v13;
    v46 = v13;
    v48 = v12;
    v55 = v41 = v12;
    v44 = v55;
  }

  v38 = [*(a1 + 32) posixPID];
  v37 = [*(a1 + 32) isSandboxed];
  v36 = [*(a1 + 32) platform];
  v40 = [*(a1 + 32) codeSignInfo];
  if ([v40 isSigned])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v35 = v14;
  v39 = [*(a1 + 32) codeSignInfo];
  if ([v39 isSignatureValid])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [*(a1 + 32) codeSignInfo];
  if ([v16 isPlatformBinary])
  {
    v17 = @"YES";
  }

  else
  {
    v17 = @"NO";
  }

  v18 = [*(a1 + 32) sandboxContainerURL];
  v19 = [v18 path];
  v20 = v19;
  v21 = v19;
  v22 = v2;
  if (v2)
  {
    v21 = [v19 redactedDescription];
  }

  if ([*(a1 + 32) cached])
  {
    v23 = ", cached";
  }

  else
  {
    v23 = "";
  }

  v24 = [*(a1 + 32) codeSignInfo];
  v25 = [v24 cached];
  v26 = ", cs cached";
  if (!v25)
  {
    v26 = "";
  }

  v27 = v43;
  v28 = [v49 stringWithFormat:@"<%@: %p %@identifier = %@, teamIdentifier = %@, userIdentity = %@, posixUser = %@, posixPID = %u, isSandboxed = %d, platform = %d, isSigned = %@, isSignatureValid = %@, isPlatformBinary = %@, sandboxContainerURL = [%@]%s%s>", v54, v47, v52, v42, v41, v43, v55, v38, v37, v36, v35, v15, v17, v21, v23, v26];;

  if (v22)
  {

    v20 = v40;
    v16 = v31;
    v29 = v32;
    v18 = v55;
  }

  else
  {
    v27 = v39;
    v29 = v40;
  }

  if (v53)
  {
  }

  return v28;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initInternal"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 28) = self->_posixPID;
    objc_storeStrong((v4 + 40), self->_posixUser);
    *(v5 + 24) = self->_sandboxed;
    v6 = *self->_auditToken.val;
    *(v5 + 88) = *&self->_auditToken.val[4];
    *(v5 + 72) = v6;
    objc_storeStrong((v5 + 16), self->_proximateClient);
    objc_storeStrong((v5 + 48), self->_userIdentity);
    *(v5 + 25) = self->_kernel;
    *(v5 + 32) = self->_platform;
    objc_storeStrong((v5 + 56), self->_sandboxContainerURL);
    objc_storeStrong((v5 + 64), self->_codeSignInfo);
    *(v5 + 26) = self->_cached;
    *(v5 + 8) = self->_testClient;
  }

  return v5;
}

- (BOOL)isAllowedToCheckAuthorization
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToCheckAuthorization = [entitlements isAllowedToCheckAuthorization];

  return isAllowedToCheckAuthorization;
}

- (BOOL)isAllowedToChangeReferences
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToChangeReferences = [entitlements isAllowedToChangeReferences];

  return isAllowedToChangeReferences;
}

- (BOOL)isAllowedToReadReferences
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToReadReferences = [entitlements isAllowedToReadReferences];

  return isAllowedToReadReferences;
}

- (BOOL)isAllowedToAccessUserAssets
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToAccessUserAssets = [entitlements isAllowedToAccessUserAssets];

  return isAllowedToAccessUserAssets;
}

- (BOOL)isAllowedToStageSharedContent
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToStageSharedContent = [entitlements isAllowedToStageSharedContent];

  return isAllowedToStageSharedContent;
}

- (BOOL)isAllowedToStartUserDataMigration
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToStartUserDataMigration = [entitlements isAllowedToStartUserDataMigration];

  return isAllowedToStartUserDataMigration;
}

- (BOOL)isAllowedToStartDataMigration
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToStartDataMigration = [entitlements isAllowedToStartDataMigration];

  return isAllowedToStartDataMigration;
}

- (BOOL)isAllowedToRestoreContainer
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToRestoreContainer = [entitlements isAllowedToRestoreContainer];

  return isAllowedToRestoreContainer;
}

- (BOOL)isAllowedToSetDataProtection
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToSetDataProtection = [entitlements isAllowedToSetDataProtection];

  return isAllowedToSetDataProtection;
}

- (BOOL)isAllowedToAccessCodesignMapping
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToAccessCodesignMapping = [entitlements isAllowedToAccessCodesignMapping];

  return isAllowedToAccessCodesignMapping;
}

- (BOOL)isAllowedToTest
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToTest = [entitlements isAllowedToTest];

  return isAllowedToTest;
}

- (BOOL)isAllowedToDelete
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToDelete = [entitlements isAllowedToDelete];

  return isAllowedToDelete;
}

- (BOOL)isAllowedToRegenerateDirectoryUUIDs
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToRegenerateDirectoryUUIDs = [entitlements isAllowedToRegenerateDirectoryUUIDs];

  return isAllowedToRegenerateDirectoryUUIDs;
}

- (BOOL)isAllowedToRecreateContainerStructure
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToRecreateContainerStructure = [entitlements isAllowedToRecreateContainerStructure];

  return isAllowedToRecreateContainerStructure;
}

- (BOOL)isAllowedToAccessInfoMetadata
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToAccessInfoMetadata = [entitlements isAllowedToAccessInfoMetadata];

  return isAllowedToAccessInfoMetadata;
}

- (BOOL)isAllowedToReplaceContainers
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToReplaceContainers = [entitlements isAllowedToReplaceContainers];

  return isAllowedToReplaceContainers;
}

- (BOOL)isAllowedToControlCaches
{
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  isAllowedToControlCaches = [entitlements isAllowedToControlCaches];

  return isAllowedToControlCaches;
}

- (unint64_t)isAllowedToPerformOperationType:(unint64_t)type forAllContainersOfContainerConfig:(id)config part:(unint64_t)part partDomain:(id)domain access:(unint64_t)access
{
  domainCopy = domain;
  configCopy = config;
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  v16 = [entitlements isAllowedToPerformOperationType:type forAllContainersOfContainerConfig:configCopy part:part partDomain:domainCopy access:access];

  return v16;
}

- (unint64_t)isAllowedToPerformOperationType:(unint64_t)type containerIdentity:(id)identity part:(unint64_t)part partDomain:(id)domain access:(unint64_t)access
{
  domainCopy = domain;
  identityCopy = identity;
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  entitlements = [codeSignInfo entitlements];
  v16 = [entitlements isAllowedToPerformOperationType:type containerIdentity:identityCopy part:part partDomain:domainCopy access:access];

  return v16;
}

- (id)clientIdentityByChangingCached:(BOOL)cached
{
  v4 = [(MCMClientIdentity *)self copy];
  v4[26] = cached;

  return v4;
}

- (container_client)createLibsystemClient
{
  [(MCMClientIdentity *)self isTestClient];
  codeSignInfo = [(MCMClientIdentity *)self codeSignInfo];
  identifier = [codeSignInfo identifier];
  [identifier UTF8String];
  codeSignInfo2 = [(MCMClientIdentity *)self codeSignInfo];
  teamIdentifier = [codeSignInfo2 teamIdentifier];
  [teamIdentifier UTF8String];
  [(MCMClientIdentity *)self platform];
  userIdentity = [(MCMClientIdentity *)self userIdentity];
  personaUniqueString = [userIdentity personaUniqueString];
  [personaUniqueString UTF8String];
  posixUser = [(MCMClientIdentity *)self posixUser];
  [posixUser UID];
  posixUser2 = [(MCMClientIdentity *)self posixUser];
  [posixUser2 primaryGID];
  objc_msgSend_auditToken(self);
  [(MCMClientIdentity *)self posixPID];
  codeSignInfo3 = [(MCMClientIdentity *)self codeSignInfo];
  [codeSignInfo3 isSigned];
  codeSignInfo4 = [(MCMClientIdentity *)self codeSignInfo];
  [codeSignInfo4 isSignatureValid];
  codeSignInfo5 = [(MCMClientIdentity *)self codeSignInfo];
  [codeSignInfo5 isPlatformBinary];
  v10 = container_client_initializer();

  return v10;
}

- (MCMClientIdentity)initWithPOSIXUser:(id)user POSIXPID:(int)d platform:(unsigned int)platform userIdentity:(id)identity proximateClient:(id)client auditToken:(id *)token codeSignInfo:(id)info sandboxed:(BOOL)self0 sandboxContainerURL:(id)self1 testClient:(BOOL)self2 kernel:(BOOL)self3
{
  v30 = *MEMORY[0x1E69E9840];
  userCopy = user;
  identityCopy = identity;
  clientCopy = client;
  infoCopy = info;
  lCopy = l;
  v29.receiver = self;
  v29.super_class = MCMClientIdentity;
  v21 = [(MCMClientIdentity *)&v29 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_posixUser, user);
    v22->_posixPID = d;
    v22->_platform = platform;
    objc_storeStrong(&v22->_userIdentity, identity);
    objc_storeStrong(&v22->_proximateClient, client);
    v23 = *token->var0;
    *&v22->_auditToken.val[4] = *&token->var0[4];
    *v22->_auditToken.val = v23;
    objc_storeStrong(&v22->_codeSignInfo, info);
    v22->_sandboxed = sandboxed;
    objc_storeStrong(&v22->_sandboxContainerURL, l);
    v22->_testClient = testClient;
    v22->_kernel = kernel;
  }

  return v22;
}

- (MCMClientIdentity)init
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = container_log_handle_for_category();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v5 = 0;
    _os_log_fault_impl(&dword_1DF2C3000, v3, OS_LOG_TYPE_FAULT, "You cannot init this class directly.", v5, 2u);
  }

  return 0;
}

+ (id)privilegedClientIdentityWithUserIdentity:(id)identity kernel:(BOOL)kernel
{
  v28 = *MEMORY[0x1E69E9840];
  v26 = 0u;
  v27 = 0u;
  identityCopy = identity;
  container_codesign_get_self_audit_token();
  v7 = [MCMEntitlements alloc];
  v8 = containermanager_copy_global_configuration();
  staticConfig = [v8 staticConfig];
  containerConfigMap = [staticConfig containerConfigMap];
  v11 = [(MCMEntitlements *)v7 initWithEntitlements:&unk_1F5A759B0 clientIdentifier:@"com.apple.containermanagerd" containerConfigMap:containerConfigMap];

  v12 = [MCMClientCodeSignInfo alloc];
  v13 = objc_opt_new();
  v14 = [(MCMClientCodeSignInfo *)v12 initWithCDHash:v13 entitlements:v11 identifier:@"com.apple.containermanagerd" teamIdentifier:0 status:7];

  v15 = [self alloc];
  v16 = containermanager_copy_global_configuration();
  currentUser = [v16 currentUser];
  v18 = getpid();
  *buf = 0u;
  v25 = 0u;
  BYTE1(v23) = kernel;
  LOBYTE(v23) = 0;
  LOBYTE(v22) = 0;
  v19 = [v15 initWithPOSIXUser:currentUser POSIXPID:v18 platform:dyld_get_active_platform() userIdentity:identityCopy proximateClient:0 auditToken:buf codeSignInfo:v14 sandboxed:v22 sandboxContainerURL:0 testClient:v23 kernel:?];

  if (!v19)
  {
    v20 = container_log_handle_for_category();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_1DF2C3000, v20, OS_LOG_TYPE_FAULT, "Could not generate privileged client", buf, 2u);
    }
  }

  return v19;
}

+ (id)anonymousPrivilegedClientIdentityWithUserIdentity:(id)identity
{

  return [self privilegedClientIdentityWithUserIdentity:identity kernel:0];
}

@end