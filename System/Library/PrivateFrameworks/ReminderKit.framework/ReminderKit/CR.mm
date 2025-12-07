@interface CR
@end

@implementation CR

uint64_t __CR_REMObjectID_registerClass_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();

  return [CRCoder registerClass:v2 forType:@"com.apple.CRDT.REMObjectID"];
}

uint64_t __CR_NSString_registerClass_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_class();

  return [CRCoder registerClass:v2 forType:@"com.apple.CRDT.NSString"];
}

@end