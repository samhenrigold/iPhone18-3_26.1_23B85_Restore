@interface CALNTriggeredEventNotificationSource
+ (id)_conferenceURLForNotification:(id)notification;
+ (id)_mailtoURLForNotification:(id)notification;
+ (id)_mapItemURLForNotification:(id)notification;
+ (id)_mergeDataFromUnprotectedStore:(id)store withDataInProtectedStore:(id)protectedStore;
- (BOOL)_isNotificationMetaDataExpired:(id)expired eventID:(id)d;
- (BOOL)_itemWithEventID:(id)d affectedByChangesToObjects:(id)objects;
- (BOOL)_mayCeaseRouteMonitoringForExistingNotificationData:(id)data;
- (BOOL)_notificationWithSourceClientIdentifier:(id)identifier affectedByChangesToObjects:(id)objects;
- (BOOL)_shouldCeaseRouteMonitoringEventForSourceClientIdentifier:(id)identifier;
- (BOOL)_shouldRemoveNotificationMetaData:(id)data eventID:(id)d;
- (BOOL)_shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d;
- (BOOL)_sourceClientIdentifier:(id)identifier matchesEventForSourceClientIdentifier:(id)clientIdentifier;
- (BOOL)migrateToStorage:(id)storage;
- (CALNNotificationManager)notificationManager;
- (CALNTriggeredEventNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider sourceEventRepresentationProvider:(id)representationProvider triggerHelper:(id)helper transitionProvider:(id)transitionProvider bodyDescriptionProvider:(id)descriptionProvider travelAdvisoryTimelinessAuthority:(id)self0 dateProvider:(id)self1 notificationDataStorage:(id)self2 urlHandler:(id)self3 mapItemURLProvider:(id)self4 timeToLeaveRefreshStorage:(id)self5 snoozeUpdateTimer:(id)self6;
- (NSArray)categories;
- (id)_contentForNotificationWithSourceClientIdentifier:(id)identifier shouldClearHypothesis:(BOOL)hypothesis;
- (id)_eventRepresentationDictionaryWithSourceNotificationInfo:(id)info hypothesisMessage:(id)message;
- (id)_existingNotificationDataMatchingEventForSourceClientIdentifier:(id)identifier;
- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)identifier;
- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)identifier existingRecords:(id)records;
- (id)_launchURLForResponse:(id)response;
- (id)_notificationDataForSourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now;
- (id)_notificationResponseDataForRecord:(id)record;
- (id)_notificationResponseDataForSourceNotificationInfo:(id)info;
- (id)_resolvedSourceClientIdentifierForNewSourceClientIdentifier:(id)identifier oldSourceClientIdentifier:(id)clientIdentifier;
- (id)_sourceNotificationInfoForSourceClientIdentifier:(id)identifier notificationInfo:(id)info existingNotificationData:(id)data hypothesis:(id)hypothesis shouldClearHypothesis:(BOOL)clearHypothesis isOffsetFromTravelTimeStart:(BOOL)start isForContentCreation:(BOOL)creation;
- (id)_sourceNotificationInfoForSourceClientIdentifier:(id)identifier shouldClearHypothesis:(BOOL)hypothesis isForContentCreation:(BOOL)creation;
- (id)_updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:(BOOL)time;
- (id)_updatedNotificationDataResettingTimeToLeaveDisplayState:(id)state;
- (id)_updatedSourceNotificationInfoForContentCreation:(id)creation;
- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier;
- (id)contentForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info isProtectedDataAvailable:(BOOL)available;
- (unint64_t)_calnTravelAdvisoryTimelinessPeriodFromEKTravelAvisoryTimelinessPeriod:(unint64_t)period;
- (unint64_t)_travelAdvisoryTimelinessPeriodForHypothesis:(id)hypothesis;
- (void)_addEventURL:(id)l mappingToEventObjectID:(id)d;
- (void)_addNotificationData:(id)data forSourceClientIdentifier:(id)identifier;
- (void)_addNotificationDataForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now;
- (void)_addRecord:(id)record sourceNotificationInfo:(id)info existingNotificationData:(id)data trigger:(unint64_t)trigger transition:(unint64_t)transition now:(id)now;
- (void)_clearTravelAdvisoryFromNotificationMetaDataForSourceClientIdentifier:(id)identifier;
- (void)_clearTravelAdvisoryHypotheses;
- (void)_commonHandleResponse:(id)response;
- (void)_didReceiveResponse:(id)response;
- (void)_handleConferenceCallActionWithResponse:(id)response;
- (void)_handleDirectionsActionWithResponse:(id)response;
- (void)_handleMailOrganizerActionWithResponse:(id)response;
- (void)_notificationAddedWithSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info trigger:(unint64_t)trigger;
- (void)_refreshNotification:(id)notification;
- (void)_refreshNotificationMetaData:(id)data eventID:(id)d;
- (void)_refreshNotificationMetaDataWithObjectIDs:(id)ds;
- (void)_refreshNotificationRecordsWithObjectIDs:(id)ds;
- (void)_refreshNotifications:(id)notifications;
- (void)_refreshTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d;
- (void)_refreshTimeToLeaveRefreshTimersWithObjectIDs:(id)ds;
- (void)_removeStoredNotificationDataForEventWithEventID:(id)d;
- (void)_resetStoredNotificationDataTimeToLeaveDisplayStateForSourceClientIdentifier:(id)identifier;
- (void)_setNotificationResponseData:(id)data onNotificationContent:(id)content;
- (void)_travelAdvisoryAuthorizationChanged:(BOOL)changed;
- (void)_travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)identifier;
- (void)_triggeredWithSourceClientIdentifier:(id)identifier triggerData:(id)data;
- (void)_updateNotification:(id)notification shouldClearHypothesis:(BOOL)hypothesis;
- (void)_updateSnoozeOptionsForEvents:(id)events;
- (void)_updateStoredNotificationDataForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now;
- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier;
- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis allowsLocationAlerts:(BOOL)alerts travelAdvisoryDisabled:(BOOL)disabled;
- (void)dataSource:(id)source travelAdvisoryAuthorizationChanged:(BOOL)changed;
- (void)dataSource:(id)source travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)identifier;
- (void)dataSource:(id)source triggeredWithSourceClientIdentifier:(id)identifier triggerData:(id)data;
- (void)didReceiveResponse:(id)response;
- (void)refreshNotification:(id)notification;
- (void)refreshNotifications:(id)notifications;
- (void)snoozeTimerFiredForEvents:(id)events;
- (void)updateSnoozeOptionsForPostedNotifications;
- (void)willPostNotification:(id)notification;
@end

@implementation CALNTriggeredEventNotificationSource

- (CALNTriggeredEventNotificationSource)initWithDataSource:(id)source notificationManager:(id)manager iconIdentifierProvider:(id)provider sourceEventRepresentationProvider:(id)representationProvider triggerHelper:(id)helper transitionProvider:(id)transitionProvider bodyDescriptionProvider:(id)descriptionProvider travelAdvisoryTimelinessAuthority:(id)self0 dateProvider:(id)self1 notificationDataStorage:(id)self2 urlHandler:(id)self3 mapItemURLProvider:(id)self4 timeToLeaveRefreshStorage:(id)self5 snoozeUpdateTimer:(id)self6
{
  sourceCopy = source;
  managerCopy = manager;
  providerCopy = provider;
  representationProviderCopy = representationProvider;
  helperCopy = helper;
  transitionProviderCopy = transitionProvider;
  descriptionProviderCopy = descriptionProvider;
  authorityCopy = authority;
  dateProviderCopy = dateProvider;
  storageCopy = storage;
  handlerCopy = handler;
  lProviderCopy = lProvider;
  refreshStorageCopy = refreshStorage;
  timerCopy = timer;
  v52.receiver = self;
  v52.super_class = CALNTriggeredEventNotificationSource;
  v23 = [(CALNTriggeredEventNotificationSource *)&v52 init];
  v24 = v23;
  if (v23)
  {
    objc_storeStrong(&v23->_dataSource, source);
    objc_storeWeak(&v24->_notificationManager, managerCopy);
    objc_storeStrong(&v24->_iconIdentifierProvider, provider);
    objc_storeStrong(&v24->_sourceEventRepresentationProvider, representationProvider);
    objc_storeStrong(&v24->_triggerHelper, helper);
    objc_storeStrong(&v24->_transitionProvider, transitionProvider);
    objc_storeStrong(&v24->_bodyDescriptionProvider, descriptionProvider);
    objc_storeStrong(&v24->_travelAdvisoryTimelinessAuthority, authority);
    objc_storeStrong(&v24->_dateProvider, dateProvider);
    objc_storeStrong(&v24->_notificationDataStorage, storage);
    objc_storeStrong(&v24->_urlHandler, handler);
    objc_storeStrong(&v24->_mapItemURLProvider, lProvider);
    objc_storeStrong(&v24->_timeToLeaveRefreshStorage, refreshStorage);
    objc_opt_class();
    v25 = CalGenerateQualifiedIdentifierWithClassAndSubdomain();
    v26 = timerCopy;
    v27 = managerCopy;
    uTF8String = [v25 UTF8String];

    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v30 = uTF8String;
    managerCopy = v27;
    timerCopy = v26;
    v31 = dispatch_queue_create(v30, v29);
    workQueue = v24->_workQueue;
    v24->_workQueue = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    eventURLToObjectIDMap = v24->_eventURLToObjectIDMap;
    v24->_eventURLToObjectIDMap = v33;

    objc_storeStrong(&v24->_snoozeUpdateTimer, timer);
    dataSource = [(CALNTriggeredEventNotificationSource *)v24 dataSource];
    [dataSource setDelegate:v24];

    snoozeUpdateTimer = [(CALNTriggeredEventNotificationSource *)v24 snoozeUpdateTimer];
    [snoozeUpdateTimer setDelegate:v24];
  }

  return v24;
}

- (id)contentForNotificationWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__4;
  v16 = __Block_byref_object_dispose__4;
  v17 = 0;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__CALNTriggeredEventNotificationSource_contentForNotificationWithSourceClientIdentifier___block_invoke;
  block[3] = &unk_278D6F2C8;
  v10 = identifierCopy;
  v11 = &v12;
  block[4] = self;
  v6 = identifierCopy;
  dispatch_sync(workQueue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __89__CALNTriggeredEventNotificationSource_contentForNotificationWithSourceClientIdentifier___block_invoke(uint64_t a1)
{
  *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 32) _contentForNotificationWithSourceClientIdentifier:*(a1 + 40)];

  return MEMORY[0x2821F96F8]();
}

- (id)contentForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info isProtectedDataAvailable:(BOOL)available
{
  availableCopy = available;
  v99 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v86 = identifierCopy;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Getting content for source client identifier = %{public}@", buf, 0xCu);
  }

  v11 = +[CALNBundle bundle];
  title = [infoCopy title];
  v74 = v11;
  if ([title length])
  {
    v81 = title;
  }

  else
  {
    v81 = [v11 localizedStringForKey:@"Event" value:&stru_28551FB98 table:0];

    if (availableCopy)
    {
      v13 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:];
      }
    }
  }

  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  eventID = [infoCopy eventID];
  alarmID = [infoCopy alarmID];
  v80 = [dataSource notificationExpirationDateForEventID:eventID alarmID:alarmID];

  v79 = [CALNNotificationSound soundWithAlertType:10 alertTopic:@"com.apple.mobilecal.bulletin-subsection.upcomingEvents"];
  iconIdentifierProvider = [(CALNTriggeredEventNotificationSource *)self iconIdentifierProvider];
  startDate = [infoCopy startDate];
  currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
  v78 = [iconIdentifierProvider identifierForIconWithDate:startDate inCalendar:currentCalendar];

  v20 = @"com.apple.calendar.notifications.TriggeredEvent";
  alarmID2 = [infoCopy alarmID];
  mapItemURL = [infoCopy mapItemURL];
  conferenceURL = [infoCopy conferenceURL];
  mapItemURL2 = [infoCopy mapItemURL];

  mailtoURL = [infoCopy mailtoURL];

  v76 = mapItemURL;
  v77 = alarmID2;
  v75 = conferenceURL;
  v72 = mapItemURL2;
  if (alarmID2 && !mapItemURL2 && !conferenceURL && !mailtoURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Snooze;
LABEL_14:
    v71 = identifierCopy;
    v26 = *v25;

LABEL_15:
    startDate2 = [infoCopy startDate];
    endDate = [infoCopy endDate];
    isAllDay = [infoCopy isAllDay];
    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v31 = [dateProvider now];
    v32 = [CALNSnoozeCategory snoozeCategoryForEventWithStartDate:startDate2 endDate:endDate now:v31 isAllDay:isAllDay];

    suffix = [v32 suffix];
    v34 = [(__CFString *)v26 stringByAppendingString:suffix];

    v84 = [v32 expirationDateForEventWithStartDate:startDate2 endDate:endDate isAllDay:isAllDay];
    [v32 leeway];
    v36 = v35;

    v20 = startDate2;
    identifierCopy = v71;
    mapItemURL = v76;
    alarmID2 = v77;
    conferenceURL = v75;
LABEL_32:

    goto LABEL_33;
  }

  v37 = mapItemURL2 == 0;
  if (mapItemURL2 && !alarmID2 && !conferenceURL && !mailtoURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions;
LABEL_31:
    v34 = *v38;
    v84 = 0;
    v36 = 0.0;
    goto LABEL_32;
  }

  v39 = conferenceURL == 0;
  if (conferenceURL && !alarmID2 && !mapItemURL2 && !mailtoURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall;
    goto LABEL_31;
  }

  v40 = mailtoURL == 0;
  if (mailtoURL && !alarmID2 && !mapItemURL2 && !conferenceURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_MailOrganizer;
    goto LABEL_31;
  }

  if (alarmID2 != 0 && mapItemURL2 != 0 && !conferenceURL && !mailtoURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_Snooze;
    goto LABEL_14;
  }

  if (alarmID2 != 0 && conferenceURL != 0 && !mapItemURL2 && !mailtoURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall_Snooze;
    goto LABEL_14;
  }

  if (alarmID2 != 0 && mailtoURL != 0 && !mapItemURL2 && !conferenceURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  v68 = v39 || v37;
  if (conferenceURL != 0 && mapItemURL2 != 0 && !alarmID2 && !mailtoURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall;
    goto LABEL_31;
  }

  v69 = v37 || v40;
  if (!v69 && !alarmID2 && !conferenceURL)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_MailOrganizer;
    goto LABEL_31;
  }

  v70 = v39 || v40;
  if (!v70 && !alarmID2 && !mapItemURL2)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall_MailOrganizer;
    goto LABEL_31;
  }

  if (!(v68 & 1 | (alarmID2 == 0)) && !mailtoURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall_Snooze;
    goto LABEL_14;
  }

  if (!(v68 & 1 | (mailtoURL == 0)) && !alarmID2)
  {
    v38 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall_MailOrganizer;
    goto LABEL_31;
  }

  if (!v69 && alarmID2 != 0 && !conferenceURL)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  if (!v70 && alarmID2 != 0 && !mapItemURL2)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_ConferenceCall_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  v71 = identifierCopy;
  if ((v68 | (alarmID2 == 0) | v40) != 1)
  {
    v25 = kCALNTriggeredEventNotificationCategoryIdentifier_Directions_ConferenceCall_MailOrganizer_Snooze;
    goto LABEL_14;
  }

  if (alarmID2)
  {
    v26 = v20;
    goto LABEL_15;
  }

  v84 = 0;
  v36 = 0.0;
  v34 = v20;
LABEL_33:
  v41 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138544898;
    v86 = v34;
    v87 = 1024;
    v88 = alarmID2 != 0;
    v89 = 1024;
    v90 = v72 != 0;
    v91 = 1024;
    v92 = conferenceURL != 0;
    v93 = 1024;
    v94 = mailtoURL != 0;
    v95 = 2112;
    v96 = identifierCopy;
    v97 = 2114;
    v98 = v84;
    _os_log_impl(&dword_242909000, v41, OS_LOG_TYPE_DEFAULT, "Category identifier for content = %{public}@, should include snooze action = (%{BOOL}d), should include directions action = (%{BOOL}d), should include conference call action = (%{BOOL}d), should include mail organizer action = (%{BOOL}d), source client identifier = %@, snoozeCategoryExpirationDate = %{public}@", buf, 0x38u);
  }

  v83 = v34;

  v42 = objc_alloc_init(MEMORY[0x277CBEB38]);
  eventID2 = [infoCopy eventID];
  if (eventID2)
  {
    [v42 setObject:eventID2 forKeyedSubscript:@"entityID"];
  }

  v73 = eventID2;
  if (alarmID2)
  {
    [v42 setObject:alarmID2 forKeyedSubscript:@"AlarmID"];
  }

  if (mapItemURL)
  {
    absoluteString = [mapItemURL absoluteString];
    [v42 setObject:absoluteString forKeyedSubscript:@"MapItemURL"];
  }

  if (conferenceURL)
  {
    absoluteString2 = [conferenceURL absoluteString];
    [v42 setObject:absoluteString2 forKeyedSubscript:@"ConferenceURL"];
  }

  mailtoURL2 = [infoCopy mailtoURL];

  if (mailtoURL2)
  {
    mailtoURL3 = [infoCopy mailtoURL];
    absoluteString3 = [mailtoURL3 absoluteString];
    [v42 setObject:absoluteString3 forKeyedSubscript:@"mailto"];
  }

  if (v84)
  {
    [v42 setObject:v84 forKeyedSubscript:@"snoozeCategoryExpirationDate"];
    v49 = [MEMORY[0x277CCABB0] numberWithDouble:v36];
    [v42 setObject:v49 forKeyedSubscript:@"snoozeCategoryExpirationLeeway"];
  }

  v50 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(infoCopy, "isAllDay")}];
  [v42 setObject:v50 forKeyedSubscript:@"allDay"];

  endDate2 = [infoCopy endDate];
  [v42 setObject:endDate2 forKeyedSubscript:@"endDate"];

  buf[0] = 0;
  bodyDescriptionProvider = [(CALNTriggeredEventNotificationSource *)self bodyDescriptionProvider];
  v53 = [bodyDescriptionProvider bodyForSourceClientIdentifier:identifierCopy sourceNotificationInfo:infoCopy bodyContainsTravelAdvice:buf];

  v54 = objc_alloc_init(CALNMutableNotificationContent);
  [(CALNMutableNotificationContent *)v54 setTitle:v81];
  [(CALNMutableNotificationContent *)v54 setBody:v53];
  [(CALNMutableNotificationContent *)v54 setCategoryIdentifier:v83];
  [(CALNMutableNotificationContent *)v54 setSectionIdentifier:@"com.apple.mobilecal.bulletin-subsection.upcomingEvents"];
  startDate3 = [infoCopy startDate];
  [(CALNMutableNotificationContent *)v54 setDate:startDate3];

  [(CALNMutableNotificationContent *)v54 setExpirationDate:v80];
  launchURL = [infoCopy launchURL];
  [(CALNMutableNotificationContent *)v54 setDefaultActionURL:launchURL];

  [(CALNMutableNotificationContent *)v54 setIconIdentifier:v78];
  -[CALNMutableNotificationContent setShouldHideTime:](v54, "setShouldHideTime:", [infoCopy isAllDay]);
  [(CALNMutableNotificationContent *)v54 setShouldSuppressSyncDismissalWhenRemoved:0];
  [(CALNMutableNotificationContent *)v54 setSound:v79];
  [(CALNMutableNotificationContent *)v54 setThreadIdentifier:@"upcomingEventsThread"];
  [(CALNMutableNotificationContent *)v54 setUserInfo:v42];
  if ([infoCopy isTimeSensitive])
  {
    v57 = 2;
  }

  else
  {
    v57 = 1;
  }

  [(CALNMutableNotificationContent *)v54 setInterruptionLevel:v57];
  calendarIdentifier = [infoCopy calendarIdentifier];
  [(CALNMutableNotificationContent *)v54 setFilterCriteria:calendarIdentifier];

  v59 = identifierCopy;
  if (buf[0] == 1)
  {
    v60 = v53;
  }

  else
  {
    v60 = 0;
  }

  selfCopy = self;
  v62 = [(CALNTriggeredEventNotificationSource *)self _eventRepresentationDictionaryWithSourceNotificationInfo:infoCopy hypothesisMessage:v60];
  if (v62)
  {
    [CALNEventRepresentationSourceUtils setEventRepresentationDictionary:v62 onNotificationContent:v54];
  }

  legacyIdentifier = [infoCopy legacyIdentifier];

  if (legacyIdentifier)
  {
    legacyIdentifier2 = [infoCopy legacyIdentifier];
    [CALNLegacyIdentifierUtils setLegacyIdentifier:legacyIdentifier2 onNotificationContent:v54];
  }

  v65 = [(CALNTriggeredEventNotificationSource *)selfCopy _notificationResponseDataForSourceNotificationInfo:infoCopy];
  [(CALNTriggeredEventNotificationSource *)selfCopy _setNotificationResponseData:v65 onNotificationContent:v54];
  v66 = [(CALNMutableNotificationContent *)v54 copy];

  return v66;
}

- (void)willPostNotification:(id)notification
{
  notificationCopy = notification;
  sourceClientIdentifier = [notificationCopy sourceClientIdentifier];
  content = [notificationCopy content];

  userInfo = [content userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"AlarmID"];
  v8 = [userInfo objectForKeyedSubscript:@"snoozeCategoryExpirationDate"];
  v9 = [userInfo objectForKeyedSubscript:@"snoozeCategoryExpirationLeeway"];
  if (v7)
  {
    snoozeUpdateTimer = [(CALNTriggeredEventNotificationSource *)self snoozeUpdateTimer];
    [snoozeUpdateTimer setFireDate:v8 leeway:sourceClientIdentifier forEventWithIdentifier:{objc_msgSend(v9, "integerValue")}];
  }
}

- (void)refreshNotifications:(id)notifications
{
  notificationsCopy = notifications;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CALNTriggeredEventNotificationSource_refreshNotifications___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = notificationsCopy;
  v6 = notificationsCopy;
  dispatch_sync(workQueue, v7);
}

- (void)didReceiveResponse:(id)response
{
  responseCopy = response;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__CALNTriggeredEventNotificationSource_didReceiveResponse___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = responseCopy;
  v6 = responseCopy;
  dispatch_sync(workQueue, v7);
}

- (void)_didReceiveResponse:(id)response
{
  v27 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  actionIdentifier = [responseCopy actionIdentifier];
  notificationRecord = [responseCopy notificationRecord];
  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v24 = actionIdentifier;
    v25 = 2114;
    v26 = sourceClientIdentifier;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Received notification response with action identifier = %{public}@, source client identifier = %{public}@", buf, 0x16u);
  }

  v10 = [actionIdentifier isEqualToString:@"com.apple.CALNNotificationDefaultActionIdentifier"];
  if ((v10 & 1) != 0 || [actionIdentifier isEqualToString:@"com.apple.CALNNotificationDismissActionIdentifier"])
  {
    notificationRecord2 = [responseCopy notificationRecord];
    content = [notificationRecord2 content];
    userInfo = [content userInfo];

    v14 = [userInfo objectForKeyedSubscript:@"IsLocation"];
    LODWORD(content) = [v14 BOOLValue];

    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource acknowledgeEventWithSourceClientIdentifier:sourceClientIdentifier shouldMarkAsHavingReceivedLocation:v10 & content];
  }

  else if ([actionIdentifier isEqualToString:@"CALNNotificationDirectionsAction"])
  {
    [(CALNTriggeredEventNotificationSource *)self _handleDirectionsActionWithResponse:responseCopy];
  }

  else if ([actionIdentifier isEqualToString:@"CALNNotificationConferenceCallAction"])
  {
    [(CALNTriggeredEventNotificationSource *)self _handleConferenceCallActionWithResponse:responseCopy];
  }

  else if ([actionIdentifier isEqualToString:@"Mail_identifier"])
  {
    [(CALNTriggeredEventNotificationSource *)self _handleMailOrganizerActionWithResponse:responseCopy];
  }

  else
  {
    v21[0] = @"CALNTriggeredEventNotificationSnoozeActionIdentifier";
    v21[1] = @"CALNTriggeredEventNotificationSnooze5MinutesActionIdentifier";
    v22[0] = &unk_2855308D8;
    v22[1] = &unk_2855308F0;
    v21[2] = @"CALNTriggeredEventNotificationSnooze15MinutesActionIdentifier";
    v21[3] = @"CALNTriggeredEventNotificationSnooze30MinutesActionIdentifier";
    v22[2] = &unk_285530908;
    v22[3] = &unk_285530920;
    v21[4] = @"CALNTriggeredEventNotificationSnooze1HourActionIdentifier";
    v21[5] = @"CALNTriggeredEventNotificationSnoozeUntil30MinutesBeforeActionIdentifier";
    v22[4] = &unk_285530938;
    v22[5] = &unk_285530950;
    v21[6] = @"CALNTriggeredEventNotificationSnoozeUntil15MinutesBeforeActionIdentifier";
    v21[7] = @"CALNTriggeredEventNotificationSnoozeUntil5MinutesBeforeActionIdentifier";
    v22[6] = &unk_285530968;
    v22[7] = &unk_285530980;
    v21[8] = @"CALNTriggeredEventNotificationSnoozeUntilStartActionIdentifier";
    v21[9] = @"CALNTriggeredEventNotificationSnoozeUntilEndActionIdentifier";
    v22[8] = &unk_285530998;
    v22[9] = &unk_2855309B0;
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:10];
    v19 = [v18 objectForKeyedSubscript:actionIdentifier];
    if (v19)
    {
      dataSource2 = [(CALNTriggeredEventNotificationSource *)self dataSource];
      [dataSource2 snoozeEventWithSourceClientIdentifier:sourceClientIdentifier snoozeType:{objc_msgSend(v19, "unsignedIntegerValue")}];
    }
  }

  if ([(CALNTriggeredEventNotificationSource *)self _shouldCeaseRouteMonitoringEventForSourceClientIdentifier:sourceClientIdentifier])
  {
    dataSource3 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource3 ceaseRouteMonitoringEventForSourceClientIdentifier:sourceClientIdentifier];

    [(CALNTriggeredEventNotificationSource *)self _clearTravelAdvisoryFromNotificationMetaDataForSourceClientIdentifier:sourceClientIdentifier];
    dataSource4 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource4 removeTimeToLeaveRefreshTimerForSourceClientIdentifier:sourceClientIdentifier];
  }
}

- (NSArray)categories
{
  if (categories_onceToken_4 != -1)
  {
    [CALNTriggeredEventNotificationSource categories];
  }

  v3 = categories_categories_4;

  return v3;
}

void __50__CALNTriggeredEventNotificationSource_categories__block_invoke()
{
  v83[1] = *MEMORY[0x277D85DE8];
  v60 = +[CALNBundle bundle];
  v58 = [v60 localizedStringForKey:@"notification.hiddenPreviewsBodyPlaceholder.upcomingEvent" value:@"Upcoming Event" table:0];
  v57 = [v60 localizedStringForKey:@"%u more upcoming events" value:&stru_28551FB98 table:0];
  v0 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v83[0] = v0;
  v59 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:1];

  v82[0] = v59;
  v81[0] = @"com.apple.calendar.notifications.TriggeredEvent";
  v81[1] = @"com.apple.calendar.notifications.TriggeredEvent.Snooze";
  v56 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v80 = v56;
  v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v80 count:1];
  v82[1] = v55;
  v81[2] = @"com.apple.calendar.notifications.TriggeredEvent.Directions";
  v54 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v79 = v54;
  v53 = [MEMORY[0x277CBEA60] arrayWithObjects:&v79 count:1];
  v82[2] = v53;
  v81[3] = @"com.apple.calendar.notifications.TriggeredEvent.ConferenceCall";
  v52 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v78 = v52;
  v51 = [MEMORY[0x277CBEA60] arrayWithObjects:&v78 count:1];
  v82[3] = v51;
  v81[4] = @"com.apple.calendar.notifications.TriggeredEvent.MailOrganizer";
  v50 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v77 = v50;
  v49 = [MEMORY[0x277CBEA60] arrayWithObjects:&v77 count:1];
  v82[4] = v49;
  v81[5] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.Snooze";
  v48 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v76[0] = v48;
  v47 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v76[1] = v47;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:v76 count:2];
  v82[5] = v46;
  v81[6] = @"com.apple.calendar.notifications.TriggeredEvent.ConferenceCall.Snooze";
  v45 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v75[0] = v45;
  v44 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v75[1] = v44;
  v43 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:2];
  v82[6] = v43;
  v81[7] = @"com.apple.calendar.notifications.TriggeredEvent.MailOrganizer.Snooze";
  v42 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v74[0] = v42;
  v41 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v74[1] = v41;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:2];
  v82[7] = v40;
  v81[8] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.ConferenceCall";
  v39 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v73[0] = v39;
  v38 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v73[1] = v38;
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:2];
  v82[8] = v37;
  v81[9] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.MailOrganizer";
  v36 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v72[0] = v36;
  v35 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v72[1] = v35;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:2];
  v82[9] = v34;
  v81[10] = @"com.apple.calendar.notifications.TriggeredEvent.ConferenceCall.MailOrganizer";
  v33 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v71[0] = v33;
  v32 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v71[1] = v32;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:2];
  v82[10] = v31;
  v81[11] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.ConferenceCall.Snooze";
  v30 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v70[0] = v30;
  v29 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v70[1] = v29;
  v28 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v70[2] = v28;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:3];
  v82[11] = v27;
  v81[12] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.ConferenceCall.MailOrganizer";
  v26 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v69[0] = v26;
  v25 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v69[1] = v25;
  v24 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v69[2] = v24;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:3];
  v82[12] = v22;
  v81[13] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.MailOrganizer.Snooze";
  v21 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v68[0] = v21;
  v20 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v68[1] = v20;
  v19 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v68[2] = v19;
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:3];
  v82[13] = v1;
  v81[14] = @"com.apple.calendar.notifications.TriggeredEvent.ConferenceCall.MailOrganizer.Snooze";
  v2 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v67[0] = v2;
  v3 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v67[1] = v3;
  v4 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v67[2] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:3];
  v82[14] = v5;
  v81[15] = @"com.apple.calendar.notifications.TriggeredEvent.Directions.ConferenceCall.MailOrganizer.Snooze";
  v6 = +[CALNTriggeredEventNotificationActionUtilities directionsAction];
  v66[0] = v6;
  v7 = +[CALNTriggeredEventNotificationActionUtilities conferenceCallAction];
  v66[1] = v7;
  v8 = +[CALNTriggeredEventNotificationActionUtilities mailOrganizerAction];
  v66[2] = v8;
  v9 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v66[3] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:4];
  v82[15] = v10;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:v81 count:16];

  v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v23, "count")}];
  v12 = +[CALNSnoozeCategory snoozeCategories];
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __50__CALNTriggeredEventNotificationSource_categories__block_invoke_2;
  v61[3] = &unk_278D6F7B8;
  v62 = v12;
  v63 = v58;
  v64 = v57;
  v65 = v11;
  v13 = v11;
  v14 = v57;
  v15 = v58;
  v16 = v12;
  [v23 enumerateKeysAndObjectsUsingBlock:v61];
  v17 = [v13 copy];
  v18 = categories_categories_4;
  categories_categories_4 = v17;
}

void __50__CALNTriggeredEventNotificationSource_categories__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[CALNTriggeredEventNotificationActionUtilities snoozeAction];
  v8 = [v6 containsObject:v7];

  if (v8)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    obj = *(a1 + 32);
    v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v21 + 1) + 8 * i);
          v14 = [v13 actions];
          v15 = [v6 arrayByAddingObjectsFromArray:v14];

          v16 = [v13 suffix];
          v17 = [v5 stringByAppendingString:v16];

          v18 = [CALNNotificationCategory categoryWithIdentifier:v17 actions:v15 hiddenPreviewsBodyPlaceholder:*(a1 + 40) options:2 categorySummaryFormat:*(a1 + 48)];
          [*(a1 + 56) addObject:v18];
        }

        v10 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v19 = [CALNNotificationCategory categoryWithIdentifier:v5 actions:v6 hiddenPreviewsBodyPlaceholder:*(a1 + 40) options:2 categorySummaryFormat:*(a1 + 48)];
    [*(a1 + 56) addObject:v19];
  }
}

- (void)dataSource:(id)source triggeredWithSourceClientIdentifier:(id)identifier triggerData:(id)data
{
  identifierCopy = identifier;
  dataCopy = data;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __99__CALNTriggeredEventNotificationSource_dataSource_triggeredWithSourceClientIdentifier_triggerData___block_invoke;
  block[3] = &unk_278D6F318;
  block[4] = self;
  v13 = identifierCopy;
  v14 = dataCopy;
  v10 = dataCopy;
  v11 = identifierCopy;
  dispatch_sync(workQueue, block);
}

- (void)dataSource:(id)source travelAdvisoryAuthorizationChanged:(BOOL)changed
{
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __86__CALNTriggeredEventNotificationSource_dataSource_travelAdvisoryAuthorizationChanged___block_invoke;
  v7[3] = &unk_278D6F7E0;
  v7[4] = self;
  changedCopy = changed;
  dispatch_sync(workQueue, v7);
}

- (void)dataSource:(id)source travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __115__CALNTriggeredEventNotificationSource_dataSource_travelEngineEventSignificantlyChangedWithSourceClientIdentifier___block_invoke;
  v8[3] = &unk_278D6F278;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_sync(workQueue, v8);
}

- (void)snoozeTimerFiredForEvents:(id)events
{
  eventsCopy = events;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__CALNTriggeredEventNotificationSource_snoozeTimerFiredForEvents___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = eventsCopy;
  v6 = eventsCopy;
  dispatch_sync(workQueue, v7);
}

- (void)_triggeredWithSourceClientIdentifier:(id)identifier triggerData:(id)data
{
  v81 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dataCopy = data;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v76 = identifierCopy;
    v77 = 2114;
    v78 = dataCopy;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Triggered with source client identifier = %{public}@, trigger data = %{public}@", buf, 0x16u);
  }

  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v12 = [dataSource fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:identifierCopy isProtectedDataAvailable:{objc_msgSend(notificationManager, "isProtectedDataAvailable")}];

  if (v12)
  {
    notificationManager2 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
    v74 = [notificationManager2 fetchRecordsWithSourceIdentifier:sourceIdentifier];

    v15 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v76 = v74;
      _os_log_impl(&dword_242909000, v15, OS_LOG_TYPE_INFO, "Existing records = %@.", buf, 0xCu);
    }

    v16 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:identifierCopy existingRecords:v74];
    v17 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      sourceClientIdentifier = [v16 sourceClientIdentifier];
      *buf = 138543874;
      v76 = identifierCopy;
      v77 = 2114;
      v78 = sourceClientIdentifier;
      v79 = 2112;
      v80 = v16;
      _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_INFO, "Existing record matching event for source client identifier = %{public}@, existing record source client identifier = %{public}@, existing record = %@", buf, 0x20u);
    }

    v19 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:identifierCopy];
    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v76 = identifierCopy;
      v77 = 2112;
      v78 = v19;
      _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, "Existing notification data for source client identifier = %{public}@, existing notification data = %@", buf, 0x16u);
    }

    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v72 = [dateProvider now];

    trigger = [dataCopy trigger];
    hypothesis = [dataCopy hypothesis];
    v25 = trigger == 1 && hypothesis == 0;
    LOBYTE(v63) = 0;
    v71 = hypothesis;
    v26 = -[CALNTriggeredEventNotificationSource _sourceNotificationInfoForSourceClientIdentifier:notificationInfo:existingNotificationData:hypothesis:shouldClearHypothesis:isOffsetFromTravelTimeStart:isForContentCreation:](self, "_sourceNotificationInfoForSourceClientIdentifier:notificationInfo:existingNotificationData:hypothesis:shouldClearHypothesis:isOffsetFromTravelTimeStart:isForContentCreation:", identifierCopy, v12, v19, hypothesis, v25, [dataCopy isOffsetFromTravelTimeStart], v63);
    triggerHelper = [(CALNTriggeredEventNotificationSource *)self triggerHelper];
    v73 = v26;
    v28 = [triggerHelper shouldTriggerForSourceClientIdentifier:identifierCopy trigger:trigger sourceNotificationInfo:v26 oldNotificationData:v19];

    v29 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      [MEMORY[0x277CCABB0] numberWithBool:v28];
      v31 = v30 = v12;
      *buf = 138543618;
      v76 = v31;
      v77 = 2114;
      v78 = identifierCopy;
      _os_log_impl(&dword_242909000, v29, OS_LOG_TYPE_DEFAULT, "Determined that notification should trigger = %{public}@. source client identifier = %{public}@", buf, 0x16u);

      v12 = v30;
    }

    if ((v28 & 1) == 0)
    {
      v50 = v73;
      hypothesis2 = [v73 hypothesis];
      -[CALNTriggeredEventNotificationSource _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:hypothesis:allowsLocationAlerts:travelAdvisoryDisabled:](self, "_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:hypothesis:allowsLocationAlerts:travelAdvisoryDisabled:", identifierCopy, hypothesis2, [v73 allowsLocationAlerts], objc_msgSend(v73, "travelAdvisoryDisabled"));
LABEL_50:

      goto LABEL_51;
    }

    v32 = [(CALNTriggeredEventNotificationSource *)self _updatedSourceNotificationInfoForContentCreation:v73];
    notificationManager3 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    v70 = v32;
    v34 = -[CALNTriggeredEventNotificationSource contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:](self, "contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:", identifierCopy, v32, [notificationManager3 isProtectedDataAvailable]);

    if (!v34)
    {
      v51 = +[CALNLogSubsystem calendar];
      v50 = v73;
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _triggeredWithSourceClientIdentifier:triggerData:];
      }

      hypothesis2 = v70;
      goto LABEL_49;
    }

    transitionProvider = [(CALNTriggeredEventNotificationSource *)self transitionProvider];
    v36 = [transitionProvider transitionForSourceClientIdentifier:identifierCopy sourceNotificationInfo:v73 oldNotificationData:v19 trigger:trigger];

    v69 = [CALNTriggeredEventNotificationTransitionUtilities descriptionForTransition:v36];
    v37 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v76 = v69;
      v77 = 2114;
      v78 = identifierCopy;
      _os_log_impl(&dword_242909000, v37, OS_LOG_TYPE_DEFAULT, "Transition = %{public}@, source client identifier = %{public}@", buf, 0x16u);
    }

    v68 = v16;
    if (v36 > 1)
    {
      if (v36 != 2)
      {
        hypothesis2 = v70;
        if (v36 != 3)
        {
          goto LABEL_46;
        }

        notificationManager4 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
        sourceIdentifier2 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
        [notificationManager4 removeRecordWithSourceIdentifier:sourceIdentifier2 sourceClientIdentifier:identifierCopy];

LABEL_45:
        goto LABEL_46;
      }

      if (v16)
      {
        v53 = [v16 mutableCopy];
        [v53 setContent:v34];
        notificationManager5 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
        v55 = dataCopy;
        v56 = v34;
        v57 = v12;
        v58 = [v53 copy];
        [notificationManager5 updateRecord:v58];

        v12 = v57;
        v34 = v56;
        dataCopy = v55;
        notificationManager4 = v53;
      }

      else
      {
        notificationManager4 = +[CALNLogSubsystem calendar];
        if (os_log_type_enabled(notificationManager4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v76 = identifierCopy;
          _os_log_impl(&dword_242909000, notificationManager4, OS_LOG_TYPE_DEFAULT, "No existing delivered notification to perform replace transition, source client identifier = %{public}@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v36)
      {
        hypothesis2 = v70;
        if (v36 == 1)
        {
          v67 = v12;
          sourceClientIdentifier2 = [v16 sourceClientIdentifier];
          v40 = [(CALNTriggeredEventNotificationSource *)self _resolvedSourceClientIdentifierForNewSourceClientIdentifier:identifierCopy oldSourceClientIdentifier:sourceClientIdentifier2];

          v41 = [CALNNotificationRecord alloc];
          sourceIdentifier3 = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
          v66 = v40;
          v43 = [(CALNNotificationRecord *)v41 initWithSourceIdentifier:sourceIdentifier3 sourceClientIdentifier:v40 content:v34];

          sourceClientIdentifier3 = [(CALNNotificationRecord *)v43 sourceClientIdentifier];
          v45 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:sourceClientIdentifier3 existingRecords:v74];

          if (v45)
          {
            sourceClientIdentifier4 = [v45 sourceClientIdentifier];
            if (sourceClientIdentifier4)
            {
              v47 = sourceClientIdentifier4;
              notificationManager6 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
              [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
              v48 = v64 = v45;
              [notificationManager6 removeRecordWithSourceIdentifier:v48 sourceClientIdentifier:v47];

              v45 = v64;
            }
          }

          -[CALNTriggeredEventNotificationSource _addRecord:sourceNotificationInfo:existingNotificationData:trigger:transition:now:](self, "_addRecord:sourceNotificationInfo:existingNotificationData:trigger:transition:now:", v43, v73, v19, [dataCopy trigger], 1, v72);

          notificationManager4 = v66;
          v12 = v67;
          goto LABEL_45;
        }

LABEL_46:
        if ([(CALNTriggeredEventNotificationSource *)self _shouldUpdateStoredNotificationDataGivenTransition:v36])
        {
          [(CALNTriggeredEventNotificationSource *)self _updateStoredNotificationDataForSourceClientIdentifier:identifierCopy sourceNotificationInfo:v73 existingNotificationData:v19 transition:v36 now:v72];
        }

        hypothesis3 = [v73 hypothesis];
        allowsLocationAlerts = [v73 allowsLocationAlerts];
        travelAdvisoryDisabled = [v73 travelAdvisoryDisabled];
        v62 = allowsLocationAlerts;
        v50 = v73;
        [(CALNTriggeredEventNotificationSource *)self _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:identifierCopy hypothesis:hypothesis3 allowsLocationAlerts:v62 travelAdvisoryDisabled:travelAdvisoryDisabled];

        v16 = v68;
        v51 = v69;
LABEL_49:

        goto LABEL_50;
      }

      notificationManager4 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(notificationManager4, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _triggeredWithSourceClientIdentifier:triggerData:];
      }
    }

    hypothesis2 = v70;
    goto LABEL_45;
  }

  v74 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
  {
    [CALNTriggeredEventNotificationSource _triggeredWithSourceClientIdentifier:triggerData:];
  }

LABEL_51:
}

- (void)_travelEngineEventSignificantlyChangedWithSourceClientIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = identifierCopy;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Travel engine event changed significantly. Will reset 'Time to Leave' display state for existing record if it exists. source client identifier = %{public}@", &v9, 0xCu);
  }

  v7 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:identifierCopy];
  if (v7)
  {
    [(CALNTriggeredEventNotificationSource *)self _resetStoredNotificationDataTimeToLeaveDisplayStateForSourceClientIdentifier:identifierCopy];
  }

  else
  {
    v8 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationSource _travelEngineEventSignificantlyChangedWithSourceClientIdentifier:];
    }
  }
}

- (void)_travelAdvisoryAuthorizationChanged:(BOOL)changed
{
  changedCopy = changed;
  v10 = *MEMORY[0x277D85DE8];
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:changedCopy];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Travel advisory authorization changed. authorized = %{public}@", &v8, 0xCu);
  }

  if (!changedCopy)
  {
    [(CALNTriggeredEventNotificationSource *)self _clearTravelAdvisoryHypotheses];
  }
}

- (void)_clearTravelAdvisoryHypotheses
{
  v23 = *MEMORY[0x277D85DE8];
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Clearing travel advisory hypotheses", buf, 2u);
  }

  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v7 = [notificationManager fetchRecordsWithSourceIdentifier:sourceIdentifier];

  v8 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v22 = v7;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_INFO, "Existing records = %@.", buf, 0xCu);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * i);
        [(CALNTriggeredEventNotificationSource *)self _updateNotification:v14 shouldClearHypothesis:1, v16];
        sourceClientIdentifier = [v14 sourceClientIdentifier];
        [(CALNTriggeredEventNotificationSource *)self _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:sourceClientIdentifier];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }
}

- (BOOL)_shouldCeaseRouteMonitoringEventForSourceClientIdentifier:(id)identifier
{
  v4 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:identifier];
  v7 = v4 && ([v4 hypothesis], v6 = v5 = v4;

  return v7;
}

- (BOOL)_mayCeaseRouteMonitoringForExistingNotificationData:(id)data
{
  hypothesis = [data hypothesis];
  if (hypothesis)
  {
    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v6 = [dateProvider now];

    conservativeDepartureDate = [hypothesis conservativeDepartureDate];
    v8 = [v6 CalIsBeforeOrSameAsDate:conservativeDepartureDate];

    v9 = v8 ^ 1;
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (unint64_t)_travelAdvisoryTimelinessPeriodForHypothesis:(id)hypothesis
{
  hypothesisCopy = hypothesis;
  travelAdvisoryTimelinessAuthority = [(CALNTriggeredEventNotificationSource *)self travelAdvisoryTimelinessAuthority];
  v6 = [travelAdvisoryTimelinessAuthority periodForHypothesis:hypothesisCopy];

  return [(CALNTriggeredEventNotificationSource *)self _calnTravelAdvisoryTimelinessPeriodFromEKTravelAvisoryTimelinessPeriod:v6];
}

- (unint64_t)_calnTravelAdvisoryTimelinessPeriodFromEKTravelAvisoryTimelinessPeriod:(unint64_t)period
{
  if (period < 3)
  {
    return period + 1;
  }

  else
  {
    return 0;
  }
}

- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:?];
  v5 = v4;
  if (v4)
  {
    hypothesis = [v4 hypothesis];
  }

  else
  {
    hypothesis = 0;
  }

  [(CALNTriggeredEventNotificationSource *)self _updateTimeToLeaveRefreshTimerForSourceClientIdentifier:identifierCopy hypothesis:hypothesis allowsLocationAlerts:1 travelAdvisoryDisabled:0];
}

- (void)_updateTimeToLeaveRefreshTimerForSourceClientIdentifier:(id)identifier hypothesis:(id)hypothesis allowsLocationAlerts:(BOOL)alerts travelAdvisoryDisabled:(BOOL)disabled
{
  disabledCopy = disabled;
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  hypothesisCopy = hypothesis;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 138543362;
    *&v27[4] = identifierCopy;
    _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Updating refresh timer for source client identifier = %{public}@", v27, 0xCu);
  }

  if (!alerts)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 138543362;
      *&v27[4] = identifierCopy;
      v15 = "Location alerts are not allowed. Will remove the associated refresh timer for source client identifier = %{public}@";
      goto LABEL_9;
    }

LABEL_10:

LABEL_11:
    v16 = [(CALNTriggeredEventNotificationSource *)self dataSource:*v27];
    [v16 removeTimeToLeaveRefreshTimerForSourceClientIdentifier:identifierCopy];
    goto LABEL_12;
  }

  if (disabledCopy)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 138543362;
      *&v27[4] = identifierCopy;
      v15 = "Time to Leave alarm removed on the event. Will remove the associated refresh timer for source client identifier = %{public}@";
LABEL_9:
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, v15, v27, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (!hypothesisCopy)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v27 = 138543362;
    *&v27[4] = identifierCopy;
    v15 = "There is no hypothesis. Will remove the associated refresh timer for source client identifier = %{public}@";
    goto LABEL_9;
  }

  if ([hypothesisCopy travelState] == 5)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_10;
    }

    *v27 = 138543362;
    *&v27[4] = identifierCopy;
    v15 = "Hypothesis indicates user has arrived. Will remove associated refresh timer for source client identifier = %{public}@";
    goto LABEL_9;
  }

  v17 = [(CALNTriggeredEventNotificationSource *)self _travelAdvisoryTimelinessPeriodForHypothesis:hypothesisCopy];
  if (v17 == 2)
  {
    travelAdvisoryTimelinessAuthority = [(CALNTriggeredEventNotificationSource *)self travelAdvisoryTimelinessAuthority];
    v16 = [travelAdvisoryTimelinessAuthority startOfRunningLatePeriodForHypothesis:hypothesisCopy];

    v19 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 138543618;
      *&v27[4] = v16;
      *&v27[12] = 2114;
      *&v27[14] = identifierCopy;
      v20 = "Will refresh when the user will become late at %{public}@, source client identifier = %{public}@";
      v21 = v19;
      v22 = 22;
      goto LABEL_26;
    }
  }

  else
  {
    if (v17 != 1)
    {
      goto LABEL_11;
    }

    travelAdvisoryTimelinessAuthority2 = [(CALNTriggeredEventNotificationSource *)self travelAdvisoryTimelinessAuthority];
    v16 = [travelAdvisoryTimelinessAuthority2 startOfLeaveNowPeriodForHypothesis:hypothesisCopy];

    v19 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *v27 = 138412802;
      *&v27[4] = v16;
      *&v27[12] = 2114;
      *&v27[14] = v16;
      v28 = 2114;
      v29 = identifierCopy;
      v20 = "Will refresh at date: [%@] when the user needs to 'Leave Now' at %{public}@, source client identifier = %{public}@";
      v21 = v19;
      v22 = 32;
LABEL_26:
      _os_log_impl(&dword_242909000, v21, OS_LOG_TYPE_DEFAULT, v20, v27, v22);
    }
  }

  if (!v16)
  {
    goto LABEL_13;
  }

  dateBySubtractingCalSimulatedOffset = [v16 dateBySubtractingCalSimulatedOffset];
  v25 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *v27 = 138543618;
    *&v27[4] = dateBySubtractingCalSimulatedOffset;
    *&v27[12] = 2114;
    *&v27[14] = identifierCopy;
    _os_log_impl(&dword_242909000, v25, OS_LOG_TYPE_DEFAULT, "Will set up a refresh timer with an adjusted refresh date of %{public}@. source client identifier = %{public}@", v27, 0x16u);
  }

  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [dataSource setUpTimeToLeaveRefreshTimerWithTriggerDate:dateBySubtractingCalSimulatedOffset sourceClientIdentifier:identifierCopy];

LABEL_12:
LABEL_13:
}

- (void)_updateSnoozeOptionsForEvents:(id)events
{
  v20 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v7 = [notificationManager fetchRecordsWithSourceIdentifier:sourceIdentifier];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = v7;
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        sourceClientIdentifier = [v13 sourceClientIdentifier];
        if ([eventsCopy containsObject:sourceClientIdentifier])
        {
          [(CALNTriggeredEventNotificationSource *)self _refreshNotification:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }
}

- (void)updateSnoozeOptionsForPostedNotifications
{
  v3 = +[CALNSnoozeCategory snoozeCategories];
  v4 = [v3 count];

  if (v4 > 1)
  {
    workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __81__CALNTriggeredEventNotificationSource_updateSnoozeOptionsForPostedNotifications__block_invoke;
    block[3] = &unk_278D6F250;
    block[4] = self;
    dispatch_async(workQueue, block);
  }

  else
  {
    v5 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v5, OS_LOG_TYPE_INFO, "Not updating snooze options because there's only one option", buf, 2u);
    }
  }
}

void __81__CALNTriggeredEventNotificationSource_updateSnoozeOptionsForPostedNotifications__block_invoke(uint64_t a1)
{
  v1 = a1;
  v60 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) dateProvider];
  v40 = [v2 now];

  v3 = [*(v1 + 32) notificationManager];
  v4 = [*(v1 + 32) sourceIdentifier];
  v5 = [v3 fetchRecordsWithSourceIdentifier:v4];

  v6 = 0x278D6E000uLL;
  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v54 = [v5 count];
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Checking snooze options for %lu posted notifications", buf, 0xCu);
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v5;
  v44 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v44)
  {
    v9 = *v50;
    *&v8 = 138543874;
    v38 = v8;
    v42 = *v50;
    v39 = v1;
    do
    {
      for (i = 0; i != v44; ++i)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = [v11 content];
        v13 = [v12 userInfo];
        v14 = [v13 objectForKeyedSubscript:@"AlarmID"];
        v15 = v14;
        if (v14)
        {
          v45 = v14;
          v16 = [v13 objectForKeyedSubscript:@"allDay"];
          v17 = [v16 BOOLValue];
          v18 = [v12 categoryIdentifier];
          v48 = [v12 date];
          v19 = [v13 objectForKeyedSubscript:@"endDate"];
          v46 = v18;
          v47 = v19;
          if (v16)
          {
            v20 = v19 == 0;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
            goto LABEL_25;
          }

          v41 = v17;
          v21 = [CALNSnoozeCategory snoozeCategoryForEventWithStartDate:v48 endDate:v19 now:v40 isAllDay:v17];
          v22 = [v21 suffix];
          if ([v18 hasSuffix:v22] && (v23 = objc_msgSend(v18, "length"), v24 = objc_msgSend(@"Snooze", "length"), v25 = objc_msgSend(v22, "length") + v24, v23 > v25))
          {
            v26 = [v46 compare:@"Snooze" options:0 range:{objc_msgSend(v46, "length") - v25, v24}];

            v1 = v39;
            if (!v26)
            {
              v27 = +[CALNLogSubsystem calendar];
              v9 = v42;
              if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
              {
                v28 = [v11 sourceClientIdentifier];
                *buf = 138543362;
                v54 = v28;
                _os_log_impl(&dword_242909000, v27, OS_LOG_TYPE_INFO, "Notification %{public}@ already has the correct snooze options.", buf, 0xCu);
              }

              v29 = [0 expirationDateForEventWithStartDate:v48 endDate:v47 isAllDay:v41];
              v30 = [*(v39 + 32) snoozeUpdateTimer];
              [0 leeway];
              v32 = v31;
              v33 = [v11 sourceClientIdentifier];
              [v30 setFireDate:v29 leeway:v33 forEventWithIdentifier:v32];

              v6 = 0x278D6E000;
              goto LABEL_29;
            }
          }

          else
          {

            v1 = v39;
          }

          v6 = 0x278D6E000uLL;
          v9 = v42;
          if (!v22)
          {
LABEL_25:
            v35 = [*(v6 + 2344) calendar];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v37 = [v11 sourceClientIdentifier];
              *buf = 138543362;
              v54 = v37;
              _os_log_impl(&dword_242909000, v35, OS_LOG_TYPE_DEFAULT, "Refreshing notification %{public}@ because there's not enough information to determine if its snooze category is correct.", buf, 0xCu);
            }

            v22 = 0;
          }

          else
          {
            v35 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              v36 = [v11 sourceClientIdentifier];
              *buf = v38;
              v54 = v36;
              v55 = 2114;
              v56 = v22;
              v57 = 2114;
              v58 = v46;
              _os_log_impl(&dword_242909000, v35, OS_LOG_TYPE_DEFAULT, "Refreshing notification %{public}@ because it should have snooze category %{public}@ but has category %{public}@.", buf, 0x20u);

              v6 = 0x278D6E000;
            }
          }

          [*(v1 + 32) _refreshNotification:v11];
LABEL_29:

          v15 = v45;
          goto LABEL_30;
        }

        v16 = [*(v6 + 2344) calendar];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          v34 = [v11 sourceClientIdentifier];
          *buf = 138543362;
          v54 = v34;
          _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_INFO, "Notification %{public}@ can't be snoozed so it doesn't need refreshing.", buf, 0xCu);

          v9 = v42;
        }

LABEL_30:
      }

      v44 = [obj countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v44);
  }
}

- (void)_refreshNotifications:(id)notifications
{
  notificationsCopy = notifications;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(CALNTriggeredEventNotificationSource *)self _refreshNotificationMetaDataWithObjectIDs:notificationsCopy];
  [(CALNTriggeredEventNotificationSource *)self _refreshTimeToLeaveRefreshTimersWithObjectIDs:notificationsCopy];
  [(CALNTriggeredEventNotificationSource *)self _refreshNotificationRecordsWithObjectIDs:notificationsCopy];
}

- (void)_refreshNotificationRecordsWithObjectIDs:(id)ds
{
  v22 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v8 = [notificationManager fetchRecordsWithSourceIdentifier:sourceIdentifier];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * v13);
        v15 = objc_autoreleasePoolPush();
        sourceClientIdentifier = [v14 sourceClientIdentifier];
        if (!dsCopy || [(CALNTriggeredEventNotificationSource *)self _notificationWithSourceClientIdentifier:sourceClientIdentifier affectedByChangesToObjects:dsCopy])
        {
          [(CALNTriggeredEventNotificationSource *)self _refreshNotification:v14];
        }

        objc_autoreleasePoolPop(v15);
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

- (void)_refreshNotification:(id)notification
{
  v14 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sourceClientIdentifier = [notificationCopy sourceClientIdentifier];
  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543362;
    v13 = sourceClientIdentifier;
    _os_log_impl(&dword_242909000, v7, OS_LOG_TYPE_DEFAULT, "Refreshing notification with source client identifier = %{public}@", &v12, 0xCu);
  }

  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  v9 = [dataSource shouldWithdrawNotificationWithSourceClientIdentifier:sourceClientIdentifier];

  if (v9)
  {
    notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    sourceIdentifier = [notificationCopy sourceIdentifier];
    [notificationManager removeRecordWithSourceIdentifier:sourceIdentifier sourceClientIdentifier:sourceClientIdentifier];
  }

  else
  {
    [(CALNTriggeredEventNotificationSource *)self _updateNotification:notificationCopy shouldClearHypothesis:0];
  }
}

- (void)_refreshNotificationMetaDataWithObjectIDs:(id)ds
{
  dsCopy = ds;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationDataStorage = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
  notificationData = [notificationDataStorage notificationData];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__CALNTriggeredEventNotificationSource__refreshNotificationMetaDataWithObjectIDs___block_invoke;
  v9[3] = &unk_278D6F808;
  v10 = dsCopy;
  selfCopy = self;
  v8 = dsCopy;
  [notificationData enumerateKeysAndObjectsUsingBlock:v9];
}

void __82__CALNTriggeredEventNotificationSource__refreshNotificationMetaDataWithObjectIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!*(a1 + 32) || [*(a1 + 40) _itemWithEventID:v6 affectedByChangesToObjects:?])
  {
    [*(a1 + 40) _refreshNotificationMetaData:v5 eventID:v6];
  }
}

- (void)_refreshNotificationMetaData:(id)data eventID:(id)d
{
  v13 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LODWORD(workQueue) = [(CALNTriggeredEventNotificationSource *)self _shouldRemoveNotificationMetaData:dataCopy eventID:dCopy];
  if (workQueue)
  {
    v9 = +[CALNLogSubsystem defaultCategory];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = dCopy;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Removing notification meta data due to refresh for eventID = %{public}@", &v11, 0xCu);
    }

    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource ceaseRouteMonitoringEventWithEventID:dCopy];

    [(CALNTriggeredEventNotificationSource *)self _removeStoredNotificationDataForEventWithEventID:dCopy];
  }
}

- (BOOL)_shouldRemoveNotificationMetaData:(id)data eventID:(id)d
{
  v15 = *MEMORY[0x277D85DE8];
  dCopy = d;
  dataCopy = data;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LODWORD(workQueue) = [(CALNTriggeredEventNotificationSource *)self _isNotificationMetaDataExpired:dataCopy eventID:dCopy];
  if (workQueue)
  {
    v9 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = dCopy;
      _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Notification meta data is expired for eventID = %{public}@. Should remove notification meta data.", &v13, 0xCu);
    }

    v10 = 1;
  }

  else
  {
    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    v10 = [dataSource shouldRemoveNotificationMetaDataWithEventID:dCopy];
  }

  return v10;
}

- (BOOL)_isNotificationMetaDataExpired:(id)expired eventID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dCopy = d;
  alarmID = [expired alarmID];
  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  v9 = [dataSource notificationExpirationDateForEventID:dCopy alarmID:alarmID];

  if (v9)
  {
    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v11 = [dateProvider now];

    [v9 timeIntervalSinceDate:v11];
    v13 = v12 <= 0.0;
  }

  else
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = dCopy;
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Could not get an expiration date for notification meta data for eventID = %{public}@. Treating notification meta data as expired.", &v16, 0xCu);
    }

    v13 = 1;
  }

  return v13;
}

- (void)_refreshTimeToLeaveRefreshTimersWithObjectIDs:(id)ds
{
  dsCopy = ds;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  timeToLeaveRefreshStorage = [(CALNTriggeredEventNotificationSource *)self timeToLeaveRefreshStorage];
  refreshDates = [timeToLeaveRefreshStorage refreshDates];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __86__CALNTriggeredEventNotificationSource__refreshTimeToLeaveRefreshTimersWithObjectIDs___block_invoke;
  v9[3] = &unk_278D6F830;
  v10 = dsCopy;
  selfCopy = self;
  v8 = dsCopy;
  [refreshDates enumerateKeysAndObjectsUsingBlock:v9];
}

void __86__CALNTriggeredEventNotificationSource__refreshTimeToLeaveRefreshTimersWithObjectIDs___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if (!*(a1 + 32) || [*(a1 + 40) _itemWithEventID:v6 affectedByChangesToObjects:?])
  {
    [*(a1 + 40) _refreshTimeToLeaveRefreshTimerWithRefreshDate:v5 eventID:v6];
  }
}

- (void)_refreshTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d
{
  dCopy = d;
  dateCopy = date;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  LODWORD(workQueue) = [(CALNTriggeredEventNotificationSource *)self _shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:dateCopy eventID:dCopy];
  if (workQueue)
  {
    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource removeTimeToLeaveRefreshTimerForEventID:dCopy];
  }
}

- (BOOL)_shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:(id)date eventID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  dCopy = d;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
  v10 = [dateProvider now];

  [dateCopy timeIntervalSinceDate:v10];
  if (v11 <= 0.0)
  {
    v14 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543362;
      v17 = dCopy;
      _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Time to leave refresh date is expired for eventID = %{public}@. Should remove time to leave refresh timer.", &v16, 0xCu);
    }

    v13 = 1;
  }

  else
  {
    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    v13 = [dataSource shouldRemoveTimeToLeaveRefreshTimerWithRefreshDate:dateCopy eventID:dCopy];
  }

  return v13;
}

- (BOOL)_notificationWithSourceClientIdentifier:(id)identifier affectedByChangesToObjects:(id)objects
{
  objectsCopy = objects;
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v13 = 0;
  v14 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v14 andAlarmID:&v13 fromSourceClientIdentifier:identifierCopy];

  v9 = v14;
  v10 = v13;
  if (v10 && ([objectsCopy containsObject:v10] & 1) != 0)
  {
    v11 = 1;
  }

  else if (v9)
  {
    v11 = [(CALNTriggeredEventNotificationSource *)self _itemWithEventID:v9 affectedByChangesToObjects:objectsCopy];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_itemWithEventID:(id)d affectedByChangesToObjects:(id)objects
{
  dCopy = d;
  objectsCopy = objects;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v9 = [(NSMutableDictionary *)self->_eventURLToObjectIDMap objectForKeyedSubscript:dCopy];
  if (!v9)
  {
    v9 = [MEMORY[0x277CBEBC0] URLWithString:dCopy];
    if (!v9 || (-[CALNTriggeredEventNotificationSource dataSource](self, "dataSource"), v11 = objc_claimAutoreleasedReturnValue(), [v11 eventObjectIDForEventID:v9], v12 = objc_claimAutoreleasedReturnValue(), v11, !v12))
    {
      v10 = 1;
      goto LABEL_7;
    }

    [(NSMutableDictionary *)self->_eventURLToObjectIDMap setObject:v12 forKeyedSubscript:dCopy];

    v9 = v12;
  }

  v10 = [objectsCopy containsObject:v9];
LABEL_7:

  return v10;
}

- (id)_contentForNotificationWithSourceClientIdentifier:(id)identifier shouldClearHypothesis:(BOOL)hypothesis
{
  hypothesisCopy = hypothesis;
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [MEMORY[0x277CCABB0] numberWithBool:hypothesisCopy];
    v14 = 138543618;
    v15 = identifierCopy;
    v16 = 2114;
    v17 = v9;
    _os_log_impl(&dword_242909000, v8, OS_LOG_TYPE_DEFAULT, "Getting content for notification with source client identifier = %{public}@, should clear hypothesis = %{public}@", &v14, 0x16u);
  }

  v10 = [(CALNTriggeredEventNotificationSource *)self _sourceNotificationInfoForSourceClientIdentifier:identifierCopy shouldClearHypothesis:hypothesisCopy isForContentCreation:1];
  if (v10)
  {
    notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
    v12 = [(CALNTriggeredEventNotificationSource *)self contentForSourceClientIdentifier:identifierCopy sourceNotificationInfo:v10 isProtectedDataAvailable:[notificationManager isProtectedDataAvailable]];
  }

  else
  {
    notificationManager = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(notificationManager, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationSource _contentForNotificationWithSourceClientIdentifier:shouldClearHypothesis:];
    }

    v12 = 0;
  }

  return v12;
}

- (id)_sourceNotificationInfoForSourceClientIdentifier:(id)identifier shouldClearHypothesis:(BOOL)hypothesis isForContentCreation:(BOOL)creation
{
  hypothesisCopy = hypothesis;
  identifierCopy = identifier;
  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v11 = [dataSource fetchTriggeredEventNotificationInfoWithSourceClientIdentifier:identifierCopy isProtectedDataAvailable:{objc_msgSend(notificationManager, "isProtectedDataAvailable")}];

  if (v11)
  {
    v12 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:identifierCopy];
    v13 = v12;
    if (v12)
    {
      isOffsetFromTravelTimeStart = [v12 isOffsetFromTravelTimeStart];
    }

    else
    {
      isOffsetFromTravelTimeStart = 0;
    }

    LOBYTE(v18) = creation;
    v16 = [(CALNTriggeredEventNotificationSource *)self _sourceNotificationInfoForSourceClientIdentifier:identifierCopy notificationInfo:v11 existingNotificationData:v13 hypothesis:0 shouldClearHypothesis:hypothesisCopy isOffsetFromTravelTimeStart:isOffsetFromTravelTimeStart isForContentCreation:v18];
  }

  else
  {
    v15 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationSource _sourceNotificationInfoForSourceClientIdentifier:shouldClearHypothesis:isForContentCreation:];
    }

    v16 = 0;
  }

  return v16;
}

- (id)_sourceNotificationInfoForSourceClientIdentifier:(id)identifier notificationInfo:(id)info existingNotificationData:(id)data hypothesis:(id)hypothesis shouldClearHypothesis:(BOOL)clearHypothesis isOffsetFromTravelTimeStart:(BOOL)start isForContentCreation:(BOOL)creation
{
  startCopy = start;
  infoCopy = info;
  dataCopy = data;
  hypothesisCopy = hypothesis;
  v64 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities alarmIDForSourceClientIdentifier:identifier];
  if (hypothesisCopy)
  {
    hypothesis = hypothesisCopy;
LABEL_3:
    v51 = [(CALNTriggeredEventNotificationSource *)self _travelAdvisoryTimelinessPeriodForHypothesis:hypothesis];
    if (!dataCopy)
    {
      goto LABEL_13;
    }

LABEL_11:
    lastFireTimeOfAlertOffsetFromTravelTime = [dataCopy lastFireTimeOfAlertOffsetFromTravelTime];
    goto LABEL_14;
  }

  if (clearHypothesis)
  {
    hypothesis = 0;
    v51 = 0;
    if (!dataCopy)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if (dataCopy)
  {
    hypothesis = [dataCopy hypothesis];
    if (!hypothesis)
    {
      v51 = 0;
      goto LABEL_11;
    }

    goto LABEL_3;
  }

  v51 = 0;
  hypothesis = 0;
LABEL_13:
  lastFireTimeOfAlertOffsetFromTravelTime = 0;
LABEL_14:
  eventID = [infoCopy eventID];
  v62 = [CALNTriggeredEventNotificationLaunchURLProvider launchURLForOptionalEventID:"launchURLForOptionalEventID:hypothesis:isTravelLaunchURL:" hypothesis:? isTravelLaunchURL:?];
  preferredLocation = [infoCopy preferredLocation];
  mapItemURLProvider = [(CALNTriggeredEventNotificationSource *)self mapItemURLProvider];
  v53 = preferredLocation;
  v61 = [mapItemURLProvider mapItemURLForOptionalEventLocation:preferredLocation hypothesis:hypothesis];

  v55 = hypothesisCopy;
  v56 = dataCopy;
  v63 = hypothesis;
  if (creation)
  {
    v22 = [(CALNTriggeredEventNotificationSource *)self _updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:startCopy];

    v60 = v22;
  }

  else
  {
    v60 = lastFireTimeOfAlertOffsetFromTravelTime;
  }

  v50 = [CALNTriggeredEventNotificationSourceNotificationInfo alloc];
  title = [infoCopy title];
  location = [infoCopy location];
  locationWithoutPrediction = [infoCopy locationWithoutPrediction];
  preferredLocation2 = [infoCopy preferredLocation];
  startDate = [infoCopy startDate];
  endDate = [infoCopy endDate];
  isAllDay = [infoCopy isAllDay];
  isTimeSensitive = [infoCopy isTimeSensitive];
  eventID2 = [infoCopy eventID];
  eventObjectID = [infoCopy eventObjectID];
  organizerPhoneNumber = [infoCopy organizerPhoneNumber];
  organizerEmailAddress = [infoCopy organizerEmailAddress];
  calendarIdentifier = [infoCopy calendarIdentifier];
  eventRepresentationDictionary = [infoCopy eventRepresentationDictionary];
  legacyIdentifier = [infoCopy legacyIdentifier];
  conferenceURL = [infoCopy conferenceURL];
  conferenceURLIsBroadcast = [infoCopy conferenceURLIsBroadcast];
  mailtoURL = [infoCopy mailtoURL];
  hasSuggestedLocation = [infoCopy hasSuggestedLocation];
  eventHasAlarms = [infoCopy eventHasAlarms];
  allowsLocationAlerts = [infoCopy allowsLocationAlerts];
  forceDisplayOfNewTravelAdvisoryHypotheses = [infoCopy forceDisplayOfNewTravelAdvisoryHypotheses];
  BYTE1(v36) = [infoCopy travelAdvisoryDisabled];
  LOBYTE(v36) = forceDisplayOfNewTravelAdvisoryHypotheses;
  LOBYTE(v35) = allowsLocationAlerts;
  LOBYTE(v34) = startCopy;
  BYTE1(v33) = eventHasAlarms;
  LOBYTE(v33) = hasSuggestedLocation;
  LOBYTE(v32) = conferenceURLIsBroadcast;
  LOBYTE(v31) = 0;
  BYTE1(v30) = isTimeSensitive;
  LOBYTE(v30) = isAllDay;
  v52 = [CALNTriggeredEventNotificationSourceNotificationInfo initWithTitle:v50 location:"initWithTitle:location:locationWithoutPrediction:preferredLocation:startDate:endDate:isAllDay:isTimeSensitive:launchURL:isLocationEvent:eventID:eventObjectID:organizerPhoneNumber:organizerEmailAddress:calendarIdentifier:eventRepresentationDictionary:legacyIdentifier:mapItemURL:conferenceURL:conferenceURLIsBroadcast:mailtoURL:hasSuggestedLocation:eventHasAlarms:alarmID:isOffsetFromTravelTimeStart:lastFireTimeOfAlertOffsetFromTravelTime:allowsLocationAlerts:hypothesis:travelAdvisoryTimelinessPeriod:forceDisplayOfNewTravelAdvisoryHypotheses:travelAdvisoryDisabled:" locationWithoutPrediction:title preferredLocation:location startDate:locationWithoutPrediction endDate:preferredLocation2 isAllDay:startDate isTimeSensitive:endDate launchURL:v30 isLocationEvent:v62 eventID:v31 eventObjectID:eventID2 organizerPhoneNumber:eventObjectID organizerEmailAddress:organizerPhoneNumber calendarIdentifier:organizerEmailAddress eventRepresentationDictionary:calendarIdentifier legacyIdentifier:eventRepresentationDictionary mapItemURL:legacyIdentifier conferenceURL:v61 conferenceURLIsBroadcast:conferenceURL mailtoURL:v32 hasSuggestedLocation:mailtoURL eventHasAlarms:v33 alarmID:v64 isOffsetFromTravelTimeStart:v34 lastFireTimeOfAlertOffsetFromTravelTime:v60 allowsLocationAlerts:v35 hypothesis:v63 travelAdvisoryTimelinessPeriod:v51 forceDisplayOfNewTravelAdvisoryHypotheses:v36 travelAdvisoryDisabled:?];

  return v52;
}

- (id)_updatedSourceNotificationInfoForContentCreation:(id)creation
{
  creationCopy = creation;
  v45 = -[CALNTriggeredEventNotificationSource _updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:](self, "_updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:", [creationCopy isOffsetFromTravelTimeStart]);
  v36 = [CALNTriggeredEventNotificationSourceNotificationInfo alloc];
  title = [creationCopy title];
  location = [creationCopy location];
  locationWithoutPrediction = [creationCopy locationWithoutPrediction];
  preferredLocation = [creationCopy preferredLocation];
  startDate = [creationCopy startDate];
  endDate = [creationCopy endDate];
  isAllDay = [creationCopy isAllDay];
  isTimeSensitive = [creationCopy isTimeSensitive];
  launchURL = [creationCopy launchURL];
  isLocationEvent = [creationCopy isLocationEvent];
  eventID = [creationCopy eventID];
  eventObjectID = [creationCopy eventObjectID];
  organizerPhoneNumber = [creationCopy organizerPhoneNumber];
  organizerEmailAddress = [creationCopy organizerEmailAddress];
  calendarIdentifier = [creationCopy calendarIdentifier];
  eventRepresentationDictionary = [creationCopy eventRepresentationDictionary];
  legacyIdentifier = [creationCopy legacyIdentifier];
  mapItemURL = [creationCopy mapItemURL];
  conferenceURL = [creationCopy conferenceURL];
  conferenceURLIsBroadcast = [creationCopy conferenceURLIsBroadcast];
  mailtoURL = [creationCopy mailtoURL];
  hasSuggestedLocation = [creationCopy hasSuggestedLocation];
  eventHasAlarms = [creationCopy eventHasAlarms];
  alarmID = [creationCopy alarmID];
  isOffsetFromTravelTimeStart = [creationCopy isOffsetFromTravelTimeStart];
  allowsLocationAlerts = [creationCopy allowsLocationAlerts];
  hypothesis = [creationCopy hypothesis];
  travelAdvisoryTimelinessPeriod = [creationCopy travelAdvisoryTimelinessPeriod];
  forceDisplayOfNewTravelAdvisoryHypotheses = [creationCopy forceDisplayOfNewTravelAdvisoryHypotheses];
  travelAdvisoryDisabled = [creationCopy travelAdvisoryDisabled];

  BYTE1(v19) = travelAdvisoryDisabled;
  LOBYTE(v19) = forceDisplayOfNewTravelAdvisoryHypotheses;
  LOBYTE(v18) = allowsLocationAlerts;
  LOBYTE(v17) = isOffsetFromTravelTimeStart;
  BYTE1(v16) = eventHasAlarms;
  LOBYTE(v16) = hasSuggestedLocation;
  LOBYTE(v15) = conferenceURLIsBroadcast;
  LOBYTE(v14) = isLocationEvent;
  BYTE1(v13) = isTimeSensitive;
  LOBYTE(v13) = isAllDay;
  v37 = [CALNTriggeredEventNotificationSourceNotificationInfo initWithTitle:v36 location:"initWithTitle:location:locationWithoutPrediction:preferredLocation:startDate:endDate:isAllDay:isTimeSensitive:launchURL:isLocationEvent:eventID:eventObjectID:organizerPhoneNumber:organizerEmailAddress:calendarIdentifier:eventRepresentationDictionary:legacyIdentifier:mapItemURL:conferenceURL:conferenceURLIsBroadcast:mailtoURL:hasSuggestedLocation:eventHasAlarms:alarmID:isOffsetFromTravelTimeStart:lastFireTimeOfAlertOffsetFromTravelTime:allowsLocationAlerts:hypothesis:travelAdvisoryTimelinessPeriod:forceDisplayOfNewTravelAdvisoryHypotheses:travelAdvisoryDisabled:" locationWithoutPrediction:title preferredLocation:location startDate:locationWithoutPrediction endDate:preferredLocation isAllDay:startDate isTimeSensitive:endDate launchURL:v13 isLocationEvent:launchURL eventID:v14 eventObjectID:eventID organizerPhoneNumber:eventObjectID organizerEmailAddress:organizerPhoneNumber calendarIdentifier:organizerEmailAddress eventRepresentationDictionary:calendarIdentifier legacyIdentifier:eventRepresentationDictionary mapItemURL:legacyIdentifier conferenceURL:mapItemURL conferenceURLIsBroadcast:conferenceURL mailtoURL:v15 hasSuggestedLocation:mailtoURL eventHasAlarms:v16 alarmID:alarmID isOffsetFromTravelTimeStart:v17 lastFireTimeOfAlertOffsetFromTravelTime:v45 allowsLocationAlerts:v18 hypothesis:hypothesis travelAdvisoryTimelinessPeriod:travelAdvisoryTimelinessPeriod forceDisplayOfNewTravelAdvisoryHypotheses:v19 travelAdvisoryDisabled:?];

  return v37;
}

- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  sourceIdentifier = [(CALNTriggeredEventNotificationSource *)self sourceIdentifier];
  v8 = [notificationManager fetchRecordsWithSourceIdentifier:sourceIdentifier];

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 138412290;
    v15 = v8;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_INFO, "Existing records = %@.", &v14, 0xCu);
  }

  v10 = [(CALNTriggeredEventNotificationSource *)self _existingRecordMatchingEventForSourceClientIdentifier:identifierCopy existingRecords:v8];
  v11 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    sourceClientIdentifier = [v10 sourceClientIdentifier];
    v14 = 138543874;
    v15 = identifierCopy;
    v16 = 2114;
    v17 = sourceClientIdentifier;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_242909000, v11, OS_LOG_TYPE_INFO, "Existing record matching event for source client identifier = %{public}@, existing record source client identifier = %{public}@, existing record = %@", &v14, 0x20u);
  }

  return v10;
}

- (id)_existingRecordMatchingEventForSourceClientIdentifier:(id)identifier existingRecords:(id)records
{
  identifierCopy = identifier;
  recordsCopy = records;
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __110__CALNTriggeredEventNotificationSource__existingRecordMatchingEventForSourceClientIdentifier_existingRecords___block_invoke;
  v15 = &unk_278D6F340;
  selfCopy = self;
  v17 = identifierCopy;
  v8 = identifierCopy;
  v9 = [recordsCopy indexOfObjectPassingTest:&v12];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = [recordsCopy objectAtIndexedSubscript:{v9, v12, v13, v14, v15, selfCopy, v17}];
  }

  return v10;
}

uint64_t __110__CALNTriggeredEventNotificationSource__existingRecordMatchingEventForSourceClientIdentifier_existingRecords___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 sourceClientIdentifier];
  v5 = [v3 _sourceClientIdentifier:v4 matchesEventForSourceClientIdentifier:*(a1 + 40)];

  return v5;
}

- (void)_addRecord:(id)record sourceNotificationInfo:(id)info existingNotificationData:(id)data trigger:(unint64_t)trigger transition:(unint64_t)transition now:(id)now
{
  nowCopy = now;
  dataCopy = data;
  infoCopy = info;
  recordCopy = record;
  eventID = [infoCopy eventID];
  eventObjectID = [infoCopy eventObjectID];
  [(CALNTriggeredEventNotificationSource *)self _addEventURL:eventID mappingToEventObjectID:eventObjectID];

  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  [notificationManager addRecord:recordCopy];

  sourceClientIdentifier = [recordCopy sourceClientIdentifier];
  [(CALNTriggeredEventNotificationSource *)self _addNotificationDataForSourceClientIdentifier:sourceClientIdentifier sourceNotificationInfo:infoCopy existingNotificationData:dataCopy transition:transition now:nowCopy];

  sourceClientIdentifier2 = [recordCopy sourceClientIdentifier];

  [(CALNTriggeredEventNotificationSource *)self _notificationAddedWithSourceClientIdentifier:sourceClientIdentifier2 sourceNotificationInfo:infoCopy trigger:trigger];
}

- (void)_notificationAddedWithSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info trigger:(unint64_t)trigger
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  infoCopy = info;
  v10 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:trigger];
    v15 = 138543618;
    v16 = identifierCopy;
    v17 = 2114;
    v18 = v11;
    _os_log_impl(&dword_242909000, v10, OS_LOG_TYPE_DEFAULT, "Notification added with source client identifier = %{public}@, trigger = %{public}@", &v15, 0x16u);
  }

  if (trigger == 2)
  {
    dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource sendFeedbackForAddedLeaveNowNotificationWithSourceClientIdentifier:identifierCopy];
    goto LABEL_7;
  }

  if (trigger == 1)
  {
    dataSource = [infoCopy hypothesis];
    travelAdvisoryTimelinessPeriod = [infoCopy travelAdvisoryTimelinessPeriod];
    dataSource2 = [(CALNTriggeredEventNotificationSource *)self dataSource];
    [dataSource2 sendFeedbackForAddedTravelAdvisoryNotificationWithSourceClientIdentifier:identifierCopy hypothesis:dataSource travelAdvisoryTimelinessPeriod:travelAdvisoryTimelinessPeriod];

LABEL_7:
  }
}

- (void)_updateNotification:(id)notification shouldClearHypothesis:(BOOL)hypothesis
{
  hypothesisCopy = hypothesis;
  notificationCopy = notification;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  sourceClientIdentifier = [notificationCopy sourceClientIdentifier];
  v8 = [(CALNTriggeredEventNotificationSource *)self _sourceNotificationInfoForSourceClientIdentifier:sourceClientIdentifier shouldClearHypothesis:hypothesisCopy isForContentCreation:0];
  v9 = [(CALNTriggeredEventNotificationSource *)self _updatedSourceNotificationInfoForContentCreation:v8];
  v10 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:sourceClientIdentifier];
  notificationManager = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v12 = -[CALNTriggeredEventNotificationSource contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:](self, "contentForSourceClientIdentifier:sourceNotificationInfo:isProtectedDataAvailable:", sourceClientIdentifier, v9, [notificationManager isProtectedDataAvailable]);

  v13 = [notificationCopy mutableCopy];
  [v13 setContent:v12];
  dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
  v15 = [dateProvider now];

  notificationManager2 = [(CALNTriggeredEventNotificationSource *)self notificationManager];
  v17 = [v13 copy];
  [notificationManager2 updateRecord:v17];

  [(CALNTriggeredEventNotificationSource *)self _updateStoredNotificationDataForSourceClientIdentifier:sourceClientIdentifier sourceNotificationInfo:v8 existingNotificationData:v10 transition:2 now:v15];
}

- (void)_addEventURL:(id)l mappingToEventObjectID:(id)d
{
  if (l)
  {
    if (d)
    {
      [(NSMutableDictionary *)self->_eventURLToObjectIDMap setObject:d forKeyedSubscript:l];
    }
  }
}

- (void)_commonHandleResponse:(id)response
{
  responseCopy = response;
  v5 = [(CALNTriggeredEventNotificationSource *)self _launchURLForResponse:responseCopy];
  if (v5)
  {
    urlHandler = [(CALNTriggeredEventNotificationSource *)self urlHandler];
    [urlHandler openURL:v5 response:responseCopy];
  }

  else
  {
    urlHandler = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(urlHandler, OS_LOG_TYPE_ERROR))
    {
      [CALNTriggeredEventNotificationSource _commonHandleResponse:responseCopy];
    }
  }
}

- (void)_handleDirectionsActionWithResponse:(id)response
{
  responseCopy = response;
  [(CALNTriggeredEventNotificationSource *)self _commonHandleResponse:responseCopy];
  notificationRecord = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];
  v6 = [(CALNTriggeredEventNotificationSource *)self _notificationResponseDataForRecord:notificationRecord];
  hypothesis = [v6 hypothesis];
  lastFireTimeOfAlertOffsetFromTravelTime = [v6 lastFireTimeOfAlertOffsetFromTravelTime];
  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [dataSource handleDirectionsActionWithSourceClientIdentifier:sourceClientIdentifier hypothesis:hypothesis lastFireTimeOfAlertOffsetFromTravelTime:lastFireTimeOfAlertOffsetFromTravelTime];
}

- (void)_handleConferenceCallActionWithResponse:(id)response
{
  responseCopy = response;
  [(CALNTriggeredEventNotificationSource *)self _commonHandleResponse:responseCopy];
  notificationRecord = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];
  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [dataSource handleConferenceCallActionWithSourceClientIdentifier:sourceClientIdentifier];
}

- (void)_handleMailOrganizerActionWithResponse:(id)response
{
  responseCopy = response;
  [(CALNTriggeredEventNotificationSource *)self _commonHandleResponse:responseCopy];
  notificationRecord = [responseCopy notificationRecord];

  sourceClientIdentifier = [notificationRecord sourceClientIdentifier];
  v6 = [(CALNTriggeredEventNotificationSource *)self _notificationResponseDataForRecord:notificationRecord];
  hypothesis = [v6 hypothesis];
  dataSource = [(CALNTriggeredEventNotificationSource *)self dataSource];
  [dataSource handleMailOrganizerActionWithSourceClientIdentifier:sourceClientIdentifier hypothesis:hypothesis];
}

- (id)_existingNotificationDataMatchingEventForSourceClientIdentifier:(id)identifier
{
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:identifierCopy];

  if (v6)
  {
    notificationDataStorage = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
    v8 = [notificationDataStorage notificationDataWithIdentifier:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_notificationDataForSourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now
{
  infoCopy = info;
  nowCopy = now;
  dataCopy = data;
  hasDisplayedLeaveByMessage = [dataCopy hasDisplayedLeaveByMessage];
  hasDisplayedLeaveNowMessage = [dataCopy hasDisplayedLeaveNowMessage];
  hasDisplayedRunningLateMessage = [dataCopy hasDisplayedRunningLateMessage];
  lastFireTimeOfAlertOffsetFromTravelTime = [dataCopy lastFireTimeOfAlertOffsetFromTravelTime];
  lastTimeNotificationAdded = [dataCopy lastTimeNotificationAdded];

  if (transition - 1 <= 1)
  {
    travelAdvisoryTimelinessPeriod = [infoCopy travelAdvisoryTimelinessPeriod];
    if (travelAdvisoryTimelinessPeriod == 1)
    {
      v18 = 1;
    }

    else
    {
      v18 = hasDisplayedLeaveByMessage;
    }

    if (travelAdvisoryTimelinessPeriod == 2)
    {
      v19 = 1;
    }

    else
    {
      v19 = hasDisplayedLeaveNowMessage;
    }

    if (travelAdvisoryTimelinessPeriod == 2)
    {
      v18 = hasDisplayedLeaveByMessage;
    }

    if (travelAdvisoryTimelinessPeriod == 3)
    {
      hasDisplayedRunningLateMessage = 1;
    }

    else
    {
      hasDisplayedRunningLateMessage = hasDisplayedRunningLateMessage;
    }

    if (travelAdvisoryTimelinessPeriod == 3)
    {
      hasDisplayedLeaveNowMessage = hasDisplayedLeaveNowMessage;
    }

    else
    {
      hasDisplayedLeaveNowMessage = v19;
    }

    if (travelAdvisoryTimelinessPeriod == 3)
    {
      hasDisplayedLeaveByMessage = hasDisplayedLeaveByMessage;
    }

    else
    {
      hasDisplayedLeaveByMessage = v18;
    }

    if ([infoCopy isOffsetFromTravelTimeStart])
    {
      lastFireTimeOfAlertOffsetFromTravelTime = nowCopy;
    }

    else
    {
      lastFireTimeOfAlertOffsetFromTravelTime = 0;
    }

    v20 = nowCopy;

    lastTimeNotificationAdded = v20;
  }

  v21 = objc_alloc_init(CALNMutableTriggeredEventNotificationData);
  alarmID = [infoCopy alarmID];
  [(CALNMutableTriggeredEventNotificationData *)v21 setAlarmID:alarmID];

  -[CALNMutableTriggeredEventNotificationData setIsOffsetFromTravelTimeStart:](v21, "setIsOffsetFromTravelTimeStart:", [infoCopy isOffsetFromTravelTimeStart]);
  [(CALNMutableTriggeredEventNotificationData *)v21 setLastFireTimeOfAlertOffsetFromTravelTime:lastFireTimeOfAlertOffsetFromTravelTime];
  hypothesis = [infoCopy hypothesis];
  [(CALNMutableTriggeredEventNotificationData *)v21 setHypothesis:hypothesis];

  [(CALNMutableTriggeredEventNotificationData *)v21 setHasDisplayedLeaveByMessage:hasDisplayedLeaveByMessage];
  [(CALNMutableTriggeredEventNotificationData *)v21 setHasDisplayedLeaveNowMessage:hasDisplayedLeaveNowMessage];
  [(CALNMutableTriggeredEventNotificationData *)v21 setHasDisplayedRunningLateMessage:hasDisplayedRunningLateMessage];
  [(CALNMutableTriggeredEventNotificationData *)v21 setLastTimeNotificationAdded:lastTimeNotificationAdded];
  v24 = [(CALNMutableTriggeredEventNotificationData *)v21 copy];

  return v24;
}

- (void)_removeStoredNotificationDataForEventWithEventID:(id)d
{
  dCopy = d;
  notificationDataStorage = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
  [notificationDataStorage removeNotificationDataWithIdentifier:dCopy];

  [(NSMutableDictionary *)self->_eventURLToObjectIDMap removeObjectForKey:dCopy];
}

- (void)_updateStoredNotificationDataForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nowCopy = now;
  dataCopy = data;
  infoCopy = info;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v17 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:transition];
    v21 = 138543618;
    v22 = identifierCopy;
    v23 = 2114;
    v24 = v18;
    _os_log_impl(&dword_242909000, v17, OS_LOG_TYPE_DEFAULT, "Updating stored notification data for source client identifier = %{public}@, transition = %{public}@", &v21, 0x16u);
  }

  v19 = [(CALNTriggeredEventNotificationSource *)self _notificationDataForSourceNotificationInfo:infoCopy existingNotificationData:dataCopy transition:transition now:nowCopy];

  if (v19)
  {
    [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v19 forSourceClientIdentifier:identifierCopy];
  }

  else
  {
    v20 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138543362;
      v22 = identifierCopy;
      _os_log_impl(&dword_242909000, v20, OS_LOG_TYPE_DEFAULT, "Could not get notification data for source client identifier = %{public}@", &v21, 0xCu);
    }
  }
}

- (void)_addNotificationDataForSourceClientIdentifier:(id)identifier sourceNotificationInfo:(id)info existingNotificationData:(id)data transition:(unint64_t)transition now:(id)now
{
  v23 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  nowCopy = now;
  dataCopy = data;
  infoCopy = info;
  v16 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:transition];
    v19 = 138543618;
    v20 = identifierCopy;
    v21 = 2114;
    v22 = v17;
    _os_log_impl(&dword_242909000, v16, OS_LOG_TYPE_DEFAULT, "Adding notification data for source notification info. source client identifier = %{public}@, transition = %{public}@", &v19, 0x16u);
  }

  v18 = [(CALNTriggeredEventNotificationSource *)self _notificationDataForSourceNotificationInfo:infoCopy existingNotificationData:dataCopy transition:transition now:nowCopy];

  [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v18 forSourceClientIdentifier:identifierCopy];
}

- (void)_addNotificationData:(id)data forSourceClientIdentifier:(id)identifier
{
  v20 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  v8 = [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventIDForSourceClientIdentifier:identifierCopy];
  if (v8)
  {
    notificationDataStorage = [(CALNTriggeredEventNotificationSource *)self notificationDataStorage];
    [notificationDataStorage addNotificationData:dataCopy withIdentifier:v8];

    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543874;
      v15 = identifierCopy;
      v16 = 2114;
      v17 = v8;
      v18 = 2112;
      v19 = dataCopy;
      v11 = "Added notification data, source client identifier = %{public}@, event ID = %{public}@, notification data = %@";
      v12 = v10;
      v13 = 32;
LABEL_6:
      _os_log_impl(&dword_242909000, v12, OS_LOG_TYPE_DEFAULT, v11, &v14, v13);
    }
  }

  else
  {
    v10 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138543362;
      v15 = identifierCopy;
      v11 = "No event ID to add notification data for source client identifier = %{public}@";
      v12 = v10;
      v13 = 12;
      goto LABEL_6;
    }
  }
}

- (void)_resetStoredNotificationDataTimeToLeaveDisplayStateForSourceClientIdentifier:(id)identifier
{
  v11 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = identifierCopy;
    _os_log_impl(&dword_242909000, v6, OS_LOG_TYPE_DEFAULT, "Resetting stored notification data time to leave display state for source client identifier = %{public}@", &v9, 0xCu);
  }

  v7 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:identifierCopy];
  v8 = [(CALNTriggeredEventNotificationSource *)self _updatedNotificationDataResettingTimeToLeaveDisplayState:v7];
  [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v8 forSourceClientIdentifier:identifierCopy];
}

- (void)_clearTravelAdvisoryFromNotificationMetaDataForSourceClientIdentifier:(id)identifier
{
  v12 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = [(CALNTriggeredEventNotificationSource *)self _existingNotificationDataMatchingEventForSourceClientIdentifier:identifierCopy];
  v7 = [v6 mutableCopy];
  [v7 setHypothesis:0];
  v8 = [v7 copy];
  [(CALNTriggeredEventNotificationSource *)self _addNotificationData:v8 forSourceClientIdentifier:identifierCopy];

  v9 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    v11 = identifierCopy;
    _os_log_impl(&dword_242909000, v9, OS_LOG_TYPE_DEFAULT, "Cleared travel advisory from notification meta data for source client identifier = %{public}@", &v10, 0xCu);
  }
}

- (id)_updatedNotificationDataResettingTimeToLeaveDisplayState:(id)state
{
  v3 = [state mutableCopy];
  [v3 setHasDisplayedLeaveByMessage:0];
  [v3 setHasDisplayedLeaveNowMessage:0];
  [v3 setHasDisplayedRunningLateMessage:0];
  v4 = [v3 copy];

  return v4;
}

- (BOOL)migrateToStorage:(id)storage
{
  storageCopy = storage;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__CALNTriggeredEventNotificationSource_migrateToStorage___block_invoke;
  block[3] = &unk_278D6F858;
  block[4] = self;
  v9 = storageCopy;
  v10 = &v11;
  v6 = storageCopy;
  dispatch_sync(workQueue, block);

  LOBYTE(storageCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return storageCopy;
}

void __57__CALNTriggeredEventNotificationSource_migrateToStorage___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 80);
  if (v3 == v2)
  {
    v4 = +[CALNLogSubsystem calendar];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_242909000, v4, OS_LOG_TYPE_DEFAULT, "Storage migration: new storage is the same as existing storage; no work to be done", buf, 2u);
    }
  }

  else
  {
    v4 = [v3 notificationData];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v17;
      *&v6 = 138412290;
      v15 = v6;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v4 objectForKeyedSubscript:v10, v15];
          v12 = [*(a1 + 40) notificationDataWithIdentifier:v10];
          if (v12)
          {
            v13 = [objc_opt_class() _mergeDataFromUnprotectedStore:v11 withDataInProtectedStore:v12];
            [*(a1 + 40) addNotificationData:v13 withIdentifier:v10];
            v14 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v21 = v10;
              v22 = 2112;
              v23 = v13;
              _os_log_impl(&dword_242909000, v14, OS_LOG_TYPE_DEFAULT, "Storage migration: key %@ had existing data; adding merged data: %@", buf, 0x16u);
            }
          }

          else
          {
            [*(a1 + 40) addNotificationData:v11 withIdentifier:v10];
            v13 = +[CALNLogSubsystem calendar];
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v15;
              v21 = v10;
              _os_log_impl(&dword_242909000, v13, OS_LOG_TYPE_DEFAULT, "Storage migration: copying data for key %@", buf, 0xCu);
            }
          }
        }

        v7 = [v4 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v7);
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    objc_storeStrong((*(a1 + 32) + 80), *(a1 + 40));
  }
}

+ (id)_mergeDataFromUnprotectedStore:(id)store withDataInProtectedStore:(id)protectedStore
{
  protectedStoreCopy = protectedStore;
  storeCopy = store;
  v7 = objc_opt_new();
  alarmID = [storeCopy alarmID];
  [v7 setAlarmID:alarmID];

  hypothesis = [protectedStoreCopy hypothesis];
  [v7 setHypothesis:hypothesis];

  [v7 setHasDisplayedLeaveByMessage:{objc_msgSend(protectedStoreCopy, "hasDisplayedLeaveByMessage")}];
  [v7 setHasDisplayedLeaveNowMessage:{objc_msgSend(protectedStoreCopy, "hasDisplayedLeaveNowMessage")}];
  [v7 setHasDisplayedRunningLateMessage:{objc_msgSend(protectedStoreCopy, "hasDisplayedRunningLateMessage")}];
  [v7 setIsOffsetFromTravelTimeStart:{objc_msgSend(storeCopy, "isOffsetFromTravelTimeStart")}];
  lastFireTimeOfAlertOffsetFromTravelTime = [storeCopy lastFireTimeOfAlertOffsetFromTravelTime];
  lastFireTimeOfAlertOffsetFromTravelTime2 = [protectedStoreCopy lastFireTimeOfAlertOffsetFromTravelTime];
  v12 = _laterOfTwoPossiblyNilDates(lastFireTimeOfAlertOffsetFromTravelTime, lastFireTimeOfAlertOffsetFromTravelTime2);
  [v7 setLastFireTimeOfAlertOffsetFromTravelTime:v12];

  lastTimeNotificationAdded = [storeCopy lastTimeNotificationAdded];

  lastTimeNotificationAdded2 = [protectedStoreCopy lastTimeNotificationAdded];

  v15 = _laterOfTwoPossiblyNilDates(lastTimeNotificationAdded, lastTimeNotificationAdded2);
  [v7 setLastTimeNotificationAdded:v15];

  return v7;
}

- (id)_notificationResponseDataForRecord:(id)record
{
  recordCopy = record;
  content = [recordCopy content];
  v5 = content;
  if (content)
  {
    userInfo = [content userInfo];
    v7 = userInfo;
    if (userInfo)
    {
      v8 = [userInfo objectForKeyedSubscript:@"com.apple.calendar.notification.CALNTriggeredEventNotificationResponseDataPayloadUserInfoKey"];
      if (v8)
      {
        v9 = [CALNTriggeredEventNotificationResponseDataPayloadMapper notificationResponseDataForPayload:v8];
LABEL_14:

        goto LABEL_15;
      }

      v10 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _notificationResponseDataForRecord:recordCopy];
      }
    }

    else
    {
      v8 = +[CALNLogSubsystem calendar];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [CALNTriggeredEventNotificationSource _notificationResponseDataForRecord:recordCopy];
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  v7 = +[CALNLogSubsystem calendar];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [CALNTriggeredEventNotificationSource _notificationResponseDataForRecord:recordCopy];
  }

  v9 = 0;
LABEL_15:

  return v9;
}

- (id)_notificationResponseDataForSourceNotificationInfo:(id)info
{
  infoCopy = info;
  v4 = [CALNTriggeredEventNotificationResponseData alloc];
  hypothesis = [infoCopy hypothesis];
  lastFireTimeOfAlertOffsetFromTravelTime = [infoCopy lastFireTimeOfAlertOffsetFromTravelTime];

  v7 = [(CALNTriggeredEventNotificationResponseData *)v4 initWithHypothesis:hypothesis lastFireTimeOfAlertOffsetFromTravelTime:lastFireTimeOfAlertOffsetFromTravelTime];

  return v7;
}

- (void)_setNotificationResponseData:(id)data onNotificationContent:(id)content
{
  contentCopy = content;
  v6 = [CALNTriggeredEventNotificationResponseDataPayloadMapper payloadForNotificationResponseData:data];
  [contentCopy setUserInfoValue:v6 forKey:@"com.apple.calendar.notification.CALNTriggeredEventNotificationResponseDataPayloadUserInfoKey"];
}

- (id)_eventRepresentationDictionaryWithSourceNotificationInfo:(id)info hypothesisMessage:(id)message
{
  messageCopy = message;
  eventRepresentationDictionary = [info eventRepresentationDictionary];
  if (eventRepresentationDictionary && messageCopy)
  {
    sourceEventRepresentationProvider = [(CALNTriggeredEventNotificationSource *)self sourceEventRepresentationProvider];
    v9 = [sourceEventRepresentationProvider updateEventRepresentationDictionary:eventRepresentationDictionary withHypothesisMessage:messageCopy];

    eventRepresentationDictionary = v9;
  }

  return eventRepresentationDictionary;
}

- (id)_resolvedSourceClientIdentifierForNewSourceClientIdentifier:(id)identifier oldSourceClientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  if (clientIdentifierCopy)
  {
    v15 = 0;
    v16 = 0;
    [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v16 andAlarmID:&v15 fromSourceClientIdentifier:identifierCopy];
    v7 = v16;
    v8 = v15;
    v13 = 0;
    v14 = 0;
    [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v14 andAlarmID:&v13 fromSourceClientIdentifier:clientIdentifierCopy];
    v9 = v14;
    if (v13)
    {
      v10 = clientIdentifierCopy;
    }

    else
    {
      v10 = identifierCopy;
    }

    if (v8)
    {
      v10 = identifierCopy;
    }

    v11 = v10;
  }

  else
  {
    v11 = identifierCopy;
  }

  return v11;
}

- (BOOL)_sourceClientIdentifier:(id)identifier matchesEventForSourceClientIdentifier:(id)clientIdentifier
{
  identifierCopy = identifier;
  clientIdentifierCopy = clientIdentifier;
  v17 = 0;
  v18 = 0;
  [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v18 andAlarmID:&v17 fromSourceClientIdentifier:identifierCopy];
  v7 = v18;
  v8 = v17;
  if (v7)
  {
    v15 = 0;
    v16 = 0;
    [CALNTriggeredEventNotificationSourceClientIdentifierUtilities eventID:&v16 andAlarmID:&v15 fromSourceClientIdentifier:clientIdentifierCopy];
    v9 = v16;
    v10 = v15;
    if (v9)
    {
      v11 = [v7 isEqualToString:v9];
      v12 = +[CALNLogSubsystem calendar];
      v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG);
      if (v11)
      {
        if (v13)
        {
          [CALNTriggeredEventNotificationSource _sourceClientIdentifier:matchesEventForSourceClientIdentifier:];
        }
      }

      else if (v13)
      {
        [CALNTriggeredEventNotificationSource _sourceClientIdentifier:matchesEventForSourceClientIdentifier:];
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (id)_launchURLForResponse:(id)response
{
  responseCopy = response;
  notificationRecord = [responseCopy notificationRecord];
  actionIdentifier = [responseCopy actionIdentifier];

  if ([actionIdentifier isEqualToString:@"CALNNotificationDirectionsAction"])
  {
    v6 = [objc_opt_class() _mapItemURLForNotification:notificationRecord];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  if ([actionIdentifier isEqualToString:@"CALNNotificationConferenceCallAction"])
  {
    v6 = [objc_opt_class() _conferenceURLForNotification:notificationRecord];
    goto LABEL_7;
  }

  if ([actionIdentifier isEqualToString:@"Mail_identifier"])
  {
    v6 = [objc_opt_class() _mailtoURLForNotification:notificationRecord];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

+ (id)_mapItemURLForNotification:(id)notification
{
  content = [notification content];
  userInfo = [content userInfo];

  v5 = [userInfo objectForKeyedSubscript:@"MapItemURL"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_conferenceURLForNotification:(id)notification
{
  content = [notification content];
  userInfo = [content userInfo];

  v5 = [userInfo objectForKeyedSubscript:@"ConferenceURL"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_mailtoURLForNotification:(id)notification
{
  content = [notification content];
  userInfo = [content userInfo];

  v5 = [userInfo objectForKeyedSubscript:@"mailto"];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEBC0] URLWithString:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_updatedLastFireTimeOfAlertOffsetFromTravelTimeGivenIsOffsetFromTravelTime:(BOOL)time
{
  if (time)
  {
    dateProvider = [(CALNTriggeredEventNotificationSource *)self dateProvider];
    v4 = [dateProvider now];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (CALNNotificationManager)notificationManager
{
  WeakRetained = objc_loadWeakRetained(&self->_notificationManager);

  return WeakRetained;
}

- (void)refreshNotification:(id)notification
{
  notificationCopy = notification;
  workQueue = [(CALNTriggeredEventNotificationSource *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__CALNTriggeredEventNotificationSource_UnitTesting__refreshNotification___block_invoke;
  v7[3] = &unk_278D6F278;
  v7[4] = self;
  v8 = notificationCopy;
  v6 = notificationCopy;
  dispatch_async(workQueue, v7);
}

- (void)_triggeredWithSourceClientIdentifier:triggerData:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_242909000, v1, OS_LOG_TYPE_ERROR, "Could not get notification content. source client identifier = %{public}@, source notification info = %@", v2, 0x16u);
}

- (void)_commonHandleResponse:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 notificationRecord];
  v3 = [v2 sourceClientIdentifier];
  v9 = [a1 actionIdentifier];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x20u);
}

- (void)_notificationResponseDataForRecord:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 sourceClientIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_notificationResponseDataForRecord:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 sourceClientIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_notificationResponseDataForRecord:(void *)a1 .cold.3(void *a1)
{
  v1 = [a1 sourceClientIdentifier];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end