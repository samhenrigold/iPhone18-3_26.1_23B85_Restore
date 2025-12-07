@interface RBSProcessIdentity
+ (id)decodeFromJob:(id)job uuid:(id)uuid;
+ (id)extensionIdentityForBundleIdentifier:(id)identifier persona:(id)persona instanceUUID:(id)d hostIdentifier:(id)hostIdentifier validationToken:(id)token;
+ (id)extensionIdentityForPlugInKitIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier UUID:(id)d;
+ (id)externalExtensionIdentityForExtensionKitIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier UUID:(id)d;
+ (id)identityForAngelJobLabel:(id)label;
+ (id)identityForApplicationJobLabel:(id)label bundleID:(id)d platform:(int)platform;
+ (id)identityForDaemonJobLabel:(id)label;
+ (id)identityForDextWithServerName:(id)name tagString:(id)string containingAppBundleID:(id)d;
+ (id)identityForEmbeddedApplicationIdentifier:(id)identifier jobLabel:(id)label auid:(unsigned int)auid platform:(int)platform;
+ (id)identityForExecutablePath:(id)path pid:(int)pid auid:(unsigned int)auid;
+ (id)identityForExtensionIdentity:(id)identity;
+ (id)identityForExtensionIdentity:(id)identity hostIdentifier:(id)identifier;
+ (id)identityForLSApplicationIdentity:(id)identity LSApplicationRecord:(id)record;
+ (id)identityForLSApplicationIdentity:(id)identity LSApplicationRecord:(id)record uuid:(id)uuid;
+ (id)identityForLaunchdJobLabel:(id)label isMultiInstance:(BOOL)instance pid:(int)pid auid:(unsigned int)auid;
+ (id)identityForUnbundledMacApplicationJobLabel:(id)label;
+ (id)identityForUnknownServiceWithJobLabel:(id)label;
+ (id)identityForWrappedInfoProvider:(id)provider uuid:(id)uuid;
+ (id)identityForXPCServiceExecutablePath:(id)path pid:(int)pid auid:(unsigned int)auid host:(id)host UUID:(id)d;
+ (id)identityForXPCServiceIdentifier:(id)identifier hostInstance:(id)instance UUID:(id)d persona:(id)persona validationToken:(id)token variant:(int64_t)variant;
+ (id)identityOfCurrentProcess;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToIdentity:(id)identity;
- (BOOL)matchesProcess:(id)process;
- (NSString)debugDescription;
- (RBSProcessIdentity)init;
- (RBSProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid;
- (RBSProcessIdentity)initWithRBSXPCCoder:(id)coder;
- (id)_init;
- (id)copyWithAuid:(unsigned int)auid;
- (id)encodeForJob;
- (void)encodeWithRBSXPCCoder:(id)coder;
@end

@implementation RBSProcessIdentity

- (id)_init
{
  v3.receiver = self;
  v3.super_class = RBSProcessIdentity;
  return [(RBSProcessIdentity *)&v3 init];
}

+ (id)identityOfCurrentProcess
{
  v2 = +[RBSConnection sharedInstance];
  identity = [(RBSConnection *)v2 identity];

  return identity;
}

+ (id)identityForApplicationJobLabel:(id)label bundleID:(id)d platform:(int)platform
{
  dCopy = d;
  v6 = [[RBSEmbeddedAppProcessIdentity alloc] _initEmbeddedAppWithBundleID:dCopy];

  return v6;
}

+ (id)identityForUnbundledMacApplicationJobLabel:(id)label
{
  labelCopy = label;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initUnknownOSServiceWithJobLabel:labelCopy];

  return v4;
}

+ (id)identityForEmbeddedApplicationIdentifier:(id)identifier jobLabel:(id)label auid:(unsigned int)auid platform:(int)platform
{
  identifierCopy = identifier;
  v7 = [[RBSEmbeddedAppProcessIdentity alloc] _initEmbeddedAppWithBundleID:identifierCopy];

  return v7;
}

+ (id)identityForWrappedInfoProvider:(id)provider uuid:(id)uuid
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v4 = [provider fetchWrappedInfoWithError:{&v13, uuid}];
  v5 = v13;
  v6 = v5;
  if (v4)
  {
    persistentJobLabel = [v4 persistentJobLabel];

    if (persistentJobLabel)
    {
      persistentJobLabel2 = [v4 persistentJobLabel];
      v9 = [RBSProcessIdentity identityForUnknownServiceWithJobLabel:persistentJobLabel2];
    }

    else
    {
      v9 = [[RBSEmbeddedAppProcessIdentity alloc] _initEmbeddedAppWithAppInfo:v4];
    }
  }

  else
  {
    v10 = rbs_general_log(v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 description];
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_18E8AD000, v10, OS_LOG_TYPE_DEFAULT, "_initEmbeddedAppWithAppInfoProvider failed due to %{public}@", buf, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

+ (id)identityForLSApplicationIdentity:(id)identity LSApplicationRecord:(id)record
{
  v4 = [RBSIdentityAndRecordInfoProvider _providerWithIdentity:identity record:record];
  v5 = [RBSProcessIdentity identityForWrappedInfoProvider:v4];

  return v5;
}

+ (id)identityForLSApplicationIdentity:(id)identity LSApplicationRecord:(id)record uuid:(id)uuid
{
  uuidCopy = uuid;
  v8 = [RBSIdentityAndRecordInfoProvider _providerWithIdentity:identity record:record];
  v9 = [RBSProcessIdentity identityForWrappedInfoProvider:v8 uuid:uuidCopy];

  return v9;
}

+ (id)identityForUnknownServiceWithJobLabel:(id)label
{
  labelCopy = label;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initUnknownOSServiceWithJobLabel:labelCopy];

  return v4;
}

+ (id)identityForDaemonJobLabel:(id)label
{
  labelCopy = label;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initDaemonWithJobLabel:labelCopy pid:0 auid:0];

  return v4;
}

+ (id)identityForAngelJobLabel:(id)label
{
  labelCopy = label;
  v4 = [[RBSOSServiceProcessIdentity alloc] _initAngelWithJobLabel:labelCopy];

  return v4;
}

+ (id)identityForDextWithServerName:(id)name tagString:(id)string containingAppBundleID:(id)d
{
  dCopy = d;
  stringCopy = string;
  nameCopy = name;
  v10 = [[RBSDextProcessIdentity alloc] _initDextWithServerName:nameCopy tagString:stringCopy containingAppBundleID:dCopy];

  return v10;
}

- (RBSProcessIdentity)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBSProcessIdentity.m" lineNumber:251 description:@"-init is not allowed on RBSProcessIdentity"];

  return 0;
}

- (id)copyWithAuid:(unsigned int)auid
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v3 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v4 = 3;
  }

  else
  {
    v4 = 2;
  }

  v7 = 136315394;
  v8 = "[RBSProcessIdentity copyWithAuid:]";
  v9 = 2112;
  v10 = objc_opt_class();
  v5 = v10;
  _os_log_send_and_compose_impl(v4, &v12, v11, 80, &dword_18E8AD000, v3, 16, "%s must be implemented in subclass %@", &v7, 22);

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)identityForLaunchdJobLabel:(id)label isMultiInstance:(BOOL)instance pid:(int)pid auid:(unsigned int)auid
{
  instanceCopy = instance;
  labelCopy = label;
  v9 = labelCopy;
  if (pid || !instanceCopy)
  {
    if (labelCopy)
    {
      v11 = [RBSOSServiceProcessIdentity alloc];
      if (instanceCopy)
      {
        pidCopy = pid;
      }

      else
      {
        pidCopy = 0;
      }

      v13 = [(RBSOSServiceProcessIdentity *)v11 _initDaemonWithJobLabel:v9 pid:pidCopy auid:0];
      goto LABEL_13;
    }

    v10 = rbs_process_log(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [RBSProcessIdentity identityForLaunchdJobLabel:v10 isMultiInstance:? pid:? auid:?];
    }
  }

  else
  {
    v10 = rbs_process_log(labelCopy);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[RBSProcessIdentity identityForLaunchdJobLabel:isMultiInstance:pid:auid:];
    }
  }

  v13 = 0;
LABEL_13:

  return v13;
}

+ (id)identityForExecutablePath:(id)path pid:(int)pid auid:(unsigned int)auid
{
  v5 = *&auid;
  v6 = *&pid;
  pathCopy = path;
  v8 = [RBSOpaqueProcessIdentity alloc];
  lastPathComponent = [pathCopy lastPathComponent];

  v10 = [(RBSOpaqueProcessIdentity *)v8 _initOpaqueWithPid:v6 name:lastPathComponent auid:v5];

  return v10;
}

+ (id)identityForXPCServiceIdentifier:(id)identifier hostInstance:(id)instance UUID:(id)d persona:(id)persona validationToken:(id)token variant:(int64_t)variant
{
  identifierCopy = identifier;
  tokenCopy = token;
  personaCopy = persona;
  dCopy = d;
  instanceCopy = instance;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!identifierCopy)
  {
    +[RBSProcessIdentity identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[RBSProcessIdentity identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:];
  }

  v18 = 3;
  if (instanceCopy)
  {
    v18 = 1;
  }

  if (variant <= 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  v20 = [RBSXPCServiceDefinition definitionWithIdentifier:identifierCopy variant:variant scope:v19];
  v21 = [RBSXPCServiceIdentity identityWithDefinition:v20 sessionID:0 host:instanceCopy UUID:dCopy persona:personaCopy validationToken:tokenCopy];

  v22 = [[RBSXPCServiceProcessIdentity alloc] _initWithXPCServiceID:v21 pid:0 auid:0];

  return v22;
}

+ (id)extensionIdentityForPlugInKitIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier UUID:(id)d
{
  identifierCopy = identifier;
  hostIdentifierCopy = hostIdentifier;
  dCopy = d;
  if (!hostIdentifierCopy)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v18 = 0;
  v10 = [RBSProcessHandle handleForIdentifier:hostIdentifierCopy error:&v18];
  v11 = v18;
  v12 = v11;
  if (v10)
  {
    identity = [v10 identity];
    v14 = [RBSProcessInstance instanceWithIdentifier:hostIdentifierCopy identity:identity];

    v12 = v14;
LABEL_5:
    v15 = [RBSProcessIdentity identityForXPCServiceIdentifier:identifierCopy hostInstance:v12 UUID:dCopy variant:2];
    goto LABEL_9;
  }

  v16 = rbs_process_log(v11);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    +[RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:hostIdentifier:UUID:];
  }

  v15 = 0;
LABEL_9:

  return v15;
}

+ (id)externalExtensionIdentityForExtensionKitIdentifier:(id)identifier hostIdentifier:(id)hostIdentifier UUID:(id)d
{
  identifierCopy = identifier;
  hostIdentifierCopy = hostIdentifier;
  dCopy = d;
  if (!hostIdentifierCopy)
  {
    v12 = 0;
    goto LABEL_5;
  }

  v18 = 0;
  v10 = [RBSProcessHandle handleForIdentifier:hostIdentifierCopy error:&v18];
  v11 = v18;
  v12 = v11;
  if (v10)
  {
    identity = [v10 identity];
    v14 = [RBSProcessInstance instanceWithIdentifier:hostIdentifierCopy identity:identity];

    v12 = v14;
LABEL_5:
    v15 = [RBSProcessIdentity identityForXPCServiceIdentifier:identifierCopy hostInstance:v12 UUID:dCopy variant:3];
    goto LABEL_9;
  }

  v16 = rbs_process_log(v11);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    +[RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:hostIdentifier:UUID:];
  }

  v15 = 0;
LABEL_9:

  return v15;
}

+ (id)extensionIdentityForBundleIdentifier:(id)identifier persona:(id)persona instanceUUID:(id)d hostIdentifier:(id)hostIdentifier validationToken:(id)token
{
  identifierCopy = identifier;
  personaCopy = persona;
  dCopy = d;
  hostIdentifierCopy = hostIdentifier;
  tokenCopy = token;
  if (!hostIdentifierCopy)
  {
    v18 = 0;
    goto LABEL_5;
  }

  v24 = 0;
  v16 = [RBSProcessHandle handleForIdentifier:hostIdentifierCopy error:&v24];
  v17 = v24;
  v18 = v17;
  if (v16)
  {
    identity = [v16 identity];
    v20 = [RBSProcessInstance instanceWithIdentifier:hostIdentifierCopy identity:identity];

    v18 = v20;
LABEL_5:
    v21 = [RBSProcessIdentity identityForXPCServiceIdentifier:identifierCopy hostInstance:v18 UUID:dCopy persona:personaCopy validationToken:tokenCopy variant:2];
    goto LABEL_9;
  }

  v22 = rbs_process_log(v17);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    +[RBSProcessIdentity extensionIdentityForPlugInKitIdentifier:hostIdentifier:UUID:];
  }

  v21 = 0;
LABEL_9:

  return v21;
}

+ (id)identityForXPCServiceExecutablePath:(id)path pid:(int)pid auid:(unsigned int)auid host:(id)host UUID:(id)d
{
  v9 = *&pid;
  v60 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  hostCopy = host;
  dCopy = d;
  v13 = pathCopy;
  NSClassFromString(&cfstr_Nsstring.isa);
  if (!v13)
  {
    +[RBSProcessIdentity identityForXPCServiceExecutablePath:pid:auid:host:UUID:];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    +[RBSProcessIdentity identityForXPCServiceExecutablePath:pid:auid:host:UUID:];
  }

  [v13 UTF8String];
  v14 = xpc_bundle_create();
  error = xpc_bundle_get_error();
  if (!error)
  {
    v19 = xpc_bundle_get_info_dictionary();
    v17 = v19;
    if (v19)
    {
      string = xpc_dictionary_get_string(v19, [*MEMORY[0x1E695E4F0] UTF8String]);
      if (string)
      {
        string = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string];
      }

      v19 = _CFXPCCreateCFObjectFromXPCObject();
      v21 = v19;
      if (string)
      {
        if (v19)
        {
          v22 = RBSDictionaryForKey(v19, @"XPCService");
          v23 = RBSExtensionPointFromBundleDict(v21);

          if (v23)
          {
            v43 = v22;
            if (hostCopy)
            {
              v25 = 1;
            }

            else
            {
              v25 = 3;
            }

            v26 = 2;
            goto LABEL_31;
          }

          if (v22)
          {
            v27 = RBSStringForKey(v22, @"ServiceType");
            v28 = v27;
            v43 = v22;
            if (!v27 || ([v27 isEqualToString:@"Application"]& 1) != 0)
            {
              v29 = 1;
LABEL_30:
              v40 = v29;

              v26 = 1;
              v25 = v40;
LABEL_31:
              v41 = v25;
              v28 = [RBSXPCServiceDefinition definitionWithIdentifier:string variant:v26 scope:?];
              v42 = string;
              if (v28)
              {
                v39 = v28;
                v38 = [RBSXPCServiceIdentity identityWithDefinition:v28 sessionID:0 host:hostCopy UUID:dCopy persona:0 validationToken:0];
                v30 = rbs_process_log(v38);
                if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
                {
                  [v13 lastPathComponent];
                  v31 = v37 = v26;
                  *buf = 138545154;
                  v45 = string;
                  v46 = 2114;
                  v47 = v31;
                  v48 = 1024;
                  rbs_pid = [hostCopy rbs_pid];
                  v50 = 1024;
                  v51 = v37;
                  v52 = 1024;
                  v53 = v41;
                  v54 = 2112;
                  v55 = dCopy;
                  v56 = 1024;
                  v57 = v9;
                  v58 = 1024;
                  v59 = 0;
                  _os_log_impl(&dword_18E8AD000, v30, OS_LOG_TYPE_DEFAULT, "Resolved XPC Service %{public}@ (%{public}@) with host pid %d, variant %d, scope %d, uuid %@, pid %d, and auid %d", buf, 0x3Eu);
                }

                v32 = v38;
                v18 = [[RBSXPCServiceProcessIdentity alloc] _initWithXPCServiceID:v38 pid:v9 auid:0];
                v33 = v43;
                v28 = v39;
              }

              else
              {
                v32 = rbs_process_log(0);
                v33 = v43;
                if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
                {
                  [RBSProcessIdentity identityForXPCServiceExecutablePath:v13 pid:v32 auid:? host:? UUID:?];
                }

                v18 = 0;
              }

              v22 = v33;
              string = v42;
              goto LABEL_39;
            }

            if (([v28 isEqualToString:@"System"]& 1) != 0)
            {
              v29 = 3;
              goto LABEL_30;
            }

            v35 = [v28 isEqualToString:@"User"];
            if (v35)
            {
              v29 = 2;
              goto LABEL_30;
            }

            v36 = rbs_process_log(v35);
            if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
            {
              +[RBSProcessIdentity identityForXPCServiceExecutablePath:pid:auid:host:UUID:];
            }
          }

          else
          {
            v28 = rbs_process_log(v24);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              +[RBSProcessIdentity identityForXPCServiceExecutablePath:pid:auid:host:UUID:];
            }
          }

          v18 = 0;
LABEL_39:

          goto LABEL_40;
        }

        v21 = rbs_process_log(0);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          +[RBSProcessIdentity identityForXPCServiceExecutablePath:pid:auid:host:UUID:];
        }

LABEL_23:
        v18 = 0;
LABEL_40:

        goto LABEL_41;
      }

      string = v19;
    }

    else
    {
      string = 0;
    }

    v21 = rbs_process_log(v19);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      +[RBSProcessIdentity identityForXPCServiceExecutablePath:pid:auid:host:UUID:];
    }

    goto LABEL_23;
  }

  v16 = error;
  v17 = rbs_process_log(error);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    [RBSProcessIdentity identityForXPCServiceExecutablePath:v16 pid:v13 auid:v17 host:? UUID:?];
  }

  v18 = 0;
LABEL_41:

  return v18;
}

- (id)encodeForJob
{
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v2 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  v6 = 136315394;
  v7 = "[RBSProcessIdentity encodeForJob]";
  v8 = 2112;
  v9 = objc_opt_class();
  v4 = v9;
  _os_log_send_and_compose_impl(v3, &v11, v10, 80, &dword_18E8AD000, v2, 16, "%s must be implemented in subclass %@", &v6, 22);

  result = _os_crash_msg();
  __break(1u);
  return result;
}

- (RBSProcessIdentity)initWithDecodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  uuidCopy = uuid;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v7 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = 3;
  }

  else
  {
    v8 = 2;
  }

  v11 = 136315394;
  v12 = "[RBSProcessIdentity initWithDecodeFromJob:uuid:]";
  v13 = 2112;
  v14 = objc_opt_class();
  v9 = v14;
  _os_log_send_and_compose_impl(v8, &v16, v15, 80, &dword_18E8AD000, v7, 16, "%s must be implemented in subclass %@", &v11, 22);

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)decodeFromJob:(id)job uuid:(id)uuid
{
  jobCopy = job;
  uuidCopy = uuid;
  v7 = xpc_dictionary_get_int64(jobCopy, "TYPE") - 1;
  if (v7 <= 6 && ((0x7Bu >> v7) & 1) != 0 && (objc_opt_class(), (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = [[v8 alloc] initWithDecodeFromJob:jobCopy uuid:uuidCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)matchesProcess:(id)process
{
  identity = [process identity];
  LOBYTE(self) = [(RBSProcessIdentity *)self _matchesIdentity:identity];

  return self;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    v6 = v5 == objc_opt_class() && [(RBSProcessIdentity *)self isEqualToIdentity:equalCopy];
  }

  return v6;
}

- (BOOL)isEqualToIdentity:(id)identity
{
  identityCopy = identity;
  v5 = identityCopy;
  if (identityCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = self->_hash == identityCopy->_hash && self->_pid == identityCopy->_pid && [(RBSProcessIdentity *)self _matchesIdentity:identityCopy];
  }

  return v6;
}

- (NSString)debugDescription
{
  auid = [(RBSProcessIdentity *)self auid];
  v4 = auid;
  v5 = MEMORY[0x1E696AEC0];
  description = self->_description;
  pid = self->_pid;
  if (pid <= 0)
  {
    v8 = &stru_1F01CD8F0;
  }

  else
  {
    v8 = @" pid=";
  }

  if (pid < 1)
  {
    v9 = &stru_1F01CD8F0;
    if (auid)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithInt:pid];
    if (v4)
    {
LABEL_6:
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v4];
      v11 = [v5 stringWithFormat:@"<%@%@%@%@%@>", description, v8, v9, @" AUID=", v10];

      goto LABEL_9;
    }
  }

  v11 = [v5 stringWithFormat:@"<%@%@%@%@%@>", description, v8, v9, &stru_1F01CD8F0, &stru_1F01CD8F0];
LABEL_9:
  if (pid >= 1)
  {
  }

  return v11;
}

- (void)encodeWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v4 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v7 = 136315394;
  v8 = "[RBSProcessIdentity encodeWithRBSXPCCoder:]";
  v9 = 2112;
  v10 = objc_opt_class();
  v6 = v10;
  _os_log_send_and_compose_impl(v5, &v12, v11, 80, &dword_18E8AD000, v4, 16, "%s must be implemented in subclass %@", &v7, 22);

  _os_crash_msg();
  __break(1u);
}

- (RBSProcessIdentity)initWithRBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v4 = MEMORY[0x1E69E9C10];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  v8 = 136315394;
  v9 = "[RBSProcessIdentity initWithRBSXPCCoder:]";
  v10 = 2112;
  v11 = objc_opt_class();
  v6 = v11;
  _os_log_send_and_compose_impl(v5, &v13, v12, 80, &dword_18E8AD000, v4, 16, "%s must be implemented in subclass %@", &v8, 22);

  result = _os_crash_msg();
  __break(1u);
  return result;
}

+ (id)identityForExtensionIdentity:(id)identity hostIdentifier:(id)identifier
{
  identifierCopy = identifier;
  identityCopy = identity;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [RBSProcessIdentity(Extension) identityForExtensionIdentity:a2 hostIdentifier:self];
  }

  v9 = [[RBSExtensionProcessIdentity alloc] _initWithExtensionIdentity:identityCopy hostIdentity:0 hostIdentifier:identifierCopy];

  return v9;
}

+ (id)identityForExtensionIdentity:(id)identity
{
  identityCopy = identity;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [(RBSProcessIdentity(Extension) *)a2 identityForExtensionIdentity:self];
  }

  v6 = [[RBSExtensionProcessIdentity alloc] _initWithExtensionIdentity:identityCopy hostIdentity:0 hostIdentifier:0];

  return v6;
}

+ (void)identityForLaunchdJobLabel:isMultiInstance:pid:auid:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  v2 = 1024;
  v3 = 0;
  _os_log_error_impl(&dword_18E8AD000, v0, OS_LOG_TYPE_ERROR, "invalid pid (0) for multi-instance job: %@, auid: %d", v1, 0x12u);
}

+ (void)identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

+ (void)identityForXPCServiceIdentifier:hostInstance:UUID:persona:validationToken:variant:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[object isKindOfClass:NSStringClass]" object:? file:? lineNumber:? description:?];
}

+ (void)identityForXPCServiceExecutablePath:pid:auid:host:UUID:.cold.1()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"object != nil" object:? file:? lineNumber:? description:?];
}

+ (void)identityForXPCServiceExecutablePath:pid:auid:host:UUID:.cold.2()
{
  OUTLINED_FUNCTION_1();
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  OUTLINED_FUNCTION_0_0();
  [v0 handleFailureInMethod:@"[object isKindOfClass:NSStringClass]" object:? file:? lineNumber:? description:?];
}

+ (void)identityForXPCServiceExecutablePath:(NSObject *)a3 pid:auid:host:UUID:.cold.3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  xpc_strerror();
  OUTLINED_FUNCTION_2();
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_18E8AD000, a3, OS_LOG_TYPE_ERROR, "Error (%{public}s) creating xpc service bundle for %{public}@", v5, 0x16u);
}

+ (void)identityForXPCServiceExecutablePath:(void *)a1 pid:(NSObject *)a2 auid:host:UUID:.cold.5(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = [a1 lastPathComponent];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_18E8AD000, a2, OS_LOG_TYPE_ERROR, "Couldn't generate XPCService definition for %{public}@", v4, 0xCu);
}

@end