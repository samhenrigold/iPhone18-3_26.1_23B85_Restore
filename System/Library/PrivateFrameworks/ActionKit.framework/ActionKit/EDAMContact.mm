@interface EDAMContact
+ (id)structFields;
@end

@implementation EDAMContact

+ (id)structFields
{
  v13[7] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1144;
  if (!structFields_structFields_1144)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"name"];
    v4 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"id", v3];
    v13[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:8 optional:1 name:@"type"];
    v13[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"photoUrl"];
    v13[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:10 optional:1 name:@"photoLastUpdated"];
    v13[4] = v7;
    v8 = [FATField fieldWithIndex:6 type:16 optional:1 name:@"messagingPermit"];
    v13[5] = v8;
    v9 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"messagingPermitExpires"];
    v13[6] = v9;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:7];
    v11 = structFields_structFields_1144;
    structFields_structFields_1144 = v10;

    v2 = structFields_structFields_1144;
  }

  return v2;
}

@end