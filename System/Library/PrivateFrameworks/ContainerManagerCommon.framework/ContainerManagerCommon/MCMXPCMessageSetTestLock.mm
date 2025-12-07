@interface MCMXPCMessageSetTestLock
- (MCMXPCMessageSetTestLock)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageSetTestLock

- (MCMXPCMessageSetTestLock)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v12 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = MCMXPCMessageSetTestLock;
  v9 = [(MCMXPCMessageBase *)&v11 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_requestedLocks = xpc_dictionary_get_uint64(objectCopy, "TestLock");
    v9->_enable = xpc_dictionary_get_BOOL(objectCopy, "Enable");
  }

  return v9;
}

@end