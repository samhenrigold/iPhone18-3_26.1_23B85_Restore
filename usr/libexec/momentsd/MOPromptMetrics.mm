@interface MOPromptMetrics
+ (id)doubleKeys;
+ (id)getTimeDeltaMetricMap;
+ (id)meanOf:(id)of;
+ (id)medianOf:(id)of;
+ (id)standardDeviationOf:(id)of;
+ (id)supportedMetricKeys;
- (BOOL)doesInterval:(id)interval overlapWithAnyIntervalFromArray:(id)array;
- (BOOL)submitMetricsWithError:(id *)error;
- (MOPromptMetrics)initWithLoggingEnabled:(BOOL)enabled;
- (MOPromptMetrics)initWithStartDate:(id)date endDate:(id)endDate;
- (MOPromptMetrics)initWithStartDate:(id)date endDate:(id)endDate EventManager:(id)manager;
- (id)calculateZeroCountsForEvents:(id)events withCalendar:(id)calendar;
- (void)calculateAndSetMetricsForCorrelatedEvents:(id)events;
- (void)calculateAndSetMetricsForRawEvents:(id)events;
- (void)calculateAndSetMetricsForSemanticallyBundledEvents:(id)events;
- (void)getAndSetAgeGender;
- (void)setAge:(id)age;
- (void)setBiologicalSex:(id)sex;
- (void)setDerivedMetrics;
- (void)setIHAState:(BOOL)state;
@end

@implementation MOPromptMetrics

- (MOPromptMetrics)initWithStartDate:(id)date endDate:(id)endDate
{
  dateCopy = date;
  endDateCopy = endDate;
  v10 = endDateCopy;
  if (!dateCopy)
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOPromptMetrics initWithStartDate:endDate:];
    }

    v17 = +[NSAssertionHandler currentHandler];
    v18 = v17;
    v19 = @"Invalid parameter not satisfying: startDate";
    v20 = a2;
    selfCopy2 = self;
    v22 = 38;
    goto LABEL_12;
  }

  if (!endDateCopy)
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOPromptMetrics initWithStartDate:endDate:];
    }

    v17 = +[NSAssertionHandler currentHandler];
    v18 = v17;
    v19 = @"Invalid parameter not satisfying: endDate";
    v20 = a2;
    selfCopy2 = self;
    v22 = 39;
LABEL_12:
    [v17 handleFailureInMethod:v20 object:selfCopy2 file:@"MOPromptMetrics.m" lineNumber:v22 description:v19];

    selfCopy3 = 0;
    goto LABEL_13;
  }

  v11 = [(MOPromptMetrics *)self initWithLoggingEnabled:1];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_startDate, date);
    objc_storeStrong(&v12->_endDate, endDate);
    [(NSDate *)v12->_endDate timeIntervalSinceDate:v12->_startDate];
    v13 = [NSNumber numberWithDouble:?];
    metrics = [(MOMetric *)v12 metrics];
    [metrics setObject:v13 forKeyedSubscript:@"QueryTimeDuration"];
  }

  self = v12;
  selfCopy3 = self;
LABEL_13:

  return selfCopy3;
}

- (MOPromptMetrics)initWithStartDate:(id)date endDate:(id)endDate EventManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v11 = [(MOPromptMetrics *)self initWithStartDate:date endDate:endDate];
    v12 = v11;
    if (v11)
    {
      objc_storeStrong(&v11->_eventManager, manager);
    }

    self = v12;
    selfCopy = self;
  }

  else
  {
    v14 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [MOPromptMetrics initWithStartDate:endDate:EventManager:];
    }

    v15 = +[NSAssertionHandler currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"MOPromptMetrics.m" lineNumber:54 description:@"Invalid parameter not satisfying: eventManager"];

    selfCopy = 0;
  }

  return selfCopy;
}

- (MOPromptMetrics)initWithLoggingEnabled:(BOOL)enabled
{
  v49.receiver = self;
  v49.super_class = MOPromptMetrics;
  v3 = [(MOMetric *)&v49 initWithLoggingEnabled:enabled];
  if (v3)
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
    v5 = [bOOLeanKeys countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v46;
      do
      {
        v8 = 0;
        do
        {
          if (*v46 != v7)
          {
            objc_enumerationMutation(bOOLeanKeys);
          }

          v9 = *(*(&v45 + 1) + 8 * v8);
          metrics = [(MOMetric *)v3 metrics];
          [metrics setObject:&__kCFBooleanFalse forKeyedSubscript:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [bOOLeanKeys countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v6);
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    integerKeys = [objc_opt_class() integerKeys];
    v12 = [integerKeys countByEnumeratingWithState:&v41 objects:v52 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v42;
      do
      {
        v15 = 0;
        do
        {
          if (*v42 != v14)
          {
            objc_enumerationMutation(integerKeys);
          }

          v16 = *(*(&v41 + 1) + 8 * v15);
          metrics2 = [(MOMetric *)v3 metrics];
          [metrics2 setObject:&off_10036C1C0 forKeyedSubscript:v16];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [integerKeys countByEnumeratingWithState:&v41 objects:v52 count:16];
      }

      while (v13);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    doubleKeys = [objc_opt_class() doubleKeys];
    v19 = [doubleKeys countByEnumeratingWithState:&v37 objects:v51 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        v22 = 0;
        do
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(doubleKeys);
          }

          v23 = *(*(&v37 + 1) + 8 * v22);
          metrics3 = [(MOMetric *)v3 metrics];
          [metrics3 setObject:&off_10036E7A0 forKeyedSubscript:v23];

          v22 = v22 + 1;
        }

        while (v20 != v22);
        v20 = [doubleKeys countByEnumeratingWithState:&v37 objects:v51 count:16];
      }

      while (v20);
    }

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    bucketedKeys = [objc_opt_class() bucketedKeys];
    v26 = [bucketedKeys countByEnumeratingWithState:&v33 objects:v50 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        v29 = 0;
        do
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(bucketedKeys);
          }

          v30 = *(*(&v33 + 1) + 8 * v29);
          metrics4 = [(MOMetric *)v3 metrics];
          [metrics4 setObject:&off_10036C1C0 forKeyedSubscript:v30];

          v29 = v29 + 1;
        }

        while (v27 != v29);
        v27 = [bucketedKeys countByEnumeratingWithState:&v33 objects:v50 count:16];
      }

      while (v27);
    }
  }

  return v3;
}

+ (id)doubleKeys
{
  return +[NSSet setWithObjects:]( NSSet,  "setWithObjects:",  @"QueryTimeDuration",  @"Routine_AverageVisitsLatency",  @"Routine_AverageVisitsRealLatency",  @"Storytelling_AverageMomentsLatency",  @"Storytelling_AverageMomentsRealLatency",  @"Workout_AverageWorkoutLatency",  @"Proactive_EventsAverageLatency",  @"Proactive_MediaOnRepeatAverageLatency",  @"Proactive_TopicAverageLatency",  @"Proactive_TravelAverageLatency",  @"Proactive_SharedWithYouAverageLatency",  @"Proactive_SignificantContactAverageLatency",  @"Proactive_StructuredEventsAverageLatency",  @"Proactive_LeisureMediaEventsAverageLatency",  @"Proactive_NLEventsAverageLatency",  @"Routine_MeanDeltaBetweenVisits",  @"Routine_MeanDeltaBetweenVisitsBoundariesIncluded",  @"Routine_MinDeltaBetweenVisits",  @"Routine_MinDeltaBetweenVisitsBoundariesIncluded",  @"Routine_MaxDeltaBetweenVisits",  @"Routine_MaxDeltaBetweenVisitsBoundariesIncluded",  @"Routine_SDDeltaBetweenVisits",  @"Routine_SDDeltaBetweenVisitsBoundariesIncluded",  @"Storytelling_PercentageOfMomentEventsNoLOI",  @"Workout_PercentageOfWorkoutEventsNoLOI",  @"Proactive_PercentageOfMediaOnRepeatEventsNoLOI",  @"Proactive_PercentageOfTopicEventsNoLOI",  @"Proactive_PercentageOfTravelEventsNoLOI",  @"Proactive_PercentageOfSharedWithYouEventsNoLOI",  @"Proactive_PercentageOfSignificantContactEventsNoLOI",  @"Proactive_PercentageOfStructuredEventsNoLOI",  @"Proactive_PercentageOfLeisureMediaEventsNoLOI",  @"Proactive_PercentageOfNLEventsNoLOI",  @"Storytelling_MeanDeltaBetweenMoments",  @"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded",  @"Storytelling_MinDeltaBetweenMoments",  @"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded",  @"Storytelling_MaxDeltaBetweenMoments",  @"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded",  @"Storytelling_SDDeltaBetweenMoments",  @"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded",  @"Workout_MeanDeltaBetweenWorkouts",  @"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded",  @"Workout_MinDeltaBetweenWorkouts",  @"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded",  @"Workout_MaxDeltaBetweenWorkouts",  @"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded",
           @"Workout_SDDeltaBetweenWorkouts",
           @"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded",
           @"Proactive_MeanDeltaBetweenMediaOnRepeatEvents",
           @"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded",
           @"Proactive_MinDeltaBetweenMediaOnRepeatEvents",
           @"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded",
           @"Proactive_MaxDeltaBetweenMediaOnRepeatEvents",
           @"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded",
           @"Proactive_SDDeltaBetweenMediaOnRepeatEvents",
           @"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded",
           @"Proactive_MeanDeltaBetweenTopicEvents",
           @"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded",
           @"Proactive_MinDeltaBetweenTopicEvents",
           @"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded");
}

+ (id)supportedMetricKeys
{
  integerKeys = [objc_opt_class() integerKeys];
  v3 = [NSMutableSet setWithSet:integerKeys];

  bOOLeanKeys = [objc_opt_class() BOOLeanKeys];
  allObjects = [bOOLeanKeys allObjects];
  [v3 addObjectsFromArray:allObjects];

  doubleKeys = [objc_opt_class() doubleKeys];
  allObjects2 = [doubleKeys allObjects];
  [v3 addObjectsFromArray:allObjects2];

  bucketedKeys = [objc_opt_class() bucketedKeys];
  allObjects3 = [bucketedKeys allObjects];
  [v3 addObjectsFromArray:allObjects3];

  return v3;
}

- (BOOL)submitMetricsWithError:(id *)error
{
  [(MOPromptMetrics *)self setDerivedMetrics];
  v6.receiver = self;
  v6.super_class = MOPromptMetrics;
  return [(MOMetric *)&v6 submitMetricsWithError:error];
}

+ (id)medianOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    if ([ofCopy count] == 1)
    {
      v4 = [ofCopy objectAtIndexedSubscript:0];
      [v4 doubleValue];
      v5 = [NSNumber numberWithDouble:?];
    }

    else
    {
      v4 = [ofCopy sortedArrayUsingSelector:"compare:"];
      v6 = [ofCopy count];
      v7 = [v4 count] >> 1;
      if (v6)
      {
        v8 = [v4 objectAtIndex:v7];
        [v8 doubleValue];
        v5 = [NSNumber numberWithDouble:?];
      }

      else
      {
        v8 = [v4 objectAtIndex:v7 - 1];
        [v8 doubleValue];
        v10 = v9;
        v11 = [v4 objectAtIndex:v7];
        [v11 doubleValue];
        v5 = [NSNumber numberWithDouble:(v10 + v12) * 0.5];
      }
    }
  }

  else
  {
    v5 = &off_10036E7A0;
  }

  return v5;
}

+ (id)meanOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    if ([ofCopy count] == 1)
    {
      v4 = [ofCopy objectAtIndexedSubscript:0];
      [v4 doubleValue];
      v5 = [NSNumber numberWithDouble:?];
    }

    else
    {
      v6 = 0.0;
      if ([ofCopy count])
      {
        v7 = 1;
        do
        {
          if ([ofCopy count] >= v7)
          {
            v8 = [ofCopy objectAtIndexedSubscript:v7 - 1];
            [v8 doubleValue];
            v6 = v6 + (v9 - v6) / v7;
          }

          else
          {
            v6 = v6 - v6 / v7;
          }
        }

        while ([ofCopy count] > v7++);
      }

      v5 = [NSNumber numberWithDouble:v6];
    }
  }

  else
  {
    v5 = &off_10036E7A0;
  }

  return v5;
}

+ (id)standardDeviationOf:(id)of
{
  ofCopy = of;
  if ([ofCopy count])
  {
    if ([ofCopy count] == 1)
    {
      v4 = &off_10036E7B0;
    }

    else
    {
      v5 = [MOPromptMetrics meanOf:ofCopy];
      [v5 doubleValue];
      v7 = v6;

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = ofCopy;
      v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v17;
        v12 = 0.0;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [*(*(&v16 + 1) + 8 * i) doubleValue];
            v12 = v12 + (v14 - v7) * (v14 - v7);
          }

          v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }

      else
      {
        v12 = 0.0;
      }

      v4 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", sqrt(v12 / [v8 count]));
    }
  }

  else
  {
    v4 = &off_10036E7A0;
  }

  return v4;
}

+ (id)getTimeDeltaMetricMap
{
  v4[0] = @"Routine_MeanDeltaBetweenVisits";
  v4[1] = @"Routine_MeanDeltaBetweenVisitsBoundariesIncluded";
  v5[0] = @"Routine_MeanDeltaBetweenVisits_Bucketed";
  v5[1] = @"Routine_MeanDeltaBetweenVisitsBoundariesIncluded_Bucketed";
  v4[2] = @"Routine_MinDeltaBetweenVisits";
  v4[3] = @"Routine_MinDeltaBetweenVisitsBoundariesIncluded";
  v5[2] = @"Routine_MinDeltaBetweenVisits_Bucketed";
  v5[3] = @"Routine_MinDeltaBetweenVisitsBoundariesIncluded_Bucketed";
  v4[4] = @"Routine_MaxDeltaBetweenVisits";
  v4[5] = @"Routine_MaxDeltaBetweenVisitsBoundariesIncluded";
  v5[4] = @"Routine_MaxDeltaBetweenVisits_Bucketed";
  v5[5] = @"Routine_MaxDeltaBetweenVisitsBoundariesIncluded_Bucketed";
  v4[6] = @"Routine_SDDeltaBetweenVisits";
  v4[7] = @"Routine_SDDeltaBetweenVisitsBoundariesIncluded";
  v5[6] = @"Routine_SDDeltaBetweenVisits_Bucketed";
  v5[7] = @"Routine_SDDeltaBetweenVisitsBoundariesIncluded_Bucketed";
  v4[8] = @"Storytelling_MeanDeltaBetweenMoments";
  v4[9] = @"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded";
  v5[8] = @"Storytelling_MeanDeltaBetweenMoments_Bucketed";
  v5[9] = @"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded_Bucketed";
  v4[10] = @"Storytelling_MinDeltaBetweenMoments";
  v4[11] = @"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded";
  v5[10] = @"Storytelling_MinDeltaBetweenMoments_Bucketed";
  v5[11] = @"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded_Bucketed";
  v4[12] = @"Storytelling_MaxDeltaBetweenMoments";
  v4[13] = @"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded";
  v5[12] = @"Storytelling_MaxDeltaBetweenMoments_Bucketed";
  v5[13] = @"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded_Bucketed";
  v4[14] = @"Storytelling_SDDeltaBetweenMoments";
  v4[15] = @"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded";
  v5[14] = @"Storytelling_SDDeltaBetweenMoments_Bucketed";
  v5[15] = @"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded_Bucketed";
  v4[16] = @"Workout_MeanDeltaBetweenWorkouts";
  v4[17] = @"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded";
  v5[16] = @"Workout_MeanDeltaBetweenWorkouts_Bucketed";
  v5[17] = @"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded_Bucketed";
  v4[18] = @"Workout_MinDeltaBetweenWorkouts";
  v4[19] = @"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded";
  v5[18] = @"Workout_MinDeltaBetweenWorkouts_Bucketed";
  v5[19] = @"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded_Bucketed";
  v4[20] = @"Workout_MaxDeltaBetweenWorkouts";
  v4[21] = @"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded";
  v5[20] = @"Workout_MaxDeltaBetweenWorkouts_Bucketed";
  v5[21] = @"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded_Bucketed";
  v4[22] = @"Workout_SDDeltaBetweenWorkouts";
  v4[23] = @"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded";
  v5[22] = @"Workout_SDDeltaBetweenWorkouts_Bucketed";
  v5[23] = @"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded_Bucketed";
  v4[24] = @"Proactive_MeanDeltaBetweenMediaOnRepeatEvents";
  v4[25] = @"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded";
  v5[24] = @"Proactive_MeanDeltaBetweenMediaOnRepeatEvents_Bucketed";
  v5[25] = @"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded_Bucketed";
  v4[26] = @"Proactive_MinDeltaBetweenMediaOnRepeatEvents";
  v4[27] = @"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded";
  v5[26] = @"Proactive_MinDeltaBetweenMediaOnRepeatEvents_Bucketed";
  v5[27] = @"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded_Bucketed";
  v4[28] = @"Proactive_MaxDeltaBetweenMediaOnRepeatEvents";
  v4[29] = @"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded";
  v5[28] = @"Proactive_MaxDeltaBetweenMediaOnRepeatEvents_Bucketed";
  v5[29] = @"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded_Bucketed";
  v4[30] = @"Proactive_SDDeltaBetweenMediaOnRepeatEvents";
  v4[31] = @"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded";
  v5[30] = @"Proactive_SDDeltaBetweenMediaOnRepeatEvents_Bucketed";
  v5[31] = @"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded_Bucketed";
  v4[32] = @"Proactive_MeanDeltaBetweenTopicEvents";
  v4[33] = @"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded";
  v5[32] = @"Proactive_MeanDeltaBetweenTopicEvents_Bucketed";
  v5[33] = @"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded_Bucketed";
  v4[34] = @"Proactive_MinDeltaBetweenTopicEvents";
  v4[35] = @"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded";
  v5[34] = @"Proactive_MinDeltaBetweenTopicEvents_Bucketed";
  v5[35] = @"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded_Bucketed";
  v4[36] = @"Proactive_MaxDeltaBetweenTopicEvents";
  v4[37] = @"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded";
  v5[36] = @"Proactive_MaxDeltaBetweenTopicEvents_Bucketed";
  v5[37] = @"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded_Bucketed";
  v4[38] = @"Proactive_SDDeltaBetweenTopicEvents";
  v4[39] = @"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded";
  v5[38] = @"Proactive_SDDeltaBetweenTopicEvents_Bucketed";
  v5[39] = @"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded_Bucketed";
  v4[40] = @"Proactive_MeanDeltaBetweenTravelEvents";
  v4[41] = @"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded";
  v5[40] = @"Proactive_MeanDeltaBetweenTravelEvents_Bucketed";
  v5[41] = @"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded_Bucketed";
  v4[42] = @"Proactive_MinDeltaBetweenTravelEvents";
  v4[43] = @"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded";
  v5[42] = @"Proactive_MinDeltaBetweenTravelEvents_Bucketed";
  v5[43] = @"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded_Bucketed";
  v4[44] = @"Proactive_MaxDeltaBetweenTravelEvents";
  v4[45] = @"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded";
  v5[44] = @"Proactive_MaxDeltaBetweenTravelEvents_Bucketed";
  v5[45] = @"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded_Bucketed";
  v4[46] = @"Proactive_SDDeltaBetweenTravelEvents";
  v4[47] = @"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded";
  v5[46] = @"Proactive_SDDeltaBetweenTravelEvents_Bucketed";
  v5[47] = @"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded_Bucketed";
  v4[48] = @"Proactive_MeanDeltaBetweenSharedWithYouEvents";
  v4[49] = @"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded";
  v5[48] = @"Proactive_MeanDeltaBetweenSharedWithYouEvents_Bucketed";
  v5[49] = @"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded_Bucketed";
  v4[50] = @"Proactive_MinDeltaBetweenSharedWithYouEvents";
  v4[51] = @"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded";
  v5[50] = @"Proactive_MinDeltaBetweenSharedWithYouEvents_Bucketed";
  v5[51] = @"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded_Bucketed";
  v4[52] = @"Proactive_MaxDeltaBetweenSharedWithYouEvents";
  v4[53] = @"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded";
  v5[52] = @"Proactive_MaxDeltaBetweenSharedWithYouEvents_Bucketed";
  v5[53] = @"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded_Bucketed";
  v4[54] = @"Proactive_SDDeltaBetweenSharedWithYouEvents";
  v4[55] = @"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded";
  v5[54] = @"Proactive_SDDeltaBetweenSharedWithYouEvents_Bucketed";
  v5[55] = @"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded_Bucketed";
  v4[56] = @"Proactive_MeanDeltaBetweenSignificantContactEvents";
  v4[57] = @"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded";
  v5[56] = @"Proactive_MeanDeltaBetweenSignificantContactEvents_Bucketed";
  v5[57] = @"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded_Bucketed";
  v4[58] = @"Proactive_MinDeltaBetweenSignificantContactEvents";
  v4[59] = @"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded";
  v5[58] = @"Proactive_MinDeltaBetweenSignificantContactEvents_Bucketed";
  v5[59] = @"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded_Bucketed";
  v4[60] = @"Proactive_MaxDeltaBetweenSignificantContactEvents";
  v4[61] = @"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded";
  v5[60] = @"Proactive_MaxDeltaBetweenSignificantContactEvents_Bucketed";
  v5[61] = @"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded_Bucketed";
  v4[62] = @"Proactive_SDDeltaBetweenSignificantContactEvents";
  v4[63] = @"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded";
  v5[62] = @"Proactive_SDDeltaBetweenSignificantContactEvents_Bucketed";
  v5[63] = @"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded_Bucketed";
  v4[64] = @"Proactive_MeanDeltaBetweenStructuredEvents";
  v5[64] = @"Proactive_MeanDeltaBetweenStructuredEvents_Bucketed";
  v4[65] = @"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded";
  v5[65] = @"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded_Bucketed";
  v4[66] = @"Proactive_MinDeltaBetweenStructuredEvents";
  v5[66] = @"Proactive_MinDeltaBetweenStructuredEvents_Bucketed";
  v4[67] = @"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded";
  v5[67] = @"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded_Bucketed";
  v4[68] = @"Proactive_MaxDeltaBetweenStructuredEvents";
  v5[68] = @"Proactive_MaxDeltaBetweenStructuredEvents_Bucketed";
  v4[69] = @"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded";
  v5[69] = @"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded_Bucketed";
  v4[70] = @"Proactive_SDDeltaBetweenStructuredEvents";
  v5[70] = @"Proactive_SDDeltaBetweenStructuredEvents_Bucketed";
  v4[71] = @"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded";
  v5[71] = @"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded_Bucketed";
  v4[72] = @"Proactive_MeanDeltaBetweenLeisureMediaEvents";
  v5[72] = @"Proactive_MeanDeltaBetweenLeisureMediaEvents_Bucketed";
  v4[73] = @"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded";
  v5[73] = @"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded_Bucketed";
  v4[74] = @"Proactive_MinDeltaBetweenLeisureMediaEvents";
  v5[74] = @"Proactive_MinDeltaBetweenLeisureMediaEvents_Bucketed";
  v4[75] = @"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded";
  v5[75] = @"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded_Bucketed";
  v4[76] = @"Proactive_MaxDeltaBetweenLeisureMediaEvents";
  v5[76] = @"Proactive_MaxDeltaBetweenLeisureMediaEvents_Bucketed";
  v4[77] = @"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded";
  v5[77] = @"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded_Bucketed";
  v4[78] = @"Proactive_SDDeltaBetweenLeisureMediaEvents";
  v5[78] = @"Proactive_SDDeltaBetweenLeisureMediaEvents_Bucketed";
  v4[79] = @"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded";
  v5[79] = @"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded_Bucketed";
  v4[80] = @"Proactive_MeanDeltaBetweenNLEvents";
  v5[80] = @"Proactive_MeanDeltaBetweenNLEvents_Bucketed";
  v4[81] = @"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded";
  v5[81] = @"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded_Bucketed";
  v4[82] = @"Proactive_MinDeltaBetweenNLEvents";
  v5[82] = @"Proactive_MinDeltaBetweenNLEvents_Bucketed";
  v4[83] = @"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded";
  v5[83] = @"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded_Bucketed";
  v4[84] = @"Proactive_MaxDeltaBetweenNLEvents";
  v5[84] = @"Proactive_MaxDeltaBetweenNLEvents_Bucketed";
  v4[85] = @"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded";
  v5[85] = @"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded_Bucketed";
  v4[86] = @"Proactive_SDDeltaBetweenNLEvents";
  v5[86] = @"Proactive_SDDeltaBetweenNLEvents_Bucketed";
  v4[87] = @"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded";
  v5[87] = @"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded_Bucketed";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:88];

  return v2;
}

- (void)setDerivedMetrics
{
  v286 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036C268 gap:&off_10036C280];
  v285 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036E7C0 gap:&off_10036E7D0];
  v3 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036E7E0 gap:&off_10036E7F0];
  v289 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036E7E0 gap:&off_10036E800];
  v283 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036C280 gap:&off_10036E810];
  metrics = [(MOMetric *)self metrics];
  v5 = [metrics objectForKeyedSubscript:@"QueryTimeDuration"];
  v284 = v3;
  v6 = [MOMetric binForNumber:v5 bins:v3];
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:v6 forKeyedSubscript:@"QueryTimeDuration_Bucketed"];

  metrics3 = [(MOMetric *)self metrics];
  v9 = [metrics3 objectForKeyedSubscript:@"Age"];
  v10 = [MOMetric binForNumber:v9 bins:&off_10036E2F8];
  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:v10 forKeyedSubscript:@"Age_Bucketed"];

  +[MOPromptMetrics getTimeDeltaMetricMap];
  v294 = 0u;
  v295 = 0u;
  v296 = 0u;
  v288 = v297 = 0u;
  allKeys = [v288 allKeys];
  v13 = [allKeys countByEnumeratingWithState:&v294 objects:v301 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v295;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v295 != v15)
        {
          objc_enumerationMutation(allKeys);
        }

        v17 = *(*(&v294 + 1) + 8 * i);
        v18 = [v288 objectForKey:v17];
        metrics5 = [(MOMetric *)self metrics];
        v20 = [metrics5 objectForKeyedSubscript:v17];
        v21 = [MOMetric binForNumber:v20 bins:v289];
        metrics6 = [(MOMetric *)self metrics];
        [metrics6 setObject:v21 forKeyedSubscript:v18];
      }

      v14 = [allKeys countByEnumeratingWithState:&v294 objects:v301 count:16];
    }

    while (v14);
  }

  metrics7 = [(MOMetric *)self metrics];
  v24 = [metrics7 objectForKeyedSubscript:@"Routine_nVisits"];
  v25 = [MOMetric binForNumber:v24 bins:v286];
  metrics8 = [(MOMetric *)self metrics];
  [metrics8 setObject:v25 forKeyedSubscript:@"Routine_nVisits_Bucketed"];

  metrics9 = [(MOMetric *)self metrics];
  v28 = [metrics9 objectForKeyedSubscript:@"Routine_nHomeVisits"];
  v29 = [MOMetric binForNumber:v28 bins:v286];
  metrics10 = [(MOMetric *)self metrics];
  [metrics10 setObject:v29 forKeyedSubscript:@"Routine_nHomeVisits_Bucketed"];

  metrics11 = [(MOMetric *)self metrics];
  v32 = [metrics11 objectForKeyedSubscript:@"Routine_nWorkVisits"];
  v33 = [MOMetric binForNumber:v32 bins:v286];
  metrics12 = [(MOMetric *)self metrics];
  [metrics12 setObject:v33 forKeyedSubscript:@"Routine_nWorkVisits_Bucketed"];

  metrics13 = [(MOMetric *)self metrics];
  v36 = [metrics13 objectForKeyedSubscript:@"Routine_nGymVisits"];
  v37 = [MOMetric binForNumber:v36 bins:v286];
  metrics14 = [(MOMetric *)self metrics];
  [metrics14 setObject:v37 forKeyedSubscript:@"Routine_nGymVisits_Bucketed"];

  metrics15 = [(MOMetric *)self metrics];
  v40 = [metrics15 objectForKeyedSubscript:@"Routine_nSchoolVisits"];
  v41 = [MOMetric binForNumber:v40 bins:v286];
  metrics16 = [(MOMetric *)self metrics];
  [metrics16 setObject:v41 forKeyedSubscript:@"Routine_nSchoolVisits_Bucketed"];

  metrics17 = [(MOMetric *)self metrics];
  v44 = [metrics17 objectForKeyedSubscript:@"Routine_AverageVisitsLatency"];
  v45 = [MOMetric binForNumber:v44 bins:v285];
  metrics18 = [(MOMetric *)self metrics];
  [metrics18 setObject:v45 forKeyedSubscript:@"Routine_AverageVisitsLatency_Bucketed"];

  metrics19 = [(MOMetric *)self metrics];
  v48 = [metrics19 objectForKeyedSubscript:@"Routine_AverageVisitsRealLatency"];
  v49 = [MOMetric binForNumber:v48 bins:v285];
  metrics20 = [(MOMetric *)self metrics];
  [metrics20 setObject:v49 forKeyedSubscript:@"Routine_AverageVisitsRealLatency_Bucketed"];

  metrics21 = [(MOMetric *)self metrics];
  v52 = [metrics21 objectForKeyedSubscript:@"Storytelling_NumMoments"];
  v53 = [MOMetric binForNumber:v52 bins:v286];
  metrics22 = [(MOMetric *)self metrics];
  [metrics22 setObject:v53 forKeyedSubscript:@"Storytelling_NumMoments_Bucketed"];

  metrics23 = [(MOMetric *)self metrics];
  v56 = [metrics23 objectForKeyedSubscript:@"Storytelling_NumMomentsWithEvent"];
  v57 = [MOMetric binForNumber:v56 bins:v286];
  metrics24 = [(MOMetric *)self metrics];
  [metrics24 setObject:v57 forKeyedSubscript:@"Storytelling_NumMomentsWithEvent_Bucketed"];

  metrics25 = [(MOMetric *)self metrics];
  v60 = [metrics25 objectForKeyedSubscript:@"Storytelling_NumMomentsWithEventAndArtist"];
  v61 = [MOMetric binForNumber:v60 bins:v286];
  metrics26 = [(MOMetric *)self metrics];
  [metrics26 setObject:v61 forKeyedSubscript:@"Storytelling_NumMomentsWithEventAndArtist_Bucketed"];

  metrics27 = [(MOMetric *)self metrics];
  v64 = [metrics27 objectForKeyedSubscript:@"Storytelling_NumMomentsWithFamily"];
  v65 = [MOMetric binForNumber:v64 bins:v286];
  metrics28 = [(MOMetric *)self metrics];
  [metrics28 setObject:v65 forKeyedSubscript:@"Storytelling_NumMomentsWithFamily_Bucketed"];

  metrics29 = [(MOMetric *)self metrics];
  v68 = [metrics29 objectForKeyedSubscript:@"Storytelling_NumMomentsWithPeople"];
  v69 = [MOMetric binForNumber:v68 bins:v286];
  metrics30 = [(MOMetric *)self metrics];
  [metrics30 setObject:v69 forKeyedSubscript:@"Storytelling_NumMomentsWithPeople_Bucketed"];

  metrics31 = [(MOMetric *)self metrics];
  v72 = [metrics31 objectForKeyedSubscript:@"Storytelling_AverageMomentsLatency"];
  v73 = [MOMetric binForNumber:v72 bins:v285];
  metrics32 = [(MOMetric *)self metrics];
  [metrics32 setObject:v73 forKeyedSubscript:@"Storytelling_AverageMomentsLatency_Bucketed"];

  metrics33 = [(MOMetric *)self metrics];
  v76 = [metrics33 objectForKeyedSubscript:@"Storytelling_AverageMomentsRealLatency"];
  v77 = [MOMetric binForNumber:v76 bins:v285];
  selfCopy = self;
  metrics34 = [(MOMetric *)self metrics];
  [metrics34 setObject:v77 forKeyedSubscript:@"Storytelling_AverageMomentsRealLatency_Bucketed"];

  v299[0] = @"Storytelling_MomenetInferenceTag_1_1";
  v299[1] = @"Storytelling_MomenetInferenceTag_1_2";
  v300[0] = @"Storytelling_MomenetInferenceTag_1_1_Bucketed";
  v300[1] = @"Storytelling_MomenetInferenceTag_1_2_Bucketed";
  v299[2] = @"Storytelling_MomenetInferenceTag_1_3";
  v299[3] = @"Storytelling_MomenetInferenceTag_1_4";
  v300[2] = @"Storytelling_MomenetInferenceTag_1_3_Bucketed";
  v300[3] = @"Storytelling_MomenetInferenceTag_1_4_Bucketed";
  v299[4] = @"Storytelling_MomenetInferenceTag_2_1";
  v299[5] = @"Storytelling_MomenetInferenceTag_2_2";
  v300[4] = @"Storytelling_MomenetInferenceTag_2_1_Bucketed";
  v300[5] = @"Storytelling_MomenetInferenceTag_2_2_Bucketed";
  v299[6] = @"Storytelling_MomenetInferenceTag_2_3";
  v299[7] = @"Storytelling_MomenetInferenceTag_2_4";
  v300[6] = @"Storytelling_MomenetInferenceTag_2_3_Bucketed";
  v300[7] = @"Storytelling_MomenetInferenceTag_2_4_Bucketed";
  v299[8] = @"Storytelling_MomenetInferenceTag_3_1";
  v299[9] = @"Storytelling_MomenetInferenceTag_3_2";
  v300[8] = @"Storytelling_MomenetInferenceTag_3_1_Bucketed";
  v300[9] = @"Storytelling_MomenetInferenceTag_3_2_Bucketed";
  v299[10] = @"Storytelling_MomenetInferenceTag_3_3";
  v299[11] = @"Storytelling_MomenetInferenceTag_3_4";
  v300[10] = @"Storytelling_MomenetInferenceTag_3_3_Bucketed";
  v300[11] = @"Storytelling_MomenetInferenceTag_3_4_Bucketed";
  [NSDictionary dictionaryWithObjects:v300 forKeys:v299 count:12];
  v290 = 0u;
  v291 = 0u;
  v292 = 0u;
  v79 = v293 = 0u;
  v80 = [v79 countByEnumeratingWithState:&v290 objects:v298 count:16];
  if (v80)
  {
    v81 = v80;
    v82 = *v291;
    do
    {
      for (j = 0; j != v81; j = j + 1)
      {
        if (*v291 != v82)
        {
          objc_enumerationMutation(v79);
        }

        v84 = *(*(&v290 + 1) + 8 * j);
        metrics35 = [(MOMetric *)selfCopy metrics];
        v86 = [metrics35 objectForKeyedSubscript:v84];
        v87 = [MOPhotoMomentTags getCoarseInferenceTag:v86];

        if (v87)
        {
          v88 = [v79 objectForKeyedSubscript:v84];
          metrics36 = [(MOMetric *)selfCopy metrics];
          [metrics36 setObject:v87 forKeyedSubscript:v88];
        }
      }

      v81 = [v79 countByEnumeratingWithState:&v290 objects:v298 count:16];
    }

    while (v81);
  }

  v90 = v79;

  metrics37 = [(MOMetric *)selfCopy metrics];
  v92 = [metrics37 objectForKeyedSubscript:@"Workout_NumWorkouts"];
  v93 = [MOMetric binForNumber:v92 bins:v286];
  metrics38 = [(MOMetric *)selfCopy metrics];
  [metrics38 setObject:v93 forKeyedSubscript:@"Workout_NumWorkouts_Bucketed"];

  metrics39 = [(MOMetric *)selfCopy metrics];
  v96 = [metrics39 objectForKeyedSubscript:@"Workout_AverageWorkoutLatency"];
  v97 = [MOMetric binForNumber:v96 bins:v285];
  metrics40 = [(MOMetric *)selfCopy metrics];
  [metrics40 setObject:v97 forKeyedSubscript:@"Workout_AverageWorkoutLatency_Bucketed"];

  metrics41 = [(MOMetric *)selfCopy metrics];
  v100 = [metrics41 objectForKeyedSubscript:@"Proactive_NumAllEvents"];
  v101 = [MOMetric binForNumber:v100 bins:v286];
  metrics42 = [(MOMetric *)selfCopy metrics];
  [metrics42 setObject:v101 forKeyedSubscript:@"Proactive_NumAllEvents_Bucketed"];

  metrics43 = [(MOMetric *)selfCopy metrics];
  v104 = [metrics43 objectForKeyedSubscript:@"Proactive_NumMediaOnRepeatEvents"];
  v105 = [MOMetric binForNumber:v104 bins:v286];
  metrics44 = [(MOMetric *)selfCopy metrics];
  [metrics44 setObject:v105 forKeyedSubscript:@"Proactive_NumMediaOnRepeatEvents_Bucketed"];

  metrics45 = [(MOMetric *)selfCopy metrics];
  v108 = [metrics45 objectForKeyedSubscript:@"Proactive_NumTopicEvents"];
  v109 = [MOMetric binForNumber:v108 bins:v286];
  metrics46 = [(MOMetric *)selfCopy metrics];
  [metrics46 setObject:v109 forKeyedSubscript:@"Proactive_NumTopicEvents_Bucketed"];

  metrics47 = [(MOMetric *)selfCopy metrics];
  v112 = [metrics47 objectForKeyedSubscript:@"Proactive_NumTravelEvents"];
  v113 = [MOMetric binForNumber:v112 bins:v286];
  metrics48 = [(MOMetric *)selfCopy metrics];
  [metrics48 setObject:v113 forKeyedSubscript:@"Proactive_NumTravelEvents_Bucketed"];

  metrics49 = [(MOMetric *)selfCopy metrics];
  v116 = [metrics49 objectForKeyedSubscript:@"Proactive_NumSharedWithYouEvents"];
  v117 = [MOMetric binForNumber:v116 bins:v286];
  metrics50 = [(MOMetric *)selfCopy metrics];
  [metrics50 setObject:v117 forKeyedSubscript:@"Proactive_NumSharedWithYouEvents_Bucketed"];

  metrics51 = [(MOMetric *)selfCopy metrics];
  v120 = [metrics51 objectForKeyedSubscript:@"Proactive_NumSignificantContactEvents"];
  v121 = [MOMetric binForNumber:v120 bins:v286];
  metrics52 = [(MOMetric *)selfCopy metrics];
  [metrics52 setObject:v121 forKeyedSubscript:@"Proactive_NumSignificantContactEvents_Bucketed"];

  metrics53 = [(MOMetric *)selfCopy metrics];
  v124 = [metrics53 objectForKeyedSubscript:@"Proactive_NumStructuredEvents"];
  v125 = [MOMetric binForNumber:v124 bins:v286];
  metrics54 = [(MOMetric *)selfCopy metrics];
  [metrics54 setObject:v125 forKeyedSubscript:@"Proactive_NumStructuredEvents_Bucketed"];

  metrics55 = [(MOMetric *)selfCopy metrics];
  v128 = [metrics55 objectForKeyedSubscript:@"Proactive_NumLeisureMediaEvents"];
  v129 = [MOMetric binForNumber:v128 bins:v286];
  metrics56 = [(MOMetric *)selfCopy metrics];
  [metrics56 setObject:v129 forKeyedSubscript:@"Proactive_NumLeisureMediaEvents_Bucketed"];

  metrics57 = [(MOMetric *)selfCopy metrics];
  v132 = [metrics57 objectForKeyedSubscript:@"Proactive_NumNLEvents"];
  v133 = [MOMetric binForNumber:v132 bins:v286];
  metrics58 = [(MOMetric *)selfCopy metrics];
  [metrics58 setObject:v133 forKeyedSubscript:@"Proactive_NumNLEvents_Bucketed"];

  metrics59 = [(MOMetric *)selfCopy metrics];
  v136 = [metrics59 objectForKeyedSubscript:@"Proactive_EventsAverageLatency"];
  v137 = [MOMetric binForNumber:v136 bins:v285];
  metrics60 = [(MOMetric *)selfCopy metrics];
  [metrics60 setObject:v137 forKeyedSubscript:@"Proactive_EventsAverageLatency_Bucketed"];

  metrics61 = [(MOMetric *)selfCopy metrics];
  v140 = [metrics61 objectForKeyedSubscript:@"Proactive_MediaOnRepeatAverageLatency"];
  v141 = [MOMetric binForNumber:v140 bins:v285];
  metrics62 = [(MOMetric *)selfCopy metrics];
  [metrics62 setObject:v141 forKeyedSubscript:@"Proactive_MediaOnRepeatAverageLatency_Bucketed"];

  metrics63 = [(MOMetric *)selfCopy metrics];
  v144 = [metrics63 objectForKeyedSubscript:@"Proactive_TopicAverageLatency"];
  v145 = [MOMetric binForNumber:v144 bins:v285];
  metrics64 = [(MOMetric *)selfCopy metrics];
  [metrics64 setObject:v145 forKeyedSubscript:@"Proactive_TopicAverageLatency_Bucketed"];

  metrics65 = [(MOMetric *)selfCopy metrics];
  v148 = [metrics65 objectForKeyedSubscript:@"Proactive_TravelAverageLatency"];
  v149 = [MOMetric binForNumber:v148 bins:v285];
  metrics66 = [(MOMetric *)selfCopy metrics];
  [metrics66 setObject:v149 forKeyedSubscript:@"Proactive_TravelAverageLatency_Bucketed"];

  metrics67 = [(MOMetric *)selfCopy metrics];
  v152 = [metrics67 objectForKeyedSubscript:@"Proactive_SharedWithYouAverageLatency"];
  v153 = [MOMetric binForNumber:v152 bins:v285];
  metrics68 = [(MOMetric *)selfCopy metrics];
  [metrics68 setObject:v153 forKeyedSubscript:@"Proactive_SharedWithYouAverageLatency_Bucketed"];

  metrics69 = [(MOMetric *)selfCopy metrics];
  v156 = [metrics69 objectForKeyedSubscript:@"Proactive_SignificantContactAverageLatency"];
  v157 = [MOMetric binForNumber:v156 bins:v285];
  metrics70 = [(MOMetric *)selfCopy metrics];
  [metrics70 setObject:v157 forKeyedSubscript:@"Proactive_SignificantContactAverageLatency_Bucketed"];

  metrics71 = [(MOMetric *)selfCopy metrics];
  v160 = [metrics71 objectForKeyedSubscript:@"Proactive_StructuredEventsAverageLatency"];
  v161 = [MOMetric binForNumber:v160 bins:v285];
  metrics72 = [(MOMetric *)selfCopy metrics];
  [metrics72 setObject:v161 forKeyedSubscript:@"Proactive_StructuredEventsAverageLatency_Bucketed"];

  metrics73 = [(MOMetric *)selfCopy metrics];
  v164 = [metrics73 objectForKeyedSubscript:@"Proactive_LeisureMediaEventsAverageLatency"];
  v165 = [MOMetric binForNumber:v164 bins:v285];
  metrics74 = [(MOMetric *)selfCopy metrics];
  [metrics74 setObject:v165 forKeyedSubscript:@"Proactive_LeisureMediaEventsAverageLatency_Bucketed"];

  metrics75 = [(MOMetric *)selfCopy metrics];
  v168 = [metrics75 objectForKeyedSubscript:@"Proactive_NLEventsAverageLatency"];
  v169 = [MOMetric binForNumber:v168 bins:v285];
  metrics76 = [(MOMetric *)selfCopy metrics];
  [metrics76 setObject:v169 forKeyedSubscript:@"Proactive_NLEventsAverageLatency_Bucketed"];

  metrics77 = [(MOMetric *)selfCopy metrics];
  v172 = [metrics77 objectForKeyedSubscript:@"Storytelling_PercentageOfMomentEventsNoLOI"];
  v173 = [MOMetric binForNumber:v172 bins:v283];
  metrics78 = [(MOMetric *)selfCopy metrics];
  [metrics78 setObject:v173 forKeyedSubscript:@"Storytelling_PercentageOfMomentEventsNoLOI_Bucketed"];

  metrics79 = [(MOMetric *)selfCopy metrics];
  v176 = [metrics79 objectForKeyedSubscript:@"Workout_PercentageOfWorkoutEventsNoLOI"];
  v177 = [MOMetric binForNumber:v176 bins:v283];
  metrics80 = [(MOMetric *)selfCopy metrics];
  [metrics80 setObject:v177 forKeyedSubscript:@"Workout_PercentageOfWorkoutEventsNoLOI_Bucketed"];

  metrics81 = [(MOMetric *)selfCopy metrics];
  v180 = [metrics81 objectForKeyedSubscript:@"Proactive_PercentageOfMediaOnRepeatEventsNoLOI"];
  v181 = [MOMetric binForNumber:v180 bins:v283];
  metrics82 = [(MOMetric *)selfCopy metrics];
  [metrics82 setObject:v181 forKeyedSubscript:@"Proactive_PercentageOfMediaOnRepeatEventsNoLOI_Bucketed"];

  metrics83 = [(MOMetric *)selfCopy metrics];
  v184 = [metrics83 objectForKeyedSubscript:@"Proactive_PercentageOfTopicEventsNoLOI"];
  v185 = [MOMetric binForNumber:v184 bins:v283];
  metrics84 = [(MOMetric *)selfCopy metrics];
  [metrics84 setObject:v185 forKeyedSubscript:@"Proactive_PercentageOfTopicEventsNoLOI_Bucketed"];

  metrics85 = [(MOMetric *)selfCopy metrics];
  v188 = [metrics85 objectForKeyedSubscript:@"Proactive_PercentageOfTravelEventsNoLOI"];
  v189 = [MOMetric binForNumber:v188 bins:v283];
  metrics86 = [(MOMetric *)selfCopy metrics];
  [metrics86 setObject:v189 forKeyedSubscript:@"Proactive_PercentageOfTravelEventsNoLOI_Bucketed"];

  metrics87 = [(MOMetric *)selfCopy metrics];
  v192 = [metrics87 objectForKeyedSubscript:@"Proactive_PercentageOfSharedWithYouEventsNoLOI"];
  v193 = [MOMetric binForNumber:v192 bins:v283];
  metrics88 = [(MOMetric *)selfCopy metrics];
  [metrics88 setObject:v193 forKeyedSubscript:@"Proactive_PercentageOfSharedWithYouEventsNoLOI_Bucketed"];

  metrics89 = [(MOMetric *)selfCopy metrics];
  v196 = [metrics89 objectForKeyedSubscript:@"Proactive_PercentageOfSignificantContactEventsNoLOI"];
  v197 = [MOMetric binForNumber:v196 bins:v283];
  metrics90 = [(MOMetric *)selfCopy metrics];
  [metrics90 setObject:v197 forKeyedSubscript:@"Proactive_PercentageOfSignificantContactEventsNoLOI_Bucketed"];

  metrics91 = [(MOMetric *)selfCopy metrics];
  v200 = [metrics91 objectForKeyedSubscript:@"Proactive_PercentageOfStructuredEventsNoLOI"];
  v201 = [MOMetric binForNumber:v200 bins:v283];
  metrics92 = [(MOMetric *)selfCopy metrics];
  [metrics92 setObject:v201 forKeyedSubscript:@"Proactive_PercentageOfStructuredEventsNoLOI_Bucketed"];

  metrics93 = [(MOMetric *)selfCopy metrics];
  v204 = [metrics93 objectForKeyedSubscript:@"Proactive_PercentageOfLeisureMediaEventsNoLOI"];
  v205 = [MOMetric binForNumber:v204 bins:v283];
  metrics94 = [(MOMetric *)selfCopy metrics];
  [metrics94 setObject:v205 forKeyedSubscript:@"Proactive_PercentageOfLeisureMediaEventsNoLOI_Bucketed"];

  metrics95 = [(MOMetric *)selfCopy metrics];
  v208 = [metrics95 objectForKeyedSubscript:@"Proactive_PercentageOfNLEventsNoLOI"];
  v209 = [MOMetric binForNumber:v208 bins:v283];
  metrics96 = [(MOMetric *)selfCopy metrics];
  [metrics96 setObject:v209 forKeyedSubscript:@"Proactive_PercentageOfNLEventsNoLOI_Bucketed"];

  metrics97 = [(MOMetric *)selfCopy metrics];
  v212 = [metrics97 objectForKeyedSubscript:@"numPreBundles"];
  v213 = [MOMetric binForNumber:v212 bins:v286];
  metrics98 = [(MOMetric *)selfCopy metrics];
  [metrics98 setObject:v213 forKeyedSubscript:@"numPreBundles_Bucketed"];

  metrics99 = [(MOMetric *)selfCopy metrics];
  v216 = [metrics99 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];
  v217 = [MOMetric binForNumber:v216 bins:v286];
  metrics100 = [(MOMetric *)selfCopy metrics];
  [metrics100 setObject:v217 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0_Bucketed"];

  metrics101 = [(MOMetric *)selfCopy metrics];
  v220 = [metrics101 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];
  v221 = [MOMetric binForNumber:v220 bins:v286];
  metrics102 = [(MOMetric *)selfCopy metrics];
  [metrics102 setObject:v221 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1_Bucketed"];

  metrics103 = [(MOMetric *)selfCopy metrics];
  v224 = [metrics103 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];
  v225 = [MOMetric binForNumber:v224 bins:v286];
  metrics104 = [(MOMetric *)selfCopy metrics];
  [metrics104 setObject:v225 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0_Bucketed"];

  metrics105 = [(MOMetric *)selfCopy metrics];
  v228 = [metrics105 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];
  v229 = [MOMetric binForNumber:v228 bins:v286];
  metrics106 = [(MOMetric *)selfCopy metrics];
  [metrics106 setObject:v229 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1_Bucketed"];

  metrics107 = [(MOMetric *)selfCopy metrics];
  v232 = [metrics107 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];
  v233 = [MOMetric binForNumber:v232 bins:v286];
  metrics108 = [(MOMetric *)selfCopy metrics];
  [metrics108 setObject:v233 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0_Bucketed"];

  metrics109 = [(MOMetric *)selfCopy metrics];
  v236 = [metrics109 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];
  v237 = [MOMetric binForNumber:v236 bins:v286];
  metrics110 = [(MOMetric *)selfCopy metrics];
  [metrics110 setObject:v237 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1_Bucketed"];

  metrics111 = [(MOMetric *)selfCopy metrics];
  v240 = [metrics111 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];
  v241 = [MOMetric binForNumber:v240 bins:v286];
  metrics112 = [(MOMetric *)selfCopy metrics];
  [metrics112 setObject:v241 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0_Bucketed"];

  metrics113 = [(MOMetric *)selfCopy metrics];
  v244 = [metrics113 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];
  v245 = [MOMetric binForNumber:v244 bins:v286];
  metrics114 = [(MOMetric *)selfCopy metrics];
  [metrics114 setObject:v245 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1_Bucketed"];

  metrics115 = [(MOMetric *)selfCopy metrics];
  v248 = [metrics115 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];
  v249 = [MOMetric binForNumber:v248 bins:v286];
  metrics116 = [(MOMetric *)selfCopy metrics];
  [metrics116 setObject:v249 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0_Bucketed"];

  metrics117 = [(MOMetric *)selfCopy metrics];
  v252 = [metrics117 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];
  v253 = [MOMetric binForNumber:v252 bins:v286];
  metrics118 = [(MOMetric *)selfCopy metrics];
  [metrics118 setObject:v253 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1_Bucketed"];

  metrics119 = [(MOMetric *)selfCopy metrics];
  v256 = [metrics119 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];
  v257 = [MOMetric binForNumber:v256 bins:v286];
  metrics120 = [(MOMetric *)selfCopy metrics];
  [metrics120 setObject:v257 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0_Bucketed"];

  metrics121 = [(MOMetric *)selfCopy metrics];
  v260 = [metrics121 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];
  v261 = [MOMetric binForNumber:v260 bins:v286];
  metrics122 = [(MOMetric *)selfCopy metrics];
  [metrics122 setObject:v261 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1_Bucketed"];

  metrics123 = [(MOMetric *)selfCopy metrics];
  v264 = [metrics123 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];
  v265 = [MOMetric binForNumber:v264 bins:v286];
  metrics124 = [(MOMetric *)selfCopy metrics];
  [metrics124 setObject:v265 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0_Bucketed"];

  metrics125 = [(MOMetric *)selfCopy metrics];
  v268 = [metrics125 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];
  v269 = [MOMetric binForNumber:v268 bins:v286];
  metrics126 = [(MOMetric *)selfCopy metrics];
  [metrics126 setObject:v269 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1_Bucketed"];

  metrics127 = [(MOMetric *)selfCopy metrics];
  v272 = [metrics127 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];
  v273 = [MOMetric binForNumber:v272 bins:v286];
  metrics128 = [(MOMetric *)selfCopy metrics];
  [metrics128 setObject:v273 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0_Bucketed"];

  metrics129 = [(MOMetric *)selfCopy metrics];
  v276 = [metrics129 objectForKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];
  v277 = [MOMetric binForNumber:v276 bins:v286];
  metrics130 = [(MOMetric *)selfCopy metrics];
  [metrics130 setObject:v277 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1_Bucketed"];

  metrics131 = [(MOMetric *)selfCopy metrics];
  v280 = [metrics131 objectForKeyedSubscript:@"numBundles"];
  v281 = [MOMetric binForNumber:v280 bins:v286];
  metrics132 = [(MOMetric *)selfCopy metrics];
  [metrics132 setObject:v281 forKeyedSubscript:@"numBundles_Bucketed"];
}

- (id)calculateZeroCountsForEvents:(id)events withCalendar:(id)calendar
{
  eventsCopy = events;
  calendarCopy = calendar;
  v8 = objc_alloc_init(NSDateComponents);
  [v8 setDay:0];
  v9 = [calendarCopy startOfDayForDate:self->_startDate];
  v34 = objc_opt_new();
  v10 = 32;
  v11 = [v9 earlierDate:self->_endDate];

  if (v11 == v9)
  {
    v13 = 0;
    v35 = 0;
    v14 = v9;
    v32 = v8;
    v33 = calendarCopy;
    selfCopy = self;
    v31 = v9;
    v29 = 32;
    do
    {
      v36 = [v8 day] / 7 + 1;
      [v8 setDay:{objc_msgSend(v8, "day") + 1}];
      v12 = [calendarCopy dateByAddingComponents:v8 toDate:v9 options:0];
      v37 = v13;
      if ([eventsCopy count] <= v13)
      {
LABEL_11:
        ++v35;
      }

      else
      {
        v15 = 0;
        v16 = v13;
        while (1)
        {
          v17 = [eventsCopy objectAtIndexedSubscript:v16];
          endDate = [v17 endDate];
          v19 = [endDate earlierDate:v12];
          v20 = [eventsCopy objectAtIndexedSubscript:v16];
          endDate2 = [v20 endDate];

          if (v19 != endDate2)
          {
            break;
          }

          ++v16;
          --v15;
          if ([eventsCopy count] <= v16)
          {
            v37 = (v37 - v15);
            v8 = v32;
            calendarCopy = v33;
            self = selfCopy;
            v9 = v31;
            v10 = v29;
            goto LABEL_10;
          }
        }

        v37 = (v37 - v15);
        v8 = v32;
        calendarCopy = v33;
        self = selfCopy;
        v9 = v31;
        v10 = v29;
        if (!v15)
        {
          goto LABEL_11;
        }

LABEL_10:
        v22 = [NSNumber numberWithLong:v36];
        [v34 addObject:v22];
      }

      v23 = [v12 earlierDate:*(&self->super.super.isa + v10)];

      v14 = v12;
      v24 = v23 == v12;
      v13 = v37;
    }

    while (v24);
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v12 = v9;
  }

  v38[0] = @"CountOfZeroEventDays";
  v25 = [NSNumber numberWithInt:v35];
  v38[1] = @"CountOfZeroEventWeeks";
  v39[0] = v25;
  v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v36 - [v34 count]);
  v39[1] = v26;
  v27 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

  return v27;
}

- (BOOL)doesInterval:(id)interval overlapWithAnyIntervalFromArray:(id)array
{
  intervalCopy = interval;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  arrayCopy = array;
  v7 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(arrayCopy);
        }

        v10 = [intervalCopy intersectionWithDateInterval:{*(*(&v16 + 1) + 8 * i), v16}];
        endDate = [v10 endDate];
        startDate = [v10 startDate];
        [endDate timeIntervalSinceDate:startDate];
        v14 = v13;

        if (v14 > 0.0)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [arrayCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v7;
}

- (void)calculateAndSetMetricsForRawEvents:(id)events
{
  eventsCopy = events;
  v5 = self->_endDate;
  v1127 = +[NSCalendar currentCalendar];
  v1145 = v5;
  v6 = [v1127 components:736 fromDate:v5];
  weekday = [v6 weekday];
  hour = [v6 hour];
  minute = [v6 minute];
  v1125 = v6;
  v10 = (minute * 60.0 + hour * 3600.0 + [v6 second]);
  v11 = [NSNumber numberWithInteger:weekday];
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:v11 forKeyedSubscript:@"DayIDSubmission"];

  v13 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:&off_10036E820 gap:&off_10036E830];
  v14 = [NSNumber numberWithLong:v10];
  v1124 = v13;
  v15 = [MOMetric binForNumber:v14 bins:v13];
  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:v15 forKeyedSubscript:@"HourIDSubmission"];

  [(NSDate *)self->_endDate timeIntervalSinceDate:self->_startDate];
  v17 = [NSNumber numberWithDouble:?];
  v1146 = [MOMetric binsFromStart:&off_10036C1D8 toEnd:v17 gap:&off_10036E830];

  v18 = +[MOEventBundler propertyNameDictionary];
  v19 = [NSPredicate predicateWithFormat:@"endDate >= %@ && endDate <= %@", self->_startDate, self->_endDate];
  v1126 = eventsCopy;
  v20 = [eventsCopy filteredArrayUsingPredicate:v19];
  v1142 = [v20 mutableCopy];

  v21 = [NSSortDescriptor sortDescriptorWithKey:@"endDate" ascending:1];
  v1248 = v21;
  v22 = [NSArray arrayWithObjects:&v1248 count:1];
  [v1142 sortUsingDescriptors:v22];

  v23 = [(MOPromptMetrics *)self calculateZeroCountsForEvents:v1142 withCalendar:v1127];
  v24 = [v23 objectForKey:@"CountOfZeroEventDays"];
  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:v24 forKeyedSubscript:@"ZeroEventDayCountAcrossAllEvents"];

  v26 = [v23 objectForKey:@"CountOfZeroEventWeeks"];
  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:v26 forKeyedSubscript:@"ZeroEventWeekCountAcrossAllEvents"];

  v1143 = v18;
  v28 = [v18 objectForKeyedSubscript:@"strProvider"];
  v29 = [NSPredicate predicateWithFormat:@"%K != %i", v28, 4];
  v1247[0] = v29;
  v30 = [v18 objectForKeyedSubscript:@"strProvider"];
  v31 = [NSPredicate predicateWithFormat:@"%K != %i", v30, 5];
  v1247[1] = v31;
  v32 = [NSArray arrayWithObjects:v1247 count:2];
  v33 = [NSCompoundPredicate andPredicateWithSubpredicates:v32];

  v1123 = v33;
  v1121 = [v1142 filteredArrayUsingPredicate:v33];
  v34 = [MOPromptMetrics calculateZeroCountsForEvents:"calculateZeroCountsForEvents:withCalendar:" withCalendar:?];

  v35 = [v34 objectForKey:@"CountOfZeroEventDays"];
  metrics5 = [(MOMetric *)self metrics];
  [metrics5 setObject:v35 forKeyedSubscript:@"ZeroEventDayCount"];

  v1122 = v34;
  v37 = [v34 objectForKey:@"CountOfZeroEventWeeks"];
  metrics6 = [(MOMetric *)self metrics];
  [metrics6 setObject:v37 forKeyedSubscript:@"ZeroEventWeekCount"];

  v1147 = objc_opt_new();
  v39 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v40 = [NSPredicate predicateWithFormat:@"%K == %i", v39, 4];
  v1246[0] = v40;
  v41 = [v1143 objectForKeyedSubscript:?];
  v42 = [NSPredicate predicateWithFormat:@"%K == %i", v41, 1];
  v1246[1] = v42;
  v43 = [NSArray arrayWithObjects:v1246 count:2];
  v44 = [NSCompoundPredicate andPredicateWithSubpredicates:v43];

  v1120 = v44;
  v45 = [v1142 filteredArrayUsingPredicate:v44];
  v46 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v45 count]);
  selfCopy = self;
  metrics7 = [(MOMetric *)self metrics];
  [metrics7 setObject:v46 forKeyedSubscript:@"Routine_nVisits"];

  v1157 = objc_opt_new();
  v48 = objc_opt_new();
  v1139 = objc_opt_new();
  v1128 = v48;
  v1129 = v45;
  if ([v45 count])
  {
    v49 = 0;
    v50 = 0;
    v1194 = 0;
    v1171 = 0;
    v1158 = 0;
    v1182 = 0;
    while (1)
    {
      v51 = [v45 objectAtIndexedSubscript:v49];
      placeName = [v51 placeName];
      lowercaseString = [placeName lowercaseString];

      v1198 = lowercaseString;
      if ([lowercaseString containsString:@"home"])
      {
        v50 = (v50 + 1);
        v54 = v1147;
      }

      else
      {
        v54 = v1147;
        if ([lowercaseString containsString:@"work"])
        {
          ++v1194;
        }

        else if ([lowercaseString containsString:@"gym"])
        {
          ++v1171;
        }

        else if ([lowercaseString containsString:@"school"])
        {
          ++v1158;
        }

        else if ([v51 placeDiscovery] != 2)
        {
          goto LABEL_15;
        }
      }

      startDate = [v51 startDate];
      if (startDate)
      {
        v56 = startDate;
        endDate = [v51 endDate];

        if (endDate)
        {
          v58 = [NSDateInterval alloc];
          startDate2 = [v51 startDate];
          endDate2 = [v51 endDate];
          v61 = [v58 initWithStartDate:startDate2 endDate:endDate2];

          [v1157 addObject:v61];
        }
      }

LABEL_15:
      endDate3 = [v51 endDate];

      if (endDate3)
      {
        if (v49)
        {
          v63 = [v45 objectAtIndexedSubscript:v49 - 1];
          endDate4 = [v63 endDate];

          if (endDate4)
          {
            endDate5 = [v51 endDate];
            v66 = [v45 objectAtIndexedSubscript:v49 - 1];
            [v66 endDate];
            v68 = v67 = v50;
            [endDate5 timeIntervalSinceDate:v68];
            v69 = [NSNumber numberWithDouble:?];
            [v54 addObject:v69];

            v50 = v67;
          }
        }

        creationDate = [v51 creationDate];

        if (creationDate)
        {
          creationDate2 = [v51 creationDate];
          endDate6 = [v51 endDate];
          [creationDate2 timeIntervalSinceDate:endDate6];
          v74 = v73;

          v75 = [NSNumber numberWithDouble:v74];
          [v48 addObject:v75];
        }

        sourceCreationDate = [v51 sourceCreationDate];

        if (sourceCreationDate)
        {
          sourceCreationDate2 = [v51 sourceCreationDate];
          endDate7 = [v51 endDate];
          [sourceCreationDate2 timeIntervalSinceDate:endDate7];
          v80 = v79;

          v81 = [NSNumber numberWithDouble:v80];
          [v1139 addObject:v81];
        }
      }

      creationDate3 = [v51 creationDate];
      if (!creationDate3)
      {
        goto LABEL_32;
      }

      endDate11 = creationDate3;
      endDate8 = [v51 endDate];
      if (!endDate8)
      {
        goto LABEL_31;
      }

      v85 = endDate8;
      endDate9 = [v51 endDate];

      if (endDate9)
      {
        creationDate4 = [v51 creationDate];
        endDate10 = [v51 endDate];
        [creationDate4 timeIntervalSinceDate:endDate10];
        v90 = v89;

        v91 = [NSNumber numberWithDouble:v90];
        [v48 addObject:v91];

        if (v1182)
        {
          v92 = v1182 - 1;
          if ((v1182 - 1) > 8)
          {
            ++v1182;
            goto LABEL_32;
          }

          v1166 = v50;
          v93 = *(&off_100340240 + v92);
          v1161 = *(&off_100340288 + v92);
          ++v1182;
        }

        else
        {
          v1166 = v50;
          v1182 = 1;
          v93 = @"Routine_HourIDVisit_Start_1";
          v1161 = @"Routine_HourIDVisit_End_1";
        }

        startDate3 = [v51 startDate];
        [(NSDate *)v1145 timeIntervalSinceDate:startDate3];
        v95 = [NSNumber numberWithDouble:?];
        v96 = [MOMetric binForNumber:v95 bins:v1146];
        metrics8 = [(MOMetric *)selfCopy metrics];
        [metrics8 setObject:v96 forKeyedSubscript:v93];

        endDate11 = [v51 endDate];
        [(NSDate *)v1145 timeIntervalSinceDate:endDate11];
        v98 = [NSNumber numberWithDouble:?];
        v99 = [MOMetric binForNumber:v98 bins:v1146];
        metrics9 = [(MOMetric *)selfCopy metrics];
        [metrics9 setObject:v99 forKeyedSubscript:v1161];

        v48 = v1128;
        v45 = v1129;
        v50 = v1166;
LABEL_31:
      }

LABEL_32:

      if ([v45 count] <= ++v49)
      {
        goto LABEL_36;
      }
    }
  }

  v1158 = 0;
  v1171 = 0;
  v1194 = 0;
  v50 = 0;
LABEL_36:
  v101 = [NSNumber numberWithInt:v50];
  metrics10 = [(MOMetric *)selfCopy metrics];
  [metrics10 setObject:v101 forKeyedSubscript:@"Routine_nHomeVisits"];

  v103 = [NSNumber numberWithInt:v1194];
  metrics11 = [(MOMetric *)selfCopy metrics];
  [metrics11 setObject:v103 forKeyedSubscript:@"Routine_nWorkVisits"];

  v105 = [NSNumber numberWithInt:v1171];
  metrics12 = [(MOMetric *)selfCopy metrics];
  [metrics12 setObject:v105 forKeyedSubscript:@"Routine_nGymVisits"];

  v107 = [NSNumber numberWithInt:v1158];
  metrics13 = [(MOMetric *)selfCopy metrics];
  [metrics13 setObject:v107 forKeyedSubscript:@"Routine_nSchoolVisits"];

  v109 = [MOPromptMetrics meanOf:v48];
  metrics14 = [(MOMetric *)selfCopy metrics];
  [metrics14 setObject:v109 forKeyedSubscript:@"Routine_AverageVisitsLatency"];

  v111 = [MOPromptMetrics meanOf:v1139];
  metrics15 = [(MOMetric *)selfCopy metrics];
  [metrics15 setObject:v111 forKeyedSubscript:@"Routine_AverageVisitsRealLatency"];

  if ([v1147 count])
  {
    v113 = [MOPromptMetrics meanOf:v1147];
    metrics16 = [(MOMetric *)selfCopy metrics];
    [metrics16 setObject:v113 forKeyedSubscript:@"Routine_MeanDeltaBetweenVisits"];

    v115 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics17 = [(MOMetric *)selfCopy metrics];
    [metrics17 setObject:v115 forKeyedSubscript:@"Routine_MinDeltaBetweenVisits"];

    v117 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics18 = [(MOMetric *)selfCopy metrics];
    [metrics18 setObject:v117 forKeyedSubscript:@"Routine_MaxDeltaBetweenVisits"];

    v119 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics19 = [(MOMetric *)selfCopy metrics];
    [metrics19 setObject:v119 forKeyedSubscript:@"Routine_SDDeltaBetweenVisits"];
  }

  if ([v45 count])
  {
    firstObject = [v45 firstObject];
    endDate12 = [firstObject endDate];
    [endDate12 timeIntervalSinceDate:selfCopy->_startDate];
    v123 = [NSNumber numberWithDouble:?];
    v124 = v1147;
    [v1147 addObject:v123];

    endDate = selfCopy->_endDate;
    lastObject = [v45 lastObject];
    endDate13 = [lastObject endDate];
    [(NSDate *)endDate timeIntervalSinceDate:endDate13];
    v128 = [NSNumber numberWithDouble:?];
    [v1147 addObject:v128];

    v129 = [MOPromptMetrics meanOf:v1147];
    metrics20 = [(MOMetric *)selfCopy metrics];
    [metrics20 setObject:v129 forKeyedSubscript:@"Routine_MeanDeltaBetweenVisitsBoundariesIncluded"];

    v131 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics21 = [(MOMetric *)selfCopy metrics];
    [metrics21 setObject:v131 forKeyedSubscript:@"Routine_MinDeltaBetweenVisitsBoundariesIncluded"];

    v133 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics22 = [(MOMetric *)selfCopy metrics];
    [metrics22 setObject:v133 forKeyedSubscript:@"Routine_MaxDeltaBetweenVisitsBoundariesIncluded"];

    metrics27 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics23 = [(MOMetric *)selfCopy metrics];
    [metrics23 setObject:metrics27 forKeyedSubscript:@"Routine_SDDeltaBetweenVisitsBoundariesIncluded"];

    v137 = selfCopy;
  }

  else
  {
    [(NSDate *)selfCopy->_endDate timeIntervalSinceDate:selfCopy->_startDate];
    v138 = [NSNumber numberWithDouble:?];
    metrics24 = [(MOMetric *)selfCopy metrics];
    [metrics24 setObject:v138 forKeyedSubscript:@"Routine_MeanDeltaBetweenVisitsBoundariesIncluded"];

    [(NSDate *)selfCopy->_endDate timeIntervalSinceDate:selfCopy->_startDate];
    v140 = [NSNumber numberWithDouble:?];
    metrics25 = [(MOMetric *)selfCopy metrics];
    [metrics25 setObject:v140 forKeyedSubscript:@"Routine_MinDeltaBetweenVisitsBoundariesIncluded"];

    [(NSDate *)selfCopy->_endDate timeIntervalSinceDate:selfCopy->_startDate];
    v142 = [NSNumber numberWithDouble:?];
    metrics26 = [(MOMetric *)selfCopy metrics];
    [metrics26 setObject:v142 forKeyedSubscript:@"Routine_MaxDeltaBetweenVisitsBoundariesIncluded"];

    metrics27 = [(MOMetric *)selfCopy metrics];
    [metrics27 setObject:&off_10036E7B0 forKeyedSubscript:@"Routine_SDDeltaBetweenVisitsBoundariesIncluded"];
    v137 = selfCopy;
    v124 = v1147;
  }

  [v124 removeAllObjects];
  v144 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v145 = [NSPredicate predicateWithFormat:@"%K == %i", v144, 2];
  v1245[0] = v145;
  v146 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v147 = [NSPredicate predicateWithFormat:@"%K == %i", v146, 5];
  v1245[1] = v147;
  v148 = [NSArray arrayWithObjects:v1245 count:2];
  v149 = [NSCompoundPredicate andPredicateWithSubpredicates:v148];

  v1119 = v149;
  v150 = [v1142 filteredArrayUsingPredicate:v149];
  v151 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v150 count]);
  metrics28 = [(MOMetric *)v137 metrics];
  [metrics28 setObject:v151 forKeyedSubscript:@"Storytelling_NumMoments"];

  v1227 = 0u;
  v1228 = 0u;
  v1225 = 0u;
  v1226 = 0u;
  v153 = v150;
  obj = [v153 countByEnumeratingWithState:&v1225 objects:v1244 count:16];
  v1156 = v153;
  if (obj)
  {
    v154 = 0;
    LODWORD(v155) = 0;
    LODWORD(v156) = 0;
    v1199 = 0;
    v1195 = 0;
    v1148 = *v1226;
    while (1)
    {
      for (i = 0; i != obj; i = i + 1)
      {
        v1167 = v154;
        v1183 = v155;
        if (*v1226 != v1148)
        {
          objc_enumerationMutation(v153);
        }

        v1172 = v156;
        v158 = *(*(&v1225 + 1) + 8 * i);
        v159 = [NSDateInterval alloc];
        startDate4 = [v158 startDate];
        endDate14 = [v158 endDate];
        v162 = [v159 initWithStartDate:startDate4 endDate:endDate14];

        v1162 = v162;
        v1159 = [(MOPromptMetrics *)selfCopy doesInterval:v162 overlapWithAnyIntervalFromArray:v1157];
        extendedAttributes = [v158 extendedAttributes];
        photoMomentPersons = [extendedAttributes photoMomentPersons];

        v1223 = 0u;
        v1224 = 0u;
        v1221 = 0u;
        v1222 = 0u;
        v165 = photoMomentPersons;
        v166 = [v165 countByEnumeratingWithState:&v1221 objects:v1243 count:16];
        if (!v166)
        {

          v176 = v1199;
          v175 = v1195;
          goto LABEL_59;
        }

        v167 = v166;
        v168 = 0;
        v169 = 0;
        v170 = *v1222;
        do
        {
          for (j = 0; j != v167; j = j + 1)
          {
            if (*v1222 != v170)
            {
              objc_enumerationMutation(v165);
            }

            v172 = *(*(&v1221 + 1) + 8 * j);
            name = [v172 name];
            v169 |= [name length] != 0;
            family = [v172 family];
            v168 |= [family length] != 0;
          }

          v167 = [v165 countByEnumeratingWithState:&v1221 objects:v1243 count:16];
        }

        while (v167);

        if ((v169 & 1) == 0)
        {
          v176 = v1199;
          v175 = v1195;
          if ((v168 & 1) == 0)
          {
            goto LABEL_59;
          }

LABEL_58:
          ++v176;
          goto LABEL_59;
        }

        v175 = v1195 + 1;
        v176 = v1199;
        if (v168)
        {
          goto LABEL_58;
        }

LABEL_59:
        v1195 = v175;
        v1199 = v176;
        extendedAttributes2 = [v158 extendedAttributes];
        photoMomentPublicEvents = [extendedAttributes2 photoMomentPublicEvents];

        v1219 = 0u;
        v1220 = 0u;
        v1217 = 0u;
        v1218 = 0u;
        v179 = photoMomentPublicEvents;
        v180 = [v179 countByEnumeratingWithState:&v1217 objects:v1242 count:16];
        if (v180)
        {
          v181 = v180;
          v182 = 0;
          v183 = 0;
          v184 = *v1218;
          do
          {
            for (k = 0; k != v181; k = k + 1)
            {
              if (*v1218 != v184)
              {
                objc_enumerationMutation(v179);
              }

              v186 = *(*(&v1217 + 1) + 8 * k);
              name2 = [v186 name];
              performers = [v186 performers];
              v183 |= [name2 length] != 0;
              v182 |= [performers count] != 0;
            }

            v181 = [v179 countByEnumeratingWithState:&v1217 objects:v1242 count:16];
          }

          while (v181);

          v155 = v1183;
          if (v183)
          {
            v156 = v1172 + 1;
          }

          else
          {
            v156 = v1172;
          }

          v189 = v1167;
          if (v182)
          {
            v155 = v1183 + 1;
          }
        }

        else
        {

          v155 = v1183;
          v156 = v1172;
          v189 = v1167;
        }

        v154 = v189 + v1159;

        v153 = v1156;
      }

      obj = [v1156 countByEnumeratingWithState:&v1225 objects:v1244 count:16];
      if (!obj)
      {
        v190 = v154;
        v191 = selfCopy;
        v192 = v1199;
        v193 = v1195;
        goto LABEL_76;
      }
    }
  }

  v191 = v137;
  v155 = 0;
  v156 = 0;
  v192 = 0;
  v193 = 0;
  v190 = 0.0;
LABEL_76:

  v194 = [NSNumber numberWithInt:v193];
  metrics29 = [(MOMetric *)v191 metrics];
  [metrics29 setObject:v194 forKeyedSubscript:@"Storytelling_NumMomentsWithPeople"];

  v196 = [NSNumber numberWithInt:v192];
  metrics30 = [(MOMetric *)v191 metrics];
  [metrics30 setObject:v196 forKeyedSubscript:@"Storytelling_NumMomentsWithFamily"];

  v198 = [NSNumber numberWithInt:v156];
  metrics31 = [(MOMetric *)v191 metrics];
  [metrics31 setObject:v198 forKeyedSubscript:@"Storytelling_NumMomentsWithEvent"];

  v200 = [NSNumber numberWithInt:v155];
  metrics32 = [(MOMetric *)v191 metrics];
  [metrics32 setObject:v200 forKeyedSubscript:@"Storytelling_NumMomentsWithEventAndArtist"];

  v202 = v1156;
  if ([v1156 count])
  {
    v203 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", 1.0 - v190 / [v1156 count]);
    metrics33 = [(MOMetric *)v191 metrics];
    [metrics33 setObject:v203 forKeyedSubscript:@"Storytelling_PercentageOfMomentEventsNoLOI"];

    v202 = v1156;
  }

  v1160 = +[MOPhotoMomentTags getInferenceTagMap];
  v1144 = objc_opt_new();
  v1138 = objc_opt_new();
  v205 = v1147;
  if ([v202 count])
  {
    v206 = 0;
    while (1)
    {
      v1196 = v206;
      v207 = [v202 objectAtIndexedSubscript:v206];
      creationDate5 = [v207 creationDate];
      v1149 = v207;
      if (!creationDate5)
      {
        goto LABEL_86;
      }

      endDate23 = creationDate5;
      startDate5 = [v207 startDate];
      if (!startDate5)
      {
        goto LABEL_85;
      }

      v211 = startDate5;
      endDate15 = [v207 endDate];

      if (endDate15)
      {
        creationDate6 = [v207 creationDate];
        endDate16 = [v207 endDate];
        [creationDate6 timeIntervalSinceDate:endDate16];
        v216 = v215;

        v217 = [NSNumber numberWithDouble:v216];
        [v1144 addObject:v217];

        if (v1196 <= 2)
        {
          break;
        }
      }

LABEL_86:
      endDate17 = [v207 endDate];

      v227 = v1196;
      if (endDate17)
      {
        if (v1196)
        {
          v228 = [v1156 objectAtIndexedSubscript:v1196 - 1];
          endDate18 = [v228 endDate];

          if (endDate18)
          {
            endDate19 = [v207 endDate];
            v231 = [v1156 objectAtIndexedSubscript:v1196 - 1];
            endDate20 = [v231 endDate];
            [endDate19 timeIntervalSinceDate:endDate20];
            v233 = [NSNumber numberWithDouble:?];
            [v205 addObject:v233];
          }
        }

        creationDate7 = [v207 creationDate];

        if (creationDate7)
        {
          creationDate8 = [v207 creationDate];
          endDate21 = [v207 endDate];
          [creationDate8 timeIntervalSinceDate:endDate21];
          v238 = v237;

          v239 = [NSNumber numberWithDouble:v238];
          [v1144 addObject:v239];
        }

        sourceCreationDate3 = [v207 sourceCreationDate];

        v227 = v1196;
        if (sourceCreationDate3)
        {
          sourceCreationDate4 = [v207 sourceCreationDate];
          endDate22 = [v207 endDate];
          [sourceCreationDate4 timeIntervalSinceDate:endDate22];
          v244 = v243;

          v245 = [NSNumber numberWithDouble:v244];
          [v1138 addObject:v245];
        }
      }

      if (v227 <= 2)
      {
        v1215 = 0u;
        v1216 = 0u;
        v1213 = 0u;
        v1214 = 0u;
        extendedAttributes3 = [v207 extendedAttributes];
        photoMomentInferences = [extendedAttributes3 photoMomentInferences];

        obja = photoMomentInferences;
        v1168 = [photoMomentInferences countByEnumeratingWithState:&v1213 objects:v1241 count:16];
        if (!v1168)
        {
          goto LABEL_126;
        }

        v248 = 0;
        v1163 = *v1214;
        while (1)
        {
          v249 = 0;
          if (v248 <= 4)
          {
            v250 = 4;
          }

          else
          {
            v250 = v248;
          }

          v1173 = (v250 - v248);
          do
          {
            if (*v1214 != v1163)
            {
              objc_enumerationMutation(obja);
            }

            lowercaseString2 = [*(*(&v1213 + 1) + 8 * v249) lowercaseString];
            if (v249 == v1173)
            {

              goto LABEL_126;
            }

            v1184 = v249;
            v1211 = 0u;
            v1212 = 0u;
            v1209 = 0u;
            v1210 = 0u;
            v251 = v1160;
            v252 = [v251 countByEnumeratingWithState:&v1209 objects:v1240 count:16];
            v253 = lowercaseString2;
            if (!v252)
            {
              goto LABEL_122;
            }

            v254 = v252;
            v255 = *v1210;
            do
            {
              v256 = 0;
              do
              {
                if (*v1210 != v255)
                {
                  objc_enumerationMutation(v251);
                }

                v257 = *(*(&v1209 + 1) + 8 * v256);
                v258 = [v251 objectForKeyedSubscript:v257];
                lowercaseString3 = [v258 lowercaseString];
                if ([v253 containsString:lowercaseString3])
                {
                  if (v227 == 2)
                  {
                    v260 = &off_100340220;
                    if (v248 <= 3)
                    {
                      goto LABEL_116;
                    }
                  }

                  else
                  {
                    if (v227 == 1)
                    {
                      v260 = &off_100340200;
                    }

                    else
                    {
                      if (v227)
                      {
                        goto LABEL_117;
                      }

                      v260 = &off_1003401E0;
                    }

                    if (v248 < 4)
                    {
LABEL_116:
                      v261 = v260[v248];
                      metrics34 = [(MOMetric *)selfCopy metrics];
                      v263 = v261;
                      v253 = lowercaseString2;
                      [metrics34 setObject:v257 forKeyedSubscript:v263];

                      v227 = v1196;
                    }
                  }
                }

LABEL_117:

                v256 = v256 + 1;
              }

              while (v254 != v256);
              v264 = [v251 countByEnumeratingWithState:&v1209 objects:v1240 count:16];
              v254 = v264;
            }

            while (v264);
LABEL_122:
            ++v248;

            v249 = v1184 + 1;
            v205 = v1147;
          }

          while ((v1184 + 1) != v1168);
          v1168 = [obja countByEnumeratingWithState:&v1213 objects:v1241 count:16];
          if (!v1168)
          {
LABEL_126:

            v191 = selfCopy;
            break;
          }
        }
      }

      v206 = v227 + 1;

      v202 = v1156;
      if ([v1156 count] <= v206)
      {
        goto LABEL_128;
      }
    }

    v218 = *(&off_1003402D0 + v1196);
    v1200 = *(&off_1003402E8 + v1196);
    startDate6 = [v207 startDate];
    [(NSDate *)v1145 timeIntervalSinceDate:startDate6];
    v220 = [NSNumber numberWithDouble:?];
    v221 = [MOMetric binForNumber:v220 bins:v1146];
    metrics35 = [(MOMetric *)selfCopy metrics];
    [metrics35 setObject:v221 forKeyedSubscript:v218];

    endDate23 = [v207 endDate];
    v205 = v1147;
    [(NSDate *)v1145 timeIntervalSinceDate:endDate23];
    v223 = [NSNumber numberWithDouble:?];
    v224 = [MOMetric binForNumber:v223 bins:v1146];
    metrics36 = [(MOMetric *)selfCopy metrics];
    [metrics36 setObject:v224 forKeyedSubscript:v1200];

    v191 = selfCopy;
LABEL_85:

    goto LABEL_86;
  }

LABEL_128:
  v265 = [MOPromptMetrics meanOf:v1144];
  metrics37 = [(MOMetric *)v191 metrics];
  [metrics37 setObject:v265 forKeyedSubscript:@"Storytelling_AverageMomentsLatency"];

  v267 = [MOPromptMetrics meanOf:v1138];
  metrics38 = [(MOMetric *)v191 metrics];
  [metrics38 setObject:v267 forKeyedSubscript:@"Storytelling_AverageMomentsRealLatency"];

  if ([v1147 count])
  {
    v269 = [MOPromptMetrics meanOf:v1147];
    metrics39 = [(MOMetric *)v191 metrics];
    [metrics39 setObject:v269 forKeyedSubscript:@"Storytelling_MeanDeltaBetweenMoments"];

    v271 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics40 = [(MOMetric *)v191 metrics];
    [metrics40 setObject:v271 forKeyedSubscript:@"Storytelling_MinDeltaBetweenMoments"];

    v273 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics41 = [(MOMetric *)v191 metrics];
    [metrics41 setObject:v273 forKeyedSubscript:@"Storytelling_MaxDeltaBetweenMoments"];

    v275 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics42 = [(MOMetric *)v191 metrics];
    [metrics42 setObject:v275 forKeyedSubscript:@"Storytelling_SDDeltaBetweenMoments"];
  }

  if ([v1156 count])
  {
    firstObject2 = [v1156 firstObject];
    endDate24 = [firstObject2 endDate];
    [endDate24 timeIntervalSinceDate:v191->_startDate];
    v279 = [NSNumber numberWithDouble:?];
    v280 = v1147;
    [v1147 addObject:v279];

    v281 = v191->_endDate;
    lastObject2 = [v1156 lastObject];
    endDate25 = [lastObject2 endDate];
    [(NSDate *)v281 timeIntervalSinceDate:endDate25];
    v284 = [NSNumber numberWithDouble:?];
    [v1147 addObject:v284];

    v285 = [MOPromptMetrics meanOf:v1147];
    metrics43 = [(MOMetric *)v191 metrics];
    [metrics43 setObject:v285 forKeyedSubscript:@"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded"];

    v287 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics44 = [(MOMetric *)v191 metrics];
    [metrics44 setObject:v287 forKeyedSubscript:@"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded"];

    v289 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics45 = [(MOMetric *)v191 metrics];
    [metrics45 setObject:v289 forKeyedSubscript:@"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded"];

    metrics50 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics46 = [(MOMetric *)v191 metrics];
    [metrics46 setObject:metrics50 forKeyedSubscript:@"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded"];

    v293 = v191;
  }

  else
  {
    [(NSDate *)v191->_endDate timeIntervalSinceDate:v191->_startDate];
    v294 = [NSNumber numberWithDouble:?];
    metrics47 = [(MOMetric *)v191 metrics];
    [metrics47 setObject:v294 forKeyedSubscript:@"Storytelling_MeanDeltaBetweenMomentsBoundariesIncluded"];

    [(NSDate *)v191->_endDate timeIntervalSinceDate:v191->_startDate];
    v296 = [NSNumber numberWithDouble:?];
    metrics48 = [(MOMetric *)v191 metrics];
    [metrics48 setObject:v296 forKeyedSubscript:@"Storytelling_MinDeltaBetweenMomentsBoundariesIncluded"];

    [(NSDate *)v191->_endDate timeIntervalSinceDate:v191->_startDate];
    v298 = [NSNumber numberWithDouble:?];
    metrics49 = [(MOMetric *)v191 metrics];
    [metrics49 setObject:v298 forKeyedSubscript:@"Storytelling_MaxDeltaBetweenMomentsBoundariesIncluded"];

    metrics50 = [(MOMetric *)v191 metrics];
    [metrics50 setObject:&off_10036E7B0 forKeyedSubscript:@"Storytelling_SDDeltaBetweenMomentsBoundariesIncluded"];
    v293 = v191;
    v280 = v1147;
  }

  [v280 removeAllObjects];
  v300 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v301 = [NSPredicate predicateWithFormat:@"%K == %i", v300, 1];
  v1239[0] = v301;
  v302 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v303 = [NSPredicate predicateWithFormat:@"%K == %i", v302, 2];
  v1239[1] = v303;
  v304 = [NSArray arrayWithObjects:v1239 count:2];
  v305 = [NSCompoundPredicate andPredicateWithSubpredicates:v304];

  v1118 = v305;
  v306 = [v1142 filteredArrayUsingPredicate:v305];
  v307 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v306 count]);
  metrics51 = [(MOMetric *)v293 metrics];
  [metrics51 setObject:v307 forKeyedSubscript:@"Workout_NumWorkouts"];

  v1133 = objc_opt_new();
  v1197 = v306;
  if ([v306 count])
  {
    v309 = 0;
    v310 = 0;
    v311 = 0;
    while (1)
    {
      v312 = [v306 objectAtIndexedSubscript:v309];
      v313 = [NSDateInterval alloc];
      startDate7 = [v312 startDate];
      endDate26 = [v312 endDate];
      v316 = [v313 initWithStartDate:startDate7 endDate:endDate26];

      v317 = [(MOPromptMetrics *)selfCopy doesInterval:v316 overlapWithAnyIntervalFromArray:v1157];
      creationDate9 = [v312 creationDate];
      if (!creationDate9)
      {
        break;
      }

      endDate32 = creationDate9;
      startDate8 = [v312 startDate];
      if (!startDate8)
      {
        p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
        goto LABEL_147;
      }

      v321 = startDate8;
      endDate27 = [v312 endDate];

      if (!endDate27)
      {
        break;
      }

      if (v309)
      {
        v323 = [v1197 objectAtIndexedSubscript:v309 - 1];
        endDate28 = [v323 endDate];

        if (endDate28)
        {
          endDate29 = [v312 endDate];
          v326 = [v1197 objectAtIndexedSubscript:v309 - 1];
          endDate30 = [v326 endDate];
          [endDate29 timeIntervalSinceDate:endDate30];
          v328 = [NSNumber numberWithDouble:?];
          [v1147 addObject:v328];
        }
      }

      v329 = (v310 + 1);
      creationDate10 = [v312 creationDate];
      endDate31 = [v312 endDate];
      [creationDate10 timeIntervalSinceDate:endDate31];
      v333 = v332;

      v334 = [NSNumber numberWithDouble:v333];
      [v1133 addObject:v334];

      if (v310 > 9)
      {
        goto LABEL_145;
      }

      workoutType = [v312 workoutType];
      v336 = [HKWorkout _workoutActivityTypeFromString:workoutType];

      p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
      if (v310 <= 9)
      {
        v338 = *(&off_100340300 + v310);
        v1185 = *(&off_100340350 + v310);
        v1202 = *(&off_1003403A0 + v310);
        v310 = (v310 + 1);
        v339 = [NSNumber numberWithUnsignedInteger:v336];
        metrics52 = [(MOMetric *)selfCopy metrics];
        [metrics52 setObject:v339 forKeyedSubscript:v338];

        startDate9 = [v312 startDate];
        [(NSDate *)v1145 timeIntervalSinceDate:startDate9];
        v342 = [NSNumber numberWithDouble:?];
        v343 = [MOMetric binForNumber:v342 bins:v1146];
        metrics53 = [(MOMetric *)selfCopy metrics];
        [metrics53 setObject:v343 forKeyedSubscript:v1185];

        endDate32 = [v312 endDate];
        [(NSDate *)v1145 timeIntervalSinceDate:endDate32];
        v345 = [NSNumber numberWithDouble:?];
        v346 = [MOMetric binForNumber:v345 bins:v1146];
        metrics54 = [(MOMetric *)selfCopy metrics];
        [metrics54 setObject:v346 forKeyedSubscript:v1202];

        p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
LABEL_147:

        v329 = v310;
      }

LABEL_148:
      v311 += v317;

      ++v309;
      v306 = v1197;
      v310 = v329;
      if ([v1197 count] <= v309)
      {
        v348 = v311;
        v349 = selfCopy;
        v350 = &GEOPOICategoryGasStation_ptr;
        goto LABEL_151;
      }
    }

    v329 = v310;
LABEL_145:
    p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
    goto LABEL_148;
  }

  v349 = v293;
  v350 = &GEOPOICategoryGasStation_ptr;
  v348 = 0.0;
  p_cache = (&OBJC_METACLASS___MOEngagementHistoryManager + 16);
LABEL_151:
  if ([v306 count])
  {
    v351 = [v350[190] numberWithDouble:{1.0 - v348 / objc_msgSend(v306, "count")}];
    metrics55 = [(MOMetric *)v349 metrics];
    [metrics55 setObject:v351 forKeyedSubscript:@"Workout_PercentageOfWorkoutEventsNoLOI"];

    p_cache = &OBJC_METACLASS___MOEngagementHistoryManager.cache;
  }

  [p_cache + 363 meanOf:v1133];
  v354 = v353 = p_cache;
  metrics56 = [(MOMetric *)v349 metrics];
  [metrics56 setObject:v354 forKeyedSubscript:@"Workout_AverageWorkoutLatency"];

  if ([v1147 count])
  {
    v356 = [v353 + 363 meanOf:v1147];
    metrics57 = [(MOMetric *)v349 metrics];
    [metrics57 setObject:v356 forKeyedSubscript:@"Workout_MeanDeltaBetweenWorkouts"];

    v358 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics58 = [(MOMetric *)v349 metrics];
    [metrics58 setObject:v358 forKeyedSubscript:@"Workout_MinDeltaBetweenWorkouts"];

    v360 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics59 = [(MOMetric *)v349 metrics];
    [metrics59 setObject:v360 forKeyedSubscript:@"Workout_MaxDeltaBetweenWorkouts"];

    v362 = [v353 + 363 standardDeviationOf:v1147];
    metrics60 = [(MOMetric *)v349 metrics];
    [metrics60 setObject:v362 forKeyedSubscript:@"Workout_SDDeltaBetweenWorkouts"];
  }

  v364 = [v306 count];
  v365 = v350[190];
  if (v364)
  {
    firstObject3 = [v306 firstObject];
    endDate33 = [firstObject3 endDate];
    [endDate33 timeIntervalSinceDate:v349->_startDate];
    v368 = [v365 numberWithDouble:?];
    v369 = v1147;
    [v1147 addObject:v368];

    v370 = v350[190];
    v371 = v349->_endDate;
    lastObject3 = [v306 lastObject];
    endDate34 = [lastObject3 endDate];
    [(NSDate *)v371 timeIntervalSinceDate:endDate34];
    v374 = [v370 numberWithDouble:?];
    [v1147 addObject:v374];

    v375 = [MOPromptMetrics meanOf:v1147];
    metrics61 = [(MOMetric *)v349 metrics];
    [metrics61 setObject:v375 forKeyedSubscript:@"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded"];

    v377 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics62 = [(MOMetric *)v349 metrics];
    [metrics62 setObject:v377 forKeyedSubscript:@"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded"];

    v379 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics63 = [(MOMetric *)v349 metrics];
    [metrics63 setObject:v379 forKeyedSubscript:@"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded"];

    metrics68 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics64 = [(MOMetric *)v349 metrics];
    [metrics64 setObject:metrics68 forKeyedSubscript:@"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded"];
  }

  else
  {
    [(NSDate *)v349->_endDate timeIntervalSinceDate:v349->_startDate];
    v383 = [v365 numberWithDouble:?];
    metrics65 = [(MOMetric *)v349 metrics];
    [metrics65 setObject:v383 forKeyedSubscript:@"Workout_MeanDeltaBetweenWorkoutsBoundariesIncluded"];

    v385 = v350[190];
    [(NSDate *)v349->_endDate timeIntervalSinceDate:v349->_startDate];
    v386 = [v385 numberWithDouble:?];
    metrics66 = [(MOMetric *)v349 metrics];
    [metrics66 setObject:v386 forKeyedSubscript:@"Workout_MinDeltaBetweenWorkoutsBoundariesIncluded"];

    v388 = v350[190];
    [(NSDate *)v349->_endDate timeIntervalSinceDate:v349->_startDate];
    v389 = [v388 numberWithDouble:?];
    metrics67 = [(MOMetric *)v349 metrics];
    [metrics67 setObject:v389 forKeyedSubscript:@"Workout_MaxDeltaBetweenWorkoutsBoundariesIncluded"];

    metrics68 = [(MOMetric *)v349 metrics];
    [metrics68 setObject:&off_10036E7B0 forKeyedSubscript:@"Workout_SDDeltaBetweenWorkoutsBoundariesIncluded"];
    v369 = v1147;
  }

  [v369 removeAllObjects];
  v391 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v392 = [NSPredicate predicateWithFormat:@"%K == %i", v391, 3];
  v1238 = v392;
  v393 = [NSArray arrayWithObjects:&v1238 count:1];
  v394 = [NSCompoundPredicate andPredicateWithSubpredicates:v393];

  v1117 = v394;
  v395 = [v1142 filteredArrayUsingPredicate:v394];
  v396 = [v350[190] numberWithUnsignedInteger:{objc_msgSend(v395, "count")}];
  metrics69 = [(MOMetric *)v349 metrics];
  [metrics69 setObject:v396 forKeyedSubscript:@"Proactive_NumAllEvents"];

  v398 = objc_opt_new();
  v1205 = 0u;
  v1206 = 0u;
  v1207 = 0u;
  v1208 = 0u;
  v399 = v395;
  v400 = [v399 countByEnumeratingWithState:&v1205 objects:v1237 count:16];
  if (v400)
  {
    v401 = v400;
    v402 = *v1206;
    do
    {
      for (m = 0; m != v401; m = m + 1)
      {
        if (*v1206 != v402)
        {
          objc_enumerationMutation(v399);
        }

        v404 = *(*(&v1205 + 1) + 8 * m);
        creationDate11 = [v404 creationDate];
        if (creationDate11)
        {
          v406 = creationDate11;
          endDate35 = [v404 endDate];

          if (endDate35)
          {
            creationDate12 = [v404 creationDate];
            endDate36 = [v404 endDate];
            [creationDate12 timeIntervalSinceDate:endDate36];
            v411 = v410;

            v412 = [NSNumber numberWithDouble:v411];
            [v398 addObject:v412];
          }
        }
      }

      v401 = [v399 countByEnumeratingWithState:&v1205 objects:v1237 count:16];
    }

    while (v401);
  }

  v1116 = v399;

  v413 = selfCopy;
  if ([v398 count])
  {
    v414 = [MOPromptMetrics meanOf:v398];
    metrics70 = [(MOMetric *)selfCopy metrics];
    [metrics70 setObject:v414 forKeyedSubscript:@"Proactive_EventsAverageLatency"];

    [v398 removeAllObjects];
  }

  v1203 = v398;
  v416 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v417 = [NSPredicate predicateWithFormat:@"%K == %i", v416, 3];
  v1236[0] = v417;
  v418 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v419 = [NSPredicate predicateWithFormat:@"%K == %i", v418, 3];
  v1236[1] = v419;
  v420 = [NSArray arrayWithObjects:v1236 count:2];
  v421 = [NSCompoundPredicate andPredicateWithSubpredicates:v420];

  v1115 = v421;
  v422 = [v1142 filteredArrayUsingPredicate:v421];
  v423 = &GEOPOICategoryGasStation_ptr;
  v424 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v422 count]);
  metrics71 = [(MOMetric *)selfCopy metrics];
  [metrics71 setObject:v424 forKeyedSubscript:@"Proactive_NumMediaOnRepeatEvents"];

  v1132 = v422;
  if ([v422 count])
  {
    v426 = 0;
    v427 = 0;
    v428 = 0;
    while (1)
    {
      v429 = [v422 objectAtIndexedSubscript:v426];
      v430 = [NSDateInterval alloc];
      startDate10 = [v429 startDate];
      endDate37 = [v429 endDate];
      v433 = [v430 initWithStartDate:startDate10 endDate:endDate37];

      v434 = [(MOPromptMetrics *)selfCopy doesInterval:v433 overlapWithAnyIntervalFromArray:v1157];
      creationDate13 = [v429 creationDate];
      if (creationDate13)
      {
        endDate43 = creationDate13;
        startDate11 = [v429 startDate];
        if (!startDate11)
        {
          goto LABEL_183;
        }

        v438 = startDate11;
        endDate38 = [v429 endDate];

        if (endDate38)
        {
          break;
        }
      }

LABEL_184:
      v427 += v434;

      if ([v422 count] <= ++v426)
      {
        v460 = v427;
        v413 = selfCopy;
        v423 = &GEOPOICategoryGasStation_ptr;
        goto LABEL_188;
      }
    }

    if (v426)
    {
      v440 = [v422 objectAtIndexedSubscript:v426 - 1];
      endDate39 = [v440 endDate];

      if (endDate39)
      {
        endDate40 = [v429 endDate];
        v443 = [v422 objectAtIndexedSubscript:v426 - 1];
        endDate41 = [v443 endDate];
        [endDate40 timeIntervalSinceDate:endDate41];
        v445 = [NSNumber numberWithDouble:?];
        [v1147 addObject:v445];

        v422 = v1132;
      }
    }

    creationDate14 = [v429 creationDate];
    endDate42 = [v429 endDate];
    [creationDate14 timeIntervalSinceDate:endDate42];
    v449 = v448;

    v450 = [NSNumber numberWithDouble:v449];
    [v1203 addObject:v450];

    if (v428)
    {
      v451 = v428 - 1;
      if ((v428 - 1) > 3)
      {
        ++v428;
        goto LABEL_184;
      }

      v1174 = v434;
      v452 = *(&off_1003403F0 + v451);
      v1169 = *(&off_100340410 + v451);
      v1186 = v428 + 1;
    }

    else
    {
      v1174 = v434;
      v1186 = 1;
      v452 = @"Proactive_HourIDMediaOnRepeat_Start_1";
      v1169 = @"Proactive_HourIDMediaOnRepeat_End_1";
    }

    startDate12 = [v429 startDate];
    [(NSDate *)v1145 timeIntervalSinceDate:startDate12];
    v454 = [NSNumber numberWithDouble:?];
    v455 = [MOMetric binForNumber:v454 bins:v1146];
    metrics72 = [(MOMetric *)selfCopy metrics];
    [metrics72 setObject:v455 forKeyedSubscript:v452];

    endDate43 = [v429 endDate];
    [(NSDate *)v1145 timeIntervalSinceDate:endDate43];
    v457 = [NSNumber numberWithDouble:?];
    v458 = [MOMetric binForNumber:v457 bins:v1146];
    metrics73 = [(MOMetric *)selfCopy metrics];
    [metrics73 setObject:v458 forKeyedSubscript:v1169];

    v422 = v1132;
    v428 = v1186;
    v434 = v1174;
LABEL_183:

    goto LABEL_184;
  }

  v460 = 0.0;
LABEL_188:
  if ([v422 count])
  {
    v461 = [v423[190] numberWithDouble:{1.0 - v460 / objc_msgSend(v422, "count")}];
    metrics74 = [(MOMetric *)v413 metrics];
    [metrics74 setObject:v461 forKeyedSubscript:@"Proactive_PercentageOfMediaOnRepeatEventsNoLOI"];
  }

  if ([v1203 count])
  {
    v463 = [MOPromptMetrics meanOf:v1203];
    metrics75 = [(MOMetric *)v413 metrics];
    [metrics75 setObject:v463 forKeyedSubscript:@"Proactive_MediaOnRepeatAverageLatency"];

    [v1203 removeAllObjects];
  }

  if ([v1147 count])
  {
    v465 = [MOPromptMetrics meanOf:v1147];
    metrics76 = [(MOMetric *)v413 metrics];
    [metrics76 setObject:v465 forKeyedSubscript:@"Proactive_MeanDeltaBetweenMediaOnRepeatEvents"];

    v467 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics77 = [(MOMetric *)v413 metrics];
    [metrics77 setObject:v467 forKeyedSubscript:@"Proactive_MinDeltaBetweenMediaOnRepeatEvents"];

    v469 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics78 = [(MOMetric *)v413 metrics];
    [metrics78 setObject:v469 forKeyedSubscript:@"Proactive_MaxDeltaBetweenMediaOnRepeatEvents"];

    v471 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics79 = [(MOMetric *)v413 metrics];
    [metrics79 setObject:v471 forKeyedSubscript:@"Proactive_SDDeltaBetweenMediaOnRepeatEvents"];
  }

  v473 = [v422 count];
  v474 = v423[190];
  if (v473)
  {
    firstObject4 = [v422 firstObject];
    endDate44 = [firstObject4 endDate];
    [endDate44 timeIntervalSinceDate:v413->_startDate];
    v477 = [v474 numberWithDouble:?];
    v478 = v1147;
    [v1147 addObject:v477];

    v479 = v423[190];
    v480 = v413->_endDate;
    lastObject4 = [v422 lastObject];
    endDate45 = [lastObject4 endDate];
    [(NSDate *)v480 timeIntervalSinceDate:endDate45];
    v483 = [v479 numberWithDouble:?];
    [v1147 addObject:v483];

    v484 = [MOPromptMetrics meanOf:v1147];
    metrics80 = [(MOMetric *)v413 metrics];
    [metrics80 setObject:v484 forKeyedSubscript:@"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v486 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics81 = [(MOMetric *)v413 metrics];
    [metrics81 setObject:v486 forKeyedSubscript:@"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v488 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics82 = [(MOMetric *)v413 metrics];
    [metrics82 setObject:v488 forKeyedSubscript:@"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    metrics87 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics83 = [(MOMetric *)v413 metrics];
    [metrics83 setObject:metrics87 forKeyedSubscript:@"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v492 = v413;
    v493 = v423;
  }

  else
  {
    [(NSDate *)v413->_endDate timeIntervalSinceDate:v413->_startDate];
    v494 = [v474 numberWithDouble:?];
    metrics84 = [(MOMetric *)v413 metrics];
    [metrics84 setObject:v494 forKeyedSubscript:@"Proactive_MeanDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v496 = v423[190];
    [(NSDate *)v413->_endDate timeIntervalSinceDate:v413->_startDate];
    v497 = [v496 numberWithDouble:?];
    metrics85 = [(MOMetric *)v413 metrics];
    [metrics85 setObject:v497 forKeyedSubscript:@"Proactive_MinDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    v499 = v423[190];
    [(NSDate *)v413->_endDate timeIntervalSinceDate:v413->_startDate];
    v500 = [v499 numberWithDouble:?];
    metrics86 = [(MOMetric *)v413 metrics];
    [metrics86 setObject:v500 forKeyedSubscript:@"Proactive_MaxDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];

    metrics87 = [(MOMetric *)v413 metrics];
    [metrics87 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenMediaOnRepeatEventsBoundariesIncluded"];
    v492 = v413;
    v493 = v423;
    v478 = v1147;
  }

  [v478 removeAllObjects];
  v502 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v503 = [NSPredicate predicateWithFormat:@"%K == %i", v502, 3];
  v1235[0] = v503;
  v504 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v505 = [NSPredicate predicateWithFormat:@"%K == %i", v504, 7];
  v1235[1] = v505;
  v506 = [NSArray arrayWithObjects:v1235 count:2];
  v507 = [NSCompoundPredicate andPredicateWithSubpredicates:v506];

  v1114 = v507;
  v508 = [v1142 filteredArrayUsingPredicate:v507];
  v509 = [v493[190] numberWithUnsignedInteger:{objc_msgSend(v508, "count")}];
  metrics88 = [(MOMetric *)v492 metrics];
  [metrics88 setObject:v509 forKeyedSubscript:@"Proactive_NumTopicEvents"];

  v1170 = v508;
  if ([v508 count])
  {
    v511 = 0;
    v512 = 0;
    v513 = 0;
    v514 = v508;
    while (1)
    {
      v515 = [v514 objectAtIndexedSubscript:v511];
      v516 = [NSDateInterval alloc];
      startDate13 = [v515 startDate];
      endDate46 = [v515 endDate];
      v519 = [v516 initWithStartDate:startDate13 endDate:endDate46];

      v520 = [(MOPromptMetrics *)selfCopy doesInterval:v519 overlapWithAnyIntervalFromArray:v1157];
      creationDate15 = [v515 creationDate];
      if (creationDate15)
      {
        endDate52 = creationDate15;
        startDate14 = [v515 startDate];
        if (!startDate14)
        {
          goto LABEL_210;
        }

        v524 = startDate14;
        endDate47 = [v515 endDate];

        if (endDate47)
        {
          break;
        }
      }

LABEL_211:
      v512 += v520;

      if ([v514 count] <= ++v511)
      {
        v546 = v512;
        v547 = selfCopy;
        v548 = 0x100335000;
        goto LABEL_215;
      }
    }

    if (v511)
    {
      v526 = [v514 objectAtIndexedSubscript:v511 - 1];
      endDate48 = [v526 endDate];

      if (endDate48)
      {
        endDate49 = [v515 endDate];
        v529 = [v514 objectAtIndexedSubscript:v511 - 1];
        endDate50 = [v529 endDate];
        [endDate49 timeIntervalSinceDate:endDate50];
        v531 = [NSNumber numberWithDouble:?];
        [v1147 addObject:v531];

        v514 = v1170;
      }
    }

    creationDate16 = [v515 creationDate];
    endDate51 = [v515 endDate];
    [creationDate16 timeIntervalSinceDate:endDate51];
    v535 = v534;

    v536 = [NSNumber numberWithDouble:v535];
    [v1203 addObject:v536];

    if (v513)
    {
      v537 = v513 - 1;
      if ((v513 - 1) > 3)
      {
        ++v513;
        goto LABEL_211;
      }

      v1175 = v520;
      v538 = *(&off_100340430 + v537);
      v1164 = *(&off_100340450 + v537);
      v1187 = v513 + 1;
    }

    else
    {
      v1175 = v520;
      v1187 = 1;
      v538 = @"Proactive_HourIDTopicEvent_Start_1";
      v1164 = @"Proactive_HourIDTopicEvent_End_1";
    }

    startDate15 = [v515 startDate];
    [(NSDate *)v1145 timeIntervalSinceDate:startDate15];
    v540 = [NSNumber numberWithDouble:?];
    v541 = [MOMetric binForNumber:v540 bins:v1146];
    metrics89 = [(MOMetric *)selfCopy metrics];
    [metrics89 setObject:v541 forKeyedSubscript:v538];

    endDate52 = [v515 endDate];
    [(NSDate *)v1145 timeIntervalSinceDate:endDate52];
    v543 = [NSNumber numberWithDouble:?];
    v544 = [MOMetric binForNumber:v543 bins:v1146];
    metrics90 = [(MOMetric *)selfCopy metrics];
    [metrics90 setObject:v544 forKeyedSubscript:v1164];

    v514 = v1170;
    v513 = v1187;
    v520 = v1175;
LABEL_210:

    goto LABEL_211;
  }

  v547 = v492;
  v548 = v493;
  v546 = 0.0;
  v514 = v508;
LABEL_215:
  if ([v514 count])
  {
    v549 = [*(v548 + 1520) numberWithDouble:{1.0 - v546 / objc_msgSend(v514, "count")}];
    metrics91 = [(MOMetric *)v547 metrics];
    [metrics91 setObject:v549 forKeyedSubscript:@"Proactive_PercentageOfTopicEventsNoLOI"];
  }

  if ([v1203 count])
  {
    v551 = [MOPromptMetrics meanOf:v1203];
    metrics92 = [(MOMetric *)v547 metrics];
    [metrics92 setObject:v551 forKeyedSubscript:@"Proactive_TopicAverageLatency"];

    [v1203 removeAllObjects];
  }

  if ([v1147 count])
  {
    v553 = [MOPromptMetrics meanOf:v1147];
    metrics93 = [(MOMetric *)v547 metrics];
    [metrics93 setObject:v553 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTopicEvents"];

    v555 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics94 = [(MOMetric *)v547 metrics];
    [metrics94 setObject:v555 forKeyedSubscript:@"Proactive_MinDeltaBetweenTopicEvents"];

    v557 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics95 = [(MOMetric *)v547 metrics];
    [metrics95 setObject:v557 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTopicEvents"];

    v559 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics96 = [(MOMetric *)v547 metrics];
    [metrics96 setObject:v559 forKeyedSubscript:@"Proactive_SDDeltaBetweenTopicEvents"];
  }

  v561 = [v514 count];
  v562 = *(v548 + 1520);
  if (v561)
  {
    firstObject5 = [v514 firstObject];
    endDate53 = [firstObject5 endDate];
    [endDate53 timeIntervalSinceDate:v547->_startDate];
    v565 = [v562 numberWithDouble:?];
    v566 = v1147;
    [v1147 addObject:v565];

    v567 = *(v548 + 1520);
    v568 = v547->_endDate;
    lastObject5 = [v514 lastObject];
    endDate54 = [lastObject5 endDate];
    [(NSDate *)v568 timeIntervalSinceDate:endDate54];
    v571 = [v567 numberWithDouble:?];
    [v1147 addObject:v571];

    v572 = [MOPromptMetrics meanOf:v1147];
    metrics97 = [(MOMetric *)v547 metrics];
    [metrics97 setObject:v572 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded"];

    v574 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics98 = [(MOMetric *)v547 metrics];
    [metrics98 setObject:v574 forKeyedSubscript:@"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded"];

    v576 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics99 = [(MOMetric *)v547 metrics];
    [metrics99 setObject:v576 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded"];

    metrics104 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics100 = [(MOMetric *)v547 metrics];
    [metrics100 setObject:metrics104 forKeyedSubscript:@"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded"];

    v580 = v547;
    v581 = v548;
  }

  else
  {
    [(NSDate *)v547->_endDate timeIntervalSinceDate:v547->_startDate];
    v582 = [v562 numberWithDouble:?];
    metrics101 = [(MOMetric *)v547 metrics];
    [metrics101 setObject:v582 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTopicEventsBoundariesIncluded"];

    v584 = *(v548 + 1520);
    [(NSDate *)v547->_endDate timeIntervalSinceDate:v547->_startDate];
    v585 = [v584 numberWithDouble:?];
    metrics102 = [(MOMetric *)v547 metrics];
    [metrics102 setObject:v585 forKeyedSubscript:@"Proactive_MinDeltaBetweenTopicEventsBoundariesIncluded"];

    v587 = *(v548 + 1520);
    [(NSDate *)v547->_endDate timeIntervalSinceDate:v547->_startDate];
    v588 = [v587 numberWithDouble:?];
    metrics103 = [(MOMetric *)v547 metrics];
    [metrics103 setObject:v588 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTopicEventsBoundariesIncluded"];

    metrics104 = [(MOMetric *)v547 metrics];
    [metrics104 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenTopicEventsBoundariesIncluded"];
    v580 = v547;
    v581 = v548;
    v566 = v1147;
  }

  [v566 removeAllObjects];
  v590 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v591 = [NSPredicate predicateWithFormat:@"%K == %i", v590, 3];
  v1234[0] = v591;
  v592 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v593 = [NSPredicate predicateWithFormat:@"%K == %i", v592, 8];
  v1234[1] = v593;
  v594 = [NSArray arrayWithObjects:v1234 count:2];
  v595 = [NSCompoundPredicate andPredicateWithSubpredicates:v594];

  v1113 = v595;
  v596 = [v1142 filteredArrayUsingPredicate:v595];
  v597 = [*(v581 + 1520) numberWithUnsignedInteger:{objc_msgSend(v596, "count")}];
  metrics105 = [(MOMetric *)v580 metrics];
  [metrics105 setObject:v597 forKeyedSubscript:@"Proactive_NumTravelEvents"];

  v1165 = v596;
  if ([v596 count])
  {
    v599 = 0;
    v600 = 0;
    v601 = 0;
    v602 = v596;
    while (1)
    {
      v603 = [v602 objectAtIndexedSubscript:v599];
      v604 = [NSDateInterval alloc];
      startDate16 = [v603 startDate];
      endDate55 = [v603 endDate];
      v607 = [v604 initWithStartDate:startDate16 endDate:endDate55];

      v608 = [(MOPromptMetrics *)selfCopy doesInterval:v607 overlapWithAnyIntervalFromArray:v1157];
      creationDate17 = [v603 creationDate];
      if (creationDate17)
      {
        endDate61 = creationDate17;
        startDate17 = [v603 startDate];
        if (!startDate17)
        {
          goto LABEL_237;
        }

        v612 = startDate17;
        endDate56 = [v603 endDate];

        if (endDate56)
        {
          break;
        }
      }

LABEL_238:
      v600 += v608;

      if ([v602 count] <= ++v599)
      {
        v634 = v600;
        v635 = selfCopy;
        v636 = 0x100335000;
        goto LABEL_242;
      }
    }

    if (v599)
    {
      v614 = [v602 objectAtIndexedSubscript:v599 - 1];
      endDate57 = [v614 endDate];

      if (endDate57)
      {
        endDate58 = [v603 endDate];
        v617 = [v602 objectAtIndexedSubscript:v599 - 1];
        endDate59 = [v617 endDate];
        [endDate58 timeIntervalSinceDate:endDate59];
        v619 = [NSNumber numberWithDouble:?];
        [v1147 addObject:v619];

        v602 = v1165;
      }
    }

    creationDate18 = [v603 creationDate];
    endDate60 = [v603 endDate];
    [creationDate18 timeIntervalSinceDate:endDate60];
    v623 = v622;

    v624 = [NSNumber numberWithDouble:v623];
    [v1203 addObject:v624];

    if (v601)
    {
      v625 = v601 - 1;
      if ((v601 - 1) > 3)
      {
        ++v601;
        goto LABEL_238;
      }

      v1176 = v608;
      v626 = *(&off_100340470 + v625);
      objb = *(&off_100340490 + v625);
      v1188 = v601 + 1;
    }

    else
    {
      v1176 = v608;
      v1188 = 1;
      v626 = @"Proactive_HourIDTravelEvent_Start_1";
      objb = @"Proactive_HourIDTravelEvent_End_1";
    }

    startDate18 = [v603 startDate];
    [(NSDate *)v1145 timeIntervalSinceDate:startDate18];
    v628 = [NSNumber numberWithDouble:?];
    v629 = [MOMetric binForNumber:v628 bins:v1146];
    metrics106 = [(MOMetric *)selfCopy metrics];
    [metrics106 setObject:v629 forKeyedSubscript:v626];

    endDate61 = [v603 endDate];
    [(NSDate *)v1145 timeIntervalSinceDate:endDate61];
    v631 = [NSNumber numberWithDouble:?];
    v632 = [MOMetric binForNumber:v631 bins:v1146];
    metrics107 = [(MOMetric *)selfCopy metrics];
    [metrics107 setObject:v632 forKeyedSubscript:objb];

    v602 = v1165;
    v601 = v1188;
    v608 = v1176;
LABEL_237:

    goto LABEL_238;
  }

  v635 = v580;
  v636 = v581;
  v634 = 0.0;
  v602 = v596;
LABEL_242:
  if ([v602 count])
  {
    v637 = [*(v636 + 1520) numberWithDouble:{1.0 - v634 / objc_msgSend(v602, "count")}];
    metrics108 = [(MOMetric *)v635 metrics];
    [metrics108 setObject:v637 forKeyedSubscript:@"Proactive_PercentageOfTravelEventsNoLOI"];
  }

  if ([v1203 count])
  {
    v639 = [MOPromptMetrics meanOf:v1203];
    metrics109 = [(MOMetric *)v635 metrics];
    [metrics109 setObject:v639 forKeyedSubscript:@"Proactive_TravelAverageLatency"];

    [v1203 removeAllObjects];
  }

  if ([v1147 count])
  {
    v641 = [MOPromptMetrics meanOf:v1147];
    metrics110 = [(MOMetric *)v635 metrics];
    [metrics110 setObject:v641 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTravelEvents"];

    v643 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics111 = [(MOMetric *)v635 metrics];
    [metrics111 setObject:v643 forKeyedSubscript:@"Proactive_MinDeltaBetweenTravelEvents"];

    v645 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics112 = [(MOMetric *)v635 metrics];
    [metrics112 setObject:v645 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTravelEvents"];

    v647 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics113 = [(MOMetric *)v635 metrics];
    [metrics113 setObject:v647 forKeyedSubscript:@"Proactive_SDDeltaBetweenTravelEvents"];
  }

  v649 = [v602 count];
  v650 = *(v636 + 1520);
  if (v649)
  {
    firstObject6 = [v602 firstObject];
    endDate62 = [firstObject6 endDate];
    [endDate62 timeIntervalSinceDate:v635->_startDate];
    v653 = [v650 numberWithDouble:?];
    v654 = v1147;
    [v1147 addObject:v653];

    v655 = *(v636 + 1520);
    v656 = v635->_endDate;
    lastObject6 = [v602 lastObject];
    endDate63 = [lastObject6 endDate];
    [(NSDate *)v656 timeIntervalSinceDate:endDate63];
    v659 = [v655 numberWithDouble:?];
    [v1147 addObject:v659];

    v660 = [MOPromptMetrics meanOf:v1147];
    metrics114 = [(MOMetric *)v635 metrics];
    [metrics114 setObject:v660 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded"];

    v662 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics115 = [(MOMetric *)v635 metrics];
    [metrics115 setObject:v662 forKeyedSubscript:@"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded"];

    v664 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics116 = [(MOMetric *)v635 metrics];
    [metrics116 setObject:v664 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded"];

    metrics121 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics117 = [(MOMetric *)v635 metrics];
    [metrics117 setObject:metrics121 forKeyedSubscript:@"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded"];

    v668 = v635;
    v669 = v636;
  }

  else
  {
    [(NSDate *)v635->_endDate timeIntervalSinceDate:v635->_startDate];
    v670 = [v650 numberWithDouble:?];
    metrics118 = [(MOMetric *)v635 metrics];
    [metrics118 setObject:v670 forKeyedSubscript:@"Proactive_MeanDeltaBetweenTravelEventsBoundariesIncluded"];

    v672 = *(v636 + 1520);
    [(NSDate *)v635->_endDate timeIntervalSinceDate:v635->_startDate];
    v673 = [v672 numberWithDouble:?];
    metrics119 = [(MOMetric *)v635 metrics];
    [metrics119 setObject:v673 forKeyedSubscript:@"Proactive_MinDeltaBetweenTravelEventsBoundariesIncluded"];

    v675 = *(v636 + 1520);
    [(NSDate *)v635->_endDate timeIntervalSinceDate:v635->_startDate];
    v676 = [v675 numberWithDouble:?];
    metrics120 = [(MOMetric *)v635 metrics];
    [metrics120 setObject:v676 forKeyedSubscript:@"Proactive_MaxDeltaBetweenTravelEventsBoundariesIncluded"];

    metrics121 = [(MOMetric *)v635 metrics];
    [metrics121 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenTravelEventsBoundariesIncluded"];
    v668 = v635;
    v669 = v636;
    v654 = v1147;
  }

  [v654 removeAllObjects];
  v678 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v679 = [NSPredicate predicateWithFormat:@"%K == %i", v678, 3];
  v1233[0] = v679;
  v680 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v681 = [NSPredicate predicateWithFormat:@"%K == %i", v680, 9];
  v1233[1] = v681;
  v682 = [NSArray arrayWithObjects:v1233 count:2];
  v683 = [NSCompoundPredicate andPredicateWithSubpredicates:v682];

  v1112 = v683;
  v684 = [v1142 filteredArrayUsingPredicate:v683];
  v685 = [*(v669 + 1520) numberWithUnsignedInteger:{objc_msgSend(v684, "count")}];
  metrics122 = [(MOMetric *)v668 metrics];
  [metrics122 setObject:v685 forKeyedSubscript:@"Proactive_NumSharedWithYouEvents"];

  objc = v684;
  if ([v684 count])
  {
    v687 = 0;
    v688 = 0;
    v689 = 0;
    v690 = v684;
    while (1)
    {
      v691 = [v690 objectAtIndexedSubscript:v687];
      v692 = [NSDateInterval alloc];
      startDate19 = [v691 startDate];
      endDate64 = [v691 endDate];
      v695 = [v692 initWithStartDate:startDate19 endDate:endDate64];

      v696 = [(MOPromptMetrics *)selfCopy doesInterval:v695 overlapWithAnyIntervalFromArray:v1157];
      creationDate19 = [v691 creationDate];
      if (creationDate19)
      {
        endDate70 = creationDate19;
        startDate20 = [v691 startDate];
        if (!startDate20)
        {
          goto LABEL_264;
        }

        v700 = startDate20;
        endDate65 = [v691 endDate];

        if (endDate65)
        {
          break;
        }
      }

LABEL_265:
      v688 += v696;

      if ([v690 count] <= ++v687)
      {
        v722 = v688;
        v723 = selfCopy;
        v724 = 0x100335000;
        goto LABEL_269;
      }
    }

    if (v687)
    {
      v702 = [v690 objectAtIndexedSubscript:v687 - 1];
      endDate66 = [v702 endDate];

      if (endDate66)
      {
        endDate67 = [v691 endDate];
        v705 = [v690 objectAtIndexedSubscript:v687 - 1];
        endDate68 = [v705 endDate];
        [endDate67 timeIntervalSinceDate:endDate68];
        v707 = [NSNumber numberWithDouble:?];
        [v1147 addObject:v707];

        v690 = objc;
      }
    }

    creationDate20 = [v691 creationDate];
    endDate69 = [v691 endDate];
    [creationDate20 timeIntervalSinceDate:endDate69];
    v711 = v710;

    v712 = [NSNumber numberWithDouble:v711];
    [v1203 addObject:v712];

    if (v689)
    {
      v713 = v689 - 1;
      if ((v689 - 1) > 3)
      {
        ++v689;
        goto LABEL_265;
      }

      v1177 = v696;
      v714 = *(&off_1003404B0 + v713);
      v1150 = *(&off_1003404D0 + v713);
      v1189 = v689 + 1;
    }

    else
    {
      v1177 = v696;
      v1189 = 1;
      v714 = @"Proactive_HourIDSharedWithYouEvent_Start_1";
      v1150 = @"Proactive_HourIDSharedWithYouEvent_End_1";
    }

    startDate21 = [v691 startDate];
    [(NSDate *)v1145 timeIntervalSinceDate:startDate21];
    v716 = [NSNumber numberWithDouble:?];
    v717 = [MOMetric binForNumber:v716 bins:v1146];
    metrics123 = [(MOMetric *)selfCopy metrics];
    [metrics123 setObject:v717 forKeyedSubscript:v714];

    endDate70 = [v691 endDate];
    [(NSDate *)v1145 timeIntervalSinceDate:endDate70];
    v719 = [NSNumber numberWithDouble:?];
    v720 = [MOMetric binForNumber:v719 bins:v1146];
    metrics124 = [(MOMetric *)selfCopy metrics];
    [metrics124 setObject:v720 forKeyedSubscript:v1150];

    v690 = objc;
    v689 = v1189;
    v696 = v1177;
LABEL_264:

    goto LABEL_265;
  }

  v723 = v668;
  v724 = v669;
  v722 = 0.0;
  v690 = v684;
LABEL_269:
  if ([v690 count])
  {
    v725 = [*(v724 + 1520) numberWithDouble:{1.0 - v722 / objc_msgSend(v690, "count")}];
    metrics125 = [(MOMetric *)v723 metrics];
    [metrics125 setObject:v725 forKeyedSubscript:@"Proactive_PercentageOfSharedWithYouEventsNoLOI"];
  }

  if ([v1203 count])
  {
    v727 = [MOPromptMetrics meanOf:v1203];
    metrics126 = [(MOMetric *)v723 metrics];
    [metrics126 setObject:v727 forKeyedSubscript:@"Proactive_SharedWithYouAverageLatency"];

    [v1203 removeAllObjects];
  }

  if ([v1147 count])
  {
    v729 = [MOPromptMetrics meanOf:v1147];
    metrics127 = [(MOMetric *)v723 metrics];
    [metrics127 setObject:v729 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSharedWithYouEvents"];

    v731 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics128 = [(MOMetric *)v723 metrics];
    [metrics128 setObject:v731 forKeyedSubscript:@"Proactive_MinDeltaBetweenSharedWithYouEvents"];

    v733 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics129 = [(MOMetric *)v723 metrics];
    [metrics129 setObject:v733 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSharedWithYouEvents"];

    v735 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics130 = [(MOMetric *)v723 metrics];
    [metrics130 setObject:v735 forKeyedSubscript:@"Proactive_SDDeltaBetweenSharedWithYouEvents"];
  }

  v737 = [v690 count];
  v738 = *(v724 + 1520);
  if (v737)
  {
    firstObject7 = [v690 firstObject];
    endDate71 = [firstObject7 endDate];
    [endDate71 timeIntervalSinceDate:v723->_startDate];
    v741 = [v738 numberWithDouble:?];
    v742 = v1147;
    [v1147 addObject:v741];

    v743 = *(v724 + 1520);
    v744 = v723->_endDate;
    lastObject7 = [v690 lastObject];
    endDate72 = [lastObject7 endDate];
    [(NSDate *)v744 timeIntervalSinceDate:endDate72];
    v747 = [v743 numberWithDouble:?];
    [v1147 addObject:v747];

    v748 = [MOPromptMetrics meanOf:v1147];
    metrics131 = [(MOMetric *)v723 metrics];
    [metrics131 setObject:v748 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v750 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics132 = [(MOMetric *)v723 metrics];
    [metrics132 setObject:v750 forKeyedSubscript:@"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v752 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics133 = [(MOMetric *)v723 metrics];
    [metrics133 setObject:v752 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    metrics138 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics134 = [(MOMetric *)v723 metrics];
    [metrics134 setObject:metrics138 forKeyedSubscript:@"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v756 = v723;
    v757 = v724;
  }

  else
  {
    [(NSDate *)v723->_endDate timeIntervalSinceDate:v723->_startDate];
    v758 = [v738 numberWithDouble:?];
    metrics135 = [(MOMetric *)v723 metrics];
    [metrics135 setObject:v758 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v760 = *(v724 + 1520);
    [(NSDate *)v723->_endDate timeIntervalSinceDate:v723->_startDate];
    v761 = [v760 numberWithDouble:?];
    metrics136 = [(MOMetric *)v723 metrics];
    [metrics136 setObject:v761 forKeyedSubscript:@"Proactive_MinDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    v763 = *(v724 + 1520);
    [(NSDate *)v723->_endDate timeIntervalSinceDate:v723->_startDate];
    v764 = [v763 numberWithDouble:?];
    metrics137 = [(MOMetric *)v723 metrics];
    [metrics137 setObject:v764 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSharedWithYouEventsBoundariesIncluded"];

    metrics138 = [(MOMetric *)v723 metrics];
    [metrics138 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenSharedWithYouEventsBoundariesIncluded"];
    v756 = v723;
    v757 = v724;
    v742 = v1147;
  }

  [v742 removeAllObjects];
  v766 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v767 = [NSPredicate predicateWithFormat:@"%K == %i", v766, 3];
  v1232[0] = v767;
  v768 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v769 = [NSPredicate predicateWithFormat:@"%K == %i", v768, 10];
  v1232[1] = v769;
  v770 = [NSArray arrayWithObjects:v1232 count:2];
  v771 = [NSCompoundPredicate andPredicateWithSubpredicates:v770];

  v1111 = v771;
  v772 = [v1142 filteredArrayUsingPredicate:v771];
  v773 = [*(v757 + 1520) numberWithUnsignedInteger:{objc_msgSend(v772, "count")}];
  metrics139 = [(MOMetric *)v756 metrics];
  [metrics139 setObject:v773 forKeyedSubscript:@"Proactive_NumSignificantContactEvents"];

  v1151 = v772;
  if ([v772 count])
  {
    v775 = 0;
    v776 = 0;
    v777 = 0;
    v778 = v772;
    while (1)
    {
      v779 = [v778 objectAtIndexedSubscript:v775];
      v780 = [NSDateInterval alloc];
      startDate22 = [v779 startDate];
      endDate73 = [v779 endDate];
      v783 = [v780 initWithStartDate:startDate22 endDate:endDate73];

      v784 = [(MOPromptMetrics *)selfCopy doesInterval:v783 overlapWithAnyIntervalFromArray:v1157];
      creationDate21 = [v779 creationDate];
      if (creationDate21)
      {
        endDate79 = creationDate21;
        startDate23 = [v779 startDate];
        if (!startDate23)
        {
          goto LABEL_291;
        }

        v788 = startDate23;
        endDate74 = [v779 endDate];

        if (endDate74)
        {
          break;
        }
      }

LABEL_292:
      v776 += v784;

      if ([v778 count] <= ++v775)
      {
        v810 = v776;
        v811 = selfCopy;
        v812 = 0x100335000;
        goto LABEL_296;
      }
    }

    if (v775)
    {
      v790 = [v778 objectAtIndexedSubscript:v775 - 1];
      endDate75 = [v790 endDate];

      if (endDate75)
      {
        endDate76 = [v779 endDate];
        v793 = [v778 objectAtIndexedSubscript:v775 - 1];
        endDate77 = [v793 endDate];
        [endDate76 timeIntervalSinceDate:endDate77];
        v795 = [NSNumber numberWithDouble:?];
        [v1147 addObject:v795];

        v778 = v1151;
      }
    }

    creationDate22 = [v779 creationDate];
    endDate78 = [v779 endDate];
    [creationDate22 timeIntervalSinceDate:endDate78];
    v799 = v798;

    v800 = [NSNumber numberWithDouble:v799];
    [v1203 addObject:v800];

    if (v777)
    {
      v801 = v777 - 1;
      if ((v777 - 1) > 3)
      {
        ++v777;
        goto LABEL_292;
      }

      v1178 = v784;
      v802 = *(&off_1003404F0 + v801);
      v1136 = *(&off_100340510 + v801);
      v1190 = v777 + 1;
    }

    else
    {
      v1178 = v784;
      v1190 = 1;
      v802 = @"Proactive_HourIDSignificantContactEvent_Start_1";
      v1136 = @"Proactive_HourIDSignificantContactEvent_End_1";
    }

    startDate24 = [v779 startDate];
    [(NSDate *)v1145 timeIntervalSinceDate:startDate24];
    v804 = [NSNumber numberWithDouble:?];
    v805 = [MOMetric binForNumber:v804 bins:v1146];
    metrics140 = [(MOMetric *)selfCopy metrics];
    [metrics140 setObject:v805 forKeyedSubscript:v802];

    endDate79 = [v779 endDate];
    [(NSDate *)v1145 timeIntervalSinceDate:endDate79];
    v807 = [NSNumber numberWithDouble:?];
    v808 = [MOMetric binForNumber:v807 bins:v1146];
    metrics141 = [(MOMetric *)selfCopy metrics];
    [metrics141 setObject:v808 forKeyedSubscript:v1136];

    v778 = v1151;
    v777 = v1190;
    v784 = v1178;
LABEL_291:

    goto LABEL_292;
  }

  v811 = v756;
  v812 = v757;
  v810 = 0.0;
  v778 = v772;
LABEL_296:
  if ([v778 count])
  {
    v813 = [*(v812 + 1520) numberWithDouble:{1.0 - v810 / objc_msgSend(v778, "count")}];
    metrics142 = [(MOMetric *)v811 metrics];
    [metrics142 setObject:v813 forKeyedSubscript:@"Proactive_PercentageOfSignificantContactEventsNoLOI"];
  }

  if ([v1203 count])
  {
    v815 = [MOPromptMetrics meanOf:v1203];
    metrics143 = [(MOMetric *)v811 metrics];
    [metrics143 setObject:v815 forKeyedSubscript:@"Proactive_SignificantContactAverageLatency"];

    [v1203 removeAllObjects];
  }

  if ([v1147 count])
  {
    v817 = [MOPromptMetrics meanOf:v1147];
    metrics144 = [(MOMetric *)v811 metrics];
    [metrics144 setObject:v817 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSignificantContactEvents"];

    v819 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics145 = [(MOMetric *)v811 metrics];
    [metrics145 setObject:v819 forKeyedSubscript:@"Proactive_MinDeltaBetweenSignificantContactEvents"];

    v821 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics146 = [(MOMetric *)v811 metrics];
    [metrics146 setObject:v821 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSignificantContactEvents"];

    v823 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics147 = [(MOMetric *)v811 metrics];
    [metrics147 setObject:v823 forKeyedSubscript:@"Proactive_SDDeltaBetweenSignificantContactEvents"];
  }

  v825 = [v778 count];
  v826 = *(v812 + 1520);
  if (v825)
  {
    firstObject8 = [v778 firstObject];
    endDate80 = [firstObject8 endDate];
    [endDate80 timeIntervalSinceDate:v811->_startDate];
    v829 = [v826 numberWithDouble:?];
    v830 = v1147;
    [v1147 addObject:v829];

    v831 = *(v812 + 1520);
    v832 = v811->_endDate;
    lastObject8 = [v778 lastObject];
    endDate81 = [lastObject8 endDate];
    [(NSDate *)v832 timeIntervalSinceDate:endDate81];
    v835 = [v831 numberWithDouble:?];
    [v1147 addObject:v835];

    v836 = [MOPromptMetrics meanOf:v1147];
    metrics148 = [(MOMetric *)v811 metrics];
    [metrics148 setObject:v836 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v838 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics149 = [(MOMetric *)v811 metrics];
    [metrics149 setObject:v838 forKeyedSubscript:@"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v840 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics150 = [(MOMetric *)v811 metrics];
    [metrics150 setObject:v840 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    metrics155 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics151 = [(MOMetric *)v811 metrics];
    [metrics151 setObject:metrics155 forKeyedSubscript:@"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v844 = v811;
    v845 = v812;
  }

  else
  {
    [(NSDate *)v811->_endDate timeIntervalSinceDate:v811->_startDate];
    v846 = [v826 numberWithDouble:?];
    metrics152 = [(MOMetric *)v811 metrics];
    [metrics152 setObject:v846 forKeyedSubscript:@"Proactive_MeanDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v848 = *(v812 + 1520);
    [(NSDate *)v811->_endDate timeIntervalSinceDate:v811->_startDate];
    v849 = [v848 numberWithDouble:?];
    metrics153 = [(MOMetric *)v811 metrics];
    [metrics153 setObject:v849 forKeyedSubscript:@"Proactive_MinDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    v851 = *(v812 + 1520);
    [(NSDate *)v811->_endDate timeIntervalSinceDate:v811->_startDate];
    v852 = [v851 numberWithDouble:?];
    metrics154 = [(MOMetric *)v811 metrics];
    [metrics154 setObject:v852 forKeyedSubscript:@"Proactive_MaxDeltaBetweenSignificantContactEventsBoundariesIncluded"];

    metrics155 = [(MOMetric *)v811 metrics];
    [metrics155 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenSignificantContactEventsBoundariesIncluded"];
    v844 = v811;
    v845 = v812;
    v830 = v1147;
  }

  [v830 removeAllObjects];
  v854 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v855 = [NSPredicate predicateWithFormat:@"%K == %i", v854, 3];
  v1231[0] = v855;
  v856 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v857 = [NSPredicate predicateWithFormat:@"%K == %i", v856, 11];
  v1231[1] = v857;
  v858 = [NSArray arrayWithObjects:v1231 count:2];
  v859 = [NSCompoundPredicate andPredicateWithSubpredicates:v858];

  v1110 = v859;
  v860 = [v1142 filteredArrayUsingPredicate:v859];
  v861 = [*(v845 + 1520) numberWithUnsignedInteger:{objc_msgSend(v860, "count")}];
  metrics156 = [(MOMetric *)v844 metrics];
  [metrics156 setObject:v861 forKeyedSubscript:@"Proactive_NumStructuredEvents"];

  v1137 = v860;
  if ([v860 count])
  {
    v863 = 0;
    v864 = 0;
    v865 = 0;
    v866 = v860;
    while (1)
    {
      v867 = [v866 objectAtIndexedSubscript:v863];
      v868 = [NSDateInterval alloc];
      startDate25 = [v867 startDate];
      endDate82 = [v867 endDate];
      v871 = [v868 initWithStartDate:startDate25 endDate:endDate82];

      v872 = [(MOPromptMetrics *)selfCopy doesInterval:v871 overlapWithAnyIntervalFromArray:v1157];
      creationDate23 = [v867 creationDate];
      if (creationDate23)
      {
        endDate88 = creationDate23;
        startDate26 = [v867 startDate];
        if (!startDate26)
        {
          goto LABEL_318;
        }

        v876 = startDate26;
        endDate83 = [v867 endDate];

        if (endDate83)
        {
          break;
        }
      }

LABEL_319:
      v864 += v872;

      if ([v866 count] <= ++v863)
      {
        v898 = v864;
        v899 = selfCopy;
        v900 = 0x100335000;
        goto LABEL_323;
      }
    }

    if (v863)
    {
      v878 = [v866 objectAtIndexedSubscript:v863 - 1];
      endDate84 = [v878 endDate];

      if (endDate84)
      {
        endDate85 = [v867 endDate];
        v881 = [v866 objectAtIndexedSubscript:v863 - 1];
        endDate86 = [v881 endDate];
        [endDate85 timeIntervalSinceDate:endDate86];
        v883 = [NSNumber numberWithDouble:?];
        [v1147 addObject:v883];

        v866 = v1137;
      }
    }

    creationDate24 = [v867 creationDate];
    endDate87 = [v867 endDate];
    [creationDate24 timeIntervalSinceDate:endDate87];
    v887 = v886;

    v888 = [NSNumber numberWithDouble:v887];
    [v1203 addObject:v888];

    if (v865)
    {
      v889 = v865 - 1;
      if ((v865 - 1) > 3)
      {
        ++v865;
        goto LABEL_319;
      }

      v1179 = v872;
      v890 = *(&off_100340530 + v889);
      v1134 = *(&off_100340550 + v889);
      v1191 = v865 + 1;
    }

    else
    {
      v1179 = v872;
      v1191 = 1;
      v890 = @"Proactive_HourIDStructuredEvent_Start_1";
      v1134 = @"Proactive_HourIDStructuredEvent_End_1";
    }

    startDate27 = [v867 startDate];
    [(NSDate *)v1145 timeIntervalSinceDate:startDate27];
    v892 = [NSNumber numberWithDouble:?];
    v893 = [MOMetric binForNumber:v892 bins:v1146];
    metrics157 = [(MOMetric *)selfCopy metrics];
    [metrics157 setObject:v893 forKeyedSubscript:v890];

    endDate88 = [v867 endDate];
    [(NSDate *)v1145 timeIntervalSinceDate:endDate88];
    v895 = [NSNumber numberWithDouble:?];
    v896 = [MOMetric binForNumber:v895 bins:v1146];
    metrics158 = [(MOMetric *)selfCopy metrics];
    [metrics158 setObject:v896 forKeyedSubscript:v1134];

    v866 = v1137;
    v865 = v1191;
    v872 = v1179;
LABEL_318:

    goto LABEL_319;
  }

  v899 = v844;
  v900 = v845;
  v898 = 0.0;
  v866 = v860;
LABEL_323:
  if ([v866 count])
  {
    v901 = [*(v900 + 1520) numberWithDouble:{1.0 - v898 / objc_msgSend(v866, "count")}];
    metrics159 = [(MOMetric *)v899 metrics];
    [metrics159 setObject:v901 forKeyedSubscript:@"Proactive_PercentageOfStructuredEventsNoLOI"];
  }

  if ([v1203 count])
  {
    v903 = [MOPromptMetrics meanOf:v1203];
    metrics160 = [(MOMetric *)v899 metrics];
    [metrics160 setObject:v903 forKeyedSubscript:@"Proactive_StructuredEventsAverageLatency"];

    [v1203 removeAllObjects];
  }

  if ([v1147 count])
  {
    v905 = [MOPromptMetrics meanOf:v1147];
    metrics161 = [(MOMetric *)v899 metrics];
    [metrics161 setObject:v905 forKeyedSubscript:@"Proactive_MeanDeltaBetweenStructuredEvents"];

    v907 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics162 = [(MOMetric *)v899 metrics];
    [metrics162 setObject:v907 forKeyedSubscript:@"Proactive_MinDeltaBetweenStructuredEvents"];

    v909 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics163 = [(MOMetric *)v899 metrics];
    [metrics163 setObject:v909 forKeyedSubscript:@"Proactive_MaxDeltaBetweenStructuredEvents"];

    v911 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics164 = [(MOMetric *)v899 metrics];
    [metrics164 setObject:v911 forKeyedSubscript:@"Proactive_SDDeltaBetweenStructuredEvents"];
  }

  v913 = [v866 count];
  v914 = *(v900 + 1520);
  if (v913)
  {
    firstObject9 = [v866 firstObject];
    endDate89 = [firstObject9 endDate];
    [endDate89 timeIntervalSinceDate:v899->_startDate];
    v917 = [v914 numberWithDouble:?];
    v918 = v1147;
    [v1147 addObject:v917];

    v919 = *(v900 + 1520);
    v920 = v899->_endDate;
    lastObject9 = [v866 lastObject];
    endDate90 = [lastObject9 endDate];
    [(NSDate *)v920 timeIntervalSinceDate:endDate90];
    v923 = [v919 numberWithDouble:?];
    [v1147 addObject:v923];

    v924 = [MOPromptMetrics meanOf:v1147];
    metrics165 = [(MOMetric *)v899 metrics];
    [metrics165 setObject:v924 forKeyedSubscript:@"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded"];

    v926 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics166 = [(MOMetric *)v899 metrics];
    [metrics166 setObject:v926 forKeyedSubscript:@"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded"];

    v928 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics167 = [(MOMetric *)v899 metrics];
    [metrics167 setObject:v928 forKeyedSubscript:@"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded"];

    metrics172 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics168 = [(MOMetric *)v899 metrics];
    [metrics168 setObject:metrics172 forKeyedSubscript:@"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded"];

    v932 = v899;
    v933 = v900;
  }

  else
  {
    [(NSDate *)v899->_endDate timeIntervalSinceDate:v899->_startDate];
    v934 = [v914 numberWithDouble:?];
    metrics169 = [(MOMetric *)v899 metrics];
    [metrics169 setObject:v934 forKeyedSubscript:@"Proactive_MeanDeltaBetweenStructuredEventsBoundariesIncluded"];

    v936 = *(v900 + 1520);
    [(NSDate *)v899->_endDate timeIntervalSinceDate:v899->_startDate];
    v937 = [v936 numberWithDouble:?];
    metrics170 = [(MOMetric *)v899 metrics];
    [metrics170 setObject:v937 forKeyedSubscript:@"Proactive_MinDeltaBetweenStructuredEventsBoundariesIncluded"];

    v939 = *(v900 + 1520);
    [(NSDate *)v899->_endDate timeIntervalSinceDate:v899->_startDate];
    v940 = [v939 numberWithDouble:?];
    metrics171 = [(MOMetric *)v899 metrics];
    [metrics171 setObject:v940 forKeyedSubscript:@"Proactive_MaxDeltaBetweenStructuredEventsBoundariesIncluded"];

    metrics172 = [(MOMetric *)v899 metrics];
    [metrics172 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenStructuredEventsBoundariesIncluded"];
    v932 = v899;
    v933 = v900;
    v918 = v1147;
  }

  [v918 removeAllObjects];
  v942 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v943 = [NSPredicate predicateWithFormat:@"%K == %i", v942, 3];
  v1230[0] = v943;
  v944 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v945 = [NSPredicate predicateWithFormat:@"%K == %i", v944, 4];
  v1230[1] = v945;
  v946 = [NSArray arrayWithObjects:v1230 count:2];
  v947 = [NSCompoundPredicate andPredicateWithSubpredicates:v946];

  v1109 = v947;
  v948 = [v1142 filteredArrayUsingPredicate:v947];
  v949 = [*(v933 + 1520) numberWithUnsignedInteger:{objc_msgSend(v948, "count")}];
  metrics173 = [(MOMetric *)v932 metrics];
  [metrics173 setObject:v949 forKeyedSubscript:@"Proactive_NumLeisureMediaEvents"];

  v1135 = v948;
  if ([v948 count])
  {
    v951 = 0;
    v952 = 0;
    v953 = 0;
    v954 = v948;
    while (1)
    {
      v955 = [v954 objectAtIndexedSubscript:v951];
      v956 = [NSDateInterval alloc];
      startDate28 = [v955 startDate];
      endDate91 = [v955 endDate];
      v959 = [v956 initWithStartDate:startDate28 endDate:endDate91];

      v960 = [(MOPromptMetrics *)selfCopy doesInterval:v959 overlapWithAnyIntervalFromArray:v1157];
      creationDate25 = [v955 creationDate];
      if (creationDate25)
      {
        endDate97 = creationDate25;
        startDate29 = [v955 startDate];
        if (!startDate29)
        {
          goto LABEL_345;
        }

        v964 = startDate29;
        endDate92 = [v955 endDate];

        if (endDate92)
        {
          break;
        }
      }

LABEL_346:
      v952 += v960;

      if ([v954 count] <= ++v951)
      {
        v986 = v952;
        v987 = selfCopy;
        v988 = 0x100335000;
        goto LABEL_350;
      }
    }

    if (v951)
    {
      v966 = [v954 objectAtIndexedSubscript:v951 - 1];
      endDate93 = [v966 endDate];

      if (endDate93)
      {
        endDate94 = [v955 endDate];
        v969 = [v954 objectAtIndexedSubscript:v951 - 1];
        endDate95 = [v969 endDate];
        [endDate94 timeIntervalSinceDate:endDate95];
        v971 = [NSNumber numberWithDouble:?];
        [v1147 addObject:v971];

        v954 = v1135;
      }
    }

    creationDate26 = [v955 creationDate];
    endDate96 = [v955 endDate];
    [creationDate26 timeIntervalSinceDate:endDate96];
    v975 = v974;

    v976 = [NSNumber numberWithDouble:v975];
    [v1203 addObject:v976];

    if (v953)
    {
      v977 = v953 - 1;
      if ((v953 - 1) > 3)
      {
        ++v953;
        goto LABEL_346;
      }

      v1180 = v960;
      v978 = *(&off_100340570 + v977);
      v1130 = *(&off_100340590 + v977);
      v1192 = v953 + 1;
    }

    else
    {
      v1180 = v960;
      v1192 = 1;
      v978 = @"Proactive_HourIDLeisureMediaEvent_Start_1";
      v1130 = @"Proactive_HourIDLeisureMediaEvent_End_1";
    }

    startDate30 = [v955 startDate];
    [(NSDate *)v1145 timeIntervalSinceDate:startDate30];
    v980 = [NSNumber numberWithDouble:?];
    v981 = [MOMetric binForNumber:v980 bins:v1146];
    metrics174 = [(MOMetric *)selfCopy metrics];
    [metrics174 setObject:v981 forKeyedSubscript:v978];

    endDate97 = [v955 endDate];
    [(NSDate *)v1145 timeIntervalSinceDate:endDate97];
    v983 = [NSNumber numberWithDouble:?];
    v984 = [MOMetric binForNumber:v983 bins:v1146];
    metrics175 = [(MOMetric *)selfCopy metrics];
    [metrics175 setObject:v984 forKeyedSubscript:v1130];

    v954 = v1135;
    v953 = v1192;
    v960 = v1180;
LABEL_345:

    goto LABEL_346;
  }

  v987 = v932;
  v988 = v933;
  v986 = 0.0;
  v954 = v948;
LABEL_350:
  if ([v954 count])
  {
    v989 = [*(v988 + 1520) numberWithDouble:{1.0 - v986 / objc_msgSend(v954, "count")}];
    metrics176 = [(MOMetric *)v987 metrics];
    [metrics176 setObject:v989 forKeyedSubscript:@"Proactive_PercentageOfLeisureMediaEventsNoLOI"];
  }

  if ([v1203 count])
  {
    v991 = [MOPromptMetrics meanOf:v1203];
    metrics177 = [(MOMetric *)v987 metrics];
    [metrics177 setObject:v991 forKeyedSubscript:@"Proactive_LeisureMediaEventsAverageLatency"];

    [v1203 removeAllObjects];
  }

  if ([v1147 count])
  {
    v993 = [MOPromptMetrics meanOf:v1147];
    metrics178 = [(MOMetric *)v987 metrics];
    [metrics178 setObject:v993 forKeyedSubscript:@"Proactive_MeanDeltaBetweenLeisureMediaEvents"];

    v995 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics179 = [(MOMetric *)v987 metrics];
    [metrics179 setObject:v995 forKeyedSubscript:@"Proactive_MinDeltaBetweenLeisureMediaEvents"];

    v997 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics180 = [(MOMetric *)v987 metrics];
    [metrics180 setObject:v997 forKeyedSubscript:@"Proactive_MaxDeltaBetweenLeisureMediaEvents"];

    v999 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics181 = [(MOMetric *)v987 metrics];
    [metrics181 setObject:v999 forKeyedSubscript:@"Proactive_SDDeltaBetweenLeisureMediaEvents"];
  }

  v1001 = [v954 count];
  v1002 = *(v988 + 1520);
  if (v1001)
  {
    firstObject10 = [v954 firstObject];
    endDate98 = [firstObject10 endDate];
    [endDate98 timeIntervalSinceDate:v987->_startDate];
    v1005 = [v1002 numberWithDouble:?];
    v1006 = v1147;
    [v1147 addObject:v1005];

    v1007 = *(v988 + 1520);
    v1008 = v987->_endDate;
    lastObject10 = [v954 lastObject];
    endDate99 = [lastObject10 endDate];
    [(NSDate *)v1008 timeIntervalSinceDate:endDate99];
    v1011 = [v1007 numberWithDouble:?];
    [v1147 addObject:v1011];

    v1012 = [MOPromptMetrics meanOf:v1147];
    metrics182 = [(MOMetric *)v987 metrics];
    [metrics182 setObject:v1012 forKeyedSubscript:@"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1014 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics183 = [(MOMetric *)v987 metrics];
    [metrics183 setObject:v1014 forKeyedSubscript:@"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1016 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics184 = [(MOMetric *)v987 metrics];
    [metrics184 setObject:v1016 forKeyedSubscript:@"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    metrics189 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics185 = [(MOMetric *)v987 metrics];
    [metrics185 setObject:metrics189 forKeyedSubscript:@"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1020 = v987;
    v1021 = v988;
  }

  else
  {
    [(NSDate *)v987->_endDate timeIntervalSinceDate:v987->_startDate];
    v1022 = [v1002 numberWithDouble:?];
    metrics186 = [(MOMetric *)v987 metrics];
    [metrics186 setObject:v1022 forKeyedSubscript:@"Proactive_MeanDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1024 = *(v988 + 1520);
    [(NSDate *)v987->_endDate timeIntervalSinceDate:v987->_startDate];
    v1025 = [v1024 numberWithDouble:?];
    metrics187 = [(MOMetric *)v987 metrics];
    [metrics187 setObject:v1025 forKeyedSubscript:@"Proactive_MinDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    v1027 = *(v988 + 1520);
    [(NSDate *)v987->_endDate timeIntervalSinceDate:v987->_startDate];
    v1028 = [v1027 numberWithDouble:?];
    metrics188 = [(MOMetric *)v987 metrics];
    [metrics188 setObject:v1028 forKeyedSubscript:@"Proactive_MaxDeltaBetweenLeisureMediaEventsBoundariesIncluded"];

    metrics189 = [(MOMetric *)v987 metrics];
    [metrics189 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenLeisureMediaEventsBoundariesIncluded"];
    v1020 = v987;
    v1021 = v988;
    v1006 = v1147;
  }

  [v1006 removeAllObjects];
  v1030 = [v1143 objectForKeyedSubscript:@"strProvider"];
  v1031 = [NSPredicate predicateWithFormat:@"%K == %i", v1030, 3];
  v1229[0] = v1031;
  v1032 = [v1143 objectForKeyedSubscript:@"strCategory"];
  v1033 = [NSPredicate predicateWithFormat:@"%K == %i", v1032, 12];
  v1229[1] = v1033;
  v1034 = [NSArray arrayWithObjects:v1229 count:2];
  v1035 = [NSCompoundPredicate andPredicateWithSubpredicates:v1034];

  v1036 = [v1142 filteredArrayUsingPredicate:v1035];
  v1037 = [*(v1021 + 1520) numberWithUnsignedInteger:{objc_msgSend(v1036, "count")}];
  metrics190 = [(MOMetric *)v1020 metrics];
  [metrics190 setObject:v1037 forKeyedSubscript:@"Proactive_NumNLEvents"];

  v1193 = v1036;
  v1039 = v1020;
  if ([v1036 count])
  {
    v1131 = v1035;
    v1040 = 0;
    v1041 = 0;
    v1181 = 0;
    v1042 = v1036;
    while (1)
    {
      v1043 = [v1042 objectAtIndexedSubscript:v1040];
      v1044 = [NSDateInterval alloc];
      startDate31 = [v1043 startDate];
      endDate100 = [v1043 endDate];
      v1047 = [v1044 initWithStartDate:startDate31 endDate:endDate100];

      v1048 = [(MOPromptMetrics *)v1039 doesInterval:v1047 overlapWithAnyIntervalFromArray:v1157];
      creationDate27 = [v1043 creationDate];
      if (creationDate27)
      {
        endDate106 = creationDate27;
        startDate32 = [v1043 startDate];
        if (!startDate32)
        {
          goto LABEL_372;
        }

        v1052 = startDate32;
        endDate101 = [v1043 endDate];

        if (endDate101)
        {
          break;
        }
      }

LABEL_373:
      v1041 += v1048;

      if ([v1042 count] <= ++v1040)
      {
        v1074 = v1041;
        v1035 = v1131;
        goto LABEL_377;
      }
    }

    if (v1040)
    {
      v1054 = [v1193 objectAtIndexedSubscript:v1040 - 1];
      endDate102 = [v1054 endDate];

      if (endDate102)
      {
        endDate103 = [v1043 endDate];
        v1057 = [v1193 objectAtIndexedSubscript:v1040 - 1];
        endDate104 = [v1057 endDate];
        [endDate103 timeIntervalSinceDate:endDate104];
        v1059 = [NSNumber numberWithDouble:?];
        [v1147 addObject:v1059];
      }
    }

    creationDate28 = [v1043 creationDate];
    endDate105 = [v1043 endDate];
    [creationDate28 timeIntervalSinceDate:endDate105];
    v1063 = v1062;

    v1064 = [NSNumber numberWithDouble:v1063];
    [v1203 addObject:v1064];

    if (v1181)
    {
      v1065 = v1181 - 1;
      if ((v1181 - 1) > 3)
      {
        ++v1181;
        v1042 = v1193;
        goto LABEL_373;
      }

      v1141 = v1048;
      v1066 = *(&off_1003405B0 + v1065);
      v1140 = *(&off_1003405D0 + v1065);
      ++v1181;
    }

    else
    {
      v1141 = v1048;
      v1181 = 1;
      v1066 = @"Proactive_HourIDNLEvent_Start_1";
      v1140 = @"Proactive_HourIDNLEvent_End_1";
    }

    startDate33 = [v1043 startDate];
    [(NSDate *)v1145 timeIntervalSinceDate:startDate33];
    v1068 = [NSNumber numberWithDouble:?];
    v1069 = [MOMetric binForNumber:v1068 bins:v1146];
    metrics191 = [(MOMetric *)selfCopy metrics];
    [metrics191 setObject:v1069 forKeyedSubscript:v1066];

    endDate106 = [v1043 endDate];
    [(NSDate *)v1145 timeIntervalSinceDate:endDate106];
    v1071 = [NSNumber numberWithDouble:?];
    v1072 = [MOMetric binForNumber:v1071 bins:v1146];
    metrics192 = [(MOMetric *)selfCopy metrics];
    [metrics192 setObject:v1072 forKeyedSubscript:v1140];

    v1039 = selfCopy;
    v1042 = v1193;
    v1048 = v1141;
LABEL_372:

    goto LABEL_373;
  }

  v1074 = 0.0;
  v1042 = v1036;
LABEL_377:
  if ([v1042 count])
  {
    v1075 = +[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", 1.0 - v1074 / [v1042 count]);
    metrics193 = [(MOMetric *)v1039 metrics];
    [metrics193 setObject:v1075 forKeyedSubscript:@"Proactive_PercentageOfNLEventsNoLOI"];
  }

  if ([v1203 count])
  {
    v1077 = [MOPromptMetrics meanOf:v1203];
    metrics194 = [(MOMetric *)v1039 metrics];
    [metrics194 setObject:v1077 forKeyedSubscript:@"Proactive_NLEventsAverageLatency"];

    [v1203 removeAllObjects];
  }

  if ([v1147 count])
  {
    v1079 = [MOPromptMetrics meanOf:v1147];
    metrics195 = [(MOMetric *)v1039 metrics];
    [metrics195 setObject:v1079 forKeyedSubscript:@"Proactive_MeanDeltaBetweenNLEvents"];

    v1081 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics196 = [(MOMetric *)v1039 metrics];
    [metrics196 setObject:v1081 forKeyedSubscript:@"Proactive_MinDeltaBetweenNLEvents"];

    v1083 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics197 = [(MOMetric *)v1039 metrics];
    [metrics197 setObject:v1083 forKeyedSubscript:@"Proactive_MaxDeltaBetweenNLEvents"];

    v1085 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics198 = [(MOMetric *)v1039 metrics];
    [metrics198 setObject:v1085 forKeyedSubscript:@"Proactive_SDDeltaBetweenNLEvents"];
  }

  if ([v1193 count])
  {
    firstObject11 = [v1193 firstObject];
    endDate107 = [firstObject11 endDate];
    [endDate107 timeIntervalSinceDate:v1039->_startDate];
    v1089 = [NSNumber numberWithDouble:?];
    v1090 = v1147;
    [v1147 addObject:v1089];

    v1091 = v1039->_endDate;
    lastObject11 = [v1193 lastObject];
    endDate108 = [lastObject11 endDate];
    [(NSDate *)v1091 timeIntervalSinceDate:endDate108];
    v1094 = [NSNumber numberWithDouble:?];
    [v1147 addObject:v1094];

    v1095 = [MOPromptMetrics meanOf:v1147];
    metrics199 = [(MOMetric *)v1039 metrics];
    [metrics199 setObject:v1095 forKeyedSubscript:@"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded"];

    v1097 = [v1147 valueForKeyPath:@"@min.doubleValue"];
    metrics200 = [(MOMetric *)v1039 metrics];
    [metrics200 setObject:v1097 forKeyedSubscript:@"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded"];

    v1099 = [v1147 valueForKeyPath:@"@max.doubleValue"];
    metrics201 = [(MOMetric *)v1039 metrics];
    [metrics201 setObject:v1099 forKeyedSubscript:@"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded"];

    metrics206 = [MOPromptMetrics standardDeviationOf:v1147];
    metrics202 = [(MOMetric *)v1039 metrics];
    [metrics202 setObject:metrics206 forKeyedSubscript:@"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded"];
  }

  else
  {
    [(NSDate *)v1039->_endDate timeIntervalSinceDate:v1039->_startDate];
    v1103 = [NSNumber numberWithDouble:?];
    metrics203 = [(MOMetric *)v1039 metrics];
    [metrics203 setObject:v1103 forKeyedSubscript:@"Proactive_MeanDeltaBetweenNLEventsBoundariesIncluded"];

    [(NSDate *)v1039->_endDate timeIntervalSinceDate:v1039->_startDate];
    v1105 = [NSNumber numberWithDouble:?];
    metrics204 = [(MOMetric *)v1039 metrics];
    [metrics204 setObject:v1105 forKeyedSubscript:@"Proactive_MinDeltaBetweenNLEventsBoundariesIncluded"];

    [(NSDate *)v1039->_endDate timeIntervalSinceDate:v1039->_startDate];
    v1107 = [NSNumber numberWithDouble:?];
    metrics205 = [(MOMetric *)v1039 metrics];
    [metrics205 setObject:v1107 forKeyedSubscript:@"Proactive_MaxDeltaBetweenNLEventsBoundariesIncluded"];

    metrics206 = [(MOMetric *)v1039 metrics];
    [metrics206 setObject:&off_10036E7B0 forKeyedSubscript:@"Proactive_SDDeltaBetweenNLEventsBoundariesIncluded"];
    v1090 = v1147;
  }

  [v1090 removeAllObjects];
}

- (void)calculateAndSetMetricsForCorrelatedEvents:(id)events
{
  eventsCopy = events;
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundles"];

  metrics2 = [(MOMetric *)self metrics];
  [metrics2 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];

  metrics3 = [(MOMetric *)self metrics];
  [metrics3 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];

  metrics4 = [(MOMetric *)self metrics];
  [metrics4 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];

  metrics5 = [(MOMetric *)self metrics];
  [metrics5 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];

  metrics6 = [(MOMetric *)self metrics];
  [metrics6 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];

  metrics7 = [(MOMetric *)self metrics];
  [metrics7 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];

  metrics8 = [(MOMetric *)self metrics];
  [metrics8 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];

  metrics9 = [(MOMetric *)self metrics];
  [metrics9 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];

  metrics10 = [(MOMetric *)self metrics];
  [metrics10 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0"];

  metrics11 = [(MOMetric *)self metrics];
  [metrics11 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1"];

  metrics12 = [(MOMetric *)self metrics];
  [metrics12 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0"];

  metrics13 = [(MOMetric *)self metrics];
  [metrics13 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1"];

  metrics14 = [(MOMetric *)self metrics];
  [metrics14 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0"];

  metrics15 = [(MOMetric *)self metrics];
  [metrics15 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1"];

  metrics16 = [(MOMetric *)self metrics];
  [metrics16 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0"];

  selfCopy = self;
  metrics17 = [(MOMetric *)self metrics];
  [metrics17 setObject:&off_10036C1D8 forKeyedSubscript:@"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1"];

  if (eventsCopy && [eventsCopy count])
  {
    v79 = eventsCopy;
    v22 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventsCopy count]);
    metrics18 = [(MOMetric *)self metrics];
    [metrics18 setObject:v22 forKeyedSubscript:@"numPreBundles"];

    v24 = +[MOEventBundler propertyNameDictionary];
    v25 = [v24 objectForKeyedSubscript:@"strProvider"];
    v26 = [NSPredicate predicateWithFormat:@"%K == %i", v25, 1];
    v104[0] = v26;
    v27 = [v24 objectForKeyedSubscript:@"strCategory"];
    v28 = [NSPredicate predicateWithFormat:@"%K == %i", v27, 2];
    v104[1] = v28;
    v29 = [NSArray arrayWithObjects:v104 count:2];
    v78 = [NSCompoundPredicate andPredicateWithSubpredicates:v29];

    v30 = [v24 objectForKeyedSubscript:@"strProvider"];
    v31 = [NSPredicate predicateWithFormat:@"%K == %i", v30, 2];
    v103[0] = v31;
    v32 = [v24 objectForKeyedSubscript:@"strCategory"];
    v33 = [NSPredicate predicateWithFormat:@"%K == %i", v32, 5];
    v103[1] = v33;
    v34 = [NSArray arrayWithObjects:v103 count:2];
    v35 = [NSCompoundPredicate andPredicateWithSubpredicates:v34];

    v36 = [v24 objectForKeyedSubscript:@"strProvider"];
    v37 = [NSPredicate predicateWithFormat:@"%K == %i", v36, 4];
    v102[0] = v37;
    v38 = [v24 objectForKeyedSubscript:@"strCategory"];
    v39 = [NSPredicate predicateWithFormat:@"%K == %i", v38, 1];
    v102[1] = v39;
    v40 = [NSArray arrayWithObjects:v102 count:2];
    v41 = [NSCompoundPredicate andPredicateWithSubpredicates:v40];

    v77 = v24;
    v42 = [v24 objectForKeyedSubscript:@"strProvider"];
    v43 = [NSPredicate predicateWithFormat:@"%K == %i", v42, 3];
    v101 = v43;
    v44 = [NSArray arrayWithObjects:&v101 count:1];
    v45 = [NSCompoundPredicate andPredicateWithSubpredicates:v44];

    v99[0] = &off_10036C298;
    v99[1] = &off_10036C2B0;
    v100[0] = v78;
    v100[1] = v35;
    v75 = v41;
    v76 = v35;
    v99[2] = &off_10036C2C8;
    v99[3] = &off_10036C2E0;
    v100[2] = v41;
    v100[3] = v45;
    v74 = v45;
    v81 = [NSDictionary dictionaryWithObjects:v100 forKeys:v99 count:4];
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    obj = v79;
    v83 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
    v46 = 0;
    if (v83)
    {
      v80 = *v94;
      do
      {
        v47 = 0;
        do
        {
          v86 = v46;
          if (*v94 != v80)
          {
            objc_enumerationMutation(obj);
          }

          v85 = v47;
          v48 = [obj objectForKeyedSubscript:*(*(&v93 + 1) + 8 * v47)];
          v89 = 0u;
          v90 = 0u;
          v91 = 0u;
          v92 = 0u;
          v49 = v81;
          v50 = [v49 countByEnumeratingWithState:&v89 objects:v97 count:16];
          if (v50)
          {
            v51 = v50;
            v88 = 0;
            v87 = 0;
            v52 = 0;
            v53 = *v90;
            do
            {
              for (i = 0; i != v51; i = i + 1)
              {
                if (*v90 != v53)
                {
                  objc_enumerationMutation(v49);
                }

                v55 = *(*(&v89 + 1) + 8 * i);
                v56 = objc_autoreleasePoolPush();
                v57 = [v49 objectForKeyedSubscript:v55];
                v58 = [v48 filteredSetUsingPredicate:v57];
                v59 = v58;
                if (v58 && [v58 count])
                {
                  if ([v55 isEqual:&off_10036C298])
                  {
                    v52 = 1;
                  }

                  else if ([v55 isEqual:&off_10036C2B0])
                  {
                    LODWORD(v88) = 1;
                  }

                  else if ([v55 isEqual:&off_10036C2C8])
                  {
                    v87 = 1;
                  }

                  else
                  {
                    HIDWORD(v88) |= [v55 isEqual:&off_10036C2E0];
                  }
                }

                objc_autoreleasePoolPop(v56);
              }

              v51 = [v49 countByEnumeratingWithState:&v89 objects:v97 count:16];
            }

            while (v51);
          }

          else
          {
            v88 = 0;
            v87 = 0;
            v52 = 0;
          }

          v60 = v52 | v88 | v87;
          if ((v60 & 1) != 0 || (v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_0", (v88 & 0x100000000) != 0)) && (v62 = HIDWORD(v88) ^ 1, v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_0_proactiveEvent_1", ((v60 | HIDWORD(v88) ^ 1)) && (v63 = v87 ^ 1, v64 = v52 | v88 | v87 ^ 1, v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_0", ((v64 | HIDWORD(v88))) && (v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_0_routineEvent_1_proactiveEvent_1", ((v64 | v62)) && (v65 = v52 | v88 ^ 1, v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_0", ((v65 | v87 | HIDWORD(v88))) && (v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_0_proactiveEvent_1", ((v65 | v87 | v62)) && (v66 = v65 | v63, v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_0", ((v66 | HIDWORD(v88))) && (v61 = @"numPreBundlesWith_workoutEvent_0_storytellingEvent_1_routineEvent_1_proactiveEvent_1", ((v66 | v62)) && (v67 = v52 ^ 1 | v88, v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_0", ((v67 | v87 | HIDWORD(v88))) && (v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_0_proactiveEvent_1", ((v67 | v87 | v62)) && (v68 = v67 | v63, v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_0", ((v68 | HIDWORD(v88))) && (v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_0_routineEvent_1_proactiveEvent_1", ((v68 | v62)) && (v69 = v52 ^ 1 | v88 ^ 1, v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_0", ((v69 | v87 | HIDWORD(v88))) && (v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_0_proactiveEvent_1", ((v69 | v87 | v62)) && (v70 = v69 | v63, v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_0", ((v70 | HIDWORD(v88))) && (v61 = @"numPreBundlesWith_workoutEvent_1_storytellingEvent_1_routineEvent_1_proactiveEvent_1", ((v70 | v62)))
          {
            v46 = v86;
          }

          else
          {
            metrics19 = [(MOMetric *)selfCopy metrics];
            v46 = [metrics19 objectForKeyedSubscript:v61];

            v72 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v46 intValue] + 1);
            metrics20 = [(MOMetric *)selfCopy metrics];
            [metrics20 setObject:v72 forKeyedSubscript:v61];
          }

          v47 = v85 + 1;
        }

        while ((v85 + 1) != v83);
        v83 = [obj countByEnumeratingWithState:&v93 objects:v98 count:16];
      }

      while (v83);
    }

    eventsCopy = v79;
  }
}

- (void)calculateAndSetMetricsForSemanticallyBundledEvents:(id)events
{
  eventsCopy = events;
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:&off_10036C1D8 forKeyedSubscript:@"numBundles"];

  v5 = eventsCopy;
  if (eventsCopy)
  {
    v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [eventsCopy count]);
    metrics2 = [(MOMetric *)self metrics];
    [metrics2 setObject:v6 forKeyedSubscript:@"numBundles"];

    v5 = eventsCopy;
  }
}

- (void)getAndSetAgeGender
{
  if (objc_opt_class() && +[MOPlatformInfo isIHAEnabled])
  {
    [(MOPromptMetrics *)self setIHAState:1];
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Fetching age/biologicalSex for CoreAnalytics, with IHA permission", buf, 2u);
    }

    *buf = 0;
    v38 = buf;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__46;
    v41 = __Block_byref_object_dispose__46;
    v42 = 0;
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3032000000;
    v35[3] = __Block_byref_object_copy__46;
    v35[4] = __Block_byref_object_dispose__46;
    v36 = 0;
    v4 = dispatch_semaphore_create(0);
    getHealthKitManager = [(MOEventManager *)self->_eventManager getHealthKitManager];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __37__MOPromptMetrics_getAndSetAgeGender__block_invoke;
    v31[3] = &unk_10033A510;
    v6 = v4;
    v32 = v6;
    v33 = buf;
    v34 = v35;
    [getHealthKitManager fetchUserBiologicalSexWithHandler:v31];
    v7 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Analytics/MOPromptMetrics.m", 2199, "[MOPromptMetrics getAndSetAgeGender]"];
    v30 = 0;
    v8 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v6, &v30, v7);
    v16 = v30;
    if (!v8)
    {
      v9 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [MOTripAnnotationManager hometownReferenceLocations];
      }
    }

    [(MOPromptMetrics *)self setBiologicalSex:*(v38 + 5)];
    v24 = 0;
    v25 = &v24;
    v26 = 0x3032000000;
    v27 = __Block_byref_object_copy__46;
    v28 = __Block_byref_object_dispose__46;
    v29 = 0;
    v22[0] = 0;
    v22[1] = v22;
    v22[2] = 0x3032000000;
    v22[3] = __Block_byref_object_copy__46;
    v22[4] = __Block_byref_object_dispose__46;
    v23 = 0;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __37__MOPromptMetrics_getAndSetAgeGender__block_invoke_1931;
    v18[3] = &unk_10033A538;
    v10 = dispatch_semaphore_create(0);
    v19 = v10;
    v20 = &v24;
    v21 = v22;
    [getHealthKitManager fetchUserAgeWithHandler:v18];
    v11 = [NSString stringWithFormat:@"%@ - [%s] - %d - %s", @"MOSemaphoreWait", "/Library/Caches/com.apple.xbs/Sources/Moments/momentsd/PromptEngine/Analytics/MOPromptMetrics.m", 2216, "[MOPromptMetrics getAndSetAgeGender]"];
    v17 = 0;
    v12 = MOSemaphoreWaitAndFaultIfTimeoutDefaultTimeout_Internal(v10, &v17, v11);
    v13 = v17;
    if (!v12)
    {
      v14 = _mo_log_facility_get_os_log(&MOLogFacilityPerformance);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [MOTripAnnotationManager hometownReferenceLocations];
      }
    }

    [(MOPromptMetrics *)self setAge:v25[5]];
    _Block_object_dispose(v22, 8);

    _Block_object_dispose(&v24, 8);
    _Block_object_dispose(v35, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    [(MOPromptMetrics *)self setIHAState:0];
    [(MOPromptMetrics *)self setBiologicalSex:0];
    [(MOPromptMetrics *)self setAge:0];
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityMetric);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "Not sending age/biologicalSex to CoreAnalytics, no IHA permission", buf, 2u);
    }
  }
}

void __37__MOPromptMetrics_getAndSetAgeGender__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void __37__MOPromptMetrics_getAndSetAgeGender__block_invoke_1931(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  if (!a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v6 = *(*(a1 + 48) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = 0;
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)setIHAState:(BOOL)state
{
  v5 = [NSNumber numberWithBool:state];
  metrics = [(MOMetric *)self metrics];
  [metrics setObject:v5 forKeyedSubscript:@"IHA_State"];
}

- (void)setBiologicalSex:(id)sex
{
  if (sex)
  {
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [sex biologicalSex]);
    metrics = [(MOMetric *)self metrics];
    [metrics setObject:v5 forKeyedSubscript:@"BiologicalSex"];
  }
}

- (void)setAge:(id)age
{
  if (age)
  {
    v5 = [age copy];
    metrics = [(MOMetric *)self metrics];
    [metrics setObject:v5 forKeyedSubscript:@"Age"];
  }
}

@end