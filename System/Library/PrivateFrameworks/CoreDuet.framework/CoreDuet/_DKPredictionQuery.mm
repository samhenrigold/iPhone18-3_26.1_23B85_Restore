@interface _DKPredictionQuery
+ (id)predictionQueryForStream:(id)stream withPredicate:(id)predicate withPredictionType:(unint64_t)type;
+ (id)predictionQueryForStreams:(id)streams withPredicate:(id)predicate withPredictionType:(unint64_t)type;
+ (id)topNPredictionQueryForStream:(id)stream withPredicate:(id)predicate withTopN:(int64_t)n withMinLikelihood:(double)likelihood;
+ (uint64_t)calendar:(void *)calendar isWeekendWithIntervalToWeekdayWeekendTransition:(void *)transition containingOrAfterDate:;
- (BOOL)both:(void *)both and:(void *)and areSameDayOfWeekWith:;
- (_DKPredictionQuery)initWithCoder:(id)coder;
- (id)constructTimelineWithObservations:(void *)observations withFirstEventDate:(void *)date withHistogramInterval:(void *)interval withPredictionStartDate:(double)startDate durationSinceFirstEvent:;
- (id)copyWithZone:(_NSZone *)zone;
- (id)executeUsingCoreDataStorage:(id)storage error:(id *)error;
- (id)handleResults:(id)results error:(id)error;
- (id)likelihoodForTopN:(void *)n withMinLikelihood:(double)likelihood withData:;
- (id)predictionOfType:(void *)type withData:;
- (uint64_t)both:(void *)both and:(void *)and areWeekendOrWeekdayWithCalendar:;
- (uint64_t)shouldIncludeEventWithStartDate:(void *)date eventSlot:(void *)slot withPredictionStartDate:(uint64_t)startDate withPartitionType:(void *)type andCalendar:;
- (void)addEventsToObservations:(void *)observations startingHistogram:(void *)histogram endingHistogram:(void *)endingHistogram withPredictionDate:;
- (void)encodeWithCoder:(id)coder;
- (void)handleEventPredictionWithEventStartDate:(void *)date eventEndDate:(void *)endDate predictionStartDate:(void *)startDate durationSinceFirstEvent:(void *)event calendar:(int)calendar observations:(double)observations useWeights:;
- (void)handleImpulsePredictionWithEventStartDate:(void *)date predictionStartDate:(void *)startDate durationSinceFirstEvent:(void *)event calendar:(void *)calendar observations:(_DWORD *)observations lastDate:(double)lastDate lastSlot:;
- (void)setSlotDuration:(int)duration;
- (void)setValueForIndex:(void *)index forObservations:(double)observations withDenominator:;
@end

@implementation _DKPredictionQuery

- (void)setSlotDuration:(int)duration
{
  if (!duration || 86400 % duration)
  {
    duration = 900;
  }

  self->_slotDuration = duration;
  self->_totalSlotsInDay = 86400 / duration;
  asOfDate = self->_asOfDate;
  if (asOfDate)
  {
    date = asOfDate;
  }

  else
  {
    date = [MEMORY[0x1E695DF00] date];
  }

  v6 = self->_asOfDate;
  self->_asOfDate = date;

  MEMORY[0x1EEE66BB8](date, v6);
}

+ (id)predictionQueryForStream:(id)stream withPredicate:(id)predicate withPredictionType:(unint64_t)type
{
  v13[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  streamCopy = stream;
  v9 = objc_opt_class();
  v13[0] = streamCopy;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = [v9 predictionQueryForStreams:v10 withPredicate:predicateCopy withPredictionType:type];

  return v11;
}

+ (id)predictionQueryForStreams:(id)streams withPredicate:(id)predicate withPredictionType:(unint64_t)type
{
  v15[1] = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  streamsCopy = streams;
  v9 = objc_opt_class();
  v10 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v15[0] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12 = [v9 eventQueryWithPredicate:predicateCopy eventStreams:streamsCopy offset:0 limit:0 sortDescriptors:v11];

  [v12 setType:type];
  [v12 setSlotDuration:900];
  [v12 setReadMetadata:0];
  [v12 setDeduplicateValues:1];
  date = [MEMORY[0x1E695DF00] date];
  [v12 setAsOfDate:date];

  return v12;
}

+ (uint64_t)calendar:(void *)calendar isWeekendWithIntervalToWeekdayWeekendTransition:(void *)transition containingOrAfterDate:
{
  v6 = a2;
  transitionCopy = transition;
  objc_opt_self();
  v18 = 0;
  v19 = 0.0;
  v8 = [v6 rangeOfWeekendStartDate:&v18 interval:&v19 containingDate:transitionCopy];
  v9 = v18;
  v10 = v9;
  if (v8)
  {
    v11 = [v9 dateByAddingTimeInterval:v19];
    [v11 timeIntervalSinceDate:transitionCopy];
    v13 = v12;

    if (!calendar)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v17 = 0;
  [v6 nextWeekendStartDate:&v17 interval:0 options:4096 afterDate:transitionCopy];
  v14 = v17;

  [v14 timeIntervalSinceDate:transitionCopy];
  v13 = v15;
  v10 = v14;
  if (calendar)
  {
LABEL_5:
    *calendar = v13;
  }

LABEL_6:

  return v8;
}

- (id)executeUsingCoreDataStorage:(id)storage error:(id *)error
{
  if (self->_isTopNPrediction)
  {
    v20.receiver = self;
    v20.super_class = _DKPredictionQuery;
    storageCopy = storage;
    v7 = [(_DKEventQuery *)&v20 executeUsingCoreDataStorage:storageCopy error:error];

    if (error)
    {
      v8 = *error;
    }

    else
    {
      v8 = 0;
    }

    v19.receiver = self;
    v19.super_class = _DKPredictionQuery;
    v11 = [(_DKEventQuery *)&v19 handleResults:v7 error:v8];
    v13 = [(_DKPredictionQuery *)&self->super.super.super.isa likelihoodForTopN:v11 withMinLikelihood:self->_minLikelihood withData:?];
  }

  else
  {
    storageCopy2 = storage;
    [(_DKEventQuery *)self setResultType:3];
    [(_DKEventQuery *)self setGroupByProperties:&unk_1F05EF470];
    v17.receiver = self;
    v17.super_class = _DKPredictionQuery;
    v18 = 0;
    v10 = [(_DKEventQuery *)&v17 executeUsingCoreDataStorage:storageCopy2 error:&v18];

    v11 = v18;
    v16.receiver = self;
    v16.super_class = _DKPredictionQuery;
    v7 = [(_DKEventQuery *)&v16 handleResults:v10 error:v11];

    if (error && v11)
    {
      v12 = v11;
      *error = v11;
    }

    v13 = [(_DKPredictionQuery *)self predictionOfType:v7 withData:?];
  }

  v14 = v13;

  return v14;
}

- (id)handleResults:(id)results error:(id)error
{
  resultsCopy = results;
  predictionHandler = self->_predictionHandler;
  if (predictionHandler)
  {
    predictionHandler[2](predictionHandler, self, resultsCopy, error);
  }

  return resultsCopy;
}

- (_DKPredictionQuery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = _DKPredictionQuery;
  v5 = [(_DKEventQuery *)&v13 initWithCoder:coderCopy];
  if (!v5)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v6 = [coderCopy decodeIntForKey:@"slotDuration"];
  if (!v6)
  {
    v11 = +[_CDLogging knowledgeChannel];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [_DKPredictionQuery initWithCoder:];
    }

    goto LABEL_9;
  }

  [(_DKPredictionQuery *)v5 setSlotDuration:v6];
  -[_DKPredictionQuery setType:](v5, "setType:", [coderCopy decodeIntegerForKey:@"type"]);
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"asOfDate"];
  asOfDate = v5->_asOfDate;
  v5->_asOfDate = v7;

  v5->_partitionType = [coderCopy decodeIntegerForKey:@"partitionType"];
  v5->_useHistoricalHistogram = [coderCopy decodeBoolForKey:@"useHist"];
  v5->_minimumDaysOfHistory = [coderCopy decodeIntForKey:@"minDays"];
  if ([coderCopy containsValueForKey:@"isTopN"])
  {
    v5->_isTopNPrediction = 1;
    v5->_topN = [coderCopy decodeIntegerForKey:@"topN"];
    [coderCopy decodeDoubleForKey:@"minLikelihood"];
    v5->_minLikelihood = v9;
  }

  v10 = v5;
LABEL_10:

  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = _DKPredictionQuery;
  [(_DKEventQuery *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:self->_slotDuration forKey:@"slotDuration"];
  [coderCopy encodeInteger:self->_type forKey:@"type"];
  [coderCopy encodeObject:self->_asOfDate forKey:@"asOfDate"];
  [coderCopy encodeInteger:self->_partitionType forKey:@"partitionType"];
  [coderCopy encodeBool:self->_useHistoricalHistogram forKey:@"useHist"];
  [coderCopy encodeInteger:self->_minimumDaysOfHistory forKey:@"minDays"];
  if (self->_isTopNPrediction)
  {
    [coderCopy encodeBool:1 forKey:@"isTopN"];
    [coderCopy encodeInteger:self->_topN forKey:@"topN"];
    [coderCopy encodeDouble:@"minLikelihood" forKey:self->_minLikelihood];
  }
}

+ (id)topNPredictionQueryForStream:(id)stream withPredicate:(id)predicate withTopN:(int64_t)n withMinLikelihood:(double)likelihood
{
  predicateCopy = predicate;
  streamCopy = stream;
  v11 = [objc_opt_class() predictionQueryForStream:streamCopy withPredicate:predicateCopy withPredictionType:0];

  if (v11)
  {
    *(v11 + 129) = 1;
    *(v11 + 184) = n;
    *(v11 + 192) = likelihood;
  }

  [v11 setReadMetadata:0];
  [v11 setDeduplicateValues:1];
  date = [MEMORY[0x1E695DF00] date];
  [v11 setAsOfDate:date];

  return v11;
}

- (uint64_t)both:(void *)both and:(void *)and areWeekendOrWeekdayWithCalendar:
{
  if (result)
  {
    andCopy = and;
    bothCopy = both;
    LODWORD(a2) = [andCopy isDateInWeekend:a2];
    v8 = [andCopy isDateInWeekend:bothCopy];

    return a2 ^ v8 ^ 1;
  }

  return result;
}

- (BOOL)both:(void *)both and:(void *)and areSameDayOfWeekWith:
{
  if (!self)
  {
    return 0;
  }

  andCopy = and;
  bothCopy = both;
  v8 = [andCopy components:512 fromDate:a2];
  v9 = [andCopy components:512 fromDate:bothCopy];

  weekday = [v8 weekday];
  v11 = weekday == [v9 weekday];

  return v11;
}

- (uint64_t)shouldIncludeEventWithStartDate:(void *)date eventSlot:(void *)slot withPredictionStartDate:(uint64_t)startDate withPartitionType:(void *)type andCalendar:
{
  v11 = a2;
  slotCopy = slot;
  typeCopy = type;
  if (self)
  {
    if (startDate == 2)
    {
      [OUTLINED_FUNCTION_6_11() dateByAddingTimeInterval:?];
      objc_claimAutoreleasedReturnValue();
      v20 = OUTLINED_FUNCTION_3_11();
      v19 = [(_DKPredictionQuery *)v20 both:v21 and:v22 areSameDayOfWeekWith:v23];
    }

    else
    {
      if (startDate != 1)
      {
        self = 1;
        goto LABEL_5;
      }

      [OUTLINED_FUNCTION_6_11() dateByAddingTimeInterval:?];
      objc_claimAutoreleasedReturnValue();
      v15 = OUTLINED_FUNCTION_3_11();
      v19 = [(_DKPredictionQuery *)v15 both:v16 and:v17 areWeekendOrWeekdayWithCalendar:v18];
    }

    self = v19;
  }

LABEL_5:

  return self;
}

- (void)setValueForIndex:(void *)index forObservations:(double)observations withDenominator:
{
  if (self)
  {
    v6 = a2;
    indexCopy = index;
    v8 = [indexCopy objectAtIndexedSubscript:v6];
    [v8 doubleValue];
    v10 = v9 / observations;

    if (*(self + 144) == 1)
    {
      v10 = 1.0 / (pow(2.71828183, (v10 + -0.5) * -12.0) + 1.0);
    }

    v11 = 1.0;
    if (v10 <= 0.98)
    {
      v11 = v10;
      if (v10 < 0.02)
      {
        v11 = 0.0;
      }
    }

    v13 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
    dk_dedup = [v13 dk_dedup];
    [indexCopy setObject:dk_dedup atIndexedSubscript:v6];
  }
}

- (id)constructTimelineWithObservations:(void *)observations withFirstEventDate:(void *)date withHistogramInterval:(void *)interval withPredictionStartDate:(double)startDate durationSinceFirstEvent:
{
  v80[1] = *MEMORY[0x1E69E9840];
  v11 = a2;
  observationsCopy = observations;
  dateCopy = date;
  intervalCopy = interval;
  v15 = intervalCopy;
  v77 = dateCopy;
  if (self)
  {
    v16 = *(self + 152);
    if (startDate < 1209600.0)
    {
      v16 = 0;
    }

    v78 = intervalCopy;
    if (v16 == 2)
    {
      v45 = observationsCopy;
      [v45 timeIntervalSinceDate:v15];
      v46 = 0.0;
      if (v47 >= 0.0)
      {
        currentCalendar = v45;
      }

      else
      {
        do
        {
          currentCalendar = [v45 dateByAddingTimeInterval:604800.0];

          v46 = v46 + 1.0;
          [currentCalendar timeIntervalSinceDate:v15];
          v45 = currentCalendar;
        }

        while (v48 < 0.0);
      }

      v49 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:-2419200.0];
      if (dateCopy)
      {
        startDate = [dateCopy startDate];
        [startDate timeIntervalSinceDate:v49];
        v52 = v51;

        if (v52 >= -4233600.0)
        {
          v53 = vcvtpd_s64_f64(v52 / -604800.0);
          v54 = 1.0;
          if (v53 >= 2)
          {
            v55 = v53 - 1;
            v56 = 1.0;
            do
            {
              v54 = v54 + 1.0 / exp2(v56);
              v56 = v56 + 1.0;
              --v55;
            }

            while (v55);
          }

          v46 = v46 + v54;
        }

        else
        {
          v46 = v46 + 2.0;
        }
      }

      v57 = [v15 dateByAddingTimeInterval:86400.0];
      [currentCalendar timeIntervalSinceDate:v57];
      v59 = v58;

      if (v59 >= 0.0)
      {
        if (*(self + 140) >= 1)
        {
          v66 = 0;
          do
          {
            v67 = OUTLINED_FUNCTION_2_11();
            [(_DKPredictionQuery *)v67 setValueForIndex:v68 forObservations:v69 withDenominator:v46 + -1.0];
            ++v66;
          }

          while (v66 < *(self + 140));
        }
      }

      else
      {
        [currentCalendar timeIntervalSinceDate:v15];
        if (v60 < 0.0)
        {
          OUTLINED_FUNCTION_4_11();
        }

        if (*(self + 140) >= 1)
        {
          v61 = 0;
          do
          {
            v62 = OUTLINED_FUNCTION_2_11();
            [(_DKPredictionQuery *)v62 setValueForIndex:v63 forObservations:v64 withDenominator:v65];
            ++v61;
          }

          while (v61 < *(self + 140));
        }
      }
    }

    else
    {
      if (v16 != 1)
      {
        if (!v16)
        {
          [observationsCopy timeIntervalSinceDate:v78];
          v18 = v17;
          if (v17 < 0.0)
          {
            v18 = v17 + ceil(v17 / -86400.0) * 86400.0;
          }

          v19 = *(self + 132);
          v20 = *(self + 140);
          [observationsCopy timeIntervalSinceDate:v78];
          if (*(self + 140) >= 1)
          {
            v22 = 0;
            v23 = -(v21 / 86400.0);
            v24 = (v18 / v19 % v20);
            do
            {
              if (v24 == v22)
              {
                ++v23;
              }

              if (v23)
              {
                v25 = OUTLINED_FUNCTION_2_11();
                [(_DKPredictionQuery *)v25 setValueForIndex:v26 forObservations:v27 withDenominator:v28];
              }

              else
              {
                [v11 setObject:&unk_1F05EEA30 atIndexedSubscript:v22];
              }

              ++v22;
            }

            while (v22 < *(self + 140));
          }
        }

        goto LABEL_65;
      }

      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      v79 = 0.0;
      v80[0] = 0.0;
      v30 = [_DKPredictionQuery calendar:currentCalendar isWeekendWithIntervalToWeekdayWeekendTransition:v80 containingOrAfterDate:observationsCopy];
      v76 = [_DKPredictionQuery calendar:currentCalendar isWeekendWithIntervalToWeekdayWeekendTransition:&v79 containingOrAfterDate:v15];
      v74 = &v74;
      v31 = &v74 - ((4 * *(self + 140) + 15) & 0x7FFFFFFF0);
      bzero(v31, 4 * *(self + 140));
      v75 = observationsCopy;
      v32 = observationsCopy;
      [v15 timeIntervalSinceDate:v32];
      v34 = v33;
      [v32 timeIntervalSinceDate:v15];
      if (v35 < 0.0)
      {
        OUTLINED_FUNCTION_4_11();
        v35 = v36 + v37 * 86400.0;
      }

      v38 = *(self + 132);
      v39 = *(self + 140);
      v40 = v35 / v38 % v39;
      v41 = v79 - (v38 * v40);
      v42 = v76;
      if (v41 <= 0.0)
      {
        v42 = v76 ^ 1;
        v41 = 1.79769313e308;
      }

      if (v34 <= 0.0)
      {
        v43 = v32;
LABEL_39:
        observationsCopy = v75;
      }

      else
      {
        while (1)
        {
          if (((v42 ^ v30) & 1) == 0)
          {
            ++*&v31[4 * v40];
          }

          v43 = [v32 dateByAddingTimeInterval:*(self + 132)];

          v44 = *(self + 132);
          v34 = v34 - v44;
          if (v34 <= 0.0)
          {
            break;
          }

          v80[0] = v80[0] - v44;
          if (v80[0] <= 0.0)
          {
            v30 ^= 1u;
            [_DKPredictionQuery calendar:currentCalendar isWeekendWithIntervalToWeekdayWeekendTransition:v80 containingOrAfterDate:v43];
          }

          ++v40;
          LODWORD(v39) = *(self + 140);
          if (v40 == v39)
          {
            v40 = 0;
            v41 = v79;
            v42 = v76;
          }

          else if (v41 - *(self + 132) > 0.0)
          {
            v41 = v41 - *(self + 132);
          }

          else
          {
            v42 ^= 1u;
            v41 = 1.79769313e308;
          }

          v32 = v43;
          if (v34 <= 0.0)
          {
            goto LABEL_39;
          }
        }

        LODWORD(v39) = *(self + 140);
        observationsCopy = v75;
      }

      if (v39 >= 1)
      {
        v70 = 0;
        do
        {
          [(_DKPredictionQuery *)self setValueForIndex:v70 forObservations:v11 withDenominator:*&v31[4 * v70]];
          ++v70;
        }

        while (v70 < *(self + 140));
      }
    }

LABEL_65:
    v71 = [MEMORY[0x1E695DEC8] arrayWithArray:v11];
    v15 = v78;
    v72 = [_DKPredictionTimeline timelineWithValues:v71 eachWithDuration:v78 startingAt:*(self + 132)];

    goto LABEL_66;
  }

  v72 = 0;
LABEL_66:

  return v72;
}

- (void)handleImpulsePredictionWithEventStartDate:(void *)date predictionStartDate:(void *)startDate durationSinceFirstEvent:(void *)event calendar:(void *)calendar observations:(_DWORD *)observations lastDate:(double)lastDate lastSlot:
{
  v27 = a2;
  dateCopy = date;
  startDateCopy = startDate;
  eventCopy = event;
  if (self)
  {
    [v27 timeIntervalSinceDate:dateCopy];
    if (v18 < 0.0)
    {
      OUTLINED_FUNCTION_4_11();
      v18 = v19 + v20 * 86400.0;
    }

    v21 = v18 / *(self + 132) % *(self + 140);
    if (lastDate >= 1209600.0)
    {
      v22 = *(self + 152);
    }

    else
    {
      v22 = 0;
    }

    if ([(_DKPredictionQuery *)self shouldIncludeEventWithStartDate:v27 eventSlot:v21 withPredictionStartDate:dateCopy withPartitionType:v22 andCalendar:startDateCopy])
    {
      if (*observations != v21 || ([v27 timeIntervalSinceDate:*calendar], v23 >= *(self + 132)))
      {
        v24 = MEMORY[0x1E696AD98];
        v25 = [eventCopy objectAtIndexedSubscript:v21];
        v26 = [v24 numberWithInteger:{objc_msgSend(v25, "integerValue") + 1}];
        [eventCopy setObject:v26 atIndexedSubscript:v21];

        *observations = v21;
        *calendar = v27;
      }
    }
  }
}

- (void)handleEventPredictionWithEventStartDate:(void *)date eventEndDate:(void *)endDate predictionStartDate:(void *)startDate durationSinceFirstEvent:(void *)event calendar:(int)calendar observations:(double)observations useWeights:
{
  HIDWORD(v69) = calendar;
  v71 = a2;
  dateCopy = date;
  endDateCopy = endDate;
  startDateCopy = startDate;
  eventCopy = event;
  if (self)
  {
    [dateCopy timeIntervalSinceDate:v71];
    [v71 timeIntervalSinceDate:endDateCopy];
    v18 = [endDateCopy dateByAddingTimeInterval:(*(self + 132) * (v17 / *(self + 132)))];
    [v71 timeIntervalSinceDate:endDateCopy];
    if (v19 < 0.0)
    {
      OUTLINED_FUNCTION_4_11();
      v19 = v20 + v21 * 86400.0;
    }

    v22 = v19 / *(self + 132) % *(self + 140);
    LODWORD(v23) = v22;
    if (observations >= 1209600.0)
    {
      v24 = *(self + 152);
    }

    else
    {
      v24 = 0;
    }

    [dateCopy timeIntervalSinceDate:v18];
    v26 = v25;
    v27 = [(_DKPredictionQuery *)self shouldIncludeEventWithStartDate:v71 eventSlot:v22 withPredictionStartDate:endDateCopy withPartitionType:v24 andCalendar:startDateCopy];
    if (v26 <= 0.0)
    {
      if (!v27)
      {
LABEL_29:

        goto LABEL_30;
      }

      v35 = MEMORY[0x1E696AD98];
      v36 = [eventCopy objectAtIndexedSubscript:v22];
      v37 = v36;
      if (HIDWORD(v69))
      {
        [v36 doubleValue];
        OUTLINED_FUNCTION_5_7();
        [v35 numberWithDouble:v38 + v39];
      }

      else
      {
        [v35 numberWithInteger:{objc_msgSend(v36, "integerValue") + 1}];
      }
      v40 = ;
      OUTLINED_FUNCTION_7_4(v40, v57, v58, v59, v60, v61, v62, v63, v64, v65, v67, v69, eventCopy);
    }

    else
    {
      if (v27)
      {
        v28 = MEMORY[0x1E696AD98];
        v29 = [eventCopy objectAtIndexedSubscript:v22];
        v30 = v29;
        if (HIDWORD(v69))
        {
          [v29 doubleValue];
          v32 = v31;
          [v18 timeIntervalSinceDate:v71];
          [v28 numberWithDouble:v32 + v33 / *(self + 132)];
        }

        else
        {
          [v28 numberWithInteger:{objc_msgSend(v29, "integerValue") + 1}];
        }
        v34 = ;
        OUTLINED_FUNCTION_7_4(v34, v41, v42, v43, v44, v45, v46, v47, v64, v65, v67, v69, eventCopy);
      }

      v48 = v18;
      [dateCopy timeIntervalSinceDate:v48];
      if (v49 <= 0.0)
      {
        v37 = v48;
      }

      else
      {
        v66 = v18;
        v68 = startDateCopy;
        do
        {
          v23 = ((v23 + 1) % *(self + 140));
          if ([(_DKPredictionQuery *)self shouldIncludeEventWithStartDate:v48 eventSlot:v23 withPredictionStartDate:endDateCopy withPartitionType:v24 andCalendar:startDateCopy])
          {
            v50 = MEMORY[0x1E696AD98];
            v51 = [eventCopy objectAtIndexedSubscript:v23];
            v52 = v51;
            if (HIDWORD(v69))
            {
              [v51 doubleValue];
              OUTLINED_FUNCTION_5_7();
              [v50 numberWithDouble:{v54 + fmin(v53, 1.0)}];
            }

            else
            {
              [v50 numberWithInteger:{objc_msgSend(v51, "integerValue") + 1}];
            }
            v55 = ;
            [eventCopy setObject:v55 atIndexedSubscript:v23];

            v18 = v66;
            startDateCopy = v68;
          }

          v37 = [v48 dateByAddingTimeInterval:*(self + 132)];

          [dateCopy timeIntervalSinceDate:v37];
          v48 = v37;
        }

        while (v56 > 0.0);
      }
    }

    goto LABEL_29;
  }

LABEL_30:
}

- (void)addEventsToObservations:(void *)observations startingHistogram:(void *)histogram endingHistogram:(void *)endingHistogram withPredictionDate:
{
  v30 = a2;
  observationsCopy = observations;
  histogramCopy = histogram;
  endingHistogramCopy = endingHistogram;
  if (self && observationsCopy | histogramCopy)
  {
    v28 = [endingHistogramCopy slotFromMidnightWithTotalSlotsInDay:*(self + 140)];
    if (observationsCopy && v28 < *(self + 140))
    {
      v11 = 0;
      v12 = v28;
      do
      {
        if ((v11 & 0x80000000) == 0 && [v30 count] - 1 >= v11)
        {
          v13 = MEMORY[0x1E696AD98];
          v14 = [v30 objectAtIndexedSubscript:v11];
          [v14 doubleValue];
          v16 = v15;
          v17 = [MEMORY[0x1E696AD98] numberWithInt:v12];
          v18 = [v13 numberWithDouble:{v16 + objc_msgSend(observationsCopy, "countForValue:", v17)}];
          [v30 setObject:v18 atIndexedSubscript:v11];
        }

        v12 = (v12 + 1);
        ++v11;
      }

      while (v12 < *(self + 140));
    }

    if (histogramCopy && v28 >= 1)
    {
      v19 = 0;
      v20 = *(self + 140) - v28;
      do
      {
        v21 = v20 + v19;
        if (((v20 + v19) & 0x80000000) == 0 && [v30 count] - 1 >= v21)
        {
          v22 = MEMORY[0x1E696AD98];
          v23 = [v30 objectAtIndexedSubscript:v21];
          [v23 doubleValue];
          v25 = v24;
          v26 = [MEMORY[0x1E696AD98] numberWithInt:v19];
          v27 = [v22 numberWithDouble:{v25 + objc_msgSend(histogramCopy, "countForValue:", v26)}];
          [v30 setObject:v27 atIndexedSubscript:v21];
        }

        ++v19;
      }

      while (v28 != v19);
    }
  }
}

- (id)predictionOfType:(void *)type withData:
{
  v125 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  v6 = typeCopy;
  if (self)
  {
    if ([typeCopy count])
    {
      v100 = *(self + 160);
      v7 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(self + 140)];
      if (*(self + 140) >= 1)
      {
        v8 = 0;
        do
        {
          [v7 setObject:&unk_1F05EEA30 atIndexedSubscript:v8++];
        }

        while (v8 < *(self + 140));
      }

      selfCopy = self;
      v103 = v7;
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      array = [MEMORY[0x1E695DF70] array];
      localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
      secondsFromGMT = [localTimeZone secondsFromGMT];

      v113 = 0u;
      v114 = 0u;
      v111 = 0u;
      v112 = 0u;
      v99 = v6;
      v11 = v6;
      v12 = [v11 countByEnumeratingWithState:&v111 objects:v124 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = secondsFromGMT;
        v15 = *v112;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v112 != v15)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v111 + 1) + 8 * i);
            v18 = [v17 valueForKey:@"secondsFromGMT"];
            [v18 doubleValue];
            v20 = v19;

            if (v20 == v14)
            {
              [array addObject:v17];
            }

            else
            {
              v21 = [v17 objectForKeyedSubscript:@"startDate"];
              v22 = [v17 objectForKeyedSubscript:@"endDate"];
              v23 = v20 - v14;
              v24 = [v21 dateByAddingTimeInterval:v23];

              v25 = [v22 dateByAddingTimeInterval:v23];

              v122[0] = @"startDate";
              v122[1] = @"endDate";
              v123[0] = v24;
              v123[1] = v25;
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v123 forKeys:v122 count:2];
              [array addObject:v26];
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v111 objects:v124 count:16];
        }

        while (v13);
      }

      [array sortUsingComparator:&__block_literal_global_44];
      firstObject = [array firstObject];
      v28 = [firstObject objectForKeyedSubscript:@"startDate"];
      v29 = v100;
      [v100 timeIntervalSinceDate:v28];
      v31 = v30;

      v32 = (86400 * *(selfCopy + 136));
      v33 = +[_CDLogging knowledgeChannel];
      v34 = v33;
      if (v31 < v32)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          v71 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
          v29 = v100;
          v72 = [MEMORY[0x1E696AD98] numberWithInt:(86400 * *(selfCopy + 136))];
          *buf = 138412546;
          v117 = v71;
          v118 = 2112;
          v119 = v72;
          OUTLINED_FUNCTION_19();
          _os_log_error_impl(v73, v74, v75, v76, v77, 0x16u);
        }

        v35 = +[_DKPredictionTimeline predictionUnavailable];
LABEL_54:
        v6 = v99;

        goto LABEL_55;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
      {
        firstObject2 = [array firstObject];
        v79 = [firstObject2 objectForKeyedSubscript:@"startDate"];
        *buf = 138412802;
        v117 = v100;
        v118 = 2112;
        v119 = v79;
        v120 = 2048;
        v121 = v31;
        _os_log_debug_impl(&dword_191750000, v34, OS_LOG_TYPE_DEBUG, "Prediction Start Date %@, First Object Start: %@, Duration: %lf", buf, 0x20u);
      }

      if (*(selfCopy + 128) != 1)
      {
        goto LABEL_29;
      }

      v37 = *(selfCopy + 152);
      if (v37)
      {
        if (v37 != 1)
        {
          if (v37 != 2)
          {
LABEL_29:
            v96 = 0;
            v97 = 0;
            v98 = 0;
LABEL_35:
            *buf = -1;
            distantPast = [MEMORY[0x1E695DF00] distantPast];
            v107 = 0u;
            v108 = 0u;
            v109 = 0u;
            v110 = 0u;
            v44 = array;
            v45 = [v44 countByEnumeratingWithState:&v107 objects:v115 count:16];
            if (!v45)
            {
              v47 = 0;
LABEL_59:

              v62 = v98;
              v35 = [(_DKPredictionQuery *)selfCopy constructTimelineWithObservations:v103 withFirstEventDate:v47 withHistogramInterval:v98 withPredictionStartDate:v100 durationSinceFirstEvent:v31];
              v63 = v97;
              [v35 setStartHistogram:v97];
              v64 = v96;
              [v35 setEndHistogram:v96];
LABEL_53:

              goto LABEL_54;
            }

            v46 = v45;
            v47 = 0;
            v48 = *v108;
            v95 = distantPast;
LABEL_37:
            v49 = 0;
            while (1)
            {
              if (*v108 != v48)
              {
                objc_enumerationMutation(v44);
              }

              v50 = *(*(&v107 + 1) + 8 * v49);
              v51 = [v50 valueForKey:{@"startDate", v95}];
              v52 = [v50 valueForKey:@"endDate"];
              if (!v47)
              {
                v47 = v51;
              }

              if (a2 == 2)
              {
                v60 = OUTLINED_FUNCTION_0_17();
                v61 = 0;
              }

              else
              {
                if (a2 != 1)
                {
                  if (a2)
                  {

                    v35 = 0;
                    v63 = v97;
                    v62 = v98;
                    distantPast = v95;
                    v64 = v96;
                    goto LABEL_53;
                  }

                  v106 = distantPast;
                  [(_DKPredictionQuery *)selfCopy handleImpulsePredictionWithEventStartDate:v51 predictionStartDate:v100 durationSinceFirstEvent:currentCalendar calendar:v103 observations:&v106 lastDate:buf lastSlot:v31];
                  v53 = v106;

                  distantPast = v53;
                  goto LABEL_49;
                }

                v60 = OUTLINED_FUNCTION_0_17();
                v61 = 1;
              }

              [(_DKPredictionQuery *)v54 handleEventPredictionWithEventStartDate:v55 eventEndDate:v56 predictionStartDate:v57 durationSinceFirstEvent:v58 calendar:v59 observations:v61 useWeights:v60];
LABEL_49:

              if (v46 == ++v49)
              {
                v46 = [v44 countByEnumeratingWithState:&v107 objects:v115 count:16];
                if (v46)
                {
                  goto LABEL_37;
                }

                goto LABEL_59;
              }
            }
          }

          storage = [selfCopy storage];
          v81 = storage;
          if (storage)
          {
            v82 = storage;
          }

          else
          {
            v82 = +[_DKKnowledgeStore knowledgeStoreWithDirectReadOnlyAccess];
          }

          v38 = v82;

          v83 = objc_alloc_init(_DKDeviceActivityStandingQuery);
          v84 = [currentCalendar component:512 fromDate:v100];
          v85 = [v100 dateByAddingTimeInterval:86399.0];
          v86 = [currentCalendar component:512 fromDate:v85];

          v87 = [(_DKDeviceActivityStandingQuery *)v83 fetchResultForDayOfWeek:v84 withStorage:v38];
          if (v84 == v86)
          {
            v88 = 0;
          }

          else
          {
            v88 = [(_DKDeviceActivityStandingQuery *)v83 fetchResultForDayOfWeek:v86 withStorage:v38];
          }

          [(_DKPredictionQuery *)selfCopy addEventsToObservations:v103 startingHistogram:v87 endingHistogram:v88 withPredictionDate:v100];
          if (v87 && v88)
          {
            interval = [v87 interval];
            startDate = [interval startDate];
            interval2 = [v88 interval];
            startDate2 = [interval2 startDate];
            [startDate timeIntervalSinceDate:startDate2];
            if (v93 > 0.0)
            {
              v94 = v88;
            }

            else
            {
              v94 = v87;
            }

            interval3 = [v94 interval];

            v41 = v87;
            v40 = v88;
          }

          else if (v87)
          {
            interval3 = [v87 interval];
            v41 = v87;
            v40 = 0;
          }

          else
          {
            interval3 = [v88 interval];
            v40 = v88;
            v41 = 0;
          }

LABEL_34:
          v96 = v40;
          v97 = v41;
          v98 = interval3;

          goto LABEL_35;
        }

        v38 = +[_CDLogging knowledgeChannel];
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
LABEL_33:
          v40 = 0;
          v41 = 0;
          interval3 = 0;
          goto LABEL_34;
        }

        *buf = 0;
        v39 = "Historical histogram option not supported with _DKDataPartitionTypeWeekdayWeekend";
      }

      else
      {
        v38 = +[_CDLogging knowledgeChannel];
        if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *buf = 0;
        v39 = "Historical histogram option not supported with _DKDataPartitionTypeNone";
      }

      _os_log_error_impl(&dword_191750000, v38, OS_LOG_TYPE_ERROR, v39, buf, 2u);
      goto LABEL_33;
    }

    v36 = +[_CDLogging knowledgeChannel];
    if (OUTLINED_FUNCTION_60(v36))
    {
      *buf = 0;
      OUTLINED_FUNCTION_19();
      _os_log_error_impl(v66, v67, v68, v69, v70, 2u);
    }

    v35 = +[_DKPredictionTimeline predictionUnavailable];
  }

  else
  {
    v35 = 0;
  }

LABEL_55:

  return v35;
}

- (id)likelihoodForTopN:(void *)n withMinLikelihood:(double)likelihood withData:
{
  v128 = *MEMORY[0x1E69E9840];
  nCopy = n;
  v8 = nCopy;
  if (self)
  {
    if ([nCopy count])
    {
      v95 = a2;
      selfCopy = self;
      array = [MEMORY[0x1E695DF70] array];
      localTimeZone = [MEMORY[0x1E695DFE8] localTimeZone];
      secondsFromGMT = [localTimeZone secondsFromGMT];

      v116 = 0u;
      v117 = 0u;
      v114 = 0u;
      v115 = 0u;
      v94 = v8;
      v12 = v8;
      v13 = [v12 countByEnumeratingWithState:&v114 objects:v127 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = secondsFromGMT;
        v16 = *v115;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v115 != v16)
            {
              objc_enumerationMutation(v12);
            }

            v18 = *(*(&v114 + 1) + 8 * i);
            value = [v18 value];
            stringValue = [value stringValue];

            if (stringValue)
            {
              timeZone = [v18 timeZone];
              secondsFromGMT2 = [timeZone secondsFromGMT];

              v23 = [v18 valueForKey:@"startDate"];
              v24 = v23;
              if (secondsFromGMT2 != v15)
              {
                v25 = [v23 dateByAddingTimeInterval:secondsFromGMT2 - v15];

                v24 = v25;
              }

              v125[0] = @"startDate";
              v125[1] = @"bundleID";
              v126[0] = v24;
              v126[1] = stringValue;
              v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v126 forKeys:v125 count:2];
              [array addObject:v26];
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v114 objects:v127 count:16];
        }

        while (v14);
      }

      [array sortUsingComparator:&__block_literal_global_25];
      v27 = selfCopy[20];
      firstObject = [array firstObject];
      v29 = [firstObject valueForKey:@"startDate"];

      v101 = v27;
      [v27 timeIntervalSinceDate:v29];
      v31 = v30;
      if (v30 >= (86400 * *(selfCopy + 34)))
      {
        v93 = v29;
        v35 = MEMORY[0x1E695E0F8];
        v106 = [MEMORY[0x1E695E0F8] mutableCopy];
        v105 = [v35 mutableCopy];
        v98 = [v35 mutableCopy];
        v110 = 0u;
        v111 = 0u;
        v112 = 0u;
        v113 = 0u;
        v96 = array;
        obj = array;
        v102 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
        if (v102)
        {
          v99 = *v111;
          do
          {
            for (j = 0; j != v102; ++j)
            {
              if (*v111 != v99)
              {
                objc_enumerationMutation(obj);
              }

              v37 = *(*(&v110 + 1) + 8 * j);
              v38 = objc_autoreleasePoolPush();
              v39 = [v37 valueForKey:@"bundleID"];
              v40 = [v37 valueForKey:@"startDate"];
              v41 = [v105 objectForKeyedSubscript:v39];
              v42 = [v106 objectForKeyedSubscript:v39];
              if (v41)
              {
                intValue = [v41 intValue];
              }

              else
              {
                distantPast = [MEMORY[0x1E695DF00] distantPast];

                intValue = -1;
                v42 = distantPast;
              }

              [v40 timeIntervalSinceDate:v101];
              if (v45 < 0.0)
              {
                v45 = v45 + ceil(v45 / -86400.0) * 86400.0;
              }

              v46 = (v45 / *(selfCopy + 33) % *(selfCopy + 35));
              if (intValue != v46 || ([v40 timeIntervalSinceDate:v42], v47 >= *(selfCopy + 33)))
              {
                v48 = [v98 objectForKeyedSubscript:v39];
                if (!v48)
                {
                  v48 = [MEMORY[0x1E696AB50] set];
                }

                v49 = [MEMORY[0x1E696AD98] numberWithInt:v46];
                [v48 addObject:v49];
                [v98 setObject:v48 forKeyedSubscript:v39];
                [v105 setObject:v49 forKeyedSubscript:v39];
                [v106 setObject:v40 forKeyedSubscript:v39];
              }

              objc_autoreleasePoolPop(v38);
            }

            v102 = [obj countByEnumeratingWithState:&v110 objects:v124 count:16];
          }

          while (v102);
        }

        v29 = v93;
        [v93 timeIntervalSinceDate:v101];
        v51 = v50;
        if (v50 < 0.0)
        {
          v51 = v50 + ceil(v50 / -86400.0) * 86400.0;
        }

        v52 = selfCopy;
        v53 = *(selfCopy + 33);
        v54 = *(selfCopy + 35);
        [v93 timeIntervalSinceDate:v101];
        v56 = (v55 / 86400.0);
        v57 = -v56;
        array = v96;
        v58 = v98;
        if (v56 < 1)
        {
          v103 = [MEMORY[0x1E695DF70] arrayWithCapacity:*(selfCopy + 35)];
          allKeys = [v98 allKeys];
          v61 = [allKeys mutableCopy];

          if (*(selfCopy + 35) >= 1)
          {
            v62 = 0;
            v100 = v51 / v53 % v54;
            do
            {
              dictionary = [MEMORY[0x1E695DF90] dictionary];
              if (v62 == v100)
              {
                LODWORD(v57) = v57 + 1;
              }

              if (v57)
              {
                v107[0] = MEMORY[0x1E69E9820];
                v107[1] = 3221225472;
                v107[2] = __67___DKPredictionQuery_likelihoodForTopN_withMinLikelihood_withData___block_invoke_28;
                v107[3] = &unk_1E7368F30;
                v64 = v98;
                v108 = v64;
                v109 = v62;
                [v61 sortUsingComparator:v107];
                if ([v61 count] <= v95)
                {
                  v65 = 0;
                }

                else
                {
                  v65 = [v61 count] - v95;
                }

                for (k = [v61 count] - 1; k >= v65; --k)
                {
                  v67 = [v61 objectAtIndexedSubscript:k];
                  v68 = [v64 objectForKeyedSubscript:v67];
                  v69 = [MEMORY[0x1E696AD98] numberWithInt:v62];
                  v70 = [v68 countForObject:v69] / v57;

                  if (v70 >= likelihood)
                  {
                    v71 = [MEMORY[0x1E696AD98] numberWithDouble:v70];
                    dk_dedup = [v71 dk_dedup];
                    [dictionary setObject:dk_dedup forKeyedSubscript:v67];
                  }
                }

                v73 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
                [v103 addObject:v73];

                array = v96;
                v52 = selfCopy;
              }

              else
              {
                [v103 addObject:MEMORY[0x1E695E0F8]];
              }

              v62 = (v62 + 1);
            }

            while (v62 < *(v52 + 35));
          }

          v33 = [_DKPredictionTimeline timelineWithValues:v103 eachWithDuration:v101 startingAt:*(v52 + 33)];

          v29 = v93;
          v8 = v94;
          v58 = v98;
        }

        else
        {
          v59 = +[_CDLogging knowledgeChannel];
          v8 = v94;
          if (OUTLINED_FUNCTION_60(v59))
          {
            v87 = [MEMORY[0x1E696AD98] numberWithInt:v57];
            v118 = 138412802;
            v119 = v87;
            v120 = 2112;
            v121 = v93;
            v122 = 2112;
            v123 = v101;
            OUTLINED_FUNCTION_19();
            _os_log_error_impl(v88, v89, v90, v91, v92, 0x20u);
          }

          v33 = +[_DKPredictionTimeline predictionUnavailable];
        }
      }

      else
      {
        v32 = +[_CDLogging knowledgeChannel];
        if (OUTLINED_FUNCTION_60(v32))
        {
          v80 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
          v81 = [MEMORY[0x1E696AD98] numberWithInt:(86400 * *(selfCopy + 34))];
          v118 = 138412546;
          v119 = v80;
          v120 = 2112;
          v121 = v81;
          OUTLINED_FUNCTION_19();
          _os_log_error_impl(v82, v83, v84, v85, v86, 0x16u);
        }

        v33 = +[_DKPredictionTimeline predictionUnavailable];
        v8 = v94;
      }
    }

    else
    {
      v34 = +[_CDLogging knowledgeChannel];
      if (OUTLINED_FUNCTION_60(v34))
      {
        LOWORD(v118) = 0;
        OUTLINED_FUNCTION_19();
        _os_log_error_impl(v75, v76, v77, v78, v79, 2u);
      }

      v33 = +[_DKPredictionTimeline predictionUnavailable];
    }
  }

  else
  {
    v33 = 0;
  }

  return v33;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = _DKPredictionQuery;
  v4 = [(_DKEventQuery *)&v6 copyWithZone:zone];
  [v4 setSlotDuration:self->_slotDuration];
  [v4 setType:self->_type];
  [v4 setAsOfDate:self->_asOfDate];
  [v4 setPartitionType:self->_partitionType];
  [v4 setUseHistoricalHistogram:self->_useHistoricalHistogram];
  [v4 setMinimumDaysOfHistory:self->_minimumDaysOfHistory];
  if (v4)
  {
    *(v4 + 129) = self->_isTopNPrediction;
    *(v4 + 23) = self->_topN;
    *(v4 + 24) = *&self->_minLikelihood;
  }

  return v4;
}

- (void)initWithCoder:.cold.1()
{
  v5 = [MEMORY[0x1E696AD98] numberWithInt:0];
  OUTLINED_FUNCTION_19();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end