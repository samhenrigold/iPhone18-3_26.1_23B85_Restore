@interface EDAMNoteFilter
+ (id)structFields;
@end

@implementation EDAMNoteFilter

+ (id)structFields
{
  v17[10] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_470;
  if (!structFields_structFields_470)
  {
    v16 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"order"];
    v17[0] = v16;
    v15 = [FATField fieldWithIndex:2 type:2 optional:1 name:@"ascending"];
    v17[1] = v15;
    v3 = [FATField fieldWithIndex:3 type:11 optional:1 name:@"words"];
    v17[2] = v3;
    v4 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"notebookGuid"];
    v17[3] = v4;
    v5 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v6 = [FATField fieldWithIndex:5 type:15 optional:1 name:@"tagGuids" valueField:v5];
    v17[4] = v6;
    v7 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"timeZone"];
    v17[5] = v7;
    v8 = [FATField fieldWithIndex:7 type:2 optional:1 name:@"inactive"];
    v17[6] = v8;
    v9 = [FATField fieldWithIndex:8 type:11 optional:1 name:@"emphasized"];
    v17[7] = v9;
    v10 = [FATField fieldWithIndex:9 type:2 optional:1 name:@"includeAllReadableNotebooks"];
    v17[8] = v10;
    v11 = [FATField fieldWithIndex:10 type:11 optional:1 name:@"context"];
    v17[9] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:10];
    v13 = structFields_structFields_470;
    structFields_structFields_470 = v12;

    v2 = structFields_structFields_470;
  }

  return v2;
}

@end