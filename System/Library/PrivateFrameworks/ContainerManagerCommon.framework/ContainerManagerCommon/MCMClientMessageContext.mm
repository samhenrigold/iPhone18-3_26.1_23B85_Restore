@interface MCMClientMessageContext
- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken;
- (MCMPOSIXUser)posixUser;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForCurrentThreadContextWithXPCMessage:(id)message userIdentityCache:(id)cache;
@end

@implementation MCMClientMessageContext

- ($115C4C562B26FF47E01F9F4EA65B5887)auditToken
{
  v3 = *&self->var0[6];
  *retstr->var0 = *&self->var0[2];
  *&retstr->var0[4] = v3;
  return self;
}

- (MCMPOSIXUser)posixUser
{
  v2 = [MCMPOSIXUser posixUserWithUID:container_audit_token_get_euid(), *self->_auditToken.val, *&self->_auditToken.val[2], *&self->_auditToken.val[4], *&self->_auditToken.val[6]];

  return v2;
}

- (id)copyWithZone:(_NSZone *)zone
{

  return self;
}

- (id)initForCurrentThreadContextWithXPCMessage:(id)message userIdentityCache:(id)cache
{
  v15 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  cacheCopy = cache;
  v14.receiver = self;
  v14.super_class = MCMClientMessageContext;
  v9 = [(MCMClientMessageContext *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_message, message);
    xpc_dictionary_get_audit_token();
    objc_storeStrong(&v10->_userIdentityCache, cache);
    personaUniqueStringForCurrentContext = [cacheCopy personaUniqueStringForCurrentContext];
    personaUniqueString = v10->_personaUniqueString;
    v10->_personaUniqueString = personaUniqueStringForCurrentContext;
  }

  return v10;
}

@end