@interface NSObject(RBSXPCSecureCoding)
- (uint64_t)supportsRBSXPCSecureCoding;
@end

@implementation NSObject(RBSXPCSecureCoding)

- (uint64_t)supportsRBSXPCSecureCoding
{
  v1 = objc_opt_class();

  return [v1 supportsRBSXPCSecureCoding];
}

@end