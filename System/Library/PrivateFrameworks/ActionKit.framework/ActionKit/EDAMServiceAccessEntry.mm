@interface EDAMServiceAccessEntry
+ (id)structFields;
@end

@implementation EDAMServiceAccessEntry

+ (id)structFields
{
  v12[6] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2866;
  if (!structFields_structFields_2866)
  {
    v3 = [FATField fieldWithIndex:1 type:10 optional:1 name:@"accessTime"];
    v12[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"serviceName"];
    v12[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:8 optional:1 name:@"userId"];
    v12[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:8 optional:1 name:@"authenticatedClientUserId"];
    v12[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:8 optional:1 name:@"apiKeyId"];
    v12[4] = v7;
    v8 = [FATField fieldWithIndex:6 type:2 optional:1 name:@"businessAdmin"];
    v12[5] = v8;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:6];
    v10 = structFields_structFields_2866;
    structFields_structFields_2866 = v9;

    v2 = structFields_structFields_2866;
  }

  return v2;
}

@end