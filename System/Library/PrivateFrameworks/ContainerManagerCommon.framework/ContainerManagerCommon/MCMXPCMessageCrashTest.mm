@interface MCMXPCMessageCrashTest
- (MCMXPCMessageCrashTest)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageCrashTest

- (MCMXPCMessageCrashTest)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v12 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = MCMXPCMessageCrashTest;
  v9 = [(MCMXPCMessageBase *)&v11 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_crashCount = xpc_dictionary_get_uint64(objectCopy, "NumRetryCrashes");
    v9->_setTestLocks = xpc_dictionary_get_uint64(objectCopy, "TestLock");
  }

  return v9;
}

@end