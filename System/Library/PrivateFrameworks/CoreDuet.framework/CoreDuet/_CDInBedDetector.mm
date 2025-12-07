@interface _CDInBedDetector
+ (double)hoursOfSleepForResult:(id)result;
+ (id)inBedDetector;
+ (id)inBedDetectorWithKnowledge:(id)knowledge;
+ (id)inBedDetectorWithKnowledge:(id)knowledge method:(unint64_t)method;
- (_CDInBedDetector)initWithKnowledge:(id)knowledge method:(unint64_t)method;
- (id)detectInBedBetweenBedtimeDate:(id)date wakupDate:(id)wakupDate error:(id *)error;
- (id)detectInBedWithPolicyV1BetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)detectInBedWithPolicyV2BetweenStartDate:(id)date endDate:(id)endDate error:(id *)error motionBased:(BOOL)based;
- (id)findDateIntervalOfEventInStream:(id)stream datePredicate:(id)predicate valuePredicate:(id)valuePredicate sortDescriptor:(id)descriptor error:(id *)error;
- (id)findLastTimeDeviceWasLockedBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)findLastTimeDeviceWasPluggedInBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)findMotionTerminusBetweenStartDate:(id)date endDate:(id)endDate latest:(BOOL)latest error:(id *)error;
- (id)lockedTimesBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
- (id)stationaryIntervalsBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error;
@end

@implementation _CDInBedDetector

+ (id)inBedDetectorWithKnowledge:(id)knowledge
{
  knowledgeCopy = knowledge;
  v5 = [[self alloc] initWithKnowledge:knowledgeCopy method:2];

  return v5;
}

+ (id)inBedDetectorWithKnowledge:(id)knowledge method:(unint64_t)method
{
  knowledgeCopy = knowledge;
  v7 = [[self alloc] initWithKnowledge:knowledgeCopy method:method];

  return v7;
}

+ (id)inBedDetector
{
  v3 = +[_DKKnowledgeStore knowledgeStore];
  v4 = [self inBedDetectorWithKnowledge:v3];

  return v4;
}

- (_CDInBedDetector)initWithKnowledge:(id)knowledge method:(unint64_t)method
{
  knowledgeCopy = knowledge;
  v14.receiver = self;
  v14.super_class = _CDInBedDetector;
  v8 = [(_CDInBedDetector *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_knowledge, knowledge);
    v9->_method = method;
    v10 = os_log_create("com.apple.coreduet", "inBedDetector");
    v11 = v10;
    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = MEMORY[0x1E69E9C10];
    }

    objc_storeStrong(&v9->_log, v12);
  }

  return v9;
}

+ (double)hoursOfSleepForResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [resultCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = 0.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(resultCopy);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        endDate = [v9 endDate];
        startDate = [v9 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v7 = v7 + v12 / 3600.0;
      }

      v5 = [resultCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (id)detectInBedBetweenBedtimeDate:(id)date wakupDate:(id)wakupDate error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  wakupDateCopy = wakupDate;
  v10 = objc_autoreleasePoolPush();
  if (![(_CDInBedDetector *)self method])
  {
    v32 = 0;
    v11 = [(_CDInBedDetector *)self lockedTimesBetweenStartDate:dateCopy endDate:wakupDateCopy error:&v32];
    v12 = v32;
    goto LABEL_5;
  }

  if ([(_CDInBedDetector *)self method]== 1)
  {
    v31 = 0;
    v11 = [(_CDInBedDetector *)self detectInBedWithPolicyV1BetweenStartDate:dateCopy endDate:wakupDateCopy error:&v31];
    v12 = v31;
LABEL_5:
    v13 = v12;
    goto LABEL_6;
  }

  v30 = 0;
  v11 = [(_CDInBedDetector *)self detectInBedWithPolicyV2BetweenStartDate:dateCopy endDate:wakupDateCopy error:&v30 motionBased:0];
  v13 = v30;
  log = self->_log;
  if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
  {
    v17 = log;
    [objc_opt_class() hoursOfSleepForResult:v11];
    *buf = 134217984;
    v34 = v18;
    _os_log_impl(&dword_191750000, v17, OS_LOG_TYPE_DEFAULT, "ProactiveSleepDebugging: Sleep time under modified model - simple lock-based session splitting %f", buf, 0xCu);
  }

  if (+[_CDDeviceInfo isRunningOnInternalBuild])
  {
    v29 = v13;
    v19 = [(_CDInBedDetector *)self detectInBedWithPolicyV1BetweenStartDate:dateCopy endDate:wakupDateCopy error:&v29];
    v20 = v29;

    v21 = self->_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v21;
      [objc_opt_class() hoursOfSleepForResult:v19];
      *buf = 134217984;
      v34 = v23;
      _os_log_impl(&dword_191750000, v22, OS_LOG_TYPE_DEFAULT, "ProactiveSleepDebugging: Sleep time under old model %f", buf, 0xCu);
    }

    v28 = v20;
    v24 = [(_CDInBedDetector *)self detectInBedWithPolicyV2BetweenStartDate:dateCopy endDate:wakupDateCopy error:&v28 motionBased:1];
    v13 = v28;

    v25 = self->_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      [objc_opt_class() hoursOfSleepForResult:v24];
      *buf = 134217984;
      v34 = v27;
      _os_log_impl(&dword_191750000, v26, OS_LOG_TYPE_DEFAULT, "ProactiveSleepDebugging: Sleep time under modified model - motion-based session splitting %f", buf, 0xCu);
    }
  }

LABEL_6:
  objc_autoreleasePoolPop(v10);
  if (error && v13)
  {
    v14 = v13;
    *error = v13;
  }

  return v11;
}

- (id)lockedTimesBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v83[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v71 = dateCopy;
  v10 = [_DKQuery predicateForEventsIntersectingDateRangeFrom:dateCopy to:endDateCopy];
  v11 = +[_DKBoolCategory no];
  v12 = [_DKQuery predicateForEventsWithCategoryValue:v11];

  v13 = objc_alloc_init(_DKEventQuery);
  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDInBedDetector.m"];
  v15 = [v14 stringByAppendingFormat:@":%d", 123];
  [(_DKQuery *)v13 setClientName:v15];

  [(_DKQuery *)v13 setTracker:&__block_literal_global_26];
  v16 = +[_DKSystemEventStreams deviceIsLockedStream];
  v83[0] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:1];
  [(_DKEventQuery *)v13 setEventStreams:v17];

  v18 = MEMORY[0x1E696AB28];
  v82[0] = v10;
  v82[1] = v12;
  v70 = v12;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
  v20 = [v18 andPredicateWithSubpredicates:v19];
  [(_DKEventQuery *)v13 setPredicate:v20];

  v21 = [_DKQuery startDateSortDescriptorAscending:1];
  v81 = v21;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
  [(_DKEventQuery *)v13 setSortDescriptors:v22];

  [(_DKEventQuery *)v13 setResultType:2];
  knowledge = [(_CDInBedDetector *)self knowledge];
  v78 = 0;
  v69 = v13;
  v24 = [knowledge executeQuery:v13 error:&v78];
  v25 = v78;

  if (error && v25)
  {
    v26 = v25;
    array = 0;
    *error = v25;
    v27 = v25;
    v28 = v70;
    v29 = v71;
  }

  else
  {
    v65 = v24;
    v66 = v10;
    v30 = +[_DKSystemEventStreams deviceIsLockedStream];
    v29 = v71;
    v67 = endDateCopy;
    v31 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:v71 to:endDateCopy];
    v32 = +[_DKBoolCategory yes];
    v33 = [_DKQuery predicateForEventsWithCategoryValue:v32];
    v34 = [_DKQuery endDateSortDescriptorAscending:0];
    v77 = v25;
    v35 = [(_CDInBedDetector *)self findDateIntervalOfEventInStream:v30 datePredicate:v31 valuePredicate:v33 sortDescriptor:v34 error:&v77];
    v36 = v77;

    endDate = [v35 endDate];

    v27 = v36;
    if (error && v36)
    {
      v38 = v36;
      array = 0;
      *error = v36;
      v10 = v66;
      endDateCopy = v67;
      v28 = v70;
      v24 = v65;
    }

    else
    {
      if (endDate)
      {
        v24 = v65;
        v10 = v66;
        endDateCopy = v67;
        if (![v65 count] || (objc_msgSend(v65, "lastObject"), v39 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v39, "endDate"), v40 = objc_claimAutoreleasedReturnValue(), v41 = endDate, v42 = objc_msgSend(v40, "compare:", endDate), v40, v39, v43 = v42 == -1, endDate = v41, v43))
        {
          v44 = endDate;

          endDateCopy = v44;
        }
      }

      else
      {
        v10 = v66;
        endDateCopy = v67;
        v24 = v65;
      }

      if ([v24 count])
      {
        v63 = endDate;
        v64 = v27;
        v68 = endDateCopy;
        array = [MEMORY[0x1E695DF70] array];
        v45 = v71;
        v73 = 0u;
        v74 = 0u;
        v75 = 0u;
        v76 = 0u;
        v46 = v24;
        v47 = [v46 countByEnumeratingWithState:&v73 objects:v79 count:16];
        if (v47)
        {
          v48 = v47;
          v49 = *v74;
          endDate2 = v45;
          do
          {
            v51 = 0;
            v52 = endDate2;
            do
            {
              if (*v74 != v49)
              {
                objc_enumerationMutation(v46);
              }

              v53 = *(*(&v73 + 1) + 8 * v51);
              v54 = objc_alloc_init(_CDInBedDetection);
              [(_CDInBedDetection *)v54 setStartDate:v52];
              startDate = [v53 startDate];
              v56 = [startDate laterDate:v45];
              [(_CDInBedDetection *)v54 setEndDate:v56];

              [(_CDInBedDetection *)v54 setConfidence:1.0];
              [(_CDInBedDetection *)v54 duration];
              if (v57 > 0.0)
              {
                [array addObject:v54];
              }

              endDate2 = [v53 endDate];

              ++v51;
              v52 = endDate2;
            }

            while (v48 != v51);
            v48 = [v46 countByEnumeratingWithState:&v73 objects:v79 count:16];
          }

          while (v48);
        }

        else
        {
          endDate2 = v45;
        }

        endDateCopy = v68;
        v59 = [endDate2 earlierDate:v68];
        v60 = [v59 isEqualToDate:endDate2];

        if (v60)
        {
          v61 = objc_alloc_init(_CDInBedDetection);
          [(_CDInBedDetection *)v61 setStartDate:endDate2];
          [(_CDInBedDetection *)v61 setEndDate:v68];
          [array addObject:v61];
        }

        v28 = v70;
        v29 = v71;
        v24 = v65;
        v10 = v66;
        endDate = v63;
        v27 = v64;
      }

      else
      {
        v58 = objc_alloc_init(_CDInBedDetection);
        [(_CDInBedDetection *)v58 setStartDate:v71];
        [(_CDInBedDetection *)v58 setEndDate:endDateCopy];
        v80 = v58;
        array = [MEMORY[0x1E695DEC8] arrayWithObjects:&v80 count:1];

        v28 = v70;
      }
    }
  }

  return array;
}

- (id)detectInBedWithPolicyV1BetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v60 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  [endDateCopy dateByAddingTimeInterval:-3600.0];
  v51[1] = 0;
  v46 = v48 = dateCopy;
  v9 = [_CDInBedDetector findLatestEndOfMovementBetweenStartDate:"findLatestEndOfMovementBetweenStartDate:endDate:error:" endDate:dateCopy error:?];
  v10 = 0;
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector detectInBedWithPolicyV1BetweenStartDate:endDate:error:];
    }
  }

  else if (!v9 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [_CDInBedDetector detectInBedWithPolicyV1BetweenStartDate:endDate:error:];
  }

  v12 = v48;
  if (v9)
  {
    v12 = v9;
  }

  v13 = v12;

  v14 = v13;
  v15 = [v14 dateByAddingTimeInterval:5400.0];
  v51[0] = 0;
  v16 = [(_CDInBedDetector *)self findLastTimeDeviceWasLockedBetweenStartDate:v14 endDate:v15 error:v51];
  v17 = v51[0];
  if (v17)
  {
    v18 = v17;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v53 = v14;
      v54 = 2112;
      v55 = v15;
      v56 = 2112;
      v57 = v18;
      _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Error finding last lock date between %@ and %@: %@", buf, 0x20u);
    }
  }

  v20 = v14;
  if (v16)
  {
    v20 = [v14 laterDate:v16];
  }

  v50 = 0;
  v21 = [(_CDInBedDetector *)self findLastTimeDeviceWasPluggedInBetweenStartDate:v14 endDate:v15 error:&v50];
  v22 = v50;
  if (v22)
  {
    v23 = v22;
    v24 = v21;
    v25 = self->_log;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v53 = v14;
      v54 = 2112;
      v55 = v15;
      v56 = 2112;
      v57 = v23;
      _os_log_error_impl(&dword_191750000, v25, OS_LOG_TYPE_ERROR, "Error finding last date device was plugged in between %@ and %@: %@", buf, 0x20u);
    }

    v21 = v24;
  }

  if (v21)
  {
    v26 = [v20 laterDate:v21];

    v20 = v26;
  }

  if ([0 count])
  {
    v27 = [0 copy];
    v47 = 0;
    v28 = @"motion";
  }

  else
  {
    v49 = 0;
    v27 = [(_CDInBedDetector *)self lockedTimesBetweenStartDate:v20 endDate:endDateCopy error:&v49];
    v47 = v49;
    if (v47)
    {
      if (error)
      {
        *error = v47;
      }

      v29 = self->_log;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v53 = v20;
        v54 = 2112;
        v55 = endDateCopy;
        v56 = 2112;
        v57 = v47;
        _os_log_error_impl(&dword_191750000, v29, OS_LOG_TYPE_ERROR, "Error identifying locked times between %@ and %@: %@", buf, 0x20u);
      }
    }

    else
    {
      v47 = 0;
    }

    v28 = @"screenlock";
  }

  v45 = v28;
  v30 = self->_log;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v41 = v21;
    v31 = MEMORY[0x1E696AD98];
    v32 = v30;
    v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(v27, "count")}];
    firstObject = [v27 firstObject];
    [firstObject startDate];
    v35 = v43 = endDateCopy;
    [v27 lastObject];
    v36 = v42 = v16;
    [v36 endDate];
    v37 = v20;
    v39 = v38 = v27;
    *buf = 138413058;
    v53 = v33;
    v54 = 2112;
    v55 = v35;
    v56 = 2112;
    v57 = v39;
    v58 = 2112;
    v59 = v45;
    _os_log_impl(&dword_191750000, v32, OS_LOG_TYPE_DEFAULT, "Found %@ in-bed intervals between %@ & %@ using %@-based heuristic", buf, 0x2Au);

    v27 = v38;
    v20 = v37;

    v16 = v42;
    endDateCopy = v43;

    v21 = v41;
  }

  return v27;
}

- (id)detectInBedWithPolicyV2BetweenStartDate:(id)date endDate:(id)endDate error:(id *)error motionBased:(BOOL)based
{
  basedCopy = based;
  v105 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v11 = [dateCopy dateByAddingTimeInterval:14400.0];
  v12 = [endDateCopy dateByAddingTimeInterval:-60.0];
  v13 = [v11 earlierDate:v12];
  v95 = 0;
  v14 = [(_CDInBedDetector *)self findLatestEndOfMovementBetweenStartDate:dateCopy endDate:v13 error:&v95];
  v15 = v95;

  if (v15)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector detectInBedWithPolicyV1BetweenStartDate:endDate:error:];
    }
  }

  else if (!v14 && os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [_CDInBedDetector detectInBedWithPolicyV1BetweenStartDate:endDate:error:];
  }

  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = dateCopy;
  }

  v17 = v16;

  v18 = v17;
  v19 = [v18 dateByAddingTimeInterval:5400.0];
  v20 = [endDateCopy dateByAddingTimeInterval:-60.0];
  v21 = [v19 earlierDate:v20];

  v94 = 0;
  v85 = [(_CDInBedDetector *)self findLastTimeDeviceWasLockedBetweenStartDate:v18 endDate:v21 error:&v94];
  v22 = v94;
  if (v22)
  {
    v23 = v22;
    log = self->_log;
    if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v97 = v18;
      v98 = 2112;
      v99 = v21;
      v100 = 2112;
      v101 = v23;
      _os_log_error_impl(&dword_191750000, log, OS_LOG_TYPE_ERROR, "Error finding last lock date between %@ and %@: %@", buf, 0x20u);
    }
  }

  v25 = v18;
  if (v85)
  {
    v25 = [v18 laterDate:?];
  }

  v93 = 0;
  v84 = [(_CDInBedDetector *)self findLastTimeDeviceWasPluggedInBetweenStartDate:v18 endDate:v21 error:&v93];
  v26 = v93;
  if (v26)
  {
    v27 = v26;
    v28 = v25;
    v29 = self->_log;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v97 = v18;
      v98 = 2112;
      v99 = v21;
      v100 = 2112;
      v101 = v27;
      _os_log_error_impl(&dword_191750000, v29, OS_LOG_TYPE_ERROR, "Error finding last date device was plugged in between %@ and %@: %@", buf, 0x20u);
    }

    v25 = v28;
  }

  if (v84)
  {
    v30 = [v25 laterDate:?];

    v25 = v30;
  }

  v31 = [endDateCopy dateByAddingTimeInterval:-3600.0];
  [v31 timeIntervalSinceReferenceDate];
  v33 = v32;
  [v25 timeIntervalSinceReferenceDate];
  v83 = v25;
  v79 = v31;
  if (v33 <= v34)
  {
    v38 = self->_log;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_191750000, v38, OS_LOG_TYPE_DEFAULT, "Bedtime started less than an hour before end date, not performing further movement based changes on end date", buf, 2u);
    }

LABEL_33:
    v35 = 0;
    goto LABEL_34;
  }

  v92 = 0;
  v35 = [(_CDInBedDetector *)self findMotionTerminusBetweenStartDate:v31 endDate:endDateCopy latest:0 error:&v92];
  v36 = v92;
  if (!v36)
  {
    if (v35)
    {
      goto LABEL_34;
    }

    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector detectInBedWithPolicyV2BetweenStartDate:endDate:error:motionBased:];
    }

    goto LABEL_33;
  }

  v37 = v36;
  if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
  {
    [_CDInBedDetector detectInBedWithPolicyV2BetweenStartDate:endDate:error:motionBased:];
  }

LABEL_34:
  v78 = v35;
  if (v35)
  {
    v39 = v35;
  }

  else
  {
    v39 = endDateCopy;
  }

  v40 = v39;

  v80 = v11;
  v81 = dateCopy;
  v82 = v40;
  if (basedCopy)
  {
    v72 = v21;
    v74 = v18;
    v91 = 0;
    v41 = [(_CDInBedDetector *)self stationaryIntervalsBetweenStartDate:v25 endDate:v40 error:&v91];
    v42 = v91;
    if (v42)
    {
      v43 = v42;
      v44 = self->_log;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v97 = v83;
        v98 = 2112;
        v99 = v82;
        v100 = 2112;
        v101 = v43;
        _os_log_error_impl(&dword_191750000, v44, OS_LOG_TYPE_ERROR, "Error finding stationary intervals between %@ and %@: %@", buf, 0x20u);
      }
    }

    array = [MEMORY[0x1E695DF70] array];
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v90 = 0u;
    v46 = v41;
    v47 = [v46 countByEnumeratingWithState:&v87 objects:v104 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v88;
      do
      {
        for (i = 0; i != v48; ++i)
        {
          if (*v88 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v51 = *(*(&v87 + 1) + 8 * i);
          [v51 duration];
          if (v52 >= 300.0)
          {
            v53 = objc_alloc_init(_CDInBedDetection);
            startDate = [v51 startDate];
            [(_CDInBedDetection *)v53 setStartDate:startDate];

            endDate = [v51 endDate];
            [(_CDInBedDetection *)v53 setEndDate:endDate];

            [(_CDInBedDetection *)v53 setConfidence:1.0];
            [array addObject:v53];
          }
        }

        v48 = [v46 countByEnumeratingWithState:&v87 objects:v104 count:16];
      }

      while (v48);
    }

    dateCopy = v81;
    v21 = v72;
    v18 = v74;
    v25 = v83;
  }

  else
  {
    array = 0;
  }

  v56 = v85;
  if ([array count])
  {
    v57 = [array copy];
    v58 = 0;
    v59 = @"motion";
  }

  else
  {
    v86 = 0;
    v57 = [(_CDInBedDetector *)self lockedTimesBetweenStartDate:v25 endDate:v82 error:&v86];
    v60 = v86;
    v58 = v60;
    if (v60)
    {
      if (error)
      {
        v61 = v60;
        *error = v58;
      }

      v62 = self->_log;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v97 = v83;
        v98 = 2112;
        v99 = v82;
        v100 = 2112;
        v101 = v58;
        _os_log_error_impl(&dword_191750000, v62, OS_LOG_TYPE_ERROR, "Error identifying locked times between %@ and %@: %@", buf, 0x20u);
      }
    }

    v59 = @"screenlock";
  }

  v63 = self->_log;
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v73 = v59;
    v64 = MEMORY[0x1E696AD98];
    v75 = v63;
    v71 = [v64 numberWithUnsignedInteger:{objc_msgSend(v57, "count")}];
    firstObject = [v57 firstObject];
    [firstObject startDate];
    v77 = v58;
    v67 = v66 = v57;
    lastObject = [v66 lastObject];
    endDate2 = [lastObject endDate];
    *buf = 138413058;
    v97 = v71;
    v98 = 2112;
    v99 = v67;
    v100 = 2112;
    v101 = endDate2;
    v102 = 2112;
    v103 = v73;
    _os_log_impl(&dword_191750000, v75, OS_LOG_TYPE_DEFAULT, "Found %@ in-bed intervals between %@ & %@ using %@-based heuristic", buf, 0x2Au);

    dateCopy = v81;
    v56 = v85;

    v57 = v66;
    v58 = v77;
  }

  return v57;
}

- (id)findMotionTerminusBetweenStartDate:(id)date endDate:(id)endDate latest:(BOOL)latest error:(id *)error
{
  latestCopy = latest;
  v61 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v11 = [dateCopy earlierDate:endDateCopy];
  v12 = [v11 isEqualToDate:endDateCopy];

  if (v12)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

LABEL_22:
    startDate3 = 0;
    goto LABEL_40;
  }

  if (([getCMMotionActivityManagerClass() isActivityAvailable] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    goto LABEL_22;
  }

  v13 = objc_alloc_init(getCMMotionActivityManagerClass());
  v14 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v14 setName:@"com.apple.coreduet.inbed.coremotion"];
  v53 = 0;
  v54 = &v53;
  v55 = 0x3032000000;
  v56 = __Block_byref_object_copy__8;
  v57 = __Block_byref_object_dispose__8;
  v58 = 0;
  v47 = 0;
  v48 = &v47;
  v49 = 0x3032000000;
  v50 = __Block_byref_object_copy__8;
  v51 = __Block_byref_object_dispose__8;
  v52 = 0;
  v15 = dispatch_semaphore_create(0);
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __76___CDInBedDetector_findMotionTerminusBetweenStartDate_endDate_latest_error___block_invoke;
  v43[3] = &unk_1E73685F0;
  v45 = &v53;
  v46 = &v47;
  v32 = v14;
  dsema = v15;
  v44 = dsema;
  v31 = v13;
  [v13 queryActivityStartingFromDate:dateCopy toDate:endDateCopy toQueue:v14 withHandler:v43];
  v16 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(dsema, v16))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    [v14 cancelAllOperations];
  }

  startDate = endDateCopy;
  if (latestCopy)
  {
    v41 = 0uLL;
    v42 = 0uLL;
    v39 = 0uLL;
    v40 = 0uLL;
    reverseObjectEnumerator = [v48[5] reverseObjectEnumerator];
    startDate3 = [reverseObjectEnumerator countByEnumeratingWithState:&v39 objects:v60 count:16];
    if (startDate3)
    {
      v20 = *v40;
      startDate2 = startDate;
      while (2)
      {
        v22 = 0;
        v23 = startDate;
        v24 = startDate2;
        do
        {
          if (*v40 != v20)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v25 = *(*(&v39 + 1) + 8 * v22);
          if (([v25 stationary] & 1) == 0 && objc_msgSend(v25, "confidence") == 1)
          {
            startDate2 = v24;
            startDate = v23;
            startDate3 = startDate2;
            goto LABEL_36;
          }

          startDate = [v25 startDate];

          startDate2 = [v25 startDate];

          v22 = v22 + 1;
          v23 = startDate;
          v24 = startDate2;
        }

        while (startDate3 != v22);
        startDate3 = [reverseObjectEnumerator countByEnumeratingWithState:&v39 objects:v60 count:16];
        if (startDate3)
        {
          continue;
        }

        goto LABEL_36;
      }
    }
  }

  else
  {
    v37 = 0uLL;
    v38 = 0uLL;
    v35 = 0uLL;
    v36 = 0uLL;
    reverseObjectEnumerator = [v48[5] objectEnumerator];
    startDate3 = [reverseObjectEnumerator countByEnumeratingWithState:&v35 objects:v59 count:16];
    if (startDate3)
    {
      v26 = *v36;
      while (2)
      {
        for (i = 0; i != startDate3; i = i + 1)
        {
          if (*v36 != v26)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v28 = *(*(&v35 + 1) + 8 * i);
          if (([v28 stationary] & 1) == 0 && objc_msgSend(v28, "confidence") == 1)
          {
            startDate3 = [v28 startDate];
            goto LABEL_34;
          }
        }

        startDate3 = [reverseObjectEnumerator countByEnumeratingWithState:&v35 objects:v59 count:16];
        if (startDate3)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_34:
  startDate2 = startDate;
LABEL_36:

  if (error)
  {
    v29 = v54[5];
    if (v29)
    {
      *error = v29;
    }
  }

  _Block_object_dispose(&v47, 8);
  _Block_object_dispose(&v53, 8);

LABEL_40:

  return startDate3;
}

- (id)stationaryIntervalsBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  v55 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  v33 = dateCopy;
  v9 = [dateCopy earlierDate:endDateCopy];
  v10 = [v9 isEqualToDate:endDateCopy];

  if (v10)
  {
LABEL_2:
    v11 = 0;
    goto LABEL_28;
  }

  if (([getCMMotionActivityManagerClass() isActivityAvailable] & 1) == 0)
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    goto LABEL_2;
  }

  v12 = objc_alloc_init(getCMMotionActivityManagerClass());
  v13 = objc_alloc_init(MEMORY[0x1E696ADC8]);
  [v13 setName:@"com.apple.coreduet.inbed.coremotion"];
  v48 = 0;
  v49 = &v48;
  v50 = 0x3032000000;
  v51 = __Block_byref_object_copy__8;
  v52 = __Block_byref_object_dispose__8;
  v53 = 0;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__8;
  v46 = __Block_byref_object_dispose__8;
  v47 = 0;
  v14 = dispatch_semaphore_create(0);
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __70___CDInBedDetector_stationaryIntervalsBetweenStartDate_endDate_error___block_invoke;
  v38[3] = &unk_1E73685F0;
  v40 = &v48;
  v41 = &v42;
  v30 = v13;
  dsema = v14;
  v39 = dsema;
  v29 = v12;
  [v12 queryActivityStartingFromDate:dateCopy toDate:endDateCopy toQueue:v13 withHandler:v38];
  v15 = dispatch_time(0, 60000000000);
  if (dispatch_semaphore_wait(dsema, v15))
  {
    if (os_log_type_enabled(self->_log, OS_LOG_TYPE_ERROR))
    {
      [_CDInBedDetector findMotionTerminusBetweenStartDate:endDate:latest:error:];
    }

    [v13 cancelAllOperations];
  }

  array = [MEMORY[0x1E695DF70] array];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v43[5];
  v18 = 0;
  v19 = [v17 countByEnumeratingWithState:&v34 objects:v54 count:16];
  if (!v19)
  {
LABEL_23:

    goto LABEL_24;
  }

  v20 = *v35;
  do
  {
    for (i = 0; i != v19; ++i)
    {
      if (*v35 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v34 + 1) + 8 * i);
      if ([v22 stationary] && objc_msgSend(v22, "confidence") == 2)
      {
        startDate = [v22 startDate];
      }

      else
      {
        if (!v18)
        {
          continue;
        }

        v24 = objc_alloc(MEMORY[0x1E696AB80]);
        startDate2 = [v22 startDate];
        v26 = [v24 initWithStartDate:v18 endDate:startDate2];
        [array addObject:v26];

        startDate = 0;
      }

      v18 = startDate;
    }

    v19 = [v17 countByEnumeratingWithState:&v34 objects:v54 count:16];
  }

  while (v19);

  if (v18)
  {
    v17 = [objc_alloc(MEMORY[0x1E696AB80]) initWithStartDate:v18 endDate:endDateCopy];
    [array addObject:v17];
    goto LABEL_23;
  }

LABEL_24:
  if (error)
  {
    v27 = v49[5];
    if (v27)
    {
      *error = v27;
    }
  }

  v11 = [array copy];

  _Block_object_dispose(&v42, 8);
  _Block_object_dispose(&v48, 8);

LABEL_28:

  return v11;
}

- (id)findLastTimeDeviceWasLockedBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  endDateCopy = endDate;
  dateCopy = date;
  v10 = +[_DKSystemEventStreams deviceIsLockedStream];
  v11 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:dateCopy to:endDateCopy];

  v12 = +[_DKBoolCategory no];
  v13 = [_DKQuery predicateForEventsWithCategoryValue:v12];
  v14 = [_DKQuery endDateSortDescriptorAscending:0];
  v15 = [(_CDInBedDetector *)self findDateIntervalOfEventInStream:v10 datePredicate:v11 valuePredicate:v13 sortDescriptor:v14 error:error];
  endDate = [v15 endDate];

  return endDate;
}

- (id)findLastTimeDeviceWasPluggedInBetweenStartDate:(id)date endDate:(id)endDate error:(id *)error
{
  endDateCopy = endDate;
  dateCopy = date;
  v10 = +[_DKSystemEventStreams deviceIsPluggedInStream];
  v11 = [_DKQuery predicateForEventsWithEndInDateRangeFrom:dateCopy to:endDateCopy];

  v12 = +[_DKBoolCategory no];
  v13 = [_DKQuery predicateForEventsWithCategoryValue:v12];
  v14 = [_DKQuery endDateSortDescriptorAscending:0];
  v15 = [(_CDInBedDetector *)self findDateIntervalOfEventInStream:v10 datePredicate:v11 valuePredicate:v13 sortDescriptor:v14 error:error];
  endDate = [v15 endDate];

  return endDate;
}

- (id)findDateIntervalOfEventInStream:(id)stream datePredicate:(id)predicate valuePredicate:(id)valuePredicate sortDescriptor:(id)descriptor error:(id *)error
{
  v33[1] = *MEMORY[0x1E69E9840];
  streamCopy = stream;
  predicateCopy = predicate;
  valuePredicateCopy = valuePredicate;
  descriptorCopy = descriptor;
  v16 = objc_alloc_init(_DKEventQuery);
  v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_CDInBedDetector.m"];
  v18 = [v17 stringByAppendingFormat:@":%d", 638];
  [(_DKQuery *)v16 setClientName:v18];

  [(_DKQuery *)v16 setTracker:&__block_literal_global_557];
  v33[0] = streamCopy;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
  [(_DKEventQuery *)v16 setEventStreams:v19];

  v20 = MEMORY[0x1E696AB28];
  v32[0] = predicateCopy;
  v32[1] = valuePredicateCopy;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v22 = [v20 andPredicateWithSubpredicates:v21];
  [(_DKEventQuery *)v16 setPredicate:v22];

  v31 = descriptorCopy;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [(_DKEventQuery *)v16 setSortDescriptors:v23];

  [(_DKEventQuery *)v16 setLimit:1];
  [(_DKEventQuery *)v16 setResultType:2];
  knowledge = [(_CDInBedDetector *)self knowledge];
  v30 = 0;
  v25 = [knowledge executeQuery:v16 error:&v30];
  v26 = v30;

  if (v26)
  {
    if (error)
    {
      v27 = v26;
      firstObject = 0;
      *error = v26;
    }

    else
    {
      firstObject = 0;
    }
  }

  else
  {
    firstObject = [v25 firstObject];
  }

  return firstObject;
}

- (void)findMotionTerminusBetweenStartDate:endDate:latest:error:.cold.3()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_191750000, v1, OS_LOG_TYPE_ERROR, "InBed endDate (%@) is before startDate (%@)", v2, 0x16u);
}

@end