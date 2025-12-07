@interface MCMXPCMessageSetDataProtection
- (MCMXPCMessageSetDataProtection)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error;
@end

@implementation MCMXPCMessageSetDataProtection

- (MCMXPCMessageSetDataProtection)initWithXPCObject:(id)object context:(id)context error:(unint64_t *)error
{
  v12 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v11.receiver = self;
  v11.super_class = MCMXPCMessageSetDataProtection;
  v9 = [(MCMXPCMessageWithContainerBase *)&v11 initWithXPCObject:objectCopy context:context error:error];
  if (v9)
  {
    v9->_thirdParty = xpc_dictionary_get_BOOL(objectCopy, "IsThirdParty");
    v9->_dataProtectionClass = xpc_dictionary_get_int64(objectCopy, "DataProtectionClass");
    v9->_retryIfLocked = xpc_dictionary_get_BOOL(objectCopy, "RetryIfLocked");
  }

  return v9;
}

@end