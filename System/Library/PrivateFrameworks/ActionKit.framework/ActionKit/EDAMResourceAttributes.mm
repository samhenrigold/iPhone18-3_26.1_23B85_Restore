@interface EDAMResourceAttributes
+ (id)structFields;
@end

@implementation EDAMResourceAttributes

+ (id)structFields
{
  v18[12] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1339;
  if (!structFields_structFields_1339)
  {
    v17 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"sourceURL"];
    v18[0] = v17;
    v16 = [FATField fieldWithIndex:2 type:10 optional:1 name:@"timestamp"];
    v18[1] = v16;
    v15 = [FATField fieldWithIndex:3 type:4 optional:1 name:@"latitude"];
    v18[2] = v15;
    v3 = [FATField fieldWithIndex:4 type:4 optional:1 name:@"longitude"];
    v18[3] = v3;
    v4 = [FATField fieldWithIndex:5 type:4 optional:1 name:@"altitude"];
    v18[4] = v4;
    v5 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"cameraMake"];
    v18[5] = v5;
    v6 = [FATField fieldWithIndex:7 type:11 optional:1 name:@"cameraModel"];
    v18[6] = v6;
    v7 = [FATField fieldWithIndex:8 type:2 optional:1 name:@"clientWillIndex"];
    v18[7] = v7;
    v8 = [FATField fieldWithIndex:9 type:11 optional:1 name:@"recoType"];
    v18[8] = v8;
    v9 = [FATField fieldWithIndex:10 type:11 optional:1 name:@"fileName"];
    v18[9] = v9;
    v10 = [FATField fieldWithIndex:11 type:2 optional:1 name:@"attachment"];
    v18[10] = v10;
    v11 = [FATField fieldWithIndex:12 type:12 optional:1 name:@"applicationData" structClass:objc_opt_class()];
    v18[11] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:12];
    v13 = structFields_structFields_1339;
    structFields_structFields_1339 = v12;

    v2 = structFields_structFields_1339;
  }

  return v2;
}

@end