@interface MCMXPCMessageWithURLBase
- (MCMXPCMessageWithURLBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageWithURLBase

- (MCMXPCMessageWithURLBase)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v16 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v15.receiver = self;
  v15.super_class = MCMXPCMessageWithURLBase;
  v9 = [(MCMXPCMessageBase *)&v15 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    string = xpc_dictionary_get_string(objectCopy, "Path");
    if (string && ([MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:string isDirectory:1 relativeToURL:0], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      url = v9->_url;
      v9->_url = v11;
      v13 = v11;
    }

    else
    {
      if (error)
      {
        *error = 38;
      }

      v13 = v9;
      v9 = 0;
    }
  }

  return v9;
}

@end