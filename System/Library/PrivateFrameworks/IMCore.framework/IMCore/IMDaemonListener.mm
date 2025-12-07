@interface IMDaemonListener
- (BOOL)_hidingDisconnect;
- (BOOL)hasPostedSetupComplete;
- (BOOL)isHoldingChatMessages;
- (BOOL)isSetupComplete;
- (BOOL)shouldHoldChatMessages;
- (NSArray)allServices;
- (NSDictionary)persistentProperties;
- (NSDictionary)properties;
- (NSMutableDictionary)_contexts;
- (NSString)myStatusMessage;
- (id)_stampForContext:(id)context;
- (id)serviceWithName:(id)name;
- (id)valueOfPersistentProperty:(id)property;
- (id)valueOfProperty:(id)property;
- (unint64_t)myStatus;
- (unint64_t)vcCapabilities;
- (unsigned)myIdleTime;
- (void)_noteDisconnected;
- (void)_resetPostedSetupCompleted;
- (void)_setHidingDisconnect:(BOOL)disconnect;
- (void)_setStamp:(id)stamp forContext:(id)context;
- (void)addHandler:(id)handler;
- (void)holdChatMessages;
- (void)releaseHeldChatMessages;
- (void)removeHandler:(id)handler;
@end

@implementation IMDaemonListener

- (NSDictionary)properties
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (id)valueOfProperty:(id)property
{
  propertyCopy = property;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v4);
}

- (NSDictionary)persistentProperties
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (id)valueOfPersistentProperty:(id)property
{
  propertyCopy = property;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v4);
}

- (void)addHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v4);
}

- (void)removeHandler:(id)handler
{
  handlerCopy = handler;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v4);
}

- (unint64_t)myStatus
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (NSString)myStatusMessage
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (unsigned)myIdleTime
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (unint64_t)vcCapabilities
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (void)holdChatMessages
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (void)releaseHeldChatMessages
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)shouldHoldChatMessages
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)isHoldingChatMessages
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)isSetupComplete
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)hasPostedSetupComplete
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (NSArray)allServices
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (void)_noteDisconnected
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (id)serviceWithName:(id)name
{
  nameCopy = name;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v4);
}

- (void)_setStamp:(id)stamp forContext:(id)context
{
  stampCopy = stamp;
  contextCopy = context;
  v7 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v7);
}

- (id)_stampForContext:(id)context
{
  contextCopy = context;
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v4);
}

- (void)_resetPostedSetupCompleted
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (NSMutableDictionary)_contexts
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (BOOL)_hidingDisconnect
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v2);
}

- (void)_setHidingDisconnect:(BOOL)disconnect
{
  v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Not yet implemented" userInfo:0];
  objc_exception_throw(v3);
}

@end