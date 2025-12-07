@interface CSPowerlogDBReader
+ (CSPowerlogDBReader)sharedInstance;
- (double)getTotalCPUTimeWithStartDate:(id)date andEndDate:(id)endDate;
- (id)_init;
- (id)getAPWakeIntervalListWithStartDate:(id)date andEndDate:(id)endDate;
- (id)getCPUBasedIntervalListMapWithStartDate:(id)date andEndDate:(id)endDate andAllowListCoalitions:(id)coalitions andDenyListCoalitions:(id)listCoalitions andDaemonOnly:(BOOL)only andMetricType:(int)type;
- (id)getDeviceBootTime;
- (id)getMonotonicTime:(id)time;
- (id)getPowerExceptionsRecordsWithStartDate:(id)date andEndDate:(id)endDate;
- (id)getProcessesForCoalitionID:(int)d withStartDate:(id)date andEndDate:(id)endDate andDeviceBootDate:(id)bootDate;
- (id)getProcessesForCoalitionID:(int)d withStartDate:(id)date andEndDate:(id)endDate andDeviceBootDate:(id)bootDate andCPURatio:(double)ratio;
- (id)getSystemTime:(id)time;
- (id)getTotalBatteryDrainWithStartDate:(id)date andEndDate:(id)endDate;
- (id)getUnpluggedIntervalListWithStartDate:(id)date andEndDate:(id)endDate;
- (void)closeConnection;
- (void)openConnection;
@end

@implementation CSPowerlogDBReader

+ (CSPowerlogDBReader)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[CSPowerlogDBReader sharedInstance];
  }

  v3 = sharedInstance__sharedInstance_0;

  return v3;
}

uint64_t __36__CSPowerlogDBReader_sharedInstance__block_invoke()
{
  sharedInstance__sharedInstance_0 = [[CSPowerlogDBReader alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v6.receiver = self;
  v6.super_class = CSPowerlogDBReader;
  v2 = [(CSPowerlogDBReader *)&v6 init];
  if (v2)
  {
    v3 = [CSLogger logForCategory:@"CSPowerlogDBReader"];
    logger = v2->_logger;
    v2->_logger = v3;
  }

  return v2;
}

- (void)openConnection
{
  v3 = objc_alloc(MEMORY[0x277D3F210]);
  containerPath = [MEMORY[0x277D3F258] containerPath];
  v4 = [containerPath stringByAppendingString:@"/Library/BatteryLife/CurrentPowerlog.PLSQL"];
  v5 = [v3 initWithFilePath:v4];
  conn = self->_conn;
  self->_conn = v5;
}

- (void)closeConnection
{
  [(PLSQLiteConnection *)self->_conn closeConnection];
  conn = self->_conn;
  self->_conn = 0;
}

- (id)getTotalBatteryDrainWithStartDate:(id)date andEndDate:(id)endDate
{
  v19 = *MEMORY[0x277D85DE8];
  endDateCopy = endDate;
  v7 = [(CSPowerlogDBReader *)self getMonotonicTime:date];
  v8 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];

  v9 = MEMORY[0x277CCACA8];
  [v7 timeIntervalSince1970];
  v11 = v10;
  [v8 timeIntervalSince1970];
  v13 = [v9 stringWithFormat:@"                             SELECT timestamp AS %@, Level AS %@, energyConsumed AS %@                             FROM PLBatteryAgent_Aggregate_UILevel WHERE timestamp >= %f AND timestamp <= %f ORDER BY timestamp DESC", @"Timestamp", @"BatteryDrain", @"EnergyConsumed", v11, v12];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v13;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, " getTotalCPUDrainBetweenTimeInterval Query %@", buf, 0xCu);
  }

  v15 = [(PLSQLiteConnection *)self->_conn performQuery:v13];

  return v15;
}

- (double)getTotalCPUTimeWithStartDate:(id)date andEndDate:(id)endDate
{
  v40 = *MEMORY[0x277D85DE8];
  endDateCopy = endDate;
  v7 = [(CSPowerlogDBReader *)self getMonotonicTime:date];
  v32 = endDateCopy;
  v8 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  v9 = MEMORY[0x277CCACA8];
  v31 = v7;
  [v7 timeIntervalSince1970];
  v11 = v10;
  v30 = v8;
  [v8 timeIntervalSince1970];
  v13 = [v9 stringWithFormat:@"                             SELECT sum (cpu_time) AS %@                              FROM PLCoalitionAgent_EventInterval_CoalitionInterval where timestamp >= %f AND timestamp <= %f", @"Total", v11, v12];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v13;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, " getTotalCPUTimeWithStartDate Query %@", buf, 0xCu);
  }

  v29 = v13;
  v15 = [(PLSQLiteConnection *)self->_conn performQuery:v13];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v34;
    v19 = 0.0;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v34 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        v22 = [v21 objectForKeyedSubscript:@"Total"];
        if (v22)
        {
          v23 = v22;
          v24 = [v21 objectForKeyedSubscript:@"Total"];
          null = [MEMORY[0x277CBEB68] null];

          if (v24 != null)
          {
            v26 = [v21 objectForKeyedSubscript:@"Total"];
            [v26 doubleValue];
            v19 = v27;
          }
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v17);
  }

  else
  {
    v19 = 0.0;
  }

  return v19;
}

- (id)getProcessesForCoalitionID:(int)d withStartDate:(id)date andEndDate:(id)endDate andDeviceBootDate:(id)bootDate
{
  v8 = *&d;
  v49 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  bootDateCopy = bootDate;
  array = [MEMORY[0x277CBEB18] array];
  v13 = [MEMORY[0x277CBEB58] set];
  v38 = endDateCopy;
  v14 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  if (!bootDateCopy)
  {
    bootDateCopy = dateCopy;
  }

  v39 = dateCopy;
  v37 = bootDateCopy;
  v15 = [(CSPowerlogDBReader *)self getMonotonicTime:bootDateCopy];
  v16 = MEMORY[0x277CCACA8];
  v35 = v15;
  [v15 timeIntervalSince1970];
  v18 = v17;
  v36 = v14;
  [v14 timeIntervalSince1970];
  v34 = [v16 stringWithFormat:@"SELECT timestamp, PID, ProcessName, PUUID FROM PLProcessMonitorAgent_EventForward_ProcessID WHERE CoalitionID=%d AND timestamp >= %f AND timestamp <= %f", v8, v18, v19];;
  [(PLSQLiteConnection *)self->_conn performQuery:?];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v33 = v45 = 0u;
  obj = [v33 reverseObjectEnumerator];
  v20 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v43;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v43 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v42 + 1) + 8 * i);
        v25 = [v24 valueForKey:@"ProcessName"];
        v26 = [v13 containsObject:v25];

        if ((v26 & 1) == 0)
        {
          v27 = [v24 valueForKey:@"ProcessName"];
          [v13 addObject:v27];

          v46[0] = @"ProcessName";
          v28 = [v24 objectForKeyedSubscript:@"ProcessName"];
          v47[0] = v28;
          v46[1] = @"PID";
          v29 = [v24 objectForKeyedSubscript:?];
          v47[1] = v29;
          v46[2] = @"PUUID";
          v30 = [v24 objectForKeyedSubscript:@"PUUID"];
          v47[2] = v30;
          v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
          [array addObject:v31];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v42 objects:v48 count:16];
    }

    while (v21);
  }

  return array;
}

- (id)getProcessesForCoalitionID:(int)d withStartDate:(id)date andEndDate:(id)endDate andDeviceBootDate:(id)bootDate andCPURatio:(double)ratio
{
  v10 = *&d;
  v151 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  bootDateCopy = bootDate;
  array = [MEMORY[0x277CBEB18] array];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  dictionary3 = [MEMORY[0x277CBEB38] dictionary];
  v118 = [MEMORY[0x277CBEB58] set];
  if (!bootDateCopy)
  {
    bootDateCopy = dateCopy;
  }

  v106 = dateCopy;
  v108 = [(CSPowerlogDBReader *)self getMonotonicTime:dateCopy];
  v105 = endDateCopy;
  v15 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  v104 = bootDateCopy;
  v16 = [(CSPowerlogDBReader *)self getMonotonicTime:bootDateCopy];
  v17 = MEMORY[0x277CCACA8];
  v103 = v16;
  [v16 timeIntervalSince1970];
  v19 = v18;
  v107 = v15;
  [v15 timeIntervalSince1970];
  [v17 stringWithFormat:@"SELECT timestamp, PID, ProcessName, PUUID FROM PLProcessMonitorAgent_EventForward_ProcessID WHERE CoalitionID=%d AND timestamp >= %f AND timestamp <= %f;", v10, v19, v20];
  v102 = v111 = self;
  [(PLSQLiteConnection *)self->_conn performQuery:?];
  v131 = 0u;
  v132 = 0u;
  v133 = 0u;
  v101 = v134 = 0u;
  reverseObjectEnumerator = [v101 reverseObjectEnumerator];
  v22 = [reverseObjectEnumerator countByEnumeratingWithState:&v131 objects:v150 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v132;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v132 != v24)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v26 = *(*(&v131 + 1) + 8 * i);
        v27 = [v26 objectForKeyedSubscript:@"ProcessName"];
        v28 = [v118 containsObject:v27];

        if ((v28 & 1) == 0)
        {
          v29 = [v26 objectForKeyedSubscript:@"ProcessName"];
          [v118 addObject:v29];

          v30 = [v26 objectForKeyedSubscript:@"PID"];
          v31 = [v26 objectForKeyedSubscript:@"ProcessName"];
          [dictionary2 setObject:v30 forKeyedSubscript:v31];

          v32 = [v26 objectForKeyedSubscript:@"PUUID"];
          v33 = [v26 objectForKeyedSubscript:@"ProcessName"];
          [dictionary3 setObject:v32 forKeyedSubscript:v33];
        }

        v34 = [v26 objectForKeyedSubscript:@"ProcessName"];
        v35 = [v26 objectForKeyedSubscript:@"PID"];
        [dictionary setObject:v34 forKeyedSubscript:v35];
      }

      v23 = [reverseObjectEnumerator countByEnumeratingWithState:&v131 objects:v150 count:16];
    }

    while (v23);
  }

  v36 = dictionary2;
  if ([dictionary2 count] > 1)
  {
    allKeys = [dictionary allKeys];
    v49 = [allKeys valueForKey:@"stringValue"];
    v50 = [v49 componentsJoinedByString:{@", "}];

    v51 = MEMORY[0x277CCACA8];
    [v107 timeIntervalSince1970];
    v53 = v52;
    [v108 timeIntervalSince1970];
    obj = v50;
    [v51 stringWithFormat:@"SELECT ProcessName AS %@, SUM(value) AS %@ from PLProcessMonitorAgent_EventInterval_ProcessMonitorInterval AS a JOIN PLProcessMonitorAgent_EventInterval_ProcessMonitorInterval_Dynamic AS b ON a.ID = b.FK_ID WHERE PID in (%@) AND timestamp <= %f AND timestampEnd >= %f GROUP BY ProcessName", @"ProcessName", @"Value", v50, v53, v54];
    v100 = v55 = v111;
    [(PLSQLiteConnection *)v111->_conn performQuery:?];
    v123 = 0u;
    v124 = 0u;
    v125 = 0u;
    v112 = v126 = 0u;
    v56 = [v112 countByEnumeratingWithState:&v123 objects:v146 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v124;
      v59 = 0.0;
      v60 = @"ProcessName";
      do
      {
        for (j = 0; j != v57; ++j)
        {
          if (*v124 != v58)
          {
            objc_enumerationMutation(v112);
          }

          v62 = *(*(&v123 + 1) + 8 * j);
          v63 = [v62 objectForKeyedSubscript:@"ProcessName"];
          v64 = [v36 objectForKey:v63];

          if (v64)
          {
            v65 = [v62 objectForKeyedSubscript:@"Value"];
            [v65 doubleValue];
            v59 = v59 + v66;
          }

          else
          {
            logger = v111->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
            {
              [CSPowerlogDBReader getProcessesForCoalitionID:logger withStartDate:v62 andEndDate:&v145 andDeviceBootDate:? andCPURatio:?];
            }

            v36 = dictionary2;
          }
        }

        v57 = [v112 countByEnumeratingWithState:&v123 objects:v146 count:16];
      }

      while (v57);
      if (v59 > 30.0)
      {
        v121 = 0u;
        v122 = 0u;
        v119 = 0u;
        v120 = 0u;
        v109 = v112;
        v68 = [v109 countByEnumeratingWithState:&v119 objects:v143 count:16];
        if (v68)
        {
          v69 = v68;
          v70 = *v120;
          v71 = v59 * ratio;
          v72 = @"Value";
          do
          {
            for (k = 0; k != v69; ++k)
            {
              if (*v120 != v70)
              {
                objc_enumerationMutation(v109);
              }

              v74 = *(*(&v119 + 1) + 8 * k);
              v75 = [v74 objectForKeyedSubscript:v60];
              v76 = [v36 objectForKey:v75];

              if (v76)
              {
                v77 = [v74 objectForKeyedSubscript:v72];
                [v77 doubleValue];
                v79 = v78;

                if (v79 >= v71)
                {
                  v141[0] = v60;
                  v80 = [v74 objectForKeyedSubscript:v60];
                  v142[0] = v80;
                  v141[1] = @"PID";
                  v110 = [v74 objectForKeyedSubscript:v60];
                  v81 = [dictionary2 objectForKeyedSubscript:v110];
                  v142[1] = v81;
                  v141[2] = @"PUUID";
                  v82 = [v74 objectForKeyedSubscript:v60];
                  [dictionary3 objectForKeyedSubscript:v82];
                  v84 = v83 = v72;
                  v142[2] = v84;
                  [MEMORY[0x277CBEAC0] dictionaryWithObjects:v142 forKeys:v141 count:3];
                  v85 = v60;
                  v86 = v69;
                  v88 = v87 = v70;
                  [array addObject:v88];

                  v70 = v87;
                  v69 = v86;
                  v60 = v85;

                  v72 = v83;
                  v36 = dictionary2;
                }
              }

              else
              {
                v89 = v111->_logger;
                if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
                {
                  [CSPowerlogDBReader getProcessesForCoalitionID:buf withStartDate:v89 andEndDate:v74 andDeviceBootDate:&v136 andCPURatio:?];
                }
              }
            }

            v69 = [v109 countByEnumeratingWithState:&v119 objects:v143 count:16];
          }

          while (v69);
        }

        v46 = v105;
        v45 = v106;
        v90 = v103;
        v47 = v104;
        v92 = v101;
        v91 = v102;
        if ([array count])
        {
          goto LABEL_56;
        }

        v93 = v111->_logger;
        if (!os_log_type_enabled(v93, OS_LOG_TYPE_INFO))
        {
          goto LABEL_56;
        }

        v139 = 134217984;
        ratioCopy = ratio;
        v94 = "Fail to find a process name with higher than %f CPU ratio";
        v95 = &v139;
        v96 = v93;
        v97 = 12;
        goto LABEL_55;
      }

      v47 = v104;
      v46 = v105;
      v91 = v102;
      v90 = v103;
      v92 = v101;
      v55 = v111;
    }

    else
    {
      v59 = 0.0;
      v47 = v104;
      v46 = v105;
      v91 = v102;
      v90 = v103;
      v92 = v101;
    }

    v98 = v55->_logger;
    v45 = v106;
    if (!os_log_type_enabled(v98, OS_LOG_TYPE_INFO))
    {
LABEL_56:

      goto LABEL_57;
    }

    *buf = 134218240;
    v136 = v59;
    v137 = 2048;
    v138 = 0x403E000000000000;
    v94 = "Total CPU time %f from ProcessMonitor is less than threshold %f";
    v95 = buf;
    v96 = v98;
    v97 = 22;
LABEL_55:
    _os_log_impl(&dword_243DC3000, v96, OS_LOG_TYPE_INFO, v94, v95, v97);
    goto LABEL_56;
  }

  v129 = 0u;
  v130 = 0u;
  v127 = 0u;
  v128 = 0u;
  obj = dictionary2;
  v37 = [obj countByEnumeratingWithState:&v127 objects:v149 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v128;
    do
    {
      for (m = 0; m != v38; ++m)
      {
        if (*v128 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v127 + 1) + 8 * m);
        v148[0] = v41;
        v147[0] = @"ProcessName";
        v147[1] = @"PID";
        v42 = [obj objectForKeyedSubscript:v41];
        v148[1] = v42;
        v147[2] = @"PUUID";
        v43 = [dictionary3 objectForKeyedSubscript:v41];
        v148[2] = v43;
        v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v148 forKeys:v147 count:3];
        [array addObject:v44];
      }

      v38 = [obj countByEnumeratingWithState:&v127 objects:v149 count:16];
    }

    while (v38);
    v46 = v105;
    v45 = v106;
    v47 = v104;
    v36 = dictionary2;
  }

  else
  {
    v46 = v105;
    v45 = dateCopy;
    v47 = v104;
  }

  v91 = v102;
  v90 = v103;
  v92 = v101;
LABEL_57:

  return array;
}

- (id)getCPUBasedIntervalListMapWithStartDate:(id)date andEndDate:(id)endDate andAllowListCoalitions:(id)coalitions andDenyListCoalitions:(id)listCoalitions andDaemonOnly:(BOOL)only andMetricType:(int)type
{
  onlyCopy = only;
  v101 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  coalitionsCopy = coalitions;
  listCoalitionsCopy = listCoalitions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v79 = [(CSPowerlogDBReader *)self getMonotonicTime:dateCopy];
  v78 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  if (onlyCopy)
  {
    v85 = onlyCopy;
    v87 = dictionary;
    v17 = endDateCopy;
    v18 = dateCopy;
    v89 = [MEMORY[0x277CBEB58] set];
    v19 = [(PLSQLiteConnection *)self->_conn performQuery:@"select distinct Identifier as bundleId from PLApplicationAgent_EventForward_Application"];
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v20 = [v19 countByEnumeratingWithState:&v94 objects:v100 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v95;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v95 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [*(*(&v94 + 1) + 8 * i) objectForKeyedSubscript:@"bundleId"];
          [v89 addObject:v24];
        }

        v21 = [v19 countByEnumeratingWithState:&v94 objects:v100 count:16];
      }

      while (v21);
    }

    dateCopy = v18;
    endDateCopy = v17;
    dictionary = v87;
    onlyCopy = v85;
  }

  else
  {
    v89 = 0;
  }

  v25 = type - 3;
  if (type - 3) < 6 && ((0x33u >> v25))
  {
    v26 = off_278DF5480[v25];
    v27 = off_278DF54B0[v25];
    v28 = MEMORY[0x277CCACA8];
    [v79 timeIntervalSince1970];
    v30 = v29;
    [v79 timeIntervalSince1970];
    v32 = v31;
    [v78 timeIntervalSince1970];
    v34 = v33;
    [v78 timeIntervalSince1970];
    v36 = v35;
    [v79 timeIntervalSince1970];
    v38 = v37;
    [v78 timeIntervalSince1970];
    v83 = v26;
    v40 = [v28 stringWithFormat:@"        SELECT LaunchdName AS %@, LaunchdCoalitionID AS %@, BundleId AS %@, CASE WHEN timestamp > %f THEN timestamp ELSE %f END AS %@, CASE WHEN timestampEnd < %f THEN timestampEnd ELSE %f END AS %@, %@ AS %@         FROM PLCoalitionAgent_EventInterval_CoalitionInterval WHERE timestampEnd >= %f AND timestamp <= %f", @"LaunchdName", @"LaunchdCoalitionID", @"BundleID", v30, v32, @"TimestampStart", v34, v36, @"TimestampEnd", v27, v26, v38, v39];
    if (coalitionsCopy && [coalitionsCopy count])
    {
      v41 = MEMORY[0x277CCACA8];
      v42 = [coalitionsCopy componentsJoinedByString:{@", "}];
      v43 = [v41 stringWithFormat:@" AND LaunchdName in (%@", v42];
      v44 = [v40 stringByAppendingString:v43];

      v40 = v44;
    }

    v76 = endDateCopy;
    v77 = dateCopy;
    if (listCoalitionsCopy && [listCoalitionsCopy count])
    {
      v45 = MEMORY[0x277CCACA8];
      v46 = [listCoalitionsCopy componentsJoinedByString:{@", "}];
      v47 = [v45 stringWithFormat:@" AND LaunchdName not in (%@", v46];
      v48 = [v40 stringByAppendingString:v47];

      v40 = v48;
    }

    v49 = [v40 stringByAppendingString:@" ORDER by timestamp"];

    v75 = v49;
    [(PLSQLiteConnection *)self->_conn performQuery:v49];
    v90 = 0u;
    v91 = 0u;
    v92 = 0u;
    obj = v93 = 0u;
    v88 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
    if (v88)
    {
      if (v89)
      {
        v50 = onlyCopy;
      }

      else
      {
        v50 = 0;
      }

      v86 = v50;
      v84 = *v91;
      do
      {
        for (j = 0; j != v88; ++j)
        {
          if (*v91 != v84)
          {
            objc_enumerationMutation(obj);
          }

          v52 = *(*(&v90 + 1) + 8 * j);
          if (v86)
          {
            v53 = [*(*(&v90 + 1) + 8 * j) objectForKeyedSubscript:@"BundleID"];
            v54 = [v89 containsObject:v53];

            if (v54)
            {
              continue;
            }
          }

          v55 = MEMORY[0x277CCACA8];
          v56 = [v52 valueForKey:@"LaunchdName"];
          v57 = [v52 valueForKey:@"LaunchdCoalitionID"];
          v58 = [v55 stringWithFormat:@"%@:%@", v56, v57];

          v59 = [CSInterval alloc];
          v60 = MEMORY[0x277CBEAA8];
          v61 = [v52 valueForKey:@"TimestampStart"];
          [v61 doubleValue];
          v62 = [v60 dateWithTimeIntervalSince1970:?];
          v63 = MEMORY[0x277CBEAA8];
          v64 = [v52 valueForKey:@"TimestampEnd"];
          [v64 doubleValue];
          v65 = [v63 dateWithTimeIntervalSince1970:?];
          [v52 valueForKey:v83];
          v67 = v66 = dictionary;
          [v67 doubleValue];
          v68 = [(CSInterval *)v59 initWithStartTime:v62 endTime:v65 value:?];

          dictionary = v66;
          v69 = [v66 objectForKey:v58];

          if (v69)
          {
            v70 = [v66 objectForKeyedSubscript:v58];
            [v70 addInterval:v68];
          }

          else
          {
            v71 = [CSIntervalList alloc];
            v98 = v68;
            v70 = [MEMORY[0x277CBEA60] arrayWithObjects:&v98 count:1];
            v72 = [(CSIntervalList *)v71 initWithIntervals:v70];
            [v66 setObject:v72 forKey:v58];
          }
        }

        v88 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
      }

      while (v88);
    }

    endDateCopy = v76;
    dateCopy = v77;
  }

  else
  {
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
    {
      [CSPowerlogDBReader getCPUBasedIntervalListMapWithStartDate:type andEndDate:logger andAllowListCoalitions:? andDenyListCoalitions:? andDaemonOnly:? andMetricType:?];
    }
  }

  return dictionary;
}

- (id)getUnpluggedIntervalListWithStartDate:(id)date andEndDate:(id)endDate
{
  v55 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v8 = [CSIntervalList alloc];
  v46 = [(CSIntervalList *)v8 initWithIntervals:MEMORY[0x277CBEBF8]];
  v9 = [(CSPowerlogDBReader *)self getMonotonicTime:dateCopy];
  v10 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  v11 = MEMORY[0x277CCACA8];
  [v9 timeIntervalSince1970];
  v13 = v12;
  v47 = v10;
  [v10 timeIntervalSince1970];
  v15 = [v11 stringWithFormat:@"SELECT timestamp, ExternalConnected FROM PLBatteryAgent_EventBackward_Battery WHERE timestamp >= %f - 300 AND timestamp < %f ORDER by timestamp", v13, v14];
  v16 = [(PLSQLiteConnection *)self->_conn performQuery:v15];
  v17 = v9;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v16;
  v18 = [v16 countByEnumeratingWithState:&v50 objects:v54 count:16];
  v19 = v17;
  if (!v18)
  {
    goto LABEL_34;
  }

  v20 = v18;
  v43 = v15;
  v44 = endDateCopy;
  v45 = dateCopy;
  v21 = 0;
  intValue = 1;
  v23 = *v51;
  v49 = v17;
  v19 = v17;
  do
  {
    v24 = 0;
    v25 = v21;
    do
    {
      if (*v51 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v21 = *(*(&v50 + 1) + 8 * v24);

      v26 = [v21 valueForKey:@"ExternalConnected"];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        v28 = MEMORY[0x277CBEAA8];
        v29 = [v21 valueForKey:@"timestamp"];
        [v29 doubleValue];
        v30 = [v28 dateWithTimeIntervalSince1970:?];

        if ([v30 compare:v49] == 1)
        {
          if ([v30 compare:v47] == 1)
          {
            v31 = v47;

            v30 = v31;
          }

          if (!intValue)
          {
            v32 = v46;
            if (![(CSIntervalList *)v46 count])
            {
              goto LABEL_14;
            }

            lastInterval = [(CSIntervalList *)v46 lastInterval];
            endTime = [(CSInterval *)lastInterval endTime];

            if (endTime == v19)
            {
              [(CSInterval *)lastInterval setEndTime:v30];
            }

            else
            {

              v32 = v46;
LABEL_14:
              v35 = [CSInterval alloc];
              if ([v19 compare:v49] == 1)
              {
                v36 = v19;
              }

              else
              {
                v36 = v49;
              }

              lastInterval = [(CSInterval *)v35 initWithStartTime:v36 endTime:v30];
              [(CSIntervalList *)v32 addInterval:lastInterval];
            }
          }
        }

        v37 = [v21 valueForKey:@"ExternalConnected"];
        intValue = [v37 intValue];

        v19 = v30;
      }

      ++v24;
      v25 = v21;
    }

    while (v20 != v24);
    v20 = [obj countByEnumeratingWithState:&v50 objects:v54 count:16];
  }

  while (v20);

  if (!intValue)
  {
    if (![(CSIntervalList *)v46 count])
    {
      goto LABEL_27;
    }

    lastInterval2 = [(CSIntervalList *)v46 lastInterval];
    endTime2 = [(CSInterval *)lastInterval2 endTime];

    if (endTime2 == v19)
    {
      [(CSInterval *)lastInterval2 setEndTime:v47];
    }

    else
    {

LABEL_27:
      v40 = [CSInterval alloc];
      if ([v19 compare:v49] == 1)
      {
        v41 = v19;
      }

      else
      {
        v41 = v49;
      }

      lastInterval2 = [(CSInterval *)v40 initWithStartTime:v41 endTime:v47];
      [(CSIntervalList *)v46 addInterval:lastInterval2];
    }
  }

  endDateCopy = v44;
  dateCopy = v45;
  v15 = v43;
  v17 = v49;
LABEL_34:

  return v46;
}

- (id)getAPWakeIntervalListWithStartDate:(id)date andEndDate:(id)endDate
{
  v50 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  endDateCopy = endDate;
  v8 = [CSIntervalList alloc];
  v44 = [(CSIntervalList *)v8 initWithIntervals:MEMORY[0x277CBEBF8]];
  v9 = [(CSPowerlogDBReader *)self getMonotonicTime:dateCopy];
  v10 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  v11 = MEMORY[0x277CCACA8];
  [v10 timeIntervalSince1970];
  v13 = v12;
  [v9 timeIntervalSince1970];
  v15 = [v11 stringWithFormat:@"SELECT timestamp, Event FROM PLSleepWakeAgent_EventForward_PowerState WHERE timestamp <= %f AND timestamp >= %f ORDER by ID", v13, v14];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    [CSPowerlogDBReader getAPWakeIntervalListWithStartDate:v15 andEndDate:logger];
  }

  v17 = [(PLSQLiteConnection *)self->_conn performQuery:v15];
  if (![v17 count])
  {
    v18 = [[CSInterval alloc] initWithStartTime:v9 endTime:v10];
    [(CSIntervalList *)v44 addInterval:v18];
    goto LABEL_31;
  }

  v18 = v9;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  lastInterval2 = v17;
  v20 = [(CSInterval *)lastInterval2 countByEnumeratingWithState:&v45 objects:v49 count:16];
  if (!v20)
  {
    goto LABEL_30;
  }

  v21 = v20;
  v39 = v17;
  v40 = v15;
  v41 = v9;
  v42 = endDateCopy;
  v43 = dateCopy;
  v22 = *v46;
  v23 = -1;
  do
  {
    v24 = 0;
    v25 = v18;
    do
    {
      if (*v46 != v22)
      {
        objc_enumerationMutation(lastInterval2);
      }

      v26 = *(*(&v45 + 1) + 8 * v24);
      v27 = MEMORY[0x277CBEAA8];
      v28 = [v26 valueForKey:@"timestamp"];
      [v28 doubleValue];
      v18 = [v27 dateWithTimeIntervalSince1970:?];

      if ([(CSInterval *)v18 compare:v10]== 1)
      {
        v29 = v10;

        v18 = v29;
      }

      v30 = [v26 valueForKey:@"Event"];
      [v30 doubleValue];
      v32 = v31;

      v33 = v32 != 0.0;
      if (v23 != -1)
      {
        v33 = v23 == 1;
      }

      if (v33)
      {
        if (![(CSIntervalList *)v44 count])
        {
          goto LABEL_17;
        }

        lastInterval = [(CSIntervalList *)v44 lastInterval];
        endTime = [(CSInterval *)lastInterval endTime];

        if (endTime == v25)
        {
          [(CSInterval *)lastInterval setEndTime:v18];
        }

        else
        {

LABEL_17:
          lastInterval = [[CSInterval alloc] initWithStartTime:v25 endTime:v18];
          [(CSIntervalList *)v44 addInterval:lastInterval];
        }
      }

      v23 = v32 != 4.0;

      ++v24;
      v25 = v18;
    }

    while (v21 != v24);
    v21 = [(CSInterval *)lastInterval2 countByEnumeratingWithState:&v45 objects:v49 count:16];
  }

  while (v21);

  v15 = v40;
  if (v32 == 4.0)
  {
    endDateCopy = v42;
    dateCopy = v43;
    v9 = v41;
    v17 = v39;
  }

  else
  {
    v36 = v44;
    endDateCopy = v42;
    dateCopy = v43;
    v9 = v41;
    v17 = v39;
    if (![(CSIntervalList *)v44 count])
    {
      goto LABEL_26;
    }

    lastInterval2 = [(CSIntervalList *)v44 lastInterval];
    endTime2 = [(CSInterval *)lastInterval2 endTime];

    if (endTime2 == v18)
    {
      [(CSInterval *)lastInterval2 setEndTime:v10];
    }

    else
    {

      v36 = v44;
LABEL_26:
      lastInterval2 = [[CSInterval alloc] initWithStartTime:v18 endTime:v10];
      [(CSIntervalList *)v36 addInterval:lastInterval2];
    }

LABEL_30:
  }

LABEL_31:

  return v44;
}

- (id)getPowerExceptionsRecordsWithStartDate:(id)date andEndDate:(id)endDate
{
  v75 = *MEMORY[0x277D85DE8];
  endDateCopy = endDate;
  v7 = [(CSPowerlogDBReader *)self getMonotonicTime:date];
  v66 = endDateCopy;
  v8 = [(CSPowerlogDBReader *)self getMonotonicTime:endDateCopy];
  v9 = MEMORY[0x277CCACA8];
  v65 = v7;
  [v7 timeIntervalSince1970];
  v11 = v10;
  v64 = v8;
  [v8 timeIntervalSince1970];
  v13 = [v9 stringWithFormat:@"                             SELECT *                             FROM XPCMetrics_CPUViolations_1_2 where timestamp >= %f AND timestamp <= %f", v11, v12];
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v74 = v13;
    _os_log_impl(&dword_243DC3000, logger, OS_LOG_TYPE_DEFAULT, " getPowerExceptionsRecordsWithStartDate Query %@", buf, 0xCu);
  }

  v63 = v13;
  v15 = [(PLSQLiteConnection *)self->_conn performQuery:v13];
  array = [MEMORY[0x277CBEB18] array];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v16 = v15;
  v17 = [v16 countByEnumeratingWithState:&v68 objects:v72 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v69;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v69 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v68 + 1) + 8 * i);
        v22 = [v21 objectForKeyedSubscript:@"PUUID"];
        if (v22)
        {
          v23 = v22;
          v24 = [v21 objectForKeyedSubscript:@"PUUID"];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v26 = [v21 objectForKeyedSubscript:@"MitigationType"];
            if (v26)
            {
              v27 = v26;
              v28 = [v21 objectForKeyedSubscript:@"MitigationType"];
              objc_opt_class();
              v29 = objc_opt_isKindOfClass();

              if (v29)
              {
                v30 = [v21 objectForKeyedSubscript:@"MitigationReason"];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v21 objectForKeyedSubscript:@"MitigationReason"];
                  objc_opt_class();
                  v33 = objc_opt_isKindOfClass();

                  if (v33)
                  {
                    v34 = [v21 objectForKeyedSubscript:@"FatalCount"];
                    if (v34)
                    {
                      v35 = v34;
                      v36 = [v21 objectForKeyedSubscript:@"FatalCount"];
                      objc_opt_class();
                      v37 = objc_opt_isKindOfClass();

                      if (v37)
                      {
                        v38 = [v21 objectForKeyedSubscript:@"NonFatalCount"];
                        if (v38)
                        {
                          v39 = v38;
                          v40 = [v21 objectForKeyedSubscript:@"NonFatalCount"];
                          objc_opt_class();
                          v41 = objc_opt_isKindOfClass();

                          if (v41)
                          {
                            v42 = [v21 objectForKeyedSubscript:@"PID"];
                            if (v42)
                            {
                              v43 = v42;
                              v44 = [v21 objectForKeyedSubscript:@"PID"];
                              objc_opt_class();
                              v45 = objc_opt_isKindOfClass();

                              if (v45)
                              {
                                v46 = [v21 objectForKeyedSubscript:@"CoalitionID"];
                                if (v46)
                                {
                                  v47 = v46;
                                  v48 = [v21 objectForKeyedSubscript:@"CoalitionID"];
                                  objc_opt_class();
                                  v49 = objc_opt_isKindOfClass();

                                  if (v49)
                                  {
                                    v50 = [v21 objectForKeyedSubscript:@"timestampEnd"];
                                    if (v50)
                                    {
                                      v51 = v50;
                                      v52 = [v21 objectForKeyedSubscript:@"timestampEnd"];
                                      objc_opt_class();
                                      v53 = objc_opt_isKindOfClass();

                                      if (v53)
                                      {
                                        v54 = [v21 objectForKeyedSubscript:@"TimeWindowSize"];
                                        if (v54)
                                        {
                                          v55 = v54;
                                          v56 = [v21 objectForKeyedSubscript:@"TimeWindowSize"];
                                          objc_opt_class();
                                          v57 = objc_opt_isKindOfClass();

                                          if (v57)
                                          {
                                            v58 = [v21 objectForKeyedSubscript:@"IssueType"];
                                            if (v58)
                                            {
                                              v59 = v58;
                                              v60 = [v21 objectForKeyedSubscript:@"IssueType"];
                                              objc_opt_class();
                                              v61 = objc_opt_isKindOfClass();

                                              if (v61)
                                              {
                                                [array addObject:v21];
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v68 objects:v72 count:16];
    }

    while (v18);
  }

  return array;
}

- (id)getMonotonicTime:(id)time
{
  timeCopy = time;
  v5 = MEMORY[0x277CCACA8];
  [timeCopy timeIntervalSince1970];
  v7 = [v5 stringWithFormat:@"SELECT system FROM PLStorageOperator_EventForward_TimeOffset WHERE timestamp + system <= %f ORDER BY timestamp DESC LIMIT 1", v6];;
  v8 = [(PLSQLiteConnection *)self->_conn performQuery:v7];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 objectForKeyedSubscript:@"system"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [timeCopy dateByAddingTimeInterval:-v12];
LABEL_3:
    v14 = v13;
    goto LABEL_6;
  }

  v15 = MEMORY[0x277CCACA8];
  [timeCopy timeIntervalSince1970];
  v17 = [v15 stringWithFormat:@"SELECT system FROM PLStorageOperator_EventForward_TimeOffset WHERE timestamp + system > %f ORDER BY timestamp LIMIT 1", v16];;
  v18 = [(PLSQLiteConnection *)self->_conn performQuery:v17];
  if (![v18 count])
  {

    v13 = timeCopy;
    goto LABEL_3;
  }

  v19 = [v18 objectAtIndexedSubscript:0];
  v20 = [v19 objectForKeyedSubscript:@"system"];
  [v20 doubleValue];
  v22 = v21;

  v14 = [timeCopy dateByAddingTimeInterval:-v22];

LABEL_6:

  return v14;
}

- (id)getSystemTime:(id)time
{
  timeCopy = time;
  v5 = MEMORY[0x277CCACA8];
  [timeCopy timeIntervalSince1970];
  v7 = [v5 stringWithFormat:@"SELECT system FROM PLStorageOperator_EventForward_TimeOffset WHERE timestamp <= %f ORDER BY timestamp DESC LIMIT 1", v6];;
  v8 = [(PLSQLiteConnection *)self->_conn performQuery:v7];
  if ([v8 count])
  {
    v9 = [v8 objectAtIndexedSubscript:0];
    v10 = [v9 objectForKeyedSubscript:@"system"];
    [v10 doubleValue];
    v12 = v11;

    v13 = [timeCopy dateByAddingTimeInterval:v12];
LABEL_3:
    v14 = v13;
    goto LABEL_6;
  }

  v15 = MEMORY[0x277CCACA8];
  [timeCopy timeIntervalSince1970];
  v17 = [v15 stringWithFormat:@"SELECT system FROM PLStorageOperator_EventForward_TimeOffset WHERE timestamp > %f ORDER BY timestamp LIMIT 1", v16];;
  v18 = [(PLSQLiteConnection *)self->_conn performQuery:v17];
  if (![v18 count])
  {

    v13 = timeCopy;
    goto LABEL_3;
  }

  v19 = [v18 objectAtIndexedSubscript:0];
  v20 = [v19 objectForKeyedSubscript:@"system"];
  [v20 doubleValue];
  v22 = v21;

  v14 = [timeCopy dateByAddingTimeInterval:v22];

LABEL_6:

  return v14;
}

- (id)getDeviceBootTime
{
  if (getDeviceBootTime_onceToken != -1)
  {
    [CSPowerlogDBReader getDeviceBootTime];
  }

  v3 = getDeviceBootTime_bootTime;

  return v3;
}

void __39__CSPowerlogDBReader_getDeviceBootTime__block_invoke()
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 0;
  v3 = 0;
  *v5 = 0x1500000001;
  v4 = 16;
  if (sysctl(v5, 2u, &v2, &v4, 0, 0) != -1)
  {
    v0 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v3 / 1000000.0 + v2];
    v1 = getDeviceBootTime_bootTime;
    getDeviceBootTime_bootTime = v0;
  }
}

- (void)getProcessesForCoalitionID:(void *)a3 withStartDate:(void *)a4 andEndDate:andDeviceBootDate:andCPURatio:.cold.1(_DWORD *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = [a3 objectForKeyedSubscript:@"ProcessName"];
  *a1 = 138412290;
  *a4 = v8;
  OUTLINED_FUNCTION_0_1(&dword_243DC3000, v9, v10, "Fail to get last PID for process name %@");
}

- (void)getCPUBasedIntervalListMapWithStartDate:(int)a1 andEndDate:(NSObject *)a2 andAllowListCoalitions:andDenyListCoalitions:andDaemonOnly:andMetricType:.cold.1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "Unrecognized metric type passed to getCPUBasedIntervalListMapWithStartDate: %u", v2, 8u);
}

- (void)getAPWakeIntervalListWithStartDate:(uint64_t)a1 andEndDate:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_243DC3000, a2, OS_LOG_TYPE_DEBUG, "getAPWakeIntervalListWithStartDate Query:%@", &v2, 0xCu);
}

@end