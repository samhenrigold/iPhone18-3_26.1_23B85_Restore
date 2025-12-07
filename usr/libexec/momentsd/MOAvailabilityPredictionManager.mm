@interface MOAvailabilityPredictionManager
+ (double)calculateOverlapPercentageForPredictionWindowStartHour:(double)hour predictionWindowEndHour:(double)endHour eventStartHour:(double)startHour eventEndHour:(double)eventEndHour;
+ (double)getWeekday:(id)weekday;
- (MOAvailabilityPredictionManager)initWithUniverse:(id)universe;
- (double)countOccurenceOfEvents:(id)events forWindow:(id)window windowSize:(int)size checkTime:(BOOL)time checkWeekday:(BOOL)weekday addBuffer:(BOOL)buffer checkOverlapPercentage:(BOOL)percentage forFeature:(id)self0;
- (id)checkNonzeroMedianScreentimeUsagePerHour:(id)hour;
- (id)copyAndTrim:(id)trim toWindowStartDate:(id)date returnAsMOEvent:(BOOL)event;
- (id)extractFeaturesWithEvents:(id)events andBundles:(id)bundles andHourlyEngagement:(id)engagement andHourlyWritingEngagement:(id)writingEngagement forWindow:(id)window withDowntimeWindowStartHour:(double)hour andDowntimeWindowEndHour:(double)endHour;
- (id)filterHourlyOccurrenceCounts:(id)counts withThreshold:(int64_t)threshold;
- (id)filterScreentimeEvents:(id)events;
- (id)findConsecutiveAvailabilityEndDateFrom:(id)from inPredictionArray:(id)array withThreshold:(double)threshold;
- (id)findOptimalDateWithPrediction:(id)prediction withPredictionProbabilityThreshold:(double)threshold;
- (id)findOverlappingEngagament:(id)engagament forEvents:(id)events;
- (id)getCallStartDates:(id)dates;
- (id)getEngagementTimeArray:(id)array withKey:(id)key checkWriting:(BOOL)writing;
- (id)getHourlyOccurrenceCounts:(id)counts;
- (id)getMediaPlaySessionStartDates:(id)dates;
- (id)mergeHourlyOccurrenceCounts:(id)counts withDict:(id)dict;
- (id)reformatHourlyOccurrenceCounts:(id)counts;
- (id)runMLmodelWithFeatures:(id)features andModel:(id)model;
- (id)selectBestWindowFromCandidates:(id)candidates;
- (id)selectWindowWithHighestProbabilityFrom:(id)from;
- (void)_predictUserAvailabilityWithEvents:(id)events andBundles:(id)bundles andSuggestionEngagementEvents:(id)engagementEvents andAppEntryEngagementEvents:(id)entryEngagementEvents handler:(id)handler;
- (void)predictUserAvailabilityWithEvents:(id)events andBundles:(id)bundles andSuggestionEngagementEvents:(id)engagementEvents andAppEntryEngagementEvents:(id)entryEngagementEvents availabilityWithDowntimeHandler:(id)handler;
- (void)saveEligiblePOICategories:(id)categories;
@end

@implementation MOAvailabilityPredictionManager

- (MOAvailabilityPredictionManager)initWithUniverse:(id)universe
{
  universeCopy = universe;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [universeCopy getService:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [universeCopy getService:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v13 = [universeCopy getService:v12];

  v204.receiver = self;
  v204.super_class = MOAvailabilityPredictionManager;
  v14 = [(MOAvailabilityPredictionManager *)&v204 init];
  if (v14)
  {
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    uTF8String = [v16 UTF8String];
    v18 = dispatch_queue_attr_make_with_autorelease_frequency(&_dispatch_queue_attr_concurrent, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_create(uTF8String, v18);
    queue = v14->_queue;
    v14->_queue = v19;

    objc_storeStrong(&v14->_configurationManager, v7);
    objc_storeStrong(&v14->_defaultsManager, v10);
    objc_storeStrong(&v14->_categoryStore, v13);
    v21 = [NSSet setWithArray:&off_10036DFB0];
    allowedScreentimeCategories = v14->_allowedScreentimeCategories;
    v14->_allowedScreentimeCategories = v21;

    LODWORD(v23) = 2.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionHourlyViewCountThresholdKey" withFallback:v23];
    v25 = v24;
    v14->_availabilityPredictionHourlyViewCountThreshold = v25;
    LODWORD(v25) = 1163984896;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionWindowSizeKey" withFallback:v25];
    v27 = v26;
    v14->_availabilityPredictionWindowSize = v27;
    LODWORD(v27) = 1060320051;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionProbabilityThresholdKey" withFallback:v27];
    v29 = v28;
    v14->_availabilityPredictionProbabilityThreshold = v29;
    LODWORD(v29) = 1053609165;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionProbabilityInsufficientScreentimeThresholdKey" withFallback:v29];
    v31 = v30;
    v14->_availabilityPredictionProbabilityInsufficientScreentimeThreshold = v31;
    LODWORD(v31) = 0.5;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionLocationThresholdKey" withFallback:v31];
    v33 = v32;
    v14->_availabilityPredictionLocationThreshold = v33;
    LODWORD(v33) = 0.5;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"AvailabilityPredictionScreentimeThresholdKey" withFallback:v33];
    v14->_availabilityPredictionScreentimeThreshold = v34;
    v14->_availabilityPredictionRetryHourCount = [(MOConfigurationManagerBase *)v14->_configurationManager getIntegerSettingForKey:@"AvailabilityPredictionRetryHourCount" withFallback:3];
    LODWORD(v35) = 22.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionDefaultSleepStartHourKey" withFallback:v35];
    v37 = v36;
    v14->_downtimeDetectionDefaultSleepStartHour = v37;
    LODWORD(v37) = 8.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionDefaultSleepEndHourKey" withFallback:v37];
    v39 = v38;
    v14->_downtimeDetectionDefaultSleepEndHour = v39;
    LODWORD(v39) = 6.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionWinLengthMinDefaultKey" withFallback:v39];
    v41 = v40;
    v14->_downtimeDetectionWinLengthMin = v41;
    LODWORD(v41) = 12.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionWinLengthMaxDefaultKey" withFallback:v41];
    v43 = v42;
    v14->_downtimeDetectionWinLengthMax = v43;
    LODWORD(v43) = 0.75;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionWinActivityRatioMaxDefaultKey" withFallback:v43];
    v45 = v44;
    v14->_downtimeDetectionWinActivityRatioMax = v45;
    LODWORD(v45) = 1050253722;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionTrimFractionKey" withFallback:v45];
    v47 = v46;
    v14->_downtimeDetectionTrimFraction = v47;
    LODWORD(v47) = 15.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionMinNumDaysWithScreentimeThresholdKey" withFallback:v47];
    v49 = v48;
    v14->_downtimeDetectionMinNumDaysWithScreentimeThreshold = v49;
    LODWORD(v49) = 3.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionMinNumObservationsThresholdKey" withFallback:v49];
    v51 = v50;
    v14->_downtimeDetectionMinNumObservationsThreshold = v51;
    LODWORD(v51) = 4.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionMinActiveHoursThresholdKey" withFallback:v51];
    v53 = v52;
    v14->_downtimeDetectionMinActiveHoursThreshold = v53;
    LODWORD(v53) = 1036831949;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionOverallActivityThresholdKey" withFallback:v53];
    v55 = v54;
    v14->_downtimeDetectionOverallActivityThreshold = v55;
    LODWORD(v55) = 2.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionRecentDaysMinNumDaysWithScreentimeThresholdKey" withFallback:v55];
    v57 = v56;
    v14->_downtimeDetectionRecentDaysMinNumDaysWithScreentimeThreshold = v57;
    LODWORD(v57) = 2.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionRecentDaysMinNumObservationsThresholdKey" withFallback:v57];
    v59 = v58;
    v14->_downtimeDetectionRecentDaysMinNumObservationsThreshold = v59;
    LODWORD(v59) = 4.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionRecentDaysMinActiveHoursThresholdKey" withFallback:v59];
    v61 = v60;
    v14->_downtimeDetectionRecentDaysMinActiveHoursThreshold = v61;
    LODWORD(v61) = 0.5;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"DowntimeDetectionRecentDaysOverallActivityThresholdKey" withFallback:v61];
    v63 = v62;
    v14->_downtimeDetectionRecentDaysOverallActivityThreshold = v63;
    LODWORD(v63) = 1099241561;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMDowntimeStartHourFeatureScaleMeanKey" withFallback:v63];
    v65 = v64;
    v14->_downtimeStartHourFeatureScaleMean = v65;
    LODWORD(v65) = 1091583425;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMDowntimeStartHourFeatureScaleStdKey" withFallback:v65];
    v67 = v66;
    v14->_downtimeStartHourFeatureScaleStd = v67;
    LODWORD(v67) = 1090618761;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMDowntimeEndHourFeatureScaleMeanKey" withFallback:v67];
    v69 = v68;
    v14->_downtimeEndHourFeatureScaleMean = v69;
    LODWORD(v69) = 1064249913;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMDowntimeEndHourFeatureScaleStdKey" withFallback:v69];
    v71 = v70;
    v14->_downtimeEndHourFeatureScaleStd = v71;
    LODWORD(v71) = 11.5;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHourFeatureScaleMeanKey" withFallback:v71];
    v73 = v72;
    v14->_hourFeatureScaleMean = v73;
    LODWORD(v73) = 1088258702;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHourFeatureScaleStdKey" withFallback:v73];
    v75 = v74;
    v14->_hourFeatureScaleStd = v75;
    LODWORD(v75) = 3.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMWeekdayFeatureScaleMeanKey" withFallback:v75];
    v77 = v76;
    v14->_weekdayFeatureScaleMean = v77;
    LODWORD(v77) = 2.0;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMWeekdayFeatureScaleStdKey" withFallback:v77];
    v79 = v78;
    v14->_weekdayFeatureScaleStd = v79;
    LODWORD(v79) = 1055980792;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityCountFeatureScaleMeanKey" withFallback:v79];
    v81 = v80;
    v14->_motionActivityCountFeatureScaleMean = v81;
    LODWORD(v81) = 1066513226;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityCountFeatureScaleStdKey" withFallback:v81];
    v83 = v82;
    v14->_motionActivityCountFeatureScaleStd = v83;
    LODWORD(v83) = 1025368950;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityCountShortLookbackFeatureScaleMeanKey" withFallback:v83];
    v85 = v84;
    v14->_motionActivityCountShortLookbackFeatureScaleMean = v85;
    LODWORD(v85) = 1045654348;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityCountShortLookbackFeatureScaleStdKey" withFallback:v85];
    v87 = v86;
    v14->_motionActivityCountShortLookbackFeatureScaleStd = v87;
    LODWORD(v87) = 1016298247;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityOverlapCountShortLookbackFeatureScaleMeanKey" withFallback:v87];
    v89 = v88;
    v14->_motionActivityOverlapCountShortLookbackFeatureScaleMean = v89;
    LODWORD(v89) = 1041148726;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMotionActivityOverlapCountShortLookbackFeatureScaleStdKey" withFallback:v89];
    v91 = v90;
    v14->_motionActivityOverlapCountShortLookbackFeatureScaleStd = v91;
    LODWORD(v91) = 1025813210;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountFeatureScaleMeanKey" withFallback:v91];
    v93 = v92;
    v14->_engagementCountFeatureScaleMean = v93;
    LODWORD(v93) = 1052848922;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountFeatureScaleStdKey" withFallback:v93];
    v95 = v94;
    v14->_engagementCountFeatureScaleStd = v95;
    LODWORD(v95) = 1014756354;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountMidLookbackFeatureScaleMeanKey" withFallback:v95];
    v97 = v96;
    v14->_engagementCountMidLookbackFeatureScaleMean = v97;
    LODWORD(v97) = 1042399837;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountMidLookbackFeatureScaleStdKey" withFallback:v97];
    v99 = v98;
    v14->_engagementCountMidLookbackFeatureScaleStd = v99;
    LODWORD(v99) = 1000496525;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountBin1MidLookbackFeatureScaleMeanKey" withFallback:v99];
    v101 = v100;
    v14->_engagementCountBin1MidLookbackFeatureScaleMean = v101;
    LODWORD(v101) = 1035820887;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMEngagementCountBin1MidLookbackFeatureScaleStdKey" withFallback:v101];
    v103 = v102;
    v14->_engagementCountBin1MidLookbackFeatureScaleStd = v103;
    LODWORD(v103) = 1053669194;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountFeatureScaleMeanKey" withFallback:v103];
    v105 = v104;
    v14->_healthandfitnessScreentimeCountFeatureScaleMean = v105;
    LODWORD(v105) = 1066837614;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountFeatureScaleStdKey" withFallback:v105];
    v107 = v106;
    v14->_healthandfitnessScreentimeCountFeatureScaleStd = v107;
    LODWORD(v107) = 1040848549;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountMidLookbackFeatureScaleMeanKey" withFallback:v107];
    v109 = v108;
    v14->_healthandfitnessScreentimeCountMidLookbackFeatureScaleMean = v109;
    LODWORD(v109) = 1056758114;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountMidLookbackFeatureScaleStdKey" withFallback:v109];
    v111 = v110;
    v14->_healthandfitnessScreentimeCountMidLookbackFeatureScaleStd = v111;
    LODWORD(v111) = 1025253254;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountShortLookbackFeatureScaleMeanKey" withFallback:v111];
    v113 = v112;
    v14->_healthandfitnessScreentimeCountShortLookbackFeatureScaleMean = v113;
    LODWORD(v113) = 1045819571;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMHealthandfitnessScreentimeCountShortLookbackFeatureScaleStdKey" withFallback:v113];
    v115 = v114;
    v14->_healthandfitnessScreentimeCountShortLookbackFeatureScaleStd = v115;
    LODWORD(v115) = 1082307337;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeCountFeatureScaleMeanKey" withFallback:v115];
    v117 = v116;
    v14->_screentimeCountFeatureScaleMean = v117;
    LODWORD(v117) = 1084060095;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeCountFeatureScaleStdKey" withFallback:v117];
    v119 = v118;
    v14->_screentimeCountFeatureScaleStd = v119;
    LODWORD(v119) = 1040394893;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeSameWeekdayProbabilityFeatureScaleMeanKey" withFallback:v119];
    v121 = v120;
    v14->_screentimeSameWeekdayProbabilityFeatureScaleMean = v121;
    LODWORD(v121) = 1045848360;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeSameWeekdayProbabilityFeatureScaleStdKey" withFallback:v121];
    v123 = v122;
    v14->_screentimeSameWeekdayProbabilityFeatureScaleStd = v123;
    LODWORD(v123) = 1055343560;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeCountShortLookbackFeatureScaleMeanKey" withFallback:v123];
    v125 = v124;
    v14->_screentimeCountShortLookbackFeatureScaleMean = v125;
    LODWORD(v125) = 1060343623;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMScreentimeCountShortLookbackFeatureScaleStdKey" withFallback:v125];
    v127 = v126;
    v14->_screentimeCountShortLookbackFeatureScaleStd = v127;
    LODWORD(v127) = 1032182244;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOverMedianScreentimeSameWeekdayProbabilityFeatureScaleMeanKey" withFallback:v127];
    v129 = v128;
    v14->_overMedianScreentimeSameWeekdayProbabilityFeatureScaleMean = v129;
    LODWORD(v129) = 1041414746;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOverMedianScreentimeSameWeekdayProbabilityFeatureScaleStdKey" withFallback:v129];
    v131 = v130;
    v14->_overMedianScreentimeSameWeekdayProbabilityFeatureScaleStd = v131;
    LODWORD(v131) = 1047284557;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOverMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleMeanKey" withFallback:v131];
    v133 = v132;
    v14->_overMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleMean = v133;
    LODWORD(v133) = 1056896090;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOverMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleStdKey" withFallback:v133];
    v135 = v134;
    v14->_overMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleStd = v135;
    LODWORD(v135) = 1025234195;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOver20MinScreentimeSameWeekdayProbabilityFeatureScaleMeanKey" withFallback:v135];
    v137 = v136;
    v14->_over20MinScreentimeSameWeekdayProbabilityFeatureScaleMean = v137;
    LODWORD(v137) = 1038292103;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOver20MinScreentimeSameWeekdayProbabilityFeatureScaleStdKey" withFallback:v137];
    v139 = v138;
    v14->_over20MinScreentimeSameWeekdayProbabilityFeatureScaleStd = v139;
    LODWORD(v139) = 1055419091;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOver20MinScreentimeCountMidLookbackFeatureScaleMeanKey" withFallback:v139];
    v141 = v140;
    v14->_over20MinScreentimeCountMidLookbackFeatureScaleMean = v141;
    LODWORD(v141) = 1064177217;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMOver20MinScreentimeCountMidLookbackFeatureScaleStdKey" withFallback:v141];
    v143 = v142;
    v14->_over20MinScreentimeCountMidLookbackFeatureScaleStd = v143;
    LODWORD(v143) = 1089294603;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMCallCountFeatureScaleMeanKey" withFallback:v143];
    v145 = v144;
    v14->_callCountFeatureScaleMean = v145;
    LODWORD(v145) = 1089371327;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMCallCountFeatureScaleStdKey" withFallback:v145];
    v147 = v146;
    v14->_callCountFeatureScaleStd = v147;
    LODWORD(v147) = 1074675677;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMusicCountFeatureScaleMeanKey" withFallback:v147];
    v149 = v148;
    v14->_musicCountFeatureScaleMean = v149;
    LODWORD(v149) = 1079737737;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMusicCountFeatureScaleStdKey" withFallback:v149];
    v151 = v150;
    v14->_musicCountFeatureScaleStd = v151;
    LODWORD(v151) = 1046188468;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMusicCountShortLookbackFeatureScaleMeanKey" withFallback:v151];
    v153 = v152;
    v14->_musicCountShortLookbackFeatureScaleMean = v153;
    LODWORD(v153) = 1056947462;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMMusicCountShortLookbackFeatureScaleStdKey" withFallback:v153];
    v155 = v154;
    v14->_musicCountShortLookbackFeatureScaleStd = v155;
    LODWORD(v155) = 1091860835;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtHomeCountFeatureScaleMeanKey" withFallback:v155];
    v157 = v156;
    v14->_atHomeCountFeatureScaleMean = v157;
    LODWORD(v157) = 1088019348;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtHomeCountFeatureScaleStdKey" withFallback:v157];
    v159 = v158;
    v14->_atHomeCountFeatureScaleStd = v159;
    LODWORD(v159) = 1064400404;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtHomeCountShortLookbackFeatureScaleMeanKey" withFallback:v159];
    v161 = v160;
    v14->_atHomeCountShortLookbackFeatureScaleMean = v161;
    LODWORD(v161) = 1063041500;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtHomeCountShortLookbackFeatureScaleStdKey" withFallback:v161];
    v163 = v162;
    v14->_atHomeCountShortLookbackFeatureScaleStd = v163;
    LODWORD(v163) = 1069583012;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkCountFeatureScaleMeanKey" withFallback:v163];
    v165 = v164;
    v14->_atWorkCountFeatureScaleMean = v165;
    LODWORD(v165) = 1077519839;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkCountFeatureScaleStdKey" withFallback:v165];
    v167 = v166;
    v14->_atWorkCountFeatureScaleStd = v167;
    LODWORD(v167) = 1028177053;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkSameWeekdayProbabilityFeatureScaleMeanKey" withFallback:v167];
    v169 = v168;
    v14->_atWorkSameWeekdayProbabilityFeatureScaleMean = v169;
    LODWORD(v169) = 1041997855;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkSameWeekdayProbabilityFeatureScaleStdKey" withFallback:v169];
    v171 = v170;
    v14->_atWorkSameWeekdayProbabilityFeatureScaleStd = v171;
    LODWORD(v171) = 1041522724;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkCountShortLookbackFeatureScaleMeanKey" withFallback:v171];
    v173 = v172;
    v14->_atWorkCountShortLookbackFeatureScaleMean = v173;
    LODWORD(v173) = 1054944094;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMAtWorkCountShortLookbackFeatureScaleStdKey" withFallback:v173];
    v175 = v174;
    v14->_atWorkCountShortLookbackFeatureScaleStd = v175;
    LODWORD(v175) = 1091042802;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMWeekdayPrevScreentimeCountFeatureScaleMeanKey" withFallback:v175];
    v177 = v176;
    v14->_weekdayPrevScreentimeCountFeatureScaleMean = v177;
    LODWORD(v177) = 1096082695;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMWeekdayPrevScreentimeCountFeatureScaleStdKey" withFallback:v177];
    v179 = v178;
    v14->_weekdayPrevScreentimeCountFeatureScaleStd = v179;
    LODWORD(v179) = 1026141238;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMFirstScreentimeOfDayFeatureScaleMeanKey" withFallback:v179];
    v181 = v180;
    v14->_firstScreentimeOfDayFeatureScaleMean = v181;
    LODWORD(v181) = 1045171567;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMFirstScreentimeOfDayFeatureScaleStdKey" withFallback:v181];
    v183 = v182;
    v14->_firstScreentimeOfDayFeatureScaleStd = v183;
    LODWORD(v183) = 1026216669;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMLastScreentimeOfDayFeatureScaleMeanKey" withFallback:v183];
    v185 = v184;
    v14->_lastScreentimeOfDayFeatureScaleMean = v185;
    LODWORD(v185) = 1045214853;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMLastScreentimeOfDayFeatureScaleStdKey" withFallback:v185];
    v187 = v186;
    v14->_lastScreentimeOfDayFeatureScaleStd = v187;
    LODWORD(v187) = 1045779775;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsAfternoonFeatureScaleMeanKey" withFallback:v187];
    v189 = v188;
    v14->_isAfternoonFeatureScaleMean = v189;
    LODWORD(v189) = 1053814384;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsAfternoonFeatureScaleStdKey" withFallback:v189];
    v191 = v190;
    v14->_isAfternoonFeatureScaleStd = v191;
    LODWORD(v191) = 1042983617;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsEveningFeatureScaleMeanKey" withFallback:v191];
    v193 = v192;
    v14->_isEveningFeatureScaleMean = v193;
    LODWORD(v193) = 1052692391;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsEveningFeatureScaleStdKey" withFallback:v193];
    v195 = v194;
    v14->_isEveningFeatureScaleStd = v195;
    LODWORD(v195) = 1049974113;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsMorningFeatureScaleMeanKey" withFallback:v195];
    v197 = v196;
    v14->_isMorningFeatureScaleMean = v197;
    LODWORD(v197) = 1055438888;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsMorningFeatureScaleStdKey" withFallback:v197];
    v199 = v198;
    v14->_isMorningFeatureScaleStd = v199;
    LODWORD(v199) = 1051372191;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsNightFeatureScaleMeanKey" withFallback:v199];
    v201 = v200;
    v14->_isNightFeatureScaleMean = v201;
    LODWORD(v201) = 1056005119;
    [(MOConfigurationManagerBase *)v14->_configurationManager getFloatSettingForKey:@"APMIsNightFeatureScaleStdKey" withFallback:v201];
    v14->_isNightFeatureScaleStd = v202;
  }

  return v14;
}

- (void)predictUserAvailabilityWithEvents:(id)events andBundles:(id)bundles andSuggestionEngagementEvents:(id)engagementEvents andAppEntryEngagementEvents:(id)entryEngagementEvents availabilityWithDowntimeHandler:(id)handler
{
  eventsCopy = events;
  bundlesCopy = bundles;
  engagementEventsCopy = engagementEvents;
  entryEngagementEventsCopy = entryEngagementEvents;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  queue = [(MOAvailabilityPredictionManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __170__MOAvailabilityPredictionManager_predictUserAvailabilityWithEvents_andBundles_andSuggestionEngagementEvents_andAppEntryEngagementEvents_availabilityWithDowntimeHandler___block_invoke;
  block[3] = &unk_10033DC88;
  objc_copyWeak(&v29, &location);
  v24 = eventsCopy;
  v25 = bundlesCopy;
  v26 = engagementEventsCopy;
  v27 = entryEngagementEventsCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = entryEngagementEventsCopy;
  v20 = engagementEventsCopy;
  v21 = bundlesCopy;
  v22 = eventsCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v29);
  objc_destroyWeak(&location);
}

void __170__MOAvailabilityPredictionManager_predictUserAvailabilityWithEvents_andBundles_andSuggestionEngagementEvents_andAppEntryEngagementEvents_availabilityWithDowntimeHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  [WeakRetained _predictUserAvailabilityWithEvents:*(a1 + 32) andBundles:*(a1 + 40) andSuggestionEngagementEvents:*(a1 + 48) andAppEntryEngagementEvents:*(a1 + 56) handler:*(a1 + 64)];
}

- (void)_predictUserAvailabilityWithEvents:(id)events andBundles:(id)bundles andSuggestionEngagementEvents:(id)engagementEvents andAppEntryEngagementEvents:(id)entryEngagementEvents handler:(id)handler
{
  engagementEventsCopy = engagementEvents;
  entryEngagementEventsCopy = entryEngagementEvents;
  handlerCopy = handler;
  bundlesCopy = bundles;
  eventsCopy = events;
  v15 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v414 = v15;
  v16 = [NSArray arrayWithObjects:&v414 count:1];
  v17 = [eventsCopy sortedArrayUsingDescriptors:v16];

  v18 = [[NSSortDescriptor alloc] initWithKey:@"startDate" ascending:1];
  v413 = v18;
  v19 = [NSArray arrayWithObjects:&v413 count:1];
  v303 = [bundlesCopy sortedArrayUsingDescriptors:v19];

  v20 = +[NSBundle mainBundle];
  v21 = [v20 URLForResource:@"availabilityPredict061725" withExtension:@"mlmodelc"];

  v22 = objc_alloc_init(MLModelConfiguration);
  v336 = 0;
  v302 = [MLModel modelWithContentsOfURL:v21 configuration:v22 error:&v336];
  v23 = v336;
  v304 = v17;
  v247 = v15;
  if (v23)
  {
    v25 = handlerCopy;
    v24 = entryEngagementEventsCopy;
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [MOAvailabilityPredictionManager _predictUserAvailabilityWithEvents:v23 andBundles:? andSuggestionEngagementEvents:? andAppEntryEngagementEvents:? handler:?];
    }

    (*(handlerCopy + 2))(handlerCopy, 0, 0, v23);
    v27 = v303;
    goto LABEL_70;
  }

  v239 = v22;
  v240 = v21;
  v241 = v18;
  v238 = [NSPredicate predicateWithFormat:@"suggestionEvent.type IN %@", &off_10036DFC8];
  v28 = [engagementEventsCopy filteredArrayUsingPredicate:?];
  [NSPredicate predicateWithFormat:@"suggestionEvent.type == %@", &off_10036B218];
  v236 = v242 = engagementEventsCopy;
  v235 = [engagementEventsCopy filteredArrayUsingPredicate:?];
  v29 = [MOAvailabilityPredictionManager getEngagementTimeArray:"getEngagementTimeArray:withKey:checkWriting:" withKey:? checkWriting:?];
  v30 = [(MOAvailabilityPredictionManager *)self getEngagementTimeArray:entryEngagementEventsCopy withKey:@"entryEvent" checkWriting:0];
  v31 = [(MOAvailabilityPredictionManager *)self getEngagementTimeArray:entryEngagementEventsCopy withKey:@"entryEvent" checkWriting:1];
  v237 = v28;
  [(MOAvailabilityPredictionManager *)self getEngagementTimeArray:v28 withKey:@"suggestionEvent" checkWriting:0];
  v231 = v233 = v30;
  v32 = [v30 arrayByAddingObjectsFromArray:?];
  v234 = v29;
  v229 = [(MOAvailabilityPredictionManager *)self getHourlyOccurrenceCounts:v29];
  v33 = [MOAvailabilityPredictionManager filterHourlyOccurrenceCounts:"filterHourlyOccurrenceCounts:withThreshold:" withThreshold:?];
  v34 = [(MOAvailabilityPredictionManager *)self getHourlyOccurrenceCounts:v32];
  v232 = v31;
  v35 = [(MOAvailabilityPredictionManager *)self getHourlyOccurrenceCounts:v31];
  v227 = v34;
  v228 = v33;
  v225 = [(MOAvailabilityPredictionManager *)self mergeHourlyOccurrenceCounts:v33 withDict:v34];
  v301 = [(MOAvailabilityPredictionManager *)self reformatHourlyOccurrenceCounts:?];
  v226 = v35;
  v298 = [(MOAvailabilityPredictionManager *)self reformatHourlyOccurrenceCounts:v35];
  v230 = v32;
  v36 = [(MOAvailabilityPredictionManager *)self findOverlappingEngagament:v32 forEvents:v17];
  defaultsManager = [(MOAvailabilityPredictionManager *)self defaultsManager];
  [defaultsManager deleteObjectForKey:@"AvailabilityPredictionEngagementPOICategories"];

  v224 = v36;
  v223 = [NSSet setWithArray:v36];
  allObjects = [v223 allObjects];
  [(MOAvailabilityPredictionManager *)self saveEligiblePOICategories:allObjects];

  v39 = +[NSDate date];
  v40 = +[NSCalendar currentCalendar];
  v297 = v39;
  v41 = [v40 components:60 fromDate:v39];
  [v41 setMinute:0];
  [v41 setSecond:0];
  v300 = v40;
  v222 = v41;
  v296 = [v40 dateFromComponents:v41];
  v246 = objc_opt_new();
  v411[0] = @"DowntimeDetectionTrimFractionKey";
  v331 = [NSNumber numberWithDouble:self->_downtimeDetectionTrimFraction];
  v412[0] = v331;
  v411[1] = @"DowntimeDetectionWinLengthMinDefaultKey";
  v328 = [NSNumber numberWithDouble:self->_downtimeDetectionWinLengthMin];
  v412[1] = v328;
  v411[2] = @"DowntimeDetectionWinLengthMaxDefaultKey";
  v325 = [NSNumber numberWithDouble:self->_downtimeDetectionWinLengthMax];
  v412[2] = v325;
  v411[3] = @"DowntimeDetectionWinActivityRatioMaxDefaultKey";
  v322 = [NSNumber numberWithDouble:self->_downtimeDetectionWinActivityRatioMax];
  v412[3] = v322;
  v411[4] = @"DowntimeDetectionMinNumDaysWithScreentimeThresholdKey";
  v42 = [NSNumber numberWithDouble:self->_downtimeDetectionMinNumDaysWithScreentimeThreshold];
  v412[4] = v42;
  v411[5] = @"DowntimeDetectionMinNumObservationsThresholdKey";
  v43 = [NSNumber numberWithDouble:self->_downtimeDetectionMinNumObservationsThreshold];
  v412[5] = v43;
  v411[6] = @"DowntimeDetectionMinActiveHoursThresholdKey";
  v44 = [NSNumber numberWithDouble:self->_downtimeDetectionMinActiveHoursThreshold];
  v412[6] = v44;
  v411[7] = @"DowntimeDetectionOverallActivityThresholdKey";
  v45 = [NSNumber numberWithDouble:self->_downtimeDetectionOverallActivityThreshold];
  v412[7] = v45;
  v411[8] = @"DowntimeDetectionRecentDaysMinNumDaysWithScreentimeThresholdKey";
  v46 = [NSNumber numberWithDouble:self->_downtimeDetectionRecentDaysMinNumDaysWithScreentimeThreshold];
  v412[8] = v46;
  v411[9] = @"DowntimeDetectionRecentDaysMinNumObservationsThresholdKey";
  v47 = [NSNumber numberWithDouble:self->_downtimeDetectionRecentDaysMinNumObservationsThreshold];
  v412[9] = v47;
  v411[10] = @"DowntimeDetectionRecentDaysMinActiveHoursThresholdKey";
  v48 = [NSNumber numberWithDouble:self->_downtimeDetectionRecentDaysMinActiveHoursThreshold];
  v412[10] = v48;
  v411[11] = @"DowntimeDetectionRecentDaysOverallActivityThresholdKey";
  v49 = [NSNumber numberWithDouble:self->_downtimeDetectionRecentDaysOverallActivityThreshold];
  v412[11] = v49;
  v50 = [NSDictionary dictionaryWithObjects:v412 forKeys:v411 count:12];

  v51 = v303;
  selfCopy = self;
  allowedScreentimeCategories = self->_allowedScreentimeCategories;
  v335 = 0;
  v53 = v304;
  v245 = v50;
  v54 = [MODowntimeDetectionUtilities downtimeDetectionPipeline:v304 withBundles:v303 withEngagement:v301 withDefaults:v50 withAllowedScreentimeCategories:allowedScreentimeCategories forRecentDays:1 error:&v335];
  v55 = v335;
  v56 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
  {
    v57 = [v54 objectForKeyedSubscript:@"downtimeWindowStartHour"];
    v58 = [v54 objectForKeyedSubscript:@"downtimeWindowEndHour"];
    v59 = [v54 objectForKeyedSubscript:@"downtimeWindowLength"];
    *buf = 138412802;
    v340 = v57;
    v341 = 2112;
    v342 = v58;
    v343 = 2112;
    v344 = v59;
    _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "[APM] Downtime detection for recent days, window start hour: %@, window end hour: %@, window length: %@", buf, 0x20u);

    v51 = v303;
  }

  v220 = v55;
  if (v55)
  {
    v60 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v55 code]);
    v61 = @"downtimeDetectionErrorRecent";
    v62 = v246;
LABEL_9:
    [v62 setObject:v60 forKeyedSubscript:v61];

    goto LABEL_10;
  }

  v93 = [v54 objectForKeyedSubscript:@"downtimeWindowStartHour"];
  v62 = v246;
  if (v93)
  {
    v94 = v93;
    v95 = [v54 objectForKeyedSubscript:@"downtimeWindowLength"];

    if (v95)
    {
      v96 = [v54 objectForKeyedSubscript:@"downtimeWindowStartHour"];
      [v246 setObject:v96 forKeyedSubscript:@"downtimeWindowStartHourRecent"];

      v60 = [v54 objectForKeyedSubscript:@"downtimeWindowLength"];
      v61 = @"downtimeWindowLengthRecent";
      goto LABEL_9;
    }
  }

LABEL_10:
  v63 = selfCopy->_allowedScreentimeCategories;
  v334 = 0;
  v64 = [MODowntimeDetectionUtilities downtimeDetectionPipeline:v304 withBundles:v51 withEngagement:v301 withDefaults:v245 withAllowedScreentimeCategories:v63 forRecentDays:0 error:&v334];
  v65 = v334;
  v66 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v66, OS_LOG_TYPE_INFO))
  {
    v67 = [v64 objectForKeyedSubscript:@"downtimeWindowStartHour"];
    v68 = [v64 objectForKeyedSubscript:@"downtimeWindowEndHour"];
    v69 = [v64 objectForKeyedSubscript:@"downtimeWindowLength"];
    *buf = 138412802;
    v340 = v67;
    v341 = 2112;
    v342 = v68;
    v343 = 2112;
    v344 = v69;
    _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_INFO, "[APM] Downtime detection across all days, window start hour: %@, window end hour: %@, window length: %@", buf, 0x20u);
  }

  if (v65)
  {
    v70 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v65 code]);
    [v62 setObject:v70 forKeyedSubscript:@"downtimeDetectionErrorAllDays"];
    v71 = selfCopy;
LABEL_14:

    goto LABEL_15;
  }

  v97 = [v64 objectForKeyedSubscript:@"downtimeWindowStartHour"];
  v71 = selfCopy;
  if (v97)
  {
    v98 = v97;
    v99 = [v64 objectForKeyedSubscript:@"downtimeWindowLength"];

    if (v99)
    {
      v100 = [v64 objectForKeyedSubscript:@"downtimeWindowStartHour"];
      [v62 setObject:v100 forKeyedSubscript:@"downtimeWindowStartHourAllDays"];

      v70 = [v64 objectForKeyedSubscript:@"downtimeWindowLength"];
      [v62 setObject:v70 forKeyedSubscript:@"downtimeWindowLengthAllDays"];
      goto LABEL_14;
    }
  }

LABEL_15:
  v72 = [v64 objectForKeyedSubscript:@"downtimeWindowStartHour"];
  v73 = [v54 objectForKeyedSubscript:@"downtimeWindowStartHour"];
  defaultsManager2 = [(MOAvailabilityPredictionManager *)v71 defaultsManager];
  v244 = [defaultsManager2 objectForKey:@"DowntimeDetectionWindowStartHourUserHistoricalDefault"];

  defaultsManager3 = [(MOAvailabilityPredictionManager *)v71 defaultsManager];
  [defaultsManager3 deleteObjectForKey:@"downtimeWindowStartHour"];

  v218 = v65;
  v216 = v73;
  if (v72 && v73)
  {
    [v73 doubleValue];
    v77 = v76;
    [v72 doubleValue];
    if ([MODowntimeDetectionUtilities isBeforeHour:v77 comparedTo:v78])
    {
      v79 = v73;
    }

    else
    {
      v79 = v72;
    }

    [v79 doubleValue];
    downtimeDetectionDefaultSleepStartHour = v80;
    defaultsManager4 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
    v83 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
    [defaultsManager4 setObject:v83 forKey:@"DowntimeDetectionWindowStartHour"];

    defaultsManager5 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
    v85 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
    [defaultsManager5 setObject:v85 forKey:@"DowntimeDetectionWindowStartHourUserHistoricalDefault"];

    v86 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v340 = *&downtimeDetectionDefaultSleepStartHour;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "[APM] Downtime detection reconciled window start hour: %f", buf, 0xCu);
    }

    v87 = &off_10036B230;
  }

  else if (v72)
  {
    [v72 doubleValue];
    downtimeDetectionDefaultSleepStartHour = v88;
    defaultsManager6 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
    v90 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
    [defaultsManager6 setObject:v90 forKey:@"DowntimeDetectionWindowStartHour"];

    defaultsManager7 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
    v92 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
    [defaultsManager7 setObject:v92 forKey:@"DowntimeDetectionWindowStartHourUserHistoricalDefault"];

    v86 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v340 = *&downtimeDetectionDefaultSleepStartHour;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "[APM] Downtime detection using overall start hour only: %f", buf, 0xCu);
    }

    v87 = &off_10036B248;
  }

  else if (v244)
  {
    [v244 doubleValue];
    downtimeDetectionDefaultSleepStartHour = v101;
    v86 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v340 = *&downtimeDetectionDefaultSleepStartHour;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "[APM] Downtime detection using personalized default start hour: %f", buf, 0xCu);
    }

    v87 = &off_10036B260;
  }

  else
  {
    downtimeDetectionDefaultSleepStartHour = selfCopy->_downtimeDetectionDefaultSleepStartHour;
    v86 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v340 = *&downtimeDetectionDefaultSleepStartHour;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_INFO, "[APM] Downtime detection using population default start hour: %f", buf, 0xCu);
    }

    v87 = &off_10036B278;
  }

  v102 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepStartHour];
  [v62 setObject:v102 forKeyedSubscript:@"downtimeWindowStartHourSelected"];

  [v62 setObject:v87 forKeyedSubscript:@"downtimeSelectionMechanism"];
  v103 = [v64 objectForKeyedSubscript:@"downtimeWindowEndHour"];
  v104 = [v54 objectForKeyedSubscript:@"downtimeWindowEndHour"];
  defaultsManager8 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
  v243 = [defaultsManager8 objectForKey:@"DowntimeDetectionWindowEndHourUserHistoricalDefault"];

  defaultsManager9 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
  [defaultsManager9 deleteObjectForKey:@"downtimeWindowEndHour"];

  v221 = v54;
  v219 = v64;
  v214 = v104;
  v215 = v103;
  if (!v103 || !v104)
  {
    if (v103)
    {
      [v103 doubleValue];
      downtimeDetectionDefaultSleepEndHour = v119;
      defaultsManager10 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
      v121 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
      [defaultsManager10 setObject:v121 forKey:@"DowntimeDetectionWindowEndHour"];

      defaultsManager11 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
      v123 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
      [defaultsManager11 setObject:v123 forKey:@"DowntimeDetectionWindowEndHourUserHistoricalDefault"];

      v117 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (!os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
      {
        goto LABEL_56;
      }

      *buf = 134217984;
      v340 = *&downtimeDetectionDefaultSleepEndHour;
      v118 = "[APM] Downtime detection using overall end hour only: %f";
    }

    else if (v243)
    {
      [v243 doubleValue];
      downtimeDetectionDefaultSleepEndHour = v124;
      v117 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (!os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
      {
        goto LABEL_56;
      }

      *buf = 134217984;
      v340 = *&downtimeDetectionDefaultSleepEndHour;
      v118 = "[APM] Downtime detection using personalized default end hour: %f";
    }

    else
    {
      downtimeDetectionDefaultSleepEndHour = selfCopy->_downtimeDetectionDefaultSleepEndHour;
      v117 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (!os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
      {
        goto LABEL_56;
      }

      *buf = 134217984;
      v340 = *&downtimeDetectionDefaultSleepEndHour;
      v118 = "[APM] Downtime detection using population default end hour: %f";
    }

    goto LABEL_55;
  }

  [v103 doubleValue];
  v108 = v107;
  [v104 doubleValue];
  if ([MODowntimeDetectionUtilities isBeforeHour:v108 comparedTo:v109])
  {
    v110 = v104;
  }

  else
  {
    v110 = v103;
  }

  [v110 doubleValue];
  downtimeDetectionDefaultSleepEndHour = v111;
  defaultsManager12 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
  v114 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
  [defaultsManager12 setObject:v114 forKey:@"DowntimeDetectionWindowEndHour"];

  defaultsManager13 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
  v116 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
  [defaultsManager13 setObject:v116 forKey:@"DowntimeDetectionWindowEndHourUserHistoricalDefault"];

  v117 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    v340 = *&downtimeDetectionDefaultSleepEndHour;
    v118 = "[APM] Downtime detection reconciled window end hour: %f";
LABEL_55:
    _os_log_impl(&_mh_execute_header, v117, OS_LOG_TYPE_INFO, v118, buf, 0xCu);
  }

LABEL_56:
  v217 = v72;

  v125 = [NSNumber numberWithDouble:downtimeDetectionDefaultSleepEndHour];
  [v62 setObject:v125 forKeyedSubscript:@"downtimeWindowEndHourSelected"];

  v299 = +[NSMutableArray array];
  v126 = 1.0;
  v127 = 24;
  v128 = 0.25;
  v129 = 1.0;
  v130 = selfCopy;
  do
  {
    v329 = v127;
    v129 = [v296 dateByAddingTimeInterval:v130[5] * v129];
    v131 = [v130 extractFeaturesWithEvents:v53 andBundles:v303 andHourlyEngagement:v301 andHourlyWritingEngagement:v298 forWindow:downtimeDetectionDefaultSleepStartHour withDowntimeWindowStartHour:downtimeDetectionDefaultSleepEndHour andDowntimeWindowEndHour:?];
    v132 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
    {
      v326 = [v131 objectForKeyedSubscript:@"downtimeStartHour"];
      [v326 doubleValue];
      v289 = v133;
      v323 = [v131 objectForKeyedSubscript:@"downtimeEndHour"];
      [v323 doubleValue];
      v287 = v134;
      v320 = [v131 objectForKeyedSubscript:@"hour"];
      [v320 doubleValue];
      v286 = v135;
      v318 = [v131 objectForKeyedSubscript:@"weekday"];
      [v318 doubleValue];
      v284 = v136;
      v316 = [v131 objectForKeyedSubscript:@"motionActivityCount"];
      [v316 doubleValue];
      v283 = v137;
      v314 = [v131 objectForKeyedSubscript:@"motionActivityCountShortLookback"];
      [v314 doubleValue];
      v282 = v138;
      v312 = [v131 objectForKeyedSubscript:@"motionActivityOverlapCountShortLookback"];
      [v312 doubleValue];
      v280 = v139;
      v310 = [v131 objectForKeyedSubscript:@"engagementCount"];
      [v310 doubleValue];
      v278 = v140;
      v308 = [v131 objectForKeyedSubscript:@"engagementCountMidLookback"];
      [v308 doubleValue];
      v277 = v141;
      v306 = [v131 objectForKeyedSubscript:@"engagementCountBin1MidLookback"];
      [v306 doubleValue];
      v275 = v142;
      v295 = [v131 objectForKeyedSubscript:@"healthandfitnessScreentimeCount"];
      [v295 doubleValue];
      v274 = v143;
      v294 = [v131 objectForKeyedSubscript:@"healthandfitnessScreentimeCountMidLookback"];
      [v294 doubleValue];
      v272 = v144;
      v293 = [v131 objectForKeyedSubscript:@"healthandfitnessScreentimeCountShortLookback"];
      [v293 doubleValue];
      v270 = v145;
      v292 = [v131 objectForKeyedSubscript:@"screentimeCount"];
      [v292 doubleValue];
      v269 = v146;
      v291 = [v131 objectForKeyedSubscript:@"screentimeSameWeekdayProbability"];
      [v291 doubleValue];
      v267 = v147;
      v290 = [v131 objectForKeyedSubscript:@"screentimeCountShortLookback"];
      [v290 doubleValue];
      v266 = v148;
      v288 = [v131 objectForKeyedSubscript:@"overMedianScreentimeSameWeekdayProbability"];
      [v288 doubleValue];
      v264 = v149;
      v285 = [v131 objectForKeyedSubscript:@"overMedianScreentimeSameWeekdayProbabilityShortLookback"];
      [v285 doubleValue];
      v262 = v150;
      v281 = [v131 objectForKeyedSubscript:@"over20MinScreentimeSameWeekdayProbability"];
      [v281 doubleValue];
      v261 = v151;
      v279 = [v131 objectForKeyedSubscript:@"over20MinScreentimeCountMidLookback"];
      [v279 doubleValue];
      v259 = v152;
      v276 = [v131 objectForKeyedSubscript:@"callCount"];
      [v276 doubleValue];
      v258 = v153;
      v273 = [v131 objectForKeyedSubscript:@"musicCount"];
      [v273 doubleValue];
      v257 = v154;
      v271 = [v131 objectForKeyedSubscript:@"musicCountShortLookback"];
      [v271 doubleValue];
      v256 = v155;
      v268 = [v131 objectForKeyedSubscript:@"atHomeCount"];
      [v268 doubleValue];
      v255 = v156;
      v265 = [v131 objectForKeyedSubscript:@"atHomeCountShortLookback"];
      [v265 doubleValue];
      v254 = v157;
      v263 = [v131 objectForKeyedSubscript:@"atWorkCount"];
      [v263 doubleValue];
      v253 = v158;
      v260 = [v131 objectForKeyedSubscript:@"atWorkSameWeekdayProbability"];
      [v260 doubleValue];
      v252 = v159;
      v160 = [v131 objectForKeyedSubscript:@"atWorkCountShortLookback"];
      [v160 doubleValue];
      v251 = v161;
      v162 = [v131 objectForKeyedSubscript:@"weekdayPrevScreentimeCount"];
      [v162 doubleValue];
      v250 = v163;
      v164 = [v131 objectForKeyedSubscript:@"firstScreentimeOfDay"];
      [v164 doubleValue];
      v166 = v165;
      v167 = [v131 objectForKeyedSubscript:@"lastScreentimeOfDay"];
      [v167 doubleValue];
      v168 = downtimeDetectionDefaultSleepEndHour;
      v170 = v169;
      v171 = [v131 objectForKeyedSubscript:@"isAfternoon"];
      [v171 doubleValue];
      v173 = v172;
      v174 = [v131 objectForKeyedSubscript:@"isEvening"];
      [v174 doubleValue];
      v176 = v175;
      v177 = [v131 objectForKeyedSubscript:@"isMorning"];
      [v177 doubleValue];
      v179 = v178;
      v180 = [v131 objectForKeyedSubscript:@"isNight"];
      [v180 doubleValue];
      v340 = v289;
      v342 = v287;
      v344 = v286;
      v346 = v284;
      *buf = 134226946;
      v341 = 2048;
      v343 = 2048;
      v345 = 2048;
      v347 = 2048;
      v348 = v283;
      v349 = 2048;
      v350 = v282;
      v351 = 2048;
      v352 = v280;
      v353 = 2048;
      v354 = v278;
      v355 = 2048;
      v356 = v277;
      v357 = 2048;
      v358 = v275;
      v359 = 2048;
      v360 = v274;
      v361 = 2048;
      v362 = v272;
      v363 = 2048;
      v364 = v270;
      v365 = 2048;
      v366 = v269;
      v367 = 2048;
      v368 = v267;
      v369 = 2048;
      v370 = v266;
      v371 = 2048;
      v372 = v264;
      v373 = 2048;
      v374 = v262;
      v375 = 2048;
      v376 = v261;
      v377 = 2048;
      v378 = v259;
      v379 = 2048;
      v380 = v258;
      v381 = 2048;
      v382 = v257;
      v383 = 2048;
      v384 = v256;
      v385 = 2048;
      v386 = v255;
      v387 = 2048;
      v388 = v254;
      v389 = 2048;
      v390 = v253;
      v391 = 2048;
      v392 = v252;
      v393 = 2048;
      v394 = v251;
      v395 = 2048;
      v396 = v250;
      v397 = 2048;
      v398 = v166;
      v399 = 2048;
      v400 = v170;
      downtimeDetectionDefaultSleepEndHour = v168;
      v401 = 2048;
      v402 = v173;
      v403 = 2048;
      v404 = v176;
      v126 = 1.0;
      v405 = 2048;
      v406 = v179;
      v128 = 0.25;
      v407 = 2048;
      v408 = v181;
      v409 = 2112;
      v410 = v129;
      _os_log_impl(&_mh_execute_header, v132, OS_LOG_TYPE_INFO, "[APM] Extracted feature array after scaling: [downtimeStartHour:%.5f, downtimeEndHour:%.5f, hour:%.5f, weekday:%.5f, motionActivityCount:%.5f, motionActivityCountShortLookback:%.5f, motionActivityOverlapCountShortLookback:%.5f, engagementCount:%.5f, engagementCountMidLookback:%.5f, engagementCountBin1MidLookback:%.5f, healthandfitnessScreentimeCount:%.5f, healthandfitnessScreentimeCountMidLookback:%.5f, healthandfitnessScreentimeCountShortLookback:%.5f, screentimeCount:%.5f, screentimeSameWeekdayProbability:%.5f, screentimeCountShortLookback:%.5f, overMedianScreentimeSameWeekdayProbability:%.5f, overMedianScreentimeSameWeekdayProbabilityShortLookback:%.5f, over20MinScreentimeSameWeekdayProbability:%.5f, over20MinScreentimeCountMidLookback:%.5f, callCount:%.5f, musicCount:%.5f, musicCountShortLookback:%.5f, atHomeCount:%.5f, atHomeCountShortLookback:%.5f, atWorkCount:%.5f, atWorkSameWeekdayProbability:%.5f, atWorkCountShortLookback:%.5f, weekdayPrevScreentimeCount:%.5f, firstScreentimeOfDay:%.5f, lastScreentimeOfDay:%.5f, isAfternoon:%.5f, isEvening:%.5f, isMorning:%.5f, isNight:%.5f] for window %@", buf, 0x16Au);

      v130 = selfCopy;
      v53 = v304;
    }

    v307 = [v130 runMLmodelWithFeatures:v131 andModel:v302];
    v182 = objc_alloc_init(NSDateComponents);
    [v182 setDay:-28];
    v327 = v182;
    v183 = [v300 dateByAddingComponents:v182 toDate:v297 options:0];
    v321 = [NSPredicate predicateWithFormat:@"(category == %d) AND (placeUserType == %d) AND (provider == %d)", 1, 1, 4];
    v319 = [v53 filteredArrayUsingPredicate:?];
    v324 = v183;
    LOBYTE(v212) = 0;
    v317 = [v130 copyAndTrim:? toWindowStartDate:? returnAsMOEvent:?];
    [v130 countOccurenceOfEvents:v212 forWindow:@"locationFilter" windowSize:? checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v128 = [NSNumber numberWithDouble:v184 * v128];
    v315 = [NSPredicate predicateWithFormat:@"category == %d", 20];
    v313 = [v53 filteredArrayUsingPredicate:?];
    v311 = [v130 filterScreentimeEvents:?];
    v309 = [MODowntimeDetectionUtilities getTotalScreentimeDurations:"getTotalScreentimeDurations:withAllowedScreentimeCategories:" withAllowedScreentimeCategories:?];
    v186 = [v309 objectForKeyedSubscript:@"durationArray"];
    v187 = [NSPredicate predicateWithFormat:@"overMedian == YES"];
    v188 = [v186 filteredArrayUsingPredicate:v187];
    LOBYTE(v213) = 0;
    [v130 countOccurenceOfEvents:v188 forWindow:v129 windowSize:v130[5] checkTime:1 checkWeekday:1 addBuffer:0 checkOverlapPercentage:v213 forFeature:@"screentimeFilter"];
    v1282 = [NSNumber numberWithDouble:v189 * v128];
    v191 = [v129 dateByAddingTimeInterval:v130[5]];
    v192 = [MOTime simpleTimetagFromStartDate:v129 endDate:v191];

    v193 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v193, OS_LOG_TYPE_INFO))
    {
      *buf = 138414082;
      v340 = @"predictionDate";
      v341 = 2112;
      v342 = v129;
      v343 = 2112;
      v344 = @"availabilityProbability";
      v345 = 2112;
      v346 = v307;
      v347 = 2112;
      v348 = @"locationFilterProbability";
      v349 = 2112;
      v350 = v128;
      v351 = 2112;
      v352 = @"screentimeFilterProbability";
      v353 = 2112;
      v354 = v1282;
      _os_log_impl(&_mh_execute_header, v193, OS_LOG_TYPE_INFO, "[APM] %@ %@: %@ %@, %@ %@, %@ %@", buf, 0x52u);
    }

    v338[0] = v129;
    v337[0] = @"predictionDate";
    v337[1] = @"predictionDateTimeTag";
    v194 = [NSNumber numberWithUnsignedInteger:v192];
    v338[1] = v194;
    v338[2] = v307;
    v337[2] = @"availabilityProbability";
    v337[3] = @"locationFilterProbability";
    v337[4] = @"screentimeFilterProbability";
    v338[3] = v128;
    v338[4] = v1282;
    v195 = [NSDictionary dictionaryWithObjects:v338 forKeys:v337 count:5];
    [v299 addObject:v195];

    v196 = v329;
    v130 = selfCopy;
    if (v329 == 1)
    {
      defaultsManager14 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
      [defaultsManager14 setObject:v129 forKey:@"AvailabilityPredictionLastWindowConsidered"];

      v196 = 1;
    }

    v129 = v129 + v126;
    v127 = v196 - 1;
    v53 = v304;
  }

  while (v127);
  v333 = [NSPredicate predicateWithFormat:@"category == %d", 20];
  v330 = [v304 filteredArrayUsingPredicate:?];
  v198 = [MODowntimeDetectionUtilities getUniqueDays:"getUniqueDays:withCalendar:" withCalendar:?];
  v199 = objc_alloc_init(NSDictionary);
  v200 = [v198 count];
  v201 = 88;
  if (selfCopy->_downtimeDetectionMinNumDaysWithScreentimeThreshold > v200)
  {
    v201 = 96;
  }

  v202 = [(MOAvailabilityPredictionManager *)selfCopy findOptimalDateWithPrediction:v299 withPredictionProbabilityThreshold:*(&selfCopy->super.isa + v201)];

  defaultsManager15 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
  v204 = defaultsManager15;
  if (v202)
  {
    v205 = [v202 objectForKeyedSubscript:@"predictionDate"];
    [v204 setObject:v205 forKey:@"AvailabilityPredictionOptimalDate"];

    defaultsManager16 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
    v207 = [v202 objectForKeyedSubscript:@"consecutiveEndDate"];
    [defaultsManager16 setObject:v207 forKey:@"AvailabilityPredictionOptimalEndDate"];

    defaultsManager17 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
    v209 = [v202 objectForKeyedSubscript:@"availabilityProbability"];
    [defaultsManager17 setObject:v209 forKey:@"AvailabilityPredictionOptimalDateProbability"];
  }

  else
  {
    [defaultsManager15 deleteObjectForKey:@"AvailabilityPredictionOptimalDate"];

    defaultsManager17 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
    [defaultsManager17 deleteObjectForKey:@"AvailabilityPredictionOptimalEndDate"];
  }

  engagementEventsCopy = v242;
  v25 = handlerCopy;
  v24 = entryEngagementEventsCopy;
  v23 = 0;

  defaultsManager18 = [(MOAvailabilityPredictionManager *)selfCopy defaultsManager];
  [defaultsManager18 setObject:v297 forKey:@"AvailabilityPredictionLastRunStartDate"];

  v211 = [v299 copy];
  (v25)[2](v25, v211, v246, 0);

  v27 = v303;
  v21 = v240;
  v18 = v241;
  v22 = v239;
LABEL_70:
}

- (id)extractFeaturesWithEvents:(id)events andBundles:(id)bundles andHourlyEngagement:(id)engagement andHourlyWritingEngagement:(id)writingEngagement forWindow:(id)window withDowntimeWindowStartHour:(double)hour andDowntimeWindowEndHour:(double)endHour
{
  eventsCopy = events;
  bundlesCopy = bundles;
  engagementCopy = engagement;
  writingEngagementCopy = writingEngagement;
  windowCopy = window;
  v17 = +[NSCalendar currentCalendar];
  v18 = +[NSDate date];
  v19 = objc_alloc_init(NSDateComponents);
  [v19 setDay:-2];
  v208 = v19;
  v274 = [v17 dateByAddingComponents:v19 toDate:v18 options:0];
  v20 = &GEOPOICategoryGasStation_ptr;
  v274 = [NSPredicate predicateWithFormat:@"endDate >= %@", v274];
  v21 = objc_alloc_init(NSDateComponents);
  [v21 setDay:-7];
  v207 = v21;
  v22 = [v17 dateByAddingComponents:v21 toDate:v18 options:0];
  v23 = [NSPredicate predicateWithFormat:@"%K >= %@", @"startDate", v22];
  v24 = [NSPredicate predicateWithFormat:@"endDate >= %@", v22];
  v25 = objc_alloc_init(NSDateComponents);
  [v25 setDay:-28];
  v203 = v25;
  v209 = v18;
  v270 = [v17 dateByAddingComponents:v25 toDate:v18 options:0];
  v202 = [v17 components:32 fromDate:windowCopy];
  hour = [v202 hour];
  [MOAvailabilityPredictionManager getWeekday:windowCopy];
  v28 = v27;
  v29 = 0.0;
  if ((hour - 5) >= 7)
  {
    v30 = 0.0;
  }

  else
  {
    v30 = 1.0;
  }

  if ((hour - 12) >= 5)
  {
    v31 = 0.0;
  }

  else
  {
    v31 = 1.0;
  }

  if ((hour - 17) >= 4)
  {
    v32 = 0.0;
  }

  else
  {
    v32 = 1.0;
  }

  v266 = hour;
  if ((hour - 21) >= 0xFFFFFFFFFFFFFFF0)
  {
    v33 = 0.0;
  }

  else
  {
    v33 = 1.0;
  }

  LOBYTE(v127) = 0;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:engagementCopy forWindow:windowCopy windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v127 forFeature:@"engagementCount"];
  v190 = v34;
  v210 = engagementCopy;
  [engagementCopy filteredArrayUsingPredicate:v23];
  v201 = LOBYTE(v128) = 0;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v128 windowSize:@"engagementCountMidLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v188 = v35;
  v205 = v23;
  [writingEngagementCopy filteredArrayUsingPredicate:v23];
  v200 = LOBYTE(v129) = 0;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v129 windowSize:@"engagementCountBin1MidLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v260 = v36;
  v199 = [NSPredicate predicateWithFormat:@"category == %d", 20];
  v37 = [eventsCopy filteredArrayUsingPredicate:?];
  v38 = [(MOAvailabilityPredictionManager *)self filterScreentimeEvents:v37];
  v204 = v24;
  v196 = [v38 filteredArrayUsingPredicate:v24];
  v206 = v22;
  v268 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  v195 = [v38 filteredArrayUsingPredicate:v274];
  v39 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  v198 = v37;
  v269 = windowCopy;
  v197 = v38;
  v194 = v39;
  v265 = v33;
  v264 = v30;
  v263 = v32;
  v262 = v31;
  if ([v37 count])
  {
    v240 = v28;
    LOBYTE(v130) = 0;
    [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v38 forWindow:windowCopy windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v130 forFeature:@"screentimeCount"];
    v256 = v40;
    LOBYTE(v131) = 0;
    [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v39 forWindow:windowCopy windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v131 forFeature:@"screentimeCountShortLookback"];
    v258 = v41;
    LOBYTE(v132) = 0;
    [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v38 forWindow:windowCopy windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:1 addBuffer:0 checkOverlapPercentage:v132 forFeature:@"screentimeSameWeekdayProbability"];
    v43 = v42;
    v237 = [MODowntimeDetectionUtilities getTotalScreentimeDurations:v38 withAllowedScreentimeCategories:self->_allowedScreentimeCategories];
    v44 = [v237 objectForKeyedSubscript:@"durationArray"];
    v45 = [NSPredicate predicateWithFormat:@"overMedian == YES"];
    [v44 filteredArrayUsingPredicate:v45];
    v231 = LOBYTE(v133) = 0;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v133 windowSize:@"overMedianScreentimeSameWeekdayProbability" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v47 = v46;
    v228 = [MODowntimeDetectionUtilities getTotalScreentimeDurations:v39 withAllowedScreentimeCategories:self->_allowedScreentimeCategories];
    v225 = [v228 objectForKeyedSubscript:@"durationArray"];
    v234 = v45;
    [v225 filteredArrayUsingPredicate:v45];
    v222 = LOBYTE(v134) = 0;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v134 windowSize:@"overMedianScreentimeSameWeekdayProbabilityShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v254 = v48;
    v220 = [MODowntimeDetectionUtilities getTotalScreentimeDurations:v268 withAllowedScreentimeCategories:self->_allowedScreentimeCategories];
    v49 = [v220 objectForKeyedSubscript:@"durationArray"];
    v50 = [NSPredicate predicateWithFormat:@"over20Min == YES"];
    v217 = v49;
    [v49 filteredArrayUsingPredicate:v50];
    v211 = LOBYTE(v135) = 0;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v135 windowSize:@"over20MinScreentimeCountMidLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v252 = v51;
    v244 = v44;
    v214 = v50;
    [v44 filteredArrayUsingPredicate:v50];
    v186 = LOBYTE(v136) = 0;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v136 windowSize:@"over20MinScreentimeSameWeekdayProbability" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v53 = v52;
    v54 = [NSPredicate predicateWithFormat:@"ANY screenTimeEvent.appCategoryUsages.appCategory == %d", 13];
    [v38 filteredArrayUsingPredicate:v54];
    v182 = LOBYTE(v137) = 0;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v137 windowSize:@"healthandfitnessScreentimeCount" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v250 = v55;
    [v268 filteredArrayUsingPredicate:v54];
    v180 = LOBYTE(v138) = 0;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v138 windowSize:@"healthandfitnessScreentimeCountMidLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v248 = v56;
    v184 = v54;
    [v39 filteredArrayUsingPredicate:v54];
    v178 = LOBYTE(v139) = 0;
    [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v139 windowSize:@"healthandfitnessScreentimeCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
    v246 = v57;
    v58 = [v17 component:512 fromDate:windowCopy];
    v284 = 0u;
    v285 = 0u;
    v286 = 0u;
    v287 = 0u;
    v59 = v38;
    v60 = [v59 countByEnumeratingWithState:&v284 objects:v364 count:16];
    if (v60)
    {
      v61 = v60;
      v62 = *v285;
      do
      {
        for (i = 0; i != v61; i = i + 1)
        {
          if (*v285 != v62)
          {
            objc_enumerationMutation(v59);
          }

          startDate = [*(*(&v284 + 1) + 8 * i) startDate];
          v65 = [v17 component:512 fromDate:startDate];

          if (v65 == v58)
          {
            v29 = v29 + 1.0;
          }
        }

        v61 = [v59 countByEnumeratingWithState:&v284 objects:v364 count:16];
      }

      while (v61);
    }

    v66 = [(MOAvailabilityPredictionManager *)self checkNonzeroMedianScreentimeUsagePerHour:v244];
    v67 = [NSPredicate predicateWithFormat:@"nonzeroMedianCheck == YES"];
    v68 = [v66 filteredArrayUsingPredicate:v67];
    v69 = [v68 valueForKeyPath:@"@distinctUnionOfObjects.hour"];
    v70 = [v69 sortedArrayUsingSelector:"compare:"];

    v282 = 0u;
    v283 = 0u;
    v280 = 0u;
    v281 = 0u;
    v71 = v70;
    v72 = [v71 countByEnumeratingWithState:&v280 objects:v363 count:16];
    if (v72)
    {
      v73 = v72;
      v74 = *v281;
      while (2)
      {
        for (j = 0; j != v73; j = j + 1)
        {
          if (*v281 != v74)
          {
            objc_enumerationMutation(v71);
          }

          v76 = *(*(&v280 + 1) + 8 * j);
          if ([v76 integerValue] >= 6)
          {
            integerValue = [v76 integerValue];
            goto LABEL_33;
          }
        }

        v73 = [v71 countByEnumeratingWithState:&v280 objects:v363 count:16];
        if (v73)
        {
          continue;
        }

        break;
      }
    }

    integerValue = 0;
LABEL_33:

    v278 = 0u;
    v279 = 0u;
    v276 = 0u;
    v277 = 0u;
    reverseObjectEnumerator = [v71 reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];

    integerValue2 = [allObjects countByEnumeratingWithState:&v276 objects:v362 count:16];
    if (integerValue2)
    {
      v174 = integerValue;
      v176 = v68;
      v81 = v67;
      v82 = v66;
      v83 = *v277;
      while (2)
      {
        for (k = 0; k != integerValue2; k = k + 1)
        {
          if (*v277 != v83)
          {
            objc_enumerationMutation(allObjects);
          }

          v85 = *(*(&v276 + 1) + 8 * k);
          if ([v85 integerValue] <= 23)
          {
            integerValue2 = [v85 integerValue];
            goto LABEL_43;
          }
        }

        integerValue2 = [allObjects countByEnumeratingWithState:&v276 objects:v362 count:16];
        if (integerValue2)
        {
          continue;
        }

        break;
      }

LABEL_43:
      v66 = v82;
      v67 = v81;
      integerValue = v174;
      v68 = v176;
    }

    v86 = v43 * 0.25;
    v87 = v47 * 0.25;
    v88 = v53 * 0.25;

    if (v266 == integerValue)
    {
      v89 = 1.0;
    }

    else
    {
      v89 = 0.0;
    }

    if (v266 == integerValue2)
    {
      v90 = 1.0;
    }

    else
    {
      v90 = 0.0;
    }

    windowCopy = v269;
    v28 = v240;
    v20 = &GEOPOICategoryGasStation_ptr;
  }

  else
  {
    v90 = NAN;
    v89 = NAN;
    v29 = NAN;
    v246 = NAN;
    v248 = NAN;
    v250 = NAN;
    v88 = NAN;
    v252 = NAN;
    v254 = NAN;
    v87 = NAN;
    v86 = NAN;
    v258 = NAN;
    v256 = NAN;
  }

  v235 = v86;
  v238 = v87;
  v241 = v88;
  v243 = v89;
  v245 = v90;
  v187 = [v20[193] predicateWithFormat:@"(category == %d) AND (placeUserType == %d) AND (provider == %d)", 1, 1, 4];
  v91 = [eventsCopy filteredArrayUsingPredicate:?];
  v92 = [(MOAvailabilityPredictionManager *)self copyAndTrim:v91 toWindowStartDate:v270 returnAsMOEvent:0];
  v93 = [v17 dateByAddingUnit:64 value:30 toDate:windowCopy options:0];
  LOBYTE(v140) = 0;
  v183 = v92;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v92 forWindow:v93 windowSize:60 checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v140 forFeature:@"atHomeCount"];
  v232 = v94;
  v185 = v91;
  v179 = [v91 filteredArrayUsingPredicate:v274];
  LOBYTE(v141) = 0;
  v177 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v141 windowSize:@"atHomeCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v229 = v95;
  v175 = [v20[193] predicateWithFormat:@"(category == %d) AND (placeUserType == %d) AND (provider == %d)", 1, 2, 4];
  v96 = [eventsCopy filteredArrayUsingPredicate:?];
  LOBYTE(v142) = 0;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v96 forWindow:v93 windowSize:60 checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v142 forFeature:@"atWorkCount"];
  v226 = v97;
  LOBYTE(v143) = 0;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v96 forWindow:v93 windowSize:60 checkTime:1 checkWeekday:1 addBuffer:0 checkOverlapPercentage:v143 forFeature:@"atWorkSameWeekdayProbability"];
  v223 = v98 * 0.25;
  v173 = v96;
  v172 = [v96 filteredArrayUsingPredicate:v274];
  LOBYTE(v144) = 0;
  v171 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  v181 = v93;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v144 windowSize:@"atWorkCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v221 = v99;
  v170 = [v20[193] predicateWithFormat:@"category == %d", 10];
  v169 = [eventsCopy filteredArrayUsingPredicate:?];
  [(MOAvailabilityPredictionManager *)self getCallStartDates:?];
  v168 = LOBYTE(v145) = 0;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v145 windowSize:@"callCount" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v218 = v100;
  v167 = [v20[193] predicateWithFormat:@"category == %d", 6];
  v101 = [eventsCopy filteredArrayUsingPredicate:?];
  [(MOAvailabilityPredictionManager *)self getMediaPlaySessionStartDates:v101];
  v165 = LOBYTE(v146) = 0;
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v146 windowSize:@"musicCount" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v215 = v102;
  v166 = v101;
  v164 = [v101 filteredArrayUsingPredicate:v274];
  v163 = [(MOAvailabilityPredictionManager *)self getMediaPlaySessionStartDates:?];
  LOBYTE(v147) = 0;
  v162 = [MOAvailabilityPredictionManager copyAndTrim:"copyAndTrim:toWindowStartDate:returnAsMOEvent:" toWindowStartDate:? returnAsMOEvent:?];
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v147 windowSize:@"musicCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v212 = v103;
  v161 = [v20[193] predicateWithFormat:@"bundleSubType IN %@", &off_10036DFE0];
  v104 = [bundlesCopy filteredArrayUsingPredicate:?];
  LOBYTE(v148) = 0;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v104 forWindow:windowCopy windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v148 forFeature:@"motionActivityCount"];
  v106 = v105;
  v160 = v104;
  v107 = [v104 filteredArrayUsingPredicate:v274];
  LOBYTE(v149) = 0;
  v158 = [(MOAvailabilityPredictionManager *)self copyAndTrim:v107 toWindowStartDate:v274 returnAsMOEvent:0];
  [MOAvailabilityPredictionManager countOccurenceOfEvents:"countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:" forWindow:v149 windowSize:@"motionActivityCountShortLookback" checkTime:? checkWeekday:? addBuffer:? checkOverlapPercentage:? forFeature:?];
  v109 = v108;
  LOBYTE(v150) = 1;
  v159 = v107;
  [(MOAvailabilityPredictionManager *)self countOccurenceOfEvents:v107 forWindow:windowCopy windowSize:self->_availabilityPredictionWindowSize checkTime:1 checkWeekday:0 addBuffer:0 checkOverlapPercentage:v150 forFeature:@"motionActivityOverlapCountShortLookback"];
  v111 = v110;
  v112 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  v153 = v111;
  v155 = v109;
  if (os_log_type_enabled(v112, OS_LOG_TYPE_INFO))
  {
    *buf = 134226946;
    v113 = v266;
    hourCopy3 = hour;
    hourCopy2 = hour;
    v292 = 2048;
    endHourCopy = endHour;
    v294 = 2048;
    v295 = v266;
    v296 = 2048;
    v297 = v28;
    v298 = 2048;
    v299 = v106;
    v300 = 2048;
    v301 = v109;
    v302 = 2048;
    v303 = v111;
    v304 = 2048;
    v115 = v188;
    v116 = v190;
    v305 = v190;
    v306 = 2048;
    v307 = v188;
    v308 = 2048;
    v309 = v260;
    v310 = 2048;
    v311 = v250;
    v312 = 2048;
    v313 = v248;
    v314 = 2048;
    v315 = v246;
    v316 = 2048;
    v317 = v256;
    v318 = 2048;
    v319 = v235;
    v320 = 2048;
    v321 = v258;
    v322 = 2048;
    v323 = v238;
    v324 = 2048;
    v325 = v254;
    v326 = 2048;
    v327 = v241;
    v328 = 2048;
    v329 = v252;
    v330 = 2048;
    v331 = v218;
    v332 = 2048;
    v333 = v215;
    v334 = 2048;
    v335 = v212;
    v336 = 2048;
    v337 = v232;
    v338 = 2048;
    v339 = v229;
    v340 = 2048;
    v341 = v226;
    v342 = 2048;
    v343 = v223;
    v344 = 2048;
    v345 = v221;
    v346 = 2048;
    v347 = v29;
    v348 = 2048;
    v349 = v243;
    v350 = 2048;
    v351 = v245;
    v352 = 2048;
    v353 = v262;
    v354 = 2048;
    v355 = v263;
    v356 = 2048;
    v357 = v264;
    v358 = 2048;
    v359 = v265;
    v360 = 2112;
    v361 = windowCopy;
    _os_log_impl(&_mh_execute_header, v112, OS_LOG_TYPE_INFO, "[APM] Extracted feature array before scaling: [downtimeStartHour:%.5f, downtimeEndHour:%.5f, hour:%.5f, weekday:%.5f, motionActivityCount:%.5f, motionActivityCountShortLookback:%.5f, motionActivityOverlapCountShortLookback:%.5f, engagementCount:%.5f, engagementCountMidLookback:%.5f, engagementCountBin1MidLookback:%.5f, healthandfitnessScreentimeCount:%.5f, healthandfitnessScreentimeCountMidLookback:%.5f, healthandfitnessScreentimeCountShortLookback:%.5f, screentimeCount:%.5f, screentimeSameWeekdayProbability:%.5f, screentimeCountShortLookback:%.5f, overMedianScreentimeSameWeekdayProbability:%.5f, overMedianScreentimeSameWeekdayProbabilityShortLookback:%.5f, over20MinScreentimeSameWeekdayProbability:%.5f, over20MinScreentimeCountMidLookback:%.5f, callCount:%.5f, musicCount:%.5f, musicCountShortLookback:%.5f, atHomeCount:%.5f, atHomeCountShortLookback:%.5f, atWorkCount:%.5f, atWorkSameWeekdayProbability:%.5f, atWorkCountShortLookback:%.5f, weekdayPrevScreentimeCount:%.5f, firstScreentimeOfDay:%.5f, lastScreentimeOfDay:%.5f, isAfternoon:%.5f, isEvening:%.5f, isMorning:%.5f, isNight:%.5f] for window %@", buf, 0x16Au);
  }

  else
  {
    v113 = v266;
    v116 = v190;
    hourCopy3 = hour;
    v115 = v188;
  }

  v288[0] = @"downtimeStartHour";
  v267 = [MLFeatureValue featureValueWithDouble:(hourCopy3 - self->_downtimeStartHourFeatureScaleMean) / self->_downtimeStartHourFeatureScaleStd];
  v289[0] = v267;
  v288[1] = @"downtimeEndHour";
  v193 = [MLFeatureValue featureValueWithDouble:(endHour - self->_downtimeEndHourFeatureScaleMean) / self->_downtimeEndHourFeatureScaleStd];
  v289[1] = v193;
  v288[2] = @"hour";
  v191 = [MLFeatureValue featureValueWithDouble:(v113 - self->_hourFeatureScaleMean) / self->_hourFeatureScaleStd];
  v289[2] = v191;
  v288[3] = @"weekday";
  v189 = [MLFeatureValue featureValueWithDouble:(v28 - self->_weekdayFeatureScaleMean) / self->_weekdayFeatureScaleStd];
  v289[3] = v189;
  v288[4] = @"motionActivityCount";
  v157 = [MLFeatureValue featureValueWithDouble:(v106 - self->_motionActivityCountFeatureScaleMean) / self->_motionActivityCountFeatureScaleStd];
  v289[4] = v157;
  v288[5] = @"motionActivityCountShortLookback";
  v156 = [MLFeatureValue featureValueWithDouble:(v155 - self->_motionActivityCountShortLookbackFeatureScaleMean) / self->_motionActivityCountShortLookbackFeatureScaleStd];
  v289[5] = v156;
  v288[6] = @"motionActivityOverlapCountShortLookback";
  v154 = [MLFeatureValue featureValueWithDouble:(v153 - self->_motionActivityOverlapCountShortLookbackFeatureScaleMean) / self->_motionActivityOverlapCountShortLookbackFeatureScaleStd];
  v289[6] = v154;
  v288[7] = @"engagementCount";
  v152 = [MLFeatureValue featureValueWithDouble:(v116 - self->_engagementCountFeatureScaleMean) / self->_engagementCountFeatureScaleStd];
  v289[7] = v152;
  v288[8] = @"engagementCountMidLookback";
  v151 = [MLFeatureValue featureValueWithDouble:(v115 - self->_engagementCountMidLookbackFeatureScaleMean) / self->_engagementCountMidLookbackFeatureScaleStd];
  v289[8] = v151;
  v288[9] = @"engagementCountBin1MidLookback";
  v261 = [MLFeatureValue featureValueWithDouble:(v260 - self->_engagementCountBin1MidLookbackFeatureScaleMean) / self->_engagementCountBin1MidLookbackFeatureScaleStd];
  v289[9] = v261;
  v288[10] = @"healthandfitnessScreentimeCount";
  v251 = [MLFeatureValue featureValueWithDouble:(v250 - self->_healthandfitnessScreentimeCountFeatureScaleMean) / self->_healthandfitnessScreentimeCountFeatureScaleStd];
  v289[10] = v251;
  v288[11] = @"healthandfitnessScreentimeCountMidLookback";
  v249 = [MLFeatureValue featureValueWithDouble:(v248 - self->_healthandfitnessScreentimeCountMidLookbackFeatureScaleMean) / self->_healthandfitnessScreentimeCountMidLookbackFeatureScaleStd];
  v289[11] = v249;
  v288[12] = @"healthandfitnessScreentimeCountShortLookback";
  v247 = [MLFeatureValue featureValueWithDouble:(v246 - self->_healthandfitnessScreentimeCountShortLookbackFeatureScaleMean) / self->_healthandfitnessScreentimeCountShortLookbackFeatureScaleStd];
  v289[12] = v247;
  v288[13] = @"screentimeCount";
  v257 = [MLFeatureValue featureValueWithDouble:(v256 - self->_screentimeCountFeatureScaleMean) / self->_screentimeCountFeatureScaleStd];
  v289[13] = v257;
  v288[14] = @"screentimeSameWeekdayProbability";
  v236 = [MLFeatureValue featureValueWithDouble:(v235 - self->_screentimeSameWeekdayProbabilityFeatureScaleMean) / self->_screentimeSameWeekdayProbabilityFeatureScaleStd];
  v289[14] = v236;
  v288[15] = @"screentimeCountShortLookback";
  v259 = [MLFeatureValue featureValueWithDouble:(v258 - self->_screentimeCountShortLookbackFeatureScaleMean) / self->_screentimeCountShortLookbackFeatureScaleStd];
  v289[15] = v259;
  v288[16] = @"overMedianScreentimeSameWeekdayProbability";
  v239 = [MLFeatureValue featureValueWithDouble:(v238 - self->_overMedianScreentimeSameWeekdayProbabilityFeatureScaleMean) / self->_overMedianScreentimeSameWeekdayProbabilityFeatureScaleStd];
  v289[16] = v239;
  v288[17] = @"overMedianScreentimeSameWeekdayProbabilityShortLookback";
  v255 = [MLFeatureValue featureValueWithDouble:(v254 - self->_overMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleMean) / self->_overMedianScreentimeSameWeekdayProbabilityShortLookbackFeatureScaleStd];
  v289[17] = v255;
  v288[18] = @"over20MinScreentimeSameWeekdayProbability";
  v242 = [MLFeatureValue featureValueWithDouble:(v241 - self->_over20MinScreentimeSameWeekdayProbabilityFeatureScaleMean) / self->_over20MinScreentimeSameWeekdayProbabilityFeatureScaleStd];
  v289[18] = v242;
  v288[19] = @"over20MinScreentimeCountMidLookback";
  v253 = [MLFeatureValue featureValueWithDouble:(v252 - self->_over20MinScreentimeCountMidLookbackFeatureScaleMean) / self->_over20MinScreentimeCountMidLookbackFeatureScaleStd];
  v289[19] = v253;
  v288[20] = @"callCount";
  v219 = [MLFeatureValue featureValueWithDouble:(v218 - self->_callCountFeatureScaleMean) / self->_callCountFeatureScaleStd];
  v289[20] = v219;
  v288[21] = @"musicCount";
  v216 = [MLFeatureValue featureValueWithDouble:(v215 - self->_musicCountFeatureScaleMean) / self->_musicCountFeatureScaleStd];
  v289[21] = v216;
  v288[22] = @"musicCountShortLookback";
  v213 = [MLFeatureValue featureValueWithDouble:(v212 - self->_musicCountShortLookbackFeatureScaleMean) / self->_musicCountShortLookbackFeatureScaleStd];
  v289[22] = v213;
  v288[23] = @"atHomeCount";
  v233 = [MLFeatureValue featureValueWithDouble:(v232 - self->_atHomeCountFeatureScaleMean) / self->_atHomeCountFeatureScaleStd];
  v289[23] = v233;
  v288[24] = @"atHomeCountShortLookback";
  v230 = [MLFeatureValue featureValueWithDouble:(v229 - self->_atHomeCountShortLookbackFeatureScaleMean) / self->_atHomeCountShortLookbackFeatureScaleStd];
  v289[24] = v230;
  v288[25] = @"atWorkCount";
  v227 = [MLFeatureValue featureValueWithDouble:(v226 - self->_atWorkCountFeatureScaleMean) / self->_atWorkCountFeatureScaleStd];
  v289[25] = v227;
  v288[26] = @"atWorkSameWeekdayProbability";
  v224 = [MLFeatureValue featureValueWithDouble:(v223 - self->_atWorkSameWeekdayProbabilityFeatureScaleMean) / self->_atWorkSameWeekdayProbabilityFeatureScaleStd];
  v289[26] = v224;
  v288[27] = @"atWorkCountShortLookback";
  v117 = [MLFeatureValue featureValueWithDouble:(v221 - self->_atWorkCountShortLookbackFeatureScaleMean) / self->_atWorkCountShortLookbackFeatureScaleStd];
  v289[27] = v117;
  v288[28] = @"weekdayPrevScreentimeCount";
  v118 = [MLFeatureValue featureValueWithDouble:(v29 - self->_weekdayPrevScreentimeCountFeatureScaleMean) / self->_weekdayPrevScreentimeCountFeatureScaleStd];
  v289[28] = v118;
  v288[29] = @"firstScreentimeOfDay";
  v119 = [MLFeatureValue featureValueWithDouble:(v243 - self->_firstScreentimeOfDayFeatureScaleMean) / self->_firstScreentimeOfDayFeatureScaleStd];
  v289[29] = v119;
  v288[30] = @"lastScreentimeOfDay";
  v120 = [MLFeatureValue featureValueWithDouble:(v245 - self->_lastScreentimeOfDayFeatureScaleMean) / self->_lastScreentimeOfDayFeatureScaleStd];
  v289[30] = v120;
  v288[31] = @"isAfternoon";
  v121 = [MLFeatureValue featureValueWithDouble:(v262 - self->_isAfternoonFeatureScaleMean) / self->_isAfternoonFeatureScaleStd];
  v289[31] = v121;
  v288[32] = @"isEvening";
  v122 = [MLFeatureValue featureValueWithDouble:(v263 - self->_isEveningFeatureScaleMean) / self->_isEveningFeatureScaleStd];
  v289[32] = v122;
  v288[33] = @"isMorning";
  v123 = [MLFeatureValue featureValueWithDouble:(v264 - self->_isMorningFeatureScaleMean) / self->_isMorningFeatureScaleStd];
  v289[33] = v123;
  v288[34] = @"isNight";
  v124 = [MLFeatureValue featureValueWithDouble:(v265 - self->_isNightFeatureScaleMean) / self->_isNightFeatureScaleStd];
  v289[34] = v124;
  v125 = [NSDictionary dictionaryWithObjects:v289 forKeys:v288 count:35];

  return v125;
}

+ (double)getWeekday:(id)weekday
{
  weekdayCopy = weekday;
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:512 fromDate:weekdayCopy];

  v6 = (([v5 weekday] + 5) % 7);
  return v6;
}

- (id)getEngagementTimeArray:(id)array withKey:(id)key checkWriting:(BOOL)writing
{
  writingCopy = writing;
  arrayCopy = array;
  keyCopy = key;
  v22 = +[NSMutableArray array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = arrayCopy;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v23 + 1) + 8 * i) objectForKeyedSubscript:keyCopy];
        v15 = v14;
        if (v14)
        {
          v16 = [v14 objectForKeyedSubscript:@"timestamp"];

          if (v16)
          {
            if (!writingCopy || ([v15 objectForKeyedSubscript:@"totalCharacters"], v17 = objc_claimAutoreleasedReturnValue(), v17, v17))
            {
              v18 = [v15 objectForKeyedSubscript:@"timestamp"];
              [v18 doubleValue];
              v19 = [NSDate dateWithTimeIntervalSince1970:?];
              [v22 addObject:v19];
            }
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v11);
  }

  v20 = [v22 copy];

  return v20;
}

- (id)getHourlyOccurrenceCounts:(id)counts
{
  countsCopy = counts;
  v4 = +[NSMutableDictionary dictionary];
  v5 = objc_alloc_init(NSDateFormatter);
  [v5 setDateFormat:@"yyyy-MM-dd HH:00"];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = countsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v5 stringFromDate:{*(*(&v17 + 1) + 8 * i), v17}];
        v12 = [v4 objectForKeyedSubscript:v11];

        if (v12)
        {
          v13 = [v4 objectForKeyedSubscript:v11];
          v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v13 integerValue] + 1);
          [v4 setObject:v14 forKeyedSubscript:v11];
        }

        else
        {
          [v4 setObject:&off_10036B290 forKeyedSubscript:v11];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v15 = [v4 copy];

  return v15;
}

- (id)filterHourlyOccurrenceCounts:(id)counts withThreshold:(int64_t)threshold
{
  countsCopy = counts;
  v6 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = countsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v16}];
        if ([v13 integerValue] >= threshold)
        {
          [v6 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = [v6 copy];

  return v14;
}

- (id)mergeHourlyOccurrenceCounts:(id)counts withDict:(id)dict
{
  dictCopy = dict;
  v6 = [counts mutableCopy];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = dictCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:{v12, v19}];
        v14 = [v6 objectForKeyedSubscript:v12];
        v15 = v14;
        if (v14)
        {
          v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v14 integerValue] + objc_msgSend(v13, "integerValue"));
          [v6 setObject:v16 forKeyedSubscript:v12];
        }

        else
        {
          [v6 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = [v6 copy];

  return v17;
}

- (id)reformatHourlyOccurrenceCounts:(id)counts
{
  countsCopy = counts;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"yyyy-MM-dd HH:00"];
  v5 = +[NSMutableArray array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v17 = countsCopy;
  obj = [countsCopy allKeys];
  v6 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = +[NSCalendar currentCalendar];
        v12 = [v4 dateFromString:v10];
        v13 = [v11 dateByAddingUnit:32 value:1 toDate:v12 options:0];
        v23[0] = @"startDate";
        v23[1] = @"endDate";
        v24[0] = v12;
        v24[1] = v13;
        v14 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:2];
        [v5 addObject:v14];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v7);
  }

  v15 = [v5 copy];

  return v15;
}

- (id)getCallStartDates:(id)dates
{
  datesCopy = dates;
  v4 = [[NSSet alloc] initWithObjects:{&off_10036B230, &off_10036B2A8, &off_10036B2C0, &off_10036B2D8, &off_10036B2F0, &off_10036B308, &off_10036B320, 0}];
  v29 = +[NSMutableArray array];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = datesCopy;
  v27 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
  if (v27)
  {
    v26 = *v35;
    do
    {
      v5 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v5;
        significantContactEvent = [*(*(&v34 + 1) + 8 * v5) significantContactEvent];
        interactions = [significantContactEvent interactions];
        v8 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
        v41 = v8;
        v9 = [NSArray arrayWithObjects:&v41 count:1];
        v10 = [interactions sortedArrayUsingDescriptors:v9];

        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v31;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v31 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v30 + 1) + 8 * i);
              startDate2 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v16 mechanism]);
              if ([v4 containsObject:startDate2])
              {
                startDate = [v16 startDate];
                if (startDate)
                {
                  v19 = startDate;
                  endDate = [v16 endDate];

                  if (!endDate)
                  {
                    continue;
                  }

                  v38[0] = @"startDate";
                  startDate2 = [v16 startDate];
                  v38[1] = @"endDate";
                  v39[0] = startDate2;
                  endDate2 = [v16 endDate];
                  v39[1] = endDate2;
                  v22 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];
                  [v29 addObject:v22];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v30 objects:v40 count:16];
          }

          while (v13);
        }

        v5 = v28 + 1;
      }

      while ((v28 + 1) != v27);
      v27 = [obj countByEnumeratingWithState:&v34 objects:v42 count:16];
    }

    while (v27);
  }

  v23 = [v29 copy];

  return v23;
}

- (id)getMediaPlaySessionStartDates:(id)dates
{
  datesCopy = dates;
  v4 = +[NSMutableArray array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = datesCopy;
  v27 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v27)
  {
    v26 = *v34;
    do
    {
      v5 = 0;
      do
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v5;
        mediaEvent = [*(*(&v33 + 1) + 8 * v5) mediaEvent];
        mediaPlaySessions = [mediaEvent mediaPlaySessions];
        v8 = [NSSortDescriptor sortDescriptorWithKey:@"startDate" ascending:1];
        v40 = v8;
        v9 = [NSArray arrayWithObjects:&v40 count:1];
        v10 = [mediaPlaySessions sortedArrayUsingDescriptors:v9];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v11 = v10;
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          do
          {
            for (i = 0; i != v13; i = i + 1)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v29 + 1) + 8 * i);
              startDate = [v16 startDate];
              if (startDate)
              {
                v18 = startDate;
                endDate = [v16 endDate];

                if (endDate)
                {
                  v37[0] = @"startDate";
                  startDate2 = [v16 startDate];
                  v37[1] = @"endDate";
                  v38[0] = startDate2;
                  endDate2 = [v16 endDate];
                  v38[1] = endDate2;
                  v22 = [NSDictionary dictionaryWithObjects:v38 forKeys:v37 count:2];
                  [v4 addObject:v22];
                }
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v29 objects:v39 count:16];
          }

          while (v13);
        }

        v5 = v28 + 1;
      }

      while ((v28 + 1) != v27);
      v27 = [obj countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v27);
  }

  v23 = [v4 copy];

  return v23;
}

- (id)findOverlappingEngagament:(id)engagament forEvents:(id)events
{
  engagamentCopy = engagament;
  eventsCopy = events;
  v6 = +[NSMutableArray array];
  v21 = [NSPredicate predicateWithFormat:@"category == %d", 1];
  v22 = eventsCopy;
  [eventsCopy filteredArrayUsingPredicate:?];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v26)
  {
    v24 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v27 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v9 = engagamentCopy;
        v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v29;
          do
          {
            for (i = 0; i != v11; i = i + 1)
            {
              if (*v29 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v28 + 1) + 8 * i);
              startDate = [v8 startDate];
              if ([v14 isOnOrAfter:startDate])
              {
                endDate = [v8 endDate];
                if ([v14 isOnOrBefore:endDate])
                {
                  routineEvent = [v8 routineEvent];
                  poiCategory = [routineEvent poiCategory];

                  if (!poiCategory)
                  {
                    continue;
                  }

                  startDate = [v8 routineEvent];
                  endDate = [startDate poiCategory];
                  [v6 addObject:endDate];
                }
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
          }

          while (v11);
        }

        v7 = v27 + 1;
      }

      while ((v27 + 1) != v26);
      v26 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v26);
  }

  v19 = [v6 copy];

  return v19;
}

- (void)saveEligiblePOICategories:(id)categories
{
  categoriesCopy = categories;
  categoryStore = [(MOAvailabilityPredictionManager *)self categoryStore];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke;
  v7[3] = &unk_10033DCD0;
  v7[4] = self;
  v8 = categoriesCopy;
  v6 = categoriesCopy;
  [categoryStore removeExistingPOICategoriesWithCompletionHandler:v7];
}

void __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_cold_1(v3);
    }
  }

  else
  {
    v5 = [*(a1 + 32) categoryStore];
    [v5 storeEligiblePOICategories:*(a1 + 40) completionHandler:&__block_literal_global_43];
  }
}

void __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_2149(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_2149_cold_1(v2);
    }
  }
}

- (id)filterScreentimeEvents:(id)events
{
  eventsCopy = events;
  v15 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = eventsCopy;
  v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 valueForKeyPath:@"screenTimeEvent.appCategoryUsages"];
        v11 = [NSPredicate predicateWithFormat:@"%K IN %@", @"appCategory", self->_allowedScreentimeCategories];
        v12 = [v10 filteredArrayUsingPredicate:v11];
        if ([v12 count])
        {
          [v15 addObject:v9];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  return v15;
}

- (double)countOccurenceOfEvents:(id)events forWindow:(id)window windowSize:(int)size checkTime:(BOOL)time checkWeekday:(BOOL)weekday addBuffer:(BOOL)buffer checkOverlapPercentage:(BOOL)percentage forFeature:(id)self0
{
  bufferCopy = buffer;
  timeCopy = time;
  weekdayCopy = weekday;
  eventsCopy = events;
  windowCopy = window;
  featureCopy = feature;
  v15 = +[NSCalendar currentCalendar];
  v16 = +[NSMutableArray array];
  v17 = objc_alloc_init(NSDateFormatter);
  [v17 setDateFormat:@"yyyy-MM-dd"];
  v18 = [v15 component:512 fromDate:windowCopy];
  v19 = [v15 component:32 fromDate:windowCopy];
  v54 = windowCopy;
  v20 = [v15 component:64 fromDate:windowCopy];
  v21 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    [MOAvailabilityPredictionManager countOccurenceOfEvents:forWindow:windowSize:checkTime:checkWeekday:addBuffer:checkOverlapPercentage:forFeature:];
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  obj = eventsCopy;
  v57 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
  if (!v57)
  {
    v50 = 0.0;
    goto LABEL_55;
  }

  v61 = 0;
  v23 = v20 / 60.0 + v19;
  v24 = (size / 3600) + v23;
  v56 = *v63;
  *&v22 = 138413826;
  v52 = v22;
  do
  {
    v25 = 0;
    do
    {
      if (*v63 != v56)
      {
        objc_enumerationMutation(obj);
      }

      v58 = v25;
      v26 = *(*(&v62 + 1) + 8 * v25);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v27 = v26;
        startDate = [v27 objectForKeyedSubscript:@"startDate"];
        endDate = [v27 objectForKeyedSubscript:@"endDate"];
LABEL_13:
        v31 = endDate;

        goto LABEL_14;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
      {
        v30 = v26;
        startDate = [v30 startDate];
        endDate = [v30 endDate];
        goto LABEL_13;
      }

      v31 = 0;
      startDate = 0;
LABEL_14:
      v32 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
      {
        *buf = v52;
        v67 = featureCopy;
        v68 = 2112;
        v69 = startDate;
        v70 = 2112;
        v71 = v31;
        v72 = 2112;
        v73 = v54;
        v74 = 1024;
        v75 = timeCopy;
        v76 = 1024;
        v77 = weekdayCopy;
        v78 = 1024;
        v79 = bufferCopy;
        _os_log_debug_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEBUG, "[APM] %@: looking at event with startDate %@ endDate %@ for window %@; checkHour %d, checkWeekday %d, addBuffer %d", buf, 0x3Cu);
      }

      v33 = startDate;
      if ([v33 isOnOrBefore:v31])
      {
        v34 = v33;
        while (1)
        {
          v35 = [v15 component:512 fromDate:{v34, v52}];
          v36 = [v17 stringFromDate:v34];
          if (weekdayCopy && v35 == v18 && ![v16 containsObject:v36] || !weekdayCopy && (objc_msgSend(v16, "containsObject:", v36) & 1) == 0)
          {
            if (!timeCopy)
            {
              [v16 addObject:v36];
              v44 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                *buf = v52;
                v67 = featureCopy;
                v68 = 2112;
                v69 = v33;
                v70 = 2112;
                v71 = v31;
                v72 = 2112;
                v73 = v54;
                v74 = 1024;
                v75 = 0;
                v76 = 1024;
                v77 = weekdayCopy;
                v78 = 1024;
                v79 = bufferCopy;
                v45 = v44;
                v46 = "[APM] %@: found day overlap with event with startDate %@ endDate %@ for window %@; checkHour %d, checkWeekday %d, addBuffer %d";
LABEL_47:
                _os_log_debug_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEBUG, v46, buf, 0x3Cu);
              }

LABEL_39:
              ++v61;

              goto LABEL_40;
            }

            v37 = 0.0;
            if ([v34 isOnOrBefore:v33])
            {
              v38 = [v15 component:32 fromDate:v33];
              v37 = [v15 component:64 fromDate:v33] / 60.0 + v38;
            }

            v39 = [v15 isDate:v34 inSameDayAsDate:v31];
            LODWORD(v40) = 1103049523;
            if (v39)
            {
              v41 = [v15 component:32 fromDate:{v31, v40}];
              *&v40 = [v15 component:64 fromDate:v31] / 60.0 + v41;
            }

            if (bufferCopy)
            {
              v42 = v37 + -1.0;
              if (v42 < 0.0)
              {
                v42 = 0.0;
              }

              v37 = v42;
              *&v40 = fmin(*&v40 + 1.0, 23.9);
            }

            if (*&v40 <= v23 || v37 >= v24)
            {
              goto LABEL_40;
            }

            if (!percentage)
            {
              [v16 addObject:v36];
              v44 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                *buf = v52;
                v67 = featureCopy;
                v68 = 2112;
                v69 = v33;
                v70 = 2112;
                v71 = v31;
                v72 = 2112;
                v73 = v54;
                v74 = 1024;
                v75 = 1;
                v76 = 1024;
                v77 = weekdayCopy;
                v78 = 1024;
                v79 = bufferCopy;
                v45 = v44;
                v46 = "[APM] %@: found time overlap with event with startDate %@ endDate %@ for window %@; checkHour %d, checkWeekday %d, addBuffer %d";
                goto LABEL_47;
              }

              goto LABEL_39;
            }

            [MOAvailabilityPredictionManager calculateOverlapPercentageForPredictionWindowStartHour:v23 predictionWindowEndHour:v24 eventStartHour:v37 eventEndHour:*&v40];
            if (v43 > 50.0)
            {
              [v16 addObject:v36];
              v44 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
              {
                *buf = v52;
                v67 = featureCopy;
                v68 = 2112;
                v69 = v33;
                v70 = 2112;
                v71 = v31;
                v72 = 2112;
                v73 = v54;
                v74 = 1024;
                v75 = 1;
                v76 = 1024;
                v77 = weekdayCopy;
                v78 = 1024;
                v79 = bufferCopy;
                v45 = v44;
                v46 = "[APM] %@: found significant time overlap (above 50%% threshold) with event with startDate %@ endDate %@ for window %@; checkHour %d, checkWeekday %d, addBuffer %d";
                goto LABEL_47;
              }

              goto LABEL_39;
            }
          }

LABEL_40:
          v47 = [v15 dateByAddingUnit:16 value:1 toDate:v34 options:0];

          if ([v15 isDate:v47 inSameDayAsDate:v31])
          {
            v48 = v31;

            v47 = v48;
          }

          v34 = v47;
          if (([v47 isOnOrBefore:v31] & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      v47 = v33;
LABEL_49:

      v25 = v58 + 1;
    }

    while ((v58 + 1) != v57);
    v49 = [obj countByEnumeratingWithState:&v62 objects:v80 count:16];
    v57 = v49;
  }

  while (v49);
  v50 = v61;
LABEL_55:

  return v50;
}

+ (double)calculateOverlapPercentageForPredictionWindowStartHour:(double)hour predictionWindowEndHour:(double)endHour eventStartHour:(double)startHour eventEndHour:(double)eventEndHour
{
  if (startHour < hour)
  {
    startHour = hour;
  }

  if (eventEndHour >= endHour)
  {
    eventEndHour = endHour;
  }

  if (eventEndHour <= startHour)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = eventEndHour - startHour;
  }

  v7 = v6 / (endHour - hour) * 100.0;
  if (v7 > 100.0)
  {
    v7 = 100.0;
  }

  return fmax(v7, 0.0);
}

- (id)checkNonzeroMedianScreentimeUsagePerHour:(id)hour
{
  hourCopy = hour;
  v4 = +[NSMutableDictionary dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = hourCopy;
  v5 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v34 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"hour"];
        v11 = [v9 objectForKeyedSubscript:@"duration"];
        v12 = [v4 objectForKeyedSubscript:v10];
        if (!v12)
        {
          v12 = +[NSMutableArray array];
          [v4 setObject:v12 forKeyedSubscript:v10];
        }

        [v12 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v6);
  }

  v29 = +[NSMutableArray array];
  v13 = +[NSMutableString string];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = v4;
  v15 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v31;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v31 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v30 + 1) + 8 * j);
        v20 = [v14 objectForKeyedSubscript:v19];
        v21 = [v20 count];
        v38[0] = @"hour";
        v38[1] = @"nonzeroMedianCheck";
        v39[0] = v19;
        if (v21 <= 0xE)
        {
          v22 = @"NO";
        }

        else
        {
          v22 = @"YES";
        }

        v23 = [NSNumber numberWithBool:v21 > 0xE];
        v39[1] = v23;
        v24 = [NSDictionary dictionaryWithObjects:v39 forKeys:v38 count:2];

        [v13 appendFormat:@" hour %@: %@", v19, v22];
        [v29 addObject:v24];
      }

      v16 = [v14 countByEnumeratingWithState:&v30 objects:v40 count:16];
    }

    while (v16);
  }

  v25 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [MOAvailabilityPredictionManager checkNonzeroMedianScreentimeUsagePerHour:];
  }

  v26 = [v29 copy];

  return v26;
}

- (id)copyAndTrim:(id)trim toWindowStartDate:(id)date returnAsMOEvent:(BOOL)event
{
  eventCopy = event;
  trimCopy = trim;
  dateCopy = date;
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [trimCopy count]);
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = trimCopy;
  v42 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
  if (v42)
  {
    v10 = *v44;
    v40 = dateCopy;
    v39 = eventCopy;
    v38 = *v44;
    do
    {
      v11 = 0;
      do
      {
        if (*v44 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          startDate = [v13 objectForKeyedSubscript:@"startDate"];
          endDate = [v13 objectForKeyedSubscript:@"endDate"];
LABEL_11:
          v17 = endDate;

          goto LABEL_12;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
        {
          v16 = v12;
          startDate = [v16 startDate];
          endDate = [v16 endDate];
          goto LABEL_11;
        }

        v17 = 0;
        startDate = 0;
LABEL_12:
        if ([startDate isBeforeDate:dateCopy] && (v18 = objc_msgSend(v17, "isAfterDate:", dateCopy), v19 = dateCopy, (v18 & 1) != 0) || (v20 = objc_msgSend(startDate, "isBeforeDate:", dateCopy), v19 = startDate, !v20) || (v21 = objc_msgSend(v17, "isBeforeDate:", dateCopy), v19 = startDate, (v21 & 1) == 0))
        {
          v22 = v19;
          v23 = v22;
          if (eventCopy)
          {
            v24 = v12;
            v25 = [MOEvent alloc];
            v26 = +[NSUUID UUID];
            creationDate = [v24 creationDate];
            v28 = v9;
            provider = [v24 provider];
            category = [v24 category];
            v31 = provider;
            v9 = v28;
            v32 = [(MOEvent *)v25 initWithEventIdentifier:v26 startDate:v23 endDate:v17 creationDate:creationDate provider:v31 category:category];

            v10 = v38;
            expirationDate = [v24 expirationDate];
            [(MOEvent *)v32 setExpirationDate:expirationDate];

            screenTimeEvent = [v24 screenTimeEvent];

            [(MOEvent *)v32 setScreenTimeEvent:screenTimeEvent];
            eventCopy = v39;
            dateCopy = v40;
          }

          else
          {
            v47[0] = @"startDate";
            v47[1] = @"endDate";
            v48[0] = v22;
            v48[1] = v17;
            v32 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
          }

          [v9 addObject:v32];
        }

        v11 = v11 + 1;
      }

      while (v42 != v11);
      v35 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      v42 = v35;
    }

    while (v35);
  }

  v36 = [v9 copy];
  return v36;
}

- (id)runMLmodelWithFeatures:(id)features andModel:(id)model
{
  modelCopy = model;
  featuresCopy = features;
  v21 = 0;
  v7 = [[MLDictionaryFeatureProvider alloc] initWithDictionary:featuresCopy error:&v21];

  v8 = v21;
  if (v8)
  {
    v9 = v8;
    v10 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [MOAvailabilityPredictionManager runMLmodelWithFeatures:v9 andModel:?];
    }

    goto LABEL_16;
  }

  v20 = 0;
  v10 = [modelCopy predictionFromFeatures:v7 error:&v20];
  v9 = v20;
  if (v9)
  {
    v11 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [MOAvailabilityPredictionManager runMLmodelWithFeatures:v9 andModel:?];
    }

LABEL_15:

LABEL_16:
    v15 = 0;
    goto LABEL_17;
  }

  v12 = [v10 featureValueForName:@"classProbability"];
  v11 = v12;
  if (!v12 || ([v12 dictionaryValue], v13 = objc_claimAutoreleasedReturnValue(), v13, !v13))
  {
    v18 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [MOAvailabilityPredictionManager runMLmodelWithFeatures:v18 andModel:?];
    }

    goto LABEL_15;
  }

  dictionaryValue = [v11 dictionaryValue];
  v15 = [dictionaryValue objectForKeyedSubscript:&off_10036B290];
  v16 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    [v15 doubleValue];
    *buf = 134217984;
    v23 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "[APM] Predicted availability probability: %f", buf, 0xCu);
  }

LABEL_17:

  return v15;
}

- (id)findOptimalDateWithPrediction:(id)prediction withPredictionProbabilityThreshold:(double)threshold
{
  predictionCopy = prediction;
  v7 = [NSString stringWithFormat:@"@max.%@", @"availabilityProbability"];
  v30 = [predictionCopy valueForKeyPath:v7];
  v8 = [NSPredicate predicateWithFormat:@"%K == %@", @"availabilityProbability", v30];
  v9 = [predictionCopy filteredArrayUsingPredicate:v8];
  if ([v9 count])
  {
    defaultsManager = [(MOAvailabilityPredictionManager *)self defaultsManager];
    firstObject = [v9 firstObject];
    v12 = [firstObject objectForKeyedSubscript:@"availabilityProbability"];
    [defaultsManager setObject:v12 forKey:@"AvailabilityPredictionMaxProbability"];

    defaultsManager2 = [(MOAvailabilityPredictionManager *)self defaultsManager];
    firstObject2 = [v9 firstObject];
    v15 = [firstObject2 objectForKeyedSubscript:@"predictionDate"];
    [defaultsManager2 setObject:v15 forKey:@"AvailabilityPredictionMaxProbabilityStartDate"];
  }

  v16 = [NSPredicate predicateWithFormat:@"%K > %f", @"availabilityProbability", *&threshold];
  v17 = [predictionCopy filteredArrayUsingPredicate:v16];
  if ([v17 count])
  {
    v29 = v7;
    v18 = [(MOAvailabilityPredictionManager *)self selectBestWindowFromCandidates:v17];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 objectForKeyedSubscript:@"predictionDate"];
      v21 = [(MOAvailabilityPredictionManager *)self findConsecutiveAvailabilityEndDateFrom:v20 inPredictionArray:predictionCopy withThreshold:threshold];
      v22 = [v19 mutableCopy];
      [v22 setObject:v21 forKeyedSubscript:@"consecutiveEndDate"];
      [v21 timeIntervalSinceDate:v20];
      v24 = v23;
      availabilityPredictionWindowSize = self->_availabilityPredictionWindowSize;
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v32 = v20;
        v33 = 2112;
        v34 = v21;
        v35 = 2048;
        v36 = (v24 / availabilityPredictionWindowSize);
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "[APM] Optimal availability range: %@ to %@ (%ld consecutive hours above threshold)", buf, 0x20u);
      }

      v27 = [v22 copy];
    }

    else
    {
      v20 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "[APM] Optimal availability not found", buf, 2u);
      }

      v27 = 0;
    }

    v7 = v29;
  }

  else
  {
    v19 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "[APM] Optimal availability not found due to probability threshold condition", buf, 2u);
    }

    v27 = 0;
  }

  return v27;
}

- (id)selectBestWindowFromCandidates:(id)candidates
{
  candidatesCopy = candidates;
  if ([candidatesCopy count])
  {
    if ([candidatesCopy count] == 1)
    {
      firstObject = [candidatesCopy firstObject];
    }

    else
    {
      v6 = [NSPredicate predicateWithFormat:@"%K > %f", @"locationFilterProbability", *&self->_availabilityPredictionLocationThreshold];
      v7 = [candidatesCopy filteredArrayUsingPredicate:v6];
      v8 = [NSPredicate predicateWithFormat:@"%K >= %f", @"screentimeFilterProbability", *&self->_availabilityPredictionScreentimeThreshold];
      v9 = [candidatesCopy filteredArrayUsingPredicate:v8];
      v10 = [NSPredicate predicateWithFormat:@"%K > %f AND %K > %f", @"locationFilterProbability", *&self->_availabilityPredictionLocationThreshold, @"screentimeFilterProbability", *&self->_availabilityPredictionScreentimeThreshold];
      v11 = [candidatesCopy filteredArrayUsingPredicate:v10];
      v12 = [v11 count];
      v13 = v11;
      if (!v12)
      {
        v14 = [v7 count];
        v13 = v7;
        if (!v14)
        {
          if ([v9 count])
          {
            v13 = v9;
          }

          else
          {
            v13 = candidatesCopy;
          }
        }
      }

      firstObject = [(MOAvailabilityPredictionManager *)self selectWindowWithHighestProbabilityFrom:v13];
    }
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)selectWindowWithHighestProbabilityFrom:(id)from
{
  fromCopy = from;
  if ([fromCopy count])
  {
    v4 = [NSString stringWithFormat:@"@max.%@", @"availabilityProbability"];
    v5 = [fromCopy valueForKeyPath:v4];
    v6 = [NSPredicate predicateWithFormat:@"%K == %@", @"availabilityProbability", v5];
    v7 = [fromCopy filteredArrayUsingPredicate:v6];
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)findConsecutiveAvailabilityEndDateFrom:(id)from inPredictionArray:(id)array withThreshold:(double)threshold
{
  fromCopy = from;
  arrayCopy = array;
  v10 = [fromCopy dateByAddingTimeInterval:self->_availabilityPredictionWindowSize];
  v25 = fromCopy;
  v11 = [fromCopy dateByAddingTimeInterval:self->_availabilityPredictionWindowSize];
  if ([(MOAvailabilityPredictionManager *)self availabilityPredictionRetryHourCount]>= 2)
  {
    v12 = 1;
    while (1)
    {
      v13 = [NSPredicate predicateWithFormat:@"%K == %@", @"predictionDate", v11];
      v14 = [arrayCopy filteredArrayUsingPredicate:v13];
      if (![v14 count])
      {
        break;
      }

      firstObject = [v14 firstObject];
      v16 = [firstObject objectForKeyedSubscript:@"availabilityProbability"];
      [v16 doubleValue];
      if (v17 <= threshold)
      {
        v22 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          [v16 doubleValue];
          *buf = 138413058;
          v27 = v11;
          v28 = 2048;
          v29 = v24;
          v30 = 2048;
          thresholdCopy = threshold;
          v32 = 2112;
          v33 = v10;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "[APM] Hour %@ breaks streak with probability %.3f (below threshold %.3f), stopping at end date %@", buf, 0x2Au);
        }

        goto LABEL_14;
      }

      v18 = [v11 dateByAddingTimeInterval:self->_availabilityPredictionWindowSize];

      v19 = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        [v16 doubleValue];
        *buf = 138412802;
        v27 = v11;
        v28 = 2048;
        v29 = v21;
        v30 = 2112;
        thresholdCopy = *&v18;
        _os_log_debug_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEBUG, "[APM] Hour %@ also passes threshold with probability %.3f, extending end date to %@", buf, 0x20u);
      }

      v20 = [v11 dateByAddingTimeInterval:self->_availabilityPredictionWindowSize];

      ++v12;
      v10 = v18;
      v11 = v20;
      if (v12 >= [(MOAvailabilityPredictionManager *)self availabilityPredictionRetryHourCount])
      {
        goto LABEL_16;
      }
    }

    firstObject = _mo_log_facility_get_os_log(&MOLogFacilityAvailabilityPredictionManager);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEBUG))
    {
      [MOAvailabilityPredictionManager findConsecutiveAvailabilityEndDateFrom:inPredictionArray:withThreshold:];
    }

LABEL_14:
  }

  v20 = v11;
  v18 = v10;
LABEL_16:

  return v18;
}

- (void)_predictUserAvailabilityWithEvents:(void *)a1 andBundles:andSuggestionEngagementEvents:andAppEntryEngagementEvents:handler:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "[APM] Error loading the ML model: %@", v4, v5, v6, v7);
}

void __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "Remove existing categories hit error: %@", v4, v5, v6, v7);
}

void __61__MOAvailabilityPredictionManager_saveEligiblePOICategories___block_invoke_2149_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "Store categories hit error: %@", v4, v5, v6, v7);
}

- (void)runMLmodelWithFeatures:(void *)a1 andModel:.cold.1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "[APM] Error creating input features: %@", v4, v5, v6, v7);
}

- (void)runMLmodelWithFeatures:(void *)a1 andModel:.cold.2(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_13(&_mh_execute_header, v2, v3, "[APM] Error during prediction: %@", v4, v5, v6, v7);
}

@end