@interface VCAdaptiveLearning
+ (id)segmentHistoryStorageFile;
- (VCAdaptiveLearning)initWithParameters:(id)parameters;
- (int)getValueForSegment:(id)segment withBlock:(id)block;
- (int)learntBitrateForSegment:(id)segment defaultValue:(int)value;
- (void)dealloc;
- (void)saveCallSegmentHistory;
- (void)updateSegment:(id)segment TBR:(int)r ISBTR:(int)tR SATXBR:(int)bR SARBR:(int)rBR BWE:(int)e;
@end

@implementation VCAdaptiveLearning

- (VCAdaptiveLearning)initWithParameters:(id)parameters
{
  v78 = *MEMORY[0x277D85DE8];
  v65.receiver = self;
  v65.super_class = VCAdaptiveLearning;
  v4 = [(VCAdaptiveLearning *)&v65 init];
  if (!v4)
  {
    return v4;
  }

  v5 = [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningState), "intValue"}];
  v4->_adaptiveLearningState = v5;
  if (v5)
  {
    v4->_shortTermHistoryLength = [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningShortTermHistoryLength), "intValue"}];
    v4->_longTermHistoryLength = [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningLongTermHistoryLength), "intValue"}];
    v6 = arc4random() / 4294967300.0;
    [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningAdaptiveLearningA), "doubleValue"}];
    v8 = v7;
    [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningAdaptiveLearningB), "doubleValue"}];
    if (v6 >= v8)
    {
      v18 = v9;
      v19 = v8 + v9;
      if (v6 >= v19)
      {
        v4->_adaptiveLearningState = 3;
        [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningAdjustmentFactorC), "doubleValue"}];
        v4->_shortTermAdjustmentFactor = v24;
        v4->_longTermAdjustmentFactor = 1.0 - v24;
        [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningShortTermValueWeightC), "doubleValue"}];
        v4->_shortTermValueWeight = v25;
        [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningLongTermValueWeightC), "floatValue"}];
        v4->_longTermValueWeight = v26;
        if (VRTraceGetErrorLogLevelForModule("") < 8)
        {
          goto LABEL_30;
        }

        v27 = VRTraceErrorLogLevelToCSTR(8u);
        v14 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v69 = v27;
            v70 = 2080;
            v71 = "[VCAdaptiveLearning initWithParameters:]";
            v72 = 1024;
            v73 = 71;
            v74 = 2048;
            v75 = v6;
            v76 = 2048;
            v77 = v18;
            v15 = " [%s] %s:%d AdaptiveLearning: Strategy C selected: current sampling factor %f is greater or equal to (Strategy A threshould + Strategy B threshould) %f";
            goto LABEL_21;
          }

          goto LABEL_30;
        }

        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_30;
        }

        *buf = 136316162;
        v69 = v27;
        v70 = 2080;
        v71 = "[VCAdaptiveLearning initWithParameters:]";
        v72 = 1024;
        v73 = 71;
        v74 = 2048;
        v75 = v6;
        v76 = 2048;
        v77 = v18;
        v28 = " [%s] %s:%d AdaptiveLearning: Strategy C selected: current sampling factor %f is greater or equal to (Strategy A threshould + Strategy B threshould) %f";
      }

      else
      {
        v4->_adaptiveLearningState = 2;
        [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningAdjustmentFactorB), "doubleValue"}];
        v4->_shortTermAdjustmentFactor = v20;
        v4->_longTermAdjustmentFactor = 1.0 - v20;
        [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningShortTermValueWeightB), "doubleValue"}];
        v4->_shortTermValueWeight = v21;
        [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningLongTermValueWeightB), "floatValue"}];
        v4->_longTermValueWeight = v22;
        if (VRTraceGetErrorLogLevelForModule("") < 8)
        {
          goto LABEL_30;
        }

        v23 = VRTraceErrorLogLevelToCSTR(8u);
        v14 = gVRTraceOSLog;
        if (gVRTraceLogDebugAsInfo == 1)
        {
          if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v69 = v23;
            v70 = 2080;
            v71 = "[VCAdaptiveLearning initWithParameters:]";
            v72 = 1024;
            v73 = 64;
            v74 = 2048;
            v75 = v6;
            v76 = 2048;
            v77 = v19;
            v15 = " [%s] %s:%d AdaptiveLearning: Strategy B selected: current sampling factor %f is less than (Strategy A threshould + Strategy B threshould) %f";
            goto LABEL_21;
          }

LABEL_30:
          v29 = [&unk_284FA5810 count];
          v4->_callHistory = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v29];
          v60 = 0u;
          v61 = 0u;
          v62 = 0u;
          v63 = 0u;
          v30 = [&unk_284FA5810 countByEnumeratingWithState:&v60 objects:v67 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v61;
            do
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v61 != v32)
                {
                  objc_enumerationMutation(&unk_284FA5810);
                }

                v34 = *(*(&v60 + 1) + 8 * i);
                v35 = objc_alloc_init(VCSegmentCallHistory);
                [(NSMutableDictionary *)v4->_callHistory setObject:v35 forKeyedSubscript:v34];
                v36 = [(VCSegmentCallHistory *)v35 deserialize:0];
              }

              v31 = [&unk_284FA5810 countByEnumeratingWithState:&v60 objects:v67 count:16];
            }

            while (v31);
          }

          else
          {
            v36 = 0;
          }

          v37 = open([+[VCAdaptiveLearning segmentHistoryStorageFile](VCAdaptiveLearning "segmentHistoryStorageFile")], 0, 0);
          if (v37 < 0)
          {
            if (VRTraceGetErrorLogLevelForModule("") >= 7)
            {
              v48 = VRTraceErrorLogLevelToCSTR(7u);
              v49 = gVRTraceOSLog;
              if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315650;
                v69 = v48;
                v70 = 2080;
                v71 = "[VCAdaptiveLearning initWithParameters:]";
                v72 = 1024;
                v73 = 127;
                _os_log_impl(&dword_23D4DF000, v49, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AdaptiveLearning: Call history database does not exists. Using table values", buf, 0x1Cu);
              }
            }
          }

          else
          {
            v38 = v37;
            v39 = lseek(v37, 0, 2);
            lseek(v38, 0, 0);
            v40 = (v36 * v29);
            if (v39 == (+[VCSegmentCallHistory fieldSize]* v40) + 4)
            {
              v41 = malloc_type_malloc(v39, 0x7D8B3976uLL);
              if (read(v38, v41, v39) == v39)
              {
                v42 = 0;
                if (v40 < 1)
                {
                  v44 = -1;
                }

                else
                {
                  v43 = v41 + 2;
                  v44 = -1;
                  do
                  {
                    v45 = *(v43 - 1);
                    v46 = *(v43 - 2) + v44;
                    v42 += 3;
                    v47 = *v43;
                    v43 += 3;
                    v44 = v46 + v45 + v47;
                  }

                  while (v42 < v40);
                  v42 = 3 * ((v40 - 1) / 3u) + 3;
                }

                if (v44 == v41[v42])
                {
                  v58 = 0u;
                  v59 = 0u;
                  v56 = 0u;
                  v57 = 0u;
                  v50 = [&unk_284FA5810 countByEnumeratingWithState:&v56 objects:v66 count:16];
                  if (v50)
                  {
                    v51 = v50;
                    v52 = 0;
                    v53 = *v57;
                    do
                    {
                      for (j = 0; j != v51; ++j)
                      {
                        if (*v57 != v53)
                        {
                          objc_enumerationMutation(&unk_284FA5810);
                        }

                        v52 += [-[NSMutableDictionary objectForKeyedSubscript:](v4->_callHistory objectForKeyedSubscript:{*(*(&v56 + 1) + 8 * j)), "deserialize:", &v41[v52]}];
                      }

                      v51 = [&unk_284FA5810 countByEnumeratingWithState:&v56 objects:v66 count:16];
                    }

                    while (v51);
                  }
                }

                else if (VRTraceGetErrorLogLevelForModule("") >= 3)
                {
                  VRTraceErrorLogLevelToCSTR(3u);
                  if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
                  {
                    [VCAdaptiveLearning initWithParameters:];
                  }
                }
              }

              else if (VRTraceGetErrorLogLevelForModule("") >= 3)
              {
                VRTraceErrorLogLevelToCSTR(3u);
                if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
                {
                  [VCAdaptiveLearning initWithParameters:];
                }
              }

              free(v41);
            }

            else if (VRTraceGetErrorLogLevelForModule("") >= 3)
            {
              VRTraceErrorLogLevelToCSTR(3u);
              if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
              {
                [VCAdaptiveLearning initWithParameters:];
              }
            }

            close(v38);
          }

          v4->_stateQueue = dispatch_queue_create("com.apple.VideoConference.VCAdaptiveLearningQueue", 0);
          return v4;
        }

        if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_30;
        }

        *buf = 136316162;
        v69 = v23;
        v70 = 2080;
        v71 = "[VCAdaptiveLearning initWithParameters:]";
        v72 = 1024;
        v73 = 64;
        v74 = 2048;
        v75 = v6;
        v76 = 2048;
        v77 = v19;
        v28 = " [%s] %s:%d AdaptiveLearning: Strategy B selected: current sampling factor %f is less than (Strategy A threshould + Strategy B threshould) %f";
      }
    }

    else
    {
      v4->_adaptiveLearningState = 1;
      [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningAdjustmentFactorA), "doubleValue"}];
      v4->_shortTermAdjustmentFactor = v10;
      v4->_longTermAdjustmentFactor = 1.0 - v10;
      [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningShortTermValueWeightA), "doubleValue"}];
      v4->_shortTermValueWeight = v11;
      [objc_msgSend(parameters objectForKeyedSubscript:{sRTCReportingAdaptiveLearningLongTermValueWeightA), "floatValue"}];
      v4->_longTermValueWeight = v12;
      if (VRTraceGetErrorLogLevelForModule("") < 8)
      {
        goto LABEL_30;
      }

      v13 = VRTraceErrorLogLevelToCSTR(8u);
      v14 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136316162;
          v69 = v13;
          v70 = 2080;
          v71 = "[VCAdaptiveLearning initWithParameters:]";
          v72 = 1024;
          v73 = 56;
          v74 = 2048;
          v75 = v6;
          v76 = 2048;
          v77 = v8;
          v15 = " [%s] %s:%d AdaptiveLearning: Strategy A selected: current sampling factor %f is less than Strategy A threshould %f";
LABEL_21:
          _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 0x30u);
          goto LABEL_30;
        }

        goto LABEL_30;
      }

      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_30;
      }

      *buf = 136316162;
      v69 = v13;
      v70 = 2080;
      v71 = "[VCAdaptiveLearning initWithParameters:]";
      v72 = 1024;
      v73 = 56;
      v74 = 2048;
      v75 = v6;
      v76 = 2048;
      v77 = v8;
      v28 = " [%s] %s:%d AdaptiveLearning: Strategy A selected: current sampling factor %f is less than Strategy A threshould %f";
    }

    _os_log_debug_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEBUG, v28, buf, 0x30u);
    goto LABEL_30;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v16 = VRTraceErrorLogLevelToCSTR(8u);
    v17 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v69 = v16;
        v70 = 2080;
        v71 = "[VCAdaptiveLearning initWithParameters:]";
        v72 = 1024;
        v73 = 41;
        _os_log_impl(&dword_23D4DF000, v17, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AdaptiveLearning: Adaptive Learning for FaceTime disabled", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [VCAdaptiveLearning initWithParameters:];
    }
  }

  v64.receiver = v4;
  v64.super_class = VCAdaptiveLearning;
  [(VCAdaptiveLearning *)&v64 release];
  return 0;
}

- (void)dealloc
{
  stateQueue = self->_stateQueue;
  if (stateQueue)
  {
    dispatch_release(stateQueue);
  }

  v4.receiver = self;
  v4.super_class = VCAdaptiveLearning;
  [(VCAdaptiveLearning *)&v4 dealloc];
}

+ (id)segmentHistoryStorageFile
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CCACA0] stringWithFormat:@"%@%s", NSHomeDirectory(), "/Library/Caches/com.apple.VideoConference/segmenthistory"];
  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR(7u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v7 = v3;
      v8 = 2080;
      v9 = "+[VCAdaptiveLearning segmentHistoryStorageFile]";
      v10 = 1024;
      v11 = 144;
      v12 = 2112;
      v13 = v2;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Call history storage=%@", buf, 0x26u);
    }
  }

  return v2;
}

- (void)saveCallSegmentHistory
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke;
  block[3] = &unk_278BD4C38;
  block[4] = self;
  dispatch_async(stateQueue, block);
}

void __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  if (*(v1 + 16))
  {
    if ([*(v1 + 8) count])
    {
      __fd = open([+[VCAdaptiveLearning segmentHistoryStorageFile](VCAdaptiveLearning "segmentHistoryStorageFile")], 1538, 420);
      if ((__fd & 0x80000000) == 0)
      {
        __buf = -1;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v3 = [&unk_284FA5828 countByEnumeratingWithState:&v26 objects:v31 count:16];
        if (!v3)
        {
          goto LABEL_22;
        }

        v4 = v3;
        v5 = 0;
        v6 = *v27;
        v7 = -1;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v27 != v6)
            {
              objc_enumerationMutation(&unk_284FA5828);
            }

            v9 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i)];
            v10 = [v9 serialize:0];
            if (v10)
            {
              v11 = v10;
              v12 = +[VCSegmentCallHistory fieldSize]* v10;
              v13 = malloc_type_malloc(v12, 0x9BE9DA36uLL);
              [v9 serialize:v13];
              if (v11 >= 1)
              {
                v14 = v11;
                v15 = v13;
                do
                {
                  v16 = *v15++;
                  v7 += v16;
                  __buf = v7;
                  --v14;
                }

                while (v14);
              }

              v17 = write(__fd, v13, v12);
              free(v13);
              if (v12 != v17)
              {
                ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule("");
                if (ErrorLogLevelForModule >= 3)
                {
                  VRTraceErrorLogLevelToCSTR(3u);
                  if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
                  {
                    __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_2();
                  }
                }

                goto LABEL_44;
              }
            }

            else
            {
              if (VRTraceGetErrorLogLevelForModule("") >= 3)
              {
                v18 = VRTraceErrorLogLevelToCSTR(3u);
                v19 = gVRTraceOSLog;
                if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315650;
                  v33 = v18;
                  v34 = 2080;
                  v35 = "[VCAdaptiveLearning saveCallSegmentHistory]_block_invoke";
                  v36 = 1024;
                  v37 = 186;
                  _os_log_error_impl(&dword_23D4DF000, v19, OS_LOG_TYPE_ERROR, " [%s] %s:%d AdaptiveLearning: Failed to write call history file - Serialization failed", buf, 0x1Cu);
                }
              }

              v5 = 1;
            }
          }

          v4 = [&unk_284FA5828 countByEnumeratingWithState:&v26 objects:v31 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }

        if ((v5 & 1) == 0)
        {
LABEL_22:
          if (write(__fd, &__buf, 4uLL) == 4)
          {
            *(*(a1 + 32) + 16) = 0;
            if (VRTraceGetErrorLogLevelForModule("") >= 8)
            {
              v20 = VRTraceErrorLogLevelToCSTR(8u);
              v21 = gVRTraceOSLog;
              if (gVRTraceLogDebugAsInfo == 1)
              {
                if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136315650;
                  v33 = v20;
                  v34 = 2080;
                  v35 = "[VCAdaptiveLearning saveCallSegmentHistory]_block_invoke";
                  v36 = 1024;
                  v37 = 195;
                  _os_log_impl(&dword_23D4DF000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AdaptiveLearning: Call history has been saved", buf, 0x1Cu);
                }
              }

              else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
              {
                __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_4();
              }
            }
          }

          else if (VRTraceGetErrorLogLevelForModule("") >= 3)
          {
            VRTraceErrorLogLevelToCSTR(3u);
            if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
            {
              __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_3();
            }
          }
        }

LABEL_44:
        close(__fd);
      }
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_5();
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v22 = VRTraceErrorLogLevelToCSTR(8u);
    v23 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v33 = v22;
        v34 = 2080;
        v35 = "[VCAdaptiveLearning saveCallSegmentHistory]_block_invoke";
        v36 = 1024;
        v37 = 151;
        _os_log_impl(&dword_23D4DF000, v23, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AdaptiveLearning: Call history has not changed", buf, 0x1Cu);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_1();
    }
  }
}

- (int)learntBitrateForSegment:(id)segment defaultValue:(int)value
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  valueCopy = value;
  stateQueue = self->_stateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__VCAdaptiveLearning_learntBitrateForSegment_defaultValue___block_invoke;
  v7[3] = &unk_278BD4C60;
  v7[4] = self;
  v7[5] = segment;
  v7[6] = &v9;
  valueCopy2 = value;
  dispatch_sync(stateQueue, v7);
  v5 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v5;
}

void __59__VCAdaptiveLearning_learntBitrateForSegment_defaultValue___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  if (!v2)
  {
    if (VRTraceGetErrorLogLevelForModule("") < 7)
    {
      return;
    }

    v16 = VRTraceErrorLogLevelToCSTR(7u);
    v17 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v18 = *(a1 + 40);
    v19 = *(*(*(a1 + 48) + 8) + 24);
    v32 = 136316162;
    v33 = v16;
    v34 = 2080;
    v35 = "[VCAdaptiveLearning learntBitrateForSegment:defaultValue:]_block_invoke";
    v36 = 1024;
    v37 = 218;
    v38 = 2112;
    *v39 = v18;
    *&v39[8] = 1024;
    *&v39[10] = v19;
    v13 = " [%s] %s:%d AdaptiveLearning: Call history is absent for segment %@. Target Bitrate defaults to %d";
LABEL_16:
    v14 = v17;
    v15 = 44;
    goto LABEL_17;
  }

  v3 = v2;
  v4 = [v2 historyLength];
  v5 = *(a1 + 32);
  if (v4 >= *(v5 + 28))
  {
    v20 = *(v5 + 32);
    v21 = [v3 shortTermAdjustmentTBR];
    v22 = *(*(a1 + 32) + 40);
    *(*(*(a1 + 48) + 8) + 24) = (v22 * [v3 longTermAdjustmentTBR] + v20 * v21);
    if (VRTraceGetErrorLogLevelForModule("") < 7)
    {
      return;
    }

    v23 = VRTraceErrorLogLevelToCSTR(7u);
    v17 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v24 = *(a1 + 40);
    v25 = *(*(*(a1 + 48) + 8) + 24);
    v32 = 136316162;
    v33 = v23;
    v34 = 2080;
    v35 = "[VCAdaptiveLearning learntBitrateForSegment:defaultValue:]_block_invoke";
    v36 = 1024;
    v37 = 210;
    v38 = 1024;
    *v39 = v25;
    *&v39[4] = 2112;
    *&v39[6] = v24;
    v13 = " [%s] %s:%d AdaptiveLearning: Adjusted (long + short term) Target Bitrate %d for segment=%@";
    goto LABEL_16;
  }

  v6 = [v3 historyLength];
  v7 = *(a1 + 32);
  if (v6 >= *(v7 + 24))
  {
    v26 = *(a1 + 56);
    v28 = *(v7 + 32);
    v27 = *(v7 + 40);
    *(*(*(a1 + 48) + 8) + 24) = (v28 * [v3 shortTermAdjustmentTBR] + v27 * v26);
    if (VRTraceGetErrorLogLevelForModule("") < 7)
    {
      return;
    }

    v29 = VRTraceErrorLogLevelToCSTR(7u);
    v17 = gVRTraceOSLog;
    if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v30 = *(a1 + 40);
    v31 = *(*(*(a1 + 48) + 8) + 24);
    v32 = 136316162;
    v33 = v29;
    v34 = 2080;
    v35 = "[VCAdaptiveLearning learntBitrateForSegment:defaultValue:]_block_invoke";
    v36 = 1024;
    v37 = 213;
    v38 = 1024;
    *v39 = v31;
    *&v39[4] = 2112;
    *&v39[6] = v30;
    v13 = " [%s] %s:%d AdaptiveLearning: Adjusted (short term) Target Bitrate %d for segment=%@";
    goto LABEL_16;
  }

  if (VRTraceGetErrorLogLevelForModule("") >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR(7u);
    v9 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      v11 = [v3 historyLength];
      v12 = *(a1 + 56);
      v32 = 136316418;
      v33 = v8;
      v34 = 2080;
      v35 = "[VCAdaptiveLearning learntBitrateForSegment:defaultValue:]_block_invoke";
      v36 = 1024;
      v37 = 215;
      v38 = 2112;
      *v39 = v10;
      *&v39[8] = 1024;
      *&v39[10] = v11;
      v40 = 1024;
      v41 = v12;
      v13 = " [%s] %s:%d AdaptiveLearning: Call history for segment %@ is too small (%d calls) for Target Bitrate adaptation. Target Bitrate defaults to %d";
      v14 = v9;
      v15 = 50;
LABEL_17:
      _os_log_impl(&dword_23D4DF000, v14, OS_LOG_TYPE_DEFAULT, v13, &v32, v15);
    }
  }
}

- (void)updateSegment:(id)segment TBR:(int)r ISBTR:(int)tR SATXBR:(int)bR SARBR:(int)rBR BWE:(int)e
{
  stateQueue = self->_stateQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__VCAdaptiveLearning_updateSegment_TBR_ISBTR_SATXBR_SARBR_BWE___block_invoke;
  block[3] = &unk_278BD4C88;
  block[4] = self;
  block[5] = segment;
  rCopy = r;
  tRCopy = tR;
  bRCopy = bR;
  rBRCopy = rBR;
  eCopy = e;
  dispatch_async(stateQueue, block);
}

void __63__VCAdaptiveLearning_updateSegment_TBR_ISBTR_SATXBR_SARBR_BWE___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 8) objectForKeyedSubscript:*(a1 + 40)];
  if (v3)
  {
    v4 = v3;
    *(*(a1 + 32) + 16) = 1;
    [v3 updateSegmentWithTBR:*(a1 + 48) ISBTR:*(a1 + 52) SATXBR:*(a1 + 56) SARBR:*(a1 + 60) BWE:*(a1 + 64) shortTermWeight:*(*(a1 + 32) + 48) longTermWeight:*(*(a1 + 32) + 56)];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v5 = VRTraceErrorLogLevelToCSTR(7u);
      v6 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 40);
        v8 = [v4 historyLength];
        v9 = [v4 shortTermAdjustmentTBR];
        v10 = [v4 longTermAdjustmentTBR];
        v11 = *(a1 + 48);
        v12 = *(a1 + 52);
        v13 = *(a1 + 56);
        v14 = *(a1 + 60);
        v15 = *(a1 + 64);
        v22 = 136317954;
        v23 = v5;
        v24 = 2080;
        v25 = "[VCAdaptiveLearning updateSegment:TBR:ISBTR:SATXBR:SARBR:BWE:]_block_invoke";
        v26 = 1024;
        v27 = 230;
        v28 = 2112;
        v29 = v7;
        v30 = 1024;
        v31 = v8;
        v32 = 1024;
        v33 = v9;
        v34 = 1024;
        v35 = v10;
        v36 = 1024;
        v37 = v11;
        v38 = 1024;
        v39 = v12;
        v40 = 1024;
        v41 = v13;
        v42 = 1024;
        v43 = v14;
        v44 = 1024;
        v45 = v15;
        v16 = " [%s] %s:%d AdaptiveLearning: Call history changed for segment=%@ with length=%d, shortTermAdjustment=%d, longTermAdjustment=%d, newTBR=%d, newISBTR=%d, newSATXBR=%d, newSARBR=%d, newBWE=%d";
        v17 = v6;
        v18 = 86;
LABEL_9:
        _os_log_impl(&dword_23D4DF000, v17, OS_LOG_TYPE_DEFAULT, v16, &v22, v18);
      }
    }
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") < 8)
    {
      return;
    }

    v19 = VRTraceErrorLogLevelToCSTR(8u);
    v20 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (!os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      v21 = *v2;
      v22 = 136315906;
      v23 = v19;
      v24 = 2080;
      v25 = "[VCAdaptiveLearning updateSegment:TBR:ISBTR:SATXBR:SARBR:BWE:]_block_invoke";
      v26 = 1024;
      v27 = 232;
      v28 = 2112;
      v29 = v21;
      v16 = " [%s] %s:%d AdaptiveLearning: Call history is absent for segment=%@";
      v17 = v20;
      v18 = 38;
      goto LABEL_9;
    }

    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __63__VCAdaptiveLearning_updateSegment_TBR_ISBTR_SATXBR_SARBR_BWE___block_invoke_cold_1();
    }
  }
}

- (int)getValueForSegment:(id)segment withBlock:(id)block
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  if (segment)
  {
    if (block)
    {
      stateQueue = self->_stateQueue;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __51__VCAdaptiveLearning_getValueForSegment_withBlock___block_invoke;
      v7[3] = &unk_278BD4CB0;
      v7[4] = self;
      v7[5] = segment;
      v7[6] = block;
      v7[7] = &v8;
      dispatch_sync(stateQueue, v7);
    }

    else if (VRTraceGetErrorLogLevelForModule("") >= 3)
    {
      VRTraceErrorLogLevelToCSTR(3u);
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
      {
        [VCAdaptiveLearning getValueForSegment:withBlock:];
      }
    }
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 3)
  {
    VRTraceErrorLogLevelToCSTR(3u);
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_ERROR))
    {
      [VCAdaptiveLearning getValueForSegment:withBlock:];
    }
  }

  v5 = *(v9 + 6);
  _Block_object_dispose(&v8, 8);
  return v5;
}

void __51__VCAdaptiveLearning_getValueForSegment_withBlock___block_invoke(void *a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = a1 + 5;
  if ([*(a1[4] + 8) objectForKeyedSubscript:a1[5]])
  {
    *(*(a1[7] + 8) + 24) = (*(a1[6] + 16))();
  }

  else if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    v3 = VRTraceErrorLogLevelToCSTR(8u);
    v4 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *v2;
        v6 = 136315906;
        v7 = v3;
        v8 = 2080;
        v9 = "[VCAdaptiveLearning getValueForSegment:withBlock:]_block_invoke";
        v10 = 1024;
        v11 = 246;
        v12 = 2112;
        v13 = v5;
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AdaptiveLearning: Call history is absent for segment=%@", &v6, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      __51__VCAdaptiveLearning_getValueForSegment_withBlock___block_invoke_cold_1();
    }
  }
}

- (void)initWithParameters:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Call history database size wrong. Ignoring learnt values...", v2, v3, v4, v5);
}

- (void)initWithParameters:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Failed to read call history database. Ignoring learnt values...", v2, v3, v4, v5);
}

- (void)initWithParameters:.cold.3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Wrong CRC for call history database. Ignoring learnt values...", v2, v3, v4, v5);
}

- (void)initWithParameters:.cold.4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Adaptive Learning for FaceTime disabled", v2, v3, v4, v5);
}

void __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Call history has not changed", v2, v3, v4, v5);
}

void __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Failed to write call history file", v2, v3, v4, v5);
}

void __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_3()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Failed to write CRC to call history file", v2, v3, v4, v5);
}

void __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_4()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Call history has been saved", v2, v3, v4, v5);
}

void __44__VCAdaptiveLearning_saveCallSegmentHistory__block_invoke_cold_5()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Call history is empty", v2, v3, v4, v5);
}

void __63__VCAdaptiveLearning_updateSegment_TBR_ISBTR_SATXBR_SARBR_BWE___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Call history is absent for segment=%@");
}

- (void)getValueForSegment:withBlock:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d block must not be nil", v2, v3, v4, v5);
}

- (void)getValueForSegment:withBlock:.cold.2()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d segmentName must not be nil", v2, v3, v4, v5);
}

void __51__VCAdaptiveLearning_getValueForSegment_withBlock___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_6_2(&dword_23D4DF000, v0, v1, " [%s] %s:%d AdaptiveLearning: Call history is absent for segment=%@");
}

@end