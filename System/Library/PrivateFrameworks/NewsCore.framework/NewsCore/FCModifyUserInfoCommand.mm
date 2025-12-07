@interface FCModifyUserInfoCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
- (FCModifyUserInfoCommand)initWithUserInfoRecord:(id)record;
@end

@implementation FCModifyUserInfoCommand

- (FCModifyUserInfoCommand)initWithUserInfoRecord:(id)record
{
  v10 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  v4 = MEMORY[0x1E695DEC8];
  recordCopy2 = record;
  v6 = [v4 arrayWithObjects:&recordCopy count:1];

  v7 = [(FCModifyRecordsCommand *)self initWithLocalRecords:v6 merge:1, recordCopy, v10];
  return v7;
}

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  v223 = *MEMORY[0x1E69E9840];
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"finishFirstLaunchVersion"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"finishFirstLaunchVersion"];
  v158 = v8;
  v159 = v7;
  if (v8 && [v7 compare:v8] != 1)
  {
    v9 = 0;
  }

  else
  {
    [remoteRecordCopy setObject:v7 forKeyedSubscript:@"finishFirstLaunchVersion"];
    v9 = 1;
  }

  v202 = [recordCopy objectForKeyedSubscript:@"sportsOnboardingState"];
  v10 = [remoteRecordCopy objectForKeyedSubscript:@"sportsOnboardingState"];
  v210 = [recordCopy objectForKeyedSubscript:@"sportsOnboardingCompletedDate"];
  v208 = [remoteRecordCopy objectForKeyedSubscript:@"sportsOnboardingCompletedDate"];
  v11 = FCUserInfoLog;
  v188 = v10;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v208 description];
    v13 = [v210 description];
    *buf = 138413058;
    v212 = v188;
    v213 = 2112;
    v214 = v202;
    v215 = 2112;
    v216 = v12;
    v217 = 2112;
    v218 = v13;
    _os_log_impl(&dword_1B63EF000, v11, OS_LOG_TYPE_DEFAULT, "Will check to merge sports onboarding state local record to remote: remoteSportsState=%@, localSportsState=%@, remoteDate=%@, localDate=%@", buf, 0x2Au);

    v10 = v188;
  }

  if (!v10 || !v208 || [v210 fc_isLaterThan:v208 withPrecision:0])
  {
    v14 = FCUserInfoLog;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v14, OS_LOG_TYPE_DEFAULT, "Merging sports onboarding local record to remote", buf, 2u);
    }

    [remoteRecordCopy setObject:v202 forKeyedSubscript:@"sportsOnboardingState"];
    [remoteRecordCopy setObject:v210 forKeyedSubscript:@"sportsOnboardingCompletedDate"];
    v9 = 1;
  }

  v201 = [recordCopy objectForKeyedSubscript:@"shortcutsOnboardingState"];
  v15 = [remoteRecordCopy objectForKeyedSubscript:@"shortcutsOnboardingState"];
  v200 = [recordCopy objectForKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
  v207 = [remoteRecordCopy objectForKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
  v16 = FCUserInfoLog;
  v187 = v15;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v207 description];
    v18 = [v210 description];
    *buf = 138413058;
    v212 = v187;
    v213 = 2112;
    v214 = v201;
    v215 = 2112;
    v216 = v17;
    v217 = 2112;
    v218 = v18;
    _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_DEFAULT, "Will check to merge shortcuts onboarding state local record to remote: remoteShortcutsOnboardingState=%@, localShortcutsOnboardingState=%@, remoteDate=%@, localDate=%@", buf, 0x2Au);

    v15 = v187;
  }

  if (!v15 || !v207 || [v200 fc_isLaterThan:v207 withPrecision:0])
  {
    v19 = FCUserInfoLog;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_DEFAULT, "Merging shortcuts onboarding state local record to remote", buf, 2u);
    }

    [remoteRecordCopy setObject:v201 forKeyedSubscript:@"shortcutsOnboardingState"];
    [remoteRecordCopy setObject:v200 forKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
    v9 = 1;
  }

  v199 = [recordCopy objectForKeyedSubscript:@"sportsSyncState"];
  v20 = [remoteRecordCopy objectForKeyedSubscript:@"sportsSyncState"];
  v206 = [recordCopy objectForKeyedSubscript:@"sportsSyncStateLastSavedDate"];
  v205 = [remoteRecordCopy objectForKeyedSubscript:@"sportsSyncStateLastSavedDate"];
  v21 = FCUserInfoLog;
  v186 = v20;
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v205 description];
    v23 = [v206 description];
    *buf = 138413058;
    v212 = v186;
    v213 = 2112;
    v214 = v199;
    v215 = 2112;
    v216 = v22;
    v217 = 2112;
    v218 = v23;
    _os_log_impl(&dword_1B63EF000, v21, OS_LOG_TYPE_DEFAULT, "Will check to merge sports sync state local record to remote: remoteSportsSyncState=%@, localSportsSyncState=%@, remoteDate=%@, localDate=%@", buf, 0x2Au);

    v20 = v186;
  }

  if (!v20 || !v205 || [v206 fc_isLaterThan:v205 withPrecision:0])
  {
    v24 = FCUserInfoLog;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v24, OS_LOG_TYPE_DEFAULT, "Merging sports sync state local record to remote", buf, 2u);
    }

    [remoteRecordCopy setObject:v199 forKeyedSubscript:@"sportsSyncState"];
    [remoteRecordCopy setObject:v206 forKeyedSubscript:@"sportsSyncStateLastSavedDate"];
    v9 = 1;
  }

  v25 = [recordCopy objectForKeyedSubscript:@"sportsFavoritesLastModifiedDate"];
  v26 = [remoteRecordCopy objectForKeyedSubscript:@"sportsFavoritesLastModifiedDate"];
  v27 = FCUserInfoLog;
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v25 description];
    v29 = [v26 description];
    *buf = 138412546;
    v212 = v28;
    v213 = 2112;
    v214 = v29;
    _os_log_impl(&dword_1B63EF000, v27, OS_LOG_TYPE_DEFAULT, "Will check to merge 'sports favorites last modified date' local record to remote: remoteSportsFavoritesLastModifiedDate=%@, localSportsFavoritesLastModifiedDate=%@", buf, 0x16u);
  }

  if (!v26 || [v25 fc_isLaterThan:v26 withPrecision:0])
  {
    v30 = FCUserInfoLog;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v30, OS_LOG_TYPE_DEFAULT, "Merging 'sports favorites last modified date' local record to remote", buf, 2u);
    }

    [remoteRecordCopy setObject:v25 forKeyedSubscript:@"sportsFavoritesLastModifiedDate"];
    v9 = 1;
  }

  v156 = v26;
  v157 = v25;
  v204 = [recordCopy objectForKeyedSubscript:@"feldsparID"];
  v185 = [remoteRecordCopy objectForKeyedSubscript:@"feldsparID"];
  v198 = [recordCopy objectForKeyedSubscript:@"notificationsUserID"];
  v184 = [remoteRecordCopy objectForKeyedSubscript:@"notificationsUserID"];
  v31 = [recordCopy objectForKeyedSubscript:@"lastOpenedDate"];
  v32 = [remoteRecordCopy objectForKeyedSubscript:@"lastOpenedDate"];
  v33 = FCUserInfoLog;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 141559298;
    v212 = 1752392040;
    v213 = 2112;
    v214 = v185;
    v215 = 2160;
    v216 = 1752392040;
    v217 = 2112;
    v218 = v204;
    v219 = 2112;
    v220 = v32;
    v221 = 2112;
    v222 = v31;
    _os_log_impl(&dword_1B63EF000, v33, OS_LOG_TYPE_DEFAULT, "Will check to merge user id local record to remote: (masked) remoteID=%{mask.hash}@, localID=%{mask.hash}@, remoteDate=%@, localDate=%@", buf, 0x3Eu);
  }

  v183 = v32;
  v34 = v31;
  v161 = v31;
  if (![v31 compare:v32] && v204 && (objc_msgSend(v204, "isEqualToString:", v185) & 1) == 0)
  {
    v35 = FCUserInfoLog;
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v35, OS_LOG_TYPE_DEFAULT, "Merging user id local record to remote", buf, 2u);
    }

    [remoteRecordCopy setObject:v204 forKeyedSubscript:@"feldsparID"];
    v9 = 1;
    v34 = v31;
  }

  if (v184)
  {
    v36 = v32;
  }

  else
  {
    v36 = v32;
    if (v198)
    {
      [remoteRecordCopy setObject:v198 forKeyedSubscript:@"notificationsUserID"];
      v9 = 1;
    }
  }

  v37 = [recordCopy objectForKeyedSubscript:@"adsUserID"];
  v38 = [remoteRecordCopy objectForKeyedSubscript:@"adsUserID"];
  v197 = [recordCopy objectForKeyedSubscript:@"adsUserIDCreatedDate"];
  v196 = [remoteRecordCopy objectForKeyedSubscript:@"adsUserIDCreatedDate"];
  v154 = v38;
  if (!v38 || !v196 || [v197 fc_isLaterThan:v196])
  {
    [remoteRecordCopy setObject:v37 forKeyedSubscript:@"adsUserID"];
    [remoteRecordCopy setObject:v197 forKeyedSubscript:@"adsUserIDCreatedDate"];
    v9 = 1;
  }

  v39 = [recordCopy objectForKeyedSubscript:@"sportsUserID"];
  v40 = [remoteRecordCopy objectForKeyedSubscript:@"sportsUserID"];
  v152 = v40;
  if (v39 && ([v39 isEqualToString:v40] & 1) == 0)
  {
    [remoteRecordCopy setObject:v39 forKeyedSubscript:@"sportsUserID"];
    v9 = 1;
  }

  if (!v36 || [v34 compare:v36] == 1)
  {
    [remoteRecordCopy setObject:v34 forKeyedSubscript:@"lastOpenedDate"];
    v9 = 1;
  }

  v41 = [recordCopy objectForKeyedSubscript:@"userStartDate"];
  v42 = [remoteRecordCopy objectForKeyedSubscript:@"userStartDate"];
  if (v36)
  {
    v203 = [v41 earlierDate:v42];

    if (!v42)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (![v203 compare:v42])
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v203 = v41;
  if (v42)
  {
    goto LABEL_62;
  }

LABEL_63:
  [remoteRecordCopy setObject:v203 forKeyedSubscript:@"userStartDate"];
  v9 = 1;
LABEL_64:
  v150 = v42;
  v155 = v37;
  v43 = [recordCopy objectForKeyedSubscript:@"lastViewedSavedDate"];
  v44 = [remoteRecordCopy objectForKeyedSubscript:@"lastViewedSavedDate"];
  v149 = v44;
  if (v44)
  {
    v45 = v44;
    v46 = [v43 laterDate:v44];

    if (![v46 compare:v45])
    {
      goto LABEL_69;
    }
  }

  else
  {
    v46 = v43;
  }

  [remoteRecordCopy setObject:v46 forKeyedSubscript:@"lastViewedSavedDate"];
  v9 = 1;
LABEL_69:
  v47 = [recordCopy objectForKeyedSubscript:@"lastViewedSharedWithYouDate"];
  v48 = [remoteRecordCopy objectForKeyedSubscript:@"lastViewedSharedWithYouDate"];
  v148 = v46;
  v172 = v48;
  if (v47 && (!v48 || [v47 fc_isLaterThan:v48]))
  {
    [remoteRecordCopy setObject:v47 forKeyedSubscript:@"lastViewedSharedWithYouDate"];
    v9 = 1;
  }

  v49 = [recordCopy objectForKeyedSubscript:@"monthlyMeteredCount"];
  v50 = [remoteRecordCopy objectForKeyedSubscript:@"monthlyMeteredCount"];
  v195 = v49;
  v146 = v50;
  if (v49 && !v50 || [v49 compare:v50] == 1)
  {
    [remoteRecordCopy setObject:v49 forKeyedSubscript:@"monthlyMeteredCount"];
    v9 = 1;
  }

  v147 = v47;
  v145 = [remoteRecordCopy objectForKeyedSubscript:@"totalMeteredCount"];
  if (!v145)
  {
    [remoteRecordCopy setObject:&unk_1F2E6FF30 forKeyedSubscript:@"totalMeteredCount"];
    v9 = 1;
  }

  v51 = v39;
  v52 = [recordCopy objectForKeyedSubscript:@"meteredCountLastResetDate"];
  v53 = [remoteRecordCopy objectForKeyedSubscript:@"meteredCountLastResetDate"];
  v171 = v53;
  v54 = v41;
  if (v52 && (!v53 || [v52 fc_isLaterThan:v53]))
  {
    [remoteRecordCopy setObject:v52 forKeyedSubscript:@"meteredCountLastResetDate"];
    v9 = 1;
  }

  v55 = [recordCopy objectForKeyedSubscript:@"monthlyPaidBundleMeteredCount"];
  v56 = [remoteRecordCopy objectForKeyedSubscript:@"monthlyPaidBundleMeteredCount"];
  v194 = v55;
  v143 = v56;
  if (v55 && !v56 || [v55 compare:v56] == 1)
  {
    [remoteRecordCopy setObject:v55 forKeyedSubscript:@"monthlyPaidBundleMeteredCount"];
    v9 = 1;
  }

  v57 = [recordCopy objectForKeyedSubscript:@"paidBundleMeteredCountLastResetDate"];
  v58 = [remoteRecordCopy objectForKeyedSubscript:@"paidBundleMeteredCountLastResetDate"];
  v151 = v54;
  v182 = v57;
  v153 = v51;
  v170 = v58;
  if (v57 && (!v58 || [v57 fc_isLaterThan:v58]))
  {
    [remoteRecordCopy setObject:v57 forKeyedSubscript:@"paidBundleMeteredCountLastResetDate"];
    v9 = 1;
  }

  v59 = [recordCopy objectForKeyedSubscript:@"upsellAppLaunchCount"];
  v60 = [remoteRecordCopy objectForKeyedSubscript:@"upsellAppLaunchCount"];
  v209 = v43;
  v141 = v60;
  if (v59 && !v60)
  {
    [remoteRecordCopy setObject:v59 forKeyedSubscript:@"upsellAppLaunchCount"];
    v9 = 1;
  }

  v61 = [recordCopy objectForKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
  v62 = [remoteRecordCopy objectForKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
  v173 = v61;
  v63 = [v61 fc_numberFollowingString:@"v"];
  v140 = v62;
  v64 = [v62 fc_numberFollowingString:@"v"];
  v65 = v64;
  v169 = v63;
  if (v63 && (!v64 || [v63 compare:v64] == 1))
  {
    [remoteRecordCopy setObject:v173 forKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
    v9 = 1;
  }

  v139 = v65;
  v66 = [recordCopy objectForKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
  v67 = [remoteRecordCopy objectForKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
  v68 = v67;
  v144 = v52;
  if (v66 && (!v67 || [v66 compare:v67] == 1))
  {
    [remoteRecordCopy setObject:v66 forKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
    v9 = 1;
  }

  v69 = [recordCopy objectForKeyedSubscript:@"upsellAppLaunchLastShownCampaignID"];
  v70 = [remoteRecordCopy objectForKeyedSubscript:@"upsellAppLaunchLastShownCampaignID"];
  v181 = v69;
  v168 = v70;
  if (v69 && (!v70 || [v69 compare:v70] == 1))
  {
    [remoteRecordCopy setObject:v69 forKeyedSubscript:@"upsellAppLaunchLastShownCampaignID"];
    v9 = 1;
  }

  v71 = [recordCopy objectForKeyedSubscript:@"upsellAppLaunchLastPresenterBundleID"];
  v72 = [remoteRecordCopy objectForKeyedSubscript:@"upsellAppLaunchLastPresenterBundleID"];
  v167 = v72;
  if (v71 && (!v72 || [v71 compare:v72] == 1))
  {
    [remoteRecordCopy setObject:v71 forKeyedSubscript:@"upsellAppLaunchLastPresenterBundleID"];
    v9 = 1;
  }

  v73 = [recordCopy objectForKeyedSubscript:@"newsletterSignupLastSeenDate"];
  v74 = [remoteRecordCopy objectForKeyedSubscript:@"newsletterSignupLastSeenDate"];
  v180 = v73;
  v137 = v68;
  v166 = v74;
  if (v73 && (!v74 || [v73 compare:v74] == 1))
  {
    [remoteRecordCopy setObject:v73 forKeyedSubscript:@"newsletterSignupLastSeenDate"];
    v9 = 1;
  }

  v75 = v59;
  v76 = [recordCopy objectForKeyedSubscript:@"personalizedNewsletterSignupLastSeenDate"];
  v77 = [remoteRecordCopy objectForKeyedSubscript:@"personalizedNewsletterSignupLastSeenDate"];
  v165 = v77;
  v78 = v209;
  if (v76 && (!v77 || [v76 compare:v77] == 1))
  {
    [remoteRecordCopy setObject:v76 forKeyedSubscript:@"personalizedNewsletterSignupLastSeenDate"];
    v9 = 1;
  }

  v79 = [recordCopy objectForKeyedSubscript:@"issuesNewsletterOptinLastSeenDate"];
  v80 = [remoteRecordCopy objectForKeyedSubscript:@"issuesNewsletterOptinLastSeenDate"];
  v179 = v79;
  v138 = v66;
  v164 = v80;
  if (v79 && (!v80 || [v79 compare:v80] == 1))
  {
    [remoteRecordCopy setObject:v79 forKeyedSubscript:@"issuesNewsletterOptinLastSeenDate"];
    v9 = 1;
  }

  v81 = [recordCopy objectForKeyedSubscript:@"editorialArticleVersion"];
  v192 = [remoteRecordCopy objectForKeyedSubscript:@"editorialArticleVersion"];
  v142 = v75;
  if (v81 && !v192 || v81 && ([v81 isEqualToString:v192] & 1) == 0)
  {
    [remoteRecordCopy setObject:v81 forKeyedSubscript:@"editorialArticleVersion"];
    v9 = 1;
  }

  v82 = [recordCopy objectForKeyedSubscript:@"marketingNotificationsEnabled"];
  v191 = [remoteRecordCopy objectForKeyedSubscript:@"marketingNotificationsEnabled"];
  if (v82 && !v191 || v82 && (v83 = [v82 BOOLValue], v78 = v209, v83 != objc_msgSend(v191, "BOOLValue")))
  {
    [remoteRecordCopy setObject:v82 forKeyedSubscript:@"marketingNotificationsEnabled"];
    v9 = 1;
  }

  v84 = [recordCopy objectForKeyedSubscript:@"newIssueNotificationsEnabled"];
  v85 = [remoteRecordCopy objectForKeyedSubscript:@"newIssueNotificationsEnabled"];
  v86 = v84;
  v87 = v78;
  v88 = v85;
  v175 = v86;
  if (v86 && !v85 || v86 && (v89 = [v86 BOOLValue], v90 = v89 == objc_msgSend(v88, "BOOLValue"), v87 = v209, !v90))
  {
    [remoteRecordCopy setObject:v175 forKeyedSubscript:@"newIssueNotificationsEnabled"];
    v9 = 1;
  }

  v132 = v88;
  v91 = v76;
  [recordCopy objectForKeyedSubscript:@"endOfAudioNotificationsEnabled"];
  v136 = v71;
  v93 = v92 = v87;
  v94 = [remoteRecordCopy objectForKeyedSubscript:@"endOfAudioNotificationsEnabled"];
  v95 = v93;
  v96 = v92;
  v97 = v94;
  v174 = v95;
  if (v95 && !v94 || v95 && (v98 = [v95 BOOLValue], v90 = v98 == objc_msgSend(v97, "BOOLValue"), v96 = v209, !v90))
  {
    [remoteRecordCopy setObject:v174 forKeyedSubscript:@"endOfAudioNotificationsEnabled"];
    v9 = 1;
  }

  v99 = v81;
  v131 = v97;
  v100 = [recordCopy objectForKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
  v190 = [remoteRecordCopy objectForKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
  v135 = v91;
  if (v100 && !v190 || v100 && (v101 = [v100 integerValue], v90 = v101 == objc_msgSend(v190, "integerValue"), v96 = v209, !v90))
  {
    [remoteRecordCopy setObject:v100 forKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
    v9 = 1;
  }

  v102 = [recordCopy objectForKeyedSubscript:@"canonicalLanguage"];
  v189 = [remoteRecordCopy objectForKeyedSubscript:@"canonicalLanguage"];
  if (v102 && !v189 || v102 && ([v102 isEqualToString:v189] & 1) == 0)
  {
    [remoteRecordCopy setObject:v102 forKeyedSubscript:@"canonicalLanguage"];
    v9 = 1;
  }

  v103 = v96;
  v104 = [recordCopy objectForKeyedSubscript:@"postPurchaseOnboardingLastSeenDate"];
  v105 = [remoteRecordCopy objectForKeyedSubscript:@"postPurchaseOnboardingLastSeenDate"];
  v178 = v104;
  v163 = v105;
  if (v104 && (!v105 || [v104 compare:v105] == 1))
  {
    [remoteRecordCopy setObject:v104 forKeyedSubscript:@"postPurchaseOnboardingLastSeenDate"];
    v9 = 1;
  }

  v106 = [recordCopy objectForKeyedSubscript:@"appReviewRequestLastSeenDate"];
  v107 = [remoteRecordCopy objectForKeyedSubscript:@"appReviewRequestLastSeenDate"];
  v177 = v106;
  v129 = v102;
  v162 = v107;
  if (v106 && (!v107 || [v106 compare:v107] == 1))
  {
    [remoteRecordCopy setObject:v106 forKeyedSubscript:@"appReviewRequestLastSeenDate"];
    v9 = 1;
  }

  v108 = [recordCopy objectForKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
  v109 = [remoteRecordCopy objectForKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
  v110 = v109 == 0;
  v176 = v108;
  v133 = v82;
  v128 = v109;
  if (v108)
  {
    if (v109 && ![v108 fc_isLaterThan:v109])
    {
      v110 = 0;
    }

    else
    {
      [remoteRecordCopy setObject:v108 forKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
      v110 = 1;
      v9 = 1;
    }
  }

  v111 = v103;
  v112 = [recordCopy objectForKeyedSubscript:@"puzzleNotificationsEnabled2"];
  v113 = [remoteRecordCopy objectForKeyedSubscript:@"puzzleNotificationsEnabled2"];
  v114 = v113;
  v134 = v99;
  v130 = v100;
  if (v112 && !v113 || v112 && (v115 = [v112 BOOLValue], ((v115 ^ objc_msgSend(v114, "BOOLValue")) & v110) == 1))
  {
    [remoteRecordCopy setObject:v112 forKeyedSubscript:@"puzzleNotificationsEnabled2"];
    v9 = 1;
  }

  v193 = v9;
  v116 = [recordCopy objectForKeyedSubscript:@"puzzleStatsStartDate"];
  v117 = [remoteRecordCopy objectForKeyedSubscript:@"puzzleStatsStartDate"];
  v118 = v117;
  v126 = v114;
  if (v116 && (!v117 || [v116 compare:{v117, v114, v128, v129, v130}] == -1))
  {
    [remoteRecordCopy setObject:v116 forKeyedSubscript:{@"puzzleStatsStartDate", v126}];
    v193 = 1;
  }

  v160 = recordCopy;
  v119 = [recordCopy objectForKeyedSubscript:{@"importSavedToRecipeVersion", v126}];
  v120 = [remoteRecordCopy objectForKeyedSubscript:@"importSavedToRecipeVersion"];
  v121 = v120;
  if (v119)
  {
    if (!v120 || [v119 compare:v120] == 1)
    {
      [remoteRecordCopy setObject:v119 forKeyedSubscript:@"importSavedToRecipeVersion"];
      v193 = 1;
    }

    v122 = NewsCoreUserDefaults();
    v123 = [v122 BOOLForKey:@"import_saved_to_recipe_version_should_reset"];

    v111 = v209;
    if (v123)
    {
      [remoteRecordCopy setObject:v119 forKeyedSubscript:@"importSavedToRecipeVersion"];
      v124 = NewsCoreUserDefaults();
      [v124 setValue:MEMORY[0x1E695E110] forKey:@"import_saved_to_recipe_version_should_reset"];

      v193 = 1;
    }
  }

  return v193;
}

@end