@interface _ATXAppLaunchCategoricalHistogram
+ (id)stringForPruningMethod:(int64_t)method;
- (BOOL)_tryGetCategoryIdforCategory:(id)category createIfMissing:(BOOL)missing categoryIdOut:(unsigned __int16 *)out;
- (BOOL)_tryGetEventIdforBundleId:(id)id createIfMissing:(BOOL)missing eventIdOut:(unsigned __int16 *)out;
- (BOOL)bundleHasBeenLaunched:(id)launched;
- (BOOL)removeHistoryForBundleId:(id)id;
- (BOOL)removeHistoryForCategory:(id)category;
- (_ATXAppLaunchCategoricalHistogram)initWithCoder:(id)coder;
- (_ATXAppLaunchCategoricalHistogram)initWithHistogram:(id)histogram categoryToCategoryId:(id)id maxCategoryId:(unsigned __int16)categoryId maxCategoryCount:(unsigned __int16)count lastDates:(id)dates pruningMethod:(int64_t)method;
- (_ATXAppLaunchCategoricalHistogram)initWithType:(int64_t)type maxCategoryCount:(unsigned __int16)count pruningMethod:(int64_t)method;
- (double)entropy;
- (double)entropyForBundleId:(id)id;
- (double)entropyForCategory:(id)category;
- (double)launchPopularityWithBundleId:(id)id category:(id)category;
- (double)overallLaunchPopularityForBundleId:(id)id;
- (double)overallLaunchPopularityForBundleId:(id)id category:(id)category;
- (double)overallLaunchPopularityForCategory:(id)category;
- (double)relativeLaunchPopularityWithBundleId:(id)id category:(id)category;
- (double)totalLaunches;
- (double)totalLaunchesForBundleId:(id)id;
- (double)totalLaunchesForBundleId:(id)id category:(id)category;
- (double)totalLaunchesForCategory:(id)category;
- (id)description;
- (id)lastDate;
- (id)launchCountsForEachCategoryForBundleId:(id)id;
- (int)removeHistoryForBundleIds:(id)ids;
- (unint64_t)bundleIDCountForCategory:(id)category;
- (unsigned)_categoryIdforCategory:(id)category;
- (unsigned)_eventIdforBundleId:(id)id;
- (unsigned)categoryCount;
- (void)_garbageCollectCategoryIds;
- (void)_reduceCategoryCountTo:(unsigned __int16)to;
- (void)_removeMappingForCategory:(id)category;
- (void)_setMaxCategoryCount:(unsigned __int16)count pruningMethod:(int64_t)method;
- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category weight:(float)weight;
- (void)decayByFactor:(double)factor;
- (void)decayWithHalfLifeInDays:(double)days;
- (void)encodeWithCoder:(id)coder;
- (void)purgeUnusedCategories;
- (void)resetData;
- (void)resetHistogram:(id)histogram;
- (void)verifyDataIntegrity;
@end

@implementation _ATXAppLaunchCategoricalHistogram

- (void)purgeUnusedCategories
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:580 description:{@"Trying to remove a category '%@' that has no categoryId -- inconsistent dictionary state", a3}];
}

- (void)_garbageCollectCategoryIds
{
  v21 = *MEMORY[0x277D85DE8];
  bSet = [(ATXHistogramData *)self->_histogramData bSet];
  v4 = objc_opt_new();
  categoryToCategoryId = self->_categoryToCategoryId;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63___ATXAppLaunchCategoricalHistogram__garbageCollectCategoryIds__block_invoke;
  v17[3] = &unk_2785A0888;
  v6 = bSet;
  v18 = v6;
  v7 = v4;
  v19 = v7;
  [(NSMutableDictionary *)categoryToCategoryId enumerateKeysAndObjectsUsingBlock:v17];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      v12 = 0;
      do
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(_ATXAppLaunchCategoricalHistogram *)self _removeMappingForCategory:*(*(&v13 + 1) + 8 * v12++), v13];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v20 count:16];
    }

    while (v10);
  }
}

+ (id)stringForPruningMethod:(int64_t)method
{
  if (method >= 3)
  {
    [(_ATXAppLaunchCategoricalHistogram *)a2 stringForPruningMethod:self];
  }

  if (method < 4)
  {
    return off_2785A08D0[method];
  }

  v5 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    +[_ATXAppLaunchCategoricalHistogram stringForPruningMethod:];
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"stringForPruningMethod called with invalid _ATXAppLaunchCategoricalHistogramPruningMethod value of %lu", method}];
  return @"Error";
}

- (_ATXAppLaunchCategoricalHistogram)initWithHistogram:(id)histogram categoryToCategoryId:(id)id maxCategoryId:(unsigned __int16)categoryId maxCategoryCount:(unsigned __int16)count lastDates:(id)dates pruningMethod:(int64_t)method
{
  countCopy = count;
  histogramCopy = histogram;
  idCopy = id;
  datesCopy = dates;
  v39.receiver = self;
  v39.super_class = _ATXAppLaunchCategoricalHistogram;
  v18 = [(_ATXAppLaunchCategoricalHistogram *)&v39 init];
  if (v18)
  {
    if (histogramCopy)
    {
      v19 = histogramCopy;
    }

    else
    {
      v19 = objc_opt_new();
    }

    histogramData = v18->_histogramData;
    v18->_histogramData = v19;

    v18->_maxCategoryId = categoryId;
    v21 = [idCopy mutableCopy];
    v22 = v21;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = objc_opt_new();
    }

    categoryToCategoryId = v18->_categoryToCategoryId;
    v18->_categoryToCategoryId = v23;

    [(_ATXAppLaunchCategoricalHistogram *)v18 _setMaxCategoryCount:countCopy pruningMethod:method];
    v25 = [datesCopy mutableCopy];
    v26 = v25;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v27 = objc_opt_new();
    }

    lastDates = v18->_lastDates;
    v18->_lastDates = v27;

    objc_initWeak(&location, v18);
    v29 = objc_opt_new();
    uninstallNotificationListener = v18->_uninstallNotificationListener;
    v18->_uninstallNotificationListener = v29;

    v31 = v18->_uninstallNotificationListener;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __131___ATXAppLaunchCategoricalHistogram_initWithHistogram_categoryToCategoryId_maxCategoryId_maxCategoryCount_lastDates_pruningMethod___block_invoke;
    v36[3] = &unk_278596DA0;
    objc_copyWeak(&v37, &location);
    [(_ATXInternalUninstallNotification *)v31 registerForNotificationsWithUninstallBlock:v36];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __131___ATXAppLaunchCategoricalHistogram_initWithHistogram_categoryToCategoryId_maxCategoryId_maxCategoryCount_lastDates_pruningMethod___block_invoke_2;
    v33[3] = &unk_278598278;
    v35 = a2;
    v34 = v18;
    if (initWithHistogram_categoryToCategoryId_maxCategoryId_maxCategoryCount_lastDates_pruningMethod__onceToken != -1)
    {
      dispatch_once(&initWithHistogram_categoryToCategoryId_maxCategoryId_maxCategoryCount_lastDates_pruningMethod__onceToken, v33);
    }

    objc_destroyWeak(&v37);
    objc_destroyWeak(&location);
  }

  return v18;
}

- (void)_setMaxCategoryCount:(unsigned __int16)count pruningMethod:(int64_t)method
{
  v16 = *MEMORY[0x277D85DE8];
  if (!count)
  {
    v6 = __atxlog_handle_default(self);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = 134218240;
      methodCopy = 0;
      v14 = 2048;
      v15 = 30;
      _os_log_impl(&dword_2263AA000, v6, OS_LOG_TYPE_INFO, "maxCategoryCount of %lu -- using default of %lu", &v12, 0x16u);
    }

    count = 30;
  }

  self->_maxCategoryCount = count;
  v7 = __atxlog_handle_default(self);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppLaunchCategoricalHistogram _setMaxCategoryCount:v7 pruningMethod:?];
  }

  if ((method - 1) >= 2)
  {
    v9 = __atxlog_handle_default(v8);
    v10 = v9;
    if (method < 1)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v12 = 134218240;
        methodCopy = method;
        v14 = 2048;
        v15 = 1;
        _os_log_impl(&dword_2263AA000, v10, OS_LOG_TYPE_INFO, "_pruningMethod of %lu -- using default of %lu", &v12, 0x16u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_ATXAppLaunchCategoricalHistogram _setMaxCategoryCount:pruningMethod:];
    }

    method = 1;
  }

  self->_pruningMethod = method;
  v11 = __atxlog_handle_default(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [_ATXAppLaunchCategoricalHistogram _setMaxCategoryCount:self pruningMethod:?];
  }
}

- (_ATXAppLaunchCategoricalHistogram)initWithType:(int64_t)type maxCategoryCount:(unsigned __int16)count pruningMethod:(int64_t)method
{
  selfCopy = self;
  switch(type)
  {
    case 0:
      v201 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v201, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v201 initWithType:v202 maxCategoryCount:v203 pruningMethod:v204, v205, v206, v207, v208];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAnyLaunch";
      goto LABEL_124;
    case 1:
      v209 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v209, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v209 initWithType:v210 maxCategoryCount:v211 pruningMethod:v212, v213, v214, v215, v216];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeSpotlightLaunch";
      goto LABEL_124;
    case 2:
      v177 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v177, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v177 initWithType:v178 maxCategoryCount:v179 pruningMethod:v180, v181, v182, v183, v184];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDayOfWeek";
      goto LABEL_124;
    case 3:
      v193 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v193, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v193 initWithType:v194 maxCategoryCount:v195 pruningMethod:v196, v197, v198, v199, v200];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAirplaneModeLaunch";
      goto LABEL_124;
    case 4:
    case 29:
    case 31:
    case 32:
    case 33:
    case 34:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 81:
    case 82:
    case 83:
    case 84:
    case 85:
    case 86:
    case 87:
    case 88:
    case 89:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 104:
    case 105:
    case 106:
    case 107:
    case 111:
      countCopy = count;
      v9 = objc_opt_new();
      selfCopy = [(_ATXAppLaunchCategoricalHistogram *)selfCopy initWithHistogram:v9 categoryToCategoryId:0 maxCategoryId:0 maxCategoryCount:countCopy lastDates:0 pruningMethod:method];

      v10 = selfCopy;
      goto LABEL_127;
    case 5:
      v65 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v65 initWithType:v66 maxCategoryCount:v67 pruningMethod:v68, v69, v70, v71, v72];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeTrendingLaunch";
      goto LABEL_124;
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 12:
    case 13:
      v11 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v11 initWithType:v12 maxCategoryCount:v13 pruningMethod:v14, v15, v16, v17, v18];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ is deprecated.", @"Histogram type is deprecated."}];
      goto LABEL_125;
    case 11:
      v225 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v225, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v225 initWithType:v226 maxCategoryCount:v227 pruningMethod:v228, v229, v230, v231, v232];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeUnlockTime";
      goto LABEL_124;
    case 14:
      v217 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v217 initWithType:v218 maxCategoryCount:v219 pruningMethod:v220, v221, v222, v223, v224];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppIntentLaunch";
      goto LABEL_124;
    case 15:
      v105 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v105 initWithType:v106, v107, v108, v109, v110, v111, v112];
      }

      v27 = MEMORY[0x277CBEAD8];
      v28 = *MEMORY[0x277CBE658];
      v29 = @"_ATXHistogramTypeIntentForAllAppsLaunch";
      goto LABEL_120;
    case 16:
      v81 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v81, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v81 initWithType:v82 maxCategoryCount:v83 pruningMethod:v84, v85, v86, v87, v88];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppForAllIntentsLaunch";
      goto LABEL_124;
    case 17:
      v265 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v265, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v265 initWithType:v266 maxCategoryCount:v267 pruningMethod:v268, v269, v270, v271, v272];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppIntentDayOfWeek";
      goto LABEL_124;
    case 18:
      v273 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v273, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v273 initWithType:v274, v275, v276, v277, v278, v279, v280];
      }

      v27 = MEMORY[0x277CBEAD8];
      v28 = *MEMORY[0x277CBE658];
      v29 = @"_ATXHistogramTypeIntentForAllAppsDayOfWeek";
      goto LABEL_120;
    case 19:
      v313 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v313, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v313 initWithType:v314 maxCategoryCount:v315 pruningMethod:v316, v317, v318, v319, v320];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppForAllIntentsDayOfWeek";
      goto LABEL_124;
    case 20:
      v145 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v145, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v145 initWithType:v146 maxCategoryCount:v147 pruningMethod:v148, v149, v150, v151, v152];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppIntentTrendingLaunch";
      goto LABEL_124;
    case 21:
      v57 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v57 initWithType:v58, v59, v60, v61, v62, v63, v64];
      }

      v27 = MEMORY[0x277CBEAD8];
      v28 = *MEMORY[0x277CBE658];
      v29 = @"_ATXHistogramTypeIntentForAllAppsTrendingLaunch";
      goto LABEL_120;
    case 22:
      v41 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v41 initWithType:v42 maxCategoryCount:v43 pruningMethod:v44, v45, v46, v47, v48];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppForAllIntentsTrendingLaunch";
      goto LABEL_124;
    case 23:
      v97 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v97 initWithType:v98 maxCategoryCount:v99 pruningMethod:v100, v101, v102, v103, v104];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppIntentUnlockTime";
      goto LABEL_124;
    case 24:
      v241 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v241, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v241 initWithType:v242, v243, v244, v245, v246, v247, v248];
      }

      v27 = MEMORY[0x277CBEAD8];
      v28 = *MEMORY[0x277CBE658];
      v29 = @"_ATXHistogramTypeIntentForAllAppsUnlockTime";
      goto LABEL_120;
    case 25:
      v129 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v129, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v129 initWithType:v130 maxCategoryCount:v131 pruningMethod:v132, v133, v134, v135, v136];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppForAllIntentsUnlockTime";
      goto LABEL_124;
    case 26:
      v249 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v249, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v249 initWithType:v250 maxCategoryCount:v251 pruningMethod:v252, v253, v254, v255, v256];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppIntentAirplaneModeLaunch";
      goto LABEL_124;
    case 27:
      v321 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v321, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v321 initWithType:v322, v323, v324, v325, v326, v327, v328];
      }

      v27 = MEMORY[0x277CBEAD8];
      v28 = *MEMORY[0x277CBE658];
      v29 = @"_ATXHistogramTypeIntentForAllAppsAirplaneModeLaunch";
      goto LABEL_120;
    case 28:
      v121 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v121, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v121 initWithType:v122 maxCategoryCount:v123 pruningMethod:v124, v125, v126, v127, v128];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppForAllIntentsAirplaneModeLaunch";
      goto LABEL_124;
    case 30:
      v19 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchHistogram *)v19 initWithType:v20, v21, v22, v23, v24, v25, v26];
      }

      v27 = MEMORY[0x277CBEAD8];
      v28 = *MEMORY[0x277CBE658];
      v29 = @"_ATXHistogramTypeIntentForAllAppsWifiLaunch";
LABEL_120:
      [v27 raise:v28 format:{@"%@ is deprecated.", v29}];
      goto LABEL_126;
    case 35:
      v233 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v233, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v233 initWithType:v234 maxCategoryCount:v235 pruningMethod:v236, v237, v238, v239, v240];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeActionsHeuristicConfirms";
      goto LABEL_124;
    case 36:
      v49 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v49 initWithType:v50 maxCategoryCount:v51 pruningMethod:v52, v53, v54, v55, v56];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeActionsHeuristicRejects";
      goto LABEL_124;
    case 90:
      v329 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v329, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v329 initWithType:v330 maxCategoryCount:v331 pruningMethod:v332, v333, v334, v335, v336];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeFallbackActionsConfirms";
      goto LABEL_124;
    case 91:
      v305 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v305, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v305 initWithType:v306 maxCategoryCount:v307 pruningMethod:v308, v309, v310, v311, v312];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeFallbackActionsRejects";
      goto LABEL_124;
    case 92:
      v137 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v137 initWithType:v138 maxCategoryCount:v139 pruningMethod:v140, v141, v142, v143, v144];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeHomescreenAppLaunch";
      goto LABEL_124;
    case 93:
      v297 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v297, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v297 initWithType:v298 maxCategoryCount:v299 pruningMethod:v300, v301, v302, v303, v304];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeAppDirectoryAppLaunch";
      goto LABEL_124;
    case 99:
      v289 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v289, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v289 initWithType:v290 maxCategoryCount:v291 pruningMethod:v292, v293, v294, v295, v296];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentOpen";
      goto LABEL_124;
    case 100:
      v113 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v113, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v113 initWithType:v114 maxCategoryCount:v115 pruningMethod:v116, v117, v118, v119, v120];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentDayOfWeek";
      goto LABEL_124;
    case 101:
      v89 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v89, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v89 initWithType:v90 maxCategoryCount:v91 pruningMethod:v92, v93, v94, v95, v96];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentUnlockTime";
      goto LABEL_124;
    case 102:
      v185 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v185 initWithType:v186 maxCategoryCount:v187 pruningMethod:v188, v189, v190, v191, v192];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentAirplaneModeOpen";
      goto LABEL_124;
    case 103:
      v161 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v161 initWithType:v162 maxCategoryCount:v163 pruningMethod:v164, v165, v166, v167, v168];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentTrendingOpen";
      goto LABEL_124;
    case 108:
      v73 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v73 initWithType:v74 maxCategoryCount:v75 pruningMethod:v76, v77, v78, v79, v80];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentConfirms";
      goto LABEL_124;
    case 109:
      v30 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v30 initWithType:v31 maxCategoryCount:v32 pruningMethod:v33, v34, v35, v36, v37];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentCategoryOpen";
      goto LABEL_124;
    case 110:
      v281 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v281, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v281 initWithType:v282 maxCategoryCount:v283 pruningMethod:v284, v285, v286, v287, v288];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentCategoryDayOfWeek";
      goto LABEL_124;
    case 112:
      v257 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v257, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v257 initWithType:v258 maxCategoryCount:v259 pruningMethod:v260, v261, v262, v263, v264];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentCategoryTrendingOpen";
      goto LABEL_124;
    case 113:
      v169 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v169, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v169 initWithType:v170 maxCategoryCount:v171 pruningMethod:v172, v173, v174, v175, v176];
      }

      v38 = MEMORY[0x277CBEAD8];
      v39 = *MEMORY[0x277CBE658];
      v40 = @"_ATXHistogramTypeDocumentRejects";
LABEL_124:
      [v38 raise:v39 format:{@"%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", v40}];
      goto LABEL_125;
    case 114:
      v153 = __atxlog_handle_default(self);
      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
      {
        [(_ATXAppLaunchCategoricalHistogram *)v153 initWithType:v154 maxCategoryCount:v155 pruningMethod:v156, v157, v158, v159, v160];
      }

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE658] format:{@"%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", @"_ATXHistogramTypeMax"}];
      goto LABEL_126;
    default:
LABEL_125:
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:358 description:@"Failed to initialize _ATXCategoricalHistogram due to invalid histogram type being specified"];

LABEL_126:
      v10 = 0;
LABEL_127:

      return v10;
  }
}

- (BOOL)_tryGetEventIdforBundleId:(id)id createIfMissing:(BOOL)missing eventIdOut:(unsigned __int16 *)out
{
  missingCopy = missing;
  idCopy = id;
  if (!out)
  {
    [_ATXAppLaunchCategoricalHistogram _tryGetEventIdforBundleId:a2 createIfMissing:self eventIdOut:?];
  }

  v10 = +[ATXHistogramBundleIdTable sharedInstance];
  v11 = v10;
  if (missingCopy)
  {
    *out = [v10 intern:idCopy];
  }

  else
  {
    v12 = [v10 lookup:idCopy into:out];

    if ((v12 & 1) == 0)
    {
      v13 = 0;
      *out = -1;
      goto LABEL_8;
    }
  }

  v13 = 1;
LABEL_8:

  return v13;
}

- (BOOL)_tryGetCategoryIdforCategory:(id)category createIfMissing:(BOOL)missing categoryIdOut:(unsigned __int16 *)out
{
  missingCopy = missing;
  categoryCopy = category;
  if (!out)
  {
    [_ATXAppLaunchCategoricalHistogram _tryGetCategoryIdforCategory:a2 createIfMissing:self categoryIdOut:?];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  prevCategory = selfCopy->_prevCategory;
  if (prevCategory == categoryCopy || [(NSString *)prevCategory isEqualToString:categoryCopy])
  {
    *out = selfCopy->_prevCategoryId;
  }

  else
  {
    v12 = [(NSMutableDictionary *)selfCopy->_categoryToCategoryId objectForKeyedSubscript:categoryCopy];

    if (v12)
    {
      v13 = [(NSMutableDictionary *)selfCopy->_categoryToCategoryId objectForKeyedSubscript:categoryCopy];
      unsignedIntegerValue = [v13 unsignedIntegerValue];
      selfCopy->_prevCategoryId = unsignedIntegerValue;
      *out = unsignedIntegerValue;
    }

    else
    {
      if (!missingCopy)
      {
        *out = -1;
        goto LABEL_11;
      }

      maxCategoryId = selfCopy->_maxCategoryId;
      selfCopy->_maxCategoryId = maxCategoryId + 1;
      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:maxCategoryId];
      [(NSMutableDictionary *)selfCopy->_categoryToCategoryId setObject:v16 forKeyedSubscript:categoryCopy];

      selfCopy->_prevCategoryId = maxCategoryId;
      *out = maxCategoryId;
    }
  }

  LOBYTE(missingCopy) = 1;
LABEL_11:
  objc_sync_exit(selfCopy);

  return missingCopy;
}

- (void)addLaunchWithBundleId:(id)id date:(id)date category:(id)category weight:(float)weight
{
  idCopy = id;
  dateCopy = date;
  categoryCopy = category;
  v14 = categoryCopy;
  if (idCopy)
  {
    if (categoryCopy)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v20 = 0;
      [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:1 eventIdOut:&v20];
      v19 = 0;
      [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:v14 createIfMissing:1 categoryIdOut:&v19];
      *&v16 = weight;
      [(ATXHistogramData *)selfCopy->_histogramData add:v20 a:v19 b:v16];
      lastDates = selfCopy->_lastDates;
      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:v19];
      [(NSMutableDictionary *)lastDates setObject:dateCopy forKeyedSubscript:v18];

      [(_ATXAppLaunchCategoricalHistogram *)selfCopy _reduceCategoryCountTo:selfCopy->_maxCategoryCount];
      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy = __atxlog_handle_default(0);
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    selfCopy = __atxlog_handle_default(categoryCopy);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }
}

- (void)resetHistogram:(id)histogram
{
  histogramCopy = histogram;
  obj = self;
  objc_sync_enter(obj);
  histogramData = obj->_histogramData;
  obj->_histogramData = histogramCopy;

  objc_sync_exit(obj);
}

- (BOOL)removeHistoryForBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = 0;
    v7 = [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v9];
    if (v7)
    {
      [(ATXHistogramData *)selfCopy->_histogramData deleteWhereA:v9 b:0xFFFFLL];
      [(_ATXAppLaunchCategoricalHistogram *)selfCopy _garbageCollectCategoryIds];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)removeHistoryForCategory:(id)category
{
  categoryCopy = category;
  if (categoryCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = 0;
    v7 = [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:categoryCopy createIfMissing:0 categoryIdOut:&v9];
    if (v7)
    {
      [(ATXHistogramData *)selfCopy->_histogramData deleteWhereA:0xFFFFLL b:v9];
      [(_ATXAppLaunchCategoricalHistogram *)selfCopy _removeMappingForCategory:categoryCopy];
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }

    v7 = 0;
  }

  return v7;
}

- (unint64_t)bundleIDCountForCategory:(id)category
{
  categoryCopy = category;
  if (categoryCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = 0;
    if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:categoryCopy createIfMissing:0 categoryIdOut:&v9])
    {
      v7 = [(ATXHistogramData *)selfCopy->_histogramData countWhereA:0xFFFFLL b:v9];
    }

    else
    {
      v7 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }

    v7 = 0;
  }

  return v7;
}

- (int)removeHistoryForBundleIds:(id)ids
{
  v19 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = idsCopy;
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v13 = 0;
        if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:v11 createIfMissing:0 eventIdOut:&v13])
        {
          [(ATXHistogramData *)selfCopy->_histogramData deleteWhereA:v13 b:0xFFFFLL];
          ++v7;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  [(_ATXAppLaunchCategoricalHistogram *)selfCopy _garbageCollectCategoryIds];
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)_removeMappingForCategory:(id)category
{
  categoryCopy = category;
  if (categoryCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [(NSMutableDictionary *)selfCopy->_categoryToCategoryId objectForKeyedSubscript:categoryCopy];
    unsignedShortValue = [v7 unsignedShortValue];

    maxCategoryId = selfCopy->_maxCategoryId;
    if (unsignedShortValue + 1 == maxCategoryId)
    {
      selfCopy->_maxCategoryId = maxCategoryId - 1;
    }

    [(NSMutableDictionary *)selfCopy->_categoryToCategoryId removeObjectForKey:categoryCopy];
    lastDates = selfCopy->_lastDates;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:unsignedShortValue];
    [(NSMutableDictionary *)lastDates removeObjectForKey:v11];

    if (unsignedShortValue == selfCopy->_prevCategoryId)
    {
      prevCategory = selfCopy->_prevCategory;
      selfCopy->_prevCategory = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v13 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }
}

- (void)_reduceCategoryCountTo:(unsigned __int16)to
{
  LODWORD(v3) = to;
  v40 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_categoryToCategoryId count]> to)
  {
    allKeys = [(NSMutableDictionary *)self->_categoryToCategoryId allKeys];
    v7 = objc_opt_new();
    v8 = v7;
    if ((self->_pruningMethod - 1) > 1)
    {
      v27 = __atxlog_handle_default(v7);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        [_ATXAppLaunchCategoricalHistogram _reduceCategoryCountTo:v27];
      }

      [MEMORY[0x277D42578] simulateCrashWithDescription:@"Invalid value for _ATXAppLaunchCategoricalHistogramPruningMethod"];
    }

    else
    {
      v35 = 0u;
      v36 = 0u;
      v30 = a2;
      v33 = 0u;
      v34 = 0u;
      v31 = allKeys;
      obj = allKeys;
      v9 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v34;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            v13 = v8;
            if (*v34 != v11)
            {
              objc_enumerationMutation(obj);
            }

            v14 = *(*(&v33 + 1) + 8 * i);
            v15 = [(NSMutableDictionary *)self->_categoryToCategoryId objectForKeyedSubscript:v14, v30];

            if (!v15)
            {
              [(_ATXAppLaunchCategoricalHistogram *)v30 _reduceCategoryCountTo:v14];
            }

            v16 = objc_opt_new();
            objc_storeStrong((v16 + 8), v14);
            lastDates = self->_lastDates;
            v18 = [(NSMutableDictionary *)self->_categoryToCategoryId objectForKeyedSubscript:v14];
            v19 = [(NSMutableDictionary *)lastDates objectForKeyedSubscript:v18];
            v20 = *(v16 + 16);
            *(v16 + 16) = v19;

            [(_ATXAppLaunchCategoricalHistogram *)self totalLaunchesForCategory:v14];
            *(v16 + 24) = v21;
            v8 = v13;
            [v13 addObject:v16];
          }

          v10 = [obj countByEnumeratingWithState:&v33 objects:v39 count:16];
        }

        while (v10);
      }

      v22 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"lastDate" ascending:0];
      v23 = [objc_alloc(MEMORY[0x277CCAC98]) initWithKey:@"launchCount" ascending:0];
      v24 = v23;
      if (self->_pruningMethod == 1)
      {
        v38 = v22;
        v25 = &v38;
        v26 = v23;
      }

      else
      {
        v37 = v23;
        v25 = &v37;
        v26 = v22;
      }

      v3 = v3;
      allKeys = v31;
      v25[1] = v26;
      v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:?];
      [v8 sortUsingDescriptors:v28];

      while ([v8 count] > v3)
      {
        v29 = [v8 objectAtIndexedSubscript:v3];
        [(_ATXAppLaunchCategoricalHistogram *)self removeHistoryForCategory:v29[1]];

        ++v3;
      }
    }
  }
}

- (double)totalLaunchesForBundleId:(id)id category:(id)category
{
  idCopy = id;
  categoryCopy = category;
  v9 = categoryCopy;
  if (idCopy)
  {
    if (categoryCopy)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v14 = 0;
      v11 = 0.0;
      if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v14 + 2]&& [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:v9 createIfMissing:0 categoryIdOut:&v14])
      {
        [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:HIWORD(v14) b:v14];
        v11 = v12;
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy = __atxlog_handle_default(0);
      v11 = 0.0;
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    selfCopy = __atxlog_handle_default(categoryCopy);
    v11 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v11;
}

- (double)launchPopularityWithBundleId:(id)id category:(id)category
{
  idCopy = id;
  categoryCopy = category;
  v9 = categoryCopy;
  if (idCopy)
  {
    if (categoryCopy)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v17 = 0;
      v11 = 0.0;
      if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v17 + 2]&& [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:v9 createIfMissing:0 categoryIdOut:&v17])
      {
        [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:HIWORD(v17) b:v17];
        v13 = v12;
        [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:HIWORD(v17) b:0xFFFFLL];
        [(_ATXAppLaunchCategoricalHistogram *)selfCopy ratio:v13 over:v14];
        v11 = v15;
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy = __atxlog_handle_default(0);
      v11 = 0.0;
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    selfCopy = __atxlog_handle_default(categoryCopy);
    v11 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v11;
}

- (double)relativeLaunchPopularityWithBundleId:(id)id category:(id)category
{
  idCopy = id;
  categoryCopy = category;
  v9 = categoryCopy;
  if (idCopy)
  {
    if (categoryCopy)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v17 = 0;
      v11 = 0.0;
      if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v17 + 2]&& [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:v9 createIfMissing:0 categoryIdOut:&v17])
      {
        [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:HIWORD(v17) b:v17];
        v13 = v12;
        [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:0xFFFFLL b:v17];
        [(_ATXAppLaunchCategoricalHistogram *)selfCopy ratio:v13 over:v14];
        v11 = v15;
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy = __atxlog_handle_default(0);
      v11 = 0.0;
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    selfCopy = __atxlog_handle_default(categoryCopy);
    v11 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v11;
}

- (double)totalLaunchesForCategory:(id)category
{
  categoryCopy = category;
  if (categoryCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:categoryCopy createIfMissing:0 categoryIdOut:&v10])
    {
      [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:0xFFFFLL b:v10];
      v7 = v8;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    v7 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)totalLaunchesForBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v10])
    {
      [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:v10 b:0xFFFFLL];
      v7 = v8;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    v7 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)overallLaunchPopularityForBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v13])
    {
      [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:v13 b:0xFFFFLL];
      v9 = v8;
      [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
      [(_ATXAppLaunchCategoricalHistogram *)selfCopy ratio:v9 over:v10];
      v7 = v11;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    v7 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)overallLaunchPopularityForCategory:(id)category
{
  categoryCopy = category;
  if (categoryCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v13 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:categoryCopy createIfMissing:0 categoryIdOut:&v13])
    {
      [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:0xFFFFLL b:v13];
      v9 = v8;
      [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
      [(_ATXAppLaunchCategoricalHistogram *)selfCopy ratio:v9 over:v10];
      v7 = v11;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    v7 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)overallLaunchPopularityForBundleId:(id)id category:(id)category
{
  idCopy = id;
  categoryCopy = category;
  v9 = categoryCopy;
  if (idCopy)
  {
    if (categoryCopy)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      v17 = 0;
      v11 = 0.0;
      if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v17 + 2]&& [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:v9 createIfMissing:0 categoryIdOut:&v17])
      {
        [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:HIWORD(v17) b:v17];
        v13 = v12;
        [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
        [(_ATXAppLaunchCategoricalHistogram *)selfCopy ratio:v13 over:v14];
        v11 = v15;
      }

      objc_sync_exit(selfCopy);
    }

    else
    {
      selfCopy = __atxlog_handle_default(0);
      v11 = 0.0;
      if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
      {
        [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
      }
    }
  }

  else
  {
    selfCopy = __atxlog_handle_default(categoryCopy);
    v11 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v11;
}

- (double)totalLaunches
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:0xFFFFLL b:0xFFFFLL];
  v4 = v3;
  objc_sync_exit(selfCopy);

  return v4;
}

- (double)entropyForBundleId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v10])
    {
      [(ATXHistogramData *)selfCopy->_histogramData entropyWhereA:v10 b:0xFFFFLL];
      v7 = v8;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    v7 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)entropyForCategory:(id)category
{
  categoryCopy = category;
  if (categoryCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = 0;
    v7 = 0.0;
    if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:categoryCopy createIfMissing:0 categoryIdOut:&v10])
    {
      [(ATXHistogramData *)selfCopy->_histogramData entropyWhereA:0xFFFFLL b:v10];
      v7 = v8;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    v7 = 0.0;
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }
  }

  return v7;
}

- (double)entropy
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(ATXHistogramData *)selfCopy->_histogramData entropyWhereA:0xFFFFLL b:0xFFFFLL];
  v4 = v3;
  objc_sync_exit(selfCopy);

  return v4;
}

- (id)launchCountsForEachCategoryForBundleId:(id)id
{
  idCopy = id;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v14 = 0;
  v6 = objc_opt_new();
  v7 = [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v14];
  if (v7)
  {
    histogramData = selfCopy->_histogramData;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __76___ATXAppLaunchCategoricalHistogram_launchCountsForEachCategoryForBundleId___block_invoke;
    v11[3] = &unk_2785A08B0;
    v13 = v14;
    v12 = v6;
    [(ATXHistogramData *)histogramData enumerate:v11];
    v9 = v12;
  }

  else
  {
    v9 = __atxlog_handle_default(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_ATXAppLaunchCategoricalHistogram launchCountsForEachCategoryForBundleId:];
    }
  }

  objc_sync_exit(selfCopy);

  return v6;
}

- (id)lastDate
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  objectEnumerator = [(NSMutableDictionary *)selfCopy->_lastDates objectEnumerator];
  v4 = 0;
  v5 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (!v4 || [v4 compare:*(*(&v12 + 1) + 8 * i)] == -1)
        {
          v9 = v8;

          v4 = v9;
        }
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v10 = [v4 copy];
  objc_sync_exit(selfCopy);

  return v10;
}

- (BOOL)bundleHasBeenLaunched:(id)launched
{
  launchedCopy = launched;
  if (launchedCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v10 = 0;
    if ([(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:launchedCopy createIfMissing:0 eventIdOut:&v10])
    {
      [(ATXHistogramData *)selfCopy->_histogramData lookupUnsmoothedA:v10 b:0xFFFFLL];
      v8 = v7 > 0.0;
    }

    else
    {
      v8 = 0;
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    selfCopy = __atxlog_handle_default(0);
    if (os_log_type_enabled(&selfCopy->super, OS_LOG_TYPE_DEBUG))
    {
      [_ATXAppLaunchCategoricalHistogram addLaunchWithBundleId:a2 date:? category:? weight:?];
    }

    v8 = 0;
  }

  return v8;
}

- (void)decayByFactor:(double)factor
{
  obj = self;
  objc_sync_enter(obj);
  *&v4 = factor;
  [(ATXHistogramData *)obj->_histogramData decayByFactor:v4];
  objc_sync_exit(obj);
}

- (void)decayWithHalfLifeInDays:(double)days
{
  obj = self;
  objc_sync_enter(obj);
  *&v4 = days;
  [(ATXHistogramData *)obj->_histogramData decayWithHalfLifeInDays:v4];
  objc_sync_exit(obj);
}

- (void)resetData
{
  obj = self;
  objc_sync_enter(obj);
  obj->_maxCategoryId = 0;
  v2 = objc_opt_new();
  categoryToCategoryId = obj->_categoryToCategoryId;
  obj->_categoryToCategoryId = v2;

  prevCategory = obj->_prevCategory;
  obj->_prevCategory = 0;

  [(ATXHistogramData *)obj->_histogramData clear];
  objc_sync_exit(obj);
}

- (void)verifyDataIntegrity
{
  obj = self;
  objc_sync_enter(obj);
  allValues = [(NSMutableDictionary *)obj->_categoryToCategoryId allValues];
  v3 = [allValues count];
  v4 = [MEMORY[0x277CBEB98] setWithArray:allValues];
  v5 = [v4 count];

  if (v3 > v5)
  {
    [(_ATXAppLaunchCategoricalHistogram *)obj resetData];
  }

  objc_sync_exit(obj);
}

- (_ATXAppLaunchCategoricalHistogram)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"histogram"];
  if (v4)
  {
    v5 = [[ATXHistogramData alloc] initWithCategoricalHistogram:v4];
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = [v6 setWithObjects:{v7, v8, objc_opt_class(), 0}];
    v10 = [coderCopy decodeObjectOfClasses:v9 forKey:@"bundleIdToEventId"];

    v11 = +[ATXHistogramBundleIdTable sharedInstance];
    v12 = [v11 permutationFrom:v10];
    [(ATXHistogramData *)v5 applyPermutationToA:v12];

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v13 setWithObjects:{v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"categoryToCategoryId"];
    v18 = [coderCopy decodeInt32ForKey:@"maxCategoryId"];
    v19 = [coderCopy decodeInt32ForKey:@"maxCategoryCount"];
    getLastDatesByCategoryId = [v4 getLastDatesByCategoryId];
    v21 = [coderCopy decodeIntegerForKey:@"pruningMethod"];
    v22 = v18;
    v23 = v19;
    selfCopy2 = self;
    v25 = v5;
    v26 = v17;
  }

  else
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"histogramData"];
    v27 = MEMORY[0x277CBEB98];
    v28 = objc_opt_class();
    v29 = objc_opt_class();
    v10 = [v27 setWithObjects:{v28, v29, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v10 forKey:@"categoryToCategoryId"];
    v30 = [coderCopy decodeInt32ForKey:@"maxCategoryId"];
    v31 = [coderCopy decodeInt32ForKey:@"maxCategoryCount"];
    v32 = MEMORY[0x277CBEB98];
    v33 = objc_opt_class();
    v34 = objc_opt_class();
    v17 = [v32 setWithObjects:{v33, v34, objc_opt_class(), 0}];
    getLastDatesByCategoryId = [coderCopy decodeObjectOfClasses:v17 forKey:@"lastDates"];
    v21 = [coderCopy decodeIntegerForKey:@"pruningMethod"];
    v22 = v30;
    v23 = v31;
    selfCopy2 = self;
    v25 = v5;
    v26 = v16;
  }

  v35 = [(_ATXAppLaunchCategoricalHistogram *)selfCopy2 initWithHistogram:v25 categoryToCategoryId:v26 maxCategoryId:v22 maxCategoryCount:v23 lastDates:getLastDatesByCategoryId pruningMethod:v21];

  return v35;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [coderCopy encodeObject:selfCopy->_histogramData forKey:@"histogramData"];
  [coderCopy encodeObject:selfCopy->_categoryToCategoryId forKey:@"categoryToCategoryId"];
  [coderCopy encodeInt32:selfCopy->_maxCategoryId forKey:@"maxCategoryId"];
  [coderCopy encodeObject:selfCopy->_lastDates forKey:@"lastDates"];
  [coderCopy encodeInt32:selfCopy->_maxCategoryCount forKey:@"maxCategoryCount"];
  [coderCopy encodeInteger:selfCopy->_pruningMethod forKey:@"pruningMethod"];
  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = objc_opt_new();
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = MEMORY[0x277CCACA8];
  v6 = [(NSMutableDictionary *)selfCopy->_categoryToCategoryId description];
  v7 = [v5 stringWithFormat:@"categoryToCategoryId=%@\n", v6];
  [v3 appendString:v7];

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"maxCategorycount=%u\n", selfCopy->_maxCategoryCount];
  [v3 appendString:v8];

  v9 = MEMORY[0x277CCACA8];
  v10 = [objc_opt_class() stringForPruningMethod:selfCopy->_pruningMethod];
  v11 = [v9 stringWithFormat:@"pruningMethod=%@\n", v10];
  [v3 appendString:v11];

  v12 = MEMORY[0x277CCACA8];
  v13 = [(ATXHistogramData *)selfCopy->_histogramData description];
  v14 = [v12 stringWithFormat:@"categoricalHistogram=%@\n", v13];
  [v3 appendString:v14];

  objc_sync_exit(selfCopy);

  return v3;
}

- (unsigned)categoryCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_categoryToCategoryId count];
  objc_sync_exit(selfCopy);

  return v3;
}

- (unsigned)_eventIdforBundleId:(id)id
{
  idCopy = id;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = 0;
  [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetEventIdforBundleId:idCopy createIfMissing:0 eventIdOut:&v8];
  v6 = v8;
  objc_sync_exit(selfCopy);

  return v6;
}

- (unsigned)_categoryIdforCategory:(id)category
{
  categoryCopy = category;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v8 = 0;
  [(_ATXAppLaunchCategoricalHistogram *)selfCopy _tryGetCategoryIdforCategory:categoryCopy createIfMissing:0 categoryIdOut:&v8];
  v6 = v8;
  objc_sync_exit(selfCopy);

  return v6;
}

+ (void)stringForPruningMethod:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:61 description:{@"Invalid parameter not satisfying: %@", @"pruningMethod >= 0 && pruningMethod < _ATXAppLaunchCategoricalHistogramPruningMethodMax"}];
}

- (void)_setMaxCategoryCount:(unsigned __int16 *)a1 pruningMethod:(NSObject *)a2 .cold.1(unsigned __int16 *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = 134217984;
  v4 = v2;
  _os_log_debug_impl(&dword_2263AA000, a2, OS_LOG_TYPE_DEBUG, "set _maxCategoryCount to %lu", &v3, 0xCu);
}

- (void)_setMaxCategoryCount:pruningMethod:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v2 = 2048;
  v3 = 1;
  _os_log_error_impl(&dword_2263AA000, v0, OS_LOG_TYPE_ERROR, "invalid _pruningMethod of %lu -- using default of %lu", v1, 0x16u);
}

- (void)_setMaxCategoryCount:(void *)a1 pruningMethod:(uint64_t)a2 .cold.3(void *a1, uint64_t a2)
{
  v7 = [objc_opt_class() stringForPruningMethod:*a1];
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeMax";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"Histogram type is deprecated.";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is deprecated.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.9(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentCategoryTrendingOpen";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.10(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentCategoryDayOfWeek";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.11(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentCategoryOpen";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.12(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentRejects";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.13(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentConfirms";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.14(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentTrendingOpen";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.15(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentAirplaneModeOpen";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.16(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentUnlockTime";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.17(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentDayOfWeek";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.18(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDocumentOpen";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.19(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeFallbackActionsRejects";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.20(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeFallbackActionsConfirms";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.21(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeActionsHeuristicRejects";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.22(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeActionsHeuristicConfirms";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.23(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppForAllIntentsUnlockTime";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.24(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppIntentUnlockTime";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.25(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppForAllIntentsTrendingLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.26(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppIntentTrendingLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.27(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppForAllIntentsAirplaneModeLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.28(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppIntentAirplaneModeLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.29(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppForAllIntentsDayOfWeek";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.30(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppIntentDayOfWeek";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.31(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppForAllIntentsLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.32(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppIntentLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.33(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeTrendingLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.34(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAirplaneModeLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.35(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAppDirectoryAppLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.36(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeHomescreenAppLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.37(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeSpotlightLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.38(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeAnyLaunch";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.39(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeDayOfWeek";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)initWithType:(uint64_t)a3 maxCategoryCount:(uint64_t)a4 pruningMethod:(uint64_t)a5 .cold.40(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"_ATXHistogramTypeUnlockTime";
  OUTLINED_FUNCTION_0(&dword_2263AA000, a1, a3, "%@ is not a valid type for _ATXAppLaunchCategoricalHistogram.  Use _ATXAppLaunchHistogram.", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)_tryGetEventIdforBundleId:(uint64_t)a1 createIfMissing:(uint64_t)a2 eventIdOut:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:376 description:{@"Invalid parameter not satisfying: %@", @"eventId"}];
}

- (void)_tryGetCategoryIdforCategory:(uint64_t)a1 createIfMissing:(uint64_t)a2 categoryIdOut:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:390 description:{@"Invalid parameter not satisfying: %@", @"categoryId"}];
}

- (void)addLaunchWithBundleId:(const char *)a1 date:category:weight:.cold.1(const char *a1)
{
  sel_getName(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)addLaunchWithBundleId:(const char *)a1 date:category:weight:.cold.2(const char *a1)
{
  sel_getName(a1);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)_reduceCategoryCountTo:(uint64_t)a3 .cold.2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"_ATXAppLaunchCategoricalHistogram.m" lineNumber:619 description:{@"Trying to remove a category '%@' that has no categoryId -- inconsistent dictionary state", a3}];
}

@end