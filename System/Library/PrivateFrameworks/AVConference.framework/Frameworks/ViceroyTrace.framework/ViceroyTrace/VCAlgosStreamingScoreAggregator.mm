@interface VCAlgosStreamingScoreAggregator
- (VCAlgosStreamingScoreAggregator)init;
- (double)aggregateScoresWithDictionaryLogging:(BOOL)logging time:(double)time;
- (id)algoScorerParticipantIDList;
- (id)algosScorerForNonDefaultParticipantID;
- (id)algosScorerWithParticipantID:(id)d;
- (void)addParticipantWithTime:(double)time participantID:(id)d;
- (void)dealloc;
@end

@implementation VCAlgosStreamingScoreAggregator

- (VCAlgosStreamingScoreAggregator)init
{
  v13 = *MEMORY[0x277D85DE8];
  v6.receiver = self;
  v6.super_class = VCAlgosStreamingScoreAggregator;
  v2 = [(VCAlgosStreamingScoreAggregator *)&v6 init];
  if (v2)
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 6)
    {
      v3 = VRTraceErrorLogLevelToCSTR(6u);
      v4 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v8 = v3;
        v9 = 2080;
        v10 = "[VCAlgosStreamingScoreAggregator init]";
        v11 = 1024;
        v12 = 35;
        _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
      }
    }

    v2->_participantAlgosScorers = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_blockAlgosScorersDictionaryLock._os_unfair_lock_opaque = 0;
  }

  return v2;
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);

  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  if (VRTraceGetErrorLogLevelForModule("") >= 6)
  {
    v3 = VRTraceErrorLogLevelToCSTR(6u);
    v4 = gVRTraceOSLog;
    if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v7 = v3;
      v8 = 2080;
      v9 = "[VCAlgosStreamingScoreAggregator dealloc]";
      v10 = 1024;
      v11 = 46;
      _os_log_impl(&dword_23D4DF000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ", buf, 0x1Cu);
    }
  }

  v5.receiver = self;
  v5.super_class = VCAlgosStreamingScoreAggregator;
  [(VCAlgosStreamingScoreAggregator *)&v5 dealloc];
}

- (id)algosScorerWithParticipantID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  if ([(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:d])
  {
    v5 = [(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:d];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule("") >= 8)
    {
      v7 = VRTraceErrorLogLevelToCSTR(8u);
      v8 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          uTF8String = [d UTF8String];
          v10 = [objc_msgSend(-[NSMutableDictionary allKeys](self->_participantAlgosScorers "allKeys")];
          v13 = 136316162;
          v14 = v7;
          v15 = 2080;
          v16 = "[VCAlgosStreamingScoreAggregator algosScorerWithParticipantID:]";
          v17 = 1024;
          v18 = 53;
          v19 = 2080;
          v20 = uTF8String;
          v21 = 2080;
          v22 = v10;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d scorer NOT FOUND for participantID %s within scorers: %s", &v13, 0x30u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        uTF8String2 = [d UTF8String];
        v12 = [objc_msgSend(-[NSMutableDictionary allKeys](self->_participantAlgosScorers "allKeys")];
        v13 = 136316162;
        v14 = v7;
        v15 = 2080;
        v16 = "[VCAlgosStreamingScoreAggregator algosScorerWithParticipantID:]";
        v17 = 1024;
        v18 = 53;
        v19 = 2080;
        v20 = uTF8String2;
        v21 = 2080;
        v22 = v12;
        _os_log_debug_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEBUG, " [%s] %s:%d scorer NOT FOUND for participantID %s within scorers: %s", &v13, 0x30u);
      }
    }

    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  return v5;
}

- (id)algosScorerForNonDefaultParticipantID
{
  v37 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  participantAlgosScorers = self->_participantAlgosScorers;
  v4 = [(NSMutableDictionary *)participantAlgosScorers countByEnumeratingWithState:&v20 objects:v36 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v21;
    v7 = 0.0;
    v17 = 136316418;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v21 != v6)
        {
          objc_enumerationMutation(participantAlgosScorers);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if (([v9 isEqual:{@"DefaultParticipantID", v17}] & 1) == 0 && (objc_msgSend(v9, "isEqual:", @"AlternateParticipantID") & 1) == 0)
        {
          if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_participantAlgosScorers objectForKeyedSubscript:{v9), "algosScoreDictionary"}])
          {
            if ([objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_participantAlgosScorers objectForKeyedSubscript:{v9), "algosScoreDictionary"), "objectForKeyedSubscript:", @"stats", "objectForKeyedSubscript:", @"net-time"}])
            {
              [objc_msgSend(objc_msgSend(objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](self->_participantAlgosScorers objectForKeyedSubscript:{v9), "algosScoreDictionary"), "objectForKeyedSubscript:", @"stats", "objectForKeyedSubscript:", @"net-time", "floatValue"}];
              v7 = v10;
              if (VRTraceGetErrorLogLevelForModule("") >= 8)
              {
                v11 = VRTraceErrorLogLevelToCSTR(8u);
                v12 = gVRTraceOSLog;
                if (gVRTraceLogDebugAsInfo == 1)
                {
                  if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
                  {
                    v18 = [(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:v9];
                    uTF8String = [v9 UTF8String];
                    *buf = v17;
                    v25 = v11;
                    v26 = 2080;
                    v27 = "[VCAlgosStreamingScoreAggregator algosScorerForNonDefaultParticipantID]";
                    v28 = 1024;
                    v29 = 72;
                    v30 = 2048;
                    v31 = v18;
                    v32 = 2080;
                    v33 = uTF8String;
                    v34 = 2048;
                    v35 = v7;
                    _os_log_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d algosScorer[%p], participantID=%s, net-duration=%2.3f", buf, 0x3Au);
                  }
                }

                else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
                {
                  v19 = [(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:v9];
                  uTF8String2 = [v9 UTF8String];
                  *buf = v17;
                  v25 = v11;
                  v26 = 2080;
                  v27 = "[VCAlgosStreamingScoreAggregator algosScorerForNonDefaultParticipantID]";
                  v28 = 1024;
                  v29 = 72;
                  v30 = 2048;
                  v31 = v19;
                  v32 = 2080;
                  v33 = uTF8String2;
                  v34 = 2048;
                  v35 = v7;
                  _os_log_debug_impl(&dword_23D4DF000, v12, OS_LOG_TYPE_DEBUG, " [%s] %s:%d algosScorer[%p], participantID=%s, net-duration=%2.3f", buf, 0x3Au);
                }
              }
            }
          }

          if (v7 >= 1.0)
          {
            v15 = [(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:v9];
            goto LABEL_21;
          }
        }
      }

      v5 = [(NSMutableDictionary *)participantAlgosScorers countByEnumeratingWithState:&v20 objects:v36 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v15 = 0;
LABEL_21:
  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  return v15;
}

- (void)addParticipantWithTime:(double)time participantID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  if ([(NSMutableDictionary *)self->_participantAlgosScorers objectForKeyedSubscript:d])
  {
    [VCAlgosStreamingScoreAggregator addParticipantWithTime:d participantID:?];
  }

  else
  {
    v7 = [[VCAlgosStreamingScorer alloc] initWithLaunchTime:time];
    [(NSMutableDictionary *)self->_participantAlgosScorers setObject:v7 forKeyedSubscript:d];
    if (VRTraceGetErrorLogLevelForModule("") >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR(7u);
      v9 = gVRTraceOSLog;
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136316162;
        v11 = v8;
        v12 = 2080;
        v13 = "[VCAlgosStreamingScoreAggregator addParticipantWithTime:participantID:]";
        v14 = 1024;
        v15 = 90;
        v16 = 2080;
        uTF8String = [d UTF8String];
        v18 = 2048;
        v19 = v7;
        _os_log_impl(&dword_23D4DF000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d add participantID %s scorer %p", &v10, 0x30u);
      }
    }
  }

  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
}

- (id)algoScorerParticipantIDList
{
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  allKeys = [(NSMutableDictionary *)self->_participantAlgosScorers allKeys];
  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  return allKeys;
}

- (double)aggregateScoresWithDictionaryLogging:(BOOL)logging time:(double)time
{
  loggingCopy = logging;
  v46 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_blockAlgosScorersDictionaryLock);
  if (objc_opt_class())
  {
    v30 = objc_alloc_init(MEMORY[0x277D2CA38]);
    if (VRTraceGetErrorLogLevelForModule("") > 7)
    {
      v7 = VRTraceErrorLogLevelToCSTR(8u);
      v8 = gVRTraceOSLog;
      if (gVRTraceLogDebugAsInfo == 1)
      {
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          participantAlgosScorers = self->_participantAlgosScorers;
          *buf = 136315906;
          v36 = v7;
          v37 = 2080;
          v38 = "[VCAlgosStreamingScoreAggregator aggregateScoresWithDictionaryLogging:time:]";
          v39 = 1024;
          v40 = 118;
          v41 = 2112;
          v42 = participantAlgosScorers;
          _os_log_impl(&dword_23D4DF000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d aggregateScores %@", buf, 0x26u);
        }
      }

      else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
      {
        [(VCAlgosStreamingScoreAggregator *)v7 aggregateScoresWithDictionaryLogging:v8 time:?];
      }
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = self->_participantAlgosScorers;
    v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v11)
    {
      v13 = *v32;
      *&v12 = 136316162;
      v29 = v12;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = self->_participantAlgosScorers;
          if (loggingCopy)
          {
            [-[NSMutableDictionary objectForKeyedSubscript:](v16 objectForKeyedSubscript:{*(*(&v31 + 1) + 8 * i)), "finalizeScoreStreamingWithTime:", time}];
          }

          else
          {
            [-[NSMutableDictionary objectForKeyedSubscript:](v16 objectForKeyedSubscript:{*(*(&v31 + 1) + 8 * i)), "scoreStreaming"}];
          }

          v18 = v17;
          if (([v15 isEqual:{@"DefaultParticipantID", v29}] & 1) == 0 && !objc_msgSend(v15, "isEqual:", @"AlternateParticipantID") || -[NSMutableDictionary count](self->_participantAlgosScorers, "count") < 2 || v18 > 0.0)
          {
            [v30 addScore:@"streaming-media" weight:v15 type:v18 label:1.0];
            if (loggingCopy && VRTraceGetErrorLogLevelForModule("") >= 7)
            {
              v19 = VRTraceErrorLogLevelToCSTR(7u);
              v20 = gVRTraceOSLog;
              if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
              {
                uTF8String = [v15 UTF8String];
                v22 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_participantAlgosScorers objectForKeyedSubscript:{v15), "algosScoreDictionary"}];
                *buf = v29;
                v36 = v19;
                v37 = 2080;
                v38 = "[VCAlgosStreamingScoreAggregator aggregateScoresWithDictionaryLogging:time:]";
                v39 = 1024;
                v40 = 133;
                v41 = 2080;
                v42 = uTF8String;
                v43 = 2112;
                v44 = v22;
                _os_log_impl(&dword_23D4DF000, v20, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d participantID %s participant scoreDictionary %@", buf, 0x30u);
              }
            }
          }
        }

        v11 = [(NSMutableDictionary *)v10 countByEnumeratingWithState:&v31 objects:v45 count:16];
      }

      while (v11);
    }

    v23 = [v30 scoreScores:0];
    v24 = v23;
    if (v23)
    {
      [objc_msgSend(v23 objectForKeyedSubscript:{@"score", "doubleValue"}];
      self->_score = v25;
      if (loggingCopy && VRTraceGetErrorLogLevelForModule("") >= 7)
      {
        v26 = VRTraceErrorLogLevelToCSTR(7u);
        v27 = gVRTraceOSLog;
        if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v36 = v26;
          v37 = 2080;
          v38 = "[VCAlgosStreamingScoreAggregator aggregateScoresWithDictionaryLogging:time:]";
          v39 = 1024;
          v40 = 144;
          v41 = 2112;
          v42 = v24;
          _os_log_impl(&dword_23D4DF000, v27, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d AlgosScoreCombiner scoreDictionary: %@", buf, 0x26u);
        }
      }
    }
  }

  os_unfair_lock_unlock(&self->_blockAlgosScorersDictionaryLock);
  return self->_score;
}

- (void)addParticipantWithTime:(void *)a1 participantID:.cold.1(void *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule("") >= 8)
  {
    VRTraceErrorLogLevelToCSTR(8u);
    v2 = gVRTraceOSLog;
    if (gVRTraceLogDebugAsInfo == 1)
    {
      if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEFAULT))
      {
        [a1 UTF8String];
        OUTLINED_FUNCTION_2_4();
        OUTLINED_FUNCTION_0_5();
        _os_log_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d participantID %s has already been added", v3, 0x26u);
      }
    }

    else if (os_log_type_enabled(gVRTraceOSLog, OS_LOG_TYPE_DEBUG))
    {
      [a1 UTF8String];
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_0_5();
      _os_log_debug_impl(&dword_23D4DF000, v2, OS_LOG_TYPE_DEBUG, " [%s] %s:%d participantID %s has already been added", v3, 0x26u);
    }
  }
}

- (void)aggregateScoresWithDictionaryLogging:(os_log_t)log time:.cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 8);
  v4 = 136315906;
  v5 = a1;
  v6 = 2080;
  v7 = "[VCAlgosStreamingScoreAggregator aggregateScoresWithDictionaryLogging:time:]";
  v8 = 1024;
  v9 = 118;
  v10 = 2112;
  v11 = v3;
  _os_log_debug_impl(&dword_23D4DF000, log, OS_LOG_TYPE_DEBUG, " [%s] %s:%d aggregateScores %@", &v4, 0x26u);
}

@end