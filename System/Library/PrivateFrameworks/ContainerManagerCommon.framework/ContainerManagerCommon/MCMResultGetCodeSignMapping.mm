@interface MCMResultGetCodeSignMapping
- (BOOL)encodeResultOntoReply:(id)reply;
- (MCMResultGetCodeSignMapping)initWithInfo:(id)info;
@end

@implementation MCMResultGetCodeSignMapping

- (BOOL)encodeResultOntoReply:(id)reply
{
  v11 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  v10.receiver = self;
  v10.super_class = MCMResultGetCodeSignMapping;
  v5 = [(MCMResultBase *)&v10 encodeResultOntoReply:replyCopy];
  if (v5)
  {
    error = [(MCMResultBase *)self error];

    if (!error)
    {
      info = [(MCMResultGetCodeSignMapping *)self info];
      v8 = _CFXPCCreateXPCObjectFromCFObject();

      if (v8)
      {
        xpc_dictionary_set_value(replyCopy, "ReplyInfoDictionary", v8);
      }
    }
  }

  return v5;
}

- (MCMResultGetCodeSignMapping)initWithInfo:(id)info
{
  v10 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v9.receiver = self;
  v9.super_class = MCMResultGetCodeSignMapping;
  v6 = [(MCMResultBase *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_info, info);
  }

  return v7;
}

@end