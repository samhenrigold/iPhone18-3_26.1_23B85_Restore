@interface IPEventClassificationType
+ (double)_averageDistanceBetweenFeatureKeyword:(id)keyword featureDates:(id)dates subjectLength:(unint64_t)length inSubject:(BOOL)subject;
+ (double)_scoreForKeywordsInSubject:(BOOL)subject distanceToDates:(double)result polarity:(unint64_t)polarity matchedRatio:(double)ratio keywordType:(unint64_t)type;
+ (id)_dateComponentsFromTaxonomyHHMMString:(id)string;
+ (id)_identifierForCluster:(unint64_t)cluster;
+ (id)_identifiersForClusters:(id)clusters;
+ (id)_loadTaxonomyForLanguageID:(id)d clusterIdentifier:(id)identifier error:(id *)error;
+ (id)_parentFromIdentifier:(id)identifier;
+ (id)allClusterIdentifiers;
+ (id)cleanSubject:(id)subject;
+ (id)eventClassificationTypeFromMessageUnit:(id)unit detectedStartDate:(id)date;
+ (id)eventClassificationTypeFromMessageUnit:(id)unit features:(id)features;
+ (id)eventClassificationTypeFromMessageUnit:(id)unit features:(id)features datafeatures:(id)datafeatures;
+ (id)eventClassificationTypeFromMessageUnit:(id)unit keywordFeatures:(id)features datafeatures:(id)datafeatures;
+ (id)eventTypeForCultureAndLanguageID:(id)d;
+ (id)eventTypeForMealsAndLanguageID:(id)d;
+ (id)eventTypeForMoviesAndLanguageID:(id)d;
+ (id)eventTypeForSportAndLanguageID:(id)d;
+ (id)fallbackEventTitleForMessageUnits:(id)units subject:(id)subject checkForDateInSubject:(BOOL)inSubject;
+ (id)humanReadableClusterType:(unint64_t)type;
+ (id)morePreciseEventClassificationTypeBetweenType:(id)type and:(id)and;
+ (id)taxonomyForLanguageID:(id)d clusterIdentifier:(id)identifier;
+ (id)taxonomyForLanguageID:(id)d clusterType:(unint64_t)type;
+ (id)titleGenerationModelPredictionForMessageUnits:(id)units;
- (BOOL)_isAParentOf:(id)of;
- (BOOL)isDateWithinRange:(id)range;
- (BOOL)prefersTitleSenderDecoration;
- (BOOL)questionMarkInString:(id)string;
- (IPEventClassificationType)initWithIdentifier:(id)identifier language:(id)language patternKeywords:(id)keywords titleKeywords:(id)titleKeywords subjectKeywords:(id)subjectKeywords defaultTitle:(id)title titleSenderTemplate:(id)template defaultStartingTimeHour:(int)self0 defaultStartingTimeMinutes:(int)self1 defaultDuration:(double)self2 preferedMeridian:(unint64_t)self3 parent:(id)self4 children:(id)self5 useForTimeAdjustement:(BOOL)self6 minutesBeforeDefaultStartingTime:(double)self7 minutesAfterDefaultStartingTime:(double)self8 allDayAllowed:(BOOL)self9 useGenericPatternsInClassification:(BOOL)classification movieRelated:(BOOL)related mealRelated:(BOOL)mealRelated cultureRelated:(BOOL)cultureRelated sportRelated:(BOOL)sportRelated fairlyGeneric:(BOOL)generic appointmentRelated:(BOOL)appointmentRelated;
- (IPEventClassificationType)parent;
- (double)_hasPriorityOverEventType:(id)type;
- (id)_mealClassificationTypeUsingStartDate:(id)date;
- (id)adjustedEventClassificationTypeWithStartDate:(id)date;
- (id)adjustedEventTitleForMessageUnits:(id)units;
- (id)adjustedEventTitleForMessageUnits:(id)units subject:(id)subject dateInSubject:(id)inSubject eventStartDate:(id)date useTitleGenerationModel:(BOOL)model isGeneratedFromSubject:(BOOL *)fromSubject isGeneratedFromTitleGenerationModel:(BOOL *)generationModel;
- (id)adjustedEventTitleForMessageUnits:(id)units subject:(id)subject isDateInSubject:(BOOL)inSubject;
- (id)dateWithoutTime:(id)time;
- (id)decoratedTitleFromTitle:(id)title participantName:(id)name isTitleSenderDecorated:(BOOL *)decorated;
- (id)description;
- (id)properCasedTitleForTitle:(id)title locale:(id)locale;
- (unint64_t)classificationDepth;
- (void)_addChild:(id)child;
- (void)_addParent:(id)parent;
- (void)_addUpperPriorityEventTypeIdentifier:(id)identifier weight:(id)weight;
- (void)addEventPatterns:(id)patterns;
@end

@implementation IPEventClassificationType

- (IPEventClassificationType)initWithIdentifier:(id)identifier language:(id)language patternKeywords:(id)keywords titleKeywords:(id)titleKeywords subjectKeywords:(id)subjectKeywords defaultTitle:(id)title titleSenderTemplate:(id)template defaultStartingTimeHour:(int)self0 defaultStartingTimeMinutes:(int)self1 defaultDuration:(double)self2 preferedMeridian:(unint64_t)self3 parent:(id)self4 children:(id)self5 useForTimeAdjustement:(BOOL)self6 minutesBeforeDefaultStartingTime:(double)self7 minutesAfterDefaultStartingTime:(double)self8 allDayAllowed:(BOOL)self9 useGenericPatternsInClassification:(BOOL)classification movieRelated:(BOOL)related mealRelated:(BOOL)mealRelated cultureRelated:(BOOL)cultureRelated sportRelated:(BOOL)sportRelated fairlyGeneric:(BOOL)generic appointmentRelated:(BOOL)appointmentRelated
{
  identifierCopy = identifier;
  languageCopy = language;
  keywordsCopy = keywords;
  titleKeywordsCopy = titleKeywords;
  subjectKeywordsCopy = subjectKeywords;
  titleCopy = title;
  templateCopy = template;
  parentCopy = parent;
  childrenCopy = children;
  v60.receiver = self;
  v60.super_class = IPEventClassificationType;
  v43 = [(IPEventClassificationType *)&v60 init];
  v44 = v43;
  if (v43)
  {
    v58 = subjectKeywordsCopy;
    [(IPEventClassificationType *)v43 setClassificationDepth:0];
    v57 = identifierCopy;
    [(IPEventClassificationType *)v44 setIdentifier:identifierCopy];
    [(IPEventClassificationType *)v44 setLanguage:languageCopy];
    v56 = keywordsCopy;
    v45 = [keywordsCopy mutableCopy];
    [(IPEventClassificationType *)v44 setPatternKeywords:v45];

    [(IPEventClassificationType *)v44 setTitleKeywords:titleKeywordsCopy];
    v46 = titleCopy;
    [(IPEventClassificationType *)v44 setDefaultTitle:titleCopy];
    [(IPEventClassificationType *)v44 setTitleSenderTemplate:templateCopy];
    [(IPEventClassificationType *)v44 setDefaultStartingTimeHour:hour];
    [(IPEventClassificationType *)v44 setDefaultStartingTimeMinutes:minutes];
    [(IPEventClassificationType *)v44 setDefaultCumulativeMinutes:(minutes + 60 * hour)];
    [(IPEventClassificationType *)v44 setDefaultDuration:duration];
    [(IPEventClassificationType *)v44 setPreferedMeridian:meridian];
    [(IPEventClassificationType *)v44 setParent:parentCopy];
    if (childrenCopy)
    {
      v47 = [childrenCopy mutableCopy];
    }

    else
    {
      childrenCopy = 0;
      v47 = objc_alloc_init(MEMORY[0x277CBEB18]);
    }

    v48 = v47;
    [(IPEventClassificationType *)v44 setChildren:v47];

    [(IPEventClassificationType *)v44 setUseForTimeAdjustement:adjustement];
    [(IPEventClassificationType *)v44 setMinutesBeforeDefaultStartingTime:time];
    [(IPEventClassificationType *)v44 setMinutesAfterDefaultStartingTime:startingTime];
    [(IPEventClassificationType *)v44 setAllDayAllowed:allowed];
    v49 = [subjectKeywordsCopy mutableCopy];
    [(IPEventClassificationType *)v44 setSubjectKeywords:v49];

    v50 = objc_opt_new();
    [(IPEventClassificationType *)v44 setUpperPriorityEventTypesIdentifiers:v50];

    v51 = objc_opt_new();
    [(IPEventClassificationType *)v44 setGenericPatternKeywords:v51];

    if (titleCopy && classification && [titleCopy length])
    {
      genericPatternKeywords = [(IPEventClassificationType *)v44 genericPatternKeywords];
      defaultTitle = [(IPEventClassificationType *)v44 defaultTitle];
      lowercaseString = [defaultTitle lowercaseString];
      [genericPatternKeywords addObject:lowercaseString];

      titleCopy = v46;
    }

    v44->_movieRelated = related;
    v44->_mealRelated = mealRelated;
    v44->_cultureRelated = cultureRelated;
    v44->_sportRelated = sportRelated;
    v44->_fairlyGeneric = generic;
    v44->_isAppointment = appointmentRelated;
    keywordsCopy = v56;
    identifierCopy = v57;
    subjectKeywordsCopy = v58;
  }

  return v44;
}

- (void)addEventPatterns:(id)patterns
{
  v29 = *MEMORY[0x277D85DE8];
  patternsCopy = patterns;
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{2 * objc_msgSend(patternsCopy, "count")}];
  [v4 addObjectsFromArray:patternsCopy];
  v5 = objc_opt_new();
  if ([patternsCopy count])
  {
    v6 = 0;
    do
    {
      v7 = objc_autoreleasePoolPush();
      v8 = [patternsCopy objectAtIndexedSubscript:v6];
      if ([v8 length] <= 0x11 && (objc_msgSend(v8, "containsString:", @"{") & 1) == 0)
      {
        if ([v8 containsString:@" "])
        {
          v9 = [v8 stringByReplacingOccurrencesOfString:@" " withString:@"()"];
          [v5 addObject:v9];
        }

        else
        {
          v9 = [@"#?" stringByAppendingString:v8];
          [v4 setObject:v9 atIndexedSubscript:v6];
        }
      }

      objc_autoreleasePoolPop(v7);
      ++v6;
    }

    while (v6 < [patternsCopy count]);
  }

  if ([v5 count] >= 6)
  {
    v18 = objc_autoreleasePoolPush();
    v19 = [IPRegexToolbox regexPatternWithPrefix:@"#(?:") suffix:@"" choices:v5];
    [v4 addObject:v19];

    objc_autoreleasePoolPop(v18);
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = v5;
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          v16 = objc_autoreleasePoolPush();
          v17 = [@"#" stringByAppendingString:v15];
          [v4 addObject:v17];

          objc_autoreleasePoolPop(v16);
        }

        v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }
  }

  titleKeywords = [(IPEventClassificationType *)self titleKeywords];

  if (!titleKeywords)
  {
    v21 = objc_opt_new();
    [(IPEventClassificationType *)self setTitleKeywords:v21];
  }

  titleKeywords2 = [(IPEventClassificationType *)self titleKeywords];
  [titleKeywords2 addObjectsFromArray:v4];
}

- (id)description
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  parent = [(IPEventClassificationType *)self parent];

  if (parent)
  {
    parent2 = [(IPEventClassificationType *)self parent];
    identifier = [parent2 identifier];
    [v3 addObject:identifier];
  }

  v38 = v3;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  children = [(IPEventClassificationType *)self children];
  v10 = [children countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v44;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v44 != v12)
        {
          objc_enumerationMutation(children);
        }

        identifier2 = [*(*(&v43 + 1) + 8 * i) identifier];
        [v4 addObject:identifier2];
      }

      v11 = [children countByEnumeratingWithState:&v43 objects:v48 count:16];
    }

    while (v11);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  upperPriorityEventTypesIdentifiers = [(IPEventClassificationType *)self upperPriorityEventTypesIdentifiers];
  v16 = [upperPriorityEventTypesIdentifiers countByEnumeratingWithState:&v39 objects:v47 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v40;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v40 != v18)
        {
          objc_enumerationMutation(upperPriorityEventTypesIdentifiers);
        }

        [v5 addObject:*(*(&v39 + 1) + 8 * j)];
      }

      v17 = [upperPriorityEventTypesIdentifiers countByEnumeratingWithState:&v39 objects:v47 count:16];
    }

    while (v17);
  }

  v36 = MEMORY[0x277CCACA8];
  identifier3 = [(IPEventClassificationType *)self identifier];
  language = [(IPEventClassificationType *)self language];
  defaultTitle = [(IPEventClassificationType *)self defaultTitle];
  defaultStartingTimeHour = [(IPEventClassificationType *)self defaultStartingTimeHour];
  defaultStartingTimeMinutes = [(IPEventClassificationType *)self defaultStartingTimeMinutes];
  [(IPEventClassificationType *)self defaultDuration];
  v30 = (v20 / 60.0);
  isHighPriority = [(IPEventClassificationType *)self isHighPriority];
  isLowPriority = [(IPEventClassificationType *)self isLowPriority];
  isAllDayAllowed = [(IPEventClassificationType *)self isAllDayAllowed];
  useForTimeAdjustement = [(IPEventClassificationType *)self useForTimeAdjustement];
  patternKeywords = [(IPEventClassificationType *)self patternKeywords];
  titleKeywords = [(IPEventClassificationType *)self titleKeywords];
  subjectKeywords = [(IPEventClassificationType *)self subjectKeywords];
  genericPatternKeywords = [(IPEventClassificationType *)self genericPatternKeywords];
  v37 = [v36 stringWithFormat:@"Identifier : %@\nLanguage : %@\nTitle : %@\nStartHour : %d, StartMin : %d\nDuration : %d min\nParents : %@\nChildren : %@\nUpper Priorities : %@\nHigh Priority : %d\nLow Priority : %d\nAll Day Allowed : %d\nUse for time adjustement : %d\nPattern Keywords : %@\nTitle Keywords : %@\nSubject keywords : %@\nGeneric Keywords : %@", identifier3, language, defaultTitle, defaultStartingTimeHour, defaultStartingTimeMinutes, v30, v38, v4, v5, isHighPriority, isLowPriority, isAllDayAllowed, useForTimeAdjustement, patternKeywords, titleKeywords, subjectKeywords, genericPatternKeywords];

  return v37;
}

- (void)_addChild:(id)child
{
  if (child)
  {
    childCopy = child;
    children = [(IPEventClassificationType *)self children];
    [children addObject:childCopy];
  }
}

- (void)_addParent:(id)parent
{
  if (parent)
  {
    [(IPEventClassificationType *)self setParent:?];
  }
}

- (void)_addUpperPriorityEventTypeIdentifier:(id)identifier weight:(id)weight
{
  if (identifier)
  {
    weightCopy = weight;
    identifierCopy = identifier;
    upperPriorityEventTypesIdentifiers = [(IPEventClassificationType *)self upperPriorityEventTypesIdentifiers];
    [upperPriorityEventTypesIdentifiers setObject:weightCopy forKeyedSubscript:identifierCopy];
  }
}

- (id)adjustedEventClassificationTypeWithStartDate:(id)date
{
  dateCopy = date;
  if (dateCopy && (-[IPEventClassificationType identifier](self, "identifier"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 isEqualToString:@"GATHERING::MEAL"], v5, v6))
  {
    selfCopy = [(IPEventClassificationType *)self _mealClassificationTypeUsingStartDate:dateCopy];
  }

  else
  {
    selfCopy = self;
  }

  v8 = selfCopy;

  return v8;
}

- (id)adjustedEventTitleForMessageUnits:(id)units
{
  unitsCopy = units;
  firstObject = [unitsCopy firstObject];
  originalMessage = [firstObject originalMessage];

  subject = [originalMessage subject];
  v8 = [(IPEventClassificationType *)self adjustedEventTitleForMessageUnits:unitsCopy subject:subject dateInSubject:0 eventStartDate:0 isGeneratedFromSubject:0];

  return v8;
}

- (BOOL)prefersTitleSenderDecoration
{
  if ([(IPEventClassificationType *)self isMealRelated])
  {
    return 1;
  }

  identifier = [(IPEventClassificationType *)self identifier];
  if ([identifier hasPrefix:@"GATHERING::PARTY"])
  {
    v3 = 1;
  }

  else
  {
    identifier2 = [(IPEventClassificationType *)self identifier];
    if ([identifier2 hasPrefix:@"GATHERING::DRINKS"])
    {
      v3 = 1;
    }

    else
    {
      identifier3 = [(IPEventClassificationType *)self identifier];
      v3 = [identifier3 hasPrefix:@"GATHERING::BBQ"];
    }
  }

  return v3;
}

- (id)decoratedTitleFromTitle:(id)title participantName:(id)name isTitleSenderDecorated:(BOOL *)decorated
{
  titleCopy = title;
  nameCopy = name;
  if (![nameCopy length] || !objc_msgSend(titleCopy, "length"))
  {
    v16 = titleCopy;
    goto LABEL_21;
  }

  selfCopy = self;
  v11 = selfCopy;
  if (selfCopy)
  {
    parent = selfCopy;
    do
    {
      v13 = parent;
      titleSenderTemplate = [parent titleSenderTemplate];
      parent = [parent parent];

      v15 = titleSenderTemplate == 0;
    }

    while (!titleSenderTemplate && parent);
  }

  else
  {
    titleSenderTemplate = 0;
    parent = 0;
    v15 = 1;
  }

  if (v15 && !parent)
  {
    language = [(IPEventClassificationType *)v11 language];
    parent = [IPEventClassificationType eventTypeForGenericEventAndLanguageID:language];

    titleSenderTemplate = [parent titleSenderTemplate];
  }

  titleSenderTemplate2 = [(IPEventClassificationType *)v11 titleSenderTemplate];

  if (!titleSenderTemplate2 && titleSenderTemplate)
  {
    [(IPEventClassificationType *)v11 setTitleSenderTemplate:titleSenderTemplate];
LABEL_17:
    if (decorated)
    {
      *decorated = 1;
    }

    v26 = _PASValidatedFormat(titleSenderTemplate, v19, v20, v21, v22, v23, v24, v25, titleCopy);
    goto LABEL_20;
  }

  if (titleSenderTemplate)
  {
    goto LABEL_17;
  }

  v26 = titleCopy;
LABEL_20:
  v16 = v26;

LABEL_21:

  return v16;
}

- (id)properCasedTitleForTitle:(id)title locale:(id)locale
{
  titleCopy = title;
  localeCopy = locale;
  v7 = [titleCopy hasPrefix:@"#"];
  v8 = titleCopy;
  v9 = v8;
  v10 = v8;
  if ((v7 & 1) == 0)
  {
    v11 = [v8 lowercaseStringWithLocale:localeCopy];
    v12 = [v11 isEqualToString:v9];

    v10 = v9;
    if (v12)
    {
      v10 = [v9 capitalizedStringWithLocale:localeCopy];
    }
  }

  return v10;
}

- (id)adjustedEventTitleForMessageUnits:(id)units subject:(id)subject dateInSubject:(id)inSubject eventStartDate:(id)date useTitleGenerationModel:(BOOL)model isGeneratedFromSubject:(BOOL *)fromSubject isGeneratedFromTitleGenerationModel:(BOOL *)generationModel
{
  modelCopy = model;
  v115 = *MEMORY[0x277D85DE8];
  unitsCopy = units;
  subjectCopy = subject;
  inSubjectCopy = inSubject;
  dateCopy = date;
  if (!modelCopy || ([IPEventClassificationType titleGenerationModelPredictionForMessageUnits:unitsCopy], (v18 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    defaultTitle = [(IPEventClassificationType *)self defaultTitle];
    firstObject = [unitsCopy firstObject];
    originalMessage = [firstObject originalMessage];

    v22 = MEMORY[0x277CBEAF8];
    language = [(IPEventClassificationType *)self language];
    v24 = [v22 localeWithLocaleIdentifier:language];

    v104 = originalMessage;
    type = [originalMessage type];
    v26 = IPMessageTypeShortMessage;

    defaultTitle2 = [(IPEventClassificationType *)self defaultTitle];
    v28 = defaultTitle2;
    if (defaultTitle2)
    {
      if (!subjectCopy || inSubjectCopy || type == v26)
      {

LABEL_20:
        v41 = 0;
        v42 = 0;
        goto LABEL_25;
      }

      v29 = [(IPEventClassificationType *)self questionMarkInString:subjectCopy];

      if (v29)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v30 = v24;
      v31 = dateCopy;
      subjectKeywords = [(IPEventClassificationType *)self subjectKeywords];
      v33 = [subjectKeywords count];
      if (!subjectCopy || !v33 || inSubjectCopy || type == v26)
      {

        v41 = 0;
        v42 = 0;
        dateCopy = v31;
        v24 = v30;
        goto LABEL_25;
      }

      v34 = [(IPEventClassificationType *)self questionMarkInString:subjectCopy];

      dateCopy = v31;
      v24 = v30;
      if (v34)
      {
        goto LABEL_20;
      }
    }

    v35 = [objc_opt_class() cleanSubject:subjectCopy];

    if (([v35 length] - 5) > 0x2D)
    {
      v41 = 0;
      v42 = 0;
      subjectCopy = v35;
    }

    else
    {
      v101 = v24;
      v36 = dateCopy;
      lowercaseString = [v35 lowercaseString];
      defaultTitle3 = [(IPEventClassificationType *)self defaultTitle];
      lowercaseString2 = [defaultTitle3 lowercaseString];
      v40 = [lowercaseString isEqualToString:lowercaseString2];

      if (v40)
      {
        v41 = 0;
        v42 = 0;
      }

      else
      {
        v43 = MEMORY[0x277CCACA8];
        identifier = [(IPEventClassificationType *)self identifier];
        language2 = [(IPEventClassificationType *)self language];
        v46 = [v43 stringWithFormat:@"%@-%@-%@", identifier, language2, @"subject"];

        v110[0] = MEMORY[0x277D85DD0];
        v110[1] = 3221225472;
        v110[2] = __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke;
        v110[3] = &unk_278F233D0;
        v110[4] = self;
        v47 = [IPRegexToolbox regularExpressionWithKey:v46 generator:v110];
        v48 = [IPRegexToolbox firstMatchingKeywordForRegex:v47 inString:v35 needsToLowercase:1];
        v42 = v48 != 0;

        v41 = 1;
      }

      dateCopy = v36;
      subjectCopy = v35;
      v24 = v101;
    }

LABEL_25:
    v106 = subjectCopy;
    if (v42 || !subjectCopy)
    {
      if (v42)
      {
        v59 = 0;
LABEL_48:
        v19 = [(IPEventClassificationType *)self properCasedTitleForTitle:v106 locale:v24];

        if (IPDebuggingModeEnabled_once_2 != -1)
        {
          [IPEventClassificationType adjustedEventTitleForMessageUnits:subject:dateInSubject:eventStartDate:useTitleGenerationModel:isGeneratedFromSubject:isGeneratedFromTitleGenerationModel:];
        }

        if (IPDebuggingModeEnabled_sEnabled_2 == 1)
        {
          v69 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v67, v68);
            v69 = _IPLogHandle;
          }

          if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
          {
            v70 = v69;
            defaultTitle4 = [(IPEventClassificationType *)self defaultTitle];
            *buf = 138412546;
            v112 = defaultTitle4;
            v113 = 2112;
            v114 = v106;
            _os_log_impl(&dword_2485E4000, v70, OS_LOG_TYPE_INFO, "Enriched using subject from %@ to %@ #EventClassification", buf, 0x16u);
          }
        }

        if (fromSubject)
        {
          *fromSubject = 1;
        }

        goto LABEL_80;
      }
    }

    else
    {
      v97 = v41;
      v100 = inSubjectCopy;
      v99 = dateCopy;
      v49 = MEMORY[0x277CCACA8];
      identifier2 = [(IPEventClassificationType *)self identifier];
      language3 = [(IPEventClassificationType *)self language];
      v52 = [v49 stringWithFormat:@"%@-%@-%@", identifier2, language3, @"events"];

      v109[0] = MEMORY[0x277D85DD0];
      v109[1] = 3221225472;
      v109[2] = __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke_2;
      v109[3] = &unk_278F233D0;
      v109[4] = self;
      v98 = v52;
      v53 = [IPRegexToolbox regularExpressionWithKey:v52 generator:v109];
      v54 = [IPRegexToolbox firstMatchingKeywordForRegex:v53 inString:subjectCopy needsToLowercase:1];
      v55 = [unitsCopy count];
      if ([v54 length])
      {
        v56 = 1;
      }

      else
      {
        v56 = v55 == 0;
      }

      v57 = v56;
      v96 = v57;
      if (v56)
      {
        v58 = v54;
      }

      else
      {
        v60 = 1;
        do
        {
          v61 = [unitsCopy objectAtIndexedSubscript:v60 - 1];
          text = [v61 text];
          v58 = [IPRegexToolbox firstMatchingKeywordForRegex:v53 inString:text needsToLowercase:1];

          if ([v58 length])
          {
            v63 = 1;
          }

          else
          {
            v63 = v60 >= v55;
          }

          ++v60;
          v54 = v58;
        }

        while (!v63);
      }

      if ([v58 length])
      {
        v59 = v58;
        v64 = v97 & v96;
      }

      else
      {
        v64 = 0;
        v59 = 0;
      }

      inSubjectCopy = v100;

      if (v64)
      {
        dateCopy = v99;
        goto LABEL_48;
      }

      dateCopy = v99;
      if (v59)
      {
        if (IPDebuggingModeEnabled_once_2 != -1)
        {
          [IPEventClassificationType adjustedEventTitleForMessageUnits:subject:dateInSubject:eventStartDate:useTitleGenerationModel:isGeneratedFromSubject:isGeneratedFromTitleGenerationModel:];
        }

        if (IPDebuggingModeEnabled_sEnabled_2 == 1)
        {
          v72 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v65, v66);
            v72 = _IPLogHandle;
          }

          if (os_log_type_enabled(v72, OS_LOG_TYPE_INFO))
          {
            v73 = v72;
            defaultTitle5 = [(IPEventClassificationType *)self defaultTitle];
            *buf = 138412546;
            v112 = defaultTitle5;
            v113 = 2112;
            v114 = v59;
            _os_log_impl(&dword_2485E4000, v73, OS_LOG_TYPE_INFO, "Enrichment from %@ to %@ #EventClassification", buf, 0x16u);
          }
        }

        localeIdentifier = [v24 localeIdentifier];
        v76 = [localeIdentifier isEqualToString:@"fr"];

        if (v76)
        {
          v77 = [objc_alloc(MEMORY[0x277CCAC68]) initWithPattern:@"^[dl]('|’)" options:1 error:0];
          v78 = [v77 stringByReplacingMatchesInString:v59 options:0 range:0 withTemplate:{objc_msgSend(v59, "length"), &stru_285AD0E88}];

          v59 = v78;
        }

        v19 = [(IPEventClassificationType *)self properCasedTitleForTitle:v59 locale:v24];

        goto LABEL_80;
      }
    }

    v19 = defaultTitle;
    if ([defaultTitle length])
    {
      v59 = 0;
    }

    else if (inSubjectCopy && (-[IPEventClassificationType dateWithoutTime:](self, "dateWithoutTime:", dateCopy), v79 = objc_claimAutoreleasedReturnValue(), -[IPEventClassificationType dateWithoutTime:](self, "dateWithoutTime:", inSubjectCopy), v80 = objc_claimAutoreleasedReturnValue(), v81 = [v79 isEqualToDate:v80], v80, v79, !v81))
    {
      v59 = 0;
      v19 = defaultTitle;
    }

    else
    {
      v102 = v24;
      v82 = dateCopy;
      v83 = objc_opt_class();
      language4 = [(IPEventClassificationType *)self language];
      v85 = [v83 taxonomyForLanguageID:language4 clusterType:5];

      v86 = MEMORY[0x277CCACA8];
      identifier3 = [v85 identifier];
      language5 = [(IPEventClassificationType *)self language];
      v89 = [v86 stringWithFormat:@"%@-%@-%@", identifier3, language5, @"generic-events"];

      subjectKeywords2 = [v85 subjectKeywords];
      v91 = [subjectKeywords2 count];

      if (v91)
      {
        v107[0] = MEMORY[0x277D85DD0];
        v107[1] = 3221225472;
        v107[2] = __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke_173;
        v107[3] = &unk_278F23030;
        v107[4] = self;
        v108 = v85;
        v92 = [IPRegexToolbox regularExpressionWithKey:v89 generator:v107];
        v93 = [IPRegexToolbox firstMatchingKeywordForRegex:v92 inString:v106 needsToLowercase:1];
        if ([v93 length])
        {
          v94 = [objc_opt_class() cleanSubject:v106];
        }

        else
        {
          v94 = defaultTitle;
        }
      }

      else
      {
        v94 = defaultTitle;
      }

      v59 = 0;
      v19 = v94;
      dateCopy = v82;
      v24 = v102;
    }

LABEL_80:

    subjectCopy = v106;
    goto LABEL_81;
  }

  v19 = v18;
  if (generationModel)
  {
    *generationModel = 1;
  }

LABEL_81:

  return v19;
}

id __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) language];
  v3 = [*(a1 + 32) subjectKeywords];
  v4 = [IPRegexToolbox regexPatternForLanguageID:v2 eventVocabularyArray:v3];

  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:64 error:0];

  return v5;
}

id __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) language];
  v3 = [*(a1 + 32) titleKeywords];
  v4 = [IPRegexToolbox regexPatternForLanguageID:v2 eventVocabularyArray:v3];

  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:65 error:0];

  return v5;
}

id __183__IPEventClassificationType_adjustedEventTitleForMessageUnits_subject_dateInSubject_eventStartDate_useTitleGenerationModel_isGeneratedFromSubject_isGeneratedFromTitleGenerationModel___block_invoke_173(uint64_t a1)
{
  v2 = [*(a1 + 32) language];
  v3 = [*(a1 + 40) subjectKeywords];
  v4 = [IPRegexToolbox regexPatternForLanguageID:v2 eventVocabularyArray:v3];

  v5 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v4 options:65 error:0];

  return v5;
}

+ (id)titleGenerationModelPredictionForMessageUnits:(id)units
{
  v25 = *MEMORY[0x277D85DE8];
  unitsCopy = units;
  if (_os_feature_enabled_impl())
  {
    firstObject = [unitsCopy firstObject];
    bestLanguageID = [firstObject bestLanguageID];

    v6 = [&unk_285B0FCC0 containsObject:bestLanguageID];
    if (v6)
    {
      firstObject2 = [unitsCopy firstObject];
      originalMessage = [firstObject2 originalMessage];

      v10 = [MEMORY[0x277D01FF0] messageWithIPMessage:originalMessage];
      serviceForIpsos = [MEMORY[0x277D02118] serviceForIpsos];
      v13 = serviceForIpsos;
      v14 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(serviceForIpsos, v12);
        v14 = _IPLogHandle;
      }

      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_2485E4000, v14, OS_LOG_TYPE_DEFAULT, "Getting suggested title from title generation model #EventClassification", &v21, 2u);
      }

      v15 = [v13 titleSuggestionForMessage:v10 error:0];
      v17 = v15;
      v18 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v15, v16);
        v18 = _IPLogHandle;
      }

      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v21 = 138478083;
        v22 = v17;
        v23 = 2113;
        v24 = bestLanguageID;
        _os_log_impl(&dword_2485E4000, v18, OS_LOG_TYPE_DEBUG, "Suggested title=%{private}@ for dominant language=%{private}@ #EventClassification", &v21, 0x16u);
      }
    }

    else
    {
      v19 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v6, v7);
        v19 = _IPLogHandle;
      }

      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = bestLanguageID;
        _os_log_impl(&dword_2485E4000, v19, OS_LOG_TYPE_DEFAULT, "Title generation not supported for language %@ #EventClassification", &v21, 0xCu);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)dateWithoutTime:(id)time
{
  timeCopy = time;
  v4 = timeCopy;
  if (!timeCopy)
  {
    timeCopy = [MEMORY[0x277CBEAA8] date];
    v4 = timeCopy;
  }

  v5 = getCalendar(timeCopy);
  v6 = [v5 components:28 fromDate:v4];

  v8 = getCalendar(v7);
  v9 = [v8 dateFromComponents:v6];

  return v9;
}

- (BOOL)questionMarkInString:(id)string
{
  stringCopy = string;
  v4 = objc_autoreleasePoolPush();
  v5 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"¿?？"];
  v6 = [stringCopy rangeOfCharacterFromSet:v5] != 0x7FFFFFFFFFFFFFFFLL;

  objc_autoreleasePoolPop(v4);
  return v6;
}

+ (id)fallbackEventTitleForMessageUnits:(id)units subject:(id)subject checkForDateInSubject:(BOOL)inSubject
{
  inSubjectCopy = inSubject;
  unitsCopy = units;
  subjectCopy = subject;
  firstObject = [unitsCopy firstObject];
  bestLanguageID = [firstObject bestLanguageID];
  if (bestLanguageID)
  {
    if (([&unk_285B0FCD8 containsObject:bestLanguageID] & 1) == 0)
    {
      if (!inSubjectCopy || (v20 = 0, v21 = &v20, v22 = 0x2020000000, v23 = 0, v19 = 0, [MEMORY[0x277CCA948] dataDetectorWithTypes:8 error:&v19], v12 = objc_claimAutoreleasedReturnValue(), v13 = v19, v14 = objc_msgSend(subjectCopy, "length"), v18[0] = MEMORY[0x277D85DD0], v18[1] = 3221225472, v18[2] = __93__IPEventClassificationType_fallbackEventTitleForMessageUnits_subject_checkForDateInSubject___block_invoke, v18[3] = &unk_278F233F8, v18[4] = &v20, objc_msgSend(v12, "enumerateMatchesInString:options:range:usingBlock:", subjectCopy, 0, 0, v14, v18), v15 = *(v21 + 24), v12, v13, _Block_object_dispose(&v20, 8), (v15 & 1) == 0))
      {
        v16 = [self cleanSubject:subjectCopy];
        if (([v16 length] - 51) > 0xFFFFFFFFFFFFFFD1)
        {
          goto LABEL_8;
        }
      }
    }
  }

  v16 = 0;
LABEL_8:

  return v16;
}

uint64_t __93__IPEventClassificationType_fallbackEventTitleForMessageUnits_subject_checkForDateInSubject___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)unit keywordFeatures:(id)features datafeatures:(id)datafeatures
{
  v243 = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  featuresCopy = features;
  datafeaturesCopy = datafeatures;
  v11 = featuresCopy;
  v174 = datafeaturesCopy;
  if (![featuresCopy count])
  {
    v111 = 0;
    goto LABEL_123;
  }

  v12 = objc_opt_new();
  v190 = objc_opt_new();
  v189 = objc_opt_new();
  v191 = objc_opt_new();
  text = [unitCopy text];
  v14 = v11;
  v15 = [text length];
  originalMessage = [unitCopy originalMessage];
  subject = [originalMessage subject];
  v18 = [subject length];

  originalMessage2 = [unitCopy originalMessage];
  subject2 = [originalMessage2 subject];
  v175 = [subject2 length];

  originalMessage3 = [unitCopy originalMessage];
  type = [originalMessage3 type];
  v178 = [type isEqualToString:IPMessageTypeShortMessage];

  v170 = unitCopy;
  originalMessage4 = [unitCopy originalMessage];
  isReply = [originalMessage4 isReply];

  v218 = 0u;
  v219 = 0u;
  v216 = 0u;
  v217 = 0u;
  v169 = v14;
  v25 = v14;
  v183 = [v25 countByEnumeratingWithState:&v216 objects:v242 count:16];
  if (v183)
  {
    v181 = *v217;
    v26 = (v18 + v15);
    selfCopy = self;
    v172 = isReply;
    v171 = v25;
    do
    {
      for (i = 0; i != v183; i = v35 + 1)
      {
        if (*v217 != v181)
        {
          objc_enumerationMutation(v25);
        }

        obj = i;
        v28 = *(*(&v216 + 1) + 8 * i);
        contextDictionary = [v28 contextDictionary];
        v30 = [contextDictionary objectForKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
        v31 = [v30 isEqual:MEMORY[0x277CBEC38]];

        if ((v31 & isReply) == 1)
        {
          v34 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v32, v33);
            v34 = _IPLogHandle;
          }

          v35 = obj;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
          {
            v36 = v34;
            keywordString = [v28 keywordString];
            *buf = 138412290;
            v227 = keywordString;
            v38 = v36;
            v39 = "      --> ignore matched string: [%@] in subject since message is a reply #EventClassification";
LABEL_22:
            _os_log_impl(&dword_2485E4000, v38, OS_LOG_TYPE_DEBUG, v39, buf, 0xCu);

            continue;
          }
        }

        else
        {
          type2 = [v28 type];
          if (type2 == 1)
          {
            v42 = v31;
          }

          else
          {
            v42 = 1;
          }

          if ((v42 | v178))
          {
            [self _averageDistanceBetweenFeatureKeyword:v28 featureDates:v174 subjectLength:v175 inSubject:v31];
            v44 = (v26 - v43) / v26;
            v45 = [MEMORY[0x277CCABB0] numberWithDouble:v44];
            contextDictionary2 = [v28 contextDictionary];
            [contextDictionary2 setObject:v45 forKeyedSubscript:@"IPFeatureKeywordContextDistanceToDate"];

            if (v31)
            {
              v47 = 1;
            }

            else
            {
              rejectionRanges = [v170 rejectionRanges];
              matchRange = [v28 matchRange];
              v52 = [rejectionRanges intersectsIndexesInRange:{matchRange, v51}];

              if (v52)
              {
                v47 = 4;
              }

              else
              {
                proposalAndAcceptationRanges = [v170 proposalAndAcceptationRanges];
                matchRange2 = [v28 matchRange];
                v56 = [proposalAndAcceptationRanges intersectsIndexesInRange:{matchRange2, v55}];

                if (v56)
                {
                  v47 = 2;
                }

                else
                {
                  v47 = 1;
                }
              }
            }

            keywordString2 = [v28 keywordString];
            v58 = [keywordString2 length];

            v59 = v58 / v26;
            v60 = [MEMORY[0x277CCABB0] numberWithDouble:v59];
            contextDictionary3 = [v28 contextDictionary];
            [contextDictionary3 setObject:v60 forKeyedSubscript:@"IPFeatureKeywordContextMatchedRatio"];

            v62 = [self _scoreForKeywordsInSubject:v31 distanceToDates:v47 polarity:objc_msgSend(v28 matchedRatio:"type") keywordType:{v44, v59}];
            v65 = v64;
            v66 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(v62, v63);
              v66 = _IPLogHandle;
            }

            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEBUG))
            {
              v67 = v66;
              keywordString3 = [v28 keywordString];
              eventTypes = [v28 eventTypes];
              lastObject = [eventTypes lastObject];
              identifier = [lastObject identifier];
              v72 = [IPFeatureSentence humanReadableFeaturePolarity:v47];
              type3 = [v28 type];
              *buf = 138414082;
              v227 = keywordString3;
              v228 = 2112;
              v229 = identifier;
              v230 = 2048;
              v231 = v65;
              v232 = 1024;
              v233 = v31;
              v234 = 2048;
              v235 = v44;
              v236 = 2112;
              v237 = v72;
              v238 = 2048;
              v239 = v59 * 100.0;
              v240 = 2048;
              v241 = type3;
              _os_log_impl(&dword_2485E4000, v67, OS_LOG_TYPE_DEBUG, "      --> matched string: [%@] type:%@ score:%f subject:%d distance:%.2f polarity:%@ matchedRatio:%.2f%% type:%lu #EventClassification", buf, 0x4Eu);
            }

            v214 = 0u;
            v215 = 0u;
            v212 = 0u;
            v213 = 0u;
            eventTypes2 = [v28 eventTypes];
            v75 = [eventTypes2 countByEnumeratingWithState:&v212 objects:v225 count:16];
            if (v75)
            {
              v76 = v75;
              v77 = *v213;
              do
              {
                for (j = 0; j != v76; ++j)
                {
                  if (*v213 != v77)
                  {
                    objc_enumerationMutation(eventTypes2);
                  }

                  v79 = *(*(&v212 + 1) + 8 * j);
                  identifier2 = [v79 identifier];
                  v81 = [v12 objectForKeyedSubscript:identifier2];
                  v82 = v65;
                  if (v81)
                  {
                    identifier3 = [v79 identifier];
                    v84 = [v12 objectForKeyedSubscript:identifier3];
                    [v84 doubleValue];
                    v82 = v65 + v85;
                  }

                  if (v82 > 0.0)
                  {
                    v86 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
                    identifier4 = [v79 identifier];
                    [v12 setObject:v86 forKeyedSubscript:identifier4];

                    identifier5 = [v79 identifier];
                    [v191 setObject:v79 forKeyedSubscript:identifier5];

                    if ([v79 classificationDepth] == 1)
                    {
                      v89 = [MEMORY[0x277CCABB0] numberWithDouble:v82];
                      identifier6 = [v79 identifier];
                      [v190 setObject:v89 forKeyedSubscript:identifier6];

                      identifier7 = [v79 identifier];
                      [v189 setObject:v79 forKeyedSubscript:identifier7];
                    }
                  }
                }

                v76 = [eventTypes2 countByEnumeratingWithState:&v212 objects:v225 count:16];
              }

              while (v76);
            }

            self = selfCopy;
            isReply = v172;
            v25 = v171;
            v35 = obj;
          }

          else
          {
            v48 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(type2, v41);
              v48 = _IPLogHandle;
            }

            v35 = obj;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
            {
              v36 = v48;
              keywordString = [v28 keywordString];
              *buf = 138412290;
              v227 = keywordString;
              v38 = v36;
              v39 = "      --> ignore generic matched string: [%@] #EventClassification";
              goto LABEL_22;
            }
          }
        }
      }

      v183 = [v25 countByEnumeratingWithState:&v216 objects:v242 count:16];
    }

    while (v183);
  }

  v176 = objc_opt_new();
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  obja = v12;
  v92 = [obja countByEnumeratingWithState:&v208 objects:v224 count:16];
  if (!v92)
  {
    goto LABEL_70;
  }

  v93 = v92;
  v184 = *v209;
  do
  {
    for (k = 0; k != v93; ++k)
    {
      if (*v209 != v184)
      {
        objc_enumerationMutation(obja);
      }

      v95 = *(*(&v208 + 1) + 8 * k);
      if ([obja count] < 2 || (objc_msgSend(v95, "isEqualToString:", @"EVENT") & 1) == 0)
      {
        v96 = [v191 objectForKeyedSubscript:v95];
        v204 = 0u;
        v205 = 0u;
        v206 = 0u;
        v207 = 0u;
        children = [v96 children];
        v98 = [children countByEnumeratingWithState:&v204 objects:v223 count:16];
        if (v98)
        {
          v99 = v98;
          v100 = *v205;
LABEL_56:
          v101 = 0;
          while (1)
          {
            if (*v205 != v100)
            {
              objc_enumerationMutation(children);
            }

            identifier8 = [*(*(&v204 + 1) + 8 * v101) identifier];
            v103 = [obja objectForKey:identifier8];

            if (v103)
            {
              break;
            }

            if (v99 == ++v101)
            {
              v99 = [children countByEnumeratingWithState:&v204 objects:v223 count:16];
              if (v99)
              {
                goto LABEL_56;
              }

              goto LABEL_62;
            }
          }

LABEL_66:
        }

        else
        {
LABEL_62:

          v104 = [obja objectForKeyedSubscript:v95];
          [v176 setObject:v104 forKeyedSubscript:v95];

          v107 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v105, v106);
            v107 = _IPLogHandle;
          }

          if (os_log_type_enabled(v107, OS_LOG_TYPE_DEBUG))
          {
            children = v107;
            v108 = [v176 objectForKeyedSubscript:v95];
            *buf = 138412546;
            v227 = v95;
            v228 = 2112;
            v229 = v108;
            _os_log_impl(&dword_2485E4000, children, OS_LOG_TYPE_DEBUG, "%@ score : %@ #EventClassification", buf, 0x16u);

            goto LABEL_66;
          }
        }

        continue;
      }
    }

    v93 = [obja countByEnumeratingWithState:&v208 objects:v224 count:16];
  }

  while (v93);
LABEL_70:

  if ([v176 count] != 1)
  {
    v115 = objc_opt_new();
    v200 = 0u;
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    v117 = v176;
    v180 = [v117 countByEnumeratingWithState:&v200 objects:v222 count:16];
    v182 = v117;
    if (v180)
    {
      v179 = 0;
      v177 = *v201;
      v118 = 0.0;
      do
      {
        v119 = 0;
        do
        {
          if (*v201 != v177)
          {
            objc_enumerationMutation(v117);
          }

          v120 = *(*(&v200 + 1) + 8 * v119);
          v121 = [v191 objectForKeyedSubscript:v120];
          v122 = [v117 objectForKeyedSubscript:v120];
          [v122 doubleValue];
          v124 = v123;

          v185 = v119;
          if (v124 > v118)
          {
            v125 = [v117 objectForKeyedSubscript:v120];
            [v125 doubleValue];
            v118 = v126;

            v127 = v121;
            v179 = v127;
          }

          v198 = 0u;
          v199 = 0u;
          v196 = 0u;
          v197 = 0u;
          v128 = v117;
          v129 = [v128 countByEnumeratingWithState:&v196 objects:v221 count:16];
          if (v129)
          {
            v130 = v129;
            v131 = *v197;
            do
            {
              for (m = 0; m != v130; ++m)
              {
                if (*v197 != v131)
                {
                  objc_enumerationMutation(v128);
                }

                v133 = *(*(&v196 + 1) + 8 * m);
                v134 = [v191 objectForKeyedSubscript:v133];
                [v121 _hasPriorityOverEventType:v134];
                if (v135 > 0.0)
                {
                  v136 = v135;
                  v137 = [v115 objectForKeyedSubscript:v133];

                  if (!v137)
                  {
                    v138 = objc_opt_new();
                    [v115 setObject:v138 forKeyedSubscript:v133];
                  }

                  v139 = [MEMORY[0x277CCABB0] numberWithDouble:v136];
                  v140 = [v115 objectForKeyedSubscript:v133];
                  [v140 setObject:v139 forKeyedSubscript:v120];
                }
              }

              v130 = [v128 countByEnumeratingWithState:&v196 objects:v221 count:16];
            }

            while (v130);
          }

          v119 = v185 + 1;
          v117 = v182;
        }

        while (v185 + 1 != v180);
        v180 = [v128 countByEnumeratingWithState:&v200 objects:v222 count:16];
      }

      while (v180);
    }

    else
    {
      v179 = 0;
      v118 = 0.0;
    }

    v141 = 5;
    v142 = v179;
    while (2)
    {
      identifier9 = [v142 identifier];
      v144 = [v115 objectForKeyedSubscript:identifier9];
      if (v144)
      {
        v145 = v144;
        identifier10 = [v142 identifier];
        v147 = [v115 objectForKeyedSubscript:identifier10];
        v148 = [v147 count];

        if (!v148)
        {
LABEL_113:
          v163 = v142;
          if (!v163)
          {
            v111 = 0;
            goto LABEL_121;
          }

          identifier14 = v163;
          v165 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v163, v164);
            v165 = _IPLogHandle;
          }

          if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
          {
            v166 = v165;
            identifier11 = [identifier14 identifier];
            *buf = 138412290;
            v227 = identifier11;
            _os_log_impl(&dword_2485E4000, v166, OS_LOG_TYPE_DEBUG, "Final event type : %@ #EventClassification", buf, 0xCu);
          }

          v111 = identifier14;
LABEL_119:

LABEL_121:
          goto LABEL_122;
        }

        v194 = 0u;
        v195 = 0u;
        v192 = 0u;
        v193 = 0u;
        identifier12 = [v142 identifier];
        identifier9 = [v115 objectForKeyedSubscript:identifier12];

        v150 = [identifier9 countByEnumeratingWithState:&v192 objects:v220 count:16];
        if (v150)
        {
          v151 = v150;
          v186 = v141;
          v152 = *v193;
LABEL_103:
          v153 = 0;
          while (1)
          {
            if (*v193 != v152)
            {
              objc_enumerationMutation(identifier9);
            }

            v154 = *(*(&v192 + 1) + 8 * v153);
            v155 = [v117 objectForKeyedSubscript:v154];
            [v155 doubleValue];
            v157 = v156;

            identifier13 = [v142 identifier];
            v159 = [v115 objectForKeyedSubscript:identifier13];
            v160 = [v159 objectForKeyedSubscript:v154];
            [v160 doubleValue];
            v162 = v161;

            if (v157 > v118 * (0.6 / v162))
            {
              break;
            }

            ++v153;
            v117 = v182;
            if (v151 == v153)
            {
              v151 = [identifier9 countByEnumeratingWithState:&v192 objects:v220 count:16];
              if (v151)
              {
                goto LABEL_103;
              }

              goto LABEL_112;
            }
          }

          identifier14 = [v191 objectForKeyedSubscript:v154];

          v141 = v186 - 1;
          v142 = identifier14;
          v118 = v157;
          v117 = v182;
          if (v186 != 1)
          {
            continue;
          }

          v111 = 0;
          goto LABEL_119;
        }
      }

      break;
    }

LABEL_112:

    goto LABEL_113;
  }

  allKeys = [v176 allKeys];
  firstObject = [allKeys firstObject];
  v111 = [v191 objectForKeyedSubscript:firstObject];

  v114 = _IPLogHandle;
  if (!_IPLogHandle)
  {
    IPInitLogging(v112, v113);
    v114 = _IPLogHandle;
  }

  if (os_log_type_enabled(v114, OS_LOG_TYPE_DEBUG))
  {
    v115 = v114;
    identifier14 = [v111 identifier];
    *buf = 138412290;
    v227 = identifier14;
    _os_log_impl(&dword_2485E4000, v115, OS_LOG_TYPE_DEBUG, "Final event type : %@ #EventClassification", buf, 0xCu);
    goto LABEL_119;
  }

LABEL_122:
  unitCopy = v170;
  v11 = v169;

LABEL_123:

  return v111;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)unit features:(id)features
{
  v35 = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  featuresCopy = features;
  objc_opt_class();
  v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
  interactedDateRange = [unitCopy interactedDateRange];
  if (interactedDateRange == 0x7FFFFFFFFFFFFFFFLL)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = featuresCopy;
    v10 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * i);
          if (objc_opt_isKindOfClass())
          {
            [v7 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v15 = interactedDateRange;
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = featuresCopy;
    v17 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v30;
      while (2)
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v30 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v29 + 1) + 8 * j);
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v21 matchRange] == v15)
          {
            [v7 addObject:v21];
            goto LABEL_23;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v29 objects:v34 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }
  }

LABEL_23:

  v22 = [self eventClassificationTypeFromMessageUnit:unitCopy features:featuresCopy datafeatures:v7];

  return v22;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)unit features:(id)features datafeatures:(id)datafeatures
{
  v25 = *MEMORY[0x277D85DE8];
  unitCopy = unit;
  featuresCopy = features;
  datafeaturesCopy = datafeatures;
  v11 = objc_opt_new();
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v12 = featuresCopy;
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v20 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v11 addObject:{v17, v20}];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v18 = [self eventClassificationTypeFromMessageUnit:unitCopy keywordFeatures:v11 datafeatures:datafeaturesCopy];

  return v18;
}

+ (double)_scoreForKeywordsInSubject:(BOOL)subject distanceToDates:(double)result polarity:(unint64_t)polarity matchedRatio:(double)ratio keywordType:(unint64_t)type
{
  if (polarity == 4)
  {
    v7 = 0.0;
  }

  else
  {
    if (polarity != 2)
    {
      goto LABEL_6;
    }

    v7 = 1.5;
  }

  result = result * v7;
LABEL_6:
  v8 = result + ratio;
  if (result > 0.0)
  {
    return v8;
  }

  return result;
}

+ (double)_averageDistanceBetweenFeatureKeyword:(id)keyword featureDates:(id)dates subjectLength:(unint64_t)length inSubject:(BOOL)subject
{
  subjectCopy = subject;
  v53 = *MEMORY[0x277D85DE8];
  keywordCopy = keyword;
  datesCopy = dates;
  matchRange = [keywordCopy matchRange];
  v12 = matchRange;
  lengthCopy = length;
  if (subjectCopy)
  {
    matchRange2 = [keywordCopy matchRange];
    [keywordCopy matchRange];
    v15 = v14 + matchRange2;
  }

  else
  {
    v12 = matchRange + length;
    matchRange3 = [keywordCopy matchRange];
    [keywordCopy matchRange];
    v15 = matchRange3 + length + v17;
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  obj = datesCopy;
  v18 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
  if (v18)
  {
    v19 = v18;
    v47 = *v49;
    v20 = v12;
    v21 = v15;
    v22 = 0.0;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v49 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v48 + 1) + 8 * i);
        contextDictionary = [v24 contextDictionary];
        v26 = [contextDictionary objectForKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
        if (v26)
        {
          [v24 contextDictionary];
          v28 = v27 = keywordCopy;
          v29 = [v28 objectForKeyedSubscript:@"IPFeatureKeywordContextExtractedFromSubject"];
          v30 = [v29 BOOLValue] ^ 1;

          keywordCopy = v27;
        }

        else
        {
          v30 = 1;
        }

        matchRange4 = [v24 matchRange];
        v33 = v32;
        v55.location = [keywordCopy matchRange];
        v55.length = v34;
        v54.location = matchRange4;
        v54.length = v33;
        if (!NSIntersectionRange(v54, v55).length)
        {
          matchRange5 = [v24 matchRange];
          v36 = matchRange5;
          if (v30)
          {
            v36 = matchRange5 + lengthCopy;
            matchRange6 = [v24 matchRange];
            [v24 matchRange];
            v39 = matchRange6 + lengthCopy + v38;
          }

          else
          {
            matchRange7 = [v24 matchRange];
            [v24 matchRange];
            v39 = v41 + matchRange7;
          }

          v42 = v39 - v20;
          if (v42 >= v21 - v36)
          {
            v42 = v21 - v36;
          }

          if (v42 < 0.0)
          {
            v42 = -v42;
          }

          v22 = v22 + v42;
        }
      }

      v19 = [obj countByEnumeratingWithState:&v48 objects:v52 count:16];
    }

    while (v19);
  }

  else
  {
    v22 = 0.0;
  }

  v43 = [obj count];
  return v22 / v43;
}

- (double)_hasPriorityOverEventType:(id)type
{
  v43 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  identifier = [(IPEventClassificationType *)self identifier];
  identifier2 = [typeCopy identifier];
  v7 = [identifier isEqual:identifier2];

  v8 = 0.0;
  if ((v7 & 1) == 0)
  {
    if (-[IPEventClassificationType isHighPriority](self, "isHighPriority") && (v9 = [typeCopy isHighPriority], (v9 & 1) == 0))
    {
      v28 = _IPLogHandle;
      if (!_IPLogHandle)
      {
        IPInitLogging(v9, v10);
        v28 = _IPLogHandle;
      }

      v8 = 1.0;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v14 = v28;
        identifier3 = [(IPEventClassificationType *)self identifier];
        identifier4 = [typeCopy identifier];
        v37 = 138412802;
        v38 = identifier3;
        v39 = 2112;
        v40 = identifier4;
        v41 = 2048;
        v42 = 0x3FF0000000000000;
        v17 = "%@ has priority over %@ (high priority flag - weight %f) #EventClassification";
        goto LABEL_23;
      }
    }

    else
    {
      v11 = [typeCopy _isAParentOf:self];
      if (v11)
      {
        v13 = _IPLogHandle;
        if (!_IPLogHandle)
        {
          IPInitLogging(v11, v12);
          v13 = _IPLogHandle;
        }

        v8 = 1.0;
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = v13;
          identifier3 = [(IPEventClassificationType *)self identifier];
          identifier4 = [typeCopy identifier];
          v37 = 138412802;
          v38 = identifier3;
          v39 = 2112;
          v40 = identifier4;
          v41 = 2048;
          v42 = 0x3FF0000000000000;
          v17 = "%@ has priority over %@ (parent priority - weight %f) #EventClassification";
LABEL_23:
          _os_log_impl(&dword_2485E4000, v14, OS_LOG_TYPE_DEBUG, v17, &v37, 0x20u);
        }
      }

      else
      {
        upperPriorityEventTypesIdentifiers = [typeCopy upperPriorityEventTypesIdentifiers];
        identifier5 = [(IPEventClassificationType *)self identifier];
        v20 = [upperPriorityEventTypesIdentifiers objectForKeyedSubscript:identifier5];

        if (v20)
        {
          upperPriorityEventTypesIdentifiers2 = [typeCopy upperPriorityEventTypesIdentifiers];
          identifier6 = [(IPEventClassificationType *)self identifier];
          v23 = [upperPriorityEventTypesIdentifiers2 objectForKeyedSubscript:identifier6];
          [v23 doubleValue];
          v8 = v24;

          v27 = _IPLogHandle;
          if (!_IPLogHandle)
          {
            IPInitLogging(v25, v26);
            v27 = _IPLogHandle;
          }

          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
          {
            v14 = v27;
            identifier3 = [(IPEventClassificationType *)self identifier];
            identifier4 = [typeCopy identifier];
            v37 = 138412802;
            v38 = identifier3;
            v39 = 2112;
            v40 = identifier4;
            v41 = 2048;
            v42 = *&v8;
            v17 = "%@ has priority over %@ (explicit priority rule - weight %f) #EventClassification";
            goto LABEL_23;
          }
        }

        else
        {
          isLowPriority = [typeCopy isLowPriority];
          if (isLowPriority)
          {
            v31 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(isLowPriority, v30);
              v31 = _IPLogHandle;
            }

            v8 = 1.0;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
            {
              v14 = v31;
              identifier3 = [(IPEventClassificationType *)self identifier];
              identifier4 = [typeCopy identifier];
              v37 = 138412802;
              v38 = identifier3;
              v39 = 2112;
              v40 = identifier4;
              v41 = 2048;
              v42 = 0x3FF0000000000000;
              v17 = "%@ has priority over %@ (low priority flag - weight %f) #EventClassification";
              goto LABEL_23;
            }
          }

          else if (-[IPEventClassificationType classificationDepth](self, "classificationDepth") >= 2 && [typeCopy classificationDepth] == 1)
          {
            v34 = IPSOSLogHandle(1, v33);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
            {
              identifier7 = [(IPEventClassificationType *)self identifier];
              identifier8 = [typeCopy identifier];
              v37 = 138412802;
              v38 = identifier7;
              v39 = 2112;
              v40 = identifier8;
              v41 = 2048;
              v42 = 0x3FF0000000000000;
              _os_log_impl(&dword_2485E4000, v34, OS_LOG_TYPE_DEBUG, "%@ has priority over %@ (cluster is low priority - weight %f) #EventClassification", &v37, 0x20u);
            }

            v8 = 1.0;
          }
        }
      }
    }
  }

  return v8;
}

- (BOOL)_isAParentOf:(id)of
{
  parent = [of parent];
  parent2 = parent;
  for (i = parent != 0; parent2 != self && parent2; i = parent2 != 0)
  {
    v7 = parent2;
    parent2 = [(IPEventClassificationType *)parent2 parent];
  }

  return i;
}

+ (id)taxonomyForLanguageID:(id)d clusterType:(unint64_t)type
{
  dCopy = d;
  v7 = [self _identifierForCluster:type];
  v8 = [self taxonomyForLanguageID:dCopy clusterIdentifier:v7];

  return v8;
}

+ (id)taxonomyForLanguageID:(id)d clusterIdentifier:(id)identifier
{
  dCopy = d;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    if (taxonomyForLanguageID_clusterIdentifier___pasOnceToken18 != -1)
    {
      +[IPEventClassificationType taxonomyForLanguageID:clusterIdentifier:];
    }

    result = [taxonomyForLanguageID_clusterIdentifier___pasExprOnceResult result];
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__4;
    v20 = __Block_byref_object_dispose__4;
    v21 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __69__IPEventClassificationType_taxonomyForLanguageID_clusterIdentifier___block_invoke_217;
    v11[3] = &unk_278F23420;
    v14 = &v16;
    v12 = identifierCopy;
    selfCopy = self;
    v13 = dCopy;
    [result runWithLockAcquired:v11];
    v9 = v17[5];

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __69__IPEventClassificationType_taxonomyForLanguageID_clusterIdentifier___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [objc_alloc(MEMORY[0x277D425E8]) initWithBlock:&__block_literal_global_214 idleTimeout:1.0];
  v2 = taxonomyForLanguageID_clusterIdentifier___pasExprOnceResult;
  taxonomyForLanguageID_clusterIdentifier___pasExprOnceResult = v1;

  objc_autoreleasePoolPop(v0);
}

id __69__IPEventClassificationType_taxonomyForLanguageID_clusterIdentifier___block_invoke_2()
{
  v0 = objc_alloc(MEMORY[0x277D425F8]);
  v1 = [objc_alloc(MEMORY[0x277D425D0]) initWithCountLimit:5];
  v2 = [v0 initWithGuardedData:v1];

  return v2;
}

void __69__IPEventClassificationType_taxonomyForLanguageID_clusterIdentifier___block_invoke_217(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [v13 objectForKey:*(a1 + 32)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = v13;
  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [*(a1 + 56) _loadTaxonomyForLanguageID:*(a1 + 40) clusterIdentifier:*(a1 + 32) error:0];
    v9 = [v8 objectForKeyedSubscript:*(a1 + 32)];
    v10 = *(*(a1 + 48) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = *(*(*(a1 + 48) + 8) + 40);
    if (v12)
    {
      [v13 setObject:v12 forKey:*(a1 + 32)];
    }

    objc_autoreleasePoolPop(v7);
    v6 = v13;
  }
}

+ (id)_dateComponentsFromTaxonomyHHMMString:(id)string
{
  v3 = MEMORY[0x277CCAC80];
  stringCopy = string;
  v5 = [[v3 alloc] initWithString:stringCopy];

  v11 = 0;
  if ([v5 scanInt:&v11])
  {
    v6 = (v11 - 1) > 0xB;
  }

  else
  {
    v6 = 1;
  }

  if (v6 || ![v5 scanString:@":" intoString:0])
  {
    v7 = 0;
  }

  else
  {
    v10 = 0;
    v7 = 0;
    if ([v5 scanInt:&v10] && v10 <= 0x3B)
    {
      if ([v5 scanString:@"am" intoString:0] & 1) != 0 || (objc_msgSend(v5, "scanString:intoString:", @"AM", 0))
      {
        v8 = v11 % 12;
LABEL_11:
        v11 = v8;
        v7 = objc_opt_new();
        [v7 setHour:v11];
        [v7 setMinute:v10];
        goto LABEL_13;
      }

      if (([v5 scanString:@"pm" intoString:0] & 1) != 0 || (v7 = 0, objc_msgSend(v5, "scanString:intoString:", @"PM", 0)))
      {
        v8 = v11 % 12 + 12;
        goto LABEL_11;
      }
    }
  }

LABEL_13:

  return v7;
}

+ (id)_loadTaxonomyForLanguageID:(id)d clusterIdentifier:(id)identifier error:(id *)error
{
  v312 = *MEMORY[0x277D85DE8];
  dCopy = d;
  identifierCopy = identifier;
  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v266 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v237 = objc_alloc_init(MEMORY[0x277CBEB18]);
  context = objc_autoreleasePoolPush();
  v236 = identifierCopy;
  v244 = dCopy;
  dCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@-expanded", @"Patterns-EventType", identifierCopy, dCopy];
  v11 = [&unk_285B1A6A0 objectForKeyedSubscript:dCopy];
  if (!v11)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't load taxonomy from file %@", dCopy];
    [v9 setObject:v12 forKeyedSubscript:dCopy];
  }

  v234 = dCopy;
  v238 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v239 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v297 = 0u;
  v298 = 0u;
  v299 = 0u;
  v300 = 0u;
  v13 = v11;
  v271 = v9;
  v242 = [v13 countByEnumeratingWithState:&v297 objects:v311 count:16];
  v243 = v13;
  if (v242)
  {
    v240 = *v298;
    selfCopy = self;
    do
    {
      v14 = 0;
      do
      {
        if (*v298 != v240)
        {
          objc_enumerationMutation(v13);
        }

        v259 = v14;
        v15 = *(*(&v297 + 1) + 8 * v14);
        v16 = [v13 objectForKeyedSubscript:v15];
        v17 = [v16 objectForKeyedSubscript:@"KEYWORDS"];

        if (v17)
        {
          [v239 setObject:v17 forKeyedSubscript:v15];
          if (!error || [v17 count])
          {
            goto LABEL_16;
          }
        }

        else if (!error)
        {
          goto LABEL_16;
        }

        v18 = [v9 objectForKeyedSubscript:@"KEYWORDS"];

        if (!v18)
        {
          v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v9 setObject:v19 forKeyedSubscript:@"KEYWORDS"];
        }

        v20 = [v9 objectForKeyedSubscript:@"KEYWORDS"];
        v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"No keywords associated to identifier : %@", v15];
        [v20 addObject:v21];

LABEL_16:
        v22 = [v13 objectForKeyedSubscript:v15];
        v23 = [v22 objectForKeyedSubscript:@"START_TIME"];

        v255 = v23;
        v257 = v17;
        if (!v23 || ![v23 length])
        {
          errorCopy = 0;
LABEL_22:
          hour = -1;
          minute = -1;
          goto LABEL_23;
        }

        v24 = [self _dateComponentsFromTaxonomyHHMMString:v23];
        if (!v24)
        {
          errorCopy = error;
          if (error)
          {
            v143 = _IPLogHandle;
            if (!_IPLogHandle)
            {
              IPInitLogging(0, v25);
              v143 = _IPLogHandle;
            }

            v144 = v143;
            if (os_log_type_enabled(v144, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543618;
              v308 = v23;
              v309 = 2114;
              v310 = v15;
              _os_log_impl(&dword_2485E4000, v144, OS_LOG_TYPE_ERROR, "ERROR: Invalid start time string: '%{public}@' for identifier: %{public}@ #EventClassification", buf, 0x16u);
            }

            v145 = [v9 objectForKeyedSubscript:@"START_TIME"];

            if (!v145)
            {
              v146 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v146 forKeyedSubscript:@"START_TIME"];
            }

            v147 = [v9 objectForKeyedSubscript:@"START_TIME"];
            v148 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid start time string: '%@' for identifier: %@", v23, v15];
            [v147 addObject:v148];

            errorCopy = 0;
            hour = -1;
            minute = -1;
            goto LABEL_23;
          }

          goto LABEL_22;
        }

        v26 = v24;
        hour = [v24 hour];
        minute = [v26 minute];

        errorCopy = hour > 0;
        if (hour > 11)
        {
          v30 = 2;
          goto LABEL_24;
        }

LABEL_23:
        v30 = 1;
LABEL_24:
        if (errorCopy)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        v253 = v31;
        v32 = [v13 objectForKeyedSubscript:v15];
        v33 = [v32 objectForKeyedSubscript:@"USE_DEFAULT_TIME"];
        bOOLValue = [v33 BOOLValue];

        if (bOOLValue)
        {
          v35 = minute;
        }

        else
        {
          v35 = -1;
        }

        v263 = v35;
        if (bOOLValue)
        {
          v36 = hour;
        }

        else
        {
          v36 = -1;
        }

        v261 = v36;
        v37 = [v13 objectForKeyedSubscript:v15];
        v38 = [v37 objectForKeyedSubscript:@"DURATION"];

        v39 = -1.0;
        if (v38)
        {
          v40 = [v13 objectForKeyedSubscript:v15];
          v41 = [v40 objectForKeyedSubscript:@"DURATION"];
          [v41 doubleValue];
          v43 = v42;

          if (v43 <= 0.0 || v43 > 1440.0)
          {
            if (error)
            {
              v44 = [v9 objectForKeyedSubscript:@"DURATION"];

              if (!v44)
              {
                v45 = objc_alloc_init(MEMORY[0x277CBEB18]);
                [v9 setObject:v45 forKeyedSubscript:@"DURATION"];
              }

              v46 = [v9 objectForKeyedSubscript:@"DURATION"];
              v47 = MEMORY[0x277CCACA8];
              v48 = [v13 objectForKeyedSubscript:v15];
              v49 = [v48 objectForKeyedSubscript:@"DURATION"];
              v50 = [v47 stringWithFormat:@"Invalid duration time string: '%@' for identifier: %@", v49, v15];
              [v46 addObject:v50];
            }
          }

          else
          {
            v39 = v43 * 60.0;
          }
        }

        v51 = [v13 objectForKeyedSubscript:v15];
        v52 = [v51 objectForKeyedSubscript:@"TITLE"];

        if (error && v52)
        {
          if ([v52 length] >= 0xC9)
          {
            v53 = [v9 objectForKeyedSubscript:@"TITLE"];

            if (!v53)
            {
              v54 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v54 forKeyedSubscript:@"TITLE"];
            }

            v55 = [v9 objectForKeyedSubscript:@"TITLE"];
            v56 = [MEMORY[0x277CCACA8] stringWithFormat:@"Too long title string: '%@' for identifier: %@", v52, v15];
            [v55 addObject:v56];
          }

          if (![v52 length])
          {
            v57 = [v9 objectForKeyedSubscript:@"TITLE"];

            if (!v57)
            {
              v58 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v58 forKeyedSubscript:@"TITLE"];
            }

            v59 = [v9 objectForKeyedSubscript:@"TITLE"];
            v60 = [MEMORY[0x277CCACA8] stringWithFormat:@"Empty title string: '%@' for identifier: %@", v52, v15];
            [v59 addObject:v60];
          }
        }

        if (![v52 length])
        {

          v52 = 0;
        }

        v61 = [self _parentFromIdentifier:v15];
        v252 = v61;
        if (v61)
        {
          [v238 setObject:v61 forKeyedSubscript:v15];
        }

        else
        {
          [v237 addObject:v15];
        }

        v269 = v52;
        v62 = [v13 objectForKeyedSubscript:v15];
        v63 = [v62 objectForKeyedSubscript:@"USE_FOR_TIME_ADJUSTMENT"];
        if (v63)
        {
          v64 = [v13 objectForKeyedSubscript:v15];
          v65 = [v64 objectForKeyedSubscript:@"USE_FOR_TIME_ADJUSTMENT"];
          bOOLValue2 = [v65 BOOLValue];
        }

        else
        {
          bOOLValue2 = 0;
        }

        v66 = [v13 objectForKeyedSubscript:v15];
        v67 = [v66 objectForKeyedSubscript:@"START_TIME_MIN"];

        v68 = 0.0;
        v69 = 0.0;
        if (v67)
        {
          v70 = [v13 objectForKeyedSubscript:v15];
          v71 = [v70 objectForKeyedSubscript:@"START_TIME_MIN"];
          v72 = [self _dateComponentsFromTaxonomyHHMMString:v71];

          if (v72)
          {
            hour2 = [v72 hour];
            v69 = (-[v72 minute] - 60 * hour2 + v263 + 60 * v261);
          }

          v75 = v69 < 0.0 || v72 == 0;
          if (error && v75)
          {
            v76 = [v9 objectForKeyedSubscript:@"START_TIME_MIN"];

            if (!v76)
            {
              v77 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v77 forKeyedSubscript:@"START_TIME_MIN"];
            }

            v78 = [v9 objectForKeyedSubscript:@"START_TIME_MIN"];
            v79 = MEMORY[0x277CCACA8];
            v80 = [v13 objectForKeyedSubscript:v15];
            v81 = [v80 objectForKeyedSubscript:@"START_TIME_MIN"];
            v82 = [v79 stringWithFormat:@"Invalid start time  min string: '%@' for identifier: %@", v81, v15];
            [v78 addObject:v82];

            v69 = 0.0;
          }
        }

        v83 = [v13 objectForKeyedSubscript:v15];
        v84 = [v83 objectForKeyedSubscript:@"START_TIME_MAX"];

        if (v84)
        {
          v85 = [v13 objectForKeyedSubscript:v15];
          v86 = [v85 objectForKeyedSubscript:@"START_TIME_MAX"];
          v87 = [self _dateComponentsFromTaxonomyHHMMString:v86];

          if (v87)
          {
            hour3 = [v87 hour];
            v68 = ([v87 minute] - (v263 + 60 * v261) + 60 * hour3);
          }

          v90 = v68 < 0.0 || v87 == 0;
          if (error && v90)
          {
            v91 = [v9 objectForKeyedSubscript:@"START_TIME_MAX"];

            if (!v91)
            {
              v92 = objc_alloc_init(MEMORY[0x277CBEB18]);
              [v9 setObject:v92 forKeyedSubscript:@"START_TIME_MAX"];
            }

            v93 = [v9 objectForKeyedSubscript:@"START_TIME_MAX"];
            v94 = MEMORY[0x277CCACA8];
            v95 = [v13 objectForKeyedSubscript:v15];
            v96 = [v95 objectForKeyedSubscript:@"START_TIME_MAX"];
            v97 = [v94 stringWithFormat:@"Invalid start time  max string: '%@' for identifier: %@", v96, v15];
            [v93 addObject:v97];

            v68 = 0.0;
          }
        }

        v98 = [v13 objectForKeyedSubscript:v15];
        v99 = [v98 objectForKeyedSubscript:@"ALLDAY_ALLOWED"];
        if (v99)
        {
          v100 = [v13 objectForKeyedSubscript:v15];
          v101 = [v100 objectForKeyedSubscript:@"ALLDAY_ALLOWED"];
          bOOLValue3 = [v101 BOOLValue];
        }

        else
        {
          bOOLValue3 = 0;
        }

        v102 = [v13 objectForKeyedSubscript:v15];
        v103 = [v102 objectForKeyedSubscript:@"SUBJECT_KEYWORDS"];

        v104 = objc_opt_new();
        if ([v103 length])
        {
          [v104 addObject:v103];
        }

        v250 = v103;
        if (v269 && [v269 length])
        {
          lowercaseString = [v269 lowercaseString];
          [v104 addObject:lowercaseString];
        }

        v106 = [v13 objectForKeyedSubscript:v15];
        v248 = [v106 objectForKeyedSubscript:@"TITLE_SENDER_TEMPLATE"];

        v107 = [v13 objectForKeyedSubscript:v15];
        v108 = [v107 objectForKeyedSubscript:@"ALLOW_GENERIC_PATTERNS_KEYWORDS"];
        if (v108)
        {
          v109 = [v13 objectForKeyedSubscript:v15];
          v110 = [v109 objectForKeyedSubscript:@"ALLOW_GENERIC_PATTERNS_KEYWORDS"];
          bOOLValue4 = [v110 BOOLValue];
        }

        else
        {
          bOOLValue4 = 1;
        }

        v111 = [v13 objectForKeyedSubscript:v15];
        v112 = [v111 objectForKeyedSubscript:@"MOVIE_RELATED"];
        if (v112)
        {
          v113 = [v13 objectForKeyedSubscript:v15];
          v114 = [v113 objectForKeyedSubscript:@"MOVIE_RELATED"];
          bOOLValue5 = [v114 BOOLValue];
        }

        else
        {
          bOOLValue5 = 0;
        }

        v115 = [v13 objectForKeyedSubscript:v15];
        v116 = [v115 objectForKeyedSubscript:@"MEAL_RELATED"];
        if (v116)
        {
          v117 = [v13 objectForKeyedSubscript:v15];
          v118 = [v117 objectForKeyedSubscript:@"MEAL_RELATED"];
          bOOLValue6 = [v118 BOOLValue];
        }

        else
        {
          bOOLValue6 = 0;
        }

        v119 = [v13 objectForKeyedSubscript:v15];
        v120 = [v119 objectForKeyedSubscript:@"CULTURE_RELATED"];
        if (v120)
        {
          v121 = [v13 objectForKeyedSubscript:v15];
          v122 = [v121 objectForKeyedSubscript:@"CULTURE_RELATED"];
          bOOLValue7 = [v122 BOOLValue];
        }

        else
        {
          bOOLValue7 = 0;
        }

        v124 = [v13 objectForKeyedSubscript:v15];
        v125 = [v124 objectForKeyedSubscript:@"SPORT_RELATED"];
        if (v125)
        {
          v126 = [v13 objectForKeyedSubscript:v15];
          v127 = [v126 objectForKeyedSubscript:@"SPORT_RELATED"];
          bOOLValue8 = [v127 BOOLValue];

          v13 = v243;
        }

        else
        {
          bOOLValue8 = 0;
        }

        v129 = [v13 objectForKeyedSubscript:v15];
        v130 = [v129 objectForKeyedSubscript:@"FAIRLY_GENERIC"];
        if (v130)
        {
          v131 = [v13 objectForKeyedSubscript:v15];
          v132 = [v131 objectForKeyedSubscript:@"FAIRLY_GENERIC"];
          v133 = v13;
          bOOLValue9 = [v132 BOOLValue];
        }

        else
        {
          v133 = v13;
          bOOLValue9 = 0;
        }

        v135 = [v133 objectForKeyedSubscript:v15];
        v136 = [v135 objectForKeyedSubscript:@"APPOINTMENT_RELATED"];
        if (v136)
        {
          v137 = [v133 objectForKeyedSubscript:v15];
          v138 = [v137 objectForKeyedSubscript:@"APPOINTMENT_RELATED"];
          bOOLValue10 = [v138 BOOLValue];
        }

        else
        {
          bOOLValue10 = 0;
        }

        v9 = v271;

        v140 = [IPEventClassificationType alloc];
        v141 = objc_opt_new();
        LOBYTE(v233) = bOOLValue10;
        HIBYTE(v232) = bOOLValue9;
        BYTE6(v232) = bOOLValue8;
        BYTE5(v232) = bOOLValue7;
        BYTE4(v232) = bOOLValue6;
        BYTE3(v232) = bOOLValue5;
        BYTE2(v232) = bOOLValue4;
        BYTE1(v232) = bOOLValue3;
        LOBYTE(v232) = bOOLValue2;
        v142 = [IPEventClassificationType initWithIdentifier:v140 language:"initWithIdentifier:language:patternKeywords:titleKeywords:subjectKeywords:defaultTitle:titleSenderTemplate:defaultStartingTimeHour:defaultStartingTimeMinutes:defaultDuration:preferedMeridian:parent:children:useForTimeAdjustement:minutesBeforeDefaultStartingTime:minutesAfterDefaultStartingTime:allDayAllowed:useGenericPatternsInClassification:movieRelated:mealRelated:cultureRelated:sportRelated:fairlyGeneric:appointmentRelated:" patternKeywords:v15 titleKeywords:v244 subjectKeywords:v257 defaultTitle:v141 titleSenderTemplate:v104 defaultStartingTimeHour:v269 defaultStartingTimeMinutes:v39 defaultDuration:v69 preferedMeridian:v68 parent:v248 children:__PAIR64__(v263 useForTimeAdjustement:v261) minutesBeforeDefaultStartingTime:v253 minutesAfterDefaultStartingTime:0 allDayAllowed:0 useGenericPatternsInClassification:v232 movieRelated:v233 mealRelated:? cultureRelated:? sportRelated:? fairlyGeneric:? appointmentRelated:?];

        [v266 setObject:v142 forKeyedSubscript:v15];
        v14 = v259 + 1;
        v13 = v243;
        self = selfCopy;
      }

      while (v242 != v259 + 1);
      v149 = [v243 countByEnumeratingWithState:&v297 objects:v311 count:16];
      v242 = v149;
    }

    while (v149);
  }

  v295 = 0u;
  v296 = 0u;
  v293 = 0u;
  v294 = 0u;
  v150 = v238;
  v151 = [v150 countByEnumeratingWithState:&v293 objects:v306 count:16];
  v258 = v150;
  if (!v151)
  {
    goto LABEL_145;
  }

  v152 = v151;
  v153 = *v294;
  do
  {
    for (i = 0; i != v152; ++i)
    {
      if (*v294 != v153)
      {
        objc_enumerationMutation(v150);
      }

      v155 = *(*(&v293 + 1) + 8 * i);
      v156 = [v150 objectForKeyedSubscript:v155];
      if (v156 && ([v266 objectForKeyedSubscript:v155], (v157 = objc_claimAutoreleasedReturnValue()) != 0) && (v158 = v157, objc_msgSend(v266, "objectForKeyedSubscript:", v156), v159 = objc_claimAutoreleasedReturnValue(), v159, v158, v159))
      {
        v160 = [v266 objectForKeyedSubscript:v155];
        v161 = [v266 objectForKeyedSubscript:v156];
        [v160 _addParent:v161];

        v162 = [v266 objectForKeyedSubscript:v156];
        v150 = v258;
        v155 = [v266 objectForKeyedSubscript:v155];
        [v162 _addChild:v155];
      }

      else
      {
        if (!error)
        {
          goto LABEL_143;
        }

        v164 = [v9 objectForKeyedSubscript:@"PARENT"];

        if (!v164)
        {
          v165 = objc_alloc_init(MEMORY[0x277CBEB18]);
          [v9 setObject:v165 forKeyedSubscript:@"PARENT"];
        }

        v162 = [v9 objectForKeyedSubscript:@"PARENT"];
        v155 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid parent %@ for node %@", v156, v155];
        [v162 addObject:v155];
      }

LABEL_143:
    }

    v152 = [v150 countByEnumeratingWithState:&v293 objects:v306 count:16];
  }

  while (v152);
LABEL_145:

  v244 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@-%@-expanded", @"Events-EventType", v236, v244];
  v256 = [&unk_285B1A6A0 objectForKeyedSubscript:?];
  if (v256)
  {
    v291 = 0u;
    v292 = 0u;
    v289 = 0u;
    v290 = 0u;
    v166 = v256;
    v167 = [v166 countByEnumeratingWithState:&v289 objects:v305 count:16];
    if (v167)
    {
      v168 = v167;
      v169 = *v290;
      do
      {
        for (j = 0; j != v168; ++j)
        {
          if (*v290 != v169)
          {
            objc_enumerationMutation(v166);
          }

          v171 = *(*(&v289 + 1) + 8 * j);
          v172 = [v166 objectForKeyedSubscript:v171];
          if ([v172 count])
          {
            v173 = [v266 objectForKeyedSubscript:v171];

            if (v173)
            {
              v174 = [v266 objectForKeyedSubscript:v171];
              [v174 addEventPatterns:v172];
            }
          }
        }

        v168 = [v166 countByEnumeratingWithState:&v289 objects:v305 count:16];
      }

      while (v168);
    }
  }

  v287 = 0u;
  v288 = 0u;
  v285 = 0u;
  v286 = 0u;
  v175 = v266;
  v176 = [v175 countByEnumeratingWithState:&v285 objects:v304 count:16];
  if (v176)
  {
    v177 = v176;
    v178 = *v286;
    do
    {
      for (k = 0; k != v177; ++k)
      {
        if (*v286 != v178)
        {
          objc_enumerationMutation(v175);
        }

        v180 = [v175 objectForKeyedSubscript:*(*(&v285 + 1) + 8 * k)];
        parent = [v180 parent];
        if (parent)
        {
          v182 = parent;
          do
          {
            patternKeywords = [v182 patternKeywords];
            patternKeywords2 = [v180 patternKeywords];
            [patternKeywords addObjectsFromArray:patternKeywords2];

            titleKeywords = [v182 titleKeywords];
            titleKeywords2 = [v180 titleKeywords];
            [titleKeywords addObjectsFromArray:titleKeywords2];

            genericPatternKeywords = [v182 genericPatternKeywords];
            genericPatternKeywords2 = [v180 genericPatternKeywords];
            [genericPatternKeywords addObjectsFromArray:genericPatternKeywords2];

            subjectKeywords = [v180 subjectKeywords];
            subjectKeywords2 = [v182 subjectKeywords];
            [subjectKeywords addObjectsFromArray:subjectKeywords2];

            parent2 = [v182 parent];

            v182 = parent2;
          }

          while (parent2);
        }
      }

      v177 = [v175 countByEnumeratingWithState:&v285 objects:v304 count:16];
    }

    while (v177);
  }

  v2442 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", @"Events-Priorities", v244];
  v192 = [&unk_285B1A6A0 objectForKeyedSubscript:?];
  if (!v192)
  {
    v270 = [MEMORY[0x277CCACA8] stringWithFormat:@"Can't load priority rules from file %@", v2442];
    [v9 setObject:v270 forKeyedSubscript:v2442];
  }

  v283 = 0u;
  v284 = 0u;
  v281 = 0u;
  v282 = 0u;
  v194 = v192;
  v262 = v194;
  v264 = [v194 countByEnumeratingWithState:&v281 objects:v303 count:16];
  if (v264)
  {
    v260 = *v282;
    do
    {
      v195 = 0;
      do
      {
        if (*v282 != v260)
        {
          objc_enumerationMutation(v194);
        }

        v267 = v195;
        v196 = *(*(&v281 + 1) + 8 * v195);
        v197 = [v194 objectForKeyedSubscript:v196];
        v277 = 0u;
        v278 = 0u;
        v279 = 0u;
        v280 = 0u;
        v198 = v197;
        v199 = [v198 countByEnumeratingWithState:&v277 objects:v302 count:16];
        if (v199)
        {
          v200 = v199;
          v201 = *v278;
          do
          {
            for (m = 0; m != v200; ++m)
            {
              if (*v278 != v201)
              {
                objc_enumerationMutation(v198);
              }

              v203 = *(*(&v277 + 1) + 8 * m);
              v204 = [v198 objectForKeyedSubscript:v203];
              if ([v203 isEqualToString:@"ALL"] && (objc_msgSend(v175, "objectForKeyedSubscript:", v196), v205 = objc_claimAutoreleasedReturnValue(), v205, v205))
              {
                v206 = [v175 objectForKeyedSubscript:v196];
                [v206 setHighPriority:1];
              }

              else if ([v196 isEqualToString:@"ALL"] && (objc_msgSend(v175, "objectForKeyedSubscript:", v203), v207 = objc_claimAutoreleasedReturnValue(), v207, v207))
              {
                v206 = [v175 objectForKeyedSubscript:v203];
                [v206 setLowPriority:1];
              }

              else
              {
                v208 = [v175 objectForKeyedSubscript:v203];

                if (v208)
                {
                  v206 = [v175 objectForKeyedSubscript:v203];
                  [v206 _addUpperPriorityEventTypeIdentifier:v196 weight:v204];
                }

                else
                {
                  if (!error)
                  {
                    goto LABEL_190;
                  }

                  v206 = [v271 objectForKeyedSubscript:v2442];
                  v203 = [MEMORY[0x277CCACA8] stringWithFormat:@"Odd priority rule : %@ > %@", v196, v203];
                  [v206 addObject:v203];
                }
              }

LABEL_190:
            }

            v200 = [v198 countByEnumeratingWithState:&v277 objects:v302 count:16];
          }

          while (v200);
        }

        v195 = v267 + 1;
        v194 = v262;
      }

      while (v267 + 1 != v264);
      v264 = [v262 countByEnumeratingWithState:&v281 objects:v303 count:16];
    }

    while (v264);
  }

  if (error)
  {
    v275 = 0u;
    v276 = 0u;
    v273 = 0u;
    v274 = 0u;
    v210 = v175;
    v268 = [v210 countByEnumeratingWithState:&v273 objects:v301 count:16];
    if (v268)
    {
      v211 = *v274;
      v265 = v210;
      do
      {
        for (n = 0; n != v268; ++n)
        {
          if (*v274 != v211)
          {
            objc_enumerationMutation(v210);
          }

          v213 = *(*(&v273 + 1) + 8 * n);
          v214 = [v210 objectForKeyedSubscript:v213];
          patternKeywords3 = [v214 patternKeywords];

          v216 = [IPRegexToolbox regexPatternForLanguageID:v244 eventVocabularyArray:patternKeywords3];
          lowercaseString2 = [v216 lowercaseString];
          v218 = [lowercaseString2 isEqualToString:v216];

          if ((v218 & 1) == 0)
          {
            v219 = [v271 objectForKeyedSubscript:@"REGEX"];

            if (!v219)
            {
              v220 = objc_opt_new();
              [v271 setObject:v220 forKeyedSubscript:@"REGEX"];
            }

            v221 = [v271 objectForKeyedSubscript:@"REGEX"];
            v216 = [MEMORY[0x277CCACA8] stringWithFormat:@"Upper case characters in regex for : %@ : %@", v213, v216];
            [v221 addObject:v216];
          }

          v223 = [MEMORY[0x277CCAC68] regularExpressionWithPattern:v216 options:0 error:0];
          if (!v223)
          {
            v224 = v211;
            v225 = [v271 objectForKeyedSubscript:@"REGEX"];

            if (!v225)
            {
              v226 = objc_opt_new();
              [v271 setObject:v226 forKeyedSubscript:@"REGEX"];
            }

            v227 = [v271 objectForKeyedSubscript:@"REGEX"];
            v2162 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid regex for : %@ : %@", v213, v216];
            [v227 addObject:v2162];

            v211 = v224;
            v210 = v265;
          }
        }

        v268 = [v210 countByEnumeratingWithState:&v273 objects:v301 count:16];
      }

      while (v268);
    }

    objc_autoreleasePoolPop(context);
    v229 = v271;
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:@"IPEventClassification" code:-1 userInfo:v271];
  }

  else
  {

    objc_autoreleasePoolPop(context);
    v229 = v271;
  }

  v230 = v175;

  return v175;
}

+ (id)allClusterIdentifiers
{
  v4[5] = *MEMORY[0x277D85DE8];
  v4[0] = @"GATHERING";
  v4[1] = @"APPOINTMENT";
  v4[2] = @"ENTERTAINMENT";
  v4[3] = @"ARRANGEMENT";
  v4[4] = @"EVENT";
  v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)_parentFromIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v4 = objc_alloc(MEMORY[0x277CBEB18]);
    v5 = [identifierCopy componentsSeparatedByString:@"::"];
    v6 = [v4 initWithArray:v5];

    if ([v6 count] >= 2)
    {
      [v6 removeLastObject];
      v7 = [v6 _pas_componentsJoinedByString:@"::"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_identifierForCluster:(unint64_t)cluster
{
  if (cluster - 1 > 4)
  {
    return @"None";
  }

  else
  {
    return off_278F23440[cluster - 1];
  }
}

+ (id)_identifiersForClusters:(id)clusters
{
  v18 = *MEMORY[0x277D85DE8];
  clustersCopy = clusters;
  v5 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = clustersCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [self _identifierForCluster:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "integerValue", v13)}];
        [v5 appendString:v11];

        [v5 appendString:@" "];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_mealClassificationTypeUsingStartDate:(id)date
{
  v43 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  v5 = getCalendar(dateCopy);
  v6 = [v5 components:96 fromDate:dateCopy];

  hour = [v6 hour];
  minute = [v6 minute];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  children = [(IPEventClassificationType *)self children];
  v10 = [children countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = minute + 60 * hour;
    v13 = *v33;
    v14 = v12;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v13)
        {
          objc_enumerationMutation(children);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        if ([v16 useForTimeAdjustement])
        {
          defaultCumulativeMinutes = [v16 defaultCumulativeMinutes];
          [v16 minutesBeforeDefaultStartingTime];
          if (defaultCumulativeMinutes - v18 <= v14)
          {
            defaultCumulativeMinutes2 = [v16 defaultCumulativeMinutes];
            minutesAfterDefaultStartingTime = [v16 minutesAfterDefaultStartingTime];
            if (v22 + defaultCumulativeMinutes2 >= v14)
            {
              if (IPDebuggingModeEnabled_once_2 != -1)
              {
                [IPEventClassificationType adjustedEventTitleForMessageUnits:subject:dateInSubject:eventStartDate:useTitleGenerationModel:isGeneratedFromSubject:isGeneratedFromTitleGenerationModel:];
              }

              if (IPDebuggingModeEnabled_sEnabled_2 == 1)
              {
                v27 = _IPLogHandle;
                if (!_IPLogHandle)
                {
                  IPInitLogging(minutesAfterDefaultStartingTime, v21);
                  v27 = _IPLogHandle;
                }

                if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
                {
                  v28 = v27;
                  identifier = [(IPEventClassificationType *)self identifier];
                  identifier2 = [v16 identifier];
                  *buf = 138412802;
                  v37 = identifier;
                  v38 = 2112;
                  v39 = identifier2;
                  v40 = 2112;
                  v41 = dateCopy;
                  _os_log_impl(&dword_2485E4000, v28, OS_LOG_TYPE_INFO, "Adjustment from %@ to %@ using starting time %@ #EventClassification", buf, 0x20u);
                }
              }

              selfCopy = v16;

              goto LABEL_27;
            }
          }
        }
      }

      v11 = [children countByEnumeratingWithState:&v32 objects:v42 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  if (IPDebuggingModeEnabled_once_2 != -1)
  {
    [IPEventClassificationType adjustedEventTitleForMessageUnits:subject:dateInSubject:eventStartDate:useTitleGenerationModel:isGeneratedFromSubject:isGeneratedFromTitleGenerationModel:];
  }

  if (IPDebuggingModeEnabled_sEnabled_2 == 1)
  {
    v25 = _IPLogHandle;
    if (!_IPLogHandle)
    {
      IPInitLogging(v23, v24);
      v25 = _IPLogHandle;
    }

    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v37 = dateCopy;
      _os_log_impl(&dword_2485E4000, v25, OS_LOG_TYPE_INFO, "No Adjustment possible using starting time %@ #EventClassification", buf, 0xCu);
    }
  }

  selfCopy = self;
LABEL_27:

  return selfCopy;
}

- (unint64_t)classificationDepth
{
  result = self->_classificationDepth;
  if (!result)
  {
    selfCopy = self;
    parent = [(IPEventClassificationType *)selfCopy parent];

    v6 = 1;
    if (parent)
    {
      v7 = selfCopy;
      do
      {
        selfCopy = [(IPEventClassificationType *)v7 parent];

        ++v6;
        parent2 = [(IPEventClassificationType *)selfCopy parent];

        v7 = selfCopy;
      }

      while (parent2);
    }

    self->_classificationDepth = v6;

    return self->_classificationDepth;
  }

  return result;
}

+ (id)morePreciseEventClassificationTypeBetweenType:(id)type and:(id)and
{
  typeCopy = type;
  andCopy = and;
  v7 = typeCopy;
  if (typeCopy != andCopy)
  {
    defaultTitle = [typeCopy defaultTitle];
    if (!defaultTitle || (v9 = defaultTitle, [andCopy defaultTitle], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v7 = typeCopy, v10))
    {
      defaultTitle2 = [andCopy defaultTitle];
      if (!defaultTitle2 || (v12 = defaultTitle2, [typeCopy defaultTitle], v13 = objc_claimAutoreleasedReturnValue(), v13, v12, v7 = andCopy, v13))
      {
        classificationDepth = [typeCopy classificationDepth];
        if (classificationDepth >= [andCopy classificationDepth])
        {
          v7 = typeCopy;
        }

        else
        {
          v7 = andCopy;
        }
      }
    }
  }

  v15 = v7;

  return v7;
}

+ (id)cleanSubject:(id)subject
{
  subjectCopy = subject;
  v4 = objc_autoreleasePoolPush();
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v6 = [whitespaceCharacterSet mutableCopy];

  [v6 addCharactersInString:{@", .;:：。"}];
  v7 = +[IPRegexToolbox emailSubjectPrefixRegex];
  v8 = [v7 stringByReplacingMatchesInString:subjectCopy options:0 range:0 withTemplate:{objc_msgSend(subjectCopy, "length"), &stru_285AD0E88}];

  v9 = [v8 stringByTrimmingCharactersInSet:v6];

  objc_autoreleasePoolPop(v4);

  return v9;
}

- (BOOL)isDateWithinRange:(id)range
{
  rangeCopy = range;
  [(IPEventClassificationType *)self minutesBeforeDefaultStartingTime];
  if (v5 == 0.0 || (v6 = [(IPEventClassificationType *)self minutesAfterDefaultStartingTime], v7 == 0.0))
  {
    v14 = 1;
  }

  else
  {
    v8 = getCalendar(v6);
    v9 = [v8 components:96 fromDate:rangeCopy];

    hour = [v9 hour];
    v11 = ([v9 minute] + 60 * hour);
    defaultCumulativeMinutes = [(IPEventClassificationType *)self defaultCumulativeMinutes];
    [(IPEventClassificationType *)self minutesBeforeDefaultStartingTime];
    if (defaultCumulativeMinutes - v13 <= v11)
    {
      defaultCumulativeMinutes2 = [(IPEventClassificationType *)self defaultCumulativeMinutes];
      [(IPEventClassificationType *)self minutesAfterDefaultStartingTime];
      v14 = v16 + defaultCumulativeMinutes2 >= v11;
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

+ (id)eventTypeForMoviesAndLanguageID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [self taxonomyForLanguageID:d clusterType:2];
  children = [v3 children];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = children;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:@"ENTERTAINMENT::MOVIES"];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)eventTypeForSportAndLanguageID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [self taxonomyForLanguageID:d clusterType:2];
  children = [v3 children];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = children;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:@"ENTERTAINMENT::SPORT"];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)eventTypeForCultureAndLanguageID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [self taxonomyForLanguageID:d clusterType:2];
  children = [v3 children];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = children;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:@"ENTERTAINMENT::CULTURE"];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)eventTypeForMealsAndLanguageID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [self taxonomyForLanguageID:d clusterType:1];
  children = [v3 children];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = children;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        identifier = [v10 identifier];
        v12 = [identifier isEqualToString:@"GATHERING::MEAL"];

        if (v12)
        {
          v13 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

+ (id)eventClassificationTypeFromMessageUnit:(id)unit detectedStartDate:(id)date
{
  dateCopy = date;
  unitCopy = unit;
  features = [unitCopy features];
  v9 = [self eventClassificationTypeFromMessageUnit:unitCopy features:features];

  v10 = [v9 adjustedEventClassificationTypeWithStartDate:dateCopy];

  return v10;
}

- (id)adjustedEventTitleForMessageUnits:(id)units subject:(id)subject isDateInSubject:(BOOL)inSubject
{
  inSubjectCopy = inSubject;
  unitsCopy = units;
  subjectCopy = subject;
  if (inSubjectCopy)
  {
    date = [MEMORY[0x277CBEAA8] date];
  }

  else
  {
    date = 0;
  }

  v11 = [(IPEventClassificationType *)self adjustedEventTitleForMessageUnits:unitsCopy subject:subjectCopy dateInSubject:date eventStartDate:0 isGeneratedFromSubject:0];

  return v11;
}

+ (id)humanReadableClusterType:(unint64_t)type
{
  if (type - 1 > 5)
  {
    return @"None";
  }

  else
  {
    return off_278F23468[type - 1];
  }
}

- (IPEventClassificationType)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end