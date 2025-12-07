@interface PKOpenPodcastsUtil
+ (void)openPodcastsWithOriginBundleId:(id)id;
@end

@implementation PKOpenPodcastsUtil

+ (void)openPodcastsWithOriginBundleId:(id)id
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = *MEMORY[0x277D76690];
  v13[0] = id;
  v3 = MEMORY[0x277CBEAC0];
  idCopy = id;
  v5 = [v3 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  v6 = *MEMORY[0x277D0AC38];
  v10[0] = *MEMORY[0x277D0ABF0];
  v10[1] = v6;
  v11[0] = MEMORY[0x277CBEC38];
  v11[1] = v5;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  serviceWithDefaultShellEndpoint = [MEMORY[0x277D0AD78] serviceWithDefaultShellEndpoint];
  v9 = [MEMORY[0x277D0AD60] optionsWithDictionary:v7];

  [serviceWithDefaultShellEndpoint openApplication:@"com.apple.podcasts" withOptions:v9 completion:&__block_literal_global_7];
}

void __53__PKOpenPodcastsUtil_openPodcastsWithOriginBundleId___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (v3)
  {
    v4 = _MTLogCategoryLifecycle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_25E9F0000, v4, OS_LOG_TYPE_ERROR, "Error opening podcasts: %@", &v5, 0xCu);
    }
  }
}

@end