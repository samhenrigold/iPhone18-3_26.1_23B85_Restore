@interface NWActivitySuperMetric
+ (unsigned)limitForFragmentType:(int)type;
+ (void)flattenObject:(id)object intoDictionary:(id)dictionary atPath:(id)path;
- (NSDictionary)dictionaryRepresentation;
- (NWActivitySuperMetric)init;
@end

@implementation NWActivitySuperMetric

- (NWActivitySuperMetric)init
{
  v10.receiver = self;
  v10.super_class = NWActivitySuperMetric;
  v2 = [(NWActivitySuperMetric *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setConnectionReports:v3];

    v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setTaskMetrics:v4];

    v5 = objc_alloc_init(MEMORY[0x277CBEAC0]);
    [(NWActivitySuperMetric *)v2 setAlgosScore:v5];

    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setWifiFragments:v6];

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setCellularFragments:v7];

    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [(NWActivitySuperMetric *)v2 setClientFragments:v8];
  }

  return v2;
}

- (NSDictionary)dictionaryRepresentation
{
  v156 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  activity = [(NWActivitySuperMetric *)self activity];
  dictionaryReport = [activity dictionaryReport];
  [NWActivitySuperMetric flattenObject:dictionaryReport intoDictionary:v3 atPath:@"a"];

  activityEpilogue = [(NWActivitySuperMetric *)self activityEpilogue];
  dictionaryReport2 = [activityEpilogue dictionaryReport];
  [NWActivitySuperMetric flattenObject:dictionaryReport2 intoDictionary:v3 atPath:@"e"];

  connectionReports = [(NWActivitySuperMetric *)self connectionReports];
  v9 = [connectionReports count];

  v127 = v3;
  selfCopy = self;
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    connectionReports2 = [(NWActivitySuperMetric *)self connectionReports];
    v12 = [v10 initWithCapacity:{objc_msgSend(connectionReports2, "count")}];

    v147 = 0u;
    v148 = 0u;
    v145 = 0u;
    v146 = 0u;
    connectionReports3 = [(NWActivitySuperMetric *)self connectionReports];
    v14 = [connectionReports3 countByEnumeratingWithState:&v145 objects:v155 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = 0;
      v17 = *v146;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v146 != v17)
          {
            objc_enumerationMutation(connectionReports3);
          }

          v19 = *(*(&v145 + 1) + 8 * i);
          v20 = [NWActivitySuperMetric limitForFragmentType:4];
          if (v16 > v20)
          {
            v23 = activityLogHandle(v20);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
            {
              connectionReports4 = [(NWActivitySuperMetric *)selfCopy connectionReports];
              v25 = [connectionReports4 count];
              *buf = 134217984;
              v154 = v25;
              _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_INFO, "Reached max connection fragments, dropping the rest (count %lu)", buf, 0xCu);
            }

            goto LABEL_21;
          }

          dictionaryReport3 = [v19 dictionaryReport];
          if (dictionaryReport3)
          {
            [v12 addObject:dictionaryReport3];
            v16 = (v16 + 1);
          }

          else
          {
            v22 = activityLogHandle(0);
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v154 = v19;
              _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
            }
          }
        }

        v15 = [connectionReports3 countByEnumeratingWithState:&v145 objects:v155 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 0;
    }

LABEL_21:

    v3 = v127;
    [v127 setObject:v12 forKeyedSubscript:@"connectionReports"];

    self = selfCopy;
  }

  else
  {
    v16 = 0;
  }

  v26 = [MEMORY[0x277CCABB0] numberWithInt:v16];
  [v3 setObject:v26 forKeyedSubscript:@"connectionReportsCount"];

  taskMetrics = [(NWActivitySuperMetric *)self taskMetrics];
  v28 = [taskMetrics count];

  if (v28)
  {
    v29 = objc_alloc(MEMORY[0x277CBEB18]);
    taskMetrics2 = [(NWActivitySuperMetric *)self taskMetrics];
    v31 = [v29 initWithCapacity:{objc_msgSend(taskMetrics2, "count")}];

    v143 = 0u;
    v144 = 0u;
    v141 = 0u;
    v142 = 0u;
    taskMetrics3 = [(NWActivitySuperMetric *)self taskMetrics];
    v33 = [taskMetrics3 countByEnumeratingWithState:&v141 objects:v152 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = 0;
      v36 = *v142;
      while (2)
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v142 != v36)
          {
            objc_enumerationMutation(taskMetrics3);
          }

          v38 = *(*(&v141 + 1) + 8 * j);
          v39 = [NWActivitySuperMetric limitForFragmentType:3];
          if (v35 > v39)
          {
            v42 = activityLogHandle(v39);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
            {
              taskMetrics4 = [(NWActivitySuperMetric *)selfCopy taskMetrics];
              v44 = [taskMetrics4 count];
              *buf = 134217984;
              v154 = v44;
              _os_log_impl(&dword_23255B000, v42, OS_LOG_TYPE_INFO, "Reached max task fragments, dropping the rest (count %lu)", buf, 0xCu);
            }

            goto LABEL_42;
          }

          dictionaryReport4 = [v38 dictionaryReport];
          if (dictionaryReport4)
          {
            [v31 addObject:dictionaryReport4];
            v35 = (v35 + 1);
          }

          else
          {
            v41 = activityLogHandle(0);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v154 = v38;
              _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
            }
          }
        }

        v34 = [taskMetrics3 countByEnumeratingWithState:&v141 objects:v152 count:16];
        if (v34)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v35 = 0;
    }

LABEL_42:

    v3 = v127;
    [v127 setObject:v31 forKeyedSubscript:@"taskMetrics"];

    self = selfCopy;
  }

  else
  {
    v35 = 0;
  }

  v45 = [MEMORY[0x277CCABB0] numberWithInt:v35];
  [v3 setObject:v45 forKeyedSubscript:@"taskMetricsCount"];

  wifiFragments = [(NWActivitySuperMetric *)self wifiFragments];
  v47 = [wifiFragments count];

  if (!v47)
  {
    v61 = 0;
    goto LABEL_89;
  }

  v49 = activityLogHandle(v48);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEBUG))
  {
    wifiFragments2 = [(NWActivitySuperMetric *)self wifiFragments];
    v51 = [wifiFragments2 count];
    *buf = 134217984;
    v154 = v51;
    _os_log_impl(&dword_23255B000, v49, OS_LOG_TYPE_DEBUG, "Running transform on %lu fragments", buf, 0xCu);
  }

  v52 = objc_alloc(MEMORY[0x277CBEB18]);
  wifiFragments3 = [(NWActivitySuperMetric *)self wifiFragments];
  v126 = [v52 initWithCapacity:{objc_msgSend(wifiFragments3, "count")}];

  wifiFragments4 = [(NWActivitySuperMetric *)self wifiFragments];
  v55 = [wifiFragments4 count];

  if (v55 == 1)
  {
    wifiFragments5 = [(NWActivitySuperMetric *)self wifiFragments];
    firstObject = [wifiFragments5 firstObject];

    if (firstObject)
    {
      v59 = [firstObject getTransformedFlattened:0];
      if (v59)
      {
        v60 = activityLogHandle([v126 addObject:v59]);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_DEBUG, "Single fragment, no transform", buf, 2u);
        }

        v61 = 1;
      }

      else
      {
        v60 = activityLogHandle(0);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v154 = firstObject;
          _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_ERROR, "Failed to transform fragment %@", buf, 0xCu);
        }

        v61 = 0;
      }

LABEL_85:

LABEL_86:
      self = selfCopy;
    }

    else
    {
      v59 = activityLogHandle(v58);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        wifiFragments6 = [(NWActivitySuperMetric *)self wifiFragments];
        *buf = 138412290;
        v154 = wifiFragments6;
        _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_ERROR, "Failed to get single fragment from %@", buf, 0xCu);
      }

      v61 = 0;
    }

    v3 = v127;
    goto LABEL_88;
  }

  v139 = 0u;
  v140 = 0u;
  v137 = 0u;
  v138 = 0u;
  firstObject = [(NWActivitySuperMetric *)self wifiFragments];
  v62 = [firstObject countByEnumeratingWithState:&v137 objects:v151 count:16];
  if (v62)
  {
    v64 = v62;
    dictionaryRepresentation = 0;
    v61 = 0;
    v66 = *v138;
    *&v63 = 67109120;
    v124 = v63;
    obj = firstObject;
LABEL_55:
    v67 = 0;
    v59 = dictionaryRepresentation;
    while (1)
    {
      if (*v138 != v66)
      {
        objc_enumerationMutation(obj);
      }

      v68 = *(*(&v137 + 1) + 8 * v67);
      v124 = [NWActivitySuperMetric limitForFragmentType:5, v124];
      if (v61 > v124)
      {
        v60 = activityLogHandle(v124);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          wifiFragments7 = [(NWActivitySuperMetric *)selfCopy wifiFragments];
          v80 = [wifiFragments7 count];
          *buf = 134217984;
          v154 = v80;
          _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_INFO, "Reached max Wi-Fi fragments, dropping the rest (count %lu)", buf, 0xCu);
        }

        goto LABEL_81;
      }

      if (v59)
      {
        break;
      }

      v70 = activityLogHandle(v124);
      if (os_log_type_enabled(v70, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v154 = v68;
        _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEBUG, "Transforming fragments, skipping initial fragment %@", buf, 0xCu);
      }

LABEL_69:

      awdReport = [v68 awdReport];
      dictionaryRepresentation = [awdReport dictionaryRepresentation];

      if (!dictionaryRepresentation)
      {
        v60 = activityLogHandle(v77);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v154 = v68;
          _os_log_impl(&dword_23255B000, v60, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
        }

LABEL_81:
        firstObject = obj;
        goto LABEL_85;
      }

      ++v67;
      v59 = dictionaryRepresentation;
      if (v64 == v67)
      {
        firstObject = obj;
        v64 = [obj countByEnumeratingWithState:&v137 objects:v151 count:16];
        if (v64)
        {
          goto LABEL_55;
        }

        v59 = dictionaryRepresentation;
        goto LABEL_86;
      }
    }

    v70 = [v68 getTransformedFlattenedFrom:v59 style:0 index:v61];
    if (v70)
    {
      v61 = (v61 + 1);
      v71 = activityLogHandle([v126 addObject:v70]);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_DEBUG))
      {
        *buf = v124;
        LODWORD(v154) = v61;
        v72 = v71;
        v73 = OS_LOG_TYPE_DEBUG;
        v74 = "Transformed fragment %d";
        v75 = 8;
LABEL_67:
        _os_log_impl(&dword_23255B000, v72, v73, v74, buf, v75);
      }
    }

    else
    {
      v71 = activityLogHandle(0);
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v154 = v68;
        v72 = v71;
        v73 = OS_LOG_TYPE_ERROR;
        v74 = "Failed to transform fragment %@";
        v75 = 12;
        goto LABEL_67;
      }
    }

    goto LABEL_69;
  }

  v61 = 0;
  self = selfCopy;
LABEL_88:

  [v3 setObject:v126 forKeyedSubscript:@"wifiFragments"];
LABEL_89:
  v81 = [MEMORY[0x277CCABB0] numberWithInt:v61];
  [v3 setObject:v81 forKeyedSubscript:@"wifiFragmentsCount"];

  cellularFragments = [(NWActivitySuperMetric *)self cellularFragments];
  v83 = [cellularFragments count];

  if (v83)
  {
    v84 = objc_alloc(MEMORY[0x277CBEB18]);
    cellularFragments2 = [(NWActivitySuperMetric *)self cellularFragments];
    v86 = [v84 initWithCapacity:{objc_msgSend(cellularFragments2, "count")}];

    v135 = 0u;
    v136 = 0u;
    v133 = 0u;
    v134 = 0u;
    cellularFragments3 = [(NWActivitySuperMetric *)self cellularFragments];
    v88 = [cellularFragments3 countByEnumeratingWithState:&v133 objects:v150 count:16];
    if (v88)
    {
      v89 = v88;
      v90 = 0;
      v91 = *v134;
      while (2)
      {
        for (k = 0; k != v89; ++k)
        {
          if (*v134 != v91)
          {
            objc_enumerationMutation(cellularFragments3);
          }

          v93 = *(*(&v133 + 1) + 8 * k);
          v94 = [NWActivitySuperMetric limitForFragmentType:6];
          if (v90 > v94)
          {
            v96 = activityLogHandle(v94);
            self = selfCopy;
            if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
            {
              cellularFragments4 = [(NWActivitySuperMetric *)selfCopy cellularFragments];
              v98 = [cellularFragments4 count];
              *buf = 134217984;
              v154 = v98;
              _os_log_impl(&dword_23255B000, v96, OS_LOG_TYPE_INFO, "Reached max cellular fragments, dropping the rest (count %lu)", buf, 0xCu);
            }

            goto LABEL_109;
          }

          if (v93)
          {
            [v86 addObject:v93];
            v90 = (v90 + 1);
          }

          else
          {
            v95 = activityLogHandle(v94);
            if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v154 = 0;
              _os_log_impl(&dword_23255B000, v95, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
            }
          }
        }

        v89 = [cellularFragments3 countByEnumeratingWithState:&v133 objects:v150 count:16];
        self = selfCopy;
        if (v89)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v90 = 0;
    }

LABEL_109:

    v3 = v127;
    [v127 setObject:v86 forKeyedSubscript:@"cellularFragments"];
  }

  else
  {
    v90 = 0;
  }

  v99 = [MEMORY[0x277CCABB0] numberWithInt:v90];
  [v3 setObject:v99 forKeyedSubscript:@"cellularFragmentsCount"];

  clientFragments = [(NWActivitySuperMetric *)self clientFragments];
  v101 = [clientFragments count];

  if (v101)
  {
    v102 = objc_alloc(MEMORY[0x277CBEB18]);
    clientFragments2 = [(NWActivitySuperMetric *)self clientFragments];
    v104 = [v102 initWithCapacity:{objc_msgSend(clientFragments2, "count")}];

    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    clientFragments3 = [(NWActivitySuperMetric *)self clientFragments];
    v106 = [clientFragments3 countByEnumeratingWithState:&v129 objects:v149 count:16];
    if (v106)
    {
      v107 = v106;
      v108 = 0;
      v109 = *v130;
      while (2)
      {
        for (m = 0; m != v107; ++m)
        {
          if (*v130 != v109)
          {
            objc_enumerationMutation(clientFragments3);
          }

          v111 = *(*(&v129 + 1) + 8 * m);
          v112 = [NWActivitySuperMetric limitForFragmentType:7];
          if (v108 > v112)
          {
            v114 = activityLogHandle(v112);
            self = selfCopy;
            if (os_log_type_enabled(v114, OS_LOG_TYPE_INFO))
            {
              clientFragments4 = [(NWActivitySuperMetric *)selfCopy clientFragments];
              v116 = [clientFragments4 count];
              *buf = 134217984;
              v154 = v116;
              _os_log_impl(&dword_23255B000, v114, OS_LOG_TYPE_INFO, "Reached max client fragments, dropping the rest (count %lu)", buf, 0xCu);
            }

            goto LABEL_130;
          }

          if (v111)
          {
            [v104 addObject:v111];
            v108 = (v108 + 1);
          }

          else
          {
            v113 = activityLogHandle(v112);
            if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v154 = 0;
              _os_log_impl(&dword_23255B000, v113, OS_LOG_TYPE_ERROR, "Failed to create fragment for %@", buf, 0xCu);
            }
          }
        }

        v107 = [clientFragments3 countByEnumeratingWithState:&v129 objects:v149 count:16];
        self = selfCopy;
        if (v107)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v108 = 0;
    }

LABEL_130:

    v3 = v127;
    [v127 setObject:v104 forKeyedSubscript:@"clientMetrics"];
  }

  else
  {
    v108 = 0;
  }

  v117 = [MEMORY[0x277CCABB0] numberWithInt:v108];
  [v3 setObject:v117 forKeyedSubscript:@"clientMetricCount"];

  algosScore = [(NWActivitySuperMetric *)self algosScore];
  if (algosScore)
  {
    v119 = algosScore;
    algosScore2 = [(NWActivitySuperMetric *)self algosScore];
    v121 = [algosScore2 count];

    if (v121)
    {
      algosScore3 = [(NWActivitySuperMetric *)self algosScore];
      [v3 setObject:algosScore3 forKeyedSubscript:@"algosScore"];
    }
  }

  return v3;
}

+ (void)flattenObject:(id)object intoDictionary:(id)dictionary atPath:(id)path
{
  v61 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  dictionaryCopy = dictionary;
  pathCopy = path;
  v10 = pathCopy;
  if (!objectCopy || !dictionaryCopy)
  {
    goto LABEL_13;
  }

  if (!pathCopy)
  {
    v13 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 138412290;
    v58 = objectCopy;
    v14 = "Cannot have nil path when flattening, skipping object: %@";
    v15 = v13;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 12;
    goto LABEL_12;
  }

  if (([pathCopy isEqualToString:@"a_deviceReport_batteryAccumulator_durations"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"e_deviceReport_batteryAccumulator_durations"))
  {
    v11 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
LABEL_9:
      [dictionaryCopy setObject:objectCopy forKeyedSubscript:v10];
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (([v10 isEqualToString:@"a_l2Report_queue_stats"] & 1) != 0 || objc_msgSend(v10, "isEqualToString:", @"e_l2Report_queue_stats"))
  {
    v11 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

LABEL_7:
    *buf = 138412546;
    v58 = objectCopy;
    v59 = 2112;
    v60 = v10;
    v12 = "Not flattening object %@ at path %@";
LABEL_8:
    _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, v12, buf, 0x16u);
    goto LABEL_9;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v44 = objectCopy;
    v18 = objectCopy;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    obj = [v18 allKeys];
    v19 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v52;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v52 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(*(&v51 + 1) + 8 * i);
          v24 = [v18 objectForKey:v23];
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            v25 = metricsLogHandle;
            if (os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412546;
              v58 = v23;
              v59 = 2112;
              v60 = v10;
              _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_INFO, "Bad key %@ at path %@", buf, 0x16u);
            }
          }

          v26 = [v10 length];
          v27 = objc_alloc(MEMORY[0x277CCACA8]);
          if (v26)
          {
            v28 = [v27 initWithFormat:@"%@_%@", v10, v23];
          }

          else
          {
            v28 = [v27 initWithFormat:@"%@", v23, v43];
          }

          v29 = v28;
          [self flattenObject:v24 intoDictionary:dictionaryCopy atPath:v28];
        }

        v20 = [obj countByEnumeratingWithState:&v51 objects:v56 count:16];
      }

      while (v20);
    }

    objectCopy = v44;
    goto LABEL_13;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v11 = metricsLogHandle;
      if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_9;
      }

      *buf = 138412546;
      v58 = objectCopy;
      v59 = 2112;
      v60 = v10;
      v12 = "Adding object: %@ into flat dictionary at path %@";
      goto LABEL_8;
    }

    v42 = metricsLogHandle;
    if (!os_log_type_enabled(metricsLogHandle, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    *buf = 138412546;
    v58 = objectCopy;
    v59 = 2112;
    v60 = v10;
    v14 = "Bad value %@ at path %@, ignoring";
    v15 = v42;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
LABEL_12:
    _os_log_impl(&dword_23255B000, v15, v16, v14, buf, v17);
    goto LABEL_13;
  }

  v30 = dictionaryCopy;
  v31 = objectCopy;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v32 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = 0;
    v35 = *v48;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v48 != v35)
        {
          objc_enumerationMutation(v31);
        }

        v37 = *(*(&v47 + 1) + 8 * j);
        v38 = [v10 length];
        v39 = objc_alloc(MEMORY[0x277CCACA8]);
        if (v38)
        {
          v40 = [v39 initWithFormat:@"%@_%zu", v10, v34];
        }

        else
        {
          v40 = [v39 initWithFormat:@"%zu", v34, v43];
        }

        v41 = v40;
        [self flattenObject:v37 intoDictionary:v30 atPath:v40];

        ++v34;
      }

      v33 = [v31 countByEnumeratingWithState:&v47 objects:v55 count:16];
    }

    while (v33);
  }

  dictionaryCopy = v30;
LABEL_13:
}

+ (unsigned)limitForFragmentType:(int)type
{
  if (type > 8)
  {
    return 1;
  }

  else
  {
    return dword_232816C60[type];
  }
}

@end