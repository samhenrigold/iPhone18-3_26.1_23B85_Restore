@interface NSString
@end

@implementation NSString

void __52__NSString_PBFUtilities__pbf_bootInstanceIdentifier__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 37;
  v0 = sysctlbyname("kern.bootsessionuuid", &_block_invoke_uuid_str, &v7, 0, 0);
  if ((v0 & 0x80000000) != 0)
  {
    v1 = PBFLogCommon(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_21B526000, v1, OS_LOG_TYPE_DEFAULT, "could not get kern.bootsessionuuid", buf, 2u);
    }
  }

  v2 = objc_alloc(MEMORY[0x277CCACA8]);
  v3 = [v2 initWithBytesNoCopy:&_block_invoke_uuid_str length:v7 - 1 encoding:4 freeWhenDone:0];
  v4 = pbf_bootInstanceIdentifier_uuid;
  pbf_bootInstanceIdentifier_uuid = v3;

  v6 = PBFLogCommon(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = pbf_bootInstanceIdentifier_uuid;
    _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_INFO, "Got boot session uuid: %@", buf, 0xCu);
  }
}

@end