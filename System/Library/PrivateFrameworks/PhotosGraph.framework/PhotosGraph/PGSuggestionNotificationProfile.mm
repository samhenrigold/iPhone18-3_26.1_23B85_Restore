@interface PGSuggestionNotificationProfile
+ (double)_requiredTimeIntervalFromLastNotificationForUserType:(unsigned __int8)type;
+ (unsigned)_requiredNotificationQualityForUserType:(unsigned __int8)type;
- (BOOL)eligibleForNotification;
- (BOOL)shouldNotifyForSuggestion:(id)suggestion withOptions:(id)options;
- (NSDate)dateOfLastNotification;
- (PGSuggestionNotificationProfile)initWithExistingSuggestions:(id)suggestions serviceManager:(id)manager;
- (id)shareParticipantContactIdentifiers;
- (unsigned)notificationQualityForHighlightNode:(id)node;
- (unsigned)userType;
- (void)_determineUserTypeAndEligibility;
@end

@implementation PGSuggestionNotificationProfile

- (unsigned)notificationQualityForHighlightNode:(id)node
{
  v44 = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  meaningLabels = [nodeCopy meaningLabels];
  personNodes = [nodeCopy personNodes];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __71__PGSuggestionNotificationProfile_notificationQualityForHighlightNode___block_invoke;
  v34[3] = &unk_27887F678;
  v34[4] = self;
  v7 = [MEMORY[0x277CCAC30] predicateWithBlock:v34];
  v8 = [personNodes filteredSetUsingPredicate:v7];

  v9 = [v8 count];
  if ([meaningLabels count])
  {
    v10 = +[PGGraph mostSignificantMeaningLabels];
    if ([meaningLabels intersectsSet:v10])
    {

LABEL_9:
      loggingConnection = self->_loggingConnection;
      if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = meaningLabels;
        _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality must see: %@", buf, 0xCu);
      }

      v13 = 4;
      goto LABEL_36;
    }

    isPartOfTrip = [nodeCopy isPartOfTrip];

    if (isPartOfTrip)
    {
      goto LABEL_9;
    }

    v27 = v9;
    v28 = v8;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v29 = personNodes;
    v16 = personNodes;
    v17 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = 0;
      v20 = 0;
      v21 = *v31;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v31 != v21)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(*(&v30 + 1) + 8 * i);
          if (([v23 isMeNode] & 1) == 0)
          {
            v20 += [v23 isFavorite];
            v19 += [v23 belongsToBestSocialGroups];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v30 objects:v43 count:16];
      }

      while (v18);
    }

    else
    {
      v19 = 0;
      v20 = 0;
    }

    v24 = self->_loggingConnection;
    v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
    if (v27 || v20 || v19)
    {
      if (v25)
      {
        *buf = 138413058;
        v36 = meaningLabels;
        v37 = 2048;
        v38 = v27;
        v39 = 2048;
        v40 = v20;
        v41 = 2048;
        v42 = v19;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality stellar: it has a meaning %@ and important people (previous sharing recipients %lu, favorites %lu, best social group %lu)", buf, 0x2Au);
      }

      v13 = 3;
    }

    else
    {
      if (v25)
      {
        *buf = 138412290;
        v36 = meaningLabels;
        _os_log_impl(&dword_22F0FC000, v24, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality great: it has a meaning %@", buf, 0xCu);
      }

      v13 = 2;
    }

    v8 = v28;
    personNodes = v29;
  }

  else
  {
    v11 = self->_loggingConnection;
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v12)
      {
        *buf = 134217984;
        v36 = v9;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality great: it contains %lu previous sharing recipients", buf, 0xCu);
      }

      v13 = 2;
    }

    else
    {
      if (v12)
      {
        *buf = 0;
        _os_log_impl(&dword_22F0FC000, v11, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Highlight node notification quality other", buf, 2u);
      }

      v13 = 1;
    }
  }

LABEL_36:

  return v13;
}

uint64_t __71__PGSuggestionNotificationProfile_notificationQualityForHighlightNode___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 shareParticipantContactIdentifiers];
  v5 = [v3 contactIdentifier];

  v6 = [v4 containsObject:v5];
  return v6;
}

- (void)_determineUserTypeAndEligibility
{
  v86 = *MEMORY[0x277D85DE8];
  mEMORY[0x277CD9948] = [MEMORY[0x277CD9948] sharedMomentSharePhotoLibrary];
  librarySpecificFetchOptions = [mEMORY[0x277CD9948] librarySpecificFetchOptions];

  v57 = objc_opt_new();
  v51 = librarySpecificFetchOptions;
  [MEMORY[0x277CD97B8] fetchAssetCollectionsWithType:7 subtype:0x7FFFFFFFFFFFFFFFLL options:librarySpecificFetchOptions];
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v69 = 0u;
  v52 = [obj countByEnumeratingWithState:&v66 objects:v85 count:16];
  v5 = 0;
  v6 = 0;
  if (v52)
  {
    v50 = *v67;
    do
    {
      v47 = v6;
      v7 = 0;
      do
      {
        v55 = v5;
        if (*v67 != v50)
        {
          objc_enumerationMutation(obj);
        }

        v53 = *(*(&v66 + 1) + 8 * v7);
        v54 = v7;
        v8 = [MEMORY[0x277CD99C8] fetchParticipantsInShare:v47 options:?];
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v65 = 0u;
        v9 = [v8 countByEnumeratingWithState:&v62 objects:v84 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v63;
          do
          {
            v12 = 0;
            do
            {
              if (*v63 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v62 + 1) + 8 * v12);
              emailAddress = [v13 emailAddress];
              if (emailAddress || ([v13 phoneNumber], (emailAddress = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v15 = emailAddress;
                v16 = [(CLSServiceManager *)self->_serviceManager personForPersonHandle:emailAddress];
                cNIdentifier = [v16 CNIdentifier];
                if ([cNIdentifier length])
                {
                  [v57 addObject:cNIdentifier];
                }

                else
                {
                  loggingConnection = self->_loggingConnection;
                  if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 138412546;
                    *v71 = v13;
                    *&v71[8] = 2112;
                    *v72 = v15;
                    _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No person node found for share participant: %@, identifier: %@", buf, 0x16u);
                  }
                }
              }

              else
              {
                v19 = self->_loggingConnection;
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *v71 = v13;
                  _os_log_impl(&dword_22F0FC000, v19, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] No identifier available for share participant: %@", buf, 0xCu);
                }
              }

              ++v12;
            }

            while (v10 != v12);
            v20 = [v8 countByEnumeratingWithState:&v62 objects:v84 count:16];
            v10 = v20;
          }

          while (v20);
        }

        creationDate = [v53 creationDate];
        v22 = creationDate;
        if (v55)
        {
          v23 = [creationDate laterDate:v55];

          v5 = v23;
        }

        else
        {
          v5 = creationDate;
        }

        v7 = v54 + 1;
      }

      while (v54 + 1 != v52);
      v6 = v47 + v52;
      v52 = [obj countByEnumeratingWithState:&v66 objects:v85 count:16];
    }

    while (v52);
  }

  v48 = v6;
  objc_storeStrong(&self->_shareParticipantContactIdentifiers, v57);
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v24 = self->_existingSuggestions;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v58 objects:v83 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = 0;
    v56 = 0;
    v28 = *v59;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v59 != v28)
        {
          objc_enumerationMutation(v24);
        }

        v30 = *(*(&v58 + 1) + 8 * i);
        if ([v30 notificationState])
        {
          dateOfLastNotification = self->_dateOfLastNotification;
          creationDate2 = [v30 creationDate];
          v33 = creationDate2;
          if (dateOfLastNotification)
          {
            v34 = [(NSDate *)dateOfLastNotification laterDate:creationDate2];
            v35 = self->_dateOfLastNotification;
            self->_dateOfLastNotification = v34;
          }

          else
          {
            v36 = self->_dateOfLastNotification;
            self->_dateOfLastNotification = creationDate2;
            v33 = v36;
          }

          if ([v30 state] == 3)
          {
            ++v56;
          }

          else if ([v30 state] == 4)
          {
            ++v27;
          }
        }

        creationDate3 = [v30 creationDate];
        if ([v30 state] == 3 && creationDate3 != 0)
        {
          if (v5)
          {
            v39 = [creationDate3 laterDate:v5];

            v5 = v39;
          }

          else
          {
            v5 = creationDate3;
          }
        }
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v58 objects:v83 count:16];
    }

    while (v26);
  }

  else
  {
    v27 = 0;
    v56 = 0;
  }

  v40 = v5;
  if (v5)
  {
    v41 = v48 == 0;
  }

  else
  {
    v41 = 1;
  }

  v42 = v41;
  if (v41 && v27 < 2)
  {
    v43 = 1;
  }

  else if (v48 >= 3 && v56)
  {
    v43 = 2;
  }

  else if (v27 > 1 || v40 && ([v40 timeIntervalSinceNow], v44 > 2592000.0))
  {
    v43 = 3;
  }

  else
  {
    v43 = 4;
  }

  self->_userType = v43;
  self->_eligibleForNotification = v27 < 4;
  v45 = self->_loggingConnection;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
  {
    shareParticipantContactIdentifiers = self->_shareParticipantContactIdentifiers;
    *buf = 67110914;
    *v71 = v27 < 4;
    *&v71[4] = 1024;
    *&v71[6] = v43;
    *v72 = 2112;
    *&v72[2] = shareParticipantContactIdentifiers;
    v73 = 1024;
    v74 = v42;
    v75 = 2048;
    v76 = v48;
    v77 = 2112;
    v78 = v40;
    v79 = 2048;
    v80 = v56;
    v81 = 2048;
    v82 = v27;
    _os_log_impl(&dword_22F0FC000, v45, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Summary for Notification Profile:\n\teligibleForNotification: %d\n\tuserType: %d\n\tshareParticipantContactIdentifiers: %@\n\tuserNeverShared: %d\n\tnumberOfMomentShare: %lu\n\tlastMomentShare: %@\n\tnumberOfSuccessfulNotifications: %lu\n\tnumberOfUnsuccessfulNotifications: %lu\n\t", buf, 0x46u);
  }
}

- (BOOL)shouldNotifyForSuggestion:(id)suggestion withOptions:(id)options
{
  v30 = *MEMORY[0x277D85DE8];
  suggestionCopy = suggestion;
  v7 = MEMORY[0x277D27690];
  localToday = [options localToday];
  v9 = [v7 universalDateFromLocalDate:localToday];

  universalEndDate = [suggestionCopy universalEndDate];
  [v9 timeIntervalSinceDate:universalEndDate];
  if (v11 < 0.0)
  {
    v11 = -v11;
  }

  if (v11 <= 604800.0)
  {
    userType = [(PGSuggestionNotificationProfile *)self userType];
    notificationQuality = [suggestionCopy notificationQuality];
    if (notificationQuality >= [objc_opt_class() _requiredNotificationQualityForUserType:userType])
    {
      dateOfLastNotification = [(PGSuggestionNotificationProfile *)self dateOfLastNotification];
      if (dateOfLastNotification)
      {
        [objc_opt_class() _requiredTimeIntervalFromLastNotificationForUserType:userType];
        v18 = v17;
        [v9 timeIntervalSinceDate:dateOfLastNotification];
        if (v19 >= 0.0)
        {
          v20 = v19;
        }

        else
        {
          v20 = -v19;
        }

        v13 = v20 > v18;
        loggingConnection = self->_loggingConnection;
        if (os_log_type_enabled(loggingConnection, OS_LOG_TYPE_DEFAULT))
        {
          v28 = 67109634;
          *v29 = v20 > v18;
          *&v29[4] = 2048;
          *&v29[6] = v18 / 86400.0;
          *&v29[14] = 2112;
          *&v29[16] = v9;
          _os_log_impl(&dword_22F0FC000, loggingConnection, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Should notify for suggestion: %d (requiredTimeIntervalFromLastNotification %.0f - queryDate %@)", &v28, 0x1Cu);
        }
      }

      else
      {
        v13 = 1;
      }
    }

    else
    {
      v13 = 0;
    }

    v22 = self->_loggingConnection;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (notificationQuality > 4)
      {
        v23 = @"Unknown";
      }

      else
      {
        v23 = off_278884400[notificationQuality];
      }

      v24 = v23;
      v25 = v24;
      if (userType > 4)
      {
        v26 = @"Unknown";
      }

      else
      {
        v26 = off_27887F698[userType];
      }

      v28 = 67109634;
      *v29 = v13;
      *&v29[4] = 2112;
      *&v29[6] = v24;
      *&v29[14] = 2112;
      *&v29[16] = v26;
      _os_log_impl(&dword_22F0FC000, v22, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Should notify for suggestion: %d (notification quality %@ - user type %@)", &v28, 0x1Cu);
    }
  }

  else
  {
    v12 = self->_loggingConnection;
    LOBYTE(v13) = 0;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134218498;
      *v29 = 7;
      *&v29[8] = 2112;
      *&v29[10] = v9;
      *&v29[18] = 2112;
      *&v29[20] = universalEndDate;
      _os_log_impl(&dword_22F0FC000, v12, OS_LOG_TYPE_DEFAULT, "[Sharing Suggestion] Cannot notify suggestion: above time window limit of %lu days (query date %@, suggestion date %@)", &v28, 0x20u);
      LOBYTE(v13) = 0;
    }
  }

  return v13;
}

- (NSDate)dateOfLastNotification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_userType)
  {
    [(PGSuggestionNotificationProfile *)selfCopy _determineUserTypeAndEligibility];
  }

  objc_sync_exit(selfCopy);

  dateOfLastNotification = selfCopy->_dateOfLastNotification;

  return dateOfLastNotification;
}

- (id)shareParticipantContactIdentifiers
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_userType)
  {
    [(PGSuggestionNotificationProfile *)selfCopy _determineUserTypeAndEligibility];
  }

  objc_sync_exit(selfCopy);

  shareParticipantContactIdentifiers = selfCopy->_shareParticipantContactIdentifiers;

  return shareParticipantContactIdentifiers;
}

- (unsigned)userType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_userType)
  {
    [(PGSuggestionNotificationProfile *)selfCopy _determineUserTypeAndEligibility];
  }

  objc_sync_exit(selfCopy);

  return selfCopy->_userType;
}

- (BOOL)eligibleForNotification
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_userType)
  {
    [(PGSuggestionNotificationProfile *)selfCopy _determineUserTypeAndEligibility];
  }

  objc_sync_exit(selfCopy);

  return selfCopy->_eligibleForNotification;
}

- (PGSuggestionNotificationProfile)initWithExistingSuggestions:(id)suggestions serviceManager:(id)manager
{
  suggestionsCopy = suggestions;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = PGSuggestionNotificationProfile;
  v9 = [(PGSuggestionNotificationProfile *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_existingSuggestions, suggestions);
    objc_storeStrong(&v10->_serviceManager, manager);
  }

  return v10;
}

+ (double)_requiredTimeIntervalFromLastNotificationForUserType:(unsigned __int8)type
{
  if ((type - 1) > 3u)
  {
    return 978307200.0;
  }

  else
  {
    return dbl_22F78C1E8[(type - 1)];
  }
}

+ (unsigned)_requiredNotificationQualityForUserType:(unsigned __int8)type
{
  v3 = 0x304020300uLL >> (8 * type);
  if (type >= 5u)
  {
    LOBYTE(v3) = 0;
  }

  return v3 & 7;
}

@end