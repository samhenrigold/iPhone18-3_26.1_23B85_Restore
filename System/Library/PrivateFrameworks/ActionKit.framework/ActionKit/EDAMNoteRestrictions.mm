@interface EDAMNoteRestrictions
+ (id)structFields;
@end

@implementation EDAMNoteRestrictions

+ (id)structFields
{
  v11[5] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_1718;
  if (!structFields_structFields_1718)
  {
    v3 = [FATField fieldWithIndex:1 type:2 optional:1 name:@"noUpdateTitle"];
    v4 = [FATField fieldWithIndex:2 type:2 optional:1 name:@"noUpdateContent", v3];
    v11[1] = v4;
    v5 = [FATField fieldWithIndex:3 type:2 optional:1 name:@"noEmail"];
    v11[2] = v5;
    v6 = [FATField fieldWithIndex:4 type:2 optional:1 name:@"noShare"];
    v11[3] = v6;
    v7 = [FATField fieldWithIndex:5 type:2 optional:1 name:@"noSharePublicly"];
    v11[4] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:5];
    v9 = structFields_structFields_1718;
    structFields_structFields_1718 = v8;

    v2 = structFields_structFields_1718;
  }

  return v2;
}

@end