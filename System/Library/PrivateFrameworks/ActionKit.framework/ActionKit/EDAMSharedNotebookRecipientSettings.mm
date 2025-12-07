@interface EDAMSharedNotebookRecipientSettings
+ (id)structFields;
@end

@implementation EDAMSharedNotebookRecipientSettings

+ (id)structFields
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = structFields_structFields_2105;
  if (!structFields_structFields_2105)
  {
    v3 = [FATField fieldWithIndex:1 type:2 optional:1 name:@"reminderNotifyEmail"];
    v8[0] = v3;
    v4 = [FATField fieldWithIndex:2 type:2 optional:1 name:@"reminderNotifyInApp"];
    v8[1] = v4;
    v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:2];
    v6 = structFields_structFields_2105;
    structFields_structFields_2105 = v5;

    v2 = structFields_structFields_2105;
  }

  return v2;
}

@end