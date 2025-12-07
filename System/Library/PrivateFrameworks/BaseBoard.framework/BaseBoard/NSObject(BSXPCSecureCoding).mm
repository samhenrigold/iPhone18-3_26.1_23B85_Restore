@interface NSObject(BSXPCSecureCoding)
- (uint64_t)supportsBSXPCSecureCoding;
@end

@implementation NSObject(BSXPCSecureCoding)

- (uint64_t)supportsBSXPCSecureCoding
{
  v1 = objc_opt_class();

  return [v1 supportsBSXPCSecureCoding];
}

@end