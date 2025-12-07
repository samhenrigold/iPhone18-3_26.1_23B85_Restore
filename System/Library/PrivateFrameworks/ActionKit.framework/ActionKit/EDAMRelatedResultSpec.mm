@interface EDAMRelatedResultSpec
+ (id)structFields;
@end

@implementation EDAMRelatedResultSpec

+ (id)structFields
{
  v16[9] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1174;
  if (!structFields_structFields_1174)
  {
    v15 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"maxNotes"];
    v16[0] = v15;
    v3 = [FATField fieldWithIndex:2 type:8 optional:1 name:@"maxNotebooks"];
    v16[1] = v3;
    v4 = [FATField fieldWithIndex:3 type:8 optional:1 name:@"maxTags"];
    v16[2] = v4;
    v5 = [FATField fieldWithIndex:4 type:2 optional:1 name:@"writableNotebooksOnly"];
    v16[3] = v5;
    v6 = [FATField fieldWithIndex:5 type:2 optional:1 name:@"includeContainingNotebooks"];
    v16[4] = v6;
    v7 = [FATField fieldWithIndex:6 type:2 optional:1 name:@"includeDebugInfo"];
    v16[5] = v7;
    v8 = [FATField fieldWithIndex:7 type:8 optional:1 name:@"maxExperts"];
    v16[6] = v8;
    v9 = [FATField fieldWithIndex:8 type:8 optional:1 name:@"maxRelatedContent"];
    v16[7] = v9;
    v10 = [FATField fieldWithIndex:0 type:8 optional:1 name:0];
    v11 = [FATField fieldWithIndex:9 type:14 optional:1 name:@"relatedContentTypes" valueField:v10];
    v16[8] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:9];
    v13 = structFields_structFields_1174;
    structFields_structFields_1174 = v12;

    v2 = structFields_structFields_1174;
  }

  return v2;
}

@end