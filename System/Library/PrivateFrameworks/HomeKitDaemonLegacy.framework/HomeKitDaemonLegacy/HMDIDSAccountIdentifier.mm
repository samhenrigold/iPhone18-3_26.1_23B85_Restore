@interface HMDIDSAccountIdentifier
@end

@implementation HMDIDSAccountIdentifier

uint64_t __37___HMDIDSAccountIdentifier_namespace__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"DCD43BD3-6928-461D-9C9B-1BC859E81BC7"];
  v1 = namespace_namespace_183;
  namespace_namespace_183 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end