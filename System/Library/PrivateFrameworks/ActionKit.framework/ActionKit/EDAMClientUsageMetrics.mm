@interface EDAMClientUsageMetrics
+ (id)structFields;
@end

@implementation EDAMClientUsageMetrics

+ (id)structFields
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1038;
  if (!structFields_structFields_1038)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"sessions"];
    v4 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"subjectConsumerKey", v3];
    v9[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:11 optional:1 name:@"subjectConsumerSecret"];
    v9[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    v7 = structFields_structFields_1038;
    structFields_structFields_1038 = v6;

    v2 = structFields_structFields_1038;
  }

  return v2;
}

@end