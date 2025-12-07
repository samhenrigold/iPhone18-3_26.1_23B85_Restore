@interface MCMXPCMessageUserManagedAssetsPath
- (MCMXPCMessageUserManagedAssetsPath)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageUserManagedAssetsPath

- (MCMXPCMessageUserManagedAssetsPath)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  contextCopy = context;
  xpc_dictionary_set_uint64(objectCopy, "ContainerClass", 2uLL);
  v12.receiver = self;
  v12.super_class = MCMXPCMessageUserManagedAssetsPath;
  v10 = [(MCMXPCMessageWithContainerBase *)&v12 initWithXPCObject:objectCopy context:contextCopy error:error];

  if (v10)
  {
    v10->_relative = xpc_dictionary_get_BOOL(objectCopy, "IsRelative");
    v10->_createIfNecessary = xpc_dictionary_get_BOOL(objectCopy, "CreateIfNecessary");
  }

  return v10;
}

@end