@interface EDAMLinkedNotebook
+ (id)structFields;
@end

@implementation EDAMLinkedNotebook

+ (id)structFields
{
  v17[11] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2478;
  if (!structFields_structFields_2478)
  {
    v16 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"shareName"];
    v17[0] = v16;
    v15 = [FATField fieldWithIndex:3 type:11 optional:1 name:@"username"];
    v17[1] = v15;
    v3 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"shardId"];
    v17[2] = v3;
    v4 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"sharedNotebookGlobalId"];
    v17[3] = v4;
    v5 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"uri"];
    v17[4] = v5;
    v6 = [FATField fieldWithIndex:7 type:11 optional:1 name:@"guid"];
    v17[5] = v6;
    v7 = [FATField fieldWithIndex:8 type:8 optional:1 name:@"updateSequenceNum"];
    v17[6] = v7;
    v8 = [FATField fieldWithIndex:9 type:11 optional:1 name:@"noteStoreUrl"];
    v17[7] = v8;
    v9 = [FATField fieldWithIndex:10 type:11 optional:1 name:@"webApiUrlPrefix"];
    v17[8] = v9;
    v10 = [FATField fieldWithIndex:11 type:11 optional:1 name:@"stack"];
    v17[9] = v10;
    v11 = [FATField fieldWithIndex:12 type:8 optional:1 name:@"businessId"];
    v17[10] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:11];
    v13 = structFields_structFields_2478;
    structFields_structFields_2478 = v12;

    v2 = structFields_structFields_2478;
  }

  return v2;
}

@end