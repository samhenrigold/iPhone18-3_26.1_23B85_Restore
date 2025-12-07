@interface ProxyDefinitionDirectory
@end

@implementation ProxyDefinitionDirectory

void ___ProxyDefinitionDirectory_block_invoke(uint64_t a1)
{
  v8[1] = *MEMORY[0x277D85DE8];
  v1 = PTPrototypeDirectory(a1);
  v2 = [v1 stringByAppendingPathComponent:@"ProxyDefinitions"];
  v3 = _ProxyDefinitionDirectory___path;
  _ProxyDefinitionDirectory___path = v2;

  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = _ProxyDefinitionDirectory___path;
  v7 = *MEMORY[0x277CCA160];
  v8[0] = @"mobile";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 createDirectoryAtPath:v5 withIntermediateDirectories:1 attributes:v6 error:0];

  PTDisableFileProtection(_ProxyDefinitionDirectory___path);
}

@end