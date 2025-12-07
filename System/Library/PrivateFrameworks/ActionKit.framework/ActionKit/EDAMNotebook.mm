@interface EDAMNotebook
+ (id)structFields;
@end

@implementation EDAMNotebook

+ (id)structFields
{
  v23[15] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2407;
  if (!structFields_structFields_2407)
  {
    v22 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"guid"];
    v23[0] = v22;
    v21 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"name"];
    v23[1] = v21;
    v20 = [FATField fieldWithIndex:5 type:8 optional:1 name:@"updateSequenceNum"];
    v23[2] = v20;
    v19 = [FATField fieldWithIndex:6 type:2 optional:1 name:@"defaultNotebook"];
    v23[3] = v19;
    v18 = [FATField fieldWithIndex:7 type:10 optional:1 name:@"serviceCreated"];
    v23[4] = v18;
    v17 = [FATField fieldWithIndex:8 type:10 optional:1 name:@"serviceUpdated"];
    v23[5] = v17;
    v16 = [FATField fieldWithIndex:10 type:12 optional:1 name:@"publishing" structClass:objc_opt_class()];
    v23[6] = v16;
    v3 = [FATField fieldWithIndex:11 type:2 optional:1 name:@"published"];
    v23[7] = v3;
    v4 = [FATField fieldWithIndex:12 type:11 optional:1 name:@"stack"];
    v23[8] = v4;
    v5 = [FATField fieldWithIndex:0 type:10 optional:1 name:0];
    v6 = [FATField fieldWithIndex:13 type:15 optional:1 name:@"sharedNotebookIds" valueField:v5];
    v23[9] = v6;
    v7 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v8 = [FATField fieldWithIndex:14 type:15 optional:1 name:@"sharedNotebooks" valueField:v7];
    v23[10] = v8;
    v9 = [FATField fieldWithIndex:15 type:12 optional:1 name:@"businessNotebook" structClass:objc_opt_class()];
    v23[11] = v9;
    v10 = [FATField fieldWithIndex:16 type:12 optional:1 name:@"contact" structClass:objc_opt_class()];
    v23[12] = v10;
    v11 = [FATField fieldWithIndex:17 type:12 optional:1 name:@"restrictions" structClass:objc_opt_class()];
    v23[13] = v11;
    v12 = [FATField fieldWithIndex:18 type:12 optional:1 name:@"recipientSettings" structClass:objc_opt_class()];
    v23[14] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:15];
    v14 = structFields_structFields_2407;
    structFields_structFields_2407 = v13;

    v2 = structFields_structFields_2407;
  }

  return v2;
}

@end