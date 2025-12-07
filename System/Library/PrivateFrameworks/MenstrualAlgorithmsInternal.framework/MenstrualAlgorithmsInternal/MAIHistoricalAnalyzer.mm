@interface MAIHistoricalAnalyzer
- (MAIHistoricalAnalyzer)init;
- (MAIHistoricalAnalyzerOutput)analyze;
- (id).cxx_construct;
- (id)phaseStringFromNumber:(id)number;
- (unsigned)watchNumericIdentifierFromString:(id)string;
- (void)appendDay:(id)day;
- (void)beginPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day;
@end

@implementation MAIHistoricalAnalyzer

- (MAIHistoricalAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = MAIHistoricalAnalyzer;
  v2 = [(MAIHistoricalAnalyzer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    watchIdentifiers = v2->_watchIdentifiers;
    v2->_watchIdentifiers = v3;

    operator new();
  }

  return 0;
}

- (void)appendDay:(id)day
{
  dayCopy = day;
  wristTemperature = [dayCopy wristTemperature];
  watchIdentifier = [wristTemperature watchIdentifier];
  v7 = [(MAIHistoricalAnalyzer *)self watchNumericIdentifierFromString:watchIdentifier];

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

    Nightingale::ngt_HistoricalAnalyzer::appendDay(self->_historicalAnalyzer.__ptr_, &v25);
  }
}

- (unsigned)watchNumericIdentifierFromString:(id)string
{
  stringCopy = string;
  if (stringCopy)
  {
    watchIdentifiers = [(MAIHistoricalAnalyzer *)self watchIdentifiers];
    watchIdentifiers2 = [watchIdentifiers indexOfObject:stringCopy];

    if (watchIdentifiers2 == 0x7FFFFFFFFFFFFFFFLL)
    {
      watchIdentifiers2 = [(MAIHistoricalAnalyzer *)self watchIdentifiers];
      [watchIdentifiers2 addObject:stringCopy];

      watchIdentifiers3 = [(MAIHistoricalAnalyzer *)self watchIdentifiers];
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
  ptr = self->_historicalAnalyzer.__ptr_;
  v6 = ha_phase_to_algs_phase(phase);

  Nightingale::ngt_HistoricalAnalyzer::begin_phase(ptr, v6, day);
}

- (void)endPhase:(unsigned __int8)phase onJulianDay:(unsigned int)day
{
  ptr = self->_historicalAnalyzer.__ptr_;
  v6 = ha_phase_to_algs_phase(phase);

  Nightingale::ngt_HistoricalAnalyzer::end_phase(ptr, v6, day);
}

- (id)phaseStringFromNumber:(id)number
{
  v8[9] = *MEMORY[0x277D85DE8];
  numberCopy = number;
  if (numberCopy)
  {
    v7[0] = &unk_2869C9C58;
    v7[1] = &unk_2869C9C70;
    v8[0] = @"Pregnancy";
    v8[1] = @"Lactation";
    v7[2] = &unk_2869C9C88;
    v7[3] = &unk_2869C9CA0;
    v8[2] = @"ContraceptiveImplant";
    v8[3] = @"ContraceptiveInjection";
    v7[4] = &unk_2869C9CB8;
    v7[5] = &unk_2869C9CD0;
    v8[4] = @"ContraceptiveIntrauterineDevice";
    v8[5] = @"ContraceptiveIntravaginalRing";
    v7[6] = &unk_2869C9CE8;
    v7[7] = &unk_2869C9D00;
    v8[6] = @"ContraceptiveOral";
    v8[7] = @"ContraceptivePatch";
    v7[8] = &unk_2869C9D18;
    v8[8] = @"ContraceptiveUnspecified";
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:9];
    v5 = [v4 objectForKeyedSubscript:numberCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (MAIHistoricalAnalyzerOutput)analyze
{
  v173 = *MEMORY[0x277D85DE8];
  Nightingale::ngt_HistoricalAnalyzer::analyze(&v73, self->_historicalAnalyzer.__ptr_, 1);
  if (v123 == 1)
  {
    v124[0] = @"countEligibleCycles";
    v71 = [MEMORY[0x277CCABB0] numberWithInt:v113];
    *buf = v71;
    v124[1] = @"daysHormonalContraceptionEndLoggedBeforeCycleStartMax";
    v70 = [MEMORY[0x277CCABB0] numberWithInt:v112];
    v126 = v70;
    v124[2] = @"daysHormonalContraceptionEndLoggedBeforeCycleStartMedian";
    v69 = [MEMORY[0x277CCABB0] numberWithInt:v110];
    v127 = v69;
    v124[3] = @"daysHormonalContraceptionEndLoggedBeforeCycleStartMin";
    v68 = [MEMORY[0x277CCABB0] numberWithInt:v111];
    v128 = v68;
    v124[4] = @"daysHormonalContraceptionStartLoggedAfterCycleStartMax";
    v67 = [MEMORY[0x277CCABB0] numberWithInt:v109];
    v129 = v67;
    v124[5] = @"daysHormonalContraceptionStartLoggedAfterCycleStartMedian";
    v66 = [MEMORY[0x277CCABB0] numberWithInt:v107];
    v130 = v66;
    v124[6] = @"daysHormonalContraceptionStartLoggedAfterCycleStartMin";
    v65 = [MEMORY[0x277CCABB0] numberWithInt:v108];
    v131 = v65;
    v124[7] = @"daysPregnancyEndLoggedBeforeCycleStartMax";
    v64 = [MEMORY[0x277CCABB0] numberWithInt:v106];
    v132 = v64;
    v124[8] = @"daysPregnancyEndLoggedBeforeCycleStartMedian";
    v63 = [MEMORY[0x277CCABB0] numberWithInt:v104];
    v133 = v63;
    v124[9] = @"daysPregnancyEndLoggedBeforeCycleStartMin";
    v62 = [MEMORY[0x277CCABB0] numberWithInt:v105];
    v134 = v62;
    v124[10] = @"daysPregnancyStartLoggedAfterCycleStartMax";
    v61 = [MEMORY[0x277CCABB0] numberWithInt:v103];
    v135 = v61;
    v124[11] = @"daysPregnancyStartLoggedAfterCycleStartMedian";
    v60 = [MEMORY[0x277CCABB0] numberWithInt:v101];
    v136 = v60;
    v124[12] = @"daysPregnancyStartLoggedAfterCycleStartMin";
    v59 = [MEMORY[0x277CCABB0] numberWithInt:v102];
    v137 = v59;
    v124[13] = @"estimatedLutealPhaseLength25Pct";
    v58 = [MEMORY[0x277CCABB0] numberWithInt:v97];
    v138 = v58;
    v124[14] = @"estimatedLutealPhaseLength75Pct";
    v57 = [MEMORY[0x277CCABB0] numberWithInt:v99];
    v139 = v57;
    v124[15] = @"estimatedLutealPhaseLengthMax";
    v56 = [MEMORY[0x277CCABB0] numberWithInt:v100];
    v140 = v56;
    v124[16] = @"estimatedLutealPhaseLengthMedian";
    v55 = [MEMORY[0x277CCABB0] numberWithInt:v98];
    v141 = v55;
    v124[17] = @"estimatedLutealPhaseLengthMin";
    v54 = [MEMORY[0x277CCABB0] numberWithInt:v96];
    v142 = v54;
    v124[18] = @"hasMultipleWatch";
    v53 = [MEMORY[0x277CCABB0] numberWithBool:v77];
    v143 = v53;
    v124[19] = @"kaliDay2DayNoise";
    v52 = [MEMORY[0x277CCABB0] numberWithInt:v89];
    v144 = v52;
    v124[20] = @"kaliFromPrimaryWatchRatio";
    v51 = [MEMORY[0x277CCABB0] numberWithInt:v90];
    v145 = v51;
    v124[21] = @"kaliMeetsHistoricalAlgAvailability";
    v50 = [MEMORY[0x277CCABB0] numberWithInt:v78];
    v146 = v50;
    v124[22] = @"kaliSignal25PctAtOvulationEstimate";
    v49 = [MEMORY[0x277CCABB0] numberWithInt:v79];
    v147 = v49;
    v124[23] = @"kaliSignal25PctDueToOPK";
    v48 = [MEMORY[0x277CCABB0] numberWithInt:v84];
    v148 = v48;
    v124[24] = @"kaliSignal75PctAtOvulationEstimate";
    v47 = [MEMORY[0x277CCABB0] numberWithInt:v81];
    v149 = v47;
    v124[25] = @"kaliSignal75PctDueToOPK";
    v46 = [MEMORY[0x277CCABB0] numberWithInt:v86];
    v150 = v46;
    v124[26] = @"kaliSignalMaxAtOvulationEstimate";
    v45 = [MEMORY[0x277CCABB0] numberWithInt:v83];
    v151 = v45;
    v124[27] = @"kaliSignalMaxDueToOPK";
    v44 = [MEMORY[0x277CCABB0] numberWithInt:v88];
    v152 = v44;
    v124[28] = @"kaliSignalMedianAtOvulationEstimate";
    v43 = [MEMORY[0x277CCABB0] numberWithInt:v80];
    v153 = v43;
    v124[29] = @"kaliSignalMedianDueToOPK";
    v42 = [MEMORY[0x277CCABB0] numberWithInt:v85];
    v154 = v42;
    v124[30] = @"kaliSignalMinAtOvulationEstimate";
    v41 = [MEMORY[0x277CCABB0] numberWithInt:v82];
    v155 = v41;
    v124[31] = @"kaliSignalMinDueToOPK";
    v40 = [MEMORY[0x277CCABB0] numberWithInt:v87];
    v156 = v40;
    v124[32] = @"ovulationConfirmationError25Pct";
    v39 = [MEMORY[0x277CCABB0] numberWithInt:v92];
    v157 = v39;
    v124[33] = @"ovulationConfirmationError75Pct";
    v38 = [MEMORY[0x277CCABB0] numberWithInt:v94];
    v158 = v38;
    v124[34] = @"ovulationConfirmationErrorMax";
    v37 = [MEMORY[0x277CCABB0] numberWithInt:v95];
    v159 = v37;
    v124[35] = @"ovulationConfirmationErrorMedian";
    v36 = [MEMORY[0x277CCABB0] numberWithInt:v93];
    v160 = v36;
    v124[36] = @"ovulationConfirmationErrorMin";
    v35 = [MEMORY[0x277CCABB0] numberWithInt:v91];
    v161 = v35;
    v124[37] = @"ovulationConfirmationFailureFactors";
    v34 = [MEMORY[0x277CCABB0] numberWithInt:v119];
    v162 = v34;
    v124[38] = @"ovulationConfirmationFailureKaliAvailability";
    v3 = [MEMORY[0x277CCABB0] numberWithInt:v114];
    v163 = v3;
    v124[39] = @"ovulationConfirmationFailureKaliNoise";
    v4 = [MEMORY[0x277CCABB0] numberWithInt:v115];
    v164 = v4;
    v124[40] = @"ovulationConfirmationFailureKaliSignal";
    v5 = [MEMORY[0x277CCABB0] numberWithInt:v116];
    v165 = v5;
    v124[41] = @"ovulationConfirmationFailureKaliSNR";
    v6 = [MEMORY[0x277CCABB0] numberWithInt:v117];
    v166 = v6;
    v124[42] = @"ovulationConfirmationFailureOPK";
    v7 = [MEMORY[0x277CCABB0] numberWithInt:v120];
    v167 = v7;
    v124[43] = @"ovulationConfirmationFailureShortCycles";
    v8 = [MEMORY[0x277CCABB0] numberWithInt:v118];
    v168 = v8;
    v124[44] = @"ovulationConfirmationNoFailure";
    v9 = [MEMORY[0x277CCABB0] numberWithInt:v121];
    v169 = v9;
    v124[45] = @"ovulationConfirmationNoFailureMT";
    v10 = [MEMORY[0x277CCABB0] numberWithInt:v122];
    v170 = v10;
    v124[46] = @"ratioCycleHasOPK";
    LODWORD(v11) = v76;
    v12 = [MEMORY[0x277CCABB0] numberWithFloat:v11];
    v171 = v12;
    v124[47] = @"ratioCycleWith1DayPeriod";
    LODWORD(v13) = v75;
    v14 = [MEMORY[0x277CCABB0] numberWithFloat:v13];
    v172 = v14;
    v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:buf forKeys:v124 count:48];
  }

  else
  {
    v15 = ha_get_log(v2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [(MAIHistoricalAnalyzer *)v15 analyze];
    }

    v72 = 0;
  }

  v16 = [MEMORY[0x277CBEB18] arrayWithCapacity:0x8E38E38E38E38E39 * ((v74 - v73) >> 3)];
  v17 = v73;
  for (i = v74; v17 != i; v17 += 18)
  {
    v19 = objc_opt_new();
    v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:*(v17 + 5) - *(v17 + 4)];
    v21 = *(v17 + 4);
    v22 = *(v17 + 5);
    while (v21 != v22)
    {
      if (((*v21 - 1) & 0xF8) != 0)
      {
        v23 = 0;
      }

      else
      {
        v23 = *v21;
      }

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:v23];
      [v20 addObject:v24];

      ++v21;
    }

    [v19 setPhases:v20];
    if (*(v17 + 4) == 1)
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInt:*v17];
      [v19 setFertilityStartJulianDay:v25];
    }

    if (*(v17 + 12) == 1)
    {
      v26 = [MEMORY[0x277CCABB0] numberWithInt:v17[2]];
      [v19 setFertilityEndJulianDay:v26];
    }

    [v19 setJulianDayOfMenstruationStart:v17[4]];
    [v19 setJulianDayOfMenstruationEnd:v17[5]];
    v27 = [v19 setIsDeterminant:*(v17 + 24)];
    v28 = v17[15];
    if (v28 >= 5)
    {
      v29 = ha_get_log(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
      {
        *buf = 67109120;
        *&buf[4] = v28;
        _os_log_fault_impl(&dword_2588F5000, v29, OS_LOG_TYPE_FAULT, "Unrecognized failureSrc %d: ", buf, 8u);
      }

      LOBYTE(v28) = 0;
    }

    [v19 setOvulationConfirmationFailure:v28];
    [v19 setDailyEligibleWristTemperatureCount:v17[16]];
    v30 = v17[14];
    if (v30 >= 4)
    {
      v31 = 3;
    }

    else
    {
      v31 = 3 - v30;
    }

    [v19 setPredictionPrimarySource:v31];
    [v16 addObject:v19];
  }

  *buf = &v73;
  std::vector<Nightingale::ngt_HistoricCycle>::__destroy_vector::operator()[abi:nn200100](buf);
  v32 = v16;
  v33 = v72;
  result.var1 = v33;
  result.var0 = v32;
  return result;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 16) = 0;
  *(self + 20) = 0;
  return self;
}

@end