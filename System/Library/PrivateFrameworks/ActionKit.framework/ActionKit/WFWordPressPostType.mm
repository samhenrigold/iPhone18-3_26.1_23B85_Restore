@interface WFWordPressPostType
+ (id)JSONKeyPathsByPropertyKey;
+ (id)allowedSecureCodingClassesByPropertyKey;
@end

@implementation WFWordPressPostType

+ (id)JSONKeyPathsByPropertyKey
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"name";
  v4[1] = @"label";
  v5[0] = @"name";
  v5[1] = @"label";
  v4[2] = @"labels";
  v5[2] = @"labels";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)allowedSecureCodingClassesByPropertyKey
{
  v7[2] = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WFWordPressPostType;
  v2 = objc_msgSendSuper2(&v6, sel_allowedSecureCodingClassesByPropertyKey);
  v3 = [v2 mutableCopy];

  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:2];
  [v3 setObject:v4 forKey:@"labels"];

  return v3;
}

@end