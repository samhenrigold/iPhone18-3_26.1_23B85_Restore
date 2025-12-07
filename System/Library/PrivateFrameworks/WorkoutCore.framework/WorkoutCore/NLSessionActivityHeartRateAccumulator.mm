@interface NLSessionActivityHeartRateAccumulator
- ($B42DDA7905377C1B85A751F444708923)heartRateData;
- ($B42DDA7905377C1B85A751F444708923)lastAveragingSegmentHeartRateData;
- (NLSessionActivityHeartRateAccumulator)initWithBuilder:(id)builder staleTimeout:(double)timeout;
- (NLSessionActivityHeartRateProviderDelegate)delegate;
- (void)_fakeReading;
- (void)_invalidDataTimerFired;
- (void)_startFakingData;
- (void)_stopFakingDataIfNeeded;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)markAveragingSegment;
- (void)updateWithStatistics:(id)statistics;
@end

@implementation NLSessionActivityHeartRateAccumulator

- (NLSessionActivityHeartRateAccumulator)initWithBuilder:(id)builder staleTimeout:(double)timeout
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  timeoutCopy = timeout;
  v4 = selfCopy;
  selfCopy = 0;
  v11.receiver = v4;
  v11.super_class = NLSessionActivityHeartRateAccumulator;
  v10 = [(NLSessionActivityBuilderAccumulator *)&v11 initWithBuilder:location[0]];
  selfCopy = v10;
  objc_storeStrong(&selfCopy, v10);
  if (v10)
  {
    _countPerMinuteUnit = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
    countPerMinuteUnit = selfCopy->_countPerMinuteUnit;
    selfCopy->_countPerMinuteUnit = _countPerMinuteUnit;
    MEMORY[0x277D82BD8](countPerMinuteUnit);
    selfCopy->_staleTimeout = timeoutCopy;
    selfCopy->_averagingSegmentSum = 0.0;
    selfCopy->_averagingSegmentCount = 0.0;
    selfCopy->_averagingSegmentMinimum = 0.0;
    selfCopy->_averagingSegmentMaximum = 0.0;
  }

  v8 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v8;
}

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  aBlock = 0;
  objc_storeStrong(&aBlock, handler);
  v4 = _Block_copy(aBlock);
  updateHandler = selfCopy->_updateHandler;
  selfCopy->_updateHandler = v4;
  if (+[WOStoreDemoModeProvider isRunningInStoreDemoMode])
  {
    [(NLSessionActivityHeartRateAccumulator *)selfCopy _startFakingData];
  }

  objc_storeStrong(&aBlock, 0);
  objc_storeStrong(location, 0);
}

- (void)updateWithStatistics:(id)statistics
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, statistics);
  if (!selfCopy->_disabledForSession)
  {
    [(NLSessionActivityHeartRateAccumulator *)selfCopy setMostRecentStatistics:location[0]];
    v14.receiver = selfCopy;
    v14.super_class = NLSessionActivityHeartRateAccumulator;
    [(NLSessionActivityBuilderAccumulator *)&v14 update];
    [(NSTimer *)selfCopy->_invalidDataTimer invalidate];
    v3 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:selfCopy target:sel__invalidDataTimerFired selector:0 userInfo:0 repeats:selfCopy->_staleTimeout];
    invalidDataTimer = selfCopy->_invalidDataTimer;
    selfCopy->_invalidDataTimer = v3;
    if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
    {
      _HKInitializeLogging();
      v13 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        mostRecentStatistics = [(NLSessionActivityHeartRateAccumulator *)selfCopy mostRecentStatistics];
        mostRecentQuantity = [(HKStatistics *)mostRecentStatistics mostRecentQuantity];
        [(HKQuantity *)mostRecentQuantity doubleValueForUnit:selfCopy->_countPerMinuteUnit];
        __os_log_helper_16_0_1_8_0(v17, v5);
        _os_log_impl(&dword_20AEA4000, v13, OS_LOG_TYPE_DEFAULT, "[HeartRateAccumulator] Update triggered with heartRate=%f", v17, 0xCu);
        MEMORY[0x277D82BD8](mostRecentQuantity);
        MEMORY[0x277D82BD8](mostRecentStatistics);
      }

      objc_storeStrong(&v13, 0);
    }

    mostRecentQuantity2 = [location[0] mostRecentQuantity];
    [mostRecentQuantity2 doubleValueForUnit:selfCopy->_countPerMinuteUnit];
    v10 = v6;
    MEMORY[0x277D82BD8](mostRecentQuantity2);
    selfCopy->_averagingSegmentSum = selfCopy->_averagingSegmentSum + v10;
    selfCopy->_averagingSegmentCount = selfCopy->_averagingSegmentCount + 1.0;
    if (v10 >= selfCopy->_averagingSegmentMinimum)
    {
      averagingSegmentMinimum = selfCopy->_averagingSegmentMinimum;
    }

    else
    {
      averagingSegmentMinimum = v10;
    }

    selfCopy->_averagingSegmentMinimum = averagingSegmentMinimum;
    if (v10 >= selfCopy->_averagingSegmentMaximum)
    {
      averagingSegmentMaximum = v10;
    }

    else
    {
      averagingSegmentMaximum = selfCopy->_averagingSegmentMaximum;
    }

    selfCopy->_averagingSegmentMaximum = averagingSegmentMaximum;
  }

  objc_storeStrong(location, 0);
}

- (void)_invalidDataTimerFired
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained heartRateProviderDidBecomeStale:self];
  MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_startFakingData
{
  if (!self->_fakeDataTimer)
  {
    v2 = [MEMORY[0x277CBEBB8] scheduledTimerWithTimeInterval:self target:sel__fakeReading selector:0 userInfo:1 repeats:3.0];
    fakeDataTimer = self->_fakeDataTimer;
    self->_fakeDataTimer = v2;
    MEMORY[0x277D82BD8](fakeDataTimer);
  }
}

- (void)_stopFakingDataIfNeeded
{
  if (self->_fakeDataTimer)
  {
    [(NSTimer *)self->_fakeDataTimer invalidate];
    objc_storeStrong(&self->_fakeDataTimer, 0);
  }
}

- (void)_fakeReading
{
  v25[1] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v23 = a2;
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults doubleForKey:@"NLWorkoutFakeHeartRateCenterValue"];
  v15 = v2;
  MEMORY[0x277D82BD8](standardUserDefaults);
  v22 = v15;
  if (v15 < 30.0)
  {
    v22 = 135.0;
  }

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v21 = [standardUserDefaults2 objectForKey:@"NLWorkoutFakeHeartRateValueRangeLength"];
  *&v3 = MEMORY[0x277D82BD8](standardUserDefaults2).n128_u64[0];
  if (v21)
  {
    intValue = [v21 intValue];
  }

  else
  {
    intValue = 15;
  }

  v20 = intValue;
  v19 = v22 + round((arc4random() % (v20 + 1))) - v20 / 2.0;
  v5 = MEMORY[0x277CCD7E8];
  _countPerMinuteUnit = [MEMORY[0x277CCDAB0] _countPerMinuteUnit];
  v18 = [v5 quantityWithUnit:v19 doubleValue:?];
  date = [MEMORY[0x277CBEAA8] date];
  v7 = MEMORY[0x277CCD800];
  v8 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  v16 = [v7 quantitySampleWithType:? quantity:? startDate:? endDate:?];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  builder = [(NLSessionActivityBuilderAccumulator *)selfCopy builder];
  v25[0] = v16;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:1];
  [HKLiveWorkoutBuilder addSamples:builder completion:"addSamples:completion:"];
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](builder);
  v11 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:(arc4random() % 5) + 5.0];
  [(NSTimer *)selfCopy->_fakeDataTimer setFireDate:?];
  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&date, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v21, 0);
}

void __53__NLSessionActivityHeartRateAccumulator__fakeReading__block_invoke(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v8, v6 & 1);
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "Added fake sample with success=%{BOOL}d", v8, 8u);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(&location, 0);
}

- ($B42DDA7905377C1B85A751F444708923)heartRateData
{
  selfCopy = self;
  v26[1] = a3;
  memset(retstr, 0, sizeof($B42DDA7905377C1B85A751F444708923));
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForCurrentHeartRate];
    retstr->var0 = v3;
    retstr->var1 = 0;
    +[NLSessionActivityFakeDataManager fakeValueForAverageHeartRate];
    retstr->var2 = v4;
    +[NLSessionActivityFakeDataManager fakeValueForMinimumHeartRate];
    retstr->var3 = v5;
    +[NLSessionActivityFakeDataManager fakeValueForMaximumHeartRate];
    retstr->var4 = v6;
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    retstr->var5 = v7;
    MEMORY[0x277D82BD8](date);
  }

  else
  {
    v26[0] = [(NLSessionActivityHeartRateAccumulator *)selfCopy mostRecentStatistics];
    mostRecentQuantity = [v26[0] mostRecentQuantity];
    [mostRecentQuantity doubleValueForUnit:selfCopy->_countPerMinuteUnit];
    retstr->var0 = v9;
    *&v10 = MEMORY[0x277D82BD8](mostRecentQuantity).n128_u64[0];
    retstr->var1 = 0;
    averageQuantity = [v26[0] averageQuantity];
    [averageQuantity doubleValueForUnit:selfCopy->_countPerMinuteUnit];
    retstr->var2 = v11;
    *&v12 = MEMORY[0x277D82BD8](averageQuantity).n128_u64[0];
    minimumQuantity = [v26[0] minimumQuantity];
    [minimumQuantity doubleValueForUnit:selfCopy->_countPerMinuteUnit];
    retstr->var3 = v13;
    *&v14 = MEMORY[0x277D82BD8](minimumQuantity).n128_u64[0];
    maximumQuantity = [v26[0] maximumQuantity];
    [maximumQuantity doubleValueForUnit:selfCopy->_countPerMinuteUnit];
    retstr->var4 = v15;
    *&v16 = MEMORY[0x277D82BD8](maximumQuantity).n128_u64[0];
    mostRecentQuantityDateInterval = [v26[0] mostRecentQuantityDateInterval];
    endDate = [mostRecentQuantityDateInterval endDate];
    [endDate timeIntervalSinceReferenceDate];
    retstr->var5 = v17;
    MEMORY[0x277D82BD8](endDate);
    MEMORY[0x277D82BD8](mostRecentQuantityDateInterval);
    objc_storeStrong(v26, 0);
  }

  return result;
}

- ($B42DDA7905377C1B85A751F444708923)lastAveragingSegmentHeartRateData
{
  selfCopy = self;
  v17[1] = a3;
  memset(retstr, 0, sizeof($B42DDA7905377C1B85A751F444708923));
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForCurrentHeartRate];
    retstr->var0 = v3;
    retstr->var1 = 0;
    +[NLSessionActivityFakeDataManager fakeValueForAverageHeartRate];
    retstr->var2 = v4;
    +[NLSessionActivityFakeDataManager fakeValueForMinimumHeartRate];
    retstr->var3 = v5;
    +[NLSessionActivityFakeDataManager fakeValueForMaximumHeartRate];
    retstr->var4 = v6;
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSinceReferenceDate];
    retstr->var5 = v7;
    MEMORY[0x277D82BD8](date);
  }

  else
  {
    v17[0] = [(NLSessionActivityHeartRateAccumulator *)selfCopy mostRecentStatistics];
    v16 = 0;
    if (selfCopy->_averagingSegmentCount > 0.0)
    {
      v16 = (selfCopy->_averagingSegmentSum / selfCopy->_averagingSegmentCount);
    }

    mostRecentQuantity = [v17[0] mostRecentQuantity];
    [mostRecentQuantity doubleValueForUnit:selfCopy->_countPerMinuteUnit];
    retstr->var0 = v9;
    MEMORY[0x277D82BD8](mostRecentQuantity);
    retstr->var1 = 0;
    retstr->var2 = v16;
    retstr->var3 = selfCopy->_averagingSegmentMinimum;
    retstr->var4 = selfCopy->_averagingSegmentMaximum;
    mostRecentQuantityDateInterval = [v17[0] mostRecentQuantityDateInterval];
    endDate = [mostRecentQuantityDateInterval endDate];
    [endDate timeIntervalSinceReferenceDate];
    retstr->var5 = v10;
    MEMORY[0x277D82BD8](endDate);
    MEMORY[0x277D82BD8](mostRecentQuantityDateInterval);
    objc_storeStrong(v17, 0);
  }

  return result;
}

- (void)markAveragingSegment
{
  selfCopy = self;
  location[1] = a2;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_20AEA4000, log, type, "Marking an Averaging Segment", v4, 2u);
  }

  objc_storeStrong(location, 0);
  selfCopy->_averagingSegmentSum = 0.0;
  selfCopy->_averagingSegmentCount = 0.0;
  selfCopy->_averagingSegmentMinimum = 0.0;
  selfCopy->_averagingSegmentMaximum = 0.0;
}

- (NLSessionActivityHeartRateProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end