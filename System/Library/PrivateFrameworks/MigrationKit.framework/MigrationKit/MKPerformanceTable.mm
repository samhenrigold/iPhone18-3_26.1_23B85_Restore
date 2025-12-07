@interface MKPerformanceTable
- (MKPerformanceTable)initWithJSONFile:(id)file analytics:(id)analytics;
- (id)createNumberFormatterWithLocale:(id)locale;
- (id)createSizeFormatter;
- (id)createThroughputFormatter;
- (id)createTimeFormatterWithLocale:(id)locale;
- (id)importTimesByDataClass;
- (void)generateTableFromJSONFile:(id)file;
- (void)writeToDisk;
@end

@implementation MKPerformanceTable

- (MKPerformanceTable)initWithJSONFile:(id)file analytics:(id)analytics
{
  fileCopy = file;
  analyticsCopy = analytics;
  v12.receiver = self;
  v12.super_class = MKPerformanceTable;
  v8 = [(MKTable *)&v12 init];
  v9 = v8;
  if (v8)
  {
    [(MKPerformanceTable *)v8 setAnalytics:analyticsCopy];
    stringByDeletingLastPathComponent = [fileCopy stringByDeletingLastPathComponent];
    [(MKPerformanceTable *)v9 setBasePath:stringByDeletingLastPathComponent];

    [(MKPerformanceTable *)v9 generateTableFromJSONFile:fileCopy];
  }

  return v9;
}

- (void)generateTableFromJSONFile:(id)file
{
  v189 = *MEMORY[0x277D85DE8];
  fileCopy = file;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager contentsAtPath:fileCopy];

  if (v6)
  {
    v181 = 0;
    v7 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v6 options:0 error:&v181];
    v8 = v181;
    if (v8)
    {
      p_super = +[MKLog log];
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [MKPerformanceTable generateTableFromJSONFile:];
      }
    }

    else
    {
      v107 = fileCopy;
      v10 = [[MKPerformanceData alloc] initWithDictionary:v7];
      v11 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
      v111 = [(MKPerformanceTable *)self createNumberFormatterWithLocale:v11];
      v104 = v11;
      v114 = [(MKPerformanceTable *)self createTimeFormatterWithLocale:v11];
      createSizeFormatter = [(MKPerformanceTable *)self createSizeFormatter];
      createThroughputFormatter = [(MKPerformanceTable *)self createThroughputFormatter];
      v177 = 0u;
      v178 = 0u;
      v179 = 0u;
      v180 = 0u;
      dataClasses = [(MKPerformanceData *)v10 dataClasses];
      v13 = [dataClasses countByEnumeratingWithState:&v177 objects:v188 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = 0;
        v16 = *v178;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v178 != v16)
            {
              objc_enumerationMutation(dataClasses);
            }

            v15 += [*(*(&v177 + 1) + 8 * i) size];
          }

          v14 = [dataClasses countByEnumeratingWithState:&v177 objects:v188 count:16];
        }

        while (v14);
      }

      else
      {
        v15 = 0;
      }

      analytics = [(MKPerformanceTable *)self analytics];
      payload = [analytics payload];
      elapsedTime = [payload elapsedTime];

      v106 = v6;
      v105 = v7;
      v108 = v10;
      if (elapsedTime)
      {
        analytics2 = [(MKPerformanceTable *)self analytics];
        payload2 = [analytics2 payload];
        v23 = v15 / [payload2 elapsedTime];
      }

      else
      {
        v23 = 0.0;
      }

      v153 = MEMORY[0x277CCACA8];
      analytics3 = [(MKPerformanceTable *)self analytics];
      payload3 = [analytics3 payload];
      androidBrand = [payload3 androidBrand];
      analytics4 = [(MKPerformanceTable *)self analytics];
      payload4 = [analytics4 payload];
      androidModel = [payload4 androidModel];
      [(MKPerformanceTable *)self analytics];
      v26 = v115 = self;
      payload5 = [v26 payload];
      androidAPILevel = [payload5 androidAPILevel];
      analytics5 = [(MKPerformanceTable *)self analytics];
      payload6 = [analytics5 payload];
      androidVersion = [payload6 androidVersion];
      v32 = [v153 stringWithFormat:@"%@ %@ - API %@ - M2iOS %@ ", androidBrand, androidModel, androidAPILevel, androidVersion];

      v103 = v32;
      v33 = [MKTableRow rowWithTitle:v32];
      [(MKTable *)v115 addRow:v33];

      v34 = +[MKTableRow separatorRow];
      [(MKTable *)v115 addRow:v34];

      string = [MEMORY[0x277CCACA8] string];
      v164 = [MKTableCell cellWithValue:string formatter:0];
      v187[0] = v164;
      string2 = [MEMORY[0x277CCACA8] string];
      v154 = [MKTableCell cellWithValue:string2 formatter:0];
      v187[1] = v154;
      v149 = [MKTableCell cellWithValue:@"Size" formatter:0 alignment:1];
      v187[2] = v149;
      string3 = [MEMORY[0x277CCACA8] string];
      v139 = [MKTableCell cellWithValue:string3 formatter:0];
      v187[3] = v139;
      string4 = [MEMORY[0x277CCACA8] string];
      v134 = [MKTableCell cellWithValue:string4 formatter:0];
      v187[4] = v134;
      string5 = [MEMORY[0x277CCACA8] string];
      v128 = [MKTableCell cellWithValue:string5 formatter:0];
      v187[5] = v128;
      string6 = [MEMORY[0x277CCACA8] string];
      v36 = [MKTableCell cellWithValue:string6 formatter:0];
      v187[6] = v36;
      string7 = [MEMORY[0x277CCACA8] string];
      v38 = [MKTableCell cellWithValue:string7 formatter:0];
      v187[7] = v38;
      v39 = [MKTableCell cellWithValue:@"Duration" formatter:0 alignment:1];
      v187[8] = v39;
      v40 = [MKTableCell cellWithValue:@"Throughput (MB/s)" formatter:0 columnSpan:2 alignment:1];
      v187[9] = v40;
      v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v187 count:10];
      v42 = [MKTableRow rowWithCells:v41];
      [(MKTable *)v115 addRow:v42];

      v43 = +[MKTableRow separatorRow];
      [(MKTable *)v115 addRow:v43];

      v170 = [MKTableCell cellWithValue:@"Whole Migration" formatter:0];
      v186[0] = v170;
      string8 = [MEMORY[0x277CCACA8] string];
      v160 = [MKTableCell cellWithValue:string8 formatter:0];
      v186[1] = v160;
      v155 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v15];
      v150 = [MKTableCell cellWithValue:v155 formatter:createSizeFormatter alignment:2];
      v186[2] = v150;
      string9 = [MEMORY[0x277CCACA8] string];
      v141 = [MKTableCell cellWithValue:string9 formatter:0];
      v186[3] = v141;
      string10 = [MEMORY[0x277CCACA8] string];
      v135 = [MKTableCell cellWithValue:string10 formatter:0];
      v186[4] = v135;
      string11 = [MEMORY[0x277CCACA8] string];
      v129 = [MKTableCell cellWithValue:string11 formatter:0];
      v186[5] = v129;
      string12 = [MEMORY[0x277CCACA8] string];
      v124 = [MKTableCell cellWithValue:string12 formatter:0];
      v186[6] = v124;
      string13 = [MEMORY[0x277CCACA8] string];
      v120 = [MKTableCell cellWithValue:string13 formatter:0];
      v186[7] = v120;
      v44 = MEMORY[0x277CCABB0];
      payload7 = [(MKAnalytics *)v115->_analytics payload];
      v46 = [v44 numberWithUnsignedLongLong:{objc_msgSend(payload7, "elapsedTime")}];
      v47 = [MKTableCell cellWithValue:v46 formatter:v114 alignment:2];
      v186[8] = v47;
      string14 = [MEMORY[0x277CCACA8] string];
      v49 = [MKTableCell cellWithValue:string14 formatter:0];
      v186[9] = v49;
      v50 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
      v51 = [MKTableCell cellWithValue:v50 formatter:createThroughputFormatter alignment:2];
      v186[10] = v51;
      v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v186 count:11];
      v53 = [MKTableRow rowWithCells:v52];
      [(MKTable *)v115 addRow:v53];

      v54 = +[MKTableRow separatorRow];
      [(MKTable *)v115 addRow:v54];

      v55 = [MKTableCell cellWithValue:@"Data Class" formatter:0];
      v185[0] = v55;
      v56 = [MKTableCell cellWithValue:@"Item Count" formatter:0 alignment:1];
      v185[1] = v56;
      v57 = [MKTableCell cellWithValue:@"Size" formatter:0 alignment:1];
      v185[2] = v57;
      v58 = [MKTableCell cellWithValue:@"Phase Duration" formatter:0 columnSpan:6 alignment:1];
      v185[3] = v58;
      v59 = [MKTableCell cellWithValue:@"Throughput (MB/s)" formatter:0 columnSpan:2 alignment:1];
      v185[4] = v59;
      v60 = [MEMORY[0x277CBEA60] arrayWithObjects:v185 count:5];
      v61 = [MKTableRow rowWithCells:v60];
      [(MKTable *)v115 addRow:v61];

      string15 = [MEMORY[0x277CCACA8] string];
      v166 = [MKTableCell cellWithValue:string15 formatter:0];
      v184[0] = v166;
      string16 = [MEMORY[0x277CCACA8] string];
      v156 = [MKTableCell cellWithValue:string16 formatter:0];
      v184[1] = v156;
      string17 = [MEMORY[0x277CCACA8] string];
      v146 = [MKTableCell cellWithValue:string17 formatter:0];
      v184[2] = v146;
      v142 = [MKTableCell cellWithValue:@"Prep" formatter:0 alignment:1];
      v184[3] = v142;
      v62 = [MKTableCell cellWithValue:@"Export" formatter:0 alignment:1];
      v184[4] = v62;
      v63 = [MKTableCell cellWithValue:@"Queue" formatter:0 alignment:1];
      v184[5] = v63;
      v64 = [MKTableCell cellWithValue:@"Transfer" formatter:0 alignment:1];
      v184[6] = v64;
      v65 = [MKTableCell cellWithValue:@"Import" formatter:0 alignment:1];
      v184[7] = v65;
      v66 = [MKTableCell cellWithValue:@"Total" formatter:0 alignment:1];
      v184[8] = v66;
      v67 = [MKTableCell cellWithValue:@"Transfer" formatter:0 alignment:1];
      v184[9] = v67;
      v68 = [MKTableCell cellWithValue:@"Total" formatter:0 alignment:1];
      v184[10] = v68;
      v69 = [MEMORY[0x277CBEA60] arrayWithObjects:v184 count:11];
      v70 = [MKTableRow rowWithCells:v69];
      [(MKTable *)v115 addRow:v70];

      v71 = +[MKTableRow separatorRow];
      [(MKTable *)v115 addRow:v71];

      displayNamesByDataClass = [(MKPerformanceTable *)v115 displayNamesByDataClass];
      importTimesByDataClass = [(MKPerformanceTable *)v115 importTimesByDataClass];
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      obj = [(MKPerformanceData *)v108 dataClasses];
      v118 = [obj countByEnumeratingWithState:&v173 objects:v183 count:16];
      if (v118)
      {
        v116 = *v174;
        do
        {
          for (j = 0; j != v118; ++j)
          {
            if (*v174 != v116)
            {
              objc_enumerationMutation(obj);
            }

            v73 = *(*(&v173 + 1) + 8 * j);
            name = [v73 name];
            v75 = [displayNamesByDataClass objectForKey:name];

            if (v75)
            {
              name2 = [v73 name];
              v77 = [importTimesByDataClass objectForKey:name2];

              [v73 preparationTime];
              v79 = v78;
              [v73 exportTime];
              v81 = v79 + v80;
              [v73 networkQueueTime];
              v83 = v81 + v82;
              [v73 transferTime];
              v85 = v83 + v84;
              [v77 doubleValue];
              v87 = v85 + v86;
              v88 = 0.0;
              if (v87 > 0.0)
              {
                v88 = [v73 size] / v87;
              }

              v167 = [MKTableCell cellWithValue:v75 formatter:0];
              v172 = v75;
              v182[0] = v167;
              v162 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v73, "itemCount")}];
              v157 = [MKTableCell cellWithValue:v162 formatter:v111 alignment:2];
              v182[1] = v157;
              v152 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(v73, "size")}];
              v147 = [MKTableCell cellWithValue:v152 formatter:createSizeFormatter alignment:2];
              v182[2] = v147;
              v89 = MEMORY[0x277CCABB0];
              [v73 preparationTime];
              v143 = [v89 numberWithDouble:?];
              v138 = [MKTableCell cellWithValue:v143 formatter:v114 alignment:2];
              v182[3] = v138;
              v90 = MEMORY[0x277CCABB0];
              [v73 exportTime];
              v136 = [v90 numberWithDouble:?];
              v133 = [MKTableCell cellWithValue:v136 formatter:v114 alignment:2];
              v182[4] = v133;
              v91 = MEMORY[0x277CCABB0];
              [v73 networkQueueTime];
              v130 = [v91 numberWithDouble:?];
              v127 = [MKTableCell cellWithValue:v130 formatter:v114 alignment:2];
              v182[5] = v127;
              v92 = MEMORY[0x277CCABB0];
              [v73 transferTime];
              v123 = [v92 numberWithDouble:?];
              v121 = [MKTableCell cellWithValue:v123 formatter:v114 alignment:2];
              v182[6] = v121;
              v119 = [MKTableCell cellWithValue:v77 formatter:v114 alignment:2];
              v182[7] = v119;
              v93 = [MEMORY[0x277CCABB0] numberWithDouble:v87];
              v94 = [MKTableCell cellWithValue:v93 formatter:v114 alignment:2];
              v182[8] = v94;
              v125 = v77;
              v95 = MEMORY[0x277CCABB0];
              [v73 transferSpeed];
              v96 = [v95 numberWithDouble:?];
              v97 = [MKTableCell cellWithValue:v96 formatter:createThroughputFormatter alignment:2];
              v182[9] = v97;
              v98 = [MEMORY[0x277CCABB0] numberWithDouble:v88];
              v99 = [MKTableCell cellWithValue:v98 formatter:createThroughputFormatter alignment:2];
              v182[10] = v99;
              v100 = [MEMORY[0x277CBEA60] arrayWithObjects:v182 count:11];
              v101 = [MKTableRow rowWithCells:v100];
              [(MKTable *)v115 addRow:v101];

              v75 = v172;
              [v73 size];
            }
          }

          v118 = [obj countByEnumeratingWithState:&v173 objects:v183 count:16];
        }

        while (v118);
      }

      v102 = +[MKTableRow separatorRow];
      [(MKTable *)v115 addRow:v102];

      v6 = v106;
      fileCopy = v107;
      v7 = v105;
      v8 = 0;
      p_super = &v108->super;
    }
  }

  else
  {
    v8 = +[MKLog log];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [MKPerformanceTable generateTableFromJSONFile:];
    }
  }
}

- (void)writeToDisk
{
  v18 = MEMORY[0x277CCACA8];
  analytics = [(MKPerformanceTable *)self analytics];
  payload = [analytics payload];
  androidBrand = [payload androidBrand];
  lowercaseString = [androidBrand lowercaseString];
  analytics2 = [(MKPerformanceTable *)self analytics];
  payload2 = [analytics2 payload];
  androidModel = [payload2 androidModel];
  lowercaseString2 = [androidModel lowercaseString];
  analytics3 = [(MKPerformanceTable *)self analytics];
  payload3 = [analytics3 payload];
  androidAPILevel = [payload3 androidAPILevel];
  analytics4 = [(MKPerformanceTable *)self analytics];
  payload4 = [analytics4 payload];
  androidVersion = [payload4 androidVersion];
  v11 = [v18 stringWithFormat:@"perf-results_%@_%@_api-%@_v%@.csv", lowercaseString, lowercaseString2, androidAPILevel, androidVersion];

  v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"/ "];
  v13 = [v11 componentsSeparatedByCharactersInSet:v12];
  v14 = [v13 componentsJoinedByString:@"-"];

  basePath = [(MKPerformanceTable *)self basePath];
  v16 = [basePath stringByAppendingPathComponent:v14];
  v24.receiver = self;
  v24.super_class = MKPerformanceTable;
  [(MKTable *)&v24 writeToDisk:v16];
}

- (id)createNumberFormatterWithLocale:(id)locale
{
  v3 = MEMORY[0x277CCABB8];
  localeCopy = locale;
  v5 = objc_alloc_init(v3);
  [v5 setLocale:localeCopy];

  [v5 setNumberStyle:1];
  [v5 setMaximumFractionDigits:1];
  [v5 setRoundingMode:6];

  return v5;
}

- (id)createTimeFormatterWithLocale:(id)locale
{
  localeCopy = locale;
  v4 = objc_alloc_init(MKTimeFormatter);
  [(MKTimeFormatter *)v4 setLocale:localeCopy];

  return v4;
}

- (id)createSizeFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA8E8]);
  [v2 setCountStyle:0];
  [v2 setAllowsNonnumericFormatting:0];
  [v2 setZeroPadsFractionDigits:1];
  [v2 setAllowedUnits:12];

  return v2;
}

- (id)createThroughputFormatter
{
  v2 = objc_alloc_init(MEMORY[0x277CCA8E8]);
  [v2 setCountStyle:0];
  [v2 setAllowedUnits:12];
  [v2 setIncludesUnit:0];
  [v2 setZeroPadsFractionDigits:1];

  return v2;
}

- (id)importTimesByDataClass
{
  v46[12] = *MEMORY[0x277D85DE8];
  v45[0] = @"accessibility_settings";
  analytics = [(MKPerformanceTable *)self analytics];
  payload = [analytics payload];
  accessibilitySettings = [payload accessibilitySettings];
  importElapsedTime = [accessibilitySettings importElapsedTime];
  v46[0] = importElapsedTime;
  v45[1] = @"accounts";
  analytics2 = [(MKPerformanceTable *)self analytics];
  payload2 = [analytics2 payload];
  accounts = [payload2 accounts];
  importElapsedTime2 = [accounts importElapsedTime];
  v46[1] = importElapsedTime2;
  v46[2] = &unk_286AAC650;
  v45[2] = @"application";
  v45[3] = @"calendars";
  analytics3 = [(MKPerformanceTable *)self analytics];
  payload3 = [analytics3 payload];
  calendars = [payload3 calendars];
  importElapsedTime3 = [calendars importElapsedTime];
  v46[3] = importElapsedTime3;
  v45[4] = @"contacts";
  analytics4 = [(MKPerformanceTable *)self analytics];
  payload4 = [analytics4 payload];
  contacts = [payload4 contacts];
  importElapsedTime4 = [contacts importElapsedTime];
  v46[4] = importElapsedTime4;
  v45[5] = @"display_settings";
  analytics5 = [(MKPerformanceTable *)self analytics];
  payload5 = [analytics5 payload];
  displaySettings = [payload5 displaySettings];
  importElapsedTime5 = [displaySettings importElapsedTime];
  v46[5] = importElapsedTime5;
  v45[6] = @"files";
  analytics6 = [(MKPerformanceTable *)self analytics];
  payload6 = [analytics6 payload];
  files = [payload6 files];
  importElapsedTime6 = [files importElapsedTime];
  v46[6] = importElapsedTime6;
  v45[7] = @"messages";
  analytics7 = [(MKPerformanceTable *)self analytics];
  payload7 = [analytics7 payload];
  messages = [payload7 messages];
  importElapsedTime7 = [messages importElapsedTime];
  v46[7] = importElapsedTime7;
  v45[8] = @"photos";
  analytics8 = [(MKPerformanceTable *)self analytics];
  payload8 = [analytics8 payload];
  photos = [payload8 photos];
  importElapsedTime8 = [photos importElapsedTime];
  v46[8] = importElapsedTime8;
  v45[9] = @"videos";
  analytics9 = [(MKPerformanceTable *)self analytics];
  payload9 = [analytics9 payload];
  videos = [payload9 videos];
  importElapsedTime9 = [videos importElapsedTime];
  v46[9] = importElapsedTime9;
  v45[10] = @"whatsapp_container";
  analytics10 = [(MKPerformanceTable *)self analytics];
  payload10 = [analytics10 payload];
  whatsapp = [payload10 whatsapp];
  importElapsedTime10 = [whatsapp importElapsedTime];
  v45[11] = @"whatsapp_placeholder";
  v46[10] = importElapsedTime10;
  v46[11] = &unk_286AAC650;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:12];

  return v14;
}

@end