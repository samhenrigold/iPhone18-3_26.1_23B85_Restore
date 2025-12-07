@interface GPMessagesAppHelper
+ (BOOL)getHostAuditToken:(id *)token;
@end

@implementation GPMessagesAppHelper

+ (BOOL)getHostAuditToken:(id *)token
{
  v4 = +[_MSMessageAppContext activeExtensionContext];
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    if (v4)
    {
      objc_msgSend_balloonHostAuditToken(v4);
    }

    *token->var0 = 0u;
    *&token->var0[4] = 0u;
  }

  return v5 & 1;
}

@end