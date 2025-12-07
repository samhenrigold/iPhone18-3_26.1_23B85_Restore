@interface StoreKit_TMLModule
+ (BOOL)loadModule;
+ (void)defineConstants:(id)constants;
@end

@implementation StoreKit_TMLModule

+ (BOOL)loadModule
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_26F195B48;
  block[3] = &unk_279DC5670;
  block[4] = &v5;
  if (qword_2806D9048 != -1)
  {
    dispatch_once(&qword_2806D9048, block);
  }

  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

+ (void)defineConstants:(id)constants
{
  v3 = MEMORY[0x277CBEB38];
  constantsCopy = constants;
  dictionary = [v3 dictionary];
  v5 = *MEMORY[0x277CD4630];
  [dictionary setObject:*MEMORY[0x277CDD450] forKeyedSubscript:*MEMORY[0x277CD4630]];
  [constantsCopy defineProperty:@"SKStoreProductParameterITunesItemIdentifier" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDD440] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"SKStoreProductParameterAffiliateToken" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDD448] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"SKStoreProductParameterCampaignToken" descriptor:dictionary];
  [dictionary setObject:*MEMORY[0x277CDD458] forKeyedSubscript:v5];
  [constantsCopy defineProperty:@"SKStoreProductParameterProviderToken" descriptor:dictionary];
}

@end