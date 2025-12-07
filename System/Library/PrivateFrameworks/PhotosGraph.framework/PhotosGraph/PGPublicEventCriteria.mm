@interface PGPublicEventCriteria
- (BOOL)_hasSufficientTimeOverlapForEvent:(id)event matchingOptions:(id)options;
- (BOOL)_isMatchingMeaningDisambiguationForEvent:(id)event matchingOptions:(id)options withHighConfidence:(BOOL *)confidence;
- (BOOL)_promoteToHighConfidenceBasedOnEvent:(id)event;
- (BOOL)hasMinimumAttendance;
- (BOOL)isMatchingEvent:(id)event matchingOptions:(id)options withHighConfidence:(BOOL *)confidence matchingDistance:(double *)distance;
- (PGPublicEventCriteria)initWithLoggingConnection:(id)connection;
- (id)_localizedEventNameTerms:(id)terms;
- (id)_localizedSubcategoryTerms:(id)terms;
@end

@implementation PGPublicEventCriteria

- (id)_localizedEventNameTerms:(id)terms
{
  termsCopy = terms;
  if ([termsCopy isEqualToString:@"en"])
  {
    v4 = &unk_284485E20;
  }

  else if ([termsCopy isEqualToString:@"de"])
  {
    v4 = &unk_284485E38;
  }

  else if ([termsCopy isEqualToString:@"fr"])
  {
    v4 = &unk_284485E50;
  }

  else if ([termsCopy isEqualToString:@"ja"])
  {
    v4 = &unk_284485E68;
  }

  else if ([termsCopy isEqualToString:@"zh"])
  {
    v4 = &unk_284485E80;
  }

  else if ([termsCopy isEqualToString:@"nl"])
  {
    v4 = &unk_284485E98;
  }

  else if ([termsCopy isEqualToString:@"it"])
  {
    v4 = &unk_284485EB0;
  }

  else if ([termsCopy isEqualToString:@"ko"])
  {
    v4 = &unk_284485EC8;
  }

  else if ([termsCopy isEqualToString:@"es"])
  {
    v4 = &unk_284485EE0;
  }

  else if ([termsCopy isEqualToString:@"ar"])
  {
    v4 = &unk_284485EF8;
  }

  else if ([termsCopy isEqualToString:@"pt"])
  {
    v4 = &unk_284485F10;
  }

  else if ([termsCopy isEqualToString:@"ru"])
  {
    v4 = &unk_284485F28;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  if ([termsCopy isEqualToString:@"da"])
  {
    v4 = &unk_284485F40;
  }

  if ([termsCopy isEqualToString:@"nb"])
  {
    v4 = &unk_284485F58;
  }

  if ([termsCopy isEqualToString:@"pl"])
  {
    v4 = &unk_284485F70;
  }

  if ([termsCopy isEqualToString:@"sv"])
  {
    v4 = &unk_284485F88;
  }

  if ([termsCopy isEqualToString:@"tr"])
  {
    v4 = &unk_284485FA0;
  }

  if ([termsCopy isEqualToString:@"fi"])
  {
    v4 = &unk_284485FB8;
  }

  return v4;
}

- (id)_localizedSubcategoryTerms:(id)terms
{
  termsCopy = terms;
  if ([termsCopy isEqualToString:@"en"])
  {
    v4 = &unk_284485C70;
  }

  else if ([termsCopy isEqualToString:@"de"])
  {
    v4 = &unk_284485C88;
  }

  else if ([termsCopy isEqualToString:@"fr"])
  {
    v4 = &unk_284485CA0;
  }

  else if ([termsCopy isEqualToString:@"ja"])
  {
    v4 = &unk_284485CB8;
  }

  else if ([termsCopy isEqualToString:@"zh"])
  {
    v4 = &unk_284485CD0;
  }

  else if ([termsCopy isEqualToString:@"nl"])
  {
    v4 = &unk_284485CE8;
  }

  else if ([termsCopy isEqualToString:@"it"])
  {
    v4 = &unk_284485D00;
  }

  else if ([termsCopy isEqualToString:@"ko"])
  {
    v4 = &unk_284485D18;
  }

  else if ([termsCopy isEqualToString:@"es"])
  {
    v4 = &unk_284485D30;
  }

  else if ([termsCopy isEqualToString:@"ar"])
  {
    v4 = &unk_284485D48;
  }

  else if ([termsCopy isEqualToString:@"pt"])
  {
    v4 = &unk_284485D60;
  }

  else if ([termsCopy isEqualToString:@"ru"])
  {
    v4 = &unk_284485D78;
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  if ([termsCopy isEqualToString:@"da"])
  {
    v4 = &unk_284485D90;
  }

  if ([termsCopy isEqualToString:@"nb"])
  {
    v4 = &unk_284485DA8;
  }

  if ([termsCopy isEqualToString:@"pl"])
  {
    v4 = &unk_284485DC0;
  }

  if ([termsCopy isEqualToString:@"sv"])
  {
    v4 = &unk_284485DD8;
  }

  if ([termsCopy isEqualToString:@"tr"])
  {
    v4 = &unk_284485DF0;
  }

  if ([termsCopy isEqualToString:@"fi"])
  {
    v4 = &unk_284485E08;
  }

  return v4;
}

- (BOOL)_promoteToHighConfidenceBasedOnEvent:(id)event
{
  v66 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  languageCode = [currentLocale languageCode];
  v6 = [(PGPublicEventCriteria *)self _localizedSubcategoryTerms:languageCode];
  [eventCopy categories];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v7 = v61 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v58 objects:v65 count:16];
  v45 = v7;
  if (v8)
  {
    v9 = *v59;
    v40 = languageCode;
    v43 = v6;
    selfCopy = self;
    v37 = *v59;
    do
    {
      v10 = 0;
      v38 = v8;
      do
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v41 = v10;
        localizedSubcategories = [*(*(&v58 + 1) + 8 * v10) localizedSubcategories];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v12 = localizedSubcategories;
        v42 = [v12 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v42)
        {
          v13 = *v55;
          v39 = *v55;
          do
          {
            for (i = 0; i != v42; ++i)
            {
              if (*v55 != v13)
              {
                objc_enumerationMutation(v12);
              }

              v15 = *(*(&v54 + 1) + 8 * i);
              v50 = 0u;
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v16 = v6;
              v17 = [v16 countByEnumeratingWithState:&v50 objects:v63 count:16];
              if (v17)
              {
                v18 = v17;
                v19 = *v51;
                while (2)
                {
                  for (j = 0; j != v18; ++j)
                  {
                    if (*v51 != v19)
                    {
                      objc_enumerationMutation(v16);
                    }

                    v21 = *(*(&v50 + 1) + 8 * j);
                    localizedLowercaseString = [v15 localizedLowercaseString];
                    LOBYTE(v21) = [localizedLowercaseString containsString:v21];

                    if (v21)
                    {

                      v33 = 1;
                      v34 = v45;
                      v25 = v45;
                      v24 = v40;
                      v23 = v43;
                      goto LABEL_38;
                    }
                  }

                  v18 = [v16 countByEnumeratingWithState:&v50 objects:v63 count:16];
                  if (v18)
                  {
                    continue;
                  }

                  break;
                }
              }

              v6 = v43;
              v13 = v39;
            }

            languageCode = v40;
            v7 = v45;
            self = selfCopy;
            v42 = [v12 countByEnumeratingWithState:&v54 objects:v64 count:16];
          }

          while (v42);
        }

        v10 = v41 + 1;
        v9 = v37;
      }

      while (v41 + 1 != v38);
      v8 = [v7 countByEnumeratingWithState:&v58 objects:v65 count:16];
    }

    while (v8);
  }

  v23 = v6;

  v24 = languageCode;
  [(PGPublicEventCriteria *)self _localizedEventNameTerms:languageCode];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v25 = v49 = 0u;
  v26 = [v25 countByEnumeratingWithState:&v46 objects:v62 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v47;
    while (2)
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v46 + 1) + 8 * k);
        name = [eventCopy name];
        localizedLowercaseString2 = [name localizedLowercaseString];
        LOBYTE(v30) = [localizedLowercaseString2 containsString:v30];

        if (v30)
        {

          goto LABEL_36;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v46 objects:v62 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }
  }

  if ([eventCopy hasExpectedAttendance] && objc_msgSend(eventCopy, "expectedAttendance") > 2000)
  {
LABEL_36:
    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  v34 = v45;
LABEL_38:

  return v33;
}

- (BOOL)hasMinimumAttendance
{
  minimumAttendance = self->_minimumAttendance;
  if (minimumAttendance)
  {
    v3 = minimumAttendance == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v3 = 1;
  }

  return !v3;
}

- (BOOL)isMatchingEvent:(id)event matchingOptions:(id)options withHighConfidence:(BOOL *)confidence matchingDistance:(double *)distance
{
  v51 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  optionsCopy = options;
  name = [eventCopy name];
  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v44 = name;
    _os_log_debug_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEBUG, "[PublicEvents] Beginning disambiguating event %{private}@", buf, 0xCu);
  }

  if ([(PGPublicEventCriteria *)self hasMinimumAttendance])
  {
    minimumAttendance = [(PGPublicEventCriteria *)self minimumAttendance];
    expectedAttendance = [eventCopy expectedAttendance];
    hasExpectedAttendance = [eventCopy hasExpectedAttendance];
    if (expectedAttendance >= minimumAttendance)
    {
      v17 = hasExpectedAttendance;
    }

    else
    {
      v17 = 0;
    }

    if ([eventCopy hasExpectedAttendance])
    {
      v18 = self->_loggingConnection;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        v39 = @"NO";
        *buf = 138478595;
        v44 = name;
        if (v17)
        {
          v39 = @"YES";
        }

        v45 = 2048;
        v46 = *&expectedAttendance;
        v47 = 2048;
        v48 = *&minimumAttendance;
        v49 = 2112;
        v50 = v39;
        _os_log_debug_impl(&dword_22F0FC000, v18, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: expectedAttendance: %ld, minimumAttendance: %ld, isReachingAttendance: %@", buf, 0x2Au);
        if ((v17 & 1) == 0)
        {
          goto LABEL_10;
        }
      }

      else if ((v17 & 1) == 0)
      {
LABEL_10:
        [optionsCopy coordinates];
        v41 = v19;
        v42 = v20;
LABEL_18:
        LOBYTE(v40[0]) = 0;
        v29 = 1.79769313e308;
LABEL_19:
        v33 = 0;
        *confidence = 0;
        *distance = v29;
        goto LABEL_20;
      }
    }

    else if (!v17)
    {
      goto LABEL_10;
    }
  }

  v21 = [(PGPublicEventCriteria *)self _hasSufficientTimeOverlapForEvent:eventCopy matchingOptions:optionsCopy];
  [optionsCopy coordinates];
  v41 = v22;
  v42 = v23;
  if (!v21)
  {
    goto LABEL_18;
  }

  [(PGPublicEventCriteria *)self maximumDistance];
  v25 = v24;
  [eventCopy businessItemCoordinates];
  v40[0] = v26;
  v40[1] = v27;
  CLLocationCoordinate2DGetDistanceFrom();
  v29 = v28;
  v30 = self->_loggingConnection;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v38 = @"YES";
    *buf = 138478595;
    v44 = name;
    if (v29 > v25)
    {
      v38 = @"NO";
    }

    v45 = 2048;
    v46 = v29;
    v47 = 2048;
    v48 = v25;
    v49 = 2112;
    v50 = v38;
    _os_log_debug_impl(&dword_22F0FC000, v30, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: distance: %.2f, maxDistance: %.2f, isMatchingLocationDistance: %@", buf, 0x2Au);
  }

  LOBYTE(v40[0]) = 0;
  if (v29 > v25)
  {
    goto LABEL_19;
  }

  v31 = [(PGPublicEventCriteria *)self _isMatchingMeaningDisambiguationForEvent:eventCopy matchingOptions:optionsCopy withHighConfidence:v40];
  v32 = v40[0];
  *confidence = v40[0];
  *distance = v29;
  if (v31)
  {
    if ((v32 & 1) == 0 && (v29 <= 30.0 || self->_promoteToHighConfidenceBasedOnCategory || [(PGPublicEventCriteria *)self _promoteToHighConfidenceBasedOnEvent:eventCopy]))
    {
      v33 = 1;
      *confidence = 1;
    }

    else
    {
      v33 = 1;
    }
  }

  else
  {
    v33 = 0;
  }

LABEL_20:
  v34 = self->_loggingConnection;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
  {
    v36 = @"NO";
    if (*confidence)
    {
      v37 = @"YES";
    }

    else
    {
      v37 = @"NO";
    }

    *buf = 138478339;
    v44 = name;
    if (v33)
    {
      v36 = @"YES";
    }

    v45 = 2112;
    v46 = *&v37;
    v47 = 2112;
    v48 = *&v36;
    _os_log_debug_impl(&dword_22F0FC000, v34, OS_LOG_TYPE_DEBUG, "[PublicEvents] Finished disambiguating event %{private}@, isMatchingWithHighConfidence: %@, isMatchingWithLowConfidence: %@", buf, 0x20u);
  }

  return v33;
}

- (BOOL)_isMatchingMeaningDisambiguationForEvent:(id)event matchingOptions:(id)options withHighConfidence:(BOOL *)confidence
{
  v76 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  optionsCopy = options;
  v53 = eventCopy;
  name = [eventCopy name];
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  prohibitedCriteria = [(PGPublicEventCriteria *)self prohibitedCriteria];
  v10 = [prohibitedCriteria countByEnumeratingWithState:&v63 objects:v75 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v64;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v64 != v12)
        {
          objc_enumerationMutation(prohibitedCriteria);
        }

        v14 = *(*(&v63 + 1) + 8 * i);
        matchingCriteria = [optionsCopy matchingCriteria];
        v16 = [matchingCriteria matchingResultWithCriteria:v14];
        isMatching = [v16 isMatching];

        if (isMatching)
        {
          loggingConnection = self->_loggingConnection;
          if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
          {
            v46 = loggingConnection;
            identifier = [v14 identifier];
            *buf = 138478083;
            v69 = name;
            v70 = 2114;
            v71 = identifier;
            _os_log_debug_impl(&dword_22F0FC000, v46, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: is matching prohibited meaning %{public}@", buf, 0x16u);
          }

          LOBYTE(v22) = 0;
          *confidence = 0;
          goto LABEL_42;
        }
      }

      v11 = [prohibitedCriteria countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  disambiguationCriteria = [(PGPublicEventCriteria *)self disambiguationCriteria];
  v19 = [disambiguationCriteria count];
  v20 = v19 != 0;
  if (v19)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    highConfidenceCriteria = disambiguationCriteria;
    v22 = [highConfidenceCriteria countByEnumeratingWithState:&v59 objects:v74 count:16];
    if (v22)
    {
      v49 = v20;
      v48 = disambiguationCriteria;
      v23 = *v60;
LABEL_12:
      v24 = 0;
      while (1)
      {
        if (*v60 != v23)
        {
          objc_enumerationMutation(highConfidenceCriteria);
        }

        v25 = *(*(&v59 + 1) + 8 * v24);
        matchingCriteria2 = [optionsCopy matchingCriteria];
        v27 = [matchingCriteria2 matchingResultWithCriteria:v25];
        isMatching2 = [v27 isMatching];

        v29 = self->_loggingConnection;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          v30 = @"not ";
          if (isMatching2)
          {
            v30 = &stru_2843F5C58;
          }

          v51 = v30;
          v31 = v29;
          identifier2 = [v25 identifier];
          *buf = 138478339;
          v69 = name;
          v70 = 2114;
          v71 = v51;
          v72 = 2114;
          v73 = identifier2;
          _os_log_debug_impl(&dword_22F0FC000, v31, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: is %{public}@matching meaning %{public}@", buf, 0x20u);

          if (isMatching2)
          {
LABEL_28:

            disambiguationCriteria = v48;
            v20 = v49;
            goto LABEL_29;
          }
        }

        else if (isMatching2)
        {
          goto LABEL_28;
        }

        if (v22 == ++v24)
        {
          v33 = [highConfidenceCriteria countByEnumeratingWithState:&v59 objects:v74 count:16];
          v22 = v33;
          if (!v33)
          {
            v20 = 0;
            disambiguationCriteria = v48;
            goto LABEL_41;
          }

          goto LABEL_12;
        }
      }
    }

    v20 = 0;
  }

  else
  {
LABEL_29:
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    highConfidenceCriteria = [(PGPublicEventCriteria *)self highConfidenceCriteria];
    v35 = [highConfidenceCriteria countByEnumeratingWithState:&v55 objects:v67 count:16];
    if (v35)
    {
      v36 = v35;
      v50 = v20;
      v37 = disambiguationCriteria;
      v38 = *v56;
      while (2)
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v56 != v38)
          {
            objc_enumerationMutation(highConfidenceCriteria);
          }

          v40 = *(*(&v55 + 1) + 8 * j);
          v41 = objc_autoreleasePoolPush();
          matchingCriteria3 = [optionsCopy matchingCriteria];
          v43 = [matchingCriteria3 matchingResultWithCriteria:v40];
          isMatching3 = [v43 isMatching];

          objc_autoreleasePoolPop(v41);
          if (isMatching3)
          {
            LOBYTE(v22) = 1;
            v20 = 1;
            disambiguationCriteria = v37;
            goto LABEL_41;
          }
        }

        v36 = [highConfidenceCriteria countByEnumeratingWithState:&v55 objects:v67 count:16];
        LOBYTE(v22) = 1;
        if (v36)
        {
          continue;
        }

        break;
      }

      disambiguationCriteria = v37;
      v20 = v50;
    }

    else
    {
      LOBYTE(v22) = 1;
    }
  }

LABEL_41:

  *confidence = v20;
LABEL_42:

  return v22;
}

- (BOOL)_hasSufficientTimeOverlapForEvent:(id)event matchingOptions:(id)options
{
  v44 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  optionsCopy = options;
  [(PGPublicEventCriteria *)self minimumTimeAttendance];
  v9 = v8;
  allowsExpandingTimeAttendance = [(PGPublicEventCriteria *)self allowsExpandingTimeAttendance];
  expandedAttendanceDateInterval = [optionsCopy expandedAttendanceDateInterval];
  actualAttendanceDateInterval = [optionsCopy actualAttendanceDateInterval];

  universalDateIntervalIncludingTime = [eventCopy universalDateIntervalIncludingTime];
  if (allowsExpandingTimeAttendance)
  {
    v14 = expandedAttendanceDateInterval;
  }

  else
  {
    v14 = actualAttendanceDateInterval;
  }

  v15 = v14;
  v16 = 0.0;
  if ([universalDateIntervalIncludingTime intersectsDateInterval:v15])
  {
    [actualAttendanceDateInterval duration];
    v16 = v17;
  }

  loggingConnection = self->_loggingConnection;
  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEBUG))
  {
    log = loggingConnection;
    name = [eventCopy name];
    startDate = [universalDateIntervalIncludingTime startDate];
    endDate = [universalDateIntervalIncludingTime endDate];
    startDate2 = [actualAttendanceDateInterval startDate];
    endDate2 = [actualAttendanceDateInterval endDate];
    v24 = endDate2;
    *buf = 138479619;
    v25 = @"NO";
    v29 = name;
    if (v16 >= v9)
    {
      v25 = @"YES";
    }

    v30 = 2048;
    v31 = v16;
    v32 = 2048;
    v33 = v9;
    v34 = 2113;
    v35 = startDate;
    v36 = 2113;
    v37 = endDate;
    v38 = 2113;
    v39 = startDate2;
    v40 = 2113;
    v41 = endDate2;
    v42 = 2112;
    v43 = v25;
    _os_log_debug_impl(&dword_22F0FC000, log, OS_LOG_TYPE_DEBUG, "[PublicEvents] Disambiguating event %{private}@: absolute time overlap %.0f, minimum %.0f, eventInterval [%{private}@ - %{private}@], attendance [%{private}@ - %{private}@], hasSufficientTimeOverlap: %@", buf, 0x52u);
  }

  return v16 >= v9;
}

- (PGPublicEventCriteria)initWithLoggingConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = PGPublicEventCriteria;
  v6 = [(PGPublicEventCriteria *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_loggingConnection, connection);
  }

  return v7;
}

@end