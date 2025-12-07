@interface _DKPredictionTimeline
+ (id)predictionUnavailable;
+ (id)timelineWithValues:(id)values eachWithDuration:(double)duration startingAt:(id)at;
+ (id)timelineWithValues:(id)values forDurations:(id)durations startingAt:(id)at;
- (BOOL)isEqual:(id)equal;
- (NSDate)endDate;
- (_DKPredictionTimeline)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)initWithValues:(void *)values eachWithDuration:(double)duration startingAt:;
- (id)largestDateRangeWithValuesBetween:(double)between and:(double)and ofMinimumDuration:(double)duration;
- (id)nextDateRangeWithValuesBetween:(double)between and:(double)and ofMinimumDuration:(double)duration;
- (id)valueAtDate:(id)date;
- (void)encodeWithCoder:(id)coder;
- (void)initWithValues:(void *)values forDurations:(void *)durations startingAt:;
- (void)setStartDate:(uint64_t)date;
@end

@implementation _DKPredictionTimeline

+ (id)predictionUnavailable
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46___DKPredictionTimeline_predictionUnavailable__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (predictionUnavailable_onceToken != -1)
  {
    dispatch_once(&predictionUnavailable_onceToken, block);
  }

  v2 = predictionUnavailable_prediction;

  return v2;
}

- (NSDate)endDate
{
  lastObject = [(NSArray *)self->_transitionDates lastObject];
  v3 = lastObject;
  if (lastObject)
  {
    date = lastObject;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v5 = date;

  return v5;
}

- (id)valueAtDate:(id)date
{
  v21 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  [(NSDate *)self->_startDate timeIntervalSinceDate:dateCopy];
  if (v5 <= 0.0)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_transitionDates;
    v8 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v17;
      while (2)
      {
        v12 = 0;
        v13 = v10;
        v10 += v9;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v16 + 1) + 8 * v12) timeIntervalSinceDate:{dateCopy, v16}];
          if (v14 > 0.0)
          {
            v6 = [(NSArray *)self->_values objectAtIndexedSubscript:v13];
            goto LABEL_13;
          }

          ++v13;
          ++v12;
        }

        while (v9 != v12);
        v9 = [(NSArray *)v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v6 = 0;
LABEL_13:
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)largestDateRangeWithValuesBetween:(double)between and:(double)and ofMinimumDuration:(double)duration
{
  v51 = *MEMORY[0x1E69E9840];
  if ([(_DKPredictionTimeline *)self isUnavailable])
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictionTimeline largestDateRangeWithValuesBetween:and:ofMinimumDuration:];
    }

LABEL_12:

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
    v23 = [_CDDateRange periodWithStart:distantFuture end:distantFuture2];
    goto LABEL_13;
  }

  lastObject = [(NSArray *)self->_transitionDates lastObject];
  [lastObject timeIntervalSinceDate:self->_startDate];
  v12 = v11;

  if (v12 < duration)
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
      startDate = self->_startDate;
      lastObject2 = [(NSArray *)self->_transitionDates lastObject];
      *buf = 138412802;
      v46 = v13;
      v47 = 2112;
      v48 = startDate;
      v49 = 2112;
      v50 = lastObject2;
      _os_log_error_impl(&dword_191750000, v9, OS_LOG_TYPE_ERROR, "Unable to satisfy minimum duration %@ between %@ and %@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  firstObject = [(NSArray *)self->_values firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictionTimeline largestDateRangeWithValuesBetween:and:ofMinimumDuration:];
    }

    goto LABEL_12;
  }

  distantFuture2 = [MEMORY[0x1E695DF70] arrayWithObject:self->_startDate];
  [distantFuture2 addObjectsFromArray:self->_transitionDates];
  if ([distantFuture2 count] == 1)
  {
    v19 = 0;
    v20 = 0;
    distantFuture = 0;
    v22 = 0.0;
    goto LABEL_40;
  }

  v44 = 0;
  v19 = 0;
  v25 = 0;
  v26 = 0;
  v22 = 0.0;
  v27 = 0.0;
  do
  {
    v28 = [distantFuture2 objectAtIndexedSubscript:v26];
    v29 = [distantFuture2 objectAtIndexedSubscript:v26 + 1];
    v30 = [(NSArray *)self->_values objectAtIndexedSubscript:v26];
    [v30 doubleValue];
    if (v31 < between || v31 > and)
    {
      if (v19)
      {
        if (v27 > v22)
        {
          v33 = v19;

          v44 = v33;
          v22 = v27;
        }

        v27 = 0.0;
      }

      v34 = v25;
      v35 = 0;
      v19 = 0;
      v25 = v28;
      if (!v34)
      {
LABEL_29:
        v37 = v28;
        v34 = v25;
        v19 = v35;
      }
    }

    else
    {
      [v29 timeIntervalSinceDate:v28];
      v27 = v27 + v36;
      v34 = v25;
      v35 = v28;
      if (!v19)
      {
        goto LABEL_29;
      }
    }

    v25 = v34;

    ++v26;
  }

  while (v26 < [distantFuture2 count] - 1);
  if (v27 <= 0.0 || v25 == 0)
  {
    v40 = v27 <= 0.0;
  }

  else
  {
    [v25 timeIntervalSinceDate:self->_startDate];
    v27 = v27 + v39;
    v40 = v27 <= v22;
  }

  distantFuture = v44;
  if (!v40)
  {
    v19 = v19;

    distantFuture = v19;
    v22 = v27;
  }

  v20 = v25;
LABEL_40:
  if (v22 >= duration)
  {
    v23 = [_CDDateRange periodWithStart:distantFuture duration:v22];
  }

  else
  {
    v41 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictionTimeline largestDateRangeWithValuesBetween:and:ofMinimumDuration:];
    }

    distantFuture3 = [MEMORY[0x1E695DF00] distantFuture];
    distantFuture4 = [MEMORY[0x1E695DF00] distantFuture];
    v23 = [_CDDateRange periodWithStart:distantFuture3 end:distantFuture4];
  }

LABEL_13:

  return v23;
}

- (id)nextDateRangeWithValuesBetween:(double)between and:(double)and ofMinimumDuration:(double)duration
{
  v47 = *MEMORY[0x1E69E9840];
  if ([(_DKPredictionTimeline *)self isUnavailable])
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictionTimeline largestDateRangeWithValuesBetween:and:ofMinimumDuration:];
    }

LABEL_12:

    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    distantFuture2 = [MEMORY[0x1E695DF00] distantFuture];
    v22 = [_CDDateRange periodWithStart:distantFuture end:distantFuture2];
    goto LABEL_13;
  }

  lastObject = [(NSArray *)self->_transitionDates lastObject];
  [lastObject timeIntervalSinceDate:self->_startDate];
  v12 = v11;

  if (v12 < duration)
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
      startDate = self->_startDate;
      lastObject2 = [(NSArray *)self->_transitionDates lastObject];
      *buf = 138412802;
      v42 = v13;
      v43 = 2112;
      v44 = startDate;
      v45 = 2112;
      v46 = lastObject2;
      _os_log_error_impl(&dword_191750000, v9, OS_LOG_TYPE_ERROR, "Unable to satisfy minimum duration %@ between %@ and %@", buf, 0x20u);
    }

    goto LABEL_12;
  }

  firstObject = [(NSArray *)self->_values firstObject];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    v9 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictionTimeline largestDateRangeWithValuesBetween:and:ofMinimumDuration:];
    }

    goto LABEL_12;
  }

  distantFuture = [MEMORY[0x1E695DF70] arrayWithObject:self->_startDate];
  [distantFuture addObjectsFromArray:self->_transitionDates];
  if ([distantFuture count] == 1)
  {
    distantFuture2 = 0;
    v20 = 0;
    v21 = 0.0;
    goto LABEL_35;
  }

  distantFuture2 = 0;
  v24 = 0;
  v25 = 0;
  v21 = 0.0;
  do
  {
    distantFuture3 = [distantFuture objectAtIndexedSubscript:v25];
    v27 = [distantFuture objectAtIndexedSubscript:v25 + 1];
    v28 = [(NSArray *)self->_values objectAtIndexedSubscript:v25];
    [v28 doubleValue];
    if (v29 < between || v29 > and)
    {
      if (distantFuture2)
      {
        if (v21 >= duration)
        {
          v22 = [_CDDateRange periodWithStart:distantFuture2 duration:v21];

          goto LABEL_42;
        }

        v21 = 0.0;
      }

      v31 = 0;
      distantFuture2 = 0;
      v32 = distantFuture3;
      if (!v24)
      {
LABEL_28:
        v34 = distantFuture3;
        v24 = v32;
        distantFuture2 = v31;
      }
    }

    else
    {
      [v27 timeIntervalSinceDate:distantFuture3];
      v21 = v21 + v33;
      v32 = v24;
      v31 = distantFuture3;
      if (!distantFuture2)
      {
        goto LABEL_28;
      }
    }

    ++v25;
  }

  while (v25 < [distantFuture count] - 1);
  v20 = v24;
  if (v21 > 0.0 && v24 != 0)
  {
    [v24 timeIntervalSinceDate:self->_startDate];
    v37 = v21 + v38;
    if (v37 < duration)
    {
      goto LABEL_38;
    }

    v36 = distantFuture2;
LABEL_44:
    v22 = [_CDDateRange periodWithStart:v36 duration:v37];
    goto LABEL_45;
  }

LABEL_35:
  v24 = v20;
  if (v21 >= duration)
  {
    v36 = distantFuture2;
    v37 = v21;
    goto LABEL_44;
  }

LABEL_38:
  v39 = +[_CDLogging knowledgeChannel];
  if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
  {
    [_DKPredictionTimeline largestDateRangeWithValuesBetween:and:ofMinimumDuration:];
  }

  distantFuture3 = [MEMORY[0x1E695DF00] distantFuture];
  distantFuture4 = [MEMORY[0x1E695DF00] distantFuture];
  v22 = [_CDDateRange periodWithStart:distantFuture3 end:distantFuture4];

LABEL_42:
LABEL_45:

LABEL_13:

  return v22;
}

- (void)encodeWithCoder:(id)coder
{
  startDate = self->_startDate;
  coderCopy = coder;
  [coderCopy encodeObject:startDate forKey:@"start"];
  [coderCopy encodeObject:self->_values forKey:@"values"];
  [coderCopy encodeObject:self->_transitionDates forKey:@"transitions"];
}

- (_DKPredictionTimeline)initWithCoder:(id)coder
{
  v67 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v53 = objc_autoreleasePoolPush();
  v52 = objc_alloc_init(objc_opt_class());
  v51 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"start"];
  v5 = MEMORY[0x1E695DFD8];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v5 setWithObjects:{v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"values"];
  if ([v12 count])
  {
    firstObject = [v12 firstObject];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v49 = v11;
      v50 = coderCopy;
      selfCopy = self;
      array = [MEMORY[0x1E695DF70] array];
      firstObject2 = [v12 firstObject];
      v17 = [firstObject2 mutableCopy];

      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      obj = v12;
      v18 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v62;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v62 != v20)
            {
              objc_enumerationMutation(obj);
            }

            v22 = *(*(&v61 + 1) + 8 * i);
            v23 = objc_autoreleasePoolPush();
            v59[0] = MEMORY[0x1E69E9820];
            v59[1] = 3221225472;
            v59[2] = __39___DKPredictionTimeline_initWithCoder___block_invoke;
            v59[3] = &unk_1E73684A8;
            v24 = v17;
            v60 = v24;
            [v22 enumerateKeysAndObjectsUsingBlock:v59];
            v25 = [v24 copy];
            [array addObject:v25];

            objc_autoreleasePoolPop(v23);
          }

          v19 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
        }

        while (v19);
      }

      v12 = [array copy];
      self = selfCopy;
      v26 = v52;
LABEL_21:
      v37 = 0x1E695D000;

      v11 = v49;
      coderCopy = v50;
      v27 = v53;
      goto LABEL_24;
    }

    firstObject3 = [v12 firstObject];
    objc_opt_class();
    v29 = objc_opt_isKindOfClass();

    v26 = v52;
    if (v29)
    {
      v49 = v11;
      v50 = coderCopy;
      array = [MEMORY[0x1E695DF70] array];
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v17 = v12;
      v30 = [v17 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v56;
        do
        {
          for (j = 0; j != v31; ++j)
          {
            if (*v56 != v32)
            {
              objc_enumerationMutation(v17);
            }

            v34 = *(*(&v55 + 1) + 8 * j);
            v35 = objc_autoreleasePoolPush();
            dk_dedup = [v34 dk_dedup];
            [array addObject:dk_dedup];

            objc_autoreleasePoolPop(v35);
          }

          v31 = [v17 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v31);
      }

      v12 = [array copy];
      goto LABEL_21;
    }

    v27 = v53;
  }

  else
  {
    v26 = v52;
    v27 = v53;
  }

  v37 = 0x1E695D000uLL;
LABEL_24:
  v38 = *(v37 + 4056);
  v39 = objc_opt_class();
  v40 = [v38 setWithObjects:{v39, objc_opt_class(), 0}];

  v41 = [coderCopy decodeObjectOfClasses:v40 forKey:@"transitions"];
  v42 = [v41 mutableCopy];

  if ([v42 count])
  {
    v43 = 0;
    do
    {
      v44 = [v42 objectAtIndexedSubscript:v43];
      dk_dedup2 = [v44 dk_dedup];
      [v42 setObject:dk_dedup2 atIndexedSubscript:v43];

      ++v43;
    }

    while (v43 < [v42 count]);
  }

  v46 = 0;
  if (v51 && v12 && v42)
  {
    [(_DKPredictionTimeline *)v26 initWithCoder:v51, v12, v42];
    v46 = v26;
  }

  objc_autoreleasePoolPop(v27);
  return v46;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      isUnavailable = [(_DKPredictionTimeline *)self isUnavailable];
      isUnavailable2 = [(_DKPredictionTimeline *)v5 isUnavailable];
      if (isUnavailable && (isUnavailable2 & 1) != 0)
      {
        v8 = 1;
      }

      else if (isUnavailable == isUnavailable2)
      {
        startDate = self->_startDate;
        startDate = [(_DKPredictionTimeline *)v5 startDate];
        if ([(NSDate *)startDate isEqual:startDate])
        {
          [(_DKPredictionTimeline *)self isEqual:v5, &v12];
          v8 = v12;
        }

        else
        {
          v8 = 0;
        }
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)description
{
  v24 = *MEMORY[0x1E69E9840];
  if ([(_DKPredictionTimeline *)self isUnavailable])
  {
    v18 = @"<_DKPrediction> [ Prediction Unavailable ]";
  }

  else
  {
    v18 = [MEMORY[0x1E696AD60] stringWithUTF8String:"<_DKPrediction>: [\n"];
    v3 = self->_startDate;
    if (description_onceToken != -1)
    {
      [_DKPredictionTimeline description];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = self->_transitionDates;
    v4 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      selfCopy = self;
      v6 = 0;
      v7 = *v20;
      do
      {
        v8 = 0;
        v9 = v3;
        v10 = v6;
        do
        {
          if (*v20 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v19 + 1) + 8 * v8);
          v12 = [description_formatter stringFromDate:v9];
          v13 = [description_formatter stringFromDate:v11];
          v6 = v10 + 1;
          v14 = [(NSArray *)selfCopy->_values objectAtIndexedSubscript:v10];
          [(__CFString *)v18 appendFormat:@"\t(%@ - %@): %@\n", v12, v13, v14];

          v3 = v11;
          ++v8;
          v9 = v3;
          v10 = v6;
        }

        while (v5 != v8);
        v5 = [(NSArray *)obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    [(__CFString *)v18 appendString:@"]"];
  }

  return v18;
}

- (void)initWithValues:(void *)values forDurations:(void *)durations startingAt:
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  valuesCopy = values;
  durationsCopy = durations;
  if (self)
  {
    v31.receiver = self;
    v31.super_class = _DKPredictionTimeline;
    v10 = objc_msgSendSuper2(&v31, sel_init);
    self = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 1, durations);
      v26 = v7;
      v11 = [v7 copy];
      v12 = self[5];
      self[5] = v11;

      array = [MEMORY[0x1E695DF70] array];
      v27 = 0u;
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v14 = valuesCopy;
      v15 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v28;
        v18 = 0.0;
        do
        {
          v19 = 0;
          do
          {
            if (*v28 != v17)
            {
              objc_enumerationMutation(v14);
            }

            [*(*(&v27 + 1) + 8 * v19) doubleValue];
            v18 = v18 + v20;
            v21 = [durationsCopy dateByAddingTimeInterval:v18];
            dk_dedup = [v21 dk_dedup];
            [array addObject:dk_dedup];

            ++v19;
          }

          while (v16 != v19);
          v16 = [v14 countByEnumeratingWithState:&v27 objects:v32 count:16];
        }

        while (v16);
      }

      v23 = [array copy];
      v24 = self[2];
      self[2] = v23;

      v7 = v26;
    }
  }

  return self;
}

- (id)initWithValues:(void *)values eachWithDuration:(double)duration startingAt:
{
  v7 = a2;
  valuesCopy = values;
  if (self)
  {
    v28.receiver = self;
    v28.super_class = _DKPredictionTimeline;
    self = objc_msgSendSuper2(&v28, sel_init);
    if (self)
    {
      dk_dedup = [valuesCopy dk_dedup];
      v10 = self[1];
      self[1] = dk_dedup;

      v11 = [v7 mutableCopy];
      array = [MEMORY[0x1E695DF70] array];
      v13 = self[1];
      if ([v11 count] < 2)
      {
        durationCopy3 = duration;
      }

      else
      {
        v14 = 1;
        durationCopy3 = duration;
        do
        {
          v16 = [v11 objectAtIndexedSubscript:v14];
          v17 = [v11 objectAtIndexedSubscript:v14 - 1];
          v18 = [v16 isEqual:v17];

          if (v18)
          {
            durationCopy3 = durationCopy3 + duration;
            [v11 removeObjectAtIndex:v14];
          }

          else
          {
            v19 = [v13 dateByAddingTimeInterval:durationCopy3];
            dk_dedup2 = [v19 dk_dedup];

            [array addObject:dk_dedup2];
            ++v14;
            durationCopy3 = duration;
            v13 = dk_dedup2;
          }
        }

        while (v14 < [v11 count]);
      }

      v21 = [v13 dateByAddingTimeInterval:durationCopy3];
      dk_dedup3 = [v21 dk_dedup];
      [array addObject:dk_dedup3];

      v23 = [array copy];
      v24 = self[2];
      self[2] = v23;

      v25 = [v11 copy];
      v26 = self[5];
      self[5] = v25;
    }
  }

  return self;
}

+ (id)timelineWithValues:(id)values forDurations:(id)durations startingAt:(id)at
{
  atCopy = at;
  durationsCopy = durations;
  valuesCopy = values;
  v11 = [(_DKPredictionTimeline *)[self alloc] initWithValues:valuesCopy forDurations:durationsCopy startingAt:atCopy];

  return v11;
}

+ (id)timelineWithValues:(id)values eachWithDuration:(double)duration startingAt:(id)at
{
  atCopy = at;
  valuesCopy = values;
  v10 = [(_DKPredictionTimeline *)[self alloc] initWithValues:valuesCopy eachWithDuration:atCopy startingAt:duration];

  return v10;
}

- (void)setStartDate:(uint64_t)date
{
  if (date)
  {
    objc_storeStrong((date + 8), a2);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [(_DKPredictionTimeline *)v4 setStartDate:?];
  v5 = [(NSArray *)self->_values copy];
  [(_DKSyncType *)v4 setXpcActivity:v5];

  v6 = [(NSArray *)self->_transitionDates copy];
  [(_DKSyncWindow *)v4 setStartDate:v6];

  return v4;
}

- (void)largestDateRangeWithValuesBetween:and:ofMinimumDuration:.cold.2()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)largestDateRangeWithValuesBetween:and:ofMinimumDuration:.cold.3()
{
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (id)initWithCoder:(void *)a3 .cold.1(void *a1, void *a2, void *a3, void *a4)
{
  [(_DKPredictionTimeline *)a1 setStartDate:a2];
  [(_DKSyncType *)a1 setXpcActivity:a3];
  v6 = [a4 copy];
  [(_DKSyncWindow *)a1 setStartDate:v6];

  return a1;
}

- (void)isEqual:(unsigned __int8 *)a3 .cold.1(uint64_t a1, void *a2, unsigned __int8 *a3)
{
  v6 = *(a1 + 40);
  if (a2)
  {
    v7 = a2[5];
  }

  else
  {
    v7 = 0;
  }

  v11 = v7;
  if ([v6 isEqual:?])
  {
    v8 = *(a1 + 16);
    v9 = [a2 transitionDates];
    v10 = [v8 isEqual:v9];
  }

  else
  {
    v10 = 0;
  }

  *a3 = v10;
}

@end