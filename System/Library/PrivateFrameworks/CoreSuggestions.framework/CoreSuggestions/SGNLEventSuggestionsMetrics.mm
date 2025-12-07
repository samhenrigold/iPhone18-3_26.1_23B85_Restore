@interface SGNLEventSuggestionsMetrics
+ (SGMEventDateAdj_)diffEventStartDateChangedFrom:(id)from oldTimeZone:(id)zone to:(id)to newTimeZone:(id)timeZone;
+ (SGMEventDurationAdj_)diffEventDurationChangedFrom:(double)from to:(double)to;
+ (SGMEventLocationAdj_)diffEventLocationFrom:(id)from to:(id)to;
+ (SGMEventStringAdj_)diffEventTitleChangedFrom:(id)from to:(id)to;
+ (double)round:(double)round toSignificantFigures:(int64_t)figures;
+ (id)getAddedAttendeesCountFromEKEvent:(id)event;
+ (id)instance;
+ (unint64_t)bucketizeInteger:(unint64_t)integer withBucketSize:(unint64_t)size limit:(unint64_t)limit;
+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type eventType:(id)eventType extractionLevel:(SGMNLEventExtractionLevel_)level harvestedEKEvent:(id)event curatedEKEvent:(id)kEvent;
+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type eventType:(id)eventType languageID:(id)d startDate:(id)date confidenceScore:(float)score participantCount:(char)count significantSender:(SGMBoolOption_)self0 extractionLevel:(SGMNLEventExtractionLevel_)self1 usedBubblesCount:(char)self2 titleSource:(SGMEventTitleSource_)self3 titleAdj:(SGMEventStringAdj_)self4 dateAdj:(SGMEventDateAdj_)self5 duraAdj:(SGMEventDurationAdj_)self6 locationAdj:(SGMEventLocationAdj_)self7 addedAttendeesCount:(id)self8 calendarAppUsageLevel:(float)self9 mailAppUsageLevel:(char)appUsageLevel messagesAppUsageLevel:(char)messagesAppUsageLevel;
+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type harvestedEKEvent:(id)event curatedEKEvent:(id)kEvent;
+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type harvestedSGEvent:(id)event curatedEKEvent:(id)kEvent;
+ (void)recordUserInteraction:(unint64_t)interaction withLinkInApplication:(int64_t)application eventPrefillMode:(unint64_t)mode eventTypeClassification:(id)classification proposedEvent:(id)event confirmedEvent:(id)confirmedEvent;
+ (void)shownViaDataDetectorsLinkInApp:(int64_t)app;
- (SGNLEventSuggestionsMetrics)init;
@end

@implementation SGNLEventSuggestionsMetrics

- (SGNLEventSuggestionsMetrics)init
{
  v6.receiver = self;
  v6.super_class = SGNLEventSuggestionsMetrics;
  v2 = [(SGNLEventSuggestionsMetrics *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    [(SGNLEventSuggestionsMetrics *)v2 setDdLinkShown:v3];

    v4 = objc_opt_new();
    [(SGNLEventSuggestionsMetrics *)v2 setNlEvent:v4];
  }

  return v2;
}

+ (SGMEventLocationAdj_)diffEventLocationFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v7 = toCopy;
  if (!fromCopy || !toCopy)
  {
    if (!fromCopy)
    {
      if (!toCopy || ![toCopy length])
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

LABEL_9:
    v10 = [fromCopy length];
    if (!v7 || v10 || ![v7 length])
    {
      if ([fromCopy length] && (!v7 || !objc_msgSend(v7, "length")))
      {
        v9 = &SGMEventLocationAdjRemoved;
        goto LABEL_20;
      }

LABEL_19:
      v9 = &SGMEventLocationAdjNA;
      goto LABEL_20;
    }

LABEL_18:
    v9 = &SGMEventLocationAdjAdded;
    goto LABEL_20;
  }

  if (![fromCopy length] || !objc_msgSend(v7, "length"))
  {
    goto LABEL_9;
  }

  v8 = [fromCopy isEqualToString:v7];
  v9 = &SGMEventLocationAdjModified;
  if (v8)
  {
    v9 = &SGMEventLocationAdjConfirmed;
  }

LABEL_20:
  v11.var0 = *v9;

  return v11;
}

+ (SGMEventDurationAdj_)diffEventDurationChangedFrom:(double)from to:(double)to
{
  v4 = vabdd_f64(from, to);
  if (v4)
  {
    if (v4 >= 0x708)
    {
      if (v4 >= 0xE10)
      {
        if (v4 >> 5 >= 0xE1)
        {
          v5 = &SGMEventDurationAdjMoreThan2Hours;
        }

        else
        {
          v5 = &SGMEventDurationAdj1To2Hours;
        }
      }

      else
      {
        v5 = &SGMEventDurationAdj30To60Min;
      }
    }

    else
    {
      v5 = &SGMEventDurationAdjLessThan30Min;
    }
  }

  else
  {
    v5 = &SGMEventDurationAdjConfirmed;
  }

  return v5->var0;
}

+ (SGMEventDateAdj_)diffEventStartDateChangedFrom:(id)from oldTimeZone:(id)zone to:(id)to newTimeZone:(id)timeZone
{
  fromCopy = from;
  zoneCopy = zone;
  toCopy = to;
  timeZoneCopy = timeZone;
  if (!fromCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsMetrics.m" lineNumber:583 description:{@"Invalid parameter not satisfying: %@", @"oldDate"}];

    if (toCopy)
    {
      goto LABEL_3;
    }

LABEL_39:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"SGSuggestionsMetrics.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"newDate"}];

    goto LABEL_3;
  }

  if (!toCopy)
  {
    goto LABEL_39;
  }

LABEL_3:
  if (![fromCopy isEqualToDate:toCopy] || (objc_msgSend(zoneCopy, "isEqualToTimeZone:", timeZoneCopy) & 1) == 0)
  {
    v16 = objc_autoreleasePoolPush();
    currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
    v18 = currentCalendar;
    if (zoneCopy)
    {
      [currentCalendar setTimeZone:zoneCopy];
    }

    else
    {
      v19 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [v18 setTimeZone:v19];
    }

    v20 = [v18 components:252 fromDate:fromCopy];
    if (timeZoneCopy)
    {
      [v18 setTimeZone:timeZoneCopy];
    }

    else
    {
      v21 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [v18 setTimeZone:v21];
    }

    v22 = [v18 components:252 fromDate:toCopy];
    year = [v20 year];
    if (year == [v22 year] && (v24 = objc_msgSend(v20, "month"), v24 == objc_msgSend(v22, "month")))
    {
      v25 = [v20 day];
      v26 = v25 != [v22 day];
    }

    else
    {
      v26 = 1;
    }

    hour = [v20 hour];
    if (hour == [v22 hour] && (v28 = objc_msgSend(v20, "minute"), v28 == objc_msgSend(v22, "minute")))
    {
      second = [v20 second];
      v30 = second != [v22 second];
      if (!v26)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v30 = 1;
      if (!v26)
      {
LABEL_19:
        if (v30)
        {
          [toCopy timeIntervalSinceDate:fromCopy];
          if (v31 <= -7200.0)
          {
            v32 = &SGMEventDateAdjSubTime2hPlus;
          }

          else if (v31 <= -3600.0)
          {
            v32 = &SGMEventDateAdjSubTime2h;
          }

          else if (v31 >= 0.0)
          {
            if (v31 >= 3600.0)
            {
              v32 = &SGMEventDateAdjAddTime2hPlus;
              if (v31 < 7200.0)
              {
                v32 = &SGMEventDateAdjAddTime2h;
              }
            }

            else
            {
              v32 = &SGMEventDateAdjAddTime1h;
            }
          }

          else
          {
            v32 = &SGMEventDateAdjSubTime1h;
          }
        }

        else
        {
          v32 = &SGMEventDateAdjConfirmed;
        }

        goto LABEL_31;
      }
    }

    if (v30)
    {
      v32 = &SGMEventDateAdjChangedDayAndTime;
    }

    else
    {
      v32 = &SGMEventDateAdjChangedDay;
    }

LABEL_31:
    v15.var0 = *v32;

    objc_autoreleasePoolPop(v16);
    goto LABEL_32;
  }

  v15.var0 = 1;
LABEL_32:

  return v15;
}

+ (SGMEventStringAdj_)diffEventTitleChangedFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if (fromCopy == toCopy || ([fromCopy isEqualToString:toCopy] & 1) != 0)
  {
    v7 = &SGMEventStringAdjConfirmed;
  }

  else if ([fromCopy length])
  {
    v7 = &SGMEventStringAdjReplaced;
    if ([toCopy length])
    {
      v10 = objc_autoreleasePoolPush();
      lowercaseString = [fromCopy lowercaseString];
      objc_autoreleasePoolPop(v10);

      v12 = objc_autoreleasePoolPush();
      lowercaseString2 = [toCopy lowercaseString];
      objc_autoreleasePoolPop(v12);

      if ([lowercaseString isEqualToString:lowercaseString2])
      {
        v7 = &SGMEventStringAdjConfirmed;
      }

      else if ([lowercaseString2 hasSuffix:lowercaseString])
      {
        v7 = &SGMEventStringAdjPrefixAdded;
      }

      else if ([lowercaseString2 hasPrefix:lowercaseString])
      {
        v7 = &SGMEventStringAdjSuffixAdded;
      }

      toCopy = lowercaseString2;
      fromCopy = lowercaseString;
    }
  }

  else
  {
    v7 = &SGMEventStringAdjReplaced;
  }

  v8.var0 = *v7;

  return v8;
}

+ (double)round:(double)round toSignificantFigures:(int64_t)figures
{
  result = 0.0;
  if (round != 0.0)
  {
    roundCopy = -round;
    if (round >= 0.0)
    {
      roundCopy = round;
    }

    v8 = log10(roundCopy);
    v9 = __exp10((figures - vcvtpd_s64_f64(v8)));
    return llround(v9 * round) / v9;
  }

  return result;
}

+ (unint64_t)bucketizeInteger:(unint64_t)integer withBucketSize:(unint64_t)size limit:(unint64_t)limit
{
  if (!size)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"SGSuggestionsMetrics.m" lineNumber:544 description:@"bucketSize must be > 0"];
  }

  if (integer <= limit)
  {
    return (integer + size - 1) / size * size;
  }

  return limit;
}

+ (void)recordUserInteraction:(unint64_t)interaction withLinkInApplication:(int64_t)application eventPrefillMode:(unint64_t)mode eventTypeClassification:(id)classification proposedEvent:(id)event confirmedEvent:(id)confirmedEvent
{
  v22 = *MEMORY[0x1E69E9840];
  classificationCopy = classification;
  eventCopy = event;
  confirmedEventCopy = confirmedEvent;
  if (interaction >= 4)
  {
    v16 = sgLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = 134217984;
      modeCopy = interaction;
      _os_log_error_impl(&dword_1BA729000, v16, OS_LOG_TYPE_ERROR, "unhandled SGDDEventInteraction: %lu", &v20, 0xCu);
    }

    LOWORD(v16) = 8;
  }

  else
  {
    v16 = (0x8000800070006uLL >> (16 * interaction));
  }

  if (mode >= 5)
  {
    v18 = sgLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = 134217984;
      modeCopy = mode;
      _os_log_error_impl(&dword_1BA729000, v18, OS_LOG_TYPE_ERROR, "unhandled SGDDEventPrefillMode: %lu", &v20, 0xCu);
    }

    v17 = &SGMNLEventExtractionLevelNA;
  }

  else
  {
    v17 = *(&off_1E7EFCCC8 + mode);
  }

  if (application == 3)
  {
    v19 = 3;
  }

  else
  {
    v19 = 6;
  }

  [SGNLEventSuggestionsMetrics recordInteractionForEventWithInterface:v19 actionType:v16 eventType:classificationCopy extractionLevel:*v17 harvestedEKEvent:eventCopy curatedEKEvent:confirmedEventCopy];
}

+ (void)shownViaDataDetectorsLinkInApp:(int64_t)app
{
  v18 = *MEMORY[0x1E69E9840];
  if ((app - 4) > 0xFFFFFFFFFFFFFFFDLL)
  {
    instance = [self instance];
    ddLinkShown = [instance ddLinkShown];
    v7 = ddLinkShown;
    if (app == 3)
    {
      v8 = 3;
    }

    else
    {
      v8 = 6;
    }

    if (app == 3)
    {
      v9 = 1;
    }

    else
    {
      v9 = 4;
    }

    [ddLinkShown trackEventWithScalar:1 interface:v8];

    v15 = objc_opt_new();
    [v15 setInterface:v9];
    mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
    [mEMORY[0x1E69C5B48] trackScalarForMessage:v15];

    v11 = objc_alloc(MEMORY[0x1E696AEC0]);
    v12 = [v15 key];
    v13 = [v11 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v12];

    dictionaryRepresentation = [v15 dictionaryRepresentation];
    AnalyticsSendEvent();
  }

  else
  {
    v4 = sgLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      appCopy = app;
      _os_log_error_impl(&dword_1BA729000, v4, OS_LOG_TYPE_ERROR, "trying to log DD link engagement from unexpected app: %lu", buf, 0xCu);
    }
  }
}

+ (id)getAddedAttendeesCountFromEKEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if ([eventCopy hasAttendees])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    attendees = [eventCopy attendees];
    v5 = [attendees countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v13;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(attendees);
          }

          if ([*(*(&v12 + 1) + 8 * i) participantType] == 1)
          {
            ++v7;
          }
        }

        v6 = [attendees countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
  }

  else
  {
    v10 = &unk_1F3874310;
  }

  return v10;
}

+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type eventType:(id)eventType languageID:(id)d startDate:(id)date confidenceScore:(float)score participantCount:(char)count significantSender:(SGMBoolOption_)self0 extractionLevel:(SGMNLEventExtractionLevel_)self1 usedBubblesCount:(char)self2 titleSource:(SGMEventTitleSource_)self3 titleAdj:(SGMEventStringAdj_)self4 dateAdj:(SGMEventDateAdj_)self5 duraAdj:(SGMEventDurationAdj_)self6 locationAdj:(SGMEventLocationAdj_)self7 addedAttendeesCount:(id)self8 calendarAppUsageLevel:(float)self9 mailAppUsageLevel:(char)appUsageLevel messagesAppUsageLevel:(char)messagesAppUsageLevel
{
  typeCopy = type;
  interfaceCopy = interface;
  countCopy = count;
  eventTypeCopy = eventType;
  dCopy = d;
  dateCopy = date;
  attendeesCountCopy = attendeesCount;
  v57 = dateCopy;
  if (dateCopy && ([dateCopy timeIntervalSinceNow], v30 > 0.0))
  {
    [dateCopy timeIntervalSinceNow];
    v56 = [self bucketizeInteger:(v31 / 86400.0) withBucketSize:7 limit:56];
  }

  else
  {
    v56 = 0;
  }

  v32 = [self bucketizeInteger:(score * 100.0) withBucketSize:5 limit:100];
  instance = [self instance];
  nlEvent = [instance nlEvent];
  if ((interfaceCopy - 1) > 0x13)
  {
    v54 = 0;
  }

  else
  {
    v54 = qword_1BA7C1468[(interfaceCopy - 1)];
  }

  if ((typeCopy - 1) < 0xB)
  {
    v34 = (typeCopy - 1) + 1;
  }

  else
  {
    v34 = 0;
  }

  usageLevelCopy = usageLevel;
  v36 = mapCalendarUsageLevel(usageLevelCopy);
  v37 = v36;
  if (appUsageLevel == 255)
  {
    v38 = &SGMAppUsageLevelNA;
  }

  else if (appUsageLevel - 1 >= 4)
  {
    if (appUsageLevel <= 4)
    {
      v38 = &SGMAppUsageLevelLow;
    }

    else
    {
      v38 = &SGMAppUsageLevelHigh;
    }
  }

  else
  {
    v38 = &SGMAppUsageLevelMedium;
  }

  v39 = *v38;
  if (messagesAppUsageLevel == 255)
  {
    v40 = &SGMAppUsageLevelNA;
  }

  else if (messagesAppUsageLevel - 1 >= 4)
  {
    if (messagesAppUsageLevel <= 4)
    {
      v40 = &SGMAppUsageLevelLow;
    }

    else
    {
      v40 = &SGMAppUsageLevelHigh;
    }
  }

  else
  {
    v40 = &SGMAppUsageLevelMedium;
  }

  [nlEvent trackEventWithScalar:1 interface:v54 actionType:v34 eventType:eventTypeCopy languageID:dCopy daysFromStartDate:v56 confidenceScore:v32 significantSender:sender.var0 participantCount:countCopy extractionLevel:level.var0 usedBubblesCount:bubblesCount titleSource:source.var0 titleAdj:adj.var0 dateAdj:dateAdj.var0 duraAdj:duraAdj.var0 locationAdj:locationAdj.var0 addedAttendeesCount:attendeesCountCopy calendarAppUsageLevel:v36 mailAppUsageLevel:v39 messagesAppUsageLevel:*v40];

  v41 = objc_opt_new();
  [v41 setInterface:v54];
  [v41 setActionType:v34];
  [v41 setEventType:eventTypeCopy];
  [v41 setLanguageID:dCopy];
  [v41 setDaysFromStartDate:v56];
  [v41 setConfidenceScore:v32];
  [v41 setSignificantSender:sender.var0];
  [v41 setParticipantCount:countCopy];
  [v41 setExtractionLevel:level.var0];
  [v41 setUsedBubblesCount:bubblesCount];
  [v41 setTitleSource:source.var0];
  [v41 setTitleAdj:adj.var0];
  [v41 setDateAdj:dateAdj.var0];
  [v41 setDuraAdj:duraAdj.var0];
  [v41 setLocationAdj:locationAdj.var0];
  [v41 setAddedAttendeesCount:attendeesCountCopy];
  v42 = mapCalendarUsageLevel(usageLevelCopy);
  [v41 setCalendarAppUsageLevel:v42];

  v43 = &SGMAppUsageLevelNA;
  if (appUsageLevel <= 4)
  {
    v44 = &SGMAppUsageLevelLow;
  }

  else
  {
    v44 = &SGMAppUsageLevelHigh;
  }

  if (appUsageLevel - 1 >= 4)
  {
    v45 = v44;
  }

  else
  {
    v45 = &SGMAppUsageLevelMedium;
  }

  if (appUsageLevel != 255)
  {
    v43 = v45;
  }

  [v41 setMailAppUsageLevel:*v43];
  v46 = &SGMAppUsageLevelNA;
  if (messagesAppUsageLevel <= 4)
  {
    v47 = &SGMAppUsageLevelLow;
  }

  else
  {
    v47 = &SGMAppUsageLevelHigh;
  }

  if (messagesAppUsageLevel - 1 >= 4)
  {
    v48 = v47;
  }

  else
  {
    v48 = &SGMAppUsageLevelMedium;
  }

  if (messagesAppUsageLevel != 255)
  {
    v46 = v48;
  }

  [v41 setMessagesAppUsageLevel:*v46];
  mEMORY[0x1E69C5B48] = [MEMORY[0x1E69C5B48] sharedInstance];
  [mEMORY[0x1E69C5B48] trackScalarForMessage:v41];

  v50 = objc_alloc(MEMORY[0x1E696AEC0]);
  v51 = [v41 key];
  v52 = [v50 initWithFormat:@"%@.%@", @"com.apple.Proactive.CoreSuggestions", v51];

  dictionaryRepresentation = [v41 dictionaryRepresentation];
  AnalyticsSendEvent();
}

+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type eventType:(id)eventType extractionLevel:(SGMNLEventExtractionLevel_)level harvestedEKEvent:(id)event curatedEKEvent:(id)kEvent
{
  typeCopy = type;
  interfaceCopy = interface;
  eventCopy = event;
  kEventCopy = kEvent;
  v16 = @"NA";
  if (eventType)
  {
    eventTypeCopy = eventType;
  }

  else
  {
    eventTypeCopy = @"NA";
  }

  eventTypeCopy2 = eventTypeCopy;
  if (eventCopy)
  {
    v18 = eventCopy;
  }

  else
  {
    v18 = kEventCopy;
  }

  v81 = v18;
  if (v81)
  {
    var0 = level.var0;
    context = objc_autoreleasePoolPush();
    v19 = [eventCopy customObjectForKey:@"SuggestionsNLEventDictionaryKey"];
    v20 = [eventCopy localCustomObjectForKey:@"SuggestionsNLEventDictionaryKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v82 = kEventCopy;
      selfCopy = self;
      if (eventTypeCopy2 == @"NA")
      {
        v22 = [v19 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryEventTypeKey"];
        v23 = v22;
        if (v22)
        {
          v24 = v22;
        }

        else
        {
          v24 = @"NA";
        }

        eventType = v24;
      }

      v25 = [v19 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryEventLanguageIDKey"];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = @"NA";
      }

      v16 = v27;

      v28 = [v19 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryEventConfidenceScoreKey"];
      [v28 floatValue];
      v30 = v29;

      v31 = [v19 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryEventSignificantSenderKey"];
      v78 = v31 != 0;

      v32 = [v19 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryEventParticipantCountKey"];
      integerValue = [v32 integerValue];

      v33 = [v19 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryEventTitleSourceKey"];
      v34 = [v33 isEqualToString:@"SuggestionsNLEventDictionaryEventTitleSourceTemplateValue"];

      if (v34)
      {
        v35 = 2;
      }

      else
      {
        v37 = [v19 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryEventTitleSourceKey"];
        LODWORD(v35) = [v37 isEqualToString:@"SuggestionsNLEventDictionaryEventTitleSourceSubjectValue"];

        v35 = v35;
      }

      eventTypeCopy2 = eventType;
      self = selfCopy;
      kEventCopy = v82;
    }

    else
    {
      v35 = 0;
      v30 = 0;
      integerValue = 0;
      v78 = 2;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v38 = [v20 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryCalendarAppUsageLevelKey"];
      [v38 floatValue];
      v36 = v39;

      v40 = [v20 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryMailAppUsageLevelKey"];
      integerValue2 = [v40 integerValue];

      v41 = [v20 objectForKeyedSubscript:@"SuggestionsNLEventDictionaryMessagesAppUsageLevelKey"];
      integerValue3 = [v41 integerValue];
    }

    else
    {
      integerValue2 = -1;
      v36 = -1.0;
      integerValue3 = -1;
    }

    interfaceCopy = interfaceCopy;

    objc_autoreleasePoolPop(context);
    level.var0 = var0;
  }

  else
  {
    v35 = 0;
    v30 = 0;
    integerValue2 = -1;
    v36 = -1.0;
    integerValue = 0;
    v78 = 2;
    integerValue3 = -1;
  }

  if (level.var0 == 4)
  {
    level.var0 = 1;
    goto LABEL_31;
  }

  if (level.var0 == 5)
  {
    level.var0 = 2;
LABEL_31:
    v35 = 3;
  }

  v80 = v16;
  v76 = v35;
  if (eventCopy && kEventCopy)
  {
    v69 = typeCopy;
    title = [eventCopy title];
    title2 = [kEventCopy title];
    contexta = [self diffEventTitleChangedFrom:title to:title2];

    startDate = [eventCopy startDate];
    timeZone = [eventCopy timeZone];
    [kEventCopy startDate];
    v47 = v46 = self;
    timeZone2 = [kEventCopy timeZone];
    v71 = [v46 diffEventStartDateChangedFrom:startDate oldTimeZone:timeZone to:v47 newTimeZone:timeZone2];

    [eventCopy duration];
    v50 = v49;
    v83 = kEventCopy;
    [kEventCopy duration];
    v51 = v46;
    v70 = [v46 diffEventDurationChangedFrom:v50 to:v52];
    locations = [eventCopy locations];
    v54 = [locations count];
    if (v54)
    {
      location = [eventCopy location];
    }

    else
    {
      location = 0;
    }

    locations2 = [v83 locations];
    if ([locations2 count])
    {
      [v83 location];
      v59 = level.var0;
      v61 = v60 = interfaceCopy;
      v56 = [v51 diffEventLocationFrom:location to:v61];

      interfaceCopy = v60;
      level.var0 = v59;
    }

    else
    {
      v56 = [v51 diffEventLocationFrom:location to:0];
    }

    if (v54)
    {
    }

    typeCopy = v69;
    kEventCopy = v83;
  }

  else
  {
    v56 = 0;
    if (!kEventCopy)
    {
      v70 = 0;
      v71 = 0;
      contexta = 0;
      stringValue = @"NA";
      goto LABEL_47;
    }

    v70 = 0;
    v71 = 0;
    contexta = 0;
  }

  v62 = [objc_opt_class() getAddedAttendeesCountFromEKEvent:kEventCopy];
  stringValue = [v62 stringValue];

LABEL_47:
  v63 = objc_opt_class();
  startDate2 = [v81 startDate];
  BYTE1(v68) = integerValue3;
  LOBYTE(v68) = integerValue2;
  LOBYTE(v67) = 0;
  LODWORD(v65) = v30;
  *&v66 = v36;
  [v63 recordInteractionForEventWithInterface:interfaceCopy actionType:typeCopy eventType:eventTypeCopy2 languageID:v80 startDate:startDate2 confidenceScore:integerValue participantCount:v65 significantSender:v66 extractionLevel:v78 usedBubblesCount:level.var0 titleSource:v67 titleAdj:v76 dateAdj:contexta duraAdj:v71 locationAdj:v70 addedAttendeesCount:v56 calendarAppUsageLevel:stringValue mailAppUsageLevel:v68 messagesAppUsageLevel:?];
}

+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type harvestedEKEvent:(id)event curatedEKEvent:(id)kEvent
{
  typeCopy = type;
  interfaceCopy = interface;
  kEventCopy = kEvent;
  eventCopy = event;
  [objc_opt_class() recordInteractionForEventWithInterface:interfaceCopy actionType:typeCopy eventType:@"NA" extractionLevel:0 harvestedEKEvent:eventCopy curatedEKEvent:kEventCopy];
}

+ (void)recordInteractionForEventWithInterface:(unsigned __int16)interface actionType:(unsigned __int16)type harvestedSGEvent:(id)event curatedEKEvent:(id)kEvent
{
  interfaceCopy = interface;
  typeCopy = type;
  v97 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  kEventCopy = kEvent;
  v92 = 0u;
  v93 = 0u;
  v94 = 0u;
  v95 = 0u;
  tags = [eventCopy tags];
  v9 = [tags countByEnumeratingWithState:&v92 objects:v96 count:16];
  if (v9)
  {
    v10 = v9;
    v81 = a2;
    v11 = @"NA";
    v12 = *v93;
    v13 = 0;
    v14 = -1.0;
    integerValue2 = -1;
    integerValue = 0;
    integerValue4 = 0;
    integerValue3 = -1;
    v15 = @"NA";
    while (1)
    {
      v16 = 0;
      do
      {
        if (*v93 != v12)
        {
          objc_enumerationMutation(tags);
        }

        v17 = [SGEntityTag resolveName:*(*(&v92 + 1) + 8 * v16)];
        if ([v17 isNaturalLanguageEventTypeIdentifier])
        {
          value = [v17 value];

          if (value)
          {
            v15 = value;
            goto LABEL_14;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:v81 object:self file:@"SGSuggestionsMetrics.m" lineNumber:235 description:{@"Invalid parameter not satisfying: %@", @"eventType"}];
          v15 = 0;
          goto LABEL_13;
        }

        if ([v17 isConfidenceScore])
        {
          currentHandler = [v17 value];
          [currentHandler floatValue];
          v13 = v20;
LABEL_13:

          goto LABEL_14;
        }

        if ([v17 isParticipantCount])
        {
          currentHandler = [v17 value];
          integerValue = [currentHandler integerValue];
          goto LABEL_13;
        }

        if ([v17 isNaturalLanguageEventLanguageID])
        {
          value2 = [v17 value];

          if (!value2)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:v81 object:self file:@"SGSuggestionsMetrics.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"languageID"}];
            v11 = 0;
            goto LABEL_13;
          }

          v11 = value2;
        }

        else
        {
          if ([v17 isCalendarAppUsageLevel])
          {
            currentHandler = [v17 value];
            [currentHandler floatValue];
            v14 = v22;
            goto LABEL_13;
          }

          if ([v17 isMailAppUsageLevel])
          {
            currentHandler = [v17 value];
            integerValue2 = [currentHandler integerValue];
            goto LABEL_13;
          }

          if ([v17 isMessagesAppUsageLevel])
          {
            currentHandler = [v17 value];
            integerValue3 = [currentHandler integerValue];
            goto LABEL_13;
          }

          if ([v17 isUsedBubblesCount])
          {
            currentHandler = [v17 value];
            integerValue4 = [currentHandler integerValue];
            goto LABEL_13;
          }
        }

LABEL_14:

        ++v16;
      }

      while (v10 != v16);
      v23 = [tags countByEnumeratingWithState:&v92 objects:v96 count:16];
      v10 = v23;
      if (!v23)
      {
        goto LABEL_32;
      }
    }
  }

  v11 = @"NA";
  v13 = 0;
  v14 = -1.0;
  integerValue2 = -1;
  integerValue = 0;
  integerValue4 = 0;
  integerValue3 = -1;
  v15 = @"NA";
LABEL_32:

  tags2 = [eventCopy tags];
  v25 = +[SGEntityTag significantSender];
  name = [v25 name];
  v27 = [tags2 containsObject:name];

  tags3 = [eventCopy tags];
  v29 = +[SGEntityTag titleGeneratedFromTemplate];
  name2 = [v29 name];
  v31 = [tags3 containsObject:name2];

  if (v31)
  {
    v32 = 2;
  }

  else
  {
    tags4 = [eventCopy tags];
    v34 = +[SGEntityTag titleGeneratedFromSubject];
    name3 = [v34 name];
    v36 = [tags4 containsObject:name3];

    v32 = v36;
  }

  v37 = kEventCopy;
  v38 = v27;
  if (kEventCopy)
  {
    v79 = v32;
    v80 = v27;
    title = [eventCopy title];
    title2 = [kEventCopy title];
    selfCopy = self;
    v42 = [self diffEventTitleChangedFrom:title to:title2];

    start = [eventCopy start];
    startTimeZone = [eventCopy startTimeZone];
    startDate = [kEventCopy startDate];
    timeZone = [kEventCopy timeZone];
    v78 = [self diffEventStartDateChangedFrom:start oldTimeZone:startTimeZone to:startDate newTimeZone:timeZone];

    [eventCopy duration];
    v48 = v47;
    [kEventCopy duration];
    v76 = [self diffEventDurationChangedFrom:v48 to:v49];
    v50 = [objc_opt_class() getAddedAttendeesCountFromEKEvent:kEventCopy];
    stringValue = [v50 stringValue];

    locations = [eventCopy locations];
    v53 = [locations count];
    v82 = v42;
    if (v53)
    {
      locations2 = [eventCopy locations];
      firstObject = [locations2 firstObject];
      address = [firstObject address];
      selfCopy = address;
      if (address)
      {
        v55 = 0;
        label = address;
      }

      else
      {
        locations3 = [eventCopy locations];
        firstObject2 = [locations3 firstObject];
        label = [firstObject2 label];
        v55 = 1;
      }
    }

    else
    {
      v55 = 0;
      label = 0;
    }

    v77 = stringValue;
    locationsWithoutPrediction = [kEventCopy locationsWithoutPrediction];
    if ([locationsWithoutPrediction count])
    {
      locationWithoutPrediction = [kEventCopy locationWithoutPrediction];
      v63 = [self diffEventLocationFrom:label to:locationWithoutPrediction];
    }

    else
    {
      v63 = [self diffEventLocationFrom:label to:0];
    }

    if (v55)
    {
    }

    v64 = v63;
    if (v53)
    {
    }

    v57 = eventCopy;
    v38 = v80;
    v37 = v78;
    v32 = v79;
    v58 = v76;
    v60 = v77;
    v59 = v64;
  }

  else
  {
    v82 = 0;
    v57 = eventCopy;
    v58 = 0;
    v59 = 0;
    v60 = @"NA";
  }

  v65 = v38;
  v66 = objc_opt_class();
  start2 = [v57 start];
  BYTE1(v71) = integerValue3;
  LOBYTE(v71) = integerValue2;
  LOBYTE(v70) = integerValue4;
  LODWORD(v68) = v13;
  *&v69 = v14;
  [v66 recordInteractionForEventWithInterface:interfaceCopy actionType:typeCopy eventType:v15 languageID:v11 startDate:start2 confidenceScore:integerValue participantCount:v68 significantSender:v69 extractionLevel:v65 usedBubblesCount:0 titleSource:v70 titleAdj:v32 dateAdj:v82 duraAdj:v37 locationAdj:v58 addedAttendeesCount:v59 calendarAppUsageLevel:v60 mailAppUsageLevel:v71 messagesAppUsageLevel:?];
}

+ (id)instance
{
  if (instance_onceToken != -1)
  {
    dispatch_once(&instance_onceToken, &__block_literal_global_7450);
  }

  v3 = instance__instance;

  return v3;
}

uint64_t __39__SGNLEventSuggestionsMetrics_instance__block_invoke()
{
  instance__instance = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

@end