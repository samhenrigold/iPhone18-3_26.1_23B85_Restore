@interface HDClinicalDeletedAccountEntity
+ (id)uniquedColumns;
@end

@implementation HDClinicalDeletedAccountEntity

+ (id)uniquedColumns
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = @"sync_identifier";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];

  return v2;
}

@end