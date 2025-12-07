@interface WFPodcastShowObject
+ (id)JSONKeyPathsByPropertyKey;
+ (id)childrenJSONTransformer;
@end

@implementation WFPodcastShowObject

+ (id)childrenJSONTransformer
{
  v2 = MEMORY[0x277D7C070];
  v3 = objc_opt_class();

  return [v2 arrayTransformerWithModelClass:v3];
}

+ (id)JSONKeyPathsByPropertyKey
{
  v5[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"title";
  v4[1] = @"uuid";
  v5[0] = @"title";
  v5[1] = @"uuid";
  v4[2] = @"storeId";
  v4[3] = @"feedURL";
  v5[2] = @"storeId";
  v5[3] = @"feedUrl";
  v4[4] = @"children";
  v5[4] = @"children";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:5];

  return v2;
}

@end