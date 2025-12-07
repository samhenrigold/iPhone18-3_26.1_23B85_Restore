@interface HMDAppleAccountIdentifier
@end

@implementation HMDAppleAccountIdentifier

uint64_t __39___HMDAppleAccountIdentifier_namespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"8FCBC859-A091-41C8-A50D-A7652422D734"];
  v1 = namespace_namespace;
  namespace_namespace = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end