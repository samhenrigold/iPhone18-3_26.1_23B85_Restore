@interface ATXHeroEntriesReader
+ (BOOL)validateReader:(id)reader pbEntries:(id)entries;
+ (id)appAndClipEntryFromPbEntries:(id)entries position:(unint64_t)position;
+ (id)loadAppAndClipEntriesFromData:(id)data;
+ (id)loadAppAndClipEntriesFromFileURL:(id)l;
@end

@implementation ATXHeroEntriesReader

+ (id)appAndClipEntryFromPbEntries:(id)entries position:(unint64_t)position
{
  entriesCopy = entries;
  v6 = *([entriesCopy deltaLatitudes] + 4 * position);
  v7 = (v6 + [entriesCopy tileLatitudeE7]) / 10000000.0;
  v8 = *([entriesCopy deltaLongitudes] + 4 * position);
  tileLongitudeE7 = [entriesCopy tileLongitudeE7];
  if (fabs(v7) > 90.0 || (v10 = (v8 + tileLongitudeE7) / 10000000.0, fabs(v10) > 180.0))
  {
    v18 = __atxlog_handle_hero(tileLongitudeE7);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      [ATXHeroEntriesReader appAndClipEntryFromPbEntries:position position:v18];
    }

    v19 = 0;
  }

  else
  {
    v11 = *([entriesCopy adamIds] + 4 * position);
    if ([entriesCopy urlHashsCount] && (objc_msgSend(entriesCopy, "urlHashs"), v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v12, "objectAtIndexedSubscript:", position), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "length"), v13, v12, v14 == 32))
    {
      urlHashs = [entriesCopy urlHashs];
      v16 = [urlHashs objectAtIndexedSubscript:position];
      v17 = [ATXDigestConverter binToHex:v16];
    }

    else
    {
      v17 = 0;
    }

    if ([entriesCopy radiusCount])
    {
      v20 = *([entriesCopy radius] + 4 * position);
    }

    else
    {
      v20 = 0;
    }

    if ([entriesCopy ranksCount])
    {
      v21 = *([entriesCopy ranks] + 4 * position);
    }

    else
    {
      v21 = 1;
    }

    if ([entriesCopy isTouristAppsCount])
    {
      v22 = *([entriesCopy isTouristApps] + position);
    }

    else
    {
      v22 = 0;
    }

    poiCategorys = [entriesCopy poiCategorys];
    v24 = [poiCategorys objectAtIndexedSubscript:position];

    if ([entriesCopy muidsCount])
    {
      v25 = [objc_alloc(MEMORY[0x277CCABB0]) initWithUnsignedLongLong:{*(objc_msgSend(entriesCopy, "muids") + 8 * position)}];
    }

    else
    {
      v25 = 0;
    }

    v19 = [[ATXHeroEntry alloc] initWithAdamId:v11 urlHash:v17 location:v20 radiusInMeters:v21 rank:v22 isTouristApp:v24 poiCategory:v7 poiMuid:v10, v25];
  }

  return v19;
}

+ (BOOL)validateReader:(id)reader pbEntries:(id)entries
{
  entriesCopy = entries;
  v6 = ATXHeroEntriesPbReadFrom(entriesCopy, reader);
  if ((v6 & 1) == 0)
  {
    v15 = __atxlog_handle_hero(v6);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

    goto LABEL_22;
  }

  deltaLatitudesCount = [entriesCopy deltaLatitudesCount];
  if ((deltaLatitudesCount - 100001) < 0xFFFFFFFFFFFE7960 || (v8 = deltaLatitudesCount, deltaLatitudesCount = [entriesCopy deltaLongitudesCount], deltaLatitudesCount != v8))
  {
    v15 = __atxlog_handle_hero(deltaLatitudesCount);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

    goto LABEL_22;
  }

  adamIdsCount = [entriesCopy adamIdsCount];
  if (adamIdsCount != v8)
  {
    v15 = __atxlog_handle_hero(adamIdsCount);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      +[ATXHeroEntriesReader validateReader:pbEntries:];
    }

    goto LABEL_22;
  }

  if ([entriesCopy radiusCount])
  {
    radiusCount = [entriesCopy radiusCount];
    if (radiusCount > 0x186A0 || (radiusCount = [entriesCopy radiusCount], v8 != radiusCount))
    {
      v15 = __atxlog_handle_hero(radiusCount);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[ATXHeroEntriesReader validateReader:pbEntries:];
      }

      goto LABEL_22;
    }
  }

  if ([entriesCopy ranksCount])
  {
    ranksCount = [entriesCopy ranksCount];
    if (ranksCount > 0x186A0 || (ranksCount = [entriesCopy ranksCount], v8 != ranksCount))
    {
      v15 = __atxlog_handle_hero(ranksCount);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[ATXHeroEntriesReader validateReader:pbEntries:];
      }

      goto LABEL_22;
    }
  }

  if ([entriesCopy urlHashsCount])
  {
    urlHashsCount = [entriesCopy urlHashsCount];
    if (urlHashsCount > 0x186A0 || (urlHashsCount = [entriesCopy urlHashsCount], v8 != urlHashsCount))
    {
      v15 = __atxlog_handle_hero(urlHashsCount);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[ATXHeroEntriesReader validateReader:pbEntries:];
      }

      goto LABEL_22;
    }
  }

  if ([entriesCopy poiCategorysCount])
  {
    poiCategorysCount = [entriesCopy poiCategorysCount];
    if (poiCategorysCount > 0x186A0 || (poiCategorysCount = [entriesCopy poiCategorysCount], v8 != poiCategorysCount))
    {
      v15 = __atxlog_handle_hero(poiCategorysCount);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        +[ATXHeroEntriesReader validateReader:pbEntries:];
      }

LABEL_22:

      v14 = 0;
      goto LABEL_23;
    }
  }

  v14 = 1;
LABEL_23:

  return v14;
}

+ (id)loadAppAndClipEntriesFromFileURL:(id)l
{
  v15 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v10 = 0;
  v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:lCopy options:1 error:&v10];
  v5 = v10;
  v6 = v5;
  if (v4 && (v5 = [v4 length]) != 0)
  {
    v7 = [objc_opt_class() loadAppAndClipEntriesFromData:v4];
  }

  else
  {
    v8 = __atxlog_handle_hero(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = lCopy;
      v13 = 2112;
      v14 = v6;
      _os_log_impl(&dword_260C92000, v8, OS_LOG_TYPE_DEFAULT, "ATXCDN: Ignore reading nil or 0-byte file %@: %@", buf, 0x16u);
    }

    v7 = 0;
  }

  return v7;
}

+ (id)loadAppAndClipEntriesFromData:(id)data
{
  dataCopy = data;
  v5 = objc_alloc_init(ATXHeroEntriesPb);
  v6 = [objc_alloc(MEMORY[0x277D43170]) initWithData:dataCopy];
  if ([self validateReader:v6 pbEntries:v5])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[ATXHeroEntriesPb adamIdsCount](v5, "adamIdsCount")}];
    if ([(ATXHeroEntriesPb *)v5 adamIdsCount])
    {
      v8 = 0;
      do
      {
        v9 = objc_autoreleasePoolPush();
        v10 = [self appAndClipEntryFromPbEntries:v5 position:v8];
        if (v10)
        {
          [v7 addObject:v10];
        }

        objc_autoreleasePoolPop(v9);
        ++v8;
      }

      while (v8 < [(ATXHeroEntriesPb *)v5 adamIdsCount]);
    }

    if ([v7 count])
    {
      v11 = v7;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

+ (void)appAndClipEntryFromPbEntries:(uint64_t)a1 position:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_debug_impl(&dword_260C92000, a2, OS_LOG_TYPE_DEBUG, "ATXCDN: Skipping malformed entry at position: %lu", &v2, 0xCu);
}

@end