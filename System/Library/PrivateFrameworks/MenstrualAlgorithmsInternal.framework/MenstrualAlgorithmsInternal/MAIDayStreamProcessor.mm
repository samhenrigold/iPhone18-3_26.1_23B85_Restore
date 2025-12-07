@interface MAIDayStreamProcessor
- (MAIDayStreamProcessor)initWithConfig:(id)config;
- (MAIDayStreamProcessorOutput)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(SEL)updated;
- (id).cxx_construct;
- (unsigned)watchNumericIdentifierFromString:(id)string;
- (void)appendDay:(id)day;
- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
@end

@implementation MAIDayStreamProcessor

- (MAIDayStreamProcessor)initWithConfig:(id)config
{
  configCopy = config;
  v72.receiver = self;
  v72.super_class = MAIDayStreamProcessor;
  v5 = [(MAIDayStreamProcessor *)&v72 init];
  if (v5)
  {
    v6 = objc_opt_new();
    watchIdentifiers = v5->_watchIdentifiers;
    v5->_watchIdentifiers = v6;

    LOBYTE(unsignedIntValue) = 0;
    v37 = 0;
    LOBYTE(v38) = 0;
    v39 = 0;
    LOBYTE(v40) = 0;
    v41 = 0;
    LOBYTE(v42) = 0;
    v43 = 0;
    LOBYTE(v44) = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    LOBYTE(v48) = 0;
    v49 = 0;
    v55 = 0;
    v50 = 0;
    LOBYTE(v51) = 0;
    v56 = 0x1800000018;
    v57 = 1;
    LOBYTE(v58) = 0;
    v59 = 0;
    LOBYTE(v60) = 0;
    v61 = 0;
    LOBYTE(v62) = 0;
    v63 = 0;
    LOBYTE(v64) = 0;
    v65 = 0;
    LOBYTE(v66) = 0;
    v67 = 0;
    v68 = 0;
    v69 = 0;
    LOBYTE(__p) = 0;
    v71 = 0;
    userReportedCycleLength = [configCopy userReportedCycleLength];

    if (userReportedCycleLength)
    {
      userReportedCycleLength2 = [configCopy userReportedCycleLength];
      v37 = !v37;
      unsignedIntValue = [userReportedCycleLength2 unsignedIntValue];
    }

    julianDayOfUserReportedCycleLength = [configCopy julianDayOfUserReportedCycleLength];

    if (julianDayOfUserReportedCycleLength)
    {
      julianDayOfUserReportedCycleLength2 = [configCopy julianDayOfUserReportedCycleLength];
      unsignedIntValue2 = [julianDayOfUserReportedCycleLength2 unsignedIntValue];
      v41 = 1;
      v40 = unsignedIntValue2;
    }

    userReportedMenstruationLength = [configCopy userReportedMenstruationLength];

    if (userReportedMenstruationLength)
    {
      userReportedMenstruationLength2 = [configCopy userReportedMenstruationLength];
      unsignedIntValue3 = [userReportedMenstruationLength2 unsignedIntValue];
      v39 = 1;
      v38 = unsignedIntValue3;
    }

    julianDayOfUserReportedMenstruationLength = [configCopy julianDayOfUserReportedMenstruationLength];

    if (julianDayOfUserReportedMenstruationLength)
    {
      julianDayOfUserReportedMenstruationLength2 = [configCopy julianDayOfUserReportedMenstruationLength];
      unsignedIntValue4 = [julianDayOfUserReportedMenstruationLength2 unsignedIntValue];
      v43 = 1;
      v42 = unsignedIntValue4;
    }

    birthDateComponents = [configCopy birthDateComponents];

    if (birthDateComponents)
    {
      birthDateComponents2 = [configCopy birthDateComponents];
      date = [birthDateComponents2 date];
      [date timeIntervalSinceNow];
      v23 = v22 / -31557600.0;

      if (v23 >= 1.0 && v23 <= 200.0)
      {
        v27 = v23;
        v48 = v27;
        v49 = 1;
        v26 = [MEMORY[0x277CCABB0] numberWithDouble:v23];
        [(MAIDayStreamProcessor *)v5 setUserAgeInYears:v26];
      }

      else
      {
        v26 = ha_get_log(v24);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
        {
          [(MAIDayStreamProcessor *)v26 initWithConfig:v23];
        }
      }
    }

    deviationInput = [configCopy deviationInput];

    if (deviationInput)
    {
      deviationInput2 = [configCopy deviationInput];
      HealthAlgorithms::deviationInput(deviationInput2, v35);
      v51 = v35[0];
      v52 = v35[1];
      v53 = v35[2];
      v54 = v35[3];
      if ((v55 & 1) == 0)
      {
        v55 = 1;
      }
    }

    todayAsJulianDay = [configCopy todayAsJulianDay];
    if ((v45 & 1) == 0)
    {
      v45 = 1;
    }

    v44 = todayAsJulianDay;
    v31 = _os_feature_enabled_impl();
    if (v31)
    {
      v32 = ha_get_log(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35[0]) = 0;
        _os_log_impl(&dword_2588F5000, v32, OS_LOG_TYPE_DEFAULT, "MenstrualAlgorithms/dayStreamUpdate is enabled", v35, 2u);
      }

      v33 = 1;
    }

    else
    {
      v32 = ha_get_log(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v35[0]) = 0;
        _os_log_impl(&dword_2588F5000, v32, OS_LOG_TYPE_DEFAULT, "MenstrualAlgorithms/dayStreamUpdate is disabled", v35, 2u);
      }

      v33 = 0;
    }

    v57 = v33;
    operator new();
  }

  return 0;
}

- (void)appendDay:(id)day
{
  dayCopy = day;
  wristTemperature = [dayCopy wristTemperature];
  watchIdentifier = [wristTemperature watchIdentifier];
  v7 = [(MAIDayStreamProcessor *)self watchNumericIdentifierFromString:watchIdentifier];

  if (self->_julianDayOfLastInput.__engaged_ && (val = self->_julianDayOfLastInput.var0.__val_, v9 = [dayCopy julianDay], val >= v9))
  {
    v24 = ha_get_log(v9);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      [MAIHistoricalAnalyzer appendDay:v24];
    }
  }

  else
  {
    self->_julianDayOfLastInput.var0.__val_ = [dayCopy julianDay];
    self->_julianDayOfLastInput.__engaged_ = 1;
    v10 = dayCopy;
    v28 = 0;
    LOBYTE(v29) = 0;
    v30 = 0;
    LOBYTE(sampleCount) = 0;
    v32 = 0;
    LOBYTE(sampleCount2) = 0;
    v34 = 0;
    LOBYTE(v35) = 0;
    v37 = 0;
    v26 = 0;
    LOBYTE(v27) = 0;
    LODWORD(v25) = [v10 julianDay];
    DWORD1(v25) = [v10 flow];
    BYTE8(v25) = [v10 spotting];
    HIDWORD(v25) = [v10 ovulationTestResult];
    sedentaryHeartRateStatistics = [v10 sedentaryHeartRateStatistics];
    lowerPercentile = [sedentaryHeartRateStatistics lowerPercentile];

    if (lowerPercentile)
    {
      lowerPercentile2 = [sedentaryHeartRateStatistics lowerPercentile];
      [lowerPercentile2 floatValue];
      v27 = v14;
      v28 = 1;

      v32 = 1;
      sampleCount = [sedentaryHeartRateStatistics sampleCount];
    }

    else
    {
      sampleCount = 0;
      v32 = 1;
    }

    sleepHeartRateStatistics = [v10 sleepHeartRateStatistics];
    lowerPercentile3 = [sleepHeartRateStatistics lowerPercentile];

    if (lowerPercentile3)
    {
      lowerPercentile4 = [sleepHeartRateStatistics lowerPercentile];
      [lowerPercentile4 floatValue];
      v29 = v18;
      v30 = 1;

      v34 = 1;
      sampleCount2 = [sleepHeartRateStatistics sampleCount];
    }

    else
    {
      sampleCount2 = 0;
      v34 = 1;
    }

    wristTemperature2 = [v10 wristTemperature];

    if (wristTemperature2)
    {
      wristTemperature3 = [v10 wristTemperature];
      [wristTemperature3 temperatureCelsius];
      v22 = v21;

      v23 = v22;
      v35 = v7;
      v36 = v23;
      v37 = 1;
    }

    Nightingale::ngt_DayStreamProcessor::appendDay(self->_dayStreamProcessor.__ptr_, &v25);
  }
}

- (unsigned)watchNumericIdentifierFromString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    watchIdentifiers = [(MAIDayStreamProcessor *)self watchIdentifiers];
    watchIdentifiers2 = [watchIdentifiers indexOfObject:stringCopy];

    if (watchIdentifiers2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      watchIdentifiers2 = [(MAIDayStreamProcessor *)self watchIdentifiers];
      [watchIdentifiers2 addObject:stringCopy];

      watchIdentifiers3 = [(MAIDayStreamProcessor *)self watchIdentifiers];
      LOBYTE(watchIdentifiers2) = [watchIdentifiers3 count] - 1;
    }
  }

  else
  {
    LOBYTE(watchIdentifiers2) = 0;
  }

  return watchIdentifiers2;
}

- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  ptr = self->_dayStreamProcessor.__ptr_;
  v6 = ha_phase_to_algs_phase(phase);

  Nightingale::ngt_DayStreamProcessor::begin_phase(ptr, v6, day);
}

- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  ptr = self->_dayStreamProcessor.__ptr_;
  v6 = ha_phase_to_algs_phase(phase);

  Nightingale::ngt_DayStreamProcessor::end_phase(ptr, v6, day);
}

- (MAIDayStreamProcessorOutput)analyzeWithMostRecentMenstrualFlowJulianDayUpdated:(SEL)updated
{
  v161[35] = *MEMORY[0x277D85DE8];
  v7 = objc_opt_new();
  retstr->var1 = 0;
  p_var1 = &retstr->var1;
  retstr->var2 = 0;
  v8 = v7;
  selfCopy = self;
  v95 = retstr;
  retstr->var0 = v8;
  v9 = a4 & 0xFFFFFF00;
  if (a4 <= 0)
  {
    v9 = 0;
  }

  Nightingale::ngt_DayStreamProcessor::analyze(self->_dayStreamProcessor.__ptr_, v9 & 0xFFFFFF00 | a4 & ~(a4 >> 31) | ((a4 > 0) << 32), 1, &v97);
  v10 = [v8 setIsUserInactive:v122];
  if (v120 == 1)
  {
    v11 = HealthAlgorithms::deviationAnalysis(v119);
    [v8 setDeviationAnalysis:v11];
  }

  if (v159 == 1)
  {
    v96 = retrieve_id_for_core_analytics();
    v160[0] = @"awakeSHRMissingRate";
    LODWORD(v12) = v138;
    v92 = [MEMORY[0x277CCABB0] numberWithFloat:v12];
    v161[0] = v92;
    v160[1] = @"calFWErr";
    if (v127)
    {
      v13 = v126;
    }

    else
    {
      v13 = 1000;
    }

    v91 = [MEMORY[0x277CCABB0] numberWithInt:v13];
    v161[1] = v91;
    v160[2] = @"currentCycleFactor";
    v90 = [MEMORY[0x277CCABB0] numberWithInt:v132];
    v161[2] = v90;
    v160[3] = @"daysBetweenConfirmedOvulationAndNotificationDay";
    v89 = [MEMORY[0x277CCABB0] numberWithInt:v156];
    v161[3] = v89;
    v160[4] = @"daysPassedEPAvailability";
    v88 = [MEMORY[0x277CCABB0] numberWithInt:v133];
    v161[4] = v88;
    v160[5] = @"daysWithAwakeSHRInPast45Days";
    v87 = [MEMORY[0x277CCABB0] numberWithInt:v149];
    v161[5] = v87;
    v160[6] = @"daysWithSleepSHRInPast45Days";
    v86 = [MEMORY[0x277CCABB0] numberWithInt:v150];
    v161[6] = v86;
    v160[7] = @"daysWithWristTempInPast12Days";
    v85 = [MEMORY[0x277CCABB0] numberWithInt:v134];
    v161[7] = v85;
    v160[8] = @"daysWithWristTempInPast19Days";
    v84 = [MEMORY[0x277CCABB0] numberWithInt:v135];
    v161[8] = v84;
    v160[9] = @"daysWithWristTempInPast45Days";
    v83 = [MEMORY[0x277CCABB0] numberWithInt:v136];
    v161[9] = v83;
    v160[10] = @"deltaBetweenTodayAndCalOvulation";
    v82 = [MEMORY[0x277CCABB0] numberWithInt:v131];
    v161[10] = v82;
    v160[11] = @"dlFWErr";
    if (v125)
    {
      v14 = v124;
    }

    else
    {
      v14 = 1000;
    }

    v81 = [MEMORY[0x277CCABB0] numberWithInt:v14];
    v161[11] = v81;
    v160[12] = @"fertileWindowPeriodUpdateCombination";
    v80 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v137];
    v161[12] = v80;
    v160[13] = @"hasMultipleWatchWithKali";
    v79 = [MEMORY[0x277CCABB0] numberWithBool:v129];
    v161[13] = v79;
    v160[14] = @"isOnCycleFactors";
    v78 = [MEMORY[0x277CCABB0] numberWithBool:v128];
    v161[14] = v78;
    v160[15] = @"isOngoingMenstruation";
    v77 = [MEMORY[0x277CCABB0] numberWithBool:v123];
    v161[15] = v77;
    v160[16] = @"kaliDay2DayNoiseAnchoredByToday";
    v76 = [MEMORY[0x277CCABB0] numberWithInt:v155];
    v161[16] = v76;
    v160[17] = @"kaliMeetsDLLSTMAvailability";
    v75 = [MEMORY[0x277CCABB0] numberWithBool:v153];
    v161[17] = v75;
    v160[18] = @"kaliMeetsDLRFAvailability";
    v74 = [MEMORY[0x277CCABB0] numberWithBool:v152];
    v161[18] = v74;
    v160[19] = @"kaliMeetsExpeditedPathAvailability";
    v73 = [MEMORY[0x277CCABB0] numberWithBool:v151];
    v161[19] = v73;
    v160[20] = @"kaliSignalAtOvulationEstimate";
    v72 = [MEMORY[0x277CCABB0] numberWithInt:v154];
    v161[20] = v72;
    v160[21] = @"ovulationConfirmationMethod";
    v71 = [MEMORY[0x277CCABB0] numberWithInt:v157];
    v161[21] = v71;
    v160[22] = @"ovulationConfirmationNoUpdateReason";
    v70 = [MEMORY[0x277CCABB0] numberWithInt:v158];
    v161[22] = v70;
    v160[23] = @"percentile30AwakeSHRCountOver45Days";
    v69 = [MEMORY[0x277CCABB0] numberWithInt:v141];
    v161[23] = v69;
    v160[24] = @"percentile50AwakeSHRCountOver45Days";
    v68 = [MEMORY[0x277CCABB0] numberWithInt:v139];
    v161[24] = v68;
    v160[25] = @"percentile30NightSHRCountOver45Days";
    v15 = [MEMORY[0x277CCABB0] numberWithInt:v142];
    v161[25] = v15;
    v160[26] = @"percentile50NightSHRCountOver45Days";
    v16 = [MEMORY[0x277CCABB0] numberWithInt:v140];
    v161[26] = v16;
    v160[27] = @"periodPredictionMethod";
    v17 = [MEMORY[0x277CCABB0] numberWithInt:v130];
    v161[27] = v17;
    v161[28] = v96;
    v160[28] = @"pseudoDeviceID";
    v160[29] = @"ratioAwakeSedentaryHeartRateCountMoreThan12";
    LODWORD(v18) = v143;
    v19 = [MEMORY[0x277CCABB0] numberWithFloat:v18];
    v161[29] = v19;
    v160[30] = @"ratioAwakeSedentaryHeartRateCountMoreThan18";
    LODWORD(v20) = v144;
    v21 = [MEMORY[0x277CCABB0] numberWithFloat:v20];
    v161[30] = v21;
    v160[31] = @"ratioAwakeSedentaryHeartRateCountMoreThan24";
    LODWORD(v22) = v145;
    v23 = [MEMORY[0x277CCABB0] numberWithFloat:v22];
    v161[31] = v23;
    v160[32] = @"ratioSleepSedentaryHeartRateCountMoreThan12";
    LODWORD(v24) = v146;
    v25 = [MEMORY[0x277CCABB0] numberWithFloat:v24];
    v161[32] = v25;
    v160[33] = @"ratioSleepSedentaryHeartRateCountMoreThan18";
    LODWORD(v26) = v147;
    v27 = [MEMORY[0x277CCABB0] numberWithFloat:v26];
    v161[33] = v27;
    v160[34] = @"ratioSleepSedentaryHeartRateCountMoreThan24";
    LODWORD(v28) = v148;
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    v161[34] = v29;
    v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v161 forKeys:v160 count:35];

    *p_var1 = v67;
  }

  else
  {
    v30 = ha_get_log(v10);
    v96 = v30;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [MAIDayStreamProcessor analyzeWithMostRecentMenstrualFlowJulianDayUpdated:v30];
    }
  }

  if (v120 == 1)
  {
    v31 = retrieve_id_for_core_analytics();
    v32 = v121;
    userAgeInYears = [(MAIDayStreamProcessor *)selfCopy userAgeInYears];
    v95->var2 = HealthAlgorithms::deviationAnalysisHIDCoreAnalytics(v119, v31, v32, userAgeInYears);
  }

  v34 = [MEMORY[0x277CBEB18] arrayWithCapacity:{0x4EC4EC4EC4EC4EC5 * ((v100 - __p) >> 3), v67}];
  v35 = __p;
  v36 = v100;
  if (__p != v100)
  {
    do
    {
      if (*(v35 + 40) == 1)
      {
        v37 = objc_opt_new();
        [v37 setJulianDayOfWindowStart:*v35];
        if (*(v35 + 40) == 1)
        {
          [v37 setStartProbabilityMean:*(v35 + 1)];
          [v37 setStartProbabilityStdDev:*(v35 + 2)];
        }

        if (*(v35 + 80) == 1)
        {
          [v37 setEndProbabilityMean:*(v35 + 6)];
          [v37 setEndProbabilityStdDev:*(v35 + 7)];
        }

        [v37 setLowRange:{v35[22], v35[23]}];
        [v37 setDaysOffsetFromCalendarMethod:v35[24]];
        v38 = v35[25];
        if (v38 >= 4)
        {
          v39 = 3;
        }

        else
        {
          v39 = 3 - v38;
        }

        [v37 setPredictionPrimarySource:v39];
        [v34 addObject:v37];
      }

      v35 += 26;
    }

    while (v35 != v36);
  }

  [v8 setFertilityPredictions:v34];
  v40 = [MEMORY[0x277CBEB18] arrayWithCapacity:0x4EC4EC4EC4EC4EC5 * ((v98 - v97) >> 3)];
  v41 = v97;
  v42 = v98;
  if (v97 != v98)
  {
    do
    {
      v43 = objc_opt_new();
      [v43 setJulianDayOfWindowStart:*v41];
      if (*(v41 + 40) == 1)
      {
        [v43 setStartProbabilityMean:*(v41 + 1)];
        [v43 setStartProbabilityStdDev:*(v41 + 2)];
      }

      if (*(v41 + 80) == 1)
      {
        [v43 setEndProbabilityMean:*(v41 + 6)];
        [v43 setEndProbabilityStdDev:*(v41 + 7)];
      }

      [v43 setLowRange:{v41[22], v41[23]}];
      [v43 setDaysOffsetFromCalendarMethod:v41[24]];
      v44 = v41[25];
      if (v44 >= 4)
      {
        v45 = 3;
      }

      else
      {
        v45 = 3 - v44;
      }

      [v43 setPredictionPrimarySource:v45];
      [v40 addObject:v43];

      v41 += 26;
    }

    while (v41 != v42);
  }

  if ((v121 & 1) != 0 && [v40 count])
  {
    firstObject = [v40 firstObject];
    [firstObject setIsOngoingMenstruation:1];
  }

  [v8 setMenstruationPredictions:v40];
  v47 = objc_opt_new();
  [v8 setStats:v47];

  if (v102 == 1)
  {
    v48 = [MEMORY[0x277CCABB0] numberWithInt:v101];
    stats = [v8 stats];
    [stats setMedianCycleLength:v48];
  }

  if (v104 == 1)
  {
    v50 = [MEMORY[0x277CCABB0] numberWithInt:v103];
    stats2 = [v8 stats];
    [stats2 setMedianMenstruationLength:v50];
  }

  if (v110 == 1)
  {
    v52 = [MEMORY[0x277CCABB0] numberWithInt:v109];
    stats3 = [v8 stats];
    [stats3 setLowerCycleLengthPercentile:v52];
  }

  if (v106 == 1)
  {
    v54 = [MEMORY[0x277CCABB0] numberWithInt:v105];
    stats4 = [v8 stats];
    [stats4 setLowerMenstruationLengthPercentile:v54];
  }

  if (v112 == 1)
  {
    v56 = [MEMORY[0x277CCABB0] numberWithInt:v111];
    stats5 = [v8 stats];
    [stats5 setUpperCycleLengthPercentile:v56];
  }

  if (v108 == 1)
  {
    v58 = [MEMORY[0x277CCABB0] numberWithInt:v107];
    stats6 = [v8 stats];
    [stats6 setUpperMenstruationLengthPercentile:v58];
  }

  if (v114 == 1)
  {
    v60 = [MEMORY[0x277CCABB0] numberWithInt:v113];
    stats7 = [v8 stats];
    [stats7 setNumberOfCyclesFound:v60];
  }

  if (v116 == 1)
  {
    v62 = [MEMORY[0x277CCABB0] numberWithInt:v115];
    stats8 = [v8 stats];
    [stats8 setJulianDayOfFirstCycleStart:v62];
  }

  if (v118 == 1)
  {
    v64 = [MEMORY[0x277CCABB0] numberWithInt:v117];
    stats9 = [v8 stats];
    [stats9 setJulianDayOfLastCycleStart:v64];
  }

  if (__p)
  {
    v100 = __p;
    operator delete(__p);
  }

  if (v97)
  {
    v98 = v97;
    operator delete(v97);
  }

  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 20) = 0;
  return self;
}

- (void)initWithConfig:(os_log_t)log .cold.1(os_log_t log, double a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a2;
  _os_log_fault_impl(&dword_2588F5000, log, OS_LOG_TYPE_FAULT, "age of %f years doesn't make sense: ignoring it", &v2, 0xCu);
}

@end