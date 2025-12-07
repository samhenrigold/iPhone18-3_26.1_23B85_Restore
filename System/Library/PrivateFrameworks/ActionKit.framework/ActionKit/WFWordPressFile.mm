@interface WFWordPressFile
+ (id)JSONKeyPathsByPropertyKey;
@end

@implementation WFWordPressFile

+ (id)JSONKeyPathsByPropertyKey
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"fileId";
  v4[1] = @"filename";
  v5[0] = @"id";
  v5[1] = @"file";
  v4[2] = @"url";
  v4[3] = @"type";
  v5[2] = @"url";
  v5[3] = @"type";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

@end