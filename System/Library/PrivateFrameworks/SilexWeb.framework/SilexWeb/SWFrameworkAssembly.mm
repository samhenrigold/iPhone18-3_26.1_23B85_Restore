@interface SWFrameworkAssembly
- (SWFrameworkAssembly)init;
@end

@implementation SWFrameworkAssembly

- (SWFrameworkAssembly)init
{
  v15[6] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = SWFrameworkAssembly;
  v2 = [(SWFrameworkAssembly *)&v14 init];
  v4 = v2;
  if (v2)
  {
    SWSetupLogging(v2, v3);
    v5 = objc_alloc_init(SWCoreAssembly);
    v15[0] = v5;
    v6 = objc_alloc_init(SWFactoryAssembly);
    v15[1] = v6;
    v7 = objc_alloc_init(SWManagerAssembly);
    v15[2] = v7;
    v8 = objc_alloc_init(SWProviderAssembly);
    v15[3] = v8;
    v9 = objc_alloc_init(SWSetupAssembly);
    v15[4] = v9;
    v10 = objc_alloc_init(SWViewControllerAssembly);
    v15[5] = v10;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:6];
    assemblies = v4->_assemblies;
    v4->_assemblies = v11;
  }

  return v4;
}

@end