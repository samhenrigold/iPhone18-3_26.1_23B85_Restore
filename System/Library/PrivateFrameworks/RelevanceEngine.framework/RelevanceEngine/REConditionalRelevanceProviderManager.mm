@interface REConditionalRelevanceProviderManager
+ (id)_dependencyClasses;
+ (id)_features;
@end

@implementation REConditionalRelevanceProviderManager

+ (id)_dependencyClasses
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:&v6 count:7];
  v4 = [v2 setWithArray:{v3, v6, v7, v8, v9, v10, v11}];

  return v4;
}

+ (id)_features
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = +[REFeature conditionalFeature];
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];

  return v3;
}

@end