@interface NSPersistentStoreRequest(RCExtensions)
- (void)rc_setAffectedStore:()RCExtensions;
@end

@implementation NSPersistentStoreRequest(RCExtensions)

- (void)rc_setAffectedStore:()RCExtensions
{
  v7[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v7[0] = v4;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
    [self setAffectedStores:v6];
  }

  else
  {
    [self setAffectedStores:0];
  }
}

@end