@interface EDAMNotesMetadataResultSpec
+ (id)structFields;
@end

@implementation EDAMNotesMetadataResultSpec

+ (id)structFields
{
  v17[11] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_693;
  if (!structFields_structFields_693)
  {
    v16 = [FATField fieldWithIndex:2 type:2 optional:1 name:@"includeTitle"];
    v17[0] = v16;
    v15 = [FATField fieldWithIndex:5 type:2 optional:1 name:@"includeContentLength"];
    v17[1] = v15;
    v3 = [FATField fieldWithIndex:6 type:2 optional:1 name:@"includeCreated"];
    v17[2] = v3;
    v4 = [FATField fieldWithIndex:7 type:2 optional:1 name:@"includeUpdated"];
    v17[3] = v4;
    v5 = [FATField fieldWithIndex:8 type:2 optional:1 name:@"includeDeleted"];
    v17[4] = v5;
    v6 = [FATField fieldWithIndex:10 type:2 optional:1 name:@"includeUpdateSequenceNum"];
    v17[5] = v6;
    v7 = [FATField fieldWithIndex:11 type:2 optional:1 name:@"includeNotebookGuid"];
    v17[6] = v7;
    v8 = [FATField fieldWithIndex:12 type:2 optional:1 name:@"includeTagGuids"];
    v17[7] = v8;
    v9 = [FATField fieldWithIndex:14 type:2 optional:1 name:@"includeAttributes"];
    v17[8] = v9;
    v10 = [FATField fieldWithIndex:20 type:2 optional:1 name:@"includeLargestResourceMime"];
    v17[9] = v10;
    v11 = [FATField fieldWithIndex:21 type:2 optional:1 name:@"includeLargestResourceSize"];
    v17[10] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:11];
    v13 = structFields_structFields_693;
    structFields_structFields_693 = v12;

    v2 = structFields_structFields_693;
  }

  return v2;
}

@end