@interface CALNEventInvitationNotificationSource
- (CALNEventInvitationNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider dateProvider:(id)dateProvider;
- (CALNNotificationManager)notificationManager;
- (NSArray)categories;
- (id)_notificationBodyForNotificationInfo:(id)info contactIdentifier:(id *)identifier;
- (id)contentForNotificationWithInfo:(id)info;
- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier;
- (void)didReceiveResponse:(id)response;
- (void)refreshNotifications:(id)notifications;
@end

@implementation CALNEventInvitationNotificationSource

- (CALNEventInvitationNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider dateProvider:(id)dateProvider
{
  sourceCopy = source;
  managerCopy = manager;
  providerCopy = provider;
  dateProviderCopy = dateProvider;
  v18.receiver = self;
  v18.super_class = CALNEventInvitationNotificationSource;
  v15 = [(CALNEventInvitationNotificationSource *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_dataSource, source);
    objc_storeWeak(&v16->_notificationManager, managerCopy);
    objc_storeStrong(&v16->_iconIdentifierProvider, provider);
    objc_storeStrong(&v16->_dateProvider, dateProvider);
  }

  return v16;
}

- (NSArray)categories
{
  if (categories_onceToken_0 != -1)
  {
    [CALNEventInvitationNotificationSource categories];
  }

  v3 = categories_categories_0;

  return v3;
}

void __51__CALNEventInvitationNotificationSource_categories__block_invoke()
{
  v18[3] = *MEMORY[0x277D85DE8];
  v0 = +[CALNBundle bundle];
  v1 = [v0 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.event.invitation" value:@"Invitation" table:0];
  v15 = [v0 localizedStringForKey:@"EventInvitationNotificationAcceptButton" value:@"Accept" table:0];
  v14 = [v0 localizedStringForKey:@"EventInvitationNotificationDeclineButton" value:@"Decline" table:0];
  v13 = [v0 localizedStringForKey:@"EventInvitationNotificationMaybeButton" value:@"Maybe" table:0];
  v12 = [v0 localizedStringForKey:@"EventInvitationNotificationReportJunkButton" value:@"Report Junk" table:0];
  v2 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationAcceptAction" title:v15 systemImageName:@"checkmark.circle"];
  v3 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationDeclineAction" title:v14 systemImageName:@"xmark.circle"];
  v4 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationMaybeAction" title:v13 systemImageName:@"questionmark.circle"];
  v5 = [CALNNotificationAction actionWithIdentifier:@"CALNNotificationReportJunkEventAction" title:v12 systemImageName:@"bin.xmark"];
  v18[0] = v2;
  v18[1] = v3;
  v18[2] = v4;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:3];
  v17[0] = v5;
  v17[1] = v2;
  v17[2] = v3;
  v17[3] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:4];
  v8 = [CALNNotificationCategory categoryWithIdentifier:@"EventInvitation.CanRespond" actions:v6 hiddenPreviewsBodyPlaceholder:v1 options:0];
  v9 = [CALNNotificationCategory categoryWithIdentifier:@"EventInvitation.CouldBeJunk" actions:v7 hiddenPreviewsBodyPlaceholder:v1 options:0];
  v16[0] = v8;
  v16[1] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:2];
  v11 = categories_categories_0;
  categories_categories_0 = v10;
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dataSource = [(CALNEventInvitationNotificationSource *)self dataSource];
  v6 = [dataSource fetchEventInvitationNotificationWithSourceClientIdentifier:identifierCopy];

  if (v6)
  {
    v7 = [(CALNEventInvitationNotificationSource *)self contentForNotificationWithInfo:v6];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CALNEventInvitationNotificationSource *)identifierCopy contentForNotificationWithSourceClientIdentifier:v8];
    }

    v7 = 0;
  }

  return v7;
}

- (id)contentForNotificationWithInfo:(id)info
{
  v58 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  eventInvitationNotification = [infoCopy eventInvitationNotification];
  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    sourceClientIdentifier = [infoCopy sourceClientIdentifier];
    invitedBy = [eventInvitationNotification invitedBy];
    startDate = [eventInvitationNotification startDate];
    location = [eventInvitationNotification location];
    *buf = 138544642;
    v47 = sourceClientIdentifier;
    v48 = 2112;
    v49 = invitedBy;
    v50 = 2112;
    v51 = startDate;
    v52 = 2112;
    v53 = location;
    v54 = 1024;
    type = [eventInvitationNotification type];
    v56 = 2112;
    v57 = eventInvitationNotification;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_INFO, "Fetching event invitation notification content with sourceClientIdentifier %{public}@. InvitedBy: %@. StartDate: %@. Location: %@. EKCalendarNotificationType: %d. EventInvitationNotification: %@", buf, 0x3Au);
  }

  v11 = +[CALNBundle bundle];
  title = [eventInvitationNotification title];
  if (!title)
  {
    title = [v11 localizedStringForKey:@"EventInvitationNotificationDefaultTitle" value:@"Invitation" table:0];
  }

  v40 = v11;
  v41 = title;
  v42 = 0;
  v13 = [(CALNEventInvitationNotificationSource *)self _notificationBodyForNotificationInfo:infoCopy contactIdentifier:&v42];
  v39 = v42;
  if ([eventInvitationNotification couldBeJunk])
  {
    v14 = @"EventInvitation.CouldBeJunk";
  }

  else
  {
    v14 = @"EventInvitation.CanRespond";
  }

  v15 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  iconIdentifierProvider = [(CALNEventInvitationNotificationSource *)self iconIdentifierProvider];
  startDate2 = [eventInvitationNotification startDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v19 = [iconIdentifierProvider identifierForIconWithDate:startDate2 inCalendar:currentCalendar];

  v20 = v41;
  v21 = objc_opt_new();
  [v21 setTitle:v41];
  [v21 setBody:v13];
  [v21 setCategoryIdentifier:v14];
  [v21 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.invitations"];
  startDate3 = [eventInvitationNotification startDate];
  [v21 setDate:startDate3];

  expirationDate = [infoCopy expirationDate];
  [v21 setExpirationDate:expirationDate];

  launchURL = [infoCopy launchURL];
  [v21 setDefaultActionURL:launchURL];

  [v21 setIconIdentifier:v19];
  [v21 setShouldHideTime:{objc_msgSend(eventInvitationNotification, "isAllDay")}];
  [v21 setSound:v15];
  if ([eventInvitationNotification cuik_isTimeSensitive])
  {
    v25 = 2;
  }

  else
  {
    v25 = 1;
  }

  [v21 setInterruptionLevel:v25];
  calendar = [eventInvitationNotification calendar];
  calendarIdentifier = [calendar calendarIdentifier];
  [v21 setFilterCriteria:calendarIdentifier];

  if ([infoCopy isDelegate])
  {
    sourceTitle = [infoCopy sourceTitle];
    sourceIdentifier = [infoCopy sourceIdentifier];
    [CALNNotificationSourceUtils updateSubtitleAndThreadIdentifierOnNotificationContent:v21 forDelegateSourceWithTitle:sourceTitle identifier:sourceIdentifier];

    v20 = v41;
  }

  if (v39)
  {
    v45 = v39;
    v30 = [MEMORY[0x277CBEA60] arrayWithObjects:&v45 count:1];
    [v21 setPeopleIdentifiers:v30];
  }

  eventURI = [infoCopy eventURI];
  v43 = @"entityID";
  v44 = eventURI;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
  [v21 setUserInfo:v32];

  eventRepresentationDictionary = [infoCopy eventRepresentationDictionary];

  if (eventRepresentationDictionary)
  {
    eventRepresentationDictionary2 = [infoCopy eventRepresentationDictionary];
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:eventRepresentationDictionary2 onNotificationContent:v21];
  }

  [CALNNotificationFilterUtils setFilterIdentifierForEKCalendarNotification:eventInvitationNotification onNotificationContent:v21];
  [CALNLegacyIdentifierUtils setLegacyIdentifierForCalendarNotification:eventInvitationNotification onNotificationContent:v21];
  v35 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    sourceClientIdentifier2 = [infoCopy sourceClientIdentifier];
    *buf = 138543618;
    v47 = sourceClientIdentifier2;
    v48 = 2112;
    v49 = v21;
    _os_log_impl(&dword_242909000, v35, OS_LOG_TYPE_DEFAULT, "Fetched event invitation notification with sourceClientIdentifier %{public}@. Content: %@", buf, 0x16u);
  }

  v37 = [v21 copy];

  return v37;
}

- (void)refreshNotifications:(id)notifications
{
  v33 = *MEMORY[0x277D85DE8];
  notificationsCopy = notifications;
  dataSource = [(CALNEventInvitationNotificationSource *)self dataSource];
  v23 = notificationsCopy;
  v6 = [dataSource fetchEventInvitationNotificationSourceClientIdentifiers:notificationsCopy];

  v25 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = [(CALNEventInvitationNotificationSource *)self contentForNotificationWithSourceClientIdentifier:v11];
        if (v13)
        {
          v14 = [CALNNotificationRecord alloc];
          sourceIdentifier = [(CALNEventInvitationNotificationSource *)self sourceIdentifier];
          v16 = [(CALNNotificationRecord *)v14 initWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:v11 content:v13];

          [v25 addObject:v16];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  v17 = +[CALNLogSubsystem calendar];
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v23)
  {
    if (v18)
    {
      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
      *buf = 138543362;
      v31 = v19;
      v20 = "Refreshed event invitation notifications in response to database change. Found %{public}@ notifications for changed objects.";
LABEL_15:
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, v20, buf, 0xCu);
    }
  }

  else if (v18)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v25, "count")}];
    *buf = 138543362;
    v31 = v19;
    v20 = "Refreshed event invitation notifications. Found %{public}@ notifications.";
    goto LABEL_15;
  }

  notificationManager = [(CALNEventInvitationNotificationSource *)self notificationManager];
  sourceIdentifier2 = [(CALNEventInvitationNotificationSource *)self sourceIdentifier];
  [CALNNotificationRecordsDiffApplier refreshNotificationManager:notificationManager withNotificationRecords:v25 forSourceWithIdentifier:sourceIdentifier2 filteredBySourceClientIDs:v23];
}

- (void)didReceiveResponse:(id)response
{
  v14 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  actionIdentifier = [responseCopy actionIdentifier];
  notificationRecord = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];

  v8 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543618;
    v11 = sourceClientIdentifier;
    v12 = 2114;
    v13 = actionIdentifier;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Received notification response for event invitation %{public}@ with actionIdentifier = %{public}@", &v10, 0x16u);
  }

  if (([actionIdentifier isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"] & 1) != 0 || objc_msgSend(actionIdentifier, "isEqualToString:", @"com.apple.CALNNotificationDismissActionIdentifier"))
  {
    dataSource = [(CALNEventInvitationNotificationSource *)self dataSource];
    [dataSource clearEventInvitationWithSourceClientIdentifier:sourceClientIdentifier];
  }

  else if ([actionIdentifier isEqualToString:@"CALNNotificationAcceptAction"])
  {
    dataSource = [(CALNEventInvitationNotificationSource *)self dataSource];
    [dataSource acceptEventInvitationWithSourceClientIdentifier:sourceClientIdentifier];
  }

  else if ([actionIdentifier isEqualToString:@"CALNNotificationDeclineAction"])
  {
    dataSource = [(CALNEventInvitationNotificationSource *)self dataSource];
    [dataSource declineEventInvitationWithSourceClientIdentifier:sourceClientIdentifier];
  }

  else if ([actionIdentifier isEqualToString:@"CALNNotificationMaybeAction"])
  {
    dataSource = [(CALNEventInvitationNotificationSource *)self dataSource];
    [dataSource tentativeAcceptEventInvitationWithSourceClientIdentifier:sourceClientIdentifier];
  }

  else
  {
    if (![actionIdentifier isEqualToString:@"CALNNotificationReportJunkEventAction"])
    {
      goto LABEL_7;
    }

    dataSource = [(CALNEventInvitationNotificationSource *)self dataSource];
    [dataSource reportEventInvitationAsJunkWithSourceClientIdentifier:sourceClientIdentifier];
  }

LABEL_7:
}

- (id)_notificationBodyForNotificationInfo:(id)info contactIdentifier:(id *)identifier
{
  v54 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  *identifier = 0;
  v39 = infoCopy;
  eventInvitationNotification = [infoCopy eventInvitationNotification];
  type = [eventInvitationNotification type];
  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 67110656;
    v41 = type == 1;
    v42 = 1024;
    timeChanged = [eventInvitationNotification timeChanged];
    v44 = 1024;
    dateChanged = [eventInvitationNotification dateChanged];
    v46 = 1024;
    titleChanged = [eventInvitationNotification titleChanged];
    v48 = 1024;
    locationChanged = [eventInvitationNotification locationChanged];
    v50 = 1024;
    videoConferenceChanged = [eventInvitationNotification videoConferenceChanged];
    v52 = 1024;
    recurrenceChanged = [eventInvitationNotification recurrenceChanged];
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_INFO, "Generating Notification Body For Notification Info. isModification: %d. timeChanged: %d, dateChanged: %d, titleChanged: %d, locationChanged: %d, videoConferenceChanged: %d, recurrenceChanged: %d", buf, 0x2Cu);
  }

  startDateForNextOccurrence = [eventInvitationNotification startDateForNextOccurrence];
  startDate = startDateForNextOccurrence;
  if (!startDateForNextOccurrence)
  {
    startDate = [eventInvitationNotification startDate];
  }

  isAllDay = [eventInvitationNotification isAllDay];
  dateProvider = [(CALNEventInvitationNotificationSource *)self dateProvider];
  v14 = [CALNDateStringUtils dateTimeStringForEventDate:startDate alwaysIncludeDate:1 allDayEvent:isAllDay dateProvider:dateProvider];

  if (!startDateForNextOccurrence)
  {
  }

  v15 = +[CALNBundle bundle];
  array = [MEMORY[0x277CBEB18] array];
  if (type == 1)
  {
    if ([eventInvitationNotification timeChanged])
    {
      v17 = @"Time changed to %@";
LABEL_14:
      title = [v15 localizedStringForKey:v17 value:&stru_28551FB98 table:0];
      v21 = [MEMORY[0x277CCACA8] localizedStringWithFormat:title, v14];
      [array addObject:v21];
LABEL_15:

LABEL_16:
      location = 0;
LABEL_17:
      v22 = 0;
LABEL_24:

      goto LABEL_25;
    }

    if ([eventInvitationNotification dateChanged])
    {
      v17 = @"Date changed to %@";
      goto LABEL_14;
    }

    if ([eventInvitationNotification titleChanged])
    {
      title = [eventInvitationNotification title];
      v21 = [v15 localizedStringForKey:@"Title changed to %@" value:&stru_28551FB98 table:0];
      v32 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v21, title];
      [array addObject:v32];

      goto LABEL_15;
    }

    if (![eventInvitationNotification locationChanged])
    {
      if ([eventInvitationNotification videoConferenceChanged])
      {
        v36 = @"Video Call updated";
      }

      else if ([eventInvitationNotification recurrenceChanged])
      {
        v36 = @"Repeat frequency or end date changed";
      }

      else
      {
        v38 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          [CALNEventInvitationNotificationSource _notificationBodyForNotificationInfo:v38 contactIdentifier:?];
        }

        v36 = @"Invitation updated";
      }

      title = [v15 localizedStringForKey:v36 value:&stru_28551FB98 table:0];
      [array addObject:title];
      goto LABEL_16;
    }

    title = [eventInvitationNotification location];
    v33 = [title length];
    videoConferenceChanged2 = [eventInvitationNotification videoConferenceChanged];
    if (v33)
    {
      if (!videoConferenceChanged2)
      {
        v37 = [v15 localizedStringForKey:@"Location changed to %@" value:&stru_28551FB98 table:0];
        location = [MEMORY[0x277CCACA8] localizedStringWithFormat:v37, title];

LABEL_53:
        [array addObject:location];
        goto LABEL_17;
      }

      v35 = @"Location changed and Video Call updated";
    }

    else if (videoConferenceChanged2)
    {
      v35 = @"Location removed and Video Call updated";
    }

    else
    {
      v35 = @"Location removed";
    }

    location = [v15 localizedStringForKey:v35 value:&stru_28551FB98 table:0];
    goto LABEL_53;
  }

  location = [eventInvitationNotification location];
  v19 = [v15 localizedStringForKey:@"Invitation From %@" value:&stru_28551FB98 table:0];
  if ([eventInvitationNotification couldBeJunk])
  {
    [CALNNotificationSourceUtils displayNameForJunkIdentity:eventInvitationNotification];
  }

  else
  {
    CUIKDisplayStringForNotificationIdentity();
  }
  v23 = ;
  v22 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v19, v23];
  [array addObject:v22];
  [array addObject:v14];
  if ([location length])
  {
    [array addObject:location];
  }

  if (v22 && [eventInvitationNotification couldBeJunk])
  {
    title = [v15 localizedStringForKey:@"Unknown Sender" value:&stru_28551FB98 table:0];
    [array insertObject:title atIndex:0];
    goto LABEL_24;
  }

LABEL_25:
  conflictDetails = [v39 conflictDetails];
  if (conflictDetails)
  {
    mEMORY[0x277CF7CA8] = [MEMORY[0x277CF7CA8] sharedGenerator];
    v26 = [mEMORY[0x277CF7CA8] conflictStringForConflictDetails:conflictDetails maxTitleLength:20];

    if ([v26 length])
    {
      [array addObject:v26];
    }
  }

  if ([eventInvitationNotification containsBlockedAttendee])
  {
    blockedAttendeeString = [MEMORY[0x277CF7CA8] blockedAttendeeString];
    [array addObject:blockedAttendeeString];
  }

  v28 = [array componentsJoinedByString:@"\n"];
  whitespaceCharacterSet = [MEMORY[0x277CCA900] whitespaceCharacterSet];
  v30 = [v28 stringByTrimmingCharactersInSet:whitespaceCharacterSet];

  return v30;
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

- (void)contentForNotificationWithSourceClientIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_242909000, a2, OS_LOG_TYPE_ERROR, "Failed to get notification info for sourceClientIdentifier (%{public}@)", &v2, 0xCu);
}

@end