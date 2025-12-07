@interface DSUtilities
+ (BOOL)isContactsTCC:(id)c;
+ (BOOL)isString:(id)string likeString:(id)likeString;
+ (BOOL)shouldShowBioRatchetFlow;
+ (id)allApps;
+ (id)allUserVisibleApps;
+ (id)contactsServices;
+ (id)localizedDetailStringWithTruncationFromArray:(id)array withType:(id)type;
+ (id)tccServices;
@end

@implementation DSUtilities

+ (id)localizedDetailStringWithTruncationFromArray:(id)array withType:(id)type
{
  v27 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  typeCopy = type;
  array = [MEMORY[0x277CBEB18] array];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = arrayCopy;
  v9 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        if ([array count] == 2)
        {
          v25[0] = typeCopy;
          v25[1] = @"DETAIL_TEXT_TRUNCATION";
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
          v15 = [v14 componentsJoinedByString:@"_"];

          v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
          v17 = [v16 localizedStringForKey:v15 value:&stru_285B9D7E0 table:0];

          v18 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v17, objc_msgSend(v8, "count") - 2];
          [array addObject:v18];

          goto LABEL_11;
        }

        [array addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v19 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:array];

  return v19;
}

+ (id)allUserVisibleApps
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * i);
        if ([v8 developerType] == 3)
        {
          bundleIdentifier = [v8 bundleIdentifier];
          [v2 addObject:bundleIdentifier];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  return v2;
}

+ (id)allApps
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = SBSCopyDisplayIdentifiers();
  v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 addObject:{*(*(&v10 + 1) + 8 * i), v10}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (id)tccServices
{
  if (tccServices_token != -1)
  {
    +[DSUtilities tccServices];
  }

  v3 = tccServices_tccServices;

  return v3;
}

uint64_t __26__DSUtilities_tccServices__block_invoke()
{
  tccServices_tccServices = [MEMORY[0x277CBEA60] arrayWithObjects:{@"DSLocationAlways", @"DSLocationWhenInUse", *MEMORY[0x277D6C110], *MEMORY[0x277D6C1A8], *MEMORY[0x277D6C120], *MEMORY[0x277D6C1D0], *MEMORY[0x277D6C1A0], *MEMORY[0x277D6C258], *MEMORY[0x277D6C118], *MEMORY[0x277D6C1E0], @"DSContacts", @"DSHealth", @"DSLocalNetwork", *MEMORY[0x277D6C1B8], *MEMORY[0x277D6C1F8], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isContactsTCC:(id)c
{
  cCopy = c;
  v4 = +[DSUtilities contactsServices];
  v5 = [v4 containsObject:cCopy];

  return v5;
}

+ (id)contactsServices
{
  if (contactsServices_token != -1)
  {
    +[DSUtilities contactsServices];
  }

  v3 = contactsServices_contactsTCCs;

  return v3;
}

uint64_t __31__DSUtilities_contactsServices__block_invoke()
{
  contactsServices_contactsTCCs = [MEMORY[0x277CBEB98] setWithObjects:{*MEMORY[0x277D6C100], *MEMORY[0x277D6C130], *MEMORY[0x277D6C138], 0}];

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)shouldShowBioRatchetFlow
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    mEMORY[0x277CD47B0] = [MEMORY[0x277CD47B0] sharedInstance];
    isFeatureEnabled = [mEMORY[0x277CD47B0] isFeatureEnabled];

    LOBYTE(v2) = isFeatureEnabled;
  }

  return v2;
}

+ (BOOL)isString:(id)string likeString:(id)likeString
{
  likeStringCopy = likeString;
  stringCopy = string;
  v7 = [stringCopy stringByReplacingOccurrencesOfString:@"\\s+" withString:&stru_285B9D7E0 options:1024 range:{0, objc_msgSend(stringCopy, "length")}];

  lowercaseString = [v7 lowercaseString];

  v9 = [likeStringCopy stringByReplacingOccurrencesOfString:@"\\s+" withString:&stru_285B9D7E0 options:1024 range:{0, objc_msgSend(likeStringCopy, "length")}];

  lowercaseString2 = [v9 lowercaseString];

  LOBYTE(v9) = [lowercaseString isEqualToString:lowercaseString2];
  return v9;
}

@end