@interface NSDate
@end

@implementation NSDate

void __55__NSDate_CATInternetDateAndTime__cat_RFC3339Formatters__block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  v0 = objc_opt_new();
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = [&unk_28560C288 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v1)
  {
    v2 = v1;
    v3 = *v11;
    do
    {
      v4 = 0;
      do
      {
        if (*v11 != v3)
        {
          objc_enumerationMutation(&unk_28560C288);
        }

        v5 = *(*(&v10 + 1) + 8 * v4);
        v6 = objc_alloc_init(MEMORY[0x277CCA968]);
        v7 = [objc_alloc(MEMORY[0x277CBEAF8]) initWithLocaleIdentifier:@"en_US_POSIX"];
        [v6 setLocale:v7];

        [v6 setDateFormat:v5];
        [v0 addObject:v6];

        ++v4;
      }

      while (v2 != v4);
      v2 = [&unk_28560C288 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v2);
  }

  v8 = [v0 copy];
  v9 = cat_RFC3339Formatters_RFC3339DateFormatters;
  cat_RFC3339Formatters_RFC3339DateFormatters = v8;
}

@end