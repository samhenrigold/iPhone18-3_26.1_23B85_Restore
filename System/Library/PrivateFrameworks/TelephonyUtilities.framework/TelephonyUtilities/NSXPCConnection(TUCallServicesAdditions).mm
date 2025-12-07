@interface NSXPCConnection(TUCallServicesAdditions)
+ (id)callServicesClientXPCInterface;
+ (id)callServicesServerXPCInterface;
- (__CFString)processBundleIdentifier;
- (id)processName;
- (void)performBlockOnQueue:()TUCallServicesAdditions;
@end

@implementation NSXPCConnection(TUCallServicesAdditions)

- (id)processName
{
  v4 = *MEMORY[0x1E69E9840];
  if (proc_name([self processIdentifier], &v3, 0x100u) < 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v3];
  }

  return v1;
}

- (__CFString)processBundleIdentifier
{
  memset(&v6[1], 0, sizeof(audit_token_t));
  objc_msgSend_auditToken(self, a2);
  v6[0] = v6[1];
  v2 = SecTaskCreateWithAuditToken(0, v6);
  if (v2)
  {
    v3 = v2;
    v4 = SecTaskCopySigningIdentifier(v2, 0);
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)callServicesServerXPCInterface
{
  if (callServicesServerXPCInterface_onceToken != -1)
  {
    +[NSXPCConnection(TUCallServicesAdditions) callServicesServerXPCInterface];
  }

  v1 = callServicesServerXPCInterface_xpcInterface;

  return v1;
}

+ (id)callServicesClientXPCInterface
{
  if (callServicesClientXPCInterface_onceToken != -1)
  {
    +[NSXPCConnection(TUCallServicesAdditions) callServicesClientXPCInterface];
  }

  v1 = callServicesClientXPCInterface_xpcInterface;

  return v1;
}

- (void)performBlockOnQueue:()TUCallServicesAdditions
{
  v4 = a3;
  _queue = [self _queue];
  dispatch_async(_queue, v4);
}

@end