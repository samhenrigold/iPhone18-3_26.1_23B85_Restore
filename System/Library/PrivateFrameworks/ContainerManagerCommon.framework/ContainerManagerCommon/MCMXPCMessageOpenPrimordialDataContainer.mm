@interface MCMXPCMessageOpenPrimordialDataContainer
- (MCMXPCMessageOpenPrimordialDataContainer)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageOpenPrimordialDataContainer

- (MCMXPCMessageOpenPrimordialDataContainer)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v12 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = MCMXPCMessageOpenPrimordialDataContainer;
  v9 = [(MCMXPCMessageBase *)&v11 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_useCodeSignDatabase = xpc_dictionary_get_BOOL(objectCopy, "UseCodeSigningDatabase");
  }

  return v9;
}

@end