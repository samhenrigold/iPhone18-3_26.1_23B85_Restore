@interface EDAMSharedNotebook
+ (id)structFields;
@end

@implementation EDAMSharedNotebook

+ (id)structFields
{
  v22[16] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2155;
  if (!structFields_structFields_2155)
  {
    v21 = [FATField fieldWithIndex:1 type:10 optional:1 name:@"id"];
    v22[0] = v21;
    v20 = [FATField fieldWithIndex:2 type:8 optional:1 name:@"userId"];
    v22[1] = v20;
    v19 = [FATField fieldWithIndex:3 type:11 optional:1 name:@"notebookGuid"];
    v22[2] = v19;
    v18 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"email"];
    v22[3] = v18;
    v17 = [FATField fieldWithIndex:18 type:10 optional:1 name:@"recipientIdentityId"];
    v22[4] = v17;
    v16 = [FATField fieldWithIndex:5 type:2 optional:1 name:@"notebookModifiable"];
    v22[5] = v16;
    v3 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"serviceCreated"];
    v22[6] = v3;
    v4 = [FATField fieldWithIndex:10 type:10 optional:1 name:@"serviceUpdated"];
    v22[7] = v4;
    v5 = [FATField fieldWithIndex:8 type:11 optional:1 name:@"globalId"];
    v22[8] = v5;
    v6 = [FATField fieldWithIndex:9 type:11 optional:1 name:@"username"];
    v22[9] = v6;
    v7 = [FATField fieldWithIndex:11 type:8 optional:1 name:@"privilege"];
    v22[10] = v7;
    v8 = [FATField fieldWithIndex:13 type:12 optional:1 name:@"recipientSettings" structClass:objc_opt_class()];
    v22[11] = v8;
    v9 = [FATField fieldWithIndex:14 type:8 optional:1 name:@"sharerUserId"];
    v22[12] = v9;
    v10 = [FATField fieldWithIndex:15 type:11 optional:1 name:@"recipientUsername"];
    v22[13] = v10;
    v11 = [FATField fieldWithIndex:17 type:8 optional:1 name:@"recipientUserId"];
    v22[14] = v11;
    v12 = [FATField fieldWithIndex:16 type:10 optional:1 name:@"serviceAssigned"];
    v22[15] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:16];
    v14 = structFields_structFields_2155;
    structFields_structFields_2155 = v13;

    v2 = structFields_structFields_2155;
  }

  return v2;
}

@end