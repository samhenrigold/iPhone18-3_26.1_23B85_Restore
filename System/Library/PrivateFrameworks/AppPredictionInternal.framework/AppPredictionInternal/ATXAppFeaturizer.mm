@interface ATXAppFeaturizer
+ (double)time:(double)time toAccuracyInSeconds:(double)seconds;
+ (float)_computeL2DistanceFromBundleId:(id)id to:(const float *)to app2vecMapping:(id)mapping;
+ (void)_predictNextAppLaunchEmbedding:(id)embedding into:(float *)into launchSequence:(id)sequence;
- (ATXAppFeaturizer)initWithDayZeroParameters:(id)parameters dayZeroIntentParameters:(id)intentParameters feedback:(id)feedback appLaunchHistogramManager:(id)manager appLaunchSequenceManager:(id)sequenceManager appLaunchLocation:(id)location appInstallMontior:(id)montior mediaApplications:(id)self0 appDailyDose:(id)self1 globalAppScorePredictor:(id)self2 globalSmartSuppression:(id)self3 appInfoManager:(id)self4 magicalMomentsUpdateMonitor:(id)self5 heroAppPredictions:(id)self6 appIconState:(id)self7 appLaunchMicroLocation:(id)self8 notificationManager:(id)self9;
- (ATXAppFeaturizer)initWithDayZeroParameters:(id)parameters dayZeroIntentParameters:(id)intentParameters feedback:(id)feedback appLaunchHistogramManager:(id)manager appLaunchSequenceManager:(id)sequenceManager appLaunchLocation:(id)location appInstallMontior:(id)montior mediaApplications:(id)self0 appDailyDose:(id)self1 globalAppScorePredictor:(id)self2 globalSmartSuppression:(id)self3 appInfoManager:(id)self4 magicalMomentsUpdateMonitor:(id)self5 heroAppPredictions:(id)self6 appIconState:(id)self7 appLaunchMicroLocation:(id)self8 notificationManager:(id)self9 heroPoiManager:(id)poiManager;
- (vector<ATXPredictionItem,)evaluateFeaturesForApps:(ATXAppFeaturizer *)self clipBundleIdsToRank:(SEL)rank consumerSubType:(id)type intent:(id)intent scoreLogger:(unsigned __int8)logger context:(id)context featureCache:(id)cache;
- (void)setDistributionBasedScoreInputsForItem:(ATXPredictionItem *)item withGeoHashResolution:(unint64_t)resolution withGeoHashLaunchCounts:(id)counts;
- (void)setDistributionBasedScoreInputsForTimeAndDay:(ATXPredictionItem *)day forBundleId:(id)id withTimeOfDayHistogram:(id)histogram withDayOfWeekHistogram:(id)weekHistogram;
- (void)setModeAffinityScores:(ATXPredictionItem *)scores appModeEntityScores:(id)entityScores;
- (void)setZeroValuesForModeEntityFeatures:(ATXPredictionItem *)features;
@end

@implementation ATXAppFeaturizer

- (ATXAppFeaturizer)initWithDayZeroParameters:(id)parameters dayZeroIntentParameters:(id)intentParameters feedback:(id)feedback appLaunchHistogramManager:(id)manager appLaunchSequenceManager:(id)sequenceManager appLaunchLocation:(id)location appInstallMontior:(id)montior mediaApplications:(id)self0 appDailyDose:(id)self1 globalAppScorePredictor:(id)self2 globalSmartSuppression:(id)self3 appInfoManager:(id)self4 magicalMomentsUpdateMonitor:(id)self5 heroAppPredictions:(id)self6 appIconState:(id)self7 appLaunchMicroLocation:(id)self8 notificationManager:(id)self9
{
  parametersCopy = parameters;
  intentParametersCopy = intentParameters;
  feedbackCopy = feedback;
  managerCopy = manager;
  sequenceManagerCopy = sequenceManager;
  locationCopy = location;
  montiorCopy = montior;
  applicationsCopy = applications;
  doseCopy = dose;
  predictorCopy = predictor;
  suppressionCopy = suppression;
  infoManagerCopy = infoManager;
  monitorCopy = monitor;
  predictionsCopy = predictions;
  stateCopy = state;
  microLocationCopy = microLocation;
  notificationManagerCopy = notificationManager;
  v33 = objc_opt_new();
  v36 = [(ATXAppFeaturizer *)self initWithDayZeroParameters:parametersCopy dayZeroIntentParameters:intentParametersCopy feedback:feedbackCopy appLaunchHistogramManager:managerCopy appLaunchSequenceManager:sequenceManagerCopy appLaunchLocation:locationCopy appInstallMontior:montiorCopy mediaApplications:applicationsCopy appDailyDose:doseCopy globalAppScorePredictor:predictorCopy globalSmartSuppression:suppressionCopy appInfoManager:infoManagerCopy magicalMomentsUpdateMonitor:monitorCopy heroAppPredictions:predictionsCopy appIconState:stateCopy appLaunchMicroLocation:microLocationCopy notificationManager:notificationManagerCopy heroPoiManager:v33];

  return v36;
}

- (ATXAppFeaturizer)initWithDayZeroParameters:(id)parameters dayZeroIntentParameters:(id)intentParameters feedback:(id)feedback appLaunchHistogramManager:(id)manager appLaunchSequenceManager:(id)sequenceManager appLaunchLocation:(id)location appInstallMontior:(id)montior mediaApplications:(id)self0 appDailyDose:(id)self1 globalAppScorePredictor:(id)self2 globalSmartSuppression:(id)self3 appInfoManager:(id)self4 magicalMomentsUpdateMonitor:(id)self5 heroAppPredictions:(id)self6 appIconState:(id)self7 appLaunchMicroLocation:(id)self8 notificationManager:(id)self9 heroPoiManager:(id)poiManager
{
  parametersCopy = parameters;
  intentParametersCopy = intentParameters;
  intentParametersCopy2 = intentParameters;
  feedbackCopy = feedback;
  feedbackCopy2 = feedback;
  managerCopy = manager;
  sequenceManagerCopy = sequenceManager;
  locationCopy = location;
  montiorCopy = montior;
  applicationsCopy = applications;
  doseCopy = dose;
  predictorCopy = predictor;
  suppressionCopy = suppression;
  infoManagerCopy = infoManager;
  monitorCopy = monitor;
  predictionsCopy = predictions;
  stateCopy = state;
  microLocationCopy = microLocation;
  notificationManagerCopy = notificationManager;
  poiManagerCopy = poiManager;
  v50.receiver = self;
  v50.super_class = ATXAppFeaturizer;
  v31 = [(ATXAppFeaturizer *)&v50 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_dayZeroParameters, parameters);
    objc_storeStrong(&v32->_dayZeroIntentParameters, intentParametersCopy);
    objc_storeStrong(&v32->_feedback, feedbackCopy);
    objc_storeStrong(&v32->_appLaunchHistogramManager, manager);
    objc_storeStrong(&v32->_appLaunchSequenceManager, sequenceManager);
    objc_storeStrong(&v32->_appLaunchLocation, location);
    objc_storeStrong(&v32->_appInstallMonitor, montior);
    objc_storeStrong(&v32->_mediaApps, applications);
    objc_storeStrong(&v32->_appDailyDose, dose);
    objc_storeStrong(&v32->_globalAppScorePredictor, predictor);
    objc_storeStrong(&v32->_globalSmartSuppression, suppression);
    objc_storeStrong(&v32->_appInfoManager, infoManager);
    objc_storeStrong(&v32->_mmPredictionMonitor, monitor);
    objc_storeStrong(&v32->_heroPredictionServer, predictions);
    objc_storeStrong(&v32->_appIconState, state);
    objc_storeStrong(&v32->_microLocation, microLocation);
    objc_storeStrong(&v32->_notificationManager, notificationManager);
    objc_storeStrong(&v32->_heroPoiManager, poiManager);
  }

  return v32;
}

- (vector<ATXPredictionItem,)evaluateFeaturesForApps:(ATXAppFeaturizer *)self clipBundleIdsToRank:(SEL)rank consumerSubType:(id)type intent:(id)intent scoreLogger:(unsigned __int8)logger context:(id)context featureCache:(id)cache
{
  MEMORY[0x28223BE20](self);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v829 = v22;
  v878[16] = *MEMORY[0x277D85DE8];
  v716 = v23;
  v24 = v19;
  v712 = v15;
  v713 = v13;
  v841 = v11;
  v754 = a10;
  v714 = v24;
  recentNotifications = [v21[1] recentNotifications];
  if (v24)
  {
    v743 = [v716 arrayByAddingObjectsFromArray:v24];
  }

  else
  {
    v25 = v716;
    v743 = v25;
  }

  v26 = __atxlog_handle_app_prediction(v25);
  v846 = v21;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:v17];
    LODWORD(v875[0]) = 138412290;
    *(v875 + 4) = v27;
    _os_log_impl(&dword_2263AA000, v26, OS_LOG_TYPE_DEFAULT, "Evaluating app features for consumer: %@.", v875, 0xCu);
  }

  if (v754)
  {
    objc_msgSend_itemsForBundleIds_(v754);
    v28 = *(&v867 + 1);
    v29 = v867;
  }

  else
  {
    v29 = 0;
    v28 = 0;
    v867 = 0uLL;
    v868 = 0;
  }

  v30 = [v743 count];
  if (0x13A524387AC82261 * ((v28 - v29) >> 3) == v30)
  {
    v31 = __atxlog_handle_app_prediction(v30);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = [MEMORY[0x277CEBCF0] stringForConsumerSubtype:v17];
      LODWORD(v875[0]) = 138412290;
      *(v875 + 4) = v32;
      _os_log_impl(&dword_2263AA000, v31, OS_LOG_TYPE_DEFAULT, "Found all bundleIds in the feature cache. Using the cached values for consumer: %@.", v875, 0xCu);
    }

    *v829 = v867;
    v829[2] = v868;
    v868 = 0;
    v867 = 0uLL;
    goto LABEL_132;
  }

  std::vector<ATXPredictionItem>::vector[abi:ne200100](v829, [v743 count]);
  v817 = [v716 count];
  v812 = [v24 count] + v817;
  v784 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v812];
  v783 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:v812];
  v707 = objc_autoreleasePoolPush();
  std::vector<double>::vector[abi:ne200100](&v865, v812);
  std::vector<double>::vector[abi:ne200100](&v863, v812);
  std::vector<double>::vector[abi:ne200100](&v861, v812);
  [v21[2] putFeedbackScoresForApps:v743 intoScores:v865 confirms:v863 rejects:v861];
  timeContext = [v841 timeContext];
  date = [timeContext date];

  userContext = [v841 userContext];
  lastUnlockDate = [userContext lastUnlockDate];

  v844 = [v21[3] histogramForLaunchType:0];
  v806 = [v21[3] histogramForLaunchType:1];
  v742 = [v21[3] histogramForLaunchType:92];
  v741 = [v21[3] histogramForLaunchType:93];
  v715 = [v21[3] histogramForLaunchType:11];
  v842 = [v21[3] histogramForLaunchType:2];
  v746 = [v21[3] histogramForLaunchType:3];
  v782 = [v21[3] histogramForLaunchType:5];
  v815 = [v21[3] categoricalHistogramForLaunchType:4];
  v778 = [v21[3] categoricalHistogramForLaunchType:37];
  v735 = [v21[3] categoricalHistogramForLaunchType:41];
  v816 = [v21[3] categoricalHistogramForLaunchType:42];
  v795 = [v21[3] categoricalHistogramForLaunchType:43];
  v791 = [v21[3] categoricalHistogramForLaunchType:44];
  v794 = [v21[3] categoricalHistogramForLaunchType:45];
  v790 = [v21[3] categoricalHistogramForLaunchType:46];
  v793 = [v21[3] categoricalHistogramForLaunchType:47];
  v789 = [v21[3] categoricalHistogramForLaunchType:48];
  v792 = [v21[3] categoricalHistogramForLaunchType:87];
  v814 = [v21[3] categoricalHistogramForLaunchType:50];
  v813 = [v21[3] categoricalHistogramForLaunchType:51];
  v808 = [v21[3] categoricalHistogramForLaunchType:61];
  v761 = [v21[3] categoricalHistogramForLaunchType:52];
  v760 = [v21[3] categoricalHistogramForLaunchType:53];
  v759 = [v21[3] categoricalHistogramForLaunchType:54];
  v758 = [v21[3] categoricalHistogramForLaunchType:55];
  v757 = [v21[3] categoricalHistogramForLaunchType:56];
  v788 = [v21[3] categoricalHistogramForLaunchType:57];
  v787 = [v21[3] categoricalHistogramForLaunchType:58];
  v786 = [v21[3] categoricalHistogramForLaunchType:59];
  v785 = [v21[3] categoricalHistogramForLaunchType:60];
  v805 = [v21[3] categoricalHistogramForLaunchType:63];
  v802 = [v21[3] categoricalHistogramForLaunchType:64];
  v775 = [v21[3] categoricalHistogramForLaunchType:65];
  v777 = [v21[3] categoricalHistogramForLaunchType:66];
  v773 = [v21[3] categoricalHistogramForLaunchType:67];
  v771 = [v21[3] categoricalHistogramForLaunchType:68];
  v804 = [v21[3] categoricalHistogramForLaunchType:69];
  v801 = [v21[3] categoricalHistogramForLaunchType:70];
  v774 = [v21[3] categoricalHistogramForLaunchType:71];
  v776 = [v21[3] categoricalHistogramForLaunchType:72];
  v772 = [v21[3] categoricalHistogramForLaunchType:73];
  v770 = [v21[3] categoricalHistogramForLaunchType:74];
  v803 = [v21[3] categoricalHistogramForLaunchType:88];
  v800 = [v21[3] categoricalHistogramForLaunchType:75];
  v797 = [v21[3] categoricalHistogramForLaunchType:76];
  v767 = [v21[3] categoricalHistogramForLaunchType:77];
  v769 = [v21[3] categoricalHistogramForLaunchType:78];
  v765 = [v21[3] categoricalHistogramForLaunchType:79];
  v763 = [v21[3] categoricalHistogramForLaunchType:80];
  v799 = [v21[3] categoricalHistogramForLaunchType:81];
  v796 = [v21[3] categoricalHistogramForLaunchType:82];
  v766 = [v21[3] categoricalHistogramForLaunchType:83];
  v768 = [v21[3] categoricalHistogramForLaunchType:84];
  v764 = [v21[3] categoricalHistogramForLaunchType:85];
  v762 = [v21[3] categoricalHistogramForLaunchType:86];
  v798 = [v21[3] categoricalHistogramForLaunchType:89];
  v756 = [v21[3] categoricalHistogramForLaunchType:95];
  userContext2 = [v841 userContext];
  lastAppLaunch = [userContext2 lastAppLaunch];

  if (lastAppLaunch)
  {
    v839 = [v21[4] launchSequenceForBundle:?];
  }

  else
  {
    v839 = 0;
  }

  v37 = MEMORY[0x277D41C30];
  locationMotionContext = [v841 locationMotionContext];
  v779 = [v37 getMotionStringFromMotionType:{objc_msgSend(locationMotionContext, "motionType")}];

  deviceStateContext = [v841 deviceStateContext];
  onWifi = [deviceStateContext onWifi];

  deviceStateContext2 = [v841 deviceStateContext];
  wifiSSID = [deviceStateContext2 wifiSSID];

  deviceStateContext3 = [v841 deviceStateContext];
  inAirplaneMode = [deviceStateContext3 inAirplaneMode];

  [v844 entropy];
  v732 = v42;
  [v842 entropy];
  v731 = v43;
  [v842 entropyForDate:date];
  v730 = v44;
  [v782 entropy];
  v729 = v45;
  [v815 entropy];
  v728 = v46;
  [v815 entropyForCategory:wifiSSID];
  v727 = v47;
  locationMotionContext2 = [v841 locationMotionContext];
  context = [locationMotionContext2 locationEnabled];

  if (v812 < 1)
  {
    v52 = 0.0;
    v51 = 0.0;
    v50 = 0.0;
    v54 = v21;
  }

  else
  {
    v49 = 0;
    v50 = 0.0;
    v51 = 0.0;
    v52 = 0.0;
    v53 = v842;
    v54 = v21;
    do
    {
      v55 = [v743 objectAtIndexedSubscript:v49];
      [v844 overallLaunchPopularityForBundleId:v55];
      v57 = v56;
      [v53 relativeLaunchPopularityWithBundleId:v55 date:date];
      v59 = v58;
      [v782 relativeLaunchPopularityWithBundleId:v55 date:date];
      v61 = v60;
      [v815 relativeLaunchPopularityWithBundleId:v55 category:wifiSSID];
      v63 = v62;

      v50 = v50 + vabdd_f64(v57, v59);
      v51 = v51 + vabdd_f64(v57, v61);
      v52 = v52 + vabdd_f64(v57, v63);
      ++v49;
      v53 = v842;
    }

    while (v812 != v49);
  }

  v64 = [MEMORY[0x277CEB3C0] pathForResource:@"_ATXApp2VecMapping" ofType:@"dat" isDirectory:0];
  v859 = 0;
  __p = 0;
  v860 = 0;
  v708 = v64;
  if (v64 && (v64 = [[ATXApp2VecMapping alloc] initWithPath:v64], (v65 = v64) != 0))
  {
    std::vector<float>::resize(&__p, [(ATXApp2VecMapping *)v64 vectorLength]);
    v66 = objc_opt_class();
    v67 = __p;
    launchSequence = [v54[4] launchSequence];
    [v66 _predictNextAppLaunchEmbedding:v65 into:v67 launchSequence:launchSequence];
    v717 = v65;
    v726 = 0;
  }

  else
  {
    launchSequence = __atxlog_handle_app_prediction(v64);
    if (os_log_type_enabled(launchSequence, OS_LOG_TYPE_FAULT))
    {
      [ATXAppFeaturizer evaluateFeaturesForApps:launchSequence clipBundleIdsToRank:? consumerSubType:? intent:? scoreLogger:? context:? featureCache:?];
    }

    v717 = 0;
    v726 = 1;
  }

  timeContext2 = [v841 timeContext];
  dayOfWeek = [timeContext2 dayOfWeek];

  timeContext3 = [v841 timeContext];
  timeOfDay = [timeContext3 timeOfDay];

  timeContext4 = [v841 timeContext];
  dateInWeekend = [timeContext4 dateInWeekend];

  v809 = [_ATXActionUtils stringForTimeOfDayAndDayOfWeek:date timeZone:0];
  locationMotionContext3 = [v841 locationMotionContext];
  v823 = +[_ATXActionUtils stringForSpecificGeohash:](_ATXActionUtils, "stringForSpecificGeohash:", [locationMotionContext3 geohash]);

  locationMotionContext4 = [v841 locationMotionContext];
  v825 = +[_ATXActionUtils stringForCoarseGeohash:](_ATXActionUtils, "stringForCoarseGeohash:", [locationMotionContext4 coarseGeohash]);

  locationMotionContext5 = [v841 locationMotionContext];
  v740 = +[_ATXActionUtils stringForZoom7Geohash:](_ATXActionUtils, "stringForZoom7Geohash:", [locationMotionContext5 largeGeohash]);

  v821 = [_ATXActionUtils stringForTwoHourTimeWindow:date timeZone:0];
  v819 = [_ATXActionUtils stringForDayOfWeek:date timeZone:0];
  locationMotionContext6 = [v841 locationMotionContext];
  v827 = +[_ATXActionUtils stringForCoarseTimePOWLocation:timeZone:coarseGeohash:](_ATXActionUtils, "stringForCoarseTimePOWLocation:timeZone:coarseGeohash:", date, 0, [locationMotionContext6 coarseGeohash]);

  locationMotionContext7 = [v841 locationMotionContext];
  v820 = +[_ATXActionUtils stringForSpecificTimeDOWLocation:timeZone:geohash:](_ATXActionUtils, "stringForSpecificTimeDOWLocation:timeZone:geohash:", date, 0, [locationMotionContext7 geohash]);

  v831 = objc_opt_new();
  v833 = objc_opt_new();
  v837 = objc_opt_new();
  v835 = objc_opt_new();
  v856 = 0u;
  v857 = 0u;
  v854 = 0u;
  v855 = 0u;
  obj = v743;
  v77 = [obj countByEnumeratingWithState:&v854 objects:v878 count:16];
  if (v77)
  {
    v78 = *v855;
    do
    {
      for (i = 0; i != v77; ++i)
      {
        if (*v855 != v78)
        {
          objc_enumerationMutation(obj);
        }

        v80 = *(*(&v854 + 1) + 8 * i);
        v81 = MEMORY[0x277CCABB0];
        v82 = v846[5];
        locationMotionContext8 = [v841 locationMotionContext];
        currentLOI = [locationMotionContext8 currentLOI];
        v85 = [v81 numberWithInt:{objc_msgSend(v82, "launchCountAtLOI:bundleId:", currentLOI, v80)}];
        [v837 setObject:v85 forKeyedSubscript:v80];

        v86 = MEMORY[0x277CCABB0];
        [v839 launchCount:v80];
        v87 = [v86 numberWithDouble:?];
        [v835 setObject:v87 forKeyedSubscript:v80];

        v88 = MEMORY[0x277CCABB0];
        v877 = v80;
        v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v877 count:1];
        LODWORD(v90) = 1045220557;
        [v844 totalLaunchesForBundleIds:v89 forDate:date distanceScale:v90];
        v91 = [v88 numberWithDouble:?];
        [v833 setObject:v91 forKeyedSubscript:v80];

        v92 = MEMORY[0x277CCABB0];
        v876 = v80;
        v93 = [MEMORY[0x277CBEA60] arrayWithObjects:&v876 count:1];
        LODWORD(v94) = 1.0;
        [v842 totalLaunchesForBundleIds:v93 forDate:date distanceScale:v94];
        v95 = [v92 numberWithDouble:?];
        [v831 setObject:v95 forKeyedSubscript:v80];
      }

      v77 = [obj countByEnumeratingWithState:&v854 objects:v878 count:16];
    }

    while (v77);
  }

  v734 = [v846[10] globalPopularityForBundleIdsGivenTimeDayAndLocation:obj context:v841];
  v96 = arc4random();
  launchedAppCount = [v846[12] launchedAppCount];
  currentPoiCategory = [v846[16] currentPoiCategory];
  v97 = objc_opt_new();
  efficientCurrentMode = [v97 efficientCurrentMode];
  v99 = efficientCurrentMode;
  v100 = @"Default";
  if (efficientCurrentMode)
  {
    v100 = efficientCurrentMode;
  }

  v711 = v100;

  v102 = __atxlog_handle_app_prediction(v101);
  if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
  {
    v103 = objc_opt_class();
    v104 = NSStringFromClass(v103);
    LODWORD(v875[0]) = 138412546;
    *(v875 + 4) = v104;
    WORD2(v875[1]) = 2112;
    *(&v875[1] + 6) = v711;
    _os_log_impl(&dword_2263AA000, v102, OS_LOG_TYPE_DEFAULT, "%@ - retrieved current mode of %@ from ATXUnifiedActivityBiomeStream", v875, 0x16u);
  }

  v105 = objc_alloc(MEMORY[0x277CEB6A0]);
  v106 = +[ATXModeEntityScorerServer sharedInstance];
  v709 = [v105 initWithModeEntityScorerClient:v106];

  v733 = [v709 modeEntityScoresFromCacheForModeEntityTypeIdentifier:*MEMORY[0x277D41C88] modeIdentifier:v711 modeConfigurationType:0];
  if (v812 >= 1)
  {
    v107 = 0;
    v736 = 0;
    v108.i32[1] = -1059153344;
    v721 = timeOfDay;
    v722 = dayOfWeek;
    *v108.i32 = -31337.0;
    v719 = onWifi;
    v720 = dateInWeekend;
    v718 = (context ^ 1u);
    v723 = v817;
    v724 = vdupq_lane_s32(v108, 0);
    v109 = v96 / 4294967300.0;
    while (1)
    {
      contexta = objc_autoreleasePoolPush();
      v811 = [obj objectAtIndexedSubscript:v107];
      if (!v754)
      {
        break;
      }

      objc_msgSend_itemForBundleId_(v754);
      if (!v875[0])
      {
        goto LABEL_45;
      }

      if (0x13A524387AC82261 * ((v829[1] - *v829) >> 3) <= v107)
      {
        std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
      }

      v110 = (*v829 + 3336 * v107);
      objc_storeStrong(v110, v875[0]);
      memcpy(v110 + 1, &v875[1], 0xCFEuLL);
LABEL_114:

      objc_autoreleasePoolPop(contexta);
      if (++v107 == v812)
      {
        goto LABEL_115;
      }
    }

    bzero(v875, 0xD08uLL);
LABEL_45:
    v111 = v811;
    v852 = v111;
    v853[830] = -31337.0;
    LOWORD(v853[831]) = 0;
    for (j = 4; j != 832; j += 4)
    {
      *&v853[j - 2] = v724;
    }

    v818 = [v846[12] appInfoForBundleId:v111];
    v113 = __atxlog_handle_app_prediction(v818);
    if (os_log_type_enabled(v113, OS_LOG_TYPE_DEBUG))
    {
      v873 = 138412290;
      v874 = v111;
      _os_log_debug_impl(&dword_2263AA000, v113, OS_LOG_TYPE_DEBUG, "Setting score inputs for app with BundleId: %@", &v873, 0xCu);
    }

    v114 = ATXIsRemoteAppBundleId();
    *&v115 = ATXSetInput(&v852, 0x33BuLL, v114);
    genreId = [v818 genreId];
    v117 = genreId == 0;

    if (!v117)
    {
      genreId2 = [v818 genreId];
      [v784 setValue:genreId2 forKey:v111];
    }

    app2VecCluster = [v818 app2VecCluster];
    v120 = app2VecCluster == 0;

    if (!v120)
    {
      app2VecCluster2 = [v818 app2VecCluster];
      [v783 setValue:app2VecCluster2 forKey:v111];
    }

    installDate = [v818 installDate];
    if ((installDate != 0) | v736 & 1)
    {
      if (installDate)
      {
        v123 = installDate;
        timeContext5 = [v841 timeContext];
        date2 = [timeContext5 date];
        ATXSetInputAge(&v852, 0, v123, date2);

        installDate2 = v123;
        v127 = v818;
LABEL_65:

        v128 = installDate2;
        v818 = v127;
        goto LABEL_66;
      }

      v128 = 0;
    }

    else
    {
      if (([v111 hasPrefix:@"com.apple"] & 1) == 0)
      {
        [v846[6] train];
        v127 = [v846[12] appInfoForBundleId:v111];

        installDate2 = [v127 installDate];
        if (installDate2)
        {
          timeContext5 = [v841 timeContext];
          date3 = [timeContext5 date];
          ATXSetInputAge(&v852, 0, installDate2, date3);
        }

        else
        {
          timeContext5 = __atxlog_handle_app_prediction(0);
          if (os_log_type_enabled(timeContext5, OS_LOG_TYPE_DEFAULT))
          {
            v873 = 138412290;
            v874 = v111;
          }

          installDate2 = 0;
        }

        v736 = 1;
        goto LABEL_65;
      }

      v128 = 0;
      v736 = 0;
    }

LABEL_66:
    v130 = 0.0;
    if (v107 >= v723)
    {
      timeContext6 = [v841 timeContext];
      date4 = [timeContext6 date];
      v133 = [date4 dateByAddingTimeInterval:-43200.0];
      timeContext7 = [v841 timeContext];
      date5 = [timeContext7 date];
      ATXSetInputAge(&v852, 0, v133, date5);

      v130 = 1.0;
    }

    ATXSetInput(&v852, 0x301uLL, v130);
    ATXSetInput(&v852, 0x6CuLL, v722);
    ATXSetInput(&v852, 0x6DuLL, v721);
    ATXSetInput(&v852, 0x6EuLL, v720);
    ATXSetInput(&v852, 0x161uLL, v109);
    v136 = arc4random();
    *&v137 = ATXSetInput(&v852, 0x162uLL, v136 / 4294967300.0);
    ambientLightContext = [v841 ambientLightContext];
    ambientLightType = [ambientLightContext ambientLightType];

    if (ambientLightType != 7)
    {
      v140 = [MEMORY[0x277CCABB0] numberWithInt:ambientLightType];
      stringValue = [v140 stringValue];
      [v735 launchPopularityWithBundleId:v111 category:stringValue];
      ATXSetInput(&v852, 0x186uLL, v142);

      v143 = [MEMORY[0x277CCABB0] numberWithInt:ambientLightType];
      stringValue2 = [v143 stringValue];
      [v735 relativeLaunchPopularityWithBundleId:v111 category:stringValue2];
      ATXSetInput(&v852, 0x185uLL, v145);
    }

    v146 = ATXDayZeroScore(v111, v846[17], launchedAppCount);
    *&v147 = ATXSetInput(&v852, 0x21uLL, v146);
    v148 = [v846[17] objectForKeyedSubscript:{@"staticPenalties", v147}];
    v753 = [v148 objectForKeyedSubscript:v111];

    [v753 doubleValue];
    *&v150 = ATXSetInput(&v852, 0x22uLL, v149);
    [_ATXFeedbackConstants alphaForBundleId:v111, v150];
    *&v152 = ATXSetInput(&v852, 0x166uLL, v151);
    [_ATXFeedbackConstants betaForBundleId:v111, v152];
    *&v154 = ATXSetInput(&v852, 0x167uLL, v153);
    v155 = [v837 objectForKeyedSubscript:{v111, v154}];
    [v155 doubleValue];
    ATXSetInput(&v852, 0x16AuLL, v156);

    v157 = [v835 objectForKeyedSubscript:v111];
    [v157 doubleValue];
    ATXSetInput(&v852, 0x16BuLL, v158);

    v159 = [v833 objectForKeyedSubscript:v111];
    [v159 doubleValue];
    ATXSetInput(&v852, 0x16CuLL, v160);

    v161 = [v831 objectForKeyedSubscript:v111];
    [v161 doubleValue];
    ATXSetInput(&v852, 0x16DuLL, v162);

    v163 = [v734 objectForKeyedSubscript:v111];
    [v163 doubleValue];
    ATXSetInput(&v852, 0x169uLL, v164);

    v165 = [v846[11] fetchContextualAssociationScoresForBundleId:v111];
    v166 = [v165 objectForKeyedSubscript:@"GeohashZoom7"];
    [v166 doubleValue];
    ATXSetInput(&v852, 0x29BuLL, v167);

    v168 = [v165 objectForKeyedSubscript:@"GeohashCoarse"];
    [v168 doubleValue];
    ATXSetInput(&v852, 0x29CuLL, v169);

    v170 = [v165 objectForKeyedSubscript:@"GeohashSpecific"];
    [v170 doubleValue];
    ATXSetInput(&v852, 0x29DuLL, v171);

    v172 = [v165 objectForKeyedSubscript:@"PartOfWeek"];
    [v172 doubleValue];
    ATXSetInput(&v852, 0x29EuLL, v173);

    v174 = [v165 objectForKeyedSubscript:@"CoarseTime"];
    [v174 doubleValue];
    ATXSetInput(&v852, 0x29FuLL, v175);

    v176 = [v165 objectForKeyedSubscript:@"LOIType"];
    [v176 doubleValue];
    ATXSetInput(&v852, 0x2A0uLL, v177);

    lastLaunch = [v818 lastLaunch];
    timeContext8 = [v841 timeContext];
    date6 = [timeContext8 date];
    ATXSetInputAge(&v852, 2uLL, lastLaunch, date6);

    lastSpotlightLaunch = [v818 lastSpotlightLaunch];
    timeContext9 = [v841 timeContext];
    date7 = [timeContext9 date];
    ATXSetInputAge(&v852, 1uLL, lastSpotlightLaunch, date7);

    averageSecondsBetweenLaunches = [v818 averageSecondsBetweenLaunches];
    if (averageSecondsBetweenLaunches)
    {
      [averageSecondsBetweenLaunches doubleValue];
      *&v184 = ATXSetInput(&v852, 4uLL, v185);
    }

    medianSecondsBetweenLaunches = [v818 medianSecondsBetweenLaunches];
    if (medianSecondsBetweenLaunches)
    {
      [medianSecondsBetweenLaunches doubleValue];
      *&v186 = ATXSetInput(&v852, 3uLL, v187);
    }

    if (lastUnlockDate)
    {
      [date timeIntervalSinceDate:{lastUnlockDate, v186}];
      if (v186 >= 0.0)
      {
        HIDWORD(v188) = 1085021696;
        if (v186 >= 3600.0)
        {
          v186 = 3599.0;
        }

        LODWORD(v188) = 1.0;
        [v715 relativeLaunchPopularityWithBundleId:v111 elapsedTime:v186 distanceScale:v188];
        *&v186 = ATXSetInput(&v852, 5uLL, v189);
      }
    }

    v190 = [v846[13] appInFolderWithBundleId:{v111, v186}];
    if (v190)
    {
      ATXSetInput(&v852, 7uLL, [v846[13] folderPageNumberForBundleId:v111]);
    }

    *&v191 = ATXSetInput(&v852, 6uLL, v190);
    v192 = [v846[13] springboardPageNumberForBundleId:{v111, v191}];
    v193 = 0.0;
    if (v192 != -1)
    {
      v193 = 1.0;
    }

    ATXSetInput(&v852, 8uLL, v193);
    *&v194 = ATXSetInput(&v852, 9uLL, v192);
    if (v192 == -1)
    {
      *&v194 = ATXSetInput(&v852, 9uLL, 0.0);
    }

    *&v195 = ATXSetInput(&v852, 0xAuLL, [v846[13] appOnDockWithBundleId:{v111, v194}]);
    v196 = v846[5];
    locationMotionContext9 = [v841 locationMotionContext];
    currentLOI2 = [locationMotionContext9 currentLOI];
    [v196 launchProbabilityAtLOI:currentLOI2 bundleId:v111];
    ATXSetInput(&v852, 0x26uLL, v199);

    [v846[7] popularityAtCurrentMicroLocationForApp:v111];
    *&v201 = ATXSetInput(&v852, 0x27uLL, v200);
    [v746 overallLaunchPopularityForBundleId:{v111, v201}];
    if (!inAirplaneMode)
    {
      v202 = 0.0;
    }

    ATXSetInput(&v852, 0x3DuLL, v202);
    v203 = 0.0;
    if (inAirplaneMode)
    {
      [v746 totalLaunches];
    }

    *&v204 = ATXSetInput(&v852, 0x3EuLL, v203);
    v872 = v111;
    v205 = [MEMORY[0x277CBEA60] arrayWithObjects:&v872 count:{1, v204}];
    [v746 totalLaunchesForBundleIds:v205];
    ATXSetInput(&v852, 0x2A4uLL, v206);

    [v782 overallLaunchPopularityForBundleId:v111];
    *&v208 = ATXSetInput(&v852, 0x3FuLL, v207);
    [v782 totalLaunches];
    *&v210 = ATXSetInput(&v852, 0x40uLL, v209);
    [v815 overallLaunchPopularityForBundleId:v111 category:{wifiSSID, v210}];
    *&v212 = ATXSetInput(&v852, 0x41uLL, v211);
    [v815 totalLaunchesForCategory:{wifiSSID, v212}];
    *&v214 = ATXSetInput(&v852, 0x42uLL, v213);
    [v815 totalLaunchesForBundleId:v111 category:{wifiSSID, v214}];
    *&v216 = ATXSetInput(&v852, 0x2A1uLL, v215);
    [v815 totalLaunchesForBundleId:{v111, v216}];
    ATXSetInput(&v852, 0x2A2uLL, v217);
    *&v218 = ATXSetInput(&v852, 0x43uLL, v719);
    [v778 overallLaunchPopularityForBundleId:v111 category:{v779, v218}];
    *&v220 = ATXSetInput(&v852, 0x44uLL, v219);
    [v778 totalLaunchesForCategory:{v779, v220}];
    *&v222 = ATXSetInput(&v852, 0x45uLL, v221);
    [v778 totalLaunchesForBundleId:v111 category:{v779, v222}];
    *&v224 = ATXSetInput(&v852, 0x2A3uLL, v223);
    [v816 overallLaunchPopularityForBundleId:v111 category:{v809, v224}];
    *&v226 = ATXSetInput(&v852, 0x61uLL, v225);
    [v816 totalLaunchesForBundleId:v111 category:{v809, v226}];
    *&v228 = ATXSetInput(&v852, 0x1FFuLL, v227);
    [v816 totalLaunchesForBundleId:{v111, v228}];
    *&v230 = ATXSetInput(&v852, 0x201uLL, v229);
    [v816 relativeLaunchPopularityWithBundleId:v111 category:{v809, v230}];
    *&v232 = ATXSetInput(&v852, 0x62uLL, v231);
    [v816 launchPopularityWithBundleId:v111 category:{v809, v232}];
    *&v234 = ATXSetInput(&v852, 0x63uLL, v233);
    [v816 totalLaunches];
    *&v236 = ATXSetInput(&v852, 0x64uLL, v235);
    [v844 totalLaunches];
    *&v238 = ATXSetInput(&v852, 0x3BuLL, v237);
    [v844 launchPopularityWithBundleId:v111 date:{date, v238}];
    *&v240 = ATXSetInput(&v852, 0x1AuLL, v239);
    [v844 relativeLaunchPopularityWithBundleId:v111 date:{date, v240}];
    ATXSetInput(&v852, 0x1BuLL, v241);
    LODWORD(v242) = 1045220557;
    [v844 relativeLaunchPopularityWithBundleId:v111 date:date distanceScale:v242];
    *&v244 = ATXSetInput(&v852, 0x1CuLL, v243);
    [v844 overallLaunchPopularityForBundleId:{v111, v244}];
    *&v246 = ATXSetInput(&v852, 0x1DuLL, v245);
    [v806 totalLaunches];
    *&v248 = ATXSetInput(&v852, 0x3CuLL, v247);
    [v806 launchPopularityWithBundleId:v111 date:{date, v248}];
    *&v250 = ATXSetInput(&v852, 0x1EuLL, v249);
    [v806 relativeLaunchPopularityWithBundleId:v111 date:{date, v250}];
    *&v252 = ATXSetInput(&v852, 0x1FuLL, v251);
    [v806 overallLaunchPopularityForBundleId:{v111, v252}];
    *&v254 = ATXSetInput(&v852, 0x20uLL, v253);
    v871 = v111;
    v255 = [MEMORY[0x277CBEA60] arrayWithObjects:&v871 count:{1, v254}];
    [v742 totalLaunchesForBundleIds:v255];
    ATXSetInput(&v852, 0x2CCuLL, v256);

    [v742 totalLaunches];
    *&v258 = ATXSetInput(&v852, 0x2CDuLL, v257);
    v870 = v111;
    v259 = [MEMORY[0x277CBEA60] arrayWithObjects:&v870 count:{1, v258}];
    [v741 totalLaunchesForBundleIds:v259];
    ATXSetInput(&v852, 0x2CEuLL, v260);

    [v741 totalLaunches];
    *&v262 = ATXSetInput(&v852, 0x2CFuLL, v261);
    [v842 launchPopularityWithBundleId:v111 date:{date, v262}];
    *&v264 = ATXSetInput(&v852, 0x23uLL, v263);
    [v842 relativeLaunchPopularityWithBundleId:v111 date:{date, v264}];
    *&v266 = ATXSetInput(&v852, 0x24uLL, v265);
    v267 = [v814 launchCountsForEachCategoryForBundleId:{v111, v266}];
    allValues = [v267 allValues];

    v269 = [v813 launchCountsForEachCategoryForBundleId:v111];
    allValues2 = [v269 allValues];

    v270 = [v808 launchCountsForEachCategoryForBundleId:v111];
    allValues3 = [v270 allValues];

    [v846 setDistributionBasedScoreInputsForTimeAndDay:&v852 forBundleId:v111 withTimeOfDayHistogram:v844 withDayOfWeekHistogram:v842];
    [v846 setDistributionBasedScoreInputsForItem:&v852 withGeoHashResolution:0 withGeoHashLaunchCounts:allValues];
    [v846 setDistributionBasedScoreInputsForItem:&v852 withGeoHashResolution:1 withGeoHashLaunchCounts:allValues2];
    [v846 setDistributionBasedScoreInputsForItem:&v852 withGeoHashResolution:2 withGeoHashLaunchCounts:allValues3];
    *&v271 = ATXSetInput(&v852, 0x228uLL, [_ATXActionUtils timeBucketFromZeroToTwentyFour:date timeZone:0]);
    [v844 entropyForBundleId:{v111, v271}];
    ATXSetInput(&v852, 0x1F8uLL, v272);
    LODWORD(v273) = 1.0;
    [v842 totalLaunchesForBundleIds:obj forDate:date distanceScale:v273];
    *&v275 = ATXSetInput(&v852, 0x1FDuLL, v274);
    v869 = v111;
    v276 = [MEMORY[0x277CBEA60] arrayWithObjects:&v869 count:{1, v275}];
    [v842 totalLaunchesForBundleIds:v276];
    ATXSetInput(&v852, 0x1FEuLL, v277);

    [v816 totalLaunchesForCategory:v809];
    *&v279 = ATXSetInput(&v852, 0x200uLL, v278);
    [v814 totalLaunchesForBundleId:v111 category:{v823, v279}];
    *&v281 = ATXSetInput(&v852, 0x1FBuLL, v280);
    [v814 totalLaunchesForBundleId:{v111, v281}];
    *&v283 = ATXSetInput(&v852, 0x205uLL, v282);
    [v814 totalLaunchesForCategory:{v823, v283}];
    *&v285 = ATXSetInput(&v852, 0x204uLL, v284);
    [v814 entropyForBundleId:{v111, v285}];
    *&v287 = ATXSetInput(&v852, 0x1F9uLL, v286);
    [v813 totalLaunchesForBundleId:v111 category:{v825, v287}];
    *&v289 = ATXSetInput(&v852, 0x1FCuLL, v288);
    [v813 totalLaunchesForBundleId:{v111, v289}];
    *&v291 = ATXSetInput(&v852, 0x203uLL, v290);
    [v813 totalLaunchesForCategory:{v825, v291}];
    *&v293 = ATXSetInput(&v852, 0x202uLL, v292);
    [v813 entropyForBundleId:{v111, v293}];
    *&v295 = ATXSetInput(&v852, 0x1FAuLL, v294);
    [v808 totalLaunchesForBundleId:v111 category:{v740, v295}];
    *&v297 = ATXSetInput(&v852, 0x28CuLL, v296);
    [v808 totalLaunchesForBundleId:{v111, v297}];
    *&v299 = ATXSetInput(&v852, 0x28EuLL, v298);
    [v808 totalLaunchesForCategory:{v740, v299}];
    *&v301 = ATXSetInput(&v852, 0x28DuLL, v300);
    [v808 entropyForBundleId:{v111, v301}];
    *&v303 = ATXSetInput(&v852, 0x299uLL, v302);
    [v777 totalLaunchesForBundleId:v111 category:{v819, v303}];
    *&v305 = ATXSetInput(&v852, 0x2A5uLL, v304);
    [v777 totalLaunchesForCategory:{v819, v305}];
    *&v307 = ATXSetInput(&v852, 0x2A6uLL, v306);
    [v777 totalLaunchesForBundleId:{v111, v307}];
    *&v309 = ATXSetInput(&v852, 0x2A7uLL, v308);
    [v776 totalLaunchesForBundleId:v111 category:{v819, v309}];
    *&v311 = ATXSetInput(&v852, 0x2A8uLL, v310);
    [v776 totalLaunchesForCategory:{v819, v311}];
    *&v313 = ATXSetInput(&v852, 0x2A9uLL, v312);
    [v776 totalLaunchesForBundleId:{v111, v313}];
    *&v315 = ATXSetInput(&v852, 0x2AAuLL, v314);
    [v775 totalLaunchesForBundleId:v111 category:{v821, v315}];
    *&v317 = ATXSetInput(&v852, 0x2ABuLL, v316);
    [v775 totalLaunchesForCategory:{v821, v317}];
    *&v319 = ATXSetInput(&v852, 0x2ACuLL, v318);
    [v775 totalLaunchesForBundleId:{v111, v319}];
    *&v321 = ATXSetInput(&v852, 0x2ADuLL, v320);
    [v774 totalLaunchesForBundleId:v111 category:{v821, v321}];
    *&v323 = ATXSetInput(&v852, 0x2AEuLL, v322);
    [v774 totalLaunchesForCategory:{v821, v323}];
    *&v325 = ATXSetInput(&v852, 0x2AFuLL, v324);
    [v774 totalLaunchesForBundleId:{v111, v325}];
    *&v327 = ATXSetInput(&v852, 0x2B0uLL, v326);
    [v773 totalLaunchesForBundleId:v111 category:{v825, v327}];
    *&v329 = ATXSetInput(&v852, 0x2B1uLL, v328);
    [v773 totalLaunchesForCategory:{v825, v329}];
    *&v331 = ATXSetInput(&v852, 0x2B2uLL, v330);
    [v773 totalLaunchesForBundleId:{v111, v331}];
    *&v333 = ATXSetInput(&v852, 0x2B3uLL, v332);
    [v772 totalLaunchesForBundleId:v111 category:{v825, v333}];
    *&v335 = ATXSetInput(&v852, 0x2B4uLL, v334);
    [v772 totalLaunchesForCategory:{v825, v335}];
    *&v337 = ATXSetInput(&v852, 0x2B5uLL, v336);
    [v772 totalLaunchesForBundleId:{v111, v337}];
    *&v339 = ATXSetInput(&v852, 0x2B6uLL, v338);
    [v771 totalLaunchesForBundleId:v111 category:{v823, v339}];
    *&v341 = ATXSetInput(&v852, 0x2B7uLL, v340);
    [v771 totalLaunchesForCategory:{v823, v341}];
    *&v343 = ATXSetInput(&v852, 0x2B8uLL, v342);
    [v771 totalLaunchesForBundleId:{v111, v343}];
    *&v345 = ATXSetInput(&v852, 0x2B9uLL, v344);
    [v770 totalLaunchesForBundleId:v111 category:{v823, v345}];
    *&v347 = ATXSetInput(&v852, 0x2BAuLL, v346);
    [v770 totalLaunchesForCategory:{v823, v347}];
    *&v349 = ATXSetInput(&v852, 0x2BBuLL, v348);
    [v770 totalLaunchesForBundleId:{v111, v349}];
    *&v351 = ATXSetInput(&v852, 0x2BCuLL, v350);
    [v805 totalLaunchesForBundleId:v111 category:{v827, v351}];
    *&v353 = ATXSetInput(&v852, 0x2BDuLL, v352);
    [v805 totalLaunchesForCategory:{v827, v353}];
    *&v355 = ATXSetInput(&v852, 0x2BEuLL, v354);
    [v805 totalLaunchesForBundleId:{v111, v355}];
    *&v357 = ATXSetInput(&v852, 0x2BFuLL, v356);
    [v804 totalLaunchesForBundleId:v111 category:{v827, v357}];
    *&v359 = ATXSetInput(&v852, 0x2C0uLL, v358);
    [v804 totalLaunchesForCategory:{v827, v359}];
    *&v361 = ATXSetInput(&v852, 0x2C1uLL, v360);
    [v804 totalLaunchesForBundleId:{v111, v361}];
    *&v363 = ATXSetInput(&v852, 0x2C2uLL, v362);
    [v803 totalLaunchesForBundleId:v111 category:{v827, v363}];
    *&v365 = ATXSetInput(&v852, 0x2C3uLL, v364);
    [v803 totalLaunchesForCategory:{v827, v365}];
    *&v367 = ATXSetInput(&v852, 0x2C4uLL, v366);
    [v803 totalLaunchesForBundleId:{v111, v367}];
    *&v369 = ATXSetInput(&v852, 0x2C5uLL, v368);
    [v802 totalLaunchesForBundleId:v111 category:{v820, v369}];
    *&v371 = ATXSetInput(&v852, 0x2C6uLL, v370);
    [v802 totalLaunchesForCategory:{v820, v371}];
    *&v373 = ATXSetInput(&v852, 0x2C7uLL, v372);
    [v802 totalLaunchesForBundleId:{v111, v373}];
    *&v375 = ATXSetInput(&v852, 0x2C8uLL, v374);
    [v801 totalLaunchesForBundleId:v111 category:{v820, v375}];
    *&v377 = ATXSetInput(&v852, 0x2C9uLL, v376);
    [v801 totalLaunchesForCategory:{v820, v377}];
    *&v379 = ATXSetInput(&v852, 0x2CAuLL, v378);
    [v801 totalLaunchesForBundleId:{v111, v379}];
    *&v381 = ATXSetInput(&v852, 0x2CBuLL, v380);
    [v769 totalLaunchesForBundleId:v111 category:{v819, v381}];
    *&v383 = ATXSetInput(&v852, 0x2D0uLL, v382);
    [v769 totalLaunchesForCategory:{v819, v383}];
    *&v385 = ATXSetInput(&v852, 0x2D1uLL, v384);
    [v769 totalLaunchesForBundleId:{v111, v385}];
    *&v387 = ATXSetInput(&v852, 0x2D2uLL, v386);
    [v768 totalLaunchesForBundleId:v111 category:{v819, v387}];
    *&v389 = ATXSetInput(&v852, 0x2D3uLL, v388);
    [v768 totalLaunchesForCategory:{v819, v389}];
    *&v391 = ATXSetInput(&v852, 0x2D4uLL, v390);
    [v768 totalLaunchesForBundleId:{v111, v391}];
    *&v393 = ATXSetInput(&v852, 0x2D5uLL, v392);
    [v767 totalLaunchesForBundleId:v111 category:{v821, v393}];
    *&v395 = ATXSetInput(&v852, 0x2D6uLL, v394);
    [v767 totalLaunchesForCategory:{v821, v395}];
    *&v397 = ATXSetInput(&v852, 0x2D7uLL, v396);
    [v767 totalLaunchesForBundleId:{v111, v397}];
    *&v399 = ATXSetInput(&v852, 0x2D8uLL, v398);
    [v766 totalLaunchesForBundleId:v111 category:{v821, v399}];
    *&v401 = ATXSetInput(&v852, 0x2D9uLL, v400);
    [v766 totalLaunchesForCategory:{v821, v401}];
    *&v403 = ATXSetInput(&v852, 0x2DAuLL, v402);
    [v766 totalLaunchesForBundleId:{v111, v403}];
    *&v405 = ATXSetInput(&v852, 0x2DBuLL, v404);
    [v765 totalLaunchesForBundleId:v111 category:{v825, v405}];
    *&v407 = ATXSetInput(&v852, 0x2DCuLL, v406);
    [v765 totalLaunchesForCategory:{v825, v407}];
    *&v409 = ATXSetInput(&v852, 0x2DDuLL, v408);
    [v765 totalLaunchesForBundleId:{v111, v409}];
    *&v411 = ATXSetInput(&v852, 0x2DEuLL, v410);
    [v764 totalLaunchesForBundleId:v111 category:{v825, v411}];
    *&v413 = ATXSetInput(&v852, 0x2DFuLL, v412);
    [v764 totalLaunchesForCategory:{v825, v413}];
    *&v415 = ATXSetInput(&v852, 0x2E0uLL, v414);
    [v764 totalLaunchesForBundleId:{v111, v415}];
    *&v417 = ATXSetInput(&v852, 0x2E1uLL, v416);
    [v763 totalLaunchesForBundleId:v111 category:{v823, v417}];
    *&v419 = ATXSetInput(&v852, 0x2E2uLL, v418);
    [v763 totalLaunchesForCategory:{v823, v419}];
    *&v421 = ATXSetInput(&v852, 0x2E3uLL, v420);
    [v763 totalLaunchesForBundleId:{v111, v421}];
    *&v423 = ATXSetInput(&v852, 0x2E4uLL, v422);
    [v762 totalLaunchesForBundleId:v111 category:{v823, v423}];
    *&v425 = ATXSetInput(&v852, 0x2E5uLL, v424);
    [v762 totalLaunchesForCategory:{v823, v425}];
    *&v427 = ATXSetInput(&v852, 0x2E6uLL, v426);
    [v762 totalLaunchesForBundleId:{v111, v427}];
    *&v429 = ATXSetInput(&v852, 0x2E7uLL, v428);
    [v800 totalLaunchesForBundleId:v111 category:{v827, v429}];
    *&v431 = ATXSetInput(&v852, 0x2E8uLL, v430);
    [v800 totalLaunchesForCategory:{v827, v431}];
    *&v433 = ATXSetInput(&v852, 0x2E9uLL, v432);
    [v800 totalLaunchesForBundleId:{v111, v433}];
    *&v435 = ATXSetInput(&v852, 0x2EAuLL, v434);
    [v799 totalLaunchesForBundleId:v111 category:{v827, v435}];
    *&v437 = ATXSetInput(&v852, 0x2EBuLL, v436);
    [v799 totalLaunchesForCategory:{v827, v437}];
    *&v439 = ATXSetInput(&v852, 0x2ECuLL, v438);
    [v799 totalLaunchesForBundleId:{v111, v439}];
    *&v441 = ATXSetInput(&v852, 0x2EDuLL, v440);
    [v798 totalLaunchesForBundleId:v111 category:{v827, v441}];
    *&v443 = ATXSetInput(&v852, 0x2EEuLL, v442);
    [v798 totalLaunchesForCategory:{v827, v443}];
    *&v445 = ATXSetInput(&v852, 0x2EFuLL, v444);
    [v798 totalLaunchesForBundleId:{v111, v445}];
    *&v447 = ATXSetInput(&v852, 0x2F0uLL, v446);
    [v797 totalLaunchesForBundleId:v111 category:{v820, v447}];
    *&v449 = ATXSetInput(&v852, 0x2F1uLL, v448);
    [v797 totalLaunchesForCategory:{v820, v449}];
    *&v451 = ATXSetInput(&v852, 0x2F2uLL, v450);
    [v797 totalLaunchesForBundleId:{v111, v451}];
    *&v453 = ATXSetInput(&v852, 0x2F3uLL, v452);
    [v796 totalLaunchesForBundleId:v111 category:{v820, v453}];
    *&v455 = ATXSetInput(&v852, 0x2F4uLL, v454);
    [v796 totalLaunchesForCategory:{v820, v455}];
    *&v457 = ATXSetInput(&v852, 0x2F5uLL, v456);
    [v796 totalLaunchesForBundleId:{v111, v457}];
    *&v459 = ATXSetInput(&v852, 0x2F6uLL, v458);
    [v805 totalLaunches];
    *&v461 = ATXSetInput(&v852, 0x2F7uLL, v460);
    [v802 totalLaunches];
    *&v463 = ATXSetInput(&v852, 0x2F8uLL, v462);
    [v804 totalLaunches];
    *&v465 = ATXSetInput(&v852, 0x2F9uLL, v464);
    [v801 totalLaunches];
    *&v467 = ATXSetInput(&v852, 0x2FAuLL, v466);
    [v803 totalLaunches];
    *&v469 = ATXSetInput(&v852, 0x2FBuLL, v468);
    [v800 totalLaunches];
    *&v471 = ATXSetInput(&v852, 0x2FCuLL, v470);
    [v797 totalLaunches];
    *&v473 = ATXSetInput(&v852, 0x2FDuLL, v472);
    [v799 totalLaunches];
    *&v475 = ATXSetInput(&v852, 0x2FEuLL, v474);
    [v796 totalLaunches];
    *&v477 = ATXSetInput(&v852, 0x2FFuLL, v476);
    [v798 totalLaunches];
    *&v479 = ATXSetInput(&v852, 0x300uLL, v478);
    [v814 totalLaunches];
    *&v481 = ATXSetInput(&v852, 0x207uLL, v480);
    [v813 totalLaunches];
    ATXSetInput(&v852, 0x206uLL, v482);
    *&v483 = ATXSetInput(&v852, 0x208uLL, v718);
    if (v839)
    {
      [v839 likelihoodForLaunch:{v111, v483}];
      ATXSetInput(&v852, 0x25uLL, v484);
    }

    ATXSetInput(&v852, 0x28uLL, v732);
    ATXSetInput(&v852, 0x29uLL, v731);
    *&v485 = ATXSetInput(&v852, 0x2AuLL, v730);
    [v842 entropyForBundleId:{v111, v485}];
    ATXSetInput(&v852, 0x2BuLL, v486);
    ATXSetInput(&v852, 0x2CuLL, v50);
    ATXSetInput(&v852, 0x2DuLL, v729);
    ATXSetInput(&v852, 0x2EuLL, v51);
    ATXSetInput(&v852, 0x2FuLL, v728);
    *&v487 = ATXSetInput(&v852, 0x30uLL, v727);
    [v815 entropyForBundleId:{v111, v487}];
    ATXSetInput(&v852, 0x31uLL, v488);
    ATXSetInput(&v852, 0x32uLL, v52);
    ATXSetInput(&v852, 0x33uLL, v812);
    v489 = -1.0;
    if ((v726 & 1) == 0)
    {
      [objc_opt_class() _computeL2DistanceFromBundleId:v111 to:__p app2vecMapping:v717];
      v489 = v490;
    }

    *&v491 = ATXSetInput(&v852, 0x34uLL, v489);
    *&v492 = ATXSetInput(&v852, 0x60uLL, [v846[8] appSupportsMedia:{v111, v491}]);
    v493 = [recentNotifications objectForKeyedSubscript:{v111, v492}];
    v494 = v493 == 0;

    if (!v494)
    {
      v495 = objc_opt_class();
      v496 = [recentNotifications objectForKeyedSubscript:v111];
      [v496 timeIntervalSinceNow];
      [v495 time:-v497 toAccuracyInSeconds:0.1];
      ATXSetInput(&v852, 0x4DuLL, v498);
    }

    v499 = [v846[14] predictionsForBundleId:v111];
    predictionIndex = 32767.0;
    v501 = v499;
    if (v499)
    {
      predictionSource = [v499 predictionSource];
      if (predictionSource == 2)
      {
        [v501 confidence];
        *&v504 = ATXSetInput(&v852, 0x46uLL, v503);
        *&v505 = ATXSetInput(&v852, 0x47uLL, [v501 pmmReason]);
        *&v506 = ATXSetInput(&v852, 0x48uLL, [v501 anchorType]);
        predictionIndex = [v501 predictionIndex];
      }

      else
      {
        v507 = __atxlog_handle_pmm(predictionSource);
        if (os_log_type_enabled(v507, OS_LOG_TYPE_ERROR))
        {
          [ATXAppFeaturizer evaluateFeaturesForApps:v851 clipBundleIdsToRank:v507 consumerSubType:? intent:? scoreLogger:? context:? featureCache:?];
        }

        predictionIndex = 32767.0;
      }
    }

    *&v508 = ATXSetInput(&v852, 0x4BuLL, predictionIndex);
    *&v509 = ATXSetInput(&v852, 0x4CuLL, [v846[14] mmPredictionCount]);
    [v846[9] getCurrentDoseForApp:{v111, v509}];
    v511 = v510;
    *&v512 = ATXSetInput(&v852, 0x38uLL, v510);
    v513 = [v846[9] getDoseForApp:{v111, v512}];
    if (v513)
    {
      v514 = v513;
      [v513 movingAverage];
      *&v516 = ATXSetInput(&v852, 0x37uLL, v515);
      [v514 movingError];
      *&v518 = ATXSetInput(&v852, 0x3AuLL, v517);
      [v514 movingAverage];
      ATXSetInput(&v852, 0x39uLL, v519 - v511);
    }

    else
    {
      v514 = 0;
      v520 = __atxlog_handle_app_prediction(0);
      if (os_log_type_enabled(v520, OS_LOG_TYPE_DEBUG))
      {
        v873 = 138412290;
        v874 = v111;
        _os_log_debug_impl(&dword_2263AA000, v520, OS_LOG_TYPE_DEBUG, "[DailyDose]:can not find historical dose for: %@", &v873, 0xCu);
      }
    }

    if (v107 >= (v866 - v865) >> 3 || (ATXSetInput(&v852, 0xBuLL, *(v865 + v107)), v107 >= (v864 - v863) >> 3) || (ATXSetInput(&v852, 0xCuLL, *(v863 + v107)), v107 >= (v862 - v861) >> 3))
    {
      std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
    }

    *&v521 = ATXSetInput(&v852, 0xDuLL, *(v861 + v107));
    v522 = [v846[18] objectForKeyedSubscript:{@"appCategories", v521}];
    v747 = [v522 objectForKeyedSubscript:v111];

    *&v523 = ATXSetInput(&v852, 0x84uLL, [v747 intValue]);
    [v795 totalLaunchesForBundleId:v111 category:{v827, v523}];
    *&v525 = ATXSetInput(&v852, 0x189uLL, v524);
    [v795 totalLaunchesForCategory:{v827, v525}];
    *&v527 = ATXSetInput(&v852, 0x18AuLL, v526);
    [v795 totalLaunchesForBundleId:{v111, v527}];
    *&v529 = ATXSetInput(&v852, 0x18BuLL, v528);
    [v795 totalLaunches];
    *&v531 = ATXSetInput(&v852, 0x18CuLL, v530);
    [v794 totalLaunchesForBundleId:v111 category:{v827, v531}];
    *&v533 = ATXSetInput(&v852, 0x18DuLL, v532);
    [v794 totalLaunchesForCategory:{v827, v533}];
    *&v535 = ATXSetInput(&v852, 0x18EuLL, v534);
    [v794 totalLaunchesForBundleId:{v111, v535}];
    *&v537 = ATXSetInput(&v852, 0x18FuLL, v536);
    [v794 totalLaunches];
    *&v539 = ATXSetInput(&v852, 0x190uLL, v538);
    [v793 totalLaunchesForBundleId:v111 category:{v827, v539}];
    *&v541 = ATXSetInput(&v852, 0x191uLL, v540);
    [v793 totalLaunchesForCategory:{v827, v541}];
    *&v543 = ATXSetInput(&v852, 0x192uLL, v542);
    [v793 totalLaunchesForBundleId:{v111, v543}];
    *&v545 = ATXSetInput(&v852, 0x193uLL, v544);
    [v793 totalLaunches];
    *&v547 = ATXSetInput(&v852, 0x194uLL, v546);
    [v792 totalLaunchesForBundleId:v111 category:{v827, v547}];
    *&v549 = ATXSetInput(&v852, 0x195uLL, v548);
    [v792 totalLaunchesForCategory:{v827, v549}];
    *&v551 = ATXSetInput(&v852, 0x196uLL, v550);
    [v792 totalLaunchesForBundleId:{v111, v551}];
    *&v553 = ATXSetInput(&v852, 0x197uLL, v552);
    [v792 totalLaunches];
    *&v555 = ATXSetInput(&v852, 0x198uLL, v554);
    [v791 totalLaunchesForBundleId:v111 category:{v820, v555}];
    *&v557 = ATXSetInput(&v852, 0x199uLL, v556);
    [v791 totalLaunchesForCategory:{v820, v557}];
    *&v559 = ATXSetInput(&v852, 0x19AuLL, v558);
    [v791 totalLaunchesForBundleId:{v111, v559}];
    *&v561 = ATXSetInput(&v852, 0x19BuLL, v560);
    [v791 totalLaunches];
    *&v563 = ATXSetInput(&v852, 0x19CuLL, v562);
    [v790 totalLaunchesForBundleId:v111 category:{v820, v563}];
    *&v565 = ATXSetInput(&v852, 0x19DuLL, v564);
    [v790 totalLaunchesForCategory:{v820, v565}];
    *&v567 = ATXSetInput(&v852, 0x19EuLL, v566);
    [v790 totalLaunchesForBundleId:{v111, v567}];
    *&v569 = ATXSetInput(&v852, 0x19FuLL, v568);
    [v790 totalLaunches];
    *&v571 = ATXSetInput(&v852, 0x1A0uLL, v570);
    [v789 totalLaunchesForBundleId:v111 category:{v820, v571}];
    *&v573 = ATXSetInput(&v852, 0x1A1uLL, v572);
    [v789 totalLaunchesForCategory:{v820, v573}];
    *&v575 = ATXSetInput(&v852, 0x1A2uLL, v574);
    [v789 totalLaunchesForBundleId:{v111, v575}];
    *&v577 = ATXSetInput(&v852, 0x1A3uLL, v576);
    [v789 totalLaunches];
    *&v579 = ATXSetInput(&v852, 0x1A4uLL, v578);
    [v761 totalLaunchesForBundleId:v111 category:{v821, v579}];
    *&v581 = ATXSetInput(&v852, 0x209uLL, v580);
    [v761 totalLaunchesForCategory:{v821, v581}];
    *&v583 = ATXSetInput(&v852, 0x20AuLL, v582);
    [v761 totalLaunchesForBundleId:{v111, v583}];
    *&v585 = ATXSetInput(&v852, 0x20BuLL, v584);
    [v760 totalLaunchesForBundleId:v111 category:{v821, v585}];
    *&v587 = ATXSetInput(&v852, 0x20CuLL, v586);
    [v760 totalLaunchesForCategory:{v821, v587}];
    *&v589 = ATXSetInput(&v852, 0x20DuLL, v588);
    [v760 totalLaunchesForBundleId:{v111, v589}];
    *&v591 = ATXSetInput(&v852, 0x20EuLL, v590);
    [v759 totalLaunchesForBundleId:v111 category:{v821, v591}];
    *&v593 = ATXSetInput(&v852, 0x20FuLL, v592);
    [v759 totalLaunchesForCategory:{v821, v593}];
    *&v595 = ATXSetInput(&v852, 0x210uLL, v594);
    [v759 totalLaunchesForBundleId:{v111, v595}];
    *&v597 = ATXSetInput(&v852, 0x211uLL, v596);
    [v758 totalLaunchesForBundleId:v111 category:{v819, v597}];
    *&v599 = ATXSetInput(&v852, 0x212uLL, v598);
    [v758 totalLaunchesForCategory:{v819, v599}];
    *&v601 = ATXSetInput(&v852, 0x213uLL, v600);
    [v758 totalLaunchesForBundleId:{v111, v601}];
    *&v603 = ATXSetInput(&v852, 0x214uLL, v602);
    [v757 totalLaunchesForBundleId:v111 category:{v819, v603}];
    *&v605 = ATXSetInput(&v852, 0x215uLL, v604);
    [v757 totalLaunchesForCategory:{v819, v605}];
    *&v607 = ATXSetInput(&v852, 0x216uLL, v606);
    [v757 totalLaunchesForBundleId:{v111, v607}];
    *&v609 = ATXSetInput(&v852, 0x217uLL, v608);
    [v788 totalLaunchesForBundleId:v111 category:{v825, v609}];
    *&v611 = ATXSetInput(&v852, 0x218uLL, v610);
    [v788 totalLaunchesForCategory:{v825, v611}];
    *&v613 = ATXSetInput(&v852, 0x219uLL, v612);
    [v788 totalLaunchesForBundleId:{v111, v613}];
    *&v615 = ATXSetInput(&v852, 0x21AuLL, v614);
    [v787 totalLaunchesForBundleId:v111 category:{v825, v615}];
    *&v617 = ATXSetInput(&v852, 0x21BuLL, v616);
    [v787 totalLaunchesForCategory:{v825, v617}];
    *&v619 = ATXSetInput(&v852, 0x21CuLL, v618);
    [v787 totalLaunchesForBundleId:{v111, v619}];
    *&v621 = ATXSetInput(&v852, 0x21DuLL, v620);
    [v786 totalLaunchesForBundleId:v111 category:{v823, v621}];
    *&v623 = ATXSetInput(&v852, 0x21EuLL, v622);
    [v786 totalLaunchesForCategory:{v823, v623}];
    *&v625 = ATXSetInput(&v852, 0x21FuLL, v624);
    [v786 totalLaunchesForBundleId:{v111, v625}];
    *&v627 = ATXSetInput(&v852, 0x220uLL, v626);
    [v785 totalLaunchesForBundleId:v111 category:{v823, v627}];
    *&v629 = ATXSetInput(&v852, 0x221uLL, v628);
    [v785 totalLaunchesForCategory:{v823, v629}];
    *&v631 = ATXSetInput(&v852, 0x222uLL, v630);
    [v785 totalLaunchesForBundleId:{v111, v631}];
    *&v633 = ATXSetInput(&v852, 0x223uLL, v632);
    [v788 totalLaunches];
    *&v635 = ATXSetInput(&v852, 0x224uLL, v634);
    [v786 totalLaunches];
    *&v637 = ATXSetInput(&v852, 0x225uLL, v636);
    [v787 totalLaunches];
    *&v639 = ATXSetInput(&v852, 0x226uLL, v638);
    [v785 totalLaunches];
    *&v641 = ATXSetInput(&v852, 0x227uLL, v640);
    [v756 launchPopularityWithBundleId:v111 category:{currentPoiCategory, v641}];
    *&v643 = ATXSetInput(&v852, 0x326uLL, v642);
    [v756 relativeLaunchPopularityWithBundleId:v111 category:{currentPoiCategory, v643}];
    *&v645 = ATXSetInput(&v852, 0x327uLL, v644);
    [v756 totalLaunchesForBundleId:v111 category:{currentPoiCategory, v645}];
    *&v647 = ATXSetInput(&v852, 0x329uLL, v646);
    [v846 setModeAffinityScores:&v852 appModeEntityScores:{v733, v647}];
    v648 = v852;
    v848 = v648;
    memcpy(v849, v853, sizeof(v849));
    if (v754)
    {
      [v754 addItem:&v848 forBundleId:v111];
    }

    else
    {
    }

    if (0x13A524387AC82261 * ((v829[1] - *v829) >> 3) <= v107)
    {
      std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
    }

    v649 = (*v829 + 3336 * v107);
    objc_storeStrong(v649, v852);
    memcpy(v649 + 1, v853, 0xCFEuLL);

    goto LABEL_114;
  }

LABEL_115:

  if (__p)
  {
    v859 = __p;
    operator delete(__p);
  }

  if (v861)
  {
    v862 = v861;
    operator delete(v861);
  }

  if (v863)
  {
    v864 = v863;
    operator delete(v863);
  }

  if (v865)
  {
    v866 = v865;
    operator delete(v865);
  }

  objc_autoreleasePoolPop(v707);
  v650 = objc_opt_new();
  v824 = v650;
  v847 = objc_opt_new();
  v845 = objc_opt_new();
  v843 = objc_opt_new();
  v840 = objc_opt_new();
  v838 = objc_opt_new();
  v836 = objc_opt_new();
  v834 = objc_opt_new();
  v832 = objc_opt_new();
  v828 = objc_opt_new();
  v826 = objc_opt_new();
  v651 = objc_opt_new();
  v652 = objc_opt_new();
  v653 = objc_opt_new();
  v822 = objc_opt_new();
  if (v812 >= 1)
  {
    v654 = 0;
    v655 = 0;
    do
    {
      v656 = [obj objectAtIndexedSubscript:v655];
      v657 = [v784 objectForKeyedSubscript:v656];
      [v650 addScore:v657 group:*(*v829 + v654 + 124)];
      [v847 addScore:v657 group:*(*v829 + v654 + 164)];
      [v845 addScore:v657 group:*(*v829 + v654 + 160)];
      [v843 addScore:v657 group:*(*v829 + v654 + 144)];
      [v840 addScore:v657 group:*(*v829 + v654 + 268)];
      [v838 addScore:v657 group:*(*v829 + v654 + 260)];
      [v836 addScore:v657 group:*(*v829 + v654 + 244)];
      [v834 addScore:v657 group:*(*v829 + v654 + 168)];
      [v832 addScore:v657 group:*(*v829 + v654 + 276)];
      v658 = [v783 objectForKeyedSubscript:v656];
      [v828 addScore:v658 group:*(*v829 + v654 + 124)];
      [v826 addScore:v658 group:*(*v829 + v654 + 164)];
      [v651 addScore:v658 group:*(*v829 + v654 + 160)];
      [v652 addScore:v658 group:*(*v829 + v654 + 268)];
      [v653 addScore:v658 group:*(*v829 + v654 + 168)];
      if (v658)
      {
        [v822 addObject:v658];
      }

      v650 = v824;
      ++v655;
      v654 += 3336;
    }

    while (3336 * v812 != v654);
  }

  v659 = [v822 count];
  if (v812 >= 1)
  {
    v660 = 0;
    v661 = v659;
    do
    {
      v662 = [obj objectAtIndexedSubscript:v660];
      v663 = [v784 objectForKeyedSubscript:v662];
      v664 = *v829;
      [v650 getScoreForGroup:v663];
      *&v666 = ATXSetInput(v664 + 3336 * v660, 0x51uLL, v665);
      v667 = *v829;
      [v847 getScoreForGroup:{v663, v666}];
      *&v669 = ATXSetInput(v667 + 3336 * v660, 0x52uLL, v668);
      v670 = *v829;
      [v845 getScoreForGroup:{v663, v669}];
      *&v672 = ATXSetInput(v670 + 3336 * v660, 0x53uLL, v671);
      v673 = *v829;
      [v843 getScoreForGroup:{v663, v672}];
      *&v675 = ATXSetInput(v673 + 3336 * v660, 0x54uLL, v674);
      v676 = *v829;
      [v840 getScoreForGroup:{v663, v675}];
      *&v678 = ATXSetInput(v676 + 3336 * v660, 0x55uLL, v677);
      v679 = *v829;
      [v838 getScoreForGroup:{v663, v678}];
      *&v681 = ATXSetInput(v679 + 3336 * v660, 0x56uLL, v680);
      v682 = *v829;
      [v836 getScoreForGroup:{v663, v681}];
      *&v684 = ATXSetInput(v682 + 3336 * v660, 0x57uLL, v683);
      v685 = *v829;
      [v834 getScoreForGroup:{v663, v684}];
      *&v687 = ATXSetInput(v685 + 3336 * v660, 0x58uLL, v686);
      v688 = *v829;
      [v832 getScoreForGroup:{v663, v687}];
      *&v690 = ATXSetInput(v688 + 3336 * v660, 0x59uLL, v689);
      v691 = [v783 objectForKeyedSubscript:{v662, v690}];
      v692 = *v829;
      [v828 getScoreForGroup:v691];
      *&v694 = ATXSetInput(v692 + 3336 * v660, 0x5AuLL, v693);
      v695 = *v829;
      [v826 getScoreForGroup:{v691, v694}];
      *&v697 = ATXSetInput(v695 + 3336 * v660, 0x5BuLL, v696);
      v698 = *v829;
      [v651 getScoreForGroup:{v691, v697}];
      *&v700 = ATXSetInput(v698 + 3336 * v660, 0x5CuLL, v699);
      v701 = *v829;
      [v652 getScoreForGroup:{v691, v700}];
      *&v703 = ATXSetInput(v701 + 3336 * v660, 0x5DuLL, v702);
      v704 = *v829;
      [v653 getScoreForGroup:{v691, v703}];
      ATXSetInput(v704 + 3336 * v660, 0x5EuLL, v705);
      ATXSetInput(*v829 + 3336 * v660, 0x5FuLL, v661);

      ++v660;
    }

    while (v660 != v812);
  }

LABEL_132:
  v875[0] = &v867;
  std::vector<ATXPredictionItem>::__destroy_vector::operator()[abi:ne200100](v875);

  return result;
}

- (void)setModeAffinityScores:(ATXPredictionItem *)scores appModeEntityScores:(id)entityScores
{
  v24 = [entityScores objectForKeyedSubscript:scores->key];
  if (v24)
  {
    v6 = [ATXModeEntityScoringFeatures alloc];
    scoreMetadata = [v24 scoreMetadata];
    featureVector = [scoreMetadata featureVector];
    v9 = [(ATXModeEntityScoringFeatures *)v6 initFromJSON:featureVector];

    entitySpecificFeatures = [v9 entitySpecificFeatures];
    appCategoryScore = [entitySpecificFeatures appCategoryScore];
    [appCategoryScore doubleValue];
    v13 = v12;

    *&v14 = ATXSetInput(scores, 0x32AuLL, v13);
    [v9 posteriorProbability];
    *&v16 = ATXSetInput(scores, 0x32BuLL, v15);
    [v9 classConditionalProbability];
    *&v18 = ATXSetInput(scores, 0x32CuLL, v17);
    *&v19 = ATXSetInput(scores, 0x32DuLL, [v9 uniqueOccurrencesInMode]);
    *&v20 = ATXSetInput(scores, 0x32EuLL, [v9 localOccurrences]);
    *&v21 = ATXSetInput(scores, 0x32FuLL, [v9 globalOccurrences]);
    scoreMetadata2 = [v24 scoreMetadata];
    [scoreMetadata2 score];
    ATXSetInput(scores, 0x330uLL, v23);
  }

  else
  {
    [(ATXAppFeaturizer *)self setZeroValuesForModeEntityFeatures:scores];
  }
}

- (void)setZeroValuesForModeEntityFeatures:(ATXPredictionItem *)features
{
  ATXSetInput(features, 0x32AuLL, 0.0);
  ATXSetInput(features, 0x32BuLL, 0.0);
  ATXSetInput(features, 0x32CuLL, 0.0);
  ATXSetInput(features, 0x32DuLL, 0.0);
  ATXSetInput(features, 0x32EuLL, 0.0);
  ATXSetInput(features, 0x32FuLL, 0.0);

  ATXSetInput(features, 0x330uLL, 0.0);
}

- (void)setDistributionBasedScoreInputsForTimeAndDay:(ATXPredictionItem *)day forBundleId:(id)id withTimeOfDayHistogram:(id)histogram withDayOfWeekHistogram:(id)weekHistogram
{
  v32[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  histogramCopy = histogram;
  weekHistogramCopy = weekHistogram;
  bucketCount = [histogramCopy bucketCount];
  if (bucketCount <= 7)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAppFeaturizer.mm" lineNumber:954 description:@"Number of aggregated time buckets should be greater than 0"];
  }

  v13 = 0;
  v14 = bucketCount >> 3;
  while (v13 != v14)
  {
    v15 = objc_autoreleasePoolPush();
    v16 = 8 * v13;
    v17 = 0.0;
    v18 = 8;
    do
    {
      v32[0] = idCopy;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
      [histogramCopy unsmoothedLaunchesForBundleIds:v19 forLocalTime:v16];
      v21 = v20;

      v17 = v17 + v21;
      ++v16;
      --v18;
    }

    while (v18);
    ATXSetInput(day, [_ATXScoreTypes mappingForTimeOfDayDistributionSignals:v13 forScoreInputCategory:0], v17);
    objc_autoreleasePoolPop(v15);
    ++v13;
  }

  for (i = 0; i != 7; ++i)
  {
    v23 = objc_autoreleasePoolPush();
    v24 = [_ATXScoreTypes mappingForDayOfWeekDistributionSignals:i forScoreInputCategory:0];
    v31 = idCopy;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    [weekHistogramCopy unsmoothedLaunchesForBundleIds:v25 forLocalTime:i];
    v27 = v26;

    ATXSetInput(day, v24, v27);
    objc_autoreleasePoolPop(v23);
  }
}

- (void)setDistributionBasedScoreInputsForItem:(ATXPredictionItem *)item withGeoHashResolution:(unint64_t)resolution withGeoHashLaunchCounts:(id)counts
{
  v24[1] = *MEMORY[0x277D85DE8];
  countsCopy = counts;
  v23 = [MEMORY[0x277CCAC98] sortDescriptorWithKey:@"self" ascending:0];
  v24[0] = v23;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  v9 = [countsCopy sortedArrayUsingDescriptors:v8];

  v12 = 0;
  if (resolution <= 1)
  {
    if (resolution)
    {
      if (resolution != 1)
      {
        goto LABEL_14;
      }

      *&v11 = ATXSetInput(item, 0x1F7uLL, [countsCopy count]);
      v13 = &kATXAppNumberOfScoreInputsForCoarseGeoHash;
    }

    else
    {
      *&v11 = ATXSetInput(item, 0x1F6uLL, [countsCopy count]);
      v13 = &kATXAppNumberOfScoreInputsForSpecificGeoHash;
    }

    goto LABEL_13;
  }

  if (resolution == 2)
  {
    *&v11 = ATXSetInput(item, 0x29AuLL, [countsCopy count]);
    v13 = &kATXAppNumberOfScoreInputsForZoom7GeoHash;
LABEL_13:
    v12 = *v13;
LABEL_14:
    v15 = 0;
    v16 = v12;
    while (1)
    {
      v17 = [v9 count];
      v18 = v17 >= v16 ? v16 : v17;
      if (v15 >= v18)
      {
        break;
      }

      v19 = objc_autoreleasePoolPush();
      v20 = [_ATXScoreTypes mappingForTopRankedGeoHashSignalsWithResolution:resolution withRank:v15 forScoreInputCategory:0];
      v21 = [v9 objectAtIndex:v15];
      [v21 doubleValue];
      ATXSetInput(item, v20, v22);

      objc_autoreleasePoolPop(v19);
      ++v15;
    }

    goto LABEL_10;
  }

  if (resolution != 0xFFFFFFFF)
  {
    goto LABEL_14;
  }

  v14 = __atxlog_handle_app_prediction(v10);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [ATXAppFeaturizer setDistributionBasedScoreInputsForItem:v14 withGeoHashResolution:? withGeoHashLaunchCounts:?];
  }

LABEL_10:
}

+ (float)_computeL2DistanceFromBundleId:(id)id to:(const float *)to app2vecMapping:(id)mapping
{
  v13[1] = *MEMORY[0x277D85DE8];
  idCopy = id;
  mappingCopy = mapping;
  v8 = 4 * [mappingCopy vectorLength];
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (([mappingCopy getVectorForBundleIdWithGenreBackup:idCopy into:v9] & 1) == 0)
  {
    bzero(v9, v8);
  }

  catlas_saxpby_NEWLAPACK();
  cblas_snrm2_NEWLAPACK();
  v11 = v10;

  return v11;
}

+ (void)_predictNextAppLaunchEmbedding:(id)embedding into:(float *)into launchSequence:(id)sequence
{
  v25 = *MEMORY[0x277D85DE8];
  embeddingCopy = embedding;
  sequenceCopy = sequence;
  vectorLength = [embeddingCopy vectorLength];
  std::vector<float>::vector[abi:ne200100](&__p, 4 * vectorLength);
  v10 = 0;
  *&v11 = 138412546;
  v18 = v11;
  while ([sequenceCopy count] > v10)
  {
    v12 = [sequenceCopy objectAtIndexedSubscript:v10];
    v13 = (v10 - [sequenceCopy count] + 4) * vectorLength;
    if (v13 >= (v20 - __p) >> 2)
    {
      std::vector<ATXPredictionItem>::__throw_out_of_range[abi:ne200100]();
    }

    v14 = [embeddingCopy getVectorForBundleIdWithGenreBackup:v12 into:__p + 4 * v13];

    v16 = __atxlog_handle_app_prediction(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [sequenceCopy objectAtIndexedSubscript:v10];
      *buf = v18;
      v22 = v17;
      v23 = 1024;
      v24 = v14;
      _os_log_debug_impl(&dword_2263AA000, v16, OS_LOG_TYPE_DEBUG, "Embeddings found for %@: %i", buf, 0x12u);
    }

    ++v10;
  }

  if (+[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:]::onceToken != -1)
  {
    +[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:];
  }

  [+[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:]::nn forInputs:__p computeOutputLayer:into];
  if (__p)
  {
    v20 = __p;
    operator delete(__p);
  }
}

void __71__ATXAppFeaturizer__predictNextAppLaunchEmbedding_into_launchSequence___block_invoke()
{
  v0 = [MEMORY[0x277CEB3C0] pathForResource:@"_ATXAppLaunchSequenceModel" ofType:@"dat" isDirectory:0];
  if (v0)
  {
    v6 = 0;
    v1 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v0 options:1 error:&v6];
    v2 = v6;
    v3 = v2;
    if (v1)
    {
      v4 = [[_ATXNeuralNetwork alloc] initWithData:v1];
      v5 = +[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:]::nn;
      +[ATXAppFeaturizer _predictNextAppLaunchEmbedding:into:launchSequence:]::nn = v4;
    }

    else
    {
      v5 = __atxlog_handle_app_prediction(v2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __71__ATXAppFeaturizer__predictNextAppLaunchEmbedding_into_launchSequence___block_invoke_cold_1(v0, v3, v5);
      }
    }
  }
}

+ (double)time:(double)time toAccuracyInSeconds:(double)seconds
{
  if (seconds <= 0.0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"ATXAppFeaturizer.mm" lineNumber:1058 description:@"Accuracy must be greater than 0"];
  }

  return (time / seconds) * seconds;
}

- (void)evaluateFeaturesForApps:(os_log_t)log clipBundleIdsToRank:consumerSubType:intent:scoreLogger:context:featureCache:.cold.2(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "MagicalMoment with unknown source. This shouldn't happen.", buf, 2u);
}

- (void)setDistributionBasedScoreInputsForItem:(os_log_t)log withGeoHashResolution:withGeoHashLaunchCounts:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 134217984;
  v2 = 0xFFFFFFFFLL;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Unknown GeoHash Resolution: %ld", &v1, 0xCu);
}

void __71__ATXAppFeaturizer__predictNextAppLaunchEmbedding_into_launchSequence___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_2263AA000, log, OS_LOG_TYPE_ERROR, "Could not read neural network from %@: %@", &v3, 0x16u);
}

@end