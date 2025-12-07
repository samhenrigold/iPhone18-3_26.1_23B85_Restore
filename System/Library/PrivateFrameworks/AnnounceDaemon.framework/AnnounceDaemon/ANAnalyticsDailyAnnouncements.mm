@interface ANAnalyticsDailyAnnouncements
- (ANAnalyticsDailyAnnouncements)initWithDictionary:(id)dictionary;
- (ANAnalyticsDailyAnnouncements)initWithLastAccess:(double)access;
- (BOOL)shouldReport;
- (id)dictionary;
- (unint64_t)announcementsCount;
- (unint64_t)homesCount;
- (void)incrementCountInHome:(id)home group:(id)group;
- (void)merge:(id)merge;
@end

@implementation ANAnalyticsDailyAnnouncements

- (ANAnalyticsDailyAnnouncements)initWithLastAccess:(double)access
{
  v9.receiver = self;
  v9.super_class = ANAnalyticsDailyAnnouncements;
  v4 = [(ANAnalyticsDailyAnnouncements *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_lastAccess = access;
    v6 = objc_opt_new();
    homes = v5->_homes;
    v5->_homes = v6;
  }

  return v5;
}

- (ANAnalyticsDailyAnnouncements)initWithDictionary:(id)dictionary
{
  v21 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [(ANAnalyticsDailyAnnouncements *)self init];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = dictionaryCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        if ([v11 isEqualToString:{@"lastAccess", v16}])
        {
          v12 = [v6 objectForKey:v11];
          [v12 doubleValue];
          v5->_lastAccess = v13;
        }

        else
        {
          homes = v5->_homes;
          v12 = [v6 objectForKey:v11];
          [(NSMutableDictionary *)homes setObject:v12 forKey:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)dictionary
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = MEMORY[0x277CCABB0];
  [(ANAnalyticsDailyAnnouncements *)self lastAccess];
  v5 = [v4 numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"lastAccess"];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  homes = [(ANAnalyticsDailyAnnouncements *)self homes];
  v7 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(homes);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        homes2 = [(ANAnalyticsDailyAnnouncements *)self homes];
        v13 = [homes2 objectForKey:v11];
        [v3 setObject:v13 forKeyedSubscript:v11];
      }

      v8 = [homes countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  return v3;
}

- (void)merge:(id)merge
{
  v47 = *MEMORY[0x277D85DE8];
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  mergeCopy = merge;
  obj = [mergeCopy homes];
  v4 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v42;
    v30 = *v42;
    do
    {
      v7 = 0;
      v31 = v5;
      do
      {
        if (*v42 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v41 + 1) + 8 * v7);
        homes = [(ANAnalyticsDailyAnnouncements *)self homes];
        v10 = [homes objectForKeyedSubscript:v8];

        if (v10)
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          homes2 = [mergeCopy homes];
          homes6 = [homes2 objectForKeyedSubscript:v8];

          v36 = [homes6 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v36)
          {
            v33 = v7;
            v34 = *v38;
            do
            {
              for (i = 0; i != v36; ++i)
              {
                if (*v38 != v34)
                {
                  objc_enumerationMutation(homes6);
                }

                v14 = *(*(&v37 + 1) + 8 * i);
                selfCopy = self;
                homes3 = [(ANAnalyticsDailyAnnouncements *)self homes];
                v17 = [homes3 objectForKeyedSubscript:v8];
                v18 = [v17 mutableCopy];

                v19 = [v18 objectForKeyedSubscript:v14];
                homes4 = [mergeCopy homes];
                v21 = [homes4 objectForKeyedSubscript:v8];
                v22 = [v21 objectForKeyedSubscript:v14];

                if (v19)
                {
                  unsignedIntegerValue = [v19 unsignedIntegerValue];
                  unsignedIntegerValue2 = [v22 unsignedIntegerValue];
                  if (unsignedIntegerValue <= unsignedIntegerValue2)
                  {
                    v25 = unsignedIntegerValue2;
                  }

                  else
                  {
                    v25 = unsignedIntegerValue;
                  }

                  v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v25];
                  [v18 setObject:v26 forKey:v14];
                }

                else
                {
                  [v18 setObject:v22 forKey:v14];
                }

                homes5 = [(ANAnalyticsDailyAnnouncements *)selfCopy homes];
                [homes5 setObject:v18 forKeyedSubscript:v8];

                self = selfCopy;
              }

              v36 = [homes6 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v36);
            v6 = v30;
            v5 = v31;
            v7 = v33;
          }
        }

        else
        {
          homes6 = [mergeCopy homes];
          v28 = [homes6 objectForKeyedSubscript:v8];
          homes7 = [(ANAnalyticsDailyAnnouncements *)self homes];
          [homes7 setObject:v28 forKeyedSubscript:v8];
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v5);
  }
}

- (unint64_t)announcementsCount
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(ANAnalyticsDailyAnnouncements *)self homes];
  v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  v3 = 0;
  if (v19)
  {
    v18 = *v26;
    do
    {
      v4 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v4;
        v5 = *(*(&v25 + 1) + 8 * v4);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        homes = [(ANAnalyticsDailyAnnouncements *)self homes];
        v7 = [homes objectForKeyedSubscript:v5];

        v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            v11 = 0;
            do
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v21 + 1) + 8 * v11);
              homes2 = [(ANAnalyticsDailyAnnouncements *)self homes];
              v14 = [homes2 objectForKeyedSubscript:v5];
              v15 = [v14 objectForKey:v12];

              v3 += [v15 unsignedIntegerValue];
              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v9);
        }

        v4 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v19);
  }

  return v3;
}

- (unint64_t)homesCount
{
  homes = [(ANAnalyticsDailyAnnouncements *)self homes];
  v3 = [homes count];

  return v3;
}

- (BOOL)shouldReport
{
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSince1970];
  v5 = v4 + -43200.0;

  [(ANAnalyticsDailyAnnouncements *)self lastAccess];
  return v6 < v5;
}

- (void)incrementCountInHome:(id)home group:(id)group
{
  v30 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  groupCopy = group;
  v8 = ANLogHandleANAnalyticsDailyAnnouncements(groupCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v25 = &stru_2851BDB18;
    v26 = 2112;
    v27 = homeCopy;
    v28 = 2112;
    v29 = groupCopy;
    _os_log_impl(&dword_23F525000, v8, OS_LOG_TYPE_DEFAULT, "%@Incrementing announcement count. HomeID=%@, GroupID=%@", buf, 0x20u);
  }

  uUIDString = [homeCopy UUIDString];
  v10 = uUIDString;
  if (groupCopy && uUIDString)
  {
    homes = [(ANAnalyticsDailyAnnouncements *)self homes];
    v12 = [homes objectForKeyedSubscript:v10];

    homes2 = [(ANAnalyticsDailyAnnouncements *)self homes];
    v14 = homes2;
    if (v12)
    {
      v15 = [homes2 objectForKeyedSubscript:v10];
      v16 = [v15 mutableCopy];

      v17 = [v16 objectForKeyedSubscript:groupCopy];
      v18 = v17;
      if (v17)
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v17, "unsignedIntegerValue") + 1}];
        [v16 setObject:v19 forKey:groupCopy];
      }

      else
      {
        [v16 setObject:&unk_2851C49B0 forKey:groupCopy];
      }

      homes3 = [(ANAnalyticsDailyAnnouncements *)self homes];
      [homes3 setObject:v16 forKeyedSubscript:v10];
    }

    else
    {
      v22 = groupCopy;
      v23 = &unk_2851C49B0;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [v14 setObject:v20 forKey:v10];

      v16 = v14;
    }
  }

  else
  {
    v16 = ANLogHandleANAnalyticsDailyAnnouncements(uUIDString);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v25 = &stru_2851BDB18;
      _os_log_impl(&dword_23F525000, v16, OS_LOG_TYPE_FAULT, "%@Failed to increment count due to nil identifiers", buf, 0xCu);
    }
  }
}

@end