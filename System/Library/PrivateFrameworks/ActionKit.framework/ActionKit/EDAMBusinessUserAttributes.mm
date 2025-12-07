@interface EDAMBusinessUserAttributes
+ (id)structFields;
@end

@implementation EDAMBusinessUserAttributes

+ (id)structFields
{
  v13[7] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_334;
  if (!structFields_structFields_334)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"title"];
    v4 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"location", v3];
    v13[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:11 optional:1 name:@"department"];
    v13[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"mobilePhone"];
    v13[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"linkedInProfileUrl"];
    v13[4] = v7;
    v8 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"workPhone"];
    v13[5] = v8;
    v9 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"companyStartDate"];
    v13[6] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:7];
    v11 = structFields_structFields_334;
    structFields_structFields_334 = v10;

    v2 = structFields_structFields_334;
  }

  return v2;
}

@end