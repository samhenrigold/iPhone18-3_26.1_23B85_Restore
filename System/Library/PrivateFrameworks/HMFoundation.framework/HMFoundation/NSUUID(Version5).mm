@interface NSUUID(Version5)
+ (id)hmf_UUIDWithNamespace:()Version5 data:salts:;
- (id)initWithNamespace:()Version5 data:;
@end

@implementation NSUUID(Version5)

- (id)initWithNamespace:()Version5 data:
{
  selfCopy = 0;
  v7[2] = *MEMORY[0x277D85DE8];
  if (a3 && a4)
  {
    v7[0] = 0;
    v7[1] = 0;
    __NSUUIDCreateUUIDVersion5(v7, a3, a4, 0);
    self = [self initWithUUIDBytes:v7];
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)hmf_UUIDWithNamespace:()Version5 data:salts:
{
  v8[2] = *MEMORY[0x277D85DE8];
  v8[0] = 0;
  v8[1] = 0;
  __NSUUIDCreateUUIDVersion5(v8, a3, a4, a5);
  v6 = [[self alloc] initWithUUIDBytes:v8];

  return v6;
}

@end