@interface WFWordPressTerm
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFWordPressTerm

+ (id)JSONKeyPathsByPropertyKey
{
  v5[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"termId";
  v4[1] = @"name";
  v5[0] = @"term_id";
  v5[1] = @"name";
  v4[2] = @"taxonomy";
  v5[2] = @"taxonomy";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

@end