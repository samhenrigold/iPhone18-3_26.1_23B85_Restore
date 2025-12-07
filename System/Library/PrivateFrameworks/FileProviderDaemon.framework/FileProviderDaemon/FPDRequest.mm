@interface FPDRequest
+ (id)UUIDForSystemExecutablePath:(id)path;
+ (id)fixupProcessName:(id)name;
+ (id)requestForPID:(int)d auditToken:(id *)token fromPOSIX:(BOOL)x;
+ (id)requestForPID:(int)d auditToken:(id *)token fromPOSIX:(BOOL)x kernelFileInfo:(id)info;
+ (id)requestForPID:(int)d fromPOSIX:(BOOL)x kernelFileInfo:(id)info;
+ (id)requestForXPCConnection:(id)connection;
- ($0AC6E346AE4835514AAA8AC86D8F4844)providedExtent;
- ($0AC6E346AE4835514AAA8AC86D8F4844)requestedExtent;
- ($115C4C562B26FF47E01F9F4EA65B5887)audit_token;
- (BOOL)isPermittedToAttributeRequestingExecutable:(id)executable;
- (FPDRequest)initWithPID:(int)d auditToken:(id *)token fromPOSIX:(BOOL)x withExtent:(id)extent;
- (id)nsfpRequestForSession:(id)session isSpeculative:(BOOL)speculative;
- (void)setAudit_token:(id *)audit_token;
@end

@implementation FPDRequest

+ (id)requestForXPCConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  if (connectionCopy)
  {
    objc_msgSend_auditToken(connectionCopy);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  v6 = [self requestForPID:processIdentifier auditToken:v8 fromPOSIX:0 kernelFileInfo:0];

  return v6;
}

+ (id)requestForPID:(int)d auditToken:(id *)token fromPOSIX:(BOOL)x
{
  v5 = *&token->var0[4];
  v8[0] = *token->var0;
  v8[1] = v5;
  v6 = [self requestForPID:*&d auditToken:v8 fromPOSIX:x kernelFileInfo:0];

  return v6;
}

+ (id)requestForPID:(int)d fromPOSIX:(BOOL)x kernelFileInfo:(id)info
{
  *&v5 = -1;
  *(&v5 + 1) = -1;
  v8[0] = v5;
  v8[1] = v5;
  v6 = [self requestForPID:*&d auditToken:v8 fromPOSIX:x kernelFileInfo:info];

  return v6;
}

+ (id)requestForPID:(int)d auditToken:(id *)token fromPOSIX:(BOOL)x kernelFileInfo:(id)info
{
  xCopy = x;
  v8 = *&d;
  if (info)
  {
    infoCopy = info;
    offset = [infoCopy offset];
    v11 = [infoCopy size];
  }

  else
  {
    offset = -1;
    v11 = -1;
  }

  v12 = objc_alloc(objc_opt_class());
  v13 = *&token->var0[4];
  v16[0] = *token->var0;
  v16[1] = v13;
  v14 = [v12 initWithPID:v8 auditToken:v16 fromPOSIX:xCopy withExtent:{offset, v11}];

  return v14;
}

- (FPDRequest)initWithPID:(int)d auditToken:(id *)token fromPOSIX:(BOOL)x withExtent:(id)extent
{
  *&v6 = MEMORY[0x1EEE9AC00](self).n128_u64[0];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v37 = *MEMORY[0x1E69E9840];
  v34.receiver = v17;
  v34.super_class = FPDRequest;
  v18 = [(FPDRequest *)&v34 init];
  v19 = v18;
  if (v18)
  {
    v18->_fromPOSIX = v12;
    v20 = [MEMORY[0x1E695DF00] now];
    date = v19->_date;
    v19->_date = v20;

    v19->_qos = qos_class_self();
    *&v19->_selectedForMaterialization = 0;
    v19->_requestedExtent.location = v10;
    v19->_requestedExtent.length = v8;
    v19->_providedExtent.location = -1;
    v19->_providedExtent.length = -1;
    if (!v16)
    {
      v16 = getpid();
    }

    v19->_pid = v16;
    if (v16 > -1001)
    {
      if ((v16 & 0x80000000) == 0)
      {
        memset(buffer, 0, sizeof(buffer));
        if ((proc_name(v16, buffer, 0x20u) & 0x80000000) == 0 && LOBYTE(buffer[0]))
        {
          v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:buffer];
          processName = v19->_processName;
          v19->_processName = v24;
        }

        bzero(v35, 0x1000uLL);
        if (proc_pidpath(v19->_pid, v35, 0x1000u) < 0 || !v35[0])
        {
          goto LABEL_16;
        }

        v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v35];
LABEL_15:
        executablePath = v19->_executablePath;
        v19->_executablePath = v26;

LABEL_16:
        v30 = [FPDRequest fixupProcessName:v19->_processName];
        userProcessName = v19->_userProcessName;
        v19->_userProcessName = v30;

        v32 = *v14;
        *&v19->_audit_token.val[4] = v14[1];
        *v19->_audit_token.val = v32;
        return v19;
      }

      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TestProcess%d", v16];
      v28 = v19->_processName;
      v19->_processName = v27;

      [MEMORY[0x1E696AEC0] stringWithFormat:@"/path/to/TestProcess%d.app", v19->_pid];
    }

    else
    {
      v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"UnresponsiveTestProcess%d", v16];
      v23 = v19->_processName;
      v19->_processName = v22;

      [MEMORY[0x1E696AEC0] stringWithFormat:@"/path/to/UnresponsiveTestProcess%d.app", v19->_pid];
    }
    v26 = ;
    goto LABEL_15;
  }

  return v19;
}

+ (id)fixupProcessName:(id)name
{
  nameCopy = name;
  if ([@"com.apple.appkit.xpc.openAndSav" isEqualToString:nameCopy])
  {
    v4 = @"Open and Save Panels";
  }

  else
  {
    v4 = nameCopy;
  }

  return v4;
}

- (BOOL)isPermittedToAttributeRequestingExecutable:(id)executable
{
  if ([executable hasFileProviderAttributionMDMAccess])
  {
    return 1;
  }

  v5 = [objc_opt_class() UUIDForSystemExecutablePath:self->_executablePath];
  v4 = v5 != 0;

  return v4;
}

- (id)nsfpRequestForSession:(id)session isSpeculative:(BOOL)speculative
{
  v5 = [objc_opt_new() initWithIsSpeculativeDownload:speculative];
  pid = self->_pid;
  if (!pid || pid == getpid())
  {
    if (self->_executablePath)
    {
      _fpdIdentifier = [MEMORY[0x1E6967518] _fpdIdentifier];
LABEL_9:
      v8 = _fpdIdentifier;
      goto LABEL_10;
    }

LABEL_8:
    _fpdIdentifier = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&UUID_NULL];
    goto LABEL_9;
  }

  if (!self->_executablePath)
  {
    goto LABEL_8;
  }

  v8 = [FPDRequest UUIDForSystemExecutablePath:?];
  if (!v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDBytes:&UUID_NULL];
    [v5 setRequestingApplicationIdentifier:v9];

    goto LABEL_11;
  }

LABEL_10:
  [v5 setRequestingApplicationIdentifier:v8];
LABEL_11:

  return v5;
}

+ (id)UUIDForSystemExecutablePath:(id)path
{
  v17 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (hardcodedUUIDs_onceToken != -1)
  {
    +[FPDRequest UUIDForSystemExecutablePath:];
  }

  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = hardcodedUUIDs_ret;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([pathCopy hasPrefix:{v9, v12}])
        {
          _filesIdentifier = [v4 objectForKeyedSubscript:v9];

          goto LABEL_16;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if ([pathCopy hasPrefix:@"/var/containers/Bundle/Application/"] && objc_msgSend(pathCopy, "hasSuffix:", @"/Files.app/Files"))
  {
    _filesIdentifier = [MEMORY[0x1E6967518] _filesIdentifier];
  }

  else
  {
    _filesIdentifier = 0;
  }

LABEL_16:

  return _filesIdentifier;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)requestedExtent
{
  length = self->_requestedExtent.length;
  location = self->_requestedExtent.location;
  result.var1 = length;
  result.var0 = location;
  return result;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)providedExtent
{
  length = self->_providedExtent.length;
  location = self->_providedExtent.location;
  result.var1 = length;
  result.var0 = location;
  return result;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)audit_token
{
  v3 = *&self[3].var0[2];
  *retstr->var0 = *&self[2].var0[6];
  *&retstr->var0[4] = v3;
  return self;
}

- (void)setAudit_token:(id *)audit_token
{
  v3 = *audit_token->var0;
  *&self->_audit_token.val[4] = *&audit_token->var0[4];
  *self->_audit_token.val = v3;
}

@end