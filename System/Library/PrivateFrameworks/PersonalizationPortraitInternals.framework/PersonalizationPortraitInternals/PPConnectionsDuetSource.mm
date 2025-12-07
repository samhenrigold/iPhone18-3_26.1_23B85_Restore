@interface PPConnectionsDuetSource
+ (PPConnectionsDuetSource)sharedInstance;
+ (id)duetUserActivitiesFromStreams:(id)streams limit:(unint64_t)limit afterDate:(id)date explanationSet:(id)set;
- (BOOL)isDuetEventAuthorized:(id)authorized bundleID:(id)d;
- (BOOL)testMetadataForValidAddressAndNameWithEvent:(id)event;
- (id)duetLocationUserActivitiesWithLimit:(unint64_t)limit afterDate:(id)date explanationSet:(id)set;
- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit duetLimit:(int64_t)duetLimit consumer:(unint64_t)consumer richLocationItems:(BOOL)items resolveEKLocations:(BOOL)self0 explanationSet:(id)self1;
- (id)supportedLocationFields;
- (id)whitespaceAndNewlineCharacterSet;
@end

@implementation PPConnectionsDuetSource

- (id)whitespaceAndNewlineCharacterSet
{
  if (whitespaceAndNewlineCharacterSet__pasOnceToken35 != -1)
  {
    dispatch_once(&whitespaceAndNewlineCharacterSet__pasOnceToken35, &__block_literal_global_70);
  }

  v3 = whitespaceAndNewlineCharacterSet__pasExprOnceResult;

  return v3;
}

void __59__PPConnectionsDuetSource_whitespaceAndNewlineCharacterSet__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
  v2 = whitespaceAndNewlineCharacterSet__pasExprOnceResult;
  whitespaceAndNewlineCharacterSet__pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

- (id)duetLocationUserActivitiesWithLimit:(unint64_t)limit afterDate:(id)date explanationSet:(id)set
{
  v17[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CFE298];
  setCopy = set;
  dateCopy = date;
  appLocationActivityStream = [v7 appLocationActivityStream];
  v17[0] = appLocationActivityStream;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:1];
  v12 = +[PPConnectionsParameters sharedInstance];
  userActivityBatchSize = [v12 userActivityBatchSize];

  if (userActivityBatchSize <= limit)
  {
    limitCopy = limit;
  }

  else
  {
    limitCopy = userActivityBatchSize;
  }

  v15 = [PPConnectionsDuetSource duetUserActivitiesFromStreams:v11 limit:limitCopy afterDate:dateCopy explanationSet:setCopy];

  return v15;
}

- (BOOL)isDuetEventAuthorized:(id)authorized bundleID:(id)d
{
  authorizedCopy = authorized;
  dCopy = d;
  v7 = [dCopy isEqualToString:*MEMORY[0x277D3A698]];
  v8 = objc_autoreleasePoolPush();
  if (v7)
  {
    metadata = [authorizedCopy metadata];
    v10 = [MEMORY[0x277CFE210] URL];
    v11 = [metadata objectForKeyedSubscript:v10];
    lowercaseString2 = PPCollapseWhitespaceAndStrip();

    v13 = [MEMORY[0x277CBEBC0] URLWithString:lowercaseString2];
    host = [v13 host];
    lowercaseString = [host lowercaseString];

    v16 = +[PPConnectionsParameters sharedInstance];
    LODWORD(host) = [v16 shouldUseAllowedWebsite];

    if (host)
    {
      if (!lowercaseString || (+[PPConnectionsParameters sharedInstance](PPConnectionsParameters, "sharedInstance"), v17 = objc_claimAutoreleasedReturnValue(), [v17 donationAllowedWebsites], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "containsObject:", lowercaseString), v18, v17, (v19 & 1) == 0))
      {
        v20 = pp_connections_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v41 = 0;
          v21 = "PPConnectionsDuetSource: website not allowed";
          v22 = &v41;
LABEL_16:
          _os_log_impl(&dword_23224A000, v20, OS_LOG_TYPE_DEFAULT, v21, v22, 2u);
          goto LABEL_17;
        }

        goto LABEL_17;
      }
    }

    else if (lowercaseString)
    {
      v30 = +[PPConnectionsParameters sharedInstance];
      donationBlockedWebsites = [v30 donationBlockedWebsites];
      v32 = [donationBlockedWebsites containsObject:lowercaseString];

      if (v32)
      {
        v20 = pp_connections_log_handle();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v21 = "PPConnectionsDuetSource: website is blocked";
          v22 = buf;
          goto LABEL_16;
        }

LABEL_17:

        goto LABEL_23;
      }
    }

LABEL_25:
    objc_autoreleasePoolPop(v8);
    v36 = 1;
    goto LABEL_26;
  }

  lowercaseString2 = [dCopy lowercaseString];
  v23 = +[PPConnectionsParameters sharedInstance];
  shouldUseAllowedApps = [v23 shouldUseAllowedApps];

  if (!shouldUseAllowedApps)
  {
    if (!dCopy)
    {
      goto LABEL_25;
    }

    v33 = +[PPConnectionsParameters sharedInstance];
    donationBlockedApps = [v33 donationBlockedApps];
    v35 = [donationBlockedApps containsObject:lowercaseString2];

    if (!v35)
    {
      goto LABEL_25;
    }

    lowercaseString = pp_connections_log_handle();
    if (!os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_23;
    }

    v38 = 0;
    v28 = "PPConnectionsDuetSource: app is blocked";
    v29 = &v38;
LABEL_22:
    _os_log_impl(&dword_23224A000, lowercaseString, OS_LOG_TYPE_DEFAULT, v28, v29, 2u);
    goto LABEL_23;
  }

  if (dCopy)
  {
    v25 = +[PPConnectionsParameters sharedInstance];
    donationAllowedApps = [v25 donationAllowedApps];
    v27 = [donationAllowedApps containsObject:lowercaseString2];

    if (v27)
    {
      goto LABEL_25;
    }
  }

  lowercaseString = pp_connections_log_handle();
  if (os_log_type_enabled(lowercaseString, OS_LOG_TYPE_DEFAULT))
  {
    v39 = 0;
    v28 = "PPConnectionsDuetSource: app is not allowed";
    v29 = &v39;
    goto LABEL_22;
  }

LABEL_23:

  objc_autoreleasePoolPop(v8);
  v36 = 0;
LABEL_26:

  return v36;
}

- (BOOL)testMetadataForValidAddressAndNameWithEvent:(id)event
{
  eventCopy = event;
  metadata = [eventCopy metadata];
  thoroughfare = [MEMORY[0x277CFE210] thoroughfare];
  v171 = metadata;
  v9 = [metadata objectForKeyedSubscript:?];
  if (!v9 || ([eventCopy metadata], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(MEMORY[0x277CFE210], "thoroughfare"), v161 = v10, v162 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "objectForKeyedSubscript:"), metadata6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v163 = metadata6, (objc_opt_isKindOfClass() & 1) == 0))
  {
    v169 = 0;
    selfCopy2 = 0;
    v25 = 0;
    v26 = 0;
    memset(v172, 0, 28);
    v166 = 0;
    memset(v164, 0, sizeof(v164));
    memset(v165, 0, sizeof(v165));
    memset(v167, 0, 41);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    goto LABEL_9;
  }

  v11 = objc_autoreleasePoolPush();
  metadata2 = [eventCopy metadata];
  thoroughfare2 = [MEMORY[0x277CFE210] thoroughfare];
  metadata15 = [metadata2 objectForKeyedSubscript:thoroughfare2];
  whitespaceAndNewlineCharacterSet = [(PPConnectionsDuetSource *)self whitespaceAndNewlineCharacterSet];
  metadata27 = [metadata15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

  objc_autoreleasePoolPop(v11);
  metadata6 = metadata27;

  v158 = metadata6;
  if (![metadata6 length])
  {
    v169 = 0;
    v167[40] = 0;
    selfCopy2 = 0;
    v25 = 0;
    v26 = 0;
    memset(v172, 0, 28);
    v166 = 0;
    memset(v164, 0, sizeof(v164));
    memset(v165, 0, sizeof(v165));
    memset(v167, 0, 36);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    *&v167[36] = 1;
    goto LABEL_9;
  }

  metadata3 = [eventCopy metadata];
  [MEMORY[0x277CFE210] city];
  v156 = v157 = metadata3;
  v16 = [metadata3 objectForKeyedSubscript:?];
  HIDWORD(v169) = v16 != 0;
  v155 = v16;
  if (v16)
  {
    metadata4 = [eventCopy metadata];
    [MEMORY[0x277CFE210] city];
    v151 = v152 = metadata4;
    v18 = [metadata4 objectForKeyedSubscript:?];
    objc_opt_class();
    v150 = v18;
    if (objc_opt_isKindOfClass())
    {
      v19 = objc_autoreleasePoolPush();
      metadata5 = [eventCopy metadata];
      city = [MEMORY[0x277CFE210] city];
      metadata15 = [metadata5 objectForKeyedSubscript:city];
      whitespaceAndNewlineCharacterSet2 = [(PPConnectionsDuetSource *)self whitespaceAndNewlineCharacterSet];
      v23 = [metadata15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

      objc_autoreleasePoolPop(v19);
      v24 = v23;

      v144 = v24;
      metadata27 = 1;
      if ([v24 length])
      {
        self = 0;
        goto LABEL_87;
      }
    }

    else
    {
      metadata27 = 0;
    }
  }

  else
  {
    metadata27 = 0;
  }

  metadata6 = [eventCopy metadata];
  [MEMORY[0x277CFE210] postalCode];
  v153 = v154 = metadata6;
  v36 = [metadata6 objectForKeyedSubscript:?];
  if (!v36)
  {
    LODWORD(v169) = metadata27;
    v160 = 0;
    v25 = 0;
    v26 = 0;
    memset(v167, 0, 32);
    memset(v172, 0, 28);
    v166 = 0;
    memset(v164, 0, sizeof(v164));
    memset(v165, 0, sizeof(v165));
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v167[40] = 0;
    *&v167[32] = 0x100000001;
    selfCopy2 = 1;
    goto LABEL_9;
  }

  v160 = v36;
  metadata7 = [eventCopy metadata];
  [MEMORY[0x277CFE210] postalCode];
  v148 = v149 = metadata7;
  metadata6 = [metadata7 objectForKeyedSubscript:?];
  objc_opt_class();
  v147 = metadata6;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    LODWORD(v169) = metadata27;
    v25 = 0;
    v26 = 0;
    memset(v172, 0, 28);
    v166 = 0;
    memset(v164, 0, sizeof(v164));
    memset(v165, 0, sizeof(v165));
    memset(v167, 0, 28);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v167[40] = 0;
    *&v167[32] = 0x100000001;
    selfCopy2 = 1;
    *&v167[28] = 1;
    goto LABEL_9;
  }

  metadata6 = objc_autoreleasePoolPush();
  metadata8 = [eventCopy metadata];
  postalCode = [MEMORY[0x277CFE210] postalCode];
  metadata15 = [metadata8 objectForKeyedSubscript:postalCode];
  whitespaceAndNewlineCharacterSet3 = [(PPConnectionsDuetSource *)self whitespaceAndNewlineCharacterSet];
  v41 = [metadata15 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet3];

  objc_autoreleasePoolPop(metadata6);
  self = v41;

  selfCopy = self;
  if (![(PPConnectionsDuetSource *)self length])
  {
    v167[40] = 0;
    v25 = 0;
    v26 = 0;
    memset(v172, 0, 28);
    v166 = 0;
    memset(v164, 0, sizeof(v164));
    memset(v165, 0, sizeof(v165));
    memset(v167, 0, 24);
    v27 = 0;
    v28 = 0;
    v29 = 0;
    *&v167[32] = 0x100000001;
    selfCopy2 = 1;
    LODWORD(v169) = metadata27;
    *&v167[24] = 0x100000001;
    goto LABEL_9;
  }

  self = 1;
LABEL_87:
  metadata6 = [eventCopy metadata];
  [MEMORY[0x277CFE210] thoroughfare];
  v145 = v146 = metadata6;
  v42 = [metadata6 objectForKeyedSubscript:?];
  selfCopy2 = self;
  LODWORD(v169) = metadata27;
  if (!v42)
  {
    v159 = 0;
    v25 = 0;
    v26 = 0;
    *v167 = 0;
    *&v167[8] = 0;
    memset(v172, 0, 28);
    v166 = 0;
    memset(v164, 0, sizeof(v164));
    memset(v165, 0, sizeof(v165));
    v27 = 0;
    v28 = 0;
    v29 = 0;
    v167[40] = 0;
    *&v167[28] = self;
    *&v167[32] = 0x100000001;
    *&v167[24] = self;
    *&v167[16] = 1;
    goto LABEL_9;
  }

  v159 = v42;
  metadata9 = [eventCopy metadata];
  [MEMORY[0x277CFE210] thoroughfare];
  v141 = v142 = metadata9;
  metadata6 = [metadata9 objectForKeyedSubscript:?];
  objc_opt_class();
  v140 = metadata6;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v26 = 0;
    *v167 = 0;
    *&v167[8] = 0;
    memset(v172, 0, 28);
    v166 = 0;
    memset(v164, 0, sizeof(v164));
    memset(v165, 0, sizeof(v165));
    v27 = 0;
    v28 = 0;
    v29 = 0;
    *&v167[36] = 1;
    *&v167[28] = self;
    *&v167[32] = 1;
    *&v167[24] = self;
    *&v167[16] = 1;
    v25 = 1;
    goto LABEL_9;
  }

  metadata10 = [eventCopy metadata];
  locationName = [MEMORY[0x277CFE210] locationName];
  v45 = [metadata10 objectForKeyedSubscript:?];
  metadata6 = v45 != 0;
  v137 = v45;
  v139 = metadata10;
  if (v45)
  {
    metadata11 = [eventCopy metadata];
    locationName2 = [MEMORY[0x277CFE210] locationName];
    v136 = metadata11;
    v47 = [metadata11 objectForKeyedSubscript:?];
    objc_opt_class();
    v134 = v47;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v26 = 0;
      *v167 = 0;
      *&v167[8] = 0;
      memset(v172, 0, 24);
      v166 = 0;
      memset(v164, 0, sizeof(v164));
      memset(v165, 0, sizeof(v165));
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      LODWORD(v172[3]) = 1;
      goto LABEL_9;
    }

    metadata12 = [eventCopy metadata];
    locationName3 = [MEMORY[0x277CFE210] locationName];
    v127 = metadata12;
    v125 = [metadata12 objectForKeyedSubscript:?];
    if ([v125 length] > 0x12B)
    {
      *v167 = 0;
      *&v167[8] = 0;
      memset(v172, 0, 24);
      v166 = 0;
      memset(v164, 0, sizeof(v164));
      memset(v165, 0, sizeof(v165));
      v27 = 0;
      v28 = 0;
      v29 = 0;
      *&v167[36] = 1;
      *&v167[28] = self;
      *&v167[32] = 1;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      LODWORD(v172[3]) = 1;
      v26 = 1;
      goto LABEL_9;
    }

    LODWORD(v172[3]) = metadata6;
  }

  else
  {
    LODWORD(v172[3]) = 0;
  }

  metadata13 = [eventCopy metadata];
  subThoroughfare = [MEMORY[0x277CFE210] subThoroughfare];
  v133 = metadata13;
  v50 = [metadata13 objectForKeyedSubscript:?];
  metadata6 = v50 != 0;
  v131 = v50;
  if (v50)
  {
    metadata14 = [eventCopy metadata];
    subThoroughfare2 = [MEMORY[0x277CFE210] subThoroughfare];
    v130 = metadata14;
    metadata15 = [metadata14 objectForKeyedSubscript:?];
    objc_opt_class();
    v128 = metadata15;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v166 = 0;
      *&v167[4] = 0;
      v172[2] = 0;
      v172[1] = 0;
      memset(v164, 0, sizeof(v164));
      memset(v165, 0, sizeof(v165));
      *v167 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[12] = 1;
      *&v167[16] = 0x100000001;
      v25 = 1;
      v26 = v172[3];
      v172[0] = 1;
      goto LABEL_9;
    }

    metadata15 = [eventCopy metadata];
    subThoroughfare3 = [MEMORY[0x277CFE210] subThoroughfare];
    v118 = metadata15;
    v116 = [metadata15 objectForKeyedSubscript:?];
    if ([v116 length] > 0x12B)
    {
      *&v167[4] = 0;
      v172[2] = 0;
      v166 = 0;
      v172[1] = 0;
      memset(v164, 0, sizeof(v164));
      *v165 = 0;
      *v167 = 0;
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[12] = 1;
      *&v167[16] = 0x100000001;
      v25 = 1;
      v26 = v172[3];
      v172[0] = 1;
      *&v165[8] = 1;
      goto LABEL_9;
    }
  }

  metadata16 = [eventCopy metadata];
  thoroughfare3 = [MEMORY[0x277CFE210] thoroughfare];
  v124 = metadata16;
  v53 = [metadata16 objectForKeyedSubscript:?];
  metadata15 = v53 != 0;
  v122 = v53;
  LODWORD(v172[0]) = metadata6;
  if (v53)
  {
    metadata17 = [eventCopy metadata];
    thoroughfare4 = [MEMORY[0x277CFE210] thoroughfare];
    v121 = metadata17;
    v55 = [metadata17 objectForKeyedSubscript:?];
    objc_opt_class();
    v119 = v55;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v166 = 0;
      *v167 = 0;
      *(v172 + 4) = 0;
      *(&v172[1] + 4) = 0;
      memset(v164, 0, sizeof(v164));
      *v165 = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      v26 = v172[3];
      *&v165[8] = metadata6;
      v27 = 0;
      *&v167[8] = 0x100000001;
      HIDWORD(v172[2]) = 1;
      goto LABEL_9;
    }

    metadata18 = [eventCopy metadata];
    thoroughfare5 = [MEMORY[0x277CFE210] thoroughfare];
    v109 = metadata18;
    v107 = [metadata18 objectForKeyedSubscript:?];
    v57 = metadata6;
    if ([v107 length] > 0x12B)
    {
      v166 = 0;
      *v167 = 0;
      *(v172 + 4) = 0;
      *(&v172[1] + 4) = 0;
      *v164 = 0;
      *v165 = 0;
      v28 = 0;
      v29 = 0;
      *&v167[36] = 1;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 1;
      *&v167[20] = 1;
      *&v167[24] = self;
      *&v167[12] = 1;
      *&v167[16] = 1;
      v25 = 1;
      v26 = v172[3];
      *&v165[8] = metadata6;
      v27 = 0;
      *&v167[8] = 1;
      HIDWORD(v172[2]) = 1;
      *&v164[8] = 1;
      goto LABEL_9;
    }
  }

  else
  {
    v57 = metadata6;
  }

  metadata19 = [eventCopy metadata];
  postalCode2 = [MEMORY[0x277CFE210] postalCode];
  v115 = metadata19;
  v59 = [metadata19 objectForKeyedSubscript:?];
  metadata6 = v59 != 0;
  v113 = v59;
  HIDWORD(v172[2]) = metadata15;
  if (v59)
  {
    metadata20 = [eventCopy metadata];
    postalCode3 = [MEMORY[0x277CFE210] postalCode];
    v112 = metadata20;
    v61 = [metadata20 objectForKeyedSubscript:?];
    objc_opt_class();
    v110 = v61;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *v164 = 0;
      *v165 = 0;
      LODWORD(v172[2]) = 0;
      *&v165[8] = v57;
      v166 = 0x100000000;
      *(v172 + 4) = 0;
      *v167 = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      v26 = v172[3];
      v27 = 0;
      *&v167[8] = 0x100000001;
      *&v164[8] = metadata15;
      HIDWORD(v172[1]) = 1;
      goto LABEL_9;
    }

    metadata21 = [eventCopy metadata];
    postalCode4 = [MEMORY[0x277CFE210] postalCode];
    v100 = metadata21;
    v98 = [metadata21 objectForKeyedSubscript:?];
    if ([v98 length] > 0x12B)
    {
      *v165 = 0;
      LODWORD(v172[2]) = 0;
      *&v164[4] = 0;
      *&v164[8] = metadata15;
      *&v165[8] = v57;
      v166 = 0x100000000;
      *(v172 + 4) = 0;
      *v167 = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      v26 = v172[3];
      v27 = 0;
      *&v167[8] = 0x100000001;
      HIDWORD(v172[1]) = 1;
      *v164 = 1;
      goto LABEL_9;
    }
  }

  metadata22 = [eventCopy metadata];
  city2 = [MEMORY[0x277CFE210] city];
  v64 = [metadata22 objectForKeyedSubscript:?];
  LODWORD(v172[2]) = v64 != 0;
  v104 = v64;
  HIDWORD(v172[1]) = metadata6;
  v106 = metadata22;
  if (v64)
  {
    metadata23 = [eventCopy metadata];
    city3 = [MEMORY[0x277CFE210] city];
    v103 = metadata23;
    metadata15 = [metadata23 objectForKeyedSubscript:?];
    objc_opt_class();
    v101 = metadata15;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *&v164[4] = 0;
      *&v165[8] = v57;
      v166 = 0x100000000;
      *(v172 + 4) = 0;
      *v167 = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      v27 = 0;
      *&v167[8] = 0x100000001;
      v26 = v172[3];
      *&v164[8] = HIDWORD(v172[2]);
      *v165 = 0x100000000;
      *v164 = metadata6;
      LODWORD(v172[2]) = 1;
      goto LABEL_9;
    }

    metadata15 = [eventCopy metadata];
    city4 = [MEMORY[0x277CFE210] city];
    v91 = metadata15;
    v89 = [metadata15 objectForKeyedSubscript:?];
    if ([v89 length] > 0x12B)
    {
      *&v165[8] = v57;
      v166 = 0x100000000;
      *(v172 + 4) = 0;
      *v167 = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      v27 = 0;
      *&v167[8] = 0x100000001;
      v26 = v172[3];
      *&v164[8] = HIDWORD(v172[2]);
      *v165 = 0x100000000;
      *v164 = metadata6;
      LODWORD(v172[2]) = 1;
      *&v164[4] = 1;
      goto LABEL_9;
    }
  }

  metadata24 = [eventCopy metadata];
  stateOrProvince = [MEMORY[0x277CFE210] stateOrProvince];
  v67 = [metadata24 objectForKeyedSubscript:?];
  LODWORD(v172[1]) = v67 != 0;
  v95 = v67;
  v97 = metadata24;
  if (v67)
  {
    metadata25 = [eventCopy metadata];
    stateOrProvince2 = [MEMORY[0x277CFE210] stateOrProvince];
    v94 = metadata25;
    metadata15 = [metadata25 objectForKeyedSubscript:?];
    objc_opt_class();
    v92 = metadata15;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      *v167 = 0;
      HIDWORD(v172[0]) = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      *&v165[8] = v57;
      v27 = 0;
      *&v167[8] = 0x100000001;
      v26 = v172[3];
      *v165 = 0x100000000;
      *v164 = metadata6;
      *&v164[4] = v172[2];
      v166 = 0x100000001;
      LODWORD(v172[1]) = 1;
      goto LABEL_9;
    }

    metadata15 = [eventCopy metadata];
    stateOrProvince3 = [MEMORY[0x277CFE210] stateOrProvince];
    v81 = metadata15;
    v79 = [metadata15 objectForKeyedSubscript:?];
    if ([v79 length] > 0x12B)
    {
      *v167 = 0;
      HIDWORD(v172[0]) = 0;
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      *&v165[8] = v57;
      v27 = 0;
      *&v167[8] = 0x100000001;
      v26 = v172[3];
      *v164 = metadata6;
      *&v164[4] = v172[2];
      v166 = 0x100000001;
      LODWORD(v172[1]) = 1;
      *v165 = 0x100000001;
      goto LABEL_9;
    }
  }

  metadata6 = [eventCopy metadata];
  country = [MEMORY[0x277CFE210] country];
  v88 = metadata6;
  v69 = [metadata6 objectForKeyedSubscript:?];
  HIDWORD(v172[0]) = v69 != 0;
  v86 = v69;
  if (v69)
  {
    metadata26 = [eventCopy metadata];
    country2 = [MEMORY[0x277CFE210] country];
    v84 = metadata26;
    metadata15 = [metadata26 objectForKeyedSubscript:?];
    objc_opt_class();
    v82 = metadata15;
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = 0;
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      *&v165[8] = v57;
      v27 = 0;
      *&v167[8] = 0x100000001;
      v26 = v172[3];
      *v164 = HIDWORD(v172[1]);
      *&v165[4] = 1;
      *&v164[4] = v172[2];
      v166 = 0x100000001;
      *v165 = v172[1];
      *v167 = 1;
      HIDWORD(v172[0]) = 1;
      goto LABEL_9;
    }

    metadata6 = [eventCopy metadata];
    country3 = [MEMORY[0x277CFE210] country];
    v74 = metadata6;
    v72 = [metadata6 objectForKeyedSubscript:?];
    if ([v72 length] > 0x12B)
    {
      v28 = 0;
      v29 = 0;
      *&v167[36] = 1;
      *&v167[28] = self;
      *&v167[32] = 1;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      *&v165[8] = v57;
      v27 = 0;
      v26 = v172[3];
      *v164 = HIDWORD(v172[1]);
      *&v165[4] = 1;
      *&v164[4] = v172[2];
      v166 = 0x100000001;
      *v165 = v172[1];
      *v167 = 0x100000001;
      HIDWORD(v172[0]) = 1;
      *&v167[8] = 0x100000001;
      goto LABEL_9;
    }
  }

  metadata6 = HIDWORD(v172[1]);
  metadata15 = [eventCopy metadata];
  displayName = [MEMORY[0x277CFE210] displayName];
  v78 = metadata15;
  v85 = [metadata15 objectForKeyedSubscript:?];
  if (v85)
  {
    metadata6 = [eventCopy metadata];
    displayName2 = [MEMORY[0x277CFE210] displayName];
    v76 = metadata6;
    metadata15 = [metadata6 objectForKeyedSubscript:?];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      metadata27 = [eventCopy metadata];
      metadata6 = [MEMORY[0x277CFE210] displayName];
      [metadata27 objectForKeyedSubscript:metadata6];
      self = v71 = self;
      v167[40] = [(PPConnectionsDuetSource *)self length]< 0x12C;
      *&v167[28] = v71;
      *&v167[32] = 0x100000001;
      *&v167[24] = v71;
      *&v167[16] = 0x100000001;
      v25 = 1;
      v26 = v172[3];
      *v164 = HIDWORD(v172[1]);
      *&v165[4] = 1;
      *&v165[8] = v172[0];
      *&v164[4] = v172[2];
      v166 = 0x100000001;
      *v165 = v172[1];
      *v167 = 1;
      *&v167[4] = HIDWORD(v172[0]);
      *&v167[8] = 0x100000001;
      v27 = 1;
      v28 = 1;
      v29 = 1;
    }

    else
    {
      v29 = 0;
      v167[40] = 0;
      *&v167[28] = self;
      *&v167[32] = 0x100000001;
      *&v167[24] = self;
      *&v167[16] = 0x100000001;
      v25 = 1;
      v26 = v172[3];
      *v164 = HIDWORD(v172[1]);
      *&v165[4] = 1;
      *&v165[8] = v172[0];
      *&v164[4] = v172[2];
      v166 = 0x100000001;
      *v165 = v172[1];
      *v167 = 1;
      *&v167[4] = HIDWORD(v172[0]);
      *&v167[8] = 0x100000001;
      v27 = 1;
      v28 = 1;
    }
  }

  else
  {
    v85 = 0;
    v28 = 0;
    v29 = 0;
    *&v167[32] = 0x100000001;
    *&v167[24] = self;
    *&v167[28] = self;
    *&v167[16] = 0x100000001;
    v25 = 1;
    v26 = v172[3];
    *&v167[8] = 0x100000001;
    *&v165[4] = 1;
    *&v165[8] = v57;
    *v164 = HIDWORD(v172[1]);
    *&v164[4] = v172[2];
    v166 = 0x100000001;
    *v165 = v172[1];
    *v167 = 1;
    *&v167[4] = HIDWORD(v172[0]);
    v27 = 1;
    v167[40] = 1;
  }

LABEL_9:
  if (v29)
  {
    v30 = v26;
    v31 = v9;
    v32 = v27;
    v33 = v25;
    v34 = v28;

    v28 = v34;
    v25 = v33;
    v27 = v32;
    v9 = v31;
    v26 = v30;
  }

  if (v28)
  {
  }

  if (v27)
  {
  }

  if (*&v167[4])
  {
  }

  if (HIDWORD(v172[0]))
  {
  }

  if (*v167)
  {
  }

  if (*v165)
  {
  }

  if (LODWORD(v172[1]))
  {
  }

  if (v166)
  {
  }

  if (*&v164[4])
  {
  }

  if (LODWORD(v172[2]))
  {
  }

  if (*&v165[4])
  {
  }

  if (*v164)
  {
  }

  if (HIDWORD(v172[1]))
  {
  }

  if (HIDWORD(v166))
  {
  }

  if (*&v164[8])
  {
  }

  if (HIDWORD(v172[2]))
  {
  }

  if (*&v167[8])
  {
  }

  if (*&v165[8])
  {
  }

  if (LODWORD(v172[0]))
  {
  }

  if (*&v167[12])
  {

    if (!v26)
    {
      goto LABEL_51;
    }
  }

  else if (!v26)
  {
LABEL_51:
    if (!LODWORD(v172[3]))
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (LODWORD(v172[3]))
  {
LABEL_52:
  }

LABEL_53:
  if (*&v167[20])
  {
  }

  if (v25)
  {
  }

  if (*&v167[16])
  {
  }

  if (*&v167[24])
  {
  }

  if (*&v167[28])
  {
  }

  if (selfCopy2)
  {
  }

  if (v169)
  {
  }

  if (HIDWORD(v169))
  {
  }

  if (*&v167[32])
  {
  }

  if (*&v167[36])
  {
  }

  if (v9)
  {
  }

  return v167[40];
}

- (id)supportedLocationFields
{
  if (supportedLocationFields_onceToken != -1)
  {
    dispatch_once(&supportedLocationFields_onceToken, &__block_literal_global_37);
  }

  v3 = supportedLocationFields_supportedLocationFields;

  return v3;
}

void __50__PPConnectionsDuetSource_supportedLocationFields__block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_284784620, &unk_284784638, &unk_284784650, &unk_284784668, &unk_284784680, &unk_284784698, &unk_2847846B0, &unk_2847846C8, &unk_2847846E0, 0}];
  objc_autoreleasePoolPop(v0);
  v2 = supportedLocationFields_supportedLocationFields;
  supportedLocationFields_supportedLocationFields = v1;
}

- (id)locationItemsWithCriteria:(id)criteria earliest:(id)earliest latest:(id)latest limit:(unint64_t)limit duetLimit:(int64_t)duetLimit consumer:(unint64_t)consumer richLocationItems:(BOOL)items resolveEKLocations:(BOOL)self0 explanationSet:(id)self1
{
  v163 = *MEMORY[0x277D85DE8];
  criteriaCopy = criteria;
  earliestCopy = earliest;
  latestCopy = latest;
  setCopy = set;
  v18 = objc_autoreleasePoolPush();
  v19 = objc_opt_new();
  selfCopy = self;
  v141 = setCopy;
  v20 = [(PPConnectionsDuetSource *)self duetLocationUserActivitiesWithLimit:duetLimit afterDate:earliestCopy explanationSet:setCopy];
  v21 = v20;
  if (!v20)
  {
    bundleIdentifier = pp_connections_log_handle();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v123 = "PPConnectionsDuetSource: duetLocationUserActivitiesWithLimit timed out";
      v124 = bundleIdentifier;
      v125 = 2;
LABEL_105:
      _os_log_impl(&dword_23224A000, v124, OS_LOG_TYPE_DEFAULT, v123, buf, v125);
    }

LABEL_106:
    v122 = 0;
    goto LABEL_111;
  }

  if (![v20 count])
  {
    [v141 push:27];
    bundleIdentifier = pp_connections_log_handle();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v159 = earliestCopy;
      v123 = "PPConnectionsDuetSource: no activities found in Duet after date %@";
      v124 = bundleIdentifier;
      v125 = 12;
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  v132 = v21;
  supportedLocationFields = [(PPConnectionsDuetSource *)self supportedLocationFields];
  v23 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(criteriaCopy, "locationField")}];
  v24 = [supportedLocationFields containsObject:v23];

  if (v24)
  {
    v133 = v19;
    v128 = v18;
    v129 = latestCopy;
    bundleIdentifier = [criteriaCopy bundleIdentifier];
    v130 = earliestCopy;
    v26 = earliestCopy;
    v147 = objc_opt_new();
    v27 = pp_connections_log_handle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v159 = [v132 count];
      _os_log_impl(&dword_23224A000, v27, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: got %tu activities from Duet", buf, 0xCu);
    }

    v156 = 0u;
    v157 = 0u;
    v154 = 0u;
    v155 = 0u;
    obj = v132;
    v28 = [obj countByEnumeratingWithState:&v154 objects:v162 count:16];
    if (v28)
    {
      v30 = v28;
      v153 = *v155;
      v131 = *MEMORY[0x277D3A698];
      *&v29 = 138740227;
      v127 = v29;
      v135 = v26;
      do
      {
        v31 = 0;
        do
        {
          if (*v155 != v153)
          {
            objc_enumerationMutation(obj);
          }

          v32 = *(*(&v154 + 1) + 8 * v31);
          v33 = objc_autoreleasePoolPush();
          value = [v32 value];
          stringValue = [value stringValue];

          v36 = pp_connections_log_handle();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            startDate = [v32 startDate];
            *buf = 138412546;
            v159 = stringValue;
            v160 = 2112;
            v161 = startDate;
            _os_log_impl(&dword_23224A000, v36, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: processing activity from bundle %@ at time %@", buf, 0x16u);
          }

          if (bundleIdentifier && [stringValue isEqualToString:bundleIdentifier])
          {
            v38 = pp_connections_log_handle();
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v159 = bundleIdentifier;
              v39 = v38;
              v40 = "PPConnectionsDuetSource: skipping activity since it came from the requesting bundle (%@)";
              v41 = 12;
              goto LABEL_24;
            }

            goto LABEL_25;
          }

          value2 = [v32 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            v38 = pp_connections_log_handle();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

            *buf = 0;
            v39 = v38;
            v40 = "PPConnectionsDuetSource: skipping activity since the value is not a _DKIdentifier";
            goto LABEL_23;
          }

          if ([stringValue isEqualToString:@"unknown"])
          {
            v38 = pp_connections_log_handle();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

LABEL_20:
            *buf = 0;
            v39 = v38;
            v40 = "PPConnectionsDuetSource: skipping activity since the bundleId is unknown";
LABEL_23:
            v41 = 2;
LABEL_24:
            _os_log_impl(&dword_23224A000, v39, OS_LOG_TYPE_DEFAULT, v40, buf, v41);
LABEL_25:

LABEL_26:
            objc_autoreleasePoolPop(v33);
            goto LABEL_27;
          }

          startDate2 = [v32 startDate];
          v45 = [startDate2 compare:v26];

          if (v45 == -1)
          {
            v48 = pp_connections_log_handle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v48, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: skipping activity since it is before the cutoff time", buf, 2u);
            }

            [v141 push:5];
            goto LABEL_26;
          }

          startDate3 = [v32 startDate];
          v47 = [startDate3 compare:v147];

          if (v47 == 1)
          {
            v38 = pp_connections_log_handle();
            if (!os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_25;
            }

            goto LABEL_20;
          }

          metadata = [v32 metadata];
          activityType = [MEMORY[0x277CFE170] activityType];
          v150 = [metadata objectForKeyedSubscript:activityType];

          metadata2 = [v32 metadata];
          locationName = [MEMORY[0x277CFE210] locationName];
          v151 = [metadata2 objectForKeyedSubscript:locationName];

          metadata3 = [v32 metadata];
          fullyFormattedAddress = [MEMORY[0x277CFE210] fullyFormattedAddress];
          v149 = [metadata3 objectForKeyedSubscript:fullyFormattedAddress];

          metadata4 = [v32 metadata];
          thoroughfare = [MEMORY[0x277CFE210] thoroughfare];
          v148 = [metadata4 objectForKeyedSubscript:thoroughfare];

          v145 = [(PPConnectionsDuetSource *)selfCopy testMetadataForValidAddressAndNameWithEvent:v32];
          if (locations)
          {
            v57 = +[PPConnectionsUtils calendarUserActivityIdentifier];
            v58 = [v150 isEqualToString:v57];

            if (v58)
            {
              if (v151)
              {
                v59 = +[PPConnectionsCalendarSource sharedInstance];
                metadata5 = [v32 metadata];
                v61 = +[PPConnectionsUtils calendarUserActivityExternalIDKey];
                v62 = [metadata5 objectForKeyedSubscript:v61];
                v139 = v59;
                v63 = [v59 ekEventWithExternalID:v62];

                if (!v63)
                {
                  v77 = pp_connections_log_handle();
                  v26 = v135;
                  if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_23224A000, v77, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: skipping activity since the calendar event could not be loaded", buf, 2u);
                  }

                  v78 = 3;
                  goto LABEL_92;
                }

                v64 = objc_alloc(MEMORY[0x277D3A390]);
                v65 = objc_opt_new();
                v66 = [v64 initWithEKEvent:v63 calendarInternPool:v65];

                if (!v66)
                {
                  v79 = pp_connections_log_handle();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    v80 = v79;
                    v81 = "PPConnectionsDuetSource: skipping activity since PPEvent conversion failed.";
                    goto LABEL_62;
                  }

LABEL_63:

                  v78 = 3;
                  v26 = v135;
                  v67 = v139;
                  goto LABEL_93;
                }

                if (([v139 isCalendarEventEligibleForLocationPrediction:v66] & 1) == 0)
                {
                  v79 = pp_connections_log_handle();
                  if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    v80 = v79;
                    v81 = "PPConnectionsDuetSource: skipping activity since the calendar event is not eligible for prediction";
LABEL_62:
                    _os_log_impl(&dword_23224A000, v80, OS_LOG_TYPE_DEFAULT, v81, buf, 2u);
                  }

                  goto LABEL_63;
                }

                v67 = [PPConnectionsCalendarSource locationNameFromEvent:v66];
                v146 = [PPConnectionsCalendarSource locationLabelFromEvent:v66];
                v68 = [PPConnectionsCalendarSource locationValueFromEvent:v66];

                v142 = 0;
                context = 0;
                v26 = v135;
LABEL_73:

                goto LABEL_74;
              }
            }
          }

          if (v145 && [(PPConnectionsDuetSource *)selfCopy isDuetEventAuthorized:v32 bundleID:stringValue])
          {
            v139 = [PPConnectionsAddressFormatter postalAddressFromDuetEvent:v32];
            v146 = PPCollapseWhitespaceAndStrip();
            if ([criteriaCopy locationField] != 1)
            {
              goto LABEL_66;
            }

            if (!v149)
            {
              goto LABEL_66;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              goto LABEL_66;
            }

            v69 = objc_autoreleasePoolPush();
            whitespaceAndNewlineCharacterSet = [(PPConnectionsDuetSource *)selfCopy whitespaceAndNewlineCharacterSet];
            v71 = [v149 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];

            objc_autoreleasePoolPop(v69);
            if ([v71 length])
            {
              if (v148)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  contexta = objc_autoreleasePoolPush();
                  whitespaceAndNewlineCharacterSet2 = [(PPConnectionsDuetSource *)selfCopy whitespaceAndNewlineCharacterSet];
                  v73 = [v148 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet2];

                  objc_autoreleasePoolPop(contexta);
                  if ([v73 length])
                  {
                    v74 = [v149 containsString:v148];

                    if (v74)
                    {
                      v137 = PPCollapseWhitespaceAndStrip();
                      v75 = 0x27896F000;
                      v76 = v139;
LABEL_67:
                      context = [*(v75 + 1864) formattedAddressWithLocationField:objc_msgSend(criteriaCopy address:"locationField") duetEvent:v76 shortStyle:{v32, 1}];
                      if ([stringValue isEqualToString:v131])
                      {
                        metadata6 = [v32 metadata];
                        v83 = [MEMORY[0x277CFE210] URL];
                        v84 = [metadata6 objectForKeyedSubscript:v83];
                        v63 = PPCollapseWhitespaceAndStrip();

                        if (v63)
                        {
                          v142 = [MEMORY[0x277CBEBC0] URLWithString:v63];
                        }

                        else
                        {
                          v142 = 0;
                        }

                        v67 = v146;
                        v26 = v135;
                        v68 = v137;
                        goto LABEL_73;
                      }

                      v142 = 0;
                      v67 = v146;
                      v26 = v135;
                      v68 = v137;
LABEL_74:

                      goto LABEL_75;
                    }

LABEL_66:
                    v75 = 0x27896F000uLL;
                    v76 = v139;
                    v137 = +[PPConnectionsAddressFormatter formattedAddressWithLocationField:address:duetEvent:shortStyle:](PPConnectionsAddressFormatter, "formattedAddressWithLocationField:address:duetEvent:shortStyle:", [criteriaCopy locationField], v139, v32, 0);
                    goto LABEL_67;
                  }
                }
              }
            }

            goto LABEL_66;
          }

          v142 = 0;
          context = 0;
          v68 = 0;
          v146 = 0;
          v67 = 0;
LABEL_75:
          if ([v68 length])
          {
            v138 = v68;
            if ([v67 length])
            {
              v85 = [objc_alloc(MEMORY[0x277D3A348]) initWithOriginatingBundleID:stringValue];
              v139 = v67;
              [v85 setName:v67];
              if (v146)
              {
                [v85 setLabel:?];
              }

              else
              {
                name = [v85 name];
                [v85 setLabel:name];
              }

              [v85 setValue:v138];
              [v85 setShortValue:context];
              [v85 setOriginatingWebsiteURL:v142];
              [v85 setShouldAggregate:0];
              startDate4 = [v32 startDate];
              [v85 setCreatedAt:startDate4];

              v91 = [PPConnectionsMetricsTracker donationSourceFromBundleID:stringValue];
              [v85 setSource:v91];

              v92 = MEMORY[0x277CCABB0];
              v93 = +[PPConnectionsParameters sharedInstance];
              [v93 userActivityExpirySeconds];
              v94 = [v92 numberWithDouble:?];
              [v85 setLifetime:v94];

              if (items && v145)
              {
                [v85 setFullFormattedAddress:v149];
                metadata7 = [v32 metadata];
                subThoroughfare = [MEMORY[0x277CFE210] subThoroughfare];
                v97 = [metadata7 objectForKeyedSubscript:subThoroughfare];
                [v85 setSubThoroughfare:v97];

                [v85 setThoroughfare:v148];
                metadata8 = [v32 metadata];
                postalCode = [MEMORY[0x277CFE210] postalCode];
                v100 = [metadata8 objectForKeyedSubscript:postalCode];
                [v85 setPostalCode:v100];

                metadata9 = [v32 metadata];
                city = [MEMORY[0x277CFE210] city];
                v103 = [metadata9 objectForKeyedSubscript:city];
                [v85 setLocality:v103];

                metadata10 = [v32 metadata];
                stateOrProvince = [MEMORY[0x277CFE210] stateOrProvince];
                v106 = [metadata10 objectForKeyedSubscript:stateOrProvince];
                [v85 setAdministrativeArea:v106];

                metadata11 = [v32 metadata];
                country = [MEMORY[0x277CFE210] country];
                v109 = [metadata11 objectForKeyedSubscript:country];
                [v85 setCountry:v109];

                metadata12 = [v32 metadata];
                latitude = [MEMORY[0x277CFE210] latitude];
                v112 = [metadata12 objectForKeyedSubscript:latitude];
                [v85 setLatitude:v112];

                metadata13 = [v32 metadata];
                longitude = [MEMORY[0x277CFE210] longitude];
                v115 = [metadata13 objectForKeyedSubscript:longitude];
                [v85 setLongitude:v115];
              }

              v116 = pp_connections_log_handle();
              if (os_log_type_enabled(v116, OS_LOG_TYPE_DEBUG))
              {
                name2 = [v85 name];
                value3 = [v85 value];
                *buf = v127;
                v159 = name2;
                v160 = 2117;
                v161 = value3;
                _os_log_debug_impl(&dword_23224A000, v116, OS_LOG_TYPE_DEBUG, "PPConnectionsDuetSource: sourced connection: %{sensitive}@: %{sensitive}@", buf, 0x16u);
              }

              [v133 addObject:v85];
              v117 = [v133 count] == limit;

              v78 = 2 * v117;
              v26 = v135;
LABEL_92:
              v67 = v139;
              goto LABEL_93;
            }

            v88 = pp_connections_log_handle();
            if (os_log_type_enabled(v88, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v88, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: ignoring location from Duet due to missing name", buf, 2u);
            }
          }

          else
          {
            v86 = v68;
            v87 = pp_connections_log_handle();
            if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_23224A000, v87, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: ignoring location from Duet due to missing value", buf, 2u);
            }
          }

          v78 = 3;
LABEL_93:

          objc_autoreleasePoolPop(v33);
          if (v78 != 3 && v78)
          {
            goto LABEL_97;
          }

LABEL_27:
          ++v31;
        }

        while (v30 != v31);
        v120 = [obj countByEnumeratingWithState:&v154 objects:v162 count:16];
        v30 = v120;
      }

      while (v120);
    }

LABEL_97:

    v19 = v133;
    if ([v133 count])
    {
      v121 = v133;
    }

    else
    {
      v121 = 0;
    }

    v122 = v121;

    latestCopy = v129;
    earliestCopy = v130;
    v18 = v128;
  }

  else
  {
    bundleIdentifier = pp_connections_log_handle();
    if (os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v159) = [criteriaCopy locationField];
      _os_log_impl(&dword_23224A000, bundleIdentifier, OS_LOG_TYPE_DEFAULT, "PPConnectionsDuetSource: supportedLocationFields does not contain field %d", buf, 8u);
    }

    v122 = 0;
  }

  v21 = v132;
LABEL_111:

  objc_autoreleasePoolPop(v18);

  return v122;
}

+ (id)duetUserActivitiesFromStreams:(id)streams limit:(unint64_t)limit afterDate:(id)date explanationSet:(id)set
{
  v43[2] = *MEMORY[0x277D85DE8];
  streamsCopy = streams;
  dateCopy = date;
  setCopy = set;
  context = objc_autoreleasePoolPush();
  if (dateCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v12 = [MEMORY[0x277CFE1E0] predicateForEventsWithStartDateAfter:dateCopy];
  }

  else
  {
    v12 = [MEMORY[0x277CCAC30] predicateWithValue:1];
  }

  v13 = v12;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy__19230;
  v41 = __Block_byref_object_dispose__19231;
  v42 = MEMORY[0x277CBEBF8];
  sel_getName(a2);
  v14 = os_transaction_create();
  v15 = MEMORY[0x277CFE1E0];
  v16 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:0];
  v43[0] = v16;
  v17 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"structuredMetadata._DKApplicationActivityMetadataKey__expirationDate" ascending:0];
  v43[1] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v19 = [v15 eventQueryWithPredicate:v13 eventStreams:streamsCopy offset:0 limit:limit sortDescriptors:v18];

  allDevices = [MEMORY[0x277CFE1E0] allDevices];
  [v19 setDeviceIDs:allDevices];

  knowledgeStore = [MEMORY[0x277CFE208] knowledgeStore];
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__19230;
  v35 = __Block_byref_object_dispose__19231;
  v36 = dispatch_semaphore_create(0);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __88__PPConnectionsDuetSource_duetUserActivitiesFromStreams_limit_afterDate_explanationSet___block_invoke;
  v27[3] = &unk_278976D00;
  v29 = &v37;
  v30 = &v31;
  v22 = v14;
  v28 = v22;
  [knowledgeStore executeQuery:v19 responseQueue:0 withCompletion:v27];
  if ([MEMORY[0x277D425A0] waitForSemaphore:v32[5] timeoutSeconds:60.0])
  {
    [setCopy push:28];
    v23 = 0;
  }

  else
  {
    v23 = v38[5];
  }

  _Block_object_dispose(&v31, 8);
  _Block_object_dispose(&v37, 8);

  objc_autoreleasePoolPop(context);

  return v23;
}

void __88__PPConnectionsDuetSource_duetUserActivitiesFromStreams_limit_afterDate_explanationSet___block_invoke(void *a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = pp_connections_log_handle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138739971;
    v11 = v5;
    _os_log_debug_impl(&dword_23224A000, v7, OS_LOG_TYPE_DEBUG, "PPConnectionsDuetSource: duet query results: %{sensitive}@", &v10, 0xCu);
  }

  v8 = MEMORY[0x277CBEBF8];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v5;
    }
  }

  objc_storeStrong((*(a1[5] + 8) + 40), v8);
  if (v6)
  {
    +[PPQuickTypeMetrics frameworkError:errorCode:](PPQuickTypeMetrics, "frameworkError:errorCode:", @"CD", [v6 code]);
  }

  dispatch_semaphore_signal(*(*(a1[6] + 8) + 40));
  v9 = objc_opt_self();
}

+ (PPConnectionsDuetSource)sharedInstance
{
  if (sharedInstance_once_19242 != -1)
  {
    dispatch_once(&sharedInstance_once_19242, &__block_literal_global_19243);
  }

  v3 = sharedInstance_shared_19244;

  return v3;
}

uint64_t __41__PPConnectionsDuetSource_sharedInstance__block_invoke()
{
  sharedInstance_shared_19244 = objc_opt_new();

  return MEMORY[0x2821F96F8]();
}

@end