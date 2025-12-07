@interface HDMedicalDownloadableAttachmentEntity
+ (id)foreignKeys;
@end

@implementation HDMedicalDownloadableAttachmentEntity

+ (id)foreignKeys
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"account_identifier";
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:objc_opt_class() property:@"identifier" deletionAction:2];
  v6[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

@end