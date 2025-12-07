@interface EDAMResource
+ (id)structFields;
@end

@implementation EDAMResource

+ (id)structFields
{
  v18[12] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1446;
  if (!structFields_structFields_1446)
  {
    v17 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"guid"];
    v18[0] = v17;
    v16 = [FATField fieldWithIndex:2 type:11 optional:1 name:@"noteGuid"];
    v18[1] = v16;
    v3 = [FATField fieldWithIndex:3 type:12 optional:1 name:@"data" structClass:objc_opt_class()];
    v18[2] = v3;
    v4 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"mime"];
    v18[3] = v4;
    v5 = [FATField fieldWithIndex:5 type:6 optional:1 name:@"width"];
    v18[4] = v5;
    v6 = [FATField fieldWithIndex:6 type:6 optional:1 name:@"height"];
    v18[5] = v6;
    v7 = [FATField fieldWithIndex:7 type:6 optional:1 name:@"duration"];
    v18[6] = v7;
    v8 = [FATField fieldWithIndex:8 type:2 optional:1 name:@"active"];
    v18[7] = v8;
    v9 = [FATField fieldWithIndex:9 type:12 optional:1 name:@"recognition" structClass:objc_opt_class()];
    v18[8] = v9;
    v10 = [FATField fieldWithIndex:11 type:12 optional:1 name:@"attributes" structClass:objc_opt_class()];
    v18[9] = v10;
    v11 = [FATField fieldWithIndex:12 type:8 optional:1 name:@"updateSequenceNum"];
    v18[10] = v11;
    v12 = [FATField fieldWithIndex:13 type:12 optional:1 name:@"alternateData" structClass:objc_opt_class()];
    v18[11] = v12;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:12];
    v14 = structFields_structFields_1446;
    structFields_structFields_1446 = v13;

    v2 = structFields_structFields_1446;
  }

  return v2;
}

@end