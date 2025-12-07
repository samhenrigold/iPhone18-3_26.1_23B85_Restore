@interface NSString
@end

@implementation NSString

void __55__NSString_PosterFoundation__pf_bootInstanceIdentifier__block_invoke()
{
  v10 = *MEMORY[0x1E69E9840];
  v7 = 37;
  v0 = sysctlbyname("kern.bootsessionuuid", &_block_invoke_uuid_str, &v7, 0, 0);
  if ((v0 & 0x80000000) != 0)
  {
    v1 = PFLogCommon(v0);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __55__NSString_PosterFoundation__pf_bootInstanceIdentifier__block_invoke_cold_1(v1);
    }
  }

  v2 = objc_alloc(MEMORY[0x1E696AEC0]);
  v3 = [v2 initWithBytesNoCopy:&_block_invoke_uuid_str length:v7 - 1 encoding:4 freeWhenDone:0];
  v4 = pf_bootInstanceIdentifier_uuid;
  pf_bootInstanceIdentifier_uuid = v3;

  v6 = PFLogCommon(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v9 = pf_bootInstanceIdentifier_uuid;
    _os_log_impl(&dword_1C269D000, v6, OS_LOG_TYPE_INFO, "Got boot session uuid: %@", buf, 0xCu);
  }
}

@end