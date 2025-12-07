@interface MCMXPCMessageDeleteUserManagedAsset
- (MCMXPCMessageDeleteUserManagedAsset)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageDeleteUserManagedAsset

- (MCMXPCMessageDeleteUserManagedAsset)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v15 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  xpc_dictionary_set_uint64(objectCopy, "ContainerClass", 2uLL);
  v14.receiver = self;
  v14.super_class = MCMXPCMessageDeleteUserManagedAsset;
  v10 = [(MCMXPCMessageWithContainerBase *)&v14 initWithXPCObject:objectCopy context:contextCopy error:error];

  if (v10)
  {
    v11 = [(MCMXPCMessageBase *)v10 nsStringValueFromXPCObject:objectCopy key:"SourcePath"];
    sourceRelativePath = v10->_sourceRelativePath;
    v10->_sourceRelativePath = v11;

    if (!v10->_sourceRelativePath)
    {
      if (error)
      {
        *error = 11;
      }

      v10 = 0;
    }
  }

  return v10;
}

@end