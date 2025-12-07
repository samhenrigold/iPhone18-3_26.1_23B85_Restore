@interface HKSleepMetrics
+ (id)sleepMetricsWithMorningIndexRange:(id)range sleepAnalysisAsleepCount:(int64_t)count sleepAnalysisInBedCount:(int64_t)bedCount sleepAnalysisCount:(int64_t)analysisCount averageSleepDuration:(id)duration averageInBedDuration:(id)bedDuration averageREMSleepDuration:(id)sleepDuration averageCoreSleepDuration:(id)self0 averageDeepSleepDuration:(id)self1 averageUnspecifiedSleepDuration:(id)self2 averageAwakeDuration:(id)self3 bedtimeAchievedCount:(int64_t)self4 sleepDurationGoalAchievedCount:(int64_t)self5 sleepDurationGoalStreakCount:(int64_t)self6 averageBedtimeMiss:(id)self7 averageSleepDurationGoalMiss:(id)self8 averageBedtime:(id)self9 averageWakeTime:(id)time averageInBedStartTime:(id)startTime averageInBedEndTime:(id)endTime averageSleepStartTime:(id)sleepStartTime averageSleepEndTime:(id)sleepEndTime standardDeviationActualTimeAsleep:(id)asleep standardDeviationScheduledTimeAsleep:(id)timeAsleep standardDeviationActualVsScheduledTimeAsleep:(id)scheduledTimeAsleep averageSleepStartOffset:(id)offset averageSleepEndOffset:(id)endOffset averageInBedStartOffset:(id)range0 averageInBedEndOffset:(id)range1;
- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange;
- (BOOL)isEqual:(id)equal;
- (HKSleepMetrics)initWithCoder:(id)coder;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKSleepMetrics

+ (id)sleepMetricsWithMorningIndexRange:(id)range sleepAnalysisAsleepCount:(int64_t)count sleepAnalysisInBedCount:(int64_t)bedCount sleepAnalysisCount:(int64_t)analysisCount averageSleepDuration:(id)duration averageInBedDuration:(id)bedDuration averageREMSleepDuration:(id)sleepDuration averageCoreSleepDuration:(id)self0 averageDeepSleepDuration:(id)self1 averageUnspecifiedSleepDuration:(id)self2 averageAwakeDuration:(id)self3 bedtimeAchievedCount:(int64_t)self4 sleepDurationGoalAchievedCount:(int64_t)self5 sleepDurationGoalStreakCount:(int64_t)self6 averageBedtimeMiss:(id)self7 averageSleepDurationGoalMiss:(id)self8 averageBedtime:(id)self9 averageWakeTime:(id)time averageInBedStartTime:(id)startTime averageInBedEndTime:(id)endTime averageSleepStartTime:(id)sleepStartTime averageSleepEndTime:(id)sleepEndTime standardDeviationActualTimeAsleep:(id)asleep standardDeviationScheduledTimeAsleep:(id)timeAsleep standardDeviationActualVsScheduledTimeAsleep:(id)scheduledTimeAsleep averageSleepStartOffset:(id)offset averageSleepEndOffset:(id)endOffset averageInBedStartOffset:(id)range0 averageInBedEndOffset:(id)range1
{
  bedEndOffsetCopy = bedEndOffset;
  startOffsetCopy = startOffset;
  endOffsetCopy = endOffset;
  offsetCopy = offset;
  scheduledTimeAsleepCopy = scheduledTimeAsleep;
  timeAsleepCopy = timeAsleep;
  asleepCopy = asleep;
  sleepEndTimeCopy = sleepEndTime;
  sleepStartTimeCopy = sleepStartTime;
  endTimeCopy = endTime;
  startTimeCopy = startTime;
  timeCopy = time;
  bedtimeCopy = bedtime;
  goalMissCopy = goalMiss;
  missCopy = miss;
  awakeDurationCopy = awakeDuration;
  unspecifiedSleepDurationCopy = unspecifiedSleepDuration;
  deepSleepDurationCopy = deepSleepDuration;
  coreSleepDurationCopy = coreSleepDuration;
  sleepDurationCopy = sleepDuration;
  bedDurationCopy = bedDuration;
  durationCopy = duration;
  v39 = objc_alloc_init(HKSleepMetrics);
  v39->_morningIndexRange = range;
  v39->_sleepAnalysisAsleepCount = count;
  v39->_sleepAnalysisInBedCount = bedCount;
  v39->_sleepAnalysisCount = analysisCount;
  v40 = [durationCopy copy];

  averageSleepDuration = v39->_averageSleepDuration;
  v39->_averageSleepDuration = v40;

  v42 = [bedDurationCopy copy];
  averageInBedDuration = v39->_averageInBedDuration;
  v39->_averageInBedDuration = v42;

  v44 = [sleepDurationCopy copy];
  averageREMSleepDuration = v39->_averageREMSleepDuration;
  v39->_averageREMSleepDuration = v44;

  v46 = [coreSleepDurationCopy copy];
  averageCoreSleepDuration = v39->_averageCoreSleepDuration;
  v39->_averageCoreSleepDuration = v46;

  v48 = [deepSleepDurationCopy copy];
  averageDeepSleepDuration = v39->_averageDeepSleepDuration;
  v39->_averageDeepSleepDuration = v48;

  v50 = [unspecifiedSleepDurationCopy copy];
  averageUnspecifiedSleepDuration = v39->_averageUnspecifiedSleepDuration;
  v39->_averageUnspecifiedSleepDuration = v50;

  v52 = [awakeDurationCopy copy];
  averageAwakeDuration = v39->_averageAwakeDuration;
  v39->_averageAwakeDuration = v52;

  *&v39->_bedtimeAchievedCount = *&achievedCount;
  v39->_sleepDurationGoalStreakCount = streakCount;
  v54 = [missCopy copy];

  averageBedtimeMiss = v39->_averageBedtimeMiss;
  v39->_averageBedtimeMiss = v54;

  v56 = [goalMissCopy copy];
  averageSleepDurationGoalMiss = v39->_averageSleepDurationGoalMiss;
  v39->_averageSleepDurationGoalMiss = v56;

  v58 = [bedtimeCopy copy];
  averageBedtime = v39->_averageBedtime;
  v39->_averageBedtime = v58;

  v60 = [timeCopy copy];
  averageWakeTime = v39->_averageWakeTime;
  v39->_averageWakeTime = v60;

  v62 = [startTimeCopy copy];
  averageInBedStartTime = v39->_averageInBedStartTime;
  v39->_averageInBedStartTime = v62;

  v64 = [endTimeCopy copy];
  averageInBedEndTime = v39->_averageInBedEndTime;
  v39->_averageInBedEndTime = v64;

  v66 = [sleepStartTimeCopy copy];
  averageSleepStartTime = v39->_averageSleepStartTime;
  v39->_averageSleepStartTime = v66;

  v68 = [sleepEndTimeCopy copy];
  averageSleepEndTime = v39->_averageSleepEndTime;
  v39->_averageSleepEndTime = v68;

  v70 = [asleepCopy copy];
  standardDeviationActualTimeAsleep = v39->_standardDeviationActualTimeAsleep;
  v39->_standardDeviationActualTimeAsleep = v70;

  v72 = [timeAsleepCopy copy];
  standardDeviationScheduledTimeAsleep = v39->_standardDeviationScheduledTimeAsleep;
  v39->_standardDeviationScheduledTimeAsleep = v72;

  v74 = [scheduledTimeAsleepCopy copy];
  standardDeviationActualVsScheduledTimeAsleep = v39->_standardDeviationActualVsScheduledTimeAsleep;
  v39->_standardDeviationActualVsScheduledTimeAsleep = v74;

  v76 = [offsetCopy copy];
  averageSleepStartOffset = v39->_averageSleepStartOffset;
  v39->_averageSleepStartOffset = v76;

  v78 = [endOffsetCopy copy];
  averageSleepEndOffset = v39->_averageSleepEndOffset;
  v39->_averageSleepEndOffset = v78;

  v80 = [startOffsetCopy copy];
  averageInBedStartOffset = v39->_averageInBedStartOffset;
  v39->_averageInBedStartOffset = v80;

  v82 = [bedEndOffsetCopy copy];
  averageInBedEndOffset = v39->_averageInBedEndOffset;
  v39->_averageInBedEndOffset = v82;

  return v39;
}

- (void)encodeWithCoder:(id)coder
{
  start = self->_morningIndexRange.start;
  coderCopy = coder;
  [coderCopy encodeInteger:start forKey:@"morningIndexRangeStart"];
  [coderCopy encodeInteger:self->_morningIndexRange.duration forKey:@"morningIndexRangeDuration"];
  [coderCopy encodeInteger:self->_sleepAnalysisAsleepCount forKey:@"sleepAnalysisAsleepCount"];
  [coderCopy encodeInteger:self->_sleepAnalysisInBedCount forKey:@"sleepAnalysisInBedCount"];
  [coderCopy encodeInteger:self->_sleepAnalysisCount forKey:@"sleepAnalysisCount"];
  [coderCopy encodeObject:self->_averageSleepDuration forKey:@"averageSleepDuration"];
  [coderCopy encodeObject:self->_averageInBedDuration forKey:@"averageInBedDuration"];
  [coderCopy encodeObject:self->_averageREMSleepDuration forKey:@"averageREMSleepDuration"];
  [coderCopy encodeObject:self->_averageCoreSleepDuration forKey:@"averageCoreSleepDuration"];
  [coderCopy encodeObject:self->_averageDeepSleepDuration forKey:@"averageDeepSleepDuration"];
  [coderCopy encodeObject:self->_averageUnspecifiedSleepDuration forKey:@"averageUnspecifiedSleepDuration"];
  [coderCopy encodeObject:self->_averageAwakeDuration forKey:@"averageAwakeDuration"];
  [coderCopy encodeInteger:self->_bedtimeAchievedCount forKey:@"bedtimeAchievedCount"];
  [coderCopy encodeInteger:self->_sleepDurationGoalAchievedCount forKey:@"sleepDurationGoalAchievedCount"];
  [coderCopy encodeInteger:self->_sleepDurationGoalStreakCount forKey:@"sleepDurationGoalStreakCount"];
  [coderCopy encodeObject:self->_averageBedtimeMiss forKey:@"averageBedtimeMiss"];
  [coderCopy encodeObject:self->_averageSleepDurationGoalMiss forKey:@"averageSleepDurationGoalMiss"];
  [coderCopy encodeObject:self->_averageBedtime forKey:@"averageBedtime"];
  [coderCopy encodeObject:self->_averageWakeTime forKey:@"averageWakeTime"];
  [coderCopy encodeObject:self->_averageInBedStartTime forKey:@"averageInBedStartTime"];
  [coderCopy encodeObject:self->_averageInBedEndTime forKey:@"averageInBedEndTime"];
  [coderCopy encodeObject:self->_averageSleepStartTime forKey:@"averageSleepStartTime"];
  [coderCopy encodeObject:self->_averageSleepEndTime forKey:@"averageSleepEndTime"];
  [coderCopy encodeObject:self->_standardDeviationActualTimeAsleep forKey:@"standardDeviationActualTimeAsleep"];
  [coderCopy encodeObject:self->_standardDeviationScheduledTimeAsleep forKey:@"standardDeviationScheduledTimeAsleep"];
  [coderCopy encodeObject:self->_standardDeviationActualVsScheduledTimeAsleep forKey:@"standardDeviationActualVsScheduledTimeAsleep"];
  [coderCopy encodeObject:self->_averageSleepStartOffset forKey:@"averageSleepStartOffset"];
  [coderCopy encodeObject:self->_averageSleepEndOffset forKey:@"averageSleepEndOffset"];
  [coderCopy encodeObject:self->_averageInBedStartOffset forKey:@"averageInBedStartOffset"];
  [coderCopy encodeObject:self->_averageInBedEndOffset forKey:@"averageInBedEndOffset"];
}

- (HKSleepMetrics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27 = [coderCopy decodeIntegerForKey:@"morningIndexRangeStart"];
  v26 = [coderCopy decodeIntegerForKey:@"morningIndexRangeDuration"];
  v22 = objc_opt_class();
  v25 = [coderCopy decodeIntegerForKey:@"sleepAnalysisAsleepCount"];
  v24 = [coderCopy decodeIntegerForKey:@"sleepAnalysisInBedCount"];
  v23 = [coderCopy decodeIntegerForKey:@"sleepAnalysisCount"];
  v37 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageSleepDuration"];
  v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageInBedDuration"];
  v35 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageREMSleepDuration"];
  v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageCoreSleepDuration"];
  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageDeepSleepDuration"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageUnspecifiedSleepDuration"];
  v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageAwakeDuration"];
  v19 = [coderCopy decodeIntegerForKey:@"bedtimeAchievedCount"];
  v18 = [coderCopy decodeIntegerForKey:@"sleepDurationGoalAchievedCount"];
  v17 = [coderCopy decodeIntegerForKey:@"sleepDurationGoalStreakCount"];
  v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageBedtimeMiss"];
  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageSleepDurationGoalMiss"];
  v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageBedtime"];
  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageWakeTime"];
  v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageInBedStartTime"];
  v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageInBedEndTime"];
  v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageSleepStartTime"];
  v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageSleepEndTime"];
  v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"standardDeviationActualTimeAsleep"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"standardDeviationScheduledTimeAsleep"];
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"standardDeviationActualVsScheduledTimeAsleep"];
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageSleepStartOffset"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageSleepEndOffset"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageInBedStartOffset"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"averageInBedEndOffset"];

  v28 = [v22 sleepMetricsWithMorningIndexRange:v27 sleepAnalysisAsleepCount:v26 sleepAnalysisInBedCount:v25 sleepAnalysisCount:v24 averageSleepDuration:v23 averageInBedDuration:v37 averageREMSleepDuration:v36 averageCoreSleepDuration:v35 averageDeepSleepDuration:v34 averageUnspecifiedSleepDuration:v21 averageAwakeDuration:v20 bedtimeAchievedCount:v33 sleepDurationGoalAchievedCount:v19 sleepDurationGoalStreakCount:v18 averageBedtimeMiss:v17 averageSleepDurationGoalMiss:v32 averageBedtime:v31 averageWakeTime:v30 averageInBedStartTime:v16 averageInBedEndTime:v13 averageSleepStartTime:v15 averageSleepEndTime:v14 standardDeviationActualTimeAsleep:v12 standardDeviationScheduledTimeAsleep:v11 standardDeviationActualVsScheduledTimeAsleep:v10 averageSleepStartOffset:v4 averageSleepEndOffset:v5 averageInBedStartOffset:v6 averageInBedEndOffset:{v7, v8}];

  return v28;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v51 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = v5;
      if (self->_morningIndexRange.start != v5->_morningIndexRange.start)
      {
        goto LABEL_79;
      }

      if (self->_morningIndexRange.duration != v5->_morningIndexRange.duration)
      {
        goto LABEL_79;
      }

      if (self->_sleepAnalysisAsleepCount != v5->_sleepAnalysisAsleepCount)
      {
        goto LABEL_79;
      }

      if (self->_sleepAnalysisInBedCount != v5->_sleepAnalysisInBedCount)
      {
        goto LABEL_79;
      }

      if (self->_sleepAnalysisCount != v5->_sleepAnalysisCount)
      {
        goto LABEL_79;
      }

      averageSleepDuration = self->_averageSleepDuration;
      v8 = v6->_averageSleepDuration;
      if (averageSleepDuration != v8 && (!v8 || ![(HKQuantity *)averageSleepDuration isEqual:?]))
      {
        goto LABEL_79;
      }

      averageInBedDuration = self->_averageInBedDuration;
      v10 = v6->_averageInBedDuration;
      if (averageInBedDuration != v10 && (!v10 || ![(HKQuantity *)averageInBedDuration isEqual:?]))
      {
        goto LABEL_79;
      }

      averageREMSleepDuration = self->_averageREMSleepDuration;
      v12 = v6->_averageREMSleepDuration;
      if (averageREMSleepDuration != v12 && (!v12 || ![(HKQuantity *)averageREMSleepDuration isEqual:?]))
      {
        goto LABEL_79;
      }

      averageCoreSleepDuration = self->_averageCoreSleepDuration;
      v14 = v6->_averageCoreSleepDuration;
      if (averageCoreSleepDuration != v14 && (!v14 || ![(HKQuantity *)averageCoreSleepDuration isEqual:?]))
      {
        goto LABEL_79;
      }

      averageDeepSleepDuration = self->_averageDeepSleepDuration;
      v16 = v6->_averageDeepSleepDuration;
      if (averageDeepSleepDuration != v16 && (!v16 || ![(HKQuantity *)averageDeepSleepDuration isEqual:?]))
      {
        goto LABEL_79;
      }

      averageUnspecifiedSleepDuration = self->_averageUnspecifiedSleepDuration;
      v18 = v6->_averageUnspecifiedSleepDuration;
      if (averageUnspecifiedSleepDuration != v18 && (!v18 || ![(HKQuantity *)averageUnspecifiedSleepDuration isEqual:?]))
      {
        goto LABEL_79;
      }

      averageAwakeDuration = self->_averageAwakeDuration;
      v20 = v6->_averageAwakeDuration;
      if (averageAwakeDuration != v20 && (!v20 || ![(HKQuantity *)averageAwakeDuration isEqual:?]))
      {
        goto LABEL_79;
      }

      if (self->_bedtimeAchievedCount != v6->_bedtimeAchievedCount)
      {
        goto LABEL_79;
      }

      if (self->_sleepDurationGoalAchievedCount != v6->_sleepDurationGoalAchievedCount)
      {
        goto LABEL_79;
      }

      if (self->_sleepDurationGoalStreakCount != v6->_sleepDurationGoalStreakCount)
      {
        goto LABEL_79;
      }

      averageBedtimeMiss = self->_averageBedtimeMiss;
      v22 = v6->_averageBedtimeMiss;
      if (averageBedtimeMiss != v22 && (!v22 || ![(HKQuantity *)averageBedtimeMiss isEqual:?]))
      {
        goto LABEL_79;
      }

      averageSleepDurationGoalMiss = self->_averageSleepDurationGoalMiss;
      v24 = v6->_averageSleepDurationGoalMiss;
      if (averageSleepDurationGoalMiss != v24 && (!v24 || ![(HKQuantity *)averageSleepDurationGoalMiss isEqual:?]))
      {
        goto LABEL_79;
      }

      averageBedtime = self->_averageBedtime;
      v26 = v6->_averageBedtime;
      if (averageBedtime != v26 && (!v26 || ![(NSDateComponents *)averageBedtime isEqual:?]))
      {
        goto LABEL_79;
      }

      averageWakeTime = self->_averageWakeTime;
      v28 = v6->_averageWakeTime;
      if (averageWakeTime != v28 && (!v28 || ![(NSDateComponents *)averageWakeTime isEqual:?]))
      {
        goto LABEL_79;
      }

      averageInBedStartTime = self->_averageInBedStartTime;
      v30 = v6->_averageInBedStartTime;
      if (averageInBedStartTime != v30 && (!v30 || ![(NSDateComponents *)averageInBedStartTime isEqual:?]))
      {
        goto LABEL_79;
      }

      averageInBedEndTime = self->_averageInBedEndTime;
      v32 = v6->_averageInBedEndTime;
      if (averageInBedEndTime != v32 && (!v32 || ![(NSDateComponents *)averageInBedEndTime isEqual:?]))
      {
        goto LABEL_79;
      }

      averageSleepStartTime = self->_averageSleepStartTime;
      v34 = v6->_averageSleepStartTime;
      if (averageSleepStartTime != v34 && (!v34 || ![(NSDateComponents *)averageSleepStartTime isEqual:?]))
      {
        goto LABEL_79;
      }

      averageSleepEndTime = self->_averageSleepEndTime;
      v36 = v6->_averageSleepEndTime;
      if (averageSleepEndTime != v36 && (!v36 || ![(NSDateComponents *)averageSleepEndTime isEqual:?]))
      {
        goto LABEL_79;
      }

      standardDeviationActualTimeAsleep = self->_standardDeviationActualTimeAsleep;
      v38 = v6->_standardDeviationActualTimeAsleep;
      if (standardDeviationActualTimeAsleep != v38 && (!v38 || ![(NSNumber *)standardDeviationActualTimeAsleep isEqual:?]))
      {
        goto LABEL_79;
      }

      standardDeviationScheduledTimeAsleep = self->_standardDeviationScheduledTimeAsleep;
      v40 = v6->_standardDeviationScheduledTimeAsleep;
      if (standardDeviationScheduledTimeAsleep != v40 && (!v40 || ![(NSNumber *)standardDeviationScheduledTimeAsleep isEqual:?]))
      {
        goto LABEL_79;
      }

      standardDeviationActualVsScheduledTimeAsleep = self->_standardDeviationActualVsScheduledTimeAsleep;
      v42 = v6->_standardDeviationActualVsScheduledTimeAsleep;
      if (standardDeviationActualVsScheduledTimeAsleep != v42 && (!v42 || ![(NSNumber *)standardDeviationActualVsScheduledTimeAsleep isEqual:?]))
      {
        goto LABEL_79;
      }

      averageSleepStartOffset = self->_averageSleepStartOffset;
      v44 = v6->_averageSleepStartOffset;
      if (averageSleepStartOffset != v44 && (!v44 || ![(NSNumber *)averageSleepStartOffset isEqual:?]))
      {
        goto LABEL_79;
      }

      averageSleepEndOffset = self->_averageSleepEndOffset;
      v46 = v6->_averageSleepEndOffset;
      if (averageSleepEndOffset != v46 && (!v46 || ![(NSNumber *)averageSleepEndOffset isEqual:?]))
      {
        goto LABEL_79;
      }

      averageInBedStartOffset = self->_averageInBedStartOffset;
      v48 = v6->_averageInBedStartOffset;
      if (averageInBedStartOffset != v48 && (!v48 || ![(NSNumber *)averageInBedStartOffset isEqual:?]))
      {
        goto LABEL_79;
      }

      averageInBedEndOffset = self->_averageInBedEndOffset;
      v50 = v6->_averageInBedEndOffset;
      if (averageInBedEndOffset == v50)
      {
        v51 = 1;
        goto LABEL_80;
      }

      if (v50)
      {
        v51 = [(NSNumber *)averageInBedEndOffset isEqual:?];
      }

      else
      {
LABEL_79:
        v51 = 0;
      }

LABEL_80:

      goto LABEL_81;
    }

    v51 = 0;
  }

LABEL_81:

  return v51;
}

- (unint64_t)hash
{
  duration = self->_morningIndexRange.duration;
  start = self->_morningIndexRange.start;
  sleepAnalysisAsleepCount = self->_sleepAnalysisAsleepCount;
  v27 = *&self->_sleepAnalysisInBedCount;
  v33 = [(HKQuantity *)self->_averageSleepDuration hash];
  v29 = [(HKQuantity *)self->_averageInBedDuration hash];
  v28 = [(HKQuantity *)self->_averageREMSleepDuration hash];
  v26 = [(HKQuantity *)self->_averageCoreSleepDuration hash];
  v25 = [(HKQuantity *)self->_averageDeepSleepDuration hash];
  v24 = [(HKQuantity *)self->_averageUnspecifiedSleepDuration hash];
  v3 = [(HKQuantity *)self->_averageAwakeDuration hash];
  sleepDurationGoalStreakCount = self->_sleepDurationGoalStreakCount;
  v23 = v3;
  v19 = *&self->_bedtimeAchievedCount;
  v21 = [(HKQuantity *)self->_averageBedtimeMiss hash];
  v20 = [(HKQuantity *)self->_averageSleepDurationGoalMiss hash];
  v18 = [(NSDateComponents *)self->_averageBedtime hash];
  v17 = [(NSDateComponents *)self->_averageWakeTime hash];
  v16 = [(NSDateComponents *)self->_averageInBedStartTime hash];
  v4 = [(NSDateComponents *)self->_averageInBedEndTime hash];
  v5 = [(NSDateComponents *)self->_averageSleepStartTime hash];
  v6 = [(NSDateComponents *)self->_averageSleepEndTime hash];
  v7 = [(NSNumber *)self->_standardDeviationActualTimeAsleep hash];
  v8 = [(NSNumber *)self->_standardDeviationScheduledTimeAsleep hash];
  v9 = [(NSNumber *)self->_standardDeviationActualVsScheduledTimeAsleep hash];
  v10 = [(NSNumber *)self->_averageSleepStartOffset hash];
  v11 = [(NSNumber *)self->_averageSleepEndOffset hash];
  v12 = [(NSNumber *)self->_averageInBedStartOffset hash];
  v13 = [(NSNumber *)self->_averageInBedEndOffset hash];
  v14 = veorq_s8(v27, v19);
  return *&veor_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL)) ^ duration ^ start ^ sleepAnalysisAsleepCount ^ sleepDurationGoalStreakCount ^ v13 ^ v12 ^ v11 ^ v10 ^ v9 ^ v8 ^ v7 ^ v6 ^ v5 ^ v4 ^ v16 ^ v17 ^ v18 ^ v20 ^ v21 ^ v23 ^ v24 ^ v25 ^ v26 ^ v28 ^ v29 ^ v33;
}

- ($0AC6E346AE4835514AAA8AC86D8F4844)morningIndexRange
{
  duration = self->_morningIndexRange.duration;
  start = self->_morningIndexRange.start;
  result.var1 = duration;
  result.var0 = start;
  return result;
}

@end