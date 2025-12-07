@interface USUsageQuerying
+ (_DKKnowledgeStore)userKnowledgeStore;
+ (id)_chronologicalPublisherWithOptions:(id)options eventStreams:(id)streams;
+ (id)_generatePickupsByBundleIdentifierWithPickupIntervals:(id)intervals applicationUsageIntervals:(id)usageIntervals pickupsWithoutApplicationUsage:(unint64_t *)usage firstPickup:(id *)pickup;
+ (id)_newReportWithNonIntersectingScreenTimeIntervals:(id)intervals pickupsByBundleIdentifier:(id)identifier pickupsWithoutApplicationUsage:(unint64_t)usage firstPickup:(id)pickup longestSession:(id)session applicationUsageIntervals:(id)usageIntervals webUsageIntervals:(id)webUsageIntervals categoryUsageIntervals:(id)self0 aggregatedApplicationUsageIntervals:(id)self1 aggregatedWebUsageIntervals:(id)self2 categoryByBundleIdentifier:(id)self3 categoryByWebDomain:(id)self4 notifications:(id)self5 interval:(id)self6 timeZone:(id)self7 lastEventDate:(id)self8;
+ (id)getLocalDeviceIdentifierAndReturnError:(id *)error;
+ (void)_completion:(id)_completion options:(id)options;
+ (void)queryUsageDuringInterval:(id)interval partitionInterval:(double)partitionInterval adjustedStartDate:(id)date eventStreams:(id)streams categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)domain usageReportHandler:(id)handler completionHandler:(id)self0;
+ (void)synchronizeUsageWithCompletionHandler:(id)handler;
- (USUsageQuerying)init;
- (USUsageQuerying)initWithContext:(id)context coreDuetStream:(id)stream;
- (USUsageQuerying)initWithContext:(id)context eventStorage:(id)storage;
- (double)_computeUsageForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories applicationUsageEvents:(id)events webUsageEvents:(id)usageEvents nowPlayingEvents:(id)playingEvents videoUsageEvents:(id)self0 categoryByBundleIdentifier:(id)self1 categoryByWebDomain:(id)self2 interval:(id)self3 referenceDate:(id)self4 focalOnly:(BOOL)self5;
- (double)_generateUsageTimeWithApplicationUsageIntervals:(id)intervals webUsageIntervalsByDevice:(id)device categoryUsageIntervalsByDevice:(id)byDevice aggregatedApplicationUsageIntervalsByDevice:(id)intervalsByDevice aggregatedWebUsageIntervalsByDevice:(id)usageIntervalsByDevice categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)domain applications:(id)self0 webDomains:(id)self1 categories:(id)self2;
- (id)_calculateAllExemptBundleIdentifiersFromExemptApplications:(id)applications categoryByBundleIdentifier:(id)identifier;
- (id)_calculateAllExemptWebDomainsFromExemptApplications:(id)applications categoryByBundleIdentifier:(id)identifier;
- (id)_computeApplicationUsageWithEvents:(id)events exemptApplications:(id)applications exemptWebDomains:(id)domains unboundApplicationUsageIntervalsByDevice:(id *)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice categoryUsageIntervalsByDevice:(id)intervalsByDevice aggregatedApplicationUsageIntervalsByDevice:(id)self0 categoryByBundleIdentifier:(id)self1 partition:(id)self2 referenceDate:(id)self3 focalOnly:(BOOL)self4;
- (id)_computeNotificationsWithEvents:(id)events timeZoneByDevice:(id)device lastEventDateByDevice:(id)byDevice partition:(id)partition;
- (id)_computeScreenTime:(BOOL)time withEvents:(id)events intersectingScreenTimeIntervalsByDevice:(id *)device longestSessionByDevice:(id *)byDevice timeZoneByDevice:(id)zoneByDevice lastEventDateByDevice:(id)dateByDevice partition:(id)partition referenceDate:(id)self0;
- (id)_computeWebUsageWithEvents:(id)events exemptWebDomains:(id)domains timeZoneByDevice:(id)device lastEventDateByDevice:(id)byDevice categoryUsageIntervalsByDevice:(id)intervalsByDevice aggregatedApplicationUsageIntervalsByDevice:(id)usageIntervalsByDevice aggregatedWebUsageIntervalsByDevice:(id)webUsageIntervalsByDevice categoryByWebDomain:(id)self0 partition:(id)self1 referenceDate:(id)self2 focalOnly:(BOOL)self3;
- (id)_currentNowPlayingUsageIntervalsDuringInterval:(id)interval referenceDate:(id)date;
- (id)_currentScreenTimeIntervalDuringInterval:(id)interval usageStartDate:(id *)date referenceDate:(id)referenceDate;
- (id)_generateUncategorizedLocalWebUsageWithWebUsageIntervals:(id)intervals uncategorizedDomains:(id)domains;
- (id)_getBundleIdentiersFromApplicationUsageEvents:(id)events videoUsageEvents:(id)usageEvents interval:(id)interval referenceDate:(id)date focalOnly:(BOOL)only;
- (id)_getWebDomainsFromWebUsageEvents:(id)events videoUsageEvents:(id)usageEvents interval:(id)interval referenceDate:(id)date focalOnly:(BOOL)only;
- (id)queryForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories interval:(id)interval focalOnly:(BOOL)only error:(id *)error;
- (id)queryForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories interval:(id)interval segmentInterval:(double)segmentInterval error:(id *)error;
- (void)_computeNowPlayingUsageWithEvents:(id)events categoryUsageIntervalsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice partition:(id)partition referenceDate:(id)date;
- (void)_computeUncategorizedLocalWebUsageWithWebUsageEvents:(id)events uncategorizedDomains:(id)domains interval:(id)interval referenceDate:(id)date completionHandler:(id)handler;
- (void)_computeUsageWithDisplayBacklitEvents:(id)events applicationUsageEvents:(id)usageEvents webUsageEvents:(id)webUsageEvents nowPlayingEvents:(id)playingEvents videoUsageEvents:(id)videoUsageEvents notificationEvents:(id)notificationEvents categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)self0 interval:(id)self1 partitionInterval:(double)self2 referenceDate:(id)self3 focalOnly:(BOOL)self4 completionHandler:(id)self5;
- (void)_enumerateCurrentApplicationUsageIntervalsDuringInterval:(id)interval exemptApplications:(id)applications referenceDate:(id)date focalOnly:(BOOL)only block:(id)block;
- (void)_enumerateCurrentVideoUsageIntervalsDuringInterval:(id)interval exemptApplications:(id)applications exemptWebDomains:(id)domains referenceDate:(id)date block:(id)block;
- (void)_enumerateCurrentWebUsageIntervalsDuringInterval:(id)interval exemptWebDomains:(id)domains referenceDate:(id)date focalOnly:(BOOL)only block:(id)block;
- (void)_enumerateEvents:(id)events intervalEndDate:(id)date block:(id)block;
- (void)_updateApplicationUsageWithInterval:(id)interval unboundInterval:(id)unboundInterval bundleIdentifier:(id)identifier trustedApplicationUsage:(BOOL)usage deviceIdentifier:(id)deviceIdentifier event:(id)event applicationUsageIntervalsByDevice:(id)device unboundApplicationUsageIntervalsByDevice:(id)self0 categoryUsageIntervalsByDevice:(id)self1 aggregatedApplicationUsageIntervalsByDevice:(id)self2 categoryByBundleIdentifier:(id)self3 timeZoneByDevice:(id)self4 lastEventDateByDevice:(id)self5;
- (void)_updateLocalReports:(id)reports remoteReports:(id)remoteReports aggregateReports:(id)aggregateReports nonIntersectingScreenTimeIntervals:(id)intervals intersectingScreenTimeIntervals:(id)timeIntervals longestSessionByDevice:(id)device applicationUsageIntervals:(id)usageIntervals unboundApplicationUsageIntervals:(id)self0 webUsageIntervalsByDevice:(id)self1 categoryUsageIntervalsByDevice:(id)self2 aggregatedApplicationUsageIntervalsByDevice:(id)self3 aggregatedWebUsageIntervalsByDevice:(id)self4 categoryByBundleIdentifier:(id)self5 categoryByWebDomain:(id)self6 notificationsByDevice:(id)self7 interval:(id)self8 timeZoneByDevice:(id)self9 lastEventDateByDevice:(id)dateByDevice;
- (void)_updateNotificationsWithEvent:(id)event bundleIdentifier:(id)identifier trustedNotification:(BOOL)notification deviceIdentifier:(id)deviceIdentifier notificationsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice;
- (void)_updateNowPlayingUsageWithInterval:(id)interval event:(id)event deviceIdentifier:(id)identifier categoryUsageIntervalsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice;
- (void)_updateScreenTimeWithInterval:(id)interval rawInterval:(id)rawInterval deviceIdentifier:(id)identifier partition:(id)partition event:(id)event nonIntersectingScreenTimeIntervalsByDevice:(id)device intersectingScreenTimeIntervalsByDevice:(id)byDevice longestSessionByDevice:(id)self0 timeZoneByDevice:(id)self1 lastEventDateByDevice:(id)self2;
- (void)_updateWebUsageWithInterval:(id)interval webDomain:(id)domain trustedWebUsage:(BOOL)usage deviceIdentifier:(id)identifier event:(id)event webUsageIntervalsByDevice:(id)device categoryUsageIntervalsByDevice:(id)byDevice aggregatedApplicationUsageIntervalsByDevice:(id)self0 aggregatedWebUsageIntervalsByDevice:(id)self1 categoryByWebDomain:(id)self2 timeZoneByDevice:(id)self3 lastEventDateByDevice:(id)self4;
- (void)queryForUncategorizedLocalWebUsageDuringInterval:(id)interval completionHandler:(id)handler;
- (void)queryUsageDuringInterval:(id)interval partitionInterval:(double)partitionInterval focalOnly:(BOOL)only completionHandler:(id)handler;
@end

@implementation USUsageQuerying

- (USUsageQuerying)initWithContext:(id)context coreDuetStream:(id)stream
{
  contextCopy = context;
  streamCopy = stream;
  v13.receiver = self;
  v13.super_class = USUsageQuerying;
  v8 = [(USUsageQuerying *)&v13 init];
  context = v8->_context;
  v8->_context = contextCopy;
  v10 = contextCopy;

  duetStream = v8->_duetStream;
  v8->_duetStream = streamCopy;

  return v8;
}

- (USUsageQuerying)initWithContext:(id)context eventStorage:(id)storage
{
  v6 = MEMORY[0x277CF1930];
  storageCopy = storage;
  contextCopy = context;
  v9 = [[v6 alloc] initWithKnowledgeStore:storageCopy clientContext:contextCopy identifier:@"CoreDuetStream"];

  v10 = [(USUsageQuerying *)self initWithContext:contextCopy coreDuetStream:v9];
  return v10;
}

- (USUsageQuerying)init
{
  userContext = [MEMORY[0x277CFE318] userContext];
  coreDuetStream = [MEMORY[0x277CF1B58] coreDuetStream];
  v5 = [(USUsageQuerying *)self initWithContext:userContext coreDuetStream:coreDuetStream];

  return v5;
}

+ (_DKKnowledgeStore)userKnowledgeStore
{
  if (userKnowledgeStore_onceToken != -1)
  {
    +[USUsageQuerying userKnowledgeStore];
  }

  v3 = userKnowledgeStore_userKnowledgeStore;

  return v3;
}

uint64_t __37__USUsageQuerying_userKnowledgeStore__block_invoke()
{
  userKnowledgeStore_userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];

  return MEMORY[0x2821F96F8]();
}

+ (id)getLocalDeviceIdentifierAndReturnError:(id *)error
{
  userKnowledgeStore = [self userKnowledgeStore];
  v5 = [userKnowledgeStore sourceDeviceIdentityWithError:error];

  return v5;
}

+ (void)synchronizeUsageWithCompletionHandler:(id)handler
{
  v13 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  MainBundle = CFBundleGetMainBundle();
  Identifier = CFBundleGetIdentifier(MainBundle);
  if (Identifier)
  {
    processName = Identifier;
  }

  else
  {
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    v12 = processName;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Requesting high urgency synchronization on behalf of %{public}@", &v11, 0xCu);
  }

  v8 = qos_class_self();
  v9 = dispatch_get_global_queue(v8, 0);
  userKnowledgeStore = [MEMORY[0x277CFE208] userKnowledgeStore];
  [userKnowledgeStore synchronizeWithUrgency:10 client:@"UsageTracking" responseQueue:v9 completion:handlerCopy];
}

- (void)queryUsageDuringInterval:(id)interval partitionInterval:(double)partitionInterval focalOnly:(BOOL)only completionHandler:(id)handler
{
  onlyCopy = only;
  v169 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v146 = objc_opt_new();
  selfCopy = self;
  duetStream = [(USUsageQuerying *)self duetStream];
  v11 = intervalCopy;
  v12 = objc_opt_new();
  allDevices = [MEMORY[0x277CFE1E0] allDevices];
  [v12 setDeviceIDs:allDevices];

  displayIsBacklit = [MEMORY[0x277CFE298] displayIsBacklit];
  v160 = displayIsBacklit;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:1];
  [v12 setEventStreams:v15];

  v16 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v162 = v16;
  v17 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v163 = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:2];
  [v12 setSortDescriptors:v18];

  v19 = MEMORY[0x277CFE260];
  startDate = [v11 startDate];
  endDate = [v11 endDate];
  v22 = [v19 predicateForEventsIntersectingDateRangeFrom:startDate to:endDate];

  v23 = MEMORY[0x277CFE260];
  v24 = [MEMORY[0x277CFE1A0] yes];
  v25 = [v23 predicateForEventsWithCategoryValue:v24];

  v26 = objc_alloc(MEMORY[0x277CCA920]);
  v167 = v22;
  v168 = v25;
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:2];

  v28 = [v26 initWithType:1 subpredicates:v27];
  [v12 setPredicate:v28];

  v29 = [duetStream publisherForQuery:v12];

  collect = [v29 collect];

  duetStream2 = [(USUsageQuerying *)self duetStream];
  v30 = MEMORY[0x277CFE260];
  v31 = v11;
  startDate2 = [v31 startDate];
  endDate2 = [v31 endDate];
  v34 = [v30 predicateForEventsIntersectingDateRangeFrom:startDate2 to:endDate2];

  usageType = [MEMORY[0x277CFE1D0] usageType];
  v138 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType andIntegerValue:1];
  v147 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType];
  v36 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v147];
  v37 = MEMORY[0x277CCA920];
  v162 = v138;
  v163 = v36;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:2];
  v39 = [v37 orPredicateWithSubpredicates:v38];

  v40 = objc_alloc(MEMORY[0x277CCA920]);
  v167 = v34;
  v168 = v39;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:2];
  v42 = [v40 initWithType:1 subpredicates:v41];

  v43 = objc_opt_new();
  allDevices2 = [MEMORY[0x277CFE1E0] allDevices];
  [v43 setDeviceIDs:allDevices2];

  appUsageStream = [MEMORY[0x277CFE298] appUsageStream];
  v166 = appUsageStream;
  v46 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
  [v43 setEventStreams:v46];

  if (onlyCopy)
  {
    v47 = v42;
  }

  else
  {
    v47 = v34;
  }

  [v43 setPredicate:v47];
  v48 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v160 = v48;
  v49 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v161 = v49;
  v50 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:2];

  [v43 setSortDescriptors:v50];
  v51 = [duetStream2 publisherForQuery:v43];

  collect2 = [v51 collect];

  duetStream3 = [(USUsageQuerying *)selfCopy duetStream];
  v52 = v31;
  v53 = MEMORY[0x277CFE260];
  startDate3 = [v52 startDate];
  endDate3 = [v52 endDate];
  v56 = [v53 predicateForEventsIntersectingDateRangeFrom:startDate3 to:endDate3];

  usageType2 = [MEMORY[0x277CFE1D0] usageType];
  v58 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType2 andIntegerValue:1];
  v59 = v58;
  if (!onlyCopy)
  {
    v60 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType2 andIntegerValue:0];
    v61 = objc_alloc(MEMORY[0x277CCA920]);
    v162 = v58;
    v163 = v60;
    v62 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:2];
    v59 = [v61 initWithType:2 subpredicates:v62];
  }

  v63 = objc_opt_new();
  allDevices3 = [MEMORY[0x277CFE1E0] allDevices];
  [v63 setDeviceIDs:allDevices3];

  appWebUsageStream = [MEMORY[0x277CFE298] appWebUsageStream];
  v166 = appWebUsageStream;
  v66 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
  [v63 setEventStreams:v66];

  v67 = objc_alloc(MEMORY[0x277CCA920]);
  v167 = v56;
  v168 = v59;
  v68 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:2];
  v69 = [v67 initWithType:1 subpredicates:v68];
  [v63 setPredicate:v69];

  v70 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v160 = v70;
  v71 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v161 = v71;
  v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:2];
  [v63 setSortDescriptors:v72];

  v73 = [duetStream3 publisherForQuery:v63];

  collect3 = [v73 collect];

  duetStream4 = [(USUsageQuerying *)selfCopy duetStream];
  v74 = MEMORY[0x277CFE260];
  v75 = v52;
  startDate4 = [v75 startDate];
  endDate4 = [v75 endDate];
  v134 = [v74 predicateForEventsIntersectingDateRangeFrom:startDate4 to:endDate4];

  v78 = MEMORY[0x277CFE260];
  playing = [MEMORY[0x277CFE248] playing];
  v133 = [v78 predicateForObjectsWithMetadataKey:playing andIntegerValue:1];

  v80 = MEMORY[0x277CFE260];
  mediaType = [MEMORY[0x277CFE248] mediaType];
  v82 = [v80 predicateForObjectsWithMetadataKey:mediaType andStringValue:*MEMORY[0x277D27CB8]];

  v140 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"com.apple.quicklook.QuickLookUIService"];
  v135 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"com.apple.quicklook.extension.previewUI"];
  v83 = objc_alloc(MEMORY[0x277CCA920]);
  v167 = v140;
  v168 = v135;
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:2];
  v85 = [v83 initWithType:2 subpredicates:v84];

  v86 = objc_opt_new();
  allDevices4 = [MEMORY[0x277CFE1E0] allDevices];
  [v86 setDeviceIDs:allDevices4];

  nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
  v166 = nowPlayingStream;
  v89 = [MEMORY[0x277CBEA60] arrayWithObjects:&v166 count:1];
  [v86 setEventStreams:v89];

  v90 = objc_alloc(MEMORY[0x277CCA920]);
  v162 = v134;
  v163 = v133;
  v164 = v82;
  v165 = v85;
  v91 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:4];
  v92 = [v90 initWithType:1 subpredicates:v91];
  [v86 setPredicate:v92];

  v93 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v160 = v93;
  v94 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v161 = v94;
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:&v160 count:2];

  [v86 setSortDescriptors:v95];
  v96 = [duetStream4 publisherForQuery:v86];

  collect4 = [v96 collect];

  duetStream5 = [(USUsageQuerying *)selfCopy duetStream];
  v98 = v75;
  v99 = objc_opt_new();
  allDevices5 = [MEMORY[0x277CFE1E0] allDevices];
  [v99 setDeviceIDs:allDevices5];

  appMediaUsageStream = [MEMORY[0x277CFE298] appMediaUsageStream];
  v167 = appMediaUsageStream;
  v102 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:1];
  [v99 setEventStreams:v102];

  v103 = MEMORY[0x277CFE260];
  startDate5 = [v98 startDate];
  endDate5 = [v98 endDate];
  v106 = [v103 predicateForEventsIntersectingDateRangeFrom:startDate5 to:endDate5];
  [v99 setPredicate:v106];

  v107 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v162 = v107;
  v108 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v163 = v108;
  v109 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:2];

  [v99 setSortDescriptors:v109];
  v110 = [duetStream5 publisherForQuery:v99];

  collect5 = [v110 collect];

  duetStream6 = [(USUsageQuerying *)selfCopy duetStream];
  v112 = v98;
  v113 = objc_opt_new();
  allDevices6 = [MEMORY[0x277CFE1E0] allDevices];
  [v113 setDeviceIDs:allDevices6];

  notificationUsageStream = [MEMORY[0x277CFE298] notificationUsageStream];
  v167 = notificationUsageStream;
  v116 = [MEMORY[0x277CBEA60] arrayWithObjects:&v167 count:1];
  [v113 setEventStreams:v116];

  v117 = MEMORY[0x277CFE260];
  startDate6 = [v112 startDate];
  endDate6 = [v112 endDate];
  v120 = [v117 predicateForEventsWithStartInDateRangeFrom:startDate6 to:endDate6];

  v121 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"Receive"];
  v122 = objc_alloc(MEMORY[0x277CCA920]);
  v162 = v120;
  v163 = v121;
  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:&v162 count:2];

  v124 = [v122 initWithType:1 subpredicates:v123];
  [v113 setPredicate:v124];

  v125 = [duetStream6 publisherForQuery:v113];

  collect6 = [v125 collect];

  v159[0] = collect2;
  v159[1] = collect3;
  v159[2] = collect4;
  v159[3] = collect5;
  v159[4] = collect6;
  v127 = [MEMORY[0x277CBEA60] arrayWithObjects:v159 count:5];
  v128 = [collect zipWithOthers:v127];
  v157[0] = MEMORY[0x277D85DD0];
  v157[1] = 3221225472;
  v157[2] = __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke;
  v157[3] = &unk_279E09C00;
  v158 = handlerCopy;
  v151[0] = MEMORY[0x277D85DD0];
  v151[1] = 3221225472;
  v151[2] = __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2;
  v151[3] = &unk_279E09C50;
  v151[4] = selfCopy;
  v152 = v112;
  v156 = onlyCopy;
  v153 = v146;
  v154 = v158;
  partitionIntervalCopy = partitionInterval;
  v129 = v158;
  v130 = v146;
  v131 = v112;
  v132 = [v128 sinkWithCompletion:v157 receiveInput:v151];
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 state] == 1)
  {
    v3 = *(a1 + 32);
    v4 = [v5 error];
    (*(v3 + 16))(v3, 0, 0, 0, v4);
  }
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 count] != 6)
  {
    __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_1();
  }

  v37 = [v3 objectAtIndexedSubscript:0];
  v4 = [v3 objectAtIndexedSubscript:1];
  v40 = [v3 objectAtIndexedSubscript:2];
  v39 = [v3 objectAtIndexedSubscript:3];
  v5 = [v3 objectAtIndexedSubscript:4];
  v38 = v3;
  v6 = [v3 objectAtIndexedSubscript:5];
  v7 = [MEMORY[0x277CFE158] appBundleID];
  v8 = [MEMORY[0x277CFE240] bundleID];
  v34 = a1;
  v35 = v5;
  v36 = v4;
  v9 = [*(a1 + 32) _getBundleIdentiersFromApplicationUsageEvents:v4 videoUsageEvents:v5 interval:*(a1 + 40) referenceDate:*(a1 + 48) focalOnly:*(a1 + 72)];
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v10 = v6;
  v11 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v56;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v56 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v55 + 1) + 8 * i);
        v16 = [v15 metadata];
        v17 = [v16 objectForKeyedSubscript:v7];

        v18 = [v15 metadata];
        v19 = [v18 objectForKeyedSubscript:v8];

        if (v17)
        {
          v20 = v17;
        }

        else
        {
          v20 = v19;
        }

        v21 = v20;
        if (v21)
        {
          [v9 addObject:v21];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_2(buf, &buf[1]);
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v22 = v36;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_3();
    }

    v23 = [MEMORY[0x277CF9650] sharedCategories];
    v24 = [v9 array];
    v41[0] = MEMORY[0x277D85DD0];
    v41[1] = 3221225472;
    v41[2] = __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_38;
    v41[3] = &unk_279E09C28;
    v25 = *(v34 + 56);
    v26 = *(v34 + 32);
    v51 = v25;
    v41[4] = v26;
    v42 = v40;
    v27 = v35;
    v43 = v35;
    v44 = *(v34 + 40);
    v28 = *(v34 + 48);
    v53 = *(v34 + 72);
    v45 = v28;
    v46 = v23;
    v29 = v37;
    v47 = v37;
    v48 = v36;
    v49 = v39;
    v50 = v10;
    v52 = *(v34 + 64);
    v30 = v23;
    [v30 categoriesForBundleIDs:v24 completionHandler:v41];

    v31 = v40;
    v32 = v39;
  }

  else
  {
    LOBYTE(v33) = *(v34 + 72);
    v22 = v36;
    v29 = v37;
    v32 = v39;
    v31 = v40;
    v27 = v35;
    [*(v34 + 32) _computeUsageWithDisplayBacklitEvents:v37 applicationUsageEvents:v36 webUsageEvents:v40 nowPlayingEvents:v39 videoUsageEvents:v35 notificationEvents:v10 categoryByBundleIdentifier:*(v34 + 64) categoryByWebDomain:0 interval:0 partitionInterval:*(v34 + 40) referenceDate:*(v34 + 48) focalOnly:v33 completionHandler:*(v34 + 56)];
  }
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_38(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [*(a1 + 32) _getWebDomainsFromWebUsageEvents:*(a1 + 40) videoUsageEvents:*(a1 + 48) interval:*(a1 + 56) referenceDate:*(a1 + 64) focalOnly:*(a1 + 128)];
    if ([v4 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_38_cold_1();
      }

      v5 = *(a1 + 72);
      v6 = [v4 array];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_39;
      v10[3] = &unk_279E09C28;
      v7 = *(a1 + 112);
      v8 = *(a1 + 32);
      v20 = v7;
      v10[4] = v8;
      v11 = *(a1 + 80);
      v12 = *(a1 + 88);
      v13 = *(a1 + 40);
      v14 = *(a1 + 96);
      v15 = *(a1 + 48);
      v16 = *(a1 + 104);
      v17 = v3;
      v18 = *(a1 + 56);
      v21 = *(a1 + 120);
      v19 = *(a1 + 64);
      v22 = *(a1 + 128);
      [v5 categoriesForDomainNames:v6 completionHandler:v10];
    }

    else
    {
      LOBYTE(v9) = *(a1 + 128);
      [*(a1 + 32) _computeUsageWithDisplayBacklitEvents:*(a1 + 80) applicationUsageEvents:*(a1 + 88) webUsageEvents:*(a1 + 40) nowPlayingEvents:*(a1 + 96) videoUsageEvents:*(a1 + 48) notificationEvents:*(a1 + 104) categoryByBundleIdentifier:*(a1 + 120) categoryByWebDomain:v3 interval:0 partitionInterval:*(a1 + 56) referenceDate:*(a1 + 64) focalOnly:v9 completionHandler:*(a1 + 112)];
    }
  }

  else
  {
    (*(*(a1 + 112) + 16))();
  }
}

uint64_t __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_39(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    LOBYTE(v5) = *(a1 + 128);
    return [*(a1 + 32) _computeUsageWithDisplayBacklitEvents:*(a1 + 40) applicationUsageEvents:*(a1 + 48) webUsageEvents:*(a1 + 56) nowPlayingEvents:*(a1 + 64) videoUsageEvents:*(a1 + 72) notificationEvents:*(a1 + 80) categoryByBundleIdentifier:*(a1 + 120) categoryByWebDomain:*(a1 + 88) interval:a2 partitionInterval:*(a1 + 96) referenceDate:*(a1 + 104) focalOnly:v5 completionHandler:*(a1 + 112)];
  }

  else
  {
    v4 = *(*(a1 + 112) + 16);

    return v4();
  }
}

- (void)_computeUsageWithDisplayBacklitEvents:(id)events applicationUsageEvents:(id)usageEvents webUsageEvents:(id)webUsageEvents nowPlayingEvents:(id)playingEvents videoUsageEvents:(id)videoUsageEvents notificationEvents:(id)notificationEvents categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)self0 interval:(id)self1 partitionInterval:(double)self2 referenceDate:(id)self3 focalOnly:(BOOL)self4 completionHandler:(id)self5
{
  eventsCopy = events;
  usageEventsCopy = usageEvents;
  webUsageEventsCopy = webUsageEvents;
  playingEventsCopy = playingEvents;
  videoUsageEventsCopy = videoUsageEvents;
  notificationEventsCopy = notificationEvents;
  identifierCopy = identifier;
  domainCopy = domain;
  intervalCopy = interval;
  dateCopy = date;
  handlerCopy = handler;
  v66 = objc_opt_new();
  v65 = objc_opt_new();
  v64 = objc_opt_new();
  v56 = eventsCopy;
  v63 = [eventsCopy mutableCopy];
  v55 = usageEventsCopy;
  v28 = [usageEventsCopy mutableCopy];
  v54 = webUsageEventsCopy;
  v29 = [webUsageEventsCopy mutableCopy];
  v53 = playingEventsCopy;
  v60 = [playingEventsCopy mutableCopy];
  v51 = notificationEventsCopy;
  v30 = [notificationEventsCopy mutableCopy];
  v62 = v28;
  [v28 addObjectsFromArray:videoUsageEventsCopy];
  v61 = v29;
  v52 = videoUsageEventsCopy;
  [v29 addObjectsFromArray:videoUsageEventsCopy];
  startDate = [intervalCopy startDate];
  endDate = [intervalCopy endDate];
  v50 = intervalCopy;
  [intervalCopy duration];
  if (v33 <= partitionInterval)
  {
    v34 = endDate;
  }

  else
  {
    v34 = [startDate dateByAddingTimeInterval:partitionInterval];
  }

  v35 = v34;
  v59 = v30;
  v58 = endDate;
  if ([startDate compare:endDate] == -1)
  {
    do
    {
      v37 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate endDate:v35];
      v38 = objc_opt_new();
      v39 = objc_opt_new();
      v40 = objc_opt_new();
      v41 = objc_opt_new();
      v42 = objc_opt_new();
      v77 = 0;
      v78[0] = 0;
      v75 = [(USUsageQuerying *)self _computeScreenTime:1 withEvents:v63 intersectingScreenTimeIntervalsByDevice:v78 longestSessionByDevice:&v77 timeZoneByDevice:v41 lastEventDateByDevice:v42 partition:v37 referenceDate:dateCopy];
      v74 = v78[0];
      v73 = v77;
      v76 = 0;
      LOBYTE(v48) = only;
      v72 = [(USUsageQuerying *)self _computeApplicationUsageWithEvents:v62 exemptApplications:0 exemptWebDomains:0 unboundApplicationUsageIntervalsByDevice:&v76 timeZoneByDevice:v41 lastEventDateByDevice:v42 categoryUsageIntervalsByDevice:v38 aggregatedApplicationUsageIntervalsByDevice:v39 categoryByBundleIdentifier:identifierCopy partition:v37 referenceDate:dateCopy focalOnly:v48];
      v71 = v76;
      LOBYTE(v47) = only;
      v43 = v40;
      v70 = [(USUsageQuerying *)self _computeWebUsageWithEvents:v61 exemptWebDomains:0 timeZoneByDevice:v41 lastEventDateByDevice:v42 categoryUsageIntervalsByDevice:v38 aggregatedApplicationUsageIntervalsByDevice:v39 aggregatedWebUsageIntervalsByDevice:v40 categoryByWebDomain:domainCopy partition:v37 referenceDate:dateCopy focalOnly:v47];
      [(USUsageQuerying *)self _computeNowPlayingUsageWithEvents:v60 categoryUsageIntervalsByDevice:v38 timeZoneByDevice:v41 lastEventDateByDevice:v42 partition:v37 referenceDate:dateCopy];
      if ([v59 count])
      {
        v44 = [(USUsageQuerying *)self _computeNotificationsWithEvents:v59 timeZoneByDevice:v41 lastEventDateByDevice:v42 partition:v37];
      }

      else
      {
        v44 = 0;
      }

      [(USUsageQuerying *)self _updateLocalReports:v66 remoteReports:v65 aggregateReports:v64 nonIntersectingScreenTimeIntervals:v75 intersectingScreenTimeIntervals:v74 longestSessionByDevice:v73 applicationUsageIntervals:v72 unboundApplicationUsageIntervals:v71 webUsageIntervalsByDevice:v70 categoryUsageIntervalsByDevice:v38 aggregatedApplicationUsageIntervalsByDevice:v39 aggregatedWebUsageIntervalsByDevice:v43 categoryByBundleIdentifier:identifierCopy categoryByWebDomain:domainCopy notificationsByDevice:v44 interval:v37 timeZoneByDevice:v41 lastEventDateByDevice:v42];
      v36 = v35;

      [v58 timeIntervalSinceDate:v36];
      if (v45 <= partitionInterval)
      {
        v46 = v58;
      }

      else
      {
        v46 = [v36 dateByAddingTimeInterval:partitionInterval];
      }

      v35 = v46;

      startDate = v36;
    }

    while ([v36 compare:v58] == -1);
  }

  else
  {
    v36 = startDate;
  }

  handlerCopy[2](handlerCopy, v66, v65, v64, 0);
}

- (void)_updateLocalReports:(id)reports remoteReports:(id)remoteReports aggregateReports:(id)aggregateReports nonIntersectingScreenTimeIntervals:(id)intervals intersectingScreenTimeIntervals:(id)timeIntervals longestSessionByDevice:(id)device applicationUsageIntervals:(id)usageIntervals unboundApplicationUsageIntervals:(id)self0 webUsageIntervalsByDevice:(id)self1 categoryUsageIntervalsByDevice:(id)self2 aggregatedApplicationUsageIntervalsByDevice:(id)self3 aggregatedWebUsageIntervalsByDevice:(id)self4 categoryByBundleIdentifier:(id)self5 categoryByWebDomain:(id)self6 notificationsByDevice:(id)self7 interval:(id)self8 timeZoneByDevice:(id)self9 lastEventDateByDevice:(id)dateByDevice
{
  reportsCopy = reports;
  remoteReportsCopy = remoteReports;
  aggregateReportsCopy = aggregateReports;
  intervalsCopy = intervals;
  timeIntervalsCopy = timeIntervals;
  deviceCopy = device;
  usageIntervalsCopy = usageIntervals;
  applicationUsageIntervalsCopy = applicationUsageIntervals;
  byDeviceCopy = byDevice;
  intervalsByDeviceCopy = intervalsByDevice;
  usageIntervalsByDeviceCopy = usageIntervalsByDevice;
  webUsageIntervalsByDeviceCopy = webUsageIntervalsByDevice;
  identifierCopy = identifier;
  domainCopy = domain;
  notificationsByDeviceCopy = notificationsByDevice;
  intervalCopy = interval;
  zoneByDeviceCopy = zoneByDevice;
  dateByDeviceCopy = dateByDevice;
  v84 = zoneByDeviceCopy;
  v35 = zoneByDeviceCopy;
  v36 = remoteReportsCopy;
  if ([v35 count])
  {
    v67 = webUsageIntervalsByDeviceCopy;
    v68 = usageIntervalsByDeviceCopy;
    v69 = intervalsByDeviceCopy;
    v70 = byDeviceCopy;
    v71 = applicationUsageIntervalsCopy;
    v72 = usageIntervalsCopy;
    v73 = deviceCopy;
    v74 = timeIntervalsCopy;
    v75 = intervalsCopy;
    v114 = 0;
    v115 = &v114;
    v116 = 0x2020000000;
    v117 = 0;
    v108 = 0;
    v109 = &v108;
    v110 = 0x3032000000;
    v111 = __Block_byref_object_copy__0;
    v112 = __Block_byref_object_dispose__0;
    v113 = 0;
    v37 = objc_opt_new();
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke;
    v86[3] = &unk_279E09CA0;
    v38 = intervalsCopy;
    v87 = v38;
    v39 = usageIntervalsCopy;
    v88 = v39;
    v89 = applicationUsageIntervalsCopy;
    v40 = byDeviceCopy;
    v90 = v40;
    v41 = intervalsByDeviceCopy;
    v91 = v41;
    v42 = v68;
    v92 = v42;
    v43 = v67;
    v93 = v43;
    v94 = v74;
    v44 = v73;
    v95 = v44;
    v62 = notificationsByDeviceCopy;
    v96 = v62;
    selfCopy = self;
    v105 = &v114;
    v106 = &v108;
    v66 = v37;
    v98 = v66;
    v45 = dateByDeviceCopy;
    v99 = v45;
    v107 = a2;
    v61 = identifierCopy;
    v100 = v61;
    v60 = domainCopy;
    v101 = v60;
    v46 = intervalCopy;
    v102 = v46;
    v103 = reportsCopy;
    v104 = remoteReportsCopy;
    [v84 enumerateKeysAndObjectsUsingBlock:v86];
    v65 = [v84 objectForKeyedSubscript:@"AllDevices"];
    v64 = [v38 objectForKeyedSubscript:@"AllDevices"];
    v47 = [v39 objectForKeyedSubscript:@"AllDevices"];
    v48 = [v40 objectForKeyedSubscript:@"AllDevices"];
    v49 = [v41 objectForKeyedSubscript:@"AllDevices"];
    v50 = [v42 objectForKeyedSubscript:@"AllDevices"];
    v51 = [v43 objectForKeyedSubscript:@"AllDevices"];
    v52 = [v44 objectForKeyedSubscript:@"AllDevices"];
    v53 = [v62 objectForKeyedSubscript:@"AllDevices"];
    v54 = v53;
    v55 = MEMORY[0x277CBEC10];
    if (v53)
    {
      v55 = v53;
    }

    v56 = v55;

    v57 = [v45 objectForKeyedSubscript:@"AllDevices"];
    if (!v57)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"USUsageQuerying.m" lineNumber:359 description:@"lastEventDate for a USUsageReport must not be nil"];
    }

    v58 = [objc_opt_class() _newReportWithNonIntersectingScreenTimeIntervals:v64 pickupsByBundleIdentifier:v66 pickupsWithoutApplicationUsage:v115[3] firstPickup:v109[5] longestSession:v52 applicationUsageIntervals:v47 webUsageIntervals:v48 categoryUsageIntervals:v49 aggregatedApplicationUsageIntervals:v50 aggregatedWebUsageIntervals:v51 categoryByBundleIdentifier:v61 categoryByWebDomain:v60 notifications:v56 interval:v46 timeZone:v65 lastEventDate:v57];
    [aggregateReportsCopy addObject:v58];

    _Block_object_dispose(&v108, 8);
    _Block_object_dispose(&v114, 8);
    v36 = remoteReportsCopy;
    timeIntervalsCopy = v74;
    intervalsCopy = v75;
    usageIntervalsCopy = v72;
    deviceCopy = v73;
    byDeviceCopy = v70;
    applicationUsageIntervalsCopy = v71;
    usageIntervalsByDeviceCopy = v68;
    intervalsByDeviceCopy = v69;
    webUsageIntervalsByDeviceCopy = v67;
  }
}

void __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 isEqualToString:@"AllDevices"])
  {
    goto LABEL_17;
  }

  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v8 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v9 = [*(a1 + 48) objectForKeyedSubscript:v5];
  v33 = [*(a1 + 56) objectForKeyedSubscript:v5];
  v32 = [*(a1 + 64) objectForKeyedSubscript:v5];
  v31 = [*(a1 + 72) objectForKeyedSubscript:v5];
  v30 = [*(a1 + 80) objectForKeyedSubscript:v5];
  v10 = [*(a1 + 88) objectForKeyedSubscript:v5];
  v29 = [*(a1 + 96) objectForKeyedSubscript:v5];
  v11 = [*(a1 + 104) objectForKeyedSubscript:v5];
  v12 = v11;
  v13 = MEMORY[0x277CBEC10];
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v37 = 0;
  v36 = 0;
  v27 = v10;
  v28 = v9;
  v15 = [objc_opt_class() _generatePickupsByBundleIdentifierWithPickupIntervals:v10 applicationUsageIntervals:v9 pickupsWithoutApplicationUsage:&v37 firstPickup:&v36];
  v16 = v36;
  v17 = v36;
  v18 = v17;
  *(*(*(a1 + 176) + 8) + 24) += v37;
  v19 = *(*(a1 + 184) + 8);
  if (!*(v19 + 40))
  {
    goto LABEL_7;
  }

  if ([v17 compare:?] == -1)
  {
    v19 = *(*(a1 + 184) + 8);
LABEL_7:
    objc_storeStrong((v19 + 40), v16);
  }

  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke_2;
  v34[3] = &unk_279E09C78;
  v35 = *(a1 + 120);
  [v15 enumerateKeysAndObjectsUsingBlock:v34];
  v20 = [*(a1 + 128) objectForKeyedSubscript:v5];
  if (!v20)
  {
    __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke_cold_1(a1, (a1 + 112));
  }

  v21 = [objc_opt_class() _newReportWithNonIntersectingScreenTimeIntervals:v7 pickupsByBundleIdentifier:v15 pickupsWithoutApplicationUsage:v37 firstPickup:v18 longestSession:v29 applicationUsageIntervals:v8 webUsageIntervals:v33 categoryUsageIntervals:v32 aggregatedApplicationUsageIntervals:v31 aggregatedWebUsageIntervals:v30 categoryByBundleIdentifier:*(a1 + 136) categoryByWebDomain:*(a1 + 144) notifications:v14 interval:*(a1 + 152) timeZone:v6 lastEventDate:v20];

  if ([v5 isEqualToString:@"LocalDevice"])
  {
    [*(a1 + 160) addObject:v21];
  }

  else
  {
    v22 = [*(a1 + 168) objectForKeyedSubscript:v5];
    v23 = v22;
    if (v22)
    {
      [v22 addObject:v21];
    }

    else
    {
      v26 = v8;
      v24 = v7;
      v25 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v21, 0}];
      [*(a1 + 168) setObject:v25 forKeyedSubscript:v5];

      v7 = v24;
      v8 = v26;
    }
  }

LABEL_17:
}

void __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v12 = [v5 objectForKeyedSubscript:v7];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v12 unsignedIntegerValue];
  v10 = [v6 unsignedIntegerValue];

  v11 = [v8 numberWithUnsignedInteger:v10 + v9];
  [*(a1 + 32) setObject:v11 forKeyedSubscript:v7];
}

+ (id)_generatePickupsByBundleIdentifierWithPickupIntervals:(id)intervals applicationUsageIntervals:(id)usageIntervals pickupsWithoutApplicationUsage:(unint64_t *)usage firstPickup:(id *)pickup
{
  pickupCopy = pickup;
  v48 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  usageIntervalsCopy = usageIntervals;
  v29 = objc_opt_new();
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = intervalsCopy;
  startDate = 0;
  v9 = [obj countByEnumeratingWithState:&v30 objects:v47 count:16];
  if (!v9)
  {
    v26 = 0;
    goto LABEL_17;
  }

  v10 = *v31;
  v26 = 0;
  do
  {
    for (i = 0; i != v9; ++i)
    {
      if (*v31 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v12 = *(*(&v30 + 1) + 8 * i);
      [v12 duration];
      v14 = v13;
      if (v13 >= 5.0)
      {
        v15 = usageIntervalsCopy;
        v16 = v12;
        v41 = 0;
        v42 = &v41;
        v43 = 0x3032000000;
        v44 = __Block_byref_object_copy__0;
        v45 = __Block_byref_object_dispose__0;
        v46 = 0;
        v39[0] = 0;
        v39[1] = v39;
        v39[2] = 0x3032000000;
        v39[3] = __Block_byref_object_copy__0;
        v39[4] = __Block_byref_object_dispose__0;
        v40 = 0;
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __USTrustIdentifierKeyedNonIntersectingIntervalsGetKeyOfEarliestIntersectionWithThreshold_block_invoke;
        v34[3] = &unk_279E0A150;
        v17 = v16;
        v35 = v17;
        v36 = v39;
        v37 = &v41;
        v38 = 0x4014000000000000;
        [v15 enumerateKeysAndObjectsUsingBlock:v34];
        v18 = v42[5];

        _Block_object_dispose(v39, 8);
        _Block_object_dispose(&v41, 8);

        identifier = [v18 identifier];
        if (identifier)
        {
          v20 = [v29 objectForKeyedSubscript:identifier];
          v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v20, "unsignedIntegerValue") + 1}];
          [v29 setObject:v21 forKeyedSubscript:identifier];

          if (!startDate)
          {
            goto LABEL_9;
          }
        }

        else if (v14 >= 9.0)
        {
          ++v26;
          if (!startDate)
          {
LABEL_9:
            startDate = [v17 startDate];
          }
        }

        continue;
      }
    }

    v9 = [obj countByEnumeratingWithState:&v30 objects:v47 count:16];
  }

  while (v9);
LABEL_17:

  *usage = v26;
  v22 = startDate;
  *pickupCopy = startDate;

  return v29;
}

+ (id)_newReportWithNonIntersectingScreenTimeIntervals:(id)intervals pickupsByBundleIdentifier:(id)identifier pickupsWithoutApplicationUsage:(unint64_t)usage firstPickup:(id)pickup longestSession:(id)session applicationUsageIntervals:(id)usageIntervals webUsageIntervals:(id)webUsageIntervals categoryUsageIntervals:(id)self0 aggregatedApplicationUsageIntervals:(id)self1 aggregatedWebUsageIntervals:(id)self2 categoryByBundleIdentifier:(id)self3 categoryByWebDomain:(id)self4 notifications:(id)self5 interval:(id)self6 timeZone:(id)self7 lastEventDate:(id)self8
{
  v106 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  identifierCopy = identifier;
  pickupCopy = pickup;
  sessionCopy = session;
  usageIntervalsCopy = usageIntervals;
  webUsageIntervalsCopy = webUsageIntervals;
  categoryUsageIntervalsCopy = categoryUsageIntervals;
  applicationUsageIntervalsCopy = applicationUsageIntervals;
  aggregatedWebUsageIntervalsCopy = aggregatedWebUsageIntervals;
  bundleIdentifierCopy = bundleIdentifier;
  domainCopy = domain;
  notificationsCopy = notifications;
  intervalCopy = interval;
  zoneCopy = zone;
  dateCopy = date;
  v58 = intervalsCopy;
  if (intervalsCopy)
  {
    v27 = intervalsCopy;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v28 = [v27 countByEnumeratingWithState:&v94 objects:&v102 count:16];
    if (v28)
    {
      v29 = *v95;
      v30 = 0.0;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v95 != v29)
          {
            objc_enumerationMutation(v27);
          }

          [*(*(&v94 + 1) + 8 * i) duration];
          v30 = v30 + v32;
        }

        v28 = [v27 countByEnumeratingWithState:&v94 objects:&v102 count:16];
      }

      while (v28);
    }

    else
    {
      v30 = 0.0;
    }
  }

  else
  {
    v30 = 0.0;
  }

  v33 = applicationUsageIntervalsCopy;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v34 = objc_opt_new();
  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke;
  v90[3] = &unk_279E09CC8;
  v93 = &v102;
  v35 = bundleIdentifierCopy;
  v91 = v35;
  v36 = v34;
  v92 = v36;
  [usageIntervalsCopy enumerateKeysAndObjectsUsingBlock:v90];
  v37 = aggregatedWebUsageIntervalsCopy;
  *&v94 = 0;
  *(&v94 + 1) = &v94;
  v95 = 0x2020000000uLL;
  v38 = objc_opt_new();
  v39 = objc_opt_new();
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_2;
  v85[3] = &unk_279E09CF0;
  v89 = &v94;
  v61 = domainCopy;
  v86 = v61;
  v40 = v38;
  v87 = v40;
  v41 = v39;
  v88 = v41;
  [webUsageIntervalsCopy enumerateKeysAndObjectsUsingBlock:v85];
  if (v103[3] >= *(*(&v94 + 1) + 24))
  {
    v42 = v103[3];
  }

  else
  {
    v42 = *(*(&v94 + 1) + 24);
  }

  if (v30 >= v42)
  {
    v42 = v30;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v99 = v30;
    v100 = 2048;
    v101 = v42;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Adjusting total Screen Time usage (%f) to be at least as long as the max application or web usage (%f)", buf, 0x16u);
  }

  v43 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(notificationsCopy, "count")}];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_54;
  v82[3] = &unk_279E09D18;
  v57 = v35;
  v83 = v57;
  v44 = v43;
  v84 = v44;
  [notificationsCopy enumerateKeysAndObjectsUsingBlock:v82];
  v45 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(categoryUsageIntervalsCopy, "count")}];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_2_56;
  v73[3] = &unk_279E09DE0;
  v46 = v40;
  v74 = v46;
  v47 = v44;
  v75 = v47;
  v48 = v36;
  v76 = v48;
  v49 = v33;
  v77 = v49;
  v50 = identifierCopy;
  v78 = v50;
  v51 = v41;
  v79 = v51;
  v52 = v37;
  v80 = v52;
  v53 = v45;
  v81 = v53;
  [categoryUsageIntervalsCopy enumerateKeysAndObjectsUsingBlock:v73];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_7;
  v71[3] = &unk_279E09E08;
  v54 = v53;
  v72 = v54;
  [v47 enumerateKeysAndObjectsUsingBlock:v71];
  v55 = [[USUsageReport alloc] initWithScreenTime:sessionCopy longestSession:v54 categoryUsage:usage pickupsWithoutApplicationUsage:pickupCopy firstPickup:intervalCopy interval:zoneCopy timeZone:v42 lastEventDate:dateCopy];

  _Block_object_dispose(&v94, 8);
  _Block_object_dispose(&v102, 8);

  return v55;
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v32;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v32 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v31 + 1) + 8 * i) duration];
        v10 = v10 + v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v13 = *(*(a1 + 48) + 8);
  if (v10 > *(v13 + 24))
  {
    *(v13 + 24) = v10;
  }

  v14 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v15 = [v5 identifier];
  v16 = [*(a1 + 32) objectForKeyedSubscript:v15];
  v17 = [v16 identifier];
  v18 = v17;
  v19 = *MEMORY[0x277CF95E8];
  if (v17)
  {
    v19 = v17;
  }

  v20 = v19;

  v21 = [v16 canonicalBundleIdentifier];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = v15;
  }

  v24 = v23;

  v25 = +[USTrustIdentifier identifierWithIdentifier:trusted:](USTrustIdentifier, "identifierWithIdentifier:trusted:", v24, [v5 trusted]);

  v26 = [*(a1 + 40) objectForKeyedSubscript:v20];
  v27 = [v26 objectForKeyedSubscript:v25];
  if (v27)
  {
    v28 = v27;
    v29 = v14;
    v30 = v5;
  }

  else
  {
    v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v14, v5, 0}];
    if (v26)
    {
      v27 = v26;
      v29 = v28;
      v30 = v25;
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v28, v25, 0}];
      v27 = *(a1 + 40);
      v29 = v26;
      v30 = v20;
    }
  }

  [v27 setObject:v29 forKeyedSubscript:v30];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    v10 = 0.0;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v34 + 1) + 8 * i) duration];
        v10 = v10 + v12;
      }

      v8 = [v6 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v8);
  }

  else
  {
    v10 = 0.0;
  }

  v13 = *(*(a1 + 56) + 8);
  if (v10 > *(v13 + 24))
  {
    *(v13 + 24) = v10;
  }

  v33 = [MEMORY[0x277CCABB0] numberWithDouble:v10];
  v14 = [v5 identifier];
  v15 = [*(a1 + 32) objectForKeyedSubscript:v14];
  v16 = [v15 identifier];
  v17 = v16;
  v18 = *MEMORY[0x277CF95E8];
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = [v15 canonicalBundleIdentifier];
  if (v20)
  {
    v21 = +[USTrustIdentifier identifierWithIdentifier:trusted:](USTrustIdentifier, "identifierWithIdentifier:trusted:", v20, [v5 trusted]);
    v22 = [*(a1 + 40) objectForKeyedSubscript:v19];
    v23 = [v22 objectForKeyedSubscript:v21];
    if (!v23)
    {
      v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v33, v5, 0}];
      if (!v22)
      {
        v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v24, v21, 0}];
        v25 = *(a1 + 40);
LABEL_26:
        v31 = v22;
        v32 = v19;
        goto LABEL_27;
      }

      goto LABEL_24;
    }
  }

  else
  {
    v26 = [v15 primaryWebDomain];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = v14;
    }

    v29 = v28;

    v21 = +[USTrustIdentifier identifierWithIdentifier:trusted:](USTrustIdentifier, "identifierWithIdentifier:trusted:", v29, [v5 trusted]);

    v22 = [*(a1 + 48) objectForKeyedSubscript:v19];
    v23 = [v22 objectForKeyedSubscript:v21];
    if (!v23)
    {
      v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v33, v5, 0}];
      if (!v22)
      {
        v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v24, v21, 0}];
        v25 = *(a1 + 48);
        goto LABEL_26;
      }

LABEL_24:
      v25 = v22;
      v31 = v24;
      v32 = v21;
LABEL_27:
      [v25 setObject:v31 forKeyedSubscript:v32];
      v30 = v33;
      goto LABEL_28;
    }
  }

  v24 = v23;
  v30 = v33;
  [v23 setObject:v33 forKeyedSubscript:v5];
LABEL_28:
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v22 = a2;
  v5 = a3;
  v6 = [v22 identifier];
  v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
  v8 = [v7 identifier];
  v9 = v8;
  v10 = *MEMORY[0x277CF95E8];
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;

  v12 = [v7 canonicalBundleIdentifier];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v6;
  }

  v15 = v14;

  v16 = +[USTrustIdentifier identifierWithIdentifier:trusted:](USTrustIdentifier, "identifierWithIdentifier:trusted:", v15, [v22 trusted]);

  v17 = [*(a1 + 40) objectForKeyedSubscript:v11];
  v18 = [v17 objectForKeyedSubscript:v16];
  if (v18)
  {
    v19 = v18;
    v20 = v5;
    v21 = v22;
  }

  else
  {
    v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v5, v22, 0}];
    if (v17)
    {
      v18 = v17;
      v20 = v19;
      v21 = v16;
    }

    else
    {
      v17 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v19, v16, 0}];
      v18 = *(a1 + 40);
      v20 = v17;
      v21 = v11;
    }
  }

  [v18 setObject:v20 forKeyedSubscript:v21];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_2_56(uint64_t a1, void *a2, void *a3)
{
  v51 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = objc_opt_new();
  v8 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v9 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v10 = [*(a1 + 48) objectForKeyedSubscript:v5];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_3;
  v40[3] = &unk_279E09D40;
  v41 = *(a1 + 56);
  v11 = v8;
  v42 = v11;
  v12 = v9;
  v43 = v12;
  v44 = *(a1 + 64);
  v13 = v7;
  v45 = v13;
  v30 = v10;
  [v10 enumerateKeysAndObjectsUsingBlock:v40];
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_4;
  v36[3] = &unk_279E09D68;
  v37 = *(a1 + 56);
  v14 = v12;
  v38 = v14;
  v15 = v13;
  v39 = v15;
  v29 = v11;
  [v11 enumerateKeysAndObjectsUsingBlock:v36];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_5;
  v34[3] = &unk_279E09D90;
  v16 = v15;
  v35 = v16;
  [v14 enumerateKeysAndObjectsUsingBlock:v34];
  v17 = objc_opt_new();
  v18 = [*(a1 + 72) objectForKeyedSubscript:v5];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_6;
  v31[3] = &unk_279E09DB8;
  v32 = *(a1 + 80);
  v19 = v17;
  v33 = v19;
  [v18 enumerateKeysAndObjectsUsingBlock:v31];
  v20 = v6;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v21 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v47;
    v24 = 0.0;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v47 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(*(&v46 + 1) + 8 * i) duration];
        v24 = v24 + v26;
      }

      v22 = [v20 countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v22);
  }

  else
  {
    v24 = 0.0;
  }

  v27 = *(a1 + 88);
  v28 = [[USCategoryUsageReport alloc] initWithCategoryIdentifier:v5 totalUsageTime:v16 applicationUsage:v19 webUsage:v24];
  [v27 addObject:v28];

  [*(a1 + 40) setObject:0 forKeyedSubscript:v5];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v66 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v56 objects:&v61 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v57;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v57 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v56 + 1) + 8 * i) duration];
        v11 = v11 + v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v56 objects:&v61 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v14 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v15 = v14;
  v16 = MEMORY[0x277CBEC10];
  if (v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = MEMORY[0x277CBEC10];
  }

  v18 = v17;

  v51 = v5;
  v19 = [*(a1 + 48) objectForKeyedSubscript:v5];
  v20 = v19;
  if (v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v16;
  }

  v50 = v21;

  v22 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v23 = v6;
  v24 = [v23 countByEnumeratingWithState:&v52 objects:v60 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v53;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v53 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = [*(*(&v52 + 1) + 8 * j) identifier];
        v29 = [*(a1 + 56) objectForKeyedSubscript:v28];
        [v22 setObject:v29 forKeyedSubscript:v28];
      }

      v25 = [v23 countByEnumeratingWithState:&v52 objects:v60 count:16];
    }

    while (v25);
  }

  v30 = MEMORY[0x277CBEB38];
  v31 = v23;
  v32 = [[v30 alloc] initWithCapacity:{objc_msgSend(v31, "count")}];
  v61 = MEMORY[0x277D85DD0];
  v62 = 3221225472;
  v63 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v64 = &unk_279E0A1F0;
  v65 = v32;
  v33 = v32;
  v49 = v31;
  [v31 enumerateKeysAndObjectsUsingBlock:&v61];

  v48 = [v33 copy];
  v34 = MEMORY[0x277CBEB38];
  v35 = v18;
  v36 = [[v34 alloc] initWithCapacity:{objc_msgSend(v35, "count")}];
  v61 = MEMORY[0x277D85DD0];
  v62 = 3221225472;
  v63 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v64 = &unk_279E0A1F0;
  v65 = v36;
  v37 = v36;
  [v35 enumerateKeysAndObjectsUsingBlock:&v61];

  v38 = [v37 copy];
  v39 = MEMORY[0x277CBEB38];
  v40 = v50;
  v41 = [[v39 alloc] initWithCapacity:{objc_msgSend(v40, "count")}];
  v61 = MEMORY[0x277D85DD0];
  v62 = 3221225472;
  v63 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v64 = &unk_279E0A1F0;
  v65 = v41;
  v42 = v41;
  [v40 enumerateKeysAndObjectsUsingBlock:&v61];

  v43 = [v42 copy];
  v44 = *(a1 + 64);
  v45 = [USApplicationUsageReport alloc];
  v46 = [v51 identifier];
  v47 = -[USApplicationUsageReport initWithCanonicalBundleIdentifier:applicationUsageTrusted:totalUsageTime:applicationUsageByBundleIdentifier:webUsageByDomain:userNotificationsByBundleIdentifier:pickupsByBundleIdentifier:](v45, "initWithCanonicalBundleIdentifier:applicationUsageTrusted:totalUsageTime:applicationUsageByBundleIdentifier:webUsageByDomain:userNotificationsByBundleIdentifier:pickupsByBundleIdentifier:", v46, [v51 trusted], v48, v38, v43, v22, v11);
  [v44 addObject:v47];

  [*(a1 + 40) setObject:0 forKeyedSubscript:v51];
  [*(a1 + 48) setObject:0 forKeyedSubscript:v51];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:&v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v33 + 1) + 8 * i) duration];
        v11 = v11 + v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:&v37 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v14 = [*(a1 + 40) objectForKeyedSubscript:v5];
  v15 = v14;
  v16 = MEMORY[0x277CBEC10];
  if (v14)
  {
    v16 = v14;
  }

  v17 = v16;

  v18 = MEMORY[0x277CBEB38];
  v19 = v6;
  v20 = [[v18 alloc] initWithCapacity:{objc_msgSend(v19, "count")}];
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v40 = &unk_279E0A1F0;
  v41 = v20;
  v21 = v20;
  [v19 enumerateKeysAndObjectsUsingBlock:&v37];

  v22 = [v21 copy];
  v23 = MEMORY[0x277CBEB38];
  v24 = v17;
  v25 = [[v23 alloc] initWithCapacity:{objc_msgSend(v24, "count")}];
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v40 = &unk_279E0A1F0;
  v41 = v25;
  v26 = v25;
  [v24 enumerateKeysAndObjectsUsingBlock:&v37];

  v27 = [v26 copy];
  v28 = *(a1 + 48);
  v29 = [USApplicationUsageReport alloc];
  v30 = [v5 identifier];
  v31 = [v5 trusted];
  v32 = [(USApplicationUsageReport *)v29 initWithCanonicalBundleIdentifier:v30 applicationUsageTrusted:v31 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:v22 webUsageByDomain:v27 userNotificationsByBundleIdentifier:MEMORY[0x277CBEC10] pickupsByBundleIdentifier:v11];
  [v28 addObject:v32];

  [*(a1 + 40) setObject:0 forKeyedSubscript:v5];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a2;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v16[3] = &unk_279E0A1F0;
  v17 = v8;
  v9 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:v16];
  v10 = [v9 copy];

  v11 = *(a1 + 32);
  v12 = [USApplicationUsageReport alloc];
  v13 = [v7 identifier];
  v14 = [v7 trusted];

  v15 = [(USApplicationUsageReport *)v12 initWithCanonicalBundleIdentifier:v13 applicationUsageTrusted:v14 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:MEMORY[0x277CBEC10] webUsageByDomain:v10 userNotificationsByBundleIdentifier:MEMORY[0x277CBEC10] pickupsByBundleIdentifier:0.0];
  [v11 addObject:v15];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_6(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v24;
    v11 = 0.0;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v23 + 1) + 8 * i) duration];
        v11 = v11 + v13;
      }

      v9 = [v7 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 0.0;
  }

  v14 = MEMORY[0x277CBEB38];
  v15 = v6;
  v16 = [[v14 alloc] initWithCapacity:{objc_msgSend(v15, "count")}];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v27[3] = &unk_279E0A1F0;
  v28 = v16;
  v17 = v16;
  [v15 enumerateKeysAndObjectsUsingBlock:v27];

  v18 = [v17 copy];
  v19 = *(a1 + 40);
  v20 = [USWebUsageReport alloc];
  v21 = [v5 identifier];
  v22 = -[USWebUsageReport initWithDomainIdentifier:webUsageTrusted:totalUsageTime:webUsageByDomain:](v20, "initWithDomainIdentifier:webUsageTrusted:totalUsageTime:webUsageByDomain:", v21, [v5 trusted], v18, v11);
  [v19 addObject:v22];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x277CBEB18];
  v6 = a3;
  v7 = a2;
  v8 = [[v5 alloc] initWithCapacity:{objc_msgSend(v6, "count")}];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_8;
  v13[3] = &unk_279E09D90;
  v14 = v8;
  v9 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v13];

  v10 = *(a1 + 32);
  v11 = [USCategoryUsageReport alloc];
  v12 = [(USCategoryUsageReport *)v11 initWithCategoryIdentifier:v7 totalUsageTime:v9 applicationUsage:MEMORY[0x277CBEBF8] webUsage:0.0];

  [v10 addObject:v12];
}

void __376__USUsageQuerying__newReportWithNonIntersectingScreenTimeIntervals_pickupsByBundleIdentifier_pickupsWithoutApplicationUsage_firstPickup_longestSession_applicationUsageIntervals_webUsageIntervals_categoryUsageIntervals_aggregatedApplicationUsageIntervals_aggregatedWebUsageIntervals_categoryByBundleIdentifier_categoryByWebDomain_notifications_interval_timeZone_lastEventDate___block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x277CBEB38];
  v7 = a2;
  v8 = [[v6 alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __rekeyUsageByTrustIdentifierToUsageByIdentifier_block_invoke;
  v15[3] = &unk_279E0A1F0;
  v16 = v8;
  v9 = v8;
  [v5 enumerateKeysAndObjectsUsingBlock:v15];
  v10 = [v9 copy];

  v11 = *(a1 + 32);
  v12 = [USApplicationUsageReport alloc];
  v13 = [v7 identifier];

  v14 = [(USApplicationUsageReport *)v12 initWithCanonicalBundleIdentifier:v13 applicationUsageTrusted:1 totalUsageTime:MEMORY[0x277CBEC10] applicationUsageByBundleIdentifier:MEMORY[0x277CBEC10] webUsageByDomain:v10 userNotificationsByBundleIdentifier:MEMORY[0x277CBEC10] pickupsByBundleIdentifier:0.0];
  [v11 addObject:v14];
}

- (id)queryForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories interval:(id)interval segmentInterval:(double)segmentInterval error:(id *)error
{
  applicationsCopy = applications;
  exemptApplicationsCopy = exemptApplications;
  domainsCopy = domains;
  categoriesCopy = categories;
  intervalCopy = interval;
  endDate = [intervalCopy endDate];
  startDate = [intervalCopy startDate];
  v35 = intervalCopy;
  [intervalCopy duration];
  if (v21 <= segmentInterval)
  {
    v22 = endDate;
  }

  else
  {
    v22 = [startDate dateByAddingTimeInterval:segmentInterval];
  }

  v23 = v22;
  v24 = 0.0;
  if ([startDate compare:endDate] == -1)
  {
    while (1)
    {
      v33 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate endDate:v23];
      v34 = [(USUsageQuerying *)self queryForApplications:applicationsCopy exemptApplications:exemptApplicationsCopy webDomains:domainsCopy categories:categoriesCopy interval:v33 focalOnly:1 error:error];
      if (!v34)
      {
        break;
      }

      v28 = v34;
      [v34 doubleValue];
      v30 = v29;
      v25 = v23;

      [endDate timeIntervalSinceDate:v25];
      if (v31 <= segmentInterval)
      {
        v32 = endDate;
      }

      else
      {
        v32 = [v25 dateByAddingTimeInterval:segmentInterval];
      }

      v23 = v32;
      v24 = v24 + v30;

      startDate = v25;
      if ([v25 compare:endDate] != -1)
      {
        goto LABEL_6;
      }
    }

    v26 = 0;
  }

  else
  {
    v25 = startDate;
LABEL_6:
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
    startDate = v25;
  }

  return v26;
}

- (id)queryForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories interval:(id)interval focalOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v160[1] = *MEMORY[0x277D85DE8];
  applicationsCopy = applications;
  exemptApplicationsCopy = exemptApplications;
  domainsCopy = domains;
  categoriesCopy = categories;
  intervalCopy = interval;
  v114 = objc_opt_new();
  selfCopy = self;
  duetStream = [(USUsageQuerying *)self duetStream];
  v15 = MEMORY[0x277CFE260];
  v16 = intervalCopy;
  startDate = [v16 startDate];
  endDate = [v16 endDate];
  v19 = [v15 predicateForEventsIntersectingDateRangeFrom:startDate to:endDate];

  usageType = [MEMORY[0x277CFE1D0] usageType];
  v122 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType andIntegerValue:1];
  v124 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType];
  v21 = [MEMORY[0x277CCA920] notPredicateWithSubpredicate:v124];
  v22 = MEMORY[0x277CCA920];
  v152 = v122;
  v153 = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v152 count:2];
  v24 = [v22 orPredicateWithSubpredicates:v23];

  v25 = objc_alloc(MEMORY[0x277CCA920]);
  v146 = v19;
  v147 = v24;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:2];
  v27 = [v25 initWithType:1 subpredicates:v26];

  v28 = objc_opt_new();
  allDevices = [MEMORY[0x277CFE1E0] allDevices];
  [v28 setDeviceIDs:allDevices];

  appUsageStream = [MEMORY[0x277CFE298] appUsageStream];
  v160[0] = appUsageStream;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:1];
  [v28 setEventStreams:v31];

  if (onlyCopy)
  {
    v32 = v27;
  }

  else
  {
    v32 = v19;
  }

  [v28 setPredicate:v32];
  v33 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v158 = v33;
  v34 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v159 = v34;
  v35 = [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:2];

  [v28 setSortDescriptors:v35];
  v36 = [duetStream publisherForQuery:v28];

  collect = [v36 collect];

  duetStream2 = [(USUsageQuerying *)selfCopy duetStream];
  v38 = v16;
  v39 = MEMORY[0x277CFE260];
  startDate2 = [v38 startDate];
  endDate2 = [v38 endDate];
  v42 = [v39 predicateForEventsIntersectingDateRangeFrom:startDate2 to:endDate2];

  usageType2 = [MEMORY[0x277CFE1D0] usageType];
  v44 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType2 andIntegerValue:1];
  v45 = v44;
  if (!onlyCopy)
  {
    v46 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType2 andIntegerValue:0];
    v47 = objc_alloc(MEMORY[0x277CCA920]);
    v152 = v44;
    v153 = v46;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v152 count:2];
    v45 = [v47 initWithType:2 subpredicates:v48];
  }

  v49 = objc_opt_new();
  allDevices2 = [MEMORY[0x277CFE1E0] allDevices];
  [v49 setDeviceIDs:allDevices2];

  appWebUsageStream = [MEMORY[0x277CFE298] appWebUsageStream];
  v160[0] = appWebUsageStream;
  v52 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:1];
  [v49 setEventStreams:v52];

  v53 = objc_alloc(MEMORY[0x277CCA920]);
  v146 = v42;
  v147 = v45;
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:2];
  v55 = [v53 initWithType:1 subpredicates:v54];
  [v49 setPredicate:v55];

  v56 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v158 = v56;
  v57 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v159 = v57;
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:2];
  [v49 setSortDescriptors:v58];

  v59 = [duetStream2 publisherForQuery:v49];

  collect2 = [v59 collect];

  if ([categoriesCopy containsObject:*MEMORY[0x277CF95D0]])
  {
    duetStream3 = [(USUsageQuerying *)selfCopy duetStream];
    v61 = MEMORY[0x277CFE260];
    v62 = v38;
    startDate3 = [v62 startDate];
    endDate3 = [v62 endDate];
    v120 = [v61 predicateForEventsIntersectingDateRangeFrom:startDate3 to:endDate3];

    v65 = MEMORY[0x277CFE260];
    playing = [MEMORY[0x277CFE248] playing];
    v113 = [v65 predicateForObjectsWithMetadataKey:playing andIntegerValue:1];

    v67 = MEMORY[0x277CFE260];
    mediaType = [MEMORY[0x277CFE248] mediaType];
    v112 = [v67 predicateForObjectsWithMetadataKey:mediaType andStringValue:*MEMORY[0x277D27CB8]];

    v69 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"com.apple.quicklook.QuickLookUIService"];
    v70 = [MEMORY[0x277CFE260] predicateForEventsWithStringValue:@"com.apple.quicklook.extension.previewUI"];
    v71 = objc_alloc(MEMORY[0x277CCA920]);
    v146 = v69;
    v147 = v70;
    v72 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:2];
    v73 = [v71 initWithType:2 subpredicates:v72];

    v74 = objc_opt_new();
    allDevices3 = [MEMORY[0x277CFE1E0] allDevices];
    [v74 setDeviceIDs:allDevices3];

    nowPlayingStream = [MEMORY[0x277CFE298] nowPlayingStream];
    v160[0] = nowPlayingStream;
    v77 = [MEMORY[0x277CBEA60] arrayWithObjects:v160 count:1];
    [v74 setEventStreams:v77];

    v78 = objc_alloc(MEMORY[0x277CCA920]);
    v152 = v120;
    v153 = v113;
    v154 = v112;
    v155 = v73;
    v79 = [MEMORY[0x277CBEA60] arrayWithObjects:&v152 count:4];
    v80 = [v78 initWithType:1 subpredicates:v79];
    [v74 setPredicate:v80];

    v81 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
    v158 = v81;
    v82 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
    v159 = v82;
    v83 = [MEMORY[0x277CBEA60] arrayWithObjects:&v158 count:2];

    [v74 setSortDescriptors:v83];
    v84 = [duetStream3 publisherForQuery:v74];

    collect3 = [v84 collect];
  }

  else
  {
    duetStream3 = [MEMORY[0x277CBEBF8] bpsPublisher];
    collect3 = [duetStream3 collect];
  }

  duetStream4 = [(USUsageQuerying *)selfCopy duetStream];
  v86 = v38;
  v87 = objc_opt_new();
  allDevices4 = [MEMORY[0x277CFE1E0] allDevices];
  [v87 setDeviceIDs:allDevices4];

  appMediaUsageStream = [MEMORY[0x277CFE298] appMediaUsageStream];
  v146 = appMediaUsageStream;
  v90 = [MEMORY[0x277CBEA60] arrayWithObjects:&v146 count:1];
  [v87 setEventStreams:v90];

  v91 = MEMORY[0x277CFE260];
  startDate4 = [v86 startDate];
  endDate4 = [v86 endDate];
  v94 = [v91 predicateForEventsIntersectingDateRangeFrom:startDate4 to:endDate4];
  [v87 setPredicate:v94];

  v95 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v152 = v95;
  v96 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v153 = v96;
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:&v152 count:2];

  [v87 setSortDescriptors:v97];
  v98 = [duetStream4 publisherForQuery:v87];

  collect4 = [v98 collect];

  v152 = 0;
  v153 = &v152;
  v154 = 0x3032000000;
  v155 = __Block_byref_object_copy__0;
  v156 = __Block_byref_object_dispose__0;
  v157 = 0;
  v146 = 0;
  v147 = &v146;
  v148 = 0x3032000000;
  v149 = __Block_byref_object_copy__0;
  v150 = __Block_byref_object_dispose__0;
  v151 = 0;
  v100 = [objc_alloc(MEMORY[0x277CCA930]) initWithCondition:0];
  v145[0] = collect2;
  v145[1] = collect3;
  v145[2] = collect4;
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v145 count:3];
  v102 = [collect zipWithOthers:v101];
  v141[0] = MEMORY[0x277D85DD0];
  v141[1] = 3221225472;
  v141[2] = __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke;
  v141[3] = &unk_279E09E30;
  v142 = v100;
  v143 = &v146;
  v144 = 1;
  v129[0] = MEMORY[0x277D85DD0];
  v129[1] = 3221225472;
  v129[2] = __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2;
  v129[3] = &unk_279E09EA8;
  v129[4] = selfCopy;
  v103 = v86;
  v130 = v103;
  v104 = v114;
  v131 = v104;
  v140 = onlyCopy;
  v128 = applicationsCopy;
  v132 = v128;
  v105 = exemptApplicationsCopy;
  v133 = v105;
  v106 = v142;
  v134 = v106;
  v139 = 1;
  v107 = domainsCopy;
  v135 = v107;
  v108 = categoriesCopy;
  v136 = v108;
  v137 = &v152;
  v138 = &v146;
  v109 = [v102 sinkWithCompletion:v141 receiveInput:v129];

  [v106 lockWhenCondition:1];
  [v106 unlock];
  if (error)
  {
    *error = v147[5];
  }

  v110 = v153[5];

  _Block_object_dispose(&v146, 8);
  _Block_object_dispose(&v152, 8);

  return v110;
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 state] == 1)
  {
    [*(a1 + 32) lock];
    [*(a1 + 32) unlockWithCondition:*(a1 + 48)];
    v3 = [v6 error];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count] != 4)
  {
    __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2_cold_1();
  }

  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];
  v6 = [v3 objectAtIndexedSubscript:2];
  v7 = [v3 objectAtIndexedSubscript:3];
  v8 = [*(a1 + 32) _getBundleIdentiersFromApplicationUsageEvents:v4 videoUsageEvents:v7 interval:*(a1 + 40) referenceDate:*(a1 + 48) focalOnly:*(a1 + 120)];
  if ([v8 count])
  {
    [v8 unionSet:*(a1 + 56)];
    [v8 unionSet:*(a1 + 64)];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2_cold_2();
    }

    v9 = [MEMORY[0x277CF9650] sharedCategories];
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = __Block_byref_object_copy__0;
    v43 = __Block_byref_object_dispose__0;
    v44 = 0;
    v10 = [v8 array];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_68;
    v21[3] = &unk_279E09E80;
    v35 = &v39;
    v11 = *(a1 + 72);
    v37 = *(a1 + 112);
    v12 = *(a1 + 32);
    v22 = v11;
    v23 = v12;
    v24 = v5;
    v25 = v7;
    v26 = *(a1 + 40);
    v27 = *(a1 + 48);
    v38 = *(a1 + 120);
    v28 = *(a1 + 80);
    v13 = v9;
    v29 = v13;
    v30 = *(a1 + 56);
    v31 = *(a1 + 64);
    v32 = *(a1 + 88);
    v33 = v4;
    v14 = v6;
    v15 = *(a1 + 96);
    v34 = v14;
    v36 = v15;
    [v13 categoriesForBundleIDs:v10 completionHandler:v21];

    v16 = v40[5];
    if (v16)
    {
      objc_storeStrong((*(*(a1 + 104) + 8) + 40), v16);
    }

    _Block_object_dispose(&v39, 8);
  }

  else
  {
    LOBYTE(v20) = *(a1 + 120);
    [*(a1 + 32) _computeUsageForApplications:*(a1 + 56) exemptApplications:*(a1 + 64) webDomains:*(a1 + 80) categories:*(a1 + 88) applicationUsageEvents:v4 webUsageEvents:v5 nowPlayingEvents:v6 videoUsageEvents:v7 categoryByBundleIdentifier:0 categoryByWebDomain:0 interval:*(a1 + 40) referenceDate:*(a1 + 48) focalOnly:v20];
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v18 = *(*(a1 + 96) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    [*(a1 + 72) lock];
    [*(a1 + 72) unlockWithCondition:*(a1 + 112)];
  }
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [*(a1 + 40) _getWebDomainsFromWebUsageEvents:*(a1 + 48) videoUsageEvents:*(a1 + 56) interval:*(a1 + 64) referenceDate:*(a1 + 72) focalOnly:*(a1 + 160)];
    [v7 unionSet:*(a1 + 80)];
    if ([v7 count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_68_cold_1();
      }

      v8 = *(a1 + 88);
      v9 = [v7 array];
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_69;
      v19[3] = &unk_279E09E58;
      v10 = *(a1 + 40);
      v32 = *(a1 + 136);
      v19[4] = v10;
      v20 = *(a1 + 96);
      v21 = *(a1 + 104);
      v22 = *(a1 + 80);
      v23 = *(a1 + 112);
      v24 = *(a1 + 120);
      v25 = *(a1 + 48);
      v26 = *(a1 + 128);
      v27 = *(a1 + 56);
      v28 = v5;
      v29 = *(a1 + 64);
      v11 = *(a1 + 72);
      v35 = *(a1 + 160);
      v12 = *(a1 + 144);
      v30 = v11;
      v33 = v12;
      v13 = *(a1 + 32);
      v14 = *(a1 + 152);
      v31 = v13;
      v34 = v14;
      [v8 categoriesForDomainNames:v9 completionHandler:v19];
    }

    else
    {
      LOBYTE(v18) = *(a1 + 160);
      [*(a1 + 40) _computeUsageForApplications:*(a1 + 96) exemptApplications:*(a1 + 104) webDomains:*(a1 + 80) categories:*(a1 + 112) applicationUsageEvents:*(a1 + 120) webUsageEvents:*(a1 + 48) nowPlayingEvents:*(a1 + 128) videoUsageEvents:*(a1 + 56) categoryByBundleIdentifier:v5 categoryByWebDomain:0 interval:*(a1 + 64) referenceDate:*(a1 + 72) focalOnly:v18];
      v15 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      v16 = *(*(a1 + 144) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      [*(a1 + 32) lock];
      [*(a1 + 32) unlockWithCondition:*(a1 + 152)];
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 136) + 8) + 40), a3);
    [*(a1 + 32) lock];
    [*(a1 + 32) unlockWithCondition:*(a1 + 152)];
  }
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_69(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v12 = v5;
  if (a2)
  {
    LOBYTE(v11) = *(a1 + 160);
    [*(a1 + 32) _computeUsageForApplications:*(a1 + 40) exemptApplications:*(a1 + 48) webDomains:*(a1 + 56) categories:*(a1 + 64) applicationUsageEvents:*(a1 + 72) webUsageEvents:*(a1 + 80) nowPlayingEvents:*(a1 + 88) videoUsageEvents:*(a1 + 96) categoryByBundleIdentifier:*(a1 + 104) categoryByWebDomain:a2 interval:*(a1 + 112) referenceDate:*(a1 + 120) focalOnly:v11];
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:?];
    v7 = *(*(a1 + 144) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = *(*(a1 + 136) + 8);
    v10 = v5;
    v8 = *(v9 + 40);
    *(v9 + 40) = v10;
  }

  [*(a1 + 128) lock];
  [*(a1 + 128) unlockWithCondition:*(a1 + 152)];
}

- (id)_calculateAllExemptBundleIdentifiersFromExemptApplications:(id)applications categoryByBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationsCopy = applications;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __105__USUsageQuerying__calculateAllExemptBundleIdentifiersFromExemptApplications_categoryByBundleIdentifier___block_invoke;
  v13[3] = &unk_279E09ED0;
  v14 = identifierCopy;
  v8 = v7;
  v15 = v8;
  v9 = identifierCopy;
  [applicationsCopy enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __105__USUsageQuerying__calculateAllExemptBundleIdentifiersFromExemptApplications_categoryByBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v4 equivalentBundleIdentifiers];
  if (v3)
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }
}

- (id)_calculateAllExemptWebDomainsFromExemptApplications:(id)applications categoryByBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  applicationsCopy = applications;
  v7 = objc_opt_new();
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __98__USUsageQuerying__calculateAllExemptWebDomainsFromExemptApplications_categoryByBundleIdentifier___block_invoke;
  v13[3] = &unk_279E09ED0;
  v14 = identifierCopy;
  v8 = v7;
  v15 = v8;
  v9 = identifierCopy;
  [applicationsCopy enumerateObjectsUsingBlock:v13];

  v10 = v15;
  v11 = v8;

  return v8;
}

void __98__USUsageQuerying__calculateAllExemptWebDomainsFromExemptApplications_categoryByBundleIdentifier___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) objectForKeyedSubscript:a2];
  v3 = [v4 webDomains];
  if (v3)
  {
    [*(a1 + 40) addObjectsFromArray:v3];
  }
}

- (double)_computeUsageForApplications:(id)applications exemptApplications:(id)exemptApplications webDomains:(id)domains categories:(id)categories applicationUsageEvents:(id)events webUsageEvents:(id)usageEvents nowPlayingEvents:(id)playingEvents videoUsageEvents:(id)self0 categoryByBundleIdentifier:(id)self1 categoryByWebDomain:(id)self2 interval:(id)self3 referenceDate:(id)self4 focalOnly:(BOOL)self5
{
  applicationsCopy = applications;
  exemptApplicationsCopy = exemptApplications;
  domainsCopy = domains;
  eventsCopy = events;
  identifierCopy = identifier;
  dateCopy = date;
  intervalCopy = interval;
  v20 = applicationsCopy;
  domainCopy = domain;
  videoUsageEventsCopy = videoUsageEvents;
  playingEventsCopy = playingEvents;
  usageEventsCopy = usageEvents;
  categoriesCopy = categories;
  v24 = [categoriesCopy count];
  v25 = [domainsCopy count];
  v51 = v20;
  v26 = ([v20 count] | v25) != 0;
  if (v24)
  {
    v27 = objc_opt_new();
  }

  else
  {
    v27 = 0;
  }

  if (v26)
  {
    v28 = objc_opt_new();
    if (v25)
    {
      v41 = objc_opt_new();
    }

    else
    {
      v41 = 0;
    }
  }

  else
  {
    v41 = 0;
    v28 = 0;
  }

  v29 = [eventsCopy mutableCopy];
  v30 = [usageEventsCopy mutableCopy];

  v40 = [playingEventsCopy mutableCopy];
  [v29 addObjectsFromArray:videoUsageEventsCopy];
  v47 = v30;
  [v30 addObjectsFromArray:videoUsageEventsCopy];

  v31 = [(USUsageQuerying *)self _calculateAllExemptBundleIdentifiersFromExemptApplications:exemptApplicationsCopy categoryByBundleIdentifier:identifierCopy];
  if ([v31 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _computeUsageForApplications:exemptApplications:webDomains:categories:applicationUsageEvents:webUsageEvents:nowPlayingEvents:videoUsageEvents:categoryByBundleIdentifier:categoryByWebDomain:interval:referenceDate:focalOnly:];
  }

  v32 = [(USUsageQuerying *)self _calculateAllExemptWebDomainsFromExemptApplications:exemptApplicationsCopy categoryByBundleIdentifier:identifierCopy];
  if ([v32 count] && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _computeUsageForApplications:exemptApplications:webDomains:categories:applicationUsageEvents:webUsageEvents:nowPlayingEvents:videoUsageEvents:categoryByBundleIdentifier:categoryByWebDomain:interval:referenceDate:focalOnly:];
  }

  LOBYTE(v38) = only;
  v39 = [(USUsageQuerying *)self _computeApplicationUsageWithEvents:v29 exemptApplications:v31 exemptWebDomains:v32 unboundApplicationUsageIntervalsByDevice:0 timeZoneByDevice:0 lastEventDateByDevice:0 categoryUsageIntervalsByDevice:v27 aggregatedApplicationUsageIntervalsByDevice:v28 categoryByBundleIdentifier:identifierCopy partition:intervalCopy referenceDate:dateCopy focalOnly:v38];
  LOBYTE(v37) = only;
  v33 = [(USUsageQuerying *)self _computeWebUsageWithEvents:v30 exemptWebDomains:v32 timeZoneByDevice:0 lastEventDateByDevice:0 categoryUsageIntervalsByDevice:v27 aggregatedApplicationUsageIntervalsByDevice:v28 aggregatedWebUsageIntervalsByDevice:v41 categoryByWebDomain:domainCopy partition:intervalCopy referenceDate:dateCopy focalOnly:v37];
  [(USUsageQuerying *)self _computeNowPlayingUsageWithEvents:v40 categoryUsageIntervalsByDevice:v27 timeZoneByDevice:0 lastEventDateByDevice:0 partition:intervalCopy referenceDate:dateCopy];

  [(USUsageQuerying *)self _generateUsageTimeWithApplicationUsageIntervals:v39 webUsageIntervalsByDevice:v33 categoryUsageIntervalsByDevice:v27 aggregatedApplicationUsageIntervalsByDevice:v28 aggregatedWebUsageIntervalsByDevice:v41 categoryByBundleIdentifier:identifierCopy categoryByWebDomain:domainCopy applications:v51 webDomains:domainsCopy categories:categoriesCopy];
  v35 = v34;

  return v35;
}

- (double)_generateUsageTimeWithApplicationUsageIntervals:(id)intervals webUsageIntervalsByDevice:(id)device categoryUsageIntervalsByDevice:(id)byDevice aggregatedApplicationUsageIntervalsByDevice:(id)intervalsByDevice aggregatedWebUsageIntervalsByDevice:(id)usageIntervalsByDevice categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)domain applications:(id)self0 webDomains:(id)self1 categories:(id)self2
{
  v181 = *MEMORY[0x277D85DE8];
  intervalsCopy = intervals;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  intervalsByDeviceCopy = intervalsByDevice;
  usageIntervalsByDeviceCopy = usageIntervalsByDevice;
  identifierCopy = identifier;
  domainCopy = domain;
  applicationsCopy = applications;
  domainsCopy = domains;
  categoriesCopy = categories;
  v143 = objc_opt_new();
  v115 = applicationsCopy;
  v139 = intervalsByDeviceCopy;
  if ([applicationsCopy count])
  {
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v20 = applicationsCopy;
    v21 = [v20 countByEnumeratingWithState:&v162 objects:v174 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v163;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v163 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = [identifierCopy objectForKeyedSubscript:*(*(&v162 + 1) + 8 * i)];
          equivalentBundleIdentifiers = [v26 equivalentBundleIdentifiers];

          if ([equivalentBundleIdentifiers count] >= 2)
          {
            if (!v23)
            {
              v23 = [objc_alloc(MEMORY[0x277CBEB58]) initWithSet:v20];
            }

            [v23 addObjectsFromArray:equivalentBundleIdentifiers];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v162 objects:v174 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    if (!v139)
    {
      [USUsageQuerying _generateUsageTimeWithApplicationUsageIntervals:a2 webUsageIntervalsByDevice:self categoryUsageIntervalsByDevice:? aggregatedApplicationUsageIntervalsByDevice:? aggregatedWebUsageIntervalsByDevice:? categoryByBundleIdentifier:? categoryByWebDomain:? applications:? webDomains:? categories:?];
    }

    if (v23)
    {
      v28 = v23;
    }

    else
    {
      v28 = v20;
    }

    v29 = v28;
    v30 = objc_opt_new();
    v158 = 0u;
    v159 = 0u;
    v160 = 0u;
    v161 = 0u;
    v31 = v29;
    v32 = [v31 countByEnumeratingWithState:&v158 objects:v173 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v159;
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v159 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v158 + 1) + 8 * j);
          v37 = [USTrustIdentifier identifierWithIdentifier:v36 trusted:1];
          [v30 addObject:v37];

          v38 = [USTrustIdentifier identifierWithIdentifier:v36 trusted:0];
          [v30 addObject:v38];
        }

        v33 = [v31 countByEnumeratingWithState:&v158 objects:v173 count:16];
      }

      while (v33);
    }

    v39 = v143;
    v40 = v30;
    v41 = [v139 objectForKeyedSubscript:@"AllDevices"];
    v175 = MEMORY[0x277D85DD0];
    v176 = 3221225472;
    v177 = __unionIntervalsWithUsageTrustIntervalsByDeviceFilteredByItems_block_invoke;
    v178 = &unk_279E0A1A0;
    v179 = v40;
    v180 = v39;
    v42 = v40;
    v43 = v39;
    [v41 enumerateKeysAndObjectsUsingBlock:&v175];

    intervalsByDeviceCopy = v139;
  }

  v123 = [intervalsByDeviceCopy objectForKeyedSubscript:@"AllDevices"];
  v121 = [usageIntervalsByDeviceCopy objectForKeyedSubscript:@"AllDevices"];
  v120 = [deviceCopy objectForKeyedSubscript:@"AllDevices"];
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v157 = 0u;
  obj = domainsCopy;
  v44 = 0x279E09000uLL;
  v127 = [obj countByEnumeratingWithState:&v154 objects:v172 count:16];
  if (v127)
  {
    v125 = *v155;
    do
    {
      v45 = 0;
      do
      {
        if (*v155 != v125)
        {
          v46 = v45;
          objc_enumerationMutation(obj);
          v45 = v46;
        }

        v129 = v45;
        v47 = *(*(&v154 + 1) + 8 * v45);
        v48 = [domainCopy objectForKeyedSubscript:v47];
        canonicalBundleIdentifier = [v48 canonicalBundleIdentifier];
        v128 = canonicalBundleIdentifier;
        if (canonicalBundleIdentifier)
        {
          v50 = canonicalBundleIdentifier;
          [*(v44 + 1408) identifierWithIdentifier:canonicalBundleIdentifier trusted:1];
          v52 = v51 = v44;
          v53 = [v123 objectForKeyedSubscript:v52];

          v54 = [*(v51 + 1408) identifierWithIdentifier:v50 trusted:0];
          v130 = [v123 objectForKeyedSubscript:v54];
        }

        else
        {
          [v48 primaryWebDomain];
          v54 = v55 = v44;
          v56 = *(v55 + 1408);
          if (v54)
          {
            v57 = [v56 identifierWithIdentifier:v54 trusted:1];
            v53 = [v121 objectForKeyedSubscript:v57];

            v58 = [*(v55 + 1408) identifierWithIdentifier:v54 trusted:0];
            v59 = v121;
          }

          else
          {
            v60 = [v56 identifierWithIdentifier:v47 trusted:1];
            v53 = [v120 objectForKeyedSubscript:v60];

            v58 = [*(v55 + 1408) identifierWithIdentifier:v47 trusted:0];
            v59 = v120;
          }

          v130 = [v59 objectForKeyedSubscript:v58];
        }

        v152 = 0u;
        v153 = 0u;
        v150 = 0u;
        v151 = 0u;
        v132 = v53;
        v140 = v48;
        v135 = [v132 countByEnumeratingWithState:&v150 objects:v171 count:16];
        if (v135)
        {
          v133 = *v151;
          do
          {
            v61 = 0;
            do
            {
              if (*v151 != v133)
              {
                objc_enumerationMutation(v132);
              }

              v141 = v61;
              v62 = *(*(&v150 + 1) + 8 * v61);
              v63 = v143;
              v64 = v62;
              v166 = 0u;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v65 = [v63 countByEnumeratingWithState:&v166 objects:&v175 count:16];
              if (v65)
              {
                v66 = v65;
                v144 = 0;
                v67 = *v167;
                v137 = v64;
                do
                {
                  for (k = 0; k != v66; ++k)
                  {
                    if (*v167 != v67)
                    {
                      objc_enumerationMutation(v63);
                    }

                    v69 = *(*(&v166 + 1) + 8 * k);
                    if ([v69 intersectsDateInterval:v64])
                    {
                      v70 = v63;
                      startDate = [v69 startDate];
                      startDate2 = [v64 startDate];
                      v73 = [startDate earlierDate:startDate2];

                      endDate = [v69 endDate];
                      endDate2 = [v64 endDate];
                      v76 = [endDate laterDate:endDate2];

                      v77 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v73 endDate:v76];
                      if (v144)
                      {
                        [v144 addObject:v69];
                      }

                      else
                      {
                        v144 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v69, 0}];
                      }

                      v64 = v77;
                      v63 = v70;
                    }
                  }

                  v66 = [v63 countByEnumeratingWithState:&v166 objects:&v175 count:16];
                }

                while (v66);
                v48 = v140;
                v78 = v144;
                if (v144)
                {
                  [v63 removeObjectsInArray:v144];
                }

                v79 = v137;
                intervalsByDeviceCopy = v139;
              }

              else
              {
                v78 = 0;
                v79 = v64;
              }

              [v63 addObject:v64];

              v61 = v141 + 1;
            }

            while (v141 + 1 != v135);
            v135 = [v132 countByEnumeratingWithState:&v150 objects:v171 count:16];
          }

          while (v135);
        }

        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        v131 = v130;
        v136 = [v131 countByEnumeratingWithState:&v146 objects:v170 count:16];
        if (v136)
        {
          v134 = *v147;
          do
          {
            for (m = 0; m != v136; ++m)
            {
              if (*v147 != v134)
              {
                objc_enumerationMutation(v131);
              }

              v81 = *(*(&v146 + 1) + 8 * m);
              v82 = v143;
              v83 = v81;
              v166 = 0u;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v84 = [v82 countByEnumeratingWithState:&v166 objects:&v175 count:16];
              if (v84)
              {
                v85 = v84;
                v142 = m;
                v86 = 0;
                v87 = *v167;
                v138 = v83;
                do
                {
                  v88 = 0;
                  v145 = v85;
                  do
                  {
                    if (*v167 != v87)
                    {
                      objc_enumerationMutation(v82);
                    }

                    v89 = *(*(&v166 + 1) + 8 * v88);
                    if ([v89 intersectsDateInterval:v83])
                    {
                      v90 = v82;
                      startDate3 = [v89 startDate];
                      startDate4 = [v83 startDate];
                      v93 = [startDate3 earlierDate:startDate4];

                      endDate3 = [v89 endDate];
                      endDate4 = [v83 endDate];
                      v96 = [endDate3 laterDate:endDate4];

                      v97 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v93 endDate:v96];
                      if (v86)
                      {
                        [v86 addObject:v89];
                      }

                      else
                      {
                        v86 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v89, 0}];
                      }

                      v83 = v97;
                      v82 = v90;
                      v85 = v145;
                    }

                    ++v88;
                  }

                  while (v85 != v88);
                  v85 = [v82 countByEnumeratingWithState:&v166 objects:&v175 count:16];
                }

                while (v85);
                if (v86)
                {
                  [v82 removeObjectsInArray:v86];
                }

                v98 = v138;
                intervalsByDeviceCopy = v139;
                m = v142;
              }

              else
              {
                v86 = 0;
                v98 = v83;
              }

              [v82 addObject:v83];

              v48 = v140;
            }

            v136 = [v131 countByEnumeratingWithState:&v146 objects:v170 count:16];
          }

          while (v136);
        }

        v45 = v129 + 1;
        v44 = 0x279E09000;
      }

      while (v129 + 1 != v127);
      v127 = [obj countByEnumeratingWithState:&v154 objects:v172 count:16];
    }

    while (v127);
  }

  if ([categoriesCopy count])
  {
    if (!byDeviceCopy)
    {
      [USUsageQuerying _generateUsageTimeWithApplicationUsageIntervals:a2 webUsageIntervalsByDevice:self categoryUsageIntervalsByDevice:? aggregatedApplicationUsageIntervalsByDevice:? aggregatedWebUsageIntervalsByDevice:? categoryByBundleIdentifier:? categoryByWebDomain:? applications:? webDomains:? categories:?];
    }

    v99 = v143;
    v100 = categoriesCopy;
    v101 = [byDeviceCopy objectForKeyedSubscript:@"AllDevices"];
    v175 = MEMORY[0x277D85DD0];
    v176 = 3221225472;
    v177 = __unionIntervalsWithUsageIntervalsByDeviceFilteredByItems_block_invoke;
    v178 = &unk_279E0A178;
    v179 = v100;
    v180 = v99;
    v102 = v100;
    v103 = v99;
    [v101 enumerateKeysAndObjectsUsingBlock:&v175];
  }

  v104 = v143;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  v169 = 0u;
  v105 = [v104 countByEnumeratingWithState:&v166 objects:&v175 count:16];
  if (v105)
  {
    v106 = v105;
    v107 = *v167;
    v108 = 0.0;
    do
    {
      for (n = 0; n != v106; ++n)
      {
        if (*v167 != v107)
        {
          objc_enumerationMutation(v104);
        }

        [*(*(&v166 + 1) + 8 * n) duration];
        v108 = v108 + v110;
      }

      v106 = [v104 countByEnumeratingWithState:&v166 objects:&v175 count:16];
    }

    while (v106);
  }

  else
  {
    v108 = 0.0;
  }

  return v108;
}

- (void)queryForUncategorizedLocalWebUsageDuringInterval:(id)interval completionHandler:(id)handler
{
  v47[2] = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  handlerCopy = handler;
  v37 = objc_opt_new();
  duetStream = [(USUsageQuerying *)self duetStream];
  v7 = MEMORY[0x277CFE260];
  v8 = intervalCopy;
  startDate = [v8 startDate];
  endDate = [v8 endDate];
  v33 = [v7 predicateForEventsIntersectingDateRangeFrom:startDate to:endDate];

  usageType = [MEMORY[0x277CFE1D0] usageType];
  v12 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType andIntegerValue:1];
  v13 = [MEMORY[0x277CFE260] predicateForObjectsWithMetadataKey:usageType andIntegerValue:0];
  v14 = objc_alloc(MEMORY[0x277CCA920]);
  v47[0] = v12;
  v47[1] = v13;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:2];
  v16 = [v14 initWithType:2 subpredicates:v15];

  v17 = objc_opt_new();
  onlyLocalDevice = [MEMORY[0x277CFE1E0] onlyLocalDevice];
  [v17 setDeviceIDs:onlyLocalDevice];

  appWebUsageStream = [MEMORY[0x277CFE298] appWebUsageStream];
  v46 = appWebUsageStream;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v46 count:1];
  [v17 setEventStreams:v20];

  v21 = objc_alloc(MEMORY[0x277CCA920]);
  v45[0] = v33;
  v45[1] = v16;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:2];
  v23 = [v21 initWithType:1 subpredicates:v22];
  [v17 setPredicate:v23];

  v24 = [MEMORY[0x277CFE260] startDateSortDescriptorAscending:1];
  v44[0] = v24;
  v25 = [MEMORY[0x277CFE260] endDateSortDescriptorAscending:1];
  v44[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];

  [v17 setSortDescriptors:v26];
  v27 = [duetStream publisherForQuery:v17];

  collect = [v27 collect];

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke;
  v42[3] = &unk_279E09C00;
  v43 = handlerCopy;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2;
  v38[3] = &unk_279E09F20;
  v38[4] = self;
  v39 = v8;
  v40 = v37;
  v41 = v43;
  v29 = v43;
  v30 = v37;
  v31 = v8;
  v32 = [collect sinkWithCompletion:v42 receiveInput:v38];
}

void __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 state] == 1)
  {
    v3 = *(a1 + 32);
    v4 = [v5 error];
    (*(v3 + 16))(v3, 0, v4);
  }
}

void __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2_cold_1();
  }

  v4 = [a1[4] _getWebDomainsFromWebUsageEvents:v3 videoUsageEvents:0 interval:a1[5] referenceDate:a1[6] focalOnly:0];
  if ([v4 count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2_cold_2();
    }

    v5 = [MEMORY[0x277CF9650] sharedCategories];
    v6 = [v4 array];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_81;
    v9[3] = &unk_279E09EF8;
    v7 = a1[7];
    v8 = a1[4];
    v13 = v7;
    v9[4] = v8;
    v10 = v3;
    v11 = a1[5];
    v12 = a1[6];
    [v5 unCategorizedDomainsFromDomains:v6 withCompletionHandler:v9];
  }

  else
  {
    (*(a1[7] + 2))();
  }
}

uint64_t __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_81(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    return [*(a1 + 32) _computeUncategorizedLocalWebUsageWithWebUsageEvents:*(a1 + 40) uncategorizedDomains:a2 interval:*(a1 + 48) referenceDate:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    return (*(*(a1 + 64) + 16))();
  }
}

- (void)_computeUncategorizedLocalWebUsageWithWebUsageEvents:(id)events uncategorizedDomains:(id)domains interval:(id)interval referenceDate:(id)date completionHandler:(id)handler
{
  handlerCopy = handler;
  dateCopy = date;
  intervalCopy = interval;
  domainsCopy = domains;
  v20 = [events mutableCopy];
  LOBYTE(v19) = 0;
  v16 = [(USUsageQuerying *)self _computeWebUsageWithEvents:v20 exemptWebDomains:0 timeZoneByDevice:0 lastEventDateByDevice:0 categoryUsageIntervalsByDevice:0 aggregatedApplicationUsageIntervalsByDevice:0 aggregatedWebUsageIntervalsByDevice:0 categoryByWebDomain:0 partition:intervalCopy referenceDate:dateCopy focalOnly:v19];

  v17 = [v16 objectForKeyedSubscript:@"LocalDevice"];
  v18 = [(USUsageQuerying *)self _generateUncategorizedLocalWebUsageWithWebUsageIntervals:v17 uncategorizedDomains:domainsCopy];

  handlerCopy[2](handlerCopy, v18, 0);
}

- (id)_generateUncategorizedLocalWebUsageWithWebUsageIntervals:(id)intervals uncategorizedDomains:(id)domains
{
  intervalsCopy = intervals;
  domainsCopy = domains;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __97__USUsageQuerying__generateUncategorizedLocalWebUsageWithWebUsageIntervals_uncategorizedDomains___block_invoke;
  v15[3] = &unk_279E09F48;
  v7 = domainsCopy;
  v16 = v7;
  v17 = &v18;
  [intervalsCopy enumerateKeysAndObjectsUsingBlock:v15];
  v8 = v19[5];
  if (v8)
  {
    v9 = v8;
    v10 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __USKeyedNonIntersectingIntervalsCreateDurationDictionary_block_invoke;
    v24[3] = &unk_279E0A1C8;
    v11 = v10;
    v25 = v11;
    [v9 enumerateKeysAndObjectsUsingBlock:v24];
  }

  else
  {
    v11 = 0;
  }

  v12 = MEMORY[0x277CBEC10];
  if (v11)
  {
    v12 = v11;
  }

  v13 = v12;

  _Block_object_dispose(&v18, 8);

  return v13;
}

void __97__USUsageQuerying__generateUncategorizedLocalWebUsageWithWebUsageIntervals_uncategorizedDomains___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 identifier];
  if ([*(a1 + 32) containsObject:v6] && objc_msgSend(v11, "trusted"))
  {
    v7 = *(*(*(a1 + 40) + 8) + 40);
    if (v7)
    {
      [v7 setObject:v5 forKeyedSubscript:v6];
    }

    else
    {
      v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v5, v6, 0}];
      v9 = *(*(a1 + 40) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }
  }
}

- (id)_computeScreenTime:(BOOL)time withEvents:(id)events intersectingScreenTimeIntervalsByDevice:(id *)device longestSessionByDevice:(id *)byDevice timeZoneByDevice:(id)zoneByDevice lastEventDateByDevice:(id)dateByDevice partition:(id)partition referenceDate:(id)self0
{
  timeCopy = time;
  eventsCopy = events;
  zoneByDeviceCopy = zoneByDevice;
  dateByDeviceCopy = dateByDevice;
  partitionCopy = partition;
  dateCopy = date;
  if (timeCopy)
  {
    v19 = objc_opt_new();
    if (device)
    {
LABEL_3:
      v20 = objc_opt_new();
      goto LABEL_6;
    }
  }

  else
  {
    v19 = 0;
    if (device)
    {
      goto LABEL_3;
    }
  }

  v20 = 0;
LABEL_6:
  deviceCopy = device;
  byDeviceCopy = byDevice;
  if (byDevice)
  {
    v21 = objc_opt_new();
  }

  else
  {
    v21 = 0;
  }

  endDate = [partitionCopy endDate];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __175__USUsageQuerying__computeScreenTime_withEvents_intersectingScreenTimeIntervalsByDevice_longestSessionByDevice_timeZoneByDevice_lastEventDateByDevice_partition_referenceDate___block_invoke;
  v42[3] = &unk_279E09F70;
  v23 = partitionCopy;
  v43 = v23;
  selfCopy = self;
  v24 = v19;
  v45 = v24;
  v25 = v20;
  v46 = v25;
  v26 = v21;
  v47 = v26;
  v27 = zoneByDeviceCopy;
  v48 = v27;
  v28 = dateByDeviceCopy;
  v49 = v28;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:v42];

  v41 = 0;
  v29 = [(USUsageQuerying *)self _currentScreenTimeIntervalDuringInterval:v23 usageStartDate:&v41 referenceDate:dateCopy];
  v30 = v41;
  if (v29)
  {
    v37 = dateCopy;
    v31 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v30 endDate:dateCopy];
    [(USUsageQuerying *)self _updateScreenTimeWithInterval:v29 rawInterval:v31 deviceIdentifier:@"LocalDevice" partition:v23 event:0 nonIntersectingScreenTimeIntervalsByDevice:v24 intersectingScreenTimeIntervalsByDevice:v25 longestSessionByDevice:v26 timeZoneByDevice:v27 lastEventDateByDevice:v28];

    dateCopy = v37;
  }

  if (deviceCopy)
  {
    v32 = v25;
    *deviceCopy = v25;
  }

  if (byDeviceCopy)
  {
    v33 = v26;
    *byDeviceCopy = v26;
  }

  v34 = v24;

  return v24;
}

void __175__USUsageQuerying__computeScreenTime_withEvents_intersectingScreenTimeIntervalsByDevice_longestSessionByDevice_timeZoneByDevice_lastEventDateByDevice_partition_referenceDate___block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  v3 = *(a1 + 32);
  v4 = [v3 startDate];
  v5 = [v20 startDate];
  v6 = [v4 laterDate:v5];

  v7 = [v3 endDate];

  v8 = [v20 endDate];
  v9 = [v7 earlierDate:v8];

  if ([v6 compare:v9] == 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v6 endDate:v9];
  }

  if (v10)
  {
    v11 = [v20 source];
    v12 = [v11 syncDeviceID];
    v13 = v12;
    v14 = @"LocalDevice";
    if (v12)
    {
      v14 = v12;
    }

    v15 = v14;

    v16 = objc_alloc(MEMORY[0x277CCA970]);
    v17 = [v20 startDate];
    v18 = [v20 endDate];
    v19 = [v16 initWithStartDate:v17 endDate:v18];

    [*(a1 + 40) _updateScreenTimeWithInterval:v10 rawInterval:v19 deviceIdentifier:v15 partition:*(a1 + 32) event:v20 nonIntersectingScreenTimeIntervalsByDevice:*(a1 + 48) intersectingScreenTimeIntervalsByDevice:*(a1 + 56) longestSessionByDevice:*(a1 + 64) timeZoneByDevice:*(a1 + 72) lastEventDateByDevice:*(a1 + 80)];
  }
}

- (void)_updateScreenTimeWithInterval:(id)interval rawInterval:(id)rawInterval deviceIdentifier:(id)identifier partition:(id)partition event:(id)event nonIntersectingScreenTimeIntervalsByDevice:(id)device intersectingScreenTimeIntervalsByDevice:(id)byDevice longestSessionByDevice:(id)self0 timeZoneByDevice:(id)self1 lastEventDateByDevice:(id)self2
{
  v115 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  rawIntervalCopy = rawInterval;
  identifierCopy = identifier;
  partitionCopy = partition;
  eventCopy = event;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  sessionByDeviceCopy = sessionByDevice;
  zoneByDeviceCopy = zoneByDevice;
  dateByDeviceCopy = dateByDevice;
  v107 = deviceCopy;
  if (deviceCopy)
  {
    v20 = intervalCopy;
    v21 = [deviceCopy objectForKeyedSubscript:identifierCopy];
    v98 = identifierCopy;
    v99 = intervalCopy;
    if (v21)
    {
      v22 = v21;
      v23 = v20;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v24 = [v22 countByEnumeratingWithState:&v110 objects:v114 count:16];
      if (v24)
      {
        v25 = v24;
        v96 = v20;
        v26 = 0;
        v27 = *v111;
        v108 = *v111;
        do
        {
          for (i = 0; i != v25; ++i)
          {
            if (*v111 != v27)
            {
              objc_enumerationMutation(v22);
            }

            v29 = *(*(&v110 + 1) + 8 * i);
            if ([v29 intersectsDateInterval:v23])
            {
              v30 = v22;
              startDate = [v29 startDate];
              startDate2 = [v23 startDate];
              v33 = [startDate earlierDate:startDate2];

              endDate = [v29 endDate];
              [v23 endDate];
              v36 = v35 = v26;
              v37 = [endDate laterDate:v36];

              v26 = v35;
              v38 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v33 endDate:v37];

              if (v35)
              {
                [v35 addObject:v29];
              }

              else
              {
                v26 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v29, 0}];
              }

              v23 = v38;
              v22 = v30;
              v27 = v108;
            }
          }

          v25 = [v22 countByEnumeratingWithState:&v110 objects:v114 count:16];
        }

        while (v25);
        if (v26)
        {
          [v22 removeObjectsInArray:v26];
        }

        deviceCopy = v107;
        v20 = v96;
      }

      else
      {
        v26 = 0;
      }

      [v22 addObject:v23];

      identifierCopy = v98;
      intervalCopy = v99;
    }

    else
    {
      v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v20, 0}];
      [deviceCopy setObject:v22 forKeyedSubscript:identifierCopy];
    }

    v39 = deviceCopy;
    v40 = v20;
    v41 = [v39 objectForKeyedSubscript:@"AllDevices"];
    if (v41)
    {
      v97 = v39;
      v42 = v41;
      v95 = v40;
      v43 = v40;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v44 = [v42 countByEnumeratingWithState:&v110 objects:v114 count:16];
      if (v44)
      {
        v45 = v44;
        v109 = 0;
        v46 = *v111;
        do
        {
          for (j = 0; j != v45; ++j)
          {
            if (*v111 != v46)
            {
              objc_enumerationMutation(v42);
            }

            v48 = *(*(&v110 + 1) + 8 * j);
            if ([v48 intersectsDateInterval:v43])
            {
              v49 = v42;
              startDate3 = [v48 startDate];
              startDate4 = [v43 startDate];
              v52 = [startDate3 earlierDate:startDate4];

              endDate2 = [v48 endDate];
              endDate3 = [v43 endDate];
              v55 = [endDate2 laterDate:endDate3];

              v56 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v52 endDate:v55];
              if (v109)
              {
                [v109 addObject:v48];
              }

              else
              {
                v109 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v48, 0}];
              }

              v43 = v56;
              v42 = v49;
            }
          }

          v45 = [v42 countByEnumeratingWithState:&v110 objects:v114 count:16];
        }

        while (v45);
        v57 = v109;
        if (v109)
        {
          [v42 removeObjectsInArray:v109];
        }

        identifierCopy = v98;
        deviceCopy = v107;
      }

      else
      {
        v57 = 0;
      }

      [v42 addObject:v43];

      intervalCopy = v99;
      v40 = v95;
      v39 = v97;
    }

    else
    {
      v42 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v40, 0}];
      [v39 setObject:v42 forKeyedSubscript:@"AllDevices"];
    }
  }

  v58 = sessionByDeviceCopy;
  v59 = byDeviceCopy;
  if (byDeviceCopy)
  {
    startDate5 = [rawIntervalCopy startDate];
    v61 = [partitionCopy containsDate:startDate5];

    deviceCopy = v107;
    if (v61)
    {
      v62 = [byDeviceCopy objectForKeyedSubscript:identifierCopy];
      if (v62)
      {
        v63 = v62;
        [v62 addObject:rawIntervalCopy];
      }

      else
      {
        v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{rawIntervalCopy, 0}];
        [byDeviceCopy setObject:v63 forKeyedSubscript:identifierCopy];
      }

      deviceCopy = v107;
    }
  }

  if (sessionByDeviceCopy)
  {
    [rawIntervalCopy duration];
    v65 = v64;
    v66 = [sessionByDeviceCopy objectForKeyedSubscript:identifierCopy];
    [v66 duration];
    v68 = v67;

    if (v65 > v68)
    {
      [sessionByDeviceCopy setObject:rawIntervalCopy forKeyedSubscript:identifierCopy];
    }

    v69 = [sessionByDeviceCopy objectForKeyedSubscript:@"AllDevices"];
    [v69 duration];
    v71 = v70;

    deviceCopy = v107;
    if (v65 > v71)
    {
      [sessionByDeviceCopy setObject:rawIntervalCopy forKeyedSubscript:@"AllDevices"];
    }
  }

  if (zoneByDeviceCopy && dateByDeviceCopy)
  {
    v72 = zoneByDeviceCopy;
    v73 = dateByDeviceCopy;
    v74 = identifierCopy;
    v75 = eventCopy;
    v76 = intervalCopy;
    v77 = v74;
    v78 = v74;
    v79 = [v72 objectForKeyedSubscript:v78];

    if (!v79)
    {
      timeZone = [v75 timeZone];
      if (timeZone)
      {
        [v72 setObject:timeZone forKeyedSubscript:v78];
      }

      else
      {
        localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
        [v72 setObject:localTimeZone forKeyedSubscript:v78];
      }
    }

    endDate4 = [v76 endDate];
    v83 = [v73 objectForKeyedSubscript:v78];
    v84 = v83;
    if (!v83 || [v83 compare:endDate4] == -1)
    {
      [v73 setObject:endDate4 forKeyedSubscript:v78];
    }

    v85 = v72;
    v86 = v73;
    v87 = v75;
    v88 = v76;
    v89 = [v85 objectForKeyedSubscript:@"AllDevices"];

    if (!v89)
    {
      timeZone2 = [v87 timeZone];
      if (timeZone2)
      {
        [v85 setObject:timeZone2 forKeyedSubscript:@"AllDevices"];
      }

      else
      {
        localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
        [v85 setObject:localTimeZone2 forKeyedSubscript:@"AllDevices"];
      }
    }

    endDate5 = [v88 endDate];
    v93 = [v86 objectForKeyedSubscript:@"AllDevices"];
    v94 = v93;
    if (!v93 || [v93 compare:endDate5] == -1)
    {
      [v86 setObject:endDate5 forKeyedSubscript:@"AllDevices"];
    }

    identifierCopy = v77;
    deviceCopy = v107;
    v58 = sessionByDeviceCopy;
    v59 = byDeviceCopy;
  }
}

- (id)_currentScreenTimeIntervalDuringInterval:(id)interval usageStartDate:(id *)date referenceDate:(id)referenceDate
{
  intervalCopy = interval;
  referenceDateCopy = referenceDate;
  keyPathForBacklightOnStatus = [MEMORY[0x277CFE338] keyPathForBacklightOnStatus];
  context = [(USUsageQuerying *)self context];
  v12 = [context objectForKeyedSubscript:keyPathForBacklightOnStatus];
  v13 = v12;
  if (!v12)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
    {
      [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
    }

    goto LABEL_8;
  }

  if (![v12 BOOLValue])
  {
LABEL_8:
    v21 = 0;
    goto LABEL_13;
  }

  v14 = [context lastModifiedDateForContextualKeyPath:keyPathForBacklightOnStatus];
  if (v14)
  {
    dateCopy = date;
    v15 = intervalCopy;
    v16 = referenceDateCopy;
    startDate = [v15 startDate];
    v18 = [startDate laterDate:v14];

    v24 = v15;
    endDate = [v15 endDate];
    v20 = [endDate earlierDate:v16];

    if ([v18 compare:v20] == 1)
    {
      v21 = 0;
    }

    else
    {
      v21 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v18 endDate:v20];
    }

    v22 = v14;
    *dateCopy = v14;
  }

  else
  {
    v21 = 0;
  }

LABEL_13:

  return v21;
}

- (id)_getBundleIdentiersFromApplicationUsageEvents:(id)events videoUsageEvents:(id)usageEvents interval:(id)interval referenceDate:(id)date focalOnly:(BOOL)only
{
  onlyCopy = only;
  v54 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  usageEventsCopy = usageEvents;
  intervalCopy = interval;
  dateCopy = date;
  v12 = objc_opt_new();
  appBundleID = [MEMORY[0x277CFE158] appBundleID];
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v14 = eventsCopy;
  v15 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v49;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v49 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v48 + 1) + 8 * i);
        metadata = [v19 metadata];
        v21 = [metadata objectForKeyedSubscript:appBundleID];

        if (v21)
        {
          stringValue = v21;
        }

        else
        {
          value = [v19 value];
          stringValue = [value stringValue];
        }

        [v12 addObject:stringValue];
      }

      v16 = [v14 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v16);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v24 = usageEventsCopy;
  v25 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v45;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v45 != v27)
        {
          objc_enumerationMutation(v24);
        }

        value2 = [*(*(&v44 + 1) + 8 * j) value];
        stringValue2 = [value2 stringValue];

        [v12 addObject:stringValue2];
      }

      v26 = [v24 countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v26);
  }

  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __115__USUsageQuerying__getBundleIdentiersFromApplicationUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke;
  v42[3] = &unk_279E09F98;
  v31 = v12;
  v43 = v31;
  [(USUsageQuerying *)self _enumerateCurrentApplicationUsageIntervalsDuringInterval:intervalCopy exemptApplications:0 referenceDate:dateCopy focalOnly:onlyCopy block:v42];
  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __115__USUsageQuerying__getBundleIdentiersFromApplicationUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke_2;
  v40[3] = &unk_279E09FC0;
  v32 = v31;
  v41 = v32;
  [(USUsageQuerying *)self _enumerateCurrentVideoUsageIntervalsDuringInterval:intervalCopy exemptApplications:0 exemptWebDomains:0 referenceDate:dateCopy block:v40];
  v33 = v41;
  v34 = v32;

  return v32;
}

void __115__USUsageQuerying__getBundleIdentiersFromApplicationUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = a4;
  [a2 duration];
  if (v6 > 0.0)
  {
    [*(a1 + 32) addObject:v7];
  }
}

void __115__USUsageQuerying__getBundleIdentiersFromApplicationUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v13 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (v10)
  {
    [v13 duration];
    if (v12 > 0.0)
    {
      [*(a1 + 32) addObject:v10];
    }
  }
}

- (id)_computeApplicationUsageWithEvents:(id)events exemptApplications:(id)applications exemptWebDomains:(id)domains unboundApplicationUsageIntervalsByDevice:(id *)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice categoryUsageIntervalsByDevice:(id)intervalsByDevice aggregatedApplicationUsageIntervalsByDevice:(id)self0 categoryByBundleIdentifier:(id)self1 partition:(id)self2 referenceDate:(id)self3 focalOnly:(BOOL)self4
{
  applicationsCopy = applications;
  byDeviceCopy = byDevice;
  dateByDeviceCopy = dateByDevice;
  intervalsByDeviceCopy = intervalsByDevice;
  usageIntervalsByDeviceCopy = usageIntervalsByDevice;
  identifierCopy = identifier;
  partitionCopy = partition;
  dateCopy = date;
  eventsCopy = events;
  v22 = objc_opt_new();
  deviceCopy = device;
  if (device)
  {
    v23 = objc_opt_new();
  }

  else
  {
    v23 = 0;
  }

  appBundleID = [MEMORY[0x277CFE158] appBundleID];
  isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
  endDate = [partitionCopy endDate];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke;
  v85[3] = &unk_279E09FE8;
  v54 = partitionCopy;
  v86 = v54;
  v87 = appBundleID;
  v53 = applicationsCopy;
  v88 = v53;
  v89 = isUsageTrusted;
  selfCopy = self;
  v27 = v22;
  v91 = v27;
  v28 = v23;
  v92 = v28;
  v29 = intervalsByDeviceCopy;
  v93 = v29;
  v30 = usageIntervalsByDeviceCopy;
  v94 = v30;
  v52 = identifierCopy;
  v95 = v52;
  v31 = byDeviceCopy;
  v96 = v31;
  v50 = dateByDeviceCopy;
  v97 = v50;
  v62 = isUsageTrusted;
  v60 = appBundleID;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:v85];

  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_89;
  v75[3] = &unk_279E0A010;
  v32 = dateCopy;
  v76 = v32;
  selfCopy2 = self;
  v33 = v27;
  v78 = v33;
  v56 = v28;
  v79 = v56;
  v34 = v29;
  v80 = v34;
  v35 = v30;
  v81 = v35;
  v36 = v52;
  v82 = v36;
  v37 = v31;
  v83 = v37;
  v38 = v50;
  v84 = v38;
  [(USUsageQuerying *)self _enumerateCurrentApplicationUsageIntervalsDuringInterval:v54 exemptApplications:v53 referenceDate:v32 focalOnly:only block:v75];
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_2;
  v65[3] = &unk_279E0A038;
  v66 = v32;
  selfCopy3 = self;
  v39 = v33;
  v68 = v39;
  v40 = v56;
  v69 = v40;
  v70 = v34;
  v71 = v35;
  v72 = v36;
  v73 = v37;
  v74 = v38;
  v58 = v38;
  v57 = v37;
  v41 = v36;
  v42 = v35;
  v43 = v34;
  v44 = v32;
  [(USUsageQuerying *)self _enumerateCurrentVideoUsageIntervalsDuringInterval:v54 exemptApplications:v53 exemptWebDomains:0 referenceDate:v44 block:v65];
  if (deviceCopy)
  {
    v45 = v40;
    *deviceCopy = v40;
  }

  v46 = v74;
  v47 = v39;

  return v39;
}

void __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v4 startDate];
  v6 = [v3 startDate];
  v7 = [v5 laterDate:v6];

  v8 = [v4 endDate];

  v9 = [v3 endDate];
  v10 = [v8 earlierDate:v9];

  if ([v7 compare:v10] == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v7 endDate:v10];
  }

  if (v11)
  {
    v12 = objc_alloc(MEMORY[0x277CCA970]);
    v13 = [v3 startDate];
    v14 = [v3 endDate];
    v15 = [v12 initWithStartDate:v13 endDate:v14];

    v16 = [v3 source];
    v17 = [v16 syncDeviceID];
    v18 = v17;
    v19 = @"LocalDevice";
    if (v17)
    {
      v19 = v17;
    }

    v20 = v19;

    v21 = [v3 metadata];
    v22 = [v21 objectForKeyedSubscript:*(a1 + 40)];

    if (v22)
    {
      v23 = v22;
    }

    else
    {
      v24 = [v3 value];
      v23 = [v24 stringValue];
    }

    v25 = *(a1 + 48);
    if (v25 && v23 && [v25 containsObject:v23])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_cold_1();
      }
    }

    else
    {
      v26 = [v3 metadata];
      v27 = [v26 objectForKeyedSubscript:*(a1 + 56)];
      v28 = v27;
      v29 = MEMORY[0x277CBEC38];
      if (v27)
      {
        v29 = v27;
      }

      v30 = v29;

      v31 = *(a1 + 64);
      v32 = [v30 BOOLValue];

      [v31 _updateApplicationUsageWithInterval:v11 unboundInterval:v15 bundleIdentifier:v23 trustedApplicationUsage:v32 deviceIdentifier:v20 event:v3 applicationUsageIntervalsByDevice:*(a1 + 72) unboundApplicationUsageIntervalsByDevice:*(a1 + 80) categoryUsageIntervalsByDevice:*(a1 + 88) aggregatedApplicationUsageIntervalsByDevice:*(a1 + 96) categoryByBundleIdentifier:*(a1 + 104) timeZoneByDevice:*(a1 + 112) lastEventDateByDevice:*(a1 + 120)];
    }
  }
}

void __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_89(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = MEMORY[0x277CCA970];
  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = [[v9 alloc] initWithStartDate:v11 endDate:*(a1 + 32)];

  [*(a1 + 40) _updateApplicationUsageWithInterval:v12 unboundInterval:v13 bundleIdentifier:v10 trustedApplicationUsage:a5 deviceIdentifier:@"LocalDevice" event:0 applicationUsageIntervalsByDevice:*(a1 + 48) unboundApplicationUsageIntervalsByDevice:*(a1 + 56) categoryUsageIntervalsByDevice:*(a1 + 64) aggregatedApplicationUsageIntervalsByDevice:*(a1 + 72) categoryByBundleIdentifier:*(a1 + 80) timeZoneByDevice:*(a1 + 88) lastEventDateByDevice:*(a1 + 96)];
}

void __306__USUsageQuerying__computeApplicationUsageWithEvents_exemptApplications_exemptWebDomains_unboundApplicationUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_categoryByBundleIdentifier_partition_referenceDate_focalOnly___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v10 = MEMORY[0x277CCA970];
    v11 = a4;
    v12 = a3;
    v13 = a2;
    v14 = [[v10 alloc] initWithStartDate:v12 endDate:*(a1 + 32)];

    [*(a1 + 40) _updateApplicationUsageWithInterval:v13 unboundInterval:v14 bundleIdentifier:v11 trustedApplicationUsage:a6 deviceIdentifier:@"LocalDevice" event:0 applicationUsageIntervalsByDevice:*(a1 + 48) unboundApplicationUsageIntervalsByDevice:*(a1 + 56) categoryUsageIntervalsByDevice:*(a1 + 64) aggregatedApplicationUsageIntervalsByDevice:*(a1 + 72) categoryByBundleIdentifier:*(a1 + 80) timeZoneByDevice:*(a1 + 88) lastEventDateByDevice:*(a1 + 96)];
  }
}

- (void)_updateApplicationUsageWithInterval:(id)interval unboundInterval:(id)unboundInterval bundleIdentifier:(id)identifier trustedApplicationUsage:(BOOL)usage deviceIdentifier:(id)deviceIdentifier event:(id)event applicationUsageIntervalsByDevice:(id)device unboundApplicationUsageIntervalsByDevice:(id)self0 categoryUsageIntervalsByDevice:(id)self1 aggregatedApplicationUsageIntervalsByDevice:(id)self2 categoryByBundleIdentifier:(id)self3 timeZoneByDevice:(id)self4 lastEventDateByDevice:(id)self5
{
  usageCopy = usage;
  v337 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  unboundIntervalCopy = unboundInterval;
  identifierCopy = identifier;
  deviceIdentifierCopy = deviceIdentifier;
  eventCopy = event;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  intervalsByDeviceCopy = intervalsByDevice;
  usageIntervalsByDeviceCopy = usageIntervalsByDevice;
  bundleIdentifierCopy = bundleIdentifier;
  zoneByDeviceCopy = zoneByDevice;
  dateByDeviceCopy = dateByDevice;
  v299 = identifierCopy;
  v283 = usageCopy;
  v23 = [USTrustIdentifier identifierWithIdentifier:identifierCopy trusted:usageCopy];
  v24 = deviceCopy;
  v25 = deviceIdentifierCopy;
  v26 = v23;
  v27 = intervalCopy;
  v28 = [v24 objectForKeyedSubscript:v25];
  v292 = v25;
  if (v28)
  {
    v29 = v28;
    v30 = v26;
    v31 = v27;
    v32 = [v29 objectForKeyedSubscript:v30];
    if (v32)
    {
      v33 = v32;
      v317 = v31;
      v34 = v31;
      v332 = 0u;
      v333 = 0u;
      v334 = 0u;
      v335 = 0u;
      v35 = v33;
      v36 = [v35 countByEnumeratingWithState:&v332 objects:v336 count:16];
      if (v36)
      {
        v37 = v36;
        v288 = v30;
        v293 = v29;
        v297 = v27;
        v303 = v26;
        v310 = v24;
        v38 = 0;
        v39 = *v333;
        v276 = v34;
        do
        {
          v40 = 0;
          v325 = v37;
          do
          {
            if (*v333 != v39)
            {
              objc_enumerationMutation(v35);
            }

            v41 = *(*(&v332 + 1) + 8 * v40);
            if ([v41 intersectsDateInterval:v34])
            {
              v42 = v35;
              startDate = [v41 startDate];
              startDate2 = [v34 startDate];
              v45 = [startDate earlierDate:startDate2];

              endDate = [v41 endDate];
              endDate2 = [v34 endDate];
              v48 = [endDate laterDate:endDate2];

              v49 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v45 endDate:v48];
              if (v38)
              {
                [v38 addObject:v41];
              }

              else
              {
                v38 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v41, 0}];
              }

              v34 = v49;
              v35 = v42;
              v37 = v325;
            }

            ++v40;
          }

          while (v37 != v40);
          v37 = [v35 countByEnumeratingWithState:&v332 objects:v336 count:16];
        }

        while (v37);

        if (v38)
        {
          [v35 removeObjectsInArray:v38];
          v50 = v38;
        }

        else
        {
          v50 = 0;
        }

        v26 = v303;
        v24 = v310;
        v27 = v297;
        v29 = v293;
        v30 = v288;
        v52 = v276;
      }

      else
      {

        v50 = 0;
        v52 = v34;
      }

      [v35 addObject:v34];

      v25 = v292;
      v31 = v317;
    }

    else
    {
      v35 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v31, 0}];
      [v29 setObject:v35 forKeyedSubscript:v30];
    }
  }

  else
  {
    v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v27, 0}];
    v29 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v51, v26, 0}];
    [v24 setObject:v29 forKeyedSubscript:v25];
  }

  v53 = v24;
  v54 = v26;
  v55 = v27;
  v56 = [v53 objectForKeyedSubscript:@"AllDevices"];
  v298 = v55;
  v294 = v54;
  v289 = v53;
  if (v56)
  {
    v57 = v56;
    v58 = v54;
    v59 = v55;
    v60 = [v57 objectForKeyedSubscript:v58];
    if (v60)
    {
      v61 = v60;
      v62 = v59;
      v332 = 0u;
      v333 = 0u;
      v334 = 0u;
      v335 = 0u;
      v63 = v61;
      v64 = [v63 countByEnumeratingWithState:&v332 objects:v336 count:16];
      if (v64)
      {
        v304 = v59;
        v311 = v58;
        v318 = v57;
        v65 = 0;
        v66 = *v333;
        v277 = v62;
        v67 = v62;
        do
        {
          v68 = 0;
          v326 = v64;
          do
          {
            if (*v333 != v66)
            {
              objc_enumerationMutation(v63);
            }

            v69 = *(*(&v332 + 1) + 8 * v68);
            if ([v69 intersectsDateInterval:v67])
            {
              v70 = v63;
              startDate3 = [v69 startDate];
              startDate4 = [v67 startDate];
              v73 = [startDate3 earlierDate:startDate4];

              endDate3 = [v69 endDate];
              [v67 endDate];
              v76 = v75 = v65;
              v77 = [endDate3 laterDate:v76];

              v65 = v75;
              v78 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v73 endDate:v77];

              if (v75)
              {
                [v75 addObject:v69];
              }

              else
              {
                v65 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v69, 0}];
              }

              v67 = v78;
              v63 = v70;
              v64 = v326;
            }

            v68 = v68 + 1;
          }

          while (v64 != v68);
          v64 = [v63 countByEnumeratingWithState:&v332 objects:v336 count:16];
        }

        while (v64);

        if (v65)
        {
          [v63 removeObjectsInArray:v65];
          v55 = v298;
          v57 = v318;
          v64 = v65;
        }

        else
        {
          v64 = 0;
          v55 = v298;
          v57 = v318;
        }

        v59 = v304;
        v58 = v311;
        v62 = v277;
      }

      else
      {

        v67 = v62;
      }

      [v63 addObject:v67];

      v25 = v292;
    }

    else
    {
      v63 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v59, 0}];
      [v57 setObject:v63 forKeyedSubscript:v58];
    }

    v80 = v57;
    v79 = v289;
    v54 = v294;
  }

  else
  {
    v57 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v55, 0}];
    v79 = v53;
    v80 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v57, v54, 0}];
    [v79 setObject:v80 forKeyedSubscript:@"AllDevices"];
  }

  if (intervalsByDeviceCopy)
  {
    v81 = [bundleIdentifierCopy objectForKeyedSubscript:v299];
    identifier = [v81 identifier];
    v83 = identifier;
    v84 = *MEMORY[0x277CF95E8];
    if (identifier)
    {
      v84 = identifier;
    }

    v85 = v84;

    v86 = intervalsByDeviceCopy;
    v87 = v25;
    v88 = v85;
    v89 = v55;
    v90 = [v86 objectForKeyedSubscript:v87];
    if (v90)
    {
      v91 = v90;
      v92 = v88;
      v278 = v89;
      v93 = v89;
      v94 = v92;
      v95 = v93;
      v96 = [v91 objectForKeyedSubscript:v94];
      if (v96)
      {
        v261 = v94;
        v266 = v91;
        v271 = v88;
        v97 = v96;
        v98 = v95;
        v332 = 0u;
        v333 = 0u;
        v334 = 0u;
        v335 = 0u;
        v99 = v97;
        v100 = [v99 countByEnumeratingWithState:&v332 objects:v336 count:16];
        if (v100)
        {
          v101 = v100;
          v259 = v86;
          v327 = 0;
          v102 = *v333;
          v103 = v98;
          v305 = *v333;
          v312 = v98;
          do
          {
            v104 = 0;
            v319 = v101;
            do
            {
              if (*v333 != v102)
              {
                objc_enumerationMutation(v99);
              }

              v105 = *(*(&v332 + 1) + 8 * v104);
              if ([v105 intersectsDateInterval:v103])
              {
                v106 = v99;
                v107 = v95;
                v108 = v87;
                startDate5 = [v105 startDate];
                startDate6 = [v103 startDate];
                v111 = [startDate5 earlierDate:startDate6];

                endDate4 = [v105 endDate];
                endDate5 = [v103 endDate];
                v114 = [endDate4 laterDate:endDate5];

                v115 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v111 endDate:v114];
                if (v327)
                {
                  [v327 addObject:v105];
                }

                else
                {
                  v327 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v105, 0}];
                }

                v103 = v115;
                v87 = v108;
                v95 = v107;
                v99 = v106;
                v102 = v305;
                v98 = v312;
                v101 = v319;
              }

              ++v104;
            }

            while (v101 != v104);
            v101 = [v99 countByEnumeratingWithState:&v332 objects:v336 count:16];
          }

          while (v101);

          v116 = v327;
          if (v327)
          {
            [v99 removeObjectsInArray:v327];
          }

          v55 = v298;
          v86 = v259;
        }

        else
        {

          v116 = 0;
          v103 = v98;
        }

        v88 = v271;
        [v99 addObject:v103];

        v25 = v292;
        v94 = v261;
        v91 = v266;
      }

      else
      {
        v99 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v95, 0}];
        [v91 setObject:v99 forKeyedSubscript:v94];
      }

      v118 = v91;
      v117 = v278;
    }

    else
    {
      v91 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v89, 0}];
      v117 = v89;
      v118 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v91, v88, 0}];
      [v86 setObject:v118 forKeyedSubscript:v87];
    }

    v119 = v86;
    v120 = v88;
    v121 = v117;
    v122 = [v119 objectForKeyedSubscript:@"AllDevices"];
    if (v122)
    {
      v123 = v122;
      v124 = v120;
      v125 = v121;
      v126 = [v123 objectForKeyedSubscript:v124];
      if (v126)
      {
        v127 = v126;
        v320 = v125;
        v128 = v125;
        v332 = 0u;
        v333 = 0u;
        v334 = 0u;
        v335 = 0u;
        v129 = v127;
        v130 = [v129 countByEnumeratingWithState:&v332 objects:v336 count:16];
        if (v130)
        {
          v131 = v130;
          v267 = v124;
          v272 = v123;
          v279 = v121;
          v306 = v120;
          v313 = v119;
          v132 = 0;
          v133 = *v333;
          v262 = v128;
          v134 = v129;
          do
          {
            v135 = 0;
            v328 = v131;
            do
            {
              if (*v333 != v133)
              {
                objc_enumerationMutation(v134);
              }

              v136 = *(*(&v332 + 1) + 8 * v135);
              if ([v136 intersectsDateInterval:v128])
              {
                v137 = v134;
                startDate7 = [v136 startDate];
                startDate8 = [v128 startDate];
                v140 = [startDate7 earlierDate:startDate8];

                endDate6 = [v136 endDate];
                endDate7 = [v128 endDate];
                v143 = [endDate6 laterDate:endDate7];

                v144 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v140 endDate:v143];
                if (v132)
                {
                  [v132 addObject:v136];
                }

                else
                {
                  v132 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v136, 0}];
                }

                v128 = v144;
                v134 = v137;
                v131 = v328;
              }

              ++v135;
            }

            while (v131 != v135);
            v131 = [v134 countByEnumeratingWithState:&v332 objects:v336 count:16];
          }

          while (v131);

          if (v132)
          {
            [v134 removeObjectsInArray:v132];
            v55 = v298;
            v129 = v134;
            v120 = v306;
            v119 = v313;
            v145 = v132;
          }

          else
          {
            v145 = 0;
            v55 = v298;
            v129 = v134;
            v120 = v306;
            v119 = v313;
          }

          v123 = v272;
          v121 = v279;
          v147 = v262;
          v124 = v267;
        }

        else
        {

          v145 = 0;
          v147 = v128;
        }

        [v129 addObject:v128];

        v25 = v292;
        v125 = v320;
      }

      else
      {
        v129 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v125, 0}];
        [v123 setObject:v129 forKeyedSubscript:v124];
      }

      v146 = v123;
    }

    else
    {
      v123 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v121, 0}];
      v146 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v123, v120, 0}];
      [v119 setObject:v146 forKeyedSubscript:@"AllDevices"];
    }
  }

  if (usageIntervalsByDeviceCopy)
  {
    v148 = [bundleIdentifierCopy objectForKeyedSubscript:v299];
    canonicalBundleIdentifier = [v148 canonicalBundleIdentifier];

    if (!canonicalBundleIdentifier)
    {
      canonicalBundleIdentifier = v299;
    }

    v150 = [USTrustIdentifier identifierWithIdentifier:canonicalBundleIdentifier trusted:v283];
    v151 = usageIntervalsByDeviceCopy;
    v152 = v25;
    v153 = v150;
    v154 = v55;
    v155 = [v151 objectForKeyedSubscript:v152];
    if (v155)
    {
      v156 = v155;
      v157 = v153;
      v158 = v154;
      v159 = [v156 objectForKeyedSubscript:v157];
      if (v159)
      {
        v273 = v156;
        v280 = v152;
        v284 = v154;
        v307 = v153;
        v160 = v159;
        v161 = v158;
        v332 = 0u;
        v333 = 0u;
        v334 = 0u;
        v335 = 0u;
        v162 = v160;
        v163 = [v162 countByEnumeratingWithState:&v332 objects:v336 count:16];
        v268 = v158;
        v314 = canonicalBundleIdentifier;
        if (v163)
        {
          v164 = v163;
          v260 = v161;
          v263 = v151;
          v329 = 0;
          v165 = *v333;
          v166 = v161;
          do
          {
            v167 = 0;
            v321 = v164;
            do
            {
              if (*v333 != v165)
              {
                objc_enumerationMutation(v162);
              }

              v168 = *(*(&v332 + 1) + 8 * v167);
              if ([v168 intersectsDateInterval:v166])
              {
                v169 = v162;
                v170 = v157;
                startDate9 = [v168 startDate];
                startDate10 = [v166 startDate];
                v173 = [startDate9 earlierDate:startDate10];

                endDate8 = [v168 endDate];
                endDate9 = [v166 endDate];
                v176 = [endDate8 laterDate:endDate9];

                v177 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v173 endDate:v176];
                if (v329)
                {
                  [v329 addObject:v168];
                }

                else
                {
                  v329 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v168, 0}];
                }

                v157 = v170;

                v166 = v177;
                v162 = v169;
                v164 = v321;
              }

              ++v167;
            }

            while (v164 != v167);
            v164 = [v162 countByEnumeratingWithState:&v332 objects:v336 count:16];
          }

          while (v164);

          v178 = v329;
          if (v329)
          {
            [v162 removeObjectsInArray:v329];
          }

          v179 = v260;
          v151 = v263;
        }

        else
        {

          v178 = 0;
          v166 = v161;
          v179 = v161;
        }

        v153 = v307;
        v152 = v280;
        v154 = v284;
        v156 = v273;
        [v162 addObject:v166];

        v181 = v162;
        v25 = v292;
        v158 = v268;
        canonicalBundleIdentifier = v314;
      }

      else
      {
        v181 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v158, 0}];
        [v156 setObject:v181 forKeyedSubscript:v157];
      }

      v180 = v156;
    }

    else
    {
      v156 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v154, 0}];
      v180 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v156, v153, 0}];
      [v151 setObject:v180 forKeyedSubscript:v152];
    }

    v182 = v151;
    v183 = v153;
    v184 = v154;
    v185 = [v182 objectForKeyedSubscript:@"AllDevices"];
    if (v185)
    {
      v186 = v185;
      v187 = v183;
      v188 = v184;
      v189 = [v186 objectForKeyedSubscript:v187];
      v55 = v298;
      if (v189)
      {
        v190 = v189;
        v322 = v188;
        v191 = v188;
        v332 = 0u;
        v333 = 0u;
        v334 = 0u;
        v335 = 0u;
        v192 = v190;
        v193 = [v192 countByEnumeratingWithState:&v332 objects:v336 count:16];
        v315 = canonicalBundleIdentifier;
        if (v193)
        {
          v194 = v193;
          v269 = v187;
          v274 = v186;
          v281 = v184;
          v285 = v183;
          v308 = v182;
          v195 = 0;
          v196 = *v333;
          v264 = v191;
          do
          {
            v197 = 0;
            v330 = v194;
            do
            {
              if (*v333 != v196)
              {
                objc_enumerationMutation(v192);
              }

              v198 = *(*(&v332 + 1) + 8 * v197);
              if ([v198 intersectsDateInterval:v191])
              {
                v199 = v192;
                startDate11 = [v198 startDate];
                startDate12 = [v191 startDate];
                v202 = [startDate11 earlierDate:startDate12];

                endDate10 = [v198 endDate];
                endDate11 = [v191 endDate];
                v205 = [endDate10 laterDate:endDate11];

                v206 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v202 endDate:v205];
                if (v195)
                {
                  [v195 addObject:v198];
                }

                else
                {
                  v195 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v198, 0}];
                }

                v191 = v206;
                v192 = v199;
                v194 = v330;
              }

              ++v197;
            }

            while (v194 != v197);
            v194 = [v192 countByEnumeratingWithState:&v332 objects:v336 count:16];
          }

          while (v194);

          if (v195)
          {
            [v192 removeObjectsInArray:v195];
            v182 = v308;
            v207 = v195;
          }

          else
          {
            v207 = 0;
            v182 = v308;
          }

          v184 = v281;
          v183 = v285;
          v187 = v269;
          v186 = v274;
          v188 = v322;
          v209 = v264;
        }

        else
        {

          v207 = 0;
          v209 = v191;
        }

        [v192 addObject:v191];

        v25 = v292;
        v55 = v298;
        canonicalBundleIdentifier = v315;
      }

      else
      {
        v192 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v188, 0}];
        [v186 setObject:v192 forKeyedSubscript:v187];
      }

      v208 = v186;
    }

    else
    {
      v186 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v184, 0}];
      v208 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v186, v183, 0}];
      [v182 setObject:v208 forKeyedSubscript:@"AllDevices"];
      v55 = v298;
    }
  }

  if (zoneByDeviceCopy && dateByDeviceCopy)
  {
    v210 = zoneByDeviceCopy;
    v211 = dateByDeviceCopy;
    v212 = eventCopy;
    v213 = v55;
    v214 = v25;
    v215 = [v210 objectForKeyedSubscript:v214];

    if (!v215)
    {
      timeZone = [v212 timeZone];
      if (timeZone)
      {
        [v210 setObject:timeZone forKeyedSubscript:v214];
      }

      else
      {
        localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
        [v210 setObject:localTimeZone forKeyedSubscript:v214];
      }
    }

    endDate12 = [v213 endDate];
    v219 = [v211 objectForKeyedSubscript:v214];
    v220 = v219;
    if (!v219 || [v219 compare:endDate12] == -1)
    {
      [v211 setObject:endDate12 forKeyedSubscript:v214];
    }

    v221 = v210;
    v222 = v211;
    v223 = v212;
    v224 = v213;
    v225 = [v221 objectForKeyedSubscript:@"AllDevices"];

    v55 = v298;
    if (!v225)
    {
      timeZone2 = [v223 timeZone];
      if (timeZone2)
      {
        [v221 setObject:timeZone2 forKeyedSubscript:@"AllDevices"];
      }

      else
      {
        localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
        [v221 setObject:localTimeZone2 forKeyedSubscript:@"AllDevices"];
      }
    }

    endDate13 = [v224 endDate];
    v229 = [v222 objectForKeyedSubscript:@"AllDevices"];
    v230 = v229;
    if (!v229 || [v229 compare:endDate13] == -1)
    {
      [v222 setObject:endDate13 forKeyedSubscript:@"AllDevices"];
    }
  }

  v231 = byDeviceCopy;
  if (byDeviceCopy)
  {
    v232 = byDeviceCopy;
    v233 = v25;
    v234 = v294;
    v235 = unboundIntervalCopy;
    v236 = [v232 objectForKeyedSubscript:v233];
    if (v236)
    {
      v237 = v236;
      v238 = v234;
      v239 = v235;
      v240 = [v237 objectForKeyedSubscript:v238];
      if (v240)
      {
        v286 = v238;
        v309 = v237;
        v316 = v235;
        v323 = v234;
        v241 = v240;
        v282 = v239;
        v242 = v239;
        v332 = 0u;
        v333 = 0u;
        v334 = 0u;
        v335 = 0u;
        v243 = v241;
        v244 = [v243 countByEnumeratingWithState:&v332 objects:v336 count:16];
        if (v244)
        {
          v245 = v244;
          v270 = v233;
          v275 = v232;
          v331 = 0;
          v246 = *v333;
          v265 = v242;
          do
          {
            for (i = 0; i != v245; ++i)
            {
              if (*v333 != v246)
              {
                objc_enumerationMutation(v243);
              }

              v248 = *(*(&v332 + 1) + 8 * i);
              if ([v248 intersectsDateInterval:v242])
              {
                startDate13 = [v248 startDate];
                startDate14 = [v242 startDate];
                v251 = [startDate13 earlierDate:startDate14];

                endDate14 = [v248 endDate];
                endDate15 = [v242 endDate];
                v254 = [endDate14 laterDate:endDate15];

                v255 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v251 endDate:v254];
                if (v331)
                {
                  [v331 addObject:v248];
                }

                else
                {
                  v331 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v248, 0}];
                }

                v242 = v255;
              }
            }

            v245 = [v243 countByEnumeratingWithState:&v332 objects:v336 count:16];
          }

          while (v245);

          v256 = v331;
          if (v331)
          {
            [v243 removeObjectsInArray:v331];
          }

          v25 = v292;
          v233 = v270;
          v232 = v275;
          v257 = v265;
        }

        else
        {

          v256 = 0;
          v257 = v242;
          v25 = v292;
        }

        [v243 addObject:v242];

        v55 = v298;
        v235 = v316;
        v234 = v323;
        v237 = v309;
        v239 = v282;
        v238 = v286;
      }

      else
      {
        v243 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v239, 0}];
        [v237 setObject:v243 forKeyedSubscript:v238];
      }

      v258 = v237;
    }

    else
    {
      v237 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v235, 0}];
      v258 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v237, v234, 0}];
      [v232 setObject:v258 forKeyedSubscript:v233];
    }

    v231 = byDeviceCopy;
  }
}

- (void)_enumerateCurrentApplicationUsageIntervalsDuringInterval:(id)interval exemptApplications:(id)applications referenceDate:(id)date focalOnly:(BOOL)only block:(id)block
{
  onlyCopy = only;
  v59 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  applicationsCopy = applications;
  dateCopy = date;
  blockCopy = block;
  keyPathForAppUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppUsageDataDictionaries];
  context = [(USUsageQuerying *)self context];
  v14 = [context objectForKeyedSubscript:keyPathForAppUsageDataDictionaries];
  if (v14)
  {
    v38 = context;
    v39 = keyPathForAppUsageDataDictionaries;
    appUsageBundleID = [MEMORY[0x277CFE338] appUsageBundleID];
    appUsageStartDate = [MEMORY[0x277CFE338] appUsageStartDate];
    isUsageTrusted = [MEMORY[0x277CFE338] isUsageTrusted];
    appUsageType = [MEMORY[0x277CFE338] appUsageType];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v37 = v14;
    obj = v14;
    v15 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
    if (v15)
    {
      v16 = v15;
      v50 = *v53;
      v41 = applicationsCopy;
      do
      {
        v17 = 0;
        v47 = v16;
        do
        {
          if (*v53 != v50)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v52 + 1) + 8 * v17);
          v19 = [v18 objectForKeyedSubscript:{appUsageType, v37}];
          v20 = v19;
          if (!v19 || (v21 = [v19 integerValue], !onlyCopy) || v21 == 1)
          {
            v22 = [v18 objectForKeyedSubscript:appUsageBundleID];
            v23 = v22;
            if (applicationsCopy && v22 && [applicationsCopy containsObject:v22])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                [USUsageQuerying _enumerateCurrentApplicationUsageIntervalsDuringInterval:v23 exemptApplications:&v57 referenceDate:? focalOnly:? block:?];
              }
            }

            else
            {
              v24 = [v18 objectForKeyedSubscript:appUsageStartDate];
              v25 = [v18 objectForKeyedSubscript:isUsageTrusted];
              v26 = v25;
              v27 = MEMORY[0x277CBEC38];
              if (v25)
              {
                v27 = v25;
              }

              v28 = v27;

              v29 = intervalCopy;
              v30 = v24;
              v31 = dateCopy;
              startDate = [v29 startDate];
              v33 = [startDate laterDate:v30];

              endDate = [v29 endDate];
              v35 = [endDate earlierDate:v31];

              if ([v33 compare:v35] == 1)
              {
                v36 = 0;
              }

              else
              {
                v36 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v33 endDate:v35];
              }

              if (v36)
              {
                blockCopy[2](blockCopy, v36, v30, v23, [v28 BOOLValue]);
              }

              applicationsCopy = v41;
              v16 = v47;
            }
          }

          ++v17;
        }

        while (v16 != v17);
        v16 = [obj countByEnumeratingWithState:&v52 objects:v58 count:16];
      }

      while (v16);
    }

    context = v38;
    keyPathForAppUsageDataDictionaries = v39;
    v14 = v37;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
  }
}

- (id)_getWebDomainsFromWebUsageEvents:(id)events videoUsageEvents:(id)usageEvents interval:(id)interval referenceDate:(id)date focalOnly:(BOOL)only
{
  onlyCopy = only;
  v52 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  usageEventsCopy = usageEvents;
  intervalCopy = interval;
  dateCopy = date;
  v13 = objc_opt_new();
  webDomain = [MEMORY[0x277CFE1D0] webDomain];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v15 = eventsCopy;
  v16 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v47;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v47 != v18)
        {
          objc_enumerationMutation(v15);
        }

        metadata = [*(*(&v46 + 1) + 8 * i) metadata];
        v21 = [metadata objectForKeyedSubscript:webDomain];

        if (v21)
        {
          [v13 addObject:v21];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v46 objects:v51 count:16];
    }

    while (v17);
  }

  if (usageEventsCopy)
  {
    v33 = intervalCopy;
    v22 = [MEMORY[0x277CFE168] URL];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v34 = usageEventsCopy;
    v23 = usageEventsCopy;
    v24 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v43;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v43 != v26)
          {
            objc_enumerationMutation(v23);
          }

          metadata2 = [*(*(&v42 + 1) + 8 * j) metadata];
          v29 = [metadata2 objectForKeyedSubscript:v22];

          host = [v29 host];
          if (host)
          {
            [v13 addObject:host];
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v42 objects:v50 count:16];
      }

      while (v25);
    }

    intervalCopy = v33;
    usageEventsCopy = v34;
  }

  v40[0] = MEMORY[0x277D85DD0];
  v40[1] = 3221225472;
  v40[2] = __102__USUsageQuerying__getWebDomainsFromWebUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke;
  v40[3] = &unk_279E0A060;
  v31 = v13;
  v41 = v31;
  [(USUsageQuerying *)self _enumerateCurrentWebUsageIntervalsDuringInterval:intervalCopy exemptWebDomains:0 referenceDate:dateCopy focalOnly:onlyCopy block:v40];
  if (usageEventsCopy)
  {
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __102__USUsageQuerying__getWebDomainsFromWebUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke_2;
    v38[3] = &unk_279E09FC0;
    v39 = v31;
    [(USUsageQuerying *)self _enumerateCurrentVideoUsageIntervalsDuringInterval:intervalCopy exemptApplications:0 exemptWebDomains:0 referenceDate:dateCopy block:v38];
  }

  return v31;
}

void __102__USUsageQuerying__getWebDomainsFromWebUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  [a2 duration];
  if (v5 > 0.0)
  {
    [*(a1 + 32) addObject:v6];
  }
}

void __102__USUsageQuerying__getWebDomainsFromWebUsageEvents_videoUsageEvents_interval_referenceDate_focalOnly___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  [a2 duration];
  v8 = v9;
  if (v9 && v7 > 0.0)
  {
    [*(a1 + 32) addObject:v9];
    v8 = v9;
  }
}

- (id)_computeWebUsageWithEvents:(id)events exemptWebDomains:(id)domains timeZoneByDevice:(id)device lastEventDateByDevice:(id)byDevice categoryUsageIntervalsByDevice:(id)intervalsByDevice aggregatedApplicationUsageIntervalsByDevice:(id)usageIntervalsByDevice aggregatedWebUsageIntervalsByDevice:(id)webUsageIntervalsByDevice categoryByWebDomain:(id)self0 partition:(id)self1 referenceDate:(id)self2 focalOnly:(BOOL)self3
{
  domainsCopy = domains;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  intervalsByDeviceCopy = intervalsByDevice;
  usageIntervalsByDeviceCopy = usageIntervalsByDevice;
  webUsageIntervalsByDeviceCopy = webUsageIntervalsByDevice;
  domainCopy = domain;
  partitionCopy = partition;
  dateCopy = date;
  eventsCopy = events;
  v21 = objc_opt_new();
  webDomain = [MEMORY[0x277CFE1D0] webDomain];
  isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
  v47 = [MEMORY[0x277CFE168] URL];
  appMediaUsageStream = [MEMORY[0x277CFE298] appMediaUsageStream];
  name = [appMediaUsageStream name];

  endDate = [partitionCopy endDate];
  v82[0] = MEMORY[0x277D85DD0];
  v82[1] = 3221225472;
  v82[2] = __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke;
  v82[3] = &unk_279E0A088;
  v83 = name;
  v84 = v47;
  v85 = webDomain;
  v86 = domainsCopy;
  v87 = partitionCopy;
  v88 = isUsageTrusted;
  selfCopy = self;
  v25 = v21;
  v90 = v25;
  v26 = intervalsByDeviceCopy;
  v91 = v26;
  v52 = usageIntervalsByDeviceCopy;
  v92 = v52;
  v27 = webUsageIntervalsByDeviceCopy;
  v93 = v27;
  v28 = domainCopy;
  v94 = v28;
  v29 = deviceCopy;
  v95 = v29;
  v49 = byDeviceCopy;
  v96 = v49;
  v64 = isUsageTrusted;
  v30 = partitionCopy;
  v48 = domainsCopy;
  v62 = webDomain;
  v60 = v47;
  v58 = name;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:v82];

  v74[0] = MEMORY[0x277D85DD0];
  v74[1] = 3221225472;
  v74[2] = __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke_93;
  v74[3] = &unk_279E0A0B0;
  v74[4] = self;
  v31 = v25;
  v75 = v31;
  v32 = v26;
  v76 = v32;
  v33 = v52;
  v77 = v33;
  v34 = v27;
  v78 = v34;
  v35 = v28;
  v79 = v35;
  v36 = v29;
  v80 = v36;
  v37 = v49;
  v81 = v37;
  [(USUsageQuerying *)self _enumerateCurrentWebUsageIntervalsDuringInterval:v30 exemptWebDomains:v48 referenceDate:dateCopy focalOnly:only block:v74];
  v66[0] = MEMORY[0x277D85DD0];
  v66[1] = 3221225472;
  v66[2] = __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke_2;
  v66[3] = &unk_279E0A0D8;
  v66[4] = self;
  v38 = v31;
  v67 = v38;
  v68 = v32;
  v69 = v33;
  v70 = v34;
  v71 = v35;
  v72 = v36;
  v73 = v37;
  v56 = v37;
  v55 = v36;
  v39 = v35;
  v40 = v34;
  v41 = v33;
  v42 = v32;
  [(USUsageQuerying *)self _enumerateCurrentVideoUsageIntervalsDuringInterval:v30 exemptApplications:0 exemptWebDomains:v48 referenceDate:dateCopy block:v66];

  v43 = v73;
  v44 = v38;

  return v38;
}

void __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 syncDeviceID];
  v6 = v5;
  v7 = @"LocalDevice";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = [v3 stream];
  v10 = [v9 name];

  LODWORD(v9) = [v10 isEqualToString:a1[4]];
  v11 = [v3 metadata];
  v12 = v11;
  if (v9)
  {
    v13 = [v11 objectForKeyedSubscript:a1[5]];

    v14 = [v13 host];
    v12 = v13;
  }

  else
  {
    v14 = [v11 objectForKeyedSubscript:a1[6]];
  }

  if (v14)
  {
    v15 = a1[7];
    if (v15 && [v15 containsObject:v14])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
      {
        __267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke_cold_1();
      }
    }

    else
    {
      v16 = a1[8];
      v17 = v3;
      v18 = v16;
      v19 = [v18 startDate];
      v20 = [v17 startDate];
      v21 = [v19 laterDate:v20];

      v22 = [v18 endDate];

      v23 = [v17 endDate];
      v24 = [v22 earlierDate:v23];

      if ([v21 compare:v24] == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v21 endDate:v24];
      }

      if (v25)
      {
        v26 = [v17 metadata];
        v27 = [v26 objectForKeyedSubscript:a1[9]];
        v28 = v27;
        v29 = MEMORY[0x277CBEC38];
        if (v27)
        {
          v29 = v27;
        }

        v30 = v29;

        v31 = a1[10];
        v32 = [v30 BOOLValue];

        [v31 _updateWebUsageWithInterval:v25 webDomain:v14 trustedWebUsage:v32 deviceIdentifier:v8 event:v17 webUsageIntervalsByDevice:a1[11] categoryUsageIntervalsByDevice:a1[12] aggregatedApplicationUsageIntervalsByDevice:a1[13] aggregatedWebUsageIntervalsByDevice:a1[14] categoryByWebDomain:a1[15] timeZoneByDevice:a1[16] lastEventDateByDevice:a1[17]];
      }
    }
  }
}

id *__267__USUsageQuerying__computeWebUsageWithEvents_exemptWebDomains_timeZoneByDevice_lastEventDateByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByWebDomain_partition_referenceDate_focalOnly___block_invoke_2(id *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5)
  {
    return [result[4] _updateWebUsageWithInterval:a2 webDomain:a5 trustedWebUsage:a6 deviceIdentifier:@"LocalDevice" event:0 webUsageIntervalsByDevice:result[5] categoryUsageIntervalsByDevice:result[6] aggregatedApplicationUsageIntervalsByDevice:result[7] aggregatedWebUsageIntervalsByDevice:result[8] categoryByWebDomain:result[9] timeZoneByDevice:result[10] lastEventDateByDevice:result[11]];
  }

  return result;
}

- (void)_updateWebUsageWithInterval:(id)interval webDomain:(id)domain trustedWebUsage:(BOOL)usage deviceIdentifier:(id)identifier event:(id)event webUsageIntervalsByDevice:(id)device categoryUsageIntervalsByDevice:(id)byDevice aggregatedApplicationUsageIntervalsByDevice:(id)self0 aggregatedWebUsageIntervalsByDevice:(id)self1 categoryByWebDomain:(id)self2 timeZoneByDevice:(id)self3 lastEventDateByDevice:(id)self4
{
  usageCopy = usage;
  v368 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  domainCopy = domain;
  identifierCopy = identifier;
  eventCopy = event;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  *(&v347 + 1) = intervalsByDevice;
  *&v347 = usageIntervalsByDevice;
  webDomainCopy = webDomain;
  zoneByDeviceCopy = zoneByDevice;
  dateByDeviceCopy = dateByDevice;
  v342 = domainCopy;
  v337 = usageCopy;
  v22 = [USTrustIdentifier identifierWithIdentifier:domainCopy trusted:usageCopy];
  v23 = deviceCopy;
  v24 = identifierCopy;
  v25 = v22;
  v26 = intervalCopy;
  v27 = [v23 objectForKeyedSubscript:v24];
  v343 = v24;
  if (v27)
  {
    v28 = v27;
    v29 = v25;
    v30 = v26;
    v31 = [v28 objectForKeyedSubscript:v29];
    if (v31)
    {
      v32 = v31;
      v352 = v30;
      v33 = v30;
      v363 = 0u;
      v364 = 0u;
      v365 = 0u;
      v366 = 0u;
      v34 = v32;
      v35 = [v34 countByEnumeratingWithState:&v363 objects:v367 count:16];
      if (v35)
      {
        v319 = v29;
        v326 = v28;
        v332 = v26;
        v348 = v25;
        v350 = v23;
        v36 = 0;
        v37 = *v364;
        v311 = v33;
        do
        {
          v38 = 0;
          v355 = v35;
          do
          {
            if (*v364 != v37)
            {
              objc_enumerationMutation(v34);
            }

            v39 = *(*(&v363 + 1) + 8 * v38);
            if ([v39 intersectsDateInterval:v33])
            {
              v40 = v34;
              startDate = [v39 startDate];
              startDate2 = [v33 startDate];
              v43 = [startDate earlierDate:startDate2];

              endDate = [v39 endDate];
              [v33 endDate];
              v46 = v45 = v36;
              v47 = [endDate laterDate:v46];

              v36 = v45;
              v48 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v43 endDate:v47];

              if (v45)
              {
                [v45 addObject:v39];
              }

              else
              {
                v36 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v39, 0}];
              }

              v33 = v48;
              v34 = v40;
              v35 = v355;
            }

            v38 = v38 + 1;
          }

          while (v35 != v38);
          v35 = [v34 countByEnumeratingWithState:&v363 objects:v367 count:16];
        }

        while (v35);

        if (v36)
        {
          [v34 removeObjectsInArray:v36];
          v23 = v350;
          v35 = v36;
        }

        else
        {
          v35 = 0;
          v23 = v350;
        }

        v25 = v348;
        v28 = v326;
        v26 = v332;
        v50 = v311;
        v29 = v319;
      }

      else
      {

        v50 = v33;
      }

      [v34 addObject:v33];

      v24 = v343;
      v30 = v352;
    }

    else
    {
      v34 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v30, 0}];
      [v28 setObject:v34 forKeyedSubscript:v29];
    }
  }

  else
  {
    v49 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v26, 0}];
    v28 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v49, v25, 0}];
    [v23 setObject:v28 forKeyedSubscript:v24];
  }

  v51 = v23;
  v52 = v25;
  v53 = v26;
  v54 = [v51 objectForKeyedSubscript:@"AllDevices"];
  v349 = v53;
  v351 = v51;
  v353 = v52;
  if (v54)
  {
    v55 = v54;
    v56 = v52;
    v57 = v53;
    v58 = [v55 objectForKeyedSubscript:v56];
    if (v58)
    {
      v59 = v58;
      v60 = v57;
      v363 = 0u;
      v364 = 0u;
      v365 = 0u;
      v366 = 0u;
      v61 = v59;
      v62 = [v61 countByEnumeratingWithState:&v363 objects:v367 count:16];
      if (v62)
      {
        v63 = v62;
        v320 = v57;
        v327 = v56;
        v333 = v55;
        v356 = 0;
        v64 = *v364;
        v312 = v60;
        v52 = v353;
        v65 = v61;
        do
        {
          for (i = 0; i != v63; ++i)
          {
            if (*v364 != v64)
            {
              objc_enumerationMutation(v65);
            }

            v67 = *(*(&v363 + 1) + 8 * i);
            if ([v67 intersectsDateInterval:v60])
            {
              startDate3 = [v67 startDate];
              startDate4 = [v60 startDate];
              v70 = [startDate3 earlierDate:startDate4];

              endDate2 = [v67 endDate];
              endDate3 = [v60 endDate];
              v73 = [endDate2 laterDate:endDate3];

              v74 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v70 endDate:v73];
              if (v356)
              {
                [v356 addObject:v67];
              }

              else
              {
                v356 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v67, 0}];
              }

              v60 = v74;
              v51 = v351;
              v52 = v353;
            }
          }

          v63 = [v65 countByEnumeratingWithState:&v363 objects:v367 count:16];
        }

        while (v63);

        v75 = v356;
        if (v356)
        {
          [v65 removeObjectsInArray:v356];
        }

        v24 = v343;
        v56 = v327;
        v55 = v333;
        v61 = v65;
        v76 = v312;
        v57 = v320;
      }

      else
      {

        v75 = 0;
        v76 = v60;
        v24 = v343;
        v52 = v353;
      }

      [v61 addObject:v60];

      v53 = v349;
    }

    else
    {
      v61 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v57, 0}];
      [v55 setObject:v61 forKeyedSubscript:v56];
    }

    v77 = v55;
  }

  else
  {
    v55 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v53, 0}];
    v77 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v55, v52, 0}];
    [v51 setObject:v77 forKeyedSubscript:@"AllDevices"];
  }

  if (byDeviceCopy)
  {
    v78 = [webDomainCopy objectForKeyedSubscript:v342];
    identifier = [v78 identifier];
    v80 = identifier;
    v81 = *MEMORY[0x277CF95E8];
    if (identifier)
    {
      v81 = identifier;
    }

    v82 = v81;

    v83 = byDeviceCopy;
    v84 = v24;
    v85 = v82;
    v86 = v53;
    v87 = [v83 objectForKeyedSubscript:v84];
    if (v87)
    {
      v334 = v84;
      v88 = v87;
      v89 = v85;
      v90 = v86;
      v91 = [v88 objectForKeyedSubscript:v89];
      if (v91)
      {
        v321 = v89;
        v328 = v88;
        v92 = v91;
        v313 = v90;
        v93 = v90;
        v363 = 0u;
        v364 = 0u;
        v365 = 0u;
        v366 = 0u;
        v94 = v92;
        v95 = [v94 countByEnumeratingWithState:&v363 objects:v367 count:16];
        if (v95)
        {
          v293 = v86;
          v299 = v85;
          v305 = v83;
          v357 = 0;
          v96 = *v364;
          v288 = v93;
          v97 = v94;
          do
          {
            for (j = 0; j != v95; j = j + 1)
            {
              if (*v364 != v96)
              {
                objc_enumerationMutation(v97);
              }

              v99 = *(*(&v363 + 1) + 8 * j);
              if ([v99 intersectsDateInterval:v93])
              {
                startDate5 = [v99 startDate];
                startDate6 = [v93 startDate];
                v102 = [startDate5 earlierDate:startDate6];

                endDate4 = [v99 endDate];
                endDate5 = [v93 endDate];
                v105 = [endDate4 laterDate:endDate5];

                v106 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v102 endDate:v105];
                if (v357)
                {
                  [v357 addObject:v99];
                }

                else
                {
                  v357 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v99, 0}];
                }

                v53 = v349;

                v93 = v106;
              }
            }

            v95 = [v97 countByEnumeratingWithState:&v363 objects:v367 count:16];
          }

          while (v95);

          v95 = v357;
          if (v357)
          {
            [v97 removeObjectsInArray:v357];
          }

          v52 = v353;
          v85 = v299;
          v83 = v305;
          v94 = v97;
          v107 = v288;
          v86 = v293;
        }

        else
        {

          v107 = v93;
          v52 = v353;
        }

        [v94 addObject:v93];

        v51 = v351;
        v89 = v321;
        v88 = v328;
        v110 = v313;
      }

      else
      {
        v94 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v90, 0}];
        [v88 setObject:v94 forKeyedSubscript:v89];
        v110 = v90;
        v52 = v353;
      }

      v108 = v88;
      v109 = v334;
    }

    else
    {
      v88 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v86, 0}];
      v108 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v88, v85, 0}];
      [v83 setObject:v108 forKeyedSubscript:v84];
      v109 = v84;
      v52 = v353;
    }

    v111 = v83;
    v112 = v85;
    v113 = v86;
    v114 = [v111 objectForKeyedSubscript:@"AllDevices"];
    if (v114)
    {
      v115 = v114;
      v116 = v112;
      v117 = v113;
      v118 = [v115 objectForKeyedSubscript:v116];
      if (v118)
      {
        v306 = v116;
        v314 = v115;
        v322 = v113;
        v329 = v112;
        v335 = v111;
        v119 = v118;
        v300 = v117;
        v120 = v117;
        v363 = 0u;
        v364 = 0u;
        v365 = 0u;
        v366 = 0u;
        v121 = v119;
        v122 = [v121 countByEnumeratingWithState:&v363 objects:v367 count:16];
        if (v122)
        {
          v123 = v122;
          v358 = 0;
          v124 = *v364;
          v294 = v120;
          do
          {
            for (k = 0; k != v123; ++k)
            {
              if (*v364 != v124)
              {
                objc_enumerationMutation(v121);
              }

              v126 = *(*(&v363 + 1) + 8 * k);
              if ([v126 intersectsDateInterval:v120])
              {
                startDate7 = [v126 startDate];
                startDate8 = [v120 startDate];
                v129 = [startDate7 earlierDate:startDate8];

                endDate6 = [v126 endDate];
                endDate7 = [v120 endDate];
                v132 = [endDate6 laterDate:endDate7];

                v133 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v129 endDate:v132];
                if (v358)
                {
                  [v358 addObject:v126];
                }

                else
                {
                  v358 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v126, 0}];
                }

                v120 = v133;
              }
            }

            v123 = [v121 countByEnumeratingWithState:&v363 objects:v367 count:16];
          }

          while (v123);

          v53 = v349;
          v134 = v358;
          if (v358)
          {
            [v121 removeObjectsInArray:v358];
          }

          v51 = v351;
          v52 = v353;
          v135 = v294;
        }

        else
        {

          v134 = 0;
          v135 = v120;
          v51 = v351;
        }

        [v121 addObject:v120];

        v112 = v329;
        v111 = v335;
        v115 = v314;
        v113 = v322;
        v137 = v121;
        v117 = v300;
        v116 = v306;
      }

      else
      {
        v137 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v117, 0}];
        [v115 setObject:v137 forKeyedSubscript:v116];
      }

      v136 = v115;
    }

    else
    {
      v115 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v113, 0}];
      v136 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v115, v112, 0}];
      [v111 setObject:v136 forKeyedSubscript:@"AllDevices"];
    }

    v24 = v343;
  }

  if (v347 != 0)
  {
    v138 = [webDomainCopy objectForKeyedSubscript:v342];
    v139 = v138;
    if (*(&v347 + 1))
    {
      canonicalBundleIdentifier = [v138 canonicalBundleIdentifier];
      v141 = canonicalBundleIdentifier;
      if (canonicalBundleIdentifier)
      {
        v330 = v139;
        v336 = canonicalBundleIdentifier;
        v142 = [USTrustIdentifier identifierWithIdentifier:canonicalBundleIdentifier trusted:v337];
        v143 = *(&v347 + 1);
        v144 = v24;
        v145 = v142;
        v146 = v53;
        v147 = [v143 objectForKeyedSubscript:v144];
        if (v147)
        {
          v148 = v147;
          v149 = v145;
          v150 = v146;
          v151 = [v148 objectForKeyedSubscript:v149];
          v323 = v145;
          if (v151)
          {
            v289 = v149;
            v295 = v148;
            v301 = v144;
            v307 = v146;
            v315 = v143;
            v152 = v151;
            v153 = v150;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v154 = v152;
            v155 = [v154 countByEnumeratingWithState:&v363 objects:v367 count:16];
            v284 = v150;
            if (v155)
            {
              v156 = v155;
              v359 = 0;
              v157 = *v364;
              v282 = v153;
              do
              {
                for (m = 0; m != v156; ++m)
                {
                  if (*v364 != v157)
                  {
                    objc_enumerationMutation(v154);
                  }

                  v159 = *(*(&v363 + 1) + 8 * m);
                  if ([v159 intersectsDateInterval:v153])
                  {
                    v160 = v154;
                    startDate9 = [v159 startDate];
                    startDate10 = [v153 startDate];
                    v163 = [startDate9 earlierDate:startDate10];

                    endDate8 = [v159 endDate];
                    endDate9 = [v153 endDate];
                    v166 = [endDate8 laterDate:endDate9];

                    v167 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v163 endDate:v166];
                    if (v359)
                    {
                      [v359 addObject:v159];
                    }

                    else
                    {
                      v359 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v159, 0}];
                    }

                    v53 = v349;

                    v153 = v167;
                    v154 = v160;
                  }
                }

                v156 = [v154 countByEnumeratingWithState:&v363 objects:v367 count:16];
              }

              while (v156);

              v168 = v359;
              if (v359)
              {
                [v154 removeObjectsInArray:v359];
              }

              v24 = v343;
              v149 = v289;
              v169 = v282;
            }

            else
            {

              v168 = 0;
              v169 = v153;
              v24 = v343;
              v149 = v289;
            }

            [v154 addObject:v153];

            v51 = v351;
            v146 = v307;
            v143 = v315;
            v148 = v295;
            v171 = v301;
            v150 = v284;
          }

          else
          {
            v171 = v144;
            v154 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v150, 0}];
            [v148 setObject:v154 forKeyedSubscript:v149];
          }

          v170 = v148;
          v144 = v171;
          v145 = v323;
        }

        else
        {
          v148 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v146, 0}];
          v170 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v148, v145, 0}];
          [v143 setObject:v170 forKeyedSubscript:v144];
        }

        v172 = v143;
        v173 = v145;
        v174 = v146;
        v175 = [v172 objectForKeyedSubscript:@"AllDevices"];
        if (v175)
        {
          v176 = v175;
          v177 = v173;
          v178 = v174;
          v179 = [v176 objectForKeyedSubscript:v177];
          v316 = v172;
          if (v179)
          {
            v296 = v177;
            v302 = v176;
            v308 = v174;
            v324 = v173;
            v180 = v179;
            v290 = v178;
            v181 = v178;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v182 = v180;
            v183 = [v182 countByEnumeratingWithState:&v363 objects:v367 count:16];
            if (v183)
            {
              v184 = 0;
              v185 = *v364;
              v285 = v181;
              do
              {
                v186 = 0;
                v360 = v183;
                do
                {
                  if (*v364 != v185)
                  {
                    objc_enumerationMutation(v182);
                  }

                  v187 = *(*(&v363 + 1) + 8 * v186);
                  if ([v187 intersectsDateInterval:v181])
                  {
                    startDate11 = [v187 startDate];
                    startDate12 = [v181 startDate];
                    v190 = [startDate11 earlierDate:startDate12];

                    endDate10 = [v187 endDate];
                    [v181 endDate];
                    v193 = v192 = v184;
                    v194 = [endDate10 laterDate:v193];

                    v184 = v192;
                    v195 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v190 endDate:v194];

                    if (v192)
                    {
                      [v192 addObject:v187];
                    }

                    else
                    {
                      v184 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v187, 0}];
                    }

                    v181 = v195;
                    v183 = v360;
                  }

                  v186 = v186 + 1;
                }

                while (v183 != v186);
                v183 = [v182 countByEnumeratingWithState:&v363 objects:v367 count:16];
              }

              while (v183);

              v52 = v353;
              if (v184)
              {
                [v182 removeObjectsInArray:v184];
                v53 = v349;
                v51 = v351;
                v183 = v184;
              }

              else
              {
                v183 = 0;
                v53 = v349;
                v51 = v351;
              }

              v199 = v285;
            }

            else
            {

              v199 = v181;
              v51 = v351;
              v52 = v353;
            }

            [v182 addObject:v181];

            v24 = v343;
            v173 = v324;
            v176 = v302;
            v174 = v308;
            v198 = v182;
            v178 = v290;
            v177 = v296;
          }

          else
          {
            v198 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v178, 0}];
            [v176 setObject:v198 forKeyedSubscript:v177];
            v52 = v353;
          }

          v196 = v176;
          v197 = v316;
        }

        else
        {
          v176 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v174, 0}];
          v196 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v176, v173, 0}];
          [v172 setObject:v196 forKeyedSubscript:@"AllDevices"];
          v197 = v172;
          v52 = v353;
        }

        v139 = v330;
        v141 = v336;
      }
    }

    else
    {
      v141 = 0;
    }

    if (v347 && !v141)
    {
      primaryWebDomain = [v139 primaryWebDomain];
      v201 = primaryWebDomain;
      if (primaryWebDomain)
      {
        v325 = primaryWebDomain;
        v331 = v139;
        v202 = [USTrustIdentifier identifierWithIdentifier:primaryWebDomain trusted:v337];
        v203 = v347;
        v204 = v24;
        v205 = v202;
        v206 = v53;
        v207 = [v203 objectForKeyedSubscript:v204];
        if (v207)
        {
          v208 = v207;
          v209 = v205;
          v210 = v206;
          v211 = [v208 objectForKeyedSubscript:v209];
          v338 = v205;
          if (v211)
          {
            v291 = v209;
            v297 = v208;
            v303 = v204;
            v309 = v206;
            v317 = v203;
            v212 = v211;
            v213 = v210;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v214 = v212;
            v215 = [v214 countByEnumeratingWithState:&v363 objects:v367 count:16];
            v286 = v210;
            if (v215)
            {
              v216 = v215;
              v361 = 0;
              v217 = *v364;
              v283 = v213;
              do
              {
                for (n = 0; n != v216; ++n)
                {
                  if (*v364 != v217)
                  {
                    objc_enumerationMutation(v214);
                  }

                  v219 = *(*(&v363 + 1) + 8 * n);
                  if ([v219 intersectsDateInterval:v213])
                  {
                    v220 = v214;
                    startDate13 = [v219 startDate];
                    startDate14 = [v213 startDate];
                    v223 = [startDate13 earlierDate:startDate14];

                    endDate11 = [v219 endDate];
                    endDate12 = [v213 endDate];
                    v226 = [endDate11 laterDate:endDate12];

                    v227 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v223 endDate:v226];
                    if (v361)
                    {
                      [v361 addObject:v219];
                    }

                    else
                    {
                      v361 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v219, 0}];
                    }

                    v213 = v227;
                    v53 = v349;
                    v214 = v220;
                  }
                }

                v216 = [v214 countByEnumeratingWithState:&v363 objects:v367 count:16];
              }

              while (v216);

              v228 = v361;
              if (v361)
              {
                [v214 removeObjectsInArray:v361];
              }

              v24 = v343;
              v209 = v291;
              v229 = v283;
            }

            else
            {

              v228 = 0;
              v229 = v213;
              v24 = v343;
              v209 = v291;
            }

            [v214 addObject:v213];

            v51 = v351;
            v206 = v309;
            v203 = v317;
            v208 = v297;
            v231 = v303;
            v210 = v286;
          }

          else
          {
            v231 = v204;
            v214 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v210, 0}];
            [v208 setObject:v214 forKeyedSubscript:v209];
          }

          v230 = v208;
          v204 = v231;
          v205 = v338;
        }

        else
        {
          v208 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v206, 0}];
          v230 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v208, v205, 0}];
          [v203 setObject:v230 forKeyedSubscript:v204];
        }

        v232 = v203;
        v233 = v205;
        v234 = v206;
        v235 = [v232 objectForKeyedSubscript:@"AllDevices"];
        if (v235)
        {
          v236 = v235;
          v237 = v233;
          v238 = v234;
          v239 = [v236 objectForKeyedSubscript:v237];
          v318 = v232;
          if (v239)
          {
            v298 = v237;
            v304 = v236;
            v310 = v234;
            v339 = v233;
            v240 = v239;
            v292 = v238;
            v241 = v238;
            v363 = 0u;
            v364 = 0u;
            v365 = 0u;
            v366 = 0u;
            v242 = v240;
            v243 = [v242 countByEnumeratingWithState:&v363 objects:v367 count:16];
            if (v243)
            {
              v244 = v243;
              v245 = 0;
              v246 = *v364;
              v287 = v241;
              do
              {
                v247 = 0;
                v362 = v244;
                do
                {
                  if (*v364 != v246)
                  {
                    objc_enumerationMutation(v242);
                  }

                  v248 = *(*(&v363 + 1) + 8 * v247);
                  if ([v248 intersectsDateInterval:v241])
                  {
                    startDate15 = [v248 startDate];
                    startDate16 = [v241 startDate];
                    v251 = [startDate15 earlierDate:startDate16];

                    endDate13 = [v248 endDate];
                    [v241 endDate];
                    v254 = v253 = v245;
                    v255 = [endDate13 laterDate:v254];

                    v245 = v253;
                    v256 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v251 endDate:v255];

                    if (v253)
                    {
                      [v253 addObject:v248];
                    }

                    else
                    {
                      v245 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v248, 0}];
                    }

                    v241 = v256;
                    v244 = v362;
                  }

                  ++v247;
                }

                while (v244 != v247);
                v244 = [v242 countByEnumeratingWithState:&v363 objects:v367 count:16];
              }

              while (v244);

              v53 = v349;
              v52 = v353;
              if (v245)
              {
                [v242 removeObjectsInArray:v245];
              }

              v51 = v351;
              v257 = v287;
            }

            else
            {

              v245 = 0;
              v257 = v241;
              v51 = v351;
              v52 = v353;
            }

            [v242 addObject:v241];

            v24 = v343;
            v233 = v339;
            v236 = v304;
            v234 = v310;
            v260 = v242;
            v238 = v292;
            v237 = v298;
          }

          else
          {
            v260 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v238, 0}];
            [v236 setObject:v260 forKeyedSubscript:v237];
            v52 = v353;
          }

          v258 = v236;
          v259 = v318;
        }

        else
        {
          v236 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v234, 0}];
          v258 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v236, v233, 0}];
          [v232 setObject:v258 forKeyedSubscript:@"AllDevices"];
          v259 = v232;
          v52 = v353;
        }

        v201 = v325;
        v139 = v331;
      }

      v141 = 0;
    }
  }

  if (zoneByDeviceCopy && dateByDeviceCopy)
  {
    v261 = zoneByDeviceCopy;
    v262 = dateByDeviceCopy;
    v263 = eventCopy;
    v264 = v53;
    v265 = v24;
    v266 = [v261 objectForKeyedSubscript:v265];

    if (!v266)
    {
      timeZone = [v263 timeZone];
      if (timeZone)
      {
        [v261 setObject:timeZone forKeyedSubscript:v265];
      }

      else
      {
        localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
        [v261 setObject:localTimeZone forKeyedSubscript:v265];
      }
    }

    endDate14 = [v264 endDate];
    v270 = [v262 objectForKeyedSubscript:v265];
    v271 = v270;
    if (!v270 || [v270 compare:endDate14] == -1)
    {
      [v262 setObject:endDate14 forKeyedSubscript:v265];
    }

    v272 = v261;
    v273 = v262;
    v274 = v263;
    v275 = v264;
    v276 = [v272 objectForKeyedSubscript:@"AllDevices"];

    v24 = v343;
    if (!v276)
    {
      timeZone2 = [v274 timeZone];
      if (timeZone2)
      {
        [v272 setObject:timeZone2 forKeyedSubscript:@"AllDevices"];
      }

      else
      {
        localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
        [v272 setObject:localTimeZone2 forKeyedSubscript:@"AllDevices"];
      }
    }

    endDate15 = [v275 endDate];
    v280 = [v273 objectForKeyedSubscript:@"AllDevices"];
    v281 = v280;
    if (!v280 || [v280 compare:endDate15] == -1)
    {
      [v273 setObject:endDate15 forKeyedSubscript:@"AllDevices"];
    }

    v52 = v353;
  }
}

- (void)_enumerateCurrentWebUsageIntervalsDuringInterval:(id)interval exemptWebDomains:(id)domains referenceDate:(id)date focalOnly:(BOOL)only block:(id)block
{
  onlyCopy = only;
  v65 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  domainsCopy = domains;
  dateCopy = date;
  blockCopy = block;
  keyPathForAppWebUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppWebUsageDataDictionaries];
  context = [(USUsageQuerying *)self context];
  v15 = [context objectForKeyedSubscript:keyPathForAppWebUsageDataDictionaries];
  if (v15)
  {
    v42 = context;
    v43 = keyPathForAppWebUsageDataDictionaries;
    appWebUsageWebDomain = [MEMORY[0x277CFE338] appWebUsageWebDomain];
    appWebUsageStartDate = [MEMORY[0x277CFE338] appWebUsageStartDate];
    isUsageTrusted = [MEMORY[0x277CFE338] isUsageTrusted];
    appWebUsageBundleID = [MEMORY[0x277CFE338] appWebUsageBundleID];
    appWebUsageType = [MEMORY[0x277CFE338] appWebUsageType];
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v41 = v15;
    obj = v15;
    v17 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v59;
      v49 = domainsCopy;
      v48 = onlyCopy;
      v46 = *v59;
      v47 = appWebUsageType;
      do
      {
        v20 = 0;
        v54 = v18;
        do
        {
          if (*v59 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v58 + 1) + 8 * v20);
          v22 = [v21 objectForKeyedSubscript:{appWebUsageType, v41}];
          integerValue = [v22 integerValue];
          integerValue2 = [v22 integerValue];
          v25 = integerValue == 1;
          if (!onlyCopy)
          {
            v25 = integerValue == 1 || integerValue2 == 0;
          }

          if (v25)
          {
            v26 = [v21 objectForKeyedSubscript:appWebUsageWebDomain];
            v27 = v26;
            if (domainsCopy && v26 && [domainsCopy containsObject:v26])
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
              {
                [USUsageQuerying _enumerateCurrentWebUsageIntervalsDuringInterval:v27 exemptWebDomains:&v63 referenceDate:? focalOnly:? block:?];
              }
            }

            else
            {
              v28 = [v21 objectForKeyedSubscript:appWebUsageStartDate];
              v29 = [v21 objectForKeyedSubscript:isUsageTrusted];
              v30 = v29;
              v31 = MEMORY[0x277CBEC38];
              if (v29)
              {
                v31 = v29;
              }

              v57 = v31;

              v32 = intervalCopy;
              v33 = v28;
              v34 = dateCopy;
              startDate = [v32 startDate];
              v36 = [startDate laterDate:v33];

              endDate = [v32 endDate];
              v38 = [endDate earlierDate:v34];

              if ([v36 compare:v38] == 1)
              {
                v39 = 0;
              }

              else
              {
                v39 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v36 endDate:v38];
              }

              if (v39)
              {
                v40 = [v21 objectForKeyedSubscript:appWebUsageBundleID];
                blockCopy[2](blockCopy, v39, v27, v40, [v57 BOOLValue]);
              }

              domainsCopy = v49;
              onlyCopy = v48;
              v19 = v46;
              appWebUsageType = v47;
              v18 = v54;
            }
          }

          ++v20;
        }

        while (v18 != v20);
        v18 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
      }

      while (v18);
    }

    context = v42;
    keyPathForAppWebUsageDataDictionaries = v43;
    v15 = v41;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
  }
}

- (void)_computeNowPlayingUsageWithEvents:(id)events categoryUsageIntervalsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice partition:(id)partition referenceDate:(id)date
{
  deviceCopy = device;
  byDeviceCopy = byDevice;
  dateByDeviceCopy = dateByDevice;
  dateCopy = date;
  partitionCopy = partition;
  eventsCopy = events;
  endDate = [partitionCopy endDate];
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __147__USUsageQuerying__computeNowPlayingUsageWithEvents_categoryUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_partition_referenceDate___block_invoke;
  v28 = &unk_279E0A100;
  selfCopy = self;
  v21 = deviceCopy;
  v30 = v21;
  v22 = byDeviceCopy;
  v31 = v22;
  v23 = dateByDeviceCopy;
  v32 = v23;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:&v25];

  selfCopy = [(USUsageQuerying *)self _currentNowPlayingUsageIntervalsDuringInterval:partitionCopy referenceDate:dateCopy, v25, v26, v27, v28, selfCopy];

  if (selfCopy)
  {
    [(USUsageQuerying *)self _updateNowPlayingUsageWithInterval:selfCopy event:0 deviceIdentifier:@"LocalDevice" categoryUsageIntervalsByDevice:v21 timeZoneByDevice:v22 lastEventDateByDevice:v23];
  }
}

void __147__USUsageQuerying__computeNowPlayingUsageWithEvents_categoryUsageIntervalsByDevice_timeZoneByDevice_lastEventDateByDevice_partition_referenceDate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 source];
  v5 = [v4 syncDeviceID];
  v6 = v5;
  v7 = @"LocalDevice";
  if (v5)
  {
    v7 = v5;
  }

  v8 = v7;

  v9 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [v3 startDate];
  v11 = [v3 endDate];
  v12 = [v9 initWithStartDate:v10 endDate:v11];

  [*(a1 + 32) _updateNowPlayingUsageWithInterval:v12 event:v3 deviceIdentifier:v8 categoryUsageIntervalsByDevice:*(a1 + 40) timeZoneByDevice:*(a1 + 48) lastEventDateByDevice:*(a1 + 56)];
}

- (void)_updateNowPlayingUsageWithInterval:(id)interval event:(id)event deviceIdentifier:(id)identifier categoryUsageIntervalsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice
{
  v127 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  eventCopy = event;
  identifierCopy = identifier;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  dateByDeviceCopy = dateByDevice;
  if (deviceCopy)
  {
    v105 = dateByDeviceCopy;
    v18 = *MEMORY[0x277CF95D0];
    v19 = intervalCopy;
    v20 = deviceCopy;
    v21 = identifierCopy;
    v22 = v18;
    v106 = v19;
    v23 = v19;
    v24 = [v20 objectForKeyedSubscript:v21];
    if (v24)
    {
      v25 = v24;
      v26 = v23;
      v27 = [v25 objectForKeyedSubscript:v22];
      if (v27)
      {
        v99 = v22;
        v101 = v20;
        v103 = identifierCopy;
        v28 = v27;
        v29 = v26;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        v30 = [v28 countByEnumeratingWithState:&v122 objects:v126 count:16];
        v98 = v26;
        if (v30)
        {
          v31 = v30;
          v107 = byDeviceCopy;
          v110 = deviceCopy;
          obj = 0;
          v32 = *v123;
          v114 = *v123;
          v116 = v28;
          do
          {
            v33 = 0;
            v118 = v31;
            do
            {
              if (*v123 != v32)
              {
                objc_enumerationMutation(v28);
              }

              v34 = *(*(&v122 + 1) + 8 * v33);
              if ([v34 intersectsDateInterval:v29])
              {
                v35 = v25;
                v36 = v21;
                v37 = v23;
                startDate = [v34 startDate];
                startDate2 = [v29 startDate];
                v40 = [startDate earlierDate:startDate2];

                endDate = [v34 endDate];
                endDate2 = [v29 endDate];
                v43 = [endDate laterDate:endDate2];

                v44 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v40 endDate:v43];
                if (obj)
                {
                  [obj addObject:v34];
                }

                else
                {
                  obj = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v34, 0}];
                }

                v23 = v37;

                v29 = v44;
                v21 = v36;
                v25 = v35;
                v32 = v114;
                v28 = v116;
                v31 = v118;
              }

              ++v33;
            }

            while (v31 != v33);
            v31 = [v28 countByEnumeratingWithState:&v122 objects:v126 count:16];
          }

          while (v31);
          v45 = obj;
          if (obj)
          {
            [v28 removeObjectsInArray:obj];
          }

          identifierCopy = v103;
          byDeviceCopy = v107;
          deviceCopy = v110;
        }

        else
        {
          v45 = 0;
        }

        [v28 addObject:v29];

        v22 = v99;
        v20 = v101;
        v26 = v98;
      }

      else
      {
        v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v26, 0}];
        [v25 setObject:v28 forKeyedSubscript:v22];
      }
    }

    else
    {
      v46 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v23, 0}];
      v25 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v46, v22, 0}];
      [v20 setObject:v25 forKeyedSubscript:v21];
    }

    v47 = v20;
    v48 = v22;
    v49 = v23;
    v50 = [v47 objectForKeyedSubscript:@"AllDevices"];
    if (v50)
    {
      v51 = v50;
      v52 = v49;
      v53 = [v51 objectForKeyedSubscript:v48];
      intervalCopy = v106;
      if (v53)
      {
        v111 = deviceCopy;
        v104 = identifierCopy;
        v54 = v53;
        v55 = v52;
        v122 = 0u;
        v123 = 0u;
        v124 = 0u;
        v125 = 0u;
        obja = v54;
        v56 = [v54 countByEnumeratingWithState:&v122 objects:v126 count:16];
        if (v56)
        {
          v57 = v56;
          v100 = v52;
          v102 = v51;
          v115 = v49;
          v117 = v48;
          v119 = v47;
          v108 = byDeviceCopy;
          v58 = 0;
          v59 = *v123;
          v60 = obja;
          do
          {
            for (i = 0; i != v57; ++i)
            {
              if (*v123 != v59)
              {
                objc_enumerationMutation(v60);
              }

              v62 = *(*(&v122 + 1) + 8 * i);
              if ([v62 intersectsDateInterval:v55])
              {
                startDate3 = [v62 startDate];
                startDate4 = [v55 startDate];
                v65 = [startDate3 earlierDate:startDate4];

                endDate3 = [v62 endDate];
                endDate4 = [v55 endDate];
                v68 = [endDate3 laterDate:endDate4];

                v69 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v65 endDate:v68];
                if (v58)
                {
                  [v58 addObject:v62];
                }

                else
                {
                  v58 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v62, 0}];
                }

                v55 = v69;
                v60 = obja;
              }
            }

            v57 = [v60 countByEnumeratingWithState:&v122 objects:v126 count:16];
          }

          while (v57);
          if (v58)
          {
            [v60 removeObjectsInArray:v58];
          }

          v51 = v102;
          identifierCopy = v104;
          byDeviceCopy = v108;
          v48 = v117;
          v47 = v119;
          v49 = v115;
          v70 = v60;
          v52 = v100;
        }

        else
        {
          v58 = 0;
          v70 = obja;
        }

        [v70 addObject:v55];

        intervalCopy = v106;
        deviceCopy = v111;
      }

      else
      {
        v70 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v52, 0}];
        [v51 setObject:v70 forKeyedSubscript:v48];
      }

      v71 = v51;
    }

    else
    {
      v51 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v49, 0}];
      v71 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{v51, v48, 0}];
      [v47 setObject:v71 forKeyedSubscript:@"AllDevices"];
      intervalCopy = v106;
    }

    dateByDeviceCopy = v105;
  }

  if (byDeviceCopy && dateByDeviceCopy)
  {
    v109 = byDeviceCopy;
    v112 = deviceCopy;
    v72 = dateByDeviceCopy;
    v73 = byDeviceCopy;
    v74 = v72;
    v75 = v72;
    v76 = eventCopy;
    v77 = intervalCopy;
    v78 = identifierCopy;
    v79 = v77;
    v80 = v78;
    v81 = v78;
    v82 = [v73 objectForKeyedSubscript:v81];

    if (!v82)
    {
      timeZone = [v76 timeZone];
      if (timeZone)
      {
        [v73 setObject:timeZone forKeyedSubscript:v81];
      }

      else
      {
        localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
        [v73 setObject:localTimeZone forKeyedSubscript:v81];
      }
    }

    endDate5 = [v79 endDate];
    v86 = [v75 objectForKeyedSubscript:v81];
    v87 = v86;
    if (!v86 || [v86 compare:endDate5] == -1)
    {
      [v75 setObject:endDate5 forKeyedSubscript:v81];
    }

    v88 = v73;
    v89 = v75;
    v90 = v76;
    v91 = v79;
    v92 = [v88 objectForKeyedSubscript:@"AllDevices"];

    if (!v92)
    {
      timeZone2 = [v90 timeZone];
      if (timeZone2)
      {
        [v88 setObject:timeZone2 forKeyedSubscript:@"AllDevices"];
      }

      else
      {
        localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
        [v88 setObject:localTimeZone2 forKeyedSubscript:@"AllDevices"];
      }
    }

    endDate6 = [v91 endDate];
    v96 = [v89 objectForKeyedSubscript:@"AllDevices"];
    v97 = v96;
    if (!v96 || [v96 compare:endDate6] == -1)
    {
      [v89 setObject:endDate6 forKeyedSubscript:@"AllDevices"];
    }

    identifierCopy = v80;
    byDeviceCopy = v109;
    deviceCopy = v112;
    dateByDeviceCopy = v74;
  }
}

- (id)_currentNowPlayingUsageIntervalsDuringInterval:(id)interval referenceDate:(id)date
{
  intervalCopy = interval;
  dateCopy = date;
  keyPathForNowPlayingDataDictionary = [MEMORY[0x277CFE338] keyPathForNowPlayingDataDictionary];
  context = [(USUsageQuerying *)self context];
  v10 = [context objectForKeyedSubscript:keyPathForNowPlayingDataDictionary];
  v11 = v10;
  if (v10)
  {
    if (usageContextContainsPlayingQuickLookVideo(v10))
    {
      v12 = [context lastModifiedDateForContextualKeyPath:keyPathForNowPlayingDataDictionary];
      v13 = intervalCopy;
      v14 = dateCopy;
      startDate = [v13 startDate];
      v21 = v12;
      v16 = [startDate laterDate:v12];

      endDate = [v13 endDate];
      v18 = [endDate earlierDate:v14];

      if ([v16 compare:v18] == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v16 endDate:v18];
      }

      goto LABEL_10;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
  }

  v19 = 0;
LABEL_10:

  return v19;
}

- (void)_enumerateCurrentVideoUsageIntervalsDuringInterval:(id)interval exemptApplications:(id)applications exemptWebDomains:(id)domains referenceDate:(id)date block:(id)block
{
  v59 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  applicationsCopy = applications;
  domainsCopy = domains;
  dateCopy = date;
  blockCopy = block;
  keyPathForAppMediaUsageDataDictionaries = [MEMORY[0x277CFE338] keyPathForAppMediaUsageDataDictionaries];
  context = [(USUsageQuerying *)self context];
  v15 = [context objectForKeyedSubscript:keyPathForAppMediaUsageDataDictionaries];
  if (v15)
  {
    v35 = context;
    v36 = keyPathForAppMediaUsageDataDictionaries;
    appMediaUsageBundleID = [MEMORY[0x277CFE338] appMediaUsageBundleID];
    appMediaUsageStartDate = [MEMORY[0x277CFE338] appMediaUsageStartDate];
    appMediaUsageURL = [MEMORY[0x277CFE338] appMediaUsageURL];
    isUsageTrusted = [MEMORY[0x277CFE338] isUsageTrusted];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = v15;
    obj = v15;
    v47 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v47)
    {
      v39 = *v51;
      v40 = applicationsCopy;
      do
      {
        for (i = 0; i != v47; ++i)
        {
          if (*v51 != v39)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v50 + 1) + 8 * i);
          v18 = [v17 objectForKeyedSubscript:appMediaUsageBundleID];
          if (applicationsCopy && [applicationsCopy containsObject:v18])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              [USUsageQuerying _enumerateCurrentVideoUsageIntervalsDuringInterval:v18 exemptApplications:&v57 exemptWebDomains:? referenceDate:? block:?];
            }

            v18 = 0;
          }

          v49 = [v17 objectForKeyedSubscript:appMediaUsageURL];
          host = [v49 host];
          v20 = host;
          if (domainsCopy && host && [domainsCopy containsObject:host])
          {
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
            {
              [USUsageQuerying _enumerateCurrentVideoUsageIntervalsDuringInterval:v18 exemptApplications:&v55 exemptWebDomains:? referenceDate:? block:?];
            }

            v20 = 0;
          }

          v21 = [v17 objectForKeyedSubscript:appMediaUsageStartDate];
          v22 = [v17 objectForKeyedSubscript:isUsageTrusted];
          v23 = v22;
          v24 = MEMORY[0x277CBEC38];
          if (v22)
          {
            v24 = v22;
          }

          v25 = v24;

          v26 = intervalCopy;
          v27 = v21;
          v28 = dateCopy;
          startDate = [v26 startDate];
          v30 = [startDate laterDate:v27];

          endDate = [v26 endDate];
          v32 = [endDate earlierDate:v28];

          if ([v30 compare:v32] == 1)
          {
            v33 = 0;
          }

          else
          {
            v33 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v30 endDate:v32];
          }

          if (v33)
          {
            blockCopy[2](blockCopy, v33, v27, v18, v20, [v25 BOOLValue]);
          }

          applicationsCopy = v40;
        }

        v47 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v47);
    }

    context = v35;
    keyPathForAppMediaUsageDataDictionaries = v36;
    v15 = v34;
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [USUsageQuerying _currentScreenTimeIntervalDuringInterval:usageStartDate:referenceDate:];
  }
}

- (id)_computeNotificationsWithEvents:(id)events timeZoneByDevice:(id)device lastEventDateByDevice:(id)byDevice partition:(id)partition
{
  deviceCopy = device;
  byDeviceCopy = byDevice;
  partitionCopy = partition;
  eventsCopy = events;
  v14 = objc_opt_new();
  appBundleID = [MEMORY[0x277CFE158] appBundleID];
  bundleID = [MEMORY[0x277CFE240] bundleID];
  isUsageTrusted = [MEMORY[0x277CFE1D0] isUsageTrusted];
  endDate = [partitionCopy endDate];

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __100__USUsageQuerying__computeNotificationsWithEvents_timeZoneByDevice_lastEventDateByDevice_partition___block_invoke;
  v28[3] = &unk_279E09F70;
  v29 = appBundleID;
  v30 = bundleID;
  v31 = isUsageTrusted;
  selfCopy = self;
  v19 = v14;
  v33 = v19;
  v34 = deviceCopy;
  v35 = byDeviceCopy;
  v20 = byDeviceCopy;
  v21 = deviceCopy;
  v22 = isUsageTrusted;
  v23 = bundleID;
  v24 = appBundleID;
  [(USUsageQuerying *)self _enumerateEvents:eventsCopy intervalEndDate:endDate block:v28];

  v25 = v35;
  v26 = v19;

  return v19;
}

void __100__USUsageQuerying__computeNotificationsWithEvents_timeZoneByDevice_lastEventDateByDevice_partition___block_invoke(void *a1, void *a2)
{
  v20 = a2;
  v3 = [v20 metadata];
  v4 = [v3 objectForKeyedSubscript:a1[4]];
  v5 = [v3 objectForKeyedSubscript:a1[5]];
  v6 = v5;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = v7;
    v9 = [v20 source];
    v10 = [v9 syncDeviceID];
    v11 = v10;
    v12 = @"LocalDevice";
    if (v10)
    {
      v12 = v10;
    }

    v13 = v12;

    v14 = [v3 objectForKeyedSubscript:a1[6]];
    v15 = v14;
    v16 = MEMORY[0x277CBEC38];
    if (v14)
    {
      v16 = v14;
    }

    v17 = v16;

    v18 = a1[7];
    v19 = [v17 BOOLValue];

    [v18 _updateNotificationsWithEvent:v20 bundleIdentifier:v8 trustedNotification:v19 deviceIdentifier:v13 notificationsByDevice:a1[8] timeZoneByDevice:a1[9] lastEventDateByDevice:a1[10]];
  }
}

- (void)_updateNotificationsWithEvent:(id)event bundleIdentifier:(id)identifier trustedNotification:(BOOL)notification deviceIdentifier:(id)deviceIdentifier notificationsByDevice:(id)device timeZoneByDevice:(id)byDevice lastEventDateByDevice:(id)dateByDevice
{
  notificationCopy = notification;
  eventCopy = event;
  deviceIdentifierCopy = deviceIdentifier;
  deviceCopy = device;
  byDeviceCopy = byDevice;
  dateByDeviceCopy = dateByDevice;
  v19 = [USTrustIdentifier identifierWithIdentifier:identifier trusted:notificationCopy];
  v20 = deviceCopy;
  v21 = deviceIdentifierCopy;
  v22 = [v20 objectForKeyedSubscript:v21];
  if (v22)
  {
    v23 = v22;
    v24 = MEMORY[0x277CCABB0];
    v25 = [v22 objectForKeyedSubscript:v19];
    v26 = [v24 numberWithUnsignedInteger:{objc_msgSend(v25, "unsignedIntegerValue") + 1}];
    [v23 setObject:v26 forKeyedSubscript:v19];
  }

  else
  {
    v23 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{&unk_2880871F8, v19, 0}];
    [v20 setObject:v23 forKeyedSubscript:v21];
  }

  v27 = v20;
  v28 = v19;
  v29 = [v27 objectForKeyedSubscript:@"AllDevices"];
  if (v29)
  {
    v30 = v29;
    v31 = MEMORY[0x277CCABB0];
    v32 = [v29 objectForKeyedSubscript:v28];
    v33 = [v31 numberWithUnsignedInteger:{objc_msgSend(v32, "unsignedIntegerValue") + 1}];
    [v30 setObject:v33 forKeyedSubscript:v28];
  }

  else
  {
    v30 = [objc_alloc(MEMORY[0x277CBEB38]) initWithObjectsAndKeys:{&unk_2880871F8, v28, 0}];
    [v27 setObject:v30 forKeyedSubscript:@"AllDevices"];
  }

  v34 = objc_alloc(MEMORY[0x277CCA970]);
  startDate = [eventCopy startDate];
  endDate = [eventCopy endDate];
  v37 = [v34 initWithStartDate:startDate endDate:endDate];

  v38 = byDeviceCopy;
  v39 = dateByDeviceCopy;
  v40 = eventCopy;
  v41 = v37;
  v42 = v21;
  v43 = [v38 objectForKeyedSubscript:v42];

  if (!v43)
  {
    timeZone = [v40 timeZone];
    if (timeZone)
    {
      [v38 setObject:timeZone forKeyedSubscript:v42];
    }

    else
    {
      localTimeZone = [MEMORY[0x277CBEBB0] localTimeZone];
      [v38 setObject:localTimeZone forKeyedSubscript:v42];
    }
  }

  endDate2 = [v41 endDate];
  v47 = [v39 objectForKeyedSubscript:v42];
  v48 = v47;
  if (!v47 || [v47 compare:endDate2] == -1)
  {
    [v39 setObject:endDate2 forKeyedSubscript:v42];
  }

  v49 = v38;
  v50 = v39;
  v58 = v40;
  v51 = v41;
  v52 = [v49 objectForKeyedSubscript:@"AllDevices"];

  if (!v52)
  {
    timeZone2 = [v58 timeZone];
    if (timeZone2)
    {
      [v49 setObject:timeZone2 forKeyedSubscript:@"AllDevices"];
    }

    else
    {
      localTimeZone2 = [MEMORY[0x277CBEBB0] localTimeZone];
      [v49 setObject:localTimeZone2 forKeyedSubscript:@"AllDevices"];
    }
  }

  endDate3 = [v51 endDate];
  v56 = [v50 objectForKeyedSubscript:@"AllDevices"];
  v57 = v56;
  if (!v56 || [v56 compare:endDate3] == -1)
  {
    [v50 setObject:endDate3 forKeyedSubscript:@"AllDevices"];
  }
}

- (void)_enumerateEvents:(id)events intervalEndDate:(id)date block:(id)block
{
  dateCopy = date;
  blockCopy = block;
  eventsCopy = events;
  v10 = objc_opt_new();
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __58__USUsageQuerying__enumerateEvents_intervalEndDate_block___block_invoke;
  v14[3] = &unk_279E0A128;
  v15 = dateCopy;
  v16 = v10;
  v17 = blockCopy;
  v11 = blockCopy;
  v12 = v10;
  v13 = dateCopy;
  [eventsCopy enumerateObjectsUsingBlock:v14];
  [eventsCopy removeObjectsAtIndexes:v12];
}

void __58__USUsageQuerying__enumerateEvents_intervalEndDate_block___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(a1 + 32);
  v13 = v7;
  v9 = [v7 startDate];
  v10 = [v8 compare:v9];

  if (v10 == -1)
  {
    *a4 = 1;
  }

  else
  {
    v11 = [v13 endDate];
    v12 = [v11 compare:*(a1 + 32)];

    if (v12 == -1)
    {
      [*(a1 + 40) addIndex:a3];
    }

    (*(*(a1 + 48) + 16))();
  }
}

+ (void)queryUsageDuringInterval:(id)interval partitionInterval:(double)partitionInterval adjustedStartDate:(id)date eventStreams:(id)streams categoryByBundleIdentifier:(id)identifier categoryByWebDomain:(id)domain usageReportHandler:(id)handler completionHandler:(id)self0
{
  v76 = *MEMORY[0x277D85DE8];
  intervalCopy = interval;
  dateCopy = date;
  streamsCopy = streams;
  identifierCopy = identifier;
  domainCopy = domain;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  v44 = intervalCopy;
  startDate = [intervalCopy startDate];
  v43 = [[USUsageAccumulator alloc] initWithApplicationCategories:identifierCopy webCategories:domainCopy];
  if ([dateCopy compare:startDate] == -1)
  {
    v40 = [objc_alloc(MEMORY[0x277CF1A50]) initWithStartDate:dateCopy endDate:startDate maxEvents:0 lastN:0 reversed:0];
    v18 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(streamsCopy, "count")}];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v19 = streamsCopy;
    v20 = [v19 countByEnumeratingWithState:&v71 objects:v75 count:16];
    if (v20)
    {
      v21 = *v72;
      v22 = *MEMORY[0x277CF0E88];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v72 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v24 = *(*(&v71 + 1) + 8 * i);
          identifier = [v24 identifier];
          v26 = [identifier isEqualToString:v22];

          if ((v26 & 1) == 0)
          {
            [v18 addObject:v24];
          }
        }

        v20 = [v19 countByEnumeratingWithState:&v71 objects:v75 count:16];
      }

      while (v20);
    }

    v27 = [self _chronologicalPublisherWithOptions:v40 eventStreams:v18];
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke;
    v68[3] = &unk_279E0A330;
    v69 = v40;
    selfCopy = self;
    v65[0] = MEMORY[0x277D85DD0];
    v65[1] = 3221225472;
    v65[2] = __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_2;
    v65[3] = &unk_279E0A358;
    v66 = v43;
    v67 = startDate;
    v28 = v40;
    v29 = [v27 sinkWithCompletion:v68 receiveInput:v65];
  }

  v63[0] = 0;
  v63[1] = v63;
  v63[2] = 0x3032000000;
  v63[3] = __Block_byref_object_copy__1;
  v63[4] = __Block_byref_object_dispose__1;
  v64 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:startDate duration:partitionInterval];
  v30 = objc_alloc(MEMORY[0x277CF1A50]);
  endDate = [v44 endDate];
  v32 = [v30 initWithStartDate:startDate endDate:endDate maxEvents:0 lastN:0 reversed:0];

  v33 = [self _chronologicalPublisherWithOptions:v32 eventStreams:streamsCopy];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_155;
  v56[3] = &unk_279E0A380;
  v57 = v43;
  v61 = v63;
  v59 = handlerCopy;
  selfCopy2 = self;
  v34 = v32;
  v58 = v34;
  v35 = completionHandlerCopy;
  v60 = v35;
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_2_156;
  v50[3] = &unk_279E0A3A8;
  v54 = v63;
  v36 = v44;
  v51 = v36;
  v37 = v57;
  v52 = v37;
  v38 = v59;
  v53 = v38;
  partitionIntervalCopy = partitionInterval;
  v39 = [v33 sinkWithCompletion:v56 receiveInput:v50];

  _Block_object_dispose(v63, 8);
}

uint64_t __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_155(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 64) + 8) + 40);
  v5 = *(a1 + 48);
  v6 = a2;
  [v3 aggregateUsageForInterval:v4 usageReportHandler:v5];
  [*(a1 + 72) _completion:v6 options:*(a1 + 40)];

  result = *(a1 + 56);
  if (result)
  {
    v8 = *(result + 16);

    return v8();
  }

  return result;
}

void __184__USUsageQuerying_Biome__queryUsageDuringInterval_partitionInterval_adjustedStartDate_eventStreams_categoryByBundleIdentifier_categoryByWebDomain_usageReportHandler_completionHandler___block_invoke_2_156(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 eventBody];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v4 absoluteTimestamp], (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v6 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v3 timestamp];
    v5 = [v6 initWithTimeIntervalSinceReferenceDate:?];
  }

  v7 = [*(*(*(a1 + 56) + 8) + 40) startDate];
  if ([v5 compare:v7] == -1)
  {
  }

  else
  {
    v8 = [*(a1 + 32) containsDate:v5];

    if (v8)
    {
      if (([*(*(*(a1 + 56) + 8) + 40) containsDate:v5] & 1) == 0)
      {
        do
        {
          [*(a1 + 40) aggregateUsageForInterval:*(*(*(a1 + 56) + 8) + 40) usageReportHandler:*(a1 + 48)];
          v9 = [*(*(*(a1 + 56) + 8) + 40) endDate];
          v10 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 duration:*(a1 + 64)];
          v11 = *(*(a1 + 56) + 8);
          v12 = *(v11 + 40);
          *(v11 + 40) = v10;
        }

        while (![*(*(*(a1 + 56) + 8) + 40) containsDate:v5]);
      }

      [*(a1 + 40) accumulateEvent:v3 timestamp:v5];
      goto LABEL_12;
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v3 eventBody];
    v14 = 138543362;
    v15 = v13;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Skipping event that occurred outside of the report interval %{public}@", &v14, 0xCu);
  }

LABEL_12:
}

+ (id)_chronologicalPublisherWithOptions:(id)options eventStreams:(id)streams
{
  v29 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  streamsCopy = streams;
  if ([streamsCopy count])
  {
    firstObject = [streamsCopy firstObject];
    v8 = [firstObject publisherWithOptions:optionsCopy];
    if ([streamsCopy count] >= 2)
    {
      v21 = v8;
      v23 = optionsCopy;
      v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(streamsCopy, "count") - 1}];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v22 = streamsCopy;
      v10 = streamsCopy;
      v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v25;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v25 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v24 + 1) + 8 * i);
            identifier = [v15 identifier];
            identifier2 = [firstObject identifier];
            v18 = [identifier isEqualToString:identifier2];

            if ((v18 & 1) == 0)
            {
              v19 = [v15 publisherWithOptions:v23];
              [v9 addObject:v19];
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v12);
      }

      v8 = [v21 orderedMergeWithOthers:v9 comparator:&__block_literal_global_0];

      streamsCopy = v22;
      optionsCopy = v23;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __74__USUsageQuerying_Biome___chronologicalPublisherWithOptions_eventStreams___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = [v6 eventBody];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v7 absoluteTimestamp], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v9 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v6 timestamp];
    v8 = [v9 initWithTimeIntervalSinceReferenceDate:?];
  }

  v10 = v5;
  v11 = [v10 eventBody];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ([v11 absoluteTimestamp], (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v13 = objc_alloc(MEMORY[0x277CBEAA8]);
    [v10 timestamp];
    v12 = [v13 initWithTimeIntervalSinceReferenceDate:?];
  }

  v14 = [v8 compare:v12];
  return v14;
}

+ (void)_completion:(id)_completion options:(id)options
{
  v10 = *MEMORY[0x277D85DE8];
  _completionCopy = _completion;
  optionsCopy = options;
  state = [_completionCopy state];
  if (state == 1)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [USUsageQuerying(Biome) _completion:optionsCopy options:_completionCopy];
    }
  }

  else if (!state && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = optionsCopy;
    _os_log_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Successfully queried Biome for usage reports with options %{public}@", &v8, 0xCu);
  }
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[USUsageQuerying queryUsageDuringInterval:partitionInterval:focalOnly:completionHandler:]_block_invoke_2"];
  [v1 handleFailureInFunction:v0 file:@"USUsageQuerying.m" lineNumber:129 description:@"Expecting event types count to be 6"];
}

void __90__USUsageQuerying_queryUsageDuringInterval_partitionInterval_focalOnly_completionHandler___block_invoke_2_cold_2(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Found notification event with no bundle ID. Skipping event", buf, 2u);
}

void __473__USUsageQuerying__updateLocalReports_remoteReports_aggregateReports_nonIntersectingScreenTimeIntervals_intersectingScreenTimeIntervals_longestSessionByDevice_applicationUsageIntervals_unboundApplicationUsageIntervals_webUsageIntervalsByDevice_categoryUsageIntervalsByDevice_aggregatedApplicationUsageIntervalsByDevice_aggregatedWebUsageIntervalsByDevice_categoryByBundleIdentifier_categoryByWebDomain_notificationsByDevice_interval_timeZoneByDevice_lastEventDateByDevice___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:*(a1 + 192) object:*a2 file:@"USUsageQuerying.m" lineNumber:333 description:@"lastEventDate for a USUsageReport must not be nil"];
}

void __106__USUsageQuerying_queryForApplications_exemptApplications_webDomains_categories_interval_focalOnly_error___block_invoke_2_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[USUsageQuerying queryForApplications:exemptApplications:webDomains:categories:interval:focalOnly:error:]_block_invoke_2"];
  [v1 handleFailureInFunction:v0 file:@"USUsageQuerying.m" lineNumber:675 description:@"Expecting event types count to be 4"];
}

- (void)_computeUsageForApplications:exemptApplications:webDomains:categories:applicationUsageEvents:webUsageEvents:nowPlayingEvents:videoUsageEvents:categoryByBundleIdentifier:categoryByWebDomain:interval:referenceDate:focalOnly:.cold.1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v2 = 2114;
  v3 = v0;
  _os_log_debug_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Exempt bundleIdentifiers was %{public}@ and has been expanded to %{public}@", v1, 0x16u);
}

- (void)_computeUsageForApplications:exemptApplications:webDomains:categories:applicationUsageEvents:webUsageEvents:nowPlayingEvents:videoUsageEvents:categoryByBundleIdentifier:categoryByWebDomain:interval:referenceDate:focalOnly:.cold.2()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  v2 = 2114;
  v3 = v0;
  _os_log_debug_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG, "Exempt bundleIdentifiers %{public}@ have associated web domains %{public}@", v1, 0x16u);
}

- (void)_generateUsageTimeWithApplicationUsageIntervals:(uint64_t)a1 webUsageIntervalsByDevice:(uint64_t)a2 categoryUsageIntervalsByDevice:aggregatedApplicationUsageIntervalsByDevice:aggregatedWebUsageIntervalsByDevice:categoryByBundleIdentifier:categoryByWebDomain:applications:webDomains:categories:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"USUsageQuerying.m" lineNumber:848 description:@"Somehow had budgeted applications but no aggregated application usage intervals"];
}

- (void)_generateUsageTimeWithApplicationUsageIntervals:(uint64_t)a1 webUsageIntervalsByDevice:(uint64_t)a2 categoryUsageIntervalsByDevice:aggregatedApplicationUsageIntervalsByDevice:aggregatedWebUsageIntervalsByDevice:categoryByBundleIdentifier:categoryByWebDomain:applications:webDomains:categories:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"USUsageQuerying.m" lineNumber:897 description:@"Somehow had budgeted categories but no category usage intervals"];
}

void __86__USUsageQuerying_queryForUncategorizedLocalWebUsageDuringInterval_completionHandler___block_invoke_2_cold_1()
{
  v1 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[USUsageQuerying queryForUncategorizedLocalWebUsageDuringInterval:completionHandler:]_block_invoke_2"];
  [v1 handleFailureInFunction:v0 file:@"USUsageQuerying.m" lineNumber:939 description:@"Expecting event to be non-nil"];
}

@end