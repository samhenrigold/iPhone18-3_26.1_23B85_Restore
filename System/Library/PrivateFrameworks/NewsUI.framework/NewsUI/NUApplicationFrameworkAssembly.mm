@interface NUApplicationFrameworkAssembly
- (NUApplicationFrameworkAssembly)init;
@end

@implementation NUApplicationFrameworkAssembly

- (NUApplicationFrameworkAssembly)init
{
  v11[4] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = NUApplicationFrameworkAssembly;
  v2 = [(NUApplicationFrameworkAssembly *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(NUCoreAssembly);
    v11[0] = v3;
    v4 = objc_alloc_init(NUArticleAssembly);
    v11[1] = v4;
    v5 = objc_alloc_init(NUApplicationAssembly);
    v11[2] = v5;
    v6 = objc_alloc_init(NUManagerAssembly);
    v11[3] = v6;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:4];
    assemblies = v2->_assemblies;
    v2->_assemblies = v7;
  }

  return v2;
}

@end