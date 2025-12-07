@interface EDAMNoteVersionId
+ (id)structFields;
@end

@implementation EDAMNoteVersionId

+ (id)structFields
{
  v11[5] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1013;
  if (!structFields_structFields_1013)
  {
    v3 = [FATField fieldWithIndex:1 type:8 optional:0 name:@"updateSequenceNum"];
    v4 = [FATField fieldWithIndex:2 type:10 optional:0 name:@"updated", v3];
    v11[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:10 optional:0 name:@"saved"];
    v11[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:11 optional:0 name:@"title"];
    v11[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:8 optional:1 name:@"lastEditorId"];
    v11[4] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
    v9 = structFields_structFields_1013;
    structFields_structFields_1013 = v8;

    v2 = structFields_structFields_1013;
  }

  return v2;
}

@end