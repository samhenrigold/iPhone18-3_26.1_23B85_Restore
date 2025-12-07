@interface HRMakeRunnableData
- (HRMakeRunnableData)init;
- (int64_t)findBlockingThreadForTailspin:(id)tailspin sampleStore:(id)store mainThread:(id)thread hangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime hangDuration:(int)duration;
- (int64_t)findBlockingThreadFromSampleStore:(id)store mainThread:(id)thread hangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime;
- (void)storeOtherBlockingThreadInfoInBlockingThreadInfo:(id)info sampleStore:(id)store mostBlockingTimeThreadId:(id)id sortedThreadsMaxCumlativeTime:(id)time blockingTimeByThread:(id)thread tidToPidDict:(id)dict;
- (void)storeTopBlockingThreadInfoInBlockingThreadInfo:(id)info sampleStore:(id)store mostBlockingTimeThreadId:(id)id pidMostBlockingTime:(id)time blockedTime:(id)blockedTime isHangMainThread:(BOOL)thread;
@end

@implementation HRMakeRunnableData

- (HRMakeRunnableData)init
{
  v6.receiver = self;
  v6.super_class = HRMakeRunnableData;
  v2 = [(HRMakeRunnableData *)&v6 init];
  if (v2)
  {
    v3 = +[NSMutableArray array];
    [(HRMakeRunnableData *)v2 setAllBlockingThreadsArray:v3];

    v4 = [NSNumber numberWithInt:0xFFFFFFFFLL];
    [(HRMakeRunnableData *)v2 setTopBlockingPid:v4];

    [(HRMakeRunnableData *)v2 setBlockingThreadInfo:0];
  }

  return v2;
}

- (void)storeTopBlockingThreadInfoInBlockingThreadInfo:(id)info sampleStore:(id)store mostBlockingTimeThreadId:(id)id pidMostBlockingTime:(id)time blockedTime:(id)blockedTime isHangMainThread:(BOOL)thread
{
  threadCopy = thread;
  idCopy = id;
  timeCopy = time;
  blockedTimeCopy = blockedTime;
  storeCopy = store;
  infoCopy = info;
  v18 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%#llx", [idCopy unsignedLongLongValue]);
  [infoCopy setObject:v18 forKeyedSubscript:@"topBlockingThreadId"];

  [infoCopy setObject:timeCopy forKeyedSubscript:@"topBlockingPid"];
  v19 = sub_1000153B0(storeCopy, timeCopy);

  [infoCopy setObject:v19 forKeyedSubscript:@"topBlockingProcess"];
  [infoCopy setObject:blockedTimeCopy forKeyedSubscript:@"topBlockingTimeMS"];

  [infoCopy setObject:0 forKeyedSubscript:@"otherBlockingThreads"];
  [infoCopy setObject:0 forKeyedSubscript:@"nextTopBlockingThreadInfo"];

  if (threadCopy)
  {
    objc_storeStrong(&self->_topBlockingPid, time);
  }

  [(NSMutableArray *)self->_allBlockingThreadsArray addObject:idCopy];
}

- (void)storeOtherBlockingThreadInfoInBlockingThreadInfo:(id)info sampleStore:(id)store mostBlockingTimeThreadId:(id)id sortedThreadsMaxCumlativeTime:(id)time blockingTimeByThread:(id)thread tidToPidDict:(id)dict
{
  infoCopy = info;
  storeCopy = store;
  idCopy = id;
  timeCopy = time;
  threadCopy = thread;
  dictCopy = dict;
  v37 = objc_alloc_init(NSMutableArray);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v16 = timeCopy;
  v17 = [v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v41;
    v34 = idCopy;
    v35 = v16;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v41 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v40 + 1) + 8 * i);
        if (([v21 isEqualToNumber:idCopy] & 1) == 0)
        {
          v22 = [threadCopy objectForKeyedSubscript:v21];
          cumulativeTime = [v22 cumulativeTime];
          v25 = sub_10000B548(cumulativeTime, v24);

          if (v25 > 50.0)
          {
            v44[0] = @"threadId";
            v26 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%#llx", [v21 unsignedLongLongValue]);
            v45[0] = v26;
            v44[1] = @"process";
            [dictCopy objectForKeyedSubscript:v21];
            v28 = v27 = threadCopy;
            v29 = sub_1000153B0(storeCopy, v28);
            v45[1] = v29;
            v44[2] = @"blockingTimeMS";
            v30 = [NSNumber numberWithDouble:v25];
            v45[2] = v30;
            [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:3];
            v32 = v31 = v19;
            [v37 addObject:v32];

            v19 = v31;
            threadCopy = v27;
            idCopy = v34;
            v16 = v35;

            [(NSMutableArray *)self->_allBlockingThreadsArray addObject:v21];
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v18);
  }

  if ([v37 count])
  {
    [infoCopy setObject:v37 forKeyedSubscript:@"otherBlockingThreads"];
  }
}

- (int64_t)findBlockingThreadForTailspin:(id)tailspin sampleStore:(id)store mainThread:(id)thread hangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime hangDuration:(int)duration
{
  tailspinCopy = tailspin;
  storeCopy = store;
  threadCopy = thread;
  threadId = [threadCopy threadId];
  v15 = threadCopy;
  v161 = storeCopy;
  tidToPidDict = [storeCopy tidToPidDict];
  v16 = objc_alloc_init(NSMutableDictionary);
  v164 = 0;
  v17 = 1;
  *&v18 = 134218240;
  v156 = v18;
  v158 = v16;
  v165 = v16;
  v159 = tailspinCopy;
  v160 = threadId;
  unsignedLongLongValue5 = threadId;
  v157 = v15;
  v167 = v15;
  selfCopy = self;
  while (1)
  {
    if ((v17 & 1) == 0)
    {
      goto LABEL_110;
    }

    if (v164 >= 5)
    {
      p_super = sub_100001684(v16);
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        *&buf[4] = v164;
        _os_log_impl(&_mh_execute_header, p_super, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin:  currentNextIterationCount = %d is more than MAX_KTRACE_SESSION_COUNT", buf, 8u);
      }

      goto LABEL_109;
    }

    p_super = objc_alloc_init(NSMutableArray);
    v20 = tailspinCopy;
    v21 = ktrace_session_create();
    if (!v21)
    {
      v143 = sub_100001684(0);
      if (os_log_type_enabled(v143, OS_LOG_TYPE_ERROR))
      {
        sub_10003F714(v143);
      }

      goto LABEL_94;
    }

    v22 = v21;
    [v20 UTF8String];
    v23 = ktrace_set_file();
    if (v23)
    {
      v144 = v23;
      v145 = sub_100001684(v23);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
      {
        sub_10003F588(v144, v145);
      }

      ktrace_session_destroy();
      goto LABEL_94;
    }

    ktrace_session_set_event_names_enabled();
    ktrace_set_execnames_enabled();
    ktrace_set_jetsam_coalitions_enabled();
    ktrace_set_thread_groups_enabled();
    ktrace_set_vnode_paths_enabled();
    ktrace_set_thread_cputime_enabled();
    ktrace_set_uuid_map_enabled();
    ktrace_set_remotetime_conversion_enabled();
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 3221225472;
    *&buf[16] = sub_1000014C0;
    v199 = &unk_100085690;
    *(&v200 + 1) = unsignedLongLongValue5;
    timeCopy = time;
    endTimeCopy = endTime;
    p_super = p_super;
    *&v200 = p_super;
    v24 = objc_retainBlock(buf);
    v25 = ktrace_events_single();
    if (v25)
    {
      v146 = sub_100001684(v25);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      goto LABEL_85;
    }

    v26 = ktrace_events_single();
    if (v26)
    {
      v146 = sub_100001684(v26);
      if (os_log_type_enabled(v146, OS_LOG_TYPE_ERROR))
      {
LABEL_84:
        sub_10003F600();
      }

LABEL_85:

      ktrace_session_destroy();
LABEL_93:

LABEL_94:
      v149 = 2;
      goto LABEL_111;
    }

    v27 = dispatch_semaphore_create(0);
    *v189 = _NSConcreteStackBlock;
    *&v189[8] = 3221225472;
    *&v189[16] = sub_1000016C8;
    v190 = &unk_1000856B8;
    *&v191[8] = v22;
    v28 = v27;
    *v191 = v28;
    ktrace_set_completion_handler();
    v29 = qos_class_self();
    v30 = dispatch_get_global_queue(v29, 0);
    v31 = ktrace_start();

    if (v31)
    {
      v147 = sub_100001684(v32);
      if (os_log_type_enabled(v147, OS_LOG_TYPE_ERROR))
      {
        sub_10003F668();
      }

      ktrace_session_destroy();
      goto LABEL_92;
    }

    v33 = dispatch_time(0, 100000000000);
    v34 = dispatch_semaphore_wait(v28, v33);
    if (v34)
    {
      v148 = sub_100001684(v34);
      if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
      {
        *v203 = 134217984;
        *&v203[4] = 100000000000;
        _os_log_impl(&_mh_execute_header, v148, OS_LOG_TYPE_DEFAULT, "Timed out (%lld) parsing trace buffer", v203, 0xCu);
      }

      ktrace_end();
LABEL_92:

      goto LABEL_93;
    }

    v35 = [p_super count];
    if (!v35)
    {
      break;
    }

    v36 = sub_100001684(v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = [p_super count];
      *buf = 134217984;
      *&buf[4] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "*** Size of makeRunnableData array %lx,***", buf, 0xCu);
    }

    v38 = objc_alloc_init(NSMutableDictionary);
    v188 = v167;
    v39 = v161;
    v175 = v38;
    *v203 = 0u;
    v204 = 0u;
    v205 = 0u;
    v206 = 0u;
    v163 = p_super;
    reverseObjectEnumerator = [p_super reverseObjectEnumerator];
    v41 = [reverseObjectEnumerator countByEnumeratingWithState:v203 objects:buf count:16];
    endTimeCopy5 = endTime;
    v187 = v39;
    if (v41)
    {
      v43 = v41;
      v44 = *v204;
      v185 = reverseObjectEnumerator;
      do
      {
        v45 = 0;
        do
        {
          if (*v204 != v44)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v46 = *(*&v203[8] + 8 * v45);
          if (([v46 inInterrupt] & 1) == 0 && objc_msgSend(v46, "timestamp") < endTimeCopy5)
          {
            timestamp = [v46 timestamp];
            v49 = [SATimestamp timestampWithMachAbsTime:timestamp machContTime:0 wallTime:sub_1000046E4(timestamp machTimebase:v48), 0.0];
            sampleTimestamps = [v39 sampleTimestamps];
            v51 = [v188 lastThreadStateOnOrBeforeTime:v49 sampleIndex:{objc_msgSend(sampleTimestamps, "count") - 1}];

            if (v51)
            {
              timestamp2 = [v46 timestamp];
              endTimestamp = [v51 endTimestamp];
              if (timestamp2 <= [endTimestamp machAbsTime])
              {
                timestamp3 = [v46 timestamp];
                startTimestamp = [v51 startTimestamp];
                v55 = timestamp3 >= [startTimestamp machAbsTime];
              }

              else
              {
                v55 = 0;
              }

              v62 = sub_100001684(v61);
              endTimeCopy5 = endTime;
              if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
              {
                timestamp4 = [v46 timestamp];
                madeRunnableByThreadId = [v46 madeRunnableByThreadId];
                startTimestamp2 = [v51 startTimestamp];
                machAbsTime = [startTimestamp2 machAbsTime];
                endTimestamp2 = [v51 endTimestamp];
                machAbsTime2 = [endTimestamp2 machAbsTime];
                startSampleIndex = [v51 startSampleIndex];
                endSampleIndex = [v51 endSampleIndex];
                *v189 = 134219778;
                v96 = @"outside";
                if (v55)
                {
                  v96 = @"inside";
                }

                *&v189[4] = timestamp4;
                *&v189[12] = 2048;
                *&v189[14] = unsignedLongLongValue5;
                *&v189[22] = 2048;
                v190 = madeRunnableByThreadId;
                *v191 = 2048;
                *&v191[2] = machAbsTime;
                *&v191[10] = 2048;
                *&v191[12] = machAbsTime2;
                v192 = 2048;
                v193 = startSampleIndex;
                endTimeCopy5 = endTime;
                v194 = 2048;
                v195 = endSampleIndex;
                v196 = 2112;
                v197 = v96;
                _os_log_debug_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx mkRunnableTime, threadState time %llu-%llu (idx %lu - idx %lu) -> %@", v189, 0x52u);
              }

              if (v55)
              {
                startTimestamp3 = [v51 startTimestamp];
                machAbsTime3 = [startTimestamp3 machAbsTime];

                if (machAbsTime3 <= time)
                {
                  timeCopy2 = time;
                }

                else
                {
                  timeCopy2 = machAbsTime3;
                }

                timestamp5 = [v46 timestamp];
                v67 = sub_100001684(timestamp5);
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
                {
                  v97 = timestamp5;
                  timestamp6 = [v46 timestamp];
                  madeRunnableByThreadId2 = [v46 madeRunnableByThreadId];
                  *v189 = 134219264;
                  *&v189[4] = timestamp6;
                  timestamp5 = v97;
                  *&v189[12] = 2048;
                  *&v189[14] = unsignedLongLongValue5;
                  *&v189[22] = 2048;
                  v190 = madeRunnableByThreadId2;
                  *v191 = 2048;
                  *&v191[2] = &v97[-timeCopy2];
                  *&v191[10] = 2048;
                  *&v191[12] = v97;
                  v192 = 2048;
                  v193 = timeCopy2;
                  _os_log_debug_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx -> blockedtime = %llu (= %llu - %llu)", v189, 0x3Eu);
                }

                v180 = timeCopy2;
                v69 = timestamp5 >= timeCopy2;
                v70 = &timestamp5[-timeCopy2];
                if (v69)
                {
                  v176 = v49;
                  v172 = timestamp5;
                  v73 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 madeRunnableByThreadId]);
                  v74 = [v175 objectForKeyedSubscript:v73];

                  if (!v74)
                  {
                    v75 = objc_alloc_init(BlockingThreadElement);
                    v76 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 madeRunnableByThreadId]);
                    [v175 setObject:v75 forKeyedSubscript:v76];
                  }

                  v77 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 madeRunnableByThreadId]);
                  v78 = [v175 objectForKeyedSubscript:v77];
                  v79 = v70;
                  v80 = &v70[[v78 cumulativeTime]];

                  v81 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 madeRunnableByThreadId]);
                  v82 = [v175 objectForKeyedSubscript:v81];
                  v170 = v80;
                  [v82 setCumulativeTime:v80];

                  v83 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 madeRunnableByThreadId]);
                  v84 = [v175 objectForKeyedSubscript:v83];
                  maxBlockingTime = [v84 maxBlockingTime];

                  if (maxBlockingTime < v79)
                  {
                    v87 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 madeRunnableByThreadId]);
                    v88 = [v175 objectForKeyedSubscript:v87];
                    [v88 setMaxBlockingTime:v79];

                    v89 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 madeRunnableByThreadId]);
                    v90 = [v175 objectForKeyedSubscript:v89];
                    [v90 setStartThreadTime:v180];

                    v91 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 madeRunnableByThreadId]);
                    v92 = [v175 objectForKeyedSubscript:v91];
                    [v92 setEndThreadTime:v172];
                  }

                  v56 = sub_100001684(v86);
                  v49 = v176;
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
                  {
                    timestamp7 = [v46 timestamp];
                    madeRunnableByThreadId3 = [v46 madeRunnableByThreadId];
                    madeRunnableByThreadId4 = [v46 madeRunnableByThreadId];
                    v102 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v46 madeRunnableByThreadId]);
                    v103 = [v175 objectForKeyedSubscript:v102];
                    maxBlockingTime2 = [v103 maxBlockingTime];
                    *v189 = 134219264;
                    *&v189[4] = timestamp7;
                    *&v189[12] = 2048;
                    *&v189[14] = unsignedLongLongValue5;
                    *&v189[22] = 2048;
                    v190 = madeRunnableByThreadId3;
                    *v191 = 2048;
                    *&v191[2] = madeRunnableByThreadId4;
                    *&v191[10] = 2048;
                    *&v191[12] = v170;
                    v192 = 2048;
                    v193 = maxBlockingTime2;
                    _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx => thread %llu total time is up to %llu and max time %llu", v189, 0x3Eu);
                  }
                }

                else
                {
                  v56 = sub_100001684(v68);
                  if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
                  {
                    timestamp8 = [v46 timestamp];
                    madeRunnableByThreadId5 = [v46 madeRunnableByThreadId];
                    *v189 = 134219008;
                    *&v189[4] = timestamp8;
                    *&v189[12] = 2048;
                    *&v189[14] = unsignedLongLongValue5;
                    *&v189[22] = 2048;
                    v190 = madeRunnableByThreadId5;
                    *v191 = 2048;
                    *&v191[2] = timestamp5;
                    *&v191[10] = 2048;
                    *&v191[12] = v180;
                    _os_log_fault_impl(&_mh_execute_header, v56, OS_LOG_TYPE_FAULT, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx -> NEGATIVE blocked time = %llu - %llu)", v189, 0x34u);
                  }
                }

                endTimeCopy5 = endTime;
                goto LABEL_43;
              }
            }

            else
            {
              v56 = sub_100001684(v52);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
              {
                timestamp9 = [v46 timestamp];
                madeRunnableByThreadId6 = [v46 madeRunnableByThreadId];
                *v189 = 134218496;
                *&v189[4] = timestamp9;
                *&v189[12] = 2048;
                *&v189[14] = unsignedLongLongValue5;
                *&v189[22] = 2048;
                v190 = madeRunnableByThreadId6;
                _os_log_debug_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEBUG, "iterateMkRunnableDataToFindBlockingThreadInfo: eachMadeRunnable: %llu - thread %llx by %llx mkRunnableTime, threadState is nil", v189, 0x20u);
              }

LABEL_43:
            }

            reverseObjectEnumerator = v185;
            v39 = v187;
          }

          v45 = v45 + 1;
        }

        while (v43 != v45);
        v105 = [reverseObjectEnumerator countByEnumeratingWithState:v203 objects:buf count:16];
        v43 = v105;
      }

      while (v105);
    }

    v107 = sub_100001684(v106);
    if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v175;
      _os_log_impl(&_mh_execute_header, v107, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: Cumulative Blocking Time By Thread: %@", buf, 0xCu);
    }

    v108 = [NSNumber numberWithUnsignedLongLong:unsignedLongLongValue5];
    [v175 removeObjectForKey:v108];

    v109 = v165;
    if (![v175 count])
    {
      v152 = sub_100001684(0);
      v153 = v152;
      if (unsignedLongLongValue5 == v160)
      {
        tailspinCopy = v159;
        p_super = v163;
        if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: no thread found for hangAppMainThreadId ", buf, 2u);
        }

        v149 = 4;
        v167 = v188;
        goto LABEL_111;
      }

      tailspinCopy = v159;
      p_super = v163;
      if (os_log_type_enabled(v152, OS_LOG_TYPE_INFO))
      {
        *buf = 134217984;
        *&buf[4] = unsignedLongLongValue5;
        _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin: no thread found for currentNestedThreadId =%llx ", buf, 0xCu);
      }

      self = selfCopy;
LABEL_109:

LABEL_110:
      v154 = v158;
      p_super = &self->_blockingThreadInfo->super;
      self->_blockingThreadInfo = v154;
      v149 = 5;
      goto LABEL_111;
    }

    v110 = [v175 keysSortedByValueUsingComparator:&stru_100085648];
    v111 = [v175 keysSortedByValueUsingComparator:&stru_100085668];
    v112 = [v111 objectAtIndexedSubscript:0];
    v113 = [v175 objectForKeyedSubscript:v112];
    cumulativeTime = [v113 cumulativeTime];
    v116 = [NSNumber numberWithDouble:sub_10000B548(cumulativeTime, v115)];

    v117 = [tidToPidDict objectForKeyedSubscript:v112];
    v186 = v110;
    v118 = [v110 objectAtIndexedSubscript:0];
    unsignedLongLongValue = [v118 unsignedLongLongValue];
    v120 = [v111 objectAtIndexedSubscript:0];
    unsignedLongLongValue2 = [v120 unsignedLongLongValue];

    v122 = v187;
    v124 = unsignedLongLongValue == unsignedLongLongValue2;
    self = selfCopy;
    if (!v124)
    {
      v125 = sub_100001684(v123);
      if (os_log_type_enabled(v125, OS_LOG_TYPE_DEFAULT))
      {
        v183 = [v111 objectAtIndexedSubscript:0];
        unsignedLongLongValue3 = [v183 unsignedLongLongValue];
        v178 = [v175 objectForKeyedSubscript:v112];
        cumulativeTime2 = [v178 cumulativeTime];
        v127 = [v186 objectAtIndexedSubscript:0];
        unsignedLongLongValue4 = [v127 unsignedLongLongValue];
        v129 = [v186 objectAtIndexedSubscript:0];
        v130 = [v175 objectForKeyedSubscript:v129];
        cumulativeTime3 = [v130 cumulativeTime];
        *buf = 134218752;
        *&buf[4] = unsignedLongLongValue3;
        *&buf[12] = 2048;
        *&buf[14] = cumulativeTime2;
        self = selfCopy;
        *&buf[22] = 2048;
        v199 = unsignedLongLongValue4;
        LOWORD(v200) = 2048;
        *(&v200 + 2) = cumulativeTime3;
        _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: max cumulative Thread id %llx, blocking time %llu, max block time thread id %llx, blocking time %llu ", buf, 0x2Au);

        v122 = v187;
        v109 = v165;
      }
    }

    [(HRMakeRunnableData *)self storeTopBlockingThreadInfoInBlockingThreadInfo:v109 sampleStore:v122 mostBlockingTimeThreadId:v112 pidMostBlockingTime:v117 blockedTime:v116 isHangMainThread:unsignedLongLongValue5 == v160];
    if ([v116 unsignedLongLongValue] < 0x33)
    {
      v142 = 0;
      v17 = 0;
    }

    else
    {
      v132 = [(HRMakeRunnableData *)self storeOtherBlockingThreadInfoInBlockingThreadInfo:v109 sampleStore:v122 mostBlockingTimeThreadId:v112 sortedThreadsMaxCumlativeTime:v111 blockingTimeByThread:v175 tidToPidDict:tidToPidDict];
      if (v117)
      {
        v133 = [v175 objectForKeyedSubscript:v112];
        endThreadTime = [v133 endThreadTime];

        v135 = [v175 objectForKeyedSubscript:v112];
        startThreadTime = [v135 startThreadTime];

        v138 = sub_100001684(v137);
        if (os_log_type_enabled(v138, OS_LOG_TYPE_INFO))
        {
          *buf = v156;
          *&buf[4] = startThreadTime;
          *&buf[12] = 2048;
          *&buf[14] = endThreadTime;
          _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin: new threadStartTime %llu endTime %llu ", buf, 0x16u);
        }

        if (endThreadTime - startThreadTime > (endTime - time) >> 1)
        {
          unsignedLongLongValue5 = [v112 unsignedLongLongValue];
          v167 = sub_100016D78(v187, tidToPidDict, unsignedLongLongValue5);

          v139 = objc_alloc_init(NSMutableDictionary);
          [v109 setObject:v139 forKeyedSubscript:@"nextTopBlockingThreadInfo"];

          v142 = 0;
          ++v164;
          v17 = 1;
          v165 = v139;
        }

        else
        {
          v142 = 0;
          v17 = 0;
          v167 = v188;
        }

        endTime = endThreadTime;
        time = startThreadTime;
        self = selfCopy;
        goto LABEL_71;
      }

      v140 = sub_100001684(v132);
      if (os_log_type_enabled(v140, OS_LOG_TYPE_DEFAULT))
      {
        unsignedLongLongValue6 = [v112 unsignedLongLongValue];
        *buf = 134217984;
        *&buf[4] = unsignedLongLongValue6;
        _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "findBlockingThreadForTailspin: pid is nil for Thread with most blocking time %llx ", buf, 0xCu);
      }

      v17 = 0;
      v142 = 3;
    }

    v167 = v188;
LABEL_71:

    tailspinCopy = v159;
    if (v142)
    {
      goto LABEL_110;
    }
  }

  v150 = sub_100001684(0);
  v151 = v150;
  self = selfCopy;
  if (unsignedLongLongValue5 != v160)
  {
    if (os_log_type_enabled(v150, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      *&buf[4] = unsignedLongLongValue5;
      _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_INFO, "findBlockingThreadForTailspin: 0 mkrunnable tracepoints found for threadId = %llx", buf, 0xCu);
    }

    goto LABEL_109;
  }

  if (os_log_type_enabled(v150, OS_LOG_TYPE_ERROR))
  {
    sub_10003F6D0(v151);
  }

  v149 = 3;
LABEL_111:

  return v149;
}

- (int64_t)findBlockingThreadFromSampleStore:(id)store mainThread:(id)thread hangStartTime:(unint64_t)time hangEndTime:(unint64_t)endTime
{
  storeCopy = store;
  threadCopy = thread;
  tidToPidDict = [storeCopy tidToPidDict];
  threadId = [threadCopy threadId];
  v11 = threadCopy;
  v12 = objc_alloc_init(NSMutableDictionary);
  v13 = v12;
  threadStates = [v11 threadStates];
  lastObject = [threadStates lastObject];

  endTimestamp = [lastObject endTimestamp];
  machAbsTime = [endTimestamp machAbsTime];

  if (machAbsTime > endTime)
  {
    v18 = 4;
    v19 = v13;
    v20 = v11;
    goto LABEL_37;
  }

  obj = v12;
  v46 = storeCopy;
  endTimestamp2 = [lastObject endTimestamp];
  v48 = objc_alloc_init(NSMutableSet);
  v21 = 32;
  v43 = v11;
  v44 = threadId;
  v42 = v13;
  v22 = lastObject;
  while (1)
  {
    v51 = v11;
    turnstileInfo = [v22 turnstileInfo];
    waitInfo = [v22 waitInfo];
    if (turnstileInfo && [turnstileInfo blockingTid])
    {
      blockingTid = [turnstileInfo blockingTid];
      v26 = v48;
      v27 = &MGGetBoolAnswer_ptr;
LABEL_12:
      blockingPid = [turnstileInfo blockingPid];
      if (!waitInfo)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }

    v27 = &MGGetBoolAnswer_ptr;
    if (!waitInfo || ![waitInfo blockingTid])
    {
      v26 = v48;
      if (!turnstileInfo)
      {
        blockingTid = 0;
LABEL_15:
        blockingPid = 0xFFFFFFFFLL;
        if (!waitInfo)
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      }

      blockingTid = 0;
      if ([turnstileInfo blockingPid] == -1)
      {
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    blockingTid = [waitInfo blockingTid];
    blockingPid = [waitInfo blockingPid];
    v26 = v48;
LABEL_16:
    if ([waitInfo blockingPid] != -1)
    {
      blockingPid = [waitInfo blockingPid];
    }

LABEL_18:
    if (!blockingTid && blockingPid == -1)
    {
      lastObject = v22;
      v20 = v51;
      goto LABEL_32;
    }

    v49 = turnstileInfo;
    if (blockingPid == -1)
    {
      v29 = [v27[265] numberWithUnsignedLongLong:blockingTid];
      v30 = [tidToPidDict objectForKeyedSubscript:v29];
      blockingPid = [v30 intValue];

      v26 = v48;
      v27 = &MGGetBoolAnswer_ptr;
    }

    v31 = [v27[265] numberWithUnsignedLongLong:blockingTid];
    v32 = [v27[265] numberWithInt:blockingPid];
    [(HRMakeRunnableData *)self storeTopBlockingThreadInfoInBlockingThreadInfo:v13 sampleStore:v46 mostBlockingTimeThreadId:v31 pidMostBlockingTime:v32 blockedTime:&off_10008AA68 isHangMainThread:threadId == v44];

    if (!blockingTid || ([v27[265] numberWithUnsignedLongLong:blockingTid], v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v26, "containsObject:", v33), v33, (v34 & 1) != 0))
    {
      lastObject = v22;
      v20 = v51;
      goto LABEL_31;
    }

    v35 = [v27[265] numberWithUnsignedLongLong:blockingTid];
    [v26 addObject:v35];

    v20 = sub_100016D78(v46, tidToPidDict, blockingTid);

    threadStates2 = [v20 threadStates];
    lastObject = [threadStates2 lastObject];

    startTimestamp = [lastObject startTimestamp];
    if ([startTimestamp gt:endTimestamp2])
    {
      break;
    }

    endTimestamp3 = [lastObject endTimestamp];
    v39 = [endTimestamp3 lt:endTimestamp2];

    turnstileInfo = v49;
    if (v39)
    {
      goto LABEL_32;
    }

    v19 = objc_alloc_init(NSMutableDictionary);
    [v13 setObject:v19 forKeyedSubscript:@"nextTopBlockingThreadInfo"];

    threadId = blockingTid;
    v11 = v20;
    v13 = v19;
    v22 = lastObject;
    if (!--v21)
    {
      goto LABEL_33;
    }
  }

LABEL_31:
  turnstileInfo = v49;
LABEL_32:

  v19 = v13;
LABEL_33:
  v13 = v42;
  if ([v42 count])
  {
    objc_storeStrong(&self->_blockingThreadInfo, obj);
    v18 = 5;
  }

  else
  {
    v18 = 4;
  }

  storeCopy = v46;

  v11 = v43;
LABEL_37:

  return v18;
}

@end