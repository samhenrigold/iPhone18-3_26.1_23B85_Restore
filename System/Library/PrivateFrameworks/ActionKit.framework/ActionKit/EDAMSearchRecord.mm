@interface EDAMSearchRecord
+ (id)structFields;
@end

@implementation EDAMSearchRecord

+ (id)structFields
{
  v14[8] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1976;
  if (!structFields_structFields_1976)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"userQuery"];
    v14[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:12 optional:1 name:@"noteFilter" structClass:objc_opt_class()];
    v14[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:8 optional:1 name:@"searchScope"];
    v14[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:10 optional:1 name:@"searchTime"];
    v14[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"selectedNoteGUID"];
    v14[4] = v7;
    v8 = [FATField fieldWithIndex:6 type:10 optional:1 name:@"selectTime"];
    v14[5] = v8;
    v9 = [FATField fieldWithIndex:7 type:8 optional:1 name:@"noteRank"];
    v14[6] = v9;
    v10 = [FATField fieldWithIndex:8 type:8 optional:1 name:@"noteCount"];
    v14[7] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:8];
    v12 = structFields_structFields_1976;
    structFields_structFields_1976 = v11;

    v2 = structFields_structFields_1976;
  }

  return v2;
}

@end