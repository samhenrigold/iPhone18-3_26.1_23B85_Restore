@interface MCMXPCMessageSetCodeSignMapping
- (MCMXPCMessageSetCodeSignMapping)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageSetCodeSignMapping

- (MCMXPCMessageSetCodeSignMapping)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v22 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v21.receiver = self;
  v21.super_class = MCMXPCMessageSetCodeSignMapping;
  v9 = [(MCMXPCMessageWithIdentifierBase *)&v21 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (!v9 || ((v20 = 1, [(MCMXPCMessageBase *)v9 nsObjectFromXPCObject:objectCopy key:"CodeSigningInfo" error:&v20], v11 = objc_claimAutoreleasedReturnValue(), info = v10->_info, v10->_info = v11, info, v13 = v20, !v10->_info) ? (v14 = v20 == 1) : (v14 = 1), v14 && ((v20 = 1, [(MCMXPCMessageBase *)v10 nsObjectFromXPCObject:objectCopy key:"OptionsDictionary" error:&v20], v15 = objc_claimAutoreleasedReturnValue(), options = v10->_options, v10->_options = v15, options, v13 = v20, !v10->_options) ? (v17 = v20 == 1) : (v17 = 1), v17)))
  {
    v18 = v10;
  }

  else
  {
    if (error)
    {
      *error = v13;
    }

    v18 = 0;
  }

  return v18;
}

@end