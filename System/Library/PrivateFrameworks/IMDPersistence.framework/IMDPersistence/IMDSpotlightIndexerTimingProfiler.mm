@interface IMDSpotlightIndexerTimingProfiler
- (void)abortCurrentTimers;
- (void)logResults:(BOOL)results;
- (void)startMainTimerWithExpectedTimeoutInterval:(double)interval;
- (void)startTimingForKey:(id)key;
- (void)startTimingForKey:(id)key iteration:(int64_t)iteration;
- (void)stopMainTimerAndLogAfterFailure;
- (void)stopMainTimerAndLogAfterSuccess;
- (void)stopProfilingAfterIndexersBailed;
- (void)stopTimingForKey:(id)key;
- (void)stopTimingForKey:(id)key iteration:(int64_t)iteration;
@end

@implementation IMDSpotlightIndexerTimingProfiler

- (void)startMainTimerWithExpectedTimeoutInterval:(double)interval
{
  v29 = *MEMORY[0x1E69E9840];
  objc_msgSend_setTimeout_(self, a2, v3, v4, interval);
  if (self->_timingCollection)
  {
    v6 = IMLogHandleForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB23C();
    }
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E69A6170]);
    timingCollection = self->_timingCollection;
    self->_timingCollection = v7;

    v12 = objc_msgSend_set(MEMORY[0x1E695DFA8], v9, v10, v11);
    runningTimers = self->_runningTimers;
    self->_runningTimers = v12;

    v17 = objc_msgSend_array(MEMORY[0x1E695DF70], v14, v15, v16);
    runTimers = self->_runTimers;
    self->_runTimers = v17;

    abortedTimers = self->_abortedTimers;
    self->_abortedTimers = 0;

    v20 = IMLogHandleForCategory();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      objc_msgSend_timeout(self, v21, v22, v23);
      v27 = 134217984;
      v28 = v24;
      _os_log_impl(&dword_1B7AD5000, v20, OS_LOG_TYPE_INFO, "Starting profiling -- we have %ld seconds to finish", &v27, 0xCu);
    }

    objc_msgSend_startTimingForKey_(self->_timingCollection, v25, @"All Indexers", v26);
  }
}

- (void)startTimingForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    if (self->_timingCollection)
    {
      if (!objc_msgSend_containsObject_(self->_runningTimers, v4, keyCopy, v5))
      {
        objc_msgSend_addObject_(self->_runningTimers, v7, keyCopy, v8);
        objc_msgSend_addObject_(self->_runTimers, v10, keyCopy, v11);
        objc_msgSend_startTimingForKey_(self->_timingCollection, v12, keyCopy, v13);
        goto LABEL_11;
      }

      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFB270();
      }
    }

    else
    {
      v9 = IMLogHandleForCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1B7CFB2E0();
      }
    }
  }

  else
  {
    v9 = IMLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB350();
    }
  }

LABEL_11:
}

- (void)startTimingForKey:(id)key iteration:(int64_t)iteration
{
  if (key)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@-%ld", iteration, key, iteration);
    objc_msgSend_startTimingForKey_(self, v5, v8, v6);
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB350();
    }
  }
}

- (void)stopTimingForKey:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB350();
    }

    goto LABEL_11;
  }

  if (!self->_timingCollection)
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB3F4();
    }

    goto LABEL_11;
  }

  if (!objc_msgSend_containsObject_(self->_runningTimers, v4, keyCopy, v5))
  {
    v11 = IMLogHandleForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB384();
    }

LABEL_11:

    goto LABEL_12;
  }

  objc_msgSend_stopTimingForKey_(self->_timingCollection, v7, keyCopy, v8);
  objc_msgSend_removeObject_(self->_runningTimers, v9, keyCopy, v10);
LABEL_12:
}

- (void)stopTimingForKey:(id)key iteration:(int64_t)iteration
{
  if (key)
  {
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"%@-%ld", iteration, key, iteration);
    objc_msgSend_stopTimingForKey_(self, v5, v8, v6);
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB350();
    }
  }
}

- (void)logResults:(BOOL)results
{
  resultsCopy = results;
  v72 = *MEMORY[0x1E69E9840];
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v5 = self->_runTimers;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v57, v71, 16);
  if (!v7)
  {
    v12 = 0;
    v14 = 0.0;
    goto LABEL_29;
  }

  v11 = v7;
  v12 = 0;
  v13 = *v58;
  v14 = 0.0;
  *&v10 = 138412290;
  v56 = v10;
  do
  {
    v15 = 0;
    do
    {
      if (*v58 != v13)
      {
        objc_enumerationMutation(v5);
      }

      v16 = *(*(&v57 + 1) + 8 * v15);
      objc_msgSend_totalTimeForKey_(self->_timingCollection, v8, v16, v9, v56);
      v18 = v17;
      if (v17 > v14)
      {
        v19 = v16;

        v12 = v19;
        v14 = v18;
      }

      abortedTimers = self->_abortedTimers;
      if (abortedTimers && objc_msgSend_containsObject_(abortedTimers, v8, v16, v9))
      {
        v21 = IMLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v62 = v16;
          v63 = 2048;
          v64 = v18;
          v22 = v21;
          v23 = "Timing '%@' was ABORTED after %fs";
          v24 = 22;
LABEL_25:
          _os_log_error_impl(&dword_1B7AD5000, v22, OS_LOG_TYPE_ERROR, v23, buf, v24);
        }
      }

      else
      {
        if (v18 == 0.0 && resultsCopy)
        {
          v21 = IMLogHandleForCategory();
          if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_21;
          }

          *buf = v56;
          v62 = v16;
          v22 = v21;
          v23 = "Timing '%@' was never run";
          v24 = 12;
          goto LABEL_25;
        }

        if (!resultsCopy)
        {
          goto LABEL_22;
        }

        v21 = IMLogHandleForCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v62 = v16;
          v63 = 2048;
          v64 = v18;
          _os_log_impl(&dword_1B7AD5000, v21, OS_LOG_TYPE_INFO, "Timing '%@' ran ok in %fs", buf, 0x16u);
        }
      }

LABEL_21:

LABEL_22:
      ++v15;
    }

    while (v11 != v15);
    v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v57, v71, 16);
    v11 = v27;
  }

  while (v27);
LABEL_29:

  objc_msgSend_totalTimeForKey_(self->_timingCollection, v28, @"All Indexers", v29);
  v34 = v33;
  v35 = self->_abortedTimers;
  if (v35 && objc_msgSend_count(v35, v30, v31, v32))
  {
    v36 = IMLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v40 = objc_msgSend_count(self->_runTimers, v37, v38, v39);
      objc_msgSend_timeout(self, v41, v42, v43);
      *buf = 134218496;
      v62 = v40;
      v63 = 2048;
      v64 = v34;
      v65 = 2048;
      v66 = v44 - v34;
      _os_log_error_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_ERROR, "ABORTED -- %ld timings ran in %fs (%fs remaining before timeout).", buf, 0x20u);
    }
  }

  else
  {
    v36 = IMLogHandleForCategory();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v48 = objc_msgSend_count(self->_runTimers, v45, v46, v47);
      objc_msgSend_timeout(self, v49, v50, v51);
      *buf = 134219010;
      v62 = v48;
      v63 = 2048;
      v64 = v34;
      v65 = 2048;
      v66 = v52 - v34;
      v67 = 2112;
      v68 = v12;
      v69 = 2048;
      v70 = v14;
      _os_log_impl(&dword_1B7AD5000, v36, OS_LOG_TYPE_INFO, "Finished %ld timings in %fs (%fs remaining before timeout). Slowest timing: %@ at %fs", buf, 0x34u);
    }
  }

  runningTimers = self->_runningTimers;
  self->_runningTimers = 0;

  v54 = self->_abortedTimers;
  self->_abortedTimers = 0;

  runTimers = self->_runTimers;
  self->_runTimers = 0;
}

- (void)stopProfilingAfterIndexersBailed
{
  if (self->_timingCollection)
  {
    runningTimers = self->_runningTimers;
    self->_runningTimers = 0;

    abortedTimers = self->_abortedTimers;
    self->_abortedTimers = 0;

    runTimers = self->_runTimers;
    self->_runTimers = 0;

    timingCollection = self->_timingCollection;
    self->_timingCollection = 0;

    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1B7AD5000, v7, OS_LOG_TYPE_INFO, "Bailed on profiling (not an error)", v8, 2u);
    }
  }

  else
  {
    v7 = IMLogHandleForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB464();
    }
  }
}

- (void)abortCurrentTimers
{
  v23 = *MEMORY[0x1E69E9840];
  if (self->_runningTimers)
  {
    objc_msgSend_stopTimingForKey_(self->_timingCollection, a2, @"All Indexers", v2);
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = self->_runningTimers;
    v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v18, v22, 16);
    if (v6)
    {
      v9 = v6;
      v10 = *v19;
      do
      {
        v11 = 0;
        do
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v4);
          }

          objc_msgSend_stopTimingForKey_(self->_timingCollection, v7, *(*(&v18 + 1) + 8 * v11++), v8, v18);
        }

        while (v9 != v11);
        v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v18, v22, 16);
      }

      while (v9);
    }

    v15 = objc_msgSend_allObjects(self->_runningTimers, v12, v13, v14);
    abortedTimers = self->_abortedTimers;
    self->_abortedTimers = v15;

    runningTimers = self->_runningTimers;
    self->_runningTimers = 0;
  }
}

- (void)stopMainTimerAndLogAfterFailure
{
  if (self->_timingCollection)
  {
    objc_msgSend_abortCurrentTimers(self, a2, v2, v3);
    v5 = IMLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB498();
    }

    objc_msgSend_logResults_(self, v6, 1, v7);
  }

  else
  {
    v8 = IMLogHandleForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB4CC();
    }
  }
}

- (void)stopMainTimerAndLogAfterSuccess
{
  v29 = *MEMORY[0x1E69E9840];
  timingCollection = self->_timingCollection;
  if (timingCollection)
  {
    objc_msgSend_stopTimingForKey_(timingCollection, a2, @"All Indexers", v2);
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = self->_runningTimers;
    v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v22, v28, 16);
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v12 = IMLogHandleForCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v27 = v11;
            _os_log_error_impl(&dword_1B7AD5000, v12, OS_LOG_TYPE_ERROR, "Timing '%@' was still running after profiler was stopped", buf, 0xCu);
          }

          ++v10;
        }

        while (v8 != v10);
        v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v13, &v22, v28, 16);
      }

      while (v8);
    }

    runningTimers = self->_runningTimers;
    self->_runningTimers = 0;

    v18 = objc_msgSend_alwaysLogAllTimingResults(MEMORY[0x1E69A7FF8], v15, v16, v17);
    objc_msgSend_logResults_(self, v19, v18, v20);
  }

  else
  {
    v21 = IMLogHandleForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_1B7CFB4CC();
    }
  }
}

@end