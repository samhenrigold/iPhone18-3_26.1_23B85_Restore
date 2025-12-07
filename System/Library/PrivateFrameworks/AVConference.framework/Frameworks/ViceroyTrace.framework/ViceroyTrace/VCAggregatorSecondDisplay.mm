@interface VCAggregatorSecondDisplay
- (VCAggregatorSecondDisplay)initWithDelegate:(id)delegate withMode:(unsigned int)mode options:(id)options;
- (id)aggregatedSessionReport;
- (void)addScreenSharingSpecificReportingKeys:(id)keys;
- (void)dealloc;
- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload;
- (void)processRealtimeStats:(id)stats;
- (void)processResiliencyEnablementConfig:(id)config;
- (void)updateReceiverVideoStreamConfiguration:(id)configuration;
- (void)updateSenderVideoStreamConfiguration:(id)configuration;
- (void)updateVideoFECStats:(id)stats;
@end

@implementation VCAggregatorSecondDisplay

- (VCAggregatorSecondDisplay)initWithDelegate:(id)delegate withMode:(unsigned int)mode options:(id)options
{
  v33 = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = VCAggregatorSecondDisplay;
  v7 = [(VCAggregator *)&v20 initWithDelegate:delegate nwParentActivity:0];
  v8 = v7;
  if (v7)
  {
    v7->_aggregatorVideoStreamMode = mode;
    v7->_RBR = [[VCReportingHistogram alloc] initWithType:7 bucketValues:0];
    v8->_TBR = [[VCReportingHistogram alloc] initWithType:6 bucketValues:0];
    v8->_SBR = [[VCReportingHistogram alloc] initWithType:8 bucketValues:0];
    v8->_VST = [[VCReportingHistogram alloc] initWithType:30 bucketValues:0];
    v8->_PLR = [[VCReportingHistogram alloc] initWithType:2 bucketValues:0];
    v8->_BPL = [[VCReportingHistogram alloc] initWithType:37 bucketValues:0];
    v8->_EXT = [[VCReportingHistogram alloc] initWithType:38 bucketValues:0];
    v8->_BWE = [[VCReportingHistogram alloc] initWithType:36 bucketValues:0];
    v8->_VJS = [[VCReportingHistogram alloc] initWithType:40 bucketValues:0];
    v8->_RTT = [[VCReportingHistogram alloc] initWithType:0 bucketValues:0];
    v8->_HEL = [[VCReportingHistogram alloc] initWithType:39 bucketValues:0];
    v8->_minHIDEventLatency = -1;
    if (options)
    {
      v8->super.super._shouldReportLowLatencyInterfaceStatistics = [objc_msgSend(options objectForKeyedSubscript:{@"ReportLowLatencyInterfaceStatistics", "BOOLValue"}];
      if (objc_opt_class() == v8)
      {
        if (VRTraceGetErrorLogLevelForModule("") >= 7)
        {
          v10 = VRTraceErrorLogLevelToCSTR(7u);
          v11 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            shouldReportLowLatencyInterfaceStatistics = v8->super.super._shouldReportLowLatencyInterfaceStatistics;
            *buf = 136315906;
            v22 = v10;
            v23 = 2080;
            v24 = "[VCAggregatorSecondDisplay initWithDelegate:withMode:options:]";
            v25 = 1024;
            v26 = 195;
            v27 = 1024;
            LODWORD(v28) = shouldReportLowLatencyInterfaceStatistics;
            v13 = " [%s] %s:%d _shouldReportLowLatencyInterfaceStatistics=%d";
            v14 = v11;
            v15 = 34;
LABEL_13:
            _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, v13, buf, v15);
          }
        }
      }

      else
      {
        if (objc_opt_respondsToSelector())
        {
          v9 = [(VCAggregatorSecondDisplay *)v8 performSelector:sel_logPrefix];
        }

        else
        {
          v9 = &stru_284F80940;
        }

        if (VRTraceGetErrorLogLevelForModule("") >= 7)
        {
          v16 = VRTraceErrorLogLevelToCSTR(7u);
          v17 = gVRTraceOSLog;
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            v18 = v8->super.super._shouldReportLowLatencyInterfaceStatistics;
            *buf = 136316418;
            v22 = v16;
            v23 = 2080;
            v24 = "[VCAggregatorSecondDisplay initWithDelegate:withMode:options:]";
            v25 = 1024;
            v26 = 195;
            v27 = 2112;
            v28 = v9;
            v29 = 2048;
            v30 = v8;
            v31 = 1024;
            v32 = v18;
            v13 = " [%s] %s:%d %@(%p) _shouldReportLowLatencyInterfaceStatistics=%d";
            v14 = v17;
            v15 = 54;
            goto LABEL_13;
          }
        }
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = VCAggregatorSecondDisplay;
  [(VCAggregatorVideoStream *)&v3 dealloc];
}

- (id)aggregatedSessionReport
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__4;
  v17 = __Block_byref_object_dispose__4;
  v18 = 0;
  stateQueue = self->super.super._stateQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __52__VCAggregatorSecondDisplay_aggregatedSessionReport__block_invoke;
  v12[3] = &unk_278BD4CF8;
  v12[4] = self;
  v12[5] = &v13;
  dispatch_sync(stateQueue, v12);
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR(7u);
    v5 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      aggregatorVideoStreamMode = self->_aggregatorVideoStreamMode;
      v7 = v14[5];
      if (v7)
      {
        v8 = [objc_msgSend(v7 "description")];
      }

      else
      {
        v8 = "<nil>";
      }

      *buf = 136316162;
      v20 = v4;
      v21 = 2080;
      v22 = "[VCAggregatorSecondDisplay aggregatedSessionReport]";
      v23 = 1024;
      v24 = 460;
      v25 = 1024;
      v26 = aggregatorVideoStreamMode;
      v27 = 2080;
      v28 = v8;
      _os_log_impl(&dword_23D4DF000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SecondDisplay: For mode=%u sessionReport=%s", buf, 0x2Cu);
    }
  }

  v9 = v14[5];
  v10 = v14[5];
  _Block_object_dispose(&v13, 8);
  return v10;
}

void *__52__VCAggregatorSecondDisplay_aggregatedSessionReport__block_invoke(void *result)
{
  v99[4] = *MEMORY[0x277D85DE8];
  if (*(result[4] + 1472) != 0.0)
  {
    v1 = result;
    v83 = objc_alloc(MEMORY[0x277CBEB38]);
    v2 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:{(*(v1[4] + 1472) * objc_msgSend(v1[4], "RTPeriod"))}];
    v3 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 216)];
    v4 = [MEMORY[0x277CCABA8] numberWithInt:*(v1[4] + 1540)];
    v5 = [MEMORY[0x277CCABA8] numberWithInt:*(v1[4] + 1544)];
    v6 = [MEMORY[0x277CCABA8] numberWithInt:*(v1[4] + 448)];
    v7 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1756)];
    v8 = [MEMORY[0x277CCABA8] numberWithInt:*(v1[4] + 1552)];
    v9 = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 432)];
    *(*(v1[5] + 8) + 40) = [v83 initWithObjectsAndKeys:{v2, @"DRTN", v3, @"DRCT", v4, @"VW", v5, @"VH", v6, @"TT", v7, @"RTCPTOCNT", v8, @"VCVSConfigHDRMode", &unk_284FA5780, @"RVER", v9, @"RtxRDKScreenSharing", objc_msgSend(MEMORY[0x277CCABA8], "numberWithUnsignedInt:", *(v1[4] + 474)), @"FecRDKScreenSharing", 0}];
    [v1[4] addScreenSharingSpecificReportingKeys:*(*(v1[5] + 8) + 40)];
    v10 = [v1[4] dispatchedAggregatedSessionReport];
    [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(v10 forKeyedSubscript:{"objectForKeyedSubscript:", @"THERMDUR", @"THERMDUR"}];
    [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(v10 forKeyedSubscript:{"objectForKeyedSubscript:", @"PCONFQ", @"PCONFQ"}];
    [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(v10 forKeyedSubscript:{"objectForKeyedSubscript:", @"PCONP", @"PCONP"}];
    v11 = [v1[4] previousChannelSequence];
    v12 = v1[4];
    if (v11)
    {
      v13 = [v12 previousChannelSequence];
      v14 = &OBJC_IVAR___VCAggregatorSecondDisplay__previousChannelSequenceStats;
    }

    else
    {
      v13 = [v12 channelSequence];
      v14 = &OBJC_IVAR___VCAggregatorSecondDisplay__channelSequenceStats;
    }

    v15 = v1[4];
    if (v13)
    {
      v16 = &v15[*v14];
      [*(*(v1[5] + 8) + 40) setObject:v13 forKeyedSubscript:@"CHSEQ"];
      [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v16[1]), @"5GCHCNT"}];
      [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *v16), @"24GCHCNT"}];
      [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v16[2]), @"DFSCHCNT"}];
      [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", v16[3]), @"INSLCNT"}];
      v15 = v1[4];
    }

    [v15 addLowLatencyInterfaceStatisticsToPayload:*(*(v1[5] + 8) + 40)];
    v17 = v1[4];
    v18 = *(v17 + 1944);
    if (v18)
    {
      [*(*(v1[5] + 8) + 40) setObject:v18 forKeyedSubscript:@"REMFWVER"];
      v17 = v1[4];
    }

    v19 = *(v17 + 1936);
    if (v19)
    {
      [*(*(v1[5] + 8) + 40) setObject:v19 forKeyedSubscript:@"REMOSVER"];
      v17 = v1[4];
    }

    if (*(v17 + 1944))
    {
      [*(*(v1[5] + 8) + 40) setObject:*(v17 + 1952) forKeyedSubscript:@"REMMDL"];
      v17 = v1[4];
    }

    [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *(v17 + 1564)), @"FOVE"}];
    v20 = v1[4];
    v21 = *(v20 + 232);
    if (v21)
    {
      [*(*(v1[5] + 8) + 40) setObject:v21 forKeyedSubscript:@"CallID"];
      v20 = v1[4];
    }

    [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithInt:", *(v20 + 1144) == 0), @"MSSuccess"}];
    [*(*(v1[5] + 8) + 40) setObject:objc_msgSend(MEMORY[0x277CCABA8] forKeyedSubscript:{"numberWithUnsignedInt:", *(v1[4] + 1144)), @"MSEndReason"}];
    v22 = v1[4];
    v23 = v22[184];
    v24 = (v23 * [v22 RTPeriod]);
    v26 = v1[4];
    if (*(v26 + 216) == 2)
    {
      if (v24)
      {
        v27 = (*(v26 + 1488) / v24 * 10000.0);
      }

      else
      {
        v27 = 0;
      }

      v32 = *(v26 + 1472);
      if (v32 == 0.0)
      {
        v33 = 0;
        v34 = 0;
      }

      else
      {
        v33 = (*(v26 + 1508) / v32);
        v34 = (*(v26 + 1512) / v32);
      }

      v46 = *(*(v1[5] + 8) + 40);
      v98[0] = @"VSP";
      v99[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v27];
      v98[1] = @"ARFR";
      v99[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v33];
      v98[2] = @"ARBR";
      v99[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v34];
      v98[3] = @"RBR";
      v99[3] = [*(v1[4] + 1784) description];
      [v46 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v99, v98, 4)}];
      [v1[4] addFECStatsHolderKPIs:*(*(v1[5] + 8) + 40) usingFECStatsHolder:*(v1[4] + 1168)];
      v48 = v1[4];
      v49 = *(v48 + 1504);
      if (v49)
      {
        HIDWORD(v47) = 1083129856;
        v50 = (*(v48 + 1488) / v49 * 1000.0);
        if (v24)
        {
LABEL_32:
          v47 = v24;
          v51 = (*(v48 + 1536) * 1000.0 / v24);
          v52 = (*(v48 + 1740) / v24);
          v53 = (*(v48 + 1744) / v24);
          v54 = (*(v48 + 1748) / v24);
          v55 = (*(v48 + 1752) / v24);
          goto LABEL_38;
        }
      }

      else
      {
        v50 = 0;
        if (v24)
        {
          goto LABEL_32;
        }
      }

      v51 = 0;
      v54 = 0.0;
      v52 = 0.0;
      v53 = 0.0;
      v55 = 0.0;
LABEL_38:
      v61 = *(v48 + 1764);
      if (v61)
      {
        v47 = v61;
        v62 = (*(v48 + 1768) * 1000.0 / v61);
        if (v24)
        {
LABEL_40:
          v86 = *(v48 + 1704) / v24;
LABEL_43:
          v63 = *(v48 + 1472);
          if (v63 == 0.0)
          {
            v64 = 0;
          }

          else
          {
            LODWORD(v47) = *(v48 + 1680);
            v63 = *&v47 * 1000.0 / v63;
            v64 = v63;
          }

          v65 = *(v48 + 1760);
          if (v65)
          {
            LODWORD(v63) = *(v48 + 1776);
            v66 = (*&v63 * 10000.0 / v65);
          }

          else
          {
            v66 = 0;
          }

          v67 = *(*(v1[5] + 8) + 40);
          v96[0] = @"AVSI";
          v97[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v50];
          v96[1] = @"VS";
          v97[1] = [*(v1[4] + 1808) description];
          v96[2] = @"VSTCNT";
          v97[2] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1504)];
          v96[3] = @"MVSI";
          v97[3] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:(*(v1[4] + 1496) * 1000.0)];
          v96[4] = @"VRFR";
          v97[4] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v52];
          v96[5] = @"VREFR";
          v97[5] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v53];
          v96[6] = @"VRRFR";
          v97[6] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v54];
          v96[7] = @"VRExFR";
          v97[7] = [MEMORY[0x277CCACA0] stringWithFormat:@"%.2f", *&v55];
          v96[8] = @"AFIRFR";
          v97[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v51];
          v96[9] = @"VPBEVALPD";
          v97[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v62];
          v96[10] = @"PEVFR";
          v97[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v66];
          v96[11] = @"VMFRERC";
          v97[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1684)];
          v96[12] = @"VAFRERC";
          v97[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v64];
          v96[13] = @"MVSTCT";
          v97[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1688)];
          v96[14] = @"MNVFR";
          v97[14] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1692)];
          v96[15] = @"VRDFR";
          v97[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v86];
          [v67 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v97, v96, 16)}];
          v70 = v1[4];
          v71 = *(v70 + 1716);
          if (v71)
          {
            v72 = *(v70 + 1720) / v71;
          }

          else
          {
            v72 = 0;
          }

          v73 = *(v70 + 1728);
          if (v73 == -1)
          {
            v74 = 0;
          }

          else
          {
            v74 = v73;
          }

          v75 = *(v70 + 1472);
          v76 = 0.0;
          v77 = 0.0;
          if (v75 != 0.0)
          {
            LODWORD(v68) = *(v70 + 1632);
            v77 = v68 / v75;
          }

          if (v24)
          {
            v69 = v24;
            v76 = *(v70 + 1640) * 10000.0 / v24;
          }

          if (v75 == 0.0)
          {
            v78 = 0;
            v79 = 0.0;
            v80 = 0.0;
          }

          else
          {
            LODWORD(v69) = *(v70 + 1628);
            v78 = (*&v69 / v75);
            v79 = *(v70 + 1648) / v75;
            v80 = *(v70 + 1664) / v75;
          }

          v81 = *(*(v1[5] + 8) + 40);
          v94[0] = @"ARRFD";
          v94[1] = @"MRRFD";
          v95[0] = @"N/A";
          v95[1] = @"N/A";
          v94[2] = @"ARRPD";
          v94[3] = @"MRRPD";
          v95[2] = @"N/A";
          v95[3] = @"N/A";
          v94[4] = @"AVRFD";
          v94[5] = @"MVRFD";
          v95[4] = @"N/A";
          v95[5] = @"N/A";
          v94[6] = @"AVRPD";
          v94[7] = @"MVRPD";
          v95[6] = @"N/A";
          v95[7] = @"N/A";
          v94[8] = @"MINHEL";
          v95[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v74];
          v94[9] = @"MAXHEL";
          v95[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1724)];
          v94[10] = @"AHEL";
          v95[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v72];
          v94[11] = @"HEL";
          v95[11] = [*(v1[4] + 1864) description];
          v94[12] = @"HELSCNT";
          v95[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1716)];
          v94[13] = @"AJBSCH";
          v95[13] = [MEMORY[0x277CCABA8] numberWithDouble:v77];
          v94[14] = @"PJBQZ";
          v95[14] = [MEMORY[0x277CCABA8] numberWithDouble:v76];
          v94[15] = @"MJBL";
          v95[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1656)];
          v94[16] = @"JBQS";
          v95[16] = [*(v1[4] + 1848) description];
          v94[17] = @"AJBL";
          v95[17] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v78];
          v94[18] = @"AVPO";
          v95[18] = [MEMORY[0x277CCABA8] numberWithDouble:v80];
          v94[19] = @"MVPO";
          v95[19] = [MEMORY[0x277CCABA8] numberWithDouble:*(v1[4] + 1672)];
          v94[20] = @"TWJBL";
          v95[20] = [MEMORY[0x277CCABA8] numberWithDouble:v79];
          v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v95 forKeys:v94 count:21];
          v60 = v81;
          return [v60 addEntriesFromDictionary:v59];
        }
      }

      else
      {
        v62 = 0;
        if (v24)
        {
          goto LABEL_40;
        }
      }

      v86 = 0;
      goto LABEL_43;
    }

    v28 = *(v26 + 1472);
    if (v28 == 0.0)
    {
      v29 = 0;
      v30 = 0;
      if (v24)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v29 = (*(v26 + 1524) / v28);
      v25 = *(v26 + 1516) / v28;
      v30 = v25;
      if (v24)
      {
LABEL_20:
        LODWORD(v25) = *(v26 + 1604);
        v31 = (*&v25 * 1000.0 / v24);
        goto LABEL_26;
      }
    }

    v31 = 0;
LABEL_26:
    if (v28 == 0.0)
    {
      v82 = 0;
      v84 = 0;
      v40 = 0;
      v36 = 0;
      v38 = 0;
      v42 = 0;
      v44 = 0;
      if (v24)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v82 = (*(v26 + 1568) / v28);
      *&v35 = *(v26 + 1584) / v28;
      v36 = *&v35;
      LODWORD(v35) = *(v26 + 1600);
      *&v37 = v35 / v28;
      v38 = *&v37;
      LODWORD(v37) = *(v26 + 1616);
      *&v39 = v37 / v28;
      v40 = *&v39;
      LODWORD(v39) = *(v26 + 1608);
      *&v41 = v39 / v28;
      v42 = *&v41;
      LODWORD(v41) = *(v26 + 1620);
      *&v43 = v41 / v28;
      v84 = *&v43;
      LODWORD(v43) = *(v26 + 1708);
      v44 = (v43 / v28);
      if (v24)
      {
LABEL_28:
        v85 = *(v26 + 1696) / v24;
        v45 = *(v26 + 1700) / v24;
LABEL_35:
        v87 = *(*(v1[5] + 8) + 40);
        v92[0] = @"ATXBR";
        v93[0] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v29];
        v92[1] = @"ASBR";
        v93[1] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v30];
        v92[2] = @"TBR";
        v93[2] = [*(v1[4] + 1792) description];
        v92[3] = @"SBR";
        v93[3] = [*(v1[4] + 1800) description];
        v92[4] = @"MTBR";
        v93[4] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1528)];
        v92[5] = @"MSBR";
        v93[5] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1520)];
        v92[6] = @"MPLR";
        v93[6] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1532)];
        v92[7] = @"PLR";
        v93[7] = [*(v1[4] + 1816) description];
        v92[8] = @"APLR";
        v93[8] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v40];
        v92[9] = @"AWFPD";
        v93[9] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v36];
        v92[10] = @"AWFT";
        v93[10] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v38];
        v92[11] = @"ANAKR";
        v93[11] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v31];
        v92[12] = @"ABL";
        v93[12] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v42];
        v92[13] = @"MBL";
        v93[13] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1612)];
        v92[14] = @"BL";
        v93[14] = [*(v1[4] + 1824) description];
        v92[15] = @"ARTT";
        v93[15] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v44];
        v92[16] = @"MRTT";
        v93[16] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1712)];
        v92[17] = @"RTT";
        v93[17] = [*(v1[4] + 1856) description];
        v92[18] = @"AEXT";
        v93[18] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v82];
        v92[19] = @"MEXT";
        v93[19] = [MEMORY[0x277CCABA8] numberWithDouble:*(v1[4] + 1576)];
        v92[20] = @"EXT";
        v93[20] = [*(v1[4] + 1832) description];
        v92[21] = @"ABWE";
        v93[21] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v84];
        v92[22] = @"MBWE";
        v93[22] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:*(v1[4] + 1624)];
        v92[23] = @"BWE";
        v93[23] = [*(v1[4] + 1840) description];
        v92[24] = @"VTEFR";
        v93[24] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v45];
        v92[25] = @"VTCFR";
        v93[25] = [MEMORY[0x277CCABA8] numberWithUnsignedInt:v85];
        [v87 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v93, v92, 26)}];
        v56 = v1[4];
        v57 = *(*(v1[5] + 8) + 40);
        v90 = @"CDC";
        v91 = [MEMORY[0x277CCABA8] numberWithInt:*(v56 + 1548)];
        [v57 addEntriesFromDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v91, &v90, 1)}];
        v58 = *(*(v1[5] + 8) + 40);
        v88[0] = @"ARSFD";
        v88[1] = @"MRSFD";
        v89[0] = @"N/A";
        v89[1] = @"N/A";
        v88[2] = @"ARSPD";
        v88[3] = @"MRSPD";
        v89[2] = @"N/A";
        v89[3] = @"N/A";
        v88[4] = @"AVSFD";
        v88[5] = @"MVSFD";
        v89[4] = @"N/A";
        v89[5] = @"N/A";
        v88[6] = @"AVSPD";
        v88[7] = @"MVSPD";
        v89[6] = @"N/A";
        v89[7] = @"N/A";
        v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v89 forKeys:v88 count:8];
        v60 = v58;
        return [v60 addEntriesFromDictionary:v59];
      }
    }

    v85 = 0;
    v45 = 0;
    goto LABEL_35;
  }

  return result;
}

- (void)addScreenSharingSpecificReportingKeys:(id)keys
{
  if (self->_aggregatorVideoStreamMode - 2 <= 2)
  {
    [keys setObject:objc_msgSend(MEMORY[0x277CCABA8] forKey:{"numberWithInt:", self->_transportProtocol), @"VCVSConfigTransportProtocol"}];
    v6 = [MEMORY[0x277CCABA8] numberWithInt:self->_accessNetworkType];

    [keys setObject:v6 forKey:@"VCVSConfigAccessNetworkType"];
  }
}

- (void)updateVideoFECStats:(id)stats
{
  v4 = [stats objectForKeyedSubscript:@"VFecStats"];
  fecStatsHolder = self->super.super._fecStatsHolder;

  [(VCAggregator *)self updateFECStats:fecStatsHolder usingUpdateValuesIn:v4];
}

- (void)processRealtimeStats:(id)stats
{
  self->_sessionTotalDuration = self->_sessionTotalDuration + 1.0;
  if ([stats objectForKeyedSubscript:@"VST"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VST", "doubleValue"}];
    v6 = v5;
    v7 = v5 - self->_lastReportedVideoStallTime;
    [(VCHistogram *)self->_VST addValue:v7];
    maxVideoStallInterval = self->_maxVideoStallInterval;
    if (v7 > maxVideoStallInterval)
    {
      maxVideoStallInterval = v7;
    }

    self->_maxVideoStallInterval = maxVideoStallInterval;
    self->_lastReportedVideoStallTime = v6;
    self->_totalVideoStallTime = v7 + self->_totalVideoStallTime;
  }

  if ([stats objectForKeyedSubscript:@"VSTCNT"])
  {
    v9 = [objc_msgSend(stats objectForKeyedSubscript:{@"VSTCNT", "integerValue"}];
    self->_videoStallCount += v9;
    LODWORD(v10) = self->_maxVideoStallCount;
    self->_maxVideoStallCount = fmax(v10, v9);
  }

  if ([stats objectForKeyedSubscript:@"VRxR"])
  {
    v11 = [objc_msgSend(stats objectForKeyedSubscript:{@"VRxR", "integerValue"}];
    [(VCHistogram *)self->_RBR addValue:v11];
    self->_averageReceiveBitrate += v11;
  }

  if ([stats objectForKeyedSubscript:@"VTxR"])
  {
    v12 = [objc_msgSend(stats objectForKeyedSubscript:{@"VTxR", "integerValue"}];
    [(VCHistogram *)self->_SBR addValue:v12];
    maxSendBitrate = self->_maxSendBitrate;
    if (maxSendBitrate <= v12)
    {
      maxSendBitrate = v12;
    }

    self->_maxSendBitrate = maxSendBitrate;
    self->_averageSendBitrate += v12;
  }

  if ([stats objectForKeyedSubscript:@"ULTBR"])
  {
    v14 = [objc_msgSend(stats objectForKeyedSubscript:{@"ULTBR", "integerValue"}];
    [(VCHistogram *)self->_TBR addValue:v14];
    maxTargetBitrate = self->_maxTargetBitrate;
    if (maxTargetBitrate <= v14)
    {
      maxTargetBitrate = v14;
    }

    self->_maxTargetBitrate = maxTargetBitrate;
    self->_averageTargetBitrate += v14;
  }

  if ([stats objectForKeyedSubscript:@"EncOutFrameCnt"])
  {
    self->_encodedVideoFrameCount += [objc_msgSend(stats objectForKeyedSubscript:{@"EncOutFrameCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"DecOutFrameCnt"])
  {
    self->_decodedVideoFrameCount += [objc_msgSend(stats objectForKeyedSubscript:{@"DecOutFrameCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFCCnt"])
  {
    self->_captureVideoFrameCount += [objc_msgSend(stats objectForKeyedSubscript:{@"VFCCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VIQDCnt"])
  {
    self->_videoFrameDisplayedCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VIQDCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"DVFECnt"])
  {
    self->_decodedVideoFrameEnqueueCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"DVFECnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFRxCnt"])
  {
    self->_videoFrameReceivedCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VFRxCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFExCnt"])
  {
    self->_videoFrameExpectedCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VFExCnt", "integerValue"}];
  }

  if ([stats objectForKeyedSubscript:@"ULPLR"])
  {
    v16 = [objc_msgSend(stats objectForKeyedSubscript:{@"ULPLR", "integerValue"}];
    v17 = v16;
    maxPLR = self->_maxPLR;
    if (maxPLR <= v16)
    {
      maxPLR = v16;
    }

    self->_maxPLR = maxPLR;
    [(VCHistogram *)self->_PLR addValue:v16];
    self->_averagePacketLossRate += v17;
  }

  if ([stats objectForKeyedSubscript:@"VFIRCnt"])
  {
    self->_totalFIRCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VFIRCnt", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VNoFecTF"])
  {
    self->_videoFrameNonFECTotalCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VNoFecTF", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VNoFecCF"])
  {
    self->_videoFrameNonFECCompleteCounter += [objc_msgSend(stats objectForKeyedSubscript:{@"VNoFecCF", "intValue"}];
  }

  [(VCAggregatorSecondDisplay *)self updateVideoFECStats:stats];
  if ([stats objectForKeyedSubscript:@"VNWET"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VNWET", "doubleValue"}];
    self->_averageExpirationTime = v19 + self->_averageExpirationTime;
    maxExpirationTime = self->_maxExpirationTime;
    if (v19 > maxExpirationTime)
    {
      maxExpirationTime = v19;
    }

    self->_maxExpirationTime = maxExpirationTime;
    [(VCHistogram *)self->_EXT addValue:v19];
  }

  if ([stats objectForKeyedSubscript:@"NWAPD"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"NWAPD", "doubleValue"}];
    self->_averageWiFiPacketDelay = v21 + self->_averageWiFiPacketDelay;
  }

  if ([stats objectForKeyedSubscript:@"MAWFPD"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"MAWFPD", "doubleValue"}];
    self->_averageMaxAverageWiFiPacketDelay = v22 + self->_averageMaxAverageWiFiPacketDelay;
  }

  if ([stats objectForKeyedSubscript:@"NWATH"])
  {
    self->_averageWiFiThroughput += [objc_msgSend(stats objectForKeyedSubscript:{@"NWATH", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"NWNaC"])
  {
    self->_totalNACKCounter = [objc_msgSend(stats objectForKeyedSubscript:{@"NWNaC", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"ULBPL"])
  {
    v23 = [objc_msgSend(stats objectForKeyedSubscript:{@"ULBPL", "intValue"}];
    self->_averageBurstyPacketLossCount += v23;
    maxBurstyPacketLossCount = self->_maxBurstyPacketLossCount;
    if (v23 > maxBurstyPacketLossCount)
    {
      maxBurstyPacketLossCount = v23;
    }

    self->_maxBurstyPacketLossCount = maxBurstyPacketLossCount;
    [(VCHistogram *)self->_BPL addValue:v23];
  }

  if ([stats objectForKeyedSubscript:@"RTT"])
  {
    v25 = [objc_msgSend(stats objectForKeyedSubscript:{@"RTT", "intValue"}];
    self->_averageRoundTripTime += v25;
    maxRoundTripTime = self->_maxRoundTripTime;
    if (v25 > maxRoundTripTime)
    {
      maxRoundTripTime = v25;
    }

    self->_maxRoundTripTime = maxRoundTripTime;
    [(VCHistogram *)self->_RTT addValue:v25];
  }

  if ([stats objectForKeyedSubscript:@"VIQAHEL"])
  {
    v27 = [objc_msgSend(stats objectForKeyedSubscript:{@"VIQAHEL", "intValue"}];
    v28 = [objc_msgSend(stats objectForKeyedSubscript:{@"VIQHELSCNT", "intValue"}];
    if (v28 <= 1)
    {
      v29 = 1;
    }

    else
    {
      v29 = v28;
    }

    self->_averageHIDEventLatency += v29 * v27;
    self->_averageHIDEventLatencySampleCount += v29;
    [(VCHistogram *)self->_HEL addValue:v27 withIncrement:?];
  }

  if ([stats objectForKeyedSubscript:@"VIQMaxHEL"])
  {
    v30 = [objc_msgSend(stats objectForKeyedSubscript:{@"VIQMaxHEL", "intValue"}];
    maxHIDEventLatency = self->_maxHIDEventLatency;
    if (v30 > maxHIDEventLatency)
    {
      maxHIDEventLatency = v30;
    }

    self->_maxHIDEventLatency = maxHIDEventLatency;
  }

  if ([stats objectForKeyedSubscript:@"VIQMinHEL"])
  {
    v32 = [objc_msgSend(stats objectForKeyedSubscript:{@"VIQMinHEL", "intValue"}];
    minHIDEventLatency = self->_minHIDEventLatency;
    if (v32 < minHIDEventLatency)
    {
      minHIDEventLatency = v32;
    }

    self->_minHIDEventLatency = minHIDEventLatency;
  }

  if ([stats objectForKeyedSubscript:@"ULBWE"])
  {
    v34 = [objc_msgSend(stats objectForKeyedSubscript:{@"ULBWE", "intValue"}];
    self->_averageBandwidthEstimation += v34;
    maxBandwidthEstimation = self->_maxBandwidthEstimation;
    if (v34 > maxBandwidthEstimation)
    {
      maxBandwidthEstimation = v34;
    }

    self->_maxBandwidthEstimation = maxBandwidthEstimation;
    [(VCHistogram *)self->_BWE addValue:v34];
  }

  if ([stats objectForKeyedSubscript:@"VJ"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VJ", "doubleValue"}];
    v37 = (v36 * 1000.0);
    self->_averageJitterQueueSize += v37;
    maxJitterQueueSize = self->_maxJitterQueueSize;
    if (maxJitterQueueSize <= v37)
    {
      maxJitterQueueSize = (v36 * 1000.0);
    }

    self->_maxJitterQueueSize = maxJitterQueueSize;
    [(VCHistogram *)self->_VJS addValue:?];
  }

  if ([stats objectForKeyedSubscript:@"VJBTC"])
  {
    self->_averageJitterQueueSizeChanges += [objc_msgSend(stats objectForKeyedSubscript:{@"VJBTC", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VPO"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VPO", "doubleValue"}];
    maxPlaybackOffset = v39 * 1000.0;
    self->_averagePlaybackOffset = maxPlaybackOffset + self->_averagePlaybackOffset;
    if (maxPlaybackOffset <= self->_maxPlaybackOffset)
    {
      maxPlaybackOffset = self->_maxPlaybackOffset;
    }

    self->_maxPlaybackOffset = maxPlaybackOffset;
  }

  if ([stats objectForKeyedSubscript:@"VJBTNZT"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VJBTNZT", "doubleValue"}];
    self->_timeSpentWithNonZeroJitterQueueSize = v41 + self->_timeSpentWithNonZeroJitterQueueSize;
  }

  if ([stats objectForKeyedSubscript:@"VJBTWA"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VJBTWA", "doubleValue"}];
    self->_timeWeightedJitterQueueSize = v42 * 1000.0 + self->_timeWeightedJitterQueueSize;
  }

  if ([stats objectForKeyedSubscript:@"ChannelSequence"])
  {
    [(VCAggregatorSecondDisplay *)self setPreviousChannelSequence:[(VCAggregatorSecondDisplay *)self channelSequence]];
    self->_previousChannelSequenceStats = self->_channelSequenceStats;
    -[VCAggregatorSecondDisplay setChannelSequence:](self, "setChannelSequence:", [stats objectForKeyedSubscript:@"ChannelSequence"]);
    self->_channelSequenceStats.fiveGhzChannelCount = [objc_msgSend(stats objectForKeyedSubscript:{@"Unique5GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.twoPtFourGhzChannelCount = [objc_msgSend(stats objectForKeyedSubscript:{@"Unique2pt4GhzChannelCount", "intValue"}];
    self->_channelSequenceStats.dfsChannelCount = [objc_msgSend(stats objectForKeyedSubscript:{@"UniqueDFSChannelCount", "intValue"}];
    self->_channelSequenceStats.inactiveSlotCount = [objc_msgSend(stats objectForKeyedSubscript:{@"InactiveSlotCount", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFEVTrCnt"])
  {
    self->_evictedFramesTrackedCount += [objc_msgSend(stats objectForKeyedSubscript:{@"VFEVTrCnt", "intValue"}];
  }

  if ([stats objectForKeyedSubscript:@"VFEVLtPktDelay"])
  {
    [objc_msgSend(stats objectForKeyedSubscript:{@"VFEVLtPktDelay", "doubleValue"}];
    self->_evictedFramesAverageLatePacketDelay = v43 + self->_evictedFramesAverageLatePacketDelay;
    if (v43 != 0.0)
    {
      ++self->_evictedFramesAnalysisValidIntervals;
    }
  }

  if ([stats objectForKeyedSubscript:@"VFrErCnt"])
  {
    v44 = [objc_msgSend(stats objectForKeyedSubscript:{@"VFrErCnt", "intValue"}];
    self->_accumVideoFrameErasureCount += v44;
    LODWORD(v45) = self->_maxVideoFrameErasureCount;
    self->_maxVideoFrameErasureCount = fmax(v45, v44);
  }

  if ([stats objectForKeyedSubscript:@"NRFr"])
  {
    v46 = [objc_msgSend(stats objectForKeyedSubscript:{@"NRFr", "intValue"}];
    LODWORD(v47) = self->_minVideoFrameRate;
    self->_minVideoFrameRate = fmin(v47, v46);
  }

  if ([stats objectForKeyedSubscript:@"VFEVRecoveredCnt"])
  {
    self->_evictedFramesRecoveredCount += [objc_msgSend(stats objectForKeyedSubscript:{@"VFEVRecoveredCnt", "intValue"}];
  }
}

- (void)updateSenderVideoStreamConfiguration:(id)configuration
{
  self->_videoWidth = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigWidth", "intValue"}];
  self->_videoHeight = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigHeight", "intValue"}];
  if (self->super.super._direction == 2)
  {
    v5 = @"VCVSConfigRxCodecType";
  }

  else
  {
    v5 = @"VCVSConfigTxCodecType";
  }

  self->_codec = [objc_msgSend(configuration objectForKeyedSubscript:{v5), "intValue"}];
  self->_hdrMode = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigHDRMode", "intValue"}];
  self->_transportProtocol = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigTransportProtocol", "intValue"}];
  self->_accessNetworkType = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigAccessNetworkType", "intValue"}];
  self->_remoteFrameworkVersion = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSRemoteFrameworkVersion", "copy"}];
  self->_remoteOSBuildVersion = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSRemoteOSBuildVersion", "copy"}];
  self->_remoteDeviceModel = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSRemoteDeviceModel", "copy"}];
  self->_foveationEnabled = [objc_msgSend(configuration objectForKeyedSubscript:{@"VCVSConfigFoveationEnabled", "intValue"}];
}

- (void)updateReceiverVideoStreamConfiguration:(id)configuration
{
  self->_avgFramerate += [objc_msgSend(configuration objectForKeyedSubscript:{@"Framerate", "intValue"}];
  self->_videoWidth = [objc_msgSend(configuration objectForKeyedSubscript:{@"Width", "intValue"}];
  self->_videoHeight = [objc_msgSend(configuration objectForKeyedSubscript:{@"Height", "intValue"}];
}

- (void)processResiliencyEnablementConfig:(id)config
{
  v5 = [config objectForKeyedSubscript:@"FecRDKScreenSharing"];
  if (v5)
  {
    self->super.super._fecEnabled = [v5 integerValue] != 0;
  }

  v6 = [config objectForKeyedSubscript:@"RtxRDKScreenSharing"];
  if (v6)
  {
    self->super.super._serverPacketRetransmissionsForVideoEnabled = [v6 integerValue] != 0;
  }
}

- (void)processEventWithCategory:(unsigned __int16)category type:(unsigned __int16)type payload:(id)payload
{
  stateQueue = self->super.super._stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__VCAggregatorSecondDisplay_processEventWithCategory_type_payload___block_invoke;
  block[3] = &unk_278BD48B8;
  categoryCopy = category;
  block[4] = self;
  block[5] = payload;
  typeCopy = type;
  dispatch_sync(stateQueue, block);
}

id __67__VCAggregatorSecondDisplay_processEventWithCategory_type_payload___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v2 = VRTraceErrorLogLevelToCSTR(8u);
    v3 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v4 = *(a1 + 48);
        *buf = 136315906;
        v12 = v2;
        v13 = 2080;
        v14 = "[VCAggregatorSecondDisplay processEventWithCategory:type:payload:]_block_invoke";
        v15 = 1024;
        v16 = 749;
        v17 = 1024;
        v18 = v4;
        _os_log_impl(&dword_23D4DF000, v3, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d SecondDisplay: received method=%d", buf, 0x22u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __67__VCAggregatorSecondDisplay_processEventWithCategory_type_payload___block_invoke_cold_1(v2, a1, v3);
    }
  }

  if (!*(*(a1 + 32) + 224) && [*(a1 + 40) objectForKeyedSubscript:@"VCVSStreamToken"] && objc_msgSend(*(a1 + 40), "objectForKeyedSubscript:", @"VCMSDirection"))
  {
    *(*(a1 + 32) + 224) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"VCVSStreamToken", "copy"}];
    *(*(a1 + 32) + 232) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"CallID", "copy"}];
    *(*(a1 + 32) + 216) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"VCMSDirection", "integerValue"}];
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 50);
  v7 = *(a1 + 40);
  v10.receiver = *(a1 + 32);
  v10.super_class = VCAggregatorSecondDisplay;
  result = objc_msgSendSuper2(&v10, sel_dispatchedProcessEventWithCategory_type_payload_, v5, v6, v7);
  v9 = *(a1 + 48);
  if (v9 <= 0xC8)
  {
    switch(v9)
    {
      case 0x1Fu:
        if (*(a1 + 50) == 1)
        {
          return [*(a1 + 32) updateReceiverVideoStreamConfiguration:*(a1 + 40)];
        }

        break;
      case 0x29u:
        result = [*(a1 + 40) objectForKeyedSubscript:@"TransportType"];
        if (result)
        {
          *(*(a1 + 32) + 448) = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"TransportType", "intValue"}];
          return [*(a1 + 32) initializeLowLatencyInterfaceStatistics];
        }

        break;
      case 0x9Cu:
        return [*(a1 + 32) processResiliencyEnablementConfig:*(a1 + 40)];
    }
  }

  else if (*(a1 + 48) > 0xD5u)
  {
    if (v9 == 214)
    {
      ++*(*(a1 + 32) + 1756);
    }

    else if (v9 == 240)
    {
      return [*(a1 + 32) processRealtimeStats:*(a1 + 40)];
    }
  }

  else if (v9 == 201)
  {
    return [*(a1 + 32) updateSenderVideoStreamConfiguration:*(a1 + 40)];
  }

  else if (v9 == 202)
  {
    result = [*(a1 + 40) objectForKeyedSubscript:@"VCMSEndReason"];
    if (result)
    {
      result = [objc_msgSend(*(a1 + 40) objectForKeyedSubscript:{@"VCMSEndReason", "unsignedIntValue"}];
      *(*(a1 + 32) + 1144) = result;
    }
  }

  return result;
}

void __67__VCAggregatorSecondDisplay_processEventWithCategory_type_payload___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 48);
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCAggregatorSecondDisplay processEventWithCategory:type:payload:]_block_invoke";
  v8 = 1024;
  v9 = 749;
  v10 = 1024;
  v11 = v3;
  _os_log_debug_impl(&dword_23D4DF000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d SecondDisplay: received method=%d", &v4, 0x22u);
}

@end