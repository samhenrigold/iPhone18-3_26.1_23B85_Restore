@interface ButtonSpecificationSampleForAlmostFullLevel
@end

@implementation ButtonSpecificationSampleForAlmostFullLevel

void ___ButtonSpecificationSampleForAlmostFullLevel_block_invoke()
{
  v8[3] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v7[0] = @"com.apple.mobilemail";
  v1 = MEMORY[0x277CBEC10];
  v2 = [ICQLink linkWithText:@"iCloud Storage is Almost Full – Upgrade Storage [ENG]" options:1 action:3 parameters:MEMORY[0x277CBEC10]];
  v8[0] = v2;
  v7[1] = @"com.apple.iCloudDriveApp";
  v3 = [ICQLink linkWithText:@"iCloud Storage is Almost Full – Upgrade Storage [ENG]" options:1 action:3 parameters:v1];
  v8[1] = v3;
  v7[2] = @"com.apple.icloud.quota.ICQ-Adopt";
  v4 = [ICQLink linkWithText:@"iCloud Storage is Almost Full – Upgrade Storage [ENG]" options:1 action:3 parameters:v1];
  v8[2] = v4;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v0 setLinkForBundleIdentifier:v5];

  v6 = _ButtonSpecificationSampleForAlmostFullLevel_sButtonSpecification;
  _ButtonSpecificationSampleForAlmostFullLevel_sButtonSpecification = v0;
}

@end