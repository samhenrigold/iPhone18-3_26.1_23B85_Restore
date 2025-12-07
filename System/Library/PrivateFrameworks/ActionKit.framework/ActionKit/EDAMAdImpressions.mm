@interface EDAMAdImpressions
+ (id)structFields;
@end

@implementation EDAMAdImpressions

+ (id)structFields
{
  v9[3] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_888;
  if (!structFields_structFields_888)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:0 name:@"adId"];
    v4 = [FATField fieldWithIndex:2 type:8 optional:0 name:@"impressionCount", v3];
    v9[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:8 optional:0 name:@"impressionTime"];
    v9[2] = v5;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:3];
    v7 = structFields_structFields_888;
    structFields_structFields_888 = v6;

    v2 = structFields_structFields_888;
  }

  return v2;
}

@end