@interface PRSRankingItem
+ (float)inAppEngagementScoreWithEvaluator:(id)evaluator currentTime:(double)time queriesInApp:(id)app datesInApp:(id)inApp topicalityScore:(float)score;
+ (float)matchScoreLaunchString:(id)string withEvaluator:(id)evaluator;
+ (float)matchScoreServerCompletion:(id)completion withEvaluator:(id)evaluator;
+ (float)outOfSpotlightEngagementScore:(double)score datesOutOfSpotlight:(id)spotlight topicalityScore:(float)topicalityScore alternativeOutOfSpotlightCount:(float)count;
+ (id)tokenizeContactsEmailAddress:(id)address removeTLD:(BOOL)d usernameTokenCount:(unint64_t *)count usernameLength:(unint64_t *)length domainLength:(unint64_t *)domainLength username:(id *)username;
+ (id)tokenizeContactsName:(id)name tokenCount:(unint64_t *)count;
+ (id)tokenizeTitleString:(id)string;
+ (id)tokenizeTitleString:(id)string matchOption:(unsigned __int8)option;
+ (id)tokenizeURLString:(id)string removeTLD:(BOOL)d hostTokenCount:(unint64_t *)count hostLength:(unint64_t *)length pathLength:(unint64_t *)pathLength queryLength:(unint64_t *)queryLength fragmentLength:(unint64_t *)fragmentLength;
+ (int)preferencePriorityFromIdentity:(id)identity;
+ (int)preferencePriorityFromIdentityWithPrefixPrefs:(id)prefs;
+ (int)preferencePriorityFromIdentityWithPrefixSettingsNavigation:(id)navigation;
+ (void)matchScoreTokensFromText:(id)text withEvaluator:(id)evaluator withHandler:(id)handler;
+ (void)parsePreferenceIdentity:(id)identity withHandler:(id)handler;
- (BOOL)_isWalletPass:(id)pass;
- (BOOL)_isWalletTransaction:(id)transaction;
- (BOOL)isAssociatedWithTophitContactsFromItems:(id)items;
- (BOOL)isCCCD;
- (BOOL)isGoodMatchAlternateName:(id)name withEvaluator:(id)evaluator;
- (BOOL)isSearchResultPage:(id)page;
- (float)computeCalibratedSparseScore;
- (float)engagementScoreWithEvaluator:(id)evaluator currentTime:(double)time launchString:(id)string topicalityScore:(float)score;
- (float)inSpotlightEngagementScoreWithEvaluator:(id)evaluator currentTime:(double)time queriesInSpotlight:(id)spotlight datesInSpotlight:(id)inSpotlight queriesInSpotlightNonUnique:(id)unique datesInSpotlightNonUnique:(id)nonUnique launchString:(id)string lastUsedDate:(id)self0 topicalityScore:(float)self1;
- (float)matchScoreAppName:(id)name withEvaluator:(id)evaluator;
- (float)matchScoreAppName:(id)name withEvaluator:(id)evaluator matchOption:(unsigned __int8)option;
- (float)matchScoreContactsEmailAddress:(id)address withEvaluator:(id)evaluator;
- (float)matchScoreContactsName:(id)name withEvaluator:(id)evaluator;
- (float)matchScoreFileName:(id)name withEvaluator:(id)evaluator;
- (float)matchScoreFileNameForSearchTool:(id)tool withEvaluator:(id)evaluator;
- (float)matchScoreForAppEntityWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForApplicationsWithEvaluator:(id)evaluator;
- (float)matchScoreForBooksWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForCalendarWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForContactsWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator;
- (float)matchScoreForDictionaryWithEvaluator:(id)evaluator;
- (float)matchScoreForFilesWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForHelpWithEvaluator:(id)evaluator;
- (float)matchScoreForMailWithEvaluator:(id)evaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForMessagesWithEvaluator:(id)evaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForMusicWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForNotesWithEvaluator:(id)evaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForPeopleItemsWithEvaluator:(id)evaluator;
- (float)matchScoreForPreferencesWithEvaluator:(id)evaluator;
- (float)matchScoreForPreferencesWithEvaluator:(id)evaluator subject:(id)subject isFirstParty:(BOOL)party preferencePriority:(int)priority;
- (float)matchScoreForPreferencesWithEvaluator:(id)evaluator subject:(id)subject preferenceType:(id)type preferenceId:(id)id;
- (float)matchScoreForSafariWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForShortcutsAppWithEvaluator:(id)evaluator;
- (float)matchScoreForShortcutsSettingWithEvaluator:(id)evaluator name:(id)name preferencePriority:(int)priority;
- (float)matchScoreForShortcutsWithEvaluator:(id)evaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreForTipsWithEvaluator:(id)evaluator;
- (float)matchScoreForTokensFromText:(id)text withEvaluator:(id)evaluator;
- (float)matchScoreForWalletWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreGeneric:(id)generic quParsedEvaluator:(id)evaluator isSearchToolClient:(BOOL)client;
- (float)matchScoreSettings:(id)settings withEvaluator:(id)evaluator matchOption:(unsigned __int8)option;
- (float)matchScoreTitle:(id)title withEvaluator:(id)evaluator;
- (float)matchScoreTitle:(id)title withEvaluator:(id)evaluator matchOption:(unsigned __int8)option;
- (float)matchScoreURLString:(id)string withEvaluator:(id)evaluator;
- (float)mostRecentTimeToQueryInMinutesWithCurrentTime:(double)time topicality:(float)topicality;
- (float)staleDemotionWithCurrentTime:(double)time topicality:(float)topicality;
- (float)topicalityScoreWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client quParsedPersonEvaluator:(id)personEvaluator quParsedArgSearchTermsEvaluator:(id)termsEvaluator;
- (int)shortcutPriorityFromIdentifier:(id)identifier;
- (int64_t)compareAppsTopHitCandidate:(id)candidate;
- (int64_t)compareContactsTopHitCandidate:(id)candidate;
- (int64_t)compareLocalTopHitCandidate:(id)candidate;
- (int64_t)compareParsecTopHitCandidate:(id)candidate;
- (int64_t)comparePeopleItemTopHitCandidate:(id)candidate;
- (int64_t)compareSafariTopHitCandidate:(id)candidate;
- (int64_t)compareShortcutTopHitCandidate:(id)candidate;
- (int64_t)compareWithCCCDTopHitCandidate:(id)candidate;
- (int64_t)itemSparseMatchStrengthTypeForMailWithEvaluator:(id)evaluator attributeMatchesForToken:(id)token;
- (int64_t)itemSparseMatchStrengthTypeForMessagesAndCalendarWithEvaluator:(id)evaluator attributeMatchesForToken:(id)token;
- (int64_t)itemSparseMatchStrengthTypeForNotesAndFilesWithEvaluator:(id)evaluator attributeMatchesForToken:(id)token;
- (int64_t)itemSparseMatchStrengthTypeWithEvaluator:(id)evaluator;
- (void)calculateFreshnessForSearchTool:(id)tool userSpecifiedStartTime:(double)time userSpecifiedEndTime:(double)endTime;
- (void)extractDocumentSignals;
- (void)resetScoreForShortcutsSetting:(id)setting;
@end

@implementation PRSRankingItem

- (float)staleDemotionWithCurrentTime:(double)time topicality:(float)topicality
{
  [(PRSRankingItem *)self mostRecentTimeToQueryInMinutesWithCurrentTime:time topicality:?];
  v6 = v5;
  [(PRSRankingItem *)self setMostRecentTimeToQueryInDaysForFreshness:(v5 / 1440.0)];

  return timeDecay(&unk_1F55B75C8, v6);
}

- (float)mostRecentTimeToQueryInMinutesWithCurrentTime:(double)time topicality:(float)topicality
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 9uLL);
  v8 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x20uLL);
  v9 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x13BuLL);
  v10 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x6DuLL);
  v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x73uLL);
  [(PRSRankingItem *)self setCardExpirationDateToNowInSeconds:0];
  if (v9)
  {
    [v9 timeIntervalSinceReferenceDate];
    [(PRSRankingItem *)self setCardExpirationDateToNowInSeconds:(time - v12)];
  }

  if (objc_msgSend_count(v10))
  {
    v13 = [v10 valueForKeyPath:@"@max.self"];
  }

  else
  {
    v13 = 0;
  }

  if (objc_msgSend_count(v11))
  {
    v14 = [v11 valueForKeyPath:@"@max.self"];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(PRSRankingItem *)self moreRecentDateFromDate1:v7 date2:v13];

  v16 = [(PRSRankingItem *)self moreRecentDateFromDate1:v15 date2:v14];

  if (v16)
  {
    [(PRSRankingItem *)self setLastUsedDate:v16];
  }

  if (([(PRSRankingItem *)self bundleIDType]& 0x100) != 0)
  {
    v19 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x16CuLL);
    if (v16 | v19)
    {
      v20 = [(PRSRankingItem *)self moreRecentDateFromDate1:v16 date2:v19];
    }

    else
    {
      if (!v8 || ([v8 timeIntervalSinceReferenceDate], (time - v21) / 60.0 >= 5.0))
      {
        v22 = 0;
        goto LABEL_34;
      }

      v20 = v8;
    }

    v22 = v20;
LABEL_34:

    goto LABEL_35;
  }

  if (([(PRSRankingItem *)self bundleIDType]& 4) == 0)
  {
    if (([(PRSRankingItem *)self bundleIDType]& 0x100000) != 0)
    {
      if (!v16)
      {
        attributes = [(PRSRankingItem *)self attributes];
        v35 = 365;
        goto LABEL_80;
      }

LABEL_45:
      v22 = v16;
      goto LABEL_46;
    }

    if (([(PRSRankingItem *)self bundleIDType]& 0x80) == 0 && ([(PRSRankingItem *)self bundleIDType]& 0x10) == 0)
    {
      if (([(PRSRankingItem *)self bundleIDType]& 2) != 0 || ([(PRSRankingItem *)self bundleIDType]& 0x800) != 0)
      {
        v60 = v13;
        if (v16)
        {
          v39 = v16;
        }

        v40 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x19uLL);
        v41 = [(PRSRankingItem *)self moreRecentDateFromDate1:v16 date2:v8];

        v22 = [(PRSRankingItem *)self moreRecentDateFromDate1:v41 date2:v40];

        v13 = v60;
LABEL_35:
        if (!v22)
        {
          goto LABEL_36;
        }

LABEL_46:
        [v22 timeIntervalSinceReferenceDate];
        v23 = (time - v24) / 60.0;
        [(PRSRankingItem *)self setMostRecentUseInMinutes:v23];
        if (([(PRSRankingItem *)self bundleIDType]& 0x100) != 0)
        {
          if (v23 <= 259200.0)
          {
            if (v23 > 1440.0)
            {
              v67 = 0.0;
              SSCompactRankingAttrsGetFloat([(PRSRankingItem *)self attributes], 0x163uLL, &v67);
              if (v67 < 5.0)
              {
                v23 = 216000.0;
              }
            }
          }

          else
          {
            v23 = 257760.0;
          }

          goto LABEL_105;
        }

        if (([(PRSRankingItem *)self bundleIDType]& 4) != 0)
        {
          if (v23 > 777600.0)
          {
            v23 = 777600.0;
          }

          if (v23 < 0.0)
          {
            v25 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x3CuLL);
            if (objc_msgSend_count(v25))
            {
              v58 = v8;
              v59 = v13;
              v65 = 0u;
              v66 = 0u;
              v63 = 0u;
              v64 = 0u;
              v57 = v25;
              v26 = v25;
              v27 = [v26 countByEnumeratingWithState:&v63 objects:v68 count:16];
              if (v27)
              {
                v28 = v27;
                v29 = *v64;
                v23 = 43200.0;
                do
                {
                  for (i = 0; i != v28; ++i)
                  {
                    if (*v64 != v29)
                    {
                      objc_enumerationMutation(v26);
                    }

                    [*(*(&v63 + 1) + 8 * i) timeIntervalSinceReferenceDate];
                    v32 = (time - v31) / 60.0;
                    if (v23 > v32 && v32 > 0.0)
                    {
                      v23 = v32;
                    }
                  }

                  v28 = [v26 countByEnumeratingWithState:&v63 objects:v68 count:16];
                }

                while (v28);
              }

              else
              {
                v23 = 43200.0;
              }

              v8 = v58;
              v13 = v59;
              v25 = v57;
            }
          }

          goto LABEL_105;
        }

        if (([(PRSRankingItem *)self bundleIDType]& 0x80) == 0)
        {
          if (([(PRSRankingItem *)self bundleIDType]& 0x20) == 0)
          {
            if (([(PRSRankingItem *)self bundleIDType]& 0x40) != 0)
            {
              v61 = v13;
              v42 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x1CuLL);
              v43 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x1DuLL);
              v44 = v43;
              if (v42)
              {
                [v42 timeIntervalSinceReferenceDate];
                if ((time - v45) / 60.0 > 1440.0)
                {
                  v23 = v23 + 129600.0;
                }
              }

              else if (v43)
              {
                [v43 timeIntervalSinceReferenceDate];
                v48 = (v47 - time) / 60.0;
                v49 = v23 >= v48 ? v48 : v23;
                if (v48 < 1440.0 && v48 > 0.0)
                {
                  v23 = v49;
                }
              }

              v13 = v61;
              goto LABEL_105;
            }

            if (([(PRSRankingItem *)self bundleIDType]& 0x100000) == 0)
            {
              if (([(PRSRankingItem *)self bundleIDType]& 0x300460000000200) != 0)
              {
                v23 = fminf(v23, 259200.0);
              }

              else if (([(PRSRankingItem *)self bundleIDType]& 0x1080000000000) != 0)
              {
                v23 = 259200.0;
              }

              goto LABEL_105;
            }

            v67 = 0.0;
            SSCompactRankingAttrsGetFloat([(PRSRankingItem *)self attributes], 0x171uLL, &v67);
            v23 = dbl_1DA0D59D0[v67 > 0.0] + v23;
            if (v23 >= 1576800.0)
            {
              goto LABEL_105;
            }

            if (v23 <= 777600.0)
            {
              if (v23 <= 525600.0)
              {
                if (v23 <= 129600.0)
                {
                  v38 = 43200.0;
                  if (v23 <= 43200.0)
                  {
                    goto LABEL_105;
                  }
                }

                else
                {
                  v38 = 172800.0;
                }
              }

              else
              {
                v38 = 345600.0;
              }

              goto LABEL_104;
            }

            goto LABEL_94;
          }

          if (v23 > 10080.0)
          {
            v38 = 777600.0;
LABEL_104:
            v23 = v23 + v38;
            goto LABEL_105;
          }

          if (v23 > 1440.0)
          {
LABEL_94:
            v38 = 518400.0;
            goto LABEL_104;
          }

          if (v23 <= 0.0)
          {
            if (v23 < 0.0)
            {
              v23 = -v23;
            }

            goto LABEL_105;
          }
        }

        v38 = 43200.0;
        goto LABEL_104;
      }

      if (([(PRSRankingItem *)self bundleIDType]& 0x40) != 0)
      {
        attributes = [(PRSRankingItem *)self attributes];
        v35 = 29;
      }

      else
      {
        if (([(PRSRankingItem *)self bundleIDType]& 0x20) == 0)
        {
          if (([(PRSRankingItem *)self bundleIDType]& 0x10000000000) != 0 && ([(PRSRankingItem *)self lastUsedDate], v17 = objc_claimAutoreleasedReturnValue(), v17, v17) || ([(PRSRankingItem *)self bundleIDType]& 0x200000) != 0)
          {
            lastUsedDate = [(PRSRankingItem *)self lastUsedDate];
          }

          else if (([(PRSRankingItem *)self bundleIDType]& 0x200) != 0)
          {
            lastUsedDate = v8;
          }

          else
          {
            lastUsedDate = [(PRSRankingItem *)self interestingDate];
          }

          goto LABEL_81;
        }

        attributes = [(PRSRankingItem *)self attributes];
        v35 = 18;
      }

LABEL_80:
      lastUsedDate = SSCompactRankingAttrsGetValue(attributes, v35);
LABEL_81:
      v22 = lastUsedDate;
      goto LABEL_35;
    }
  }

  if (v16)
  {
    goto LABEL_45;
  }

LABEL_36:
  if (([(PRSRankingItem *)self bundleIDType]& 0x100) != 0)
  {
    v22 = 0;
    v23 = 129600.0;
    goto LABEL_105;
  }

  if (([(PRSRankingItem *)self bundleIDType]& 4) != 0)
  {
    v22 = 0;
    if (topicality > 0.96)
    {
      v23 = 259200.0;
      goto LABEL_105;
    }

    v36 = topicality < 0.9;
    v37 = &unk_1DA0D58A0;
LABEL_84:
    v23 = v37[v36];
    goto LABEL_105;
  }

  if (([(PRSRankingItem *)self bundleIDType]& 0x10) != 0)
  {
    v22 = 0;
    v36 = topicality > 0.6;
    v37 = &unk_1DA0D58A8;
    goto LABEL_84;
  }

  v23 = 259200.0;
  if (([(PRSRankingItem *)self bundleIDType]& 0x80) == 0 && ([(PRSRankingItem *)self bundleIDType]& 0x200) == 0 && ([(PRSRankingItem *)self bundleIDType]& 0x3816F0000000001) == 0)
  {
    if (([(PRSRankingItem *)self bundleIDType]& 0x100000000000) != 0)
    {
      v22 = 0;
      v23 = 302400.0;
      goto LABEL_105;
    }

    sectionBundleIdentifier = [(PRSRankingItem *)self sectionBundleIdentifier];
    v62 = [sectionBundleIdentifier hasPrefix:@"com.apple.parsec"];

    if ((v62 & 1) == 0)
    {
      if (([(PRSRankingItem *)self bundleIDType]& 0x200000) != 0)
      {
        v55 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x48uLL);
        v56 = v55;
        if (topicality > 0.6 && [v55 length] && (objc_msgSend(v56, "isEqualToString:", @"com.apple.Preferences") & 1) != 0)
        {
          v23 = 43200.0;
        }

        else
        {
          v23 = 129600.0;
        }
      }

      else
      {
        if (([(PRSRankingItem *)self bundleIDType]& 0x40) != 0)
        {
          v22 = 0;
          v23 = 518400.0;
          goto LABEL_105;
        }

        if (([(PRSRankingItem *)self bundleIDType]& 0x1800000) == 0)
        {
          v22 = 0;
          v23 = 777600.0;
          goto LABEL_105;
        }

        v52 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x24uLL);
        v53 = v52;
        if (v52)
        {
          [v52 timeIntervalSinceReferenceDate];
          v23 = (v54 - time) / 60.0 + 259200.0;
        }

        else
        {
          v23 = 777600.0;
        }
      }
    }
  }

  v22 = 0;
LABEL_105:

  return v23;
}

- (void)calculateFreshnessForSearchTool:(id)tool userSpecifiedStartTime:(double)time userSpecifiedEndTime:(double)endTime
{
  toolCopy = tool;
  [(PRSRankingItem *)self setStartDueDateToNowInSeconds:0];
  [(PRSRankingItem *)self setMostRecentTimeToQueryInMinutesForFreshness:-259200];
  [(PRSRankingItem *)self setCreationDate:0];
  v6 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x20uLL);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v6 = 0;
  }

  if (([(PRSRankingItem *)self bundleIDType]& 0x100000) != 0)
  {
    v21 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x16DuLL);
    if (v21)
    {
      lastObject = v21;
      goto LABEL_28;
    }

    v28 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x18AuLL);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v28))
    {
      lastObject = [v28 lastObject];

      if (lastObject)
      {
        goto LABEL_28;
      }
    }

    else
    {
    }

    v29 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x189uLL);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && objc_msgSend_count(v29))
    {
      lastObject = [v29 lastObject];
    }

    else
    {
      lastObject = 0;
    }

LABEL_28:
    [(PRSRankingItem *)self setCreationDate:lastObject];
    if (lastObject)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (([(PRSRankingItem *)self bundleIDType]& 0x40) != 0)
  {
    lastObject = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x1CuLL);
    v22 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x1DuLL);
    v23 = v22;
    if (!lastObject)
    {
      lastObject = v22;
    }

    [(PRSRankingItem *)self setCreationDate:lastObject];
    if (v23)
    {
      [v23 timeIntervalSinceReferenceDate];
      v25 = v24;
      [toolCopy currentTime];
      v27 = (v25 - v26);
    }

    else
    {
      v27 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(PRSRankingItem *)self setStartDueDateToNowInSeconds:v27];

    if (!lastObject)
    {
      goto LABEL_35;
    }
  }

  else if (([(PRSRankingItem *)self bundleIDType]& 0x20000000000020) != 0)
  {
    v7 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x11uLL);
    v8 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x12uLL);
    v9 = v7;
    if (v9)
    {
      [(PRSRankingItem *)self setCreationDate:v9];
      if (!v8 || ([v8 timeIntervalSinceReferenceDate], v11 = v10, objc_msgSend(toolCopy, "currentTime"), v11 < v12) || (objc_msgSend(v9, "timeIntervalSinceReferenceDate"), v14 = v13, objc_msgSend(toolCopy, "currentTime"), v14 > v15) || objc_msgSend(toolCopy, "earliestTokenFromQU") && objc_msgSend(toolCopy, "isSingle") && objc_msgSend(toolCopy, "orderByTimeAscending"))
      {
        [v9 timeIntervalSinceReferenceDate];
        v17 = v16;
        [toolCopy currentTime];
        v19 = (v17 - v18);
      }

      else
      {
        v19 = 0;
      }

      lastObject = v9;
    }

    else
    {
      lastObject = v8;
      [(PRSRankingItem *)self setCreationDate:lastObject];
      v19 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(PRSRankingItem *)self setStartDueDateToNowInSeconds:v19];

    if (!lastObject)
    {
      goto LABEL_35;
    }
  }

  else if (([(PRSRankingItem *)self bundleIDType]& 0x1000000000000806) == 0 || (SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 9uLL), (lastObject = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_35:
    lastObject = v6;
  }

LABEL_36:
  creationDate = [(PRSRankingItem *)self creationDate];

  if (!creationDate)
  {
    [(PRSRankingItem *)self setCreationDate:v6];
  }

  v31 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x19uLL);
  v32 = v31;
  if (!lastObject)
  {
    lastObject = v31;
  }

  creationDate2 = [(PRSRankingItem *)self creationDate];

  if (!creationDate2)
  {
    [(PRSRankingItem *)self setCreationDate:v32];
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    lastObject = 0;
  }

  creationDate3 = [(PRSRankingItem *)self creationDate];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    [(PRSRankingItem *)self setCreationDate:0];
  }

  if (([(PRSRankingItem *)self bundleIDType]& 0x100008) != 0)
  {
    if (lastObject)
    {
      [lastObject timeIntervalSinceReferenceDate];
      v37 = v36;
      [toolCopy currentTime];
      v39 = (v37 - v38);
    }

    else
    {
      v39 = 0x7FFFFFFFFFFFFFFFLL;
    }

    [(PRSRankingItem *)self setStartDueDateToNowInSeconds:v39];
    v40 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x11uLL);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (!v40)
      {
        goto LABEL_57;
      }

      if (lastObject)
      {
        [v40 timeIntervalSinceReferenceDate];
        v42 = v41;
        [toolCopy currentTime];
        v44 = vabdd_f64(v42, v43);
        [lastObject timeIntervalSinceReferenceDate];
        v46 = v45;
        [toolCopy currentTime];
        if (v44 >= vabdd_f64(v46, v47))
        {
          goto LABEL_57;
        }
      }

      v48 = v40;
      v40 = lastObject;
      lastObject = v48;
    }

    else
    {
      v48 = 0;
    }

    v40 = v48;
LABEL_57:
  }

  if (lastObject)
  {
    [lastObject timeIntervalSinceReferenceDate];
    v50 = v49;
    [toolCopy currentTime];
    [(PRSRankingItem *)self setMostRecentTimeToQueryInMinutesForFreshness:((v50 - v51) / 60.0)];
  }

  [(PRSRankingItem *)self setMostRecentTimeToQueryInDaysForFreshness:[(PRSRankingItem *)self mostRecentTimeToQueryInMinutesForFreshness]/ 1440];
  if (!v6 || ([v6 timeIntervalSinceReferenceDate], v53 = v52, objc_msgSend(toolCopy, "currentTime"), v55 = v54, v56 = 0.0, v53 <= v55))
  {
    v56 = exp(-fabsf([(PRSRankingItem *)self mostRecentTimeToQueryInMinutesForFreshness]* 0.0000053483));
  }

  [(PRSRankingItem *)self setFreshnessScore:v56];
}

- (float)inSpotlightEngagementScoreWithEvaluator:(id)evaluator currentTime:(double)time queriesInSpotlight:(id)spotlight datesInSpotlight:(id)inSpotlight queriesInSpotlightNonUnique:(id)unique datesInSpotlightNonUnique:(id)nonUnique launchString:(id)string lastUsedDate:(id)self0 topicalityScore:(float)self1
{
  evaluatorCopy = evaluator;
  spotlightCopy = spotlight;
  inSpotlightCopy = inSpotlight;
  uniqueCopy = unique;
  nonUniqueCopy = nonUnique;
  stringCopy = string;
  dateCopy = date;
  v78 = inSpotlightCopy;
  v24 = objc_msgSend_count(inSpotlightCopy);
  v25 = objc_msgSend_count(spotlightCopy);
  v26 = objc_msgSend_count(nonUniqueCopy);
  v76 = uniqueCopy;
  v27 = objc_msgSend_count(uniqueCopy);
  if (v24 && v25 && v24 == v25 && v26 == v27)
  {
    v73 = dateCopy;
    v28 = 0;
    scoreCopy2 = 0.0;
    while (1)
    {
      v30 = [spotlightCopy objectAtIndexedSubscript:{v28, v73}];
      [PRSRankingItem matchScoreLaunchString:v30 withEvaluator:evaluatorCopy];
      scoreCopy = v31;

      if (scoreCopy == 1.0)
      {
        [(PRSRankingItem *)self setExactMatchedLaunchString:1];
      }

      v33 = scoreCopy;
      if (scoreCopy < 0.01)
      {
        v34 = objc_alloc(MEMORY[0x1E6964DF0]);
        v35 = [spotlightCopy objectAtIndexedSubscript:v28];
        language = [evaluatorCopy language];
        v37 = [v34 initWithQuery:v35 language:language fuzzyThreshold:0 options:0];

        queryString = [evaluatorCopy queryString];
        [PRSRankingItem matchScoreLaunchString:queryString withEvaluator:v37];
        v40 = v39;

        if (v40 > 0.9)
        {
          scoreCopy = v40;
        }
      }

      if (scoreCopy == 0.0)
      {
        goto LABEL_17;
      }

      v41 = [inSpotlightCopy objectAtIndexedSubscript:{v28, v33}];
      [v41 timeIntervalSinceReferenceDate];
      v43 = (time - v42) / 60.0;

      if (v43 > 0.0)
      {
        break;
      }

LABEL_19:
      if (v24 == ++v28)
      {
        array = [MEMORY[0x1E695DF70] array];
        if (v26)
        {
          v45 = 0;
          v46 = 0x1E695D000uLL;
          v74 = nonUniqueCopy;
          do
          {
            v47 = [nonUniqueCopy objectAtIndexedSubscript:v45];
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if (isKindOfClass)
            {
              v49 = [nonUniqueCopy objectAtIndexedSubscript:v45];
              [v49 timeIntervalSinceReferenceDate];
              v51 = (time - v50) / 60.0;

              if (v51 < 10080.0)
              {
                v52 = [v76 objectAtIndexedSubscript:v45];
                [PRSRankingItem matchScoreLaunchString:v52 withEvaluator:evaluatorCopy];
                v54 = v53;

                v55 = v54;
                if (v54 < 0.01)
                {
                  v56 = objc_alloc(MEMORY[0x1E6964DF0]);
                  v57 = [v76 objectAtIndexedSubscript:v45];
                  [evaluatorCopy language];
                  v58 = v26;
                  v59 = v46;
                  v61 = v60 = array;
                  v62 = [v56 initWithQuery:v57 language:v61 fuzzyThreshold:0 options:0];

                  queryString2 = [evaluatorCopy queryString];
                  [PRSRankingItem matchScoreLaunchString:queryString2 withEvaluator:v62];
                  v65 = v64;

                  array = v60;
                  v46 = v59;
                  v26 = v58;
                  nonUniqueCopy = v74;

                  v55 = v65;
                }

                if (v55 > 0.9)
                {
                  v66 = [nonUniqueCopy objectAtIndexedSubscript:v45];
                  [array addObject:v66];
                }
              }
            }

            ++v45;
          }

          while (v26 != v45);
        }

        if (objc_msgSend_count(array) > 1)
        {
          [array sortWithOptions:1 usingComparator:&__block_literal_global_106];
          if (objc_msgSend_count(array) >= 3)
          {
            [array removeObjectsInRange:{2, objc_msgSend_count(array) - 2}];
          }
        }

        v67 = [MEMORY[0x1E695DEC8] arrayWithArray:array];
        [(PRSRankingItem *)self setRecentSimilarIntentEngagementDates:v67];

        v68 = stringCopy;
        dateCopy = v73;
        goto LABEL_42;
      }
    }

    if (scoreCopy <= score)
    {
      scoreCopy = score;
    }

    scoreCopy = scoreCopy * timeDecay(&unk_1F55B75E0, v43);
LABEL_17:
    if (scoreCopy >= scoreCopy2)
    {
      scoreCopy2 = scoreCopy;
    }

    goto LABEL_19;
  }

  v68 = stringCopy;
  if ([stringCopy length])
  {
    [PRSRankingItem matchScoreLaunchString:stringCopy withEvaluator:evaluatorCopy];
    scoreCopy2 = v69;
    if (v69 == 1.0)
    {
      [(PRSRankingItem *)self setExactMatchedLaunchString:1];
    }

    if (scoreCopy2 <= score)
    {
      scoreCopy2 = score;
    }

    if (dateCopy)
    {
      [dateCopy timeIntervalSinceReferenceDate];
      v71 = (time - v70) / 60.0;
      if (v71 > 0.0)
      {
        scoreCopy2 = scoreCopy2 * timeDecay(&unk_1F55B75E0, v71);
      }
    }
  }

  else
  {
    scoreCopy2 = 0.0;
  }

LABEL_42:

  return scoreCopy2;
}

+ (float)inAppEngagementScoreWithEvaluator:(id)evaluator currentTime:(double)time queriesInApp:(id)app datesInApp:(id)inApp topicalityScore:(float)score
{
  evaluatorCopy = evaluator;
  appCopy = app;
  inAppCopy = inApp;
  v14 = objc_msgSend_count(inAppCopy);
  v15 = objc_msgSend_count(appCopy);
  v16 = 0.0;
  if (v14 && v15 && v14 == v15)
  {
    v17 = 0;
    while (1)
    {
      v18 = [appCopy objectAtIndexedSubscript:v17];
      [PRSRankingItem matchScoreLaunchString:v18 withEvaluator:evaluatorCopy];
      scoreCopy = v19;

      if (scoreCopy <= 0.0)
      {
        goto LABEL_10;
      }

      v21 = [inAppCopy objectAtIndexedSubscript:v17];
      [v21 timeIntervalSinceReferenceDate];
      v23 = (time - v22) / 60.0;

      if (v23 > 0.0)
      {
        break;
      }

LABEL_12:
      if (v14 == ++v17)
      {
        goto LABEL_13;
      }
    }

    if (scoreCopy <= score)
    {
      scoreCopy = score;
    }

    scoreCopy = scoreCopy * timeDecay(&unk_1F55B75E0, v23);
LABEL_10:
    if (scoreCopy >= v16)
    {
      v16 = scoreCopy;
    }

    goto LABEL_12;
  }

LABEL_13:

  return v16;
}

+ (float)outOfSpotlightEngagementScore:(double)score datesOutOfSpotlight:(id)spotlight topicalityScore:(float)topicalityScore alternativeOutOfSpotlightCount:(float)count
{
  spotlightCopy = spotlight;
  v10 = objc_msgSend_count(spotlightCopy);
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    if (topicalityScore >= 1.0)
    {
      topicalityScoreCopy = topicalityScore;
    }

    else
    {
      topicalityScoreCopy = 1.0;
    }

    v14 = 0.0;
    do
    {
      v15 = [spotlightCopy objectAtIndexedSubscript:v12];
      [v15 timeIntervalSinceReferenceDate];
      v17 = (score - v16) / 60.0;

      if (v17 > 0.0)
      {
        v18 = topicalityScoreCopy * timeDecay(&unk_1F55B75E0, v17);
        if (v18 >= v14)
        {
          v14 = v18;
        }
      }

      ++v12;
    }

    while (v11 != v12);
  }

  else
  {
    v19 = 1.0;
    if (count < 5.0)
    {
      v19 = 0.5;
    }

    if (count == 0.0)
    {
      v14 = 0.0;
    }

    else
    {
      v14 = v19;
    }
  }

  return v14;
}

- (float)engagementScoreWithEvaluator:(id)evaluator currentTime:(double)time launchString:(id)string topicalityScore:(float)score
{
  stringCopy = string;
  evaluatorCopy = evaluator;
  v12 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x6DuLL);
  v13 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x6EuLL);
  v34 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x70uLL);
  v33 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x71uLL);
  v14 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x73uLL);
  v15 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x74uLL);
  v16 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x75uLL);
  v17 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 9uLL);
  if ([stringCopy length] || objc_msgSend_count(v12) && objc_msgSend_count(v13) && (v32 = objc_msgSend_count(v12), v32 == objc_msgSend_count(v13)))
  {
    [(PRSRankingItem *)self setWasEngaged:1];
    [(PRSRankingItem *)self setWasEngagedInSpotlight:1];
  }

  *&v18 = score;
  [(PRSRankingItem *)self inSpotlightEngagementScoreWithEvaluator:evaluatorCopy currentTime:v13 queriesInSpotlight:v12 datesInSpotlight:v33 queriesInSpotlightNonUnique:v34 datesInSpotlightNonUnique:stringCopy launchString:time lastUsedDate:v18 topicalityScore:v17];
  v20 = v19;
  *&v21 = score;
  [PRSRankingItem inAppEngagementScoreWithEvaluator:evaluatorCopy currentTime:v15 queriesInApp:v14 datesInApp:time topicalityScore:v21];
  v23 = v22;

  if (SSEnableSpotlightPersonalizedRanking2024())
  {
    v35 = 0;
    bundleIDType = [(PRSRankingItem *)self bundleIDType];
    v26 = 0.0;
    if ((bundleIDType & 0x200000) != 0)
    {
      SSCompactRankingAttrsGetFloat([(PRSRankingItem *)self attributes], 0x76uLL, &v35);
      LODWORD(v26) = v35;
    }

    *&v25 = score;
    [PRSRankingItem outOfSpotlightEngagementScore:v16 datesOutOfSpotlight:time topicalityScore:v25 alternativeOutOfSpotlightCount:v26];
    v28 = 1.0;
    if (v20 > 0.0)
    {
      v28 = 0.5;
    }

    v29 = v20 + v23 * 0.2 + (v28 * v27);
  }

  else
  {
    v29 = v20 + v23 * 0.2;
  }

  v30 = fmin(v29, 1.0);

  return v30;
}

- (int64_t)itemSparseMatchStrengthTypeWithEvaluator:(id)evaluator
{
  v39 = *MEMORY[0x1E69E9840];
  evaluatorCopy = evaluator;
  language = [evaluatorCopy language];
  selfCopy = self;
  v5 = [(PRSRankingItem *)self getMatchInfoDictionaryWithKeyboardLanguage:language];

  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v5;
  v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v25 = *v34;
    do
    {
      v7 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v28 = v7;
        v8 = *(*(&v33 + 1) + 8 * v7);
        v9 = [obj objectForKeyedSubscript:v8];
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v30;
          do
          {
            for (i = 0; i != v11; ++i)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v29 + 1) + 8 * i);
              original = [v14 original];
              v16 = [dictionary objectForKey:original];

              if (v16)
              {
                [v16 addObject:v8];
              }

              else
              {
                v16 = [MEMORY[0x1E695DFA8] setWithObject:v8];
                original2 = [v14 original];
                [dictionary setObject:v16 forKey:original2];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
          }

          while (v11);
        }

        v7 = v28 + 1;
      }

      while (v28 + 1 != v26);
      v26 = [obj countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  if (([(PRSRankingItem *)selfCopy bundleIDType]& 0x80) != 0)
  {
    v20 = [dictionary copy];
    v18 = evaluatorCopy;
    v21 = [(PRSRankingItem *)selfCopy itemSparseMatchStrengthTypeForSafariWithEvaluator:evaluatorCopy attributeMatchesForToken:v20];
LABEL_33:
    v19 = v21;

    goto LABEL_34;
  }

  v18 = evaluatorCopy;
  if (([(PRSRankingItem *)selfCopy bundleIDType]& 2) != 0)
  {
    v20 = [dictionary copy];
    v21 = [(PRSRankingItem *)selfCopy itemSparseMatchStrengthTypeForNotesWithEvaluator:evaluatorCopy attributeMatchesForToken:v20];
    goto LABEL_33;
  }

  if (([(PRSRankingItem *)selfCopy bundleIDType]& 0x800) != 0)
  {
    v20 = [dictionary copy];
    v21 = [(PRSRankingItem *)selfCopy itemSparseMatchStrengthTypeForFilesWithEvaluator:evaluatorCopy attributeMatchesForToken:v20];
    goto LABEL_33;
  }

  if (([(PRSRankingItem *)selfCopy bundleIDType]& 0x20) != 0)
  {
    v20 = [dictionary copy];
    v21 = [(PRSRankingItem *)selfCopy itemSparseMatchStrengthTypeForCalendarWithEvaluator:evaluatorCopy attributeMatchesForToken:v20];
    goto LABEL_33;
  }

  if (([(PRSRankingItem *)selfCopy bundleIDType]& 0x40) != 0)
  {
    v20 = [dictionary copy];
    v21 = [(PRSRankingItem *)selfCopy itemSparseMatchStrengthTypeForRemindersWithEvaluator:evaluatorCopy attributeMatchesForToken:v20];
    goto LABEL_33;
  }

  if (([(PRSRankingItem *)selfCopy bundleIDType]& 0x100000) != 0)
  {
    v20 = [dictionary copy];
    v21 = [(PRSRankingItem *)selfCopy itemSparseMatchStrengthTypeForMailWithEvaluator:evaluatorCopy attributeMatchesForToken:v20];
    goto LABEL_33;
  }

  if (([(PRSRankingItem *)selfCopy bundleIDType]& 8) != 0)
  {
    v20 = [dictionary copy];
    v21 = [(PRSRankingItem *)selfCopy itemSparseMatchStrengthTypeForMessagesWithEvaluator:evaluatorCopy attributeMatchesForToken:v20];
    goto LABEL_33;
  }

  v19 = 3;
LABEL_34:

  return v19;
}

- (int64_t)itemSparseMatchStrengthTypeForMailWithEvaluator:(id)evaluator attributeMatchesForToken:(id)token
{
  v122 = *MEMORY[0x1E69E9840];
  evaluatorCopy = evaluator;
  tokenCopy = token;
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = [evaluatorCopy itemQPQUOutputTokenInfo];
  v6 = [obj countByEnumeratingWithState:&v116 objects:v121 count:16];
  v94 = evaluatorCopy;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v106 = 0;
    v107 = 0;
    v9 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0uLL;
    v111 = 0;
    v10 = *v117;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v117 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v116 + 1) + 8 * i);
        v13 = [v12 objectForKeyedSubscript:@"kQPQUOutputToken"];
        v14 = [v12 objectForKeyedSubscript:@"kQPQUOutputTokenArgScores"];
        v15 = [v12 objectForKeyedSubscript:@"kQPQUOutputTokenArgLabels"];
        v16 = [tokenCopy objectForKey:v13];
        HIDWORD(v111) += [v15 isEqualToString:@"ARG_MEDIA_TYPE"];
        if (v16)
        {
          v17 = [v15 isEqualToString:@"ARG_UNSPECIFIED"] ^ 1;
          v18 = [v16 containsObject:@"kMDItemSubject"];
          v8 += v18;
          if (v18)
          {
            v19 = v17;
          }

          else
          {
            v19 = 0;
          }

          LODWORD(v111) = v19 + v111;
          v20 = [v16 containsObject:@"kMDItemTextContent"];
          HIDWORD(v107) += v20;
          if (v20)
          {
            v21 = v17;
          }

          else
          {
            v21 = 0;
          }

          HIDWORD(v110) += v21;
          v22 = [v16 containsObject:@"kMDItemAuthors"];
          v9 += v22;
          if (v22)
          {
            v23 = v17;
          }

          else
          {
            v23 = 0;
          }

          DWORD2(v110) += v23;
          if ([v16 containsObject:@"kMDItemAuthorEmailAddresses"])
          {
            v24 = v17;
          }

          else
          {
            v24 = 0;
          }

          DWORD1(v110) += v24;
          v25 = [v16 containsObject:@"kMDItemRecipients"];
          HIDWORD(v106) += v25;
          if (v25)
          {
            v26 = v17;
          }

          else
          {
            v26 = 0;
          }

          LODWORD(v110) = v26 + v110;
          if ([v16 containsObject:@"kMDItemRecipientEmailAddresses"])
          {
            v27 = v17;
          }

          else
          {
            v27 = 0;
          }

          LODWORD(v108) = v27 + v108;
          if ([v16 containsObject:@"kMDItemEmailAddresses"])
          {
            v28 = v17;
          }

          else
          {
            v28 = 0;
          }

          HIDWORD(v108) += v28;
          v29 = [v16 containsObject:@"kMDItemAttachmentNames"];
          LODWORD(v106) = v106 + v29;
          if (v29)
          {
            v30 = v17;
          }

          else
          {
            v30 = 0;
          }

          LODWORD(v109) = v30 + v109;
          v31 = [v16 containsObject:@"kMDItemAttachmentTypes"];
          LODWORD(v107) = v107 + v31;
          if (v31)
          {
            v32 = v17;
          }

          else
          {
            v32 = 0;
          }

          HIDWORD(v109) += v32;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v116 objects:v121 count:16];
    }

    while (v7);
    LODWORD(v89) = v9 != 0;
    HIDWORD(v89) = v8 != 0;
    evaluatorCopy = v94;
  }

  else
  {
    v89 = 0;
    v106 = 0;
    v107 = 0;
    v108 = 0;
    v109 = 0;
    v110 = 0uLL;
    v111 = 0;
  }

  v33 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\S+" options:1 error:0];
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v34 = tokenCopy;
  v35 = [v34 countByEnumeratingWithState:&v112 objects:v120 count:16];
  if (v35)
  {
    v36 = v35;
    v100 = 0;
    v101 = 0;
    v105 = 0;
    obja = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    v37 = *v113;
    v92 = v34;
    v93 = v33;
    do
    {
      v38 = 0;
      v95 = v36;
      do
      {
        if (*v113 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v112 + 1) + 8 * v38);
        v40 = [v33 numberOfMatchesInString:v39 options:0 range:{0, objc_msgSend(v39, "length", v89)}];
        queryString = [evaluatorCopy queryString];
        v42 = [queryString localizedCaseInsensitiveContainsString:v39];

        if (v42)
        {
          v43 = v40 >= 2;
        }

        else
        {
          v43 = 0;
        }

        if (v43)
        {
          v44 = [v34 objectForKey:v39];
          v45 = [v44 containsObject:@"kMDItemSubject"];
          v46 = [v44 containsObject:@"kMDItemTextContent"];
          v47 = [v44 containsObject:@"kMDItemAuthors"];
          v48 = [v44 containsObject:@"kMDItemRecipients"];
          v49 = [v44 containsObject:@"kMDItemAttachmentNames"];
          v50 = [v44 containsObject:@"kMDItemAttachmentTypes"];
          v51 = v40 == 2;
          v52 = v105;
          v53 = v105 + v45;
          v54 = HIDWORD(v101);
          v55 = v101 + v46;
          v56 = HIDWORD(v99);
          v57 = v100;
          v58 = v100 + v47;
          v60 = HIDWORD(v98);
          v59 = v99;
          v61 = HIDWORD(v98) + v48;
          v63 = HIDWORD(v97);
          v62 = v98;
          v64 = HIDWORD(v97) + v49;
          v96 = HIDWORD(v99) + v50;
          v65 = HIDWORD(v101) + v45;
          v66 = obja;
          v67 = obja + v46;
          v68 = HIDWORD(v100);
          v69 = HIDWORD(v100) + v47;
          v70 = v99 + v48;
          v33 = v93;
          evaluatorCopy = v94;
          v71 = v98 + v49;
          v34 = v92;
          v72 = v97;
          v73 = v97 + v50;
          if (v51)
          {
            v54 = v65;
          }

          if (!v51)
          {
            v52 = v53;
          }

          v105 = v52;
          if (v51)
          {
            v66 = v67;
          }

          HIDWORD(v101) = v54;
          obja = v66;
          if (v51)
          {
            v74 = v101;
          }

          else
          {
            v74 = v55;
          }

          if (v51)
          {
            v68 = v69;
          }

          HIDWORD(v100) = v68;
          LODWORD(v101) = v74;
          if (v51)
          {
            v59 = v70;
          }

          else
          {
            v57 = v58;
          }

          if (!v51)
          {
            v60 = v61;
          }

          HIDWORD(v98) = v60;
          LODWORD(v99) = v59;
          if (v51)
          {
            v62 = v71;
          }

          if (!v51)
          {
            v63 = v64;
          }

          HIDWORD(v97) = v63;
          LODWORD(v98) = v62;
          if (v51)
          {
            v72 = v73;
          }

          LODWORD(v97) = v72;
          v36 = v95;
          if (!v51)
          {
            v56 = v96;
          }

          HIDWORD(v99) = v56;
          LODWORD(v100) = v57;
        }

        ++v38;
      }

      while (v36 != v38);
      v36 = [v34 countByEnumeratingWithState:&v112 objects:v120 count:16];
    }

    while (v36);
    v75 = (HIDWORD(v101) | v100 | HIDWORD(v100) | v101) != 0;
  }

  else
  {
    v75 = 0;
    v105 = 0;
    obja = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
  }

  if ([evaluatorCopy countQPUSpecialToken] != 1 || (v76 = 0, !v111) && !*(&v110 + 4))
  {
    v77 = v109 + HIDWORD(v109) + HIDWORD(v108) + v108 + v110 + DWORD1(v110) + DWORD2(v110) + HIDWORD(v110) + v111 + HIDWORD(v111);
    if ([evaluatorCopy countQPUSpecialToken])
    {
      v76 = 0;
      if (DWORD2(v110))
      {
        goto LABEL_105;
      }

      if (v111 > 1)
      {
        goto LABEL_105;
      }

      v78 = HIDWORD(v110);
      if (HIDWORD(v110) > 2)
      {
        goto LABEL_105;
      }

      v76 = 0;
      if (HIDWORD(v111) + v111 >= v77 || HIDWORD(v111) + v111 + HIDWORD(v110) >= v77 || HIDWORD(v111) + HIDWORD(v110) >= v77 || v105)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v78 = HIDWORD(v110);
      if (v105)
      {
LABEL_104:
        v76 = 0;
        goto LABEL_105;
      }
    }

    v76 = 0;
    v79 = obja > 1 || v75;
    if ((v79 & 1) == 0 && (v91 & v90 & 1) == 0)
    {
      if (((v91 | v90) & 1) != 0 && obja)
      {
        goto LABEL_104;
      }

      v80 = HIDWORD(v98) + v99 + v98 + HIDWORD(v97) + v97;
      if (((v91 | v90) & (v80 + HIDWORD(v99) != 0)) != 0)
      {
        goto LABEL_104;
      }

      v76 = 1;
      if (v78 <= 1 && obja != 1)
      {
        v82 = v91;
        if (HIDWORD(v107))
        {
          v83 = v91;
        }

        else
        {
          v83 = 0;
        }

        if (v83)
        {
          v76 = 1;
        }

        else
        {
          v84 = v106 + HIDWORD(v106);
          if (HIDWORD(v107))
          {
            v85 = v90;
          }

          else
          {
            v85 = 0;
          }

          v86 = HIDWORD(v107) > 1;
          if (v84 + v107)
          {
            v87 = v90;
          }

          else
          {
            v82 = 0;
            v87 = 0;
          }

          if (!(v84 + v107))
          {
            v86 = 0;
          }

          v76 = 1;
          if ((v82 & 1) == 0 && (v85 & 1) == 0 && (v87 & 1) == 0 && v80 == -HIDWORD(v99) && !v86)
          {
            if (v111 || (v88 = v109 + HIDWORD(v109) + v110, v78 == 1) && v88 || v88 && v88 >= v77 || HIDWORD(v107) || v84 != -v107)
            {
              v76 = 2;
            }

            else
            {
              v76 = 3;
            }
          }
        }
      }
    }
  }

LABEL_105:

  return v76;
}

- (int64_t)itemSparseMatchStrengthTypeForMessagesAndCalendarWithEvaluator:(id)evaluator attributeMatchesForToken:(id)token
{
  v74 = *MEMORY[0x1E69E9840];
  evaluatorCopy = evaluator;
  tokenCopy = token;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  obj = [evaluatorCopy itemQPQUOutputTokenInfo];
  v6 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
  v50 = evaluatorCopy;
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v60 = 0;
    v61 = 0;
    v55 = 0;
    v62 = 0;
    v9 = 0;
    v58 = *v69;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v69 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v68 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"kQPQUOutputToken"];
        v13 = [v11 objectForKeyedSubscript:@"kQPQUOutputTokenArgScores"];
        v14 = [v11 objectForKeyedSubscript:@"kQPQUOutputTokenArgLabels"];
        v15 = [tokenCopy objectForKey:v12];
        v16 = [v14 isEqualToString:@"ARG_MEDIA_TYPE"];
        if (v15)
        {
          v17 = [v14 isEqualToString:@"ARG_UNSPECIFIED"] ^ 1;
          if (((-[PRSRankingItem bundleIDType](self, "bundleIDType") & 8) != 0 || (-[PRSRankingItem bundleIDType](self, "bundleIDType") & 0x40) != 0) && ([v15 containsObject:@"kMDItemTextContent"] & 1) != 0 || (-[PRSRankingItem bundleIDType](self, "bundleIDType") & 0x20) != 0 && objc_msgSend(v15, "containsObject:", @"kMDItemTitle"))
          {
            HIDWORD(v55) += v17;
            LODWORD(v55) = v55 + 1;
          }

          v18 = [v15 containsObject:@"kMDItemAuthors"];
          v8 += v18;
          if (v18)
          {
            v19 = v17;
          }

          else
          {
            v19 = 0;
          }

          HIDWORD(v62) += v19;
          if ([v15 containsObject:@"kMDItemAuthorEmailAddresses"])
          {
            v20 = v17;
          }

          else
          {
            v20 = 0;
          }

          LODWORD(v62) = v20 + v62;
          v21 = [v15 containsObject:@"kMDItemRecipients"];
          HIDWORD(v60) += v21;
          if (v21)
          {
            v22 = v17;
          }

          else
          {
            v22 = 0;
          }

          LODWORD(v61) = v22 + v61;
          v23 = [v15 containsObject:@"kMDItemRecipientEmailAddresses"];
          LODWORD(v60) = v60 + v23;
          if (v23)
          {
            v24 = v17;
          }

          else
          {
            v24 = 0;
          }

          HIDWORD(v61) += v24;
        }

        v9 += v16;
      }

      v7 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    }

    while (v7);
    v49 = v8 != 0;
    evaluatorCopy = v50;
  }

  else
  {
    v49 = 0;
    v60 = 0;
    v61 = 0;
    v55 = 0;
    v62 = 0;
    v9 = 0;
  }

  v59 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\S+" options:1 error:0];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v25 = tokenCopy;
  v26 = [v25 countByEnumeratingWithState:&v64 objects:v72 count:16];
  if (v26)
  {
    v27 = v26;
    v51 = 0;
    v52 = 0;
    v57 = 0;
    obja = 0;
    v28 = *v65;
    while (1)
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v65 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v64 + 1) + 8 * j);
        v31 = [v59 numberOfMatchesInString:v30 options:0 range:{0, objc_msgSend(v30, "length")}];
        queryString = [evaluatorCopy queryString];
        v33 = [queryString localizedCaseInsensitiveContainsString:v30];

        if (v33)
        {
          v34 = v31 >= 2;
        }

        else
        {
          v34 = 0;
        }

        if (v34)
        {
          v35 = [v25 objectForKey:v30];
          bundleIDType = [(PRSRankingItem *)self bundleIDType];
          if (v31 == 2)
          {
            if ((bundleIDType & 0x20) != 0 || ([(PRSRankingItem *)self bundleIDType]& 0x40) != 0)
            {
              v38 = @"kMDItemTitle";
            }

            else
            {
              bundleIDType2 = [(PRSRankingItem *)self bundleIDType];
              v38 = @"kMDItemTextContent";
              if ((bundleIDType2 & 8) == 0)
              {
LABEL_51:
                v57 += [v35 containsObject:@"kMDItemAuthors"];
                LODWORD(v52) = v52 + [v35 containsObject:@"kMDItemRecipients"];
LABEL_55:

                continue;
              }
            }

            LODWORD(v51) = v51 + [v35 containsObject:v38];
            goto LABEL_51;
          }

          if ((bundleIDType & 0x20) != 0 || ([(PRSRankingItem *)self bundleIDType]& 0x40) != 0)
          {
            v40 = @"kMDItemTitle";
          }

          else
          {
            bundleIDType3 = [(PRSRankingItem *)self bundleIDType];
            v40 = @"kMDItemTextContent";
            if ((bundleIDType3 & 8) == 0)
            {
              goto LABEL_54;
            }
          }

          HIDWORD(v51) += [v35 containsObject:v40];
LABEL_54:
          obja += [v35 containsObject:@"kMDItemAuthors"];
          HIDWORD(v52) += [v35 containsObject:@"kMDItemRecipients"];
          goto LABEL_55;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v64 objects:v72 count:16];
      if (!v27)
      {
        v41 = (v51 | obja | v57) != 0;
        v42 = HIDWORD(v51) != 0;
        goto LABEL_60;
      }
    }
  }

  v42 = 0;
  v52 = 0;
  v41 = 0;
LABEL_60:

  if ([v50 countQPUSpecialToken] == 1)
  {
    v43 = 0;
    if (HIDWORD(v55) || v62)
    {
      goto LABEL_80;
    }

    if (![v50 countQPUSpecialToken])
    {
LABEL_75:
      if (!v42 && !v41)
      {
        goto LABEL_76;
      }

LABEL_79:
      v43 = 0;
      goto LABEL_80;
    }
  }

  else
  {
    if (![v50 countQPUSpecialToken])
    {
      goto LABEL_75;
    }

    if (HIDWORD(v62))
    {
      goto LABEL_79;
    }
  }

  if (([(PRSRankingItem *)self bundleIDType]& 0x20) != 0 && HIDWORD(v55) > 1 || ([(PRSRankingItem *)self bundleIDType]& 8) != 0 && HIDWORD(v55) > 2)
  {
    goto LABEL_79;
  }

  v43 = 0;
  v44 = v9 + v62 + HIDWORD(v61) + v61 + HIDWORD(v62) + HIDWORD(v55);
  if (v9 + HIDWORD(v55) >= v44 || v9 + v62 >= v44)
  {
    goto LABEL_80;
  }

  if (v9 + HIDWORD(v55) + v62 >= v44 || v42 || v41)
  {
    goto LABEL_79;
  }

LABEL_76:
  if (v55 != 0 && v49)
  {
    goto LABEL_79;
  }

  v45 = -HIDWORD(v52);
  if ((v55 != 0 || v49) && v52 != v45)
  {
    goto LABEL_79;
  }

  if (([(PRSRankingItem *)self bundleIDType]& 0x20) != 0 && HIDWORD(v55))
  {
    goto LABEL_86;
  }

  v47 = (HIDWORD(v55) > 1) & ([(PRSRankingItem *)self bundleIDType]>> 3);
  if (v55 > 1)
  {
    v47 = 1;
  }

  if ((v47 | v49))
  {
LABEL_86:
    v43 = 1;
  }

  else
  {
    if (HIDWORD(v60) + v60)
    {
      v48 = v55 == 0;
    }

    else
    {
      v48 = 1;
    }

    v43 = 1;
    if (v48 && v52 == v45)
    {
      if (((HIDWORD(v55) != 0) & (-[PRSRankingItem bundleIDType](self, "bundleIDType") >> 3)) != 0 || v61 != -HIDWORD(v61) || ([v50 countQPUSpecialToken], v55) || HIDWORD(v60) != -v60)
      {
        v43 = 2;
      }

      else
      {
        v43 = 3;
      }
    }
  }

LABEL_80:

  return v43;
}

- (int64_t)itemSparseMatchStrengthTypeForNotesAndFilesWithEvaluator:(id)evaluator attributeMatchesForToken:(id)token
{
  v91 = *MEMORY[0x1E69E9840];
  evaluatorCopy = evaluator;
  tokenCopy = token;
  v62 = evaluatorCopy;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  obj = [evaluatorCopy itemQPQUOutputTokenInfo];
  v63 = [obj countByEnumeratingWithState:&v85 objects:v90 count:16];
  if (v63)
  {
    v65 = 0;
    v66 = 0;
    v6 = 0;
    v7 = 0;
    v75 = 0;
    v79 = 0;
    v80 = 0;
    v8 = 0;
    v9 = 0;
    v58 = *v86;
    do
    {
      for (i = 0; i != v63; ++i)
      {
        if (*v86 != v58)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v85 + 1) + 8 * i);
        v12 = [v11 objectForKeyedSubscript:@"kQPQUOutputToken"];
        v13 = [v11 objectForKeyedSubscript:@"kQPQUOutputTokenArgScores"];
        v14 = [v11 objectForKeyedSubscript:@"kQPQUOutputTokenArgLabels"];
        v15 = [tokenCopy objectForKey:v12];
        v16 = [v14 isEqualToString:@"ARG_MEDIA_TYPE"];
        if (v15)
        {
          v68 = v16;
          v70 = v13;
          v72 = v6;
          v74 = v7;
          v77 = v9;
          v17 = v8;
          v18 = [v14 isEqualToString:@"ARG_UNSPECIFIED"] ^ 1;
          v19 = [v15 containsObject:@"kMDItemTextContent"];
          if (v19)
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }

          v21 = [v15 containsObject:@"kMDItemTitle"];
          if (v21)
          {
            v22 = v18;
          }

          else
          {
            v22 = 0;
          }

          if (([v15 containsObject:@"kMDItemDisplayName"] & 1) != 0 || (objc_msgSend(v15, "containsObject:", @"kMDItemFileName") & 1) != 0 || (objc_msgSend(v15, "containsObject:", @"kMDItemAlternateNames") & 1) != 0 || objc_msgSend(v15, "containsObject:", @"FPFilename"))
          {
            v66 += v18;
            ++v65;
          }

          HIDWORD(v75) += v19;
          LODWORD(v80) = v20 + v80;
          LODWORD(v75) = v75 + v21;
          v8 = v22 + v17;
          v23 = [v15 containsObject:@"kMDItemAuthors"];
          v6 = v72 + v23;
          if (v23)
          {
            v24 = v18;
          }

          else
          {
            v24 = 0;
          }

          HIDWORD(v80) += v24;
          v25 = [v15 containsObject:@"kMDItemLastEditorName"];
          v7 = v74 + v25;
          if (v25)
          {
            v26 = v18;
          }

          else
          {
            v26 = 0;
          }

          v9 = v77;
          v79 += v26;
          v13 = v70;
          v16 = v68;
        }

        v9 += v16;
      }

      v63 = [obj countByEnumeratingWithState:&v85 objects:v90 count:16];
    }

    while (v63);
    LODWORD(v51) = HIDWORD(v75) > 1;
    HIDWORD(v51) = v6 != 0;
    v27 = v66;
  }

  else
  {
    v65 = 0;
    v51 = 0;
    v7 = 0;
    LODWORD(v75) = 0;
    v79 = 0;
    v80 = 0;
    v27 = 0;
    v8 = 0;
    v9 = 0;
  }

  v28 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"\\S+" options:1 error:0];
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v84 = 0u;
  v29 = tokenCopy;
  v30 = [v29 countByEnumeratingWithState:&v81 objects:v89 count:16];
  if (v30)
  {
    v76 = 0;
    v78 = v9;
    v54 = v8;
    v55 = 0;
    v67 = v27;
    v69 = 0;
    v73 = 0;
    v61 = 0;
    v71 = 0;
    v59 = 0;
    obja = 0;
    v64 = 0;
    v31 = *v82;
    do
    {
      v32 = 0;
      do
      {
        if (*v82 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v81 + 1) + 8 * v32);
        v34 = [v28 numberOfMatchesInString:v33 options:0 range:{0, objc_msgSend(v33, "length", v51)}];
        queryString = [v62 queryString];
        v36 = [queryString localizedCaseInsensitiveContainsString:v33];

        if (v36)
        {
          v37 = v34 >= 2;
        }

        else
        {
          v37 = 0;
        }

        if (v37)
        {
          v38 = [v29 objectForKey:v33];
          v39 = [v38 containsObject:@"kMDItemTextContent"];
          v40 = [v38 containsObject:@"kMDItemTitle"];
          v41 = [v38 containsObject:@"kMDItemDisplayName"];
          if (v34 == 2)
          {
            if (v41 & 1) != 0 || ([v38 containsObject:@"kMDItemFileName"] & 1) != 0 || (objc_msgSend(v38, "containsObject:", @"kMDItemAlternateNames"))
            {
              v42 = 1;
            }

            else
            {
              v42 = [v38 containsObject:@"FPFilename"];
            }

            v55 += v39;
            obja += v40;
            HIDWORD(v73) += v42;
            LODWORD(v73) = v73 + [v38 containsObject:@"kMDItemAuthors"];
            v71 += [v38 containsObject:@"kMDItemLastEditorName"];
          }

          else
          {
            if (v41 & 1) != 0 || ([v38 containsObject:@"kMDItemFileName"] & 1) != 0 || (objc_msgSend(v38, "containsObject:", @"kMDItemAlternateNames"))
            {
              v43 = 1;
            }

            else
            {
              v43 = [v38 containsObject:@"FPFilename"];
            }

            v64 += v39;
            v76 += v40;
            v69 += v43;
            v61 += [v38 containsObject:@"kMDItemAuthors"];
            v59 += [v38 containsObject:@"kMDItemLastEditorName"];
          }
        }

        ++v32;
      }

      while (v30 != v32);
      v44 = [v29 countByEnumeratingWithState:&v81 objects:v89 count:16];
      v30 = v44;
    }

    while (v44);
    v27 = v67;
    v30 = (obja | v69 | HIDWORD(v73) | v61 | v73 | v59 | v71 | v64) != 0;
    v8 = v54;
    v45 = v76;
    v9 = v78;
  }

  else
  {
    v45 = 0;
    v55 = 0;
  }

  if ([v62 countQPUSpecialToken] != 1 || (v46 = 0, !v8) && !v27 && !HIDWORD(v80))
  {
    if ([v62 countQPUSpecialToken])
    {
      v46 = 0;
      v47 = v9 + HIDWORD(v80) + v79 + v27 + v8 + v80;
      if (v9 + v8 >= v47)
      {
        goto LABEL_80;
      }

      if (v9 + v27 >= v47)
      {
        goto LABEL_80;
      }

      v46 = 0;
      if (v9 + HIDWORD(v80) >= v47 || v8 > 1 || v27 > 1 || v80 > 2 || v45)
      {
        goto LABEL_80;
      }
    }

    else if (v45)
    {
LABEL_79:
      v46 = 0;
      goto LABEL_80;
    }

    if (v55 > 1)
    {
      v48 = 1;
    }

    else
    {
      v48 = v30;
    }

    if (v48)
    {
      goto LABEL_79;
    }

    v49 = v75 | v65;
    if ((((v75 | v65) != 0) & v53) != 0 || v49 && (v55 != 0) | v52 & 1)
    {
      goto LABEL_79;
    }

    v46 = 1;
    if (!(((v8 | v27 | HIDWORD(v80) | v79 | v49 | v80) != 0) | v53 & 1) && v7 <= 1 && v80 <= 1)
    {
      if (v7)
      {
        v46 = 2;
      }

      else
      {
        v46 = 3;
      }
    }
  }

LABEL_80:

  return v46;
}

- (float)computeCalibratedSparseScore
{
  [(PRSRankingItem *)self pommesL1Score];
  v4 = v3;
  bundleIDType = [(PRSRankingItem *)self bundleIDType];
  itemSparseMatchStrengthType = [(PRSRankingItem *)self itemSparseMatchStrengthType];
  if (v4 <= 0.00000011921)
  {
    return 0.0;
  }

  switch(itemSparseMatchStrengthType)
  {
    case 0:
      v10 = 1.5;
      v7 = 1.0;
      v8 = 0.8;
      if ((bundleIDType & 0x100000) != 0)
      {
        v11 = 0.4;
      }

      else
      {
        v11 = 0.5;
        if ((bundleIDType & 0x862) == 0)
        {
          if ((bundleIDType & 8) != 0)
          {
            v11 = 0.5;
          }

          else
          {
            v11 = 0.0;
          }

          v10 = 1.5;
          v7 = 1.0;
          if ((bundleIDType & 8) == 0)
          {
            v10 = 1.0;
          }
        }
      }

      return v8 + (sqrtf((fminf(fmaxf(v4, v11), v10) - v11) / ((v10 - v11) + 0.00000011921)) * (v7 - v8));
    case 1:
      v8 = 0.5;
      v7 = 0.78;
      if ((bundleIDType & 0x100000) != 0)
      {
        goto LABEL_26;
      }

      break;
    case 2:
      v7 = 0.48;
      v8 = 0.1;
      if ((bundleIDType & 0x100000) != 0)
      {
LABEL_26:
        if (itemSparseMatchStrengthType != 1)
        {
          if (itemSparseMatchStrengthType == 2)
          {
            v10 = 0.5;
            v11 = 0.2;
            return v8 + (sqrtf((fminf(fmaxf(v4, v11), v10) - v11) / ((v10 - v11) + 0.00000011921)) * (v7 - v8));
          }

LABEL_36:
          v10 = 1.0;
          v11 = 0.0;
          return v8 + (sqrtf((fminf(fmaxf(v4, v11), v10) - v11) / ((v10 - v11) + 0.00000011921)) * (v7 - v8));
        }

        goto LABEL_37;
      }

      break;
    default:
      v7 = 1.0;
      v8 = 0.0;
      if ((bundleIDType & 0x100000) != 0)
      {
        goto LABEL_26;
      }

      break;
  }

  if ((bundleIDType & 0x20) != 0)
  {
    if (itemSparseMatchStrengthType != 1)
    {
      if (itemSparseMatchStrengthType != 2)
      {
        goto LABEL_36;
      }

      v10 = 0.6;
LABEL_35:
      v11 = 0.1;
      return v8 + (sqrtf((fminf(fmaxf(v4, v11), v10) - v11) / ((v10 - v11) + 0.00000011921)) * (v7 - v8));
    }

    goto LABEL_39;
  }

  if ((bundleIDType & 2) != 0 || (bundleIDType & 0x40) != 0 || (bundleIDType & 0x800) != 0)
  {
    if (itemSparseMatchStrengthType != 1)
    {
      if (itemSparseMatchStrengthType != 2)
      {
        goto LABEL_36;
      }

LABEL_34:
      v10 = 0.5;
      goto LABEL_35;
    }

LABEL_39:
    v10 = 1.2;
    goto LABEL_40;
  }

  v10 = 1.0;
  v11 = 0.0;
  if ((bundleIDType & 8) != 0)
  {
    if (itemSparseMatchStrengthType == 1)
    {
LABEL_37:
      v10 = 0.75;
LABEL_40:
      v11 = 0.3;
      return v8 + (sqrtf((fminf(fmaxf(v4, v11), v10) - v11) / ((v10 - v11) + 0.00000011921)) * (v7 - v8));
    }

    if (itemSparseMatchStrengthType != 2)
    {
      return v8 + (sqrtf((fminf(fmaxf(v4, v11), v10) - v11) / ((v10 - v11) + 0.00000011921)) * (v7 - v8));
    }

    goto LABEL_34;
  }

  return v8 + (sqrtf((fminf(fmaxf(v4, v11), v10) - v11) / ((v10 - v11) + 0.00000011921)) * (v7 - v8));
}

- (float)topicalityScoreWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client quParsedPersonEvaluator:(id)personEvaluator quParsedArgSearchTermsEvaluator:(id)termsEvaluator
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  parsedEvaluatorCopy = parsedEvaluator;
  personEvaluatorCopy = personEvaluator;
  termsEvaluatorCopy = termsEvaluator;
  v16 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x110uLL);
  v17 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x111uLL);
  v18 = [v16 length] && objc_msgSend(v17, "length");
  [(PRSRankingItem *)self setIsAppEntity:v18];
  if (([(PRSRankingItem *)self bundleIDType]& 0x80) != 0)
  {
    v19 = [(PRSRankingItem *)self matchScoreForSafariWithEvaluator:evaluatorCopy quParsedEvaluator:parsedEvaluatorCopy isSearchToolClient:clientCopy];
  }

  else if (([(PRSRankingItem *)self bundleIDType]& 0x100) != 0)
  {
    v19 = [(PRSRankingItem *)self matchScoreForApplicationsWithEvaluator:evaluatorCopy];
  }

  else if (([(PRSRankingItem *)self bundleIDType]& 4) != 0)
  {
    v19 = [(PRSRankingItem *)self matchScoreForContactsWithEvaluator:evaluatorCopy quParsedEvaluator:personEvaluatorCopy];
  }

  else if (([(PRSRankingItem *)self bundleIDType]& 0x10) != 0)
  {
    v19 = [(PRSRankingItem *)self matchScoreForPreferencesWithEvaluator:evaluatorCopy];
  }

  else
  {
    if (([(PRSRankingItem *)self bundleIDType]& 2) == 0)
    {
      if (([(PRSRankingItem *)self bundleIDType]& 0x800) != 0)
      {
        if (clientCopy)
        {
          v21 = termsEvaluatorCopy;
        }

        else
        {
          v21 = parsedEvaluatorCopy;
        }

        v19 = [(PRSRankingItem *)self matchScoreForFilesWithEvaluator:evaluatorCopy quParsedEvaluator:v21 isSearchToolClient:clientCopy];
        goto LABEL_32;
      }

      if (([(PRSRankingItem *)self bundleIDType]& 0x20) != 0)
      {
        v19 = [(PRSRankingItem *)self matchScoreForCalendarWithEvaluator:evaluatorCopy quParsedEvaluator:parsedEvaluatorCopy isSearchToolClient:clientCopy];
        goto LABEL_32;
      }

      if (([(PRSRankingItem *)self bundleIDType]& 0x40) == 0)
      {
        if (([(PRSRankingItem *)self bundleIDType]& 0x100000) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForMailWithEvaluator:evaluatorCopy isSearchToolClient:clientCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 8) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForMessagesWithEvaluator:evaluatorCopy isSearchToolClient:clientCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 0x200000) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForShortcutsWithEvaluator:evaluatorCopy isSearchToolClient:clientCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 0x800000000000) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForDictionaryWithEvaluator:evaluatorCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 0x2000000000000) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForBooksWithEvaluator:evaluatorCopy quParsedEvaluator:parsedEvaluatorCopy isSearchToolClient:clientCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 0x4000000000000) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForTipsWithEvaluator:evaluatorCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 0x8000000000000) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForHelpWithEvaluator:evaluatorCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 0x40000000000200) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForMusicWithEvaluator:evaluatorCopy quParsedEvaluator:parsedEvaluatorCopy isSearchToolClient:clientCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 0x1800000) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForPeopleItemsWithEvaluator:evaluatorCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 0x200000000) != 0)
        {
          v19 = [(PRSRankingItem *)self matchScoreForWalletWithEvaluator:evaluatorCopy quParsedEvaluator:parsedEvaluatorCopy isSearchToolClient:clientCopy];
        }

        else if (([(PRSRankingItem *)self bundleIDType]& 0x1C00000000000000) != 0 || [(PRSRankingItem *)self isAppEntity])
        {
          v19 = [(PRSRankingItem *)self matchScoreForAppEntityWithEvaluator:evaluatorCopy quParsedEvaluator:parsedEvaluatorCopy isSearchToolClient:clientCopy];
        }

        else
        {
          v19 = [(PRSRankingItem *)self matchScoreGeneric:evaluatorCopy quParsedEvaluator:parsedEvaluatorCopy isSearchToolClient:clientCopy];
        }

        goto LABEL_32;
      }
    }

    v19 = [(PRSRankingItem *)self matchScoreForNotesWithEvaluator:evaluatorCopy isSearchToolClient:clientCopy];
  }

LABEL_32:
  v22 = v20;
  if (SSEnableSpotlightFullPageRanking(v19) && v22 > 0.05)
  {
    [(PRSRankingItem *)self setShouldHideUnderShowMore:0];
  }

  return v22;
}

+ (id)tokenizeURLString:(id)string removeTLD:(BOOL)d hostTokenCount:(unint64_t *)count hostLength:(unint64_t *)length pathLength:(unint64_t *)pathLength queryLength:(unint64_t *)queryLength fragmentLength:(unint64_t *)fragmentLength
{
  dCopy = d;
  stringCopy = string;
  if (tokenizeURLString_removeTLD_hostTokenCount_hostLength_pathLength_queryLength_fragmentLength__onceToken != -1)
  {
    +[PRSRankingItem(Scoring) tokenizeURLString:removeTLD:hostTokenCount:hostLength:pathLength:queryLength:fragmentLength:];
  }

  *count = 0;
  *length = 0;
  *pathLength = 0;
  *queryLength = 0;
  *fragmentLength = 0;
  if (![stringCopy length])
  {
    v27 = &stru_1F556FE60;
    goto LABEL_23;
  }

  lowercaseString = [stringCopy lowercaseString];

  v16 = [MEMORY[0x1E695DFF8] URLWithString:lowercaseString];
  v17 = v16;
  if (v16)
  {
    host = [v16 host];
    if (host)
    {
      v19 = host;
      v44 = lowercaseString;
      v20 = [host componentsSeparatedByString:@"."];
      v21 = [v20 mutableCopy];

      if (objc_msgSend_count(v21) < 3)
      {
        goto LABEL_16;
      }

      v41 = dCopy;
      v22 = [v21 objectAtIndexedSubscript:0];
      v23 = [v22 length];

      if (v23 > 4)
      {
        dCopy = v41;
      }

      else
      {
        v24 = [v21 objectAtIndexedSubscript:0];
        if ([v24 hasPrefix:@"www"])
        {
LABEL_11:

          dCopy = v41;
LABEL_12:
          [v21 removeObjectAtIndex:0];
          v26 = [v21 componentsJoinedByString:@"."];

          v19 = v26;
          goto LABEL_16;
        }

        v25 = [v21 objectAtIndexedSubscript:0];
        if ([v25 isEqualToString:@"m"])
        {

          goto LABEL_11;
        }

        [v21 objectAtIndexedSubscript:0];
        v38 = v46 = v19;
        v40 = [v38 isEqualToString:@"ww"];

        v19 = v46;
        dCopy = v41;
        if (v40)
        {
          goto LABEL_12;
        }
      }

LABEL_16:
      v43 = v21;
      v45 = v19;
      v28 = [v19 componentsSeparatedByCharactersInSet:tokenizeURLString_removeTLD_hostTokenCount_hostLength_pathLength_queryLength_fragmentLength__removeCharsHost];
      v29 = [v28 mutableCopy];

      [v29 removeObject:&stru_1F556FE60];
      if (dCopy && objc_msgSend_count(v29) >= 2)
      {
        [v29 removeLastObject];
      }

      *count = objc_msgSend_count(v29);
      path = [v17 path];
      query = [v17 query];
      fragment = [v17 fragment];
      stringByDeletingPathExtension = [path stringByDeletingPathExtension];

      v32 = [stringByDeletingPathExtension componentsSeparatedByCharactersInSet:tokenizeURLString_removeTLD_hostTokenCount_hostLength_pathLength_queryLength_fragmentLength__removeCharsPath];
      v33 = [v32 componentsJoinedByString:@" "];

      whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
      v35 = [v33 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

      v27 = [v29 componentsJoinedByString:@" "];
      *length = [(__CFString *)v27 length];
      *pathLength = [v35 length];
      *queryLength = [query length];
      *fragmentLength = [fragment length];
      if ([v35 length])
      {
        v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v27, v35];

        v27 = v36;
      }

      lowercaseString = v44;
      goto LABEL_22;
    }
  }

  v27 = &stru_1F556FE60;
LABEL_22:

  stringCopy = lowercaseString;
LABEL_23:

  return v27;
}

uint64_t __119__PRSRankingItem_Scoring__tokenizeURLString_removeTLD_hostTokenCount_hostLength_pathLength_queryLength_fragmentLength___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".-"];
  v1 = tokenizeURLString_removeTLD_hostTokenCount_hostLength_pathLength_queryLength_fragmentLength__removeCharsHost;
  tokenizeURLString_removeTLD_hostTokenCount_hostLength_pathLength_queryLength_fragmentLength__removeCharsHost = v0;

  tokenizeURLString_removeTLD_hostTokenCount_hostLength_pathLength_queryLength_fragmentLength__removeCharsPath = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"/.-_"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)tokenizeContactsEmailAddress:(id)address removeTLD:(BOOL)d usernameTokenCount:(unint64_t *)count usernameLength:(unint64_t *)length domainLength:(unint64_t *)domainLength username:(id *)username
{
  addressCopy = address;
  if (tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username__onceToken != -1)
  {
    +[PRSRankingItem(Scoring) tokenizeContactsEmailAddress:removeTLD:usernameTokenCount:usernameLength:domainLength:username:];
  }

  v14 = &stru_1F556FE60;
  *username = &stru_1F556FE60;
  v15 = [tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username__emailAddressRegularExpression firstMatchInString:addressCopy options:0 range:{0, objc_msgSend(addressCopy, "length")}];
  v16 = v15;
  if (v15)
  {
    v17 = [v15 rangeAtIndex:1];
    v19 = [addressCopy substringWithRange:{v17, v18}];
    *username = [v19 lowercaseString];

    v20 = [*username componentsSeparatedByCharactersInSet:tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username__removeCharsUsername];
    *count = objc_msgSend_count(v20);
    [v20 componentsJoinedByString:@" "];
    v22 = v21 = domainLength;
    *length = [*username length];
    v23 = [v16 rangeAtIndex:2];
    v25 = [addressCopy substringWithRange:{v23, v24}];
    lowercaseString = [v25 lowercaseString];

    v27 = [lowercaseString componentsSeparatedByCharactersInSet:tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username__removeCharsDomain];
    v28 = [v27 componentsJoinedByString:@" "];

    *v21 = [lowercaseString length];
    v29 = v22;
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v22, v28];
    v30 = [v16 rangeAtIndex:3];
    v32 = [addressCopy substringWithRange:{v30, v31}];
    lowercaseString2 = [v32 lowercaseString];

    if (!d)
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v14, lowercaseString2];

      v14 = v34;
    }
  }

  return v14;
}

uint64_t __122__PRSRankingItem_Scoring__tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username___block_invoke()
{
  v0 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:@"(.+)@(.+)\\.(.+)" options:1 error:0];
  v1 = tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username__emailAddressRegularExpression;
  tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username__emailAddressRegularExpression = v0;

  v2 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".-_~+"];
  v3 = tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username__removeCharsUsername;
  tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username__removeCharsUsername = v2;

  tokenizeContactsEmailAddress_removeTLD_usernameTokenCount_usernameLength_domainLength_username__removeCharsDomain = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@".-_"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)tokenizeContactsName:(id)name tokenCount:(unint64_t *)count
{
  nameCopy = name;
  if (tokenizeContactsName_tokenCount__onceToken != -1)
  {
    +[PRSRankingItem(Scoring) tokenizeContactsName:tokenCount:];
  }

  *count = 0;
  if ([nameCopy length])
  {
    v6 = [nameCopy componentsSeparatedByCharactersInSet:tokenizeContactsName_tokenCount__removeCharsContactsName];
    v7 = [v6 componentsJoinedByString:&stru_1F556FE60];

    v8 = [v7 componentsSeparatedByCharactersInSet:tokenizeContactsName_tokenCount__replaceCharsContactsName];
    *count = objc_msgSend_count(v8);
    v9 = [v8 componentsJoinedByString:@" "];
    lowercaseString = [v9 lowercaseString];
  }

  else
  {
    v7 = nameCopy;
    lowercaseString = v7;
  }

  return lowercaseString;
}

uint64_t __59__PRSRankingItem_Scoring__tokenizeContactsName_tokenCount___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"|/\\:. ()~*"];
  v1 = tokenizeContactsName_tokenCount__replaceCharsContactsName;
  tokenizeContactsName_tokenCount__replaceCharsContactsName = v0;

  tokenizeContactsName_tokenCount__removeCharsContactsName = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-"];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)tokenizeTitleString:(id)string matchOption:(unsigned __int8)option
{
  v34 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  if ((option & 8) == 0)
  {
    v6 = [PRSRankingItem tokenizeTitleString:stringCopy];
LABEL_18:
    lowercaseString2 = v6;
    goto LABEL_19;
  }

  if (tokenizeTitleString_matchOption__onceToken != -1)
  {
    +[PRSRankingItem(Scoring) tokenizeTitleString:matchOption:];
  }

  if (![stringCopy length])
  {
    v6 = stringCopy;
    goto LABEL_18;
  }

  v23 = stringCopy;
  v7 = [stringCopy componentsSeparatedByCharactersInSet:removeCharsTitle];
  v8 = [MEMORY[0x1E696AE70] regularExpressionWithPattern:patternForTokenizingCamelCase options:0 error:0];
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v7;
  v10 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v16 = [v14 length];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __59__PRSRankingItem_Scoring__tokenizeTitleString_matchOption___block_invoke_2;
        v25[3] = &unk_1E8596A70;
        v17 = v15;
        v26 = v17;
        v27 = v14;
        [v8 enumerateMatchesInString:v14 options:0 range:0 usingBlock:{v16, v25}];
        if (objc_msgSend_count(v17))
        {
          [v9 addObjectsFromArray:v17];
        }

        else
        {
          lowercaseString = [v14 lowercaseString];
          v32 = lowercaseString;
          v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
          [v9 addObjectsFromArray:v19];
        }
      }

      v11 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v11);
  }

  v20 = [v9 componentsJoinedByString:@" "];
  lowercaseString2 = [v20 lowercaseString];

  stringCopy = v23;
LABEL_19:

  return lowercaseString2;
}

void __59__PRSRankingItem_Scoring__tokenizeTitleString_matchOption___block_invoke()
{
  v0 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"|/\\:. -()~*&_"];
  v1 = removeCharsTitle;
  removeCharsTitle = v0;

  v2 = patternForTokenizingCamelCase;
  patternForTokenizingCamelCase = @"([A-Z][a-z]+|[A-Z]+(?=[A-Z][a-z]|\\d|\\W|$)|\\d+|[a-z]+)";
}

void __59__PRSRankingItem_Scoring__tokenizeTitleString_matchOption___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [a2 range];
  v7 = [v3 substringWithRange:{v4, v5}];
  v6 = [v7 lowercaseString];
  [v2 addObject:v6];
}

+ (id)tokenizeTitleString:(id)string
{
  stringCopy = string;
  if (tokenizeTitleString__onceToken != -1)
  {
    +[PRSRankingItem(Scoring) tokenizeTitleString:];
  }

  if ([stringCopy length])
  {
    v4 = [stringCopy componentsSeparatedByCharactersInSet:removeCharsTitle];
    v5 = [v4 componentsJoinedByString:@" "];

    lowercaseString = [v5 lowercaseString];
  }

  else
  {
    lowercaseString = stringCopy;
  }

  return lowercaseString;
}

uint64_t __47__PRSRankingItem_Scoring__tokenizeTitleString___block_invoke()
{
  removeCharsTitle = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"|/\\:. -()~*&_"];

  return MEMORY[0x1EEE66BB8]();
}

- (float)matchScoreURLString:(id)string withEvaluator:(id)evaluator
{
  stringCopy = string;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v7 = objc_msgSend_count(queryTerms);
  v8 = 0.0;
  if (![stringCopy length] || !v7)
  {
    goto LABEL_111;
  }

  v89 = stringCopy;
  v108 = 0;
  v109 = &v108;
  v110 = 0x3032000000;
  v111 = __Block_byref_object_copy__8;
  v112 = __Block_byref_object_dispose__8;
  v113 = [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  v102 = 0;
  v103 = &v102;
  v104 = 0x3032000000;
  v105 = __Block_byref_object_copy__8;
  v106 = __Block_byref_object_dispose__8;
  [MEMORY[0x1E695DF70] arrayWithCapacity:v7];
  v107 = v9 = 0;
  do
  {
    [v109[5] insertObject:&unk_1F55B4488 atIndex:v9];
    [v103[5] insertObject:&unk_1F55B6E08 atIndex:v9++];
  }

  while (v7 != v9);
  v100 = 0;
  v101 = 0;
  v98 = 0;
  v99 = 0;
  v97 = 0;
  v88 = [PRSRankingItem tokenizeURLString:stringCopy removeTLD:1 hostTokenCount:&v101 hostLength:&v99 pathLength:&v100 queryLength:&v98 fragmentLength:&v97];
  v8 = 0.0;
  if (!v99 || !v101)
  {
    goto LABEL_110;
  }

  v91[0] = MEMORY[0x1E69E9820];
  v91[1] = 3221225472;
  v91[2] = __61__PRSRankingItem_Scoring__matchScoreURLString_withEvaluator___block_invoke;
  v91[3] = &unk_1E8596A98;
  v95 = v7;
  v10 = queryTerms;
  v92 = v10;
  v93 = &v108;
  v96 = v101;
  v94 = &v102;
  [evaluatorCopy evaluateAttribute:v88 ignoreSubtokens:1 strongCompounds:1 skipTranscriptions:0 withHandler:v91];
  v11 = [v109[5] objectAtIndexedSubscript:0];
  intValue = [v11 intValue];

  v13 = intValue != -1;
  v14 = v101;
  v15 = intValue < v101 && intValue != -1;
  v87 = evaluatorCopy;
  if (v7 < 2)
  {
    v86 = 0;
  }

  else
  {
    v16 = 1;
    v17 = 1;
    while (v16 < objc_msgSend_count(v109[5]))
    {
      v18 = [v109[5] objectAtIndexedSubscript:v16];
      intValue2 = [v18 intValue];

      if (intValue2 == -1 || intValue != -1 && intValue2 - intValue != 1)
      {
        v17 = 0;
      }

      v13 += intValue2 >= 0;
      if (intValue2 < v101)
      {
        ++v15;
      }

      ++v16;
      intValue = intValue2;
    }

    v86 = v17;
    v14 = v101;
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = v99 + v100 * 0.6;
  v24 = v99 / v23;
  v25 = v15 / v14;
  v26 = 0.0;
  do
  {
    v27 = [v103[5] objectAtIndexedSubscript:v22];
    [v27 floatValue];
    v29 = v28;

    v30 = [v109[5] objectAtIndexedSubscript:v22];
    intValue3 = [v30 intValue];

    v32 = [v10 objectAtIndexedSubscript:v22];
    composedLength = [v32 composedLength];

    if ((intValue3 & 0x80000000) == 0 && intValue3 < v101)
    {
      if (!intValue3 && (composedLength > 2 || v101 == 1))
      {
        v36 = v29;
        if (v29 > 0.94)
        {
          goto LABEL_29;
        }

        v37 = v36 > 0.27 && composedLength > 2;
        if (v37 || (v36 > 0.24 ? (v38 = composedLength > 3) : (v38 = 0), v38 || v36 > 0.2 && composedLength > 4 || v36 > 0.1 && composedLength >= 6))
        {
          v29 = (v36 + 1.0) * 0.95 * 0.5;
          goto LABEL_29;
        }
      }

      if ((v20 & 1) == 0)
      {
        v20 = 0;
        v34 = v25 * v29;
LABEL_41:
        v29 = v24 * v34;
        v21 = 1;
        goto LABEL_42;
      }

LABEL_29:
      v34 = v29 * 0.9;
      if (v101 <= 1)
      {
        v34 = v29;
      }

      if (((v100 + v99) / (v97 + v98 + v100 + v99)) < 0.2 || v97 + v98 + v100 >= 0x29)
      {
        v34 = v34 * 0.3;
      }

      v20 = 1;
      goto LABEL_41;
    }

    if (intValue3 >= v101 && v100 != 0)
    {
      v29 = v29 * (composedLength / v100);
    }

LABEL_42:
    v26 = v26 + v29;
    ++v22;
  }

  while (v7 != v22);
  v39 = v7;
  if (v86)
  {
    if ((v26 + v26) >= v39)
    {
      v40 = v7;
    }

    else
    {
      v40 = v26 + v26;
    }

    queryString = [v87 queryString];
    composedLength2 = [queryString composedLength];
    v43 = composedLength2 / [v88 length];

    v44 = 1.0;
    if (v43 <= 1.0)
    {
      v44 = v43;
    }

    v26 = v40 * v44;
  }

  else if ((v21 & 1) == 0)
  {
    v26 = v26 * 0.4;
  }

  v45 = v99;
  v46 = v100;
  v48 = v97;
  v47 = v98;
  v49 = v26 / v39;
  if (v13 >= v7 && v49 >= 0.2)
  {
    goto LABEL_95;
  }

  queryString2 = [v87 queryString];
  lowercaseString = [queryString2 lowercaseString];

  lowercaseString2 = [v88 lowercaseString];
  v53 = v45 / (v46 + v45 + v47 + v48);
  if ([lowercaseString rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v54 = [lowercaseString stringByReplacingOccurrencesOfString:@" " withString:&stru_1F556FE60];
    if ([lowercaseString2 rangeOfString:v54])
    {

      goto LABEL_72;
    }

    v80 = v55;
    v81 = [lowercaseString2 length];
    v82 = 0.95;
    if (v80 == v81)
    {
      v82 = 1.0;
    }

    if (v53 >= 0.3)
    {
      v83 = v24;
    }

    else
    {
      v83 = v53;
    }

    v8 = v83 * v82;

LABEL_108:
    goto LABEL_109;
  }

LABEL_72:
  v56 = lowercaseString2;
  v57 = [MEMORY[0x1E695DFF8] URLWithString:v89];
  host = [v57 host];

  if ([host hasCommonSubDomainPrefix])
  {
    queryString3 = [v87 queryString];
    hasCommonSubDomainPrefix = [queryString3 hasCommonSubDomainPrefix];

    if ((hasCommonSubDomainPrefix & 1) == 0)
    {
      v61 = [host componentsSeparatedByString:@"."];
      v62 = [v61 mutableCopy];

      if (objc_msgSend_count(v62) >= 3)
      {
        v63 = [v62 objectAtIndexedSubscript:0];
        v64 = [v63 length];

        if (v64 <= 4)
        {
          [v62 removeObjectAtIndex:0];
          v65 = [v62 componentsJoinedByString:@"."];

          host = v65;
        }
      }
    }
  }

  v67 = [host rangeOfString:lowercaseString];
  if (v67 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v68 = v66;
    if ([host length])
    {
      v69 = v68 / [host length];
      if (v67 || (v70 = 1.0, v69 <= 0.5) && [lowercaseString rangeOfString:@"."] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v70 = v69 * 0.3;
      }

      if (v53 >= 0.3)
      {
        v84 = v24;
      }

      else
      {
        v84 = v53;
      }

      v8 = v84 * v70;

      goto LABEL_108;
    }
  }

  lowercaseString3 = [v89 lowercaseString];
  if ([lowercaseString3 rangeOfString:lowercaseString] == 0x7FFFFFFFFFFFFFFFLL || (v73 = v72, !objc_msgSend(lowercaseString3, "length")))
  {
    v76 = [PRSRankingItem tokenizeURLString:v89 removeTLD:0 hostTokenCount:&v101 hostLength:&v99 pathLength:&v100 queryLength:&v98 fragmentLength:&v97];
    if ([v76 rangeOfString:lowercaseString] == 0x7FFFFFFFFFFFFFFFLL || (v78 = v77, !objc_msgSend(v76, "length")))
    {
      v75 = v13 >= v7;
      v8 = 0.0;
    }

    else
    {
      v79 = [v76 length];
      v75 = 0;
      v8 = (v78 / v79) <= 0.3 ? v78 / v79 : 1.0;
    }
  }

  else
  {
    v74 = [lowercaseString3 length];
    v75 = 0;
    v8 = (v73 / v74) <= 0.6 ? v73 / v74 : 1.0;
  }

  if (v75)
  {
LABEL_95:
    v8 = v49;
  }

LABEL_109:

  evaluatorCopy = v87;
LABEL_110:

  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v108, 8);

  stringCopy = v89;
LABEL_111:

  return v8;
}

void __61__PRSRankingItem_Scoring__matchScoreURLString_withEvaluator___block_invoke(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v10 = *(a1 + 56) - 1;
  if ((a2 & 7) != 1 || v10 != a6)
  {
    if ((a2 & 7) != 3 || v10 <= a6)
    {
      return;
    }

    v12 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:{a6, a4, a5}];
    v13 = [v12 intValue];

    if (v13 == -1)
    {
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v36 atIndexedSubscript:a6];

      if (*(a1 + 64) <= a7)
      {
        v19 = *(*(*(a1 + 48) + 8) + 40);
        v37 = &unk_1F55B6E18;
        goto LABEL_35;
      }

      v19 = *(*(*(a1 + 48) + 8) + 40);
      if (a7)
      {
        v37 = &unk_1F55B6D88;
LABEL_35:

        [v19 setObject:v37 atIndexedSubscript:a6];
        return;
      }
    }

    else
    {
      if (!a6)
      {
        return;
      }

      v14 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6];
      v15 = [v14 intValue];
      v16 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6 - 1];
      v17 = v15 - [v16 intValue];

      if (v17 == 1)
      {
        return;
      }

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v18 atIndexedSubscript:a6];

      v19 = *(*(*(a1 + 48) + 8) + 40);
    }

    v37 = &unk_1F55B6E28;
    goto LABEL_35;
  }

  if (a4)
  {
    v21 = [*(a1 + 32) objectAtIndexedSubscript:{a6, a4, a5}];
    v22 = [v21 composedLength] / a4;

    if (v22 > 1.0)
    {
      v22 = 1.0;
    }
  }

  else
  {
    v22 = 0.0;
  }

  v23 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6];
  v24 = [v23 intValue];

  if (v24 != -1)
  {
    if (!a6)
    {
      return;
    }

    v25 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6];
    v26 = [v25 intValue];
    v27 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6 - 1];
    v28 = v26 - [v27 intValue];

    if (v28 == 1)
    {
      return;
    }

    v34 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v34 atIndexedSubscript:a6];

    v31 = MEMORY[0x1E696AD98];
    goto LABEL_24;
  }

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v29 atIndexedSubscript:a6];

  if (*(a1 + 64) <= a7)
  {
    v31 = MEMORY[0x1E696AD98];
    v32 = v22;
    v33 = 0.7;
    goto LABEL_26;
  }

  v31 = MEMORY[0x1E696AD98];
  if (a7)
  {
    v32 = v22;
    v33 = 0.95;
LABEL_26:
    v35 = [v31 numberWithDouble:v32 * v33];
    goto LABEL_27;
  }

LABEL_24:
  *&v30 = v22;
  v35 = [v31 numberWithFloat:v30];
LABEL_27:
  v38 = v35;
  [*(*(*(a1 + 48) + 8) + 40) setObject:v35 atIndexedSubscript:a6];
}

+ (float)matchScoreLaunchString:(id)string withEvaluator:(id)evaluator
{
  stringCopy = string;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v9 = objc_msgSend_count(queryTerms);
  v10 = 0.0;
  if ([stringCopy length])
  {
    if (v9)
    {
      if (![stringCopy length] || (objc_msgSend(evaluatorCopy, "queryString"), (v11 = objc_claimAutoreleasedReturnValue()) == 0) || (v12 = v11, objc_msgSend(evaluatorCopy, "queryString"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(stringCopy, "isEqualToString:", v13), v13, v12, v10 = 1.0, (v14 & 1) == 0))
      {
        v20 = 0;
        v21 = &v20;
        v22 = 0x2020000000;
        v23 = 0;
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __64__PRSRankingItem_Scoring__matchScoreLaunchString_withEvaluator___block_invoke;
        v16[3] = &unk_1E8596AC0;
        v18 = &v20;
        v19 = v9;
        v17 = queryTerms;
        [self matchScoreTokensFromText:stringCopy withEvaluator:evaluatorCopy withHandler:v16];
        v10 = fminf(v21[6], 1.0);

        _Block_object_dispose(&v20, 8);
      }
    }
  }

  return v10;
}

void __64__PRSRankingItem_Scoring__matchScoreLaunchString_withEvaluator___block_invoke(uint64_t a1, void *a2, unint64_t a3, int a4, float a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = a2;
  if (*(a1 + 48) > a8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_21;
  }

  v29 = v13;
  if (objc_msgSend_count(v13))
  {
    v14 = 0;
    while (1)
    {
      v15 = [v29 objectAtIndexedSubscript:v14];
      v16 = [v15 intValue];

      if (v14 != v16)
      {
        break;
      }

      if (++v14 >= objc_msgSend_count(v29))
      {
        goto LABEL_7;
      }
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_20;
  }

LABEL_7:
  v17 = *(a1 + 48);
  if (v17 == a3 && vabds_f32(a5, a3) < 2.2204e-16)
  {
    v18 = *(*(a1 + 40) + 8);
    v19 = 1065353216;
LABEL_18:
    *(v18 + 24) = v19;
LABEL_20:
    v13 = v29;
    goto LABEL_21;
  }

  if (a3 == 1 && v17 == 1)
  {
    v20 = [*(a1 + 32) objectAtIndexedSubscript:0];
    v21 = [v20 composedLength];

    if (a5 >= 0.75 || a5 >= 0.5 && v21 || (v22 = a5, a5 >= 0.4) && v21 >= 2)
    {
      v18 = *(*(a1 + 40) + 8);
      v19 = 1065017672;
      goto LABEL_18;
    }

    if (v22 >= 0.1)
    {
      v23 = [*(a1 + 32) objectAtIndexedSubscript:0];
      v24 = [v23 composedLength];

      if (v24 >= 3)
      {
        v25 = fmin((v22 + 1.0) * 0.5, 0.98);
        *(*(*(a1 + 40) + 8) + 24) = v25;
        goto LABEL_20;
      }
    }
  }

  v26 = *(a1 + 48);
  if (v26 <= a3)
  {
    v26 = a3;
  }

  *(*(*(a1 + 40) + 8) + 24) = a5 / v26;
  v13 = v29;
  if (a4)
  {
    v27 = *(*(a1 + 40) + 8);
    v28 = *(v27 + 24) + *(v27 + 24);
    if (v28 >= 0.99)
    {
      v28 = 0.99;
    }

    *(v27 + 24) = v28;
  }

LABEL_21:
}

- (float)matchScoreAppName:(id)name withEvaluator:(id)evaluator
{
  v48 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  evaluatorCopy = evaluator;
  [(PRSRankingItem *)self matchScoreAppName:nameCopy withEvaluator:evaluatorCopy matchOption:2];
  v9 = v8;
  v10 = v8;
  if (v8 < 0.95)
  {
    [(PRSRankingItem *)self matchScoreAppName:nameCopy withEvaluator:evaluatorCopy matchOption:0];
    if (v9 < v11)
    {
      v9 = v11;
    }

    v10 = v9;
  }

  if (v10 < 0.8)
  {
    queryString = [evaluatorCopy queryString];
    v13 = [queryString rangeOfString:@" "];

    if (v13 != 0x7FFFFFFFFFFFFFFFLL)
    {
      queryString2 = [evaluatorCopy queryString];
      lowercaseString = [queryString2 lowercaseString];
      v16 = [lowercaseString stringByReplacingOccurrencesOfString:@" " withString:&stru_1F556FE60];

      v17 = objc_alloc(MEMORY[0x1E6964DF0]);
      language = [evaluatorCopy language];
      v19 = [v17 initWithQuery:v16 language:language fuzzyThreshold:0 options:0];

      [(PRSRankingItem *)self matchScoreAppName:nameCopy withEvaluator:v19 matchOption:2];
      if (v9 < v20)
      {
        v9 = v20;
      }

      v10 = v9;
      if (v9 < 0.95)
      {
        [(PRSRankingItem *)self matchScoreAppName:nameCopy withEvaluator:v19 matchOption:0];
        if (v9 < v21)
        {
          v9 = v21;
        }

        v10 = v9;
      }
    }
  }

  if (v10 < 0.8)
  {
    v22 = [PRSRankingItem tokenizeTitleString:nameCopy];
    if ([v22 rangeOfString:@" "] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [v22 componentsSeparatedByString:@" "];
      if (objc_msgSend_count(v23) >= 2)
      {
        v24 = [v23 componentsJoinedByString:&stru_1F556FE60];
        [(PRSRankingItem *)self matchScoreAppName:v24 withEvaluator:evaluatorCopy matchOption:0];
        if (v9 < v25)
        {
          v9 = v25;
        }

        v10 = v9;
      }
    }
  }

  if (v10 < 0.8)
  {
    v26 = [nameCopy componentsSeparatedByString:@" "];
    queryString3 = [evaluatorCopy queryString];
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v29 = [queryString3 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v30 = v26;
    v31 = [v30 countByEnumeratingWithState:&v43 objects:v47 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v44;
      while (2)
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v44 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v43 + 1) + 8 * i);
          v36 = [v29 length];
          if ((v36 / [nameCopy length]) <= 0.38)
          {
            if (![v35 localizedCaseInsensitiveContainsString:v29])
            {
              continue;
            }

            v37 = [v29 length];
            if ((v37 / [v35 length]) <= 0.38 && !objc_msgSend(v35, "hasSpecialAppPrefix"))
            {
              continue;
            }
          }

          [(PRSRankingItem *)self matchScoreAppName:nameCopy withEvaluator:evaluatorCopy matchOption:8];
          if (v9 < v38)
          {
            v9 = v38;
          }

          v10 = v9;
          goto LABEL_38;
        }

        v32 = [v30 countByEnumeratingWithState:&v43 objects:v47 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }
    }

LABEL_38:
  }

  if (v10 < 0.8 && [nameCopy length] >= 3)
  {
    if ([nameCopy containsString:@"&"])
    {
      v39 = [nameCopy stringByReplacingOccurrencesOfString:@"&" withString:&stru_1F556FE60];
      [(PRSRankingItem *)self matchScoreAppName:v39 withEvaluator:evaluatorCopy matchOption:8];
      v41 = v40;

      if (v9 < v41)
      {
        v9 = v41;
      }
    }
  }

  return v9;
}

- (float)matchScoreAppName:(id)name withEvaluator:(id)evaluator matchOption:(unsigned __int8)option
{
  nameCopy = name;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v10 = objc_msgSend_count(queryTerms);
  v11 = nameCopy;
  v12 = v11;
  lowercaseString = v11;
  if ((option & 8) == 0)
  {
    lowercaseString = [v11 lowercaseString];
  }

  if ((option & 2) != 0)
  {
    v14 = [PRSRankingItem tokenizeTitleString:lowercaseString];

    lowercaseString = v14;
  }

  v15 = 0.0;
  if ([lowercaseString length] && v10)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __71__PRSRankingItem_Scoring__matchScoreAppName_withEvaluator_matchOption___block_invoke;
    v17[3] = &unk_1E8596AE8;
    v20 = &v22;
    v21 = v10;
    v18 = v12;
    v19 = evaluatorCopy;
    [PRSRankingItem matchScoreTokensFromText:lowercaseString withEvaluator:v19 withHandler:v17];
    v15 = v23[6];

    _Block_object_dispose(&v22, 8);
  }

  return v15;
}

void __71__PRSRankingItem_Scoring__matchScoreAppName_withEvaluator_matchOption___block_invoke(uint64_t a1, void *a2, unint64_t a3, int a4, int a5, int a6, unint64_t a7, float a8)
{
  v15 = a2;
  v16 = *(a1 + 56);
  if (v16 > a7)
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
    goto LABEL_26;
  }

  if (v16 == 1)
  {
    if (a5)
    {
      if (a3 == 1 && a8 == 1.0)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1065353216;
        goto LABEL_26;
      }

      v28 = v15;
      v22 = *(a1 + 32);
      v23 = [*(a1 + 40) queryString];
      v24 = [v22 rangeOfString:v23 options:393];
      v26 = v25;

      if (v24 || !v26)
      {
        v27 = 1064849900;
      }

      else
      {
        v27 = 1065017672;
      }

      *(*(*(a1 + 48) + 8) + 24) = v27;
      v15 = v28;
    }

    else
    {
      if (a6)
      {
        v21 = 1063675494;
      }

      else
      {
        v21 = 1060320051;
      }

      *(*(*(a1 + 48) + 8) + 24) = v21;
    }

    if (a3 >= 8)
    {
      v19 = *(*(a1 + 48) + 8);
      v20 = *(v19 + 24) / (a3 - 7);
      goto LABEL_25;
    }
  }

  else
  {
    if (v16 <= a3)
    {
      v16 = a3;
    }

    *(*(*(a1 + 48) + 8) + 24) = a8 / v16;
    if (a5)
    {
      v17 = *(*(a1 + 48) + 8);
      v18 = fmin(*(v17 + 24) + 0.2, 1.0);
      *(v17 + 24) = v18;
    }

    if (a4)
    {
      v19 = *(*(a1 + 48) + 8);
      v20 = fmin(*(v19 + 24) * 1.5, 1.0);
LABEL_25:
      *(v19 + 24) = v20;
    }
  }

LABEL_26:
}

- (float)matchScoreContactsName:(id)name withEvaluator:(id)evaluator
{
  nameCopy = name;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v8 = objc_msgSend_count(queryTerms);
  v21 = 0;
  v9 = [PRSRankingItem tokenizeContactsName:nameCopy tokenCount:&v21];
  v10 = 0.0;
  if ([v9 length])
  {
    v11 = v8 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __64__PRSRankingItem_Scoring__matchScoreContactsName_withEvaluator___block_invoke;
    v13[3] = &unk_1E8596AC0;
    v15 = &v17;
    v16 = v8;
    v14 = queryTerms;
    [PRSRankingItem matchScoreTokensFromText:v9 withEvaluator:evaluatorCopy withHandler:v13];
    v10 = fminf(v18[6], 1.0);

    _Block_object_dispose(&v17, 8);
  }

  return v10;
}

void __64__PRSRankingItem_Scoring__matchScoreContactsName_withEvaluator___block_invoke(uint64_t a1, void *a2, unint64_t a3, int a4, int a5, int a6, unint64_t a7, float a8)
{
  v15 = a2;
  v16 = *(a1 + 48);
  if (v16 > a7)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_36;
  }

  if (vabds_f32(a8, a3) < 2.2204e-16)
  {
    v17 = *(*(a1 + 40) + 8);
    v18 = 1065353216;
LABEL_5:
    *(v17 + 24) = v18;
    goto LABEL_36;
  }

  if (a7 < 2)
  {
    if ((a5 & 1) == 0 && !a6)
    {
      goto LABEL_12;
    }

    if (a8 > 0.4 && ((v31 = v15, [*(a1 + 32) objectAtIndexedSubscript:0], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "composedLength"), objc_msgSend(*(a1 + 32), "objectAtIndexedSubscript:", 0), v25 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v25, "containsCJK")) ? (v26 = 4) : (v26 = 2), v25, v23, v15 = v31, v24 >= v26))
    {
      if (a8 == 1.0)
      {
        v28 = 1065017672;
      }

      else
      {
        v28 = 1064849900;
      }

      *(*(*(a1 + 40) + 8) + 24) = v28;
      if (!a6)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v27 = a8 * 0.95;
      *(*(*(a1 + 40) + 8) + 24) = v27;
      if (!a6)
      {
LABEL_34:
        v19 = *(*(a1 + 40) + 8);
        v20 = fminf(*(v19 + 24), 1.0);
LABEL_35:
        *(v19 + 24) = v20;
        goto LABEL_36;
      }
    }

    if ((a5 & 1) == 0)
    {
      v29 = *(*(a1 + 40) + 8);
      v30 = *(v29 + 24) + -0.001;
      *(v29 + 24) = v30;
    }

    goto LABEL_34;
  }

  if (a5 && a6)
  {
    v17 = *(*(a1 + 40) + 8);
    v18 = 1065185444;
    goto LABEL_5;
  }

  if ((a5 | a6) == 1 && v16 <= 3)
  {
    v17 = *(*(a1 + 40) + 8);
    v18 = 1065017672;
    goto LABEL_5;
  }

LABEL_12:
  if (v16 <= a3)
  {
    v16 = a3;
  }

  *(*(*(a1 + 40) + 8) + 24) = a8 / v16;
  if (a4)
  {
    v19 = *(*(a1 + 40) + 8);
    v20 = *(v19 + 24);
    v21 = fmin((v20 + v20), 0.99);
    if (v21 > v20)
    {
      v22 = v21;
      v20 = v22;
    }

    goto LABEL_35;
  }

LABEL_36:
}

- (float)matchScoreContactsEmailAddress:(id)address withEvaluator:(id)evaluator
{
  addressCopy = address;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v8 = objc_msgSend_count(queryTerms);
  v9 = 0.0;
  if (![addressCopy length] || !v8)
  {
    goto LABEL_95;
  }

  v78 = queryTerms;
  v98 = 0;
  v99 = &v98;
  v100 = 0x3032000000;
  v101 = __Block_byref_object_copy__8;
  v102 = __Block_byref_object_dispose__8;
  v103 = [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
  v92 = 0;
  v93 = &v92;
  v94 = 0x3032000000;
  v95 = __Block_byref_object_copy__8;
  v96 = __Block_byref_object_dispose__8;
  [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
  v97 = v10 = 0;
  do
  {
    [v99[5] insertObject:&unk_1F55B4488 atIndex:v10];
    [v93[5] insertObject:&unk_1F55B6E08 atIndex:v10++];
  }

  while (v8 != v10);
  v90 = 0;
  v91 = 0;
  v88 = 0;
  v89 = 0;
  v79 = [PRSRankingItem tokenizeContactsEmailAddress:addressCopy removeTLD:1 usernameTokenCount:&v91 usernameLength:&v90 domainLength:&v89 username:&v88];
  v11 = v88;
  v12 = [addressCopy length];
  v13 = [v11 length];
  v77 = v11;
  v9 = 0.0;
  if (!v90 || !v91)
  {
    goto LABEL_94;
  }

  v14 = queryTerms;
  v15 = v12 + ~v13;
  v81[0] = MEMORY[0x1E69E9820];
  v81[1] = 3221225472;
  v81[2] = __72__PRSRankingItem_Scoring__matchScoreContactsEmailAddress_withEvaluator___block_invoke;
  v81[3] = &unk_1E8596B10;
  v85 = v8;
  v16 = v14;
  v82 = v16;
  v83 = &v98;
  v86 = v91;
  v87 = v15;
  v84 = &v92;
  [evaluatorCopy evaluateAttribute:v79 ignoreSubtokens:1 strongCompounds:1 skipTranscriptions:0 withHandler:v81];
  v17 = [v99[5] objectAtIndexedSubscript:0];
  intValue = [v17 intValue];
  v73 = addressCopy;

  v19 = intValue != -1;
  v20 = v91;
  v21 = intValue < v91 && intValue != -1;
  v74 = evaluatorCopy;
  if (v8 < 2)
  {
    v23 = 0;
  }

  else
  {
    v22 = 1;
    v23 = 1;
    while (v22 < objc_msgSend_count(v99[5]))
    {
      v24 = [v99[5] objectAtIndexedSubscript:v22];
      intValue2 = [v24 intValue];

      if (intValue2 == -1 || intValue != -1 && intValue2 - intValue != 1)
      {
        v23 = 0;
      }

      v19 += intValue2 >= 0;
      if (intValue2 < v91)
      {
        ++v21;
      }

      ++v22;
      intValue = intValue2;
    }

    v20 = v91;
  }

  v26 = 0;
  v27 = 0;
  v28 = v90 + v89 * 0.7;
  v29 = v90 / v28;
  v30 = v21 / v20;
  v31 = 0.0;
  do
  {
    v32 = [v93[5] objectAtIndexedSubscript:v27];
    [v32 floatValue];
    v34 = v33;

    v35 = [v99[5] objectAtIndexedSubscript:v27];
    intValue3 = [v35 intValue];

    v37 = [v16 objectAtIndexedSubscript:v27];
    composedLength = [v37 composedLength];

    if ((intValue3 & 0x80000000) == 0 && intValue3 < v91)
    {
      if (!intValue3)
      {
        v39 = v34;
        if (v34 > 0.94)
        {
          goto LABEL_51;
        }

        v41 = v39 > 0.39 && composedLength > 1;
        if (v41 || (v39 > 0.27 ? (v42 = composedLength > 2) : (v42 = 0), v42 || (v39 > 0.24 ? (v43 = composedLength > 3) : (v43 = 0), v43 || v39 > 0.2 && composedLength > 4 || v39 > 0.1 && composedLength >= 6)))
        {
          v39 = (v39 + 1.0) * 0.95 * 0.5;
          v34 = v39;
          goto LABEL_51;
        }
      }

      if ((v26 & 1) == 0)
      {
        v26 = 0;
        v34 = v30 * v34;
LABEL_54:
        v44 = composedLength / v90;
        if (v44 >= 0.5)
        {
          *&v39 = v34;
        }

        else
        {
          *&v39 = v44 * v34;
        }

        v34 = v29 * *&v39;
        goto LABEL_58;
      }

LABEL_51:
      if (v91 >= 2)
      {
        v39 = v34 * 0.9;
        v34 = v39;
      }

      v26 = 1;
      goto LABEL_54;
    }

    if (intValue3 >= v91 && v89 != 0)
    {
      *&v39 = composedLength / v89;
      v34 = v34 * *&v39;
    }

LABEL_58:
    v31 = v31 + v34;
    ++v27;
  }

  while (v8 != v27);
  if (v23)
  {
    v45 = v8;
    if ((v31 + v31) >= v8)
    {
      v46 = v8;
    }

    else
    {
      v46 = v31 + v31;
    }

    evaluatorCopy = v74;
    queryString = [v74 queryString];
    composedLength2 = [queryString composedLength];
    v49 = composedLength2 / [v79 length];

    LODWORD(v39) = 1.0;
    if (v49 <= 1.0)
    {
      *&v39 = v49;
    }

    v31 = v46 * *&v39;
    addressCopy = v73;
  }

  else
  {
    v45 = v8;
    addressCopy = v73;
    evaluatorCopy = v74;
  }

  v50 = v31 / v45;
  if (v19 >= v8)
  {
    v39 = v50;
    if (v50 >= 0.05)
    {
LABEL_69:
      v9 = v50;
      goto LABEL_93;
    }
  }

  queryString2 = [evaluatorCopy queryString];
  lowercaseString = [queryString2 lowercaseString];

  lowercaseString2 = [v79 lowercaseString];
  if ([lowercaseString rangeOfString:@" "] == 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_73:
    if ([v77 rangeOfString:lowercaseString] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v56 = v55;
      if ([v77 length])
      {
        v9 = (v56 / [v77 length]) * 0.4 * v29;
        goto LABEL_92;
      }
    }

    lowercaseString3 = [addressCopy lowercaseString];
    v58 = [lowercaseString3 rangeOfString:lowercaseString];
    if (v58 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v59 = v57;
      if ([lowercaseString3 length])
      {
        v60 = [lowercaseString3 length];
        if (v58 > [v77 length])
        {
          v61 = [lowercaseString3 length];
          v60 = v60 + (v61 + ~[v77 length]);
        }

        v9 = v59 / v60;
        goto LABEL_91;
      }
    }

    v80 = v77;
    v62 = [PRSRankingItem tokenizeContactsEmailAddress:addressCopy removeTLD:0 usernameTokenCount:&v91 usernameLength:&v90 domainLength:&v89 username:&v80];
    v63 = v80;

    v64 = [v62 rangeOfString:lowercaseString];
    v75 = v65;
    v66 = v64;
    v77 = v63;
    if (v64 == 0x7FFFFFFFFFFFFFFFLL || (v67 = v63, ![v62 length]))
    {
      v70 = v19 >= v8;
      v9 = 0.0;
    }

    else
    {
      v68 = [v62 length];
      if (v66 > [v63 length])
      {
        v69 = [v62 length];
        v68 = v68 + (v69 + ~[v67 length]);
      }

      v70 = 0;
      v9 = v75 / v68;
    }

    if (v70)
    {
      goto LABEL_69;
    }
  }

  else
  {
    lowercaseString3 = [lowercaseString stringByReplacingOccurrencesOfString:@" " withString:&stru_1F556FE60];
    if ([lowercaseString2 rangeOfString:lowercaseString3])
    {

      goto LABEL_73;
    }

    v9 = 1.0;
    if (v54 != [lowercaseString2 length])
    {
      v71 = [lowercaseString3 length];
      v9 = v29 * 0.7 * fmin((v71 / v90), 1.0);
    }

LABEL_91:

LABEL_92:
  }

LABEL_93:

  queryTerms = v78;
LABEL_94:

  _Block_object_dispose(&v92, 8);
  _Block_object_dispose(&v98, 8);

LABEL_95:
  return v9;
}

void __72__PRSRankingItem_Scoring__matchScoreContactsEmailAddress_withEvaluator___block_invoke(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  v10 = *(a1 + 56) - 1;
  if ((a2 & 7) != 1 || v10 != a6)
  {
    if ((a2 & 7) != 3 || v10 <= a6)
    {
      return;
    }

    v12 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:{a6, a4, a5}];
    v13 = [v12 intValue];

    if (v13 != -1)
    {
      if (!a6)
      {
        return;
      }

      v14 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6];
      v15 = [v14 intValue];
      v16 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6 - 1];
      v17 = v15 - [v16 intValue];

      if (v17 == 1)
      {
        return;
      }

      v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v18 atIndexedSubscript:a6];

      v19 = *(*(*(a1 + 48) + 8) + 40);
      v20 = &unk_1F55B6E28;
      goto LABEL_35;
    }

    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v39 atIndexedSubscript:a6];

    if (*(a1 + 64) > a7)
    {
      if (a7)
      {
        v20 = &unk_1F55B6D88;
      }

      else
      {
        v20 = &unk_1F55B6E28;
      }

      v19 = *(*(*(a1 + 48) + 8) + 40);
LABEL_35:

      [v19 setObject:v20 atIndexedSubscript:a6];
      return;
    }

    if (*(a1 + 72))
    {
      v40 = [*(a1 + 32) objectAtIndexedSubscript:a6];
      v41 = [v40 composedLength] / (2 * *(a1 + 72));

      v42 = 1.0;
      if (v41 <= 1.0)
      {
        v42 = v41;
      }

      v38 = v42 * 0.5;
    }

    else
    {
      v38 = 0.0;
    }

    v32 = MEMORY[0x1E696AD98];
    goto LABEL_44;
  }

  if (a4)
  {
    v22 = [*(a1 + 32) objectAtIndexedSubscript:{a6, a4, a5}];
    v23 = [v22 composedLength] / a4;

    if (v23 > 1.0)
    {
      v23 = 1.0;
    }
  }

  else
  {
    v23 = 0.0;
  }

  v24 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6];
  v25 = [v24 intValue];

  if (v25 != -1)
  {
    if (!a6)
    {
      return;
    }

    v26 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6];
    v27 = [v26 intValue];
    v28 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndexedSubscript:a6 - 1];
    v29 = v27 - [v28 intValue];

    if (v29 == 1)
    {
      return;
    }

    v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v35 atIndexedSubscript:a6];

    v32 = MEMORY[0x1E696AD98];
    goto LABEL_24;
  }

  v30 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
  [*(*(*(a1 + 40) + 8) + 40) setObject:v30 atIndexedSubscript:a6];

  if (*(a1 + 64) <= a7)
  {
    if (*(a1 + 72))
    {
      v37 = [*(a1 + 32) objectAtIndexedSubscript:a6];
      v23 = [v37 composedLength] / (2 * *(a1 + 72));

      if (v23 > 1.0)
      {
        v23 = 1.0;
      }
    }

    v32 = MEMORY[0x1E696AD98];
    v33 = v23;
    v34 = 0.5;
    goto LABEL_29;
  }

  v32 = MEMORY[0x1E696AD98];
  if (a7)
  {
    v33 = v23;
    v34 = 0.95;
LABEL_29:
    v38 = v33 * v34;
LABEL_44:
    v36 = [v32 numberWithDouble:v38];
    goto LABEL_45;
  }

LABEL_24:
  *&v31 = v23;
  v36 = [v32 numberWithFloat:v31];
LABEL_45:
  v43 = v36;
  [*(*(*(a1 + 48) + 8) + 40) setObject:v36 atIndexedSubscript:a6];
}

- (float)matchScoreForTokensFromText:(id)text withEvaluator:(id)evaluator
{
  textCopy = text;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v8 = objc_msgSend_count(queryTerms);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__PRSRankingItem_Scoring__matchScoreForTokensFromText_withEvaluator___block_invoke;
  v11[3] = &unk_1E8596B38;
  v11[4] = &v12;
  v11[5] = v8;
  [PRSRankingItem matchScoreTokensFromText:textCopy withEvaluator:evaluatorCopy withHandler:v11];
  v9 = v13[6];
  _Block_object_dispose(&v12, 8);

  return v9;
}

uint64_t __69__PRSRankingItem_Scoring__matchScoreForTokensFromText_withEvaluator___block_invoke(uint64_t result, float a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8 && (v8 = *(result + 40)) != 0)
  {
    v9 = a2 / v8;
    if (v9 > 1.0)
    {
      v9 = 1.0;
    }

    *(*(*(result + 32) + 8) + 24) = v9;
    if (a5)
    {
      v10 = *(*(result + 32) + 8);
      v11 = fmin(*(v10 + 24) * 1.2, 1.0);
      *(v10 + 24) = v11;
    }
  }

  else
  {
    *(*(*(result + 32) + 8) + 24) = 0;
  }

  return result;
}

- (float)matchScoreFileNameForSearchTool:(id)tool withEvaluator:(id)evaluator
{
  toolCopy = tool;
  evaluatorCopy = evaluator;
  if ([toolCopy length])
  {
    v8 = [PRSRankingItem tokenizeTitleString:toolCopy matchOption:8];
    v9 = [PRSRankingItem tokenizeTitleString:toolCopy];
    [(PRSRankingItem *)self matchScoreForTokensFromText:v8 withEvaluator:evaluatorCopy];
    v11 = v10;
    [(PRSRankingItem *)self matchScoreForTokensFromText:v9 withEvaluator:evaluatorCopy];
    if (v11 < v12)
    {
      v11 = v12;
    }

    if (fabs(v11 + -1.0) >= 2.22044605e-16)
    {
      stringByDeletingPathExtension = [toolCopy stringByDeletingPathExtension];
      v14 = [PRSRankingItem tokenizeTitleString:stringByDeletingPathExtension matchOption:8];

      stringByDeletingPathExtension2 = [toolCopy stringByDeletingPathExtension];
      v16 = [PRSRankingItem tokenizeTitleString:stringByDeletingPathExtension2];

      if (![v14 isEqualToString:v8] || (objc_msgSend(v16, "isEqualToString:", v9) & 1) == 0)
      {
        [(PRSRankingItem *)self matchScoreForTokensFromText:v14 withEvaluator:evaluatorCopy];
        v18 = v17;
        [(PRSRankingItem *)self matchScoreForTokensFromText:v16 withEvaluator:evaluatorCopy];
        if (v18 >= v19)
        {
          v19 = v18;
        }

        v20 = v19 * 0.9;
        if (v20 > v11)
        {
          v21 = v20;
          v11 = v21;
        }
      }
    }
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

- (float)matchScoreFileName:(id)name withEvaluator:(id)evaluator
{
  nameCopy = name;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v8 = objc_msgSend_count(queryTerms);
  if (([queryTerms containsObject:@"keynote"] & 1) != 0 || (objc_msgSend(queryTerms, "containsObject:", @"document") & 1) != 0 || (objc_msgSend(queryTerms, "containsObject:", @"file") & 1) != 0 || (objc_msgSend(queryTerms, "containsObject:", @"keynotes") & 1) != 0 || (objc_msgSend(queryTerms, "containsObject:", @"documents") & 1) != 0 || objc_msgSend(queryTerms, "containsObject:", @"files"))
  {
    --v8;
  }

  v9 = 0.0;
  if ([nameCopy length] && v8)
  {
    v10 = [PRSRankingItem tokenizeTitleString:nameCopy];
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __60__PRSRankingItem_Scoring__matchScoreFileName_withEvaluator___block_invoke;
    v20[3] = &unk_1E8596B38;
    v20[4] = &v21;
    v20[5] = v8;
    [PRSRankingItem matchScoreTokensFromText:v10 withEvaluator:evaluatorCopy withHandler:v20];
    v9 = v22[6];
    if (fabs(v9 + -1.0) >= 2.22044605e-16)
    {
      stringByDeletingPathExtension = [nameCopy stringByDeletingPathExtension];
      v12 = [PRSRankingItem tokenizeTitleString:stringByDeletingPathExtension];

      if ([v12 isEqualToString:v10])
      {
        v9 = v22[6];
      }

      else
      {
        v16 = 0;
        v17 = &v16;
        v18 = 0x2020000000;
        v19 = 0;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __60__PRSRankingItem_Scoring__matchScoreFileName_withEvaluator___block_invoke_2;
        v15[3] = &unk_1E8596B38;
        v15[4] = &v16;
        v15[5] = v8;
        [PRSRankingItem matchScoreTokensFromText:v12 withEvaluator:evaluatorCopy withHandler:v15];
        v13 = v17[6] * 0.9;
        if (v13 <= v22[6])
        {
          v9 = v22[6];
        }

        else
        {
          v9 = v13;
        }

        _Block_object_dispose(&v16, 8);
      }
    }

    _Block_object_dispose(&v21, 8);
  }

  return v9;
}

float __60__PRSRankingItem_Scoring__matchScoreFileName_withEvaluator___block_invoke(uint64_t a1, float result, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = *(a1 + 40);
  if (v8 <= a8)
  {
    v9 = result;
    v10 = fmin(a4, 4.0);
    if (v10 <= v8)
    {
      v10 = v8;
    }

    result = v9 / v10;
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (a5)
    {
      v11 = *(*(a1 + 32) + 8);
      result = fmin(*(v11 + 24) * 1.2, 1.0);
      *(v11 + 24) = result;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

float __60__PRSRankingItem_Scoring__matchScoreFileName_withEvaluator___block_invoke_2(uint64_t a1, float result, uint64_t a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8 = *(a1 + 40);
  if (v8 <= a8)
  {
    v9 = result;
    v10 = fmin(a4, 4.0);
    if (v10 <= v8)
    {
      v10 = v8;
    }

    result = v9 / v10;
    *(*(*(a1 + 32) + 8) + 24) = result;
    if (a5)
    {
      v11 = *(*(a1 + 32) + 8);
      result = fmin(*(v11 + 24) * 1.2, 1.0);
      *(v11 + 24) = result;
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return result;
}

- (float)matchScoreTitle:(id)title withEvaluator:(id)evaluator
{
  titleCopy = title;
  evaluatorCopy = evaluator;
  [(PRSRankingItem *)self matchScoreTitle:titleCopy withEvaluator:evaluatorCopy matchOption:2];
  v9 = v8;
  if (v8 < 0.1)
  {
    queryString = [evaluatorCopy queryString];
    v11 = [queryString rangeOfCharacterFromSet:removeCharsTitle];

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [(PRSRankingItem *)self matchScoreTitle:titleCopy withEvaluator:evaluatorCopy matchOption:0];
      if (v9 < v12)
      {
        v9 = v12;
      }
    }
  }

  return v9;
}

- (float)matchScoreTitle:(id)title withEvaluator:(id)evaluator matchOption:(unsigned __int8)option
{
  titleCopy = title;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v10 = objc_msgSend_count(queryTerms);
  v11 = titleCopy;
  v12 = v11;
  if ((option & 2) != 0)
  {
    v12 = [PRSRankingItem tokenizeTitleString:v11];
  }

  v13 = 0.0;
  if ([v12 length] && v10)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x2020000000;
    v23 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __69__PRSRankingItem_Scoring__matchScoreTitle_withEvaluator_matchOption___block_invoke;
    v15[3] = &unk_1E8596B60;
    v17 = &v20;
    v18 = v10;
    optionCopy = option;
    v16 = v12;
    [PRSRankingItem matchScoreTokensFromText:v16 withEvaluator:evaluatorCopy withHandler:v15];
    v13 = v21[6];

    _Block_object_dispose(&v20, 8);
  }

  return v13;
}

void __69__PRSRankingItem_Scoring__matchScoreTitle_withEvaluator_matchOption___block_invoke(uint64_t a1, void *a2, unint64_t a3, int a4, float a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v13 = a2;
  v14 = *(a1 + 48);
  if (v14 > a8)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    goto LABEL_24;
  }

  if ((*(a1 + 56) & 0x10) != 0)
  {
    v16 = 0.95;
    if (a5 <= 0.0)
    {
      v16 = 0.0;
    }

    *(*(*(a1 + 40) + 8) + 24) = v16;
    v17 = 0.05;
    if (!a4)
    {
      v17 = 0.0;
    }

    v18 = *(*(a1 + 40) + 8);
    v19 = v17 + *(v18 + 24);
    goto LABEL_23;
  }

  if (a3 > 0xA || (*(a1 + 56) & 4) != 0)
  {
    if (v14 <= a3)
    {
      v14 = a3;
    }

    v15 = a5 / v14;
    goto LABEL_21;
  }

  if ((*(a1 + 56) & 2) != 0)
  {
    goto LABEL_18;
  }

  v22 = v13;
  if ([*(a1 + 32) composedLength] <= 0x32)
  {
    v14 = *(a1 + 48);
    v13 = v22;
LABEL_18:
    v20 = fmin(a3, 4.0);
    if (v20 <= v14)
    {
      v20 = v14;
    }

    v15 = a5 / v20;
    goto LABEL_21;
  }

  v15 = a5 * 0.1;
  v13 = v22;
LABEL_21:
  *(*(*(a1 + 40) + 8) + 24) = v15;
  if (!a4)
  {
    goto LABEL_24;
  }

  v18 = *(*(a1 + 40) + 8);
  v19 = fmin(*(v18 + 24) * 1.4, 1.0);
LABEL_23:
  v21 = v19;
  *(v18 + 24) = v21;
LABEL_24:
}

- (float)matchScoreSettings:(id)settings withEvaluator:(id)evaluator matchOption:(unsigned __int8)option
{
  settingsCopy = settings;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v10 = objc_msgSend_count(queryTerms);
  v11 = 0.0;
  if ([settingsCopy length] && v10)
  {
    v12 = settingsCopy;
    if ((option & 2) != 0)
    {
      v13 = [PRSRankingItem tokenizeTitleString:v12];

      v12 = v13;
    }

    if ([v12 length])
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x2020000000;
      v24 = 0;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __72__PRSRankingItem_Scoring__matchScoreSettings_withEvaluator_matchOption___block_invoke;
      v15[3] = &unk_1E8596B88;
      v19 = &v21;
      v20 = v10;
      v16 = evaluatorCopy;
      v17 = v12;
      v18 = queryTerms;
      [PRSRankingItem matchScoreTokensFromText:v17 withEvaluator:v16 withHandler:v15];
      v11 = v22[6];

      _Block_object_dispose(&v21, 8);
    }
  }

  return v11;
}

void __72__PRSRankingItem_Scoring__matchScoreSettings_withEvaluator_matchOption___block_invoke(uint64_t a1, void *a2, unint64_t a3, int a4, int a5, int a6, unint64_t a7, float a8)
{
  v14 = a2;
  v15 = *(a1 + 64);
  if (v15 <= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = *(a1 + 64);
  }

  *(*(*(a1 + 56) + 8) + 24) = a8 / v16;
  v35 = v14;
  if (v15 > a7 || *(*(*(a1 + 56) + 8) + 24) < 0.1)
  {
    v17 = [*(a1 + 32) queryString];
    v18 = [v17 lowercaseString];

    [*(a1 + 40) rangeOfString:v18];
    v20 = v19;
    if ([*(a1 + 40) rangeOfString:@" "] == 0x7FFFFFFFFFFFFFFFLL)
    {
      v21 = 0;
      v22 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v23 = [*(a1 + 40) stringByReplacingOccurrencesOfString:@" " withString:&stru_1F556FE60];
      v22 = [v23 rangeOfString:v18];
      v21 = v24;
    }

    if (v22 == 0x7FFFFFFFFFFFFFFFLL)
    {
      if ([v18 rangeOfString:@" "] == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_15:

        v15 = *(a1 + 64);
        v14 = v35;
        goto LABEL_16;
      }

      v25 = [v18 stringByReplacingOccurrencesOfString:@" " withString:&stru_1F556FE60];
      v22 = [*(a1 + 40) rangeOfString:v25];
      v21 = v26;
    }

    if (!v22 && v21 > v20)
    {
      *(*(*(a1 + 56) + 8) + 24) = 1062836634;

      v14 = v35;
      goto LABEL_29;
    }

    goto LABEL_15;
  }

LABEL_16:
  if (v15 != 1 || *(*(*(a1 + 56) + 8) + 24) >= 1.0)
  {
LABEL_27:
    if (!a4)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v27 = [*(a1 + 48) objectAtIndexedSubscript:0];
  v28 = [v27 composedLength];

  if (a8 < 0.2 && v28 <= 2)
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
    v14 = v35;
    goto LABEL_27;
  }

  if (a5)
  {
    v14 = v35;
    if (a3 == 1 && v28 >= 3)
    {
      v30 = *(*(a1 + 56) + 8);
      v31 = 1060320051;
    }

    else
    {
      v30 = *(*(a1 + 56) + 8);
      if (v28 < 4)
      {
        v31 = 1053609165;
      }

      else
      {
        v31 = 1059984507;
      }
    }
  }

  else
  {
    v30 = *(*(a1 + 56) + 8);
    v14 = v35;
    if (a6)
    {
      if (v28 < 4)
      {
        v31 = 1050253722;
      }

      else
      {
        v31 = 1058642330;
      }
    }

    else if (v28 < 4)
    {
      v31 = 1045220557;
    }

    else
    {
      v31 = 1056964608;
    }
  }

  *(v30 + 24) = v31;
  if (a4)
  {
LABEL_28:
    v32 = *(*(a1 + 56) + 8);
    v33 = fmin(*(v32 + 24) * 1.2, 1.0);
    *(v32 + 24) = v33;
  }

LABEL_29:
}

+ (float)matchScoreServerCompletion:(id)completion withEvaluator:(id)evaluator
{
  completionCopy = completion;
  evaluatorCopy = evaluator;
  queryTerms = [evaluatorCopy queryTerms];
  v8 = objc_msgSend_count(queryTerms);
  v9 = 0.0;
  if ([completionCopy length] && v8)
  {
    v28 = 0;
    v29 = &v28;
    v30 = 0x3032000000;
    v31 = __Block_byref_object_copy__8;
    v32 = __Block_byref_object_dispose__8;
    [MEMORY[0x1E695DF70] arrayWithCapacity:v8];
    v33 = v10 = 0;
    do
    {
      [v29[5] insertObject:&unk_1F55B4488 atIndex:v10++];
    }

    while (v8 != v10);
    language = [evaluatorCopy language];
    if (language)
    {
      language2 = [evaluatorCopy language];
      if ([language2 hasPrefix:@"zh"])
      {
        v13 = 0;
      }

      else
      {
        language3 = [evaluatorCopy language];
        if ([language3 hasPrefix:@"ja"])
        {
          v13 = 0;
        }

        else
        {
          language4 = [evaluatorCopy language];
          v13 = [language4 hasPrefix:@"ko"] ^ 1;
        }
      }
    }

    else
    {
      v13 = 1;
    }

    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __68__PRSRankingItem_Scoring__matchScoreServerCompletion_withEvaluator___block_invoke;
    v27[3] = &unk_1E8596BB0;
    v27[4] = &v28;
    v27[5] = v8;
    [evaluatorCopy evaluateAttribute:completionCopy ignoreSubtokens:v13 strongCompounds:1 skipTranscriptions:0 withHandler:v27];
    v16 = 0;
    while (1)
    {
      v17 = [v29[5] objectAtIndexedSubscript:v16];
      intValue = [v17 intValue];

      v9 = 0.0;
      if (intValue == -1)
      {
        break;
      }

      v19 = v29[5];
      if (v16)
      {
        v20 = [v19 objectAtIndexedSubscript:v16 - 1];
        intValue2 = [v20 intValue];
        v22 = [v29[5] objectAtIndexedSubscript:v16];
        intValue3 = [v22 intValue];

        if (intValue2 + 1 != intValue3)
        {
          break;
        }
      }

      else
      {
        v24 = [v19 objectAtIndexedSubscript:0];
        intValue4 = [v24 intValue];

        if (intValue4)
        {
          break;
        }
      }

      if (v8 == ++v16)
      {
        v9 = 0.45;
        break;
      }
    }

    _Block_object_dispose(&v28, 8);
  }

  return v9;
}

void __68__PRSRankingItem_Scoring__matchScoreServerCompletion_withEvaluator___block_invoke(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a2 & 5) == 1)
  {
    if ((a2 & 2) != 0 || ((v10 = *(a1 + 40), v10 >= 2) ? (v11 = v10 - 1 == a6) : (v11 = 0), v11))
    {
      v12 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:{a6, a4, a5}];
      v13 = [v12 intValue];

      if (v13 != -1)
      {
        v19 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:a6];
        v14 = [v19 intValue];
        if (!a6 || v14 == -1)
        {
LABEL_14:

          return;
        }

        v15 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:a6];
        v16 = [v15 intValue];
        v17 = [*(*(*(a1 + 32) + 8) + 40) objectAtIndexedSubscript:a6 - 1];
        v18 = v16 - [v17 intValue];

        if (v18 == 1)
        {
          return;
        }
      }

      v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
      [*(*(*(a1 + 32) + 8) + 40) setObject:v19 atIndexedSubscript:a6];
      goto LABEL_14;
    }
  }
}

+ (void)matchScoreTokensFromText:(id)text withEvaluator:(id)evaluator withHandler:(id)handler
{
  textCopy = text;
  evaluatorCopy = evaluator;
  handlerCopy = handler;
  queryTerms = [evaluatorCopy queryTerms];
  v11 = objc_msgSend_count(queryTerms);
  v51 = 0;
  v52 = &v51;
  v53 = 0x2020000000;
  v54 = 0;
  v45 = 0;
  v46 = &v45;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__8;
  v49 = __Block_byref_object_dispose__8;
  v50 = [MEMORY[0x1E695DF70] arrayWithCapacity:v11];
  if (v11)
  {
    for (i = 0; i != v11; ++i)
    {
      [v46[5] insertObject:&unk_1F55B4488 atIndex:i];
    }
  }

  v13 = [textCopy length];
  if (v11 && v13)
  {
    v36 = queryTerms;
    v37 = textCopy;
    language = [evaluatorCopy language];
    v35 = handlerCopy;
    if (language)
    {
      language2 = [evaluatorCopy language];
      if ([language2 hasPrefix:@"zh"])
      {
        v16 = 0;
      }

      else
      {
        language3 = [evaluatorCopy language];
        if ([language3 hasPrefix:@"ja"])
        {
          v16 = 0;
        }

        else
        {
          language4 = [evaluatorCopy language];
          v16 = [language4 hasPrefix:@"ko"] ^ 1;
        }
      }
    }

    else
    {
      v16 = 1;
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __78__PRSRankingItem_Scoring__matchScoreTokensFromText_withEvaluator_withHandler___block_invoke;
    v38[3] = &unk_1E8596BD8;
    v44 = v11;
    v42 = &v45;
    v39 = evaluatorCopy;
    v40 = textCopy;
    v43 = &v51;
    v41 = queryTerms;
    v19 = [v39 evaluateAttribute:v40 ignoreSubtokens:v16 strongCompounds:1 skipTranscriptions:0 withHandler:v38];
    v20 = 0;
    v21 = 0;
    v22 = 0;
    do
    {
      v23 = [v46[5] objectAtIndexedSubscript:v20];
      v24 = [v23 intValue] == 0;

      v25 = [v46[5] objectAtIndexedSubscript:v20];
      v21 |= v24;
      v26 = [v25 intValue] + 1 == v19;

      v22 |= v26;
      ++v20;
    }

    while (v11 != v20);
    v27 = [v46[5] objectAtIndexedSubscript:0];
    intValue = [v27 intValue];
    v34 = evaluatorCopy;

    v29 = intValue != -1;
    if (v11 < 2)
    {
      v31 = 0;
    }

    else
    {
      v30 = 1;
      v31 = 1;
      do
      {
        v32 = [v46[5] objectAtIndexedSubscript:v30];
        intValue2 = [v32 intValue];

        if (intValue2 == -1 || intValue != -1 && intValue2 - intValue != 1)
        {
          v31 = 0;
        }

        v29 += intValue2 >= 0;
        ++v30;
        intValue = intValue2;
      }

      while (v11 != v30);
    }

    handlerCopy = v35;
    (*(v35 + 2))(v35, v46[5], v19, v31 & 1, v21 & 1, v22 & 1, v29, v52[6]);
    evaluatorCopy = v34;

    queryTerms = v36;
    textCopy = v37;
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, v46[5], 0, 0, 0, 0, 0, v52[6]);
  }

  _Block_object_dispose(&v45, 8);

  _Block_object_dispose(&v51, 8);
}

void __78__PRSRankingItem_Scoring__matchScoreTokensFromText_withEvaluator_withHandler___block_invoke(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v10 = *(a1 + 72) - 1;
  if ((a2 & 7) == 1 && v10 == a6)
  {
    v18 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:{a6, a4, a5}];
    v19 = [v18 intValue];

    if (v19 == -1)
    {
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
      [*(*(*(a1 + 56) + 8) + 40) setObject:v25 atIndexedSubscript:a6];

      v26 = [*(a1 + 32) queryString];
      v27 = [v26 containsCJK];
      v28 = [*(a1 + 40) containsCJK];

      if (v27 == v28)
      {
        v31 = [*(a1 + 48) objectAtIndexedSubscript:a6];
        v32 = [v31 composedLength];
        v33 = a4;
      }

      else
      {
        v29 = [*(a1 + 32) queryString];
        v30 = [v29 containsCJK];

        if (v30)
        {
          v31 = [*(a1 + 48) objectAtIndexedSubscript:a6];
          v32 = [v31 composedLength];
          v33 = a4 / 3.6;
        }

        else
        {
          if (![*(a1 + 40) containsCJK])
          {
            return;
          }

          v31 = [*(a1 + 48) objectAtIndexedSubscript:a6];
          v32 = [v31 composedLength];
          v33 = a4 * 3.6;
        }
      }

      v34 = v32 / v33;

      v35 = v34;
      if (v34 > 1.0)
      {
        v35 = 1.0;
      }

      v15 = *(*(a1 + 64) + 8);
      v16 = v35 + *(v15 + 24);
      goto LABEL_24;
    }
  }

  else
  {
    if ((a2 & 7) != 3 || v10 <= a6)
    {
      return;
    }

    v12 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:{a6, a4, a5}];
    v13 = [v12 intValue];

    if (v13 == -1)
    {
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
      [*(*(*(a1 + 56) + 8) + 40) setObject:v14 atIndexedSubscript:a6];

      v15 = *(*(a1 + 64) + 8);
      v16 = *(v15 + 24) + 1.0;
LABEL_24:
      *(v15 + 24) = v16;
      return;
    }
  }

  v36 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:a6];
  v20 = [v36 intValue];
  if (a6 && v20 != -1)
  {
    v21 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:a6];
    v22 = [v21 intValue];
    v23 = [*(*(*(a1 + 56) + 8) + 40) objectAtIndexedSubscript:a6 - 1];
    v24 = v22 - [v23 intValue];

    if (v24 == 1)
    {
      return;
    }

    v36 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a7];
    [*(*(*(a1 + 56) + 8) + 40) setObject:v36 atIndexedSubscript:a6];
  }
}

- (float)matchScoreForApplicationsWithEvaluator:(id)evaluator
{
  v63 = *MEMORY[0x1E69E9840];
  evaluatorCopy = evaluator;
  v5 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
  v6 = 0.0;
  v7 = 0.0;
  if ([v5 length])
  {
    [(PRSRankingItem *)self matchScoreAppName:v5 withEvaluator:evaluatorCopy];
    v7 = v8;
  }

  firstMatchedAltName = [(PRSRankingItem *)self firstMatchedAltName];
  v10 = [firstMatchedAltName length];

  if (v10)
  {
    queryString = [evaluatorCopy queryString];
    v12 = [queryString length];
    firstMatchedAltName2 = [(PRSRankingItem *)self firstMatchedAltName];
    v14 = (v12 / [firstMatchedAltName2 length]);

    firstMatchedAltName3 = [(PRSRankingItem *)self firstMatchedAltName];
    if (v14 <= 0.1)
    {
      [(PRSRankingItem *)self matchScoreTitle:firstMatchedAltName3 withEvaluator:evaluatorCopy matchOption:0];
    }

    else
    {
      [(PRSRankingItem *)self matchScoreAppName:firstMatchedAltName3 withEvaluator:evaluatorCopy];
    }

    v6 = v16;

    v18 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x185uLL);
    v17 = 0.6;
    if ([v5 length])
    {
      if ([v5 startCJK])
      {
        if ([v18 length])
        {
          queryString2 = [evaluatorCopy queryString];
          composedLength = [queryString2 composedLength];

          if (composedLength >= 4)
          {
            [(PRSRankingItem *)self matchScoreTitle:v18 withEvaluator:evaluatorCopy matchOption:0];
            v22 = v21;
            v23 = v22 * 0.4 + 0.600000024;
            if (v23 > 1.0)
            {
              v23 = 1.0;
            }

            v24 = v23;
            if (v22 >= 0.1)
            {
              v17 = v24;
            }

            else
            {
              v17 = 0.6;
            }
          }
        }
      }
    }
  }

  else
  {
    v17 = 0.6;
  }

  isCJK = [evaluatorCopy isCJK];
  if (isCJK)
  {
    v26 = 0.59;
  }

  else
  {
    v26 = 0.2;
  }

  if ((isCJK & (v17 < 0.91)) != 0)
  {
    v17 = 0.91;
  }

  isKindOfClass = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x3FuLL);
  v28 = isKindOfClass;
  v29 = 0.0;
  if (isKindOfClass)
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v30 = v28;
      if ([v30 composedLength] >= 2)
      {
        v31 = [v30 componentsSeparatedByString:{@", "}];
        if (objc_msgSend_count(v31))
        {
          v32 = objc_msgSend_count(v31);
          v33 = v32 >= 0x1E ? 30 : v32;
          if (v32)
          {
            v34 = 0;
            while (1)
            {
              v35 = [v31 objectAtIndexedSubscript:v34];
              if ([v35 composedLength] >= 2 && (!v5 || (objc_msgSend(v5, "localizedCaseInsensitiveContainsString:", v35) & 1) == 0))
              {
                [(PRSRankingItem *)self matchScoreAppName:v35 withEvaluator:evaluatorCopy matchOption:0];
                if (v36 >= 1.0)
                {
                  break;
                }
              }

              if (v33 == ++v34)
              {
                goto LABEL_39;
              }
            }

            v29 = 1.0;
          }
        }

LABEL_39:
      }
    }
  }

  v37 = v6 * v17;
  if (v7 >= (v6 * v17))
  {
    v37 = v7;
  }

  if (v37 >= (v26 * v29))
  {
    v38 = v37;
  }

  else
  {
    v38 = v26 * v29;
  }

  if (SSEnableAppSearchV2(isKindOfClass))
  {
    queryString3 = [evaluatorCopy queryString];
    if ((isAppPrefixMatch() & 1) == 0 && v38 < 0.5)
    {
      lowercaseString = [v5 lowercaseString];
      [evaluatorCopy isCJK];
      appErrorScore();
      v42 = v41;

      if (v42 > 0.9)
      {
        [(PRSRankingItem *)self setSpellCorrectedApp:1, v42];
        v43 = v42 + -0.5;
        if (v38 < v43)
        {
          v38 = v43;
        }

        v44 = SSGeneralLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          v45 = SSRedactString(queryString3, 1);
          v46 = SSRedactString(v5, 1);
          *buf = 138413058;
          v56 = v45;
          v57 = 2112;
          v58 = v46;
          v59 = 2048;
          v60 = v43;
          v61 = 2048;
          v62 = v38;
          _os_log_impl(&dword_1D9F69000, v44, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <AppSpellCorrection> query: %@, app name: %@, matchScore: %f, finalScore = %f", buf, 0x2Au);
        }
      }
    }
  }

  v47 = v38;
  if (v38 < 0.1)
  {
    v48 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x47uLL);
    if (v48)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v49 = v48;
        if ([v49 length] && objc_msgSend(v5, "length"))
        {
          v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v5, v49];
          [(PRSRankingItem *)self matchScoreAppName:v50 withEvaluator:evaluatorCopy matchOption:2];
          if (v51 > 0.9)
          {
            v38 = v51;
          }
        }
      }
    }
  }

  *&v47 = v38;
  [(PRSRankingItem *)self setKeywordMatchScore:v47];
  [(PRSRankingItem *)self keywordMatchScore];
  v53 = v52;

  return v53;
}

- (float)matchScoreForContactsWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator
{
  evaluatorCopy = evaluator;
  parsedEvaluatorCopy = parsedEvaluator;
  v8 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
  v9 = 0.0;
  v10 = 0.0;
  if ([v8 length])
  {
    [(PRSRankingItem *)self matchScoreContactsName:v8 withEvaluator:evaluatorCopy];
    v10 = v11;
    if (v11 < 2.2204e-16)
    {
      [(PRSRankingItem *)self matchScoreContactsName:v8 withEvaluator:parsedEvaluatorCopy];
      v10 = v12;
    }
  }

  firstMatchedAltName = [(PRSRankingItem *)self firstMatchedAltName];
  v14 = [firstMatchedAltName length];

  if (v14)
  {
    firstMatchedAltName2 = [(PRSRankingItem *)self firstMatchedAltName];
    [(PRSRankingItem *)self matchScoreContactsName:firstMatchedAltName2 withEvaluator:evaluatorCopy];
    v9 = v16;

    if (v9 < 2.2204e-16)
    {
      firstMatchedAltName3 = [(PRSRankingItem *)self firstMatchedAltName];
      [(PRSRankingItem *)self matchScoreContactsName:firstMatchedAltName3 withEvaluator:parsedEvaluatorCopy];
      v9 = v18;
    }
  }

  v19 = v9 * 0.95;
  if (v19 <= v10)
  {
    *&v19 = v10;
  }

  else
  {
    *&v19 = v19;
  }

  [(PRSRankingItem *)self setKeywordMatchScore:v19];
  [(PRSRankingItem *)self keywordMatchScore];
  v21 = v20;

  return v21;
}

- (float)matchScoreForSafariWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  parsedEvaluatorCopy = parsedEvaluator;
  v26 = 0;
  SSCompactRankingAttrsGetFloat([(PRSRankingItem *)self attributes], 0x15AuLL, &v26 + 1);
  SSCompactRankingAttrsGetFloat([(PRSRankingItem *)self attributes], 0x41uLL, &v26);
  v10 = *(&v26 + 1);
  if (*(&v26 + 1) < *&v26)
  {
    v10 = *&v26;
  }

  if (v10 > 0.0 || (-[PRSRankingItem contentType](self, "contentType"), v11 = objc_claimAutoreleasedReturnValue(), v12 = [v11 isEqualToString:@"com.apple.safari.bookmark"], v11, v13 = 0.0, v12))
  {
    v14 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xDuLL);
    v15 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xCuLL);
    v16 = 0.0;
    v13 = 0.0;
    if ([v14 length])
    {
      if ([(PRSRankingItem *)self isSearchResultPage:v14])
      {
LABEL_18:

        goto LABEL_19;
      }

      [(PRSRankingItem *)self matchScoreURLString:v14 withEvaluator:evaluatorCopy];
      v13 = *&v17;
      if (*&v17 < 2.2204e-16)
      {
        [(PRSRankingItem *)self matchScoreURLString:v14 withEvaluator:parsedEvaluatorCopy];
        v13 = *&v17;
      }

      *&v17 = v13;
      [(PRSRankingItem *)self setSafariMatchScoreContentURL:v17];
    }

    if ([v15 length])
    {
      [(PRSRankingItem *)self matchScoreTitle:v15 withEvaluator:evaluatorCopy];
      v16 = *&v19;
      if (*&v19 < 2.2204e-16)
      {
        [(PRSRankingItem *)self matchScoreTitle:v15 withEvaluator:parsedEvaluatorCopy];
        v16 = *&v19;
      }

      *&v19 = v16;
      [(PRSRankingItem *)self setSafariMatchScoreTitle:v19];
    }

    if (v13 >= v16)
    {
      *&v18 = v13;
    }

    else
    {
      *&v18 = v16;
    }

    [(PRSRankingItem *)self setKeywordMatchScore:v18];
    [(PRSRankingItem *)self keywordMatchScore];
    [(PRSRankingItem *)self embeddingSimilarity];
    [(PRSRankingItem *)self pommesL1Score];
    bundleIDType = [(PRSRankingItem *)self bundleIDType];
    queryString = [evaluatorCopy queryString];
    language = [evaluatorCopy language];
    chooseTopicality(bundleIDType, 0, clientCopy);
    v24 = v23;

    v13 = v24 * 0.8;
    goto LABEL_18;
  }

LABEL_19:

  return v13;
}

- (float)matchScoreForNotesWithEvaluator:(id)evaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  v7 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
  if ([v7 length])
  {
    [(PRSRankingItem *)self matchScoreTitle:v7 withEvaluator:evaluatorCopy];
  }

  else
  {
    v8 = 0.0;
  }

  [(PRSRankingItem *)self setKeywordMatchScore:v8];
  [(PRSRankingItem *)self keywordMatchScore];
  [(PRSRankingItem *)self embeddingSimilarity];
  [(PRSRankingItem *)self pommesL1Score];
  bundleIDType = [(PRSRankingItem *)self bundleIDType];
  queryString = [evaluatorCopy queryString];
  language = [evaluatorCopy language];
  chooseTopicality(bundleIDType, 0, clientCopy);
  v13 = v12;

  v14 = v13;
  if (v14 >= 0.4)
  {
    queryTerms = [evaluatorCopy queryTerms];
    v17 = objc_msgSend_count(queryTerms);

    if (v17 == 2)
    {
      v15 = 0.8;
      goto LABEL_10;
    }

    queryTerms2 = [evaluatorCopy queryTerms];
    v19 = objc_msgSend_count(queryTerms2);

    if (v19 > 2)
    {
      v15 = 0.9;
      goto LABEL_10;
    }
  }

  v15 = 0.6;
LABEL_10:
  v20 = v15 * v14;

  return v20;
}

- (float)matchScoreForFilesWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  parsedEvaluatorCopy = parsedEvaluator;
  v10 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x35uLL);
  if (![v10 length])
  {
    v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);

    v10 = v11;
  }

  if (clientCopy)
  {
    [(PRSRankingItem *)self matchScoreFileNameForSearchTool:v10 withEvaluator:parsedEvaluatorCopy];
    v13 = v12;
    [(PRSRankingItem *)self setKeywordMatchScore:?];
  }

  else
  {
    [(PRSRankingItem *)self matchScoreFileName:v10 withEvaluator:evaluatorCopy];
    v15 = v14;
    if (v14 < 2.2204e-16)
    {
      [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:evaluatorCopy matchOption:0];
      v15 = v16;
      if (parsedEvaluatorCopy)
      {
        if (v16 == 0.0)
        {
          [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:parsedEvaluatorCopy matchOption:0];
          v15 = v17;
        }
      }
    }

    contentType = [(PRSRankingItem *)self contentType];
    v19 = [contentType isEqualToString:@"public.folder"];

    v20 = 0.8;
    v21 = v15 * 0.8;
    *&v21 = v21;
    if (!v19)
    {
      *&v21 = v15;
    }

    [(PRSRankingItem *)self setKeywordMatchScore:v21];
    [(PRSRankingItem *)self keywordMatchScore];
    v23 = v22;
    [(PRSRankingItem *)self embeddingSimilarity];
    [(PRSRankingItem *)self pommesL1Score];
    v25 = v24;
    bundleIDType = [(PRSRankingItem *)self bundleIDType];
    queryString = [evaluatorCopy queryString];
    language = [evaluatorCopy language];
    _os_feature_enabled_impl();
    _os_feature_enabled_impl();
    _os_feature_enabled_impl();
    if (_os_feature_enabled_impl())
    {
      if ((bundleIDType & 0x200000080) != 0)
      {
        if (v25 >= v23)
        {
          v29 = v25;
        }

        else
        {
          v29 = v23;
        }

        if ((bundleIDType & 0x80) != 0)
        {
          v30 = v23;
        }

        else
        {
          v30 = v29;
        }
      }

      else if (v23 <= 0.0 || (v30 = v23, v25 >= 2.2204e-16))
      {
        if (v23 <= 0.0)
        {
          v30 = v25;
        }

        else
        {
          v30 = v25;
          if ((bundleIDType & 0x20) != 0)
          {
            v30 = v25 * 0.2 + v23 * 0.8;
          }
        }
      }
    }

    else
    {
      v30 = v23;
    }

    if (v30 >= 0.4)
    {
      queryTerms = [evaluatorCopy queryTerms];
      v32 = objc_msgSend_count(queryTerms);

      if (v32 != 2)
      {
        queryTerms2 = [evaluatorCopy queryTerms];
        v34 = objc_msgSend_count(queryTerms2) > 2;

        v20 = dbl_1DA0D59E0[v34];
      }
    }

    else
    {
      v20 = 0.6;
    }

    v13 = v20 * v30;
  }

  return v13;
}

- (float)matchScoreForCalendarWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  parsedEvaluatorCopy = parsedEvaluator;
  v10 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xCuLL);
  v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 5uLL);
  v12 = extractStringFromArray(v11, 0);

  if (![v10 length])
  {
    v14 = 0.0;
LABEL_8:
    v16 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x14uLL);
    if ([v16 length])
    {
      v17 = [v10 stringByAppendingFormat:@" %@", v16];

      [(PRSRankingItem *)self matchScoreTitle:v17 withEvaluator:evaluatorCopy];
      v14 = v18;
      v10 = v17;
    }

    if (parsedEvaluatorCopy && v14 < 2.2204e-16)
    {
      [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:parsedEvaluatorCopy];
      v14 = v19;
    }

    v14 = v14 * 0.5;

    goto LABEL_14;
  }

  [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:evaluatorCopy];
  v14 = v13;
  if (parsedEvaluatorCopy && v13 < 2.2204e-16)
  {
    [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:parsedEvaluatorCopy];
    v14 = v15;
  }

  if (v14 < 2.2204e-16)
  {
    goto LABEL_8;
  }

LABEL_14:
  if ([v12 length])
  {
    [(PRSRankingItem *)self matchScoreContactsName:v12 withEvaluator:evaluatorCopy];
    v21 = v20;
  }

  else
  {
    v21 = 0.0;
  }

  if ([v10 containsCJK])
  {
    if (v14 < 0.4)
    {
      v22 = 0.7;
    }

    else
    {
      queryTerms = [evaluatorCopy queryTerms];
      v24 = objc_msgSend_count(queryTerms);

      if (v24 < 3)
      {
        queryTerms2 = [evaluatorCopy queryTerms];
        v28 = objc_msgSend_count(queryTerms2);

        if (v28 != 2)
        {
          v31 = v14 * 0.75;
          goto LABEL_33;
        }

        v22 = 0.85;
      }

      else
      {
        v22 = 0.95;
      }
    }
  }

  else
  {
    if (v14 >= 0.4)
    {
      queryTerms3 = [evaluatorCopy queryTerms];
      v26 = objc_msgSend_count(queryTerms3);

      if (v26 >= 3)
      {
        v22 = 0.9;
        goto LABEL_32;
      }

      queryTerms4 = [evaluatorCopy queryTerms];
      v30 = objc_msgSend_count(queryTerms4);

      if (v30 == 2)
      {
        v22 = 0.8;
        goto LABEL_32;
      }
    }

    v22 = 0.6;
  }

LABEL_32:
  v31 = v14 * v22;
LABEL_33:
  v32 = fmin(v31 + v21 * 0.2, 1.0);
  *&v32 = v32;
  [(PRSRankingItem *)self setKeywordMatchScore:v32];
  [(PRSRankingItem *)self keywordMatchScore];
  [(PRSRankingItem *)self embeddingSimilarity];
  [(PRSRankingItem *)self pommesL1Score];
  bundleIDType = [(PRSRankingItem *)self bundleIDType];
  queryString = [evaluatorCopy queryString];
  language = [evaluatorCopy language];
  chooseTopicality(bundleIDType, 0, clientCopy);
  v37 = v36;

  return v37;
}

- (float)matchScoreForMailWithEvaluator:(id)evaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  v7 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 4uLL);
  v8 = 0.0;
  v9 = 0.0;
  if ([v7 length])
  {
    [(PRSRankingItem *)self matchScoreTitle:v7 withEvaluator:evaluatorCopy matchOption:6];
    v9 = v10 * 0.55;
  }

  v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 5uLL);
  v12 = extractStringFromArray(v11, 0);

  if ([v12 length])
  {
    [(PRSRankingItem *)self matchScoreContactsName:v12 withEvaluator:evaluatorCopy];
    v8 = v13 * 0.3;
  }

  v14 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x23uLL);
  v15 = extractStringFromArray(v14, 0);

  if ([v15 length])
  {
    [(PRSRankingItem *)self matchScoreContactsEmailAddress:v15 withEvaluator:evaluatorCopy];
    v17 = v16 * 0.55;
  }

  else
  {
    v17 = 0.0;
  }

  if (v9 >= v8)
  {
    v18 = v9;
  }

  else
  {
    v18 = v8;
  }

  if (v17 < v18)
  {
    v17 = v18;
  }

  v19 = fmin(v17, 1.0);
  *&v19 = v19;
  [(PRSRankingItem *)self setKeywordMatchScore:v19];
  [(PRSRankingItem *)self keywordMatchScore];
  [(PRSRankingItem *)self embeddingSimilarity];
  [(PRSRankingItem *)self pommesL1Score];
  bundleIDType = [(PRSRankingItem *)self bundleIDType];
  queryString = [evaluatorCopy queryString];
  language = [evaluatorCopy language];
  chooseTopicality(bundleIDType, 0, clientCopy);
  v24 = v23;

  queryTerms = [evaluatorCopy queryTerms];
  v26 = objc_msgSend_count(queryTerms);

  if (v26 >= 2)
  {
    queryTerms2 = [evaluatorCopy queryTerms];
    v29 = objc_msgSend_count(queryTerms2);

    v27 = 0.8;
    if (v29 != 2)
    {
      v27 = 1.0;
    }
  }

  else
  {
    v27 = 0.6;
  }

  v30 = fminf(v24 * v27, 1.0);

  return v30;
}

- (float)matchScoreForMessagesWithEvaluator:(id)evaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  [(PRSRankingItem *)self setKeywordMatchScore:0.0];
  [(PRSRankingItem *)self keywordMatchScore];
  [(PRSRankingItem *)self embeddingSimilarity];
  [(PRSRankingItem *)self pommesL1Score];
  bundleIDType = [(PRSRankingItem *)self bundleIDType];
  queryString = [evaluatorCopy queryString];
  language = [evaluatorCopy language];
  chooseTopicality(bundleIDType, 0, clientCopy);
  v11 = v10;

  queryTerms = [evaluatorCopy queryTerms];
  v13 = objc_msgSend_count(queryTerms);

  if (v13 >= 2)
  {
    queryTerms2 = [evaluatorCopy queryTerms];
    v16 = objc_msgSend_count(queryTerms2);

    v14 = 0.8;
    if (v16 != 2)
    {
      v14 = 1.0;
    }
  }

  else
  {
    v14 = 0.6;
  }

  v17 = fminf(v11 * v14, 1.0);

  return v17;
}

+ (void)parsePreferenceIdentity:(id)identity withHandler:(id)handler
{
  identityCopy = identity;
  handlerCopy = handler;
  if ([identityCopy length] > 0xB)
  {
    v8 = [identityCopy substringFromIndex:6];
    v9 = [v8 componentsSeparatedByString:@"root="];

    if (objc_msgSend_count(v9) == 2 && ([v9 objectAtIndexedSubscript:1], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "length"), v10, v11))
    {
      v12 = [v9 objectAtIndexedSubscript:1];
      v13 = [v12 componentsSeparatedByString:@"&path="];

      if (objc_msgSend_count(v13))
      {
        v7 = [v13 objectAtIndexedSubscript:0];
        if (objc_msgSend_count(v13) < 2)
        {
          v6 = &stru_1F556FE60;
        }

        else
        {
          v6 = [v13 objectAtIndexedSubscript:1];
        }

        handlerCopy[2](handlerCopy, v7, v6);
      }

      else
      {
        v6 = &stru_1F556FE60;
        handlerCopy[2](handlerCopy, &stru_1F556FE60, &stru_1F556FE60);
        v7 = &stru_1F556FE60;
      }
    }

    else
    {
      v6 = &stru_1F556FE60;
      handlerCopy[2](handlerCopy, &stru_1F556FE60, &stru_1F556FE60);
      v7 = &stru_1F556FE60;
    }
  }

  else
  {
    v6 = &stru_1F556FE60;
    handlerCopy[2](handlerCopy, &stru_1F556FE60, &stru_1F556FE60);
    v7 = &stru_1F556FE60;
  }
}

+ (int)preferencePriorityFromIdentity:(id)identity
{
  identityCopy = identity;
  if (preferencePriorityFromIdentity__onceToken != -1)
  {
    +[PRSRankingItem(Scoring) preferencePriorityFromIdentity:];
  }

  if ([identityCopy hasPrefix:preferencePriorityFromIdentity__prefsString])
  {
    v4 = [PRSRankingItem preferencePriorityFromIdentityWithPrefixPrefs:identityCopy];
  }

  else
  {
    if (![identityCopy hasPrefix:preferencePriorityFromIdentity__settingsNavigationString])
    {
      v5 = 6;
      goto LABEL_9;
    }

    v4 = [PRSRankingItem preferencePriorityFromIdentityWithPrefixSettingsNavigation:identityCopy];
  }

  v5 = v4;
LABEL_9:

  return v5;
}

void __58__PRSRankingItem_Scoring__preferencePriorityFromIdentity___block_invoke()
{
  v0 = preferencePriorityFromIdentity__prefsString;
  preferencePriorityFromIdentity__prefsString = @"prefs:";

  v1 = preferencePriorityFromIdentity__settingsNavigationString;
  preferencePriorityFromIdentity__settingsNavigationString = @"settings-navigation://";
}

+ (int)preferencePriorityFromIdentityWithPrefixPrefs:(id)prefs
{
  prefsCopy = prefs;
  if (preferencePriorityFromIdentityWithPrefixPrefs__onceToken != -1)
  {
    +[PRSRankingItem(Scoring) preferencePriorityFromIdentityWithPrefixPrefs:];
  }

  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 6;
  if ([prefsCopy length])
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __73__PRSRankingItem_Scoring__preferencePriorityFromIdentityWithPrefixPrefs___block_invoke_2;
    v6[3] = &unk_1E8596C00;
    v6[4] = &v7;
    [PRSRankingItem parsePreferenceIdentity:prefsCopy withHandler:v6];
  }

  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __73__PRSRankingItem_Scoring__preferencePriorityFromIdentityWithPrefixPrefs___block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"MOBILE_DATA_SETTINGS_ID", @"DO_NOT_DISTURB", @"ControlCenter", @"BATTERY_USAGE", @"DISPLAY", @"Phone", 0}];
  v1 = preferencePriorityFromIdentityWithPrefixPrefs__setOfImportantFirstPrioritySettingRoots;
  preferencePriorityFromIdentityWithPrefixPrefs__setOfImportantFirstPrioritySettingRoots = v0;

  preferencePriorityFromIdentityWithPrefixPrefs__setOfDemotedFirstPrioritySettingRoots = [MEMORY[0x1E695DFD8] setWithObjects:{@"IBOOKS", @"SHORTCUTS", @"SOUND", 0}];

  return MEMORY[0x1EEE66BB8]();
}

void __73__PRSRankingItem_Scoring__preferencePriorityFromIdentityWithPrefixPrefs___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  if ([v16 length])
  {
    if ([v5 length])
    {
      if (([v16 isEqualToString:@"General"] & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"APPLE_ACCOUNT"))
      {
        if (([v5 containsString:@"#"] & 1) == 0 && !objc_msgSend(v5, "containsString:", @"/") && (objc_msgSend(v5, "isEqualToString:", @"REGULATORY") & 1) == 0 && !objc_msgSend(v5, "isEqualToString:", @"LEGAL_AND_REGULATORY"))
        {
          v6 = *(*(a1 + 32) + 8);
LABEL_33:
          v11 = 1;
          goto LABEL_17;
        }

        goto LABEL_16;
      }

      if ([v5 containsString:@"#"])
      {
        v12 = [v5 containsString:@"/"];
        v6 = *(*(a1 + 32) + 8);
        if (v12)
        {
          v11 = 6;
        }

        else
        {
          v11 = 5;
        }

        goto LABEL_17;
      }

      v13 = [preferencePriorityFromIdentityWithPrefixPrefs__setOfImportantFirstPrioritySettingRoots containsObject:v16];
      v6 = *(*(a1 + 32) + 8);
      if (v13)
      {
        v11 = 2;
        goto LABEL_17;
      }
    }

    else
    {
      if ([v16 containsString:@"#"])
      {
        v7 = [v16 componentsSeparatedByString:@"#"];
        v8 = [v7 firstObject];

        if ([v8 isEqualToString:@"ROOT"])
        {
          v9 = *(*(a1 + 32) + 8);
          v10 = 1;
        }

        else if ([preferencePriorityFromIdentityWithPrefixPrefs__setOfImportantFirstPrioritySettingRoots containsObject:v8])
        {
          v9 = *(*(a1 + 32) + 8);
          v10 = 2;
        }

        else
        {
          v14 = [preferencePriorityFromIdentityWithPrefixPrefs__setOfDemotedFirstPrioritySettingRoots containsObject:v8];
          v9 = *(*(a1 + 32) + 8);
          if (v14)
          {
            v10 = 4;
          }

          else
          {
            v10 = 3;
          }
        }

        *(v9 + 24) = v10;
        v16 = v8;
        goto LABEL_18;
      }

      if (([v16 isEqualToString:@"STORE"] & 1) != 0 || (objc_msgSend(v16, "isEqualToString:", @"GAMECENTER") & 1) != 0 || objc_msgSend(v16, "isEqualToString:", @"WEATHER"))
      {
LABEL_16:
        v6 = *(*(a1 + 32) + 8);
        v11 = 3;
LABEL_17:
        *(v6 + 24) = v11;
        goto LABEL_18;
      }

      v15 = [v16 isEqualToString:@"EXPOSURE_NOTIFICATION"];
      v6 = *(*(a1 + 32) + 8);
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    v11 = 4;
    goto LABEL_17;
  }

LABEL_18:
}

+ (int)preferencePriorityFromIdentityWithPrefixSettingsNavigation:(id)navigation
{
  v42 = *MEMORY[0x1E69E9840];
  navigationCopy = navigation;
  if (preferencePriorityFromIdentityWithPrefixSettingsNavigation__onceToken != -1)
  {
    +[PRSRankingItem(Scoring) preferencePriorityFromIdentityWithPrefixSettingsNavigation:];
  }

  if ([navigationCopy length])
  {
    v4 = [MEMORY[0x1E695DFF8] URLWithString:navigationCopy];
    v5 = v4;
    if (v4 && ([v4 scheme], (v6 = objc_claimAutoreleasedReturnValue()) != 0) && (v7 = v6, objc_msgSend(v5, "host"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, v8))
    {
      host = [v5 host];
      if ([host hasPrefix:preferencePriorityFromIdentityWithPrefixSettingsNavigation__settingsURLPrefix] && (v10 = objc_msgSend(host, "length"), v10 > objc_msgSend(preferencePriorityFromIdentityWithPrefixSettingsNavigation__settingsURLPrefix, "length")))
      {
        v11 = [preferencePriorityFromIdentityWithPrefixSettingsNavigation__hostPriorityOverrides objectForKey:host];
        intValue = [v11 intValue];
        if (intValue <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = intValue;
        }

        pathComponents = [v5 pathComponents];
        v15 = objc_msgSend_count(pathComponents);

        v16 = v15 - 2;
        if (v15 >= 2)
        {
          host2 = [v5 host];
          v18 = [host2 isEqualToString:preferencePriorityFromIdentityWithPrefixSettingsNavigation__appSettingsPrefix];

          if (v18)
          {
            v19 = preferencePriorityFromIdentityWithPrefixSettingsNavigation__appPriorityOverrides;
            pathComponents2 = [v5 pathComponents];
            v21 = [pathComponents2 objectAtIndexedSubscript:1];
            v22 = [v19 objectForKey:v21];
            intValue2 = [v22 intValue];
            if (preferencePriorityFromIdentityWithPrefixSettingsNavigation__defaultAppPriority)
            {
              v24 = 2;
            }

            else
            {
              v24 = 0;
            }

            if (intValue2)
            {
              v13 = intValue2;
            }

            else
            {
              v13 = v24;
            }
          }

          else
          {
            v16 = v15 - 1;
          }

          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          pathComponents3 = [v5 pathComponents];
          v27 = [pathComponents3 countByEnumeratingWithState:&v37 objects:v41 count:16];
          if (v27)
          {
            v28 = v27;
            v29 = *v38;
            do
            {
              for (i = 0; i != v28; ++i)
              {
                if (*v38 != v29)
                {
                  objc_enumerationMutation(pathComponents3);
                }

                v16 -= [*(*(&v37 + 1) + 8 * i) isEqualToString:@"root"];
              }

              v28 = [pathComponents3 countByEnumeratingWithState:&v37 objects:v41 count:16];
            }

            while (v28);
          }

          v13 += v16 & ~(v16 >> 31);
        }

        fragment = [v5 fragment];
        if (fragment)
        {
          v32 = fragment;
          fragment2 = [v5 fragment];
          v34 = [fragment2 isEqualToString:@"root"];

          v13 += (v34 & 1) == 0;
        }

        query = [v5 query];

        if (query)
        {
          v25 = v13 + 1;
        }

        else
        {
          v25 = v13;
        }
      }

      else if (preferencePriorityFromIdentityWithPrefixSettingsNavigation__defaultPriority)
      {
        v25 = 6;
      }

      else
      {
        v25 = 0;
      }
    }

    else if (preferencePriorityFromIdentityWithPrefixSettingsNavigation__defaultPriority)
    {
      v25 = 6;
    }

    else
    {
      v25 = 0;
    }
  }

  else if (preferencePriorityFromIdentityWithPrefixSettingsNavigation__defaultPriority)
  {
    v25 = 6;
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

void __86__PRSRankingItem_Scoring__preferencePriorityFromIdentityWithPrefixSettingsNavigation___block_invoke()
{
  preferencePriorityFromIdentityWithPrefixSettingsNavigation__defaultPriority = 1;
  preferencePriorityFromIdentityWithPrefixSettingsNavigation__defaultAppPriority = 1;
  v0 = preferencePriorityFromIdentityWithPrefixSettingsNavigation__settingsURLPrefix;
  preferencePriorityFromIdentityWithPrefixSettingsNavigation__settingsURLPrefix = @"com.apple.Settings.";

  v1 = preferencePriorityFromIdentityWithPrefixSettingsNavigation__appSettingsPrefix;
  preferencePriorityFromIdentityWithPrefixSettingsNavigation__appSettingsPrefix = @"com.apple.Settings.Apps";

  v2 = preferencePriorityFromIdentityWithPrefixSettingsNavigation__appPriorityOverrides;
  v3 = MEMORY[0x1E695E0F8];
  preferencePriorityFromIdentityWithPrefixSettingsNavigation__appPriorityOverrides = MEMORY[0x1E695E0F8];

  v4 = preferencePriorityFromIdentityWithPrefixSettingsNavigation__hostPriorityOverrides;
  preferencePriorityFromIdentityWithPrefixSettingsNavigation__hostPriorityOverrides = v3;
}

- (float)matchScoreForPreferencesWithEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v5 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 4uLL);
  v6 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0);
  v7 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 1uLL);
  v8 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x65uLL);
  v10 = 0;
  if ([v5 length] && objc_msgSend(v7, "length"))
  {
    if ([v6 isEqualToString:@"com.apple.systempreference.prefpane"])
    {
      if (v8)
      {
        identifier2 = v8;
LABEL_8:
        v13 = identifier2;

        v7 = v13;
        goto LABEL_9;
      }

      identifier = [(PRSRankingItem *)self identifier];

      if (identifier)
      {
        identifier2 = [(PRSRankingItem *)self identifier];
        goto LABEL_8;
      }
    }

LABEL_9:
    [(PRSRankingItem *)self matchScoreForPreferencesWithEvaluator:evaluatorCopy subject:v5 preferenceType:v6 preferenceId:v7];
    v10 = LODWORD(v9);
  }

  LODWORD(v9) = v10;
  [(PRSRankingItem *)self setKeywordMatchScore:v9];
  [(PRSRankingItem *)self keywordMatchScore];
  v15 = v14;

  return v15;
}

- (float)matchScoreForPreferencesWithEvaluator:(id)evaluator subject:(id)subject isFirstParty:(BOOL)party preferencePriority:(int)priority
{
  evaluatorCopy = evaluator;
  subjectCopy = subject;
  if (![subjectCopy length])
  {
    v16 = 0.0;
    goto LABEL_26;
  }

  queryString = [evaluatorCopy queryString];
  v13 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-&"];
  v14 = [queryString rangeOfCharacterFromSet:v13] == 0x7FFFFFFFFFFFFFFFLL;

  [(PRSRankingItem *)self matchScoreSettings:subjectCopy withEvaluator:evaluatorCopy matchOption:(2 * v14)];
  v16 = v15;
  if (v15 != 0.0)
  {
    if (!party)
    {
      v16 = v15 * 0.25;
      goto LABEL_26;
    }

    if (priority <= 2)
    {
      if (priority == 1)
      {
        v17 = v15;
        v18 = 0.96;
      }

      else
      {
        if (priority != 2)
        {
          goto LABEL_20;
        }

        v17 = v15;
        v18 = 0.8;
      }
    }

    else
    {
      switch(priority)
      {
        case 3:
          v17 = v15;
          if (v16 <= 0.95)
          {
            goto LABEL_18;
          }

          v18 = 0.61;
          break;
        case 4:
          v17 = v15;
          if (v16 > 0.95)
          {
LABEL_18:
            v16 = v16 * 0.5;
            goto LABEL_24;
          }

          v18 = 0.4;
          break;
        case 5:
          v17 = v15;
          if (v16 <= 0.95)
          {
            v18 = 0.3;
          }

          else
          {
            v18 = 0.45;
          }

          break;
        default:
LABEL_20:
          v16 = v15 / priority;
          goto LABEL_24;
      }
    }

    v16 = v17 * v18;
LABEL_24:
    queryString2 = [evaluatorCopy queryString];
    v20 = [queryString2 length];

    if (v20 < 2)
    {
      v16 = v16 * 0.25;
    }
  }

LABEL_26:

  return v16;
}

- (float)matchScoreForPreferencesWithEvaluator:(id)evaluator subject:(id)subject preferenceType:(id)type preferenceId:(id)id
{
  typeCopy = type;
  idCopy = id;
  subjectCopy = subject;
  evaluatorCopy = evaluator;
  if ([typeCopy isEqualToString:@"com.apple.Preferences.firstParty"])
  {
    v14 = 1;
  }

  else
  {
    v14 = [typeCopy isEqualToString:@"com.apple.systempreference.prefpane"];
  }

  [(PRSRankingItem *)self setSettingsPreferencePriority:[PRSRankingItem preferencePriorityFromIdentity:idCopy]];
  [(PRSRankingItem *)self matchScoreForPreferencesWithEvaluator:evaluatorCopy subject:subjectCopy isFirstParty:v14 preferencePriority:[(PRSRankingItem *)self settingsPreferencePriority]];
  v16 = v15;

  return v16;
}

- (int)shortcutPriorityFromIdentifier:(id)identifier
{
  v3 = shortcutPriorityFromIdentifier__onceToken;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    [PRSRankingItem(Scoring) shortcutPriorityFromIdentifier:];
  }

  if ([0 containsObject:identifierCopy])
  {
    v5 = -1;
  }

  else
  {
    v5 = 2;
  }

  v6 = [shortcutPriorityFromIdentifier__setOfFirstPriority containsObject:identifierCopy];

  if (v6)
  {
    return 1;
  }

  else
  {
    return v5;
  }
}

uint64_t __58__PRSRankingItem_Scoring__shortcutPriorityFromIdentifier___block_invoke()
{
  shortcutPriorityFromIdentifier__setOfFirstPriority = [MEMORY[0x1E695DFD8] setWithObjects:{@"is.workflow.actions.dnd.set.com.apple.donotdisturb.mode.default.toggle", 0}];

  return MEMORY[0x1EEE66BB8]();
}

- (float)matchScoreForShortcutsSettingWithEvaluator:(id)evaluator name:(id)name preferencePriority:(int)priority
{
  evaluatorCopy = evaluator;
  nameCopy = name;
  v10 = 0.0;
  if ([nameCopy length])
  {
    queryString = [evaluatorCopy queryString];
    v12 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-&"];
    v13 = [queryString rangeOfCharacterFromSet:v12] == 0x7FFFFFFFFFFFFFFFLL;

    [(PRSRankingItem *)self matchScoreSettings:nameCopy withEvaluator:evaluatorCopy matchOption:(2 * v13)];
    v10 = v14;
    if (v14 >= 2.2204e-16)
    {
      if (priority == -1)
      {
        v10 = 0.0;
      }

      else if (priority != 2)
      {
        if (priority == 1)
        {
          v16 = v14 * 1.1;
          if (v16 > 1.0)
          {
            v16 = 1.0;
          }

          v10 = v16;
        }

        else
        {
          v10 = v14 * 0.5;
        }
      }
    }
  }

  return v10;
}

- (float)matchScoreForShortcutsAppWithEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v5 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
  v6 = 0.0;
  v7 = 0.0;
  if ([v5 length])
  {
    [(PRSRankingItem *)self matchScoreTitle:v5 withEvaluator:evaluatorCopy];
    v7 = v8;
  }

  firstMatchedAltName = [(PRSRankingItem *)self firstMatchedAltName];
  v10 = [firstMatchedAltName length];

  if (v10)
  {
    firstMatchedAltName2 = [(PRSRankingItem *)self firstMatchedAltName];
    [(PRSRankingItem *)self matchScoreTitle:firstMatchedAltName2 withEvaluator:evaluatorCopy];
    v6 = v12;
  }

  if (v7 >= (v6 * 0.6))
  {
    v13 = v7;
  }

  else
  {
    v13 = v6 * 0.6;
  }

  if (v7 < 1.0 && v6 < 1.0)
  {
    queryString = [evaluatorCopy queryString];
    composedLength = [queryString composedLength];

    v16 = 0.2;
    if (v13 < 0.2)
    {
      v16 = v13;
    }

    if (composedLength < 4)
    {
      v13 = v16;
    }
  }

  return v13;
}

- (float)matchScoreForShortcutsWithEvaluator:(id)evaluator isSearchToolClient:(BOOL)client
{
  evaluatorCopy = evaluator;
  v7 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x48uLL);
  v8 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x32uLL);
  if (matchScoreForShortcutsWithEvaluator_isSearchToolClient__onceToken != -1)
  {
    [PRSRankingItem(Scoring) matchScoreForShortcutsWithEvaluator:isSearchToolClient:];
  }

  if ([v7 isEqualToString:@"com.apple.Preferences"])
  {
    if (client || (-[PRSRankingItem matchInfo](self, "matchInfo"), v9 = objc_claimAutoreleasedReturnValue(), [v9 objectForKey:*MEMORY[0x1E6963F48]], v10 = objc_claimAutoreleasedReturnValue(), v10, v9, v10))
    {
      v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
      identifier = [(PRSRankingItem *)self identifier];
      v13 = [(PRSRankingItem *)self shortcutPriorityFromIdentifier:identifier];

      if ([v11 length])
      {
        [(PRSRankingItem *)self matchScoreForShortcutsSettingWithEvaluator:evaluatorCopy name:v11 preferencePriority:v13];
LABEL_13:
        v17 = v14;
        v18 = 1.0;
LABEL_19:

        goto LABEL_20;
      }

      goto LABEL_18;
    }

    goto LABEL_43;
  }

  if ([matchScoreForShortcutsWithEvaluator_isSearchToolClient__appPrefixActionBundleIDs containsObject:v7])
  {
    if (client || (-[PRSRankingItem matchInfo](self, "matchInfo"), v15 = objc_claimAutoreleasedReturnValue(), [v15 objectForKey:*MEMORY[0x1E6964AC8]], v16 = objc_claimAutoreleasedReturnValue(), v16, v15, v16))
    {
      v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xADuLL);
      if ([v11 length])
      {
        [(PRSRankingItem *)self matchScoreTitle:v11 withEvaluator:evaluatorCopy];
        goto LABEL_13;
      }

LABEL_18:
      v18 = 0.0;
      v17 = 0.0;
      goto LABEL_19;
    }

LABEL_43:
    v23 = 0.0;
    goto LABEL_23;
  }

  if (![v8 isEqualToString:@"app-shortcut"])
  {
    if (!client)
    {
      matchInfo = [(PRSRankingItem *)self matchInfo];
      v26 = [matchInfo objectForKey:*MEMORY[0x1E6963F48]];
      if (v26)
      {
      }

      else
      {
        firstMatchedAltName = [(PRSRankingItem *)self firstMatchedAltName];

        if (!firstMatchedAltName)
        {
          goto LABEL_43;
        }
      }
    }

    [(PRSRankingItem *)self matchScoreForShortcutsAppWithEvaluator:evaluatorCopy];
    v17 = v36;
    if ([v7 length] && (objc_msgSend(v7, "hasPrefix:", @"com.apple.") & 1) != 0 || (v21 = v17, v17 > 1.0) || (objc_msgSend(evaluatorCopy, "queryString", v21), v37 = objc_claimAutoreleasedReturnValue(), v38 = objc_msgSend(v37, "composedLength"), v37, v38 >= 8))
    {
      v18 = 0.8;
    }

    else
    {
      v18 = 0.2;
    }

    goto LABEL_20;
  }

  if (!client)
  {
    matchInfo2 = [(PRSRankingItem *)self matchInfo];
    v20 = [matchInfo2 objectForKey:*MEMORY[0x1E6963F48]];
    if (v20)
    {
    }

    else
    {
      firstMatchedAltName2 = [(PRSRankingItem *)self firstMatchedAltName];

      if (!firstMatchedAltName2)
      {
        goto LABEL_43;
      }
    }
  }

  [(PRSRankingItem *)self matchScoreForShortcutsAppWithEvaluator:evaluatorCopy];
  v17 = v28;
  if ([v7 length] && (objc_msgSend(v7, "hasPrefix:", @"com.apple.") & 1) != 0 || (v21 = v17, v17 > 1.0) || (objc_msgSend(evaluatorCopy, "queryString", v21), v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "composedLength"), v29, v18 = 0.25, v30 >= 8))
  {
    v31 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xA5uLL);
    v32 = v31;
    if (!v31 || v17 >= 1.0)
    {
LABEL_49:

      v18 = 1.0;
      goto LABEL_20;
    }

    intValue = [v31 intValue];
    if (intValue == 1)
    {
      v34 = 1.2;
    }

    else
    {
      if (intValue)
      {
        goto LABEL_47;
      }

      v34 = 1.4;
    }

    v17 = v17 * v34;
LABEL_47:
    if (v17 > 0.98)
    {
      v17 = 0.98;
    }

    goto LABEL_49;
  }

LABEL_20:
  *&v21 = v18 * v17;
  if ((v18 * v17) > 1.0)
  {
    *&v21 = 1.0;
  }

  [(PRSRankingItem *)self setKeywordMatchScore:v21];
  [(PRSRankingItem *)self keywordMatchScore];
  v23 = v22;
LABEL_23:

  return v23;
}

void __82__PRSRankingItem_Scoring__matchScoreForShortcutsWithEvaluator_isSearchToolClient___block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = @"com.apple.facetime";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:1];
  v2 = [v0 setWithArray:v1];
  v3 = matchScoreForShortcutsWithEvaluator_isSearchToolClient__appPrefixActionBundleIDs;
  matchScoreForShortcutsWithEvaluator_isSearchToolClient__appPrefixActionBundleIDs = v2;
}

- (float)matchScoreForAppEntityWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  parsedEvaluatorCopy = parsedEvaluator;
  v10 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xCuLL);
  if (![v10 length])
  {
    v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);

    v10 = v11;
  }

  if (![v10 length])
  {
    v13 = 0.0;
LABEL_13:
    v14 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 4uLL);
    v15 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x1FuLL);
    v16 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 6uLL);
    if ([v14 length] || objc_msgSend(v15, "length") || objc_msgSend(v16, "length"))
    {
      if ([v10 length])
      {
        v17 = [&stru_1F556FE60 stringByAppendingString:v10];
      }

      else
      {
        v17 = &stru_1F556FE60;
      }

      if ([v14 length])
      {
        if ([(__CFString *)v17 length])
        {
          v18 = [(__CFString *)v17 stringByAppendingString:@" "];

          v17 = v18;
        }

        v19 = [(__CFString *)v17 stringByAppendingString:v14];

        v17 = v19;
      }

      if ([v15 length])
      {
        if ([(__CFString *)v17 length])
        {
          v20 = [(__CFString *)v17 stringByAppendingString:@" "];

          v17 = v20;
        }

        v21 = [(__CFString *)v17 stringByAppendingString:v15];

        v17 = v21;
      }

      if ([v16 length])
      {
        if ([(__CFString *)v17 length])
        {
          v22 = [(__CFString *)v17 stringByAppendingString:@" "];

          v17 = v22;
        }

        v23 = [(__CFString *)v17 stringByAppendingString:v16];

        v17 = v23;
      }

      [(PRSRankingItem *)self matchScoreTitle:v17 withEvaluator:evaluatorCopy];
      v25 = v24;
      if (parsedEvaluatorCopy && v24 < 2.2204e-16)
      {
        [(PRSRankingItem *)self matchScoreTitle:v16 withEvaluator:parsedEvaluatorCopy];
        v25 = v26;
      }

      if (!clientCopy && ([(PRSRankingItem *)self bundleIDType]& 0x400000000000000) != 0)
      {
        v13 = v25 * 0.8;
      }

      else
      {
        v13 = v25 * 0.5;
      }
    }

    goto LABEL_40;
  }

  [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:evaluatorCopy];
  v13 = *&v12;
  if (parsedEvaluatorCopy && *&v12 < 2.2204e-16)
  {
    [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:parsedEvaluatorCopy];
    v13 = *&v12;
  }

  if (!clientCopy && ([(PRSRankingItem *)self bundleIDType]& 0x400000000000000) != 0)
  {
    v13 = v13 * 0.5;
  }

  if (v13 < 2.2204e-16)
  {
    goto LABEL_13;
  }

LABEL_40:
  *&v12 = v13;
  [(PRSRankingItem *)self setKeywordMatchScore:v12];
  [(PRSRankingItem *)self keywordMatchScore];
  [(PRSRankingItem *)self embeddingSimilarity];
  [(PRSRankingItem *)self pommesL1Score];
  bundleIDType = [(PRSRankingItem *)self bundleIDType];
  queryString = [evaluatorCopy queryString];
  language = [evaluatorCopy language];
  chooseTopicality(bundleIDType, clientCopy, clientCopy);
  v31 = v30;

  if (clientCopy)
  {
    v32 = 0.25;
  }

  else
  {
    v32 = 0.75;
  }

  if (v13 < 1.0)
  {
    queryString2 = [evaluatorCopy queryString];
    composedLength = [queryString2 composedLength];

    if (composedLength < 5)
    {
      v32 = v32 / 10.0;
    }
  }

  return v32 * v31;
}

- (float)matchScoreForDictionaryWithEvaluator:(id)evaluator
{
  queryTerms = [evaluator queryTerms];
  v6 = 0.0;
  if ([(PRSRankingItem *)self hasPolicyMultipleTermsPhraseMatch]&& objc_msgSend_count(queryTerms) >= 2)
  {
    v7 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
    if ([v7 composedLength] > 1)
    {
      v6 = 0.98;
    }

    else
    {
      v6 = vcvts_n_f32_u64([v7 composedLength], 1uLL) * 0.98;
    }
  }

  *&v5 = v6;
  [(PRSRankingItem *)self setKeywordMatchScore:v5];
  [(PRSRankingItem *)self keywordMatchScore];
  v9 = v8;

  return v9;
}

- (float)matchScoreForBooksWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  parsedEvaluatorCopy = parsedEvaluator;
  v10 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
  v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x5CuLL);
  if ([v10 composedLength])
  {
    [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:evaluatorCopy];
    v13 = v12;
    if (parsedEvaluatorCopy && v12 < 0.00000011921)
    {
      [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:parsedEvaluatorCopy];
      v13 = v14;
    }

    if (v13 < 1.0)
    {
      v13 = v13 * 0.8;
    }
  }

  else
  {
    v13 = 0.0;
  }

  if ([v11 composedLength])
  {
    [(PRSRankingItem *)self matchScoreTitle:v11 withEvaluator:evaluatorCopy];
    if (parsedEvaluatorCopy && *&v15 < 0.00000011921)
    {
      [(PRSRankingItem *)self matchScoreTitle:v11 withEvaluator:parsedEvaluatorCopy];
    }

    v16 = *&v15 * 0.4;
    if (v16 >= v13)
    {
      v13 = v16;
    }
  }

  *&v15 = fminf(v13, 1.0);
  [(PRSRankingItem *)self setKeywordMatchScore:v15];
  [(PRSRankingItem *)self keywordMatchScore];
  [(PRSRankingItem *)self embeddingSimilarity];
  [(PRSRankingItem *)self pommesL1Score];
  bundleIDType = [(PRSRankingItem *)self bundleIDType];
  queryString = [evaluatorCopy queryString];
  language = [evaluatorCopy language];
  chooseTopicality(bundleIDType, 0, clientCopy);
  v21 = v20;

  queryTerms = [evaluatorCopy queryTerms];
  v23 = objc_msgSend_count(queryTerms);

  if (v23 <= 3)
  {
    queryTerms2 = [evaluatorCopy queryTerms];
    v21 = (objc_msgSend_count(queryTerms2) * 0.599999994 * 0.25 + 0.400000006) * v21;
  }

  return v21;
}

- (float)matchScoreForTipsWithEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  queryString = [evaluatorCopy queryString];
  composedLength = [queryString composedLength];

  v7 = 0.0;
  if (composedLength >= 4)
  {
    v8 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
    if ([v8 composedLength])
    {
      [(PRSRankingItem *)self matchScoreTitle:v8 withEvaluator:evaluatorCopy];
      v7 = v9;
      if (v9 < 1.0)
      {
        queryString2 = [evaluatorCopy queryString];
        composedLength2 = [queryString2 composedLength];

        v12 = v7 * 0.1;
        if (composedLength2 >= 0xA)
        {
          v12 = v7;
        }

        v7 = v12 * 0.6;
      }
    }

    queryTerms = [evaluatorCopy queryTerms];
    v14 = objc_msgSend_count(queryTerms);

    if (v14 <= 3)
    {
      queryTerms2 = [evaluatorCopy queryTerms];
      v7 = vcvtd_n_f64_u64(objc_msgSend_count(queryTerms2), 2uLL) * v7;
    }

    *&v15 = v7;
    [(PRSRankingItem *)self setKeywordMatchScore:v15];
    [(PRSRankingItem *)self keywordMatchScore];
    v7 = v17;
  }

  return v7;
}

- (float)matchScoreForHelpWithEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  queryString = [evaluatorCopy queryString];
  composedLength = [queryString composedLength];

  v7 = 0.0;
  if (composedLength >= 4)
  {
    v8 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
    if ([v8 composedLength])
    {
      [(PRSRankingItem *)self matchScoreTitle:v8 withEvaluator:evaluatorCopy];
      v7 = v9;
      if (v9 < 1.0)
      {
        queryString2 = [evaluatorCopy queryString];
        composedLength2 = [queryString2 composedLength];

        v12 = v7 * 0.1;
        if (composedLength2 >= 0xA)
        {
          v12 = v7;
        }

        v7 = v12 * 0.6;
      }
    }

    queryTerms = [evaluatorCopy queryTerms];
    v14 = objc_msgSend_count(queryTerms);

    if (v14 <= 3)
    {
      queryTerms2 = [evaluatorCopy queryTerms];
      v7 = vcvtd_n_f64_u64(objc_msgSend_count(queryTerms2), 2uLL) * v7;
    }

    *&v15 = v7;
    [(PRSRankingItem *)self setKeywordMatchScore:v15];
    [(PRSRankingItem *)self keywordMatchScore];
    v7 = v17;
  }

  return v7;
}

- (BOOL)_isWalletTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (_isWalletTransaction__onceToken != -1)
  {
    [PRSRankingItem(Scoring) _isWalletTransaction:];
  }

  if ([transactionCopy length])
  {
    v4 = [_isWalletTransaction__transactionContentTypes containsObject:transactionCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __48__PRSRankingItem_Scoring___isWalletTransaction___block_invoke()
{
  _isWalletTransaction__transactionContentTypes = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F55B75F8];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)_isWalletPass:(id)pass
{
  passCopy = pass;
  if (_isWalletPass__onceToken != -1)
  {
    [PRSRankingItem(Scoring) _isWalletPass:];
  }

  if ([passCopy length])
  {
    v4 = [_isWalletPass__walletPassContentTypes containsObject:passCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __41__PRSRankingItem_Scoring___isWalletPass___block_invoke()
{
  _isWalletPass__walletPassContentTypes = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F55B7610];

  return MEMORY[0x1EEE66BB8]();
}

- (float)matchScoreForWalletWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  parsedEvaluatorCopy = parsedEvaluator;
  v10 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0);
  if (clientCopy)
  {
    v11 = 0;
    v12 = 4;
  }

  else
  {
    v11 = [(PRSRankingItem *)self _isWalletPass:v10];
    if (v11)
    {
      v12 = 3;
    }

    else
    {
      v12 = 4;
    }
  }

  queryString = [evaluatorCopy queryString];
  composedLength = [queryString composedLength];

  v15 = 0.0;
  if (composedLength >= v12)
  {
    v16 = [(PRSRankingItem *)self _isWalletTransaction:v10];
    v17 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
    if (v16)
    {
      v18 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x1FuLL);
      if ([v17 length] && objc_msgSend(v18, "length"))
      {
        v19 = [v17 stringByAppendingString:v18];

        v17 = v19;
      }
    }

    if (v11)
    {
      [(PRSRankingItem *)self matchScoreTitle:v17 withEvaluator:evaluatorCopy];
      v15 = v20;
      if (v20 < 0.00000011921)
      {
        v21 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xD6uLL);
        if ([v17 length] && objc_msgSend(v21, "length"))
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v17, v21];

          v17 = v22;
        }

        [(PRSRankingItem *)self matchScoreTitle:v17 withEvaluator:evaluatorCopy];
        v15 = v23;
      }

      if (parsedEvaluatorCopy && v15 < 0.00000011921)
      {
        [(PRSRankingItem *)self matchScoreTitle:v17 withEvaluator:parsedEvaluatorCopy];
        v15 = v24;
      }

      v25 = v15;
      if (v15 < 1.0)
      {
        queryString2 = [evaluatorCopy queryString];
        composedLength2 = [queryString2 composedLength];

        if (composedLength2 < 0xA)
        {
          v15 = v15 * 0.6;
        }
      }
    }

    else if ([v17 composedLength])
    {
      [(PRSRankingItem *)self matchScoreTitle:v17 withEvaluator:evaluatorCopy];
      v15 = *&v25;
      if (parsedEvaluatorCopy)
      {
        HIDWORD(v25) = 872415232;
        if (*&v25 < 0.00000011921)
        {
          [(PRSRankingItem *)self matchScoreTitle:v17 withEvaluator:parsedEvaluatorCopy];
          v15 = *&v25;
        }
      }

      if (v16 || (v25 = v15, v15 < 1.0) && ([evaluatorCopy queryString], v28 = objc_claimAutoreleasedReturnValue(), v29 = objc_msgSend(v28, "composedLength"), v28, v29 <= 9))
      {
        v15 = v15 * 0.1;
      }
    }

    *&v25 = fminf(v15, 1.0);
    [(PRSRankingItem *)self setKeywordMatchScore:v25];
    [(PRSRankingItem *)self keywordMatchScore];
    [(PRSRankingItem *)self embeddingSimilarity];
    [(PRSRankingItem *)self pommesL1Score];
    bundleIDType = [(PRSRankingItem *)self bundleIDType];
    queryString3 = [evaluatorCopy queryString];
    language = [evaluatorCopy language];
    chooseTopicality(bundleIDType, 0, clientCopy);
    v34 = v33;

    v15 = v34 * 0.6;
  }

  return v15;
}

- (float)matchScoreForMusicWithEvaluator:(id)evaluator quParsedEvaluator:(id)parsedEvaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  evaluatorCopy = evaluator;
  parsedEvaluatorCopy = parsedEvaluator;
  v10 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
  v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x25uLL);
  if ([v10 composedLength])
  {
    [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:evaluatorCopy];
    v13 = v12;
    if (parsedEvaluatorCopy && v12 < 0.00000011921)
    {
      [(PRSRankingItem *)self matchScoreTitle:v10 withEvaluator:parsedEvaluatorCopy];
      v13 = v14;
    }
  }

  else
  {
    v13 = 0.0;
  }

  if ([v11 composedLength])
  {
    [(PRSRankingItem *)self matchScoreTitle:v11 withEvaluator:evaluatorCopy];
    if (parsedEvaluatorCopy && v15 < 0.00000011921)
    {
      [(PRSRankingItem *)self matchScoreTitle:v11 withEvaluator:parsedEvaluatorCopy];
    }

    v16 = v15 * 0.25;
    if (v16 >= v13)
    {
      v13 = v16;
    }
  }

  v17 = v13 * 0.7;
  *&v17 = v17;
  if (v13 >= 1.0)
  {
    *&v17 = v13;
  }

  *&v17 = fminf(*&v17, 1.0);
  [(PRSRankingItem *)self setKeywordMatchScore:v17];
  [(PRSRankingItem *)self keywordMatchScore];
  [(PRSRankingItem *)self embeddingSimilarity];
  [(PRSRankingItem *)self pommesL1Score];
  bundleIDType = [(PRSRankingItem *)self bundleIDType];
  queryString = [evaluatorCopy queryString];
  language = [evaluatorCopy language];
  chooseTopicality(bundleIDType, 0, clientCopy);
  v22 = v21;

  return v22 * 0.61;
}

- (float)matchScoreForPeopleItemsWithEvaluator:(id)evaluator
{
  evaluatorCopy = evaluator;
  v5 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xCuLL);
  if ([v5 composedLength])
  {
    [(PRSRankingItem *)self matchScoreTitle:v5 withEvaluator:evaluatorCopy];
    v7 = v6;
    if (v7 >= 1.0)
    {
      v8 = 0.51;
    }

    else
    {
      v8 = 0.35;
    }

    v9 = v7 * v8;
    *&v9 = v9;
  }

  else
  {
    v9 = 0.0;
  }

  [(PRSRankingItem *)self setKeywordMatchScore:v9];
  [(PRSRankingItem *)self keywordMatchScore];
  v11 = v10;

  return v11;
}

- (float)matchScoreGeneric:(id)generic quParsedEvaluator:(id)evaluator isSearchToolClient:(BOOL)client
{
  clientCopy = client;
  v49 = *MEMORY[0x1E69E9840];
  genericCopy = generic;
  evaluatorCopy = evaluator;
  array = [MEMORY[0x1E695DF70] array];
  v10 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
  if (v10)
  {
    [array addObject:v10];
  }

  v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xCuLL);
  if (v11)
  {
    [array addObject:v11];
  }

  v42 = v10;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v12 = array;
  v13 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (!v13)
  {
    v16 = 0.0;
    goto LABEL_40;
  }

  v14 = v13;
  v15 = *v45;
  v16 = 0.0;
  do
  {
    v17 = 0;
    do
    {
      if (*v45 != v15)
      {
        objc_enumerationMutation(v12);
      }

      v18 = *(*(&v44 + 1) + 8 * v17);
      if ([v18 length])
      {
        [(PRSRankingItem *)self matchScoreTitle:v18 withEvaluator:genericCopy];
        v20 = v19;
        if (evaluatorCopy && v19 < 2.2204e-16)
        {
          [(PRSRankingItem *)self matchScoreTitle:v18 withEvaluator:evaluatorCopy];
          v20 = v21;
        }
      }

      else
      {
        v20 = 0.0;
      }

      v22 = v20;
      if (([v18 containsCJK] & 1) == 0)
      {
        if (v20 >= 0.4)
        {
          queryTerms = [genericCopy queryTerms];
          v27 = objc_msgSend_count(queryTerms);

          if (v27 >= 3)
          {
            v23 = v22 * 0.9;
            goto LABEL_31;
          }

          queryTerms2 = [genericCopy queryTerms];
          v32 = objc_msgSend_count(queryTerms2);

          if (v32 == 2)
          {
            v30 = 0.8;
            goto LABEL_30;
          }
        }

        v23 = v22 * 0.6;
LABEL_31:
        v33 = v23;
        goto LABEL_32;
      }

      if (v20 < 0.4)
      {
        v23 = v22 * 0.7;
        goto LABEL_31;
      }

      queryTerms3 = [genericCopy queryTerms];
      v25 = objc_msgSend_count(queryTerms3);

      if (v25 >= 3)
      {
        v23 = v22 * 0.95;
        goto LABEL_31;
      }

      queryTerms4 = [genericCopy queryTerms];
      v29 = objc_msgSend_count(queryTerms4);

      if (v29 == 2)
      {
        v30 = 0.85;
LABEL_30:
        v23 = v22 * v30;
        goto LABEL_31;
      }

      v33 = v20 * 0.75;
LABEL_32:
      if (v33 >= v16)
      {
        v16 = v33;
      }

      ++v17;
    }

    while (v14 != v17);
    v34 = [v12 countByEnumeratingWithState:&v44 objects:v48 count:16];
    v14 = v34;
  }

  while (v34);
LABEL_40:

  *&v35 = fminf(v16, 1.0);
  [(PRSRankingItem *)self setKeywordMatchScore:v35];
  [(PRSRankingItem *)self keywordMatchScore];
  [(PRSRankingItem *)self embeddingSimilarity];
  [(PRSRankingItem *)self pommesL1Score];
  bundleIDType = [(PRSRankingItem *)self bundleIDType];
  queryString = [genericCopy queryString];
  language = [genericCopy language];
  chooseTopicality(bundleIDType, 0, clientCopy);
  v40 = v39;

  return v40;
}

- (int64_t)compareShortcutTopHitCandidate:(id)candidate
{
  v64 = *MEMORY[0x1E69E9840];
  candidateCopy = candidate;
  recentSimilarIntentEngagementDates = [(PRSRankingItem *)self recentSimilarIntentEngagementDates];
  v9 = objc_msgSend_count(recentSimilarIntentEngagementDates);

  recentSimilarIntentEngagementDates2 = [candidateCopy recentSimilarIntentEngagementDates];
  recentSimilarIntentEngagementDates7 = objc_msgSend_count(recentSimilarIntentEngagementDates2);

  if (!(v9 | recentSimilarIntentEngagementDates7))
  {
    goto LABEL_19;
  }

  if (v9 != 2)
  {
    goto LABEL_8;
  }

  if (!recentSimilarIntentEngagementDates7 || (-[PRSRankingItem recentSimilarIntentEngagementDates](self, "recentSimilarIntentEngagementDates"), recentSimilarIntentEngagementDates2 = objc_claimAutoreleasedReturnValue(), [recentSimilarIntentEngagementDates2 lastObject], recentSimilarIntentEngagementDates8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(candidateCopy, "recentSimilarIntentEngagementDates"), firstObject2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(firstObject2, "firstObject"), v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(recentSimilarIntentEngagementDates8, "compare:", v5) == 1))
  {
    sectionBundleIdentifier = [(PRSRankingItem *)self sectionBundleIdentifier];
    IsSyndicatedPhotos = SSSectionIsSyndicatedPhotos(sectionBundleIdentifier);

    if (recentSimilarIntentEngagementDates7)
    {

      if (IsSyndicatedPhotos)
      {
        goto LABEL_8;
      }
    }

    else if (IsSyndicatedPhotos)
    {
      goto LABEL_19;
    }

    v27 = PRSLogCategoryDefault();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      sectionBundleIdentifier2 = [(PRSRankingItem *)self sectionBundleIdentifier];
      recentSimilarIntentEngagementDates3 = [(PRSRankingItem *)self recentSimilarIntentEngagementDates];
      v41 = objc_msgSend_count(recentSimilarIntentEngagementDates3);
      recentSimilarIntentEngagementDates4 = [(PRSRankingItem *)self recentSimilarIntentEngagementDates];
      lastObject = [recentSimilarIntentEngagementDates4 lastObject];
      [(PRSRankingItem *)self likelihood];
      v30 = v29;
      sectionBundleIdentifier3 = [candidateCopy sectionBundleIdentifier];
      recentSimilarIntentEngagementDates5 = [candidateCopy recentSimilarIntentEngagementDates];
      v33 = objc_msgSend_count(recentSimilarIntentEngagementDates5);
      recentSimilarIntentEngagementDates6 = [candidateCopy recentSimilarIntentEngagementDates];
      v35 = objc_msgSend_count(recentSimilarIntentEngagementDates6);
      if (v35)
      {
        recentSimilarIntentEngagementDates2 = [candidateCopy recentSimilarIntentEngagementDates];
        firstObject = [recentSimilarIntentEngagementDates2 firstObject];
      }

      else
      {
        firstObject = @"nil";
      }

      [candidateCopy likelihood];
      *buf = 138414082;
      v49 = sectionBundleIdentifier2;
      v50 = 2048;
      v51 = v41;
      v52 = 2112;
      v53 = lastObject;
      v54 = 2048;
      v55 = v30;
      v56 = 2112;
      v57 = sectionBundleIdentifier3;
      v58 = 2048;
      v59 = v33;
      v60 = 2112;
      v61 = firstObject;
      v62 = 2048;
      v63 = v37;
      _os_log_impl(&dword_1D9F69000, v27, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <Engagement_Debug> Rule: %@ (%lu, %@, %f) overtakes %@ (%lu, %@, %f) (compareShortcutTopHitCandidate)", buf, 0x52u);
      if (v35)
      {
      }
    }

    v25 = 1;
    goto LABEL_20;
  }

LABEL_8:
  if (recentSimilarIntentEngagementDates7 != 2)
  {
LABEL_19:
    v25 = 0;
    goto LABEL_20;
  }

  if (v9)
  {
    recentSimilarIntentEngagementDates7 = [candidateCopy recentSimilarIntentEngagementDates];
    recentSimilarIntentEngagementDates2 = [recentSimilarIntentEngagementDates7 lastObject];
    recentSimilarIntentEngagementDates8 = [(PRSRankingItem *)self recentSimilarIntentEngagementDates];
    firstObject2 = [recentSimilarIntentEngagementDates8 firstObject];
    if ([recentSimilarIntentEngagementDates2 compare:firstObject2] != 1)
    {

      goto LABEL_19;
    }
  }

  sectionBundleIdentifier4 = [candidateCopy sectionBundleIdentifier];
  v15 = SSSectionIsSyndicatedPhotos(sectionBundleIdentifier4);

  if (v9)
  {
  }

  if (v15)
  {
    goto LABEL_19;
  }

  v16 = PRSLogCategoryDefault();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    sectionBundleIdentifier5 = [candidateCopy sectionBundleIdentifier];
    recentSimilarIntentEngagementDates9 = [candidateCopy recentSimilarIntentEngagementDates];
    v39 = objc_msgSend_count(recentSimilarIntentEngagementDates9);
    recentSimilarIntentEngagementDates10 = [candidateCopy recentSimilarIntentEngagementDates];
    lastObject2 = [recentSimilarIntentEngagementDates10 lastObject];
    [candidateCopy likelihood];
    v18 = v17;
    sectionBundleIdentifier6 = [(PRSRankingItem *)self sectionBundleIdentifier];
    recentSimilarIntentEngagementDates11 = [(PRSRankingItem *)self recentSimilarIntentEngagementDates];
    v21 = objc_msgSend_count(recentSimilarIntentEngagementDates11);
    recentSimilarIntentEngagementDates12 = [(PRSRankingItem *)self recentSimilarIntentEngagementDates];
    v23 = objc_msgSend_count(recentSimilarIntentEngagementDates12);
    if (v23)
    {
      recentSimilarIntentEngagementDates7 = [(PRSRankingItem *)self recentSimilarIntentEngagementDates];
      firstObject3 = [recentSimilarIntentEngagementDates7 firstObject];
    }

    else
    {
      firstObject3 = @"nil";
    }

    [(PRSRankingItem *)self likelihood];
    *buf = 138414082;
    v49 = sectionBundleIdentifier5;
    v50 = 2048;
    v51 = v39;
    v52 = 2112;
    v53 = lastObject2;
    v54 = 2048;
    v55 = v18;
    v56 = 2112;
    v57 = sectionBundleIdentifier6;
    v58 = 2048;
    v59 = v21;
    v60 = 2112;
    v61 = firstObject3;
    v62 = 2048;
    v63 = v38;
    _os_log_impl(&dword_1D9F69000, v16, OS_LOG_TYPE_DEFAULT, "[SpotlightRanking] <Engagement_Debug> Rule: %@ (%lu, %@, %f) overtakes %@ (%lu, %@, %f) (compareShortcutTopHitCandidate)", buf, 0x52u);
    if (v23)
    {
    }
  }

  v25 = -1;
LABEL_20:

  return v25;
}

- (int64_t)compareWithCCCDTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (!-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") || ![candidateCopy isLocalTopHitCandidate])
  {
    goto LABEL_11;
  }

  if (![candidateCopy isCCCD] || (-[PRSRankingItem bundleIDType](self, "bundleIDType"), -[PRSRankingItem topicalityScore](self, "topicalityScore"), v5 <= 0.8) && (-[PRSRankingItem engagementScore](self, "engagementScore"), v6 <= 0.8))
  {
    if ([(PRSRankingItem *)self isCCCD])
    {
      [candidateCopy bundleIDType];
      [candidateCopy topicalityScore];
      if (v8 > 0.8 || ([candidateCopy engagementScore], v9 > 0.8))
      {
        v7 = -1;
        goto LABEL_12;
      }
    }

LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  v7 = 1;
LABEL_12:

  return v7;
}

- (int64_t)compareAppsTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (!candidateCopy || -[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && ![candidateCopy isLocalTopHitCandidate])
  {
    goto LABEL_18;
  }

  if (!-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && ([candidateCopy isLocalTopHitCandidate] & 1) != 0)
  {
    goto LABEL_20;
  }

  if (!-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") || ([candidateCopy isLocalTopHitCandidate] & 1) == 0) && (-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") || (objc_msgSend(candidateCopy, "isLocalTopHitCandidate")))
  {
    goto LABEL_10;
  }

  v15 = [(PRSRankingItem *)self compareShortcutTopHitCandidate:candidateCopy];
  if (v15)
  {
    v14 = v15;
    goto LABEL_42;
  }

  [(PRSRankingItem *)self likelihood];
  v17 = v16;
  [candidateCopy likelihood];
  if (v17 > v18)
  {
LABEL_18:
    v14 = 1;
    goto LABEL_42;
  }

  [(PRSRankingItem *)self likelihood];
  v20 = v19;
  [candidateCopy likelihood];
  if (v20 < v21)
  {
    goto LABEL_20;
  }

  [(PRSRankingItem *)self likelihood];
  if (v25 == 1.0)
  {
    if (-[PRSRankingItem wasEngagedInSpotlight](self, "wasEngagedInSpotlight") && ![candidateCopy wasEngagedInSpotlight])
    {
      goto LABEL_18;
    }

    if (!-[PRSRankingItem wasEngagedInSpotlight](self, "wasEngagedInSpotlight") && ([candidateCopy wasEngagedInSpotlight] & 1) != 0)
    {
LABEL_20:
      v14 = -1;
      goto LABEL_42;
    }
  }

  [(PRSRankingItem *)self likelihood];
  if (v26 <= 0.0)
  {
    goto LABEL_10;
  }

  [candidateCopy likelihood];
  if (v27 <= 0.0)
  {
    goto LABEL_10;
  }

  [(PRSRankingItem *)self likelihood];
  v29 = v28;
  [candidateCopy likelihood];
  if (vabdd_f64(v29, v30) >= 0.00000011920929)
  {
    goto LABEL_10;
  }

  v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 9uLL);
  v31 = SSCompactRankingAttrsGetValue([candidateCopy attributes], 9uLL);
  v13 = v31;
  if (!v11 || !v31)
  {
    if (v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = -1;
    }

    goto LABEL_41;
  }

  v14 = [v11 compare:v31];

  if (!v14)
  {
LABEL_10:
    [(PRSRankingItem *)self topicalityScore];
    v6 = v5;
    [candidateCopy topicalityScore];
    if (v6 <= v7)
    {
      [(PRSRankingItem *)self topicalityScore];
      v9 = v8;
      [candidateCopy topicalityScore];
      if (v9 >= v10)
      {
        v11 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x16CuLL);
        v12 = SSCompactRankingAttrsGetValue([candidateCopy attributes], 0x16CuLL);
        v13 = v12;
        if (v11 && v12)
        {
          v14 = [v11 compare:v12];
LABEL_41:

          goto LABEL_42;
        }

        v22 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
        v23 = SSCompactRankingAttrsGetValue([candidateCopy attributes], 7uLL);
        if ([v22 length] && objc_msgSend(v23, "length"))
        {
          v24 = [v22 length];
          if (v24 < [v23 length])
          {
            v14 = 1;
LABEL_40:

            goto LABEL_41;
          }

          v32 = [v22 length];
          if (v32 > [v23 length])
          {
            v14 = -1;
            goto LABEL_40;
          }
        }

        v14 = -[v22 compare:v23];
        goto LABEL_40;
      }

      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_42:

  return v14;
}

- (int64_t)compareContactsTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (!candidateCopy || -[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && ![candidateCopy isLocalTopHitCandidate])
  {
    goto LABEL_22;
  }

  if (!-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && ([candidateCopy isLocalTopHitCandidate] & 1) != 0)
  {
    goto LABEL_24;
  }

  if (!-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") || ([candidateCopy isLocalTopHitCandidate] & 1) == 0) && (-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") || (objc_msgSend(candidateCopy, "isLocalTopHitCandidate")))
  {
    [(PRSRankingItem *)self topicalityScore];
    v6 = v5;
    v7 = [&unk_1F55B75C8 objectAtIndexedSubscript:3];
    [v7 floatValue];
    if (v6 >= v8)
    {
      [candidateCopy topicalityScore];
      v17 = v16;
      v18 = [&unk_1F55B75C8 objectAtIndexedSubscript:3];
      [v18 floatValue];
      v20 = v19;

      if (v17 >= v20)
      {
        if (-[PRSRankingItem wasEngagedInSpotlight](self, "wasEngagedInSpotlight") && ![candidateCopy wasEngagedInSpotlight])
        {
          goto LABEL_22;
        }

        if (!-[PRSRankingItem wasEngagedInSpotlight](self, "wasEngagedInSpotlight") && ([candidateCopy wasEngagedInSpotlight] & 1) != 0)
        {
          goto LABEL_24;
        }
      }
    }

    else
    {
    }

    goto LABEL_21;
  }

  v9 = [(PRSRankingItem *)self compareShortcutTopHitCandidate:candidateCopy];
  if (!v9)
  {
    [(PRSRankingItem *)self likelihood];
    v11 = v10;
    [candidateCopy likelihood];
    if (v11 > v12)
    {
LABEL_22:
      v9 = 1;
      goto LABEL_26;
    }

    [(PRSRankingItem *)self likelihood];
    v14 = v13;
    [candidateCopy likelihood];
    if (v14 < v15)
    {
LABEL_24:
      v9 = -1;
      goto LABEL_26;
    }

LABEL_21:
    [(PRSRankingItem *)self topicalityScore];
    v22 = v21;
    [candidateCopy topicalityScore];
    if (v22 > v23)
    {
      goto LABEL_22;
    }

    [(PRSRankingItem *)self topicalityScore];
    v25 = v24;
    [candidateCopy topicalityScore];
    if (v25 >= v26)
    {
      v27 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 7uLL);
      v28 = SSCompactRankingAttrsGetValue([candidateCopy attributes], 7uLL);
      v9 = -[v27 compare:v28];

      goto LABEL_26;
    }

    goto LABEL_24;
  }

LABEL_26:

  return v9;
}

- (int64_t)comparePeopleItemTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (!candidateCopy)
  {
    v7 = 1;
    goto LABEL_12;
  }

  v5 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x9AuLL);
  v6 = SSCompactRankingAttrsGetValue([candidateCopy attributes], 0x9AuLL);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  [candidateCopy bundleIDType];
  if ([v5 intValue] == 1 && objc_msgSend(v6, "intValue") != 1)
  {
    v7 = 1;
    goto LABEL_10;
  }

  if ([v5 intValue] != 1 && objc_msgSend(v6, "intValue") == 1)
  {
    v7 = -1;
  }

  else
  {
LABEL_9:
    v7 = [(PRSRankingItem *)self compareLocalTopHitCandidate:candidateCopy];
  }

LABEL_10:

LABEL_12:
  return v7;
}

- (int64_t)compareSafariTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (!candidateCopy || -[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && ![candidateCopy isLocalTopHitCandidate])
  {
    goto LABEL_18;
  }

  if (!-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && ([candidateCopy isLocalTopHitCandidate] & 1) != 0)
  {
    goto LABEL_6;
  }

  if (-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && ([candidateCopy isLocalTopHitCandidate] & 1) != 0 || !-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && (objc_msgSend(candidateCopy, "isLocalTopHitCandidate") & 1) == 0)
  {
    v5 = [(PRSRankingItem *)self compareShortcutTopHitCandidate:candidateCopy];
    if (v5)
    {
      goto LABEL_19;
    }

    [(PRSRankingItem *)self likelihood];
    v13 = v12;
    [candidateCopy likelihood];
    if (v13 > v14)
    {
      goto LABEL_18;
    }

    [(PRSRankingItem *)self likelihood];
    v17 = v16;
    [candidateCopy likelihood];
    if (v17 < v18)
    {
      goto LABEL_6;
    }
  }

  if (!-[PRSRankingItem wasEngaged](self, "wasEngaged") || ![candidateCopy wasEngaged])
  {
    goto LABEL_15;
  }

  [(PRSRankingItem *)self topicalityScore];
  v7 = v6;
  [candidateCopy topicalityScore];
  if (v7 > v8)
  {
LABEL_18:
    v5 = 1;
    goto LABEL_19;
  }

  [(PRSRankingItem *)self topicalityScore];
  v10 = v9;
  [candidateCopy topicalityScore];
  if (v10 >= v11)
  {
LABEL_15:
    v5 = 0;
    goto LABEL_19;
  }

LABEL_6:
  v5 = -1;
LABEL_19:

  return v5;
}

- (int64_t)compareLocalTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (!candidateCopy || -[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && ![candidateCopy isLocalTopHitCandidate])
  {
    goto LABEL_14;
  }

  if (!-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") && ([candidateCopy isLocalTopHitCandidate] & 1) != 0)
  {
    goto LABEL_6;
  }

  if (!-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") || ([candidateCopy isLocalTopHitCandidate] & 1) == 0) && (-[PRSRankingItem isLocalTopHitCandidate](self, "isLocalTopHitCandidate") || (objc_msgSend(candidateCopy, "isLocalTopHitCandidate")))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_15;
  }

  v5 = [(PRSRankingItem *)self compareShortcutTopHitCandidate:candidateCopy];
  if (v5)
  {
    goto LABEL_15;
  }

  [(PRSRankingItem *)self likelihood];
  v7 = v6;
  [candidateCopy likelihood];
  if (v7 > v8)
  {
LABEL_14:
    v5 = 1;
    goto LABEL_15;
  }

  [(PRSRankingItem *)self likelihood];
  v11 = v10;
  [candidateCopy likelihood];
  if (v11 >= v12)
  {
    [(PRSRankingItem *)self likelihood];
    if (v13 == 1.0)
    {
      if (-[PRSRankingItem wasEngagedInSpotlight](self, "wasEngagedInSpotlight") && ![candidateCopy wasEngagedInSpotlight])
      {
        goto LABEL_14;
      }

      if (-[PRSRankingItem wasEngagedInSpotlight](self, "wasEngagedInSpotlight") || ([candidateCopy wasEngagedInSpotlight] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [(PRSRankingItem *)self freshnessScore];
      v15 = v14;
      [candidateCopy freshnessScore];
      if (v15 > v16)
      {
        goto LABEL_14;
      }

      [(PRSRankingItem *)self freshnessScore];
      v18 = v17;
      [candidateCopy freshnessScore];
      if (v18 >= v19)
      {
        goto LABEL_11;
      }
    }
  }

LABEL_6:
  v5 = -1;
LABEL_15:

  return v5;
}

- (int64_t)compareParsecTopHitCandidate:(id)candidate
{
  candidateCopy = candidate;
  if (candidateCopy)
  {
    v5 = [(PRSRankingItem *)self compareShortcutTopHitCandidate:candidateCopy];
    if (!v5)
    {
      [(PRSRankingItem *)self engagementScore];
      v7 = v6;
      [candidateCopy engagementScore];
      v9 = v8;
      if (v7 >= v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = -1;
      }

      if (v7 > v9)
      {
        v5 = 1;
      }

      else
      {
        v5 = v10;
      }
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)isAssociatedWithTophitContactsFromItems:(id)items
{
  v42 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  if (([(PRSRankingItem *)self bundleIDType]& 0x20) == 0 && ([(PRSRankingItem *)self bundleIDType]& 8) == 0 && ([(PRSRankingItem *)self bundleIDType]& 0x100000) == 0 || !objc_msgSend_count(itemsCopy))
  {
    v23 = 0;
    goto LABEL_42;
  }

  v5 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 5uLL);
  v6 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x15BuLL);
  if (!objc_msgSend_count(v5) && !objc_msgSend_count(v6))
  {
    v23 = 0;
    goto LABEL_41;
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = itemsCopy;
  v8 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (!v8)
  {
    v23 = 0;
    goto LABEL_40;
  }

  v9 = v8;
  v10 = *v36;
  v25 = v6;
  v26 = v5;
  while (2)
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v36 != v10)
      {
        objc_enumerationMutation(v7);
      }

      v12 = *(*(&v35 + 1) + 8 * i);
      if (([v12 bundleIDType] & 0x8000) != 0 && (objc_msgSend(v12, "bundleIDType") & 4) != 0)
      {
        v13 = SSCompactRankingAttrsGetValue([v12 attributes], 7uLL);
        if ([v13 length])
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = v5;
          v15 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v32;
LABEL_17:
            v18 = 0;
            while (1)
            {
              if (*v32 != v17)
              {
                objc_enumerationMutation(v14);
              }

              if ([v13 isEqualToString:*(*(&v31 + 1) + 8 * v18)])
              {
                goto LABEL_38;
              }

              if (v16 == ++v18)
              {
                v16 = [v14 countByEnumeratingWithState:&v31 objects:v40 count:16];
                if (v16)
                {
                  goto LABEL_17;
                }

                break;
              }
            }
          }

          v6 = v25;
          v5 = v26;
          if (objc_msgSend_count(v25) <= 3)
          {
            v29 = 0u;
            v30 = 0u;
            v27 = 0u;
            v28 = 0u;
            v14 = v25;
            v19 = [v14 countByEnumeratingWithState:&v27 objects:v39 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v28;
LABEL_26:
              v22 = 0;
              while (1)
              {
                if (*v28 != v21)
                {
                  objc_enumerationMutation(v14);
                }

                if ([v13 isEqualToString:*(*(&v27 + 1) + 8 * v22)])
                {
                  break;
                }

                if (v20 == ++v22)
                {
                  v20 = [v14 countByEnumeratingWithState:&v27 objects:v39 count:16];
                  if (v20)
                  {
                    goto LABEL_26;
                  }

                  goto LABEL_32;
                }
              }

LABEL_38:

              v23 = 1;
              v6 = v25;
              v5 = v26;
              goto LABEL_40;
            }

LABEL_32:

            v6 = v25;
            v5 = v26;
          }
        }
      }
    }

    v9 = [v7 countByEnumeratingWithState:&v35 objects:v41 count:16];
    v23 = 0;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_40:

LABEL_41:
LABEL_42:

  return v23;
}

- (BOOL)isGoodMatchAlternateName:(id)name withEvaluator:(id)evaluator
{
  nameCopy = name;
  evaluatorCopy = evaluator;
  [(PRSRankingItem *)self matchScoreAppName:nameCopy withEvaluator:evaluatorCopy];
  v9 = v8;
  if (v8 > 0.99 || v9 > 0.97 && ([evaluatorCopy isCJK] & 1) != 0)
  {
    goto LABEL_2;
  }

  if (v9 <= 0.95)
  {
    goto LABEL_14;
  }

  queryString = [evaluatorCopy queryString];
  if ([queryString length] < 2 || objc_msgSend(nameCopy, "length") > 5)
  {
    goto LABEL_13;
  }

  v13 = [nameCopy length];
  queryString2 = [evaluatorCopy queryString];
  if ((v13 - [queryString2 length]) >= 2)
  {

LABEL_13:
    goto LABEL_14;
  }

  localizedUppercaseString = [nameCopy localizedUppercaseString];
  v16 = [localizedUppercaseString isEqualToString:nameCopy];

  if (v16)
  {
    goto LABEL_2;
  }

LABEL_14:
  [(PRSRankingItem *)self matchScoreTitle:nameCopy withEvaluator:evaluatorCopy];
  v18 = v17;
  if (v9 > 0.9)
  {
    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v20 = [nameCopy rangeOfCharacterFromSet:whitespaceCharacterSet];

    if (v20 != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_26;
    }

    if (v9 > 0.95)
    {
      queryString3 = [evaluatorCopy queryString];
      v22 = [queryString3 length];

      if (v22 > 3)
      {
        goto LABEL_2;
      }
    }

    if ([nameCopy containsCJK])
    {
LABEL_26:
      if (v18 <= 0.35)
      {
        queryString4 = [evaluatorCopy queryString];
        v24 = [queryString4 length];

        if (v24 <= 2)
        {
          goto LABEL_21;
        }
      }

LABEL_2:
      v10 = 1;
      goto LABEL_3;
    }
  }

LABEL_21:
  if (v18 >= 0.6)
  {
    queryString5 = [evaluatorCopy queryString];
    v10 = [queryString5 length] > 2;
  }

  else
  {
    v10 = 0;
  }

LABEL_3:

  return v10;
}

- (BOOL)isCCCD
{
  sectionBundleIdentifier = [(PRSRankingItem *)self sectionBundleIdentifier];
  if ([sectionBundleIdentifier isEqualToString:@"com.apple.conversion"])
  {
    v4 = 1;
  }

  else
  {
    sectionBundleIdentifier2 = [(PRSRankingItem *)self sectionBundleIdentifier];
    if ([sectionBundleIdentifier2 isEqualToString:@"com.apple.calculation"])
    {
      v4 = 1;
    }

    else
    {
      sectionBundleIdentifier3 = [(PRSRankingItem *)self sectionBundleIdentifier];
      if ([sectionBundleIdentifier3 isEqualToString:@"com.apple.worldclock"])
      {
        v4 = 1;
      }

      else
      {
        sectionBundleIdentifier4 = [(PRSRankingItem *)self sectionBundleIdentifier];
        v4 = [sectionBundleIdentifier4 isEqualToString:@"com.apple.datadetector.quick_actions"];
      }
    }
  }

  return v4;
}

- (BOOL)isSearchResultPage:(id)page
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = isSearchResultPage__onceToken;
  pageCopy = page;
  if (v3 != -1)
  {
    [PRSRankingItem(Scoring) isSearchResultPage:];
  }

  lowercaseString = [pageCopy lowercaseString];

  v6 = [MEMORY[0x1E695DFF8] URLWithString:lowercaseString];
  v7 = v6;
  if (!v6)
  {
    v28 = 0;
    goto LABEL_51;
  }

  host = [v6 host];
  if (!host)
  {
    v28 = 0;
    goto LABEL_50;
  }

  path = [v7 path];
  query = [v7 query];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = isSearchResultPage__searchProviders;
  v33 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (!v33)
  {
    v28 = 0;
    goto LABEL_49;
  }

  v34 = *v44;
  v30 = lowercaseString;
  v31 = query;
  while (2)
  {
    for (i = 0; i != v33; ++i)
    {
      if (*v44 != v34)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v43 + 1) + 8 * i);
      v13 = [isSearchResultPage__searchProvidersAlternateHostChecks objectForKey:v12];
      if (!v13)
      {
        v49 = v12;
        v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v49 count:1];
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v14 = v13;
      v15 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
      v16 = v14;
      if (!v15)
      {
        goto LABEL_39;
      }

      v17 = v15;
      v18 = 0;
      v19 = *v40;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v14);
          }

          v18 |= [host containsString:*(*(&v39 + 1) + 8 * j)];
        }

        v17 = [v14 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v17);

      if (v18)
      {
        v21 = [isSearchResultPage__searchProvidersPaths objectForKey:v12];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v16 = v21;
        v22 = [v16 countByEnumeratingWithState:&v35 objects:v47 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v36;
          while (2)
          {
            for (k = 0; k != v23; ++k)
            {
              if (*v36 != v24)
              {
                objc_enumerationMutation(v16);
              }

              if (*(*(&v35 + 1) + 8 * k))
              {
                v26 = path == 0;
              }

              else
              {
                v26 = 1;
              }

              if (!v26 && ([path isEqualToString:?] & 1) != 0)
              {
                v27 = v16;
                goto LABEL_45;
              }
            }

            v23 = [v16 countByEnumeratingWithState:&v35 objects:v47 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        if (!objc_msgSend_count(v16) && [path length] > 1)
        {
          v28 = 0;
          goto LABEL_46;
        }

        v27 = [isSearchResultPage__searchProvidersQueryPrefix objectForKey:v12];
        if (!objc_msgSend_count(v16) && v27 && v31 && ([v31 hasPrefix:v27] & 1) != 0)
        {
LABEL_45:

          v28 = 1;
LABEL_46:
          lowercaseString = v30;
          query = v31;

          goto LABEL_49;
        }

LABEL_39:
      }
    }

    v28 = 0;
    lowercaseString = v30;
    query = v31;
    v33 = [obj countByEnumeratingWithState:&v43 objects:v50 count:16];
    if (v33)
    {
      continue;
    }

    break;
  }

LABEL_49:

LABEL_50:
LABEL_51:

  return v28;
}

void __46__PRSRankingItem_Scoring__isSearchResultPage___block_invoke()
{
  v16[9] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v16[0] = @"baidu";
  v16[1] = @"bing";
  v16[2] = @"duckduckgo";
  v16[3] = @"ecosia";
  v16[4] = @"google";
  v16[5] = @"qihoo";
  v16[6] = @"sogou";
  v16[7] = @"yahoo";
  v16[8] = @"yandex";
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:9];
  v2 = [v0 setWithArray:v1];
  v3 = isSearchResultPage__searchProviders;
  isSearchResultPage__searchProviders = v2;

  v14[0] = @"baidu";
  v14[1] = @"bing";
  v15[0] = &unk_1F55B7628;
  v15[1] = &unk_1F55B7640;
  v14[2] = @"ecosia";
  v14[3] = @"google";
  v15[2] = &unk_1F55B7658;
  v15[3] = &unk_1F55B7670;
  v14[4] = @"qihoo";
  v14[5] = @"sogou";
  v15[4] = &unk_1F55B7688;
  v15[5] = &unk_1F55B76A0;
  v14[6] = @"yahoo";
  v14[7] = @"yandex";
  v15[6] = &unk_1F55B76B8;
  v15[7] = &unk_1F55B76D0;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:8];
  v5 = isSearchResultPage__searchProvidersPaths;
  isSearchResultPage__searchProvidersPaths = v4;

  v12 = @"duckduckgo";
  v13 = @"q=";
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  v7 = isSearchResultPage__searchProvidersQueryPrefix;
  isSearchResultPage__searchProvidersQueryPrefix = v6;

  v10[0] = @"duckduckgo";
  v10[1] = @"qihoo";
  v11[0] = &unk_1F55B76E8;
  v11[1] = &unk_1F55B7700;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v9 = isSearchResultPage__searchProvidersAlternateHostChecks;
  isSearchResultPage__searchProvidersAlternateHostChecks = v8;
}

- (void)resetScoreForShortcutsSetting:(id)setting
{
  settingCopy = setting;
  v4 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x48uLL);
  if ([v4 isEqualToString:@"com.apple.Preferences"])
  {
    v5 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xA8uLL);
    if (settingCopy)
    {
      v6 = [settingCopy objectForKeyedSubscript:v5];
      if (v6)
      {
        [(PRSRankingItem *)self topicalityScore];
        v8 = v7;
        [v6 topicalityScore];
        v10 = v9 + 0.01;
        if (v10 > 1.0)
        {
          v10 = 1.0;
        }

        if (v8 >= v10)
        {
          v10 = v8;
        }

        [(PRSRankingItem *)self setTopicalityScore:v10];
        [(PRSRankingItem *)self topicalityScore];
        *&v11 = v11;
        [(PRSRankingItem *)self setKeywordMatchScore:v11];
        [(PRSRankingItem *)self engagementScore];
        v13 = v12;
        [v6 engagementScore];
        v15 = v14 + 0.01;
        if (v15 > 1.0)
        {
          v15 = 1.0;
        }

        if (v13 >= v15)
        {
          v15 = v13;
        }

        [(PRSRankingItem *)self setEngagementScore:v15];
        [(PRSRankingItem *)self freshnessScore];
        v17 = v16;
        [v6 freshnessScore];
        v19 = v18 + 0.01;
        if (v19 > 1.0)
        {
          v19 = 1.0;
        }

        if (v17 >= v19)
        {
          v19 = v17;
        }

        [(PRSRankingItem *)self setFreshnessScore:v19];
        [(PRSRankingItem *)self likelihood];
        v21 = v20;
        [v6 likelihood];
        v23 = v22 + 0.01;
        if (v23 > 1.0)
        {
          v23 = 1.0;
        }

        if (v21 >= v23)
        {
          v23 = v21;
        }

        [(PRSRankingItem *)self setLikelihood:v23];
      }
    }
  }
}

- (void)extractDocumentSignals
{
  [(PRSRankingItem *)self setDetectedEventType:0];
  v14 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x127uLL);
  v3 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0xE8uLL);
  v4 = MEMORY[0x1E6963AA0];
  v5 = MEMORY[0x1E6963AA8];
  v6 = MEMORY[0x1E6963AC0];
  v7 = MEMORY[0x1E6963AC8];
  v8 = MEMORY[0x1E6963A90];
  v9 = MEMORY[0x1E6963AB8];
  v10 = MEMORY[0x1E6963AD0];
  v11 = MEMORY[0x1E6963A98];
  if (v14)
  {
    if ([v14 containsObject:*MEMORY[0x1E6963AA0]])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x8000];
    }

    if ([v14 containsObject:*v5])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x4000];
    }

    if ([v14 containsObject:*v6])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x10000];
    }

    if ([v14 containsObject:*v7])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x40000];
    }

    if ([v14 containsObject:*v8])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x80000];
    }

    if ([v14 containsObject:*v9])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x100000];
    }

    if ([v14 containsObject:*v10])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x200000];
    }

    if ([v14 containsObject:*v11])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x400000];
    }

    if ([v14 containsObject:*MEMORY[0x1E6963AB0]])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x20000000];
    }
  }

  if (v3)
  {
    if ([v3 isEqualToString:*v4])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x8000];
    }

    if ([v3 isEqualToString:*v5])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x4000];
    }

    if ([v3 isEqualToString:*v6])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x10000];
    }

    if ([v3 isEqualToString:*v7])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x40000];
    }

    if ([v3 isEqualToString:*v8])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x80000];
    }

    if ([v3 isEqualToString:*v9])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x100000];
    }

    if ([v3 isEqualToString:*v10])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x200000];
    }

    if ([v3 isEqualToString:*v11])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x400000];
    }

    if ([v3 isEqualToString:*MEMORY[0x1E6963AB0]])
    {
      [(PRSRankingItem *)self setDetectedEventType:[(PRSRankingItem *)self detectedEventType]| 0x20000000];
    }
  }

  v12 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x32uLL);
  [(PRSRankingItem *)self setDomainIdentifier:v12];

  v13 = SSCompactRankingAttrsGetValue([(PRSRankingItem *)self attributes], 0x126uLL);
  [(PRSRankingItem *)self setEventSourceBundleIdentifier:v13];
}

@end