@interface MCMXPCMessageFlushContainerCache
- (MCMXPCMessageFlushContainerCache)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageFlushContainerCache

- (MCMXPCMessageFlushContainerCache)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v12 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = MCMXPCMessageFlushContainerCache;
  v9 = [(MCMXPCMessageWithContainerClassBase *)&v11 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_transient = xpc_dictionary_get_BOOL(objectCopy, "Transient");
  }

  return v9;
}

@end