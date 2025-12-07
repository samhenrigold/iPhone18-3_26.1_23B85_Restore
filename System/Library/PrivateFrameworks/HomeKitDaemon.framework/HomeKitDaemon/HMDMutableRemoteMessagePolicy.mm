@interface HMDMutableRemoteMessagePolicy
+ (id)remoteMessagePolicyWithRequiresSecureMessage:(BOOL)message allowsAnonymousMessage:(BOOL)anonymousMessage requiresAccountMessage:(BOOL)accountMessage transportRestriction:(unint64_t)restriction roles:(unint64_t)roles;
@end

@implementation HMDMutableRemoteMessagePolicy

+ (id)remoteMessagePolicyWithRequiresSecureMessage:(BOOL)message allowsAnonymousMessage:(BOOL)anonymousMessage requiresAccountMessage:(BOOL)accountMessage transportRestriction:(unint64_t)restriction roles:(unint64_t)roles
{
  v7 = [[self alloc] __initWithRequiresSecureMessage:message allowsAnonymousMessage:anonymousMessage requiresAccountMessage:accountMessage transportRestriction:restriction roles:roles];

  return v7;
}

@end