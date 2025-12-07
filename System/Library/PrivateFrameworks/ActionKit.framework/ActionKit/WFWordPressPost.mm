@interface WFWordPressPost
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFWordPressPost

+ (id)JSONKeyPathsByPropertyKey
{
  v5[2] = *MEMORY[0x277D85DE8];
  v4[0] = @"postId";
  v4[1] = @"link";
  v5[0] = @"post_id";
  v5[1] = @"link";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

@end