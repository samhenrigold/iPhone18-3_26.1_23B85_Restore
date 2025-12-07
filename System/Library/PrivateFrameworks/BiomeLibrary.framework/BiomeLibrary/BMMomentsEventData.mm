@interface BMMomentsEventData
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEventData)initWithEvent:(id)event bundle:(id)bundle isBundle:(id)isBundle IHAState:(id)state age:(id)age ageRange:(int)range biologicalSex:(int)sex;
- (BMMomentsEventData)initWithEvent:(id)event bundle:(id)bundle isBundle:(id)isBundle IHAState:(id)state age:(id)age ageRange:(int)range biologicalSex:(int)sex startDate:(id)self0 endDate:(id)self1 categoryOfEvent:(id)self2 bundleInterface:(id)self3 bundleEvergreenType:(id)self4 sugSeetEngType:(id)self5 appEntryEngType:(id)self6 megaSignalTypeUsed:(id)self7 viewVisibleSuggestionsCount:(id)self8 viewTotalSuggestionsCount:(id)self9;
- (BMMomentsEventData)initWithEvent:(id)event bundle:(id)bundle isBundle:(id)isBundle IHAState:(id)state age:(id)age ageRange:(int)range biologicalSex:(int)sex startDate:(id)self0 endDate:(id)self1 categoryOfEvent:(id)self2 bundleInterface:(id)self3 bundleEvergreenType:(id)self4 sugSeetEngType:(id)self5 appEntryEngType:(id)self6 megaSignalTypeUsed:(id)self7 viewVisibleSuggestionsCount:(id)self8 viewTotalSuggestionsCount:(id)self9 onboardingFlowCompletionState:(int)completionState isJournalAppInstalled:(id)installed isJournalAppLocked:(id)locked isJournalSuggestionSkipped:(id)skipped isActivitySettingsSwitchEnabled:(id)enabled isCommunicationSettingsSwitchEnabled:(id)switchEnabled isSignificantLocationSettingsSwitchEnabled:(id)settingsSwitchEnabled isMediaSettingsSwitchEnabled:(id)mediaSettingsSwitchEnabled isNearbyPeopleSettingsSwitchEnabled:(id)peopleSettingsSwitchEnabled isPhotoSettingsSwitchEnabled:(id)photoSettingsSwitchEnabled isStateOfMindSettingsSwitchEnabled:(id)event0 isReflectionSettingsSwitchEnabled:(id)event1 isBroadSystemLocationSettingsSwitchEnabled:(id)event2;
- (BMMomentsEventData)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEventData

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    event = [(BMMomentsEventData *)self event];
    event2 = [v5 event];
    v8 = event2;
    if (event == event2)
    {
    }

    else
    {
      event3 = [(BMMomentsEventData *)self event];
      event4 = [v5 event];
      v11 = [event3 isEqual:event4];

      if (!v11)
      {
        goto LABEL_131;
      }
    }

    bundle = [(BMMomentsEventData *)self bundle];
    bundle2 = [v5 bundle];
    v15 = bundle2;
    if (bundle == bundle2)
    {
    }

    else
    {
      bundle3 = [(BMMomentsEventData *)self bundle];
      bundle4 = [v5 bundle];
      v18 = [bundle3 isEqual:bundle4];

      if (!v18)
      {
        goto LABEL_131;
      }
    }

    if (-[BMMomentsEventData hasIsBundle](self, "hasIsBundle") || [v5 hasIsBundle])
    {
      if (![(BMMomentsEventData *)self hasIsBundle])
      {
        goto LABEL_131;
      }

      if (![v5 hasIsBundle])
      {
        goto LABEL_131;
      }

      isBundle = [(BMMomentsEventData *)self isBundle];
      if (isBundle != [v5 isBundle])
      {
        goto LABEL_131;
      }
    }

    if (-[BMMomentsEventData hasIHAState](self, "hasIHAState") || [v5 hasIHAState])
    {
      if (![(BMMomentsEventData *)self hasIHAState])
      {
        goto LABEL_131;
      }

      if (![v5 hasIHAState])
      {
        goto LABEL_131;
      }

      iHAState = [(BMMomentsEventData *)self IHAState];
      if (iHAState != [v5 IHAState])
      {
        goto LABEL_131;
      }
    }

    if (-[BMMomentsEventData hasAge](self, "hasAge") || [v5 hasAge])
    {
      if (![(BMMomentsEventData *)self hasAge])
      {
        goto LABEL_131;
      }

      if (![v5 hasAge])
      {
        goto LABEL_131;
      }

      v21 = [(BMMomentsEventData *)self age];
      if (v21 != [v5 age])
      {
        goto LABEL_131;
      }
    }

    ageRange = [(BMMomentsEventData *)self ageRange];
    if (ageRange != [v5 ageRange])
    {
      goto LABEL_131;
    }

    biologicalSex = [(BMMomentsEventData *)self biologicalSex];
    if (biologicalSex != [v5 biologicalSex])
    {
      goto LABEL_131;
    }

    startDate = [(BMMomentsEventData *)self startDate];
    startDate2 = [v5 startDate];
    v26 = startDate2;
    if (startDate == startDate2)
    {
    }

    else
    {
      startDate3 = [(BMMomentsEventData *)self startDate];
      startDate4 = [v5 startDate];
      v29 = [startDate3 isEqual:startDate4];

      if (!v29)
      {
        goto LABEL_131;
      }
    }

    endDate = [(BMMomentsEventData *)self endDate];
    endDate2 = [v5 endDate];
    v32 = endDate2;
    if (endDate == endDate2)
    {
    }

    else
    {
      endDate3 = [(BMMomentsEventData *)self endDate];
      endDate4 = [v5 endDate];
      v35 = [endDate3 isEqual:endDate4];

      if (!v35)
      {
        goto LABEL_131;
      }
    }

    categoryOfEvent = [(BMMomentsEventData *)self categoryOfEvent];
    categoryOfEvent2 = [v5 categoryOfEvent];
    v38 = categoryOfEvent2;
    if (categoryOfEvent == categoryOfEvent2)
    {
    }

    else
    {
      categoryOfEvent3 = [(BMMomentsEventData *)self categoryOfEvent];
      categoryOfEvent4 = [v5 categoryOfEvent];
      v41 = [categoryOfEvent3 isEqual:categoryOfEvent4];

      if (!v41)
      {
        goto LABEL_131;
      }
    }

    bundleInterface = [(BMMomentsEventData *)self bundleInterface];
    bundleInterface2 = [v5 bundleInterface];
    v44 = bundleInterface2;
    if (bundleInterface == bundleInterface2)
    {
    }

    else
    {
      bundleInterface3 = [(BMMomentsEventData *)self bundleInterface];
      bundleInterface4 = [v5 bundleInterface];
      v47 = [bundleInterface3 isEqual:bundleInterface4];

      if (!v47)
      {
        goto LABEL_131;
      }
    }

    bundleEvergreenType = [(BMMomentsEventData *)self bundleEvergreenType];
    bundleEvergreenType2 = [v5 bundleEvergreenType];
    v50 = bundleEvergreenType2;
    if (bundleEvergreenType == bundleEvergreenType2)
    {
    }

    else
    {
      bundleEvergreenType3 = [(BMMomentsEventData *)self bundleEvergreenType];
      bundleEvergreenType4 = [v5 bundleEvergreenType];
      v53 = [bundleEvergreenType3 isEqual:bundleEvergreenType4];

      if (!v53)
      {
        goto LABEL_131;
      }
    }

    sugSeetEngType = [(BMMomentsEventData *)self sugSeetEngType];
    sugSeetEngType2 = [v5 sugSeetEngType];
    v56 = sugSeetEngType2;
    if (sugSeetEngType == sugSeetEngType2)
    {
    }

    else
    {
      sugSeetEngType3 = [(BMMomentsEventData *)self sugSeetEngType];
      sugSeetEngType4 = [v5 sugSeetEngType];
      v59 = [sugSeetEngType3 isEqual:sugSeetEngType4];

      if (!v59)
      {
        goto LABEL_131;
      }
    }

    appEntryEngType = [(BMMomentsEventData *)self appEntryEngType];
    appEntryEngType2 = [v5 appEntryEngType];
    v62 = appEntryEngType2;
    if (appEntryEngType == appEntryEngType2)
    {
    }

    else
    {
      appEntryEngType3 = [(BMMomentsEventData *)self appEntryEngType];
      appEntryEngType4 = [v5 appEntryEngType];
      v65 = [appEntryEngType3 isEqual:appEntryEngType4];

      if (!v65)
      {
        goto LABEL_131;
      }
    }

    megaSignalTypeUsed = [(BMMomentsEventData *)self megaSignalTypeUsed];
    megaSignalTypeUsed2 = [v5 megaSignalTypeUsed];
    v68 = megaSignalTypeUsed2;
    if (megaSignalTypeUsed == megaSignalTypeUsed2)
    {
    }

    else
    {
      megaSignalTypeUsed3 = [(BMMomentsEventData *)self megaSignalTypeUsed];
      megaSignalTypeUsed4 = [v5 megaSignalTypeUsed];
      v71 = [megaSignalTypeUsed3 isEqual:megaSignalTypeUsed4];

      if (!v71)
      {
        goto LABEL_131;
      }
    }

    if (!-[BMMomentsEventData hasViewVisibleSuggestionsCount](self, "hasViewVisibleSuggestionsCount") && ![v5 hasViewVisibleSuggestionsCount] || -[BMMomentsEventData hasViewVisibleSuggestionsCount](self, "hasViewVisibleSuggestionsCount") && objc_msgSend(v5, "hasViewVisibleSuggestionsCount") && (v72 = -[BMMomentsEventData viewVisibleSuggestionsCount](self, "viewVisibleSuggestionsCount"), v72 == objc_msgSend(v5, "viewVisibleSuggestionsCount")))
    {
      if (!-[BMMomentsEventData hasViewTotalSuggestionsCount](self, "hasViewTotalSuggestionsCount") && ![v5 hasViewTotalSuggestionsCount] || -[BMMomentsEventData hasViewTotalSuggestionsCount](self, "hasViewTotalSuggestionsCount") && objc_msgSend(v5, "hasViewTotalSuggestionsCount") && (v73 = -[BMMomentsEventData viewTotalSuggestionsCount](self, "viewTotalSuggestionsCount"), v73 == objc_msgSend(v5, "viewTotalSuggestionsCount")))
      {
        onboardingFlowCompletionState = [(BMMomentsEventData *)self onboardingFlowCompletionState];
        if (onboardingFlowCompletionState == [v5 onboardingFlowCompletionState])
        {
          if (!-[BMMomentsEventData hasIsJournalAppInstalled](self, "hasIsJournalAppInstalled") && ![v5 hasIsJournalAppInstalled] || -[BMMomentsEventData hasIsJournalAppInstalled](self, "hasIsJournalAppInstalled") && objc_msgSend(v5, "hasIsJournalAppInstalled") && (v75 = -[BMMomentsEventData isJournalAppInstalled](self, "isJournalAppInstalled"), v75 == objc_msgSend(v5, "isJournalAppInstalled")))
          {
            if (!-[BMMomentsEventData hasIsJournalAppLocked](self, "hasIsJournalAppLocked") && ![v5 hasIsJournalAppLocked] || -[BMMomentsEventData hasIsJournalAppLocked](self, "hasIsJournalAppLocked") && objc_msgSend(v5, "hasIsJournalAppLocked") && (v76 = -[BMMomentsEventData isJournalAppLocked](self, "isJournalAppLocked"), v76 == objc_msgSend(v5, "isJournalAppLocked")))
            {
              if (!-[BMMomentsEventData hasIsJournalSuggestionSkipped](self, "hasIsJournalSuggestionSkipped") && ![v5 hasIsJournalSuggestionSkipped] || -[BMMomentsEventData hasIsJournalSuggestionSkipped](self, "hasIsJournalSuggestionSkipped") && objc_msgSend(v5, "hasIsJournalSuggestionSkipped") && (v77 = -[BMMomentsEventData isJournalSuggestionSkipped](self, "isJournalSuggestionSkipped"), v77 == objc_msgSend(v5, "isJournalSuggestionSkipped")))
              {
                if (!-[BMMomentsEventData hasIsActivitySettingsSwitchEnabled](self, "hasIsActivitySettingsSwitchEnabled") && ![v5 hasIsActivitySettingsSwitchEnabled] || -[BMMomentsEventData hasIsActivitySettingsSwitchEnabled](self, "hasIsActivitySettingsSwitchEnabled") && objc_msgSend(v5, "hasIsActivitySettingsSwitchEnabled") && (v78 = -[BMMomentsEventData isActivitySettingsSwitchEnabled](self, "isActivitySettingsSwitchEnabled"), v78 == objc_msgSend(v5, "isActivitySettingsSwitchEnabled")))
                {
                  if (!-[BMMomentsEventData hasIsCommunicationSettingsSwitchEnabled](self, "hasIsCommunicationSettingsSwitchEnabled") && ![v5 hasIsCommunicationSettingsSwitchEnabled] || -[BMMomentsEventData hasIsCommunicationSettingsSwitchEnabled](self, "hasIsCommunicationSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsCommunicationSettingsSwitchEnabled") && (v79 = -[BMMomentsEventData isCommunicationSettingsSwitchEnabled](self, "isCommunicationSettingsSwitchEnabled"), v79 == objc_msgSend(v5, "isCommunicationSettingsSwitchEnabled")))
                  {
                    if (!-[BMMomentsEventData hasIsSignificantLocationSettingsSwitchEnabled](self, "hasIsSignificantLocationSettingsSwitchEnabled") && ![v5 hasIsSignificantLocationSettingsSwitchEnabled] || -[BMMomentsEventData hasIsSignificantLocationSettingsSwitchEnabled](self, "hasIsSignificantLocationSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsSignificantLocationSettingsSwitchEnabled") && (v80 = -[BMMomentsEventData isSignificantLocationSettingsSwitchEnabled](self, "isSignificantLocationSettingsSwitchEnabled"), v80 == objc_msgSend(v5, "isSignificantLocationSettingsSwitchEnabled")))
                    {
                      if (!-[BMMomentsEventData hasIsMediaSettingsSwitchEnabled](self, "hasIsMediaSettingsSwitchEnabled") && ![v5 hasIsMediaSettingsSwitchEnabled] || -[BMMomentsEventData hasIsMediaSettingsSwitchEnabled](self, "hasIsMediaSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsMediaSettingsSwitchEnabled") && (v81 = -[BMMomentsEventData isMediaSettingsSwitchEnabled](self, "isMediaSettingsSwitchEnabled"), v81 == objc_msgSend(v5, "isMediaSettingsSwitchEnabled")))
                      {
                        if (!-[BMMomentsEventData hasIsNearbyPeopleSettingsSwitchEnabled](self, "hasIsNearbyPeopleSettingsSwitchEnabled") && ![v5 hasIsNearbyPeopleSettingsSwitchEnabled] || -[BMMomentsEventData hasIsNearbyPeopleSettingsSwitchEnabled](self, "hasIsNearbyPeopleSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsNearbyPeopleSettingsSwitchEnabled") && (v82 = -[BMMomentsEventData isNearbyPeopleSettingsSwitchEnabled](self, "isNearbyPeopleSettingsSwitchEnabled"), v82 == objc_msgSend(v5, "isNearbyPeopleSettingsSwitchEnabled")))
                        {
                          if (!-[BMMomentsEventData hasIsPhotoSettingsSwitchEnabled](self, "hasIsPhotoSettingsSwitchEnabled") && ![v5 hasIsPhotoSettingsSwitchEnabled] || -[BMMomentsEventData hasIsPhotoSettingsSwitchEnabled](self, "hasIsPhotoSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsPhotoSettingsSwitchEnabled") && (v83 = -[BMMomentsEventData isPhotoSettingsSwitchEnabled](self, "isPhotoSettingsSwitchEnabled"), v83 == objc_msgSend(v5, "isPhotoSettingsSwitchEnabled")))
                          {
                            if (!-[BMMomentsEventData hasIsStateOfMindSettingsSwitchEnabled](self, "hasIsStateOfMindSettingsSwitchEnabled") && ![v5 hasIsStateOfMindSettingsSwitchEnabled] || -[BMMomentsEventData hasIsStateOfMindSettingsSwitchEnabled](self, "hasIsStateOfMindSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsStateOfMindSettingsSwitchEnabled") && (v84 = -[BMMomentsEventData isStateOfMindSettingsSwitchEnabled](self, "isStateOfMindSettingsSwitchEnabled"), v84 == objc_msgSend(v5, "isStateOfMindSettingsSwitchEnabled")))
                            {
                              if (!-[BMMomentsEventData hasIsReflectionSettingsSwitchEnabled](self, "hasIsReflectionSettingsSwitchEnabled") && ![v5 hasIsReflectionSettingsSwitchEnabled] || -[BMMomentsEventData hasIsReflectionSettingsSwitchEnabled](self, "hasIsReflectionSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsReflectionSettingsSwitchEnabled") && (v85 = -[BMMomentsEventData isReflectionSettingsSwitchEnabled](self, "isReflectionSettingsSwitchEnabled"), v85 == objc_msgSend(v5, "isReflectionSettingsSwitchEnabled")))
                              {
                                if (!-[BMMomentsEventData hasIsBroadSystemLocationSettingsSwitchEnabled](self, "hasIsBroadSystemLocationSettingsSwitchEnabled") && ![v5 hasIsBroadSystemLocationSettingsSwitchEnabled])
                                {
                                  LOBYTE(v12) = 1;
                                  goto LABEL_132;
                                }

                                if (-[BMMomentsEventData hasIsBroadSystemLocationSettingsSwitchEnabled](self, "hasIsBroadSystemLocationSettingsSwitchEnabled") && [v5 hasIsBroadSystemLocationSettingsSwitchEnabled])
                                {
                                  isBroadSystemLocationSettingsSwitchEnabled = [(BMMomentsEventData *)self isBroadSystemLocationSettingsSwitchEnabled];
                                  v12 = isBroadSystemLocationSettingsSwitchEnabled ^ [v5 isBroadSystemLocationSettingsSwitchEnabled] ^ 1;
LABEL_132:

                                  goto LABEL_133;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

LABEL_131:
    LOBYTE(v12) = 0;
    goto LABEL_132;
  }

  LOBYTE(v12) = 0;
LABEL_133:

  return v12;
}

- (NSDate)endDate
{
  if (self->_hasRaw_endDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_endDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSDate)startDate
{
  if (self->_hasRaw_startDate)
  {
    v2 = MEMORY[0x1E698F280];
    v3 = [MEMORY[0x1E696AD98] numberWithDouble:self->_raw_startDate];
    v4 = [v2 convertValue:v3 toType:2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)jsonDictionary
{
  v104[30] = *MEMORY[0x1E69E9840];
  event = [(BMMomentsEventData *)self event];
  jsonDictionary = [event jsonDictionary];

  bundle = [(BMMomentsEventData *)self bundle];
  jsonDictionary2 = [bundle jsonDictionary];

  if ([(BMMomentsEventData *)self hasIsBundle])
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isBundle](self, "isBundle")}];
  }

  else
  {
    v7 = 0;
  }

  if ([(BMMomentsEventData *)self hasIHAState])
  {
    v78 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData IHAState](self, "IHAState")}];
  }

  else
  {
    v78 = 0;
  }

  if ([(BMMomentsEventData *)self hasAge])
  {
    v8 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventData age](self, "age")}];
  }

  else
  {
    v8 = 0;
  }

  v102 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventData ageRange](self, "ageRange")}];
  v101 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventData biologicalSex](self, "biologicalSex")}];
  startDate = [(BMMomentsEventData *)self startDate];
  if (startDate)
  {
    v10 = MEMORY[0x1E696AD98];
    startDate2 = [(BMMomentsEventData *)self startDate];
    [startDate2 timeIntervalSince1970];
    v100 = [v10 numberWithDouble:?];
  }

  else
  {
    v100 = 0;
  }

  endDate = [(BMMomentsEventData *)self endDate];
  if (endDate)
  {
    v13 = MEMORY[0x1E696AD98];
    endDate2 = [(BMMomentsEventData *)self endDate];
    [endDate2 timeIntervalSince1970];
    v99 = [v13 numberWithDouble:?];
  }

  else
  {
    v99 = 0;
  }

  categoryOfEvent = [(BMMomentsEventData *)self categoryOfEvent];
  bundleInterface = [(BMMomentsEventData *)self bundleInterface];
  bundleEvergreenType = [(BMMomentsEventData *)self bundleEvergreenType];
  sugSeetEngType = [(BMMomentsEventData *)self sugSeetEngType];
  appEntryEngType = [(BMMomentsEventData *)self appEntryEngType];
  megaSignalTypeUsed = [(BMMomentsEventData *)self megaSignalTypeUsed];
  if ([(BMMomentsEventData *)self hasViewVisibleSuggestionsCount])
  {
    v92 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventData viewVisibleSuggestionsCount](self, "viewVisibleSuggestionsCount")}];
  }

  else
  {
    v92 = 0;
  }

  if ([(BMMomentsEventData *)self hasViewTotalSuggestionsCount])
  {
    v91 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventData viewTotalSuggestionsCount](self, "viewTotalSuggestionsCount")}];
  }

  else
  {
    v91 = 0;
  }

  v90 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventData onboardingFlowCompletionState](self, "onboardingFlowCompletionState")}];
  if ([(BMMomentsEventData *)self hasIsJournalAppInstalled])
  {
    v89 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isJournalAppInstalled](self, "isJournalAppInstalled")}];
  }

  else
  {
    v89 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsJournalAppLocked])
  {
    v88 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isJournalAppLocked](self, "isJournalAppLocked")}];
  }

  else
  {
    v88 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsJournalSuggestionSkipped])
  {
    v87 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isJournalSuggestionSkipped](self, "isJournalSuggestionSkipped")}];
  }

  else
  {
    v87 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsActivitySettingsSwitchEnabled])
  {
    v86 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isActivitySettingsSwitchEnabled](self, "isActivitySettingsSwitchEnabled")}];
  }

  else
  {
    v86 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsCommunicationSettingsSwitchEnabled])
  {
    v85 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isCommunicationSettingsSwitchEnabled](self, "isCommunicationSettingsSwitchEnabled")}];
  }

  else
  {
    v85 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsSignificantLocationSettingsSwitchEnabled])
  {
    v84 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isSignificantLocationSettingsSwitchEnabled](self, "isSignificantLocationSettingsSwitchEnabled")}];
  }

  else
  {
    v84 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsMediaSettingsSwitchEnabled])
  {
    v83 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isMediaSettingsSwitchEnabled](self, "isMediaSettingsSwitchEnabled")}];
  }

  else
  {
    v83 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsNearbyPeopleSettingsSwitchEnabled])
  {
    v82 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isNearbyPeopleSettingsSwitchEnabled](self, "isNearbyPeopleSettingsSwitchEnabled")}];
  }

  else
  {
    v82 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsPhotoSettingsSwitchEnabled])
  {
    v81 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isPhotoSettingsSwitchEnabled](self, "isPhotoSettingsSwitchEnabled")}];
  }

  else
  {
    v81 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsStateOfMindSettingsSwitchEnabled])
  {
    v80 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isStateOfMindSettingsSwitchEnabled](self, "isStateOfMindSettingsSwitchEnabled")}];
  }

  else
  {
    v80 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsReflectionSettingsSwitchEnabled])
  {
    v79 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isReflectionSettingsSwitchEnabled](self, "isReflectionSettingsSwitchEnabled")}];
  }

  else
  {
    v79 = 0;
  }

  if ([(BMMomentsEventData *)self hasIsBroadSystemLocationSettingsSwitchEnabled])
  {
    v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isBroadSystemLocationSettingsSwitchEnabled](self, "isBroadSystemLocationSettingsSwitchEnabled")}];
  }

  else
  {
    v15 = 0;
  }

  v103[0] = @"event";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v70 = null;
  v104[0] = null;
  v103[1] = @"bundle";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v69 = null2;
  v104[1] = null2;
  v103[2] = @"isBundle";
  null3 = v7;
  if (!v7)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v68 = null3;
  v104[2] = null3;
  v103[3] = @"IHAState";
  null4 = v78;
  if (!v78)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v20 = jsonDictionary;
  v67 = null4;
  v104[3] = null4;
  v103[4] = @"age";
  null5 = v8;
  if (!v8)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v66 = null5;
  v104[4] = null5;
  v103[5] = @"ageRange";
  null6 = v102;
  if (!v102)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v104[5] = null6;
  v103[6] = @"biologicalSex";
  null7 = v101;
  if (!v101)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v104[6] = null7;
  v103[7] = @"startDate";
  null8 = v100;
  if (!v100)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v104[7] = null8;
  v103[8] = @"endDate";
  null9 = v99;
  if (!v99)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v104[8] = null9;
  v103[9] = @"categoryOfEvent";
  null10 = categoryOfEvent;
  if (!categoryOfEvent)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v74 = null10;
  v104[9] = null10;
  v103[10] = @"bundleInterface";
  null11 = bundleInterface;
  if (!bundleInterface)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v62 = null11;
  v104[10] = null11;
  v103[11] = @"bundleEvergreenType";
  null12 = bundleEvergreenType;
  if (!bundleEvergreenType)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v73 = null12;
  v104[11] = null12;
  v103[12] = @"sugSeetEngType";
  null13 = sugSeetEngType;
  if (!sugSeetEngType)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v72 = null13;
  v104[12] = null13;
  v103[13] = @"appEntryEngType";
  null14 = appEntryEngType;
  if (!appEntryEngType)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v31 = null14;
  v104[13] = null14;
  v103[14] = @"megaSignalTypeUsed";
  null15 = megaSignalTypeUsed;
  if (!megaSignalTypeUsed)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v61 = null15;
  v104[14] = null15;
  v103[15] = @"viewVisibleSuggestionsCount";
  null16 = v92;
  if (!v92)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v60 = null16;
  v104[15] = null16;
  v103[16] = @"viewTotalSuggestionsCount";
  null17 = v91;
  if (!v91)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v59 = null17;
  v104[16] = null17;
  v103[17] = @"onboardingFlowCompletionState";
  null18 = v90;
  if (!v90)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v58 = null18;
  v104[17] = null18;
  v103[18] = @"isJournalAppInstalled";
  null19 = v89;
  if (!v89)
  {
    null19 = [MEMORY[0x1E695DFB0] null];
  }

  v57 = null19;
  v104[18] = null19;
  v103[19] = @"isJournalAppLocked";
  null20 = v88;
  if (!v88)
  {
    null20 = [MEMORY[0x1E695DFB0] null];
  }

  v56 = null20;
  v104[19] = null20;
  v103[20] = @"isJournalSuggestionSkipped";
  null21 = v87;
  if (!v87)
  {
    null21 = [MEMORY[0x1E695DFB0] null];
  }

  v76 = v7;
  v55 = null21;
  v104[20] = null21;
  v103[21] = @"isActivitySettingsSwitchEnabled";
  null22 = v86;
  if (!v86)
  {
    null22 = [MEMORY[0x1E695DFB0] null];
  }

  v65 = null6;
  v54 = null22;
  v104[21] = null22;
  v103[22] = @"isCommunicationSettingsSwitchEnabled";
  null23 = v85;
  if (!v85)
  {
    null23 = [MEMORY[0x1E695DFB0] null];
  }

  v64 = null7;
  v53 = null23;
  v104[22] = null23;
  v103[23] = @"isSignificantLocationSettingsSwitchEnabled";
  null24 = v84;
  v42 = v20;
  if (!v84)
  {
    null24 = [MEMORY[0x1E695DFB0] null];
  }

  v77 = jsonDictionary2;
  v52 = null24;
  v104[23] = null24;
  v103[24] = @"isMediaSettingsSwitchEnabled";
  null25 = v83;
  if (!v83)
  {
    null25 = [MEMORY[0x1E695DFB0] null];
  }

  v63 = null8;
  v75 = v8;
  v104[24] = null25;
  v103[25] = @"isNearbyPeopleSettingsSwitchEnabled";
  null26 = v82;
  if (!v82)
  {
    null26 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = v42;
  v104[25] = null26;
  v103[26] = @"isPhotoSettingsSwitchEnabled";
  null27 = v81;
  if (!v81)
  {
    null27 = [MEMORY[0x1E695DFB0] null];
  }

  v104[26] = null27;
  v103[27] = @"isStateOfMindSettingsSwitchEnabled";
  null28 = v80;
  if (!v80)
  {
    null28 = [MEMORY[0x1E695DFB0] null];
  }

  v104[27] = null28;
  v103[28] = @"isReflectionSettingsSwitchEnabled";
  null29 = v79;
  if (!v79)
  {
    null29 = [MEMORY[0x1E695DFB0] null];
  }

  v104[28] = null29;
  v103[29] = @"isBroadSystemLocationSettingsSwitchEnabled";
  null30 = v15;
  if (!v15)
  {
    null30 = [MEMORY[0x1E695DFB0] null];
  }

  v104[29] = null30;
  v71 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v104 forKeys:v103 count:30];
  if (!v15)
  {
  }

  v50 = v31;
  if (!v79)
  {

    v50 = v31;
  }

  if (!v80)
  {

    v50 = v31;
  }

  if (!v81)
  {

    v50 = v31;
  }

  if (!v82)
  {

    v50 = v31;
  }

  if (!v83)
  {

    v50 = v31;
  }

  if (!v84)
  {

    v50 = v31;
  }

  if (!v85)
  {

    v50 = v31;
  }

  if (!v86)
  {

    v50 = v31;
  }

  if (!v87)
  {

    v50 = v31;
  }

  if (!v88)
  {

    v50 = v31;
  }

  if (!v89)
  {

    v50 = v31;
  }

  if (!v90)
  {

    v50 = v31;
  }

  if (!v91)
  {

    v50 = v31;
  }

  if (!v92)
  {

    v50 = v31;
  }

  if (!megaSignalTypeUsed)
  {

    v50 = v31;
  }

  if (!appEntryEngType)
  {
  }

  if (!sugSeetEngType)
  {
  }

  if (!bundleEvergreenType)
  {
  }

  if (!bundleInterface)
  {
  }

  if (!categoryOfEvent)
  {
  }

  if (!v99)
  {
  }

  if (!v100)
  {
  }

  if (!v101)
  {
  }

  if (v102)
  {
    if (v75)
    {
      goto LABEL_168;
    }
  }

  else
  {

    if (v75)
    {
LABEL_168:
      if (v78)
      {
        goto LABEL_169;
      }

      goto LABEL_177;
    }
  }

  if (v78)
  {
LABEL_169:
    if (v76)
    {
      goto LABEL_170;
    }

    goto LABEL_178;
  }

LABEL_177:

  if (v76)
  {
LABEL_170:
    if (v77)
    {
      goto LABEL_171;
    }

LABEL_179:

    if (v45)
    {
      goto LABEL_172;
    }

    goto LABEL_180;
  }

LABEL_178:

  if (!v77)
  {
    goto LABEL_179;
  }

LABEL_171:
  if (v45)
  {
    goto LABEL_172;
  }

LABEL_180:

LABEL_172:

  return v71;
}

- (BMMomentsEventData)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v355[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v293 = [dictionaryCopy objectForKeyedSubscript:@"event"];
  if (!v293 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v295 = 0;
    v292 = v293;
    v7 = [[BMMomentsEventDataEvent alloc] initWithJSONDictionary:v292 error:&v295];
    v12 = v295;
    if (v12)
    {
      if (error)
      {
        v12 = v12;
        *error = v12;
      }

LABEL_39:
      v14 = 0;
      goto LABEL_281;
    }

LABEL_4:
    v292 = [dictionaryCopy objectForKeyedSubscript:@"bundle"];
    if (!v292 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v288 = v7;
      v289 = 0;
      goto LABEL_7;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v292;
      v294 = 0;
      v289 = [[BMMomentsEventDataEventBundle alloc] initWithJSONDictionary:v8 error:&v294];
      v13 = v294;
      if (v13)
      {
        if (error)
        {
          v13 = v13;
          *error = v13;
        }

        v14 = 0;
        goto LABEL_280;
      }

      v288 = v7;

LABEL_7:
      v291 = [dictionaryCopy objectForKeyedSubscript:@"isBundle"];
      selfCopy = self;
      if (v291 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!error)
          {
            v8 = 0;
            v14 = 0;
LABEL_279:

            v7 = v288;
            goto LABEL_280;
          }

          v28 = objc_alloc(MEMORY[0x1E696ABC0]);
          v29 = *MEMORY[0x1E698F240];
          v350 = *MEMORY[0x1E696A578];
          v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBundle"];
          v351 = v30;
          v290 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v351 forKeys:&v350 count:1];
          v8 = 0;
          v14 = 0;
          *error = [v28 initWithDomain:v29 code:2 userInfo:v290];
          goto LABEL_278;
        }

        v8 = v291;
      }

      else
      {
        v8 = 0;
      }

      [dictionaryCopy objectForKeyedSubscript:@"IHAState"];
      v290 = v287 = v8;
      if (!v290 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v283 = 0;
        goto LABEL_13;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v283 = v290;
LABEL_13:
        v9 = [dictionaryCopy objectForKeyedSubscript:@"age"];
        v284 = v9;
        if (!v9 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          errorCopy2 = error;
          v279 = 0;
          goto LABEL_16;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          errorCopy2 = error;
          v279 = v9;
LABEL_16:
          v10 = [dictionaryCopy objectForKeyedSubscript:@"ageRange"];
          v282 = v10;
          if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v280 = 0;
            goto LABEL_53;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v280 = v11;
LABEL_52:

LABEL_53:
            v42 = [dictionaryCopy objectForKeyedSubscript:@"biologicalSex"];
            v276 = v42;
            if (!v42 || (v43 = v42, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
            {
              v277 = 0;
              goto LABEL_61;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v277 = v43;
LABEL_60:

LABEL_61:
              v45 = [dictionaryCopy objectForKeyedSubscript:@"startDate"];
              v275 = v45;
              if (!v45 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v274 = 0;
                goto LABEL_64;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v53 = v45;
                v54 = objc_alloc(MEMORY[0x1E695DF00]);
                [v53 doubleValue];
                v274 = [v54 initWithTimeIntervalSince1970:?];

                goto LABEL_64;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v62 = objc_alloc_init(MEMORY[0x1E696AC80]);
                v63 = v45;
                v274 = [v62 dateFromString:v63];

                goto LABEL_64;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v274 = v45;
LABEL_64:
                v46 = [dictionaryCopy objectForKeyedSubscript:@"endDate"];
                v272 = v46;
                if (!v46 || (v47 = v46, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                {
                  v48 = 0;
                  goto LABEL_67;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v55 = v47;
                  v56 = objc_alloc(MEMORY[0x1E695DF00]);
                  [v55 doubleValue];
                  v48 = [v56 initWithTimeIntervalSince1970:?];

                  goto LABEL_67;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v64 = objc_alloc_init(MEMORY[0x1E696AC80]);
                  v65 = v47;
                  v48 = [v64 dateFromString:v65];

                  goto LABEL_67;
                }

                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v48 = v47;
LABEL_67:
                  v49 = [dictionaryCopy objectForKeyedSubscript:@"categoryOfEvent"];
                  v271 = v49;
                  v273 = v48;
                  if (!v49 || (v50 = v49, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                  {
                    v51 = 0;
LABEL_70:
                    v281 = [dictionaryCopy objectForKeyedSubscript:@"bundleInterface"];
                    if (!v281)
                    {
                      v269 = 0;
                      v52 = v51;
                      goto LABEL_82;
                    }

                    objc_opt_class();
                    v52 = v51;
                    if (objc_opt_isKindOfClass())
                    {
                      v269 = 0;
                      goto LABEL_82;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v269 = v281;
LABEL_82:
                      v57 = [dictionaryCopy objectForKeyedSubscript:@"bundleEvergreenType"];
                      v268 = v57;
                      if (!v57 || (v58 = v57, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v59 = 0;
                        goto LABEL_85;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v59 = v58;
LABEL_85:
                        v270 = [dictionaryCopy objectForKeyedSubscript:@"sugSeetEngType"];
                        v267 = v59;
                        if (!v270 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                        {
                          v60 = v52;
                          v266 = 0;
LABEL_88:
                          v61 = [dictionaryCopy objectForKeyedSubscript:@"appEntryEngType"];
                          v265 = v61;
                          if (!v61)
                          {
LABEL_102:
                            v66 = [dictionaryCopy objectForKeyedSubscript:@"megaSignalTypeUsed"];
                            v264 = v66;
                            if (!v66)
                            {
                              v69 = 0;
                              v52 = v60;
                              goto LABEL_110;
                            }

                            v67 = v66;
                            objc_opt_class();
                            v68 = v67;
                            v52 = v60;
                            if (objc_opt_isKindOfClass())
                            {
                              v69 = 0;
LABEL_110:
                              v72 = [dictionaryCopy objectForKeyedSubscript:@"viewVisibleSuggestionsCount"];
                              if (!v72)
                              {
                                v263 = 0;
                                v73 = v69;
                                goto LABEL_119;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v73 = v69;
                                v263 = 0;
                                goto LABEL_119;
                              }

                              objc_opt_class();
                              if (objc_opt_isKindOfClass())
                              {
                                v73 = v69;
                                v263 = v72;
LABEL_119:
                                v76 = [dictionaryCopy objectForKeyedSubscript:@"viewTotalSuggestionsCount"];
                                v262 = v76;
                                if (!v76 || (v77 = v76, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                {
                                  v259 = 0;
LABEL_122:
                                  v78 = [dictionaryCopy objectForKeyedSubscript:@"onboardingFlowCompletionState"];
                                  v256 = v72;
                                  v260 = v78;
                                  if (v78 && (v79 = v78, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                  {
                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v89 = v79;
                                    }

                                    else
                                    {
                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        if (!errorCopy2)
                                        {
                                          v261 = 0;
                                          v14 = 0;
                                          v30 = v283;
                                          v35 = v279;
                                          v69 = v73;
                                          v104 = v259;
                                          goto LABEL_264;
                                        }

                                        v160 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v161 = *MEMORY[0x1E698F240];
                                        v320 = *MEMORY[0x1E696A578];
                                        v258 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"onboardingFlowCompletionState"];
                                        v321 = v258;
                                        v257 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v321 forKeys:&v320 count:1];
                                        v261 = 0;
                                        v14 = 0;
                                        *errorCopy2 = [v160 initWithDomain:v161 code:2 userInfo:?];
                                        v30 = v283;
                                        v35 = v279;
                                        v72 = v256;
                                        v69 = v73;
                                        goto LABEL_244;
                                      }

                                      v116 = v79;
                                      v89 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataOnboardingFlowCompletionFromString(v116)];
                                    }

                                    v261 = v89;
                                  }

                                  else
                                  {
                                    v261 = 0;
                                  }

                                  v117 = [dictionaryCopy objectForKeyedSubscript:@"isJournalAppInstalled"];
                                  v257 = v117;
                                  if (!v117 || (v118 = v117, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                  {
                                    v258 = 0;
LABEL_165:
                                    v119 = [dictionaryCopy objectForKeyedSubscript:@"isJournalAppLocked"];
                                    v253 = v119;
                                    if (v119 && (v120 = v119, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                    {
                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        if (!errorCopy2)
                                        {
                                          v254 = 0;
                                          v14 = 0;
                                          v30 = v283;
                                          v35 = v279;
                                          v69 = v73;
                                          goto LABEL_261;
                                        }

                                        v142 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v143 = *MEMORY[0x1E698F240];
                                        v316 = *MEMORY[0x1E696A578];
                                        v144 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v222 = objc_opt_class();
                                        v145 = v144;
                                        v9 = v284;
                                        v252 = [v145 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v222, @"isJournalAppLocked"];
                                        v317 = v252;
                                        v146 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v317 forKeys:&v316 count:1];
                                        v147 = v142;
                                        v72 = v256;
                                        v69 = v73;
                                        v251 = v146;
                                        v254 = 0;
                                        v14 = 0;
                                        *errorCopy2 = [v147 initWithDomain:v143 code:2 userInfo:?];
                                        v30 = v283;
                                        v35 = v279;
LABEL_260:

LABEL_261:
                                        v104 = v259;
                                        goto LABEL_262;
                                      }

                                      v254 = v120;
                                    }

                                    else
                                    {
                                      v254 = 0;
                                    }

                                    v121 = [dictionaryCopy objectForKeyedSubscript:@"isJournalSuggestionSkipped"];
                                    v251 = v121;
                                    if (v121 && (v122 = v121, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                    {
                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                      {
                                        if (!errorCopy2)
                                        {
                                          v252 = 0;
                                          v14 = 0;
                                          v30 = v283;
                                          v35 = v279;
                                          v69 = v73;
                                          goto LABEL_260;
                                        }

                                        v148 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v149 = *MEMORY[0x1E698F240];
                                        v314 = *MEMORY[0x1E696A578];
                                        v150 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v223 = objc_opt_class();
                                        v151 = v150;
                                        v9 = v284;
                                        v250 = [v151 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v223, @"isJournalSuggestionSkipped"];
                                        v315 = v250;
                                        v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v315 forKeys:&v314 count:1];
                                        v153 = v148;
                                        v72 = v256;
                                        v69 = v73;
                                        v255 = v152;
                                        v252 = 0;
                                        v14 = 0;
                                        *errorCopy2 = [v153 initWithDomain:v149 code:2 userInfo:v152];
                                        goto LABEL_294;
                                      }

                                      v252 = v122;
                                    }

                                    else
                                    {
                                      v252 = 0;
                                    }

                                    [dictionaryCopy objectForKeyedSubscript:@"isActivitySettingsSwitchEnabled"];
                                    v255 = v69 = v73;
                                    if (!v255 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                    {
                                      v250 = 0;
                                      goto LABEL_174;
                                    }

                                    objc_opt_class();
                                    if (objc_opt_isKindOfClass())
                                    {
                                      v250 = v255;
LABEL_174:
                                      v123 = [dictionaryCopy objectForKeyedSubscript:@"isCommunicationSettingsSwitchEnabled"];
                                      v247 = v123;
                                      if (!v123 || (v124 = v123, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                      {
                                        v249 = 0;
                                        goto LABEL_177;
                                      }

                                      objc_opt_class();
                                      if (objc_opt_isKindOfClass())
                                      {
                                        v249 = v124;
LABEL_177:
                                        v125 = [dictionaryCopy objectForKeyedSubscript:@"isSignificantLocationSettingsSwitchEnabled"];
                                        v245 = v125;
                                        if (!v125 || (v126 = v125, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                        {
                                          v248 = 0;
                                          goto LABEL_180;
                                        }

                                        objc_opt_class();
                                        if (objc_opt_isKindOfClass())
                                        {
                                          v248 = v126;
LABEL_180:
                                          v127 = [dictionaryCopy objectForKeyedSubscript:@"isMediaSettingsSwitchEnabled"];
                                          v243 = v127;
                                          if (!v127 || (v128 = v127, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                          {
                                            v244 = 0;
                                            goto LABEL_183;
                                          }

                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v244 = v128;
LABEL_183:
                                            v129 = [dictionaryCopy objectForKeyedSubscript:@"isNearbyPeopleSettingsSwitchEnabled"];
                                            v241 = v129;
                                            if (!v129 || (v130 = v129, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                            {
                                              v242 = 0;
                                              goto LABEL_186;
                                            }

                                            objc_opt_class();
                                            if (objc_opt_isKindOfClass())
                                            {
                                              v242 = v130;
LABEL_186:
                                              v131 = [dictionaryCopy objectForKeyedSubscript:@"isPhotoSettingsSwitchEnabled"];
                                              v238 = v131;
                                              if (!v131 || (v132 = v131, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                              {
                                                v240 = 0;
                                                goto LABEL_189;
                                              }

                                              objc_opt_class();
                                              if (objc_opt_isKindOfClass())
                                              {
                                                v240 = v132;
LABEL_189:
                                                v133 = [dictionaryCopy objectForKeyedSubscript:@"isStateOfMindSettingsSwitchEnabled"];
                                                v237 = v133;
                                                if (!v133 || (v134 = v133, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                                                {
                                                  v239 = 0;
LABEL_192:
                                                  v135 = [dictionaryCopy objectForKeyedSubscript:@"isReflectionSettingsSwitchEnabled"];
                                                  v236 = v135;
                                                  if (!v135)
                                                  {
                                                    goto LABEL_247;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v135 = 0;
                                                    goto LABEL_247;
                                                  }

                                                  objc_opt_class();
                                                  if (objc_opt_isKindOfClass())
                                                  {
                                                    v135 = v135;
LABEL_247:
                                                    v174 = [dictionaryCopy objectForKeyedSubscript:@"isBroadSystemLocationSettingsSwitchEnabled"];
                                                    v235 = v174;
                                                    if (v174 && (v175 = v174, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                                                    {
                                                      objc_opt_class();
                                                      v35 = v279;
                                                      if ((objc_opt_isKindOfClass() & 1) == 0)
                                                      {
                                                        if (errorCopy2)
                                                        {
                                                          v211 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                          v212 = *MEMORY[0x1E698F240];
                                                          v296 = *MEMORY[0x1E696A578];
                                                          v213 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isBroadSystemLocationSettingsSwitchEnabled"];
                                                          v297 = v213;
                                                          v214 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v297 forKeys:&v296 count:1];
                                                          v215 = v211;
                                                          v72 = v256;
                                                          v216 = v212;
                                                          v35 = v279;
                                                          *errorCopy2 = [v215 initWithDomain:v216 code:2 userInfo:v214];

                                                          v9 = v284;
                                                        }

                                                        v234 = 0;
                                                        v14 = 0;
                                                        v30 = v283;
                                                        goto LABEL_251;
                                                      }

                                                      v285 = v135;
                                                      v176 = v248;
                                                      v177 = v175;
                                                    }

                                                    else
                                                    {
                                                      v285 = v135;
                                                      v176 = v248;
                                                      v177 = 0;
                                                      v35 = v279;
                                                    }

                                                    intValue = [v280 intValue];
                                                    intValue2 = [v277 intValue];
                                                    v233 = v177;
                                                    v234 = v177;
                                                    v248 = v176;
                                                    LODWORD(v232) = [v261 intValue];
                                                    LODWORD(v217) = intValue2;
                                                    v30 = v283;
                                                    v14 = [(BMMomentsEventData *)selfCopy initWithEvent:v288 bundle:v289 isBundle:v287 IHAState:v283 age:v35 ageRange:intValue biologicalSex:v217 startDate:v274 endDate:v273 categoryOfEvent:v52 bundleInterface:v269 bundleEvergreenType:v267 sugSeetEngType:v266 appEntryEngType:v61 megaSignalTypeUsed:v69 viewVisibleSuggestionsCount:v263 viewTotalSuggestionsCount:v259 onboardingFlowCompletionState:v232 isJournalAppInstalled:v258 isJournalAppLocked:v254 isJournalSuggestionSkipped:v252 isActivitySettingsSwitchEnabled:v250 isCommunicationSettingsSwitchEnabled:v249 isSignificantLocationSettingsSwitchEnabled:v176 isMediaSettingsSwitchEnabled:v244 isNearbyPeopleSettingsSwitchEnabled:v242 isPhotoSettingsSwitchEnabled:v240 isStateOfMindSettingsSwitchEnabled:v239 isReflectionSettingsSwitchEnabled:v285 isBroadSystemLocationSettingsSwitchEnabled:v233];
                                                    selfCopy = v14;
                                                    v72 = v256;
                                                    v135 = v285;
LABEL_251:

LABEL_252:
LABEL_253:

LABEL_254:
LABEL_255:

LABEL_256:
LABEL_257:

LABEL_258:
LABEL_259:

                                                    goto LABEL_260;
                                                  }

                                                  if (errorCopy2)
                                                  {
                                                    v205 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                    v206 = *MEMORY[0x1E698F240];
                                                    v298 = *MEMORY[0x1E696A578];
                                                    v207 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                    v231 = objc_opt_class();
                                                    v208 = v207;
                                                    v9 = v284;
                                                    v234 = [v208 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v231, @"isReflectionSettingsSwitchEnabled"];
                                                    v299 = v234;
                                                    v209 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v299 forKeys:&v298 count:1];
                                                    v210 = v205;
                                                    v72 = v256;
                                                    v235 = v209;
                                                    v135 = 0;
                                                    v14 = 0;
                                                    *errorCopy2 = [v210 initWithDomain:v206 code:2 userInfo:?];
                                                    v30 = v283;
                                                    v35 = v279;
                                                    goto LABEL_251;
                                                  }

                                                  v135 = 0;
                                                  v14 = 0;
LABEL_316:
                                                  v30 = v283;
                                                  v35 = v279;
                                                  goto LABEL_252;
                                                }

                                                objc_opt_class();
                                                if (objc_opt_isKindOfClass())
                                                {
                                                  v239 = v134;
                                                  goto LABEL_192;
                                                }

                                                if (errorCopy2)
                                                {
                                                  v199 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                  v200 = *MEMORY[0x1E698F240];
                                                  v300 = *MEMORY[0x1E696A578];
                                                  v201 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                  v230 = objc_opt_class();
                                                  v202 = v201;
                                                  v9 = v284;
                                                  v135 = [v202 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v230, @"isStateOfMindSettingsSwitchEnabled"];
                                                  v301 = v135;
                                                  v203 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v301 forKeys:&v300 count:1];
                                                  v204 = v199;
                                                  v72 = v256;
                                                  v236 = v203;
                                                  v239 = 0;
                                                  v14 = 0;
                                                  *errorCopy2 = [v204 initWithDomain:v200 code:2 userInfo:?];
                                                  goto LABEL_316;
                                                }

                                                v239 = 0;
                                                v14 = 0;
LABEL_314:
                                                v30 = v283;
                                                v35 = v279;
                                                goto LABEL_253;
                                              }

                                              if (errorCopy2)
                                              {
                                                v193 = objc_alloc(MEMORY[0x1E696ABC0]);
                                                v194 = *MEMORY[0x1E698F240];
                                                v302 = *MEMORY[0x1E696A578];
                                                v195 = objc_alloc(MEMORY[0x1E696AEC0]);
                                                v229 = objc_opt_class();
                                                v196 = v195;
                                                v9 = v284;
                                                v239 = [v196 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v229, @"isPhotoSettingsSwitchEnabled"];
                                                v303 = v239;
                                                v197 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v303 forKeys:&v302 count:1];
                                                v198 = v193;
                                                v72 = v256;
                                                v237 = v197;
                                                v240 = 0;
                                                v14 = 0;
                                                *errorCopy2 = [v198 initWithDomain:v194 code:2 userInfo:?];
                                                goto LABEL_314;
                                              }

                                              v240 = 0;
                                              v14 = 0;
LABEL_312:
                                              v30 = v283;
                                              v35 = v279;
                                              goto LABEL_254;
                                            }

                                            if (errorCopy2)
                                            {
                                              v187 = objc_alloc(MEMORY[0x1E696ABC0]);
                                              v188 = *MEMORY[0x1E698F240];
                                              v304 = *MEMORY[0x1E696A578];
                                              v189 = objc_alloc(MEMORY[0x1E696AEC0]);
                                              v228 = objc_opt_class();
                                              v190 = v189;
                                              v9 = v284;
                                              v240 = [v190 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v228, @"isNearbyPeopleSettingsSwitchEnabled"];
                                              v305 = v240;
                                              v191 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v305 forKeys:&v304 count:1];
                                              v192 = v187;
                                              v72 = v256;
                                              v238 = v191;
                                              v242 = 0;
                                              v14 = 0;
                                              *errorCopy2 = [v192 initWithDomain:v188 code:2 userInfo:?];
                                              goto LABEL_312;
                                            }

                                            v242 = 0;
                                            v14 = 0;
LABEL_310:
                                            v30 = v283;
                                            v35 = v279;
                                            goto LABEL_255;
                                          }

                                          if (errorCopy2)
                                          {
                                            v181 = objc_alloc(MEMORY[0x1E696ABC0]);
                                            v182 = *MEMORY[0x1E698F240];
                                            v306 = *MEMORY[0x1E696A578];
                                            v183 = objc_alloc(MEMORY[0x1E696AEC0]);
                                            v227 = objc_opt_class();
                                            v184 = v183;
                                            v9 = v284;
                                            v242 = [v184 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v227, @"isMediaSettingsSwitchEnabled"];
                                            v307 = v242;
                                            v185 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v307 forKeys:&v306 count:1];
                                            v186 = v181;
                                            v72 = v256;
                                            v241 = v185;
                                            v244 = 0;
                                            v14 = 0;
                                            *errorCopy2 = [v186 initWithDomain:v182 code:2 userInfo:?];
                                            goto LABEL_310;
                                          }

                                          v244 = 0;
                                          v14 = 0;
LABEL_308:
                                          v30 = v283;
                                          v35 = v279;
                                          goto LABEL_256;
                                        }

                                        if (errorCopy2)
                                        {
                                          v168 = objc_alloc(MEMORY[0x1E696ABC0]);
                                          v169 = *MEMORY[0x1E698F240];
                                          v308 = *MEMORY[0x1E696A578];
                                          v170 = objc_alloc(MEMORY[0x1E696AEC0]);
                                          v226 = objc_opt_class();
                                          v171 = v170;
                                          v9 = v284;
                                          v244 = [v171 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v226, @"isSignificantLocationSettingsSwitchEnabled"];
                                          v309 = v244;
                                          v172 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v309 forKeys:&v308 count:1];
                                          v173 = v168;
                                          v72 = v256;
                                          v243 = v172;
                                          v248 = 0;
                                          v14 = 0;
                                          *errorCopy2 = [v173 initWithDomain:v169 code:2 userInfo:?];
                                          goto LABEL_308;
                                        }

                                        v248 = 0;
                                        v14 = 0;
LABEL_303:
                                        v30 = v283;
                                        v35 = v279;
                                        goto LABEL_257;
                                      }

                                      if (errorCopy2)
                                      {
                                        v162 = objc_alloc(MEMORY[0x1E696ABC0]);
                                        v163 = *MEMORY[0x1E698F240];
                                        v310 = *MEMORY[0x1E696A578];
                                        v164 = objc_alloc(MEMORY[0x1E696AEC0]);
                                        v225 = objc_opt_class();
                                        v165 = v164;
                                        v9 = v284;
                                        v248 = [v165 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v225, @"isCommunicationSettingsSwitchEnabled"];
                                        v311 = v248;
                                        v166 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v311 forKeys:&v310 count:1];
                                        v167 = v162;
                                        v72 = v256;
                                        v245 = v166;
                                        v249 = 0;
                                        v14 = 0;
                                        *errorCopy2 = [v167 initWithDomain:v163 code:2 userInfo:?];
                                        goto LABEL_303;
                                      }

                                      v249 = 0;
                                      v14 = 0;
LABEL_299:
                                      v30 = v283;
                                      v35 = v279;
                                      goto LABEL_258;
                                    }

                                    if (errorCopy2)
                                    {
                                      v154 = objc_alloc(MEMORY[0x1E696ABC0]);
                                      v155 = *MEMORY[0x1E698F240];
                                      v312 = *MEMORY[0x1E696A578];
                                      v156 = objc_alloc(MEMORY[0x1E696AEC0]);
                                      v224 = objc_opt_class();
                                      v157 = v156;
                                      v9 = v284;
                                      v249 = [v157 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v224, @"isActivitySettingsSwitchEnabled"];
                                      v313 = v249;
                                      v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v313 forKeys:&v312 count:1];
                                      v159 = v154;
                                      v72 = v256;
                                      v69 = v73;
                                      v247 = v158;
                                      v250 = 0;
                                      v14 = 0;
                                      *errorCopy2 = [v159 initWithDomain:v155 code:2 userInfo:?];
                                      goto LABEL_299;
                                    }

                                    v250 = 0;
                                    v14 = 0;
LABEL_294:
                                    v30 = v283;
                                    v35 = v279;
                                    goto LABEL_259;
                                  }

                                  objc_opt_class();
                                  if (objc_opt_isKindOfClass())
                                  {
                                    v258 = v118;
                                    goto LABEL_165;
                                  }

                                  if (errorCopy2)
                                  {
                                    v246 = v73;
                                    v136 = objc_alloc(MEMORY[0x1E696ABC0]);
                                    v137 = *MEMORY[0x1E698F240];
                                    v318 = *MEMORY[0x1E696A578];
                                    v138 = objc_alloc(MEMORY[0x1E696AEC0]);
                                    v221 = objc_opt_class();
                                    v139 = v138;
                                    v9 = v284;
                                    v254 = [v139 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v221, @"isJournalAppInstalled"];
                                    v319 = v254;
                                    v140 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v319 forKeys:&v318 count:1];
                                    v141 = v136;
                                    v72 = v256;
                                    v104 = v259;
                                    v69 = v246;
                                    v253 = v140;
                                    v258 = 0;
                                    v14 = 0;
                                    *errorCopy2 = [v141 initWithDomain:v137 code:2 userInfo:?];
                                    v30 = v283;
                                    v35 = v279;
LABEL_262:

                                    goto LABEL_263;
                                  }

                                  v258 = 0;
                                  v14 = 0;
                                  v30 = v283;
                                  v35 = v279;
                                  v69 = v73;
LABEL_244:
                                  v104 = v259;
LABEL_263:

                                  goto LABEL_264;
                                }

                                objc_opt_class();
                                if (objc_opt_isKindOfClass())
                                {
                                  v259 = v77;
                                  goto LABEL_122;
                                }

                                if (errorCopy2)
                                {
                                  v105 = v72;
                                  v106 = objc_alloc(MEMORY[0x1E696ABC0]);
                                  v107 = *MEMORY[0x1E698F240];
                                  v322 = *MEMORY[0x1E696A578];
                                  v108 = objc_alloc(MEMORY[0x1E696AEC0]);
                                  v220 = objc_opt_class();
                                  v109 = v108;
                                  v9 = v284;
                                  v261 = [v109 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v220, @"viewTotalSuggestionsCount"];
                                  v323 = v261;
                                  v110 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v323 forKeys:&v322 count:1];
                                  v111 = v106;
                                  v72 = v105;
                                  v69 = v73;
                                  v260 = v110;
                                  v104 = 0;
                                  v14 = 0;
                                  *errorCopy2 = [v111 initWithDomain:v107 code:2 userInfo:?];
                                  v30 = v283;
                                  v35 = v279;
LABEL_264:

                                  goto LABEL_265;
                                }

                                v14 = 0;
                                v30 = v283;
                                v35 = v279;
                                v69 = v73;
                                v104 = 0;
LABEL_265:

                                goto LABEL_266;
                              }

                              if (errorCopy2)
                              {
                                v96 = v69;
                                v97 = objc_alloc(MEMORY[0x1E696ABC0]);
                                v98 = *MEMORY[0x1E698F240];
                                v324 = *MEMORY[0x1E696A578];
                                v99 = objc_alloc(MEMORY[0x1E696AEC0]);
                                v219 = objc_opt_class();
                                v100 = v99;
                                v9 = v284;
                                v101 = [v100 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v219, @"viewVisibleSuggestionsCount"];
                                v325 = v101;
                                v102 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v325 forKeys:&v324 count:1];
                                v103 = v97;
                                v69 = v96;
                                v104 = v101;
                                v262 = v102;
                                v263 = 0;
                                v14 = 0;
                                *errorCopy2 = [v103 initWithDomain:v98 code:2 userInfo:?];
                                v30 = v283;
                                v35 = v279;
                                goto LABEL_265;
                              }

                              v263 = 0;
                              v14 = 0;
                              v30 = v283;
LABEL_227:
                              v35 = v279;
LABEL_266:

                              goto LABEL_267;
                            }

                            objc_opt_class();
                            if (objc_opt_isKindOfClass())
                            {
                              v69 = v68;
                              goto LABEL_110;
                            }

                            if (errorCopy2)
                            {
                              v92 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v93 = *MEMORY[0x1E698F240];
                              v326 = *MEMORY[0x1E696A578];
                              v263 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"megaSignalTypeUsed"];
                              v327 = v263;
                              v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v327 forKeys:&v326 count:1];
                              v95 = v92;
                              v72 = v94;
                              v69 = 0;
                              v14 = 0;
                              *errorCopy2 = [v95 initWithDomain:v93 code:2 userInfo:v94];
                              v30 = v283;
                              goto LABEL_227;
                            }

                            v69 = 0;
                            v14 = 0;
                            v30 = v283;
                            v35 = v279;
LABEL_267:

                            v45 = v275;
                            goto LABEL_268;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v61 = 0;
                            goto LABEL_102;
                          }

                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v61 = v61;
                            goto LABEL_102;
                          }

                          if (errorCopy2)
                          {
                            v90 = objc_alloc(MEMORY[0x1E696ABC0]);
                            v91 = *MEMORY[0x1E698F240];
                            v328 = *MEMORY[0x1E696A578];
                            v69 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"appEntryEngType"];
                            v329 = v69;
                            v264 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v329 forKeys:&v328 count:1];
                            v61 = 0;
                            v14 = 0;
                            *errorCopy2 = [v90 initWithDomain:v91 code:2 userInfo:?];
                            v30 = v283;
                            v35 = v279;
                            v52 = v60;
                            goto LABEL_267;
                          }

                          v61 = 0;
                          v14 = 0;
                          v30 = v283;
                          v35 = v279;
                          v52 = v60;
LABEL_268:

                          goto LABEL_269;
                        }

                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v60 = v52;
                          v266 = v270;
                          goto LABEL_88;
                        }

                        if (errorCopy2)
                        {
                          v84 = objc_alloc(MEMORY[0x1E696ABC0]);
                          v85 = *MEMORY[0x1E698F240];
                          v330 = *MEMORY[0x1E696A578];
                          v61 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"sugSeetEngType"];
                          v331 = v61;
                          v265 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v331 forKeys:&v330 count:1];
                          v266 = 0;
                          v14 = 0;
                          *errorCopy2 = [v84 initWithDomain:v85 code:2 userInfo:?];
                          v30 = v283;
                          v35 = v279;
                          goto LABEL_268;
                        }

                        v266 = 0;
                        v14 = 0;
LABEL_209:
                        v30 = v283;
                        v35 = v279;
LABEL_269:

                        goto LABEL_270;
                      }

                      if (errorCopy2)
                      {
                        v80 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v81 = *MEMORY[0x1E698F240];
                        v332 = *MEMORY[0x1E696A578];
                        v266 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleEvergreenType"];
                        v333 = v266;
                        v270 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v333 forKeys:&v332 count:1];
                        v267 = 0;
                        v14 = 0;
                        *errorCopy2 = [v80 initWithDomain:v81 code:2 userInfo:v270];
                        goto LABEL_209;
                      }

                      v267 = 0;
                      v14 = 0;
LABEL_156:
                      v30 = v283;
                      v35 = v279;
LABEL_270:

                      goto LABEL_271;
                    }

                    if (errorCopy2)
                    {
                      v74 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v75 = *MEMORY[0x1E698F240];
                      v334 = *MEMORY[0x1E696A578];
                      v267 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"bundleInterface"];
                      v335 = v267;
                      v268 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v335 forKeys:&v334 count:1];
                      v269 = 0;
                      v14 = 0;
                      *errorCopy2 = [v74 initWithDomain:v75 code:2 userInfo:?];
                      goto LABEL_156;
                    }

                    v269 = 0;
                    v14 = 0;
                    v30 = v283;
                    v35 = v279;
LABEL_271:

                    goto LABEL_272;
                  }

                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    v51 = v50;
                    goto LABEL_70;
                  }

                  if (errorCopy2)
                  {
                    v70 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v71 = *MEMORY[0x1E698F240];
                    v336 = *MEMORY[0x1E696A578];
                    v269 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSString", objc_opt_class(), @"categoryOfEvent"];
                    v337 = v269;
                    v281 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v337 forKeys:&v336 count:1];
                    v14 = 0;
                    *errorCopy2 = [v70 initWithDomain:v71 code:2 userInfo:v281];
                    v30 = v283;
                    v35 = v279;
                    v52 = 0;
                    goto LABEL_271;
                  }

                  v14 = 0;
                  v30 = v283;
                  v35 = v279;
                  v52 = 0;
LABEL_272:

                  v8 = v287;
                  goto LABEL_273;
                }

                if (errorCopy2)
                {
                  v114 = objc_alloc(MEMORY[0x1E696ABC0]);
                  v115 = *MEMORY[0x1E698F240];
                  v338 = *MEMORY[0x1E696A578];
                  v52 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"endDate"];
                  v339 = v52;
                  v271 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v339 forKeys:&v338 count:1];
                  v273 = 0;
                  v14 = 0;
                  *errorCopy2 = [v114 initWithDomain:v115 code:2 userInfo:?];
                  v30 = v283;
                  v35 = v279;
                  goto LABEL_272;
                }

                v273 = 0;
                v14 = 0;
LABEL_242:
                v30 = v283;
                v35 = v279;
LABEL_273:

                goto LABEL_274;
              }

              if (errorCopy2)
              {
                v112 = objc_alloc(MEMORY[0x1E696ABC0]);
                v113 = *MEMORY[0x1E698F240];
                v340 = *MEMORY[0x1E696A578];
                v273 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (as time internal since 1970), NSString (ISO8601 format), or NSDate", objc_opt_class(), @"startDate"];
                v341 = v273;
                v272 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v341 forKeys:&v340 count:1];
                v274 = 0;
                v14 = 0;
                *errorCopy2 = [v112 initWithDomain:v113 code:2 userInfo:?];
                goto LABEL_242;
              }

              v274 = 0;
              v14 = 0;
LABEL_238:
              v30 = v283;
              v35 = v279;
LABEL_274:

              goto LABEL_275;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v44 = v43;
              v277 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataBiologicalSexTypeFromString(v44)];

              goto LABEL_60;
            }

            if (errorCopy2)
            {
              v86 = objc_alloc(MEMORY[0x1E696ABC0]);
              v87 = *MEMORY[0x1E698F240];
              v342 = *MEMORY[0x1E696A578];
              v274 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"biologicalSex"];
              v343 = v274;
              v88 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v343 forKeys:&v342 count:1];
              v277 = 0;
              v14 = 0;
              *errorCopy2 = [v86 initWithDomain:v87 code:2 userInfo:v88];
              v45 = v88;
              goto LABEL_238;
            }

            v277 = 0;
            v14 = 0;
LABEL_211:
            v30 = v283;
            v35 = v279;
LABEL_275:

            goto LABEL_276;
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v41 = v11;
            v280 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataAgeRangeTypeFromString(v41)];

            goto LABEL_52;
          }

          if (errorCopy2)
          {
            v82 = objc_alloc(MEMORY[0x1E696ABC0]);
            v83 = *MEMORY[0x1E698F240];
            v344 = *MEMORY[0x1E696A578];
            v277 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"ageRange"];
            v345 = v277;
            v276 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v345 forKeys:&v344 count:1];
            v280 = 0;
            v14 = 0;
            *errorCopy2 = [v82 initWithDomain:v83 code:2 userInfo:?];
            goto LABEL_211;
          }

          v280 = 0;
          v14 = 0;
          v30 = v283;
          v35 = v279;
LABEL_276:

          goto LABEL_277;
        }

        if (error)
        {
          v36 = objc_alloc(MEMORY[0x1E696ABC0]);
          v37 = *MEMORY[0x1E698F240];
          v346 = *MEMORY[0x1E696A578];
          v38 = objc_alloc(MEMORY[0x1E696AEC0]);
          v218 = objc_opt_class();
          v39 = v38;
          v9 = v284;
          v280 = [v39 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v218, @"age"];
          v347 = v280;
          v282 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v347 forKeys:&v346 count:1];
          v40 = [v36 initWithDomain:v37 code:2 userInfo:?];
          v35 = 0;
          v14 = 0;
          *error = v40;
          v30 = v283;
          goto LABEL_276;
        }

        v35 = 0;
        v14 = 0;
        v30 = v283;
LABEL_277:

        goto LABEL_278;
      }

      if (error)
      {
        v31 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = *MEMORY[0x1E698F240];
        v348 = *MEMORY[0x1E696A578];
        v33 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"IHAState"];
        v349 = v33;
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v349 forKeys:&v348 count:1];
        v34 = v31;
        v35 = v33;
        v30 = 0;
        v14 = 0;
        *error = [v34 initWithDomain:v32 code:2 userInfo:v9];
        goto LABEL_277;
      }

      v30 = 0;
      v14 = 0;
LABEL_278:

      self = selfCopy;
      goto LABEL_279;
    }

    if (error)
    {
      v22 = v7;
      v23 = objc_alloc(MEMORY[0x1E696ABC0]);
      selfCopy2 = self;
      v25 = *MEMORY[0x1E698F240];
      v352 = *MEMORY[0x1E696A578];
      v289 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"bundle"];
      v353 = v289;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v353 forKeys:&v352 count:1];
      v26 = v23;
      v7 = v22;
      v27 = v25;
      self = selfCopy2;
      v14 = 0;
      *error = [v26 initWithDomain:v27 code:2 userInfo:v8];
LABEL_280:

      goto LABEL_281;
    }

    goto LABEL_39;
  }

  if (error)
  {
    v15 = objc_alloc(MEMORY[0x1E696ABC0]);
    selfCopy3 = self;
    v17 = *MEMORY[0x1E698F240];
    v354 = *MEMORY[0x1E696A578];
    v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"event"];
    v355[0] = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v355 forKeys:&v354 count:1];
    v20 = v15;
    v7 = v18;
    v21 = v17;
    self = selfCopy3;
    v292 = v19;
    v14 = 0;
    *error = [v20 initWithDomain:v21 code:2 userInfo:?];
LABEL_281:

    goto LABEL_282;
  }

  v14 = 0;
LABEL_282:

  return v14;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEventData *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_event)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEventDataEvent *)self->_event writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_bundle)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEventDataEventBundle *)self->_bundle writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_hasIsBundle)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIHAState)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasAge)
  {
    PBDataWriterWriteInt32Field();
  }

  PBDataWriterWriteUint32Field();
  PBDataWriterWriteUint32Field();
  if (self->_hasRaw_startDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_hasRaw_endDate)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_categoryOfEvent)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleInterface)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_bundleEvergreenType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sugSeetEngType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_appEntryEngType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_megaSignalTypeUsed)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_hasViewVisibleSuggestionsCount)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_hasViewTotalSuggestionsCount)
  {
    PBDataWriterWriteInt32Field();
  }

  PBDataWriterWriteUint32Field();
  if (self->_hasIsJournalAppInstalled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsJournalAppLocked)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsJournalSuggestionSkipped)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsActivitySettingsSwitchEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsCommunicationSettingsSwitchEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsSignificantLocationSettingsSwitchEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsMediaSettingsSwitchEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsNearbyPeopleSettingsSwitchEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsPhotoSettingsSwitchEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsStateOfMindSettingsSwitchEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsReflectionSettingsSwitchEnabled)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_hasIsBroadSystemLocationSettingsSwitchEnabled)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v155.receiver = self;
  v155.super_class = BMMomentsEventData;
  v5 = [(BMEventBase *)&v155 init];
  if (!v5)
  {
LABEL_280:
    v153 = v5;
    goto LABEL_281;
  }

  while (1)
  {
    position = [fromCopy position];
    if (position >= [fromCopy length] || (objc_msgSend(fromCopy, "hasError") & 1) != 0)
    {
      break;
    }

    v7 = 0;
    v8 = 0;
    v9 = 0;
    while (1)
    {
      LOBYTE(v156) = 0;
      v10 = [fromCopy position] + 1;
      if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
      {
        data = [fromCopy data];
        [data getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v9 |= (LOBYTE(v156) & 0x7F) << v7;
      if ((LOBYTE(v156) & 0x80) == 0)
      {
        break;
      }

      v7 += 7;
      v13 = v8++ >= 9;
      if (v13)
      {
        v14 = 0;
        goto LABEL_16;
      }
    }

    v14 = [fromCopy hasError] ? 0 : v9;
LABEL_16:
    if (([fromCopy hasError] & 1) != 0 || (v14 & 7) == 4)
    {
      break;
    }

    switch((v14 >> 3))
    {
      case 1u:
        v156 = 0.0;
        v157 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_279;
        }

        v15 = [[BMMomentsEventDataEvent alloc] initByReadFrom:fromCopy];
        if (!v15)
        {
          goto LABEL_279;
        }

        v16 = 112;
        goto LABEL_104;
      case 2u:
        v156 = 0.0;
        v157 = 0;
        if (!PBReaderPlaceMark())
        {
          goto LABEL_279;
        }

        v15 = [[BMMomentsEventDataEventBundle alloc] initByReadFrom:fromCopy];
        if (!v15)
        {
          goto LABEL_279;
        }

        v16 = 120;
LABEL_104:
        v73 = *(&v5->super.super.isa + v16);
        *(&v5->super.super.isa + v16) = v15;

        PBReaderRecallMark();
        continue;
      case 3u:
        v52 = 0;
        v53 = 0;
        v54 = 0;
        v5->_hasIsBundle = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v55 = [fromCopy position] + 1;
          if (v55 >= [fromCopy position] && (v56 = objc_msgSend(fromCopy, "position") + 1, v56 <= objc_msgSend(fromCopy, "length")))
          {
            data2 = [fromCopy data];
            [data2 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v54 |= (LOBYTE(v156) & 0x7F) << v52;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v52 += 7;
          v13 = v53++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_236;
          }
        }

        v23 = (v54 != 0) & ~[fromCopy hasError];
LABEL_236:
        v150 = 48;
        goto LABEL_273;
      case 4u:
        v65 = 0;
        v66 = 0;
        v67 = 0;
        v5->_hasIHAState = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v68 = [fromCopy position] + 1;
          if (v68 >= [fromCopy position] && (v69 = objc_msgSend(fromCopy, "position") + 1, v69 <= objc_msgSend(fromCopy, "length")))
          {
            data3 = [fromCopy data];
            [data3 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v67 |= (LOBYTE(v156) & 0x7F) << v65;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v65 += 7;
          v13 = v66++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_242;
          }
        }

        v23 = (v67 != 0) & ~[fromCopy hasError];
LABEL_242:
        v150 = 50;
        goto LABEL_273;
      case 5u:
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v5->_hasAge = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v36 = [fromCopy position] + 1;
          if (v36 >= [fromCopy position] && (v37 = objc_msgSend(fromCopy, "position") + 1, v37 <= objc_msgSend(fromCopy, "length")))
          {
            data4 = [fromCopy data];
            [data4 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v35 |= (LOBYTE(v156) & 0x7F) << v33;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v33 += 7;
          v13 = v34++ >= 9;
          if (v13)
          {
            v39 = 0;
            goto LABEL_230;
          }
        }

        if ([fromCopy hasError])
        {
          v39 = 0;
        }

        else
        {
          v39 = v35;
        }

LABEL_230:
        v5->_age = v39;
        continue;
      case 6u:
        v87 = 0;
        v88 = 0;
        v89 = 0;
        while (1)
        {
          LOBYTE(v156) = 0;
          v90 = [fromCopy position] + 1;
          if (v90 >= [fromCopy position] && (v91 = objc_msgSend(fromCopy, "position") + 1, v91 <= objc_msgSend(fromCopy, "length")))
          {
            data5 = [fromCopy data];
            [data5 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v89 |= (LOBYTE(v156) & 0x7F) << v87;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v87 += 7;
          v80 = v88++ > 8;
          if (v80)
          {
            goto LABEL_251;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v89 > 6)
        {
LABEL_251:
          LODWORD(v89) = 0;
        }

        v5->_ageRange = v89;
        continue;
      case 7u:
        v99 = 0;
        v100 = 0;
        v101 = 0;
        while (1)
        {
          LOBYTE(v156) = 0;
          v102 = [fromCopy position] + 1;
          if (v102 >= [fromCopy position] && (v103 = objc_msgSend(fromCopy, "position") + 1, v103 <= objc_msgSend(fromCopy, "length")))
          {
            data6 = [fromCopy data];
            [data6 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v101 |= (LOBYTE(v156) & 0x7F) << v99;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v99 += 7;
          v80 = v100++ > 8;
          if (v80)
          {
            goto LABEL_257;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v101 > 3)
        {
LABEL_257:
          LODWORD(v101) = 0;
        }

        v5->_biologicalSex = v101;
        continue;
      case 8u:
        v5->_hasRaw_startDate = 1;
        v156 = 0.0;
        v71 = [fromCopy position] + 8;
        if (v71 >= [fromCopy position] && (v72 = objc_msgSend(fromCopy, "position") + 8, v72 <= objc_msgSend(fromCopy, "length")))
        {
          data7 = [fromCopy data];
          [data7 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_startDate = v156;
        continue;
      case 9u:
        v5->_hasRaw_endDate = 1;
        v156 = 0.0;
        v112 = [fromCopy position] + 8;
        if (v112 >= [fromCopy position] && (v113 = objc_msgSend(fromCopy, "position") + 8, v113 <= objc_msgSend(fromCopy, "length")))
        {
          data8 = [fromCopy data];
          [data8 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 8}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 8}];
        }

        else
        {
          [fromCopy _setError];
        }

        v5->_raw_endDate = v156;
        continue;
      case 0xAu:
        v31 = PBReaderReadString();
        v32 = 128;
        goto LABEL_161;
      case 0xBu:
        v31 = PBReaderReadString();
        v32 = 136;
        goto LABEL_161;
      case 0xCu:
        v31 = PBReaderReadString();
        v32 = 144;
        goto LABEL_161;
      case 0xDu:
        v31 = PBReaderReadString();
        v32 = 152;
        goto LABEL_161;
      case 0xEu:
        v31 = PBReaderReadString();
        v32 = 160;
        goto LABEL_161;
      case 0xFu:
        v31 = PBReaderReadString();
        v32 = 168;
LABEL_161:
        v111 = *(&v5->super.super.isa + v32);
        *(&v5->super.super.isa + v32) = v31;

        continue;
      case 0x10u:
        v58 = 0;
        v59 = 0;
        v60 = 0;
        v5->_hasViewVisibleSuggestionsCount = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v61 = [fromCopy position] + 1;
          if (v61 >= [fromCopy position] && (v62 = objc_msgSend(fromCopy, "position") + 1, v62 <= objc_msgSend(fromCopy, "length")))
          {
            data9 = [fromCopy data];
            [data9 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v60 |= (LOBYTE(v156) & 0x7F) << v58;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v58 += 7;
          v13 = v59++ >= 9;
          if (v13)
          {
            v64 = 0;
            goto LABEL_240;
          }
        }

        if ([fromCopy hasError])
        {
          v64 = 0;
        }

        else
        {
          v64 = v60;
        }

LABEL_240:
        v5->_viewVisibleSuggestionsCount = v64;
        continue;
      case 0x11u:
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v5->_hasViewTotalSuggestionsCount = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v27 = [fromCopy position] + 1;
          if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
          {
            data10 = [fromCopy data];
            [data10 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v26 |= (LOBYTE(v156) & 0x7F) << v24;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v24 += 7;
          v13 = v25++ >= 9;
          if (v13)
          {
            v30 = 0;
            goto LABEL_226;
          }
        }

        if ([fromCopy hasError])
        {
          v30 = 0;
        }

        else
        {
          v30 = v26;
        }

LABEL_226:
        v5->_viewTotalSuggestionsCount = v30;
        continue;
      case 0x12u:
        v74 = 0;
        v75 = 0;
        v76 = 0;
        while (1)
        {
          LOBYTE(v156) = 0;
          v77 = [fromCopy position] + 1;
          if (v77 >= [fromCopy position] && (v78 = objc_msgSend(fromCopy, "position") + 1, v78 <= objc_msgSend(fromCopy, "length")))
          {
            data11 = [fromCopy data];
            [data11 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v76 |= (LOBYTE(v156) & 0x7F) << v74;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v74 += 7;
          v80 = v75++ > 8;
          if (v80)
          {
            goto LABEL_245;
          }
        }

        if (([fromCopy hasError] & 1) != 0 || v76 > 5)
        {
LABEL_245:
          LODWORD(v76) = 0;
        }

        v5->_onboardingFlowCompletionState = v76;
        continue;
      case 0x13u:
        v105 = 0;
        v106 = 0;
        v107 = 0;
        v5->_hasIsJournalAppInstalled = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v108 = [fromCopy position] + 1;
          if (v108 >= [fromCopy position] && (v109 = objc_msgSend(fromCopy, "position") + 1, v109 <= objc_msgSend(fromCopy, "length")))
          {
            data12 = [fromCopy data];
            [data12 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v107 |= (LOBYTE(v156) & 0x7F) << v105;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v105 += 7;
          v13 = v106++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_260;
          }
        }

        v23 = (v107 != 0) & ~[fromCopy hasError];
LABEL_260:
        v150 = 55;
        goto LABEL_273;
      case 0x14u:
        v120 = 0;
        v121 = 0;
        v122 = 0;
        v5->_hasIsJournalAppLocked = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v123 = [fromCopy position] + 1;
          if (v123 >= [fromCopy position] && (v124 = objc_msgSend(fromCopy, "position") + 1, v124 <= objc_msgSend(fromCopy, "length")))
          {
            data13 = [fromCopy data];
            [data13 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v122 |= (LOBYTE(v156) & 0x7F) << v120;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v120 += 7;
          v13 = v121++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_264;
          }
        }

        v23 = (v122 != 0) & ~[fromCopy hasError];
LABEL_264:
        v150 = 57;
        goto LABEL_273;
      case 0x15u:
        v81 = 0;
        v82 = 0;
        v83 = 0;
        v5->_hasIsJournalSuggestionSkipped = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v84 = [fromCopy position] + 1;
          if (v84 >= [fromCopy position] && (v85 = objc_msgSend(fromCopy, "position") + 1, v85 <= objc_msgSend(fromCopy, "length")))
          {
            data14 = [fromCopy data];
            [data14 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v83 |= (LOBYTE(v156) & 0x7F) << v81;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v81 += 7;
          v13 = v82++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_248;
          }
        }

        v23 = (v83 != 0) & ~[fromCopy hasError];
LABEL_248:
        v150 = 59;
        goto LABEL_273;
      case 0x16u:
        v93 = 0;
        v94 = 0;
        v95 = 0;
        v5->_hasIsActivitySettingsSwitchEnabled = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v96 = [fromCopy position] + 1;
          if (v96 >= [fromCopy position] && (v97 = objc_msgSend(fromCopy, "position") + 1, v97 <= objc_msgSend(fromCopy, "length")))
          {
            data15 = [fromCopy data];
            [data15 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v95 |= (LOBYTE(v156) & 0x7F) << v93;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v93 += 7;
          v13 = v94++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_254;
          }
        }

        v23 = (v95 != 0) & ~[fromCopy hasError];
LABEL_254:
        v150 = 61;
        goto LABEL_273;
      case 0x17u:
        v114 = 0;
        v115 = 0;
        v116 = 0;
        v5->_hasIsCommunicationSettingsSwitchEnabled = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v117 = [fromCopy position] + 1;
          if (v117 >= [fromCopy position] && (v118 = objc_msgSend(fromCopy, "position") + 1, v118 <= objc_msgSend(fromCopy, "length")))
          {
            data16 = [fromCopy data];
            [data16 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v116 |= (LOBYTE(v156) & 0x7F) << v114;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v114 += 7;
          v13 = v115++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_262;
          }
        }

        v23 = (v116 != 0) & ~[fromCopy hasError];
LABEL_262:
        v150 = 63;
        goto LABEL_273;
      case 0x18u:
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v5->_hasIsSignificantLocationSettingsSwitchEnabled = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v129 = [fromCopy position] + 1;
          if (v129 >= [fromCopy position] && (v130 = objc_msgSend(fromCopy, "position") + 1, v130 <= objc_msgSend(fromCopy, "length")))
          {
            data17 = [fromCopy data];
            [data17 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v128 |= (LOBYTE(v156) & 0x7F) << v126;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v126 += 7;
          v13 = v127++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_266;
          }
        }

        v23 = (v128 != 0) & ~[fromCopy hasError];
LABEL_266:
        v150 = 65;
        goto LABEL_273;
      case 0x19u:
        v46 = 0;
        v47 = 0;
        v48 = 0;
        v5->_hasIsMediaSettingsSwitchEnabled = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v49 = [fromCopy position] + 1;
          if (v49 >= [fromCopy position] && (v50 = objc_msgSend(fromCopy, "position") + 1, v50 <= objc_msgSend(fromCopy, "length")))
          {
            data18 = [fromCopy data];
            [data18 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v48 |= (LOBYTE(v156) & 0x7F) << v46;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v46 += 7;
          v13 = v47++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_234;
          }
        }

        v23 = (v48 != 0) & ~[fromCopy hasError];
LABEL_234:
        v150 = 67;
        goto LABEL_273;
      case 0x1Au:
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v5->_hasIsNearbyPeopleSettingsSwitchEnabled = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v43 = [fromCopy position] + 1;
          if (v43 >= [fromCopy position] && (v44 = objc_msgSend(fromCopy, "position") + 1, v44 <= objc_msgSend(fromCopy, "length")))
          {
            data19 = [fromCopy data];
            [data19 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v42 |= (LOBYTE(v156) & 0x7F) << v40;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v40 += 7;
          v13 = v41++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_232;
          }
        }

        v23 = (v42 != 0) & ~[fromCopy hasError];
LABEL_232:
        v150 = 69;
        goto LABEL_273;
      case 0x1Bu:
        v144 = 0;
        v145 = 0;
        v146 = 0;
        v5->_hasIsPhotoSettingsSwitchEnabled = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v147 = [fromCopy position] + 1;
          if (v147 >= [fromCopy position] && (v148 = objc_msgSend(fromCopy, "position") + 1, v148 <= objc_msgSend(fromCopy, "length")))
          {
            data20 = [fromCopy data];
            [data20 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v146 |= (LOBYTE(v156) & 0x7F) << v144;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v144 += 7;
          v13 = v145++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_272;
          }
        }

        v23 = (v146 != 0) & ~[fromCopy hasError];
LABEL_272:
        v150 = 71;
        goto LABEL_273;
      case 0x1Cu:
        v17 = 0;
        v18 = 0;
        v19 = 0;
        v5->_hasIsStateOfMindSettingsSwitchEnabled = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v20 = [fromCopy position] + 1;
          if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
          {
            data21 = [fromCopy data];
            [data21 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v19 |= (LOBYTE(v156) & 0x7F) << v17;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v17 += 7;
          v13 = v18++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_222;
          }
        }

        v23 = (v19 != 0) & ~[fromCopy hasError];
LABEL_222:
        v150 = 73;
        goto LABEL_273;
      case 0x1Du:
        v132 = 0;
        v133 = 0;
        v134 = 0;
        v5->_hasIsReflectionSettingsSwitchEnabled = 1;
        while (1)
        {
          LOBYTE(v156) = 0;
          v135 = [fromCopy position] + 1;
          if (v135 >= [fromCopy position] && (v136 = objc_msgSend(fromCopy, "position") + 1, v136 <= objc_msgSend(fromCopy, "length")))
          {
            data22 = [fromCopy data];
            [data22 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

            [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
          }

          else
          {
            [fromCopy _setError];
          }

          v134 |= (LOBYTE(v156) & 0x7F) << v132;
          if ((LOBYTE(v156) & 0x80) == 0)
          {
            break;
          }

          v132 += 7;
          v13 = v133++ >= 9;
          if (v13)
          {
            LOBYTE(v23) = 0;
            goto LABEL_268;
          }
        }

        v23 = (v134 != 0) & ~[fromCopy hasError];
LABEL_268:
        v150 = 75;
        goto LABEL_273;
      case 0x1Eu:
        v138 = 0;
        v139 = 0;
        v140 = 0;
        v5->_hasIsBroadSystemLocationSettingsSwitchEnabled = 1;
        break;
      default:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          goto LABEL_279;
        }

        continue;
    }

    while (1)
    {
      LOBYTE(v156) = 0;
      v141 = [fromCopy position] + 1;
      if (v141 >= [fromCopy position] && (v142 = objc_msgSend(fromCopy, "position") + 1, v142 <= objc_msgSend(fromCopy, "length")))
      {
        data23 = [fromCopy data];
        [data23 getBytes:&v156 range:{objc_msgSend(fromCopy, "position"), 1}];

        [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
      }

      else
      {
        [fromCopy _setError];
      }

      v140 |= (LOBYTE(v156) & 0x7F) << v138;
      if ((LOBYTE(v156) & 0x80) == 0)
      {
        break;
      }

      v138 += 7;
      v13 = v139++ >= 9;
      if (v13)
      {
        LOBYTE(v23) = 0;
        goto LABEL_270;
      }
    }

    v23 = (v140 != 0) & ~[fromCopy hasError];
LABEL_270:
    v150 = 77;
LABEL_273:
    *(&v5->super.super.isa + v150) = v23;
  }

  if (([fromCopy hasError] & 1) == 0)
  {
    goto LABEL_280;
  }

LABEL_279:
  v153 = 0;
LABEL_281:

  return v153;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  event = [(BMMomentsEventData *)self event];
  bundle = [(BMMomentsEventData *)self bundle];
  v34 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isBundle](self, "isBundle")}];
  v30 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData IHAState](self, "IHAState")}];
  v32 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventData age](self, "age")}];
  v28 = BMMomentsEventDataAgeRangeTypeAsString([(BMMomentsEventData *)self ageRange]);
  v31 = BMMomentsEventDataBiologicalSexTypeAsString([(BMMomentsEventData *)self biologicalSex]);
  startDate = [(BMMomentsEventData *)self startDate];
  endDate = [(BMMomentsEventData *)self endDate];
  categoryOfEvent = [(BMMomentsEventData *)self categoryOfEvent];
  bundleInterface = [(BMMomentsEventData *)self bundleInterface];
  bundleEvergreenType = [(BMMomentsEventData *)self bundleEvergreenType];
  sugSeetEngType = [(BMMomentsEventData *)self sugSeetEngType];
  appEntryEngType = [(BMMomentsEventData *)self appEntryEngType];
  megaSignalTypeUsed = [(BMMomentsEventData *)self megaSignalTypeUsed];
  v16 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventData viewVisibleSuggestionsCount](self, "viewVisibleSuggestionsCount")}];
  v21 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEventData viewTotalSuggestionsCount](self, "viewTotalSuggestionsCount")}];
  v15 = BMMomentsEventDataOnboardingFlowCompletionAsString([(BMMomentsEventData *)self onboardingFlowCompletionState]);
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isJournalAppInstalled](self, "isJournalAppInstalled")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isJournalAppLocked](self, "isJournalAppLocked")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isJournalSuggestionSkipped](self, "isJournalSuggestionSkipped")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isActivitySettingsSwitchEnabled](self, "isActivitySettingsSwitchEnabled")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isCommunicationSettingsSwitchEnabled](self, "isCommunicationSettingsSwitchEnabled")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isSignificantLocationSettingsSwitchEnabled](self, "isSignificantLocationSettingsSwitchEnabled")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isMediaSettingsSwitchEnabled](self, "isMediaSettingsSwitchEnabled")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isNearbyPeopleSettingsSwitchEnabled](self, "isNearbyPeopleSettingsSwitchEnabled")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isPhotoSettingsSwitchEnabled](self, "isPhotoSettingsSwitchEnabled")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isStateOfMindSettingsSwitchEnabled](self, "isStateOfMindSettingsSwitchEnabled")}];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isReflectionSettingsSwitchEnabled](self, "isReflectionSettingsSwitchEnabled")}];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEventData isBroadSystemLocationSettingsSwitchEnabled](self, "isBroadSystemLocationSettingsSwitchEnabled")}];
  v19 = [v18 initWithFormat:@"BMMomentsEventData with event: %@, bundle: %@, isBundle: %@, IHAState: %@, age: %@, ageRange: %@, biologicalSex: %@, startDate: %@, endDate: %@, categoryOfEvent: %@, bundleInterface: %@, bundleEvergreenType: %@, sugSeetEngType: %@, appEntryEngType: %@, megaSignalTypeUsed: %@, viewVisibleSuggestionsCount: %@, viewTotalSuggestionsCount: %@, onboardingFlowCompletionState: %@, isJournalAppInstalled: %@, isJournalAppLocked: %@, isJournalSuggestionSkipped: %@, isActivitySettingsSwitchEnabled: %@, isCommunicationSettingsSwitchEnabled: %@, isSignificantLocationSettingsSwitchEnabled: %@, isMediaSettingsSwitchEnabled: %@, isNearbyPeopleSettingsSwitchEnabled: %@, isPhotoSettingsSwitchEnabled: %@, isStateOfMindSettingsSwitchEnabled: %@, isReflectionSettingsSwitchEnabled: %@, isBroadSystemLocationSettingsSwitchEnabled: %@", event, bundle, v34, v30, v32, v28, v31, startDate, endDate, categoryOfEvent, bundleInterface, bundleEvergreenType, sugSeetEngType, appEntryEngType, megaSignalTypeUsed, v16, v21, v15, v20, v14, v13, v12, v11, v10, v9, v3, v4, v5, v6, v7];

  return v19;
}

- (BMMomentsEventData)initWithEvent:(id)event bundle:(id)bundle isBundle:(id)isBundle IHAState:(id)state age:(id)age ageRange:(int)range biologicalSex:(int)sex startDate:(id)self0 endDate:(id)self1 categoryOfEvent:(id)self2 bundleInterface:(id)self3 bundleEvergreenType:(id)self4 sugSeetEngType:(id)self5 appEntryEngType:(id)self6 megaSignalTypeUsed:(id)self7 viewVisibleSuggestionsCount:(id)self8 viewTotalSuggestionsCount:(id)self9 onboardingFlowCompletionState:(int)completionState isJournalAppInstalled:(id)installed isJournalAppLocked:(id)locked isJournalSuggestionSkipped:(id)skipped isActivitySettingsSwitchEnabled:(id)enabled isCommunicationSettingsSwitchEnabled:(id)switchEnabled isSignificantLocationSettingsSwitchEnabled:(id)settingsSwitchEnabled isMediaSettingsSwitchEnabled:(id)mediaSettingsSwitchEnabled isNearbyPeopleSettingsSwitchEnabled:(id)peopleSettingsSwitchEnabled isPhotoSettingsSwitchEnabled:(id)photoSettingsSwitchEnabled isStateOfMindSettingsSwitchEnabled:(id)event0 isReflectionSettingsSwitchEnabled:(id)event1 isBroadSystemLocationSettingsSwitchEnabled:(id)event2
{
  eventCopy = event;
  bundleCopy = bundle;
  bundleCopy2 = bundle;
  isBundleCopy = isBundle;
  stateCopy = state;
  ageCopy = age;
  dateCopy = date;
  endDateCopy = endDate;
  ofEventCopy = ofEvent;
  interfaceCopy = interface;
  typeCopy = type;
  engTypeCopy = engType;
  entryEngTypeCopy = entryEngType;
  usedCopy = used;
  countCopy = count;
  suggestionsCountCopy = suggestionsCount;
  installedCopy = installed;
  lockedCopy = locked;
  skippedCopy = skipped;
  enabledCopy = enabled;
  switchEnabledCopy = switchEnabled;
  settingsSwitchEnabledCopy = settingsSwitchEnabled;
  mediaSettingsSwitchEnabledCopy = mediaSettingsSwitchEnabled;
  peopleSettingsSwitchEnabledCopy = peopleSettingsSwitchEnabled;
  photoSettingsSwitchEnabledCopy = photoSettingsSwitchEnabled;
  mindSettingsSwitchEnabledCopy = mindSettingsSwitchEnabled;
  reflectionSettingsSwitchEnabledCopy = reflectionSettingsSwitchEnabled;
  locationSettingsSwitchEnabledCopy = locationSettingsSwitchEnabled;
  v74.receiver = self;
  v74.super_class = BMMomentsEventData;
  v39 = [(BMEventBase *)&v74 init];
  if (v39)
  {
    v39->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v39->_event, event);
    objc_storeStrong(&v39->_bundle, bundleCopy);
    if (isBundleCopy)
    {
      v39->_hasIsBundle = 1;
      v39->_isBundle = [isBundleCopy BOOLValue];
    }

    else
    {
      isBundleCopy = 0;
      v39->_hasIsBundle = 0;
      v39->_isBundle = 0;
    }

    if (stateCopy)
    {
      v39->_hasIHAState = 1;
      v39->_IHAState = [stateCopy BOOLValue];
    }

    else
    {
      v39->_hasIHAState = 0;
      v39->_IHAState = 0;
    }

    if (ageCopy)
    {
      v39->_hasAge = 1;
      intValue = [ageCopy intValue];
    }

    else
    {
      v39->_hasAge = 0;
      intValue = -1;
    }

    v39->_age = intValue;
    v39->_ageRange = range;
    v39->_biologicalSex = sex;
    if (dateCopy)
    {
      v39->_hasRaw_startDate = 1;
      [dateCopy timeIntervalSince1970];
    }

    else
    {
      v39->_hasRaw_startDate = 0;
      v41 = -1.0;
    }

    v39->_raw_startDate = v41;
    if (endDateCopy)
    {
      v39->_hasRaw_endDate = 1;
      [endDateCopy timeIntervalSince1970];
    }

    else
    {
      v39->_hasRaw_endDate = 0;
      v42 = -1.0;
    }

    v39->_raw_endDate = v42;
    objc_storeStrong(&v39->_categoryOfEvent, ofEvent);
    objc_storeStrong(&v39->_bundleInterface, interface);
    objc_storeStrong(&v39->_bundleEvergreenType, type);
    objc_storeStrong(&v39->_sugSeetEngType, engType);
    objc_storeStrong(&v39->_appEntryEngType, entryEngType);
    objc_storeStrong(&v39->_megaSignalTypeUsed, used);
    if (countCopy)
    {
      v39->_hasViewVisibleSuggestionsCount = 1;
      intValue2 = [countCopy intValue];
    }

    else
    {
      v39->_hasViewVisibleSuggestionsCount = 0;
      intValue2 = -1;
    }

    v39->_viewVisibleSuggestionsCount = intValue2;
    if (suggestionsCountCopy)
    {
      v39->_hasViewTotalSuggestionsCount = 1;
      intValue3 = [suggestionsCountCopy intValue];
    }

    else
    {
      v39->_hasViewTotalSuggestionsCount = 0;
      intValue3 = -1;
    }

    v39->_viewTotalSuggestionsCount = intValue3;
    v39->_onboardingFlowCompletionState = completionState;
    if (installedCopy)
    {
      v39->_hasIsJournalAppInstalled = 1;
      v39->_isJournalAppInstalled = [installedCopy BOOLValue];
    }

    else
    {
      v39->_hasIsJournalAppInstalled = 0;
      v39->_isJournalAppInstalled = 0;
    }

    if (lockedCopy)
    {
      v39->_hasIsJournalAppLocked = 1;
      v39->_isJournalAppLocked = [lockedCopy BOOLValue];
    }

    else
    {
      v39->_hasIsJournalAppLocked = 0;
      v39->_isJournalAppLocked = 0;
    }

    if (skippedCopy)
    {
      v39->_hasIsJournalSuggestionSkipped = 1;
      v39->_isJournalSuggestionSkipped = [skippedCopy BOOLValue];
    }

    else
    {
      v39->_hasIsJournalSuggestionSkipped = 0;
      v39->_isJournalSuggestionSkipped = 0;
    }

    if (enabledCopy)
    {
      v39->_hasIsActivitySettingsSwitchEnabled = 1;
      v39->_isActivitySettingsSwitchEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v39->_hasIsActivitySettingsSwitchEnabled = 0;
      v39->_isActivitySettingsSwitchEnabled = 0;
    }

    if (switchEnabledCopy)
    {
      v39->_hasIsCommunicationSettingsSwitchEnabled = 1;
      v39->_isCommunicationSettingsSwitchEnabled = [switchEnabledCopy BOOLValue];
    }

    else
    {
      v39->_hasIsCommunicationSettingsSwitchEnabled = 0;
      v39->_isCommunicationSettingsSwitchEnabled = 0;
    }

    if (settingsSwitchEnabledCopy)
    {
      v39->_hasIsSignificantLocationSettingsSwitchEnabled = 1;
      v39->_isSignificantLocationSettingsSwitchEnabled = [settingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v39->_hasIsSignificantLocationSettingsSwitchEnabled = 0;
      v39->_isSignificantLocationSettingsSwitchEnabled = 0;
    }

    if (mediaSettingsSwitchEnabledCopy)
    {
      v39->_hasIsMediaSettingsSwitchEnabled = 1;
      v39->_isMediaSettingsSwitchEnabled = [mediaSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v39->_hasIsMediaSettingsSwitchEnabled = 0;
      v39->_isMediaSettingsSwitchEnabled = 0;
    }

    if (peopleSettingsSwitchEnabledCopy)
    {
      v39->_hasIsNearbyPeopleSettingsSwitchEnabled = 1;
      v39->_isNearbyPeopleSettingsSwitchEnabled = [peopleSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v39->_hasIsNearbyPeopleSettingsSwitchEnabled = 0;
      v39->_isNearbyPeopleSettingsSwitchEnabled = 0;
    }

    if (photoSettingsSwitchEnabledCopy)
    {
      v39->_hasIsPhotoSettingsSwitchEnabled = 1;
      v39->_isPhotoSettingsSwitchEnabled = [photoSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v39->_hasIsPhotoSettingsSwitchEnabled = 0;
      v39->_isPhotoSettingsSwitchEnabled = 0;
    }

    if (mindSettingsSwitchEnabledCopy)
    {
      v39->_hasIsStateOfMindSettingsSwitchEnabled = 1;
      v39->_isStateOfMindSettingsSwitchEnabled = [mindSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v39->_hasIsStateOfMindSettingsSwitchEnabled = 0;
      v39->_isStateOfMindSettingsSwitchEnabled = 0;
    }

    if (reflectionSettingsSwitchEnabledCopy)
    {
      v39->_hasIsReflectionSettingsSwitchEnabled = 1;
      v39->_isReflectionSettingsSwitchEnabled = [reflectionSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v39->_hasIsReflectionSettingsSwitchEnabled = 0;
      v39->_isReflectionSettingsSwitchEnabled = 0;
    }

    if (locationSettingsSwitchEnabledCopy)
    {
      v39->_hasIsBroadSystemLocationSettingsSwitchEnabled = 1;
      v39->_isBroadSystemLocationSettingsSwitchEnabled = [locationSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v39->_hasIsBroadSystemLocationSettingsSwitchEnabled = 0;
      v39->_isBroadSystemLocationSettingsSwitchEnabled = 0;
    }
  }

  return v39;
}

+ (id)protoFields
{
  v34[30] = *MEMORY[0x1E69E9840];
  v33 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"event" number:1 type:14 subMessageClass:objc_opt_class()];
  v34[0] = v33;
  v32 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundle" number:2 type:14 subMessageClass:objc_opt_class()];
  v34[1] = v32;
  v31 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBundle" number:3 type:12 subMessageClass:0];
  v34[2] = v31;
  v30 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"IHAState" number:4 type:12 subMessageClass:0];
  v34[3] = v30;
  v29 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"age" number:5 type:2 subMessageClass:0];
  v34[4] = v29;
  v28 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"ageRange" number:6 type:4 subMessageClass:0];
  v34[5] = v28;
  v27 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"biologicalSex" number:7 type:4 subMessageClass:0];
  v34[6] = v27;
  v26 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"startDate" number:8 type:0 subMessageClass:0];
  v34[7] = v26;
  v25 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"endDate" number:9 type:0 subMessageClass:0];
  v34[8] = v25;
  v24 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"categoryOfEvent" number:10 type:13 subMessageClass:0];
  v34[9] = v24;
  v23 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleInterface" number:11 type:13 subMessageClass:0];
  v34[10] = v23;
  v22 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"bundleEvergreenType" number:12 type:13 subMessageClass:0];
  v34[11] = v22;
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"sugSeetEngType" number:13 type:13 subMessageClass:0];
  v34[12] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"appEntryEngType" number:14 type:13 subMessageClass:0];
  v34[13] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"megaSignalTypeUsed" number:15 type:13 subMessageClass:0];
  v34[14] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewVisibleSuggestionsCount" number:16 type:2 subMessageClass:0];
  v34[15] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"viewTotalSuggestionsCount" number:17 type:2 subMessageClass:0];
  v34[16] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onboardingFlowCompletionState" number:18 type:4 subMessageClass:0];
  v34[17] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJournalAppInstalled" number:19 type:12 subMessageClass:0];
  v34[18] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJournalAppLocked" number:20 type:12 subMessageClass:0];
  v34[19] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJournalSuggestionSkipped" number:21 type:12 subMessageClass:0];
  v34[20] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActivitySettingsSwitchEnabled" number:22 type:12 subMessageClass:0];
  v34[21] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCommunicationSettingsSwitchEnabled" number:23 type:12 subMessageClass:0];
  v34[22] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSignificantLocationSettingsSwitchEnabled" number:24 type:12 subMessageClass:0];
  v34[23] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMediaSettingsSwitchEnabled" number:25 type:12 subMessageClass:0];
  v34[24] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNearbyPeopleSettingsSwitchEnabled" number:26 type:12 subMessageClass:0];
  v34[25] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPhotoSettingsSwitchEnabled" number:27 type:12 subMessageClass:0];
  v34[26] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isStateOfMindSettingsSwitchEnabled" number:28 type:12 subMessageClass:0];
  v34[27] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isReflectionSettingsSwitchEnabled" number:29 type:12 subMessageClass:0];
  v34[28] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBroadSystemLocationSettingsSwitchEnabled" number:30 type:12 subMessageClass:0];
  v34[29] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:30];

  return v11;
}

+ (id)columns
{
  v34[30] = *MEMORY[0x1E69E9840];
  v14 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"event_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_4604];
  v33 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"bundle_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_4606];
  v32 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBundle" dataType:0 requestOnly:0 fieldNumber:3 protoDataType:12 convertedType:0];
  v31 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"IHAState" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:12 convertedType:0];
  v30 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"age" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:2 convertedType:0];
  v29 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"ageRange" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:4 convertedType:0];
  v28 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"biologicalSex" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:4 convertedType:0];
  v27 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"startDate" dataType:3 requestOnly:0 fieldNumber:8 protoDataType:0 convertedType:2];
  v26 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"endDate" dataType:3 requestOnly:0 fieldNumber:9 protoDataType:0 convertedType:2];
  v25 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"categoryOfEvent" dataType:2 requestOnly:0 fieldNumber:10 protoDataType:13 convertedType:0];
  v24 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleInterface" dataType:2 requestOnly:0 fieldNumber:11 protoDataType:13 convertedType:0];
  v23 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"bundleEvergreenType" dataType:2 requestOnly:0 fieldNumber:12 protoDataType:13 convertedType:0];
  v22 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"sugSeetEngType" dataType:2 requestOnly:0 fieldNumber:13 protoDataType:13 convertedType:0];
  v21 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"appEntryEngType" dataType:2 requestOnly:0 fieldNumber:14 protoDataType:13 convertedType:0];
  v20 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"megaSignalTypeUsed" dataType:2 requestOnly:0 fieldNumber:15 protoDataType:13 convertedType:0];
  v19 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewVisibleSuggestionsCount" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:2 convertedType:0];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"viewTotalSuggestionsCount" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:2 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"onboardingFlowCompletionState" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:4 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJournalAppInstalled" dataType:0 requestOnly:0 fieldNumber:19 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJournalAppLocked" dataType:0 requestOnly:0 fieldNumber:20 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJournalSuggestionSkipped" dataType:0 requestOnly:0 fieldNumber:21 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActivitySettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:22 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCommunicationSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:23 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSignificantLocationSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:24 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMediaSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:25 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNearbyPeopleSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:26 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPhotoSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:27 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isStateOfMindSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:28 protoDataType:12 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isReflectionSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:29 protoDataType:12 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBroadSystemLocationSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:30 protoDataType:12 convertedType:0];
  v34[0] = v14;
  v34[1] = v33;
  v34[2] = v32;
  v34[3] = v31;
  v34[4] = v30;
  v34[5] = v29;
  v34[6] = v28;
  v34[7] = v27;
  v34[8] = v26;
  v34[9] = v25;
  v34[10] = v24;
  v34[11] = v23;
  v34[12] = v22;
  v34[13] = v21;
  v34[14] = v20;
  v34[15] = v19;
  v34[16] = v18;
  v34[17] = v17;
  v34[18] = v16;
  v34[19] = v15;
  v34[20] = v2;
  v34[21] = v3;
  v34[22] = v4;
  v34[23] = v13;
  v34[24] = v5;
  v34[25] = v6;
  v34[26] = v7;
  v34[27] = v12;
  v34[28] = v11;
  v34[29] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v34 count:30];

  return v10;
}

id __29__BMMomentsEventData_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 bundle];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __29__BMMomentsEventData_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 event];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  if (version)
  {
    v4 = 0;
  }

  else
  {
    v5 = MEMORY[0x1E69C65B8];
    dataCopy = data;
    v7 = [[v5 alloc] initWithData:dataCopy];

    v8 = [[BMMomentsEventData alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[20] = 0;
    }
  }

  return v4;
}

- (BMMomentsEventData)initWithEvent:(id)event bundle:(id)bundle isBundle:(id)isBundle IHAState:(id)state age:(id)age ageRange:(int)range biologicalSex:(int)sex startDate:(id)self0 endDate:(id)self1 categoryOfEvent:(id)self2 bundleInterface:(id)self3 bundleEvergreenType:(id)self4 sugSeetEngType:(id)self5 appEntryEngType:(id)self6 megaSignalTypeUsed:(id)self7 viewVisibleSuggestionsCount:(id)self8 viewTotalSuggestionsCount:(id)self9
{
  LODWORD(v21) = 0;
  LODWORD(v20) = sex;
  return [(BMMomentsEventData *)self initWithEvent:event bundle:bundle isBundle:isBundle IHAState:state age:age ageRange:*&range biologicalSex:v20 startDate:date endDate:endDate categoryOfEvent:ofEvent bundleInterface:interface bundleEvergreenType:type sugSeetEngType:engType appEntryEngType:entryEngType megaSignalTypeUsed:used viewVisibleSuggestionsCount:count viewTotalSuggestionsCount:suggestionsCount onboardingFlowCompletionState:v21 isJournalAppInstalled:0 isJournalAppLocked:0 isJournalSuggestionSkipped:0 isActivitySettingsSwitchEnabled:0 isCommunicationSettingsSwitchEnabled:0 isSignificantLocationSettingsSwitchEnabled:0 isMediaSettingsSwitchEnabled:0 isNearbyPeopleSettingsSwitchEnabled:0 isPhotoSettingsSwitchEnabled:0 isStateOfMindSettingsSwitchEnabled:0 isReflectionSettingsSwitchEnabled:0 isBroadSystemLocationSettingsSwitchEnabled:0];
}

- (BMMomentsEventData)initWithEvent:(id)event bundle:(id)bundle isBundle:(id)isBundle IHAState:(id)state age:(id)age ageRange:(int)range biologicalSex:(int)sex
{
  v45[14] = *MEMORY[0x1E69E9840];
  ageCopy = age;
  stateCopy = state;
  isBundleCopy = isBundle;
  bundleCopy = bundle;
  eventCopy = event;
  v32 = isBundleCopy;
  v30 = eventCopy;
  if ([isBundleCopy BOOLValue])
  {
    bundleStartDate = [bundleCopy bundleStartDate];
    bundleEndDate = [bundleCopy bundleEndDate];
    v44[0] = &unk_1EF3EE0E8;
    v44[1] = &unk_1EF3EE100;
    v45[0] = @"Unknown";
    v45[1] = @"Activity";
    v44[2] = &unk_1EF3EE118;
    v44[3] = &unk_1EF3EE130;
    v45[2] = @"Outing";
    v45[3] = @"PhotoMoment";
    v44[4] = &unk_1EF3EE148;
    v44[5] = &unk_1EF3EE160;
    v45[4] = @"SignificantContact";
    v45[5] = @"Media";
    v44[6] = &unk_1EF3EE178;
    v44[7] = &unk_1EF3EE190;
    v45[6] = @"SharedContent";
    v45[7] = @"TimeAtHome";
    v44[8] = &unk_1EF3EE1A8;
    v44[9] = &unk_1EF3EE1C0;
    v45[8] = @"TopicsOfInterest";
    v45[9] = @"Trend";
    v44[10] = &unk_1EF3EE1D8;
    v44[11] = &unk_1EF3EE1F0;
    v45[10] = @"PhotoMemory";
    v45[11] = @"Evergreen";
    selfCopy = self;
    v44[12] = &unk_1EF3EE208;
    v44[13] = &unk_1EF3EE220;
    v45[12] = @"TimeContext";
    v45[13] = @"Trip";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:14];
    v18 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(bundleCopy, "bundleInterfaceType")}];
    v29 = [v17 objectForKeyedSubscript:v18];

    v43[0] = @"Unknown";
    v43[1] = @"Selected";
    v43[2] = @"Shared";
    v43[3] = @"Liked";
    v42[0] = &unk_1EF3EE0E8;
    v42[1] = &unk_1EF3EE100;
    v42[4] = &unk_1EF3EE148;
    v42[5] = &unk_1EF3EE160;
    v42[2] = &unk_1EF3EE118;
    v42[3] = &unk_1EF3EE130;
    v43[4] = @"Disliked";
    v43[5] = @"Dismissed";
    v42[6] = &unk_1EF3EE178;
    v42[7] = &unk_1EF3EE190;
    v43[6] = @"Deleted";
    v43[7] = @"Hidden";
    v42[8] = &unk_1EF3EE1A8;
    v42[9] = &unk_1EF3EE1C0;
    v43[8] = @"QuickAddEntry";
    v43[9] = @"Viewed";
    v42[10] = &unk_1EF3EE1D8;
    v42[11] = &unk_1EF3EE1F0;
    v43[10] = @"ThumbsDown";
    v43[11] = @"Favorite";
    v42[12] = &unk_1EF3EE208;
    v42[13] = &unk_1EF3EE220;
    v43[12] = @"ThumbsUp";
    v43[13] = @"EntryCreated";
    v42[14] = &unk_1EF3EE238;
    v42[15] = &unk_1EF3EE250;
    v43[14] = @"EntryEdited";
    v43[15] = @"EntryDeleted";
    v42[16] = &unk_1EF3EE268;
    v42[17] = &unk_1EF3EE280;
    v43[16] = @"EntryCancelled";
    v43[17] = @"Annotated";
    v42[18] = &unk_1EF3EE298;
    v42[19] = &unk_1EF3EE2B0;
    v43[18] = @"Positive";
    v43[19] = @"Negative";
    v42[20] = &unk_1EF3EE2C8;
    v42[21] = &unk_1EF3EE2E0;
    v43[20] = @"Neutral";
    v43[21] = @"Rejected";
    v42[22] = &unk_1EF3EE2F8;
    v42[23] = &unk_1EF3EE310;
    v43[22] = @"Accepted";
    v43[23] = @"Posted";
    v42[24] = &unk_1EF3EE328;
    v42[25] = &unk_1EF3EE340;
    v43[24] = @"Filtered";
    v43[25] = @"EntryCreatedWithUpdates";
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:26];
    v20 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(bundleCopy, "suggestionType")}];
    v21 = [v19 objectForKeyedSubscript:v20];

    v40[0] = &unk_1EF3EE0E8;
    v40[1] = &unk_1EF3EE100;
    v41[0] = @"Unknown";
    v41[1] = @"EntryCreated";
    v40[2] = &unk_1EF3EE118;
    v40[3] = &unk_1EF3EE130;
    v41[2] = @"EntryEdited";
    v41[3] = @"EntryDeleted";
    v40[4] = &unk_1EF3EE148;
    v41[4] = @"EntryCancelled";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:5];
    v23 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(bundleCopy, "appEntryEventType")}];
    v24 = [v22 objectForKeyedSubscript:v23];

    self = selfCopy;
    v25 = 0;
  }

  else
  {
    bundleStartDate = [eventCopy startDate];
    bundleEndDate = [eventCopy endDate];
    v38[0] = &unk_1EF3EE0E8;
    v38[1] = &unk_1EF3EE100;
    v39[0] = @"Unknown";
    v39[1] = @"Visit";
    v38[2] = &unk_1EF3EE118;
    v38[3] = &unk_1EF3EE130;
    v39[2] = @"Workout";
    v39[3] = @"MediaOnRepeat";
    v38[4] = &unk_1EF3EE148;
    v38[5] = &unk_1EF3EE160;
    v39[4] = @"LeisureMedia";
    v39[5] = @"PhotoMoment";
    v38[6] = &unk_1EF3EE178;
    v38[7] = &unk_1EF3EE190;
    v39[6] = @"MediaPlaySessions";
    v39[7] = @"Topic";
    v38[8] = &unk_1EF3EE1A8;
    v38[9] = &unk_1EF3EE1C0;
    v39[8] = @"TravelEvent";
    v39[9] = @"SharedWithYouEvent";
    v38[10] = &unk_1EF3EE1D8;
    v38[11] = &unk_1EF3EE1F0;
    v39[10] = @"SignificantContact";
    v39[11] = @"StructuredEvent";
    v38[12] = &unk_1EF3EE208;
    v38[13] = &unk_1EF3EE220;
    v39[12] = @"NLEvent";
    v39[13] = @"MindfulSession";
    v38[14] = &unk_1EF3EE238;
    v38[15] = &unk_1EF3EE250;
    v39[14] = @"SharedPhoto";
    v39[15] = @"ProximityEvent";
    v38[16] = &unk_1EF3EE268;
    v38[17] = &unk_1EF3EE280;
    v39[16] = @"MotionActivity";
    v39[17] = @"PhotoMemory";
    v38[18] = &unk_1EF3EE298;
    v38[19] = &unk_1EF3EE2B0;
    v39[18] = @"TextCelebration";
    v39[19] = @"Books";
    v38[20] = &unk_1EF3EE2C8;
    v38[21] = &unk_1EF3EE2E0;
    v39[20] = @"ScreenTimeEvent";
    v39[21] = @"SoConEvent";
    v38[22] = &unk_1EF3EE2F8;
    v38[23] = &unk_1EF3EE310;
    v39[22] = @"LifeEvent";
    v39[23] = @"PDenEvent";
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:24];
    v19 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(eventCopy, "category")}];
    v25 = [v17 objectForKeyedSubscript:v19];
    v29 = 0;
    v21 = 0;
    v24 = 0;
  }

  LODWORD(v27) = sex;
  v36 = [(BMMomentsEventData *)self initWithEvent:v30 bundle:bundleCopy isBundle:v32 IHAState:stateCopy age:ageCopy ageRange:range biologicalSex:v27 startDate:bundleStartDate endDate:bundleEndDate categoryOfEvent:v25 bundleInterface:v29 bundleEvergreenType:0 sugSeetEngType:v21 appEntryEngType:v24 megaSignalTypeUsed:0 viewVisibleSuggestionsCount:0 viewTotalSuggestionsCount:0];

  return v36;
}

@end