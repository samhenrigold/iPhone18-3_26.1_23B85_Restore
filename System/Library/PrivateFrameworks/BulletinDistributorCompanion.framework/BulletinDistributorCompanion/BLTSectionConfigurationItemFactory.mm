@interface BLTSectionConfigurationItemFactory
+ (id)itemForSection:(id)section dictionary:(id)dictionary;
@end

@implementation BLTSectionConfigurationItemFactory

+ (id)itemForSection:(id)section dictionary:(id)dictionary
{
  sectionCopy = section;
  dictionaryCopy = dictionary;
  if (itemForSection_dictionary__onceToken != -1)
  {
    +[BLTSectionConfigurationItemFactory itemForSection:dictionary:];
  }

  v7 = [itemForSection_dictionary___sectionToItemClassMap objectForKeyedSubscript:sectionCopy];
  if (!v7)
  {
    v7 = objc_opt_class();
  }

  v8 = [[v7 alloc] initWithDictionary:dictionaryCopy];

  return v8;
}

void __64__BLTSectionConfigurationItemFactory_itemForSection_dictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.cmas";
  v4[1] = @"com.apple.MobileSMS";
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];
  v3 = itemForSection_dictionary___sectionToItemClassMap;
  itemForSection_dictionary___sectionToItemClassMap = v2;
}

@end