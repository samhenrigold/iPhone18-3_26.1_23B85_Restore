@interface SPDomainManager
+ (void)initialize;
- (void)_removeAllDomainsForDisplayIdentifier:(id)identifier;
- (void)registerApplication:(id)application withCategories:(id)categories;
@end

@implementation SPDomainManager

- (void)_removeAllDomainsForDisplayIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v3 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  v4 = [v3 count];
  if (v4)
  {
    v5 = v4 - 1;
    do
    {
      v6 = [v3 objectAtIndex:v5];
      v7 = [v6 objectForKey:@"SPDisplayIdentifier"];
      v8 = [v7 isEqualToString:identifierCopy];

      if (v8)
      {
        [v3 removeObjectAtIndex:v5];
      }

      --v5;
    }

    while (v5 != -1);
  }
}

- (void)registerApplication:(id)application withCategories:(id)categories
{
  v28 = *MEMORY[0x1E69E9840];
  applicationCopy = application;
  categoriesCopy = categories;
  selfCopy = self;
  [(SPDomainManager *)self _removeAllDomainsForDisplayIdentifier:applicationCopy];
  v8 = [MEMORY[0x1E695DF70] arrayWithArray:MEMORY[0x1E695E0F0]];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v9 = categoriesCopy;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{applicationCopy, @"SPDisplayIdentifier", *(*(&v19 + 1) + 8 * v13), @"SPCategory", 0}];
        [v8 addObject:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  v16 = SPLogForSPLogCategoryDefault(v15);
  v17 = gSPLogInfoAsDefault;
  if (os_log_type_enabled(v16, ((gSPLogInfoAsDefault & 1) == 0)))
  {
    *buf = 138412546;
    v24 = v9;
    v25 = 2112;
    v26 = applicationCopy;
    _os_log_impl(&dword_1C81BF000, v16, ((v17 & 1) == 0), "Installed application domains %@ for %@", buf, 0x16u);
  }

  [(SPDomainManager *)selfCopy notifyIndexer];
}

+ (void)initialize
{
  v10[26] = *MEMORY[0x1E69E9840];
  if (objc_opt_class() == self)
  {
    v3 = objc_alloc_init(SPDomainManager);
    v4 = __defaultManager;
    __defaultManager = v3;

    v9[0] = &unk_1F47DBEE8;
    v9[1] = &unk_1F47DBF60;
    v10[0] = @"com.apple.other";
    v10[1] = @"com.apple.MobileAddressBook";
    v9[2] = &unk_1F47DBF00;
    v9[3] = &unk_1F47DBF18;
    v10[2] = @"com.apple.mobilemail";
    v10[3] = @"com.apple.application";
    v9[4] = &unk_1F47DBFC0;
    v9[5] = &unk_1F47DBF30;
    v10[4] = @"com.apple.mobilenotes";
    v10[5] = @"com.apple.Music";
    v9[6] = &unk_1F47DBF78;
    v9[7] = &unk_1F47DBFF0;
    v10[6] = @"com.apple.podcasts";
    v10[7] = @"com.apple.videos";
    v9[8] = &unk_1F47DBF48;
    v9[9] = &unk_1F47DBF90;
    v10[8] = @"com.apple.ibooks";
    v10[9] = @"com.apple.mobilecal";
    v9[10] = &unk_1F47DBFA8;
    v9[11] = &unk_1F47DC008;
    v10[10] = @"com.apple.bookmarks";
    v10[11] = @"com.apple.VoiceMemos";
    v9[12] = &unk_1F47DC020;
    v9[13] = &unk_1F47DC038;
    v10[12] = @"com.apple.reminders";
    v10[13] = @"com.apple.document";
    v9[14] = &unk_1F47DC050;
    v9[15] = &unk_1F47DBED0;
    v10[14] = @"com.apple.clouddocument";
    v10[15] = @"com.apple.parsec";
    v9[16] = &unk_1F47DBFD8;
    v9[17] = &unk_1F47DC068;
    v10[16] = @"com.apple.websearch";
    v10[17] = @"com.apple.Preferences";
    v9[18] = &unk_1F47DC080;
    v9[19] = &unk_1F47DBEB8;
    v10[18] = @"com.apple.psuedocontact";
    v10[19] = @"com.apple.corespotlight";
    v9[20] = &unk_1F47DC098;
    v9[21] = &unk_1F47DC0B0;
    v10[20] = @"com.apple.Maps";
    v10[21] = @"com.apple.calculation";
    v9[22] = &unk_1F47DC0C8;
    v9[23] = &unk_1F47DC0E0;
    v10[22] = @"com.apple.conversions";
    v10[23] = @"com.apple.mobilesafari";
    v9[24] = &unk_1F47DC0F8;
    v9[25] = &unk_1F47DBEB8;
    v10[24] = @"com.apple.MobileSMS";
    v10[25] = @"com.apple.zkws";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:26];
    v6 = __SPNativeSearchDomainToBundleIdMapping;
    __SPNativeSearchDomainToBundleIdMapping = v5;

    v7 = SPGetDisabledDomainSet();
    __siriSuggestionsEnabled = [v7 containsObject:@"DOMAIN_ZKWS"] ^ 1;

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _userPrefsChanged, @"com.apple.spotlightui.prefschanged", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }
}

@end