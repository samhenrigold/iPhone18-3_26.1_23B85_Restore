@interface CMIOExtensionClient
+ (id)clientInfoWithPID:(int)d clientID:(id)iD auditToken:(id *)token stAttribution:(id)attribution isToProxy:(BOOL)proxy isFromProxyExtensionManager:(BOOL)manager;
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (BOOL)isEqual:(id)equal;
- (CMIOExtensionClient)initWithPID:(int)d clientID:(id)iD auditToken:(id *)token stAttribution:(id)attribution isToProxy:(BOOL)proxy isFromProxyExtensionManager:(BOOL)manager;
- (CMIOExtensionClient)initWithXPCDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCDictionary;
- (id)description;
- (id)redactedDescription;
- (int64_t)authorizationStatusForMediaType:(unsigned int)type;
- (void)copyXPCDictionary;
- (void)dealloc;
- (void)requestAccessForMediaType:(unsigned int)type performPreFlightTest:(BOOL)test reply:(id)reply;
@end

@implementation CMIOExtensionClient

+ (id)clientInfoWithPID:(int)d clientID:(id)iD auditToken:(id *)token stAttribution:(id)attribution isToProxy:(BOOL)proxy isFromProxyExtensionManager:(BOOL)manager
{
  managerCopy = manager;
  proxyCopy = proxy;
  v13 = *&d;
  v14 = objc_alloc(objc_opt_class());
  v15 = *&token->var0[4];
  v17[0] = *token->var0;
  v17[1] = v15;
  return [v14 initWithPID:v13 clientID:iD auditToken:v17 stAttribution:attribution isToProxy:proxyCopy isFromProxyExtensionManager:managerCopy];
}

- (CMIOExtensionClient)initWithPID:(int)d clientID:(id)iD auditToken:(id *)token stAttribution:(id)attribution isToProxy:(BOOL)proxy isFromProxyExtensionManager:(BOOL)manager
{
  v19.receiver = self;
  v19.super_class = CMIOExtensionClient;
  v13 = [(CMIOExtensionClient *)&v19 init:*&d];
  v14 = v13;
  if (v13)
  {
    v13->_pid = d;
    v13->_clientID = [iD copy];
    v15 = *&token->var0[4];
    v18[0] = *token->var0;
    v18[1] = v15;
    v14->_signingID = [CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:v18];
    v16 = *&token->var0[4];
    *v14->_auditToken.val = *token->var0;
    *&v14->_auditToken.val[4] = v16;
    v14->_isToProxy = proxy;
    v14->_isFromProxyExtensionManager = manager;
    v14->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionClient: pid %d, clientID %@>", v14->_pid, v14->_clientID];
    v14->_redactedDescription = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionClient: pid -, clientID ->"];
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionClient;
  [(CMIOExtensionClient *)&v3 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (id)redactedDescription
{
  v2 = self->_redactedDescription;

  return v2;
}

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v6) = 1;
    return v6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_23;
  }

  if (equal)
  {
    objc_msgSend_auditToken(equal);
  }

  clientID = self->_clientID;
  if (clientID == [equal clientID] || (v6 = -[NSUUID isEqual:](self->_clientID, "isEqual:", objc_msgSend(equal, "clientID"))) != 0)
  {
    signingID = self->_signingID;
    if (signingID == [equal signingID] || (v6 = -[NSString isEqual:](self->_signingID, "isEqual:", objc_msgSend(equal, "signingID"))) != 0)
    {
      if (*self->_auditToken.val == v15 && *&self->_auditToken.val[2] == 0 && *&self->_auditToken.val[4] == 0 && *&self->_auditToken.val[6] == 0)
      {
        pid = self->_pid;
        if (pid == [equal pid])
        {
          isToProxy = self->_isToProxy;
          if (isToProxy == [equal isToProxy])
          {
            isFromProxyExtensionManager = self->_isFromProxyExtensionManager;
            LOBYTE(v6) = isFromProxyExtensionManager == [equal isFromProxyExtensionManager];
            return v6;
          }
        }
      }

LABEL_23:
      LOBYTE(v6) = 0;
    }
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CMIOExtensionClient allocWithZone:zone];
  pid = self->_pid;
  clientID = self->_clientID;
  stAttribution = self->_stAttribution;
  isToProxy = self->_isToProxy;
  isFromProxyExtensionManager = self->_isFromProxyExtensionManager;
  v10 = *&self->_auditToken.val[4];
  v12[0] = *self->_auditToken.val;
  v12[1] = v10;
  return [(CMIOExtensionClient *)v4 initWithPID:pid clientID:clientID auditToken:v12 stAttribution:stAttribution isToProxy:isToProxy isFromProxyExtensionManager:isFromProxyExtensionManager];
}

- (id)copyXPCDictionary
{
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "pid", self->_pid);
  v4 = cmio_XPCMessageSetCFString(v3, "clientID", [(NSUUID *)self->_clientID UUIDString]);
  if (v4)
  {
    v6 = CMIOLog(v4, v5);
    if (v6)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionClient copyXPCDictionary];
      }
    }
  }

  signingID = self->_signingID;
  if (signingID)
  {
    v8 = cmio_XPCMessageSetCFString(v3, "signingID", signingID);
    if (v8)
    {
      v10 = CMIOLog(v8, v9);
      if (v10)
      {
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionClient copyXPCDictionary];
        }
      }
    }
  }

  return v3;
}

- (CMIOExtensionClient)initWithXPCDictionary:(id)dictionary
{
  if (dictionary)
  {
    uint64 = xpc_dictionary_get_uint64(dictionary, "pid");
    cf = 0;
    v6 = cmio_XPCMessageCopyCFString(dictionary, "clientID", &cf);
    if (v6)
    {
      v8 = CMIOLog(v6, v7);
      if (v8)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionClient initWithXPCDictionary:];
        }
      }
    }

    if (cf)
    {
      v9 = objc_alloc(MEMORY[0x277CCAD78]);
      v10 = [v9 initWithUUIDString:cf];
      CFRelease(cf);
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x277CCAD78]);
    }

    memset(v16, 0, sizeof(v16));
    v11 = [(CMIOExtensionClient *)self initWithPID:uint64 clientID:v10 auditToken:v16 stAttribution:0 isToProxy:1 isFromProxyExtensionManager:0];
    if (!v11->_signingID)
    {
      *&v16[0] = 0;
      v12 = cmio_XPCMessageCopyCFString(dictionary, "signingID", v16);
      if (v12)
      {
        v14 = CMIOLog(v12, v13);
        if (v14)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            [CMIOExtensionClient initWithXPCDictionary:];
          }
        }
      }

      if (*&v16[0])
      {
        v11->_signingID = *&v16[0];
      }
    }

    [(CMIOExtensionClient *)v11 setMicrophoneAuthorizationStatus:3];
    [(CMIOExtensionClient *)v11 setCameraAuthorizationStatus:3];
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"nil xpc dictionary"];
    return 0;
  }

  return v11;
}

- (int64_t)authorizationStatusForMediaType:(unsigned int)type
{
  v20 = *MEMORY[0x277D85DE8];
  if (type == 1936684398)
  {
    result = self->_microphoneAuthorizationStatus;
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = self->_cameraAuthorizationStatus;
    if (result)
    {
      return result;
    }
  }

  v6 = *&self->_auditToken.val[4];
  *v17 = *self->_auditToken.val;
  *&v17[16] = v6;
  v7 = TCCAccessPreflightWithAuditToken();
  v8 = v7;
  v10 = CMIOLog(v7, v9);
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
      pid = self->_pid;
      *v17 = 136316163;
      *&v17[4] = v12;
      *&v17[12] = 1024;
      *&v17[14] = 2593;
      *&v17[18] = 2080;
      *&v17[20] = "[CMIOExtensionClient authorizationStatusForMediaType:]";
      *&v17[28] = 1024;
      *&v17[30] = v8;
      v18 = 1025;
      v19 = pid;
      _os_log_impl(&dword_22EA08000, v11, OS_LOG_TYPE_INFO, "%s:%d:%s TCC preflight access returned %d for pid %{private}d", v17, 0x28u);
    }
  }

  if (v8)
  {
    if (v8 == 1)
    {
      if (TCCAccessRestricted())
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }
    }

    else
    {
      v14 = v8 == 2 && TCCAccessRestricted() != 0;
    }

    v15 = *&self->_auditToken.val[4];
    *v17 = *self->_auditToken.val;
    *&v17[16] = v15;
    if (cmio_clientIsRunningInXCTest(v17))
    {
      result = 3;
    }

    else
    {
      result = v14;
    }
  }

  else
  {
    result = 3;
  }

  v16 = 64;
  if (type == 1936684398)
  {
    v16 = 56;
  }

  *(&self->super.isa + v16) = result;
  return result;
}

- (void)requestAccessForMediaType:(unsigned int)type performPreFlightTest:(BOOL)test reply:(id)reply
{
  v43 = *MEMORY[0x277D85DE8];
  if (test && (v8 = [(CMIOExtensionClient *)self authorizationStatusForMediaType:*&type]) != 0)
  {
    v10 = v8;
    v11 = CMIOLog(v8, v9);
    if (v11)
    {
      v12 = v11;
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
        pid = self->_pid;
        *buf = 136317187;
        v26 = v13;
        v27 = 1024;
        v28 = 2630;
        v29 = 2080;
        v30 = "[CMIOExtensionClient requestAccessForMediaType:performPreFlightTest:reply:]";
        v31 = 1025;
        v32 = pid;
        v33 = 1024;
        v34 = HIBYTE(type);
        v35 = 1024;
        v36 = BYTE2(type);
        v37 = 1024;
        v38 = BYTE1(type);
        v39 = 1024;
        typeCopy = type;
        v41 = 1024;
        v42 = v10;
        _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_INFO, "%s:%d:%s authorizationStatus status for pid %{private}d type %c%c%c%c status %d", buf, 0x40u);
      }
    }

    (*(reply + 2))(reply, v10);
  }

  else
  {
    v15 = self->_pid;
    v16 = 72;
    v17 = MEMORY[0x277D6C1A8];
    if (type != 1936684398)
    {
      v16 = 73;
      v17 = MEMORY[0x277D6C120];
    }

    v18 = *v17;
    *(&self->super.isa + v16) = 1;
    global_queue = dispatch_get_global_queue(17, 0);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __76__CMIOExtensionClient_requestAccessForMediaType_performPreFlightTest_reply___block_invoke;
    v20[3] = &unk_27885BFE8;
    v20[5] = reply;
    v20[6] = v18;
    v21 = *self->_auditToken.val;
    v22 = *&self->_auditToken.val[4];
    v23 = v15;
    typeCopy2 = type;
    v20[4] = self;
    dispatch_async(global_queue, v20);
  }
}

uint64_t __76__CMIOExtensionClient_requestAccessForMediaType_performPreFlightTest_reply___block_invoke(uint64_t a1)
{
  keys[1] = *MEMORY[0x277D85DE8];
  keys[0] = *MEMORY[0x277D6C0B8];
  values = *MEMORY[0x277CBED28];
  v2 = CFDictionaryCreate(0, keys, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = *(a1 + 72);
  *v16 = *(a1 + 56);
  *&v16[16] = v3;
  v4 = TCCAccessCheckAuditToken();
  v6 = v4;
  if (v4)
  {
    v7 = 3;
  }

  else
  {
    v4 = TCCAccessRestricted();
    if (v4)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  v8 = CMIOLog(v4, v5);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
      v11 = *(a1 + 88);
      *v16 = 136316163;
      if (v6)
      {
        v12 = 89;
      }

      else
      {
        v12 = 78;
      }

      *&v16[4] = v10;
      *&v16[12] = 1024;
      *&v16[14] = 2656;
      *&v16[18] = 2080;
      *&v16[20] = "[CMIOExtensionClient requestAccessForMediaType:performPreFlightTest:reply:]_block_invoke";
      *&v16[28] = 1024;
      *&v16[30] = v12;
      v17 = 1025;
      v18 = v11;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_INFO, "%s:%d:%s TCC access returned %c for pid %{private}d", v16, 0x28u);
    }
  }

  CFRelease(v2);
  v13 = 64;
  if (*(a1 + 92) == 1936684398)
  {
    v13 = 56;
  }

  v14 = 72;
  if (*(a1 + 92) != 1936684398)
  {
    v14 = 73;
  }

  *(*(a1 + 32) + v13) = v7;
  *(*(a1 + 32) + v14) = 0;
  return (*(*(a1 + 40) + 16))(*(a1 + 40));
}

- (void)copyXPCDictionary
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithXPCDictionary:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProperties.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end