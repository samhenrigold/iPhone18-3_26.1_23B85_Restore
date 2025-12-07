@interface ACDManagedObjectModel
@end

@implementation ACDManagedObjectModel

void ___ACDManagedObjectModel_block_invoke(uint64_t a1, uint64_t a2)
{
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v2 = [v5 URLForResource:@"accounts" withExtension:@"momd"];
  v3 = [objc_alloc(MEMORY[0x277CBE450]) initWithContentsOfURL:v2];
  v4 = _ACDManagedObjectModel_managedObjectModel;
  _ACDManagedObjectModel_managedObjectModel = v3;
}

@end