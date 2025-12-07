@interface MCMResultAcquireSandboxExtensionWithUUID
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultAcquireSandboxExtensionWithUUID)initWithSandboxToken:(id)token personaUniqueString:(id)string url:(id)url;
@end

@implementation MCMResultAcquireSandboxExtensionWithUUID

- (BOOL)encodeResultOntoReply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11.receiver = self;
  v11.super_class = MCMResultAcquireSandboxExtensionWithUUID;
  v5 = [(MCMResultBase *)&v11 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      personaUniqueString = [(MCMResultAcquireSandboxExtensionWithUUID *)self personaUniqueString];

      if (personaUniqueString)
      {
        personaUniqueString2 = [(MCMResultAcquireSandboxExtensionWithUUID *)self personaUniqueString];
        xpc_dictionary_set_string(replyCopy, "ReplyPersonaUniqueString", [personaUniqueString2 UTF8String]);
      }

      sandboxToken = [(MCMResultAcquireSandboxExtensionWithUUID *)self sandboxToken];
      xpc_dictionary_set_string(replyCopy, "ReplySandboxToken", [sandboxToken UTF8String]);
    }
  }

  return v5;
}

- (MCMResultAcquireSandboxExtensionWithUUID)initWithSandboxToken:(id)token personaUniqueString:(id)string url:(id)url
{
  v17 = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  stringCopy = string;
  urlCopy = url;
  v16.receiver = self;
  v16.super_class = MCMResultAcquireSandboxExtensionWithUUID;
  v12 = [(MCMResultBase *)&v16 init];
  p_isa = &v12->super.super.isa;
  if (v12)
  {
    if (!tokenCopy)
    {
      v14 = 0;
      goto LABEL_6;
    }

    objc_storeStrong(&v12->_sandboxToken, token);
    objc_storeStrong(p_isa + 6, string);
    objc_storeStrong(p_isa + 5, url);
  }

  v14 = p_isa;
LABEL_6:

  return v14;
}

@end