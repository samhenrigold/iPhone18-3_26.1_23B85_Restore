@interface EDAMNoteEmailParameters
+ (id)structFields;
@end

@implementation EDAMNoteEmailParameters

+ (id)structFields
{
  v14[6] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_963;
  if (!structFields_structFields_963)
  {
    v3 = [FATField fieldWithIndex:1 type:11 optional:1 name:@"guid"];
    v14[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:12 optional:1 name:@"note" structClass:objc_opt_class()];
    v14[1] = v4;
    v5 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v6 = [FATField fieldWithIndex:3 type:15 optional:1 name:@"toAddresses" valueField:v5];
    v14[2] = v6;
    v7 = [FATField fieldWithIndex:0 type:11 optional:1 name:0];
    v8 = [FATField fieldWithIndex:4 type:15 optional:1 name:@"ccAddresses" valueField:v7];
    v14[3] = v8;
    v9 = [FATField fieldWithIndex:5 type:11 optional:1 name:@"subject"];
    v14[4] = v9;
    v10 = [FATField fieldWithIndex:6 type:11 optional:1 name:@"message"];
    v14[5] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:6];
    v12 = structFields_structFields_963;
    structFields_structFields_963 = v11;

    v2 = structFields_structFields_963;
  }

  return v2;
}

@end