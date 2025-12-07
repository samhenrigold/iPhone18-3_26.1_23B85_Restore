@interface ATXSlotResolution
+ (BOOL)isNotLaunchedWithinShortTimeSpan:(id)span;
+ (double)exponentialDecay:(double)decay withHalflife:(double)halflife;
+ (id)yearMonthDayComponentsForDate:(id)date;
+ (void)setDistributionBasedScoreInputsForDayOfWeekForItem:(ATXPredictionItem *)item withLaunchDistribution:(id)distribution;
+ (void)setDistributionBasedScoreInputsForItem:(ATXPredictionItem *)item withGeoHashResolution:(unint64_t)resolution withLaunchCounts:(id)counts;
+ (void)setDistributionBasedScoreInputsForTimeOfDayForItem:(ATXPredictionItem *)item withLaunchDistribution:(id)distribution;
+ (void)setSlotLogProbabilityForCandidateActionPredictions:(id)predictions;
+ (void)setSlotResolutionPredictionItemForTopUpcomingMediaActionContainer:(id)container appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability;
- (ATXSlotResolution)init;
- (ATXSlotResolution)initWithDataStore:(id)store;
- (id)actionPredictionsForStatistics:(id)statistics;
- (id)actionPredictionsForStatistics:(id)statistics appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability scoreLogger:(id)logger currentDate:(id)date;
- (id)fastStatisticsOnSlotsForBundleId:(id)id actionType:(id)type currentDate:(id)date previousLocationUUID:(id)d currentLocationUUID:(id)iD currentMotionType:(int64_t)motionType currentGeohash:(int64_t)geohash currentCoarseGeohash:(int64_t)self0;
- (id)statisticsForActionKey:(id)key;
- (id)statisticsForActionKey:(id)key context:(id)context;
- (id)statisticsForActionKey:(id)key currentDate:(id)date previousLocationUUID:(id)d currentLocationUUID:(id)iD currentMotionType:(int64_t)type currentGeohash:(int64_t)geohash currentCoarseGeohash:(int64_t)coarseGeohash;
- (id)updateStatisticsWithFeedbackForBundleId:(id)id actionType:(id)type statistics:(id)statistics currentDate:(id)date currentGeohash:(int64_t)geohash currentCoarseGeohash:(int64_t)coarseGeohash;
- (id)updateStatisticsWithHigherLevelFeaturesForStatistics:(id)statistics;
@end

@implementation ATXSlotResolution

- (ATXSlotResolution)initWithDataStore:(id)store
{
  storeCopy = store;
  if (!storeCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXSlotResolution.mm" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"dataStore"}];
  }

  v14.receiver = self;
  v14.super_class = ATXSlotResolution;
  v7 = [(ATXSlotResolution *)&v14 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_dataStore, store);
    v9 = +[ATXScoreInterpreterCache sharedInstance];
    v10 = [v9 scoreInterpreterForConsumerSubType:25];
    slotResolutionInterpreter = v8->_slotResolutionInterpreter;
    v8->_slotResolutionInterpreter = v10;
  }

  return v8;
}

- (ATXSlotResolution)init
{
  v3 = +[_ATXDataStore sharedInstance];
  v4 = [(ATXSlotResolution *)self initWithDataStore:v3];

  return v4;
}

+ (id)yearMonthDayComponentsForDate:(id)date
{
  dateCopy = date;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v5 = [currentCalendar components:28 fromDate:dateCopy];

  return v5;
}

+ (double)exponentialDecay:(double)decay withHalflife:(double)halflife
{
  if (halflife <= 0.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXSlotResolution.mm" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"halflife > 0"}];
  }

  return exp(-0.693147181 / halflife * decay);
}

- (id)fastStatisticsOnSlotsForBundleId:(id)id actionType:(id)type currentDate:(id)date previousLocationUUID:(id)d currentLocationUUID:(id)iD currentMotionType:(int64_t)motionType currentGeohash:(int64_t)geohash currentCoarseGeohash:(int64_t)self0
{
  idCopy = id;
  typeCopy = type;
  dateCopy = date;
  v60 = typeCopy;
  v61 = idCopy;
  dCopy = d;
  v59 = dateCopy;
  iDCopy = iD;
  v56 = [_ATXActionUtils timeOfDayAndDayOfWeekForDate:dateCopy timeZone:0];
  first = [v56 first];
  integerValue = [first integerValue];

  second = [v56 second];
  integerValue2 = [second integerValue];

  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  LODWORD(second) = [currentCalendar isDateInWeekend:dateCopy];
  v54 = [ATXSlotResolution yearMonthDayComponentsForDate:dateCopy];
  v22 = +[_ATXGlobals sharedInstance];
  v23 = [ATXSlotResolutionStatistics alloc];
  v24 = [MEMORY[0x277CEB2C8] getActionKeyForBundleId:idCopy actionType:typeCopy];
  v25 = [(ATXSlotResolutionStatistics *)v23 initWithActionKey:v24];

  v196[0] = 0;
  v196[1] = v196;
  v196[2] = 0x2020000000;
  v196[3] = -1;
  v195[0] = 0;
  v195[1] = v195;
  v195[2] = 0x2020000000;
  v195[3] = 0;
  v194[0] = 0;
  v194[1] = v194;
  v194[2] = 0x2020000000;
  v194[3] = 0;
  v193[0] = 0;
  v193[1] = v193;
  v193[2] = 0x2020000000;
  v193[3] = 0;
  v192[0] = 0;
  v192[1] = v192;
  v192[2] = 0x2020000000;
  v192[3] = 0;
  v191[0] = 0;
  v191[1] = v191;
  v191[2] = 0x2020000000;
  v191[3] = 0;
  v190[0] = 0;
  v190[1] = v190;
  v190[2] = 0x2020000000;
  v190[3] = 0;
  v188[0] = 0;
  v188[1] = v188;
  v188[2] = 0x2020000000;
  v189 = 0;
  v186[0] = 0;
  v186[1] = v186;
  v186[2] = 0x2020000000;
  v187 = 0;
  v185[0] = 0;
  v185[1] = v185;
  v185[2] = 0x2020000000;
  v185[3] = 0;
  v184[0] = 0;
  v184[1] = v184;
  v184[2] = 0x2020000000;
  v184[3] = 0;
  v182[0] = 0;
  v182[1] = v182;
  v182[2] = 0x2020000000;
  v183 = 0;
  v180[0] = 0;
  v180[1] = v180;
  v180[2] = 0x2020000000;
  v181 = 0;
  v178[0] = 0;
  v178[1] = v178;
  v178[2] = 0x2020000000;
  v179 = 0;
  v177[0] = 0;
  v177[1] = v177;
  v177[2] = 0x2020000000;
  v177[3] = 0;
  v176[0] = 0;
  v176[1] = v176;
  v176[2] = 0x2020000000;
  v176[3] = 0;
  v174[0] = 0;
  v174[1] = v174;
  v174[2] = 0x2020000000;
  v175 = 0;
  v173[0] = 0;
  v173[1] = v173;
  v173[2] = 0x2020000000;
  v173[3] = 0;
  v171[0] = 0;
  v171[1] = v171;
  v171[2] = 0x2020000000;
  v172 = 0;
  v169[0] = 0;
  v169[1] = v169;
  v169[2] = 0x2020000000;
  v170 = 0;
  v168[0] = 0;
  v168[1] = v168;
  v168[2] = 0x2020000000;
  v168[3] = 0;
  v166[0] = 0;
  v166[1] = v166;
  v166[2] = 0x2020000000;
  v167 = 0;
  v165[0] = 0;
  v165[1] = v165;
  v165[2] = 0x2020000000;
  v165[3] = 0;
  v164[0] = 0;
  v164[1] = v164;
  v164[2] = 0x2020000000;
  v164[3] = 0;
  v162[0] = 0;
  v162[1] = v162;
  v162[2] = 0x2020000000;
  v163 = 0;
  v160[0] = 0;
  v160[1] = v160;
  v160[2] = 0x2020000000;
  v161 = 0;
  v158[0] = 0;
  v158[1] = v158;
  v158[2] = 0x2020000000;
  v159 = 0;
  v157[0] = 0;
  v157[1] = v157;
  v157[2] = 0x2020000000;
  v157[3] = 0;
  v156[0] = 0;
  v156[1] = v156;
  v156[2] = 0x2020000000;
  v156[3] = 0;
  v155[0] = 0;
  v155[1] = v155;
  v155[2] = 0x2020000000;
  v155[3] = 0;
  v154[0] = 0;
  v154[1] = v154;
  v154[2] = 0x2020000000;
  v154[3] = 0;
  v153[0] = 0;
  v153[1] = v153;
  v153[2] = 0x2020000000;
  v153[3] = 0;
  v152[0] = 0;
  v152[1] = v152;
  v152[2] = 0x2020000000;
  v152[3] = 0;
  v151[0] = 0;
  v151[1] = v151;
  v151[2] = 0x2020000000;
  v151[3] = 0;
  v150[0] = 0;
  v150[1] = v150;
  v150[2] = 0x2020000000;
  v150[3] = 0;
  v149[0] = 0;
  v149[1] = v149;
  v149[2] = 0x2020000000;
  v149[3] = 0;
  v148[0] = 0;
  v148[1] = v148;
  v148[2] = 0x2020000000;
  v148[3] = 0;
  v147[0] = 0;
  v147[1] = v147;
  v147[2] = 0x2020000000;
  v147[3] = 0;
  v146[0] = 0;
  v146[1] = v146;
  v146[2] = 0x2020000000;
  v146[3] = 0;
  v145[0] = 0;
  v145[1] = v145;
  v145[2] = 0x2020000000;
  v145[3] = 0;
  v144[0] = 0;
  v144[1] = v144;
  v144[2] = 0x2020000000;
  v53 = v25;
  [v22 slotResolutionLaunchDecayHalflife];
  *&v144[3] = v26 * 86400.0;
  v143[0] = 0;
  v143[1] = v143;
  v143[2] = 0x2020000000;
  [v22 slotResolutionTimeOfDayLaunchDecayHalflife];
  *&v143[3] = v27 * 86400.0;
  v142[0] = 0;
  v142[1] = v142;
  v142[2] = 0x2020000000;
  [v22 slotResolutionDayOfWeekLaunchDecayHalflife];
  *&v142[3] = v28 * 86400.0;
  v141[0] = 0;
  v141[1] = v141;
  v141[2] = 0x2020000000;
  [v22 slotResolutionLocationLaunchDecayHalflife];
  *&v141[3] = v29 * 86400.0;
  v140[0] = 0;
  v140[1] = v140;
  v140[2] = 0x2020000000;
  [v22 actionSpecificGeoHashDecayHalflife];
  *&v140[3] = v30 * 86400.0;
  v139[0] = 0;
  v139[1] = v139;
  v139[2] = 0x2020000000;
  [v22 actionCoarseGeoHashDecayHalflife];
  *&v139[3] = v31 * 86400.0;
  v138[0] = 0;
  v138[1] = v138;
  v138[2] = 0x2020000000;
  [v22 slotResolutionPreviousLocationLaunchDecayHalflife];
  *&v138[3] = v32 * 86400.0;
  v137[0] = 0;
  v137[1] = v137;
  v137[2] = 0x2020000000;
  [v22 slotResolutionMotionTypeLaunchDecayHalflife];
  *&v137[3] = v33 * 86400.0;
  v136[0] = 0;
  v136[1] = v136;
  v136[2] = 0x2020000000;
  [v22 appLaunchDecayHalflife];
  *&v136[3] = v34 * 86400.0;
  v135[0] = 0;
  v135[1] = v135;
  v135[2] = 0x2020000000;
  [v22 slotResolutionPartOfWeekLaunchDecayHalflife];
  *&v135[3] = v35 * 86400.0;
  v134[0] = 0;
  v134[1] = v134;
  v134[2] = 0x2020000000;
  [v22 appAndActionCoarseTimePowLocationDecayHalflife];
  *&v134[3] = v36 * 86400.0;
  v133[0] = 0;
  v133[1] = v133;
  v133[2] = 0x2020000000;
  [v22 appAndActionSpecificTimePowLocationDecayHalflife];
  *&v133[3] = v37 * 86400.0;
  v38 = objc_opt_new();
  v131[0] = 0;
  v131[1] = v131;
  v131[2] = 0x3032000000;
  v131[3] = __Block_byref_object_copy__33;
  v131[4] = __Block_byref_object_dispose__33;
  v132 = 0;
  v39 = objc_opt_new();
  dataStore = self->_dataStore;
  v62[0] = MEMORY[0x277D85DD0];
  v62[1] = 3221225472;
  v62[2] = __172__ATXSlotResolution_fastStatisticsOnSlotsForBundleId_actionType_currentDate_previousLocationUUID_currentLocationUUID_currentMotionType_currentGeohash_currentCoarseGeohash___block_invoke;
  v62[3] = &unk_27859A7C0;
  v72 = v196;
  v73 = v195;
  v125 = integerValue;
  v74 = v194;
  v75 = v193;
  v76 = v192;
  v77 = v191;
  v78 = v190;
  v79 = v188;
  v126 = integerValue2;
  v51 = currentCalendar;
  v63 = v51;
  v80 = v158;
  v81 = v182;
  v50 = iDCopy;
  v64 = v50;
  v82 = v186;
  v127 = second;
  v83 = v185;
  v84 = v184;
  motionTypeCopy = motionType;
  v85 = v180;
  v86 = v178;
  v41 = dCopy;
  v87 = v177;
  v88 = v176;
  v89 = v174;
  v90 = v173;
  v91 = v171;
  v92 = v169;
  v93 = v168;
  v94 = v166;
  v65 = v41;
  selfCopy = self;
  geohashCopy = geohash;
  v95 = v162;
  v96 = v160;
  v97 = v165;
  v98 = v164;
  coarseGeohashCopy = coarseGeohash;
  v99 = v157;
  v42 = v59;
  v100 = v156;
  v101 = v144;
  v102 = v155;
  v103 = v143;
  v104 = v154;
  v105 = v142;
  v106 = v153;
  v107 = v141;
  v108 = v152;
  v109 = v140;
  v110 = v151;
  v111 = v139;
  v112 = v150;
  v113 = v138;
  v114 = v149;
  v115 = v137;
  v116 = v148;
  v117 = v136;
  v118 = v147;
  v119 = v135;
  v120 = v146;
  v121 = v134;
  v122 = v145;
  v123 = v133;
  v124 = v131;
  v67 = v42;
  v68 = v39;
  v43 = v38;
  v69 = v43;
  v44 = v53;
  v70 = v44;
  v45 = v54;
  v71 = v45;
  v46 = v39;
  [(_ATXDataStore *)dataStore enumerateSlotUuidsOfType:v60 bundleId:v61 block:v62];
  v47 = v71;
  v48 = v44;

  _Block_object_dispose(v131, 8);
  _Block_object_dispose(v133, 8);
  _Block_object_dispose(v134, 8);
  _Block_object_dispose(v135, 8);
  _Block_object_dispose(v136, 8);
  _Block_object_dispose(v137, 8);
  _Block_object_dispose(v138, 8);
  _Block_object_dispose(v139, 8);
  _Block_object_dispose(v140, 8);
  _Block_object_dispose(v141, 8);
  _Block_object_dispose(v142, 8);
  _Block_object_dispose(v143, 8);
  _Block_object_dispose(v144, 8);
  _Block_object_dispose(v145, 8);
  _Block_object_dispose(v146, 8);
  _Block_object_dispose(v147, 8);
  _Block_object_dispose(v148, 8);
  _Block_object_dispose(v149, 8);
  _Block_object_dispose(v150, 8);
  _Block_object_dispose(v151, 8);
  _Block_object_dispose(v152, 8);
  _Block_object_dispose(v153, 8);
  _Block_object_dispose(v154, 8);
  _Block_object_dispose(v155, 8);
  _Block_object_dispose(v156, 8);
  _Block_object_dispose(v157, 8);
  _Block_object_dispose(v158, 8);
  _Block_object_dispose(v160, 8);
  _Block_object_dispose(v162, 8);
  _Block_object_dispose(v164, 8);
  _Block_object_dispose(v165, 8);
  _Block_object_dispose(v166, 8);
  _Block_object_dispose(v168, 8);
  _Block_object_dispose(v169, 8);
  _Block_object_dispose(v171, 8);
  _Block_object_dispose(v173, 8);
  _Block_object_dispose(v174, 8);
  _Block_object_dispose(v176, 8);
  _Block_object_dispose(v177, 8);
  _Block_object_dispose(v178, 8);
  _Block_object_dispose(v180, 8);
  _Block_object_dispose(v182, 8);
  _Block_object_dispose(v184, 8);
  _Block_object_dispose(v185, 8);
  _Block_object_dispose(v186, 8);
  _Block_object_dispose(v188, 8);
  _Block_object_dispose(v190, 8);
  _Block_object_dispose(v191, 8);
  _Block_object_dispose(v192, 8);
  _Block_object_dispose(v193, 8);
  _Block_object_dispose(v194, 8);
  _Block_object_dispose(v195, 8);
  _Block_object_dispose(v196, 8);

  return v48;
}

uint64_t __172__ATXSlotResolution_fastStatisticsOnSlotsForBundleId_actionType_currentDate_previousLocationUUID_currentLocationUUID_currentMotionType_currentGeohash_currentCoarseGeohash___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, double a9, uint64_t a10, uint64_t a11, void *a12, void *a13, uint64_t a14, void *a15, void *a16, uint64_t a17, uint64_t a18)
{
  v266 = *MEMORY[0x277D85DE8];
  v259 = a2;
  v255 = a7;
  v261 = a8;
  v257 = a12;
  v256 = a13;
  v258 = a15;
  v254 = a16;
  if (*(*(*(a1 + 104) + 8) + 24) != a3)
  {
    [ATXSlotResolutionParametersStatistics _smoothedCountForTimeOfDay:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 112) + 8) + 24) = v24;
    [ATXSlotResolutionParametersStatistics _smoothedCountForThirtyMinuteWindow:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 120) + 8) + 24) = v25;
    [ATXSlotResolutionParametersStatistics _smoothedCountForHourWindow:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 128) + 8) + 24) = v26;
    [ATXSlotResolutionParametersStatistics _smoothedCountForEightHourWindow:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 136) + 8) + 24) = v27;
    [ATXSlotResolutionParametersStatistics _smoothedCountForCoarseTimeOfDay:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 144) + 8) + 24) = v28;
    [ATXSlotResolutionParametersStatistics _smoothedBudgetForTimeOfDay:a10 currentTimeOfDay:*(a1 + 528)];
    *(*(*(a1 + 152) + 8) + 24) = v29;
    *(*(*(a1 + 160) + 8) + 24) = *(a1 + 536) == a11;
    v30 = [*(a1 + 32) isDateInWeekend:v261];
    *(*(*(a1 + 168) + 8) + 24) = [_ATXActionUtils timeBucketFromZeroToTwentyFour:a10];
    if (*(a1 + 40))
    {
      v31 = [v256 isEqual:?];
    }

    else
    {
      v31 = 0;
    }

    *(*(*(a1 + 176) + 8) + 24) = v31;
    *(*(*(a1 + 184) + 8) + 24) = *(a1 + 544) == v30;
    v32 = *(*(*(a1 + 184) + 8) + 24);
    v33 = 0.0;
    v34 = 0.0;
    if (v32)
    {
      v35 = *(*(*(a1 + 176) + 8) + 24);
      if (v35)
      {
        v34 = vcvtd_n_f64_s32(v35 + v32, 1uLL);
      }
    }

    *(*(*(a1 + 192) + 8) + 24) = v34;
    v36 = *(*(*(a1 + 144) + 8) + 24);
    if (v36 != 0.0)
    {
      v37 = *(*(*(a1 + 184) + 8) + 24);
      if (v37)
      {
        v33 = (v36 + v37) * 0.5;
      }
    }

    *(*(*(a1 + 200) + 8) + 24) = v33;
    v38 = a14 != 4 && *(a1 + 552) == a14;
    *(*(*(a1 + 208) + 8) + 24) = v38;
    v39 = v257;
    if (v257)
    {
      v39 = [v257 isEqual:*(a1 + 48)];
    }

    *(*(*(a1 + 216) + 8) + 24) = v39;
    v40 = *(*(*(a1 + 144) + 8) + 24);
    v41 = 0.0;
    v42 = 0.0;
    if (v40 != 0.0)
    {
      v43 = *(*(*(a1 + 160) + 8) + 24);
      if (v43)
      {
        v42 = (v40 + v43) * 0.5;
      }
    }

    *(*(*(a1 + 224) + 8) + 24) = v42;
    v44 = *(*(*(a1 + 144) + 8) + 24);
    if (v44 != 0.0)
    {
      v45 = *(*(*(a1 + 176) + 8) + 24);
      if (v45)
      {
        v41 = (v44 + v45) * 0.5;
      }
    }

    *(*(*(a1 + 232) + 8) + 24) = v41;
    v46 = *(*(*(a1 + 160) + 8) + 24);
    if (v46)
    {
      v47 = *(*(*(a1 + 176) + 8) + 24);
      if (v47)
      {
        v46 = vcvtd_n_f64_s32(v47 + v46, 1uLL);
      }

      else
      {
        v46 = 0;
      }
    }

    *(*(*(a1 + 240) + 8) + 24) = v46;
    v48 = *(*(*(a1 + 144) + 8) + 24);
    v49 = 0.0;
    if (v48 != 0.0)
    {
      v50 = *(*(*(a1 + 160) + 8) + 24);
      if (v50)
      {
        v51 = *(*(*(a1 + 176) + 8) + 24);
        if (v51)
        {
          v49 = (v48 + v50 + v51) / 3.0;
        }
      }
    }

    *(*(*(a1 + 248) + 8) + 24) = v49;
    v52 = *(*(*(a1 + 216) + 8) + 24);
    if (v52)
    {
      v53 = *(*(*(a1 + 208) + 8) + 24);
      if (v53)
      {
        v52 = vcvtd_n_f64_s32(v53 + v52, 1uLL);
      }

      else
      {
        v52 = 0;
      }
    }

    *(*(*(a1 + 256) + 8) + 24) = v52;
    v54 = *(*(*(a1 + 216) + 8) + 24);
    if (v54)
    {
      v55 = *(*(*(a1 + 176) + 8) + 24);
      if (v55)
      {
        v54 = vcvtd_n_f64_s32(v55 + v54, 1uLL);
      }

      else
      {
        v54 = 0;
      }
    }

    *(*(*(a1 + 264) + 8) + 24) = v54;
    v56 = *(*(*(a1 + 144) + 8) + 24);
    v57 = 0.0;
    if (v56 != 0.0)
    {
      v58 = *(*(*(a1 + 216) + 8) + 24);
      if (v58)
      {
        v57 = (v56 + v58) * 0.5;
      }
    }

    *(*(*(a1 + 272) + 8) + 24) = v57;
    v59 = *(*(*(a1 + 160) + 8) + 24);
    if (v59)
    {
      v60 = *(*(*(a1 + 216) + 8) + 24);
      if (v60)
      {
        v59 = vcvtd_n_f64_s32(v60 + v59, 1uLL);
      }

      else
      {
        v59 = 0;
      }
    }

    *(*(*(a1 + 280) + 8) + 24) = v59;
    *(*(*(a1 + 288) + 8) + 24) = [objc_opt_class() matchForCurrentGeohash:*(a1 + 560) rowGeohash:a18];
    *(*(*(a1 + 296) + 8) + 24) = [objc_opt_class() matchForCurrentGeohash:*(a1 + 568) rowGeohash:a17];
    v61 = *(*(*(a1 + 144) + 8) + 24);
    v62 = 0.0;
    v63 = 0.0;
    if (v61 != 0.0)
    {
      v64 = *(*(*(a1 + 184) + 8) + 24);
      if (v64)
      {
        v65 = *(*(*(a1 + 288) + 8) + 24);
        if (v65)
        {
          v63 = (v61 + v64 + v65) / 3.0;
        }
      }
    }

    *(*(*(a1 + 304) + 8) + 24) = v63;
    v66 = *(*(*(a1 + 120) + 8) + 24);
    if (v66 != 0.0)
    {
      v67 = *(*(*(a1 + 160) + 8) + 24);
      if (v67)
      {
        v68 = *(*(*(a1 + 296) + 8) + 24);
        if (v68)
        {
          v62 = (v66 + v67 + v68) / 3.0;
        }
      }
    }

    *(*(*(a1 + 312) + 8) + 24) = v62;
    [*(a1 + 64) timeIntervalSinceDate:v261];
    *(*(*(a1 + 320) + 8) + 24) = v69;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 336) + 8) + 24)];
    *(*(*(a1 + 328) + 8) + 24) = v70;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 352) + 8) + 24)];
    *(*(*(a1 + 344) + 8) + 24) = v71;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 368) + 8) + 24)];
    *(*(*(a1 + 360) + 8) + 24) = v72;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 384) + 8) + 24)];
    *(*(*(a1 + 376) + 8) + 24) = v73;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 400) + 8) + 24)];
    *(*(*(a1 + 392) + 8) + 24) = v74;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 416) + 8) + 24)];
    *(*(*(a1 + 408) + 8) + 24) = v75;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 432) + 8) + 24)];
    *(*(*(a1 + 424) + 8) + 24) = v76;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 448) + 8) + 24)];
    *(*(*(a1 + 440) + 8) + 24) = v77;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 464) + 8) + 24)];
    *(*(*(a1 + 456) + 8) + 24) = v78;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 480) + 8) + 24)];
    *(*(*(a1 + 472) + 8) + 24) = v79;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 496) + 8) + 24)];
    *(*(*(a1 + 488) + 8) + 24) = v80;
    [ATXSlotResolution exponentialDecay:*(*(*(a1 + 320) + 8) + 24) withHalflife:*(*(*(a1 + 512) + 8) + 24)];
    *(*(*(a1 + 504) + 8) + 24) = v81;
    v82 = [ATXSlotResolution yearMonthDayComponentsForDate:v261];
    v83 = *(*(a1 + 520) + 8);
    v84 = *(v83 + 40);
    *(v83 + 40) = v82;

    *(*(*(a1 + 104) + 8) + 24) = a3;
    [*(a1 + 72) removeAllObjects];
  }

  v85 = [objc_opt_class() shouldCountRowForGeohashOccurrencesCalculationForCurrentGeohash:*(a1 + 560) rowGeohash:a18];
  v86 = [objc_opt_class() shouldCountRowForGeohashOccurrencesCalculationForCurrentGeohash:*(a1 + 568) rowGeohash:a17];
  v252 = [objc_opt_class() shouldCountRowForGeohashIndividualContextStatistics:*(a1 + 560) rowGeohash:a18];
  v87 = [objc_opt_class() shouldCountRowForGeohashIndividualContextStatistics:*(a1 + 568) rowGeohash:a17];
  v88 = *(a1 + 80);
  v89 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
  LOBYTE(v88) = [v88 containsObject:v89];

  if ((v88 & 1) == 0)
  {
    *(*(a1 + 88) + 48) = *(*(a1 + 88) + 48) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 112) + 8) + 24);
    *(*(a1 + 88) + 56) = *(*(a1 + 88) + 56) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 120) + 8) + 24);
    *(*(a1 + 88) + 64) = *(*(a1 + 88) + 64) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 128) + 8) + 24);
    *(*(a1 + 88) + 72) = *(*(a1 + 88) + 72) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 136) + 8) + 24);
    *(*(a1 + 88) + 80) = *(*(a1 + 88) + 80) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 144) + 8) + 24);
    *(*(a1 + 88) + 88) = *(*(a1 + 88) + 88) + *(*(*(a1 + 360) + 8) + 24) * a9 * *(*(*(a1 + 160) + 8) + 24);
    *(*(a1 + 88) + 96) = *(*(a1 + 88) + 96) + *(*(*(a1 + 472) + 8) + 24) * a9 * *(*(*(a1 + 184) + 8) + 24);
    v90 = *(*(*(a1 + 472) + 8) + 24);
    v91 = *(*(a1 + 376) + 8);
    if (v90 < *(v91 + 24))
    {
      v90 = *(v91 + 24);
    }

    *(*(a1 + 88) + 296) = *(*(a1 + 88) + 296) + v90 * a9 * *(*(*(a1 + 192) + 8) + 24);
    v92 = *(*(*(a1 + 472) + 8) + 24);
    v93 = *(*(a1 + 344) + 8);
    if (v92 < *(v93 + 24))
    {
      v92 = *(v93 + 24);
    }

    *(*(a1 + 88) + 304) = *(*(a1 + 88) + 304) + v92 * a9 * *(*(*(a1 + 200) + 8) + 24);
    *(*(a1 + 88) + 104) = *(*(a1 + 88) + 104) + *(*(*(a1 + 376) + 8) + 24) * a9 * *(*(*(a1 + 176) + 8) + 24);
    *(*(a1 + 88) + 120) = *(*(a1 + 88) + 120) + *(*(*(a1 + 424) + 8) + 24) * a9 * *(*(*(a1 + 216) + 8) + 24);
    *(*(a1 + 88) + 112) = *(*(a1 + 88) + 112) + *(*(*(a1 + 440) + 8) + 24) * a9 * *(*(*(a1 + 208) + 8) + 24);
    v94 = *(*(*(a1 + 344) + 8) + 24);
    v95 = *(*(a1 + 360) + 8);
    if (v94 < *(v95 + 24))
    {
      v94 = *(v95 + 24);
    }

    *(*(a1 + 88) + 240) = *(*(a1 + 88) + 240) + v94 * a9 * *(*(*(a1 + 224) + 8) + 24);
    v96 = *(*(*(a1 + 344) + 8) + 24);
    v97 = *(*(a1 + 376) + 8);
    if (v96 < *(v97 + 24))
    {
      v96 = *(v97 + 24);
    }

    *(*(a1 + 88) + 232) = *(*(a1 + 88) + 232) + v96 * a9 * *(*(*(a1 + 232) + 8) + 24);
    v98 = *(*(*(a1 + 360) + 8) + 24);
    v99 = *(*(a1 + 376) + 8);
    if (v98 < *(v99 + 24))
    {
      v98 = *(v99 + 24);
    }

    *(*(a1 + 88) + 248) = *(*(a1 + 88) + 248) + v98 * a9 * *(*(*(a1 + 240) + 8) + 24);
    v100 = *(*(*(a1 + 344) + 8) + 24);
    v101 = *(*(*(a1 + 360) + 8) + 24);
    v102 = *(*(a1 + 376) + 8);
    if (v101 < *(v102 + 24))
    {
      v101 = *(v102 + 24);
    }

    if (v100 < v101)
    {
      v100 = v101;
    }

    *(*(a1 + 88) + 256) = *(*(a1 + 88) + 256) + v100 * a9 * *(*(*(a1 + 248) + 8) + 24);
    v103 = *(*(*(a1 + 424) + 8) + 24);
    v104 = *(*(a1 + 440) + 8);
    if (v103 < *(v104 + 24))
    {
      v103 = *(v104 + 24);
    }

    *(*(a1 + 88) + 264) = *(*(a1 + 88) + 264) + v103 * a9 * *(*(*(a1 + 256) + 8) + 24);
    v105 = *(*(*(a1 + 424) + 8) + 24);
    v106 = *(*(a1 + 376) + 8);
    if (v105 < *(v106 + 24))
    {
      v105 = *(v106 + 24);
    }

    *(*(a1 + 88) + 272) = *(*(a1 + 88) + 272) + v105 * a9 * *(*(*(a1 + 264) + 8) + 24);
    v107 = *(*(*(a1 + 344) + 8) + 24);
    v108 = *(*(a1 + 424) + 8);
    if (v107 < *(v108 + 24))
    {
      v107 = *(v108 + 24);
    }

    *(*(a1 + 88) + 280) = *(*(a1 + 88) + 280) + v107 * a9 * *(*(*(a1 + 272) + 8) + 24);
    v109 = *(*(*(a1 + 360) + 8) + 24);
    v110 = *(*(a1 + 424) + 8);
    if (v109 < *(v110 + 24))
    {
      v109 = *(v110 + 24);
    }

    *(*(a1 + 88) + 288) = *(*(a1 + 88) + 288) + v109 * a9 * *(*(*(a1 + 280) + 8) + 24);
    *(*(a1 + 88) + 440) = *(*(a1 + 88) + 440) + *(*(*(a1 + 488) + 8) + 24) * a9 * *(*(*(a1 + 304) + 8) + 24);
    *(*(a1 + 88) + 488) = *(*(a1 + 88) + 488) + *(*(*(a1 + 504) + 8) + 24) * a9 * *(*(*(a1 + 312) + 8) + 24);
    *(*(a1 + 88) + 312) = *(*(a1 + 88) + 312) + a9 * *(*(*(a1 + 344) + 8) + 24);
    *(*(a1 + 88) + 320) = *(*(a1 + 88) + 320) + a9 * *(*(*(a1 + 360) + 8) + 24);
    *(*(a1 + 88) + 328) = *(*(a1 + 88) + 328) + a9 * *(*(*(a1 + 376) + 8) + 24);
    *(*(a1 + 88) + 336) = *(*(a1 + 88) + 336) + a9 * *(*(*(a1 + 440) + 8) + 24);
    *(*(a1 + 88) + 344) = *(*(a1 + 88) + 344) + a9 * *(*(*(a1 + 424) + 8) + 24);
    *(*(a1 + 88) + 352) = *(*(a1 + 88) + 352) + a9 * *(*(*(a1 + 472) + 8) + 24);
    v111 = *(*(*(a1 + 344) + 8) + 24);
    if (v111 < *(*(*(a1 + 360) + 8) + 24))
    {
      v111 = *(*(*(a1 + 360) + 8) + 24);
    }

    *(*(a1 + 88) + 360) = *(*(a1 + 88) + 360) + a9 * v111;
    v112 = *(*(*(a1 + 344) + 8) + 24);
    v113 = *(*(a1 + 376) + 8);
    if (v112 < *(v113 + 24))
    {
      v112 = *(v113 + 24);
    }

    *(*(a1 + 88) + 368) = *(*(a1 + 88) + 368) + a9 * v112;
    v114 = *(*(*(a1 + 360) + 8) + 24);
    v115 = *(*(a1 + 376) + 8);
    if (v114 < *(v115 + 24))
    {
      v114 = *(v115 + 24);
    }

    *(*(a1 + 88) + 376) = *(*(a1 + 88) + 376) + a9 * v114;
    v116 = *(*(*(a1 + 344) + 8) + 24);
    v117 = *(*(*(a1 + 360) + 8) + 24);
    v118 = *(*(a1 + 376) + 8);
    if (v117 < *(v118 + 24))
    {
      v117 = *(v118 + 24);
    }

    if (v116 < v117)
    {
      v116 = v117;
    }

    *(*(a1 + 88) + 384) = *(*(a1 + 88) + 384) + a9 * v116;
    v119 = *(*(*(a1 + 424) + 8) + 24);
    v120 = *(*(a1 + 376) + 8);
    if (v119 < *(v120 + 24))
    {
      v119 = *(v120 + 24);
    }

    *(*(a1 + 88) + 392) = *(*(a1 + 88) + 392) + a9 * v119;
    v121 = *(*(*(a1 + 424) + 8) + 24);
    v122 = *(*(a1 + 440) + 8);
    if (v121 < *(v122 + 24))
    {
      v121 = *(v122 + 24);
    }

    *(*(a1 + 88) + 400) = *(*(a1 + 88) + 400) + a9 * v121;
    v123 = *(*(*(a1 + 344) + 8) + 24);
    v124 = *(*(a1 + 424) + 8);
    if (v123 < *(v124 + 24))
    {
      v123 = *(v124 + 24);
    }

    *(*(a1 + 88) + 408) = *(*(a1 + 88) + 408) + a9 * v123;
    v125 = *(*(*(a1 + 360) + 8) + 24);
    v126 = *(*(a1 + 424) + 8);
    if (v125 < *(v126 + 24))
    {
      v125 = *(v126 + 24);
    }

    *(*(a1 + 88) + 416) = *(*(a1 + 88) + 416) + a9 * v125;
    v127 = *(*(*(a1 + 472) + 8) + 24);
    v128 = *(*(a1 + 376) + 8);
    if (v127 < *(v128 + 24))
    {
      v127 = *(v128 + 24);
    }

    *(*(a1 + 88) + 424) = *(*(a1 + 88) + 424) + a9 * v127;
    v129 = *(*(*(a1 + 472) + 8) + 24);
    v130 = *(*(a1 + 344) + 8);
    if (v129 < *(v130 + 24))
    {
      v129 = *(v130 + 24);
    }

    *(*(a1 + 88) + 432) = *(*(a1 + 88) + 432) + a9 * v129;
    if (v85)
    {
      *(*(a1 + 88) + 448) = *(*(a1 + 88) + 448) + a9 * *(*(*(a1 + 488) + 8) + 24);
    }

    if (v86)
    {
      *(*(a1 + 88) + 496) = *(*(a1 + 88) + 496) + a9 * *(*(*(a1 + 504) + 8) + 24);
    }

    if (v252)
    {
      *(*(a1 + 88) + 544) = *(*(a1 + 88) + 544) + *(*(*(a1 + 408) + 8) + 24) * a9 * *(*(*(a1 + 288) + 8) + 24);
    }

    if (v87)
    {
      *(*(a1 + 88) + 552) = *(*(a1 + 88) + 552) + *(*(*(a1 + 392) + 8) + 24) * a9 * *(*(*(a1 + 296) + 8) + 24);
    }

    *(*(a1 + 88) + 536) = *(*(a1 + 88) + 536) + *(*(*(a1 + 360) + 8) + 24) * a9 * *(*(*(a1 + 160) + 8) + 24);
    *(*(a1 + 88) + 560) = *(*(a1 + 88) + 560) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 128) + 8) + 24);
    *(*(a1 + 88) + 32) = *(*(a1 + 88) + 32) + a9 * *(*(*(a1 + 328) + 8) + 24);
    [*(*(a1 + 88) + 128) addObject:*(*(*(a1 + 520) + 8) + 40)];
    v131 = *(a1 + 80);
    v132 = [MEMORY[0x277CCABB0] numberWithLongLong:a3];
    [v131 addObject:v132];
  }

  v251 = v87;
  v133 = [[ATXMinimalSlotResolutionParameters alloc] initWithParameterHash:a4 slotHash:a5 uuid:v259 paramCount:a6];
  v134 = [*(a1 + 72) containsObject:v133];
  if (v134)
  {
    v135 = __atxlog_handle_action_prediction(v134);
    if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v263 = v255;
      v264 = 2048;
      v265 = a3;
      _os_log_impl(&dword_2263AA000, v135, OS_LOG_TYPE_DEFAULT, "Skipping previously encountered parameter combination for actionType: %@ alogRowID: %lld", buf, 0x16u);
    }

    goto LABEL_197;
  }

  [*(a1 + 72) addObject:v133];
  v136 = [*(*(a1 + 88) + 16) objectForKey:v133];

  if (!v136)
  {
    v137 = *(*(a1 + 88) + 16);
    v138 = [[ATXSlotResolutionParametersStatistics alloc] initWithNumParameters:a6];
    [v137 setObject:v138 forKey:v133];

    ++*(*(a1 + 88) + 40);
  }

  v139 = [*(*(a1 + 88) + 16) objectForKeyedSubscript:v133];
  v140 = v139;
  ++*(v139 + 8);
  *(v139 + 16) = *(v139 + 16) + a9;
  *(v139 + 232) = *(v139 + 232) + a9 * *(*(*(a1 + 328) + 8) + 24);
  *(v139 + 240) = *(v139 + 240) + a9 * *(*(*(a1 + 344) + 8) + 24);
  *(v139 + 248) = *(v139 + 248) + a9 * *(*(*(a1 + 360) + 8) + 24);
  *(v139 + 256) = *(v139 + 256) + a9 * *(*(*(a1 + 472) + 8) + 24);
  *(v139 + 264) = *(v139 + 264) + a9 * *(*(*(a1 + 376) + 8) + 24);
  *(v139 + 272) = *(v139 + 272) + a9 * *(*(*(a1 + 424) + 8) + 24);
  *(v139 + 280) = *(v139 + 280) + a9 * *(*(*(a1 + 440) + 8) + 24);
  v141 = *(*(*(a1 + 344) + 8) + 24);
  v142 = *(*(a1 + 360) + 8);
  if (v141 < *(v142 + 24))
  {
    v141 = *(v142 + 24);
  }

  *(v139 + 288) = *(v139 + 288) + a9 * v141;
  v143 = *(*(*(a1 + 344) + 8) + 24);
  v144 = *(*(a1 + 376) + 8);
  if (v143 < *(v144 + 24))
  {
    v143 = *(v144 + 24);
  }

  *(v139 + 296) = *(v139 + 296) + a9 * v143;
  v145 = *(*(*(a1 + 360) + 8) + 24);
  v146 = *(*(a1 + 376) + 8);
  if (v145 < *(v146 + 24))
  {
    v145 = *(v146 + 24);
  }

  *(v139 + 304) = *(v139 + 304) + a9 * v145;
  v147 = *(*(*(a1 + 344) + 8) + 24);
  v148 = *(*(*(a1 + 360) + 8) + 24);
  v149 = *(*(a1 + 376) + 8);
  if (v148 < *(v149 + 24))
  {
    v148 = *(v149 + 24);
  }

  if (v147 < v148)
  {
    v147 = v148;
  }

  *(v139 + 312) = *(v139 + 312) + a9 * v147;
  v150 = *(*(*(a1 + 424) + 8) + 24);
  if (v150 < *(*(*(a1 + 440) + 8) + 24))
  {
    v150 = *(*(*(a1 + 440) + 8) + 24);
  }

  *(v139 + 320) = *(v139 + 320) + a9 * v150;
  v151 = *(*(*(a1 + 424) + 8) + 24);
  v152 = *(*(a1 + 376) + 8);
  if (v151 < *(v152 + 24))
  {
    v151 = *(v152 + 24);
  }

  *(v139 + 328) = *(v139 + 328) + a9 * v151;
  v153 = *(*(*(a1 + 344) + 8) + 24);
  v154 = *(*(a1 + 424) + 8);
  if (v153 < *(v154 + 24))
  {
    v153 = *(v154 + 24);
  }

  *(v139 + 336) = *(v139 + 336) + a9 * v153;
  v155 = *(*(*(a1 + 360) + 8) + 24);
  if (v155 < *(*(*(a1 + 424) + 8) + 24))
  {
    v155 = *(*(*(a1 + 424) + 8) + 24);
  }

  *(v139 + 344) = *(v139 + 344) + a9 * v155;
  v156 = *(*(*(a1 + 472) + 8) + 24);
  v157 = *(*(a1 + 376) + 8);
  if (v156 < *(v157 + 24))
  {
    v156 = *(v157 + 24);
  }

  *(v139 + 352) = *(v139 + 352) + a9 * v156;
  v158 = *(*(*(a1 + 472) + 8) + 24);
  v159 = *(*(a1 + 344) + 8);
  if (v158 < *(v159 + 24))
  {
    v158 = *(v159 + 24);
  }

  *(v139 + 360) = *(v139 + 360) + a9 * v158;
  if (v85)
  {
    *(v139 + 648) = *(v139 + 648) + a9 * *(*(*(a1 + 488) + 8) + 24);
  }

  if (v86)
  {
    *(v139 + 696) = *(v139 + 696) + a9 * *(*(*(a1 + 504) + 8) + 24);
  }

  *(v139 + 368) = *(v139 + 368) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 112) + 8) + 24);
  *(v139 + 376) = *(v139 + 376) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 120) + 8) + 24);
  *(v139 + 384) = *(v139 + 384) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 128) + 8) + 24);
  *(v139 + 392) = *(v139 + 392) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 136) + 8) + 24);
  *(v139 + 400) = *(v139 + 400) + *(*(*(a1 + 344) + 8) + 24) * a9 * *(*(*(a1 + 144) + 8) + 24);
  *(v139 + 408) = *(v139 + 408) + *(*(*(a1 + 360) + 8) + 24) * a9 * *(*(*(a1 + 160) + 8) + 24);
  *(v139 + 416) = *(v139 + 416) + *(*(*(a1 + 472) + 8) + 24) * a9 * *(*(*(a1 + 184) + 8) + 24);
  v160 = *(*(*(a1 + 472) + 8) + 24);
  v161 = *(*(a1 + 376) + 8);
  if (v160 < *(v161 + 24))
  {
    v160 = *(v161 + 24);
  }

  *(v139 + 424) = *(v139 + 424) + v160 * a9 * *(*(*(a1 + 192) + 8) + 24);
  v162 = *(*(*(a1 + 472) + 8) + 24);
  v163 = *(*(a1 + 344) + 8);
  if (v162 < *(v163 + 24))
  {
    v162 = *(v163 + 24);
  }

  *(v139 + 520) = *(v139 + 520) + v162 * a9 * *(*(*(a1 + 200) + 8) + 24);
  *(v139 + 432) = *(v139 + 432) + *(*(*(a1 + 376) + 8) + 24) * a9 * *(*(*(a1 + 176) + 8) + 24);
  *(v139 + 448) = *(v139 + 448) + *(*(*(a1 + 424) + 8) + 24) * a9 * *(*(*(a1 + 216) + 8) + 24);
  *(v139 + 440) = *(v139 + 440) + *(*(*(a1 + 440) + 8) + 24) * a9 * *(*(*(a1 + 208) + 8) + 24);
  v164 = *(*(*(a1 + 344) + 8) + 24);
  v165 = *(*(a1 + 360) + 8);
  if (v164 < *(v165 + 24))
  {
    v164 = *(v165 + 24);
  }

  *(v139 + 464) = *(v139 + 464) + v164 * a9 * *(*(*(a1 + 224) + 8) + 24);
  v166 = *(*(*(a1 + 344) + 8) + 24);
  v167 = *(*(a1 + 376) + 8);
  if (v166 < *(v167 + 24))
  {
    v166 = *(v167 + 24);
  }

  *(v139 + 456) = *(v139 + 456) + v166 * a9 * *(*(*(a1 + 232) + 8) + 24);
  v168 = *(*(*(a1 + 360) + 8) + 24);
  v169 = *(*(a1 + 376) + 8);
  if (v168 < *(v169 + 24))
  {
    v168 = *(v169 + 24);
  }

  *(v139 + 472) = *(v139 + 472) + v168 * a9 * *(*(*(a1 + 240) + 8) + 24);
  v170 = *(*(*(a1 + 344) + 8) + 24);
  v171 = *(*(*(a1 + 360) + 8) + 24);
  v172 = *(*(a1 + 376) + 8);
  if (v171 < *(v172 + 24))
  {
    v171 = *(v172 + 24);
  }

  if (v170 < v171)
  {
    v170 = v171;
  }

  *(v139 + 480) = *(v139 + 480) + v170 * a9 * *(*(*(a1 + 248) + 8) + 24);
  v173 = *(*(*(a1 + 424) + 8) + 24);
  v174 = *(*(a1 + 440) + 8);
  if (v173 < *(v174 + 24))
  {
    v173 = *(v174 + 24);
  }

  *(v139 + 488) = *(v139 + 488) + v173 * a9 * *(*(*(a1 + 256) + 8) + 24);
  v175 = *(*(*(a1 + 424) + 8) + 24);
  v176 = *(*(a1 + 376) + 8);
  if (v175 < *(v176 + 24))
  {
    v175 = *(v176 + 24);
  }

  *(v139 + 496) = *(v139 + 496) + v175 * a9 * *(*(*(a1 + 264) + 8) + 24);
  v177 = *(*(*(a1 + 344) + 8) + 24);
  v178 = *(*(a1 + 424) + 8);
  if (v177 < *(v178 + 24))
  {
    v177 = *(v178 + 24);
  }

  *(v139 + 504) = *(v139 + 504) + v177 * a9 * *(*(*(a1 + 272) + 8) + 24);
  v179 = *(*(*(a1 + 360) + 8) + 24);
  v180 = *(*(a1 + 424) + 8);
  if (v179 < *(v180 + 24))
  {
    v179 = *(v180 + 24);
  }

  *(v139 + 512) = *(v139 + 512) + v179 * a9 * *(*(*(a1 + 280) + 8) + 24);
  *(v139 + 640) = *(v139 + 640) + *(*(*(a1 + 488) + 8) + 24) * a9 * *(*(*(a1 + 304) + 8) + 24);
  *(v139 + 688) = *(v139 + 688) + *(*(*(a1 + 504) + 8) + 24) * a9 * *(*(*(a1 + 312) + 8) + 24);
  v181 = *(v139 + 1136);
  v182 = [MEMORY[0x277CCABB0] numberWithInteger:a11];
  v183 = [v181 objectForKey:v182];

  if (!v183)
  {
    v184 = *(v140 + 1136);
    v185 = [MEMORY[0x277CCABB0] numberWithInteger:a11];
    [v184 setObject:&unk_283A558F8 forKeyedSubscript:v185];
  }

  v186 = *(v140 + 1136);
  v187 = [MEMORY[0x277CCABB0] numberWithInteger:a11];
  v188 = [v186 objectForKeyedSubscript:v187];
  [v188 doubleValue];
  v190 = v189;

  v191 = [MEMORY[0x277CCABB0] numberWithDouble:v190 + a9 * *(*(*(a1 + 360) + 8) + 24)];
  v192 = *(v140 + 1136);
  v193 = [MEMORY[0x277CCABB0] numberWithInteger:a11];
  [v192 setObject:v191 forKeyedSubscript:v193];

  v194 = *(v140 + 1144);
  v195 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 168) + 8) + 24)];
  v196 = [v194 objectForKey:v195];

  if (!v196)
  {
    v197 = *(v140 + 1144);
    v198 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 168) + 8) + 24)];
    [v197 setObject:&unk_283A558F8 forKeyedSubscript:v198];
  }

  v199 = *(v140 + 1144);
  v200 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 168) + 8) + 24)];
  v201 = [v199 objectForKeyedSubscript:v200];
  [v201 doubleValue];
  v203 = v202;

  v204 = [MEMORY[0x277CCABB0] numberWithDouble:v203 + a9 * *(*(*(a1 + 344) + 8) + 24)];
  v205 = *(v140 + 1144);
  v206 = [MEMORY[0x277CCABB0] numberWithInt:*(*(*(a1 + 168) + 8) + 24)];
  [v205 setObject:v204 forKeyedSubscript:v206];

  v207 = *(v140 + 1152);
  v208 = [MEMORY[0x277CCABB0] numberWithLongLong:a18];
  v209 = [v207 objectForKey:v208];

  if (!v209)
  {
    v210 = *(v140 + 1152);
    v211 = [MEMORY[0x277CCABB0] numberWithLongLong:a18];
    [v210 setObject:&unk_283A558F8 forKeyedSubscript:v211];
  }

  v212 = *(v140 + 1152);
  v213 = [MEMORY[0x277CCABB0] numberWithLongLong:a18];
  v214 = [v212 objectForKeyedSubscript:v213];
  [v214 doubleValue];
  v216 = v215;

  v217 = [MEMORY[0x277CCABB0] numberWithDouble:v216 + a9 * *(*(*(a1 + 408) + 8) + 24)];
  v218 = *(v140 + 1152);
  v219 = [MEMORY[0x277CCABB0] numberWithLongLong:a18];
  [v218 setObject:v217 forKeyedSubscript:v219];

  v220 = *(v140 + 1160);
  v221 = [MEMORY[0x277CCABB0] numberWithLongLong:a17];
  v222 = [v220 objectForKey:v221];

  if (!v222)
  {
    v223 = *(v140 + 1160);
    v224 = [MEMORY[0x277CCABB0] numberWithLongLong:a17];
    [v223 setObject:&unk_283A558F8 forKeyedSubscript:v224];
  }

  v225 = *(v140 + 1160);
  v226 = [MEMORY[0x277CCABB0] numberWithLongLong:a17];
  v227 = [v225 objectForKeyedSubscript:v226];
  [v227 doubleValue];
  v229 = v228;

  v230 = [MEMORY[0x277CCABB0] numberWithDouble:v229 + a9 * *(*(*(a1 + 392) + 8) + 24)];
  v231 = *(v140 + 1160);
  v232 = [MEMORY[0x277CCABB0] numberWithLongLong:a17];
  [v231 setObject:v230 forKeyedSubscript:v232];

  if (v252)
  {
    *(v140 + 744) = *(v140 + 744) + *(*(*(a1 + 408) + 8) + 24) * a9 * *(*(*(a1 + 288) + 8) + 24);
    *(v140 + 752) = *(v140 + 752) + a9 * *(*(*(a1 + 408) + 8) + 24);
  }

  if (v251)
  {
    *(v140 + 760) = *(v140 + 760) + *(*(*(a1 + 392) + 8) + 24) * a9 * *(*(*(a1 + 296) + 8) + 24);
    *(v140 + 768) = *(v140 + 768) + a9 * *(*(*(a1 + 392) + 8) + 24);
  }

  *(v140 + 736) = *(v140 + 736) + a9 * *(*(*(a1 + 360) + 8) + 24);
  *(v140 + 776) = *(v140 + 776) + a9 * *(*(*(a1 + 344) + 8) + 24);
  v233 = *(v140 + 48);
  if (v233)
  {
    v234 = [v233 earlierDate:v261];
  }

  else
  {
    v234 = v261;
  }

  v235 = *(v140 + 48);
  *(v140 + 48) = v234;

  v236 = *(v140 + 56);
  if (v236)
  {
    v237 = [v236 laterDate:v261];
  }

  else
  {
    v237 = v261;
  }

  v238 = *(v140 + 56);
  *(v140 + 56) = v237;

  if (*(v140 + 32))
  {
    v239 = [v258 isEqualToDate:?];
    if (v258)
    {
      v240 = v239;
    }

    else
    {
      v240 = 1;
    }

    if (v240)
    {
      goto LABEL_188;
    }

    goto LABEL_187;
  }

  if (v258)
  {
LABEL_187:
    objc_storeStrong((v140 + 32), a15);
    *(v140 + 592) = *(*(*(a1 + 456) + 8) + 24) + *(v140 + 592);
  }

LABEL_188:
  if (([*(v140 + 40) containsObject:*(*(*(a1 + 520) + 8) + 40)] & 1) == 0)
  {
    if ([*(v140 + 40) count])
    {
      [v140 _updateTimeOfDayBudgetStatisticsForNewTimeOfDayBudget:*(v140 + 632)];
      *(v140 + 632) = 0;
    }

    [*(v140 + 40) addObject:*(*(*(a1 + 520) + 8) + 40)];
  }

  *(v140 + 632) = *(*(*(a1 + 152) + 8) + 24) + *(v140 + 632);
  if ([*(*(*(a1 + 520) + 8) + 40) isEqual:*(a1 + 96)])
  {
    *(v140 + 624) = *(*(*(a1 + 152) + 8) + 24) + *(v140 + 624);
  }

  v241 = *(*(a1 + 88) + 24);
  v242 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  v243 = [v241 objectForKey:v242];

  if (!v243)
  {
    v244 = *(*(a1 + 88) + 24);
    v245 = objc_alloc_init(ATXSlotResolutionSlotSetStatistics);
    v246 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
    [v244 setObject:v245 forKey:v246];
  }

  v247 = *(*(a1 + 88) + 24);
  v248 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:a5];
  v249 = [v247 objectForKeyedSubscript:v248];

  v249[2] = v249[2] + a9 * *(*(*(a1 + 328) + 8) + 24);
LABEL_197:

  return 1;
}

- (id)updateStatisticsWithFeedbackForBundleId:(id)id actionType:(id)type statistics:(id)statistics currentDate:(id)date currentGeohash:(int64_t)geohash currentCoarseGeohash:(int64_t)coarseGeohash
{
  idCopy = id;
  typeCopy = type;
  statisticsCopy = statistics;
  dateCopy = date;
  v37 = statisticsCopy;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v16 = +[_ATXGlobals sharedInstance];
  v36 = [_ATXActionUtils timeOfDayAndDayOfWeekForDate:dateCopy timeZone:0];
  first = [v36 first];
  integerValue = [first integerValue];

  second = [v36 second];
  integerValue2 = [second integerValue];

  LODWORD(second) = [currentCalendar isDateInWeekend:dateCopy];
  v65[0] = 0;
  v65[1] = v65;
  v65[2] = 0x2020000000;
  [v16 slotResolutionTimeOfDayLaunchDecayHalflife];
  *&v65[3] = v21 * 86400.0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x2020000000;
  [v16 slotResolutionDayOfWeekLaunchDecayHalflife];
  *&v64[3] = v22 * 86400.0;
  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x2020000000;
  [v16 slotResolutionPartOfWeekLaunchDecayHalflife];
  *&v63[3] = v23 * 86400.0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  [v16 appAndActionCoarseTimePowLocationDecayHalflife];
  *&v62[3] = v24 * 86400.0;
  v61[0] = 0;
  v61[1] = v61;
  v61[2] = 0x2020000000;
  [v16 appAndActionSpecificTimePowLocationDecayHalflife];
  *&v61[3] = v25 * 86400.0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  [v16 actionCoarseGeoHashDecayHalflife];
  *&v60[3] = v26 * 86400.0;
  v59[0] = 0;
  v59[1] = v59;
  v59[2] = 0x2020000000;
  [v16 actionSpecificGeoHashDecayHalflife];
  *&v59[3] = v27 * 86400.0;
  dataStore = self->_dataStore;
  v41[0] = MEMORY[0x277D85DD0];
  v41[1] = 3221225472;
  v41[2] = __131__ATXSlotResolution_updateStatisticsWithFeedbackForBundleId_actionType_statistics_currentDate_currentGeohash_currentCoarseGeohash___block_invoke;
  v41[3] = &unk_27859A7E8;
  v54 = integerValue;
  v55 = integerValue2;
  v29 = currentCalendar;
  v42 = v29;
  selfCopy = self;
  coarseGeohashCopy = coarseGeohash;
  geohashCopy = geohash;
  v47 = v65;
  v48 = v64;
  v49 = v63;
  v50 = v62;
  v51 = v61;
  v52 = v60;
  v56 = second;
  v53 = v59;
  v30 = v37;
  v44 = v30;
  v31 = dateCopy;
  v45 = v31;
  v32 = v16;
  v46 = v32;
  [(_ATXDataStore *)dataStore enumerateFeedbackForActionOfType:typeCopy bundleId:idCopy block:v41];
  v33 = v46;
  v34 = v30;

  _Block_object_dispose(v59, 8);
  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v61, 8);
  _Block_object_dispose(v62, 8);
  _Block_object_dispose(v63, 8);
  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v65, 8);

  return v34;
}

uint64_t __131__ATXSlotResolution_updateStatisticsWithFeedbackForBundleId_actionType_statistics_currentDate_currentGeohash_currentCoarseGeohash___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10)
{
  v95 = a2;
  v98 = a3;
  v17 = a4;
  [v17 timeIntervalSinceNow];
  v19 = v18;
  +[_ATXFeedbackConstants actionDecayHalfLifeSeconds];
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:v20];
  v93 = v21;
  v96 = [ATXSlotResolution yearMonthDayComponentsForDate:v17];
  v94 = [_ATXActionUtils timeOfDayAndDayOfWeekForDate:v17 timeZone:0];
  v22 = [v94 first];
  v23 = [v22 integerValue];

  v24 = [v94 second];
  v25 = [v24 integerValue];

  [ATXSlotResolutionParametersStatistics _smoothedCountForTimeOfDay:v23 currentTimeOfDay:*(a1 + 128)];
  v27 = v26;
  [ATXSlotResolutionParametersStatistics _smoothedCountForCoarseTimeOfDay:v23 currentTimeOfDay:*(a1 + 128)];
  v29 = v28;
  [ATXSlotResolutionParametersStatistics _smoothedCountForThirtyMinuteWindow:v23 currentTimeOfDay:*(a1 + 128)];
  v31 = v30;
  [ATXSlotResolutionParametersStatistics _smoothedCountForHourWindow:v23 currentTimeOfDay:*(a1 + 128)];
  v88 = v32;
  v33 = *(a1 + 136);
  v34 = [*(a1 + 32) isDateInWeekend:v17];
  v35 = *(a1 + 144);
  v97 = [objc_opt_class() matchForCurrentGeohash:*(a1 + 152) rowGeohash:a8];
  v36 = [objc_opt_class() matchForCurrentGeohash:*(a1 + 160) rowGeohash:a7];
  v37 = v36;
  v39 = v29 != 0.0 && v35 == v34;
  v40 = (v29 + 1.0 + 1.0) / 3.0;
  if ((v39 & v97) != 1)
  {
    v40 = 0.0;
  }

  v90 = v40;
  v42 = v31 != 0.0 && v33 == v25;
  if ((v42 & v36) == 1)
  {
    v43 = (v31 + 1.0 + 1.0) / 3.0;
  }

  else
  {
    v43 = 0.0;
  }

  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 72) + 8) + 24)];
  v92 = v44;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 80) + 8) + 24)];
  v91 = v45;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 88) + 8) + 24)];
  v85 = v46;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 96) + 8) + 24)];
  v89 = v47;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 104) + 8) + 24)];
  v49 = v48;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 112) + 8) + 24)];
  v86 = v50;
  [ATXSlotResolution exponentialDecay:-v19 withHalflife:*(*(*(a1 + 120) + 8) + 24)];
  if (v19 <= 0.0)
  {
    v84 = v51;
    v87 = [[ATXMinimalSlotResolutionParameters alloc] initWithAction:v95 slots:v98];
    v52 = [*(*(a1 + 48) + 16) objectForKey:v87];

    if (!v52)
    {
LABEL_97:

      goto LABEL_98;
    }

    v53 = [*(*(a1 + 48) + 16) objectForKeyedSubscript:v87];
    v83 = v19 / -60.0;
    if ([MEMORY[0x277CEBCF0] isActionSpotlightConsumerSubType:a5])
    {
      if (v19 >= -3600.0)
      {
        if (a9 != 0.0)
        {
          v53[17] = v53[17] + 1.0;
        }

        if (a10 != 0.0)
        {
          v53[18] = v53[18] + 1.0;
        }
      }

      if (v19 >= -7200.0)
      {
        if (a9 != 0.0)
        {
          v53[19] = v53[19] + 1.0;
        }

        if (a10 != 0.0)
        {
          v53[20] = v53[20] + 1.0;
        }
      }

      if ([*(a1 + 32) isDate:v17 inSameDayAsDate:*(a1 + 56)])
      {
        if (a9 != 0.0)
        {
          v53[21] = v53[21] + 1.0;
        }

        if (a10 != 0.0)
        {
          v53[22] = v53[22] + 1.0;
        }
      }

      [*(a1 + 64) maximumActionFeedbackMeanCalculationEntryAge];
      if (v54 * 86400.0 >= -v19)
      {
        if (a10 != 0.0)
        {
          *(*(a1 + 48) + 184) = *(*(a1 + 48) + 184) + 1.0;
        }

        if (a9 != 0.0)
        {
          *(*(a1 + 48) + 176) = *(*(a1 + 48) + 176) + 1.0;
        }

        [*(*(a1 + 48) + 192) addObject:v96];
      }

      if (a9 != 0.0)
      {
        v55 = v53[11];
        if (v55 >= v83)
        {
          v55 = v19 / -60.0;
        }

        v53[11] = v55;
        v53[68] = v53[68] + v92 * v27;
        v53[69] = v53[69] + v92 * v29;
        v53[23] = v93 + v53[23];
        *(*(a1 + 48) + 160) = v93 + *(*(a1 + 48) + 160);
        if (*(a1 + 136) == v25)
        {
          v53[67] = v91 + v53[67];
        }

        v56 = [*(a1 + 32) isDateInWeekend:*(a1 + 56)];
        if (v56 == [*(a1 + 32) isDateInWeekend:v17])
        {
          v53[66] = v85 + v53[66];
        }
      }

      v57 = v88;
      v58 = v43;
      if (a10 == 0.0)
      {
        goto LABEL_84;
      }

      v53[24] = v93 + v53[24];
      *(*(a1 + 48) + 168) = v93 + *(*(a1 + 48) + 168);
      if (a6 != 2)
      {
        goto LABEL_84;
      }

      v59 = &OBJC_IVAR___ATXSlotResolutionParametersStatistics__minutesSinceLastExplicitRejectInSpotlight;
    }

    else
    {
      v57 = v88;
      v58 = v43;
      if ((a5 - 38) < 2 || a5 == 36)
      {
        if (a9 != 0.0)
        {
          v63 = 0.0;
          if (v33 == v25)
          {
            v63 = 1.0;
          }

          v64 = v91 * v63;
          v53[114] = v53[114] + v64 * a9;
          v53[118] = v53[118] + v88 * v92 * a9;
          v65 = v86 * v97;
          v53[122] = v53[122] + v65 * a9;
          v66 = v84 * v37;
          v53[126] = v53[126] + v66 * a9;
          v53[130] = v53[130] + v90 * v89 * a9;
          v53[134] = v53[134] + v43 * v49 * a9;
          v53[115] = v53[115] + v91 * a9;
          v53[119] = v53[119] + v92 * a9;
          v53[123] = v53[123] + v86 * a9;
          v53[127] = v53[127] + v84 * a9;
          v53[131] = v53[131] + v89 * a9;
          v53[135] = v53[135] + v49 * a9;
          *(*(a1 + 48) + 632) = *(*(a1 + 48) + 632) + v64 * a9;
          *(*(a1 + 48) + 648) = *(*(a1 + 48) + 648) + v88 * v92 * a9;
          *(*(a1 + 48) + 664) = *(*(a1 + 48) + 664) + v65 * a9;
          *(*(a1 + 48) + 680) = *(*(a1 + 48) + 680) + v66 * a9;
          *(*(a1 + 48) + 696) = *(*(a1 + 48) + 696) + v90 * v89 * a9;
          *(*(a1 + 48) + 712) = *(*(a1 + 48) + 712) + v43 * v49 * a9;
        }

        if (a10 == 0.0)
        {
          goto LABEL_84;
        }

        v67 = 0.0;
        if (v33 == v25)
        {
          v67 = 1.0;
        }

        v68 = v91 * v67;
        v53[116] = v53[116] + v68 * a10;
        v53[120] = v53[120] + v88 * v92 * a10;
        v69 = v86 * v97;
        v53[124] = v53[124] + v69 * a10;
        v70 = v84 * v37;
        v53[128] = v53[128] + v70 * a10;
        v53[132] = v53[132] + v90 * v89 * a10;
        v53[136] = v53[136] + v43 * v49 * a10;
        v53[117] = v53[117] + v91 * a10;
        v53[121] = v53[121] + v92 * a10;
        v53[125] = v53[125] + v86 * a10;
        v53[129] = v53[129] + v84 * a10;
        v53[133] = v53[133] + v89 * a10;
        v53[137] = v53[137] + v49 * a10;
        *(*(a1 + 48) + 640) = *(*(a1 + 48) + 640) + v68 * a10;
        *(*(a1 + 48) + 656) = *(*(a1 + 48) + 656) + v88 * v92 * a10;
        *(*(a1 + 48) + 672) = *(*(a1 + 48) + 672) + v69 * a10;
        *(*(a1 + 48) + 688) = *(*(a1 + 48) + 688) + v70 * a10;
        *(*(a1 + 48) + 704) = *(*(a1 + 48) + 704) + v90 * v89 * a10;
        *(*(a1 + 48) + 720) = *(*(a1 + 48) + 720) + v43 * v49 * a10;
        if (a6 != 2)
        {
          goto LABEL_84;
        }

        v59 = &OBJC_IVAR___ATXSlotResolutionParametersStatistics__minutesSinceLastExplicitRejectInHomeScreen;
      }

      else
      {
        if (a5 != 22)
        {
          goto LABEL_84;
        }

        if ([*(a1 + 32) isDate:v17 inSameDayAsDate:*(a1 + 56)])
        {
          if (a9 != 0.0)
          {
            v53[25] = v53[25] + 1.0;
            *(*(a1 + 48) + 200) = *(*(a1 + 48) + 200) + 1.0;
          }

          if (a10 != 0.0)
          {
            v53[26] = v53[26] + 1.0;
            *(*(a1 + 48) + 208) = *(*(a1 + 48) + 208) + 1.0;
          }
        }

        v57 = v88;
        v58 = v43;
        if (a9 != 0.0)
        {
          v60 = v53[13];
          if (v60 >= v83)
          {
            v60 = v83;
          }

          v53[13] = v60;
          v53[72] = v53[72] + v92 * v27;
          v53[73] = v53[73] + v92 * v29;
          v53[27] = v93 + v53[27];
          *(*(a1 + 48) + 216) = v93 + *(*(a1 + 48) + 216);
          if (*(a1 + 136) == v25)
          {
            v53[71] = v91 + v53[71];
          }

          v61 = [*(a1 + 32) isDateInWeekend:*(a1 + 56)];
          v57 = v88;
          v58 = v43;
          if (v61 == [*(a1 + 32) isDateInWeekend:v17])
          {
            v53[70] = v85 + v53[70];
          }
        }

        if (a10 == 0.0)
        {
          goto LABEL_84;
        }

        v62 = v53[14];
        if (v62 >= v83)
        {
          v62 = v83;
        }

        v53[14] = v62;
        v53[28] = v93 + v53[28];
        *(*(a1 + 48) + 224) = v93 + *(*(a1 + 48) + 224);
        if (a6 != 2)
        {
          goto LABEL_84;
        }

        v59 = &OBJC_IVAR___ATXSlotResolutionParametersStatistics__minutesSinceLastExplicitRejectInLockscreen;
      }
    }

    v71 = *v59;
    v72 = *(v53 + v71);
    if (v72 >= v83)
    {
      v72 = v83;
    }

    *(v53 + v71) = v72;
LABEL_84:
    if ([objc_opt_class() shouldCountRowForGeohashOccurrencesCalculationForCurrentGeohash:*(a1 + 152) rowGeohash:a8])
    {
      v53[83] = v53[83] + v89 * a9;
      v53[85] = v53[85] + v89 * a10;
      *(*(a1 + 48) + 464) = *(*(a1 + 48) + 464) + v89 * a9;
      *(*(a1 + 48) + 480) = *(*(a1 + 48) + 480) + v89 * a10;
    }

    if ([objc_opt_class() shouldCountRowForGeohashOccurrencesCalculationForCurrentGeohash:*(a1 + 160) rowGeohash:a7])
    {
      v53[89] = v53[89] + v49 * a9;
      v53[91] = v53[91] + v49 * a10;
      *(*(a1 + 48) + 512) = *(*(a1 + 48) + 512) + v49 * a9;
      *(*(a1 + 48) + 528) = *(*(a1 + 48) + 528) + v49 * a10;
    }

    v73 = v90 * v89;
    v53[82] = v53[82] + v90 * v89 * a9;
    v74 = v58 * v49;
    v53[88] = v53[88] + v58 * v49 * a9;
    v53[84] = v53[84] + v90 * v89 * a10;
    v53[90] = v53[90] + v58 * v49 * a10;
    v75 = v57 * v92;
    v53[98] = v53[98] + v57 * v92 * a9;
    v76 = 0.0;
    if (v33 == v25)
    {
      v76 = 1.0;
    }

    v77 = v91 * v76;
    v53[102] = v53[102] + v91 * v76 * a9;
    v53[100] = v53[100] + v75 * a10;
    v53[104] = v53[104] + v91 * v76 * a10;
    v53[99] = v53[99] + v92 * a9;
    v53[103] = v53[103] + v91 * a9;
    v53[101] = v53[101] + v92 * a10;
    v53[105] = v53[105] + v91 * a10;
    v78 = [objc_opt_class() shouldCountRowForGeohashIndividualContextStatistics:*(a1 + 160) rowGeohash:a7];
    v79 = [objc_opt_class() shouldCountRowForGeohashIndividualContextStatistics:*(a1 + 152) rowGeohash:a8];
    if (v78)
    {
      v80 = v84 * v37;
      v53[110] = v53[110] + v80 * a9;
      v53[111] = v53[111] + v84 * a9;
      v53[113] = v53[113] + v84 * a10;
      v53[112] = v53[112] + v80 * a10;
      *(*(a1 + 48) + 616) = *(*(a1 + 48) + 616) + v80 * a9;
      *(*(a1 + 48) + 624) = *(*(a1 + 48) + 624) + v80 * a10;
    }

    if (v79)
    {
      v81 = v86 * v97;
      v53[106] = v53[106] + v81 * a9;
      v53[107] = v53[107] + v86 * a9;
      v53[109] = v53[109] + v86 * a10;
      v53[108] = v53[108] + v81 * a10;
      *(*(a1 + 48) + 600) = *(*(a1 + 48) + 600) + v81 * a9;
      *(*(a1 + 48) + 608) = *(*(a1 + 48) + 608) + v81 * a10;
    }

    *(*(a1 + 48) + 456) = *(*(a1 + 48) + 456) + v73 * a9;
    *(*(a1 + 48) + 504) = *(*(a1 + 48) + 504) + v74 * a9;
    *(*(a1 + 48) + 472) = *(*(a1 + 48) + 472) + v73 * a10;
    *(*(a1 + 48) + 520) = *(*(a1 + 48) + 520) + v74 * a10;
    *(*(a1 + 48) + 584) = *(*(a1 + 48) + 584) + v77 * a9;
    *(*(a1 + 48) + 592) = *(*(a1 + 48) + 592) + v77 * a10;
    *(*(a1 + 48) + 568) = *(*(a1 + 48) + 568) + v75 * a9;
    *(*(a1 + 48) + 576) = *(*(a1 + 48) + 576) + v75 * a10;
    v53[8] = v53[8] + v93 * a9;
    v53[9] = v53[9] + v93 * a10;
    *(*(a1 + 48) + 136) = *(*(a1 + 48) + 136) + v93 * a9;
    *(*(a1 + 48) + 144) = *(*(a1 + 48) + 144) + v93 * a10;
    if (a6 == 2)
    {
      *(*(a1 + 48) + 152) = *(*(a1 + 48) + 152) + a10;
      v53[10] = v53[10] + a10;
    }

    goto LABEL_97;
  }

LABEL_98:

  return 1;
}

- (id)updateStatisticsWithHigherLevelFeaturesForStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v4 = statisticsCopy[2];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __74__ATXSlotResolution_updateStatisticsWithHigherLevelFeaturesForStatistics___block_invoke;
  v7[3] = &unk_27859A810;
  v5 = statisticsCopy;
  v8 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

void __74__ATXSlotResolution_updateStatisticsWithHigherLevelFeaturesForStatistics___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = a2;
  v5 = a3;
  [v5 _totalFeedbackEvents];
  if (v6 > 0.0)
  {
    v7 = *(a1 + 32);
    [v5 _confirmRatio];
    [v7 _updateConfirmRatioStatisticsForNewConfirmRatio:?];
  }

  v8 = *(*(a1 + 32) + 24);
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v31, "slotHash")}];
  v10 = [v8 objectForKeyedSubscript:v9];

  ATXProbability(v11, v5[29], v10[2]);
  v13 = v12;
  v15 = -log2(v12);
  if (v13 <= 0.0)
  {
    v15 = -0.0;
  }

  v10[1] = v10[1] + v15 * v13;
  ATXProbability(v14, v5[48], *(*(a1 + 32) + 560));
  v17 = v16;
  v19 = -log2(v16);
  if (v17 <= 0.0)
  {
    v19 = -0.0;
  }

  v5[138] = v5[138] + v19 * v17;
  ATXProbability(v18, v5[51], *(*(a1 + 32) + 536));
  v21 = v20;
  v23 = -log2(v20);
  if (v21 <= 0.0)
  {
    v23 = -0.0;
  }

  v5[139] = v5[139] + v23 * v21;
  ATXProbability(v22, v5[93], *(*(a1 + 32) + 544));
  v25 = v24;
  v27 = -log2(v24);
  if (v25 <= 0.0)
  {
    v27 = -0.0;
  }

  v5[140] = v5[140] + v27 * v25;
  ATXProbability(v26, v5[95], *(*(a1 + 32) + 552));
  v29 = v28;
  v30 = -log2(v28);
  if (v29 <= 0.0)
  {
    v30 = -0.0;
  }

  v5[141] = v5[141] + v30 * v29;
  [v5 _updateTimeOfDayBudgetStatisticsForNewTimeOfDayBudget:v5[79]];
}

- (id)statisticsForActionKey:(id)key
{
  keyCopy = key;
  mEMORY[0x277D41BF8] = [MEMORY[0x277D41BF8] sharedInstance];
  previousLOIAndCurrentLOI = [mEMORY[0x277D41BF8] previousLOIAndCurrentLOI];

  first = [previousLOIAndCurrentLOI first];
  uuid = [first uuid];

  second = [previousLOIAndCurrentLOI second];
  uuid2 = [second uuid];

  mEMORY[0x277D41C38] = [MEMORY[0x277D41C38] sharedInstance];
  getCurrentActivity = [mEMORY[0x277D41C38] getCurrentActivity];

  mEMORY[0x277D41BF8]2 = [MEMORY[0x277D41BF8] sharedInstance];
  getCurrentLocation = [mEMORY[0x277D41BF8]2 getCurrentLocation];

  mEMORY[0x277D41BF8]3 = [MEMORY[0x277D41BF8] sharedInstance];
  locationEnabled = [mEMORY[0x277D41BF8]3 locationEnabled];

  v17 = [ATXPrivacyPreservingLocationHash privacyPreservingGeohashForLocation:getCurrentLocation locationEnabled:locationEnabled];
  v18 = [ATXPrivacyPreservingLocationHash privacyPreservingCoarseGeohashForLocation:getCurrentLocation locationEnabled:locationEnabled];
  v19 = objc_opt_new();
  v20 = -[ATXSlotResolution statisticsForActionKey:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:](self, "statisticsForActionKey:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:", keyCopy, v19, uuid, uuid2, [getCurrentActivity motiontype], v17, v18);

  return v20;
}

- (id)statisticsForActionKey:(id)key context:(id)context
{
  keyCopy = key;
  contextCopy = context;
  timeContext = [contextCopy timeContext];
  date = [timeContext date];
  locationMotionContext = [contextCopy locationMotionContext];
  previousLOI = [locationMotionContext previousLOI];
  uuid = [previousLOI uuid];
  locationMotionContext2 = [contextCopy locationMotionContext];
  currentLOI = [locationMotionContext2 currentLOI];
  uuid2 = [currentLOI uuid];
  locationMotionContext3 = [contextCopy locationMotionContext];
  motionType = [locationMotionContext3 motionType];
  locationMotionContext4 = [contextCopy locationMotionContext];
  geohash = [locationMotionContext4 geohash];
  locationMotionContext5 = [contextCopy locationMotionContext];
  v12 = -[ATXSlotResolution statisticsForActionKey:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:](self, "statisticsForActionKey:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:", keyCopy, date, uuid, uuid2, motionType, geohash, [locationMotionContext5 coarseGeohash]);

  return v12;
}

- (id)statisticsForActionKey:(id)key currentDate:(id)date previousLocationUUID:(id)d currentLocationUUID:(id)iD currentMotionType:(int64_t)type currentGeohash:(int64_t)geohash currentCoarseGeohash:(int64_t)coarseGeohash
{
  v36 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  dateCopy = date;
  dCopy = d;
  iDCopy = iD;
  v16 = [_ATXActionUtils getBundleIdAndActionTypeFromActionKey:keyCopy];
  first = [v16 first];
  second = [v16 second];
  v19 = second;
  if (first)
  {
    v20 = second == 0;
  }

  else
  {
    v20 = 1;
  }

  if (v20)
  {
    v21 = __atxlog_handle_action_prediction(second);
    v29 = dateCopy;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v35 = keyCopy;
      _os_log_impl(&dword_2263AA000, v21, OS_LOG_TYPE_DEFAULT, "Error parsing '%@'", buf, 0xCu);
    }

    v27 = [[ATXSlotResolutionStatistics alloc] initWithActionKey:keyCopy];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = iDCopy;
    v24 = v22;
    v31 = v23;
    v25 = [ATXSlotResolution fastStatisticsOnSlotsForBundleId:"fastStatisticsOnSlotsForBundleId:actionType:currentDate:previousLocationUUID:currentLocationUUID:currentMotionType:currentGeohash:currentCoarseGeohash:" actionType:first currentDate:v19 previousLocationUUID:dateCopy currentLocationUUID:dCopy currentMotionType:geohash currentGeohash:coarseGeohash currentCoarseGeohash:?];
    v26 = [(ATXSlotResolution *)self updateStatisticsWithFeedbackForBundleId:first actionType:v19 statistics:v25 currentDate:dateCopy currentGeohash:geohash currentCoarseGeohash:coarseGeohash];

    v27 = [(ATXSlotResolution *)self updateStatisticsWithHigherLevelFeaturesForStatistics:v26];

    v28 = v24;
    iDCopy = v31;
    v29 = dateCopy;
    objc_autoreleasePoolPop(v28);
  }

  return v27;
}

- (id)actionPredictionsForStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v5 = objc_opt_new();
  v6 = [(ATXSlotResolution *)self actionPredictionsForStatistics:statisticsCopy appActionPredictionItem:0 appActionLogProbability:0 scoreLogger:v5 currentDate:0.0];

  return v6;
}

- (id)actionPredictionsForStatistics:(id)statistics appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability scoreLogger:(id)logger currentDate:(id)date
{
  v7 = MEMORY[0x28223BE20](self);
  v9 = v8;
  v11 = v10;
  v12 = v7;
  v14 = v13;
  v16 = v15;
  v88 = *MEMORY[0x277D85DE8];
  v18 = v17;
  v19 = v11;
  v20 = v9;
  v57 = v18;
  v58 = v19;
  v21 = [_ATXActionUtils getBundleIdFromActionKey:v18[1]];
  v59 = v21;
  if (v21)
  {
    v22.i32[1] = -1059153344;
    *v22.i32 = -31337.0;
    *v85 = 0;
    v86 = -31337.0;
    v87 = 0;
    v23 = vdupq_lane_s32(v22, 0);
    for (i = 16; i != 3328; i += 16)
    {
      *&v85[i] = v23;
    }

    if (v14)
    {
      v25 = v14;
    }

    else
    {
      v25 = v85;
    }

    v81[0] = 0;
    v81[1] = v81;
    v81[2] = 0x3032000000;
    v81[3] = __Block_byref_object_copy__33;
    v81[4] = __Block_byref_object_dispose__33;
    v82 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:2];
    v26 = objc_opt_new();
    v27 = v18[2];
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __124__ATXSlotResolution_actionPredictionsForStatistics_appActionPredictionItem_appActionLogProbability_scoreLogger_currentDate___block_invoke;
    v71[3] = &unk_27859A838;
    v72 = v18;
    v28 = v19;
    v73 = v28;
    v79 = v25;
    v80 = v12;
    v74 = v20;
    v78 = v81;
    v75 = v21;
    v76 = v16;
    v56 = v26;
    v77 = v56;
    [v27 enumerateKeysAndObjectsUsingBlock:v71];
    if ([MEMORY[0x277CEBC58] isSpotlightPlusEnabled])
    {
      v29 = [v56 count];
      if (v29)
      {
        v55 = v28;
        v30 = __atxlog_handle_action_prediction(v29);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          [ATXSlotResolution actionPredictionsForStatistics:v30 appActionPredictionItem:? appActionLogProbability:? scoreLogger:? currentDate:?];
        }

        v69 = 0;
        v68 = 0;
        v70 = 0;
        v64 = 0u;
        v65 = 0u;
        v66 = 0u;
        v67 = 0u;
        v31 = v56;
        v32 = [v31 countByEnumeratingWithState:&v64 objects:v84 count:16];
        if (v32)
        {
          v33 = *v65;
          do
          {
            for (j = 0; j != v32; ++j)
            {
              if (*v65 != v33)
              {
                objc_enumerationMutation(v31);
              }

              v35 = *(*(&v64 + 1) + 8 * j);
              if (v35)
              {
                objc_msgSend_predictionItem(v35);
              }

              else
              {
                bzero(&v62, 0xD08uLL);
              }

              v36 = v69;
              if (v69 >= v70)
              {
                v39 = 0x13A524387AC82261 * ((v69 - v68) >> 3) + 1;
                if (v39 > 0x13A524387AC822)
                {
                  std::vector<ATXPredictionItem>::__throw_length_error[abi:ne200100]();
                }

                if (0x274A4870F59044C2 * ((v70 - v68) >> 3) > v39)
                {
                  v39 = 0x274A4870F59044C2 * ((v70 - v68) >> 3);
                }

                if ((0x13A524387AC82261 * ((v70 - v68) >> 3)) >= 0x9D2921C3D6411)
                {
                  v40 = 0x13A524387AC822;
                }

                else
                {
                  v40 = v39;
                }

                v83[4] = &v68;
                if (v40)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<ATXPredictionItem>>(&v68, v40);
                }

                v41 = (8 * ((v69 - v68) >> 3));
                v83[0] = 0;
                v83[1] = v41;
                v83[3] = 0;
                v42 = v62;
                v62 = 0;
                *v41 = v42;
                memcpy(v41 + 1, v63, 0xCFEuLL);
                v83[2] = v41 + 417;
                std::vector<ATXPredictionItem>::__swap_out_circular_buffer(&v68, v83);
                v38 = v69;
                std::__split_buffer<ATXPredictionItem>::~__split_buffer(v83);
              }

              else
              {
                v37 = v62;
                v62 = 0;
                *v69 = v37;
                memcpy(v36 + 1, v63, 0xCFEuLL);
                v38 = v36 + 417;
              }

              v69 = v38;
            }

            v32 = [v31 countByEnumeratingWithState:&v64 objects:v84 count:16];
          }

          while (v32);
        }

        v43 = +[_ATXAppPredictor sharedInstance];
        [v43 scoreActionsWithFeaturesUsingCoreML:&v68 consumerSubType:25 scoreLogger:v55];

        v44 = 0;
        for (k = 0; k < [v31 count]; ++k)
        {
          *&v46 = ATXSetInput(v68 + v44, 0x17FuLL, *(v68 + v44 + 3328));
          v47 = [v31 objectAtIndexedSubscript:{k, v46}];
          v48 = (v68 + v44 + 8);
          v49 = *(v68 + v44);
          v60 = v49;
          memcpy(v61, v48, sizeof(v61));
          if (v47)
          {
            [v47 setPredictionItem:&v60];
          }

          else
          {
          }

          v44 += 3336;
        }

        v62 = &v68;
        std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](&v62);
      }
    }

    v53 = v77;
    v52 = v56;

    _Block_object_dispose(v81, 8);
  }

  else
  {
    v50 = __atxlog_handle_action_prediction(0);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = v18[1];
      *v85 = 138412290;
      *&v85[4] = v51;
      _os_log_impl(&dword_2263AA000, v50, OS_LOG_TYPE_DEFAULT, "Error parsing '%@'", v85, 0xCu);
    }

    v52 = MEMORY[0x277CBEBF8];
  }

  return v52;
}

void __124__ATXSlotResolution_actionPredictionsForStatistics_appActionPredictionItem_appActionLogProbability_scoreLogger_currentDate___block_invoke(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v132[1] = *MEMORY[0x277D85DE8];
  v127 = v5;
  v6 = v2;
  v125 = *(*(v4 + 32) + 8);
  if (*(v4 + 40))
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"ActionKey: %@\nSlotSet Hash: %lu\nParameter Hash: %lu", *(*(v4 + 32) + 8), objc_msgSend(v127, "slotHash"), objc_msgSend(v127, "hash")];
LABEL_7:
      v8 = v7;

      v9 = v8;
      goto LABEL_9;
    }

    if (*(v4 + 40))
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%tu", *(*(v4 + 32) + 8), objc_msgSend(v127, "hash")];
        goto LABEL_7;
      }
    }
  }

  v9 = v125;
LABEL_9:
  v10 = *(v4 + 88);
  v11 = *v10;
  memcpy(v131, v10 + 1, 0xCFEuLL);
  v126 = v9;
  v130 = v126;

  v131[0] = [v127 hash];
  ATXSetInput(&v130, 0x17DuLL, *(*(v4 + 88) + 3328));
  ATXSetInput(&v130, 0x17EuLL, *(v4 + 96));
  ATXProbability(v12, *(v6 + 29), *(*(v4 + 32) + 32));
  ATXSetInput(&v130, 0xBBuLL, v13);
  ATXSmoothedProbability(v14, *(v6 + 46), *(v6 + 30));
  ATXSetInput(&v130, 0xD0uLL, v15);
  ATXProbability(v16, *(v6 + 47), *(*(v4 + 32) + 56));
  ATXSetInput(&v130, 0xBDuLL, v17);
  ATXProbability(v18, *(v6 + 48), *(*(v4 + 32) + 64));
  ATXSetInput(&v130, 0xBEuLL, v19);
  ATXProbability(v20, *(v6 + 49), *(*(v4 + 32) + 72));
  ATXSetInput(&v130, 0xBFuLL, v21);
  ATXSetInput(&v130, 0xE1uLL, *(v6 + 46));
  ATXSetInput(&v130, 0xE5uLL, *(v6 + 47));
  ATXSetInput(&v130, 0xE6uLL, *(v6 + 48));
  ATXSetInput(&v130, 0xE7uLL, *(v6 + 49));
  ATXProbability(v22, *(v6 + 46), *(*(v4 + 32) + 48));
  ATXSetInput(&v130, 0xBCuLL, v23);
  ATXSmoothedProbability(v24, *(v6 + 51), *(v6 + 31));
  ATXSetInput(&v130, 0xD2uLL, v25);
  ATXSmoothedProbability(v26, *(v6 + 52), *(v6 + 32));
  ATXSetInput(&v130, 0xD3uLL, v27);
  ATXSmoothedProbability(v28, *(v6 + 53), *(v6 + 44));
  ATXSetInput(&v130, 0xD4uLL, v29);
  ATXProbability(v30, *(v6 + 53), *(*(v4 + 32) + 296));
  ATXSetInput(&v130, 0xC2uLL, v31);
  ATXSetInput(&v130, 0xE2uLL, *(v6 + 51));
  ATXSetInput(&v130, 0xE3uLL, *(v6 + 52));
  ATXProbability(v32, *(v6 + 51), *(*(v4 + 32) + 88));
  ATXSetInput(&v130, 0xC0uLL, v33);
  ATXProbability(v34, *(v6 + 52), *(*(v4 + 32) + 96));
  ATXSetInput(&v130, 0xC1uLL, v35);
  ATXSmoothedProbability(v36, *(v6 + 50), *(v6 + 30));
  ATXSetInput(&v130, 0xD1uLL, v37);
  ATXSetInput(&v130, 0xE4uLL, *(v6 + 50));
  ATXProbability(v38, *(v6 + 50), *(*(v4 + 32) + 80));
  ATXSetInput(&v130, 0xC3uLL, v39);
  ATXSetInputAge(&v130, 0xFBuLL, *(v6 + 7), *(v4 + 48));
  ATXSmoothedProbability(v40, *(v6 + 54), *(v6 + 33));
  ATXSetInput(&v130, 0xD5uLL, v41);
  ATXSetInput(&v130, 0xE8uLL, *(v6 + 54));
  ATXProbability(v42, *(v6 + 54), *(*(v4 + 32) + 104));
  ATXSetInput(&v130, 0xC4uLL, v43);
  ATXSmoothedProbability(v44, *(v6 + 56), *(v6 + 34));
  ATXSetInput(&v130, 0xD7uLL, v45);
  ATXSetInput(&v130, 0xEAuLL, *(v6 + 56));
  ATXProbability(v46, *(v6 + 56), *(*(v4 + 32) + 120));
  ATXSetInput(&v130, 0xC6uLL, v47);
  ATXSmoothedProbability(v48, *(v6 + 55), *(v6 + 35));
  ATXSetInput(&v130, 0xD6uLL, v49);
  ATXSetInput(&v130, 0xE9uLL, *(v6 + 55));
  ATXProbability(v50, *(v6 + 55), *(*(v4 + 32) + 112));
  ATXSetInput(&v130, 0xC5uLL, v51);
  ATXSetInput(&v130, 0x101uLL, *(v6 + 6));
  ATXSetInput(&v130, 0xFFuLL, *(v6 + 29));
  *&v52 = ATXSetInput(&v130, 0xFDuLL, *(v6 + 2));
  *&v53 = ATXSetInput(&v130, 0xBAuLL, [*(*(v4 + 32) + 128) count]);
  ATXSetInput(&v130, 0xFEuLL, [*(v6 + 5) count]);
  *&v54 = ATXSetInput(&v130, 0x107uLL, *(v6 + 75));
  [v6 _timeOfDayBudgetStandardDeviation];
  ATXSetInput(&v130, 0x108uLL, v55);
  ATXSetInput(&v130, 0x109uLL, *(v6 + 78));
  ATXSetInput(&v130, 0xB9uLL, *(*(v4 + 32) + 32));
  ATXSetInput(&v130, 0xB8uLL, *(*(v4 + 32) + 40));
  ATXSetInput(&v130, 0xEBuLL, *(v6 + 30));
  ATXSetInput(&v130, 0xECuLL, *(v6 + 31));
  ATXSetInput(&v130, 0xEDuLL, *(v6 + 33));
  ATXSetInput(&v130, 0xEEuLL, *(v6 + 35));
  ATXSetInput(&v130, 0xEFuLL, *(v6 + 34));
  ATXSetInput(&v130, 0xF0uLL, *(v6 + 32));
  ATXSetInput(&v130, 0xF1uLL, *(v6 + 36));
  ATXSetInput(&v130, 0xF2uLL, *(v6 + 37));
  ATXSetInput(&v130, 0xF3uLL, *(v6 + 38));
  ATXSetInput(&v130, 0xF4uLL, *(v6 + 39));
  ATXSetInput(&v130, 0xF5uLL, *(v6 + 41));
  ATXSetInput(&v130, 0xF6uLL, *(v6 + 40));
  ATXSetInput(&v130, 0xF7uLL, *(v6 + 42));
  ATXSetInput(&v130, 0xF8uLL, *(v6 + 43));
  ATXSetInput(&v130, 0xF9uLL, *(v6 + 44));
  ATXSetInput(&v130, 0xFAuLL, *(v6 + 45));
  ATXProbability(v56, *(v6 + 58), *(*(v4 + 32) + 240));
  ATXSetInput(&v130, 0xC7uLL, v57);
  ATXSmoothedProbability(v58, *(v6 + 58), *(v6 + 36));
  ATXSetInput(&v130, 0xD8uLL, v59);
  ATXProbability(v60, *(v6 + 65), *(*(v4 + 32) + 304));
  ATXSetInput(&v130, 0xCFuLL, v61);
  ATXSmoothedProbability(v62, *(v6 + 65), *(v6 + 45));
  ATXSetInput(&v130, 0xE0uLL, v63);
  ATXProbability(v64, *(v6 + 57), *(*(v4 + 32) + 232));
  ATXSetInput(&v130, 0xC8uLL, v65);
  ATXSmoothedProbability(v66, *(v6 + 57), *(v6 + 37));
  ATXSetInput(&v130, 0xD9uLL, v67);
  ATXProbability(v68, *(v6 + 59), *(*(v4 + 32) + 248));
  ATXSetInput(&v130, 0xC9uLL, v69);
  ATXSmoothedProbability(v70, *(v6 + 59), *(v6 + 38));
  ATXSetInput(&v130, 0xDAuLL, v71);
  ATXProbability(v72, *(v6 + 60), *(*(v4 + 32) + 256));
  ATXSetInput(&v130, 0xCAuLL, v73);
  ATXSmoothedProbability(v74, *(v6 + 60), *(v6 + 39));
  ATXSetInput(&v130, 0xDBuLL, v75);
  ATXProbability(v76, *(v6 + 62), *(*(v4 + 32) + 272));
  ATXSetInput(&v130, 0xCCuLL, v77);
  ATXSmoothedProbability(v78, *(v6 + 62), *(v6 + 41));
  ATXSetInput(&v130, 0xDDuLL, v79);
  ATXProbability(v80, *(v6 + 61), *(*(v4 + 32) + 264));
  ATXSetInput(&v130, 0xCBuLL, v81);
  ATXSmoothedProbability(v82, *(v6 + 61), *(v6 + 40));
  ATXSetInput(&v130, 0xDCuLL, v83);
  ATXProbability(v84, *(v6 + 63), *(*(v4 + 32) + 280));
  ATXSetInput(&v130, 0xCDuLL, v85);
  ATXSmoothedProbability(v86, *(v6 + 63), *(v6 + 42));
  ATXSetInput(&v130, 0xDEuLL, v87);
  ATXProbability(v88, *(v6 + 64), *(*(v4 + 32) + 288));
  ATXSetInput(&v130, 0xCEuLL, v89);
  ATXSmoothedProbability(v90, *(v6 + 64), *(v6 + 43));
  *&v92 = ATXSetInput(&v130, 0xDFuLL, v91);
  [v6 _confirmRatio];
  ATXSetInput(&v130, 0x110uLL, v93);
  ATXSetInput(&v130, 0x10AuLL, *(v6 + 8));
  ATXSetInput(&v130, 0x10BuLL, *(v6 + 9));
  ATXSetInput(&v130, 0x10CuLL, *(v6 + 10));
  ATXSetInput(&v130, 0x10DuLL, *(*(v4 + 32) + 136));
  ATXSetInput(&v130, 0x10EuLL, *(*(v4 + 32) + 144));
  ATXSetInput(&v130, 0x10FuLL, *(*(v4 + 32) + 152));
  *&v94 = ATXSetInput(&v130, 0x112uLL, *(*(v4 + 32) + 736));
  [*(v4 + 32) _totalConfirmRatioStandardDeviation];
  ATXSetInput(&v130, 0x111uLL, v95);
  ATXSetInput(&v130, 0x113uLL, *(*(v4 + 32) + 728));
  ATXSetInput(&v130, 0x114uLL, *(v6 + 16));
  ATXSetInput(&v130, 0x115uLL, *(v6 + 11));
  ATXSetInput(&v130, 0x116uLL, *(v6 + 12));
  ATXSetInput(&v130, 0x117uLL, *(v6 + 17));
  ATXSetInput(&v130, 0x118uLL, *(v6 + 18));
  ATXSetInput(&v130, 0x119uLL, *(v6 + 19));
  ATXSetInput(&v130, 0x11AuLL, *(v6 + 20));
  ATXSetInput(&v130, 0x11BuLL, *(v6 + 21));
  ATXSetInput(&v130, 0x11CuLL, *(v6 + 22));
  ATXSetInput(&v130, 0x11DuLL, *(v6 + 23));
  ATXSetInput(&v130, 0x11EuLL, *(v6 + 24));
  ATXSetInput(&v130, 0x123uLL, *(*(v4 + 32) + 160));
  ATXSetInput(&v130, 0x124uLL, *(*(v4 + 32) + 168));
  ATXSetInput(&v130, 0x11FuLL, *(v6 + 66));
  ATXSetInput(&v130, 0x120uLL, *(v6 + 67));
  ATXSetInput(&v130, 0x121uLL, *(v6 + 68));
  ATXSetInput(&v130, 0x122uLL, *(v6 + 69));
  ATXSetInput(&v130, 0x125uLL, *(v6 + 25));
  ATXSetInput(&v130, 0x126uLL, *(v6 + 26));
  ATXSetInput(&v130, 0x127uLL, *(v6 + 13));
  ATXSetInput(&v130, 0x128uLL, *(v6 + 14));
  ATXSetInput(&v130, 0x129uLL, *(v6 + 15));
  ATXSetInput(&v130, 0x12AuLL, *(v6 + 27));
  ATXSetInput(&v130, 0x12BuLL, *(v6 + 28));
  ATXSetInput(&v130, 0x130uLL, *(*(v4 + 32) + 200));
  ATXSetInput(&v130, 0x131uLL, *(*(v4 + 32) + 208));
  ATXSetInput(&v130, 0x132uLL, *(*(v4 + 32) + 216));
  ATXSetInput(&v130, 0x133uLL, *(*(v4 + 32) + 224));
  ATXSetInput(&v130, 0x12CuLL, *(v6 + 70));
  ATXSetInput(&v130, 0x12DuLL, *(v6 + 71));
  ATXSetInput(&v130, 0x12EuLL, *(v6 + 72));
  ATXSetInput(&v130, 0x12FuLL, *(v6 + 73));
  ATXSetInput(&v130, 0x1A5uLL, *(v6 + 80));
  ATXSetInput(&v130, 0x1A7uLL, *(v6 + 81));
  ATXSetInput(&v130, 0x1A9uLL, *(v6 + 82));
  ATXSetInput(&v130, 0x1ABuLL, *(v6 + 83));
  ATXSetInput(&v130, 0x1ADuLL, *(v6 + 84));
  ATXSetInput(&v130, 0x1AFuLL, *(v6 + 85));
  ATXSetInput(&v130, 0x1B1uLL, *(v6 + 86));
  ATXSetInput(&v130, 0x1B3uLL, *(v6 + 87));
  ATXSetInput(&v130, 0x1B5uLL, *(v6 + 88));
  ATXSetInput(&v130, 0x1B7uLL, *(v6 + 89));
  ATXSetInput(&v130, 0x1B9uLL, *(v6 + 90));
  ATXSetInput(&v130, 0x1BBuLL, *(v6 + 91));
  ATXSetInput(&v130, 0x232uLL, *(v6 + 48));
  ATXSetInput(&v130, 0x234uLL, *(v6 + 97));
  ATXSetInput(&v130, 0x229uLL, *(v6 + 51));
  ATXSetInput(&v130, 0x22BuLL, *(v6 + 92));
  ATXSetInput(&v130, 0x22CuLL, *(v6 + 93));
  ATXSetInput(&v130, 0x22EuLL, *(v6 + 94));
  ATXSetInput(&v130, 0x22FuLL, *(v6 + 95));
  ATXSetInput(&v130, 0x231uLL, *(v6 + 96));
  ATXSetInput(&v130, 0x235uLL, *(v6 + 98));
  ATXSetInput(&v130, 0x237uLL, *(v6 + 99));
  ATXSetInput(&v130, 0x238uLL, *(v6 + 100));
  ATXSetInput(&v130, 0x23AuLL, *(v6 + 101));
  ATXSetInput(&v130, 0x23BuLL, *(v6 + 102));
  ATXSetInput(&v130, 0x23DuLL, *(v6 + 103));
  ATXSetInput(&v130, 0x23EuLL, *(v6 + 104));
  ATXSetInput(&v130, 0x240uLL, *(v6 + 105));
  ATXSetInput(&v130, 0x241uLL, *(v6 + 106));
  ATXSetInput(&v130, 0x243uLL, *(v6 + 107));
  ATXSetInput(&v130, 0x244uLL, *(v6 + 108));
  ATXSetInput(&v130, 0x246uLL, *(v6 + 109));
  ATXSetInput(&v130, 0x247uLL, *(v6 + 110));
  ATXSetInput(&v130, 0x249uLL, *(v6 + 111));
  ATXSetInput(&v130, 0x24AuLL, *(v6 + 112));
  ATXSetInput(&v130, 0x24CuLL, *(v6 + 113));
  ATXSetInput(&v130, 0x302uLL, *(v6 + 114));
  ATXSetInput(&v130, 0x305uLL, *(v6 + 118));
  ATXSetInput(&v130, 0x308uLL, *(v6 + 122));
  ATXSetInput(&v130, 0x30BuLL, *(v6 + 126));
  ATXSetInput(&v130, 0x30EuLL, *(v6 + 130));
  ATXSetInput(&v130, 0x311uLL, *(v6 + 134));
  ATXSetInput(&v130, 0x314uLL, *(v6 + 116));
  ATXSetInput(&v130, 0x317uLL, *(v6 + 120));
  ATXSetInput(&v130, 0x31AuLL, *(v6 + 124));
  ATXSetInput(&v130, 0x31DuLL, *(v6 + 128));
  ATXSetInput(&v130, 0x320uLL, *(v6 + 132));
  ATXSetInput(&v130, 0x323uLL, *(v6 + 136));
  ATXSetInput(&v130, 0x304uLL, *(v6 + 115));
  ATXSetInput(&v130, 0x307uLL, *(v6 + 119));
  ATXSetInput(&v130, 0x30AuLL, *(v6 + 123));
  ATXSetInput(&v130, 0x30DuLL, *(v6 + 127));
  ATXSetInput(&v130, 0x310uLL, *(v6 + 131));
  ATXSetInput(&v130, 0x313uLL, *(v6 + 135));
  ATXSetInput(&v130, 0x316uLL, *(v6 + 117));
  ATXSetInput(&v130, 0x319uLL, *(v6 + 121));
  ATXSetInput(&v130, 0x31CuLL, *(v6 + 125));
  ATXSetInput(&v130, 0x31FuLL, *(v6 + 129));
  ATXSetInput(&v130, 0x322uLL, *(v6 + 133));
  *&v96 = ATXSetInput(&v130, 0x325uLL, *(v6 + 137));
  v124 = [*(v6 + 145) allValues];
  v97 = [*(v6 + 144) allValues];
  v98 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(v6 + 143)];
  [ATXSlotResolution setDistributionBasedScoreInputsForTimeOfDayForItem:&v130 withLaunchDistribution:v98];

  v99 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:*(v6 + 142)];
  [ATXSlotResolution setDistributionBasedScoreInputsForDayOfWeekForItem:&v130 withLaunchDistribution:v99];

  [ATXSlotResolution setDistributionBasedScoreInputsForItem:&v130 withGeoHashResolution:0 withLaunchCounts:v124];
  [ATXSlotResolution setDistributionBasedScoreInputsForItem:&v130 withGeoHashResolution:1 withLaunchCounts:v97];
  v100 = [*(*(*(v4 + 80) + 8) + 40) objectForKey:*(v4 + 56)];
  LODWORD(v99) = v100 == 0;

  if (v99)
  {
    v101 = *(*(*(v4 + 80) + 8) + 40);
    v102 = MEMORY[0x277CCABB0];
    v103 = +[_ATXAppLaunchHistogramManager sharedInstance];
    v104 = [v103 histogramForLaunchType:0];
    v132[0] = *(v4 + 56);
    v105 = [MEMORY[0x277CBEA60] arrayWithObjects:v132 count:1];
    [v104 totalLaunchesForBundleIds:v105];
    v106 = [v102 numberWithDouble:?];
    [v101 setObject:v106 forKey:*(v4 + 56)];
  }

  v107 = [*(*(*(v4 + 80) + 8) + 40) objectForKey:*(v4 + 56)];
  [v107 doubleValue];
  ATXSetInput(&v130, 0x103uLL, v108 + 1.0);

  ATXSetInput(&v130, 0x104uLL, *(v6 + 74));
  *&v109 = ATXSetInput(&v130, 0x102uLL, -31337.0);
  v110 = *(*(v4 + 32) + 24);
  v111 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v127, "slotHash", v109)}];
  v112 = [v110 objectForKeyedSubscript:v111];

  ATXSetInput(&v130, 0x105uLL, v112[1]);
  ATXSetInput(&v130, 0x286uLL, *(v6 + 138));
  ATXSetInput(&v130, 0x287uLL, *(v6 + 139));
  ATXSetInput(&v130, 0x288uLL, *(v6 + 140));
  ATXSetInput(&v130, 0x289uLL, *(v6 + 141));
  *&v113 = ATXSetInput(&v130, 0x106uLL, v112[2]);
  v114 = +[ATXActionLOIBoost sharedInstance];
  [v114 boostForActionKey:*(*(v4 + 32) + 8)];
  ATXSetInput(&v130, 0x100uLL, v115);

  *&v116 = ATXSetInput(&v130, 0xFCuLL, ([ATXSlotResolution isNotLaunchedWithinShortTimeSpan:v6]^ 1));
  if (([MEMORY[0x277CEBC58] isSpotlightPlusEnabled] & 1) == 0)
  {
    v117 = +[_ATXAppPredictor sharedInstance];
    [v117 setupScoreLogger:*(v4 + 40) forConsumerSubType:25];

    v118 = +[_ATXAppPredictor sharedInstance];
    [v118 _predictionScoreAndUpdateConfidenceForItem:&v130 interpreter:*(*(v4 + 64) + 16) consumerSubType:25 scoreLogger:*(v4 + 40) intentType:0];
    v120 = v119;

    v121 = v120;
    *&v131[415] = v121;
    ATXSetInput(&v130, 0x17FuLL, v120);
  }

  v122 = [[ATXActionPredictionContainer alloc] initWithMinimalSlotResolutionParameters:v127 score:*(*(v4 + 32) + 8) actionKey:0.0];
  v123 = v130;
  v128 = v123;
  memcpy(v129, v131, sizeof(v129));
  if (v122)
  {
    [(ATXActionPredictionContainer *)v122 setPredictionItem:&v128];
  }

  else
  {
  }

  [*(v4 + 72) addObject:v122];
}

+ (void)setDistributionBasedScoreInputsForTimeOfDayForItem:(ATXPredictionItem *)item withLaunchDistribution:(id)distribution
{
  distributionCopy = distribution;
  for (i = 0; i != 25; ++i)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [_ATXScoreTypes mappingForTimeOfDayDistributionSignals:i forScoreInputCategory:1];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:i];
    v9 = [distributionCopy objectForKeyedSubscript:v8];
    [v9 doubleValue];
    v11 = v10;

    ATXSetInput(item, v7, v11);
    objc_autoreleasePoolPop(v6);
  }
}

+ (void)setDistributionBasedScoreInputsForDayOfWeekForItem:(ATXPredictionItem *)item withLaunchDistribution:(id)distribution
{
  distributionCopy = distribution;
  for (i = 0; i != 7; ++i)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [_ATXScoreTypes mappingForDayOfWeekDistributionSignals:i forScoreInputCategory:1];
    v8 = [MEMORY[0x277CCABB0] numberWithInt:i];
    v9 = [distributionCopy objectForKeyedSubscript:v8];
    [v9 doubleValue];
    v11 = v10;

    ATXSetInput(item, v7, v11);
    objc_autoreleasePoolPop(v6);
  }
}

+ (void)setDistributionBasedScoreInputsForItem:(ATXPredictionItem *)item withGeoHashResolution:(unint64_t)resolution withLaunchCounts:(id)counts
{
  v22[1] = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v21 = countsCopy;
  v9 = 0;
  if (resolution <= 1)
  {
    if (resolution)
    {
      if (resolution != 1)
      {
        goto LABEL_11;
      }

      *&v8 = ATXSetInput(item, 0x28BuLL, [countsCopy count]);
      v10 = &kATXActionNumberOfScoreInputsForCoarseGeoHash;
    }

    else
    {
      *&v8 = ATXSetInput(item, 0x28AuLL, [countsCopy count]);
      v10 = &kATXActionNumberOfScoreInputsForSpecificGeoHash;
    }

    v9 = *v10;
LABEL_11:
    v11 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:{0, v8}];
    v22[0] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:1];
    v13 = [v21 sortedArrayUsingDescriptors:v12];

    for (i = 0; ; ++i)
    {
      v15 = [v13 count];
      v16 = v15 >= v9 ? v9 : v15;
      if (i >= v16)
      {
        break;
      }

      v17 = objc_autoreleasePoolPush();
      v18 = [_ATXScoreTypes mappingForTopRankedGeoHashSignalsWithResolution:resolution withRank:i forScoreInputCategory:1];
      v19 = [v13 objectAtIndex:i];
      [v19 doubleValue];
      ATXSetInput(item, v18, v20);

      objc_autoreleasePoolPop(v17);
    }

    goto LABEL_18;
  }

  if (resolution == 2)
  {
    v11 = __atxlog_handle_action_prediction(countsCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXSlotResolution setDistributionBasedScoreInputsForItem:v11 withGeoHashResolution:? withLaunchCounts:?];
    }
  }

  else
  {
    if (resolution != 0xFFFFFFFF)
    {
      goto LABEL_11;
    }

    v11 = __atxlog_handle_action_prediction(countsCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ATXSlotResolution setDistributionBasedScoreInputsForItem:v11 withGeoHashResolution:? withLaunchCounts:?];
    }
  }

LABEL_18:
}

+ (BOOL)isNotLaunchedWithinShortTimeSpan:(id)span
{
  spanCopy = span;
  if (+[ATXSlotResolution isNotLaunchedWithinShortTimeSpan:]::onceToken != -1)
  {
    +[ATXSlotResolution isNotLaunchedWithinShortTimeSpan:];
  }

  v6 = 1;
  if (spanCopy[6])
  {
    v4 = spanCopy[7];
    if (v4)
    {
      [v4 timeIntervalSinceDate:?];
      if (v5 <= +[ATXSlotResolution isNotLaunchedWithinShortTimeSpan:]::minimumTimespanForOnceOffActions)
      {
        v6 = 0;
      }
    }
  }

  return v6;
}

void __54__ATXSlotResolution_isNotLaunchedWithinShortTimeSpan___block_invoke()
{
  v0 = +[_ATXGlobals sharedInstance];
  +[ATXSlotResolution isNotLaunchedWithinShortTimeSpan:]::minimumTimespanForOnceOffActions = [v0 minimumTimespanForOnceOffActions];
}

+ (void)setSlotResolutionPredictionItemForTopUpcomingMediaActionContainer:(id)container appActionPredictionItem:(const ATXPredictionItem *)item appActionLogProbability:(double)probability
{
  v5 = MEMORY[0x28223BE20](self);
  v7 = v6;
  v9 = v8;
  if (v7)
  {
    v13 = *v7;
    memcpy(v14, (v7 + 8), sizeof(v14));
    ATXSetInput(&v13, 0x17DuLL, *(v7 + 3328));
    ATXSetInput(&v13, 0x17EuLL, v5);
    v10 = v13;
    v11 = v10;
    memcpy(v12, v14, sizeof(v12));
    if (v9)
    {
      [v9 setPredictionItem:&v11];
    }

    else
    {
    }
  }
}

+ (void)setSlotLogProbabilityForCandidateActionPredictions:(id)predictions
{
  MEMORY[0x28223BE20](self);
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = *v16;
    do
    {
      v7 = 0;
      do
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v15 + 1) + 8 * v7);
        if (v8)
        {
          objc_msgSend_predictionItem(*(*(&v15 + 1) + 8 * v7));
        }

        else
        {
          bzero(&v13, 0xD08uLL);
        }

        [v8 score];
        ATXSetInput(&v13, 0x180uLL, v9);
        v10 = v13;
        v11 = v10;
        memcpy(v12, v14, sizeof(v12));
        if (v8)
        {
          [v8 setPredictionItem:&v11];
        }

        else
        {
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:{16, v11}];
    }

    while (v5);
  }
}

+ (void)setDistributionBasedScoreInputsForItem:(os_log_t)log withGeoHashResolution:withLaunchCounts:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 0xFFFFFFFFLL;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Unknown GeoHash Resolution: %lu", &v1, 0xCu);
}

+ (void)setDistributionBasedScoreInputsForItem:(os_log_t)log withGeoHashResolution:withLaunchCounts:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "GeoHash Resolution not supported in ATXSlotResolution: %lu", &v1, 0xCu);
}

@end