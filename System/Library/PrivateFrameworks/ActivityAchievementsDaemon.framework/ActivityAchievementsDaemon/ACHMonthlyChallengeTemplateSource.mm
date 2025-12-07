@interface ACHMonthlyChallengeTemplateSource
- (ACHMonthlyChallengeTemplateSource)initWithDataSource:(id)source dataProvider:(id)provider templateCache:(id)cache;
- (BOOL)_createMonthlyChallengeWithMonthDateInterval:(id)interval monthlyChallengeTemplates:(id *)templates error:(id *)error;
- (BOOL)_isInFirstWeekOfCurrentMonth:(id)month;
- (BOOL)_shouldOverrideMonthlyChallengeCadence;
- (BOOL)isGoalValueForMonthlyChallengeTypeValid:(unint64_t)valid error:(id *)error;
- (BOOL)isMonthlyChallengeOfTypeAvailable:(unint64_t)available error:(id *)error;
- (BOOL)isStandalonePhoneFitnessMode;
- (NSCalendar)currentCalendar;
- (NSDate)currentDate;
- (double)_capGoalValueForChallengeType:(unint64_t)type goalValue:(double)value;
- (double)_goalValueForCurrentMonthForType:(unint64_t)type error:(id *)error;
- (double)_roundedGoalValue:(double)value monthlyChallengeType:(unint64_t)type;
- (double)_targetGoalValueForCurrentMonthForType:(unint64_t)type error:(id *)error;
- (id)_availableMonthlyChallengeTypes;
- (id)_dateComponentIntervalForCurrentMonth;
- (id)_dateComponentIntervalForLastMonth;
- (id)_dateComponentIntervalForTwoMonthsAgo;
- (id)_maximumValueForMonthlyChallengeType:(unint64_t)type;
- (id)_minimumValueForMonthlyChallengeType:(unint64_t)type;
- (id)_modelsDirectoryBasePathForTemplate:(id)template;
- (id)_monthlyAchievementsAssetsDirectoryBasePath;
- (id)_pairedWatchDeviceCapabilities;
- (id)_suffixForCurrentMonthForType:(unint64_t)type template:(id)template goal:(double)goal error:(id *)error;
- (id)customPlaceholderValuesForTemplate:(id)template error:(id *)error;
- (id)localizationBundleURLForTemplate:(id)template;
- (id)pairedDeviceRegistrySharedInstance;
- (id)possibleLocalizationSuffixesForTemplate:(id)template;
- (id)propertyListBundleURLForTemplate:(id)template;
- (id)resourceBundleURLForTemplate:(id)template;
- (int64_t)_monthlyChallengeTemplateSourceActionForDate:(id)date existingTemplate:(id)template;
- (unint64_t)_getRandomMonthlyChallengeType;
- (unint64_t)_numberOfDaysInMonthForDate:(id)date;
- (void)_didOverrideMonthlyChallengeCadence;
- (void)_removeMonthlyChallengeTemplate:(id)template monthlyChallengeTemplates:(id *)templates templatesToRemove:(id *)remove;
- (void)setIsStandalonePhoneFitnessModeOverride:(BOOL)override;
- (void)templatesForDate:(id)date completion:(id)completion;
@end

@implementation ACHMonthlyChallengeTemplateSource

- (ACHMonthlyChallengeTemplateSource)initWithDataSource:(id)source dataProvider:(id)provider templateCache:(id)cache
{
  sourceCopy = source;
  providerCopy = provider;
  cacheCopy = cache;
  v19.receiver = self;
  v19.super_class = ACHMonthlyChallengeTemplateSource;
  v12 = [(ACHMonthlyChallengeTemplateSource *)&v19 init];
  if (v12)
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
    currentCalendar = v12->_currentCalendar;
    v12->_currentCalendar = hk_gregorianCalendarWithLocalTimeZone;

    objc_storeStrong(&v12->_dataSource, source);
    objc_storeStrong(&v12->_templateDataProvider, provider);
    objc_storeStrong(&v12->_templateCache, cache);
    date = [MEMORY[0x277CBEAA8] date];
    currentDate = v12->_currentDate;
    v12->_currentDate = date;

    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    v12->_isAppleWatch = [mEMORY[0x277CCDD30] isAppleWatch];
  }

  return v12;
}

- (int64_t)_monthlyChallengeTemplateSourceActionForDate:(id)date existingTemplate:(id)template
{
  dateCopy = date;
  v7 = objc_alloc(MEMORY[0x277CBEBD0]);
  v8 = [v7 initWithSuiteName:*MEMORY[0x277CE8C00]];
  v9 = [v8 BOOLForKey:*MEMORY[0x277CE8AC0]];
  v10 = [v8 BOOLForKey:*MEMORY[0x277CE8AB8]];
  v11 = v9 ^ 1u;
  if ((v9 & 1) == 0 && (v10 & 1) == 0)
  {
    if ([(ACHMonthlyChallengeTemplateSource *)self _shouldOverrideMonthlyChallengeCadence])
    {
      v11 = 2;
    }

    else if ([(ACHMonthlyChallengeTemplateSource *)self _isInFirstWeekOfCurrentMonth:dateCopy])
    {
      templateDataProvider = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v18 = 0;
      v13 = [templateDataProvider hasMinimumActiveDaysWithError:&v18];
      v14 = v18;

      v15 = 5;
      if (!template)
      {
        v15 = 6;
      }

      v16 = 7;
      if (!v14)
      {
        v16 = 4;
      }

      if (v13)
      {
        v11 = v15;
      }

      else
      {
        v11 = v16;
      }
    }

    else
    {
      v11 = 3;
    }
  }

  return v11;
}

- (void)templatesForDate:(id)date completion:(id)completion
{
  v86 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  completionCopy = completion;
  if (![(ACHMonthlyChallengeTemplateSource *)self sourceShouldRunForDate:dateCopy])
  {
    v22 = [MEMORY[0x277CBEB98] set];
    v23 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v22, 0, 0);

    goto LABEL_63;
  }

  selfCopy = self;
  templateDataProvider = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
  existingMonthlyChallengeTemplates = [templateDataProvider existingMonthlyChallengeTemplates];

  _dateComponentIntervalForCurrentMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForCurrentMonth];
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = __Block_byref_object_copy__17;
  v79 = __Block_byref_object_dispose__17;
  v80 = 0;
  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke;
  v72[3] = &unk_278491BC0;
  v43 = _dateComponentIntervalForCurrentMonth;
  v73 = v43;
  v74 = &v75;
  v9 = [existingMonthlyChallengeTemplates hk_map:v72];

  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_3;
  v70[3] = &unk_278491C08;
  v71 = &__block_literal_global_17;
  v40 = [v9 hk_map:v70];
  templateCache = [(ACHMonthlyChallengeTemplateSource *)self templateCache];
  v69 = 0;
  v45 = [templateCache allCachedTemplatesWithError:&v69];
  v42 = v69;

  if (v42)
  {
    v11 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [ACHMonthlyChallengeTemplateSource templatesForDate:v42 completion:v11];
    }
  }

  if ([v45 count])
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    startDateComponents = [v43 startDateComponents];
    [v12 setYear:{objc_msgSend(startDateComponents, "year")}];

    startDateComponents2 = [v43 startDateComponents];
    [v12 setMonth:{objc_msgSend(startDateComponents2, "month")}];

    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_306;
    v64[3] = &unk_278491C30;
    v67 = &__block_literal_global_17;
    v65 = v40;
    v15 = v12;
    v66 = v15;
    v68 = &v75;
    v16 = [v45 hk_map:v64];
    if ([v16 count])
    {
      v17 = [v9 setByAddingObjectsFromArray:v16];

      v9 = v17;
    }
  }

  v18 = [(ACHMonthlyChallengeTemplateSource *)self _monthlyChallengeTemplateSourceActionForDate:dateCopy existingTemplate:v76[5]];
  v44 = 0;
  if (v18 > 3)
  {
    if (v18 > 5)
    {
      if (v18 == 6)
      {
        v31 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_221DDC000, v31, OS_LOG_TYPE_DEFAULT, "Attempting to generate a monthly challenge for the current month.", buf, 2u);
        }

        v54 = 0;
        v55 = v9;
        [(ACHMonthlyChallengeTemplateSource *)self _createMonthlyChallengeWithMonthDateInterval:v43 monthlyChallengeTemplates:&v55 error:&v54];
        v21 = v55;

        v27 = v54;
        goto LABEL_46;
      }

      if (v18 != 7)
      {
        goto LABEL_48;
      }

      v24 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Not generating monthly challenge template for current month because we encountered an error condition.", buf, 2u);
      }
    }

    else if (v18 == 4)
    {
      v24 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Not generating monthly challenge template for current month because user does not have minimum active days.", buf, 2u);
      }
    }

    else
    {
      v24 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        uniqueName = [v76[5] uniqueName];
        *buf = 138543362;
        v82 = uniqueName;
        _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Not generating monthly challenge template for current month because one already exists for the month: %{public}@", buf, 0xCu);
      }
    }
  }

  else
  {
    if (v18 <= 1)
    {
      if (v18)
      {
        if (v18 == 1)
        {
          v19 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_221DDC000, v19, OS_LOG_TYPE_DEFAULT, "User has tapped the Monthly Challenge delete button.", buf, 2u);
          }

          v20 = v76[5];
          v60 = 0;
          v61 = v9;
          [(ACHMonthlyChallengeTemplateSource *)self _removeMonthlyChallengeTemplate:v20 monthlyChallengeTemplates:&v61 templatesToRemove:&v60];
          v21 = v61;

          v44 = v60;
          v41 = 0;
          goto LABEL_47;
        }

LABEL_48:
        v41 = 0;
        goto LABEL_49;
      }

      v26 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "User has tapped the Monthly Challenge generation button.", buf, 2u);
      }

      v62 = 0;
      v63 = v9;
      [(ACHMonthlyChallengeTemplateSource *)self _createMonthlyChallengeWithMonthDateInterval:v43 monthlyChallengeTemplates:&v63 error:&v62];
      v21 = v63;

      v27 = v62;
LABEL_46:
      v41 = v27;
      v44 = 0;
LABEL_47:
      v9 = v21;
      goto LABEL_49;
    }

    if (v18 == 2)
    {
      v28 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_221DDC000, v28, OS_LOG_TYPE_DEFAULT, "Overriding monthly challenge cadence; deleting old monthly challenge and generating a new one.", buf, 2u);
      }

      v29 = v76[5];
      v58 = 0;
      v59 = v9;
      [(ACHMonthlyChallengeTemplateSource *)self _removeMonthlyChallengeTemplate:v29 monthlyChallengeTemplates:&v59 templatesToRemove:&v58];
      v30 = v59;

      v44 = v58;
      v56 = 0;
      v57 = v30;
      [(ACHMonthlyChallengeTemplateSource *)self _createMonthlyChallengeWithMonthDateInterval:v43 monthlyChallengeTemplates:&v57 error:&v56];
      v9 = v57;

      v41 = v56;
      if (v41)
      {
        goto LABEL_49;
      }

      [(ACHMonthlyChallengeTemplateSource *)self _didOverrideMonthlyChallengeCadence];
      goto LABEL_38;
    }

    v24 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "Not generating monthly challenge template for current month because not the first week of the month.", buf, 2u);
    }
  }

  v44 = 0;
LABEL_38:
  v41 = 0;
LABEL_49:
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v32 = v9;
  v33 = [v32 countByEnumeratingWithState:&v50 objects:v85 count:16];
  if (v33)
  {
    v34 = *v51;
    do
    {
      for (i = 0; i != v33; ++i)
      {
        if (*v51 != v34)
        {
          objc_enumerationMutation(v32);
        }

        v36 = *(*(&v50 + 1) + 8 * i);
        templateCache2 = [(ACHMonthlyChallengeTemplateSource *)selfCopy templateCache];
        v49 = 0;
        [templateCache2 cacheTemplate:v36 error:&v49];
        v38 = v49;

        if (v38)
        {
          v39 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v82 = v36;
            v83 = 2112;
            v84 = v38;
            _os_log_impl(&dword_221DDC000, v39, OS_LOG_TYPE_DEFAULT, "[#mc] Error caching template %@: %@", buf, 0x16u);
          }
        }
      }

      v33 = [v32 countByEnumeratingWithState:&v50 objects:v85 count:16];
    }

    while (v33);
  }

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v32, v44, v41);
  }

  _Block_object_dispose(&v75, 8);
  v23 = completionCopy;
LABEL_63:
}

id __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ACHMonthlyChallengeTemplateFromTemplate();
  v5 = v3;
  v6 = [v5 version];
  v7 = v5;
  if (v6 != [v4 version])
  {
    v7 = v4;
  }

  v8 = [v7 availabilityStart];
  v9 = [*(a1 + 32) startDateComponents];
  v10 = [v8 isEqual:v9];

  if (v10)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), v7);
  }

  return v7;
}

id __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 componentsSeparatedByString:@"_"];
  if ([v2 count] == 3)
  {
    v3 = [v2 objectAtIndexedSubscript:1];
    v4 = [v3 integerValue];

    v5 = [v2 objectAtIndexedSubscript:2];
    v6 = [v5 integerValue];

    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setYear:v4];
    [v7 setMonth:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uniqueName];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

id __65__ACHMonthlyChallengeTemplateSource_templatesForDate_completion___block_invoke_306(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 48);
  v6 = [v4 uniqueName];
  v7 = (*(v5 + 16))(v5, v6);

  if ([*(a1 + 32) containsObject:v7])
  {
    v8 = 0;
  }

  else
  {
    if ([v7 isEqual:*(a1 + 40)])
    {
      v9 = *(*(a1 + 56) + 8);
      v11 = *(v9 + 40);
      v10 = (v9 + 40);
      if (!v11)
      {
        objc_storeStrong(v10, a2);
      }
    }

    v8 = v4;
  }

  return v8;
}

- (BOOL)_createMonthlyChallengeWithMonthDateInterval:(id)interval monthlyChallengeTemplates:(id *)templates error:(id *)error
{
  v70[1] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  _getRandomMonthlyChallengeType = [(ACHMonthlyChallengeTemplateSource *)self _getRandomMonthlyChallengeType];
  if (!_getRandomMonthlyChallengeType)
  {
    v17 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "[#mc] Not generating monthly challenge template for current month because type returned was undefined.", buf, 2u);
    }

    v18 = MEMORY[0x277CCA9B8];
    v54 = *MEMORY[0x277CCA450];
    v55 = @"Not generating monthly challenge template for current month because type returned was undefined.";
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
    v20 = [v18 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v19];

    v12 = v20;
    if (v12)
    {
      if (error)
      {
        v21 = v12;
        *error = v12;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    goto LABEL_27;
  }

  v10 = _getRandomMonthlyChallengeType;
  [(ACHMonthlyChallengeTemplateSource *)self _goalValueForCurrentMonthForType:_getRandomMonthlyChallengeType error:error];
  [(ACHMonthlyChallengeTemplateSource *)self _capGoalValueForChallengeType:v10 goalValue:?];
  if (*error)
  {
    v12 = ACHLogMonthlyChallenges();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
LABEL_27:
      v37 = 0;
      goto LABEL_28;
    }

    v13 = *error;
    *buf = 138412290;
    v62 = v13;
    v14 = "Error in creating goal for new monthly challenge: %@";
    v15 = v12;
    v16 = 12;
LABEL_5:
    _os_log_impl(&dword_221DDC000, v15, OS_LOG_TYPE_DEFAULT, v14, buf, v16);
    goto LABEL_27;
  }

  v22 = v11;
  if (v11 <= 2.22044605e-16)
  {
    v32 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v62 = v10;
      v63 = 2112;
      v64 = intervalCopy;
      v65 = 2048;
      v66 = v22;
      _os_log_impl(&dword_221DDC000, v32, OS_LOG_TYPE_DEFAULT, "[#mc] Monthly challenge template for current month wasn't generated for type (%ld), date interval (%@), and goal (%f)", buf, 0x20u);
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"[#mc] Monthly challenge template for current month wasn't generated for type (%ld), date interval (%@), and goal (%f)", v10, intervalCopy, *&v22];
    v33 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA450];
    v57 = v12;
    v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
    v35 = [v33 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v34];

    if (v35)
    {
      v36 = v35;
      *error = v35;
    }

    goto LABEL_27;
  }

  v23 = [(ACHMonthlyChallengeTemplateSource *)self _createMonthlyChallengeTemplateWithType:v10 dateCompoonentInterval:intervalCopy goalValue:v11];
  if (!v23)
  {
    v39 = MEMORY[0x277CCA9B8];
    v69 = *MEMORY[0x277CCA450];
    v70[0] = @"Tried to generate a challenge with a valid goal, but failed.";
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:&v69 count:1];
    *error = [v39 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v40];

    v12 = ACHLogMonthlyChallenges();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v14 = "[#mc] Tried to generate a challenge with a valid goal, but failed.";
    v15 = v12;
    v16 = 2;
    goto LABEL_5;
  }

  v12 = v23;
  v24 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    uniqueName = [v12 uniqueName];
    *buf = 138412290;
    v62 = uniqueName;
    _os_log_impl(&dword_221DDC000, v24, OS_LOG_TYPE_DEFAULT, "[#mc] Template generated: %@", buf, 0xCu);
  }

  v26 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    uniqueName2 = [v12 uniqueName];
    *buf = 138544130;
    v62 = uniqueName2;
    v63 = 2048;
    v64 = v10;
    v65 = 2112;
    v66 = *&intervalCopy;
    v67 = 2048;
    v68 = v22;
    _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "[#mc] Monthly challenge %{public}@ for current month was generated for type (%ld), date interval (%@), and goal (%f)", buf, 0x2Au);
  }

  v28 = [(ACHMonthlyChallengeTemplateSource *)self _suffixForCurrentMonthForType:v10 template:v12 goal:error error:v22];
  if (v28)
  {
    availableSuffixes = [v12 availableSuffixes];
    v30 = availableSuffixes;
    if (availableSuffixes)
    {
      v31 = [availableSuffixes arrayByAddingObject:v28];
    }

    else
    {
      v60 = v28;
      v31 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
    }

    v41 = v31;
    [v12 setAvailableSuffixes:v31];
  }

  v42 = [*templates hk_map:&__block_literal_global_317];
  uniqueName3 = [v12 uniqueName];
  v44 = [v42 containsObject:uniqueName3];

  if (v44)
  {
    v45 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      uniqueName4 = [v12 uniqueName];
      *buf = 138543362;
      v62 = uniqueName4;
      _os_log_impl(&dword_221DDC000, v45, OS_LOG_TYPE_DEFAULT, "[#mc] The monthly challenge just created already exists: %{public}@. Skipping it.", buf, 0xCu);
    }

    v47 = MEMORY[0x277CCACA8];
    uniqueName5 = [v12 uniqueName];
    v49 = [v47 stringWithFormat:@"The monthly challenge just created already exists: %@. Skipping it.", uniqueName5];

    v50 = MEMORY[0x277CCA9B8];
    v58 = *MEMORY[0x277CCA450];
    v59 = v49;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
    v52 = [v50 errorWithDomain:@"com.apple.ActivityAchievements" code:-1 userInfo:v51];

    if (v52)
    {
      v53 = v52;
      *error = v52;
    }
  }

  else
  {
    *templates = [*templates setByAddingObject:v12];
  }

  v37 = v44 ^ 1;

LABEL_28:
  return v37;
}

- (void)_removeMonthlyChallengeTemplate:(id)template monthlyChallengeTemplates:(id *)templates templatesToRemove:(id *)remove
{
  v12 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  v8 = ACHLogMonthlyChallenges();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (templateCopy)
  {
    if (v9)
    {
      v10 = 138412290;
      v11 = templateCopy;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "[#mc] Removing existing template: %@", &v10, 0xCu);
    }

    v8 = [*templates mutableCopy];
    [v8 removeObject:templateCopy];
    *templates = [v8 copy];
    *remove = [MEMORY[0x277CBEB98] setWithObject:templateCopy];
  }

  else if (v9)
  {
    LOWORD(v10) = 0;
    _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "[#mc] Existing template not found.", &v10, 2u);
  }
}

- (id)possibleLocalizationSuffixesForTemplate:(id)template
{
  v7[5] = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CE8BF0];
  v7[0] = *MEMORY[0x277CE8BD8];
  v7[1] = v3;
  v4 = *MEMORY[0x277CE8BE0];
  v7[2] = *MEMORY[0x277CE8BE8];
  v7[3] = v4;
  v7[4] = *MEMORY[0x277CE8BD0];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:5];

  return v5;
}

- (id)localizationBundleURLForTemplate:(id)template
{
  uniqueName = [template uniqueName];
  v5 = ACHMonthlyChallengeTypeFromTemplateUniqueName();

  if (v5 > 0x1D)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_278491C78[v5];
  }

  _monthlyAchievementsAssetsDirectoryBasePath = [(ACHMonthlyChallengeTemplateSource *)self _monthlyAchievementsAssetsDirectoryBasePath];
  v8 = [_monthlyAchievementsAssetsDirectoryBasePath stringByAppendingPathComponent:@"localization"];
  v9 = [v8 stringByAppendingPathComponent:@"challenge"];
  v10 = [v9 stringByAppendingPathComponent:v6];

  v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];

  return v11;
}

- (id)resourceBundleURLForTemplate:(id)template
{
  v3 = [(ACHMonthlyChallengeTemplateSource *)self _modelsDirectoryBasePathForTemplate:template];
  v4 = [v3 stringByAppendingPathComponent:@"badgemodel"];

  v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];

  return v5;
}

- (id)propertyListBundleURLForTemplate:(id)template
{
  v3 = [(ACHMonthlyChallengeTemplateSource *)self _modelsDirectoryBasePathForTemplate:template];
  v4 = [v3 stringByAppendingPathComponent:@"badgeproperties"];
  v5 = [v4 stringByAppendingPathComponent:@"challenge"];

  v6 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];

  return v6;
}

- (id)_monthlyAchievementsAssetsDirectoryBasePath
{
  if (_monthlyAchievementsAssetsDirectoryBasePath_onceToken_0 != -1)
  {
    [ACHMonthlyChallengeTemplateSource _monthlyAchievementsAssetsDirectoryBasePath];
  }

  v3 = _monthlyAchievementsAssetsDirectoryBasePath_monthlyAchievementsAssetsDirectoryBasePath_0;

  return v3;
}

uint64_t __80__ACHMonthlyChallengeTemplateSource__monthlyAchievementsAssetsDirectoryBasePath__block_invoke()
{
  v0 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:@"MonthlyAchievements"];
  v1 = _monthlyAchievementsAssetsDirectoryBasePath_monthlyAchievementsAssetsDirectoryBasePath_0;
  _monthlyAchievementsAssetsDirectoryBasePath_monthlyAchievementsAssetsDirectoryBasePath_0 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (id)_modelsDirectoryBasePathForTemplate:(id)template
{
  if (_modelsDirectoryBasePathForTemplate__onceToken_0 != -1)
  {
    [ACHMonthlyChallengeTemplateSource _modelsDirectoryBasePathForTemplate:];
  }

  v4 = _modelsDirectoryBasePathForTemplate__modelsDirectoryBasePath;

  return v4;
}

void __73__ACHMonthlyChallengeTemplateSource__modelsDirectoryBasePathForTemplate___block_invoke()
{
  v2 = [*MEMORY[0x277CE8C50] stringByAppendingPathComponent:@"MonthlyAchievements"];
  v0 = [v2 stringByAppendingPathComponent:@"models"];
  v1 = _modelsDirectoryBasePathForTemplate__modelsDirectoryBasePath;
  _modelsDirectoryBasePathForTemplate__modelsDirectoryBasePath = v0;
}

- (id)customPlaceholderValuesForTemplate:(id)template error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  if (ACHTemplateIsMonthlyChallenge())
  {
    _dateComponentIntervalForCurrentMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForCurrentMonth];
    v8 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138543362;
      v40 = templateCopy;
      _os_log_impl(&dword_221DDC000, v8, OS_LOG_TYPE_DEFAULT, "Progress: selected template: %{public}@.", &v39, 0xCu);
    }

    v9 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      startDateComponents = [_dateComponentIntervalForCurrentMonth startDateComponents];
      endDateComponents = [_dateComponentIntervalForCurrentMonth endDateComponents];
      v39 = 138543618;
      v40 = startDateComponents;
      v41 = 2114;
      v42 = endDateComponents;
      _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Progress: using start date (%{public}@) and end date (%{public}@).", &v39, 0x16u);
    }

    uniqueName = [templateCopy uniqueName];
    v13 = ACHMonthlyChallengeTypeFromTemplateUniqueName();

    availabilityStart = [templateCopy availabilityStart];
    startDateComponents2 = [_dateComponentIntervalForCurrentMonth startDateComponents];
    v16 = ACHCompareYearMonthDayDateComponents();

    v17 = ACHLogMonthlyChallenges();
    _dateComponentIntervalForLastMonth = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        [(ACHMonthlyChallengeTemplateSource *)templateCopy customPlaceholderValuesForTemplate:_dateComponentIntervalForCurrentMonth error:_dateComponentIntervalForLastMonth];
      }

      v19 = 0;
    }

    else
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v22 = ACHMonthlyChallengeNameFromChallengeType();
        v39 = 138543618;
        v40 = v22;
        v41 = 2048;
        v42 = v13;
        _os_log_impl(&dword_221DDC000, _dateComponentIntervalForLastMonth, OS_LOG_TYPE_DEFAULT, "Progress: Monthly Challenge type: %{public}@ (%lu).", &v39, 0x16u);
      }

      _dateComponentIntervalForLastMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      v23 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        startDateComponents3 = [_dateComponentIntervalForLastMonth startDateComponents];
        endDateComponents2 = [_dateComponentIntervalForLastMonth endDateComponents];
        v39 = 138543618;
        v40 = startDateComponents3;
        v41 = 2114;
        v42 = endDateComponents2;
        _os_log_impl(&dword_221DDC000, v23, OS_LOG_TYPE_DEFAULT, "Progress: retrieving last month value using date component interval: start (%{public}@) vs end date (%{public}@).", &v39, 0x16u);
      }

      dataSource = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
      currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      [dataSource valueForMonthlyChallengeType:v13 forDateComponentInterval:_dateComponentIntervalForLastMonth calendar:currentCalendar error:error];
      v29 = v28;

      v30 = objc_alloc_init(MEMORY[0x277CCABB8]);
      [v30 setNumberStyle:1];
      v31 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:@"en_US"];
      [v30 setLocale:v31];

      v32 = [MEMORY[0x277CCABB0] numberWithDouble:v29];
      v19 = [v30 stringFromNumber:v32];

      v33 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138543362;
        v40 = v19;
        _os_log_impl(&dword_221DDC000, v33, OS_LOG_TYPE_DEFAULT, "Progress: last month value: %{public}@.", &v39, 0xCu);
      }
    }

    v34 = v19;
    v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v36 = v35;
    if (v34)
    {
      [v35 setObject:v34 forKey:*MEMORY[0x277CE8AC8]];
    }

    if ((v13 - 8) <= 0xB)
    {
      v37 = [MEMORY[0x277CCDBE8] _stringFromWorkoutActivityType:ACHWorkoutActivityTypeForMonthlyChallengeType()];
      [v36 setObject:v37 forKey:*MEMORY[0x277CE8C30]];
    }

    v21 = [v36 copy];
  }

  else
  {
    _dateComponentIntervalForCurrentMonth = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(_dateComponentIntervalForCurrentMonth, OS_LOG_TYPE_DEFAULT))
    {
      uniqueName2 = [templateCopy uniqueName];
      v39 = 138543362;
      v40 = uniqueName2;
      _os_log_impl(&dword_221DDC000, _dateComponentIntervalForCurrentMonth, OS_LOG_TYPE_DEFAULT, "Progress: %{public}@ is not a Monthly Challenge.", &v39, 0xCu);
    }

    v21 = 0;
  }

  return v21;
}

- (BOOL)isGoalValueForMonthlyChallengeTypeValid:(unint64_t)valid error:(id *)error
{
  [(ACHMonthlyChallengeTemplateSource *)self _targetGoalValueForCurrentMonthForType:valid error:error];
  v7 = v6;
  v8 = [(ACHMonthlyChallengeTemplateSource *)self _maximumValueForMonthlyChallengeType:valid];
  v9 = [(ACHMonthlyChallengeTemplateSource *)self _minimumValueForMonthlyChallengeType:valid];
  [v8 doubleValue];
  v11 = v10;
  [v9 doubleValue];
  v13 = 1;
  if (v8 && v7 >= v11)
  {
    v13 = vabdd_f64(v11, v7) < 2.22044605e-16;
  }

  v14 = 1;
  if (v9 && v7 <= v12)
  {
    v14 = vabdd_f64(v12, v7) < 2.22044605e-16;
  }

  v15 = v13 && v14;
  v16 = v7 > 0.0 && v15;

  return v16;
}

- (id)_pairedWatchDeviceCapabilities
{
  v30 = *MEMORY[0x277D85DE8];
  if ([(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode])
  {
    v3 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_221DDC000, v3, OS_LOG_TYPE_DEFAULT, "Companion is in standalone mode, not checking paired watch device capabilities", buf, 2u);
    }

    v4 = MEMORY[0x277CBEC10];
  }

  else
  {
    *buf = 0;
    v22 = buf;
    v23 = 0x3032000000;
    v24 = __Block_byref_object_copy__17;
    v25 = __Block_byref_object_dispose__17;
    v26 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = ACHDeviceCapabilitiesForMonthlyChallenges();
    v6 = [v5 countByEnumeratingWithState:&v17 objects:v29 count:16];
    if (v6)
    {
      v7 = *v18;
      v8 = MEMORY[0x277CBEC28];
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v5);
          }

          [*(v22 + 5) setObject:v8 forKeyedSubscript:*(*(&v17 + 1) + 8 * i)];
        }

        v6 = [v5 countByEnumeratingWithState:&v17 objects:v29 count:16];
      }

      while (v6);
    }

    v10 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 0;
      _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "Companion is not in standalone mode, checking paired watches for Monthly Challenge Compatibility", v27, 2u);
    }

    pairedDeviceRegistrySharedInstance = [(ACHMonthlyChallengeTemplateSource *)self pairedDeviceRegistrySharedInstance];
    getPairedDevices = [pairedDeviceRegistrySharedInstance getPairedDevices];
    v13 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [getPairedDevices count];
      *v27 = 134217984;
      v28 = v14;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Companion is paired with %lu watches", v27, 0xCu);
    }

    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __67__ACHMonthlyChallengeTemplateSource__pairedWatchDeviceCapabilities__block_invoke;
    v16[3] = &unk_278491C58;
    v16[4] = buf;
    [getPairedDevices enumerateObjectsUsingBlock:v16];
    v4 = [*(v22 + 5) copy];

    _Block_object_dispose(buf, 8);
  }

  return v4;
}

void __67__ACHMonthlyChallengeTemplateSource__pairedWatchDeviceCapabilities__block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [*(*(*(a1 + 32) + 8) + 40) allKeys];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v16;
    *&v6 = 138412290;
    v14 = v6;
    v9 = MEMORY[0x277CBEC38];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v3 supportsCapability:{v11, v14}])
        {
          v12 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 UUIDString];
            *buf = v14;
            v20 = v13;
            _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Companion has one paired device that is eligibile for %@", buf, 0xCu);
          }

          [*(*(*(a1 + 32) + 8) + 40) setObject:v9 forKeyedSubscript:v11];
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v7);
  }
}

- (BOOL)isMonthlyChallengeOfTypeAvailable:(unint64_t)available error:(id *)error
{
  v156 = *MEMORY[0x277D85DE8];
  v7 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = ACHMonthlyChallengeNameFromChallengeType();
    *buf = 138543618;
    v143 = v8;
    v144 = 2048;
    availableCopy3 = available;
    _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Checking validity of monthly challenge type %{public}@ (%lu)", buf, 0x16u);
  }

  templateDataProvider = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
  _dateComponentIntervalForLastMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  startDateComponents = [_dateComponentIntervalForLastMonth startDateComponents];
  v12 = [templateDataProvider monthlyChallengeTypeForMonth:startDateComponents];

  if (v12 == available)
  {
    v13 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = ACHMonthlyChallengeNameFromChallengeType();
      *buf = 138543618;
      v143 = v14;
      v144 = 2048;
      availableCopy3 = available;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Type %{public}@ (%lu) is not available because it was suggested last month", buf, 0x16u);
    }

    v15 = 0;
    goto LABEL_38;
  }

  _dateComponentIntervalForLastMonth2 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  startDateComponents2 = [_dateComponentIntervalForLastMonth2 startDateComponents];

  v18 = [ACHMonthlyChallengeEvaluationEnvironment alloc];
  dataSource = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForLastMonth3 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v22 = [(ACHMonthlyChallengeEvaluationEnvironment *)v18 initWithMonthlyChallengeDataSource:dataSource dateComponentInterval:_dateComponentIntervalForLastMonth3 calendar:currentCalendar];

  v122 = v22;
  v123 = startDateComponents2;
  switch(available)
  {
    case 0uLL:
    case 0x1DuLL:
      v25 = 0;
      v27 = 0;
      v28 = @"Invalid monthly challenge type";
      goto LABEL_24;
    case 1uLL:
      errorCopy = error;
      v74 = [MEMORY[0x277CCACA8] stringWithFormat:@"PerfectMonth-%04ld-%02ld", -[NSObject year](startDateComponents2, "year"), -[NSObject month](startDateComponents2, "month")];
      templateDataProvider2 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      _dateComponentIntervalForLastMonth4 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      v141 = 0;
      v78 = [templateDataProvider2 numberOfEarnedInstancesOfTemplateWithUniqueName:v74 inDateComponentInterval:_dateComponentIntervalForLastMonth4 withCalendar:currentCalendar2 error:&v141];
      v25 = v141;

      v27 = 0;
      error = errorCopy;
      if (!v25 && !v78)
      {
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
      }

      v28 = @"Received Perfect Month achievement last month or is standalone phone Fitness mode";
      goto LABEL_24;
    case 2uLL:
      errorCopy2 = error;
      v64 = [MEMORY[0x277CCACA8] stringWithFormat:@"PerfectMonth-%04ld-%02ld", -[NSObject year](startDateComponents2, "year"), -[NSObject month](startDateComponents2, "month")];
      templateDataProvider3 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      _dateComponentIntervalForLastMonth5 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      currentCalendar3 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      v140 = 0;
      v68 = [templateDataProvider3 numberOfEarnedInstancesOfTemplateWithUniqueName:v64 inDateComponentInterval:_dateComponentIntervalForLastMonth5 withCalendar:currentCalendar3 error:&v140];
      v25 = v140;

      if (v25 || (-[ACHMonthlyChallengeTemplateSource templateDataProvider](self, "templateDataProvider"), v69 = objc_claimAutoreleasedReturnValue(), -[ACHMonthlyChallengeTemplateSource _dateComponentIntervalForLastMonth](self, "_dateComponentIntervalForLastMonth"), v70 = objc_claimAutoreleasedReturnValue(), -[ACHMonthlyChallengeTemplateSource currentCalendar](self, "currentCalendar"), v71 = objc_claimAutoreleasedReturnValue(), v139 = 0, v72 = [v69 numberOfEarnedInstancesOfTemplateWithUniqueName:@"PerfectWeekMove" inDateComponentInterval:v70 withCalendar:v71 error:&v139], v25 = v139, v71, v70, v69, v25))
      {
        v27 = 0;
      }

      else
      {
        if (v68)
        {
          v117 = 0;
        }

        else
        {
          v117 = v72 < 3;
        }

        v27 = v117;
      }

      error = errorCopy2;

      v28 = @"Received Perfect Month achievement last month or Perfect Week (Move) Achievement 3 times during the previous month";
      goto LABEL_24;
    case 3uLL:
      errorCopy8 = error;
      templateDataProvider4 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      _dateComponentIntervalForLastMonth6 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      currentCalendar4 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      v138 = 0;
      v87 = [templateDataProvider4 numberOfEarnedInstancesOfTemplateWithUniqueName:@"PerfectWeekExercise" inDateComponentInterval:_dateComponentIntervalForLastMonth6 withCalendar:currentCalendar4 error:&v138];
      v25 = v138;

      v27 = 0;
      v28 = @"Received Perfect Week (Exercise) Achievement 3 times during the previous month or is standalone phone Fitness mode";
      if (v25)
      {
        goto LABEL_23;
      }

      error = errorCopy8;
      if (v87 <= 2)
      {
        v25 = 0;
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
        v28 = @"Received Perfect Week (Exercise) Achievement 3 times during the previous month or is standalone phone Fitness mode";
      }

      goto LABEL_24;
    case 4uLL:
      errorCopy8 = error;
      templateDataProvider5 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      _dateComponentIntervalForLastMonth7 = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
      currentCalendar5 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      v137 = 0;
      v99 = [templateDataProvider5 numberOfEarnedInstancesOfTemplateWithUniqueName:@"PerfectWeekStand" inDateComponentInterval:_dateComponentIntervalForLastMonth7 withCalendar:currentCalendar5 error:&v137];
      v25 = v137;

      v27 = 0;
      v28 = @"Received Perfect Week (Stand) Achievement 3 times during the previous month or is standalone phone Fitness mode";
      if (v25)
      {
        goto LABEL_23;
      }

      error = errorCopy8;
      if (v99 <= 2)
      {
        v25 = 0;
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
        v28 = @"Received Perfect Week (Stand) Achievement 3 times during the previous month or is standalone phone Fitness mode";
      }

      goto LABEL_24;
    case 5uLL:
    case 6uLL:
    case 0x14uLL:
    case 0x16uLL:
      v25 = 0;
      v27 = 0;
      v28 = @"Monthly Challenge type is deprecated";
      goto LABEL_24;
    case 7uLL:
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 numberOfWorkoutsCompletedInCurrentMonth];
      v59 = v58;
      templateDataProvider6 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v133 = 0;
      v61 = [templateDataProvider6 currentExperienceTypeWithError:&v133];
      v25 = v133;

      if (v25)
      {
        v62 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v143 = v25;
          _os_log_impl(&dword_221DDC000, v62, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
        }

        v27 = 0;
      }

      else
      {
        v27 = v59 >= 2.0 && v61 == 1;
      }

      v28 = @"Required at least 1 workout last monthand and is in standard Fitness experience";
      goto LABEL_24;
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      templateDataProvider7 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v135 = 0;
      v24 = [templateDataProvider7 isWheelchairUserWithError:&v135];
      v25 = v135;

      if (!v25)
      {
        errorCopy8 = error;
        templateDataProvider8 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
        v134 = 0;
        v31 = [templateDataProvider8 currentExperienceTypeWithError:&v134];
        v25 = v134;

        if (v25)
        {
          v32 = ACHLogMonthlyChallenges();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v143 = v25;
            _os_log_impl(&dword_221DDC000, v32, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
          }

          v27 = 0;
        }

        else
        {
          eligibleSpecificWorkoutChallengeType = [(ACHMonthlyChallengeEvaluationEnvironment *)v22 eligibleSpecificWorkoutChallengeType];
          v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:available];
          v35 = [eligibleSpecificWorkoutChallengeType isEqual:v34];
          if (v31 == 1)
          {
            v36 = v35;
          }

          else
          {
            v36 = 0;
          }

          v27 = v36 & (v24 ^ 1);

          v25 = 0;
        }

        v28 = @"Required at least 3 workouts of the same type in the last month, is in standard Fitness experience, and cannot be wheelchair user";
        goto LABEL_23;
      }

      v26 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v143 = v25;
        _os_log_impl(&dword_221DDC000, v26, OS_LOG_TYPE_DEFAULT, "Error fetching wheelchair use: %@", buf, 0xCu);
      }

      v27 = 0;
      v28 = @"Required at least 3 workouts of the same type in the last month, is in standard Fitness experience, and cannot be wheelchair user";
      goto LABEL_24;
    case 0x15uLL:
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 numberOfDaysDoublingMoveGoalInCurrentMonth];
      v80 = v79;
      templateDataProvider9 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v132 = 0;
      v82 = [templateDataProvider9 currentExperienceTypeWithError:&v132];
      v25 = v132;

      if (v25)
      {
        v83 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v143 = v25;
          _os_log_impl(&dword_221DDC000, v83, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
        }

        v27 = 0;
      }

      else
      {
        v27 = v80 >= 2.0 && v82 == 1;
      }

      v28 = @"Required at least 1 day doubling move goal last month and cannot be Fitness jr user";
      goto LABEL_24;
    case 0x17uLL:
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 numberOfDaysDoublingExerciseGoalInCurrentMonth];
      v54 = v53;
      templateDataProvider10 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v131 = 0;
      v56 = [templateDataProvider10 currentExperienceTypeWithError:&v131];
      v25 = v131;

      if (v25)
      {
        v57 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v143 = v25;
          _os_log_impl(&dword_221DDC000, v57, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
        }

        v27 = 0;
        goto LABEL_86;
      }

      v27 = 0;
      v28 = @"Required at least 3 days doubling exericise goal last month, cannot be Fitness Jr user, and cannot be standalone phone Fitness mode";
      if (v54 >= 2.0 && v56 == 1)
      {
        v25 = 0;
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
LABEL_86:
        v28 = @"Required at least 3 days doubling exericise goal last month, cannot be Fitness Jr user, and cannot be standalone phone Fitness mode";
        goto LABEL_24;
      }

      goto LABEL_24;
    case 0x18uLL:
      currentCalendar6 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
      currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
      v50 = [currentCalendar6 hk_startOfMonthForDate:currentDate addingMonths:-1];

      v51 = [(ACHMonthlyChallengeTemplateSource *)self _numberOfDaysInMonthForDate:v50]- 3;
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 longestMoveStreakInCurrentMonth];
      v27 = v52 < v51 && v52 >= 5.0;

      v25 = 0;
      v28 = @"Move streak > 5 during last month, and move streak < number of days in last month - 3";
      goto LABEL_24;
    case 0x19uLL:
      templateDataProvider11 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v128 = 0;
      v101 = [templateDataProvider11 currentActivityMoveModeWithError:&v128];
      v25 = v128;

      if (v25)
      {
        v102 = ACHLogMonthlyChallenges();
        if (!os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_115;
        }

        *buf = 138412290;
        v143 = v25;
        v103 = "Unable to fetch activity move mode: %@";
        goto LABEL_114;
      }

      errorCopy8 = error;
      templateDataProvider12 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v127 = 0;
      v116 = [templateDataProvider12 currentExperienceTypeWithError:&v127];
      v25 = v127;

      if (!v25)
      {
        v27 = v101 != 2 && v116 == 1;
        v28 = @"Cannot be Apple Move Time user, and cannot be Fitness jr user";
        goto LABEL_23;
      }

      v102 = ACHLogMonthlyChallenges();
      error = errorCopy8;
      if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v143 = v25;
        v103 = "Error getting experience type: %@";
LABEL_114:
        _os_log_impl(&dword_221DDC000, v102, OS_LOG_TYPE_DEFAULT, v103, buf, 0xCu);
      }

LABEL_115:

      v27 = 0;
      v28 = @"Cannot be Apple Move Time user, and cannot be Fitness jr user";
      goto LABEL_24;
    case 0x1AuLL:
      [(ACHMonthlyChallengeEvaluationEnvironment *)v22 totalExerciseMinutesInCurrentMonth];
      v105 = v104;
      templateDataProvider13 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v136 = 0;
      v107 = [templateDataProvider13 currentExperienceTypeWithError:&v136];
      v25 = v136;

      if (v25)
      {
        v108 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v143 = v25;
          _os_log_impl(&dword_221DDC000, v108, OS_LOG_TYPE_DEFAULT, "Error getting experience type: %@", buf, 0xCu);
        }

        v27 = 0;
        goto LABEL_119;
      }

      v27 = 0;
      v28 = @"Required at least 30 Exercise minutes last month, cannot be Fitness jr user, and cannot be standalone phone Fitness mode";
      if (v105 >= 30.0 && v107 == 1)
      {
        v25 = 0;
        v27 = ![(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode];
LABEL_119:
        v28 = @"Required at least 30 Exercise minutes last month, cannot be Fitness jr user, and cannot be standalone phone Fitness mode";
        goto LABEL_24;
      }

      goto LABEL_24;
    case 0x1BuLL:
      templateDataProvider14 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v130 = 0;
      v89 = [templateDataProvider14 isWheelchairUserWithError:&v130];
      v25 = v130;

      if (v25)
      {
        v90 = ACHLogMonthlyChallenges();
        if (!os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_105;
        }

        *buf = 138412290;
        v143 = v25;
        v91 = "Error fetching wheelchair use: %@";
        goto LABEL_104;
      }

      errorCopy8 = error;
      templateDataProvider15 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v129 = 0;
      v112 = [templateDataProvider15 currentExperienceTypeWithError:&v129];
      v25 = v129;

      if (!v25)
      {
        v27 = (v112 == 1) & ~v89;
        v28 = @"Cannot be wheelchair user and is in the standard fitness experience";
        goto LABEL_23;
      }

      v90 = ACHLogMonthlyChallenges();
      error = errorCopy8;
      if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v143 = v25;
        v91 = "Error getting experience type: %@";
LABEL_104:
        _os_log_impl(&dword_221DDC000, v90, OS_LOG_TYPE_DEFAULT, v91, buf, 0xCu);
      }

LABEL_105:

      v27 = 0;
      v28 = @"Cannot be wheelchair user and is in the standard fitness experience";
      goto LABEL_24;
    case 0x1CuLL:
      templateDataProvider16 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v126 = 0;
      v93 = [templateDataProvider16 currentActivityMoveModeWithError:&v126];
      v25 = v126;

      if (v25)
      {
        v94 = ACHLogMonthlyChallenges();
        if (!os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_110;
        }

        *buf = 138412290;
        v143 = v25;
        v95 = "Error getting move mode: %@";
        goto LABEL_109;
      }

      errorCopy8 = error;
      templateDataProvider17 = [(ACHMonthlyChallengeTemplateSource *)self templateDataProvider];
      v125 = 0;
      v114 = [templateDataProvider17 currentExperienceTypeWithError:&v125];
      v25 = v125;

      if (!v25)
      {
        v27 = v93 == 2 && v114 != 3;
        v28 = @"Must be Apple Move Time user, and cannot be Simplified Fitness jr user";
LABEL_23:
        error = errorCopy8;
        goto LABEL_24;
      }

      v94 = ACHLogMonthlyChallenges();
      error = errorCopy8;
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v143 = v25;
        v95 = "Error getting experience type: %@";
LABEL_109:
        _os_log_impl(&dword_221DDC000, v94, OS_LOG_TYPE_DEFAULT, v95, buf, 0xCu);
      }

LABEL_110:

      v27 = 0;
      v28 = @"Must be Apple Move Time user, and cannot be Simplified Fitness jr user";
LABEL_24:
      v120 = v28;
      _pairedWatchDeviceCapabilities = [(ACHMonthlyChallengeTemplateSource *)self _pairedWatchDeviceCapabilities];
      if ([(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode])
      {
        HasRequiredDeviceCapability = 1;
      }

      else
      {
        HasRequiredDeviceCapability = ACHMonthlyChallengeHasRequiredDeviceCapability();
      }

      if (error && v25)
      {
        v39 = v25;
        *error = v25;
      }

      v121 = v25;
      v40 = v27 & HasRequiredDeviceCapability;
      v124 = 0;
      v41 = [(ACHMonthlyChallengeTemplateSource *)self isGoalValueForMonthlyChallengeTypeValid:available error:&v124];
      v42 = v124;
      if (v42)
      {
        v43 = ACHLogMonthlyChallenges();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v143 = v42;
          _os_log_impl(&dword_221DDC000, v43, OS_LOG_TYPE_DEFAULT, "Error validating goal: %@", buf, 0xCu);
        }

        if (error)
        {
          v44 = v42;
          *error = v42;
        }
      }

      v15 = v41 & v40;
      v45 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = ACHMonthlyChallengeNameFromChallengeType();
        *buf = 138544898;
        v143 = v46;
        v144 = 2048;
        availableCopy3 = available;
        v146 = 1024;
        v147 = v41 & v40;
        v148 = 1024;
        v149 = v40;
        v150 = 2112;
        v151 = v120;
        v152 = 1024;
        v153 = v41;
        v154 = 1024;
        v155 = HasRequiredDeviceCapability;
        _os_log_impl(&dword_221DDC000, v45, OS_LOG_TYPE_DEFAULT, "Monthly Challenge Type: %{public}@ (%ld), Overall Available: %{BOOL}d, Type Is Available: %{BOOL}d, Type Explanation: %@, Goal is Valid: %{BOOL}d, deviceCapabilityRequirementMet: %{BOOL}d", buf, 0x38u);
      }

      v13 = v123;
LABEL_38:

      return v15;
    default:
      v25 = 0;
      v27 = 0;
      v28 = @"Type is available";
      goto LABEL_24;
  }
}

- (id)_availableMonthlyChallengeTypes
{
  hk_isDatabaseAccessibilityError = 0;
  v5 = 0;
  v24 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277CBEBF8];
  *&v2 = 138543618;
  v18 = v2;
  do
  {
    v19 = 0;
    v7 = [(ACHMonthlyChallengeTemplateSource *)self isMonthlyChallengeOfTypeAvailable:v5 error:&v19, v18];
    v8 = v19;
    if (v7)
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
      v10 = [v6 arrayByAddingObject:v9];

      v6 = v10;
    }

    else
    {
      v9 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = ACHMonthlyChallengeNameFromChallengeType();
        *buf = v18;
        v21 = v11;
        v22 = 2048;
        v23 = v5;
        _os_log_impl(&dword_221DDC000, v9, OS_LOG_TYPE_DEFAULT, "Monthly challenge of type %{public}@ (%lu) is unavailable.", buf, 0x16u);
      }
    }

    if (v8)
    {
      v12 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v21 = v5;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_221DDC000, v12, OS_LOG_TYPE_DEFAULT, "Unable to check availability of monthly challenge type %ld: %@", buf, 0x16u);
      }

      hk_isDatabaseAccessibilityError = [v8 hk_isDatabaseAccessibilityError];
    }

    ++v5;
  }

  while (v5 != 29);
  if (!(([v6 count] != 0) | hk_isDatabaseAccessibilityError & 1))
  {
    if ([(ACHMonthlyChallengeTemplateSource *)self isStandalonePhoneFitnessMode])
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }

    v14 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v21 = v13;
      _os_log_impl(&dword_221DDC000, v14, OS_LOG_TYPE_DEFAULT, "No valid monthly challenge types; adding type of %lu", buf, 0xCu);
    }

    v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v13];
    v16 = [v6 arrayByAddingObject:v15];

    v6 = v16;
  }

  return v6;
}

- (unint64_t)_getRandomMonthlyChallengeType
{
  _availableMonthlyChallengeTypes = [(ACHMonthlyChallengeTemplateSource *)self _availableMonthlyChallengeTypes];
  v3 = [_availableMonthlyChallengeTypes count];
  if (v3)
  {
    v4 = [_availableMonthlyChallengeTypes objectAtIndexedSubscript:arc4random_uniform(v3)];
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

- (BOOL)_isInFirstWeekOfCurrentMonth:(id)month
{
  monthCopy = month;
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v6 = [currentCalendar components:16 fromDate:monthCopy];

  LOBYTE(monthCopy) = [v6 day] < 8;
  return monthCopy;
}

- (id)_dateComponentIntervalForCurrentMonth
{
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v5 = [currentCalendar hk_startOfMonthForDate:currentDate];

  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate2 = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v8 = [currentCalendar2 hk_startOfMonthForDate:currentDate2 addingMonths:1];

  currentCalendar3 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v10 = [currentCalendar3 hk_startOfDateBySubtractingDays:1 fromDate:v8];

  currentCalendar4 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v12 = *MEMORY[0x277CE8B28];
  v13 = [currentCalendar4 components:*MEMORY[0x277CE8B28] fromDate:v5];

  currentCalendar5 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v15 = [currentCalendar5 components:v12 fromDate:v10];

  v16 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v13 endDateComponents:v15];

  return v16;
}

- (id)_dateComponentIntervalForLastMonth
{
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v5 = [currentCalendar hk_startOfMonthForDate:currentDate addingMonths:-1];

  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate2 = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v8 = [currentCalendar2 hk_startOfMonthForDate:currentDate2];

  currentCalendar3 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v10 = [currentCalendar3 hk_startOfDateBySubtractingDays:1 fromDate:v8];

  currentCalendar4 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v12 = *MEMORY[0x277CE8B28];
  v13 = [currentCalendar4 components:*MEMORY[0x277CE8B28] fromDate:v5];

  currentCalendar5 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v15 = [currentCalendar5 components:v12 fromDate:v10];

  v16 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v13 endDateComponents:v15];

  return v16;
}

- (id)_dateComponentIntervalForTwoMonthsAgo
{
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v5 = [currentCalendar hk_startOfMonthForDate:currentDate addingMonths:-2];

  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  currentDate2 = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
  v8 = [currentCalendar2 hk_startOfMonthForDate:currentDate2 addingMonths:-1];

  currentCalendar3 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v10 = [currentCalendar3 hk_startOfDateBySubtractingDays:1 fromDate:v8];

  currentCalendar4 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v12 = *MEMORY[0x277CE8B28];
  v13 = [currentCalendar4 components:*MEMORY[0x277CE8B28] fromDate:v5];

  currentCalendar5 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  v15 = [currentCalendar5 components:v12 fromDate:v10];

  v16 = [objc_alloc(MEMORY[0x277CE8D30]) initWithStartDateComponents:v13 endDateComponents:v15];

  return v16;
}

- (unint64_t)_numberOfDaysInMonthForDate:(id)date
{
  dateCopy = date;
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [currentCalendar rangeOfUnit:16 inUnit:8 forDate:dateCopy];
  v7 = v6;

  return v7;
}

- (BOOL)_shouldOverrideMonthlyChallengeCadence
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v3 = [v2 initWithSuiteName:*MEMORY[0x277CE8C00]];
  v4 = [v3 BOOLForKey:*MEMORY[0x277CE8C08]];
  v5 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 67109120;
    LODWORD(v14) = v4;
    _os_log_impl(&dword_221DDC000, v5, OS_LOG_TYPE_DEFAULT, "Internal override monthly challenge cadence setting is: %d.", &v13, 8u);
  }

  if (v4)
  {
    v6 = [v3 valueForKey:@"AppleInternalMonthlyChallengeCadenceLastOverrideDateKey"];
    v7 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = v6;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Internal override monthly challenge cadence last override date was: %@.", &v13, 0xCu);
    }

    if (v6 && ([MEMORY[0x277CBEA80] currentCalendar], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "isDateInToday:", v6), v8, v9))
    {
      v10 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_221DDC000, v10, OS_LOG_TYPE_DEFAULT, "Internal override monthly challenge cadence last override date was today; not forcing another.", &v13, 2u);
      }

      v11 = 0;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_didOverrideMonthlyChallengeCadence
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v2 initWithSuiteName:*MEMORY[0x277CE8C00]];
  date = [MEMORY[0x277CBEAA8] date];
  [v4 setValue:date forKey:@"AppleInternalMonthlyChallengeCadenceLastOverrideDateKey"];
  [v4 synchronize];
}

- (double)_targetGoalValueForCurrentMonthForType:(unint64_t)type error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  dataSource = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForLastMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [dataSource valueForMonthlyChallengeType:type forDateComponentInterval:_dateComponentIntervalForLastMonth calendar:currentCalendar error:error];
  v11 = v10;

  dataSource2 = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForTwoMonthsAgo = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForTwoMonthsAgo];
  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [dataSource2 valueForMonthlyChallengeType:type forDateComponentInterval:_dateComponentIntervalForTwoMonthsAgo calendar:currentCalendar2 error:error];
  v16 = v15;

  v17 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 134218240;
    v28 = v11;
    v29 = 2048;
    v30 = v16;
    _os_log_impl(&dword_221DDC000, v17, OS_LOG_TYPE_DEFAULT, "Creating goal value for this month with last month value: %f, two months ago value: %f", &v27, 0x16u);
  }

  if (type != 29 && type)
  {
    v23 = ACHLogMonthlyChallenges();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v16 >= 1.0)
    {
      if (v24)
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_221DDC000, v23, OS_LOG_TYPE_DEFAULT, "Target goal = lowest month of the last 2 months", &v27, 2u);
      }

      if (v11 >= v16)
      {
        v11 = v16;
      }
    }

    else
    {
      if (v24)
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_221DDC000, v23, OS_LOG_TYPE_DEFAULT, "If there is no data two months ago, match last month's value", &v27, 2u);
      }
    }

    [(ACHMonthlyChallengeTemplateSource *)self _roundedGoalValue:type monthlyChallengeType:v11];
    v19 = v25;
    v18 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134217984;
      v28 = v19;
      v20 = "Target value (%f) created";
      v21 = v18;
      v22 = 12;
      goto LABEL_17;
    }
  }

  else
  {
    v18 = ACHLogMonthlyChallenges();
    v19 = -1.0;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      v20 = "Trying to create goal value for ACHMonthlyChallengeTypeUndefined or ACHMonthlyChallengeTypeMaxValue, returning";
      v21 = v18;
      v22 = 2;
LABEL_17:
      _os_log_impl(&dword_221DDC000, v21, OS_LOG_TYPE_DEFAULT, v20, &v27, v22);
    }
  }

  return v19;
}

- (double)_goalValueForCurrentMonthForType:(unint64_t)type error:(id *)error
{
  [ACHMonthlyChallengeTemplateSource _targetGoalValueForCurrentMonthForType:"_targetGoalValueForCurrentMonthForType:error:" error:?];
  v7 = v6;
  result = 0.0;
  if (!*error)
  {
    result = v7;
    if (v7 < 2.22044605e-16)
    {
      v9 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [ACHMonthlyChallengeTemplateSource _goalValueForCurrentMonthForType:type error:v9];
      }

      return 0.0;
    }
  }

  return result;
}

- (double)_capGoalValueForChallengeType:(unint64_t)type goalValue:(double)value
{
  v7 = [(ACHMonthlyChallengeTemplateSource *)self _maximumValueForMonthlyChallengeType:?];
  v8 = [(ACHMonthlyChallengeTemplateSource *)self _minimumValueForMonthlyChallengeType:type];
  [v7 doubleValue];
  v10 = v9;
  [v8 doubleValue];
  if (v10 >= value)
  {
    valueCopy2 = value;
  }

  else
  {
    valueCopy2 = v10;
  }

  if (!v7)
  {
    valueCopy2 = value;
  }

  if (v11 < valueCopy2 || v8 == 0)
  {
    v14 = valueCopy2;
  }

  else
  {
    v14 = v11;
  }

  return v14;
}

- (id)_suffixForCurrentMonthForType:(unint64_t)type template:(id)template goal:(double)goal error:(id *)error
{
  v50 = *MEMORY[0x277D85DE8];
  templateCopy = template;
  dataSource = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForLastMonth = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForLastMonth];
  currentCalendar = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [dataSource valueForMonthlyChallengeType:type forDateComponentInterval:_dateComponentIntervalForLastMonth calendar:currentCalendar error:error];
  v15 = v14;

  dataSource2 = [(ACHMonthlyChallengeTemplateSource *)self dataSource];
  _dateComponentIntervalForTwoMonthsAgo = [(ACHMonthlyChallengeTemplateSource *)self _dateComponentIntervalForTwoMonthsAgo];
  currentCalendar2 = [(ACHMonthlyChallengeTemplateSource *)self currentCalendar];
  [dataSource2 valueForMonthlyChallengeType:type forDateComponentInterval:_dateComponentIntervalForTwoMonthsAgo calendar:currentCalendar2 error:error];
  v20 = v19;

  v21 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v46 = 134218240;
    v47 = v15;
    v48 = 2048;
    v49 = v20;
    _os_log_impl(&dword_221DDC000, v21, OS_LOG_TYPE_DEFAULT, "Obtaining suffix for this month with last month value: %f, two months ago value: %f", &v46, 0x16u);
  }

  if (type != 29 && type)
  {
    [(ACHMonthlyChallengeTemplateSource *)self _targetGoalValueForCurrentMonthForType:type error:error];
    v25 = v24;
    v22 = [(ACHMonthlyChallengeTemplateSource *)self _maximumValueForMonthlyChallengeType:type];
    [v22 doubleValue];
    if (v22 && v25 > v26)
    {
      v27 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v46) = 0;
        _os_log_impl(&dword_221DDC000, v27, OS_LOG_TYPE_DEFAULT, "Target goal is over challenge type's maximum. Suffix is nil.", &v46, 2u);
      }

      v23 = 0;
      goto LABEL_41;
    }

    v28 = [(ACHMonthlyChallengeTemplateSource *)self possibleLocalizationSuffixesForTemplate:templateCopy];
    ACHLowRuleThresholdForChallenge();
    if (v29 >= goal)
    {
      v32 = ACHLogMonthlyChallenges();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      v34 = *MEMORY[0x277CE8BD8];
      if (!v33)
      {
        goto LABEL_21;
      }

      v46 = 138543362;
      v47 = *&v34;
      v35 = "If goal is lower than Low Rule Threshold, suffix is %{public}@.";
      goto LABEL_20;
    }

    if (v20 < 1.0)
    {
      v30 = ACHLogMonthlyChallenges();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v46) = 0;
        _os_log_impl(&dword_221DDC000, v30, OS_LOG_TYPE_DEFAULT, "If there is no data two months ago, suffix is nil.", &v46, 2u);
      }

      v31 = 0;
      goto LABEL_26;
    }

    v38 = v15 / v20 * 100.0 + -100.0;
    if (v38 <= -25.0)
    {
      v32 = ACHLogMonthlyChallenges();
      v40 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      v34 = *MEMORY[0x277CE8BD0];
      if (v40)
      {
        v46 = 138543362;
        v47 = *&v34;
        v35 = "Decrease from Month A to Month B = 25%%+, suffix is %{public}@.";
        goto LABEL_20;
      }
    }

    else if (v38 >= -10.0)
    {
      if (v38 >= 0.0)
      {
        if (v38 >= 25.0)
        {
          v32 = ACHLogMonthlyChallenges();
          v43 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          v34 = *MEMORY[0x277CE8BD0];
          if (v43)
          {
            v46 = 138543362;
            v47 = *&v34;
            v35 = "Increase from Month A to Month B = 25%%+, suffix is %{public}@.";
            goto LABEL_20;
          }
        }

        else if (v38 >= 10.0)
        {
          v32 = ACHLogMonthlyChallenges();
          v44 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          v34 = *MEMORY[0x277CE8BE0];
          if (v44)
          {
            v46 = 138543362;
            v47 = *&v34;
            v35 = "Increase from Month A to Month B = 10 - 24%%, suffix is %{public}@.";
            goto LABEL_20;
          }
        }

        else
        {
          if (v38 < 0.0)
          {
            goto LABEL_39;
          }

          v32 = ACHLogMonthlyChallenges();
          v45 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
          v34 = *MEMORY[0x277CE8BF0];
          if (v45)
          {
            v46 = 138543362;
            v47 = *&v34;
            v35 = "Increase from Month A to Month B = 0 - 9%%, suffix is %{public}@.";
            goto LABEL_20;
          }
        }
      }

      else
      {
        v32 = ACHLogMonthlyChallenges();
        v41 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
        v34 = *MEMORY[0x277CE8BE8];
        if (v41)
        {
          v46 = 138543362;
          v47 = *&v34;
          v35 = "Decrease from Month A to Month B = 0-9%%, suffix is %{public}@.";
          goto LABEL_20;
        }
      }
    }

    else
    {
      v32 = ACHLogMonthlyChallenges();
      v39 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      v34 = *MEMORY[0x277CE8BE0];
      if (v39)
      {
        v46 = 138543362;
        v47 = *&v34;
        v35 = "Decrease from Month A to Month B = 10-24%%, suffix is %{public}@.";
LABEL_20:
        _os_log_impl(&dword_221DDC000, v32, OS_LOG_TYPE_DEFAULT, v35, &v46, 0xCu);
      }
    }

LABEL_21:

    v36 = v34;
    if (v36)
    {
      v30 = v36;
      if ([v28 containsObject:v36])
      {
        v37 = v30;
      }

      else
      {
        v37 = 0;
      }

      v31 = v37;
LABEL_26:

LABEL_40:
      v27 = v31;

      v23 = v27;
LABEL_41:

      goto LABEL_42;
    }

LABEL_39:
    v31 = 0;
    goto LABEL_40;
  }

  v22 = ACHLogMonthlyChallenges();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v46) = 0;
    _os_log_impl(&dword_221DDC000, v22, OS_LOG_TYPE_DEFAULT, "Trying to obtain suffix for ACHMonthlyChallengeTypeUndefined or ACHMonthlyChallengeTypeMaxValue, returning", &v46, 2u);
  }

  v23 = 0;
LABEL_42:

  return v23;
}

- (double)_roundedGoalValue:(double)value monthlyChallengeType:(unint64_t)type
{
  valueCopy = value;
  v14 = *MEMORY[0x277D85DE8];
  if (value >= 2.22044605e-16)
  {
    if (type == 20 || type == 6)
    {
      valueCopy = ceil(value / 10.0) * 10.0;
    }

    else
    {
      v5 = ceil(value);
      v6 = ceil(valueCopy / 100.0);
      if (type == 5)
      {
        valueCopy = v6 * 100.0;
      }

      else
      {
        valueCopy = v5;
      }
    }

    v7 = ACHLogMonthlyChallenges();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = ACHMonthlyChallengeNameFromChallengeType();
      v10 = 134218242;
      v11 = valueCopy;
      v12 = 2114;
      v13 = v8;
      _os_log_impl(&dword_221DDC000, v7, OS_LOG_TYPE_DEFAULT, "Rounded goal value (%f) set for Monthly Challenge: %{public}@", &v10, 0x16u);
    }
  }

  return valueCopy;
}

- (id)_maximumValueForMonthlyChallengeType:(unint64_t)type
{
  if (type > 0x18)
  {
    v6 = 0;
  }

  else if (((1 << type) & 0x10FFF9E) != 0)
  {
    v4 = MEMORY[0x277CCABB0];
    currentDate = [(ACHMonthlyChallengeTemplateSource *)self currentDate];
    v6 = [v4 numberWithUnsignedInteger:{-[ACHMonthlyChallengeTemplateSource _numberOfDaysInMonthForDate:](self, "_numberOfDaysInMonthForDate:", currentDate) - 3}];
  }

  else if (((1 << type) & 0xA00000) != 0)
  {
    v6 = &unk_283555AA0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_minimumValueForMonthlyChallengeType:(unint64_t)type
{
  if (type - 1 > 0x1B)
  {
    return 0;
  }

  else
  {
    return qword_278491D68[type - 1];
  }
}

- (void)setIsStandalonePhoneFitnessModeOverride:(BOOL)override
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:override];
  isStandalonePhoneFitnessModeOverride = self->_isStandalonePhoneFitnessModeOverride;
  self->_isStandalonePhoneFitnessModeOverride = v4;

  MEMORY[0x2821F96F8](v4, isStandalonePhoneFitnessModeOverride);
}

- (NSDate)currentDate
{
  currentDateOverride = self->_currentDateOverride;
  if (currentDateOverride)
  {
    date = currentDateOverride;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  return date;
}

- (NSCalendar)currentCalendar
{
  currentCalendarOverride = self->_currentCalendarOverride;
  if (currentCalendarOverride)
  {
    hk_gregorianCalendarWithLocalTimeZone = currentCalendarOverride;
  }

  else
  {
    hk_gregorianCalendarWithLocalTimeZone = [MEMORY[0x277CBEA80] hk_gregorianCalendarWithLocalTimeZone];
  }

  return hk_gregorianCalendarWithLocalTimeZone;
}

- (BOOL)isStandalonePhoneFitnessMode
{
  isStandalonePhoneFitnessModeOverride = self->_isStandalonePhoneFitnessModeOverride;
  if (isStandalonePhoneFitnessModeOverride)
  {

    return [(NSNumber *)isStandalonePhoneFitnessModeOverride BOOLValue];
  }

  else
  {
    mEMORY[0x277CCDD30] = [MEMORY[0x277CCDD30] sharedBehavior];
    isStandalonePhoneFitnessMode = [mEMORY[0x277CCDD30] isStandalonePhoneFitnessMode];

    return isStandalonePhoneFitnessMode;
  }
}

- (id)pairedDeviceRegistrySharedInstance
{
  pairedDeviceRegistrySharedInstanceOverride = self->_pairedDeviceRegistrySharedInstanceOverride;
  if (pairedDeviceRegistrySharedInstanceOverride)
  {
    mEMORY[0x277D2BCF8] = pairedDeviceRegistrySharedInstanceOverride;
  }

  else
  {
    mEMORY[0x277D2BCF8] = [MEMORY[0x277D2BCF8] sharedInstance];
  }

  return mEMORY[0x277D2BCF8];
}

- (void)templatesForDate:(uint64_t)a1 completion:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Error loading cached templates: %@", &v2, 0xCu);
}

- (void)customPlaceholderValuesForTemplate:(NSObject *)a3 error:.cold.1(void *a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [a1 availabilityStart];
  v6 = [a2 startDateComponents];
  v7 = 138543618;
  v8 = v5;
  v9 = 2114;
  v10 = v6;
  _os_log_debug_impl(&dword_221DDC000, a3, OS_LOG_TYPE_DEBUG, "Progress: not adding progress as challenge not for current month: availability start (%{public}@) vs current month start date (%{public}@).", &v7, 0x16u);
}

- (void)_goalValueForCurrentMonthForType:(uint64_t)a1 error:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a1];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_221DDC000, a2, OS_LOG_TYPE_ERROR, "Calculated a zero target value for type %{public}@", &v4, 0xCu);
}

@end