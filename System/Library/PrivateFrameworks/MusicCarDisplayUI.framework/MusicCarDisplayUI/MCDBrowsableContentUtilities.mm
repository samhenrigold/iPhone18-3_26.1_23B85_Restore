@interface MCDBrowsableContentUtilities
+ (id)sharedInstance;
- (NSArray)firstPartyAppBundleIDs;
- (void)setNowPlayingIdentifiers:(id)identifiers;
@end

@implementation MCDBrowsableContentUtilities

+ (id)sharedInstance
{
  if (sharedInstance_isDispatched != -1)
  {
    +[MCDBrowsableContentUtilities sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

uint64_t __46__MCDBrowsableContentUtilities_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance = objc_alloc_init(MCDBrowsableContentUtilities);

  return MEMORY[0x2821F96F8]();
}

- (void)setNowPlayingIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  nowPlayingIdentifiers = self->_nowPlayingIdentifiers;
  p_nowPlayingIdentifiers = &self->_nowPlayingIdentifiers;
  if (![(NSArray *)nowPlayingIdentifiers isEqualToArray:identifiersCopy])
  {
    objc_storeStrong(p_nowPlayingIdentifiers, identifiers);
    v9 = MCDGeneralLogging(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_25AD8E000, v9, OS_LOG_TYPE_DEFAULT, "Posting MCDBrowsableContentNowPlayingIdentifiersUpdatedNotification", v11, 2u);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"MCDBrowsableContentNowPlayingIdentifiersUpdatedNotification" object:0];
  }
}

- (NSArray)firstPartyAppBundleIDs
{
  v4[3] = *MEMORY[0x277D85DE8];
  v4[0] = @"com.apple.podcasts";
  v4[1] = @"com.apple.iBooks";
  v4[2] = @"com.apple.Music";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:3];

  return v2;
}

@end