@interface PLPMUMetricsAgent
+ (BOOL)isEnabled;
+ (id)buckNames;
+ (void)load;
- (PLPMUMetricsAgent)init;
- (id)getBuckNameFromProperty:(unsigned int)property;
- (void)connectToRailEnergyService;
- (void)initOperatorDependancies;
- (void)parseAndLogRailEnergyMetrics:(unsigned int)metrics withEntryDate:(id)date;
- (void)triggerRailEnergyLogging;
@end

@implementation PLPMUMetricsAgent

- (void)triggerRailEnergyLogging
{
  v3 = PLLogPMUMetrics();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "Triggered RailEnergy logging", v6, 2u);
  }

  [(PLPMUMetricsAgent *)self connectToRailEnergyService];
  if (self->_railEnergyPMUConn)
  {
    monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
    v5 = 211;
    do
    {
      [(PLPMUMetricsAgent *)self parseAndLogRailEnergyMetrics:v5 withEntryDate:monotonicDate];
      v5 = (v5 + 1);
    }

    while (v5 != 222);
    [(PLPMUMetricsAgent *)self setLastEntryDate:monotonicDate];
  }
}

- (void)connectToRailEnergyService
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_railEnergyPMUConn)
  {
    return;
  }

  v3 = IOServiceNameMatching("railenergypmu");
  if (!v3)
  {
    v8 = PLLogPMUMetrics();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(v12[0]) = 0;
    v9 = "Could not find object for railenergypmu";
LABEL_16:
    v10 = v8;
    v11 = 2;
    goto LABEL_17;
  }

  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD28A0], v3);
  if (!MatchingService)
  {
    v8 = PLLogPMUMetrics();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    LOWORD(v12[0]) = 0;
    v9 = "Could not find matching service for railenergypmu";
    goto LABEL_16;
  }

  v5 = MatchingService;
  v6 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &self->_railEnergyPMUConn);
  if (v6)
  {
    v7 = v6;
    v8 = PLLogPMUMetrics();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12[0] = 67109120;
      v12[1] = v7;
      v9 = "Could not create connection to railenergypmu service, ret: 0x%x";
      v10 = v8;
      v11 = 8;
LABEL_17:
      _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, v9, v12, v11);
    }

LABEL_10:

    return;
  }

  IOObjectRelease(v5);
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLPMUMetricsAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

- (PLPMUMetricsAgent)init
{
  v6.receiver = self;
  v6.super_class = PLPMUMetricsAgent;
  v2 = [(PLAgent *)&v6 init];
  v3 = v2;
  if (v2)
  {
    railEnergyTimer = v2->_railEnergyTimer;
    v2->_railEnergyTimer = 0;
  }

  return v3;
}

- (void)initOperatorDependancies
{
  monotonicDate = [MEMORY[0x277CBEAA8] monotonicDate];
  [(PLPMUMetricsAgent *)self setLastEntryDate:monotonicDate];

  v4 = objc_alloc(MEMORY[0x277D3F250]);
  date = [MEMORY[0x277CBEAA8] date];
  workQueue = [(PLOperator *)self workQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__PLPMUMetricsAgent_initOperatorDependancies__block_invoke;
  v9[3] = &unk_278259C40;
  v9[4] = self;
  v7 = [v4 initWithFireDate:date withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v9 withQueue:300.0 withBlock:0.0];
  [(PLPMUMetricsAgent *)self setRailEnergyTimer:v7];

  railEnergyTimer = [(PLPMUMetricsAgent *)self railEnergyTimer];
  [railEnergyTimer arm];
}

- (void)parseAndLogRailEnergyMetrics:(unsigned int)metrics withEntryDate:(id)date
{
  v4 = *&metrics;
  input[1] = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v7 = objc_autoreleasePoolPush();
  input[0] = v4;
  v52 = 0x2000;
  v8 = IOConnectCallMethod(self->_railEnergyPMUConn, 2u, input, 1u, 0, 0, 0, 0, outputStruct, &v52);
  v48 = v4;
  if (v8)
  {
    v9 = v8;
    v10 = PLLogPMUMetrics();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109376;
      *v54 = v9;
      *&v54[4] = 1024;
      *&v54[6] = v48;
      _os_log_error_impl(&dword_21A4C6000, v10, OS_LOG_TYPE_ERROR, "Could not call getProperty for railenergypmu service, ret: 0x%x, property: 0x%x", buf, 0xEu);
    }

    goto LABEL_42;
  }

  v44 = v7;
  v11 = [(PLPMUMetricsAgent *)self getBuckNameFromProperty:v4];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v46 = v11;
  [dictionary setObject:v11 forKeyedSubscript:@"Rail"];
  v49 = dictionary;
  v45 = dateCopy;
  [dictionary setObject:dateCopy forKeyedSubscript:@"timestampEnd"];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = &unk_282C136C8;
  selfCopy = self;
  while (1)
  {
    v50 = v15;
    v51 = v18;
    v19 = [(PLPMUMetricsAgent *)self getEnergy:outputStruct withIndex:v16];
    v20 = [(PLPMUMetricsAgent *)self getTimestamp:outputStruct withIndex:v16];
    v21 = v48;
    v22 = v48 == 221 ? v20 / 0xF4240 : v20;
    if (v16)
    {
      break;
    }

    v24 = 0x277CCA000;
LABEL_23:
    v27 = v19;
    if (v21 != 221)
    {
      v27 = (v19 - v13) / 0x3E8 / (v22 - v14);
    }

    v28 = [*(v24 + 2992) numberWithUnsignedLongLong:v27];
    v29 = [*(v24 + 2992) numberWithUnsignedLongLong:v22];
    if (!v16)
    {
      [v49 setObject:v29 forKeyedSubscript:@"TimeSinceBootStart"];
    }

    v30 = (v17 + 1);
    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%d", @"P", v30];
    [v49 setObject:v28 forKeyedSubscript:v31];
    v32 = [*(v24 + 2992) numberWithUnsignedLongLong:v22];

    v33 = [*(v24 + 2992) numberWithUnsignedInt:v17];

    v34 = PLLogPMUMetrics();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138413058;
      *v54 = v46;
      *&v54[8] = 2112;
      *v55 = v28;
      *&v55[8] = 2048;
      *&v55[10] = v19;
      v56 = 2048;
      v57 = v22;
      _os_log_debug_impl(&dword_21A4C6000, v34, OS_LOG_TYPE_DEBUG, "%@: power = %@, energy = %llu, timestamp = %llu", buf, 0x2Au);
    }

    v16 = (v16 + 16);
    v13 = v19;
    v14 = v22;
    v15 = v32;
    v18 = v33;
    v17 = v30;
    self = selfCopy;
    if (v30 == 512)
    {
      goto LABEL_35;
    }
  }

  if (v48 != 212)
  {
    if (v22 < v14 || v22 > v14 + 1)
    {
      v35 = PLLogPMUMetrics();
      if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_34;
      }

      *buf = 138412546;
      *v54 = v46;
      *&v54[8] = 1024;
      *v55 = v17;
      v36 = "%@: reached the end of buffer at entry %d";
      v37 = v35;
      v38 = 18;
      goto LABEL_44;
    }

    goto LABEL_19;
  }

  v23 = v20;
  if (v20 >= v14 - 50 && v20 <= v14 + 50 && v20)
  {
LABEL_19:
    v24 = 0x277CCA000uLL;
    if (v22 == v14)
    {
      v26 = PLLogPMUMetrics();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412802;
        *v54 = v46;
        *&v54[8] = 2048;
        *v55 = v14;
        *&v55[8] = 1024;
        *&v55[10] = v17;
        _os_log_debug_impl(&dword_21A4C6000, v26, OS_LOG_TYPE_DEBUG, "%@: manually increment timestamp %llu at entry %d", buf, 0x1Cu);
      }

      v22 = v14 + 1;
      v21 = v48;
    }

    goto LABEL_23;
  }

  v35 = PLLogPMUMetrics();
  if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_34;
  }

  *buf = 138412802;
  *v54 = v46;
  *&v54[8] = 1024;
  *v55 = v17;
  *&v55[4] = 2048;
  *&v55[6] = v23;
  v36 = "%@: reached the end of buffer at entry %d due to timestamp jump %llu";
  v37 = v35;
  v38 = 28;
LABEL_44:
  _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, v36, buf, v38);
LABEL_34:
  v32 = v50;
  v33 = v51;

LABEL_35:
  if (v32)
  {
    [v49 setObject:v32 forKeyedSubscript:@"TimeSinceBootEnd"];
  }

  intValue = [v33 intValue];
  v40 = v33;
  v7 = v44;
  dateCopy = v45;
  v10 = v46;
  if (intValue >= 1)
  {
    v41 = v40;
    [v49 setObject:? forKeyedSubscript:?];
    v42 = PLLogPMUMetrics();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412546;
      *v54 = v46;
      *&v54[8] = 2112;
      *v55 = v49;
      _os_log_debug_impl(&dword_21A4C6000, v42, OS_LOG_TYPE_DEBUG, "PMUMetricsStatic: rail = %@, payload = %@", buf, 0x16u);
    }

    lastEntryDate = [(PLPMUMetricsAgent *)self lastEntryDate];
    [(PLOperator *)self logForSubsystem:@"PMUMetrics" category:@"RailEnergy" data:v49 date:lastEntryDate];

    v40 = v41;
  }

LABEL_42:
  objc_autoreleasePoolPop(v7);
}

- (id)getBuckNameFromProperty:(unsigned int)property
{
  v4 = +[PLPMUMetricsAgent buckNames];
  v5 = [v4 objectAtIndexedSubscript:property - 211];

  return v5;
}

+ (id)buckNames
{
  if (qword_2811F6D58 != -1)
  {
    dispatch_once(&qword_2811F6D58, &__block_literal_global_49_0);
  }

  v3 = qword_2811F6D50;

  return v3;
}

void __30__PLPMUMetricsAgent_buckNames__block_invoke()
{
  v0 = qword_2811F6D50;
  qword_2811F6D50 = &unk_282C16BD8;
}

+ (BOOL)isEnabled
{
  if (![MEMORY[0x277D3F208] isiPhone] || objc_msgSend(MEMORY[0x277D3F208], "kPLDeviceClass") <= 102051)
  {
    deviceBootArgs = PLLogPMUMetrics();
    if (os_log_type_enabled(deviceBootArgs, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v7 = "RailEnergy not available on this platform";
      v8 = buf;
      goto LABEL_15;
    }

LABEL_10:
    v5 = 0;
    goto LABEL_11;
  }

  if (([MEMORY[0x277D3F208] hasAOP] & 1) == 0)
  {
    deviceBootArgs = PLLogPMUMetrics();
    if (os_log_type_enabled(deviceBootArgs, OS_LOG_TYPE_ERROR))
    {
      v10 = 0;
      v7 = "RailEnergy not available on devices without AOP";
      v8 = &v10;
LABEL_15:
      _os_log_error_impl(&dword_21A4C6000, deviceBootArgs, OS_LOG_TYPE_ERROR, v7, v8, 2u);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  deviceBootArgs = [MEMORY[0x277D3F258] deviceBootArgs];
  v3 = [deviceBootArgs containsString:@"rail-energy-in-pocket=0"];
  if (v3)
  {
    v4 = PLLogPMUMetrics();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_ERROR, "RailEnergy disabled in device boot-args", v9, 2u);
    }
  }

  v5 = v3 ^ 1;
LABEL_11:

  return v5;
}

@end