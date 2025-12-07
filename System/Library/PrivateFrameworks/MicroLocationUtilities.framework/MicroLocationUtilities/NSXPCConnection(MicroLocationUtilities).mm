@interface NSXPCConnection(MicroLocationUtilities)
+ (id)_signingIdentityForAuditToken:()MicroLocationUtilities;
+ (id)signingIdentityForSelf;
- (id)signingIdentity;
- (uint64_t)hasBooleanEntitlement:()MicroLocationUtilities;
@end

@implementation NSXPCConnection(MicroLocationUtilities)

+ (id)signingIdentityForSelf
{
  *task_info_out = 0u;
  v7 = 0u;
  task_info_outCnt = 8;
  if (task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt))
  {
    v2 = 0;
  }

  else
  {
    v4[0] = *task_info_out;
    v4[1] = v7;
    v2 = [self _signingIdentityForAuditToken:v4];
  }

  return v2;
}

- (id)signingIdentity
{
  v3 = objc_opt_class();
  objc_msgSend_auditToken(self);
  v4 = [v3 _signingIdentityForAuditToken:&v6];

  return v4;
}

- (uint64_t)hasBooleanEntitlement:()MicroLocationUtilities
{
  v1 = [self valueForEntitlement:?];
  bOOLValue = [v1 BOOLValue];

  return bOOLValue;
}

+ (id)_signingIdentityForAuditToken:()MicroLocationUtilities
{
  v3 = xpc_copy_code_signing_identity_for_token();
  if (v3)
  {
    v4 = v3;
    v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:v3];
    free(v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end