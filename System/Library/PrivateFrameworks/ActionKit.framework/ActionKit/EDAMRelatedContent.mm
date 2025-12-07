@interface EDAMRelatedContent
+ (id)structFields;
@end

@implementation EDAMRelatedContent

+ (id)structFields
{
  v24[16] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2613;
  if (!structFields_structFields_2613)
  {
    v23 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"contentId"];
    v24[0] = v23;
    v22 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"title"];
    v24[1] = v22;
    v21 = [FATField fieldWithIndex:3 type:11 optional:1 name:@"url"];
    v24[2] = v21;
    v20 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"sourceId"];
    v24[3] = v20;
    v19 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"sourceUrl"];
    v24[4] = v19;
    v18 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"sourceFaviconUrl"];
    v24[5] = v18;
    v17 = [FATField fieldWithIndex:7 type:11 optional:1 name:@"sourceName"];
    v24[6] = v17;
    v16 = [FATField fieldWithIndex:8 type:10 optional:1 name:@"date"];
    v24[7] = v16;
    v3 = [FATField fieldWithIndex:9 type:11 optional:1 name:@"teaser"];
    v24[8] = v3;
    v4 = [FATField fieldWithIndex:0 type:12 optional:1 name:0 structClass:objc_opt_class()];
    v5 = [FATField fieldWithIndex:10 type:15 optional:1 name:@"thumbnails" valueField:v4];
    v24[9] = v5;
    v6 = [FATField fieldWithIndex:11 type:8 optional:1 name:@"contentType"];
    v24[10] = v6;
    v7 = [FATField fieldWithIndex:12 type:8 optional:1 name:@"accessType"];
    v24[11] = v7;
    v8 = [FATField fieldWithIndex:13 type:11 optional:1 name:@"visibleUrl"];
    v24[12] = v8;
    v9 = [FATField fieldWithIndex:14 type:11 optional:1 name:@"clipUrl"];
    v24[13] = v9;
    v10 = [FATField fieldWithIndex:15 type:12 optional:1 name:@"contact" structClass:objc_opt_class()];
    v24[14] = v10;
    v11 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v12 = [FATField fieldWithIndex:16 type:15 optional:1 name:@"authors" valueField:v11];
    v24[15] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:16];
    v14 = structFields_structFields_2613;
    structFields_structFields_2613 = v13;

    v2 = structFields_structFields_2613;
  }

  return v2;
}

@end