@interface SNAssembly
- (SNAssembly)init;
@end

@implementation SNAssembly

- (SNAssembly)init
{
  v8[1] = *MEMORY[0x277D85DE8];
  v7.receiver = self;
  v7.super_class = SNAssembly;
  v2 = [(SNAssembly *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(SNTestAssembly);
    v8[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
    assemblies = v2->_assemblies;
    v2->_assemblies = v4;
  }

  return v2;
}

@end