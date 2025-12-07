@interface MCMXPCMessageDeletePluginDataContainerContents
- (MCMXPCMessageDeletePluginDataContainerContents)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
- (unsigned)disposition;
@end

@implementation MCMXPCMessageDeletePluginDataContainerContents

- (unsigned)disposition
{
  v6 = *MEMORY[0x1E69E9840];
  v5.receiver = self;
  v5.super_class = MCMXPCMessageDeletePluginDataContainerContents;
  disposition = [(MCMXPCMessageWithContainerBase *)&v5 disposition];
  if (disposition == 1)
  {
    v3 = containermanager_copy_global_configuration();
    disposition = [v3 dispositionForContainerClass:4];
  }

  return disposition;
}

- (MCMXPCMessageDeletePluginDataContainerContents)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v13 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  objectCopy = object;
  xpc_dictionary_set_uint64(objectCopy, "ContainerClass", 4uLL);
  v12.receiver = self;
  v12.super_class = MCMXPCMessageDeletePluginDataContainerContents;
  v10 = [(MCMXPCMessageWithContainerBase *)&v12 initWithXPCObject:objectCopy context:contextCopy error:error];

  return v10;
}

@end