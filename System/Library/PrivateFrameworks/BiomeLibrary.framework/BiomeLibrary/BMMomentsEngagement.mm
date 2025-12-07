@interface BMMomentsEngagement
+ (id)columns;
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
+ (id)protoFields;
- (BMMomentsEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error;
- (BMMomentsEngagement)initWithSuggestionEvent:(id)event entryEvent:(id)entryEvent clientActivityEvent:(id)activityEvent onboardingFlowCompletionState:(int)state isJournalAppInstalled:(id)installed isJournalAppLocked:(id)locked isJournalSuggestionSkipped:(id)skipped isActivitySettingsSwitchEnabled:(id)self0 isCommunicationSettingsSwitchEnabled:(id)self1 isSignificantLocationSettingsSwitchEnabled:(id)self2 isMediaSettingsSwitchEnabled:(id)self3 isNearbyPeopleSettingsSwitchEnabled:(id)self4 isPhotoSettingsSwitchEnabled:(id)self5 isStateOfMindSettingsSwitchEnabled:(id)self6 isReflectionSettingsSwitchEnabled:(id)self7 isBroadSystemLocationSettingsSwitchEnabled:(id)self8 deviceType:(int)self9 isDiagnosticSubmissionAllowed:(id)allowed;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)initByReadFrom:(id)from;
- (id)jsonDictionary;
- (id)serialize;
- (void)writeTo:(id)to;
@end

@implementation BMMomentsEngagement

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    suggestionEvent = [(BMMomentsEngagement *)self suggestionEvent];
    suggestionEvent2 = [v5 suggestionEvent];
    v8 = suggestionEvent2;
    if (suggestionEvent == suggestionEvent2)
    {
    }

    else
    {
      suggestionEvent3 = [(BMMomentsEngagement *)self suggestionEvent];
      suggestionEvent4 = [v5 suggestionEvent];
      v11 = [suggestionEvent3 isEqual:suggestionEvent4];

      if (!v11)
      {
        goto LABEL_82;
      }
    }

    entryEvent = [(BMMomentsEngagement *)self entryEvent];
    entryEvent2 = [v5 entryEvent];
    v15 = entryEvent2;
    if (entryEvent == entryEvent2)
    {
    }

    else
    {
      entryEvent3 = [(BMMomentsEngagement *)self entryEvent];
      entryEvent4 = [v5 entryEvent];
      v18 = [entryEvent3 isEqual:entryEvent4];

      if (!v18)
      {
        goto LABEL_82;
      }
    }

    clientActivityEvent = [(BMMomentsEngagement *)self clientActivityEvent];
    clientActivityEvent2 = [v5 clientActivityEvent];
    v21 = clientActivityEvent2;
    if (clientActivityEvent == clientActivityEvent2)
    {
    }

    else
    {
      clientActivityEvent3 = [(BMMomentsEngagement *)self clientActivityEvent];
      clientActivityEvent4 = [v5 clientActivityEvent];
      v24 = [clientActivityEvent3 isEqual:clientActivityEvent4];

      if (!v24)
      {
        goto LABEL_82;
      }
    }

    onboardingFlowCompletionState = [(BMMomentsEngagement *)self onboardingFlowCompletionState];
    if (onboardingFlowCompletionState == [v5 onboardingFlowCompletionState])
    {
      if (!-[BMMomentsEngagement hasIsJournalAppInstalled](self, "hasIsJournalAppInstalled") && ![v5 hasIsJournalAppInstalled] || -[BMMomentsEngagement hasIsJournalAppInstalled](self, "hasIsJournalAppInstalled") && objc_msgSend(v5, "hasIsJournalAppInstalled") && (v26 = -[BMMomentsEngagement isJournalAppInstalled](self, "isJournalAppInstalled"), v26 == objc_msgSend(v5, "isJournalAppInstalled")))
      {
        if (!-[BMMomentsEngagement hasIsJournalAppLocked](self, "hasIsJournalAppLocked") && ![v5 hasIsJournalAppLocked] || -[BMMomentsEngagement hasIsJournalAppLocked](self, "hasIsJournalAppLocked") && objc_msgSend(v5, "hasIsJournalAppLocked") && (v27 = -[BMMomentsEngagement isJournalAppLocked](self, "isJournalAppLocked"), v27 == objc_msgSend(v5, "isJournalAppLocked")))
        {
          if (!-[BMMomentsEngagement hasIsJournalSuggestionSkipped](self, "hasIsJournalSuggestionSkipped") && ![v5 hasIsJournalSuggestionSkipped] || -[BMMomentsEngagement hasIsJournalSuggestionSkipped](self, "hasIsJournalSuggestionSkipped") && objc_msgSend(v5, "hasIsJournalSuggestionSkipped") && (v28 = -[BMMomentsEngagement isJournalSuggestionSkipped](self, "isJournalSuggestionSkipped"), v28 == objc_msgSend(v5, "isJournalSuggestionSkipped")))
          {
            if (!-[BMMomentsEngagement hasIsActivitySettingsSwitchEnabled](self, "hasIsActivitySettingsSwitchEnabled") && ![v5 hasIsActivitySettingsSwitchEnabled] || -[BMMomentsEngagement hasIsActivitySettingsSwitchEnabled](self, "hasIsActivitySettingsSwitchEnabled") && objc_msgSend(v5, "hasIsActivitySettingsSwitchEnabled") && (v29 = -[BMMomentsEngagement isActivitySettingsSwitchEnabled](self, "isActivitySettingsSwitchEnabled"), v29 == objc_msgSend(v5, "isActivitySettingsSwitchEnabled")))
            {
              if (!-[BMMomentsEngagement hasIsCommunicationSettingsSwitchEnabled](self, "hasIsCommunicationSettingsSwitchEnabled") && ![v5 hasIsCommunicationSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsCommunicationSettingsSwitchEnabled](self, "hasIsCommunicationSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsCommunicationSettingsSwitchEnabled") && (v30 = -[BMMomentsEngagement isCommunicationSettingsSwitchEnabled](self, "isCommunicationSettingsSwitchEnabled"), v30 == objc_msgSend(v5, "isCommunicationSettingsSwitchEnabled")))
              {
                if (!-[BMMomentsEngagement hasIsSignificantLocationSettingsSwitchEnabled](self, "hasIsSignificantLocationSettingsSwitchEnabled") && ![v5 hasIsSignificantLocationSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsSignificantLocationSettingsSwitchEnabled](self, "hasIsSignificantLocationSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsSignificantLocationSettingsSwitchEnabled") && (v31 = -[BMMomentsEngagement isSignificantLocationSettingsSwitchEnabled](self, "isSignificantLocationSettingsSwitchEnabled"), v31 == objc_msgSend(v5, "isSignificantLocationSettingsSwitchEnabled")))
                {
                  if (!-[BMMomentsEngagement hasIsMediaSettingsSwitchEnabled](self, "hasIsMediaSettingsSwitchEnabled") && ![v5 hasIsMediaSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsMediaSettingsSwitchEnabled](self, "hasIsMediaSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsMediaSettingsSwitchEnabled") && (v32 = -[BMMomentsEngagement isMediaSettingsSwitchEnabled](self, "isMediaSettingsSwitchEnabled"), v32 == objc_msgSend(v5, "isMediaSettingsSwitchEnabled")))
                  {
                    if (!-[BMMomentsEngagement hasIsNearbyPeopleSettingsSwitchEnabled](self, "hasIsNearbyPeopleSettingsSwitchEnabled") && ![v5 hasIsNearbyPeopleSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsNearbyPeopleSettingsSwitchEnabled](self, "hasIsNearbyPeopleSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsNearbyPeopleSettingsSwitchEnabled") && (v33 = -[BMMomentsEngagement isNearbyPeopleSettingsSwitchEnabled](self, "isNearbyPeopleSettingsSwitchEnabled"), v33 == objc_msgSend(v5, "isNearbyPeopleSettingsSwitchEnabled")))
                    {
                      if (!-[BMMomentsEngagement hasIsPhotoSettingsSwitchEnabled](self, "hasIsPhotoSettingsSwitchEnabled") && ![v5 hasIsPhotoSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsPhotoSettingsSwitchEnabled](self, "hasIsPhotoSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsPhotoSettingsSwitchEnabled") && (v34 = -[BMMomentsEngagement isPhotoSettingsSwitchEnabled](self, "isPhotoSettingsSwitchEnabled"), v34 == objc_msgSend(v5, "isPhotoSettingsSwitchEnabled")))
                      {
                        if (!-[BMMomentsEngagement hasIsStateOfMindSettingsSwitchEnabled](self, "hasIsStateOfMindSettingsSwitchEnabled") && ![v5 hasIsStateOfMindSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsStateOfMindSettingsSwitchEnabled](self, "hasIsStateOfMindSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsStateOfMindSettingsSwitchEnabled") && (v35 = -[BMMomentsEngagement isStateOfMindSettingsSwitchEnabled](self, "isStateOfMindSettingsSwitchEnabled"), v35 == objc_msgSend(v5, "isStateOfMindSettingsSwitchEnabled")))
                        {
                          if (!-[BMMomentsEngagement hasIsReflectionSettingsSwitchEnabled](self, "hasIsReflectionSettingsSwitchEnabled") && ![v5 hasIsReflectionSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsReflectionSettingsSwitchEnabled](self, "hasIsReflectionSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsReflectionSettingsSwitchEnabled") && (v36 = -[BMMomentsEngagement isReflectionSettingsSwitchEnabled](self, "isReflectionSettingsSwitchEnabled"), v36 == objc_msgSend(v5, "isReflectionSettingsSwitchEnabled")))
                          {
                            if (!-[BMMomentsEngagement hasIsBroadSystemLocationSettingsSwitchEnabled](self, "hasIsBroadSystemLocationSettingsSwitchEnabled") && ![v5 hasIsBroadSystemLocationSettingsSwitchEnabled] || -[BMMomentsEngagement hasIsBroadSystemLocationSettingsSwitchEnabled](self, "hasIsBroadSystemLocationSettingsSwitchEnabled") && objc_msgSend(v5, "hasIsBroadSystemLocationSettingsSwitchEnabled") && (v37 = -[BMMomentsEngagement isBroadSystemLocationSettingsSwitchEnabled](self, "isBroadSystemLocationSettingsSwitchEnabled"), v37 == objc_msgSend(v5, "isBroadSystemLocationSettingsSwitchEnabled")))
                            {
                              deviceType = [(BMMomentsEngagement *)self deviceType];
                              if (deviceType == [v5 deviceType])
                              {
                                if (!-[BMMomentsEngagement hasIsDiagnosticSubmissionAllowed](self, "hasIsDiagnosticSubmissionAllowed") && ![v5 hasIsDiagnosticSubmissionAllowed])
                                {
                                  LOBYTE(v12) = 1;
                                  goto LABEL_83;
                                }

                                if (-[BMMomentsEngagement hasIsDiagnosticSubmissionAllowed](self, "hasIsDiagnosticSubmissionAllowed") && [v5 hasIsDiagnosticSubmissionAllowed])
                                {
                                  isDiagnosticSubmissionAllowed = [(BMMomentsEngagement *)self isDiagnosticSubmissionAllowed];
                                  v12 = isDiagnosticSubmissionAllowed ^ [v5 isDiagnosticSubmissionAllowed] ^ 1;
LABEL_83:

                                  goto LABEL_84;
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

LABEL_82:
    LOBYTE(v12) = 0;
    goto LABEL_83;
  }

  LOBYTE(v12) = 0;
LABEL_84:

  return v12;
}

- (id)jsonDictionary
{
  v64[18] = *MEMORY[0x1E69E9840];
  suggestionEvent = [(BMMomentsEngagement *)self suggestionEvent];
  jsonDictionary = [suggestionEvent jsonDictionary];

  entryEvent = [(BMMomentsEngagement *)self entryEvent];
  jsonDictionary2 = [entryEvent jsonDictionary];

  clientActivityEvent = [(BMMomentsEngagement *)self clientActivityEvent];
  jsonDictionary3 = [clientActivityEvent jsonDictionary];

  v9 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagement onboardingFlowCompletionState](self, "onboardingFlowCompletionState")}];
  if ([(BMMomentsEngagement *)self hasIsJournalAppInstalled])
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalAppInstalled](self, "isJournalAppInstalled")}];
  }

  else
  {
    v10 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsJournalAppLocked])
  {
    v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalAppLocked](self, "isJournalAppLocked")}];
  }

  else
  {
    v11 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsJournalSuggestionSkipped])
  {
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalSuggestionSkipped](self, "isJournalSuggestionSkipped")}];
  }

  else
  {
    v12 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsActivitySettingsSwitchEnabled])
  {
    v62 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isActivitySettingsSwitchEnabled](self, "isActivitySettingsSwitchEnabled")}];
  }

  else
  {
    v62 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsCommunicationSettingsSwitchEnabled])
  {
    v61 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isCommunicationSettingsSwitchEnabled](self, "isCommunicationSettingsSwitchEnabled")}];
  }

  else
  {
    v61 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsSignificantLocationSettingsSwitchEnabled])
  {
    v60 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isSignificantLocationSettingsSwitchEnabled](self, "isSignificantLocationSettingsSwitchEnabled")}];
  }

  else
  {
    v60 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsMediaSettingsSwitchEnabled])
  {
    v59 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isMediaSettingsSwitchEnabled](self, "isMediaSettingsSwitchEnabled")}];
  }

  else
  {
    v59 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsNearbyPeopleSettingsSwitchEnabled])
  {
    v58 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isNearbyPeopleSettingsSwitchEnabled](self, "isNearbyPeopleSettingsSwitchEnabled")}];
  }

  else
  {
    v58 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsPhotoSettingsSwitchEnabled])
  {
    v57 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isPhotoSettingsSwitchEnabled](self, "isPhotoSettingsSwitchEnabled")}];
  }

  else
  {
    v57 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsStateOfMindSettingsSwitchEnabled])
  {
    v56 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isStateOfMindSettingsSwitchEnabled](self, "isStateOfMindSettingsSwitchEnabled")}];
  }

  else
  {
    v56 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsReflectionSettingsSwitchEnabled])
  {
    v55 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isReflectionSettingsSwitchEnabled](self, "isReflectionSettingsSwitchEnabled")}];
  }

  else
  {
    v55 = 0;
  }

  if ([(BMMomentsEngagement *)self hasIsBroadSystemLocationSettingsSwitchEnabled])
  {
    v54 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isBroadSystemLocationSettingsSwitchEnabled](self, "isBroadSystemLocationSettingsSwitchEnabled")}];
  }

  else
  {
    v54 = 0;
  }

  v53 = [MEMORY[0x1E696AD98] numberWithInt:{-[BMMomentsEngagement deviceType](self, "deviceType")}];
  if ([(BMMomentsEngagement *)self hasIsDiagnosticSubmissionAllowed])
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isDiagnosticSubmissionAllowed](self, "isDiagnosticSubmissionAllowed")}];
  }

  else
  {
    v13 = 0;
  }

  v63[0] = @"suggestionEvent";
  null = jsonDictionary;
  if (!jsonDictionary)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v46 = null;
  v64[0] = null;
  v63[1] = @"entryEvent";
  null2 = jsonDictionary2;
  if (!jsonDictionary2)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v45 = null2;
  v64[1] = null2;
  v63[2] = @"clientActivityEvent";
  null3 = jsonDictionary3;
  if (!jsonDictionary3)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v44 = null3;
  v64[2] = null3;
  v63[3] = @"onboardingFlowCompletionState";
  null4 = v9;
  if (!v9)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v43 = null4;
  v64[3] = null4;
  v63[4] = @"isJournalAppInstalled";
  null5 = v10;
  if (!v10)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v42 = null5;
  v64[4] = null5;
  v63[5] = @"isJournalAppLocked";
  null6 = v11;
  if (!v11)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v41 = null6;
  v64[5] = null6;
  v63[6] = @"isJournalSuggestionSkipped";
  null7 = v12;
  if (!v12)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v40 = null7;
  v64[6] = null7;
  v63[7] = @"isActivitySettingsSwitchEnabled";
  null8 = v62;
  if (!v62)
  {
    null8 = [MEMORY[0x1E695DFB0] null];
  }

  v64[7] = null8;
  v63[8] = @"isCommunicationSettingsSwitchEnabled";
  null9 = v61;
  if (!v61)
  {
    null9 = [MEMORY[0x1E695DFB0] null];
  }

  v52 = jsonDictionary;
  v64[8] = null9;
  v63[9] = @"isSignificantLocationSettingsSwitchEnabled";
  null10 = v60;
  if (!v60)
  {
    null10 = [MEMORY[0x1E695DFB0] null];
  }

  v51 = jsonDictionary2;
  v64[9] = null10;
  v63[10] = @"isMediaSettingsSwitchEnabled";
  null11 = v59;
  if (!v59)
  {
    null11 = [MEMORY[0x1E695DFB0] null];
  }

  v39 = null8;
  v35 = null11;
  v64[10] = null11;
  v63[11] = @"isNearbyPeopleSettingsSwitchEnabled";
  null12 = v58;
  if (!v58)
  {
    null12 = [MEMORY[0x1E695DFB0] null];
  }

  v49 = v12;
  v50 = v11;
  v64[11] = null12;
  v63[12] = @"isPhotoSettingsSwitchEnabled";
  null13 = v57;
  if (!v57)
  {
    null13 = [MEMORY[0x1E695DFB0] null];
  }

  v38 = null9;
  v48 = jsonDictionary3;
  v64[12] = null13;
  v63[13] = @"isStateOfMindSettingsSwitchEnabled";
  null14 = v56;
  if (!v56)
  {
    null14 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null10;
  v28 = v9;
  v64[13] = null14;
  v63[14] = @"isReflectionSettingsSwitchEnabled";
  null15 = v55;
  if (!v55)
  {
    null15 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v10;
  v64[14] = null15;
  v63[15] = @"isBroadSystemLocationSettingsSwitchEnabled";
  null16 = v54;
  if (!v54)
  {
    null16 = [MEMORY[0x1E695DFB0] null];
  }

  v64[15] = null16;
  v63[16] = @"deviceType";
  null17 = v53;
  if (!v53)
  {
    null17 = [MEMORY[0x1E695DFB0] null];
  }

  v64[16] = null17;
  v63[17] = @"isDiagnosticSubmissionAllowed";
  null18 = v13;
  if (!v13)
  {
    null18 = [MEMORY[0x1E695DFB0] null];
  }

  v64[17] = null18;
  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:{18, v35}];
  if (!v13)
  {
  }

  if (!v53)
  {
  }

  if (!v54)
  {
  }

  if (!v55)
  {
  }

  if (!v56)
  {
  }

  if (!v57)
  {
  }

  if (!v58)
  {
  }

  if (!v59)
  {
  }

  if (!v60)
  {
  }

  if (!v61)
  {
  }

  if (v62)
  {
    if (v49)
    {
      goto LABEL_98;
    }
  }

  else
  {

    if (v49)
    {
LABEL_98:
      if (v50)
      {
        goto LABEL_99;
      }

      goto LABEL_109;
    }
  }

  if (v50)
  {
LABEL_99:
    if (v30)
    {
      goto LABEL_100;
    }

    goto LABEL_110;
  }

LABEL_109:

  if (v30)
  {
LABEL_100:
    if (v28)
    {
      goto LABEL_101;
    }

    goto LABEL_111;
  }

LABEL_110:

  if (v28)
  {
LABEL_101:
    if (v48)
    {
      goto LABEL_102;
    }

    goto LABEL_112;
  }

LABEL_111:

  if (v48)
  {
LABEL_102:
    if (v51)
    {
      goto LABEL_103;
    }

LABEL_113:

    if (v52)
    {
      goto LABEL_104;
    }

    goto LABEL_114;
  }

LABEL_112:

  if (!v51)
  {
    goto LABEL_113;
  }

LABEL_103:
  if (v52)
  {
    goto LABEL_104;
  }

LABEL_114:

LABEL_104:

  return v47;
}

- (BMMomentsEngagement)initWithJSONDictionary:(id)dictionary error:(id *)error
{
  v248[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v6 = [dictionaryCopy objectForKeyedSubscript:@"suggestionEvent"];
  if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = 0;
    goto LABEL_4;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v6;
    v212 = 0;
    v7 = [[BMMomentsEngagementSuggestionEvent alloc] initWithJSONDictionary:v8 error:&v212];
    v12 = v212;
    if (v12)
    {
      if (error)
      {
        v12 = v12;
        *error = v12;
      }

LABEL_46:
      v25 = 0;
      goto LABEL_149;
    }

LABEL_4:
    v8 = [dictionaryCopy objectForKeyedSubscript:@"entryEvent"];
    if (!v8)
    {
      v9 = v7;
      v10 = v6;
      v11 = 0;
LABEL_13:
      v13 = [dictionaryCopy objectForKeyedSubscript:@"clientActivityEvent"];
      if (!v13 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v207 = 0;
        goto LABEL_16;
      }

      v191 = v10;
      v176 = v11;
      v27 = v9;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v28 = v13;
        v210 = 0;
        v207 = [[BMMomentsEngagementClientActivityEvent alloc] initWithJSONDictionary:v28 error:&v210];
        v29 = v210;
        if (v29)
        {
          errorCopy = error;
          error = v28;
          if (errorCopy)
          {
            v29 = v29;
            *errorCopy = v29;
          }

          v25 = 0;
          v7 = v9;
          v6 = v191;
          v31 = v207;
          v26 = v8;
          v8 = v176;
          goto LABEL_147;
        }

        v11 = v176;
LABEL_16:
        v14 = [dictionaryCopy objectForKeyedSubscript:@"onboardingFlowCompletionState"];
        v200 = v13;
        v202 = v14;
        errorCopy2 = error;
        if (v14 && (v15 = v14, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v201 = v15;
          }

          else
          {
            v192 = v10;
            v178 = v11;
            v7 = v9;
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (!error)
              {
                v25 = 0;
                v23 = v8;
                v8 = v11;
                v6 = v192;
                v31 = v207;
                goto LABEL_146;
              }

              v78 = objc_alloc(MEMORY[0x1E696ABC0]);
              v79 = *MEMORY[0x1E698F240];
              v241 = *MEMORY[0x1E696A578];
              v204 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"onboardingFlowCompletionState"];
              v242 = v204;
              v203 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v242 forKeys:&v241 count:1];
              error = 0;
              v25 = 0;
              *errorCopy2 = [v78 initWithDomain:v79 code:2 userInfo:?];
              v23 = v8;
              v8 = v178;
              v6 = v192;
              v31 = v207;
              goto LABEL_145;
            }

            v201 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEventDataOnboardingFlowCompletionFromString(v15)];
            v10 = v192;
          }
        }

        else
        {
          v201 = 0;
        }

        v16 = [dictionaryCopy objectForKeyedSubscript:@"isJournalAppInstalled"];
        v203 = v16;
        if (!v16 || (v17 = v16, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
        {
          v204 = 0;
LABEL_22:
          v18 = [dictionaryCopy objectForKeyedSubscript:@"isJournalAppLocked"];
          v196 = v18;
          if (v18 && (v19 = v18, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v68 = v13;
              v69 = v9;
              if (!errorCopy2)
              {
                v198 = 0;
                v25 = 0;
                v31 = v207;
                v23 = v8;
                v8 = v11;
                v6 = v10;
                v7 = v69;
                v13 = v68;
                goto LABEL_143;
              }

              v199 = objc_alloc(MEMORY[0x1E696ABC0]);
              v188 = *MEMORY[0x1E698F240];
              v237 = *MEMORY[0x1E696A578];
              v193 = v10;
              v7 = v9;
              v70 = objc_alloc(MEMORY[0x1E696AEC0]);
              v137 = objc_opt_class();
              v71 = v70;
              v23 = v8;
              v8 = v11;
              v6 = v193;
              v13 = v200;
              v72 = [v71 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v137, @"isJournalAppLocked"];
              v238 = v72;
              v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v238 forKeys:&v237 count:1];
              v73 = [v199 initWithDomain:v188 code:2 userInfo:v22];
              v198 = 0;
              v25 = 0;
              v31 = v207;
              *errorCopy2 = v73;
LABEL_142:

LABEL_143:
              error = v201;
              goto LABEL_144;
            }

            v198 = v19;
          }

          else
          {
            v198 = 0;
          }

          v20 = v9;
          v21 = [dictionaryCopy objectForKeyedSubscript:@"isJournalSuggestionSkipped"];
          v186 = v21;
          v190 = v8;
          if (v21)
          {
            v22 = v21;
            v23 = v8;
            objc_opt_class();
            v8 = v11;
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              objc_opt_class();
              v6 = v10;
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                v72 = errorCopy2;
                v7 = v20;
                if (!errorCopy2)
                {
                  v25 = 0;
                  v31 = v207;
                  goto LABEL_142;
                }

                v194 = objc_alloc(MEMORY[0x1E696ABC0]);
                v189 = *MEMORY[0x1E698F240];
                v235 = *MEMORY[0x1E696A578];
                v42 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isJournalSuggestionSkipped"];
                v236 = v42;
                v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v236 forKeys:&v235 count:1];
                v74 = [v194 initWithDomain:v189 code:2 userInfo:v41];
                v187 = 0;
                v25 = 0;
                *errorCopy2 = v74;
                goto LABEL_166;
              }

              v187 = v22;
LABEL_49:
              v7 = v20;
              v41 = [dictionaryCopy objectForKeyedSubscript:@"isActivitySettingsSwitchEnabled"];
              if (!v41 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v42 = 0;
LABEL_52:
                v43 = [dictionaryCopy objectForKeyedSubscript:@"isCommunicationSettingsSwitchEnabled"];
                v173 = v43;
                if (v43 && (v44 = v43, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!errorCopy2)
                    {
                      v174 = 0;
                      v25 = 0;
                      v31 = v207;
                      goto LABEL_140;
                    }

                    v180 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v175 = *MEMORY[0x1E698F240];
                    v231 = *MEMORY[0x1E696A578];
                    v80 = v42;
                    v81 = v41;
                    v82 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v139 = objc_opt_class();
                    v83 = v82;
                    v41 = v81;
                    v42 = v80;
                    v13 = v200;
                    v171 = [v83 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v139, @"isCommunicationSettingsSwitchEnabled"];
                    v232 = v171;
                    v170 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v232 forKeys:&v231 count:1];
                    v84 = [v180 initWithDomain:v175 code:2 userInfo:?];
                    v174 = 0;
                    v25 = 0;
                    *errorCopy2 = v84;
                    v31 = v207;
                    goto LABEL_139;
                  }

                  v177 = v7;
                  v45 = v41;
                  v46 = v13;
                  v47 = v42;
                  v174 = v44;
                }

                else
                {
                  v174 = 0;
                  v177 = v7;
                  v45 = v41;
                  v46 = v13;
                  v47 = v42;
                }

                v48 = [dictionaryCopy objectForKeyedSubscript:@"isSignificantLocationSettingsSwitchEnabled"];
                v170 = v48;
                if (v48 && (v49 = v48, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    if (!errorCopy2)
                    {
                      v171 = 0;
                      v25 = 0;
                      v31 = v207;
                      v42 = v47;
                      v13 = v46;
                      v41 = v45;
                      v7 = v177;
                      goto LABEL_139;
                    }

                    v172 = objc_alloc(MEMORY[0x1E696ABC0]);
                    v166 = *MEMORY[0x1E698F240];
                    v229 = *MEMORY[0x1E696A578];
                    v85 = v45;
                    v86 = objc_alloc(MEMORY[0x1E696AEC0]);
                    v140 = objc_opt_class();
                    v87 = v86;
                    v7 = v177;
                    v41 = v85;
                    v42 = v47;
                    v13 = v200;
                    v168 = [v87 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v140, @"isSignificantLocationSettingsSwitchEnabled"];
                    v230 = v168;
                    v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v230 forKeys:&v229 count:1];
                    v88 = [v172 initWithDomain:v166 code:2 userInfo:v51];
                    v171 = 0;
                    v25 = 0;
                    *errorCopy2 = v88;
                    v31 = v207;
LABEL_138:

LABEL_139:
                    goto LABEL_140;
                  }

                  v171 = v49;
                }

                else
                {
                  v171 = 0;
                }

                v50 = [dictionaryCopy objectForKeyedSubscript:@"isMediaSettingsSwitchEnabled"];
                v165 = v47;
                v162 = v50;
                if (v50)
                {
                  v51 = v50;
                  objc_opt_class();
                  v13 = v46;
                  if ((objc_opt_isKindOfClass() & 1) == 0)
                  {
                    objc_opt_class();
                    v41 = v45;
                    if ((objc_opt_isKindOfClass() & 1) == 0)
                    {
                      v7 = v177;
                      if (!errorCopy2)
                      {
                        v168 = 0;
                        v25 = 0;
                        v31 = v207;
                        v42 = v165;
                        goto LABEL_138;
                      }

                      v169 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v164 = *MEMORY[0x1E698F240];
                      v227 = *MEMORY[0x1E696A578];
                      v101 = v41;
                      v102 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v141 = objc_opt_class();
                      v103 = v102;
                      v41 = v101;
                      v42 = v165;
                      v13 = v200;
                      v98 = [v103 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v141, @"isMediaSettingsSwitchEnabled"];
                      v228 = v98;
                      v104 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v228 forKeys:&v227 count:1];
                      v105 = v164;
                      v163 = v104;
                      v106 = [v169 initWithDomain:v105 code:2 userInfo:?];
                      v168 = 0;
                      v25 = 0;
                      v31 = v207;
                      *errorCopy2 = v106;
                      goto LABEL_137;
                    }

                    v168 = v51;
LABEL_79:
                    v7 = v177;
                    v60 = [dictionaryCopy objectForKeyedSubscript:@"isNearbyPeopleSettingsSwitchEnabled"];
                    v163 = v60;
                    if (v60 && (v61 = v60, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!errorCopy2)
                        {
                          v98 = 0;
                          v25 = 0;
                          v31 = v207;
                          v42 = v165;
                          goto LABEL_137;
                        }

                        v107 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v181 = *MEMORY[0x1E698F240];
                        v225 = *MEMORY[0x1E696A578];
                        v108 = v41;
                        v109 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v142 = objc_opt_class();
                        v110 = v109;
                        v41 = v108;
                        v42 = v165;
                        v13 = v200;
                        v160 = [v110 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v142, @"isNearbyPeopleSettingsSwitchEnabled"];
                        v226 = v160;
                        v158 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v226 forKeys:&v225 count:1];
                        v111 = [v107 initWithDomain:v181 code:2 userInfo:?];
                        v98 = 0;
                        v25 = 0;
                        v31 = v207;
                        *errorCopy2 = v111;
LABEL_136:

LABEL_137:
                        v51 = v162;
                        goto LABEL_138;
                      }

                      v159 = v61;
                    }

                    else
                    {
                      v159 = 0;
                    }

                    v62 = [dictionaryCopy objectForKeyedSubscript:@"isPhotoSettingsSwitchEnabled"];
                    v158 = v62;
                    if (v62 && (v63 = v62, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!errorCopy2)
                        {
                          v160 = 0;
                          v25 = 0;
                          v31 = v207;
                          v42 = v165;
                          v98 = v159;
                          goto LABEL_136;
                        }

                        v182 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v161 = *MEMORY[0x1E698F240];
                        v223 = *MEMORY[0x1E696A578];
                        v112 = v41;
                        v113 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v143 = objc_opt_class();
                        v114 = v113;
                        v41 = v112;
                        v42 = v165;
                        v13 = v200;
                        v156 = [v114 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v143, @"isPhotoSettingsSwitchEnabled"];
                        v224 = v156;
                        v154 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v224 forKeys:&v223 count:1];
                        v115 = [v182 initWithDomain:v161 code:2 userInfo:?];
                        v160 = 0;
                        v25 = 0;
                        *errorCopy2 = v115;
                        v31 = v207;
                        v98 = v159;
                        goto LABEL_135;
                      }

                      v160 = v63;
                    }

                    else
                    {
                      v160 = 0;
                    }

                    v64 = [dictionaryCopy objectForKeyedSubscript:@"isStateOfMindSettingsSwitchEnabled"];
                    v154 = v64;
                    if (v64 && (v65 = v64, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        if (!errorCopy2)
                        {
                          v156 = 0;
                          v25 = 0;
                          v31 = v207;
                          v98 = v159;
                          v42 = v165;
                          v13 = v200;
                          goto LABEL_135;
                        }

                        v183 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v157 = *MEMORY[0x1E698F240];
                        v221 = *MEMORY[0x1E696A578];
                        v116 = v41;
                        v117 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v144 = objc_opt_class();
                        v118 = v117;
                        v41 = v116;
                        v42 = v165;
                        v13 = v200;
                        v155 = [v118 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v144, @"isStateOfMindSettingsSwitchEnabled"];
                        v222 = v155;
                        v152 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v222 forKeys:&v221 count:1];
                        v119 = [v183 initWithDomain:v157 code:2 userInfo:?];
                        v156 = 0;
                        v25 = 0;
                        *errorCopy2 = v119;
                        goto LABEL_186;
                      }

                      v156 = v65;
                    }

                    else
                    {
                      v156 = 0;
                    }

                    v66 = [dictionaryCopy objectForKeyedSubscript:@"isReflectionSettingsSwitchEnabled"];
                    v42 = v165;
                    v152 = v66;
                    if (!v66)
                    {
                      v155 = 0;
                      v13 = v200;
                      goto LABEL_120;
                    }

                    v67 = v66;
                    objc_opt_class();
                    v13 = v200;
                    if (objc_opt_isKindOfClass())
                    {
                      v155 = 0;
                      goto LABEL_120;
                    }

                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v155 = v67;
LABEL_120:
                      v90 = [dictionaryCopy objectForKeyedSubscript:@"isBroadSystemLocationSettingsSwitchEnabled"];
                      v150 = v90;
                      if (!v90 || (v91 = v90, objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
                      {
                        v153 = 0;
LABEL_123:
                        v92 = [dictionaryCopy objectForKeyedSubscript:@"deviceType"];
                        v148 = v41;
                        v149 = v92;
                        if (v92 && (v93 = v92, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          objc_opt_class();
                          if (objc_opt_isKindOfClass())
                          {
                            v151 = v93;
                          }

                          else
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0)
                            {
                              if (!errorCopy2)
                              {
                                v151 = 0;
                                v25 = 0;
                                v42 = v165;
                                goto LABEL_131;
                              }

                              v133 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v134 = *MEMORY[0x1E698F240];
                              v215 = *MEMORY[0x1E696A578];
                              v96 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber (corresponding to enum value), or NSString (string version of enum)", objc_opt_class(), @"deviceType"];
                              v216 = v96;
                              v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v216 forKeys:&v215 count:1];
                              v135 = [v133 initWithDomain:v134 code:2 userInfo:v94];
                              v151 = 0;
                              v25 = 0;
                              *errorCopy2 = v135;
                              v42 = v165;
                              goto LABEL_130;
                            }

                            v151 = [MEMORY[0x1E696AD98] numberWithInt:BMMomentsEngagementLightDeviceTypeFromString(v93)];
                            v42 = v165;
                          }
                        }

                        else
                        {
                          v151 = 0;
                        }

                        v94 = [dictionaryCopy objectForKeyedSubscript:@"isDiagnosticSubmissionAllowed"];
                        if (v94 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0)
                          {
                            if (errorCopy2)
                            {
                              v167 = objc_alloc(MEMORY[0x1E696ABC0]);
                              v130 = *MEMORY[0x1E698F240];
                              v213 = *MEMORY[0x1E696A578];
                              v131 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", objc_opt_class(), @"isDiagnosticSubmissionAllowed"];
                              v214 = v131;
                              v132 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v214 forKeys:&v213 count:1];
                              v13 = v200;
                              *errorCopy2 = [v167 initWithDomain:v130 code:2 userInfo:v132];
                            }

                            v96 = 0;
                            v25 = 0;
                            goto LABEL_130;
                          }

                          v95 = v190;
                          v96 = v94;
                        }

                        else
                        {
                          v95 = v190;
                          v96 = 0;
                        }

                        intValue = [v201 intValue];
                        LODWORD(v147) = [v151 intValue];
                        v25 = [(BMMomentsEngagement *)self initWithSuggestionEvent:v177 entryEvent:v95 clientActivityEvent:v207 onboardingFlowCompletionState:intValue isJournalAppInstalled:v204 isJournalAppLocked:v198 isJournalSuggestionSkipped:v187 isActivitySettingsSwitchEnabled:v42 isCommunicationSettingsSwitchEnabled:v174 isSignificantLocationSettingsSwitchEnabled:v171 isMediaSettingsSwitchEnabled:v168 isNearbyPeopleSettingsSwitchEnabled:v159 isPhotoSettingsSwitchEnabled:v160 isStateOfMindSettingsSwitchEnabled:v156 isReflectionSettingsSwitchEnabled:v155 isBroadSystemLocationSettingsSwitchEnabled:v153 deviceType:v147 isDiagnosticSubmissionAllowed:v96];
                        self = v25;
LABEL_130:

                        v41 = v148;
LABEL_131:
                        v98 = v159;
                        v99 = v149;
LABEL_132:

                        v31 = v207;
LABEL_133:

LABEL_134:
LABEL_135:

                        goto LABEL_136;
                      }

                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v153 = v91;
                        goto LABEL_123;
                      }

                      if (errorCopy2)
                      {
                        v125 = objc_alloc(MEMORY[0x1E696ABC0]);
                        v185 = *MEMORY[0x1E698F240];
                        v217 = *MEMORY[0x1E696A578];
                        v126 = v41;
                        v127 = objc_alloc(MEMORY[0x1E696AEC0]);
                        v146 = objc_opt_class();
                        v128 = v127;
                        v41 = v126;
                        v42 = v165;
                        v13 = v200;
                        v151 = [v128 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v146, @"isBroadSystemLocationSettingsSwitchEnabled"];
                        v218 = v151;
                        v99 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v218 forKeys:&v217 count:1];
                        v129 = [v125 initWithDomain:v185 code:2 userInfo:v99];
                        v153 = 0;
                        v25 = 0;
                        *errorCopy2 = v129;
                        v98 = v159;
                        goto LABEL_132;
                      }

                      v153 = 0;
                      v25 = 0;
LABEL_190:
                      v31 = v207;
                      v98 = v159;
                      goto LABEL_133;
                    }

                    if (errorCopy2)
                    {
                      v120 = objc_alloc(MEMORY[0x1E696ABC0]);
                      v184 = *MEMORY[0x1E698F240];
                      v219 = *MEMORY[0x1E696A578];
                      v121 = v41;
                      v122 = objc_alloc(MEMORY[0x1E696AEC0]);
                      v145 = objc_opt_class();
                      v123 = v122;
                      v41 = v121;
                      v42 = v165;
                      v13 = v200;
                      v153 = [v123 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v145, @"isReflectionSettingsSwitchEnabled"];
                      v220 = v153;
                      v150 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v220 forKeys:&v219 count:1];
                      v124 = [v120 initWithDomain:v184 code:2 userInfo:?];
                      v155 = 0;
                      v25 = 0;
                      *errorCopy2 = v124;
                      goto LABEL_190;
                    }

                    v155 = 0;
                    v25 = 0;
LABEL_186:
                    v31 = v207;
                    v98 = v159;
                    goto LABEL_134;
                  }

                  v168 = 0;
                }

                else
                {
                  v168 = 0;
                  v13 = v46;
                }

                v41 = v45;
                goto LABEL_79;
              }

              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v42 = v41;
                goto LABEL_52;
              }

              if (errorCopy2)
              {
                v195 = objc_alloc(MEMORY[0x1E696ABC0]);
                v179 = *MEMORY[0x1E698F240];
                v233 = *MEMORY[0x1E696A578];
                v75 = v41;
                v76 = objc_alloc(MEMORY[0x1E696AEC0]);
                v138 = objc_opt_class();
                v77 = v76;
                v41 = v75;
                v174 = [v77 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v138, @"isActivitySettingsSwitchEnabled"];
                v234 = v174;
                v173 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v234 forKeys:&v233 count:1];
                v42 = 0;
                v25 = 0;
                v31 = v207;
                *errorCopy2 = [v195 initWithDomain:v179 code:2 userInfo:?];
LABEL_140:

LABEL_141:
                v22 = v186;
                v72 = v187;
                v23 = v190;
                goto LABEL_142;
              }

              v42 = 0;
              v25 = 0;
LABEL_166:
              v31 = v207;
              goto LABEL_141;
            }

            v187 = 0;
          }

          else
          {
            v187 = 0;
            v8 = v11;
          }

          v6 = v10;
          goto LABEL_49;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v204 = v17;
          goto LABEL_22;
        }

        if (errorCopy2)
        {
          v205 = objc_alloc(MEMORY[0x1E696ABC0]);
          v197 = *MEMORY[0x1E698F240];
          v239 = *MEMORY[0x1E696A578];
          v54 = v10;
          v7 = v9;
          v55 = objc_alloc(MEMORY[0x1E696AEC0]);
          v136 = objc_opt_class();
          v56 = v55;
          v23 = v8;
          v8 = v11;
          v6 = v54;
          v13 = v200;
          error = v201;
          v198 = [v56 initWithFormat:@"Unexpected type %@ for element of %@, expecting NSNumber", v136, @"isJournalAppInstalled"];
          v240 = v198;
          v57 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v240 forKeys:&v239 count:1];
          v58 = v197;
          v196 = v57;
          v59 = [v205 initWithDomain:v58 code:2 userInfo:?];
          v204 = 0;
          v25 = 0;
          *errorCopy2 = v59;
          v31 = v207;
LABEL_144:

          goto LABEL_145;
        }

        v204 = 0;
        v25 = 0;
        v31 = v207;
        v89 = v9;
        v23 = v8;
        v8 = v11;
        v6 = v10;
        v7 = v89;
        error = v201;
LABEL_145:

LABEL_146:
        v26 = v23;
        goto LABEL_147;
      }

      if (error)
      {
        v52 = objc_alloc(MEMORY[0x1E696ABC0]);
        v208 = *MEMORY[0x1E698F240];
        v243 = *MEMORY[0x1E696A578];
        v31 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"clientActivityEvent"];
        v244 = v31;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:&v244 forKeys:&v243 count:1];
        error = v53 = error;
        v25 = 0;
        *v53 = [v52 initWithDomain:v208 code:2 userInfo:error];
        v7 = v27;
        v26 = v8;
        v8 = v176;
        v6 = v191;
LABEL_147:

        goto LABEL_148;
      }

      v25 = 0;
      v7 = v9;
      v26 = v8;
      v8 = v176;
      v6 = v191;
LABEL_148:

      goto LABEL_149;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = v6;
      v11 = v8;
      v8 = 0;
      goto LABEL_13;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
      v10 = v6;
      v11 = v8;
      v13 = v8;
      v211 = 0;
      v8 = [[BMMomentsEngagementAppEntryEvent alloc] initWithJSONDictionary:v13 error:&v211];
      v24 = v211;
      if (v24)
      {
        if (error)
        {
          v24 = v24;
          *error = v24;
        }

        v25 = 0;
        v26 = v8;
        v8 = v11;
        v6 = v10;
        v7 = v9;
        goto LABEL_148;
      }

      goto LABEL_13;
    }

    if (error)
    {
      v34 = objc_alloc(MEMORY[0x1E696ABC0]);
      v35 = *MEMORY[0x1E698F240];
      v245 = *MEMORY[0x1E696A578];
      errorCopy3 = error;
      v37 = v7;
      v38 = v6;
      v39 = v8;
      v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"entryEvent"];
      v246 = v40;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v246 forKeys:&v245 count:1];
      v25 = 0;
      *errorCopy3 = [v34 initWithDomain:v35 code:2 userInfo:v13];
      v26 = v40;
      v8 = v39;
      v6 = v38;
      v7 = v37;
      goto LABEL_148;
    }

    goto LABEL_46;
  }

  if (error)
  {
    v32 = objc_alloc(MEMORY[0x1E696ABC0]);
    v33 = *MEMORY[0x1E698F240];
    v247 = *MEMORY[0x1E696A578];
    v248[0] = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Unexpected type %@ for element of %@, expecting NSDictionary", objc_opt_class(), @"suggestionEvent"];
    v7 = v248[0];
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v248 forKeys:&v247 count:1];
    v25 = 0;
    *error = [v32 initWithDomain:v33 code:2 userInfo:v8];
LABEL_149:

    goto LABEL_150;
  }

  v25 = 0;
LABEL_150:

  return v25;
}

- (id)serialize
{
  v3 = objc_opt_new();
  [(BMMomentsEngagement *)self writeTo:v3];
  immutableData = [v3 immutableData];

  return immutableData;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (self->_suggestionEvent)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementSuggestionEvent *)self->_suggestionEvent writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_entryEvent)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementAppEntryEvent *)self->_entryEvent writeTo:toCopy];
    PBDataWriterRecallMark();
  }

  if (self->_clientActivityEvent)
  {
    PBDataWriterPlaceMark();
    [(BMMomentsEngagementClientActivityEvent *)self->_clientActivityEvent writeTo:toCopy];
    PBDataWriterRecallMark();
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

  PBDataWriterWriteUint32Field();
  if (self->_hasIsDiagnosticSubmissionAllowed)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)initByReadFrom:(id)from
{
  fromCopy = from;
  v114.receiver = self;
  v114.super_class = BMMomentsEngagement;
  v5 = [(BMEventBase *)&v114 init];
  if (!v5)
  {
    goto LABEL_205;
  }

  position = [fromCopy position];
  if (position < [fromCopy length])
  {
    do
    {
      if ([fromCopy hasError])
      {
        break;
      }

      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        LOBYTE(v115) = 0;
        v10 = [fromCopy position] + 1;
        if (v10 >= [fromCopy position] && (v11 = objc_msgSend(fromCopy, "position") + 1, v11 <= objc_msgSend(fromCopy, "length")))
        {
          data = [fromCopy data];
          [data getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v9 |= (v115 & 0x7F) << v7;
        if ((v115 & 0x80) == 0)
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
          v115 = 0;
          v116 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_204;
          }

          v15 = [[BMMomentsEngagementSuggestionEvent alloc] initByReadFrom:fromCopy];
          if (!v15)
          {
            goto LABEL_204;
          }

          v16 = 56;
          goto LABEL_109;
        case 2u:
          v115 = 0;
          v116 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_204;
          }

          v15 = [[BMMomentsEngagementAppEntryEvent alloc] initByReadFrom:fromCopy];
          if (!v15)
          {
            goto LABEL_204;
          }

          v16 = 64;
          goto LABEL_109;
        case 3u:
          v115 = 0;
          v116 = 0;
          if (!PBReaderPlaceMark())
          {
            goto LABEL_204;
          }

          v15 = [[BMMomentsEngagementClientActivityEvent alloc] initByReadFrom:fromCopy];
          if (!v15)
          {
            goto LABEL_204;
          }

          v16 = 72;
LABEL_109:
          v72 = *(&v5->super.super.isa + v16);
          *(&v5->super.super.isa + v16) = v15;

          PBReaderRecallMark();
          goto LABEL_202;
        case 4u:
          v61 = 0;
          v62 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v115) = 0;
            v63 = [fromCopy position] + 1;
            if (v63 >= [fromCopy position] && (v64 = objc_msgSend(fromCopy, "position") + 1, v64 <= objc_msgSend(fromCopy, "length")))
            {
              data2 = [fromCopy data];
              [data2 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v115 & 0x7F) << v61;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v61 += 7;
            v23 = v62++ > 8;
            if (v23)
            {
              goto LABEL_184;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 5)
          {
LABEL_184:
            LODWORD(v19) = 0;
          }

          v109 = 48;
          goto LABEL_186;
        case 5u:
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v5->_hasIsJournalAppInstalled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v40 = [fromCopy position] + 1;
            if (v40 >= [fromCopy position] && (v41 = objc_msgSend(fromCopy, "position") + 1, v41 <= objc_msgSend(fromCopy, "length")))
            {
              data3 = [fromCopy data];
              [data3 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v39 |= (v115 & 0x7F) << v37;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v37 += 7;
            v13 = v38++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_175;
            }
          }

          v30 = (v39 != 0) & ~[fromCopy hasError];
LABEL_175:
          v110 = 16;
          goto LABEL_201;
        case 6u:
          v79 = 0;
          v80 = 0;
          v81 = 0;
          v5->_hasIsJournalAppLocked = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v82 = [fromCopy position] + 1;
            if (v82 >= [fromCopy position] && (v83 = objc_msgSend(fromCopy, "position") + 1, v83 <= objc_msgSend(fromCopy, "length")))
            {
              data4 = [fromCopy data];
              [data4 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v81 |= (v115 & 0x7F) << v79;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v79 += 7;
            v13 = v80++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_192;
            }
          }

          v30 = (v81 != 0) & ~[fromCopy hasError];
LABEL_192:
          v110 = 18;
          goto LABEL_201;
        case 7u:
          v91 = 0;
          v92 = 0;
          v93 = 0;
          v5->_hasIsJournalSuggestionSkipped = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v94 = [fromCopy position] + 1;
            if (v94 >= [fromCopy position] && (v95 = objc_msgSend(fromCopy, "position") + 1, v95 <= objc_msgSend(fromCopy, "length")))
            {
              data5 = [fromCopy data];
              [data5 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v93 |= (v115 & 0x7F) << v91;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v91 += 7;
            v13 = v92++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_196;
            }
          }

          v30 = (v93 != 0) & ~[fromCopy hasError];
LABEL_196:
          v110 = 20;
          goto LABEL_201;
        case 8u:
          v66 = 0;
          v67 = 0;
          v68 = 0;
          v5->_hasIsActivitySettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v69 = [fromCopy position] + 1;
            if (v69 >= [fromCopy position] && (v70 = objc_msgSend(fromCopy, "position") + 1, v70 <= objc_msgSend(fromCopy, "length")))
            {
              data6 = [fromCopy data];
              [data6 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v68 |= (v115 & 0x7F) << v66;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v66 += 7;
            v13 = v67++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_188;
            }
          }

          v30 = (v68 != 0) & ~[fromCopy hasError];
LABEL_188:
          v110 = 22;
          goto LABEL_201;
        case 9u:
          v103 = 0;
          v104 = 0;
          v105 = 0;
          v5->_hasIsCommunicationSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v106 = [fromCopy position] + 1;
            if (v106 >= [fromCopy position] && (v107 = objc_msgSend(fromCopy, "position") + 1, v107 <= objc_msgSend(fromCopy, "length")))
            {
              data7 = [fromCopy data];
              [data7 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v105 |= (v115 & 0x7F) << v103;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v103 += 7;
            v13 = v104++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_200;
            }
          }

          v30 = (v105 != 0) & ~[fromCopy hasError];
LABEL_200:
          v110 = 24;
          goto LABEL_201;
        case 0xAu:
          v49 = 0;
          v50 = 0;
          v51 = 0;
          v5->_hasIsSignificantLocationSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v52 = [fromCopy position] + 1;
            if (v52 >= [fromCopy position] && (v53 = objc_msgSend(fromCopy, "position") + 1, v53 <= objc_msgSend(fromCopy, "length")))
            {
              data8 = [fromCopy data];
              [data8 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v51 |= (v115 & 0x7F) << v49;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v49 += 7;
            v13 = v50++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_179;
            }
          }

          v30 = (v51 != 0) & ~[fromCopy hasError];
LABEL_179:
          v110 = 26;
          goto LABEL_201;
        case 0xBu:
          v97 = 0;
          v98 = 0;
          v99 = 0;
          v5->_hasIsMediaSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v100 = [fromCopy position] + 1;
            if (v100 >= [fromCopy position] && (v101 = objc_msgSend(fromCopy, "position") + 1, v101 <= objc_msgSend(fromCopy, "length")))
            {
              data9 = [fromCopy data];
              [data9 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v99 |= (v115 & 0x7F) << v97;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v97 += 7;
            v13 = v98++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_198;
            }
          }

          v30 = (v99 != 0) & ~[fromCopy hasError];
LABEL_198:
          v110 = 28;
          goto LABEL_201;
        case 0xCu:
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v5->_hasIsNearbyPeopleSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v34 = [fromCopy position] + 1;
            if (v34 >= [fromCopy position] && (v35 = objc_msgSend(fromCopy, "position") + 1, v35 <= objc_msgSend(fromCopy, "length")))
            {
              data10 = [fromCopy data];
              [data10 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v33 |= (v115 & 0x7F) << v31;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v31 += 7;
            v13 = v32++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_173;
            }
          }

          v30 = (v33 != 0) & ~[fromCopy hasError];
LABEL_173:
          v110 = 30;
          goto LABEL_201;
        case 0xDu:
          v43 = 0;
          v44 = 0;
          v45 = 0;
          v5->_hasIsPhotoSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v46 = [fromCopy position] + 1;
            if (v46 >= [fromCopy position] && (v47 = objc_msgSend(fromCopy, "position") + 1, v47 <= objc_msgSend(fromCopy, "length")))
            {
              data11 = [fromCopy data];
              [data11 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v45 |= (v115 & 0x7F) << v43;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v43 += 7;
            v13 = v44++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_177;
            }
          }

          v30 = (v45 != 0) & ~[fromCopy hasError];
LABEL_177:
          v110 = 32;
          goto LABEL_201;
        case 0xEu:
          v85 = 0;
          v86 = 0;
          v87 = 0;
          v5->_hasIsStateOfMindSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v88 = [fromCopy position] + 1;
            if (v88 >= [fromCopy position] && (v89 = objc_msgSend(fromCopy, "position") + 1, v89 <= objc_msgSend(fromCopy, "length")))
            {
              data12 = [fromCopy data];
              [data12 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v87 |= (v115 & 0x7F) << v85;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v85 += 7;
            v13 = v86++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_194;
            }
          }

          v30 = (v87 != 0) & ~[fromCopy hasError];
LABEL_194:
          v110 = 34;
          goto LABEL_201;
        case 0xFu:
          v24 = 0;
          v25 = 0;
          v26 = 0;
          v5->_hasIsReflectionSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v27 = [fromCopy position] + 1;
            if (v27 >= [fromCopy position] && (v28 = objc_msgSend(fromCopy, "position") + 1, v28 <= objc_msgSend(fromCopy, "length")))
            {
              data13 = [fromCopy data];
              [data13 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v26 |= (v115 & 0x7F) << v24;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v24 += 7;
            v13 = v25++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_171;
            }
          }

          v30 = (v26 != 0) & ~[fromCopy hasError];
LABEL_171:
          v110 = 36;
          goto LABEL_201;
        case 0x10u:
          v55 = 0;
          v56 = 0;
          v57 = 0;
          v5->_hasIsBroadSystemLocationSettingsSwitchEnabled = 1;
          while (1)
          {
            LOBYTE(v115) = 0;
            v58 = [fromCopy position] + 1;
            if (v58 >= [fromCopy position] && (v59 = objc_msgSend(fromCopy, "position") + 1, v59 <= objc_msgSend(fromCopy, "length")))
            {
              data14 = [fromCopy data];
              [data14 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v57 |= (v115 & 0x7F) << v55;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v55 += 7;
            v13 = v56++ >= 9;
            if (v13)
            {
              LOBYTE(v30) = 0;
              goto LABEL_181;
            }
          }

          v30 = (v57 != 0) & ~[fromCopy hasError];
LABEL_181:
          v110 = 38;
          goto LABEL_201;
        case 0x11u:
          v17 = 0;
          v18 = 0;
          v19 = 0;
          while (1)
          {
            LOBYTE(v115) = 0;
            v20 = [fromCopy position] + 1;
            if (v20 >= [fromCopy position] && (v21 = objc_msgSend(fromCopy, "position") + 1, v21 <= objc_msgSend(fromCopy, "length")))
            {
              data15 = [fromCopy data];
              [data15 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

              [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
            }

            else
            {
              [fromCopy _setError];
            }

            v19 |= (v115 & 0x7F) << v17;
            if ((v115 & 0x80) == 0)
            {
              break;
            }

            v17 += 7;
            v23 = v18++ > 8;
            if (v23)
            {
              goto LABEL_168;
            }
          }

          if (([fromCopy hasError] & 1) != 0 || v19 > 5)
          {
LABEL_168:
            LODWORD(v19) = 0;
          }

          v109 = 52;
LABEL_186:
          *(&v5->super.super.isa + v109) = v19;
          goto LABEL_202;
        case 0x12u:
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v5->_hasIsDiagnosticSubmissionAllowed = 1;
          break;
        default:
          if ((PBReaderSkipValueWithTag() & 1) == 0)
          {
            goto LABEL_204;
          }

          goto LABEL_202;
      }

      while (1)
      {
        LOBYTE(v115) = 0;
        v76 = [fromCopy position] + 1;
        if (v76 >= [fromCopy position] && (v77 = objc_msgSend(fromCopy, "position") + 1, v77 <= objc_msgSend(fromCopy, "length")))
        {
          data16 = [fromCopy data];
          [data16 getBytes:&v115 range:{objc_msgSend(fromCopy, "position"), 1}];

          [fromCopy setPosition:{objc_msgSend(fromCopy, "position") + 1}];
        }

        else
        {
          [fromCopy _setError];
        }

        v75 |= (v115 & 0x7F) << v73;
        if ((v115 & 0x80) == 0)
        {
          break;
        }

        v73 += 7;
        v13 = v74++ >= 9;
        if (v13)
        {
          LOBYTE(v30) = 0;
          goto LABEL_190;
        }
      }

      v30 = (v75 != 0) & ~[fromCopy hasError];
LABEL_190:
      v110 = 40;
LABEL_201:
      *(&v5->super.super.isa + v110) = v30;
LABEL_202:
      position2 = [fromCopy position];
    }

    while (position2 < [fromCopy length]);
  }

  if ([fromCopy hasError])
  {
LABEL_204:
    v112 = 0;
  }

  else
  {
LABEL_205:
    v112 = v5;
  }

  return v112;
}

- (NSString)description
{
  v18 = objc_alloc(MEMORY[0x1E696AEC0]);
  suggestionEvent = [(BMMomentsEngagement *)self suggestionEvent];
  entryEvent = [(BMMomentsEngagement *)self entryEvent];
  clientActivityEvent = [(BMMomentsEngagement *)self clientActivityEvent];
  v17 = BMMomentsEventDataOnboardingFlowCompletionAsString([(BMMomentsEngagement *)self onboardingFlowCompletionState]);
  v16 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalAppInstalled](self, "isJournalAppInstalled")}];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalAppLocked](self, "isJournalAppLocked")}];
  v14 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isJournalSuggestionSkipped](self, "isJournalSuggestionSkipped")}];
  v13 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isActivitySettingsSwitchEnabled](self, "isActivitySettingsSwitchEnabled")}];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isCommunicationSettingsSwitchEnabled](self, "isCommunicationSettingsSwitchEnabled")}];
  v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isSignificantLocationSettingsSwitchEnabled](self, "isSignificantLocationSettingsSwitchEnabled")}];
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isMediaSettingsSwitchEnabled](self, "isMediaSettingsSwitchEnabled")}];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isNearbyPeopleSettingsSwitchEnabled](self, "isNearbyPeopleSettingsSwitchEnabled")}];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isPhotoSettingsSwitchEnabled](self, "isPhotoSettingsSwitchEnabled")}];
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isStateOfMindSettingsSwitchEnabled](self, "isStateOfMindSettingsSwitchEnabled")}];
  v3 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isReflectionSettingsSwitchEnabled](self, "isReflectionSettingsSwitchEnabled")}];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isBroadSystemLocationSettingsSwitchEnabled](self, "isBroadSystemLocationSettingsSwitchEnabled")}];
  v5 = BMMomentsEngagementLightDeviceTypeAsString([(BMMomentsEngagement *)self deviceType]);
  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[BMMomentsEngagement isDiagnosticSubmissionAllowed](self, "isDiagnosticSubmissionAllowed")}];
  v19 = [v18 initWithFormat:@"BMMomentsEngagement with suggestionEvent: %@, entryEvent: %@, clientActivityEvent: %@, onboardingFlowCompletionState: %@, isJournalAppInstalled: %@, isJournalAppLocked: %@, isJournalSuggestionSkipped: %@, isActivitySettingsSwitchEnabled: %@, isCommunicationSettingsSwitchEnabled: %@, isSignificantLocationSettingsSwitchEnabled: %@, isMediaSettingsSwitchEnabled: %@, isNearbyPeopleSettingsSwitchEnabled: %@, isPhotoSettingsSwitchEnabled: %@, isStateOfMindSettingsSwitchEnabled: %@, isReflectionSettingsSwitchEnabled: %@, isBroadSystemLocationSettingsSwitchEnabled: %@, deviceType: %@, isDiagnosticSubmissionAllowed: %@", suggestionEvent, entryEvent, clientActivityEvent, v17, v16, v15, v14, v13, v12, v20, v11, v10, v9, v8, v3, v4, v5, v6];

  return v19;
}

- (BMMomentsEngagement)initWithSuggestionEvent:(id)event entryEvent:(id)entryEvent clientActivityEvent:(id)activityEvent onboardingFlowCompletionState:(int)state isJournalAppInstalled:(id)installed isJournalAppLocked:(id)locked isJournalSuggestionSkipped:(id)skipped isActivitySettingsSwitchEnabled:(id)self0 isCommunicationSettingsSwitchEnabled:(id)self1 isSignificantLocationSettingsSwitchEnabled:(id)self2 isMediaSettingsSwitchEnabled:(id)self3 isNearbyPeopleSettingsSwitchEnabled:(id)self4 isPhotoSettingsSwitchEnabled:(id)self5 isStateOfMindSettingsSwitchEnabled:(id)self6 isReflectionSettingsSwitchEnabled:(id)self7 isBroadSystemLocationSettingsSwitchEnabled:(id)self8 deviceType:(int)self9 isDiagnosticSubmissionAllowed:(id)allowed
{
  eventCopy = event;
  entryEventCopy = entryEvent;
  entryEventCopy2 = entryEvent;
  activityEventCopy = activityEvent;
  activityEventCopy2 = activityEvent;
  installedCopy = installed;
  lockedCopy = locked;
  skippedCopy = skipped;
  enabledCopy = enabled;
  switchEnabledCopy = switchEnabled;
  settingsSwitchEnabledCopy = settingsSwitchEnabled;
  mediaSettingsSwitchEnabledCopy = mediaSettingsSwitchEnabled;
  v28 = skippedCopy;
  peopleSettingsSwitchEnabledCopy = peopleSettingsSwitchEnabled;
  photoSettingsSwitchEnabledCopy = photoSettingsSwitchEnabled;
  mindSettingsSwitchEnabledCopy = mindSettingsSwitchEnabled;
  reflectionSettingsSwitchEnabledCopy = reflectionSettingsSwitchEnabled;
  locationSettingsSwitchEnabledCopy = locationSettingsSwitchEnabled;
  allowedCopy = allowed;
  v48.receiver = self;
  v48.super_class = BMMomentsEngagement;
  v34 = [(BMEventBase *)&v48 init];
  if (v34)
  {
    v34->_dataVersion = [objc_opt_class() latestDataVersion];
    objc_storeStrong(&v34->_suggestionEvent, event);
    objc_storeStrong(&v34->_entryEvent, entryEventCopy);
    objc_storeStrong(&v34->_clientActivityEvent, activityEventCopy);
    v34->_onboardingFlowCompletionState = state;
    if (installedCopy)
    {
      v34->_hasIsJournalAppInstalled = 1;
      v34->_isJournalAppInstalled = [installedCopy BOOLValue];
    }

    else
    {
      v34->_hasIsJournalAppInstalled = 0;
      v34->_isJournalAppInstalled = 0;
    }

    if (lockedCopy)
    {
      v34->_hasIsJournalAppLocked = 1;
      v34->_isJournalAppLocked = [lockedCopy BOOLValue];
    }

    else
    {
      v34->_hasIsJournalAppLocked = 0;
      v34->_isJournalAppLocked = 0;
    }

    if (v28)
    {
      v34->_hasIsJournalSuggestionSkipped = 1;
      v34->_isJournalSuggestionSkipped = [v28 BOOLValue];
    }

    else
    {
      v34->_hasIsJournalSuggestionSkipped = 0;
      v34->_isJournalSuggestionSkipped = 0;
    }

    if (enabledCopy)
    {
      v34->_hasIsActivitySettingsSwitchEnabled = 1;
      v34->_isActivitySettingsSwitchEnabled = [enabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsActivitySettingsSwitchEnabled = 0;
      v34->_isActivitySettingsSwitchEnabled = 0;
    }

    if (switchEnabledCopy)
    {
      v34->_hasIsCommunicationSettingsSwitchEnabled = 1;
      v34->_isCommunicationSettingsSwitchEnabled = [switchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsCommunicationSettingsSwitchEnabled = 0;
      v34->_isCommunicationSettingsSwitchEnabled = 0;
    }

    if (settingsSwitchEnabledCopy)
    {
      v34->_hasIsSignificantLocationSettingsSwitchEnabled = 1;
      v34->_isSignificantLocationSettingsSwitchEnabled = [settingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsSignificantLocationSettingsSwitchEnabled = 0;
      v34->_isSignificantLocationSettingsSwitchEnabled = 0;
    }

    if (mediaSettingsSwitchEnabledCopy)
    {
      v34->_hasIsMediaSettingsSwitchEnabled = 1;
      v34->_isMediaSettingsSwitchEnabled = [mediaSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsMediaSettingsSwitchEnabled = 0;
      v34->_isMediaSettingsSwitchEnabled = 0;
    }

    if (peopleSettingsSwitchEnabledCopy)
    {
      v34->_hasIsNearbyPeopleSettingsSwitchEnabled = 1;
      v34->_isNearbyPeopleSettingsSwitchEnabled = [peopleSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsNearbyPeopleSettingsSwitchEnabled = 0;
      v34->_isNearbyPeopleSettingsSwitchEnabled = 0;
    }

    if (photoSettingsSwitchEnabledCopy)
    {
      v34->_hasIsPhotoSettingsSwitchEnabled = 1;
      v34->_isPhotoSettingsSwitchEnabled = [photoSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsPhotoSettingsSwitchEnabled = 0;
      v34->_isPhotoSettingsSwitchEnabled = 0;
    }

    if (mindSettingsSwitchEnabledCopy)
    {
      v34->_hasIsStateOfMindSettingsSwitchEnabled = 1;
      v34->_isStateOfMindSettingsSwitchEnabled = [mindSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsStateOfMindSettingsSwitchEnabled = 0;
      v34->_isStateOfMindSettingsSwitchEnabled = 0;
    }

    if (reflectionSettingsSwitchEnabledCopy)
    {
      v34->_hasIsReflectionSettingsSwitchEnabled = 1;
      v34->_isReflectionSettingsSwitchEnabled = [reflectionSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsReflectionSettingsSwitchEnabled = 0;
      v34->_isReflectionSettingsSwitchEnabled = 0;
    }

    if (locationSettingsSwitchEnabledCopy)
    {
      v34->_hasIsBroadSystemLocationSettingsSwitchEnabled = 1;
      v34->_isBroadSystemLocationSettingsSwitchEnabled = [locationSettingsSwitchEnabledCopy BOOLValue];
    }

    else
    {
      v34->_hasIsBroadSystemLocationSettingsSwitchEnabled = 0;
      v34->_isBroadSystemLocationSettingsSwitchEnabled = 0;
    }

    v34->_deviceType = type;
    if (allowedCopy)
    {
      v34->_hasIsDiagnosticSubmissionAllowed = 1;
      v34->_isDiagnosticSubmissionAllowed = [allowedCopy BOOLValue];
    }

    else
    {
      v34->_hasIsDiagnosticSubmissionAllowed = 0;
      v34->_isDiagnosticSubmissionAllowed = 0;
    }
  }

  return v34;
}

+ (id)protoFields
{
  v22[18] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"suggestionEvent" number:1 type:14 subMessageClass:objc_opt_class()];
  v22[0] = v21;
  v20 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"entryEvent" number:2 type:14 subMessageClass:objc_opt_class()];
  v22[1] = v20;
  v19 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"clientActivityEvent" number:3 type:14 subMessageClass:objc_opt_class()];
  v22[2] = v19;
  v18 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"onboardingFlowCompletionState" number:4 type:4 subMessageClass:0];
  v22[3] = v18;
  v17 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJournalAppInstalled" number:5 type:12 subMessageClass:0];
  v22[4] = v17;
  v16 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJournalAppLocked" number:6 type:12 subMessageClass:0];
  v22[5] = v16;
  v15 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isJournalSuggestionSkipped" number:7 type:12 subMessageClass:0];
  v22[6] = v15;
  v14 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isActivitySettingsSwitchEnabled" number:8 type:12 subMessageClass:0];
  v22[7] = v14;
  v13 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isCommunicationSettingsSwitchEnabled" number:9 type:12 subMessageClass:0];
  v22[8] = v13;
  v2 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isSignificantLocationSettingsSwitchEnabled" number:10 type:12 subMessageClass:0];
  v22[9] = v2;
  v3 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isMediaSettingsSwitchEnabled" number:11 type:12 subMessageClass:0];
  v22[10] = v3;
  v4 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isNearbyPeopleSettingsSwitchEnabled" number:12 type:12 subMessageClass:0];
  v22[11] = v4;
  v5 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isPhotoSettingsSwitchEnabled" number:13 type:12 subMessageClass:0];
  v22[12] = v5;
  v6 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isStateOfMindSettingsSwitchEnabled" number:14 type:12 subMessageClass:0];
  v22[13] = v6;
  v7 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isReflectionSettingsSwitchEnabled" number:15 type:12 subMessageClass:0];
  v22[14] = v7;
  v8 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isBroadSystemLocationSettingsSwitchEnabled" number:16 type:12 subMessageClass:0];
  v22[15] = v8;
  v9 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"deviceType" number:17 type:4 subMessageClass:0];
  v22[16] = v9;
  v10 = [objc_alloc(MEMORY[0x1E698F2C8]) initWithName:@"isDiagnosticSubmissionAllowed" number:18 type:12 subMessageClass:0];
  v22[17] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:18];

  return v11;
}

+ (id)columns
{
  v22[18] = *MEMORY[0x1E69E9840];
  v21 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"suggestionEvent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_917];
  v20 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"entryEvent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_919];
  v19 = [objc_alloc(MEMORY[0x1E698F2D8]) initWithName:@"clientActivityEvent_json" dataType:5 requestOnly:1 extractBlock:&__block_literal_global_921];
  v18 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"onboardingFlowCompletionState" dataType:0 requestOnly:0 fieldNumber:4 protoDataType:4 convertedType:0];
  v17 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJournalAppInstalled" dataType:0 requestOnly:0 fieldNumber:5 protoDataType:12 convertedType:0];
  v16 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJournalAppLocked" dataType:0 requestOnly:0 fieldNumber:6 protoDataType:12 convertedType:0];
  v15 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isJournalSuggestionSkipped" dataType:0 requestOnly:0 fieldNumber:7 protoDataType:12 convertedType:0];
  v14 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isActivitySettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:8 protoDataType:12 convertedType:0];
  v2 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isCommunicationSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:9 protoDataType:12 convertedType:0];
  v3 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isSignificantLocationSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:10 protoDataType:12 convertedType:0];
  v13 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isMediaSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:11 protoDataType:12 convertedType:0];
  v12 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isNearbyPeopleSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:12 protoDataType:12 convertedType:0];
  v4 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isPhotoSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:13 protoDataType:12 convertedType:0];
  v5 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isStateOfMindSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:14 protoDataType:12 convertedType:0];
  v6 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isReflectionSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:15 protoDataType:12 convertedType:0];
  v11 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isBroadSystemLocationSettingsSwitchEnabled" dataType:0 requestOnly:0 fieldNumber:16 protoDataType:12 convertedType:0];
  v7 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"deviceType" dataType:0 requestOnly:0 fieldNumber:17 protoDataType:4 convertedType:0];
  v8 = [objc_alloc(MEMORY[0x1E698F2E8]) initWithName:@"isDiagnosticSubmissionAllowed" dataType:0 requestOnly:0 fieldNumber:18 protoDataType:12 convertedType:0];
  v22[0] = v21;
  v22[1] = v20;
  v22[2] = v19;
  v22[3] = v18;
  v22[4] = v17;
  v22[5] = v16;
  v22[6] = v15;
  v22[7] = v14;
  v22[8] = v2;
  v22[9] = v3;
  v22[10] = v13;
  v22[11] = v12;
  v22[12] = v4;
  v22[13] = v5;
  v22[14] = v6;
  v22[15] = v11;
  v22[16] = v7;
  v22[17] = v8;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:18];

  return v10;
}

id __30__BMMomentsEngagement_columns__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 clientActivityEvent];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __30__BMMomentsEngagement_columns__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 entryEvent];
  v5 = [v4 jsonDictionary];
  v6 = BMConvertObjectToJSONString();

  return v6;
}

id __30__BMMomentsEngagement_columns__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v3 = [a2 eventBodyKeepingBackingData:1];
  v4 = [v3 suggestionEvent];
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

    v8 = [[BMMomentsEngagement alloc] initByReadFrom:v7];
    v4 = v8;
    if (v8)
    {
      v8[11] = 0;
    }
  }

  return v4;
}

@end