@interface NSData(KSCKMigrationHash)
- (uint64_t)_hashCKMigration;
@end

@implementation NSData(KSCKMigrationHash)

- (uint64_t)_hashCKMigration
{
  v4 = *MEMORY[0x277D85DE8];
  CC_MD5([self bytes], objc_msgSend(self, "length"), md);
  if (v3 >= 0)
  {
    return v3;
  }

  else
  {
    return -v3;
  }
}

@end