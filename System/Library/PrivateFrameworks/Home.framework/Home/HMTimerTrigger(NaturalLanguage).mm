@interface HMTimerTrigger(NaturalLanguage)
+ (id)_dateFormatterWithOptions:()NaturalLanguage;
+ (id)_hf_naturalLanguageDetailsSentenceElementsWithRecurrences:()NaturalLanguage withOptions:;
+ (id)_hf_naturalLanguageNameWithOptions:()NaturalLanguage timeString:fireDate:recurrences:;
+ (id)hf_naturalLanguageDetailsWithRecurrences:()NaturalLanguage withOptions:;
+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage fireDate:recurrences:;
+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage significantEvent:offset:recurrences:;
+ (id)hf_recurrenceNaturalLanguageStringKeyWithOptions:()NaturalLanguage recurrences:intendedForTimeTriggerEditor:;
+ (id)hf_recurrenceNaturalLanguageStringWithRecurrences:()NaturalLanguage isEditor:;
- (id)_hf_naturalLanguageDetailsSentenceElementsWithOptions:()NaturalLanguage;
- (id)hf_naturalLanguageNameWithHome:()NaturalLanguage type:;
- (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage;
@end

@implementation HMTimerTrigger(NaturalLanguage)

- (id)hf_naturalLanguageNameWithHome:()NaturalLanguage type:
{
  v6 = a3;
  v7 = [[HFTriggerNaturalLanguageOptions alloc] initWithHome:v6 nameType:a4];

  v8 = [self hf_naturalLanguageNameWithOptions:v7];

  return v8;
}

- (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage
{
  v4 = a3;
  recurrences = [self recurrences];
  v6 = recurrences;
  if (recurrences)
  {
    v7 = recurrences;
  }

  else
  {
    v8 = MEMORY[0x277CBEA60];
    recurrence = [self recurrence];
    v7 = [v8 na_arrayWithSafeObject:recurrence];
  }

  v10 = _HFLocalizedStringWithDefaultValue(@"HFUnknownTimerTriggerName", @"HFUnknownTimerTriggerName", 1);
  fireDate = [self fireDate];

  if (fireDate)
  {
    v12 = objc_opt_class();
    fireDate2 = [self fireDate];
    v14 = [v12 hf_naturalLanguageNameWithOptions:v4 fireDate:fireDate2 recurrences:v7];
  }

  else
  {
    significantEvent = [self significantEvent];

    if (!significantEvent)
    {
      goto LABEL_9;
    }

    v16 = objc_opt_class();
    fireDate2 = [self significantEvent];
    significantEventOffset = [self significantEventOffset];
    v14 = [v16 hf_naturalLanguageNameWithOptions:v4 significantEvent:fireDate2 offset:significantEventOffset recurrences:v7];

    v10 = significantEventOffset;
  }

  v10 = v14;
LABEL_9:

  return v10;
}

+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage fireDate:recurrences:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v9)
  {
    NSLog(&cfstr_FiredateMustNo.isa);
    v12 = _HFLocalizedStringWithDefaultValue(@"HFUnknownTimerTriggerName", @"HFUnknownTimerTriggerName", 1);
    goto LABEL_8;
  }

  overrideCalendar = [v8 overrideCalendar];
  if (overrideCalendar)
  {
  }

  else
  {
    overrideLocale = [v8 overrideLocale];

    if (!overrideLocale)
    {
      v15 = [MEMORY[0x277CCA968] localizedStringFromDate:v9 dateStyle:0 timeStyle:1];
      goto LABEL_7;
    }
  }

  v14 = [self _dateFormatterWithOptions:v8];
  [v14 setDateStyle:0];
  [v14 setTimeStyle:1];
  v15 = [v14 stringFromDate:v9];

LABEL_7:
  v12 = [self _hf_naturalLanguageNameWithOptions:v8 timeString:v15 fireDate:v9 recurrences:v10];

LABEL_8:

  return v12;
}

+ (id)hf_naturalLanguageNameWithOptions:()NaturalLanguage significantEvent:offset:recurrences:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (!v11)
  {
    NSLog(&cfstr_Significanteve_2.isa);
  }

  v14 = [objc_opt_class() hf_localizedStringForSignficantEvent:v11 offset:v12];
  v15 = [self _hf_naturalLanguageNameWithOptions:v10 timeString:v14 fireDate:0 recurrences:v13];

  return v15;
}

+ (id)hf_recurrenceNaturalLanguageStringKeyWithOptions:()NaturalLanguage recurrences:intendedForTimeTriggerEditor:
{
  v64 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  if (!v8)
  {
    v8 = [MEMORY[0x277CBEAB8] hf_dailyWeekdayIntervalComponentsWithCalendar:currentCalendar];
  }

  if ([v8 na_any:&__block_literal_global_36])
  {
    v10 = MEMORY[0x277CBEB98];
    v11 = [v8 na_map:&__block_literal_global_40];
    v12 = [v10 setWithArray:v11];

    v53 = v12;
    allObjects = [v12 allObjects];
    v14 = [allObjects sortedArrayUsingSelector:sel_compare_];

    v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v55 = a5;
    v54 = v7;
    if ([currentCalendar firstWeekday] == 7)
    {
      v16 = 0;
    }

    else
    {
      v16 = [currentCalendar firstWeekday] - 1;
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v23 = v14;
    v24 = [v23 countByEnumeratingWithState:&v58 objects:v63 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = 0;
      v27 = *v59;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v59 != v27)
          {
            objc_enumerationMutation(v23);
          }

          v29 = *(*(&v58 + 1) + 8 * i);
          if ([v29 integerValue] >= v16)
          {
            [v15 insertObject:v29 atIndex:v26++];
          }

          else
          {
            [v15 addObject:v29];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v58 objects:v63 count:16];
      }

      while (v25);
    }

    v30 = [v23 count];
    [currentCalendar maximumRangeOfUnit:512];
    v32 = v31;
    if (v30 == v31)
    {
      v33 = 0;
      v34 = 0;
    }

    else
    {
      v36 = [v15 indexesOfObjectsPassingTest:&__block_literal_global_46];
      if ([v36 count] != 2 || (v37 = objc_msgSend(v36, "count"), v37 != objc_msgSend(v15, "count")))
      {
        if ([v36 count])
        {
        }

        else
        {
          v38 = [v15 count];

          if (v38 == 5)
          {
            v33 = 0;
            v34 = 1;
            goto LABEL_27;
          }
        }

        v33 = 0;
        v34 = 0;
        if ([v23 count] <= 1)
        {
          v35 = 1;
        }

        else
        {
          v35 = 3;
        }

LABEL_38:
        if ((v55 & 1) != 0 || [v54 formattingStyle] == 2 || objc_msgSend(v54, "formattingStyle") == v35)
        {
          if (v30 == v32)
          {
            v39 = [HFLocalizableStringKey alloc];
            if (v55)
            {
              v40 = @"HFDailyTimerTriggerDetailEvery";
            }

            else
            {
              v40 = @"HFDailyTimerTriggerDetail";
            }
          }

          else if (v33)
          {
            v39 = [HFLocalizableStringKey alloc];
            v40 = @"HFWeekendTimerTriggerDetail";
          }

          else
          {
            if (!v34)
            {
              v7 = v54;
              if ([v23 count] == 1 || (objc_msgSend(v54, "shouldUseFullDayNames") & 1) != 0)
              {
                weekdaySymbols = [currentCalendar weekdaySymbols];
              }

              else
              {
                weekdaySymbols = [currentCalendar shortWeekdaySymbols];
              }

              v56[0] = MEMORY[0x277D85DD0];
              v56[1] = 3221225472;
              v56[2] = __125__HMTimerTrigger_NaturalLanguage__hf_recurrenceNaturalLanguageStringKeyWithOptions_recurrences_intendedForTimeTriggerEditor___block_invoke_4;
              v56[3] = &unk_277DF5910;
              v45 = weekdaySymbols;
              v57 = v45;
              v46 = [v15 na_map:v56];
              v47 = [v46 count];
              v42 = v47 != 0;
              if (v47)
              {
                v48 = [MEMORY[0x277CCAAF0] localizedStringByJoiningStrings:v46];
                v52 = v48;
                if (v55)
                {
                  v49 = @"HFSomeDaysTimerTriggerDetailEvery";
                }

                else
                {
                  v49 = @"HFSomeDaysTimerTriggerDetail";
                }

                v62 = v48;
                v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v62 count:{1, HFLocalizableStringKey}];
                v32 = [v51 stringKeyWithKey:v49 arguments:v50];
              }

LABEL_51:
              if (v42)
              {
                v22 = v32;
              }

              else
              {
                v22 = 0;
              }

              if (v42 || !v55)
              {
                goto LABEL_58;
              }

              goto LABEL_56;
            }

            v39 = [HFLocalizableStringKey alloc];
            v40 = @"HFWeekdayTimerTriggerDetail";
          }

          v41 = [(HFLocalizableStringKey *)v39 initWithKey:v40 argumentKeys:0];
        }

        else
        {
          v41 = objc_alloc_init(HFEmptyLocalizableStringKey);
        }

        v32 = v41;
        v42 = 1;
        v7 = v54;
        goto LABEL_51;
      }

      v34 = 0;
      v33 = 1;
    }

LABEL_27:
    v35 = 1;
    goto LABEL_38;
  }

  if ([v8 count] == 1)
  {
    firstObject = [v8 firstObject];
    hf_dailyIntervalComponents = [MEMORY[0x277CBEAB8] hf_dailyIntervalComponents];
    v19 = [firstObject hf_isEqualToHomeKitRecurrence:hf_dailyIntervalComponents];

    if (v19)
    {
      if (a5)
      {
        v20 = @"HFDailyTimerTriggerDetailEvery";
      }

      else
      {
        v20 = @"HFDailyTimerTriggerDetail";
      }

      v21 = [HFLocalizableStringKey stringKeyWithKey:v20 argumentKeys:0];
      goto LABEL_57;
    }
  }

  if (!a5)
  {
    v22 = 0;
    goto LABEL_58;
  }

LABEL_56:
  v21 = [[HFLocalizableStringKey alloc] initWithKey:@"HFDailyTimerTriggerDetailNever" argumentKeys:0];
LABEL_57:
  v22 = v21;
LABEL_58:

  return v22;
}

+ (id)hf_recurrenceNaturalLanguageStringWithRecurrences:()NaturalLanguage isEditor:
{
  v6 = a3;
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  homeManager = [v7 homeManager];
  homes = [homeManager homes];
  firstObject = [homes firstObject];
  v11 = [HFTriggerNaturalLanguageOptions optionsWithHome:firstObject nameType:2];

  [v11 setShouldUseFullDayNames:1];
  v12 = [self hf_recurrenceNaturalLanguageStringKeyWithOptions:v11 recurrences:v6 intendedForTimeTriggerEditor:a4];

  if (v12 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v13 = [v12 localizedStringWithArgumentBlock:0];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_hf_naturalLanguageNameWithOptions:()NaturalLanguage timeString:fireDate:recurrences:
{
  v68[2] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v65 = a5;
  v11 = a6;
  overrideCalendar = [v9 overrideCalendar];
  v13 = overrideCalendar;
  if (overrideCalendar)
  {
    currentCalendar = overrideCalendar;
  }

  else
  {
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  }

  v15 = currentCalendar;

  overrideNowDate = [v9 overrideNowDate];
  v17 = overrideNowDate;
  if (overrideNowDate)
  {
    date = overrideNowDate;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  v63 = date;

  if (qword_280E02DF0 != -1)
  {
    dispatch_once(&qword_280E02DF0, &__block_literal_global_78_0);
  }

  v19 = qword_280E02DF8;
  if (qword_280E02E00 != -1)
  {
    dispatch_once(&qword_280E02E00, &__block_literal_global_85);
  }

  v60 = qword_280E02E08;
  if (qword_280E02E10 != -1)
  {
    dispatch_once(&qword_280E02E10, &__block_literal_global_92);
  }

  v61 = qword_280E02E18;
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __102__HMTimerTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_timeString_fireDate_recurrences___block_invoke_7;
  v66[3] = &unk_277DF75E8;
  v66[4] = v19;
  v20 = __102__HMTimerTrigger_NaturalLanguage___hf_naturalLanguageNameWithOptions_timeString_fireDate_recurrences___block_invoke_7(v66);
  v21 = [self hf_recurrenceNaturalLanguageStringKeyWithOptions:v9 recurrences:v11];

  v62 = v15;
  if (v21)
  {
    v22 = [v21 key];
    if (qword_280E02E30 != -1)
    {
      dispatch_once(&qword_280E02E30, &__block_literal_global_99);
    }

    v23 = qword_280E02E38;
    v24 = [v23 objectForKeyedSubscript:v22];

    if (v24)
    {
      v25 = [v23 objectForKeyedSubscript:v22];
      v26 = [HFLocalizableStringKey stringKeyWithKey:v25 argumentKeys:v20];

      v15 = v62;
    }

    else if ([v22 isEqualToString:@"HFSomeDaysTimerTriggerDetail"])
    {
      v68[0] = v19;
      v68[1] = v60;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:2];
      v26 = [HFLocalizableStringKey stringKeyWithKey:@"HFSomeDaysTimerTriggerName" argumentKeys:v27];

      v28 = [v21 localizedStringWithArgumentBlock:0];
      argumentMap = [v26 argumentMap];
      [argumentMap setObject:v28 forKeyedSubscript:v60];

      v15 = v62;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = [HFLocalizableStringKey stringKeyWithKey:@"HFShortTimerTriggerName" argumentKeys:v20];
      }

      else
      {
        v26 = 0;
      }
    }
  }

  else
  {
    v26 = 0;
  }

  if (v65 && !v26)
  {
    v30 = [v15 dateByAddingUnit:16 value:1 toDate:v63 options:0];
    if ([v15 isDate:v65 inSameDayAsDate:v63])
    {
      v31 = @"HFTodayTimerTriggerName";
    }

    else
    {
      if (![v15 isDate:v65 inSameDayAsDate:v30])
      {
        v32 = [self _dateFormatterWithOptions:v9];
        [v32 setLocalizedDateFormatFromTemplate:{@"d MMM, h:mm a"}];
        v33 = [v32 stringFromDate:v65];
        v67 = v33;
        v34 = [MEMORY[0x277CBEA60] arrayWithObjects:&v67 count:1];
        v26 = [HFLocalizableStringKey stringKeyWithKey:@"HFFormattedDateTimerTriggerName" arguments:v34];

        v15 = v62;
        goto LABEL_33;
      }

      v31 = @"HFTomorrowTimerTriggerName";
    }

    v26 = [HFLocalizableStringKey stringKeyWithKey:v31 argumentKeys:v20];
LABEL_33:
  }

  if (v10 && !v26)
  {
    v35 = _HFLocalizedStringWithDefaultValue(@"HFTimerTriggerTimeStringSunrise", @"HFTimerTriggerTimeStringSunrise", 1);
    v36 = [v10 isEqualToString:v35];

    if (v36)
    {
      v37 = @"HFOnceSunriseTimerTriggerName";
    }

    else
    {
      v38 = _HFLocalizedStringWithDefaultValue(@"HFTimerTriggerTimeStringSunset", @"HFTimerTriggerTimeStringSunset", 1);
      v39 = [v10 isEqualToString:v38];

      if (!v39)
      {
        v37 = @"HFOnceTimerTriggerName";
        v40 = v20;
        goto LABEL_42;
      }

      v37 = @"HFOnceSunsetTimerTriggerName";
    }

    v40 = 0;
LABEL_42:
    v26 = [HFLocalizableStringKey stringKeyWithKey:v37 argumentKeys:v40];
  }

  actions = [v9 actions];
  v42 = [actions count];

  if (v42)
  {
    actionNaturalLanguageOptions = [v9 actionNaturalLanguageOptions];
    [actionNaturalLanguageOptions setFormattingContext:5];

    actions2 = [v9 actions];
    actionNaturalLanguageOptions2 = [v9 actionNaturalLanguageOptions];
    v46 = [HFActionNaturalLanguageUtilities hf_naturalLanguageDescriptionForActions:actions2 withOptions:actionNaturalLanguageOptions2];

    v47 = [v26 key];
    v48 = [v47 stringByAppendingString:@"_WithAction"];

    v49 = _HFLocalizedStringWithDefaultValue(v48, 0, 0);
    if (v49)
    {
      v50 = v49;
      v51 = [v46 length];

      if (v51)
      {
        [v26 setKey:v48];
        argumentKeys = [v26 argumentKeys];
        v53 = [argumentKeys arrayByAddingObject:v61];
        [v26 setArgumentKeys:v53];

        argumentMap2 = [v26 argumentMap];
        [argumentMap2 setObject:v46 forKeyedSubscript:v61];
      }
    }

    v15 = v62;
  }

  if (!v26 || ([v26 argumentMap], v55 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v55, "setObject:forKeyedSubscript:", v10, v19), v55, objc_msgSend(v26, "localizedStringWithArgumentBlock:", 0), (v56 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v56 = _HFLocalizedStringWithDefaultValue(@"HFUnknownTimerTriggerName", @"HFUnknownTimerTriggerName", 1);
  }

  if (![v9 nameType])
  {
    v57 = objc_msgSend_home(v9);
    v58 = [self hf_sanitizeTriggerName:v56 home:v57];

    v56 = v58;
  }

  return v56;
}

+ (id)_dateFormatterWithOptions:()NaturalLanguage
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CCA968]);
  overrideCalendar = [v3 overrideCalendar];

  if (overrideCalendar)
  {
    overrideCalendar2 = [v3 overrideCalendar];
    [v4 setCalendar:overrideCalendar2];

    overrideCalendar3 = [v3 overrideCalendar];
    timeZone = [overrideCalendar3 timeZone];
    [v4 setTimeZone:timeZone];
  }

  overrideLocale = [v3 overrideLocale];

  if (overrideLocale)
  {
    overrideLocale2 = [v3 overrideLocale];
    [v4 setLocale:overrideLocale2];
  }

  return v4;
}

- (id)_hf_naturalLanguageDetailsSentenceElementsWithOptions:()NaturalLanguage
{
  v4 = a3;
  v5 = objc_opt_class();
  recurrences = [self recurrences];
  if (recurrences)
  {
    v7 = [v5 _hf_naturalLanguageDetailsSentenceElementsWithRecurrences:recurrences withOptions:v4];
  }

  else
  {
    v8 = MEMORY[0x277CBEA60];
    recurrence = [self recurrence];
    v10 = [v8 na_arrayWithSafeObject:recurrence];
    v7 = [v5 _hf_naturalLanguageDetailsSentenceElementsWithRecurrences:v10 withOptions:v4];
  }

  return v7;
}

+ (id)hf_naturalLanguageDetailsWithRecurrences:()NaturalLanguage withOptions:
{
  v1 = [self _hf_naturalLanguageDetailsSentenceElementsWithRecurrences:? withOptions:?];
  v2 = [v1 mutableCopy];

  if ([v2 count])
  {
    if (qword_280E02E40 != -1)
    {
      dispatch_once(&qword_280E02E40, &__block_literal_global_150_3);
    }

    v3 = qword_280E02E48;
    [v3 setListStyle:2];
    array = [v2 array];
    v5 = [v3 stringForObjectValue:array];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_hf_naturalLanguageDetailsSentenceElementsWithRecurrences:()NaturalLanguage withOptions:
{
  v5 = a3;
  v6 = a4;
  orderedSet = [MEMORY[0x277CBEB40] orderedSet];
  v8 = v5;
  if ([v8 count])
  {
    v9 = [objc_opt_class() hf_recurrenceNaturalLanguageStringKeyWithOptions:v6 recurrences:v8];
    if (v9)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v10 = [v9 localizedStringWithArgumentBlock:0];
        [orderedSet addObject:v10];
      }
    }
  }

  v11 = [orderedSet copy];

  return v11;
}

@end