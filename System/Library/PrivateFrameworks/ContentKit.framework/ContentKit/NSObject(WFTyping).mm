@interface NSObject(WFTyping)
- (WFObjectType)wfType;
@end

@implementation NSObject(WFTyping)

- (WFObjectType)wfType
{
  v1 = objc_opt_class();

  return [WFObjectType typeWithClass:v1];
}

@end