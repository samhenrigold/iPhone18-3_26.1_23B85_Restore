@interface ASActivityDataNotificationRulesEngine
- (id)_filterNotificationGroup:(id)group ruleset:(id *)ruleset;
- (id)filterNotificationGroup:(id)group;
@end

@implementation ASActivityDataNotificationRulesEngine

- (id)filterNotificationGroup:(id)group
{
  groupCopy = group;
  v12 = ASStandardNotificationRuleset;
  v13 = unk_27E345FD0;
  v5 = [(ASActivityDataNotificationRulesEngine *)self _filterNotificationGroup:groupCopy ruleset:&v12];
  allNotifications = [v5 allNotifications];
  v7 = [allNotifications count];
  v8 = ASStrictNotificationThreshold;

  if (v7 >= v8)
  {
    v12 = ASStrictNotificationRuleset;
    v13 = unk_27E345FF0;
    v9 = [(ASActivityDataNotificationRulesEngine *)self _filterNotificationGroup:groupCopy ruleset:&v12];
  }

  else
  {
    v9 = v5;
  }

  v10 = v9;

  return v10;
}

- (id)_filterNotificationGroup:(id)group ruleset:(id *)ruleset
{
  v87 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  v5 = [MEMORY[0x277CBEB98] set];
  v64 = [MEMORY[0x277CBEB98] set];
  v58 = [MEMORY[0x277CBEB98] set];
  v6 = [MEMORY[0x277CBEB98] set];
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v61 = groupCopy;
  allNotifications = [groupCopy allNotifications];
  v8 = [allNotifications countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v78;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v78 != v10)
        {
          objc_enumerationMutation(allNotifications);
        }

        v12 = *(*(&v77 + 1) + 8 * i);
        friend = [v12 friend];

        if (friend)
        {
          friend2 = [v12 friend];
          v15 = [v6 setByAddingObject:friend2];

          v6 = v15;
        }
      }

      v9 = [allNotifications countByEnumeratingWithState:&v77 objects:v86 count:16];
    }

    while (v9);
  }

  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v6;
  v16 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
  if (v16)
  {
    v18 = v16;
    v19 = *v74;
    v57 = *v74;
    do
    {
      v20 = 0;
      v59 = v18;
      do
      {
        if (*v74 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v73 + 1) + 8 * v20);
        ASLoggingInitialize(v16, v17);
        v22 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          v23 = v22;
          uUID = [v21 UUID];
          *buf = 138543618;
          v82 = uUID;
          v83 = 2112;
          v84 = v21;
          _os_log_impl(&dword_23E4FA000, v23, OS_LOG_TYPE_DEFAULT, "Collecting notifications for friend %{public}@ - %@", buf, 0x16u);
        }

        isMuted = [v21 isMuted];
        if (isMuted)
        {
          ASLoggingInitialize(isMuted, v26);
          v27 = ASLogNotifications;
          v16 = os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT);
          if (v16)
          {
            *buf = 0;
            _os_log_impl(&dword_23E4FA000, v27, OS_LOG_TYPE_DEFAULT, "Contact is muted, not allowing any notifications", buf, 2u);
          }
        }

        else
        {
          workoutNotifications = [v61 workoutNotifications];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v29 = *&ruleset->var2;
          v71 = *&ruleset->var0;
          v70[2] = __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke;
          v70[3] = &unk_278C46B18;
          v70[4] = v21;
          v72 = v29;
          v30 = [MEMORY[0x277CCAC30] predicateWithBlock:v70];
          v31 = [workoutNotifications filteredSetUsingPredicate:v30];

          v62 = [v5 setByAddingObjectsFromSet:v31];

          achievementNotifications = [v61 achievementNotifications];
          v67[0] = MEMORY[0x277D85DD0];
          v67[1] = 3221225472;
          v33 = *&ruleset->var2;
          v68 = *&ruleset->var0;
          v67[2] = __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_295;
          v67[3] = &unk_278C46B18;
          v67[4] = v21;
          v69 = v33;
          v34 = [MEMORY[0x277CCAC30] predicateWithBlock:v67];
          v35 = [achievementNotifications filteredSetUsingPredicate:v34];

          v66[0] = MEMORY[0x277D85DD0];
          v66[1] = 3221225472;
          v66[2] = __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_297;
          v66[3] = &unk_278C46B40;
          v66[4] = v21;
          v36 = [v35 hk_filter:v66];
          var2 = ruleset->var2;
          v38 = [v36 count];
          if (var2 >= v38)
          {
            v39 = v38;
          }

          else
          {
            v39 = var2;
          }

          v40 = MEMORY[0x277CBEB98];
          allObjects = [v36 allObjects];
          v42 = [allObjects subarrayWithRange:{0, v39}];
          v43 = [v40 setWithArray:v42];

          v44 = [v64 setByAddingObjectsFromSet:v43];

          v45 = [v31 count];
          if (v45)
          {
            v47 = 0;
          }

          else
          {
            v45 = [v43 count];
            v47 = v45 == 0;
          }

          var3 = ruleset->var3;
          ASLoggingInitialize(v45, v46);
          v49 = ASLogNotifications;
          v50 = os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT);
          if (!var3 || v47)
          {
            if (v50)
            {
              *buf = 0;
              _os_log_impl(&dword_23E4FA000, v49, OS_LOG_TYPE_DEFAULT, "Goal completions allowed, collecting", buf, 2u);
            }

            goalCompletionNotifications = [v61 goalCompletionNotifications];
            v65[0] = MEMORY[0x277D85DD0];
            v65[1] = 3221225472;
            v65[2] = __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_299;
            v65[3] = &unk_278C46B68;
            v65[4] = v21;
            v52 = [MEMORY[0x277CCAC30] predicateWithBlock:v65];
            v53 = [goalCompletionNotifications filteredSetUsingPredicate:v52];

            v54 = [v58 setByAddingObjectsFromSet:v53];

            v58 = v54;
          }

          else if (v50)
          {
            *buf = 0;
            _os_log_impl(&dword_23E4FA000, v49, OS_LOG_TYPE_DEFAULT, "Goal completions not allowed, skipping", buf, 2u);
          }

          v18 = v59;

          v64 = v44;
          v5 = v62;
          v19 = v57;
        }

        ++v20;
      }

      while (v18 != v20);
      v16 = [obj countByEnumeratingWithState:&v73 objects:v85 count:16];
      v18 = v16;
    }

    while (v16);
  }

  v55 = objc_alloc_init(ASActivityDataNotificationGroup);
  [(ASActivityDataNotificationGroup *)v55 setGoalCompletionNotifications:v58];
  [(ASActivityDataNotificationGroup *)v55 setWorkoutNotifications:v5];
  [(ASActivityDataNotificationGroup *)v55 setAchievementNotifications:v64];

  return v55;
}

uint64_t __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke(uint64_t a1, void *a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 friend];
  v5 = [v4 UUID];
  v6 = [*(a1 + 32) UUID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v3 sample];
    ASLoggingInitialize(v8, v9);
    v10 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v39 = 138412290;
      v40 = v8;
      _os_log_impl(&dword_23E4FA000, v10, OS_LOG_TYPE_DEFAULT, "Evaluating workout: %@", &v39, 0xCu);
    }

    v11 = [MEMORY[0x277CBEAA8] date];
    v12 = [v8 endDate];
    [v11 timeIntervalSinceDate:v12];
    v14 = v13;
    v15 = *(a1 + 40);

    if (v14 <= v15)
    {
      v21 = [v8 endDate];
      IsNotificationEventDateBeforeRelationshipBeganWithFriend = _IsNotificationEventDateBeforeRelationshipBeganWithFriend(v21, *(a1 + 32));

      if (IsNotificationEventDateBeforeRelationshipBeganWithFriend)
      {
        ASLoggingInitialize(v23, v24);
        v18 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39) = 0;
          v19 = "Workout completed prior to the relationship starting, skipping";
          goto LABEL_17;
        }
      }

      else
      {
        v25 = [v8 endDate];
        v26 = *(a1 + 32);
        v27 = MEMORY[0x277CBEA80];
        v28 = v26;
        v29 = [v27 hk_gregorianCalendar];
        v30 = [v28 timeZone];
        [v29 setTimeZone:v30];

        v31 = [v28 currentDateComponents];

        v32 = [v29 dateFromComponents:v31];
        ASLoggingInitialize(v32, v33);
        v34 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          v39 = 138412290;
          v40 = v32;
          _os_log_impl(&dword_23E4FA000, v34, OS_LOG_TYPE_DEFAULT, "Friend current date: %@", &v39, 0xCu);
        }

        v35 = [v29 isDate:v25 inSameDayAsDate:v32];

        if (v35)
        {
          v20 = 1;
LABEL_19:

          goto LABEL_20;
        }

        ASLoggingInitialize(v36, v37);
        v18 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v39) = 0;
          v19 = "Workout is not in the current day for friend, skipping";
          goto LABEL_17;
        }
      }
    }

    else
    {
      ASLoggingInitialize(v16, v17);
      v18 = ASLogNotifications;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v39) = 0;
        v19 = "Workout is too old, skipping";
LABEL_17:
        _os_log_impl(&dword_23E4FA000, v18, OS_LOG_TYPE_DEFAULT, v19, &v39, 2u);
      }
    }

    v20 = 0;
    goto LABEL_19;
  }

  v20 = 0;
LABEL_20:

  return v20;
}

uint64_t __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_295(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 friend];
  v5 = [v4 UUID];
  v6 = [*(a1 + 32) UUID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v3 sample];
    ASLoggingInitialize(v8, v9);
    v10 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 138412290;
      v31 = v8;
      _os_log_impl(&dword_23E4FA000, v10, OS_LOG_TYPE_DEFAULT, "Evaluating achievement: %@", &v30, 0xCu);
    }

    if (!v8)
    {
      v25 = 0;
LABEL_21:

      goto LABEL_22;
    }

    v11 = [v8 relevantEarnedInstance];
    v12 = [v11 earnedDateComponents];

    if (!v12)
    {
      ASLoggingInitialize(v13, v14);
      v26 = ASLogNotifications;
      v25 = 0;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        _os_log_impl(&dword_23E4FA000, v26, OS_LOG_TYPE_DEFAULT, "Achievement is missing earned date, skipping", &v30, 2u);
        v25 = 0;
      }

      goto LABEL_20;
    }

    v15 = [MEMORY[0x277CBEA80] hk_gregorianCalendar];
    v16 = [v15 dateFromComponents:v12];

    v17 = [MEMORY[0x277CBEAA8] date];
    [v17 timeIntervalSinceDate:v16];
    v19 = v18;
    v20 = *(a1 + 48);

    if (v19 <= v20)
    {
      IsNotificationEventDateBeforeRelationshipBeganWithFriend = _IsNotificationEventDateBeforeRelationshipBeganWithFriend(v16, *(a1 + 32));
      if (!IsNotificationEventDateBeforeRelationshipBeganWithFriend)
      {
        v25 = 1;
        goto LABEL_19;
      }

      ASLoggingInitialize(IsNotificationEventDateBeforeRelationshipBeganWithFriend, v28);
      v23 = ASLogNotifications;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        v24 = "Achievement completed prior to the relationship starting, skipping";
        goto LABEL_16;
      }
    }

    else
    {
      ASLoggingInitialize(v21, v22);
      v23 = ASLogNotifications;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v30) = 0;
        v24 = "Achievement is too old, skipping";
LABEL_16:
        _os_log_impl(&dword_23E4FA000, v23, OS_LOG_TYPE_DEFAULT, v24, &v30, 2u);
      }
    }

    v25 = 0;
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v25 = 0;
LABEL_22:

  return v25;
}

uint64_t __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_297(uint64_t a1, void *a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 sample];
  v5 = [v4 template];
  v6 = [v5 uniqueName];

  v7 = [v3 sample];

  v8 = [v7 template];
  v9 = [v8 sourceName];

  v10 = v6;
  v11 = MoveGoal200PercentTemplate();
  v12 = [v11 uniqueName];
  if ([v10 isEqualToString:v12])
  {
    goto LABEL_4;
  }

  v13 = MoveGoal300PercentTemplate();
  v14 = [v13 uniqueName];
  if ([v10 isEqualToString:v14])
  {

LABEL_4:
    goto LABEL_5;
  }

  v21 = MoveGoal400PercentTemplate();
  v22 = [v21 uniqueName];
  v23 = [v10 isEqualToString:v22];

  if (v23)
  {
LABEL_5:
    ASLoggingInitialize(v15, v16);
    v17 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v40 = 138412290;
      v41 = v10;
      v18 = "Dropping achievement with template unique name %@, move percent";
LABEL_7:
      _os_log_impl(&dword_23E4FA000, v17, OS_LOG_TYPE_DEFAULT, v18, &v40, 0xCu);
      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v24 = [v10 containsString:@"CompetitionParticipation"];
  if (v24)
  {
    ASLoggingInitialize(v24, v25);
    v17 = ASLogNotifications;
    if (!os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v40 = 138412290;
    v41 = v10;
    v18 = "Dropping achievement with template unique name %@, competition participation";
    goto LABEL_7;
  }

  v26 = LongestMoveStreakTemplate();
  v27 = [v26 uniqueName];
  v28 = [v10 isEqualToString:v27];

  if (v28)
  {
    ASLoggingInitialize(v29, v30);
    v17 = ASLogNotifications;
    if (!os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v40 = 138412290;
    v41 = v10;
    v18 = "Dropping achievement with template unique name %@, move streak";
    goto LABEL_7;
  }

  if ([v10 containsString:@"CompetitionVictory"])
  {
    v31 = [*(a1 + 32) contact];
    v32 = [v31 primaryRemoteRelationship];
    v33 = [v32 UUID];
    v34 = [v33 UUIDString];
    v35 = [v10 containsString:v34];

    if (v35)
    {
      ASLoggingInitialize(v36, v37);
      v17 = ASLogNotifications;
      if (!os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_8;
      }

      v40 = 138412290;
      v41 = v10;
      v18 = "Dropping achievement with template unique name %@, competition victory against me";
      goto LABEL_7;
    }
  }

  v38 = [v9 isEqualToString:*MEMORY[0x277CE8CA0]];
  if (!v38)
  {
    v19 = 1;
    goto LABEL_9;
  }

  ASLoggingInitialize(v38, v39);
  v17 = ASLogNotifications;
  if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
  {
    v40 = 138412290;
    v41 = v10;
    v18 = "Dropping achievement with template unique name %@, source is Remote";
    goto LABEL_7;
  }

LABEL_8:
  v19 = 0;
LABEL_9:

  return v19;
}

uint64_t __74__ASActivityDataNotificationRulesEngine__filterNotificationGroup_ruleset___block_invoke_299(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 friend];
  v5 = [v4 UUID];
  v6 = [*(a1 + 32) UUID];
  v7 = [v5 isEqual:v6];

  if (v7)
  {
    v8 = [v3 sample];
    ASLoggingInitialize(v8, v9);
    v10 = ASLogNotifications;
    if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
    {
      v33 = 138412290;
      v34 = v8;
      _os_log_impl(&dword_23E4FA000, v10, OS_LOG_TYPE_DEFAULT, "Evaluating snapshot: %@", &v33, 0xCu);
    }

    v11 = [*(a1 + 32) currentCacheIndex];
    v12 = [v11 longLongValue];

    v13 = [v8 snapshotIndex];
    ASLoggingInitialize(v13, v14);
    v15 = ASLogNotifications;
    v16 = os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT);
    if (v16)
    {
      v33 = 134217984;
      v34 = v12;
      _os_log_impl(&dword_23E4FA000, v15, OS_LOG_TYPE_DEFAULT, "friend current index: %lld", &v33, 0xCu);
    }

    ASLoggingInitialize(v16, v17);
    v18 = ASLogNotifications;
    v19 = os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT);
    if (v19)
    {
      v33 = 134217984;
      v34 = v13;
      _os_log_impl(&dword_23E4FA000, v18, OS_LOG_TYPE_DEFAULT, "Snapshot index: %lld", &v33, 0xCu);
    }

    if (v12 == v13)
    {
      v21 = [v8 snapshotUploadedDate];
      IsNotificationEventDateBeforeRelationshipBeganWithFriend = _IsNotificationEventDateBeforeRelationshipBeganWithFriend(v21, *(a1 + 32));

      if (IsNotificationEventDateBeforeRelationshipBeganWithFriend)
      {
        ASLoggingInitialize(v23, v24);
        v25 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          v26 = "Snapshot uploaded prior to relationship starting, skipping";
LABEL_15:
          _os_log_impl(&dword_23E4FA000, v25, OS_LOG_TYPE_DEFAULT, v26, &v33, 2u);
        }
      }

      else
      {
        v29 = [v8 endDate];
        v30 = _IsNotificationEventDateBeforeRelationshipBeganWithFriend(v29, *(a1 + 32));

        if (!v30)
        {
          v27 = 1;
          goto LABEL_17;
        }

        ASLoggingInitialize(v31, v32);
        v25 = ASLogNotifications;
        if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          v26 = "Snapshot is for a date prior to when the relationship began, skipping";
          goto LABEL_15;
        }
      }
    }

    else
    {
      ASLoggingInitialize(v19, v20);
      v25 = ASLogNotifications;
      if (os_log_type_enabled(ASLogNotifications, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v33) = 0;
        v26 = "Snapshot is not in the current day for friend, skipping";
        goto LABEL_15;
      }
    }

    v27 = 0;
LABEL_17:

    goto LABEL_18;
  }

  v27 = 0;
LABEL_18:

  return v27;
}

@end