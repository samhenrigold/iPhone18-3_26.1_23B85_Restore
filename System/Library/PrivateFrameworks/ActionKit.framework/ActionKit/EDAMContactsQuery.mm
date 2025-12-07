@interface EDAMContactsQuery
+ (id)structFields;
@end

@implementation EDAMContactsQuery

+ (id)structFields
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1398;
  if (!structFields_structFields_1398)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"maxEntries"];
    v8[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"prefix"];
    v8[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    v6 = structFields_structFields_1398;
    structFields_structFields_1398 = v5;

    v2 = structFields_structFields_1398;
  }

  return v2;
}

@end