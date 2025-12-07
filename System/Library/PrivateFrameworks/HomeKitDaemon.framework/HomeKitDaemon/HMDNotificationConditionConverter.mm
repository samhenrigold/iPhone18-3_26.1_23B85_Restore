@interface HMDNotificationConditionConverter
+ (BOOL)_isTimePredicate:(id)predicate;
+ (id)_presencePredicatesFromPredicate:(id)predicate;
+ (id)_sunriseSunsetTimePeriodElementFromComparisonPredicate:(id)predicate;
+ (id)_timeOfDayTimePeriodElementFromComparisonPredicate:(id)predicate;
+ (id)_timePredicatesFromPredicate:(id)predicate;
+ (id)conditionsFromPredicate:(id)predicate;
+ (id)logCategory;
+ (id)negateOffsetDateComponents:(id)components;
+ (id)predicateFromPresenceCondition:(id)condition;
+ (id)predicateFromTimePeriodCondition:(id)condition;
+ (id)predicatesFromConditions:(id)conditions;
+ (id)presenceNotificationConditionFromPredicate:(id)predicate;
+ (id)timePeriodNotificationConditionFromPredicate:(id)predicate;
@end

@implementation HMDNotificationConditionConverter

+ (id)logCategory
{
  if (logCategory__hmf_once_t21_200717 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21_200717, &__block_literal_global_38_200718);
  }

  v3 = logCategory__hmf_once_v22_200719;

  return v3;
}

void __48__HMDNotificationConditionConverter_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v22_200719;
  logCategory__hmf_once_v22_200719 = v0;
}

+ (id)predicateFromTimePeriodCondition:(id)condition
{
  v61[2] = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  startElement = [conditionCopy startElement];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  startElement2 = [conditionCopy startElement];
  if (isKindOfClass)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = startElement2;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    endElement = [conditionCopy endElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = endElement;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    hour = [v9 hour];
    v14 = [v9 minute] + 60 * hour;
    hour2 = [v12 hour];
    v16 = [v12 minute] + 60 * hour2;
    v17 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v17 setHour:{objc_msgSend(v9, "hour")}];
    minute = [v9 minute];

    [v17 setMinute:minute];
    v19 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v19 setHour:{objc_msgSend(v12, "hour")}];
    minute2 = [v12 minute];

    [v19 setMinute:minute2];
    v21 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringAfterDateWithComponents:v17];
    v22 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringBeforeDateWithComponents:v19];
    v56 = MEMORY[0x277D85DD0];
    v57 = v14;
    if (v14 <= v16)
    {
      v23 = 1;
    }

    else
    {
      v23 = 2;
    }

    v24 = objc_alloc(MEMORY[0x277CCA920]);
    v61[0] = v21;
    v61[1] = v22;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v61 count:{2, v56, 3221225472, __70__HMDNotificationConditionConverter_predicateFromTimePeriodCondition___block_invoke, &__block_descriptor_48_e5_Q8__0l, v57, v16}];
    v26 = [v24 initWithType:v23 subpredicates:v25];

    goto LABEL_12;
  }

  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v27)
  {
    startElement3 = [conditionCopy startElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = startElement3;
    }

    else
    {
      v29 = 0;
    }

    v17 = v29;

    endElement2 = [conditionCopy endElement];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v31 = endElement2;
    }

    else
    {
      v31 = 0;
    }

    v19 = v31;

    significantEvent = [v17 significantEvent];
    v33 = *MEMORY[0x277CD0FA8];
    if ([significantEvent isEqualToString:*MEMORY[0x277CD0FA8]])
    {
      significantEvent2 = [v19 significantEvent];
      v35 = *MEMORY[0x277CD0FB0];
      v36 = [significantEvent2 isEqualToString:*MEMORY[0x277CD0FB0]];

      if (v36)
      {
        v37 = 1;
LABEL_32:
        v42 = objc_alloc(MEMORY[0x277CD1E00]);
        significantEvent3 = [v17 significantEvent];
        offset = [v17 offset];
        v21 = [v42 initWithSignificantEvent:significantEvent3 offset:offset];

        v22 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringAfterSignificantEvent:v21];
        v45 = objc_alloc(MEMORY[0x277CD1E00]);
        significantEvent4 = [v19 significantEvent];
        offset2 = [v19 offset];
        v48 = [v45 initWithSignificantEvent:significantEvent4 offset:offset2];

        v49 = [MEMORY[0x277CD19F8] predicateForEvaluatingTriggerOccurringBeforeSignificantEvent:v48];
        v50 = objc_alloc(MEMORY[0x277CCA920]);
        v58[0] = v22;
        v58[1] = v49;
        v51 = [MEMORY[0x277CBEA60] arrayWithObjects:v58 count:2];
        v26 = [v50 initWithType:v37 subpredicates:v51];

LABEL_12:
LABEL_13:

        goto LABEL_25;
      }
    }

    else
    {

      v35 = *MEMORY[0x277CD0FB0];
    }

    significantEvent5 = [v17 significantEvent];
    if ([significantEvent5 isEqualToString:v35])
    {
      significantEvent6 = [v19 significantEvent];
      v41 = [significantEvent6 isEqualToString:v33];

      if (v41)
      {
        v37 = 2;
        goto LABEL_32;
      }
    }

    else
    {
    }

    v52 = objc_autoreleasePoolPush();
    selfCopy = self;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
    {
      v55 = HMFGetLogIdentifier();
      *buf = 138543362;
      v60 = v55;
      _os_log_impl(&dword_229538000, v54, OS_LOG_TYPE_ERROR, "%{public}@Start & end are either both sunrise or both sunset, this is unsupported", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v52);
    v26 = 0;
    goto LABEL_13;
  }

  v26 = 0;
LABEL_25:

  return v26;
}

uint64_t __70__HMDNotificationConditionConverter_predicateFromTimePeriodCondition___block_invoke(uint64_t a1)
{
  if (*(a1 + 32) <= *(a1 + 40))
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

+ (id)predicateFromPresenceCondition:(id)condition
{
  v25[5] = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  [conditionCopy presenceEventType];
  [conditionCopy presenceEventUserType];
  userUUIDs = [conditionCopy userUUIDs];

  v5 = [userUUIDs na_map:&__block_literal_global_25_200734];

  v6 = presenceTypeForEventTypeAndGranularity();
  v7 = [MEMORY[0x277CD1D28] activationGranularityWithValue:granularityForEventType()];
  v8 = MEMORY[0x277CBEB38];
  v24[0] = *MEMORY[0x277CD2340];
  hmf_zeroUUID = [MEMORY[0x277CCAD78] hmf_zeroUUID];
  uUIDString = [hmf_zeroUUID UUIDString];
  v11 = *MEMORY[0x277CD22A0];
  v25[0] = uUIDString;
  v25[1] = &unk_283E73D90;
  v12 = *MEMORY[0x277CD22F0];
  v24[1] = v11;
  v24[2] = v12;
  v13 = *MEMORY[0x277CD24C8];
  v25[2] = *MEMORY[0x277CD2308];
  v25[3] = v6;
  v14 = *MEMORY[0x277CD24C0];
  v24[3] = v13;
  v24[4] = v14;
  number = [v7 number];
  v25[4] = number;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];
  v17 = [v8 dictionaryWithDictionary:v16];

  if (([v5 hmf_isEmpty] & 1) == 0)
  {
    allObjects = [v5 allObjects];
    [v17 setObject:allObjects forKeyedSubscript:*MEMORY[0x277CD24D0]];
  }

  v19 = MEMORY[0x277CCAC30];
  v20 = *MEMORY[0x277CD0C40];
  v21 = objc_msgSend_copy(v17);
  v22 = [v19 predicateWithFormat:@"%K = %@", v20, v21];

  return v22;
}

+ (id)negateOffsetDateComponents:(id)components
{
  componentsCopy = components;
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  if ([componentsCopy minute] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setMinute:{-objc_msgSend(componentsCopy, "minute")}];
  }

  if ([componentsCopy hour] != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v4 setHour:{-objc_msgSend(componentsCopy, "hour")}];
  }

  return v4;
}

+ (id)_timeOfDayTimePeriodElementFromComparisonPredicate:(id)predicate
{
  predicateCopy = predicate;
  if ([predicateCopy predicateOperatorType] > 4)
  {
    v7 = 0;
    goto LABEL_12;
  }

  leftExpression = [predicateCopy leftExpression];
  rightExpression = [predicateCopy rightExpression];
  if ([leftExpression expressionType] != 4)
  {
    goto LABEL_10;
  }

  function = [leftExpression function];
  if ([function isEqualToString:@"now"] && !objc_msgSend(rightExpression, "expressionType"))
  {
    constantValue = [rightExpression constantValue];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      function = [rightExpression constantValue];
      v7 = -[HMDTimeOfDayTimePeriodElement initWithHour:minute:]([HMDTimeOfDayTimePeriodElement alloc], "initWithHour:minute:", [function hour], objc_msgSend(function, "minute"));
      goto LABEL_6;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v7 = 0;
LABEL_6:

LABEL_11:
LABEL_12:

  return v7;
}

+ (id)_sunriseSunsetTimePeriodElementFromComparisonPredicate:(id)predicate
{
  v27[2] = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if ([predicateCopy predicateOperatorType] > 3)
  {
    v23 = 0;
  }

  else
  {
    leftExpression = [predicateCopy leftExpression];
    if ([leftExpression expressionType] == 3 && (v6 = *MEMORY[0x277CD0FB0], v27[0] = *MEMORY[0x277CD0FA8], v27[1] = v6, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", v27, 2), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(leftExpression, "keyPath"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v7, "containsObject:", v8), v8, v7, v9))
    {
      keyPath = [leftExpression keyPath];
      v11 = objc_alloc_init(MEMORY[0x277CBEAB8]);
      rightExpression = [predicateCopy rightExpression];
      if ([rightExpression expressionType] == 4)
      {
        function = [rightExpression function];
        v14 = [function isEqualToString:@"add:to:"];

        if (v14)
        {
          arguments = [rightExpression arguments];
          firstObject = [arguments firstObject];
          if ([firstObject expressionType] == 4)
          {
            function2 = [firstObject function];
            v18 = [function2 isEqualToString:@"now"];

            if (v18)
            {
              lastObject = [arguments lastObject];
              if (![lastObject expressionType])
              {
                [lastObject constantValue];
                v20 = v26 = lastObject;
                objc_opt_class();
                isKindOfClass = objc_opt_isKindOfClass();

                if (isKindOfClass)
                {
                  lastObject = v26;
                  constantValue = [v26 constantValue];
                  if ([constantValue hour] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(constantValue, "minute") != 0x7FFFFFFFFFFFFFFFLL)
                  {
                    constantValue2 = [v26 constantValue];

                    if ([constantValue2 hour] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(constantValue2, "hour"))
                    {
                      [constantValue2 setHour:0x7FFFFFFFFFFFFFFFLL];
                    }

                    if ([constantValue2 minute] != 0x7FFFFFFFFFFFFFFFLL && !objc_msgSend(constantValue2, "minute"))
                    {
                      [constantValue2 setMinute:0x7FFFFFFFFFFFFFFFLL];
                    }

                    v11 = [self negateOffsetDateComponents:constantValue2];

                    lastObject = v26;
                  }
                }

                else
                {
                  lastObject = v26;
                }
              }
            }
          }
        }
      }

      v23 = [[HMDSunriseSunsetTimePeriodElement alloc] initWithSignificantEvent:keyPath offset:v11];
    }

    else
    {
      v23 = 0;
    }
  }

  return v23;
}

+ (id)_timePredicatesFromPredicate:(id)predicate
{
  v20 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v5 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = predicateCopy;
    if ([self _isTimePredicate:v6])
    {
      [v5 addObject:v6];
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      subpredicates = [v6 subpredicates];
      v8 = [subpredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(subpredicates);
            }

            v12 = [self _timePredicatesFromPredicate:*(*(&v15 + 1) + 8 * i)];
            [v5 unionSet:v12];
          }

          v9 = [subpredicates countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }

  v13 = objc_msgSend_copy(v5);

  return v13;
}

+ (BOOL)_isTimePredicate:(id)predicate
{
  predicateCopy = predicate;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = predicateCopy;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  v6 = v5;
  if (v5 && ([v5 subpredicates], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 2))
  {
    subpredicates = [v6 subpredicates];
    v10 = [subpredicates na_filter:&__block_literal_global_14_200754];

    v11 = [v10 count] == 2;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t __54__HMDNotificationConditionConverter__isTimePredicate___block_invoke(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 leftExpression];
    v7 = [v5 rightExpression];
    if ([v6 expressionType] == 4)
    {
      v8 = [v6 function];
      if ([v8 isEqualToString:@"now"] && !objc_msgSend(v7, "expressionType"))
      {
        v16 = [v7 constantValue];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
      }

      else
      {
        isKindOfClass = 0;
      }
    }

    else
    {
      isKindOfClass = 0;
    }

    if ([v6 expressionType] == 3)
    {
      v11 = *MEMORY[0x277CD0FB0];
      v17[0] = *MEMORY[0x277CD0FA8];
      v17[1] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
      v13 = [v6 keyPath];
      v14 = [v12 containsObject:v13];
    }

    else
    {
      v14 = 0;
    }

    v10 = isKindOfClass | v14;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

+ (id)_presencePredicatesFromPredicate:(id)predicate
{
  v26 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v5 = [MEMORY[0x277CBEB58] set];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    subpredicates = [predicateCopy subpredicates];
    v7 = [subpredicates countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(subpredicates);
          }

          v11 = [self _presencePredicatesFromPredicate:*(*(&v21 + 1) + 8 * i)];
          [v5 unionSet:v11];
        }

        v8 = [subpredicates countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = predicateCopy;
      rightExpression = [v12 rightExpression];
      leftExpression = [v12 leftExpression];
      if ([leftExpression expressionType] == 3)
      {
        keyPath = [leftExpression keyPath];
        v16 = [keyPath isEqualToString:*MEMORY[0x277CD0C40]];

        if (v16)
        {
          if (![rightExpression expressionType])
          {
            constantValue = [rightExpression constantValue];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              [v5 addObject:v12];
            }
          }
        }
      }
    }
  }

  v19 = objc_msgSend_copy(v5);

  return v19;
}

+ (id)timePeriodNotificationConditionFromPredicate:(id)predicate
{
  v38 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v5 = [self _timePredicatesFromPredicate:predicateCopy];
  if ([v5 hmf_isEmpty])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v9;
      v10 = "%{public}@No time predicate found to convert.";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 12;
LABEL_7:
      _os_log_impl(&dword_229538000, v11, v12, v10, buf, v13);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([v5 count] >= 2)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v9;
      v36 = 2112;
      v37 = v5;
      v10 = "%{public}@Expected at most 1 time predicate, found: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v6);
    v14 = 0;
    goto LABEL_30;
  }

  allObjects = [v5 allObjects];
  firstObject = [allObjects firstObject];

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v20;
    v36 = 2112;
    v37 = firstObject;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Converting time range predicate: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __82__HMDNotificationConditionConverter_timePeriodNotificationConditionFromPredicate___block_invoke;
  aBlock[3] = &__block_descriptor_40_e53___HMDTimePeriodElement_16__0__NSComparisonPredicate_8l;
  aBlock[4] = selfCopy3;
  v21 = _Block_copy(aBlock);
  subpredicates = [firstObject subpredicates];
  v23 = [subpredicates objectAtIndexedSubscript:0];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v23;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;

  if (v25)
  {
    v26 = v21[2](v21, v25);
    if (v26)
    {
      subpredicates2 = [firstObject subpredicates];
      v28 = [subpredicates2 objectAtIndexedSubscript:1];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v29 = v28;
      }

      else
      {
        v29 = 0;
      }

      v30 = v29;

      if (v30)
      {
        v31 = v21[2](v21, v30);
        if (v31)
        {
          v14 = [[HMDTimePeriodNotificationCondition alloc] initWithStartElement:v26 endElement:v31];
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

LABEL_30:

  return v14;
}

id __82__HMDNotificationConditionConverter_timePeriodNotificationConditionFromPredicate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _timeOfDayTimePeriodElementFromComparisonPredicate:v3];
  if (!v4)
  {
    v4 = [*(a1 + 32) _sunriseSunsetTimePeriodElementFromComparisonPredicate:v3];
  }

  return v4;
}

+ (id)presenceNotificationConditionFromPredicate:(id)predicate
{
  v38 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  v5 = [self _presencePredicatesFromPredicate:predicateCopy];
  if ([v5 hmf_isEmpty])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v9;
      v10 = "%{public}@No presence predicate found to convert.";
      v11 = v8;
      v12 = OS_LOG_TYPE_INFO;
      v13 = 12;
LABEL_7:
      _os_log_impl(&dword_229538000, v11, v12, v10, buf, v13);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if ([v5 count] >= 2)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v9;
      v36 = 2112;
      v37 = v5;
      v10 = "%{public}@Expected at most 1 presence predicate, found: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v6);
    v14 = 0;
    goto LABEL_12;
  }

  v33 = predicateCopy;
  allObjects = [v5 allObjects];
  firstObject = [allObjects firstObject];

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v35 = v20;
    v36 = 2112;
    v37 = firstObject;
    _os_log_impl(&dword_229538000, v19, OS_LOG_TYPE_INFO, "%{public}@Converting presence predicate: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  rightExpression = [firstObject rightExpression];
  constantValue = [rightExpression constantValue];

  v23 = [constantValue hmf_stringForKey:*MEMORY[0x277CD24C8]];
  v32 = [MEMORY[0x277CD1D28] activationGranularityWithDict:constantValue];
  [v32 value];
  v24 = [constantValue hmf_arrayForKey:*MEMORY[0x277CD24D0]];
  v25 = [v24 na_map:&__block_literal_global_200767];
  v26 = eventTypeForPresenceTypeAndGranularity();
  v27 = userTypeForPresenceTypeAndGranularity();
  v28 = [HMDPresenceNotificationCondition alloc];
  [MEMORY[0x277CBEB98] setWithArray:v25];
  v30 = v29 = firstObject;
  v14 = [(HMDPresenceNotificationCondition *)v28 initWithPresenceEventType:v26 presenceEventUserType:v27 userUUIDs:v30];

  predicateCopy = v33;
LABEL_12:

  return v14;
}

id __80__HMDNotificationConditionConverter_presenceNotificationConditionFromPredicate___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

+ (id)predicatesFromConditions:(id)conditions
{
  v18 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __62__HMDNotificationConditionConverter_predicatesFromConditions___block_invoke;
  v11[3] = &__block_descriptor_40_e34__16__0__HMDNotificationCondition_8l;
  v11[4] = self;
  v5 = [conditionsCopy na_map:v11];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier();
    *buf = 138543874;
    v13 = v9;
    v14 = 2112;
    v15 = conditionsCopy;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_229538000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Converted conditions: %@ to predicates: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);

  return v5;
}

id __62__HMDNotificationConditionConverter_predicatesFromConditions___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = *(a1 + 32);
    v5 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = [v4 predicateFromTimePeriodCondition:v7];
LABEL_11:
    v12 = v8;

    goto LABEL_15;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = *(a1 + 32);
    v10 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v7 = v11;

    v8 = [v9 predicateFromPresenceCondition:v7];
    goto LABEL_11;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = *(a1 + 32);
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    v16 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v16;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_ERROR, "%{public}@Unsupported condition: %@ when converting to predicate", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v12 = 0;
LABEL_15:

  return v12;
}

+ (id)conditionsFromPredicate:(id)predicate
{
  v24 = *MEMORY[0x277D85DE8];
  predicateCopy = predicate;
  if (predicateCopy)
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v6 = [self presenceNotificationConditionFromPredicate:predicateCopy];
    if (v6)
    {
      [v5 addObject:v6];
    }

    v7 = [self timePeriodNotificationConditionFromPredicate:predicateCopy];
    if (v7)
    {
      [v5 addObject:v7];
    }

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = predicateCopy;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_229538000, v10, OS_LOG_TYPE_INFO, "%{public}@Converted predicate: %@ to conditions: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = objc_msgSend_copy(v5);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_INFO, "%{public}@Predicate is nil, nothing to convert", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [MEMORY[0x277CBEB98] set];
  }

  return v12;
}

@end