@interface BannerSpecificationSampleForAlmostFullLevel
@end

@implementation BannerSpecificationSampleForAlmostFullLevel

void ___BannerSpecificationSampleForAlmostFullLevel_block_invoke()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v1 = _ICQUpgradeNowSampleLink(v0);
  [v0 setLinksFormat:@"Upgrade your storage soon to keep these photos and videos up to date in your iCloud Photo Library. %@\n[ENG: LOCAL SAMPLE UI]"];
  v4[0] = v1;
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:1];
  [v0 setLinks:v2];

  v3 = _BannerSpecificationSampleForAlmostFullLevel_sBannerSpecification;
  _BannerSpecificationSampleForAlmostFullLevel_sBannerSpecification = v0;
}

@end