@interface EDAMAd
+ (id)structFields;
@end

@implementation EDAMAd

+ (id)structFields
{
  v19[13] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2016;
  if (!structFields_structFields_2016)
  {
    v18 = [FATField fieldWithIndex:1 type:8 optional:1 name:@"id"];
    v19[0] = v18;
    v17 = [FATField fieldWithIndex:2 type:6 optional:1 name:@"width"];
    v19[1] = v17;
    v16 = [FATField fieldWithIndex:3 type:6 optional:1 name:@"height"];
    v19[2] = v16;
    v15 = [FATField fieldWithIndex:4 type:11 optional:1 name:@"advertiserName"];
    v19[3] = v15;
    v3 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"imageUrl"];
    v19[4] = v3;
    v4 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"destinationUrl"];
    v19[5] = v4;
    v5 = [FATField fieldWithIndex:7 type:6 optional:1 name:@"displaySeconds"];
    v19[6] = v5;
    v6 = [FATField fieldWithIndex:8 type:4 optional:1 name:@"score"];
    v19[7] = v6;
    v7 = [FATField fieldWithIndex:9 type:16 optional:1 name:@"image"];
    v19[8] = v7;
    v8 = [FATField fieldWithIndex:10 type:11 optional:1 name:@"imageMime"];
    v19[9] = v8;
    v9 = [FATField fieldWithIndex:11 type:11 optional:1 name:@"html"];
    v19[10] = v9;
    v10 = [FATField fieldWithIndex:12 type:4 optional:1 name:@"displayFrequency"];
    v19[11] = v10;
    v11 = [FATField fieldWithIndex:13 type:2 optional:1 name:@"openInTrunk"];
    v19[12] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:13];
    v13 = structFields_structFields_2016;
    structFields_structFields_2016 = v12;

    v2 = structFields_structFields_2016;
  }

  return v2;
}

@end