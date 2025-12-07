@interface PLAggregateSummarizationService
+ (id)modelIdentifier;
+ (id)osVersion;
+ (void)load;
- (PLAggregateSummarizationService)init;
- (id)getAppMultipleVersionsData;
- (id)getCellularConditionSummarizer;
- (id)getDeviceMetadataInRange:(_PLTimeIntervalRange)range withSignpostData:(id)data;
- (id)getDrainInfoInRange:(_PLTimeIntervalRange)range;
- (id)getGenericSummarizer;
- (id)getInitCountInRange:(_PLTimeIntervalRange)range;
- (id)getLocationActivitySummarizer;
- (id)getPluggedInDurationInRange:(_PLTimeIntervalRange)range;
- (id)getQueryForAppMultipleVersions;
- (id)getQueryForAverageMemory;
- (id)getQueryForCellularCondition;
- (id)getQueryForCoalitionPowerData;
- (id)getQueryForDiskIO;
- (id)getQueryForDisplayAPL;
- (id)getQueryForLocationActivity;
- (id)getQueryForNetworkIOData;
- (id)getQueryForPeakMemory;
- (id)handleAggregationQueryWithPayload:(id)payload;
- (id)preformatMetricsForFormatter:(id)formatter;
- (void)addMetrics:(id)metrics withType:(signed __int16)type;
- (void)aggregateMetrics;
- (void)getAppList:(id)list;
- (void)getAppMetadata;
- (void)initOperatorDependancies;
- (void)setupMetrics;
@end

@implementation PLAggregateSummarizationService

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLAggregateSummarizationService;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLAggregateSummarizationService)init
{
  if (+[PLUtilities isPowerlogHelperd])
  {
    v8.receiver = self;
    v8.super_class = PLAggregateSummarizationService;
    v3 = [(PLOperator *)&v8 init];
    if (v3)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
      metrics = v3->_metrics;
      v3->_metrics = v4;
    }

    self = v3;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F278]);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__PLAggregateSummarizationService_initOperatorDependancies__block_invoke;
  v5[3] = &unk_279A5BEC8;
  v5[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_287148068 withBlock:v5];
  [(PLAggregateSummarizationService *)self setAggregationResponder:v4];
}

- (id)preformatMetricsForFormatter:(id)formatter
{
  v38 = *MEMORY[0x277D85DE8];
  formatterCopy = formatter;
  [(PLAggregateSummarizationService *)self getAppList:formatterCopy];
  appList = self->_appList;
  if (appList && (appList = [(NSArray *)appList count]) != 0)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    summarizedData = self->_summarizedData;
    self->_summarizedData = v6;

    v8 = PLLogAggregateSummarizationService([(PLAggregateSummarizationService *)self getAppMetadata]);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [PLAggregateSummarizationService preformatMetricsForFormatter:];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v28 = formatterCopy;
    obj = formatterCopy;
    v9 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v32;
      do
      {
        v12 = 0;
        v29 = v10;
        do
        {
          if (*v32 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v31 + 1) + 8 * v12);
          v14 = [v13 objectForKey:@"PLBatteryUIAppBundleIDKey"];
          v15 = v14;
          if (!v14 || ([(NSMutableDictionary *)self->_summarizedData objectForKeyedSubscript:v14], v16 = objc_claimAutoreleasedReturnValue(), v16, !v16))
          {
            v22 = PLLogAggregateSummarizationService(v14);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v36 = v15;
              _os_log_error_impl(&dword_25EE51000, v22, OS_LOG_TYPE_ERROR, "Bundle id error : %@", buf, 0xCu);
            }

            goto LABEL_18;
          }

          v17 = [v13 objectForKey:&unk_287145958];

          if (v17)
          {
            v18 = [(NSMutableDictionary *)self->_summarizedData objectForKeyedSubscript:v15];
            v19 = [v18 objectForKeyedSubscript:&unk_287145958];
            v20 = [v13 objectForKey:&unk_287145958];
            [v19 addEntriesFromDictionary:v20];

            v10 = v29;
          }

          v21 = [v13 objectForKey:&unk_287145970];

          if (v21)
          {
            v22 = [(NSMutableDictionary *)self->_summarizedData objectForKeyedSubscript:v15];
            v23 = [v22 objectForKeyedSubscript:&unk_287145970];
            v24 = [v13 objectForKey:&unk_287145970];
            [v23 addEntriesFromDictionary:v24];

            v10 = v29;
LABEL_18:
          }

          ++v12;
        }

        while (v10 != v12);
        v10 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v10);
    }

    v25 = self->_summarizedData;
    formatterCopy = v28;
  }

  else
  {
    v26 = PLLogAggregateSummarizationService(appList);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [PLAggregateSummarizationService preformatMetricsForFormatter:v26];
    }

    v25 = 0;
  }

  return v25;
}

- (id)handleAggregationQueryWithPayload:(id)payload
{
  v186 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  v5 = PLLogAggregateSummarizationService(payloadCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PLAggregateSummarizationService handleAggregationQueryWithPayload:];
  }

  if ([MEMORY[0x277D3F208] hasGenerativeModelSystems])
  {
    v170[0] = MEMORY[0x277D85DD0];
    v170[1] = 3221225472;
    v170[2] = __69__PLAggregateSummarizationService_handleAggregationQueryWithPayload___block_invoke;
    v170[3] = &unk_279A5CA58;
    v170[4] = self;
    [MEMORY[0x277CFB458] getGMOptInToggleWithCompletion:v170];
  }

  selfCopy = self;
  v6 = [payloadCopy objectForKeyedSubscript:@"PLBatteryUIQueryTypeKey"];
  intValue = [v6 intValue];

  v8 = [payloadCopy objectForKeyedSubscript:@"today"];
  bOOLValue = [v8 BOOLValue];

  v10 = [payloadCopy objectForKeyedSubscript:@"last24hrs"];
  bOOLValue2 = [v10 BOOLValue];

  v12 = [payloadCopy objectForKeyedSubscript:@"last1hr"];
  bOOLValue3 = [v12 BOOLValue];

  v14 = [payloadCopy objectForKeyedSubscript:@"AppAnalyticsEnabled"];
  bOOLValue4 = [v14 BOOLValue];

  v144 = payloadCopy;
  v15 = [payloadCopy objectForKeyedSubscript:@"MetrickitClientsAvailable"];
  bOOLValue5 = [v15 BOOLValue];

  v17 = PLLogAggregateSummarizationService(v16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    [(PLAggregateSummarizationService *)bOOLValue handleAggregationQueryWithPayload:intValue, v17];
  }

  v143 = objc_alloc_init(PLBatteryBreakdownService);
  [(PLOperator *)v143 initOperatorDependancies];
  date = [MEMORY[0x277CBEAA8] date];
  v18 = [MEMORY[0x277CBEAA8] nearestMidnightBeforeDate:?];
  v19 = v18;
  if (bOOLValue)
  {
    v20 = PLLogAggregateSummarizationService(v18);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v20, OS_LOG_TYPE_INFO, "Aggregating today", buf, 2u);
    }

    v21 = [MEMORY[0x277CBEAA8] nearestMidnightAfterDate:date];
    v22 = 86400.0;
  }

  else if (bOOLValue2)
  {
    v23 = PLLogAggregateSummarizationService(v18);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v23, OS_LOG_TYPE_DEFAULT, "Aggregating last 24hrs", buf, 2u);
    }

    v21 = date;
    v22 = 86400.0;
  }

  else
  {
    if (!bOOLValue3)
    {
      v22 = 86400.0;
      goto LABEL_20;
    }

    v24 = PLLogAggregateSummarizationService(v18);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EE51000, v24, OS_LOG_TYPE_DEFAULT, "Aggregating last hour", buf, 2u);
    }

    v21 = date;
    v22 = 3600.0;
  }

  v19 = v21;
LABEL_20:
  v25 = [payloadCopy objectForKey:@"off1"];
  if (v25 && (v26 = v25, [payloadCopy objectForKey:@"off2"], v27 = objc_claimAutoreleasedReturnValue(), v27, v26, v27))
  {
    v28 = [payloadCopy objectForKey:@"off1"];
    [v28 doubleValue];
    v30 = v29;

    v31 = [payloadCopy objectForKey:@"off2"];
    [v31 doubleValue];
    v22 = v32;

    v33 = [date dateByAddingTimeInterval:-v30];

    v35 = PLLogAggregateSummarizationService(v34);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v172 = v30;
      v173 = 2048;
      *v174 = v22;
      _os_log_impl(&dword_25EE51000, v35, OS_LOG_TYPE_DEFAULT, "Overriding offsets: %f %f", buf, 0x16u);
    }

    v37 = PLLogAggregateSummarizationService(v36);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v172 = v22;
      v173 = 2112;
      *v174 = v33;
      _os_log_impl(&dword_25EE51000, v37, OS_LOG_TYPE_DEFAULT, "New range: %f seconds before %@", buf, 0x16u);
    }
  }

  else
  {
    v33 = v19;
  }

  convertFromSystemToMonotonic = [v33 convertFromSystemToMonotonic];
  v39 = -v22;
  v40 = [convertFromSystemToMonotonic dateByAddingTimeInterval:-v22];
  v41 = convertFromSystemToMonotonic;
  [v40 timeIntervalSince1970];
  v43 = v42;
  [v41 timeIntervalSince1970];
  v45 = v44;

  v46 = v45 - v43;
  v138 = v41;
  [v41 timeIntervalSince1970];
  selfCopy->_maxTimestamp = v47;
  v146 = v33;
  v140 = [v33 dateByAddingTimeInterval:v39];
  v48 = PLLogAggregateSummarizationService(v140);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v172 = v43;
    v173 = 2048;
    *v174 = v43 + v46;
    _os_log_impl(&dword_25EE51000, v48, OS_LOG_TYPE_DEFAULT, "aggregation range: %f %f", buf, 0x16u);
  }

  v135 = v46;
  v136 = v43;
  v137 = [(PLBatteryBreakdownService *)v143 batteryBreakdownWithTimeRange:4 withDataRange:v43 withEntryTimeInterval:v46 withQueryType:v43 withTotalSumEnergyRatioCutOff:v46, 3600.0, 0.0];
  v49 = [v137 objectForKey:@"PLBatteryUIAppArrayKey"];
  v148 = objc_opt_new();
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  obj = v49;
  v150 = [obj countByEnumeratingWithState:&v166 objects:v185 count:16];
  if (v150)
  {
    v149 = *v167;
    do
    {
      for (i = 0; i != v150; ++i)
      {
        if (*v167 != v149)
        {
          objc_enumerationMutation(obj);
        }

        v51 = *(*(&v166 + 1) + 8 * i);
        v52 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
        if (v52)
        {
          v152 = i;
          v53 = objc_opt_new();
          v54 = objc_opt_new();
          v151 = v53;
          v156 = v52;
          [v53 setObject:v52 forKeyedSubscript:@"PLBatteryUIAppBundleIDKey"];
          v55 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppForegroundRuntimeKey"];
          intValue2 = [v55 intValue];

          v57 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundRuntimeKey"];
          intValue3 = [v57 intValue];

          v59 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundAudioRuntimeKey"];
          intValue4 = [v59 intValue];

          v60 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundLocationRuntimeKey"];
          intValue5 = [v60 intValue];

          v61 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioRuntimeKey"];
          intValue6 = [v61 intValue];

          v63 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppForegroundPluggedInRuntimeKey"];
          LODWORD(v61) = [v63 intValue];

          v64 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundPluggedInRuntimeKey"];
          intValue7 = [v64 intValue];

          v66 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundAudioPluggedInRuntimeKey"];
          intValue8 = [v66 intValue];

          v68 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundLocationPluggedInRuntimeKey"];
          LODWORD(v53) = [v68 intValue];

          v159 = v51;
          v69 = [v51 objectForKeyedSubscript:@"PLBatteryUIAppBackgroundLocationAudioPluggedInRuntimeKey"];
          intValue9 = [v69 intValue];

          v158 = intValue3 - intValue7;
          v71 = (intValue3 - intValue7) & ~((intValue3 - intValue7) >> 31);
          v162 = (intValue5 - v53) & ~((intValue5 - v53) >> 31);
          v164 = (intValue6 - intValue9) & ~((intValue6 - intValue9) >> 31);
          v72 = [MEMORY[0x277CCABB0] numberWithInt:intValue2];
          [v54 setObject:v72 forKeyedSubscript:@"fgTime_Total"];

          v73 = [MEMORY[0x277CCABB0] numberWithInt:intValue3];
          [v54 setObject:v73 forKeyedSubscript:@"bgTime_Total"];

          v74 = [MEMORY[0x277CCABB0] numberWithInt:intValue4];
          [v54 setObject:v74 forKeyedSubscript:@"bgTime_Audio"];

          v75 = [MEMORY[0x277CCABB0] numberWithInt:intValue5];
          [v54 setObject:v75 forKeyedSubscript:@"bgTime_Location"];

          v76 = [MEMORY[0x277CCABB0] numberWithInt:intValue6];
          [v54 setObject:v76 forKeyedSubscript:@"bgLocationAudioTime"];

          v77 = [MEMORY[0x277CCABB0] numberWithInt:(intValue2 - v61) & ~((intValue2 - v61) >> 31)];
          [v54 setObject:v77 forKeyedSubscript:@"fgTime_Unplugged"];

          v78 = [MEMORY[0x277CCABB0] numberWithInt:v71];
          [v54 setObject:v78 forKeyedSubscript:@"bgTime_Unplugged"];

          LODWORD(v61) = (intValue4 - intValue8) & ~((intValue4 - intValue8) >> 31);
          v79 = [MEMORY[0x277CCABB0] numberWithInt:v61];
          [v54 setObject:v79 forKeyedSubscript:@"bgAudioTime_Unplugged"];

          v80 = [MEMORY[0x277CCABB0] numberWithInt:v162];
          [v54 setObject:v80 forKeyedSubscript:@"bgLocationTime_Unplugged"];

          v81 = [MEMORY[0x277CCABB0] numberWithInt:v164];
          v161 = v54;
          [v54 setObject:v81 forKeyedSubscript:@"bgLocationAudioTime_Unplugged"];

          v82 = v164;
          v153 = v162;
          v155 = v61;
          v83 = v61 / v71;
          v157 = (intValue3 - intValue7) & ~((intValue3 - intValue7) >> 31);
          v84 = v164 / (2 * v71);
          v85 = 1;
          v86 = v162 / v71;
          do
          {
            v87 = MEMORY[0x277CCACA8];
            v88 = [MEMORY[0x277CCABB0] numberWithShort:v85];
            v89 = [v87 stringWithFormat:@"%@", v88];

            v90 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"fg", v89];
            v91 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bg", v89];
            v92 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bgAudio", v89];
            v93 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"bgLocation", v89];
            v94 = [v159 objectForKeyedSubscript:v89];
            intValue10 = [v94 intValue];

            v165 = v90;
            v96 = [v159 objectForKeyedSubscript:v90];
            intValue11 = [v96 intValue];

            v163 = v91;
            v98 = [v159 objectForKeyedSubscript:v91];
            intValue12 = [v98 intValue];

            v100 = [v159 objectForKeyedSubscript:v92];
            intValue13 = [v100 intValue];

            v102 = [v159 objectForKeyedSubscript:v93];
            intValue14 = [v102 intValue];

            if (v158 <= 0)
            {
              v111 = PLLogAggregateSummarizationService(v104);
              if (os_log_type_enabled(v111, OS_LOG_TYPE_INFO))
              {
                *buf = 67109120;
                LODWORD(v172) = v157;
                _os_log_impl(&dword_25EE51000, v111, OS_LOG_TYPE_INFO, "Can't reweigh based on BG time: %d", buf, 8u);
              }
            }

            else
            {
              v105 = intValue12;
              v106 = PLLogAggregateSummarizationService(v104);
              if (os_log_type_enabled(v106, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412802;
                v172 = *&v156;
                v173 = 1024;
                *v174 = v85;
                *&v174[4] = 2048;
                *&v174[6] = intValue12;
                _os_log_debug_impl(&dword_25EE51000, v106, OS_LOG_TYPE_DEBUG, "%@: bucket:%d BEFORE E_B:%f", buf, 0x1Cu);
              }

              v108 = v84 * v105 + v105 * v83;
              v109 = v84 * v105 + v105 * v86;
              if (v105 - v108 - v109 >= 0.0)
              {
                v110 = v105 - v108 - v109;
              }

              else
              {
                v110 = 0.0;
              }

              intValue12 = v110;
              intValue13 = v108;
              intValue14 = v109;
              v111 = PLLogAggregateSummarizationService(v107);
              if (os_log_type_enabled(v111, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138414082;
                v172 = *&v156;
                v173 = 1024;
                *v174 = v85;
                *&v174[4] = 2048;
                *&v174[6] = v110;
                v175 = 2048;
                v176 = v108;
                v177 = 2048;
                v178 = v109;
                v179 = 2048;
                v180 = v155;
                v181 = 2048;
                v182 = v153;
                v183 = 2048;
                v184 = v82;
                _os_log_debug_impl(&dword_25EE51000, v111, OS_LOG_TYPE_DEBUG, "%@: bucket:%d AFTER E_B:%f E_BA:%f E_BL:%f T_BA:%f T_BL:%f T_BABL:%f", buf, 0x4Eu);
              }
            }

            if (intValue10 >= 1)
            {
              v112 = [MEMORY[0x277CCABB0] numberWithInt:intValue10];
              [v161 setObject:v112 forKeyedSubscript:v89];
            }

            if (intValue11 >= 1)
            {
              v113 = [MEMORY[0x277CCABB0] numberWithInt:intValue11];
              [v161 setObject:v113 forKeyedSubscript:v165];
            }

            if (intValue12 >= 1)
            {
              v114 = [MEMORY[0x277CCABB0] numberWithInt:intValue12];
              [v161 setObject:v114 forKeyedSubscript:v163];
            }

            if (intValue13 >= 1)
            {
              v115 = [MEMORY[0x277CCABB0] numberWithInt:intValue13];
              [v161 setObject:v115 forKeyedSubscript:v92];
            }

            if (intValue14 >= 1)
            {
              v116 = [MEMORY[0x277CCABB0] numberWithInt:intValue14];
              [v161 setObject:v116 forKeyedSubscript:v93];
            }

            ++v85;
          }

          while (v85 != 18);
          v117 = PLLogAggregateSummarizationService([v151 setObject:v161 forKey:&unk_287145958]);
          if (os_log_type_enabled(v117, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v172 = *&v151;
            _os_log_debug_impl(&dword_25EE51000, v117, OS_LOG_TYPE_DEBUG, "Adding to newApps: %@", buf, 0xCu);
          }

          [v148 addObject:v151];
          i = v152;
          v52 = v156;
        }
      }

      v150 = [obj countByEnumeratingWithState:&v166 objects:v185 count:16];
    }

    while (v150);
  }

  v118 = objc_alloc_init(SignpostReaderHelper);
  v119 = [(SignpostReaderHelper *)v118 getSignpostMetricsWithStartDate:v140 withEndDate:v146 processMXSignpost:bOOLValue5];
  v120 = [(PLAggregateSummarizationService *)selfCopy preformatMetricsForFormatter:v148];
  v121 = PLLogAggregateSummarizationService(v120);
  if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
  {
    [PLAggregateSummarizationService handleAggregationQueryWithPayload:];
  }

  [(PLAggregateSummarizationService *)selfCopy setupMetrics];
  aggregateMetrics = [(PLAggregateSummarizationService *)selfCopy aggregateMetrics];
  if (bOOLValue4)
  {
    v135 = [(PLAggregateSummarizationService *)selfCopy getDeviceMetadataInRange:v119 withSignpostData:v136, v135];
    v124 = objc_alloc_init(PLMetricsFormatterJSON);
    [(PLMetricsFormatterJSON *)v124 addGlobalMetaData:v135];
    [(PLMetricsFormatterJSON *)v124 addAllMetrics:v120 signpostData:v119];
    writeSessionFile = [(PLMetricsFormatterJSON *)v124 writeSessionFile];
    v126 = PLLogAggregateSummarizationService(writeSessionFile);
    if (os_log_type_enabled(v126, OS_LOG_TYPE_DEBUG))
    {
      [PLAggregateSummarizationService handleAggregationQueryWithPayload:];
    }
  }

  else
  {
    writeSessionFile = 1;
  }

  if (bOOLValue5)
  {
    v127 = PLLogAggregateSummarizationService(aggregateMetrics);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_DEBUG))
    {
      [PLAggregateSummarizationService handleAggregationQueryWithPayload:];
    }

    v128 = objc_alloc_init(PLMetricsFormatterMetricKit);
    v129 = [v146 dateByAddingTimeInterval:-86400.0];
    [(PLMetricsFormatterMetricKit *)v128 publishMetrics:v120 andSignpostData:v119 forDate:v129];
  }

  v130 = objc_opt_new();
  v131 = [MEMORY[0x277CCABB0] numberWithBool:writeSessionFile];
  [v130 setObject:v131 forKeyedSubscript:@"success"];

  v132 = [v119 objectForKeyedSubscript:@"launchesTimeSeries"];

  if (v132)
  {
    v133 = [v119 objectForKeyedSubscript:@"launchesTimeSeries"];
    [v130 setObject:v133 forKeyedSubscript:@"launchesTimeSeries"];
  }

  return v130;
}

void __69__PLAggregateSummarizationService_handleAggregationQueryWithPayload___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = PLLogAggregateSummarizationService(v5);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v5)
  {
    if (v7)
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "Error retrieving opt-in state, %@", &v8, 0xCu);
    }

    a2 = 0;
  }

  else if (v7)
  {
    v8 = 67109120;
    LODWORD(v9) = a2;
    _os_log_impl(&dword_25EE51000, v6, OS_LOG_TYPE_INFO, "GMS opt in state: %d", &v8, 8u);
  }

  [*(a1 + 32) setGmsOptInState:a2];
}

- (void)setupMetrics
{
  metrics = [(PLAggregateSummarizationService *)self metrics];
  v4 = [PLASMetric alloc];
  getQueryForNetworkIOData = [(PLAggregateSummarizationService *)self getQueryForNetworkIOData];
  getGenericSummarizer = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v7 = [(PLASMetric *)v4 initMetric:@"NetworkIOStats" withType:1 withProperties:&unk_28714C7A0 withQuery:getQueryForNetworkIOData andSummarizerBlock:getGenericSummarizer];
  [metrics addObject:v7];

  metrics2 = [(PLAggregateSummarizationService *)self metrics];
  v9 = [PLASMetric alloc];
  getQueryForCoalitionPowerData = [(PLAggregateSummarizationService *)self getQueryForCoalitionPowerData];
  getGenericSummarizer2 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v12 = [(PLASMetric *)v9 initMetric:@"CoalitionPowerStats" withType:1 withProperties:&unk_28714C7B8 withQuery:getQueryForCoalitionPowerData andSummarizerBlock:getGenericSummarizer2];
  [metrics2 addObject:v12];

  metrics3 = [(PLAggregateSummarizationService *)self metrics];
  v14 = [PLASMetric alloc];
  getQueryForAverageMemory = [(PLAggregateSummarizationService *)self getQueryForAverageMemory];
  getGenericSummarizer3 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v17 = [(PLASMetric *)v14 initMetric:@"AverageMemory" withType:2 withProperties:&unk_28714C7D0 withQuery:getQueryForAverageMemory andSummarizerBlock:getGenericSummarizer3];
  [metrics3 addObject:v17];

  metrics4 = [(PLAggregateSummarizationService *)self metrics];
  v19 = [PLASMetric alloc];
  getQueryForPeakMemory = [(PLAggregateSummarizationService *)self getQueryForPeakMemory];
  getGenericSummarizer4 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v22 = [(PLASMetric *)v19 initMetric:@"PeakMemory" withType:2 withProperties:&unk_28714C7E8 withQuery:getQueryForPeakMemory andSummarizerBlock:getGenericSummarizer4];
  [metrics4 addObject:v22];

  metrics5 = [(PLAggregateSummarizationService *)self metrics];
  v24 = [PLASMetric alloc];
  getQueryForDiskIO = [(PLAggregateSummarizationService *)self getQueryForDiskIO];
  getGenericSummarizer5 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v27 = [(PLASMetric *)v24 initMetric:@"DiskIO" withType:2 withProperties:&unk_28714C800 withQuery:getQueryForDiskIO andSummarizerBlock:getGenericSummarizer5];
  [metrics5 addObject:v27];

  metrics6 = [(PLAggregateSummarizationService *)self metrics];
  v29 = [PLASMetric alloc];
  getQueryForLocationActivity = [(PLAggregateSummarizationService *)self getQueryForLocationActivity];
  getLocationActivitySummarizer = [(PLAggregateSummarizationService *)self getLocationActivitySummarizer];
  v32 = [(PLASMetric *)v29 initMetric:@"LocationActivity" withType:1 withProperties:&unk_28714C818 withQuery:getQueryForLocationActivity andSummarizerBlock:getLocationActivitySummarizer];
  [metrics6 addObject:v32];

  metrics7 = [(PLAggregateSummarizationService *)self metrics];
  v34 = [PLASMetric alloc];
  getQueryForDisplayAPL = [(PLAggregateSummarizationService *)self getQueryForDisplayAPL];
  getGenericSummarizer6 = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v37 = [(PLASMetric *)v34 initMetric:@"DisplayAPL" withType:1 withProperties:&unk_28714C830 withQuery:getQueryForDisplayAPL andSummarizerBlock:getGenericSummarizer6];
  [metrics7 addObject:v37];

  metrics8 = [(PLAggregateSummarizationService *)self metrics];
  v38 = [PLASMetric alloc];
  getQueryForCellularCondition = [(PLAggregateSummarizationService *)self getQueryForCellularCondition];
  getCellularConditionSummarizer = [(PLAggregateSummarizationService *)self getCellularConditionSummarizer];
  v41 = [(PLASMetric *)v38 initMetric:@"CellularCondition" withType:1 withProperties:&unk_28714C848 withQuery:getQueryForCellularCondition andSummarizerBlock:getCellularConditionSummarizer];
  [metrics8 addObject:v41];
}

- (void)aggregateMetrics
{
  v24 = *MEMORY[0x277D85DE8];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [(PLAggregateSummarizationService *)self metrics];
  v3 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v20;
    v6 = &OBJC_IVAR___PLBatteryBreakdownService__totalEnergyWeek;
    do
    {
      v7 = 0;
      v17 = v4;
      do
      {
        if (*v20 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v19 + 1) + 8 * v7);
        v9 = objc_autoreleasePoolPush();
        query = [v8 query];
        v11 = query[2](*(&self->super.super.super.isa + v6[114]));

        if (v11 && [v11 count])
        {
          summarizer = [v8 summarizer];
          [v8 metricProperties];
          v14 = v13 = v6;
          (summarizer)[2](summarizer, v11, v14);
          v16 = v15 = v5;

          v6 = v13;
          -[PLAggregateSummarizationService addMetrics:withType:](self, "addMetrics:withType:", v16, [v8 metricType]);

          v5 = v15;
          v4 = v17;
        }

        objc_autoreleasePoolPop(v9);
        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v4);
  }
}

- (void)addMetrics:(id)metrics withType:(signed __int16)type
{
  typeCopy = type;
  v21 = *MEMORY[0x277D85DE8];
  metricsCopy = metrics;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = [metricsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(metricsCopy);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(NSMutableDictionary *)self->_summarizedData objectForKeyedSubscript:v11];
        v13 = [MEMORY[0x277CCABB0] numberWithShort:typeCopy];
        v14 = [v12 objectForKeyedSubscript:v13];
        v15 = [metricsCopy objectForKeyedSubscript:v11];
        [v14 addEntriesFromDictionary:v15];
      }

      v8 = [metricsCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)getAppList:(id)list
{
  v18 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = listCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) objectForKey:{@"PLBatteryUIAppBundleIDKey", v13}];
        if (v11)
        {
          [(NSArray *)v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  appList = self->_appList;
  self->_appList = v5;
}

- (id)getDeviceMetadataInRange:(_PLTimeIntervalRange)range withSignpostData:(id)data
{
  length = range.length;
  location = range.location;
  v36[12] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v8 = CFPreferencesCopyValue(@"AppleLanguages", @"Apple Global Domain", @"mobile", *MEMORY[0x277CBF030]);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
  }

  else
  {
    v9 = @"<unknown>";
  }

  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v30 = v8;
  v28 = currentLocale;
  if (currentLocale)
  {
    v11 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];
  }

  else
  {
    v11 = @"<unknown>";
  }

  v12 = [dataCopy objectForKeyedSubscript:@"hangtracer_enabled"];
  v31 = dataCopy;
  if (v12)
  {
    v34 = [dataCopy objectForKeyedSubscript:@"hangtracer_enabled"];
  }

  else
  {
    v34 = &unk_287145988;
  }

  v33 = [(PLAggregateSummarizationService *)self getPluggedInDurationInRange:location, length];
  v13 = [(PLAggregateSummarizationService *)self getDrainInfoInRange:location, length];
  v32 = [v13 objectAtIndexedSubscript:0];
  v14 = [v13 objectAtIndexedSubscript:1];
  v15 = [(PLAggregateSummarizationService *)self getInitCountInRange:location, length];
  v16 = 0;
  if ([MEMORY[0x277D3F208] hasGenerativeModelSystems])
  {
    v16 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAggregateSummarizationService gmsOptInState](self, "gmsOptInState")}];
  }

  v35[0] = @"log_version";
  v35[1] = @"region_format";
  v17 = @"<none>";
  if (v11)
  {
    v18 = v11;
  }

  else
  {
    v18 = @"<none>";
  }

  v36[0] = &unk_2871459A0;
  v36[1] = v18;
  v29 = v9;
  if (v9)
  {
    v17 = v9;
  }

  v36[2] = v17;
  v35[2] = @"language";
  v35[3] = @"os_version";
  osVersion = [objc_opt_class() osVersion];
  v26 = v11;
  if (osVersion)
  {
    osVersion2 = [objc_opt_class() osVersion];
  }

  else
  {
    osVersion2 = @"<unknown>";
  }

  v36[3] = osVersion2;
  v35[4] = @"machine_config";
  modelIdentifier = [objc_opt_class() modelIdentifier];
  v36[4] = modelIdentifier;
  v35[5] = @"os_variant";
  v22 = [MEMORY[0x277CCABB0] numberWithShort:{objc_msgSend(objc_opt_class(), "buildType")}];
  v36[5] = v22;
  v36[6] = v34;
  v35[6] = @"hangtracer_enabled";
  v35[7] = @"plugged_in_duration";
  v35[8] = @"total_drain";
  v35[9] = @"energy_consumed";
  v36[7] = v33;
  v36[8] = v32;
  v36[9] = v14;
  v35[10] = @"init_count";
  v35[11] = @"gms_opt_in";
  v23 = v16;
  v36[10] = v15;
  if (!v16)
  {
    v23 = [MEMORY[0x277CCABB0] numberWithBool:{-[PLAggregateSummarizationService gmsOptInState](self, "gmsOptInState")}];
  }

  v36[11] = v23;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:{12, v26}];
  if (!v16)
  {
  }

  if (osVersion)
  {
  }

  return v24;
}

- (id)getDrainInfoInRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v31 = *MEMORY[0x277D85DE8];
  v6 = [(PLOperator *)PLBatteryAgent entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UILevel"];
  v7 = objc_msgSend_storage(self);
  v23 = v6;
  v8 = [v7 aggregateEntriesForKey:v6 withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    LODWORD(v11) = 0;
    LODWORD(v12) = 0;
    v13 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v25 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"Level"];
        intValue = [v16 intValue];

        v12 = (intValue + v12);
        v18 = [v15 objectForKeyedSubscript:@"energyConsumed"];
        LODWORD(v16) = [v18 intValue];

        v11 = (v16 + v11);
      }

      v10 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  v19 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  v29[0] = v19;
  v20 = [MEMORY[0x277CCABB0] numberWithInt:v11];
  v29[1] = v20;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];

  return v21;
}

- (id)getPluggedInDurationInRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v24 = *MEMORY[0x277D85DE8];
  v6 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"UsageTime"];
  v7 = objc_msgSend_storage(self);
  v8 = [v7 aggregateEntriesForKey:v6 withBucketLength:3600.0 inTimeIntervalRange:{location, length}];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    LODWORD(v12) = 0;
    v13 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = [*(*(&v19 + 1) + 8 * i) objectForKeyedSubscript:{@"PluggedIn", v19}];
        intValue = [v15 intValue];

        v12 = (intValue + v12);
      }

      v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v17 = [MEMORY[0x277CCABB0] numberWithInt:v12];

  return v17;
}

- (id)getInitCountInRange:(_PLTimeIntervalRange)range
{
  length = range.length;
  location = range.location;
  v6 = [MEMORY[0x277D3F230] entryKeyForType:*MEMORY[0x277D3F5D0] andName:*MEMORY[0x277D3F610]];
  v7 = objc_msgSend_storage(self);
  v8 = [v7 entriesForKey:v6 inTimeRange:0 withFilters:{location, length}];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v8, "count")}];

  return v9;
}

- (id)getQueryForAppMultipleVersions
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PLAggregateSummarizationService_getQueryForAppMultipleVersions__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __65__PLAggregateSummarizationService_getQueryForAppMultipleVersions__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT AppBundleId AS %@, COUNT(DISTINCT AppBundleVersion) > 1 AS %@                           FROM PLApplicationAgent_EventNone_AllApps                           WHERE timestamp >= %f AND timestamp < %f GROUP BY %@", @"BundleId", @"app_multiple_versions", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = objc_msgSend_storage(*(a1 + 32));
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForNetworkIOData
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__PLAggregateSummarizationService_getQueryForNetworkIOData__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __59__PLAggregateSummarizationService_getQueryForNetworkIOData__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                             SELECT BundleName AS %@, SUM(CellIn) %@, SUM(CellOut) %@, SUM(WifiIn) %@, SUM(WifiOut) %@                             FROM PLProcessNetworkAgent_EventInterval_UsageDiff                             WHERE timestamp >= %f AND timestamp < %f GROUP BY %@", @"BundleId", @"bytesCellularIn", @"bytesCellularOut", @"bytesWifiIn", @"bytesWifiOut", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = objc_msgSend_storage(*(a1 + 32));
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForCoalitionPowerData
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PLAggregateSummarizationService_getQueryForCoalitionPowerData__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __64__PLAggregateSummarizationService_getQueryForCoalitionPowerData__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                             SELECT BundleID AS %@, SUM(cpu_time) %@, SUM(gpu_time) %@, SUM(cpu_instructions) %@                             FROM PLCoalitionAgent_EventInterval_CoalitionInterval                             WHERE timestamp >= %f AND timestamp < %f GROUP BY %@", @"BundleId", @"CPUTime", @"GPUTime", @"CPUInstructions", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = objc_msgSend_storage(*(a1 + 32));
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForDiskIO
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __52__PLAggregateSummarizationService_getQueryForDiskIO__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __52__PLAggregateSummarizationService_getQueryForDiskIO__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:?];
  v3 = [v2 dateByAddingTimeInterval:-86400.0];
  v4 = v2;
  [v3 timeIntervalSince1970];
  v6 = v5;
  [v4 timeIntervalSince1970];
  v8 = v7;

  v9 = [(PLOperator *)PLAppTimeService entryKeyForType:*MEMORY[0x277D3F5B8] andName:@"Metrics"];
  v10 = objc_msgSend_storage(*(a1 + 32));
  v11 = [v10 aggregateEntriesForKey:v9 withBucketLength:3600.0 inTimeIntervalRange:{v6, v8 - v6}];

  v12 = [MEMORY[0x277D3F190] summarizeAggregateEntries:v11];

  return v12;
}

- (id)getQueryForAverageMemory
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__PLAggregateSummarizationService_getQueryForAverageMemory__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __59__PLAggregateSummarizationService_getQueryForAverageMemory__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT Q.A %@, Q.B %@, Q.C %@, AVG((SuspendedMemory - Q.B)*(SuspendedMemory - Q.B)) %@ from PLApplicationAgent_EventBackward_ApplicationMemory as T, (SELECT AppBundleId AS A, AVG(SuspendedMemory) AS B, COUNT(SuspendedMemory) AS C from PLApplicationAgent_EventBackward_ApplicationMemory                              WHERE timestamp >= %f AND timestamp < %f GROUP BY AppBundleId                            ) AS Q WHERE Q.A = T.AppBundleId AND timestamp >= %f AND timestamp < %f GROUP BY %@", @"BundleId", @"AverageMemory", @"AverageMemoryCount", @"AverageMemoryVariance", a2 + -86400.0, *&a2, a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = objc_msgSend_storage(*(a1 + 32));
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForPeakMemory
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PLAggregateSummarizationService_getQueryForPeakMemory__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __56__PLAggregateSummarizationService_getQueryForPeakMemory__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT AppBundleId AS %@, MAX(PeakMemory) %@ from PLApplicationAgent_EventBackward_ApplicationMemory WHERE timestamp >= %f AND timestamp < %f                           GROUP BY %@", @"BundleId", @"PeakMemory", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = objc_msgSend_storage(*(a1 + 32));
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForLocationActivity
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__PLAggregateSummarizationService_getQueryForLocationActivity__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __62__PLAggregateSummarizationService_getQueryForLocationActivity__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT Q.A %@, Q.B LocationDesiredAccuracy, SUM(tE - t) TotalTime FROM                             (SELECT BundleID AS A, LocationDesiredAccuracy AS B, CASE WHEN (timestampEnd > %f OR timestampEnd is NULL) THEN %f ELSE timestampEnd END as tE, CASE WHEN timestamp < %f THEN %f ELSE timestamp END as t                             FROM PLLocationAgent_EventForward_ClientStatus WHERE Type='Location' AND tE >= %f AND t < %f AND tE > t                           ) AS Q GROUP BY %@, LocationDesiredAccuracy", @"BundleId", *&a2, *&a2, a2 + -86400.0, a2 + -86400.0, a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = objc_msgSend_storage(*(a1 + 32));
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForDisplayAPL
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__PLAggregateSummarizationService_getQueryForDisplayAPL__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __56__PLAggregateSummarizationService_getQueryForDisplayAPL__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT bundleID AS %@, SUM(%f * Frames * (%f*AvgRed + %f*AvgGreen + %f*AvgBlue))/SUM(Frames) %@, SUM(Frames) %@ FROM PLDisplayAgent_EventBackward_APLStats                           WHERE timestamp >= %f AND timestamp < %f                           GROUP BY %@", @"BundleId", 0x3FD9191919191919, 0x3FD3D70A3D70A3D7, 0x3FD0000000000000, 0x3FDC28F5C28F5C29, @"AveragePictureLevel", @"TotalFrameCount", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = objc_msgSend_storage(*(a1 + 32));
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (id)getQueryForCellularCondition
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __63__PLAggregateSummarizationService_getQueryForCellularCondition__block_invoke;
  v5[3] = &unk_279A5CA80;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __63__PLAggregateSummarizationService_getQueryForCellularCondition__block_invoke(uint64_t a1, double a2)
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"                           SELECT BundleID AS %@, SignalBars, SUM(CellUsageTime) AS TotalTime FROM PLAppTimeService_Aggregate_CellularCondition                           WHERE timestamp >= %f AND timestamp < %f                           GROUP BY %@, SignalBars", @"BundleId", a2 + -86400.0, *&a2, @"BundleId"];;
  v4 = objc_msgSend_storage(*(a1 + 32));
  v5 = [v4 connection];
  v6 = [v5 performQuery:v3];

  return v6;
}

- (void)getAppMetadata
{
  v69 = *MEMORY[0x277D85DE8];
  [(PLAggregateSummarizationService *)self getAppMultipleVersionsData];
  v40 = v39 = self;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = [(PLAggregateSummarizationService *)self appList];
  v41 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
  if (v41)
  {
    v38 = *v62;
    do
    {
      v3 = 0;
      do
      {
        if (*v62 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v3;
        v4 = *(*(&v61 + 1) + 8 * v3);
        v5 = [objc_alloc(MEMORY[0x277D3F260]) initWithKey:@"AppBundleId" withValue:v4 withComparisonOperation:0];
        mEMORY[0x277D3F2A0] = [MEMORY[0x277D3F2A0] sharedCore];
        v7 = objc_msgSend_storage(mEMORY[0x277D3F2A0]);
        v59 = v5;
        v67 = v5;
        v8 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
        v9 = [v7 lastEntryForKey:@"PLApplicationAgent_EventNone_AllApps" withComparisons:v8 isSingleton:1];

        v66[0] = v4;
        v65[0] = @"app_bundleid";
        v65[1] = @"app_is_clip";
        v58 = [v9 objectForKeyedSubscript:@"AppIsClip"];
        if ([v58 BOOLValue])
        {
          v10 = @"true";
        }

        else
        {
          v10 = @"false";
        }

        v66[1] = v10;
        v65[2] = @"app_build_version";
        v57 = [v9 objectForKeyedSubscript:@"AppBuildVersion"];
        if (v57)
        {
          v52 = [v9 objectForKeyedSubscript:@"AppBuildVersion"];
          v11 = v52;
        }

        else
        {
          v11 = &stru_287103958;
        }

        v66[2] = v11;
        v65[3] = @"app_version";
        v56 = [v9 objectForKeyedSubscript:@"AppBundleVersion"];
        if (v56)
        {
          v51 = [v9 objectForKeyedSubscript:@"AppBundleVersion"];
          v12 = v51;
        }

        else
        {
          v12 = &stru_287103958;
        }

        v66[3] = v12;
        v65[4] = @"app_sessionreporter_key";
        v54 = [v9 objectForKeyedSubscript:@"AppVendorID"];
        if (v54)
        {
          v50 = [v9 objectForKeyedSubscript:@"AppVendorID"];
          v13 = v50;
        }

        else
        {
          v13 = &stru_287103958;
        }

        v66[4] = v13;
        v65[5] = @"app_adamid";
        v53 = [v9 objectForKeyedSubscript:@"AppItemID"];
        if (v53)
        {
          v49 = [v9 objectForKeyedSubscript:@"AppItemID"];
          v14 = v49;
        }

        else
        {
          v14 = &stru_287103958;
        }

        v66[5] = v14;
        v65[6] = @"app_cohort";
        v15 = [v9 objectForKeyedSubscript:@"AppCohort"];
        if (v15)
        {
          v48 = [v9 objectForKeyedSubscript:@"AppCohort"];
          v16 = v48;
        }

        else
        {
          v16 = &stru_287103958;
        }

        v66[6] = v16;
        v65[7] = @"app_storefront";
        v17 = [v9 objectForKeyedSubscript:@"AppStoreFront"];
        if (v17)
        {
          v47 = [v9 objectForKeyedSubscript:@"AppStoreFront"];
          v18 = v47;
        }

        else
        {
          v18 = &stru_287103958;
        }

        v66[7] = v18;
        v65[8] = @"app_is_beta";
        v19 = [v9 objectForKeyedSubscript:@"AppIsBeta"];
        if ([v19 BOOLValue])
        {
          v20 = @"true";
        }

        else
        {
          v20 = @"false";
        }

        v66[8] = v20;
        v65[9] = @"app_arch";
        v21 = [v9 objectForKeyedSubscript:@"AppArchitecture"];
        if (v21)
        {
          v46 = [v9 objectForKeyedSubscript:@"AppArchitecture"];
          v22 = v46;
        }

        else
        {
          v22 = &stru_287103958;
        }

        v66[9] = v22;
        v65[10] = @"slice_uuid";
        v23 = [v9 objectForKeyedSubscript:@"AppUUID"];
        if (v23)
        {
          v45 = [v9 objectForKeyedSubscript:@"AppUUID"];
          v24 = v45;
        }

        else
        {
          v24 = &stru_287103958;
        }

        v66[10] = v24;
        v65[11] = @"app_multiple_versions";
        v25 = [v40 objectForKeyedSubscript:v4];
        if (v25)
        {
          v44 = [v40 objectForKeyedSubscript:v4];
          v42 = [v44 objectForKeyedSubscript:@"app_multiple_versions"];
          v26 = v42;
        }

        else
        {
          v26 = &unk_2871459B8;
        }

        v66[11] = v26;
        v65[12] = @"app_distributorid";
        v27 = [v9 objectForKeyedSubscript:@"AppDistributorID"];
        if (v27)
        {
          v43 = [v9 objectForKeyedSubscript:@"AppDistributorID"];
          v28 = v43;
        }

        else
        {
          v28 = &stru_287103958;
        }

        v29 = v54;
        v66[12] = v28;
        v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:13];
        if (v27)
        {
        }

        if (v25)
        {
        }

        if (v23)
        {
        }

        if (v21)
        {
        }

        if (v17)
        {
        }

        if (v15)
        {
        }

        if (v53)
        {
        }

        if (v29)
        {
        }

        if (v56)
        {
        }

        if (v57)
        {
        }

        summarizedData = v39->_summarizedData;
        v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(NSMutableDictionary *)summarizedData setObject:v31 forKey:v4];

        v32 = [(NSMutableDictionary *)v39->_summarizedData objectForKeyedSubscript:v4];
        v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v32 setObject:v33 forKey:&unk_287145958];

        v34 = [(NSMutableDictionary *)v39->_summarizedData objectForKeyedSubscript:v4];
        v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v34 setObject:v35 forKey:&unk_287145970];

        v36 = [(NSMutableDictionary *)v39->_summarizedData objectForKeyedSubscript:v4];
        [v36 setObject:v55 forKey:&unk_2871459D0];

        v3 = v60 + 1;
      }

      while (v41 != v60 + 1);
      v41 = [obj countByEnumeratingWithState:&v61 objects:v68 count:16];
    }

    while (v41);
  }
}

- (id)getAppMultipleVersionsData
{
  v3 = [PLASMetric alloc];
  getQueryForAppMultipleVersions = [(PLAggregateSummarizationService *)self getQueryForAppMultipleVersions];
  getGenericSummarizer = [(PLAggregateSummarizationService *)self getGenericSummarizer];
  v6 = [(PLASMetric *)v3 initMetric:@"app_multiple_versions" withType:0 withProperties:&unk_28714C860 withQuery:getQueryForAppMultipleVersions andSummarizerBlock:getGenericSummarizer];

  query = [v6 query];
  v8 = query[2](self->_maxTimestamp);

  if (v8 && [v8 count])
  {
    summarizer = [v6 summarizer];
    metricProperties = [v6 metricProperties];
    v11 = (summarizer)[2](summarizer, v8, metricProperties);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)getGenericSummarizer
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __55__PLAggregateSummarizationService_getGenericSummarizer__block_invoke;
  v5[3] = &unk_279A5CAA8;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __55__PLAggregateSummarizationService_getGenericSummarizer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v31 = a3;
  v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v42;
    v29 = *v42;
    v30 = a1;
    do
    {
      v9 = 0;
      v33 = v7;
      do
      {
        if (*v42 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v41 + 1) + 8 * v9);
        if (v10)
        {
          v11 = [*(*(&v41 + 1) + 8 * v9) objectForKey:@"BundleId"];
          v12 = [*(a1 + 32) appList];
          v13 = [v12 containsObject:v11];

          if (v13)
          {
            v35 = v11;
            v36 = v9;
            v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
            v37 = 0u;
            v38 = 0u;
            v39 = 0u;
            v40 = 0u;
            v15 = v31;
            v16 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
            if (v16)
            {
              v17 = v16;
              v18 = *v38;
              do
              {
                for (i = 0; i != v17; ++i)
                {
                  if (*v38 != v18)
                  {
                    objc_enumerationMutation(v15);
                  }

                  v20 = *(*(&v37 + 1) + 8 * i);
                  v21 = [v10 objectForKeyedSubscript:{v20, v29, v30}];
                  if (v21)
                  {
                    v22 = v21;
                    v23 = [v10 objectForKeyedSubscript:v20];
                    v24 = [MEMORY[0x277CBEB68] null];

                    if (v23 != v24)
                    {
                      v25 = MEMORY[0x277CCABB0];
                      v26 = [v10 objectForKeyedSubscript:v20];
                      v27 = [v25 numberWithUnsignedInteger:{objc_msgSend(v26, "unsignedIntegerValue")}];
                      [v14 setObject:v27 forKey:v20];
                    }
                  }
                }

                v17 = [v15 countByEnumeratingWithState:&v37 objects:v45 count:16];
              }

              while (v17);
            }

            v11 = v35;
            [v32 setObject:v14 forKey:v35];

            v8 = v29;
            a1 = v30;
            v7 = v33;
            v9 = v36;
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v41 objects:v46 count:16];
    }

    while (v7);
  }

  return v32;
}

- (id)getLocationActivitySummarizer
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __64__PLAggregateSummarizationService_getLocationActivitySummarizer__block_invoke;
  v5[3] = &unk_279A5CAA8;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __64__PLAggregateSummarizationService_getLocationActivitySummarizer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v43 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v54;
    v10 = *MEMORY[0x277CE4208];
    v11 = *MEMORY[0x277CE4210];
    v12 = *MEMORY[0x277CE4250];
    v13 = *MEMORY[0x277CE4228];
    v14 = *MEMORY[0x277CE4238];
    v15 = *MEMORY[0x277CE4270];
    v46 = *v54;
    v47 = a1;
    do
    {
      v16 = 0;
      v45 = v8;
      do
      {
        if (*v54 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v53 + 1) + 8 * v16);
        if (v17)
        {
          v18 = [*(*(&v53 + 1) + 8 * v16) objectForKey:@"BundleId"];
          v19 = [*(a1 + 32) appList];
          v20 = [v19 containsObject:v18];

          if (v20)
          {
            v21 = [v17 objectForKeyedSubscript:@"LocationDesiredAccuracy"];
            v22 = [MEMORY[0x277CBEB68] null];
            if (v21 == v22)
            {
              a1 = v47;
LABEL_27:

              goto LABEL_28;
            }

            v23 = [v17 objectForKeyedSubscript:@"TotalTime"];
            v24 = [MEMORY[0x277CBEB68] null];

            v25 = v23 == v24;
            v8 = v45;
            v9 = v46;
            a1 = v47;
            if (!v25)
            {
              v26 = [v6 objectForKey:v18];

              if (!v26)
              {
                v44 = v17;
                v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
                [v6 setObject:v27 forKey:v18];

                v51 = 0u;
                v52 = 0u;
                v49 = 0u;
                v50 = 0u;
                v28 = v43;
                v29 = [v28 countByEnumeratingWithState:&v49 objects:v57 count:16];
                if (v29)
                {
                  v30 = v29;
                  v31 = *v50;
                  do
                  {
                    for (i = 0; i != v30; ++i)
                    {
                      if (*v50 != v31)
                      {
                        objc_enumerationMutation(v28);
                      }

                      v33 = *(*(&v49 + 1) + 8 * i);
                      v34 = [v6 objectForKeyedSubscript:{v18, v43}];
                      [v34 setObject:&unk_2871459B8 forKey:v33];
                    }

                    v30 = [v28 countByEnumeratingWithState:&v49 objects:v57 count:16];
                  }

                  while (v30);
                }

                a1 = v47;
                v17 = v44;
                v8 = v45;
              }

              v35 = [v17 objectForKeyedSubscript:{@"LocationDesiredAccuracy", v43}];
              [v35 doubleValue];
              v37 = v36;

              v38 = MEMORY[0x277CCABB0];
              v39 = [v17 objectForKeyedSubscript:@"TotalTime"];
              v21 = [v38 numberWithUnsignedInteger:{objc_msgSend(v39, "unsignedIntegerValue")}];

              v40 = @"BestAccuracy";
              if (v37 == v10 || (v40 = @"BestAccuracyForNavigation", v37 == v11) || (v40 = @"NearestTenMetersAccuracy", v37 == v12) || (v40 = @"HundredMetersAccuracy", v37 == v13) || (v40 = @"KilometerAccuracy", v37 == v14) || (v40 = @"ThreeKilometersAccuracy", v37 == v15))
              {
                v22 = [v6 objectForKeyedSubscript:v18];
                [v22 setObject:v21 forKey:v40];
                v9 = v46;
                goto LABEL_27;
              }

              v9 = v46;
LABEL_28:
            }
          }
        }

        ++v16;
      }

      while (v16 != v8);
      v41 = [obj countByEnumeratingWithState:&v53 objects:v58 count:16];
      v8 = v41;
    }

    while (v41);
  }

  return v6;
}

- (id)getCellularConditionSummarizer
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__PLAggregateSummarizationService_getCellularConditionSummarizer__block_invoke;
  v5[3] = &unk_279A5CAA8;
  v5[4] = self;
  v2 = MEMORY[0x25F8D2750](v5, a2);
  v3 = MEMORY[0x25F8D2750]();

  return v3;
}

id __65__PLAggregateSummarizationService_getCellularConditionSummarizer__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v59 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v39 = a3;
  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v50;
    *&v8 = 134218242;
    v38 = v8;
    v42 = *v50;
    v43 = a1;
    do
    {
      v11 = 0;
      v41 = v9;
      do
      {
        if (*v50 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v49 + 1) + 8 * v11);
        if (v12)
        {
          v13 = [*(*(&v49 + 1) + 8 * v11) objectForKey:@"BundleId"];
          v14 = [*(a1 + 32) appList];
          v15 = [v14 containsObject:v13];

          if (v15)
          {
            v16 = [v12 objectForKeyedSubscript:@"SignalBars"];
            v17 = [MEMORY[0x277CBEB68] null];
            if (v16 == v17)
            {
              a1 = v43;
              goto LABEL_26;
            }

            v18 = [v12 objectForKeyedSubscript:@"TotalTime"];
            v19 = [MEMORY[0x277CBEB68] null];

            v20 = v18 == v19;
            v9 = v41;
            v10 = v42;
            a1 = v43;
            if (!v20)
            {
              v21 = [v6 objectForKey:v13];

              if (!v21)
              {
                v40 = v12;
                v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
                [v6 setObject:v22 forKey:v13];

                v47 = 0u;
                v48 = 0u;
                v45 = 0u;
                v46 = 0u;
                v23 = v39;
                v24 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
                if (v24)
                {
                  v25 = v24;
                  v26 = *v46;
                  do
                  {
                    for (i = 0; i != v25; ++i)
                    {
                      if (*v46 != v26)
                      {
                        objc_enumerationMutation(v23);
                      }

                      v28 = *(*(&v45 + 1) + 8 * i);
                      v29 = [v6 objectForKeyedSubscript:{v13, v38}];
                      [v29 setObject:&unk_2871459B8 forKey:v28];
                    }

                    v25 = [v23 countByEnumeratingWithState:&v45 objects:v57 count:16];
                  }

                  while (v25);
                }

                a1 = v43;
                v12 = v40;
                v9 = v41;
              }

              v30 = [v12 objectForKeyedSubscript:{@"SignalBars", v38}];
              v31 = [v30 integerValue];

              v32 = MEMORY[0x277CCABB0];
              v33 = [v12 objectForKeyedSubscript:@"TotalTime"];
              v16 = [v32 numberWithUnsignedInteger:{objc_msgSend(v33, "unsignedIntegerValue")}];

              if (v31 >= 5)
              {
                v36 = PLLogAggregateSummarizationService(v34);
                v10 = v42;
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  *buf = v38;
                  v54 = v31;
                  v55 = 2112;
                  v56 = v13;
                  _os_log_error_impl(&dword_25EE51000, v36, OS_LOG_TYPE_ERROR, "Invalid signal bar: %ld for bundleID: %@", buf, 0x16u);
                }

                v35 = @"SignalBarUnknown";
              }

              else
              {
                v35 = off_279A5CAC8[v31];
                v10 = v42;
              }

              v17 = [v6 objectForKeyedSubscript:v13];
              [v17 setObject:v16 forKey:v35];
LABEL_26:
            }
          }
        }

        ++v11;
      }

      while (v11 != v9);
      v9 = [obj countByEnumeratingWithState:&v49 objects:v58 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)osVersion
{
  if (osVersion_onceToken != -1)
  {
    +[PLAggregateSummarizationService osVersion];
  }

  v3 = osVersion_osVersion;

  return v3;
}

void __44__PLAggregateSummarizationService_osVersion__block_invoke()
{
  v6 = _CFCopySupplementalVersionDictionary();
  if (v6)
  {
    v0 = objc_alloc(MEMORY[0x277CCACA8]);
    v1 = [v6 objectForKeyedSubscript:@"ProductName"];
    v2 = [v6 objectForKeyedSubscript:@"ProductVersion"];
    v3 = [v6 objectForKeyedSubscript:@"ProductBuildVersion"];
    v4 = [v0 initWithFormat:@"%@ %@ (%@)", v1, v2, v3];
    v5 = osVersion_osVersion;
    osVersion_osVersion = v4;
  }

  else
  {
    v1 = osVersion_osVersion;
    osVersion_osVersion = 0;
  }
}

+ (id)modelIdentifier
{
  if (modelIdentifier_onceToken != -1)
  {
    +[PLAggregateSummarizationService modelIdentifier];
  }

  v3 = modelIdentifier_modelIdentifier;

  return v3;
}

void __50__PLAggregateSummarizationService_modelIdentifier__block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  *v4 = 0x100000006;
  memset(v3, 0, sizeof(v3));
  v2 = 64;
  sysctl(v4, 2u, v3, &v2, 0, 0);
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithCString:v3 encoding:1];
  v1 = modelIdentifier_modelIdentifier;
  modelIdentifier_modelIdentifier = v0;
}

- (void)handleAggregationQueryWithPayload:(os_log_t)log .cold.2(char a1, int a2, os_log_t log)
{
  v6 = *MEMORY[0x277D85DE8];
  v3[0] = 67109376;
  v3[1] = a2;
  v4 = 1024;
  v5 = a1 & 1;
  _os_log_debug_impl(&dword_25EE51000, log, OS_LOG_TYPE_DEBUG, "handleAggregationQuery with queryType:%d today:%d", v3, 0xEu);
}

@end