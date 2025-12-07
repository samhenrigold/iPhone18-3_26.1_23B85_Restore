@interface MCMXPCMessageWithKeyValueBase
- (MCMXPCMessageWithKeyValueBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageWithKeyValueBase

- (MCMXPCMessageWithKeyValueBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v18 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v17.receiver = self;
  v17.super_class = MCMXPCMessageWithKeyValueBase;
  v9 = [(MCMXPCMessageWithKeyBase *)&v17 initWithXPCObject:objectCopy context:context error:error];
  v10 = v9;
  if (!v9 || ((v16 = 1, [(MCMXPCMessageBase *)v9 nsObjectFromXPCObject:objectCopy key:"Value" error:&v16], v11 = objc_claimAutoreleasedReturnValue(), value = v10->_value, v10->_value = v11, value, !v10->_value) ? (v13 = v16 == 1) : (v13 = 1), v13))
  {
    v14 = v10;
  }

  else
  {
    if (error)
    {
      *error = v16;
    }

    v14 = 0;
  }

  return v14;
}

@end