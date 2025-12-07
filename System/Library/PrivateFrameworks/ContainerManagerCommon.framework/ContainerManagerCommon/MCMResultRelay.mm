@interface MCMResultRelay
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultRelay)initWithXPCReplyFromRelay:(id)relay;
@end

@implementation MCMResultRelay

- (BOOL)encodeResultOntoReply:(id)reply
{
  v12 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v11.receiver = self;
  v11.super_class = MCMResultRelay;
  v5 = [(MCMResultBase *)&v11 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      xpcReplyFromRelay = [(MCMResultRelay *)self xpcReplyFromRelay];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __40__MCMResultRelay_encodeResultOntoReply___block_invoke;
      v9[3] = &unk_1E86B0F18;
      v10 = replyCopy;
      xpc_dictionary_apply(xpcReplyFromRelay, v9);
    }
  }

  return v5;
}

- (MCMResultRelay)initWithXPCReplyFromRelay:(id)relay
{
  v10 = *MEMORY[0x1E69E9840];
  relayCopy = relay;
  v9.receiver = self;
  v9.super_class = MCMResultRelay;
  v6 = [(MCMResultBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcReplyFromRelay, relay);
  }

  return v7;
}

@end