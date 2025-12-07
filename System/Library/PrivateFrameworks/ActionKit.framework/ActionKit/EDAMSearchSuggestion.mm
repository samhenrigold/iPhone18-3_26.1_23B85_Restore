@interface EDAMSearchSuggestion
+ (id)structFields;
@end

@implementation EDAMSearchSuggestion

+ (id)structFields
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1297;
  if (!structFields_structFields_1297)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:0 name:@"suggestionText"];
    v7[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    v5 = structFields_structFields_1297;
    structFields_structFields_1297 = v4;

    v2 = structFields_structFields_1297;
  }

  return v2;
}

@end