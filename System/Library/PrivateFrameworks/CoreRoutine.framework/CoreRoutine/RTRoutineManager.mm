@interface RTRoutineManager
+ (id)defaultManager;
+ (id)modeOfTransportationToString:(int64_t)string;
+ (id)routineModeToString:(int64_t)string;
- (RTRoutineManager)initWithRestorationIdentifier:(id)identifier targertUserSession:(BOOL)session;
- (id)_proxyForServicingSelector:(SEL)selector asynchronous:(BOOL)asynchronous withErrorHandler:(id)handler;
- (void)_createConnection;
- (void)_enumerateElevationsWithOptions:(id)options reply:(id)reply;
- (void)_enumerateStoredLocationsWithOptions:(id)options usingBlock:(id)block;
- (void)_launchTaskWithSelector:(SEL)selector remainingAttempts:(unint64_t)attempts proxyErrorHandler:(id)handler taskBlock:(id)block;
- (void)addBackgroundInertialOdometrySamples:(id)samples handler:(id)handler;
- (void)addElevations:(id)elevations handler:(id)handler;
- (void)addLocationOfInterestOfType:(int64_t)type mapItem:(id)item customLabel:(id)label handler:(id)handler;
- (void)clearAllVehicleEvents:(id)events;
- (void)clearAllVehicleEventsWithHandler:(id)handler;
- (void)clearRoutineWithHandler:(id)handler;
- (void)correctLabelForCurrentPlace:(id)place date:(id)date newLabel:(id)label handler:(id)handler;
- (void)correctLabelForVisitWithIdentifier:(id)identifier entryDate:(id)date originalLabel:(id)label newLabel:(id)newLabel handler:(id)handler;
- (void)createConnection;
- (void)dealloc;
- (void)deleteTripSegmentWithUUID:(id)d handler:(id)handler;
- (void)engageInVehicleEventWithIdentifier:(id)identifier;
- (void)enumerateElevationsWithOptions:(id)options reply:(id)reply;
- (void)enumerateObjectsWithOptions:(id)options usingBlock:(id)block;
- (void)enumerateStoredLocationsWithOptions:(id)options usingBlock:(id)block;
- (void)extendLifetimeOfVisitWithIdentifier:(id)identifier handler:(id)handler;
- (void)extendLifetimeOfVisitsWithIdentifiers:(id)identifiers handler:(id)handler;
- (void)fetchAllLocationsOfInterestForSettingsWithHandler:(id)handler;
- (void)fetchAuthorizedLocationStatus:(id)status;
- (void)fetchAutomaticVehicleEventDetectionSupportedWithHandler:(id)handler;
- (void)fetchBackgroundInertialOdometrySamplesWithOptions:(id)options handler:(id)handler;
- (void)fetchCloudSyncAuthorizationState:(id)state;
- (void)fetchContactScoresFromContactIDs:(id)ds completionHandler:(id)handler;
- (void)fetchCurrentPeopleDensity:(id)density;
- (void)fetchCurrentPredictedLocationsOfInterestLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler;
- (void)fetchDedupedLocationOfInterestIdentifiersWithIdentifier:(id)identifier handler:(id)handler;
- (void)fetchElevationsWithOptions:(id)options reply:(id)reply;
- (void)fetchEstimatedLocationAtDate:(id)date handler:(id)handler;
- (void)fetchEstimatedLocationAtDate:(id)date options:(id)options handler:(id)handler;
- (void)fetchFamiliarityIndexResultsWithOptions:(id)options handler:(id)handler;
- (void)fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)identifier handler:(id)handler;
- (void)fetchFormattedPostalAddressesFromMeCard:(id)card;
- (void)fetchLastVehicleEventsWithHandler:(id)handler;
- (void)fetchLearnedRoutesWithOptions:(id)options handler:(id)handler;
- (void)fetchLocationOfInterestAtLocation:(id)location withHandler:(id)handler;
- (void)fetchLocationOfInterestForRegion:(id)region withHandler:(id)handler;
- (void)fetchLocationOfInterestWithIdentifier:(id)identifier withHandler:(id)handler;
- (void)fetchLocationsCountForTripSegmentWithOptions:(id)options handler:(id)handler;
- (void)fetchLocationsForTripSegmentWithOptions:(id)options handler:(id)handler;
- (void)fetchLocationsOfInterestAssociatedToIdentifier:(id)identifier withHandler:(id)handler;
- (void)fetchLocationsOfInterestOfType:(int64_t)type withHandler:(id)handler;
- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate withHandler:(id)handler;
- (void)fetchLocationsOfInterestVisitedSinceDate:(id)date withHandler:(id)handler;
- (void)fetchLocationsOfInterestWithinDistance:(double)distance ofLocation:(id)location withHandler:(id)handler;
- (void)fetchLookbackWindowStartDateWithLocation:(id)location handler:(id)handler;
- (void)fetchMonitoredScenarioTriggerTypesWithHandler:(id)handler;
- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval withHandler:(id)handler;
- (void)fetchNextPredictedLocationsOfInterestWithHandler:(id)handler;
- (void)fetchPathToDiagnosticFilesWithOptions:(id)options handler:(id)handler;
- (void)fetchPeopleCountEventsHistory:(id)history completionHandler:(id)handler;
- (void)fetchPeopleDensityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler;
- (void)fetchPlaceInferencesWithOptions:(id)options handler:(id)handler;
- (void)fetchPredictedContextWithOptions:(id)options completionHandler:(id)handler;
- (void)fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date withHandler:(id)handler;
- (void)fetchPredictedLocationsOfInterestAssociatedToTitle:(id)title location:(id)location calendarIdentifier:(id)identifier withHandler:(id)handler;
- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate withHandler:(id)handler;
- (void)fetchPredictedLocationsOfInterestOnDate:(id)date withHandler:(id)handler;
- (void)fetchProximityHistoryFromEventIDs:(id)ds completionHandler:(id)handler;
- (void)fetchProximityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler;
- (void)fetchRemoteStatusWithHandler:(id)handler;
- (void)fetchRoutineEnabledWithHandler:(id)handler;
- (void)fetchRoutineModeFromLocation:(id)location withHandler:(id)handler;
- (void)fetchRoutineStateWithHandler:(id)handler;
- (void)fetchStoredVisitsWithOptions:(id)options handler:(id)handler;
- (void)fetchTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler;
- (void)fetchTripClusterMetadataWithOptions:(id)options handler:(id)handler;
- (void)fetchTripSegmentMetadataWithOptions:(id)options handler:(id)handler;
- (void)fetchTripSegmentsWithOptions:(id)options handler:(id)handler;
- (void)fetchVehiclesWithOptions:(id)options handler:(id)handler;
- (void)launchTaskWithSelector:(SEL)selector remainingAttempts:(unint64_t)attempts proxyErrorHandler:(id)handler taskBlock:(id)block;
- (void)onDensityUpdate:(id)update error:(id)error;
- (void)onLeechedLowConfidenceVisit:(id)visit withError:(id)error;
- (void)onLeechedVisit:(id)visit withError:(id)error;
- (void)onPlaceInferences:(id)inferences error:(id)error;
- (void)onPredictedContextResult:(id)result error:(id)error;
- (void)onRemoteStatusUpdate:(int64_t)update error:(id)error;
- (void)onScenarioTrigger:(id)trigger withError:(id)error;
- (void)onVehicleEvents:(id)events error:(id)error;
- (void)onVisit:(id)visit withError:(id)error;
- (void)performBluePOIQueryLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler;
- (void)processHindsightVisitsWithHandler:(id)handler;
- (void)purgeTripClusterTable:(id)table handler:(id)handler;
- (void)purgeTripClusterWithClusterID:(id)d handler:(id)handler;
- (void)removeLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler;
- (void)removeVisitWithIdentifier:(id)identifier handler:(id)handler;
- (void)setHintForRegionState:(int64_t)state significantRegion:(id)region withHandler:(id)handler;
- (void)setRoutineEnabled:(BOOL)enabled withHandler:(id)handler;
- (void)startLeechingLowConfidenceVisitsWithHandler:(id)handler;
- (void)startLeechingVisitsWithHandler:(id)handler;
- (void)startMonitoringForPeopleDiscovery:(id)discovery handler:(id)handler;
- (void)startMonitoringPlaceInferencesWithOptions:(id)options handler:(id)handler;
- (void)startMonitoringPredictedContextWithOptions:(id)options completionHandler:(id)handler;
- (void)startMonitoringRemoteStatusWithHandler:(id)handler;
- (void)startMonitoringScenarioTriggerOfType:(unint64_t)type withHandler:(id)handler;
- (void)startMonitoringVehicleEventsWithHandler:(id)handler;
- (void)startMonitoringVisitsWithHandler:(id)handler;
- (void)stopLeechingLowConfidenceVisits;
- (void)stopLeechingVisits;
- (void)stopMonitoringForPeopleDiscoveryWithHandler:(id)handler;
- (void)stopMonitoringPlaceInferences;
- (void)stopMonitoringPredictedContextWithHandler:(id)handler;
- (void)stopMonitoringRemoteStatusWithHandler:(id)handler;
- (void)stopMonitoringScenarioTriggerOfType:(unint64_t)type;
- (void)stopMonitoringVehicleEvents;
- (void)stopMonitoringVisits;
- (void)submitUserCurationForDate:(id)date newLabel:(id)label handler:(id)handler;
- (void)submitUserCurationForVisitDateRange:(id)range newLabel:(id)label handler:(id)handler;
- (void)updateCloudSyncProvisionedForAccount:(BOOL)account handler:(id)handler;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier customLabel:(id)label handler:(id)handler;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier mapItem:(id)item handler:(id)handler;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type customLabel:(id)label handler:(id)handler;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type handler:(id)handler;
- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type mapItem:(id)item customLabel:(id)label handler:(id)handler;
- (void)updateVehicleEventWithIdentifier:(id)identifier geoMapItem:(id)item;
- (void)updateVehicleEventWithIdentifier:(id)identifier location:(id)location;
- (void)updateVehicleEventWithIdentifier:(id)identifier notes:(id)notes;
- (void)updateVehicleEventWithIdentifier:(id)identifier photo:(id)photo;
- (void)userInteractionWithPredictedLocationOfInterest:(id)interest interaction:(unint64_t)interaction feedback:(id)feedback geoMapItem:(id)item handler:(id)handler;
- (void)vehicleEventAtLocation:(id)location notes:(id)notes handler:(id)handler;
@end

@implementation RTRoutineManager

uint64_t __34__RTRoutineManager_defaultManager__block_invoke()
{
  _MergedGlobals_19 = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

+ (id)defaultManager
{
  if (qword_1ED7C3840 != -1)
  {
    dispatch_once(&qword_1ED7C3840, &__block_literal_global);
  }

  v3 = _MergedGlobals_19;

  return v3;
}

- (void)createConnection
{
  queue = [(RTRoutineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__RTRoutineManager_createConnection__block_invoke;
  block[3] = &unk_1E80B3E70;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_createConnection
{
  xpcConnection = [(RTRoutineManager *)self xpcConnection];
  [xpcConnection invalidate];

  v5 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.routined.registration" options:4096];
  [(RTRoutineManager *)self setXpcConnection:v5];

  xpcConnection2 = [(RTRoutineManager *)self xpcConnection];

  if (xpcConnection2)
  {
    xpcConnection3 = [(RTRoutineManager *)self xpcConnection];
    xpcQueue = [(RTRoutineManager *)self xpcQueue];
    [xpcConnection3 _setQueue:xpcQueue];

    xpcConnection4 = [(RTRoutineManager *)self xpcConnection];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3DE5CB0];
    [xpcConnection4 setExportedInterface:v10];

    xpcConnection5 = [(RTRoutineManager *)self xpcConnection];
    v12 = [[RTRoutineManagerExportedObject alloc] initWithRoutineManager:self];
    [xpcConnection5 setExportedObject:v12];

    xpcConnection6 = [(RTRoutineManager *)self xpcConnection];
    exportedInterface = [xpcConnection6 exportedInterface];
    v15 = MEMORY[0x1E695DFD8];
    v16 = objc_opt_class();
    v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
    [exportedInterface setClasses:v17 forSelector:sel_onVehicleEvents_error_ argumentIndex:0 ofReply:0];

    xpcConnection7 = [(RTRoutineManager *)self xpcConnection];
    exportedInterface2 = [xpcConnection7 exportedInterface];
    v20 = MEMORY[0x1E695DFD8];
    v21 = objc_opt_class();
    v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
    [exportedInterface2 setClasses:v22 forSelector:sel_onDensityUpdate_error_ argumentIndex:0 ofReply:0];

    xpcConnection8 = [(RTRoutineManager *)self xpcConnection];
    exportedInterface3 = [xpcConnection8 exportedInterface];
    v25 = MEMORY[0x1E695DFD8];
    v26 = objc_opt_class();
    v27 = [v25 setWithObjects:{v26, objc_opt_class(), 0}];
    [exportedInterface3 setClasses:v27 forSelector:sel_onPlaceInferences_error_ argumentIndex:0 ofReply:0];

    xpcConnection9 = [(RTRoutineManager *)self xpcConnection];
    v29 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3DF2580];
    [xpcConnection9 setRemoteObjectInterface:v29];

    xpcConnection10 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface = [xpcConnection10 remoteObjectInterface];
    v32 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface setClasses:v32 forSelector:sel_fetchPathToDiagnosticFilesWithOptions_reply_ argumentIndex:0 ofReply:0];

    xpcConnection11 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface2 = [xpcConnection11 remoteObjectInterface];
    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    [remoteObjectInterface2 setClasses:v37 forSelector:sel_fetchLocationsOfInterestWithinDistance_ofLocation_reply_ argumentIndex:0 ofReply:1];

    xpcConnection12 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface3 = [xpcConnection12 remoteObjectInterface];
    v40 = MEMORY[0x1E695DFD8];
    v41 = objc_opt_class();
    v42 = [v40 setWithObjects:{v41, objc_opt_class(), 0}];
    [remoteObjectInterface3 setClasses:v42 forSelector:sel_fetchLocationsOfInterestOfType_reply_ argumentIndex:0 ofReply:1];

    xpcConnection13 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface4 = [xpcConnection13 remoteObjectInterface];
    v45 = MEMORY[0x1E695DFD8];
    v46 = objc_opt_class();
    v47 = [v45 setWithObjects:{v46, objc_opt_class(), 0}];
    [remoteObjectInterface4 setClasses:v47 forSelector:sel_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_reply_ argumentIndex:0 ofReply:1];

    xpcConnection14 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface5 = [xpcConnection14 remoteObjectInterface];
    v50 = MEMORY[0x1E695DFD8];
    v51 = objc_opt_class();
    v52 = [v50 setWithObjects:{v51, objc_opt_class(), 0}];
    [remoteObjectInterface5 setClasses:v52 forSelector:sel_fetchAllLocationsOfInterestForSettingsWithReply_ argumentIndex:0 ofReply:1];

    xpcConnection15 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface6 = [xpcConnection15 remoteObjectInterface];
    v55 = MEMORY[0x1E695DFD8];
    v56 = objc_opt_class();
    v57 = [v55 setWithObjects:{v56, objc_opt_class(), 0}];
    [remoteObjectInterface6 setClasses:v57 forSelector:sel_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_reply_ argumentIndex:0 ofReply:1];

    xpcConnection16 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface7 = [xpcConnection16 remoteObjectInterface];
    v60 = MEMORY[0x1E695DFD8];
    v61 = objc_opt_class();
    v62 = [v60 setWithObjects:{v61, objc_opt_class(), 0}];
    [remoteObjectInterface7 setClasses:v62 forSelector:sel_fetchLocationsOfInterestAssociatedToIdentifier_reply_ argumentIndex:0 ofReply:1];

    xpcConnection17 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface8 = [xpcConnection17 remoteObjectInterface];
    v65 = MEMORY[0x1E695DFD8];
    v66 = objc_opt_class();
    v67 = [v65 setWithObjects:{v66, objc_opt_class(), 0}];
    [remoteObjectInterface8 setClasses:v67 forSelector:sel_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_reply_ argumentIndex:0 ofReply:1];

    xpcConnection18 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface9 = [xpcConnection18 remoteObjectInterface];
    v70 = MEMORY[0x1E695DFD8];
    v71 = objc_opt_class();
    v72 = [v70 setWithObjects:{v71, objc_opt_class(), 0}];
    [remoteObjectInterface9 setClasses:v72 forSelector:sel_fetchPredictedLocationsOfInterestOnDate_reply_ argumentIndex:0 ofReply:1];

    xpcConnection19 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface10 = [xpcConnection19 remoteObjectInterface];
    v75 = MEMORY[0x1E695DFD8];
    v76 = objc_opt_class();
    v77 = [v75 setWithObjects:{v76, objc_opt_class(), 0}];
    [remoteObjectInterface10 setClasses:v77 forSelector:sel_fetchPredictedExitDatesFromLocation_onDate_reply_ argumentIndex:0 ofReply:1];

    xpcConnection20 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface11 = [xpcConnection20 remoteObjectInterface];
    v80 = MEMORY[0x1E695DFD8];
    v81 = objc_opt_class();
    v82 = [v80 setWithObjects:{v81, objc_opt_class(), 0}];
    [remoteObjectInterface11 setClasses:v82 forSelector:sel_fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_reply_ argumentIndex:0 ofReply:1];

    xpcConnection21 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface12 = [xpcConnection21 remoteObjectInterface];
    v85 = MEMORY[0x1E695DFD8];
    v86 = objc_opt_class();
    v87 = objc_opt_class();
    v88 = [v85 setWithObjects:{v86, v87, objc_opt_class(), 0}];
    [remoteObjectInterface12 setClasses:v88 forSelector:sel_performBluePOIQueryLookingBack_lookingAhead_reply_ argumentIndex:0 ofReply:1];

    xpcConnection22 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface13 = [xpcConnection22 remoteObjectInterface];
    v91 = MEMORY[0x1E695DFD8];
    v92 = objc_opt_class();
    v93 = objc_opt_class();
    v94 = objc_opt_class();
    v95 = objc_opt_class();
    v96 = [v91 setWithObjects:{v92, v93, v94, v95, objc_opt_class(), 0}];
    [remoteObjectInterface13 setClasses:v96 forSelector:sel_performBluePOIQueryLookingBack_lookingAhead_reply_ argumentIndex:1 ofReply:1];

    xpcConnection23 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface14 = [xpcConnection23 remoteObjectInterface];
    v99 = MEMORY[0x1E695DFD8];
    v100 = objc_opt_class();
    v101 = [v99 setWithObjects:{v100, objc_opt_class(), 0}];
    [remoteObjectInterface14 setClasses:v101 forSelector:sel_performBluePOIQueryLookingBack_lookingAhead_reply_ argumentIndex:2 ofReply:1];

    xpcConnection24 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface15 = [xpcConnection24 remoteObjectInterface];
    v104 = MEMORY[0x1E695DFD8];
    v105 = objc_opt_class();
    v106 = [v104 setWithObjects:{v105, objc_opt_class(), 0}];
    [remoteObjectInterface15 setClasses:v106 forSelector:sel_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_reply_ argumentIndex:0 ofReply:1];

    xpcConnection25 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface16 = [xpcConnection25 remoteObjectInterface];
    v109 = MEMORY[0x1E695DFD8];
    v110 = objc_opt_class();
    v111 = [v109 setWithObjects:{v110, objc_opt_class(), 0}];
    [remoteObjectInterface16 setClasses:v111 forSelector:sel_fetchLastVehicleEventsWithReply_ argumentIndex:0 ofReply:1];

    xpcConnection26 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface17 = [xpcConnection26 remoteObjectInterface];
    v114 = MEMORY[0x1E695DFD8];
    v115 = objc_opt_class();
    v116 = [v114 setWithObjects:{v115, objc_opt_class(), 0}];
    [remoteObjectInterface17 setClasses:v116 forSelector:sel_fetchLocationOfInterestWithIdentifier_reply_ argumentIndex:0 ofReply:1];

    xpcConnection27 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface18 = [xpcConnection27 remoteObjectInterface];
    v119 = MEMORY[0x1E695DFD8];
    v120 = objc_opt_class();
    v121 = [v119 setWithObjects:{v120, objc_opt_class(), 0}];
    [remoteObjectInterface18 setClasses:v121 forSelector:sel_addLocationOfInterestOfType_mapItemStorage_customLabel_reply_ argumentIndex:1 ofReply:1];

    xpcConnection28 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface19 = [xpcConnection28 remoteObjectInterface];
    v124 = MEMORY[0x1E695DFD8];
    v125 = objc_opt_class();
    v126 = [v124 setWithObjects:{v125, objc_opt_class(), 0}];
    [remoteObjectInterface19 setClasses:v126 forSelector:sel_fetchTransitionsBetweenStartDate_endDate_reply_ argumentIndex:0 ofReply:1];

    xpcConnection29 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface20 = [xpcConnection29 remoteObjectInterface];
    v129 = MEMORY[0x1E695DFD8];
    v130 = objc_opt_class();
    v131 = [v129 setWithObjects:{v130, objc_opt_class(), 0}];
    [remoteObjectInterface20 setClasses:v131 forSelector:sel_fetchStoredLocationsWithContext_reply_ argumentIndex:0 ofReply:1];

    xpcConnection30 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface21 = [xpcConnection30 remoteObjectInterface];
    v134 = MEMORY[0x1E695DFD8];
    v135 = objc_opt_class();
    v136 = [v134 setWithObjects:{v135, objc_opt_class(), 0}];
    [remoteObjectInterface21 setClasses:v136 forSelector:sel_fetchStoredLocationsWithContext_reply_ argumentIndex:0 ofReply:0];

    xpcConnection31 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface22 = [xpcConnection31 remoteObjectInterface];
    v139 = MEMORY[0x1E695DFD8];
    v140 = objc_opt_class();
    v141 = [v139 setWithObjects:{v140, objc_opt_class(), 0}];
    [remoteObjectInterface22 setClasses:v141 forSelector:sel_fetchPlaceInferencesWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection32 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface23 = [xpcConnection32 remoteObjectInterface];
    v144 = MEMORY[0x1E695DFD8];
    v145 = objc_opt_class();
    v146 = [v144 setWithObjects:{v145, objc_opt_class(), 0}];
    [remoteObjectInterface23 setClasses:v146 forSelector:sel_fetchFamiliarityIndexResultsWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection33 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface24 = [xpcConnection33 remoteObjectInterface];
    [remoteObjectInterface24 setClass:objc_opt_class() forSelector:sel_fetchAuthorizedLocationStatus_ argumentIndex:0 ofReply:1];

    xpcConnection34 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface25 = [xpcConnection34 remoteObjectInterface];
    v151 = MEMORY[0x1E695DFD8];
    v152 = objc_opt_class();
    v153 = [v151 setWithObjects:{v152, objc_opt_class(), 0}];
    [remoteObjectInterface25 setClasses:v153 forSelector:sel_fetchEstimatedLocationAtDate_options_reply_ argumentIndex:0 ofReply:0];

    xpcConnection35 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface26 = [xpcConnection35 remoteObjectInterface];
    v156 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface26 setClasses:v156 forSelector:sel_fetchEstimatedLocationAtDate_options_reply_ argumentIndex:0 ofReply:1];

    xpcConnection36 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface27 = [xpcConnection36 remoteObjectInterface];
    v159 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface27 setClasses:v159 forSelector:sel_fetchEstimatedLocationAtDate_options_reply_ argumentIndex:1 ofReply:1];

    xpcConnection37 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface28 = [xpcConnection37 remoteObjectInterface];
    v162 = MEMORY[0x1E695DFD8];
    v163 = objc_opt_class();
    v164 = [v162 setWithObjects:{v163, objc_opt_class(), 0}];
    [remoteObjectInterface28 setClasses:v164 forSelector:sel_fetchStoredVisitsWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection38 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface29 = [xpcConnection38 remoteObjectInterface];
    v167 = MEMORY[0x1E695DFD8];
    v168 = objc_opt_class();
    v169 = [v167 setWithObjects:{v168, objc_opt_class(), 0}];
    [remoteObjectInterface29 setClasses:v169 forSelector:sel_fetchFinerGranularityInferredMapItemWithVisitIdentifier_reply_ argumentIndex:0 ofReply:1];

    xpcConnection39 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface30 = [xpcConnection39 remoteObjectInterface];
    v172 = MEMORY[0x1E695DFD8];
    v173 = objc_opt_class();
    v174 = [v172 setWithObjects:{v173, objc_opt_class(), 0}];
    [remoteObjectInterface30 setClasses:v174 forSelector:sel_fetchLearnedRoutesWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection40 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface31 = [xpcConnection40 remoteObjectInterface];
    v177 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface31 setClasses:v177 forSelector:sel_purgeTripClusterTable_reply_ argumentIndex:0 ofReply:1];

    xpcConnection41 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface32 = [xpcConnection41 remoteObjectInterface];
    v180 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface32 setClasses:v180 forSelector:sel_purgeTripClusterWithClusterID_reply_ argumentIndex:0 ofReply:1];

    xpcConnection42 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface33 = [xpcConnection42 remoteObjectInterface];
    [remoteObjectInterface33 setClass:objc_opt_class() forSelector:sel_fetchTripClusterMetadataWithOptions_reply_ argumentIndex:0 ofReply:0];

    xpcConnection43 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface34 = [xpcConnection43 remoteObjectInterface];
    v185 = MEMORY[0x1E695DFD8];
    v186 = objc_opt_class();
    v187 = [v185 setWithObjects:{v186, objc_opt_class(), 0}];
    [remoteObjectInterface34 setClasses:v187 forSelector:sel_fetchTripClusterMetadataWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection44 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface35 = [xpcConnection44 remoteObjectInterface];
    v190 = MEMORY[0x1E695DFD8];
    v191 = objc_opt_class();
    v192 = [v190 setWithObjects:{v191, objc_opt_class(), 0}];
    [remoteObjectInterface35 setClasses:v192 forSelector:sel_fetchTripSegmentsWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection45 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface36 = [xpcConnection45 remoteObjectInterface];
    [remoteObjectInterface36 setClass:objc_opt_class() forSelector:sel_fetchLocationsForTripSegmentWithOptions_reply_ argumentIndex:0 ofReply:0];

    xpcConnection46 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface37 = [xpcConnection46 remoteObjectInterface];
    v197 = MEMORY[0x1E695DFD8];
    v198 = objc_opt_class();
    v199 = [v197 setWithObjects:{v198, objc_opt_class(), 0}];
    [remoteObjectInterface37 setClasses:v199 forSelector:sel_fetchLocationsForTripSegmentWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection47 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface38 = [xpcConnection47 remoteObjectInterface];
    v202 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface38 setClasses:v202 forSelector:sel_deleteTripSegmentWithUUID_reply_ argumentIndex:0 ofReply:0];

    xpcConnection48 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface39 = [xpcConnection48 remoteObjectInterface];
    v205 = MEMORY[0x1E695DFD8];
    v206 = objc_opt_class();
    v207 = [v205 setWithObjects:{v206, objc_opt_class(), 0}];
    [remoteObjectInterface39 setClasses:v207 forSelector:sel_fetchVehiclesWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection49 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface40 = [xpcConnection49 remoteObjectInterface];
    [remoteObjectInterface40 setClass:objc_opt_class() forSelector:sel_fetchTripSegmentMetadataWithOptions_reply_ argumentIndex:0 ofReply:0];

    xpcConnection50 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface41 = [xpcConnection50 remoteObjectInterface];
    v212 = MEMORY[0x1E695DFD8];
    v213 = objc_opt_class();
    v214 = [v212 setWithObjects:{v213, objc_opt_class(), 0}];
    [remoteObjectInterface41 setClasses:v214 forSelector:sel_fetchTripSegmentMetadataWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection51 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface42 = [xpcConnection51 remoteObjectInterface];
    v217 = MEMORY[0x1E695DFD8];
    v218 = objc_opt_class();
    v219 = objc_opt_class();
    v220 = [v217 setWithObjects:{v218, v219, objc_opt_class(), 0}];
    [remoteObjectInterface42 setClasses:v220 forSelector:sel_fetchEnumerableObjectsWithOptions_offset_reply_ argumentIndex:0 ofReply:0];

    xpcConnection52 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface43 = [xpcConnection52 remoteObjectInterface];
    v223 = MEMORY[0x1E695DFD8];
    v224 = objc_opt_class();
    v225 = objc_opt_class();
    v226 = objc_opt_class();
    v227 = [v223 setWithObjects:{v224, v225, v226, objc_opt_class(), 0}];
    [remoteObjectInterface43 setClasses:v227 forSelector:sel_fetchEnumerableObjectsWithOptions_offset_reply_ argumentIndex:0 ofReply:1];

    xpcConnection53 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface44 = [xpcConnection53 remoteObjectInterface];
    [remoteObjectInterface44 setClass:objc_opt_class() forSelector:sel_fetchEnumerableObjectsWithOptions_offset_reply_ argumentIndex:1 ofReply:1];

    xpcConnection54 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface45 = [xpcConnection54 remoteObjectInterface];
    v232 = MEMORY[0x1E695DFD8];
    v233 = objc_opt_class();
    v234 = [v232 setWithObjects:{v233, objc_opt_class(), 0}];
    [remoteObjectInterface45 setClasses:v234 forSelector:sel_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_reply_ argumentIndex:0 ofReply:1];

    xpcConnection55 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface46 = [xpcConnection55 remoteObjectInterface];
    v237 = MEMORY[0x1E695DFD8];
    v238 = objc_opt_class();
    v239 = [v237 setWithObjects:{v238, objc_opt_class(), 0}];
    [remoteObjectInterface46 setClasses:v239 forSelector:sel_fetchElevationsWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection56 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface47 = [xpcConnection56 remoteObjectInterface];
    v242 = MEMORY[0x1E695DFD8];
    v243 = objc_opt_class();
    v244 = [v242 setWithObjects:{v243, objc_opt_class(), 0}];
    [remoteObjectInterface47 setClasses:v244 forSelector:sel_fetchElevationsWithContext_reply_ argumentIndex:0 ofReply:1];

    xpcConnection57 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface48 = [xpcConnection57 remoteObjectInterface];
    v247 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface48 setClasses:v247 forSelector:sel_fetchElevationsWithContext_reply_ argumentIndex:0 ofReply:0];

    xpcConnection58 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface49 = [xpcConnection58 remoteObjectInterface];
    v250 = MEMORY[0x1E695DFD8];
    v251 = objc_opt_class();
    v252 = [v250 setWithObjects:{v251, objc_opt_class(), 0}];
    [remoteObjectInterface49 setClasses:v252 forSelector:sel_fetchBackgroundInertialOdometrySamplesWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection59 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface50 = [xpcConnection59 remoteObjectInterface];
    v255 = MEMORY[0x1E695DFD8];
    v256 = objc_opt_class();
    v257 = [v255 setWithObjects:{v256, objc_opt_class(), 0}];
    [remoteObjectInterface50 setClasses:v257 forSelector:sel_addBackgroundInertialOdometrySamples_reply_ argumentIndex:0 ofReply:0];

    xpcConnection60 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface51 = [xpcConnection60 remoteObjectInterface];
    [remoteObjectInterface51 setClass:objc_opt_class() forSelector:sel_submitUserCurationForVisitDateRange_newLabel_handler_ argumentIndex:0 ofReply:0];

    xpcConnection61 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface52 = [xpcConnection61 remoteObjectInterface];
    [remoteObjectInterface52 setClass:objc_opt_class() forSelector:sel_submitUserCurationForVisitDateRange_newLabel_handler_ argumentIndex:1 ofReply:0];

    xpcConnection62 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface53 = [xpcConnection62 remoteObjectInterface];
    [remoteObjectInterface53 setClass:objc_opt_class() forSelector:sel_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler_ argumentIndex:0 ofReply:0];

    xpcConnection63 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface54 = [xpcConnection63 remoteObjectInterface];
    [remoteObjectInterface54 setClass:objc_opt_class() forSelector:sel_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler_ argumentIndex:1 ofReply:0];

    xpcConnection64 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface55 = [xpcConnection64 remoteObjectInterface];
    [remoteObjectInterface55 setClass:objc_opt_class() forSelector:sel_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler_ argumentIndex:2 ofReply:0];

    xpcConnection65 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface56 = [xpcConnection65 remoteObjectInterface];
    [remoteObjectInterface56 setClass:objc_opt_class() forSelector:sel_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler_ argumentIndex:3 ofReply:0];

    xpcConnection66 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface57 = [xpcConnection66 remoteObjectInterface];
    v272 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface57 setClasses:v272 forSelector:sel_startMonitoringPlaceInferencesWithOptions_reply_ argumentIndex:0 ofReply:0];

    xpcConnection67 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface58 = [xpcConnection67 remoteObjectInterface];
    v275 = [MEMORY[0x1E695DFD8] setWithObjects:{objc_opt_class(), 0}];
    [remoteObjectInterface58 setClasses:v275 forSelector:sel_fetchPredictedContextWithOptions_reply_ argumentIndex:0 ofReply:1];

    xpcConnection68 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface59 = [xpcConnection68 remoteObjectInterface];
    [remoteObjectInterface59 setClass:objc_opt_class() forSelector:sel_startMonitoringForPeopleDiscoveryWithIdentifier_configuration_reply_ argumentIndex:0 ofReply:0];

    xpcConnection69 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface60 = [xpcConnection69 remoteObjectInterface];
    [remoteObjectInterface60 setClass:objc_opt_class() forSelector:sel_fetchOngoingPeopleDensity_ argumentIndex:0 ofReply:1];

    xpcConnection70 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface61 = [xpcConnection70 remoteObjectInterface];
    [remoteObjectInterface61 setClass:objc_opt_class() forSelector:sel_fetchProximityHistoryFromStartDate_endDate_completionHandler_ argumentIndex:0 ofReply:0];

    xpcConnection71 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface62 = [xpcConnection71 remoteObjectInterface];
    [remoteObjectInterface62 setClass:objc_opt_class() forSelector:sel_fetchProximityHistoryFromStartDate_endDate_completionHandler_ argumentIndex:1 ofReply:0];

    xpcConnection72 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface63 = [xpcConnection72 remoteObjectInterface];
    v286 = MEMORY[0x1E695DFD8];
    v287 = objc_opt_class();
    v288 = [v286 setWithObjects:{v287, objc_opt_class(), 0}];
    [remoteObjectInterface63 setClasses:v288 forSelector:sel_fetchProximityHistoryFromStartDate_endDate_completionHandler_ argumentIndex:0 ofReply:1];

    xpcConnection73 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface64 = [xpcConnection73 remoteObjectInterface];
    v291 = MEMORY[0x1E695DFD8];
    v292 = objc_opt_class();
    v293 = [v291 setWithObjects:{v292, objc_opt_class(), 0}];
    [remoteObjectInterface64 setClasses:v293 forSelector:sel_fetchProximityHistoryFromEventIDs_completionHandler_ argumentIndex:0 ofReply:0];

    xpcConnection74 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface65 = [xpcConnection74 remoteObjectInterface];
    v296 = MEMORY[0x1E695DFD8];
    v297 = objc_opt_class();
    v298 = [v296 setWithObjects:{v297, objc_opt_class(), 0}];
    [remoteObjectInterface65 setClasses:v298 forSelector:sel_fetchProximityHistoryFromEventIDs_completionHandler_ argumentIndex:0 ofReply:1];

    xpcConnection75 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface66 = [xpcConnection75 remoteObjectInterface];
    v301 = MEMORY[0x1E695DFD8];
    v302 = objc_opt_class();
    v303 = [v301 setWithObjects:{v302, objc_opt_class(), 0}];
    [remoteObjectInterface66 setClasses:v303 forSelector:sel_fetchPeopleCountEventsHistory_completionHandler_ argumentIndex:0 ofReply:0];

    xpcConnection76 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface67 = [xpcConnection76 remoteObjectInterface];
    v306 = MEMORY[0x1E695DFD8];
    v307 = objc_opt_class();
    v308 = [v306 setWithObjects:{v307, objc_opt_class(), 0}];
    [remoteObjectInterface67 setClasses:v308 forSelector:sel_fetchPeopleCountEventsHistory_completionHandler_ argumentIndex:0 ofReply:1];

    xpcConnection77 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface68 = [xpcConnection77 remoteObjectInterface];
    [remoteObjectInterface68 setClass:objc_opt_class() forSelector:sel_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler_ argumentIndex:0 ofReply:0];

    xpcConnection78 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface69 = [xpcConnection78 remoteObjectInterface];
    [remoteObjectInterface69 setClass:objc_opt_class() forSelector:sel_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler_ argumentIndex:1 ofReply:0];

    xpcConnection79 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface70 = [xpcConnection79 remoteObjectInterface];
    v315 = MEMORY[0x1E695DFD8];
    v316 = objc_opt_class();
    v317 = [v315 setWithObjects:{v316, objc_opt_class(), 0}];
    [remoteObjectInterface70 setClasses:v317 forSelector:sel_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler_ argumentIndex:0 ofReply:1];

    xpcConnection80 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface71 = [xpcConnection80 remoteObjectInterface];
    v320 = MEMORY[0x1E695DFD8];
    v321 = objc_opt_class();
    v322 = [v320 setWithObjects:{v321, objc_opt_class(), 0}];
    [remoteObjectInterface71 setClasses:v322 forSelector:sel_fetchContactScoresFromContactIDs_completionHandler_ argumentIndex:0 ofReply:0];

    xpcConnection81 = [(RTRoutineManager *)self xpcConnection];
    remoteObjectInterface72 = [xpcConnection81 remoteObjectInterface];
    v325 = MEMORY[0x1E695DFD8];
    v326 = objc_opt_class();
    v327 = [v325 setWithObjects:{v326, objc_opt_class(), 0}];
    [remoteObjectInterface72 setClasses:v327 forSelector:sel_fetchContactScoresFromContactIDs_completionHandler_ argumentIndex:0 ofReply:1];

    xpcConnection82 = [(RTRoutineManager *)self xpcConnection];
    [xpcConnection82 resume];

    restorationIdentifier = [(RTRoutineManager *)self restorationIdentifier];

    if (restorationIdentifier)
    {
      xpcConnection83 = [(RTRoutineManager *)self xpcConnection];
      v357[0] = MEMORY[0x1E69E9820];
      v357[1] = 3221225472;
      v357[2] = __37__RTRoutineManager__createConnection__block_invoke;
      v357[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
      v357[4] = a2;
      v331 = [xpcConnection83 remoteObjectProxyWithErrorHandler:v357];
      restorationIdentifier2 = [(RTRoutineManager *)self restorationIdentifier];
      [v331 setRestorationIdentifier:restorationIdentifier2];
    }

    visitHandler = [(RTRoutineManager *)self visitHandler];

    if (visitHandler)
    {
      visitHandler2 = [(RTRoutineManager *)self visitHandler];
      [(RTRoutineManager *)self startMonitoringVisitsWithHandler:visitHandler2];
    }

    leechedVisitHandler = [(RTRoutineManager *)self leechedVisitHandler];

    if (leechedVisitHandler)
    {
      leechedVisitHandler2 = [(RTRoutineManager *)self leechedVisitHandler];
      [(RTRoutineManager *)self startLeechingVisitsWithHandler:leechedVisitHandler2];
    }

    leechedLowConfidenceVisitHandler = [(RTRoutineManager *)self leechedLowConfidenceVisitHandler];

    if (leechedLowConfidenceVisitHandler)
    {
      leechedLowConfidenceVisitHandler2 = [(RTRoutineManager *)self leechedLowConfidenceVisitHandler];
      [(RTRoutineManager *)self startLeechingLowConfidenceVisitsWithHandler:leechedLowConfidenceVisitHandler2];
    }

    placeInferencesHandler = [(RTRoutineManager *)self placeInferencesHandler];
    if (placeInferencesHandler)
    {
      v340 = placeInferencesHandler;
      placeInferenceOptions = [(RTRoutineManager *)self placeInferenceOptions];

      if (placeInferenceOptions)
      {
        placeInferenceOptions2 = [(RTRoutineManager *)self placeInferenceOptions];
        placeInferencesHandler2 = [(RTRoutineManager *)self placeInferencesHandler];
        [(RTRoutineManager *)self startMonitoringPlaceInferencesWithOptions:placeInferenceOptions2 handler:placeInferencesHandler2];
      }
    }

    if ([(RTRoutineManagerRegistrantScenarioTrigger *)self->_scenarioTriggerRegistrant registered])
    {
      scenarioTriggerHandlers = [(RTRoutineManagerRegistrantScenarioTrigger *)self->_scenarioTriggerRegistrant scenarioTriggerHandlers];
      v356[0] = MEMORY[0x1E69E9820];
      v356[1] = 3221225472;
      v356[2] = __37__RTRoutineManager__createConnection__block_invoke_413;
      v356[3] = &unk_1E80B3E48;
      v356[4] = self;
      [scenarioTriggerHandlers enumerateKeysAndObjectsUsingBlock:v356];
    }

    if ([(RTRoutineManagerRegistrantPeopleDiscovery *)self->_peopleDiscoveryRegistrant registered])
    {
      configuration = [(RTRoutineManagerRegistrantPeopleDiscovery *)self->_peopleDiscoveryRegistrant configuration];
      peopleDiscoveryErrorHandler = [(RTRoutineManager *)self peopleDiscoveryErrorHandler];
      [(RTRoutineManager *)self startMonitoringForPeopleDiscovery:configuration handler:peopleDiscoveryErrorHandler];
    }

    vehicleEventsHandler = [(RTRoutineManager *)self vehicleEventsHandler];

    if (vehicleEventsHandler)
    {
      vehicleEventsHandler2 = [(RTRoutineManager *)self vehicleEventsHandler];
      [(RTRoutineManager *)self startMonitoringVehicleEventsWithHandler:vehicleEventsHandler2];
    }

    predictedContextHandler = [(RTRoutineManager *)self predictedContextHandler];
    if (predictedContextHandler)
    {
      v350 = predictedContextHandler;
      predictedContextOptions = [(RTRoutineManager *)self predictedContextOptions];

      if (predictedContextOptions)
      {
        predictedContextOptions2 = [(RTRoutineManager *)self predictedContextOptions];
        predictedContextHandler2 = [(RTRoutineManager *)self predictedContextHandler];
        [(RTRoutineManager *)self startMonitoringPredictedContextWithOptions:predictedContextOptions2 completionHandler:predictedContextHandler2];
      }
    }

    remoteStatusHandler = [(RTRoutineManager *)self remoteStatusHandler];

    if (remoteStatusHandler)
    {
      remoteStatusHandler2 = [(RTRoutineManager *)self remoteStatusHandler];
      [(RTRoutineManager *)self startMonitoringRemoteStatusWithHandler:remoteStatusHandler2];
    }
  }
}

+ (id)routineModeToString:(int64_t)string
{
  v3 = @"Unknown";
  if (string == 2)
  {
    v3 = @"Tourist";
  }

  if (string == 1)
  {
    return @"Local";
  }

  else
  {
    return v3;
  }
}

+ (id)modeOfTransportationToString:(int64_t)string
{
  if ((string - 1) > 2)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E80B4808[string - 1];
  }
}

- (RTRoutineManager)initWithRestorationIdentifier:(id)identifier targertUserSession:(BOOL)session
{
  v52 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v48.receiver = self;
  v48.super_class = RTRoutineManager;
  v7 = [(RTRoutineManager *)&v48 init];
  if (v7)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      sessionCopy = session;
      v42 = v7;
      v43 = identifierCopy;
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v9 = [callStackSymbols countByEnumeratingWithState:&v44 objects:v51 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v45;
        v12 = MEMORY[0x1E69E9C10];
        do
        {
          v13 = 0;
          do
          {
            if (*v45 != v11)
            {
              objc_enumerationMutation(callStackSymbols);
            }

            v14 = *(*(&v44 + 1) + 8 * v13);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
            {
              v15 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
              if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v50 = v14;
                _os_log_debug_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
              }
            }

            ++v13;
          }

          while (v10 != v13);
          v10 = [callStackSymbols countByEnumeratingWithState:&v44 objects:v51 count:16];
        }

        while (v10);
      }

      v7 = v42;
      identifierCopy = v43;
      session = sessionCopy;
    }

    v16 = v7;
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String = [(RTRoutineManager *)v16 UTF8String];
    }

    else
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", objc_opt_class(), v16];
      uTF8String = [v19 UTF8String];
    }

    v20 = dispatch_queue_create(uTF8String, v17);

    queue = v16->_queue;
    v16->_queue = v20;

    v22 = v16;
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uTF8String2 = [(RTRoutineManager *)v22 UTF8String];
    }

    else
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", objc_opt_class(), v22];
      uTF8String2 = [v25 UTF8String];
    }

    v26 = dispatch_queue_create(uTF8String2, v23);

    xpcQueue = v22->_xpcQueue;
    v22->_xpcQueue = v26;

    v28 = [[RTTokenBucket alloc] initWithFillRate:10.0 capacity:10.0 initialAllocation:10.0];
    clientThrottle = v22->_clientThrottle;
    v22->_clientThrottle = v28;

    v30 = objc_opt_new();
    scenarioTriggerRegistrant = v22->_scenarioTriggerRegistrant;
    v22->_scenarioTriggerRegistrant = v30;

    v32 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v50 = identifierCopy;
      _os_log_impl(&dword_1BF1C4000, v32, OS_LOG_TYPE_DEFAULT, "creating _peopleDiscoveryRegistrant initWithConfigurationIdentifier %@", buf, 0xCu);
    }

    v33 = [[RTRoutineManagerRegistrantPeopleDiscovery alloc] initWithConfigurationIdentifier:identifierCopy];
    peopleDiscoveryRegistrant = v22->_peopleDiscoveryRegistrant;
    v22->_peopleDiscoveryRegistrant = v33;

    v35 = [identifierCopy copy];
    restorationIdentifier = v22->_restorationIdentifier;
    v22->_restorationIdentifier = v35;

    v37 = [[RTEventAgentHelper alloc] initWithRestorationIdentifier:v22->_restorationIdentifier];
    eventAgentHelper = v22->_eventAgentHelper;
    v22->_eventAgentHelper = v37;

    v22->_targetUserSession = session;
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v22, onDaemonStartNotification, @"com.apple.routined.registration", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    [(RTRoutineManager *)v22 createConnection];
  }

  return v7;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  xpcConnection = [(RTRoutineManager *)self xpcConnection];
  [xpcConnection invalidate];

  v5.receiver = self;
  v5.super_class = RTRoutineManager;
  [(RTRoutineManager *)&v5 dealloc];
}

void __37__RTRoutineManager__createConnection__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = RTErrorConnectionCreate(*(a1 + 32), @"%@", a3, a4, a5, a6, a7, a8, a2);
  v9 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v11 = v8;
    _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
  }
}

void __37__RTRoutineManager__createConnection__block_invoke_413(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  [v4 startMonitoringScenarioTriggerOfType:objc_msgSend(a2 withHandler:{"unsignedIntegerValue"), v5}];
}

- (void)launchTaskWithSelector:(SEL)selector remainingAttempts:(unint64_t)attempts proxyErrorHandler:(id)handler taskBlock:(id)block
{
  handlerCopy = handler;
  blockCopy = block;
  queue = [(RTRoutineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __89__RTRoutineManager_launchTaskWithSelector_remainingAttempts_proxyErrorHandler_taskBlock___block_invoke;
  block[3] = &unk_1E80B3E98;
  selectorCopy = selector;
  attemptsCopy = attempts;
  block[4] = self;
  v16 = handlerCopy;
  v17 = blockCopy;
  v13 = blockCopy;
  v14 = handlerCopy;
  dispatch_async(queue, block);
}

- (void)_launchTaskWithSelector:(SEL)selector remainingAttempts:(unint64_t)attempts proxyErrorHandler:(id)handler taskBlock:(id)block
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  blockCopy = block;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __90__RTRoutineManager__launchTaskWithSelector_remainingAttempts_proxyErrorHandler_taskBlock___block_invoke;
  v19[3] = &unk_1E80B3EC0;
  attemptsCopy = attempts;
  selectorCopy = selector;
  v19[4] = self;
  v20 = handlerCopy;
  v21 = blockCopy;
  v12 = blockCopy;
  v13 = handlerCopy;
  v14 = [(RTRoutineManager *)self _proxyForServicingSelector:selector withErrorHandler:v19];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(selector);
      *buf = 138412546;
      v25 = v17;
      v26 = 2112;
      v27 = v18;
      _os_log_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_INFO, "%@, %@, running task block", buf, 0x16u);
    }
  }

  v12[2](v12, v14);
}

void __90__RTRoutineManager__launchTaskWithSelector_remainingAttempts_proxyErrorHandler_taskBlock___block_invoke(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 domain];
  v5 = v4;
  if (v4 != @"RTErrorDomain")
  {

LABEL_10:
    v13 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      v16 = NSStringFromSelector(*(a1 + 64));
      v17 = 138412802;
      v18 = v15;
      v19 = 2112;
      v20 = v16;
      v21 = 2112;
      v22 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "%@, %@, running proxy error handler, %@", &v17, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
    goto LABEL_13;
  }

  v6 = [v3 code];

  if (v6 != 8)
  {
    goto LABEL_10;
  }

  v7 = *(a1 + 56);
  if (!v7)
  {
    goto LABEL_10;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = objc_opt_class();
      v10 = NSStringFromClass(v9);
      v11 = NSStringFromSelector(*(a1 + 64));
      v12 = *(a1 + 56) - 1;
      v17 = 138412802;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2048;
      v22 = v12;
      _os_log_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_INFO, "%@ retrying, %@, count, %lu", &v17, 0x20u);
    }

    v7 = *(a1 + 56);
  }

  [*(a1 + 32) launchTaskWithSelector:*(a1 + 64) remainingAttempts:v7 - 1 proxyErrorHandler:*(a1 + 40) taskBlock:*(a1 + 48)];
LABEL_13:
}

- (id)_proxyForServicingSelector:(SEL)selector asynchronous:(BOOL)asynchronous withErrorHandler:(id)handler
{
  asynchronousCopy = asynchronous;
  v46[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __77__RTRoutineManager__proxyForServicingSelector_asynchronous_withErrorHandler___block_invoke;
  v38[3] = &unk_1E80B3EE8;
  v38[4] = self;
  selectorCopy = selector;
  v9 = handlerCopy;
  v39 = v9;
  v10 = MEMORY[0x1BFB54DD0](v38);
  v31 = MEMORY[0x1E69E9820];
  v32 = 3221225472;
  v33 = __77__RTRoutineManager__proxyForServicingSelector_asynchronous_withErrorHandler___block_invoke_415;
  v34 = &unk_1E80B3EE8;
  selfCopy = self;
  selectorCopy2 = selector;
  v11 = v9;
  v36 = v11;
  v12 = MEMORY[0x1BFB54DD0](&v31);
  if (![(RTRoutineManager *)self selectorIsAllowed:selector]&& ![(RTTokenBucket *)self->_clientThrottle operationAllowed:v31])
  {
    v45 = *MEMORY[0x1E696A578];
    v46[0] = @"Client is exceeding maximum call rate!";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
    v14 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RTErrorDomain" code:12 userInfo:v13];
    v15 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      dumpStatistics = [(RTTokenBucket *)self->_clientThrottle dumpStatistics];
      *buf = 138412546;
      v42 = v14;
      v43 = 2112;
      v44 = dumpStatistics;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Error: %@, %@", buf, 0x16u);
    }
  }

  xpcConnection = [(RTRoutineManager *)self xpcConnection];
  v23 = xpcConnection;
  if (!xpcConnection)
  {
    v25 = @"no xpc connection";
LABEL_17:
    v28 = RTErrorConnectionCreate(selector, v25, v17, v18, v19, v20, v21, v22, v31);
    (v10)[2](v10, v28);

    v27 = 0;
    goto LABEL_18;
  }

  if (asynchronousCopy)
  {
    v24 = [xpcConnection remoteObjectProxyWithErrorHandler:v12];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v26 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_1BF1C4000, v26, OS_LOG_TYPE_INFO, "vending synchronous remote object proxy.", buf, 2u);
      }
    }

    v24 = [v23 synchronousRemoteObjectProxyWithErrorHandler:v10];
  }

  v27 = v24;
  if (!v24)
  {
    v25 = @"no remote object proxy";
    goto LABEL_17;
  }

LABEL_18:

  return v27;
}

void __77__RTRoutineManager__proxyForServicingSelector_asynchronous_withErrorHandler___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = RTErrorConnectionCreate(*(a1 + 48), @"%@", a3, a4, a5, a6, a7, a8, a2);
  v10 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v13 = v9;
    _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v9);
  }
}

void __77__RTRoutineManager__proxyForServicingSelector_asynchronous_withErrorHandler___block_invoke_415(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = RTErrorConnectionCreate(*(a1 + 48), @"%@", a3, a4, a5, a6, a7, a8, a2);
  v10 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v16 = v9;
    _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Error: %@", buf, 0xCu);
  }

  if (*(a1 + 40))
  {
    v11 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77__RTRoutineManager__proxyForServicingSelector_asynchronous_withErrorHandler___block_invoke_416;
    block[3] = &unk_1E80B4118;
    v14 = *(a1 + 40);
    v13 = v9;
    dispatch_async(v11, block);
  }
}

- (void)fetchTransitionsBetweenStartDate:(id)date endDate:(id)endDate handler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = @"startDate is required";
LABEL_10:
    v18 = RTErrorInvalidParameterCreate(a2, v20, v11, v12, v13, v14, v15, v16, v21);
    handlerCopy[2](handlerCopy, 0, v18);
    goto LABEL_11;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v30 = "[RTRoutineManager fetchTransitionsBetweenStartDate:endDate:handler:]";
    v31 = 1024;
    v32 = 951;
    _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

  if (!dateCopy)
  {
    goto LABEL_8;
  }

LABEL_3:
  if (!endDateCopy)
  {
    v20 = @"endDate is required";
    goto LABEL_10;
  }

  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __69__RTRoutineManager_fetchTransitionsBetweenStartDate_endDate_handler___block_invoke;
  v27[3] = &unk_1E80B3F10;
  v28 = handlerCopy;
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __69__RTRoutineManager_fetchTransitionsBetweenStartDate_endDate_handler___block_invoke_2;
  v22[3] = &unk_1E80B3F38;
  v23 = dateCopy;
  v24 = endDateCopy;
  selfCopy = self;
  v26 = v28;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v27 taskBlock:v22];

  v18 = v28;
LABEL_11:
}

void __69__RTRoutineManager_fetchTransitionsBetweenStartDate_endDate_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__RTRoutineManager_fetchTransitionsBetweenStartDate_endDate_handler___block_invoke_3;
  v6[3] = &unk_1E80B4410;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 fetchTransitionsBetweenStartDate:v3 endDate:v4 reply:v6];
}

void __69__RTRoutineManager_fetchTransitionsBetweenStartDate_endDate_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__RTRoutineManager_fetchTransitionsBetweenStartDate_endDate_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchTripSegmentsWithOptions:(id)options handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager fetchTripSegmentsWithOptions:handler:]";
      v21 = 1024;
      v22 = 979;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked fetchTripSegmentsWithOptions.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__RTRoutineManager_fetchTripSegmentsWithOptions_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__RTRoutineManager_fetchTripSegmentsWithOptions_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = optionsCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __57__RTRoutineManager_fetchTripSegmentsWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __57__RTRoutineManager_fetchTripSegmentsWithOptions_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__RTRoutineManager_fetchTripSegmentsWithOptions_handler___block_invoke_3;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchTripSegmentsWithOptions:v3 reply:v5];
}

void __57__RTRoutineManager_fetchTripSegmentsWithOptions_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__RTRoutineManager_fetchTripSegmentsWithOptions_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchLocationsCountForTripSegmentWithOptions:(id)options handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager fetchLocationsCountForTripSegmentWithOptions:handler:]";
      v21 = 1024;
      v22 = 1001;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked fetchLocationsForTripSegment.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__RTRoutineManager_fetchLocationsCountForTripSegmentWithOptions_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__RTRoutineManager_fetchLocationsCountForTripSegmentWithOptions_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = optionsCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __73__RTRoutineManager_fetchLocationsCountForTripSegmentWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __73__RTRoutineManager_fetchLocationsCountForTripSegmentWithOptions_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__RTRoutineManager_fetchLocationsCountForTripSegmentWithOptions_handler___block_invoke_3;
  v5[3] = &unk_1E80B3F88;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchLocationsCountForTripSegmentWithOptions:v3 reply:v5];
}

void __73__RTRoutineManager_fetchLocationsCountForTripSegmentWithOptions_handler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__RTRoutineManager_fetchLocationsCountForTripSegmentWithOptions_handler___block_invoke_4;
  block[3] = &unk_1E80B4168;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)fetchLocationsForTripSegmentWithOptions:(id)options handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager fetchLocationsForTripSegmentWithOptions:handler:]";
      v21 = 1024;
      v22 = 1022;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked fetchLocationsForTripSegmentWithOptions.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __68__RTRoutineManager_fetchLocationsForTripSegmentWithOptions_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __68__RTRoutineManager_fetchLocationsForTripSegmentWithOptions_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = optionsCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __68__RTRoutineManager_fetchLocationsForTripSegmentWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __68__RTRoutineManager_fetchLocationsForTripSegmentWithOptions_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__RTRoutineManager_fetchLocationsForTripSegmentWithOptions_handler___block_invoke_3;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchLocationsForTripSegmentWithOptions:v3 reply:v5];
}

void __68__RTRoutineManager_fetchLocationsForTripSegmentWithOptions_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__RTRoutineManager_fetchLocationsForTripSegmentWithOptions_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)deleteTripSegmentWithUUID:(id)d handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager deleteTripSegmentWithUUID:handler:]";
      v21 = 1024;
      v22 = 1042;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked deleteTripSegmentWithUUID.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __54__RTRoutineManager_deleteTripSegmentWithUUID_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__RTRoutineManager_deleteTripSegmentWithUUID_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = dCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = dCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __54__RTRoutineManager_deleteTripSegmentWithUUID_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54__RTRoutineManager_deleteTripSegmentWithUUID_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__RTRoutineManager_deleteTripSegmentWithUUID_handler___block_invoke_3;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 deleteTripSegmentWithUUID:v3 reply:v5];
}

void __54__RTRoutineManager_deleteTripSegmentWithUUID_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__RTRoutineManager_deleteTripSegmentWithUUID_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchTripSegmentMetadataWithOptions:(id)options handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager fetchTripSegmentMetadataWithOptions:handler:]";
      v21 = 1024;
      v22 = 1061;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked fetchTripSegmentMetadataWithOptions.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__RTRoutineManager_fetchTripSegmentMetadataWithOptions_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__RTRoutineManager_fetchTripSegmentMetadataWithOptions_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = optionsCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __64__RTRoutineManager_fetchTripSegmentMetadataWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __64__RTRoutineManager_fetchTripSegmentMetadataWithOptions_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__RTRoutineManager_fetchTripSegmentMetadataWithOptions_handler___block_invoke_3;
  v5[3] = &unk_1E80B3FD8;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchTripSegmentMetadataWithOptions:v3 reply:v5];
}

void __64__RTRoutineManager_fetchTripSegmentMetadataWithOptions_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__RTRoutineManager_fetchTripSegmentMetadataWithOptions_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchVehiclesWithOptions:(id)options handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager fetchVehiclesWithOptions:handler:]";
      v21 = 1024;
      v22 = 1081;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked fetchVehiclesWithOptions.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __53__RTRoutineManager_fetchVehiclesWithOptions_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__RTRoutineManager_fetchVehiclesWithOptions_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = optionsCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __53__RTRoutineManager_fetchVehiclesWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __53__RTRoutineManager_fetchVehiclesWithOptions_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__RTRoutineManager_fetchVehiclesWithOptions_handler___block_invoke_3;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchVehiclesWithOptions:v3 reply:v5];
}

void __53__RTRoutineManager_fetchVehiclesWithOptions_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__RTRoutineManager_fetchVehiclesWithOptions_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchRoutineEnabledWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager fetchRoutineEnabledWithHandler:]";
      v14 = 1024;
      v15 = 1099;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__RTRoutineManager_fetchRoutineEnabledWithHandler___block_invoke;
  v10[3] = &unk_1E80B3F10;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__RTRoutineManager_fetchRoutineEnabledWithHandler___block_invoke_439;
  v8[3] = &unk_1E80B4050;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __51__RTRoutineManager_fetchRoutineEnabledWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Unable to determine if CoreRoutine is enabled, returning enabled, NO, error, %@", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __51__RTRoutineManager_fetchRoutineEnabledWithHandler___block_invoke_439(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__RTRoutineManager_fetchRoutineEnabledWithHandler___block_invoke_2;
  v4[3] = &unk_1E80B4028;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchRoutineEnabledWithReply:v4];
}

void __51__RTRoutineManager_fetchRoutineEnabledWithHandler___block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__RTRoutineManager_fetchRoutineEnabledWithHandler___block_invoke_3;
  v5[3] = &unk_1E80B4000;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

- (void)fetchRoutineStateWithHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchRoutineStateWithHandler:]";
      v20 = 1024;
      v21 = 1115;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v8 = os_signpost_id_generate(v7);

  v9 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "fetchRoutineStateWithHandler", " enableTelemetry=YES ", buf, 2u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__RTRoutineManager_fetchRoutineStateWithHandler___block_invoke;
  v15[3] = &unk_1E80B4078;
  v17 = v8;
  v16 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __49__RTRoutineManager_fetchRoutineStateWithHandler___block_invoke_441;
  v12[3] = &unk_1E80B40F0;
  v13 = v16;
  v14 = v8;
  v12[4] = self;
  v11 = v16;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v15 taskBlock:v12];
}

void __49__RTRoutineManager_fetchRoutineStateWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 138412290;
    v10 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Unable to determine CoreRoutine's state, returning state, RTRoutineStateUnknown, error, %@", &v9, 0xCu);
  }

  v5 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v6 = v5;
  v7 = *(a1 + 40);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    v8 = [v3 code];
    v9 = 134349056;
    v10 = v8;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v6, OS_SIGNPOST_INTERVAL_END, v7, "fetchRoutineStateWithHandler", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v9, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __49__RTRoutineManager_fetchRoutineStateWithHandler___block_invoke_441(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__RTRoutineManager_fetchRoutineStateWithHandler___block_invoke_2;
  v5[3] = &unk_1E80B40C8;
  v4 = a1[5];
  v3 = a1[6];
  v5[4] = a1[4];
  v7 = v3;
  v6 = v4;
  [a2 fetchRoutineEnabledWithReply:v5];
}

void __49__RTRoutineManager_fetchRoutineStateWithHandler___block_invoke_2(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__RTRoutineManager_fetchRoutineStateWithHandler___block_invoke_3;
  block[3] = &unk_1E80B40A0;
  v5 = *(a1 + 40);
  v8 = *(a1 + 48);
  v7 = v5;
  v9 = a2;
  dispatch_async(v4, block);
}

uint64_t __49__RTRoutineManager_fetchRoutineStateWithHandler___block_invoke_3(uint64_t a1)
{
  v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v3 = v2;
  v4 = *(a1 + 40);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetchRoutineStateWithHandler", " enableTelemetry=YES ", v7, 2u);
  }

  if (*(a1 + 48))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return (*(*(a1 + 32) + 16))(*(a1 + 32), v5, 0);
}

- (void)setRoutineEnabled:(BOOL)enabled withHandler:(id)handler
{
  handlerCopy = handler;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__RTRoutineManager_setRoutineEnabled_withHandler___block_invoke;
  v12[3] = &unk_1E80B3F10;
  v13 = handlerCopy;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__RTRoutineManager_setRoutineEnabled_withHandler___block_invoke_2;
  v9[3] = &unk_1E80B4140;
  enabledCopy = enabled;
  v9[4] = self;
  v10 = v13;
  v8 = v13;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v12 taskBlock:v9];
}

uint64_t __50__RTRoutineManager_setRoutineEnabled_withHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __50__RTRoutineManager_setRoutineEnabled_withHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__RTRoutineManager_setRoutineEnabled_withHandler___block_invoke_3;
  v5[3] = &unk_1E80B3FB0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 setRoutineEnabled:v3 reply:v5];
}

void __50__RTRoutineManager_setRoutineEnabled_withHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __50__RTRoutineManager_setRoutineEnabled_withHandler___block_invoke_4;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __50__RTRoutineManager_setRoutineEnabled_withHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqualToString:@"RTErrorDomain"])
  {
    [*(a1 + 32) code];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)clearRoutineWithHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__RTRoutineManager_clearRoutineWithHandler___block_invoke;
  v9[3] = &unk_1E80B3F10;
  v10 = handlerCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__RTRoutineManager_clearRoutineWithHandler___block_invoke_2;
  v7[3] = &unk_1E80B4050;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v7];
}

uint64_t __44__RTRoutineManager_clearRoutineWithHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __44__RTRoutineManager_clearRoutineWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__RTRoutineManager_clearRoutineWithHandler___block_invoke_3;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 clearRoutineWithReply:v4];
}

void __44__RTRoutineManager_clearRoutineWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__RTRoutineManager_clearRoutineWithHandler___block_invoke_4;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __44__RTRoutineManager_clearRoutineWithHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqualToString:@"RTErrorDomain"])
  {
    [*(a1 + 32) code];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)fetchCloudSyncAuthorizationState:(id)state
{
  v16 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (!stateCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager fetchCloudSyncAuthorizationState:]";
      v14 = 1024;
      v15 = 1186;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__RTRoutineManager_fetchCloudSyncAuthorizationState___block_invoke;
  v10[3] = &unk_1E80B3F10;
  v11 = stateCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53__RTRoutineManager_fetchCloudSyncAuthorizationState___block_invoke_2;
  v8[3] = &unk_1E80B4050;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

uint64_t __53__RTRoutineManager_fetchCloudSyncAuthorizationState___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __53__RTRoutineManager_fetchCloudSyncAuthorizationState___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__RTRoutineManager_fetchCloudSyncAuthorizationState___block_invoke_3;
  v4[3] = &unk_1E80B4190;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchCloudSyncAuthorizationStateWithReply:v4];
}

void __53__RTRoutineManager_fetchCloudSyncAuthorizationState___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__RTRoutineManager_fetchCloudSyncAuthorizationState___block_invoke_4;
  block[3] = &unk_1E80B4168;
  v9 = v5;
  v10 = *(a1 + 40);
  v11 = a2;
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __53__RTRoutineManager_fetchCloudSyncAuthorizationState___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqualToString:@"RTErrorDomain"])
  {
    [*(a1 + 32) code];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)updateCloudSyncProvisionedForAccount:(BOOL)account handler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTRoutineManager updateCloudSyncProvisionedForAccount:handler:]";
      v17 = 1024;
      v18 = 1210;
      _os_log_error_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__RTRoutineManager_updateCloudSyncProvisionedForAccount_handler___block_invoke;
  v13[3] = &unk_1E80B3F10;
  v14 = handlerCopy;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__RTRoutineManager_updateCloudSyncProvisionedForAccount_handler___block_invoke_2;
  v10[3] = &unk_1E80B4140;
  accountCopy = account;
  v10[4] = self;
  v11 = v14;
  v9 = v14;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v13 taskBlock:v10];
}

uint64_t __65__RTRoutineManager_updateCloudSyncProvisionedForAccount_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __65__RTRoutineManager_updateCloudSyncProvisionedForAccount_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__RTRoutineManager_updateCloudSyncProvisionedForAccount_handler___block_invoke_3;
  v5[3] = &unk_1E80B3FB0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [a2 updateCloudSyncProvisionedForAccount:v3 reply:v5];
}

void __65__RTRoutineManager_updateCloudSyncProvisionedForAccount_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__RTRoutineManager_updateCloudSyncProvisionedForAccount_handler___block_invoke_4;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __65__RTRoutineManager_updateCloudSyncProvisionedForAccount_handler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqualToString:@"RTErrorDomain"])
  {
    [*(a1 + 32) code];
  }

  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)fetchLearnedRoutesWithOptions:(id)options handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager fetchLearnedRoutesWithOptions:handler:]";
      v21 = 1024;
      v22 = 1236;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked fetchLearnedRoutesWithOptions.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__RTRoutineManager_fetchLearnedRoutesWithOptions_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__RTRoutineManager_fetchLearnedRoutesWithOptions_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = optionsCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __58__RTRoutineManager_fetchLearnedRoutesWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, 0, a2);
  }

  return result;
}

void __58__RTRoutineManager_fetchLearnedRoutesWithOptions_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__RTRoutineManager_fetchLearnedRoutesWithOptions_handler___block_invoke_3;
  v5[3] = &unk_1E80B41B8;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchLearnedRoutesWithOptions:v3 reply:v5];
}

void __58__RTRoutineManager_fetchLearnedRoutesWithOptions_handler___block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  v8 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__RTRoutineManager_fetchLearnedRoutesWithOptions_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v9;
  v13 = v6;
  v10 = v7;
  v11 = v6;
  dispatch_async(v8, block);
}

- (void)fetchTripClusterMetadataWithOptions:(id)options handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager fetchTripClusterMetadataWithOptions:handler:]";
      v21 = 1024;
      v22 = 1257;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked fetchTripClusterMetadataWithOptions.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __64__RTRoutineManager_fetchTripClusterMetadataWithOptions_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__RTRoutineManager_fetchTripClusterMetadataWithOptions_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = optionsCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __64__RTRoutineManager_fetchTripClusterMetadataWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __64__RTRoutineManager_fetchTripClusterMetadataWithOptions_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__RTRoutineManager_fetchTripClusterMetadataWithOptions_handler___block_invoke_3;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchTripClusterMetadataWithOptions:v3 reply:v5];
}

void __64__RTRoutineManager_fetchTripClusterMetadataWithOptions_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__RTRoutineManager_fetchTripClusterMetadataWithOptions_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)purgeTripClusterTable:(id)table handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  tableCopy = table;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager purgeTripClusterTable:handler:]";
      v21 = 1024;
      v22 = 1277;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked purgeTripClusterTable.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __50__RTRoutineManager_purgeTripClusterTable_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__RTRoutineManager_purgeTripClusterTable_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = tableCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = tableCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __50__RTRoutineManager_purgeTripClusterTable_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __50__RTRoutineManager_purgeTripClusterTable_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__RTRoutineManager_purgeTripClusterTable_handler___block_invoke_3;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 purgeTripClusterTable:v3 reply:v5];
}

void __50__RTRoutineManager_purgeTripClusterTable_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__RTRoutineManager_purgeTripClusterTable_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)purgeTripClusterWithClusterID:(id)d handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  dCopy = d;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager purgeTripClusterWithClusterID:handler:]";
      v21 = 1024;
      v22 = 1298;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityTripSegment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked purgeTripClusterWithClusterID.", buf, 2u);
    }
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __58__RTRoutineManager_purgeTripClusterWithClusterID_handler___block_invoke;
  v17[3] = &unk_1E80B3F10;
  v18 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__RTRoutineManager_purgeTripClusterWithClusterID_handler___block_invoke_2;
  v13[3] = &unk_1E80B3F60;
  v14 = dCopy;
  selfCopy = self;
  v16 = v18;
  v11 = v18;
  v12 = dCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v13];
}

uint64_t __58__RTRoutineManager_purgeTripClusterWithClusterID_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __58__RTRoutineManager_purgeTripClusterWithClusterID_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__RTRoutineManager_purgeTripClusterWithClusterID_handler___block_invoke_3;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 purgeTripClusterWithClusterID:v3 reply:v5];
}

void __58__RTRoutineManager_purgeTripClusterWithClusterID_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__RTRoutineManager_purgeTripClusterWithClusterID_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchRemoteStatusWithHandler:(id)handler
{
  handlerCopy = handler;
  v6 = handlerCopy;
  if (handlerCopy)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __49__RTRoutineManager_fetchRemoteStatusWithHandler___block_invoke;
    v9[3] = &unk_1E80B3F10;
    v10 = handlerCopy;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__RTRoutineManager_fetchRemoteStatusWithHandler___block_invoke_2;
    v7[3] = &unk_1E80B4050;
    v7[4] = self;
    v8 = v10;
    [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v7];
  }
}

void __49__RTRoutineManager_fetchRemoteStatusWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__RTRoutineManager_fetchRemoteStatusWithHandler___block_invoke_3;
  v4[3] = &unk_1E80B4190;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchRemoteStatusWithReply:v4];
}

void __49__RTRoutineManager_fetchRemoteStatusWithHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__RTRoutineManager_fetchRemoteStatusWithHandler___block_invoke_4;
  block[3] = &unk_1E80B4168;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

uint64_t __49__RTRoutineManager_fetchRemoteStatusWithHandler___block_invoke_4(void *a1)
{
  result = a1[5];
  if (result)
  {
    return (*(result + 16))(result, a1[6], a1[4]);
  }

  return result;
}

- (void)startMonitoringRemoteStatusWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager startMonitoringRemoteStatusWithHandler:]";
      v14 = 1024;
      v15 = 1339;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke;
  block[3] = &unk_1E80B4168;
  block[4] = self;
  v10 = handlerCopy;
  v11 = a2;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setRemoteStatusHandler:*(a1 + 40)];
  v2 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke_2;
  v7[3] = &unk_1E80B3F10;
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke_444;
  v5[3] = &unk_1E80B41E0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 _launchTaskWithSelector:v2 remainingAttempts:3 proxyErrorHandler:v7 taskBlock:v5];
}

void __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while starting to monitor remote status, error, %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke_444(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke_2_445;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 startMonitoringRemoteStatusWithReply:v4];
}

void __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke_2_445(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __59__RTRoutineManager_startMonitoringRemoteStatusWithHandler___block_invoke_3(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(v1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while starting to monitor remote status, error, %@", &v4, 0xCu);
    }

    result = *(v1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0, *(v1 + 32));
    }
  }

  return result;
}

- (void)stopMonitoringRemoteStatusWithHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[RTRoutineManager stopMonitoringRemoteStatusWithHandler:]";
      v10 = 1024;
      v11 = 1370;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke;
  v7[3] = &unk_1E80B4208;
  v7[4] = self;
  v7[5] = a2;
  dispatch_async(queue, v7);
}

void __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteStatusHandler];
  [*(a1 + 32) setRemoteStatusHandler:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke_2;
  v8[3] = &unk_1E80B3F10;
  v9 = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke_447;
  v6[3] = &unk_1E80B41E0;
  v6[4] = *(a1 + 32);
  v7 = v9;
  v5 = v9;
  [v3 launchTaskWithSelector:v4 remainingAttempts:3 proxyErrorHandler:v8 taskBlock:v6];
}

void __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while stopping monitoring of remote status, error, %@", &v6, 0xCu);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, v3);
    }
  }
}

void __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke_447(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke_2_448;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 stopMonitoringRemoteStatusWithReply:v4];
}

void __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke_2_448(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __58__RTRoutineManager_stopMonitoringRemoteStatusWithHandler___block_invoke_3(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(v1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while stopping monitoring of remote status, error, %@", &v4, 0xCu);
    }

    result = *(v1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0, *(v1 + 32));
    }
  }

  return result;
}

- (void)onRemoteStatusUpdate:(int64_t)update error:(id)error
{
  errorCopy = error;
  remoteStatusHandler = [(RTRoutineManager *)self remoteStatusHandler];

  if (remoteStatusHandler)
  {
    remoteStatusHandler2 = [(RTRoutineManager *)self remoteStatusHandler];
    (remoteStatusHandler2)[2](remoteStatusHandler2, update, errorCopy);
  }
}

- (void)fetchLookbackWindowStartDateWithLocation:(id)location handler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchLookbackWindowStartDateWithLocation:handler:]";
      v20 = 1024;
      v21 = 1414;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __69__RTRoutineManager_fetchLookbackWindowStartDateWithLocation_handler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__RTRoutineManager_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_2;
  v12[3] = &unk_1E80B3F60;
  v13 = locationCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = locationCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __69__RTRoutineManager_fetchLookbackWindowStartDateWithLocation_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = MEMORY[0x1E695DF00];
    v4 = a2;
    v5 = [v3 date];
    (*(v2 + 16))(v2, v5, v4);
  }
}

void __69__RTRoutineManager_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__RTRoutineManager_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_3;
  v5[3] = &unk_1E80B4230;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchLookbackWindowStartDateWithLocation:v3 reply:v5];
}

void __69__RTRoutineManager_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__RTRoutineManager_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __69__RTRoutineManager_fetchLookbackWindowStartDateWithLocation_handler___block_invoke_4(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)enumerateObjectsWithOptions:(id)options usingBlock:(id)block
{
  v36[1] = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blockCopy = block;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  if (blockCopy)
  {
    if (optionsCopy)
    {
      queue = [(RTRoutineManager *)self queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __59__RTRoutineManager_enumerateObjectsWithOptions_usingBlock___block_invoke;
      block[3] = &unk_1E80B42A8;
      block[4] = self;
      v24 = a2;
      v22 = blockCopy;
      v23 = &v25;
      v21 = optionsCopy;
      dispatch_sync(queue, block);
    }

    else
    {
      v14 = MEMORY[0x1E696ABC0];
      v29 = *MEMORY[0x1E696A578];
      v30 = @"options is required";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v16 = [v14 errorWithDomain:@"RTErrorDomain" code:7 userInfo:v15];

      v17 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        *buf = 138412546;
        v32 = v19;
        v33 = 2112;
        v34 = v16;
        _os_log_error_impl(&dword_1BF1C4000, v17, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
      }

      (*(blockCopy + 2))(blockCopy, 0, v16, v26 + 3);
    }
  }

  else
  {
    v10 = MEMORY[0x1E696ABC0];
    v35 = *MEMORY[0x1E696A578];
    v36[0] = @"block is required";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v12 = [v10 errorWithDomain:@"RTErrorDomain" code:7 userInfo:v11];

    v13 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v18 = NSStringFromSelector(a2);
      *buf = 138412546;
      v32 = v18;
      v33 = 2112;
      v34 = v12;
      _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "%@, error, %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v25, 8);
}

void __59__RTRoutineManager_enumerateObjectsWithOptions_usingBlock___block_invoke(uint64_t a1)
{
  v54[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 64);
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __59__RTRoutineManager_enumerateObjectsWithOptions_usingBlock___block_invoke_2;
  v44[3] = &unk_1E80B4258;
  v4 = *(a1 + 48);
  v5 = *(a1 + 56);
  v45 = v4;
  v46 = v5;
  v6 = [v2 _proxyForServicingSelector:v3 asynchronous:0 withErrorHandler:v44];
  if (!v6)
  {
    v22 = MEMORY[0x1E696ABC0];
    v53 = *MEMORY[0x1E696A578];
    v54[0] = @"daemonProxy was nil";
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v54 forKeys:&v53 count:1];
    v24 = [v22 errorWithDomain:@"RTErrorDomain" code:0 userInfo:v23];

    (*(*(a1 + 48) + 16))();
    goto LABEL_26;
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy_;
  v42 = __Block_byref_object_dispose_;
  v43 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy_;
  v36 = __Block_byref_object_dispose_;
  v37 = 0;
  aClass = [*(a1 + 40) enumeratedType];
  v7 = MEMORY[0x1E69E9C10];
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  *&v8 = 138412802;
  v25 = v8;
  do
  {
    v9 = objc_autoreleasePoolPush();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v10 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v19 = NSStringFromClass(aClass);
        v20 = [*(a1 + 40) batchSize];
        v21 = v29[3];
        *buf = v25;
        v48 = v19;
        v49 = 2048;
        v50 = v20;
        v51 = 2048;
        v52 = v21;
        _os_log_debug_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_DEBUG, "iterating objects of type, %@, batch size, %lu, offset, %lu", buf, 0x20u);
      }
    }

    v11 = *(a1 + 40);
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v29[3], v25}];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __59__RTRoutineManager_enumerateObjectsWithOptions_usingBlock___block_invoke_459;
    v27[3] = &unk_1E80B4280;
    v27[4] = &v38;
    v27[5] = &v32;
    v27[6] = &v28;
    [v6 fetchEnumerableObjectsWithOptions:v11 offset:v12 reply:v27];

    if (v33[5])
    {
      v13 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v18 = v33[5];
        *buf = 138412546;
        v48 = aClass;
        v49 = 2112;
        v50 = v18;
        _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "received error while fetching stored of type %@, %@, breaking out.", buf, 0x16u);
      }

      (*(*(a1 + 48) + 16))();
      goto LABEL_11;
    }

    if (![v39[5] count])
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = aClass;
          v16 = v15;
          v17 = "no more stored objects of type %@ to enumerate, breaking out.";
          goto LABEL_22;
        }

LABEL_23:
      }

LABEL_11:
      v14 = 0;
      goto LABEL_12;
    }

    (*(*(a1 + 48) + 16))();
    if (*(*(*(a1 + 56) + 8) + 24) == 1)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v15 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v48 = aClass;
          v16 = v15;
          v17 = "client set stop bit while enumerating stored objects of type %@, breaking out.";
LABEL_22:
          _os_log_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
          goto LABEL_23;
        }

        goto LABEL_23;
      }

      goto LABEL_11;
    }

    v14 = 1;
LABEL_12:
    objc_autoreleasePoolPop(v9);
  }

  while ((v14 & 1) != 0);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  _Block_object_dispose(&v38, 8);
LABEL_26:
}

void __59__RTRoutineManager_enumerateObjectsWithOptions_usingBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "received error while getting synchronous proxy to enumerate stored locations, %@.", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __59__RTRoutineManager_enumerateObjectsWithOptions_usingBlock___block_invoke_459(void *a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v8 = a3;
  v9 = a4;
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  objc_storeStrong((*(a1[5] + 8) + 40), a4);
  if (v8)
  {
    *(*(a1[6] + 8) + 24) = [v8 unsignedIntegerValue];
  }
}

- (void)enumerateStoredLocationsWithOptions:(id)options usingBlock:(id)block
{
  v22 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blockCopy = block;
  if (blockCopy)
  {
    queue = [(RTRoutineManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __67__RTRoutineManager_enumerateStoredLocationsWithOptions_usingBlock___block_invoke;
    block[3] = &unk_1E80B4460;
    block[4] = self;
    v14 = optionsCopy;
    v15 = blockCopy;
    dispatch_sync(queue, block);
  }

  else
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager enumerateStoredLocationsWithOptions:usingBlock:]";
      v20 = 1024;
      v21 = 1532;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: block (in %s:%d)", buf, 0x12u);
    }

    v16 = *MEMORY[0x1E696A578];
    v17 = @"An enumeration block is a required parameter.";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
    v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RTErrorDomain" code:7 userInfo:v10];
    v12 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = v11;
      _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "An enumeration block is a required parameter, %@", buf, 0xCu);
    }
  }
}

- (void)_enumerateStoredLocationsWithOptions:(id)options usingBlock:(id)block
{
  v71 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  blockCopy = block;
  if (!blockCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v67 = 136315394;
      *&v67[4] = "[RTRoutineManager _enumerateStoredLocationsWithOptions:usingBlock:]";
      *&v67[12] = 1024;
      *&v67[14] = 1552;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: block (in %s:%d)", v67, 0x12u);
    }
  }

  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 0;
  v10 = [[RTStoredLocationEnumerationContext alloc] initWithEnumerationOptions:optionsCopy];
  v52[0] = MEMORY[0x1E69E9820];
  v52[1] = 3221225472;
  v52[2] = __68__RTRoutineManager__enumerateStoredLocationsWithOptions_usingBlock___block_invoke;
  v52[3] = &unk_1E80B4258;
  v11 = blockCopy;
  v53 = v11;
  v54 = &v55;
  v43 = [(RTRoutineManager *)self _proxyForServicingSelector:a2 asynchronous:0 withErrorHandler:v52];
  if (!v43)
  {
    goto LABEL_13;
  }

  *v67 = 0;
  *&v67[8] = v67;
  *&v67[16] = 0x3032000000;
  v68 = __Block_byref_object_copy_;
  v69 = __Block_byref_object_dispose_;
  v70 = 0;
  v46 = 0;
  v47 = &v46;
  v48 = 0x3032000000;
  v49 = __Block_byref_object_copy_;
  v50 = __Block_byref_object_dispose_;
  v51 = 0;
  if (([optionsCopy downsampleRequired] & 1) == 0)
  {
    *&v12 = 138412290;
    v40 = v12;
    while (1)
    {
      v15 = objc_autoreleasePoolPush();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        v16 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
        {
          v41 = optionsCopy;
          options = [(RTStoredLocationEnumerationContext *)v10 options];
          dateInterval = [options dateInterval];
          options2 = [(RTStoredLocationEnumerationContext *)v10 options];
          [options2 horizontalAccuracy];
          v28 = v27;
          options3 = [(RTStoredLocationEnumerationContext *)v10 options];
          batchSize = [options3 batchSize];
          offset = [(RTStoredLocationEnumerationContext *)v10 offset];
          *buf = 138413058;
          v60 = dateInterval;
          v61 = 2048;
          v62 = v28;
          v63 = 2048;
          v64 = batchSize;
          v65 = 2048;
          v66 = offset;
          _os_log_debug_impl(&dword_1BF1C4000, v16, OS_LOG_TYPE_DEBUG, "iterating stored locations between %@, horizontal accuracy, %lf, batch size, %lu, offset, %lu", buf, 0x2Au);

          optionsCopy = v41;
        }
      }

      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __68__RTRoutineManager__enumerateStoredLocationsWithOptions_usingBlock___block_invoke_465;
      v44[3] = &unk_1E80B42D0;
      v44[4] = v67;
      v44[5] = &v46;
      [v43 fetchStoredLocationsWithContext:v10 reply:{v44, v40}];
      (*(v11 + 2))(v11, *(*&v67[8] + 40), v47[5], v56 + 3);
      if (*(v56 + 24) == 1)
      {
        break;
      }

      if (v47[5])
      {
        options4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
        if (os_log_type_enabled(options4, OS_LOG_TYPE_ERROR))
        {
          v32 = v47[5];
          *buf = v40;
          v60 = v32;
          _os_log_error_impl(&dword_1BF1C4000, options4, OS_LOG_TYPE_ERROR, "received error while fetching stored locations, %@, breaking out.", buf, 0xCu);
        }

        goto LABEL_27;
      }

      if ([*(*&v67[8] + 40) count])
      {
        offset2 = [(RTStoredLocationEnumerationContext *)v10 offset];
        v22 = [*(*&v67[8] + 40) count];
        v23 = [RTStoredLocationEnumerationContext alloc];
        options4 = [(RTStoredLocationEnumerationContext *)v10 options];
        v24 = [(RTStoredLocationEnumerationContext *)v23 initWithEnumerationOptions:options4 offset:v22 + offset2];

        v20 = 1;
        v10 = v24;
        goto LABEL_28;
      }

      if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
LABEL_34:
        v20 = 0;
        goto LABEL_35;
      }

      options4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
      if (os_log_type_enabled(options4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        v18 = options4;
        v19 = "no more stored locations to enumerate, breaking out.";
LABEL_23:
        _os_log_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_INFO, v19, buf, 2u);
      }

LABEL_27:
      v20 = 0;
LABEL_28:

LABEL_35:
      objc_autoreleasePoolPop(v15);
      if ((v20 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      goto LABEL_34;
    }

    options4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (!os_log_type_enabled(options4, OS_LOG_TYPE_INFO))
    {
      goto LABEL_27;
    }

    *buf = 0;
    v18 = options4;
    v19 = "client set stop bit while enumerating stored locations, breaking out.";
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v13 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      options5 = [(RTStoredLocationEnumerationContext *)v10 options];
      dateInterval2 = [options5 dateInterval];
      options6 = [(RTStoredLocationEnumerationContext *)v10 options];
      [options6 horizontalAccuracy];
      v37 = v36;
      options7 = [(RTStoredLocationEnumerationContext *)v10 options];
      batchSize2 = [options7 batchSize];
      *buf = 138412802;
      v60 = dateInterval2;
      v61 = 2048;
      v62 = v37;
      v63 = 2048;
      v64 = batchSize2;
      _os_log_debug_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_DEBUG, "fetching downsampled locations between %@, horizontal accuracy, %lf, output size, %lu", buf, 0x20u);
    }
  }

  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __68__RTRoutineManager__enumerateStoredLocationsWithOptions_usingBlock___block_invoke_464;
  v45[3] = &unk_1E80B42D0;
  v45[4] = v67;
  v45[5] = &v46;
  [v43 fetchStoredLocationsWithContext:v10 reply:v45];
  v14 = v56;
  *(v56 + 24) = 1;
  (*(v11 + 2))(v11, *(*&v67[8] + 40), v47[5], v14 + 3);
LABEL_12:
  _Block_object_dispose(&v46, 8);

  _Block_object_dispose(v67, 8);
LABEL_13:

  _Block_object_dispose(&v55, 8);
}

void __68__RTRoutineManager__enumerateStoredLocationsWithOptions_usingBlock___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "received error while getting synchronous proxy to enumerate stored locations, %@.", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __68__RTRoutineManager__enumerateStoredLocationsWithOptions_usingBlock___block_invoke_464(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

void __68__RTRoutineManager__enumerateStoredLocationsWithOptions_usingBlock___block_invoke_465(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)fetchRoutineModeFromLocation:(id)location withHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchRoutineModeFromLocation:withHandler:]";
      v20 = 1024;
      v21 = 1622;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__RTRoutineManager_fetchRoutineModeFromLocation_withHandler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__RTRoutineManager_fetchRoutineModeFromLocation_withHandler___block_invoke_2;
  v12[3] = &unk_1E80B3F60;
  v13 = locationCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = locationCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __61__RTRoutineManager_fetchRoutineModeFromLocation_withHandler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __61__RTRoutineManager_fetchRoutineModeFromLocation_withHandler___block_invoke_3;
  v5[3] = &unk_1E80B4190;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchRoutineModeFromLocation:v3 reply:v5];
}

void __61__RTRoutineManager_fetchRoutineModeFromLocation_withHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__RTRoutineManager_fetchRoutineModeFromLocation_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4168;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)fetchEstimatedLocationAtDate:(id)date handler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (dateCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[RTRoutineManager fetchEstimatedLocationAtDate:handler:]";
    v22 = 1024;
    v23 = 1641;
    _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTRoutineManager fetchEstimatedLocationAtDate:handler:]";
      v22 = 1024;
      v23 = 1642;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __57__RTRoutineManager_fetchEstimatedLocationAtDate_handler___block_invoke;
  v18[3] = &unk_1E80B3F10;
  v19 = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__RTRoutineManager_fetchEstimatedLocationAtDate_handler___block_invoke_2;
  v14[3] = &unk_1E80B3F60;
  v15 = dateCopy;
  selfCopy = self;
  v17 = v19;
  v12 = v19;
  v13 = dateCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v18 taskBlock:v14];
}

uint64_t __57__RTRoutineManager_fetchEstimatedLocationAtDate_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __57__RTRoutineManager_fetchEstimatedLocationAtDate_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __57__RTRoutineManager_fetchEstimatedLocationAtDate_handler___block_invoke_3;
  v5[3] = &unk_1E80B42F8;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchEstimatedLocationAtDate:v3 options:0 reply:v5];
}

void __57__RTRoutineManager_fetchEstimatedLocationAtDate_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__RTRoutineManager_fetchEstimatedLocationAtDate_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __57__RTRoutineManager_fetchEstimatedLocationAtDate_handler___block_invoke_4(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)fetchEstimatedLocationAtDate:(id)date options:(id)options handler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  optionsCopy = options;
  handlerCopy = handler;
  v12 = handlerCopy;
  if (dateCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v13 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v26 = "[RTRoutineManager fetchEstimatedLocationAtDate:options:handler:]";
    v27 = 1024;
    v28 = 1665;
    _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: date (in %s:%d)", buf, 0x12u);
  }

  if (!v12)
  {
LABEL_7:
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "[RTRoutineManager fetchEstimatedLocationAtDate:options:handler:]";
      v27 = 1024;
      v28 = 1666;
      _os_log_error_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __65__RTRoutineManager_fetchEstimatedLocationAtDate_options_handler___block_invoke;
  v23[3] = &unk_1E80B3F10;
  v24 = v12;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __65__RTRoutineManager_fetchEstimatedLocationAtDate_options_handler___block_invoke_2;
  v18[3] = &unk_1E80B3F38;
  v19 = dateCopy;
  v20 = optionsCopy;
  selfCopy = self;
  v22 = v24;
  v15 = v24;
  v16 = optionsCopy;
  v17 = dateCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v23 taskBlock:v18];
}

uint64_t __65__RTRoutineManager_fetchEstimatedLocationAtDate_options_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __65__RTRoutineManager_fetchEstimatedLocationAtDate_options_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__RTRoutineManager_fetchEstimatedLocationAtDate_options_handler___block_invoke_3;
  v6[3] = &unk_1E80B42F8;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 fetchEstimatedLocationAtDate:v3 options:v4 reply:v6];
}

void __65__RTRoutineManager_fetchEstimatedLocationAtDate_options_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__RTRoutineManager_fetchEstimatedLocationAtDate_options_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __65__RTRoutineManager_fetchEstimatedLocationAtDate_options_handler___block_invoke_4(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)fetchNextPredictedLocationsOfInterestWithHandler:(id)handler
{
  v10 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[RTRoutineManager fetchNextPredictedLocationsOfInterestWithHandler:]";
      v8 = 1024;
      v9 = 1689;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", &v6, 0x12u);
    }
  }

  [(RTRoutineManager *)self fetchNextPredictedLocationsOfInterestFromLocation:0 startDate:0 timeInterval:handlerCopy withHandler:-1.0];
}

- (void)fetchNextPredictedLocationsOfInterestFromLocation:(id)location startDate:(id)date timeInterval:(double)interval withHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  dateCopy = date;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[RTRoutineManager fetchNextPredictedLocationsOfInterestFromLocation:startDate:timeInterval:withHandler:]";
      v28 = 1024;
      v29 = 1702;
      _os_log_error_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __105__RTRoutineManager_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_withHandler___block_invoke;
  v24[3] = &unk_1E80B3F10;
  v25 = handlerCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __105__RTRoutineManager_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_withHandler___block_invoke_2;
  v18[3] = &unk_1E80B4320;
  v19 = locationCopy;
  v20 = dateCopy;
  intervalCopy = interval;
  selfCopy = self;
  v22 = v25;
  v15 = v25;
  v16 = dateCopy;
  v17 = locationCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v24 taskBlock:v18];
}

void __105__RTRoutineManager_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_withHandler___block_invoke_2(double *a1, void *a2)
{
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = a1[8];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __105__RTRoutineManager_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_withHandler___block_invoke_3;
  v7[3] = &unk_1E80B4410;
  v6 = *(a1 + 7);
  *&v7[4] = a1[6];
  v8 = v6;
  [a2 fetchNextPredictedLocationsOfInterestFromLocation:v3 startDate:v4 timeInterval:v7 reply:v5];
}

void __105__RTRoutineManager_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __105__RTRoutineManager_fetchNextPredictedLocationsOfInterestFromLocation_startDate_timeInterval_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchPredictedLocationsOfInterestAssociatedToTitle:(id)title location:(id)location calendarIdentifier:(id)identifier withHandler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  locationCopy = location;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[RTRoutineManager fetchPredictedLocationsOfInterestAssociatedToTitle:location:calendarIdentifier:withHandler:]";
      v30 = 1024;
      v31 = 1724;
      _os_log_error_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __111__RTRoutineManager_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke;
  v26[3] = &unk_1E80B3F10;
  v27 = handlerCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __111__RTRoutineManager_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke_2;
  v20[3] = &unk_1E80B4348;
  v21 = titleCopy;
  v22 = locationCopy;
  v23 = identifierCopy;
  selfCopy = self;
  v25 = v27;
  v16 = v27;
  v17 = identifierCopy;
  v18 = locationCopy;
  v19 = titleCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v26 taskBlock:v20];
}

void __111__RTRoutineManager_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __111__RTRoutineManager_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke_3;
  v7[3] = &unk_1E80B4410;
  v5 = a1[6];
  v6 = a1[8];
  v7[4] = a1[7];
  v8 = v6;
  [a2 fetchPredictedLocationsOfInterestAssociatedToTitle:v3 location:v4 calendarIdentifier:v5 reply:v7];
}

void __111__RTRoutineManager_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __111__RTRoutineManager_fetchPredictedLocationsOfInterestAssociatedToTitle_location_calendarIdentifier_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchPredictedLocationsOfInterestOnDate:(id)date withHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchPredictedLocationsOfInterestOnDate:withHandler:]";
      v20 = 1024;
      v21 = 1743;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __72__RTRoutineManager_fetchPredictedLocationsOfInterestOnDate_withHandler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__RTRoutineManager_fetchPredictedLocationsOfInterestOnDate_withHandler___block_invoke_2;
  v12[3] = &unk_1E80B3F60;
  v13 = dateCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = dateCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __72__RTRoutineManager_fetchPredictedLocationsOfInterestOnDate_withHandler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__RTRoutineManager_fetchPredictedLocationsOfInterestOnDate_withHandler___block_invoke_3;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchPredictedLocationsOfInterestOnDate:v3 reply:v5];
}

void __72__RTRoutineManager_fetchPredictedLocationsOfInterestOnDate_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__RTRoutineManager_fetchPredictedLocationsOfInterestOnDate_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)startMonitoringVisitsWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager startMonitoringVisitsWithHandler:]";
      v14 = 1024;
      v15 = 1761;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__RTRoutineManager_startMonitoringVisitsWithHandler___block_invoke;
  block[3] = &unk_1E80B4168;
  block[4] = self;
  v10 = handlerCopy;
  v11 = a2;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __53__RTRoutineManager_startMonitoringVisitsWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVisitHandler:*(a1 + 40)];
  v2 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__RTRoutineManager_startMonitoringVisitsWithHandler___block_invoke_2;
  v7[3] = &unk_1E80B3F10;
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__RTRoutineManager_startMonitoringVisitsWithHandler___block_invoke_3;
  v5[3] = &unk_1E80B4050;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 _launchTaskWithSelector:v2 remainingAttempts:3 proxyErrorHandler:v7 taskBlock:v5];
}

void __53__RTRoutineManager_startMonitoringVisitsWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __53__RTRoutineManager_startMonitoringVisitsWithHandler___block_invoke_4;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 startMonitoringVisitsWithReply:v4];
}

void __53__RTRoutineManager_startMonitoringVisitsWithHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__RTRoutineManager_startMonitoringVisitsWithHandler___block_invoke_5;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)stopMonitoringVisits
{
  queue = [(RTRoutineManager *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__RTRoutineManager_stopMonitoringVisits__block_invoke;
  v5[3] = &unk_1E80B4208;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
}

void __40__RTRoutineManager_stopMonitoringVisits__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) visitHandler];
  [*(a1 + 32) setVisitHandler:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__RTRoutineManager_stopMonitoringVisits__block_invoke_2;
  v8[3] = &unk_1E80B3F10;
  v9 = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__RTRoutineManager_stopMonitoringVisits__block_invoke_467;
  v6[3] = &unk_1E80B4050;
  v6[4] = *(a1 + 32);
  v7 = v9;
  v5 = v9;
  [v3 _launchTaskWithSelector:v4 remainingAttempts:3 proxyErrorHandler:v8 taskBlock:v6];
}

void __40__RTRoutineManager_stopMonitoringVisits__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while stopping monitoring visits, error, %@", &v6, 0xCu);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, v3);
    }
  }
}

void __40__RTRoutineManager_stopMonitoringVisits__block_invoke_467(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__RTRoutineManager_stopMonitoringVisits__block_invoke_2_468;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 stopMonitoringVisitsWithReply:v4];
}

void __40__RTRoutineManager_stopMonitoringVisits__block_invoke_2_468(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__RTRoutineManager_stopMonitoringVisits__block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __40__RTRoutineManager_stopMonitoringVisits__block_invoke_3(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(v1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while stopping monitoring visits, error, %@", &v4, 0xCu);
    }

    result = *(v1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0, *(v1 + 32));
    }
  }

  return result;
}

- (void)onVisit:(id)visit withError:(id)error
{
  visitCopy = visit;
  errorCopy = error;
  visitHandler = [(RTRoutineManager *)self visitHandler];

  if (visitHandler)
  {
    visitHandler2 = [(RTRoutineManager *)self visitHandler];
    (visitHandler2)[2](visitHandler2, visitCopy, errorCopy);
  }
}

- (void)startLeechingVisitsWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager startLeechingVisitsWithHandler:]";
      v14 = 1024;
      v15 = 1816;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__RTRoutineManager_startLeechingVisitsWithHandler___block_invoke;
  block[3] = &unk_1E80B4168;
  block[4] = self;
  v10 = handlerCopy;
  v11 = a2;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __51__RTRoutineManager_startLeechingVisitsWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLeechedVisitHandler:*(a1 + 40)];
  v2 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__RTRoutineManager_startLeechingVisitsWithHandler___block_invoke_2;
  v7[3] = &unk_1E80B3F10;
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__RTRoutineManager_startLeechingVisitsWithHandler___block_invoke_3;
  v5[3] = &unk_1E80B4050;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 _launchTaskWithSelector:v2 remainingAttempts:3 proxyErrorHandler:v7 taskBlock:v5];
}

void __51__RTRoutineManager_startLeechingVisitsWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__RTRoutineManager_startLeechingVisitsWithHandler___block_invoke_4;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 startLeechingVisitsWithReply:v4];
}

void __51__RTRoutineManager_startLeechingVisitsWithHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__RTRoutineManager_startLeechingVisitsWithHandler___block_invoke_5;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)stopLeechingVisits
{
  queue = [(RTRoutineManager *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__RTRoutineManager_stopLeechingVisits__block_invoke;
  v5[3] = &unk_1E80B4208;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
}

void __38__RTRoutineManager_stopLeechingVisits__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) leechedVisitHandler];
  [*(a1 + 32) setLeechedVisitHandler:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __38__RTRoutineManager_stopLeechingVisits__block_invoke_2;
  v8[3] = &unk_1E80B3F10;
  v9 = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__RTRoutineManager_stopLeechingVisits__block_invoke_469;
  v6[3] = &unk_1E80B4050;
  v6[4] = *(a1 + 32);
  v7 = v9;
  v5 = v9;
  [v3 _launchTaskWithSelector:v4 remainingAttempts:3 proxyErrorHandler:v8 taskBlock:v6];
}

void __38__RTRoutineManager_stopLeechingVisits__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while stopping leeching visits, error, %@", &v6, 0xCu);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, v3);
    }
  }
}

void __38__RTRoutineManager_stopLeechingVisits__block_invoke_469(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__RTRoutineManager_stopLeechingVisits__block_invoke_2_470;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 stopLeechingVisitsWithReply:v4];
}

void __38__RTRoutineManager_stopLeechingVisits__block_invoke_2_470(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__RTRoutineManager_stopLeechingVisits__block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __38__RTRoutineManager_stopLeechingVisits__block_invoke_3(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(v1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while stopping leeching visits, error, %@", &v4, 0xCu);
    }

    result = *(v1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0, *(v1 + 32));
    }
  }

  return result;
}

- (void)onLeechedVisit:(id)visit withError:(id)error
{
  visitCopy = visit;
  errorCopy = error;
  leechedVisitHandler = [(RTRoutineManager *)self leechedVisitHandler];

  if (leechedVisitHandler)
  {
    leechedVisitHandler2 = [(RTRoutineManager *)self leechedVisitHandler];
    (leechedVisitHandler2)[2](leechedVisitHandler2, visitCopy, errorCopy);
  }
}

- (void)startLeechingLowConfidenceVisitsWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager startLeechingLowConfidenceVisitsWithHandler:]";
      v14 = 1024;
      v15 = 1872;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__RTRoutineManager_startLeechingLowConfidenceVisitsWithHandler___block_invoke;
  block[3] = &unk_1E80B4168;
  block[4] = self;
  v10 = handlerCopy;
  v11 = a2;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __64__RTRoutineManager_startLeechingLowConfidenceVisitsWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setLeechedLowConfidenceVisitHandler:*(a1 + 40)];
  v2 = *(a1 + 48);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__RTRoutineManager_startLeechingLowConfidenceVisitsWithHandler___block_invoke_2;
  v7[3] = &unk_1E80B3F10;
  v3 = *(a1 + 32);
  v8 = *(a1 + 40);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__RTRoutineManager_startLeechingLowConfidenceVisitsWithHandler___block_invoke_3;
  v5[3] = &unk_1E80B4050;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 _launchTaskWithSelector:v2 remainingAttempts:3 proxyErrorHandler:v7 taskBlock:v5];
}

void __64__RTRoutineManager_startLeechingLowConfidenceVisitsWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__RTRoutineManager_startLeechingLowConfidenceVisitsWithHandler___block_invoke_4;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 startLeechingLowConfidenceVisitsWithReply:v4];
}

void __64__RTRoutineManager_startLeechingLowConfidenceVisitsWithHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__RTRoutineManager_startLeechingLowConfidenceVisitsWithHandler___block_invoke_5;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)stopLeechingLowConfidenceVisits
{
  queue = [(RTRoutineManager *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke;
  v5[3] = &unk_1E80B4208;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
}

void __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) leechedLowConfidenceVisitHandler];
  [*(a1 + 32) setLeechedLowConfidenceVisitHandler:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke_2;
  v8[3] = &unk_1E80B3F10;
  v9 = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke_471;
  v6[3] = &unk_1E80B4050;
  v6[4] = *(a1 + 32);
  v7 = v9;
  v5 = v9;
  [v3 _launchTaskWithSelector:v4 remainingAttempts:3 proxyErrorHandler:v8 taskBlock:v6];
}

void __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while stopping leeching low confidence visits, error, %@", &v6, 0xCu);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, v3);
    }
  }
}

void __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke_471(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke_2_472;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 stopLeechingLowConfidenceVisitsWithReply:v4];
}

void __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke_2_472(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __51__RTRoutineManager_stopLeechingLowConfidenceVisits__block_invoke_3(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(v1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while stopping leeching low confidence visits, error, %@", &v4, 0xCu);
    }

    result = *(v1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0, *(v1 + 32));
    }
  }

  return result;
}

- (void)onLeechedLowConfidenceVisit:(id)visit withError:(id)error
{
  visitCopy = visit;
  errorCopy = error;
  leechedLowConfidenceVisitHandler = [(RTRoutineManager *)self leechedLowConfidenceVisitHandler];

  if (leechedLowConfidenceVisitHandler)
  {
    leechedLowConfidenceVisitHandler2 = [(RTRoutineManager *)self leechedLowConfidenceVisitHandler];
    (leechedLowConfidenceVisitHandler2)[2](leechedLowConfidenceVisitHandler2, visitCopy, errorCopy);
  }
}

- (void)startMonitoringPlaceInferencesWithOptions:(id)options handler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTRoutineManager startMonitoringPlaceInferencesWithOptions:handler:]";
      v19 = 1024;
      v20 = 1931;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke;
  v13[3] = &unk_1E80B4370;
  v13[4] = self;
  v14 = optionsCopy;
  v15 = handlerCopy;
  v16 = a2;
  v11 = handlerCopy;
  v12 = optionsCopy;
  dispatch_async(queue, v13);
}

void __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPlaceInferenceOptions:*(a1 + 40)];
  [*(a1 + 32) setPlaceInferencesHandler:*(a1 + 48)];
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke_2;
  v10[3] = &unk_1E80B3F10;
  v3 = *(a1 + 56);
  v11 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke_473;
  v6[3] = &unk_1E80B3F60;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v2 _launchTaskWithSelector:v3 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v6];
}

void __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while starting to monitor place inferences, error, %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke_473(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke_2_474;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 startMonitoringPlaceInferencesWithOptions:v3 reply:v5];
}

void __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke_2_474(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __70__RTRoutineManager_startMonitoringPlaceInferencesWithOptions_handler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while starting to monitor place inferences, error, %@", &v5, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

- (void)stopMonitoringPlaceInferences
{
  queue = [(RTRoutineManager *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke;
  v5[3] = &unk_1E80B4208;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
}

void __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) placeInferencesHandler];
  [*(a1 + 32) setPlaceInferencesHandler:0];
  [*(a1 + 32) setPlaceInferenceOptions:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke_2;
  v8[3] = &unk_1E80B3F10;
  v9 = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke_475;
  v6[3] = &unk_1E80B4050;
  v6[4] = *(a1 + 32);
  v7 = v9;
  v5 = v9;
  [v3 _launchTaskWithSelector:v4 remainingAttempts:3 proxyErrorHandler:v8 taskBlock:v6];
}

void __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while stopping to monitor place inferences, error, %@", &v6, 0xCu);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, v3);
    }
  }
}

void __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke_475(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke_2_476;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 stopMonitoringPlaceInferencesWithReply:v4];
}

void __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke_2_476(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __49__RTRoutineManager_stopMonitoringPlaceInferences__block_invoke_3(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(v1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while stopping to monitor place inferences, error, %@", &v4, 0xCu);
    }

    result = *(v1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0, *(v1 + 32));
    }
  }

  return result;
}

- (void)onPlaceInferences:(id)inferences error:(id)error
{
  inferencesCopy = inferences;
  errorCopy = error;
  placeInferencesHandler = [(RTRoutineManager *)self placeInferencesHandler];

  if (placeInferencesHandler)
  {
    placeInferencesHandler2 = [(RTRoutineManager *)self placeInferencesHandler];
    (placeInferencesHandler2)[2](placeInferencesHandler2, inferencesCopy, errorCopy);
  }
}

- (void)fetchStoredVisitsWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v9 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v10 = os_signpost_id_generate(v9);

  v11 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "fetchStoredVisitsWithOptions", " enableTelemetry=YES ", buf, 2u);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__RTRoutineManager_fetchStoredVisitsWithOptions_handler___block_invoke;
  v20[3] = &unk_1E80B4078;
  v22 = v10;
  v21 = handlerCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__RTRoutineManager_fetchStoredVisitsWithOptions_handler___block_invoke_477;
  v15[3] = &unk_1E80B43C0;
  v16 = optionsCopy;
  selfCopy = self;
  v18 = v21;
  v19 = v10;
  v13 = v21;
  v14 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v20 taskBlock:v15];
}

void __57__RTRoutineManager_fetchStoredVisitsWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v8 = 134349056;
    v9 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fetchStoredVisitsWithOptions", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v8, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }
}

void __57__RTRoutineManager_fetchStoredVisitsWithOptions_handler___block_invoke_477(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__RTRoutineManager_fetchStoredVisitsWithOptions_handler___block_invoke_2;
  v6[3] = &unk_1E80B4398;
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[4];
  v6[4] = a1[5];
  v8 = v3;
  v7 = v4;
  [a2 fetchStoredVisitsWithOptions:v5 reply:v6];
}

void __57__RTRoutineManager_fetchStoredVisitsWithOptions_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__RTRoutineManager_fetchStoredVisitsWithOptions_handler___block_invoke_3;
  v11[3] = &unk_1E80B4370;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __57__RTRoutineManager_fetchStoredVisitsWithOptions_handler___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) code];
    v7 = 134349056;
    v8 = v5;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetchStoredVisitsWithOptions", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)processHindsightVisitsWithHandler:(id)handler
{
  handlerCopy = handler;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__RTRoutineManager_processHindsightVisitsWithHandler___block_invoke;
  v9[3] = &unk_1E80B3F10;
  v10 = handlerCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__RTRoutineManager_processHindsightVisitsWithHandler___block_invoke_2;
  v7[3] = &unk_1E80B41E0;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v7];
}

uint64_t __54__RTRoutineManager_processHindsightVisitsWithHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54__RTRoutineManager_processHindsightVisitsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__RTRoutineManager_processHindsightVisitsWithHandler___block_invoke_3;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 processHindsightVisitsWithReply:v4];
}

void __54__RTRoutineManager_processHindsightVisitsWithHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__RTRoutineManager_processHindsightVisitsWithHandler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __54__RTRoutineManager_processHindsightVisitsWithHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)fetchFinerGranularityInferredMapItemWithVisitIdentifier:(id)identifier handler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_9;
  }

  if (!identifierCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTRoutineManager fetchFinerGranularityInferredMapItemWithVisitIdentifier:handler:]";
      v22 = 1024;
      v23 = 2042;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    v18 = *MEMORY[0x1E696A578];
    v19 = @"requires a non-nil identifier.";
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    v10 = [v12 initWithDomain:@"RTErrorDomain" code:7 userInfo:v13];

    handlerCopy[2](handlerCopy, 0, v10);
LABEL_9:

    goto LABEL_10;
  }

  queue = [(RTRoutineManager *)self queue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __84__RTRoutineManager_fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke;
  v14[3] = &unk_1E80B4370;
  v14[4] = self;
  v17 = a2;
  v16 = handlerCopy;
  v15 = identifierCopy;
  dispatch_async(queue, v14);

LABEL_10:
}

void __84__RTRoutineManager_fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __84__RTRoutineManager_fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke_2;
  v8[3] = &unk_1E80B3F10;
  v3 = *(a1 + 56);
  v9 = *(a1 + 48);
  v4 = [v2 _proxyForServicingSelector:v3 withErrorHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __84__RTRoutineManager_fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke_3;
  v6[3] = &unk_1E80B43E8;
  v5 = *(a1 + 40);
  v6[4] = *(a1 + 32);
  v7 = *(a1 + 48);
  [v4 fetchFinerGranularityInferredMapItemWithVisitIdentifier:v5 reply:v6];
}

void __84__RTRoutineManager_fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__RTRoutineManager_fetchFinerGranularityInferredMapItemWithVisitIdentifier_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchPlaceInferencesWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (!handlerCopy)
  {
    v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }

    goto LABEL_7;
  }

  if (!optionsCopy)
  {
    v19 = RTErrorInvalidParameterCreate(a2, @"options is required", v9, v10, v11, v12, v13, v14, v20);
    (v15)[2](v15, 0, v19);
LABEL_7:

    goto LABEL_8;
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __60__RTRoutineManager_fetchPlaceInferencesWithOptions_handler___block_invoke;
  v26[3] = &unk_1E80B4410;
  v16 = handlerCopy;
  v26[4] = self;
  v27 = v16;
  v17 = MEMORY[0x1BFB54DD0](v26);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __60__RTRoutineManager_fetchPlaceInferencesWithOptions_handler___block_invoke_3;
  v24[3] = &unk_1E80B3F10;
  v25 = v16;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __60__RTRoutineManager_fetchPlaceInferencesWithOptions_handler___block_invoke_4;
  v21[3] = &unk_1E80B4050;
  v22 = optionsCopy;
  v23 = v17;
  v18 = v17;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v24 taskBlock:v21];

LABEL_8:
}

void __60__RTRoutineManager_fetchPlaceInferencesWithOptions_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 40))
  {
    v7 = [*(a1 + 32) queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __60__RTRoutineManager_fetchPlaceInferencesWithOptions_handler___block_invoke_2;
    block[3] = &unk_1E80B4460;
    v11 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    dispatch_async(v7, block);
  }
}

- (void)fetchFormattedPostalAddressesFromMeCard:(id)card
{
  cardCopy = card;
  v6 = cardCopy;
  if (cardCopy)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __60__RTRoutineManager_fetchFormattedPostalAddressesFromMeCard___block_invoke;
    v10[3] = &unk_1E80B3F10;
    v11 = cardCopy;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__RTRoutineManager_fetchFormattedPostalAddressesFromMeCard___block_invoke_2;
    v8[3] = &unk_1E80B4050;
    v8[4] = self;
    v9 = v11;
    [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];

    v7 = v11;
  }

  else
  {
    v7 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1BF1C4000, v7, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler", buf, 2u);
    }
  }
}

void __60__RTRoutineManager_fetchFormattedPostalAddressesFromMeCard___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__RTRoutineManager_fetchFormattedPostalAddressesFromMeCard___block_invoke_3;
  v4[3] = &unk_1E80B4438;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchFormattedPostalAddressesFromMeCard:v4];
}

void __60__RTRoutineManager_fetchFormattedPostalAddressesFromMeCard___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__RTRoutineManager_fetchFormattedPostalAddressesFromMeCard___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchPredictedContextWithOptions:(id)options completionHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchPredictedContextWithOptions:completionHandler:]";
      v20 = 1024;
      v21 = 2112;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completionHandler (in %s:%d)", buf, 0x12u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__RTRoutineManager_fetchPredictedContextWithOptions_completionHandler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__RTRoutineManager_fetchPredictedContextWithOptions_completionHandler___block_invoke_2;
  v12[3] = &unk_1E80B3F60;
  v13 = optionsCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

uint64_t __71__RTRoutineManager_fetchPredictedContextWithOptions_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __71__RTRoutineManager_fetchPredictedContextWithOptions_completionHandler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__RTRoutineManager_fetchPredictedContextWithOptions_completionHandler___block_invoke_3;
  v5[3] = &unk_1E80B4488;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchPredictedContextWithOptions:v3 reply:v5];
}

void __71__RTRoutineManager_fetchPredictedContextWithOptions_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__RTRoutineManager_fetchPredictedContextWithOptions_completionHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __71__RTRoutineManager_fetchPredictedContextWithOptions_completionHandler___block_invoke_4(void *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1[4])
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[4];
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while fetching predicted context, error, %@", &v5, 0xCu);
    }
  }

  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[5], a1[4]);
  }

  return result;
}

- (void)startMonitoringPredictedContextWithOptions:(id)options completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "[RTRoutineManager startMonitoringPredictedContextWithOptions:completionHandler:]";
    v21 = 1024;
    v22 = 2137;
    _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager startMonitoringPredictedContextWithOptions:completionHandler:]";
      v21 = 1024;
      v22 = 2138;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completionHandler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  queue = [(RTRoutineManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke;
  v15[3] = &unk_1E80B4370;
  v15[4] = self;
  v16 = optionsCopy;
  v17 = v9;
  v18 = a2;
  v13 = v9;
  v14 = optionsCopy;
  dispatch_async(queue, v15);
}

void __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPredictedContextOptions:*(a1 + 40)];
  [*(a1 + 32) setPredictedContextHandler:*(a1 + 48)];
  v2 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke_2;
  v10[3] = &unk_1E80B3F10;
  v3 = *(a1 + 56);
  v11 = *(a1 + 48);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke_484;
  v6[3] = &unk_1E80B3F60;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  v9 = *(a1 + 48);
  [v2 _launchTaskWithSelector:v3 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v6];
}

void __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while starting to monitor predicted context, error, %@", &v6, 0xCu);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke_484(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke_2_485;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 startMonitoringPredictedContextWithOptions:v3 reply:v5];
}

void __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke_2_485(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __81__RTRoutineManager_startMonitoringPredictedContextWithOptions_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while starting to monitor predicted context, error, %@", &v5, 0xCu);
    }
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, 0, *(a1 + 32));
  }

  return result;
}

- (void)stopMonitoringPredictedContextWithHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  if (!handler)
  {
    v5 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v9 = "[RTRoutineManager stopMonitoringPredictedContextWithHandler:]";
      v10 = 1024;
      v11 = 2170;
      _os_log_error_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke;
  v7[3] = &unk_1E80B4208;
  v7[4] = self;
  v7[5] = a2;
  dispatch_sync(queue, v7);
}

void __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) predictedContextHandler];
  [*(a1 + 32) setPredictedContextHandler:0];
  [*(a1 + 32) setPredictedContextOptions:0];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke_2;
  v8[3] = &unk_1E80B3F10;
  v9 = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke_486;
  v6[3] = &unk_1E80B4050;
  v6[4] = *(a1 + 32);
  v7 = v9;
  v5 = v9;
  [v3 launchTaskWithSelector:v4 remainingAttempts:3 proxyErrorHandler:v8 taskBlock:v6];
}

void __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while stopping to monitor predicted context, error, %@", &v6, 0xCu);
    }

    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, 0, v3);
    }
  }
}

void __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke_486(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke_2_487;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 stopMonitoringPredictedContextWithReply:v4];
}

void __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke_2_487(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __62__RTRoutineManager_stopMonitoringPredictedContextWithHandler___block_invoke_3(uint64_t result)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(result + 32))
  {
    v1 = result;
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(v1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while stopping to monitor predicted context, error, %@", &v4, 0xCu);
    }

    result = *(v1 + 40);
    if (result)
    {
      return (*(result + 16))(result, 0, *(v1 + 32));
    }
  }

  return result;
}

- (void)onPredictedContextResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  predictedContextHandler = [(RTRoutineManager *)self predictedContextHandler];

  if (predictedContextHandler)
  {
    predictedContextHandler2 = [(RTRoutineManager *)self predictedContextHandler];
    (predictedContextHandler2)[2](predictedContextHandler2, resultCopy, errorCopy);
  }
}

- (void)fetchPathToDiagnosticFilesWithOptions:(id)options handler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchPathToDiagnosticFilesWithOptions:handler:]";
      v20 = 1024;
      v21 = 2215;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__RTRoutineManager_fetchPathToDiagnosticFilesWithOptions_handler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__RTRoutineManager_fetchPathToDiagnosticFilesWithOptions_handler___block_invoke_2;
  v12[3] = &unk_1E80B44D8;
  v13 = optionsCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __66__RTRoutineManager_fetchPathToDiagnosticFilesWithOptions_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__RTRoutineManager_fetchPathToDiagnosticFilesWithOptions_handler___block_invoke_3;
  v5[3] = &unk_1E80B44B0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchPathToDiagnosticFilesWithOptions:v3 reply:v5];
}

void __66__RTRoutineManager_fetchPathToDiagnosticFilesWithOptions_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__RTRoutineManager_fetchPathToDiagnosticFilesWithOptions_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __66__RTRoutineManager_fetchPathToDiagnosticFilesWithOptions_handler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqualToString:@"RTErrorDomain"])
  {
    [*(a1 + 32) code];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)startMonitoringScenarioTriggerOfType:(unint64_t)type withHandler:(id)handler
{
  v19 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "[RTRoutineManager startMonitoringScenarioTriggerOfType:withHandler:]";
      v17 = 1024;
      v18 = 2238;
      _os_log_error_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke;
  v11[3] = &unk_1E80B4500;
  v11[4] = self;
  v12 = handlerCopy;
  typeCopy = type;
  v14 = a2;
  v10 = handlerCopy;
  dispatch_async(queue, v11);
}

void __69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 144) startMonitoringForScenarioTriggerTypes:*(a1 + 48) handler:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(a1 + 56);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke_2;
  v10[3] = &unk_1E80B3FB0;
  v10[4] = v3;
  v11 = *(a1 + 40);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke_3;
  v7[3] = &unk_1E80B40F0;
  v5 = *(a1 + 40);
  v6 = *(a1 + 32);
  v9 = *(a1 + 48);
  v7[4] = v6;
  v8 = v5;
  [v3 _launchTaskWithSelector:v4 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v7];
}

void __69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 144) registered])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke_3(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke_4;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[5];
  v4 = a1[6];
  v5[4] = a1[4];
  v6 = v3;
  [a2 startMonitoringScenarioTriggerOfType:v4 reply:v5];
}

void __69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke_5;
  block[3] = &unk_1E80B4460;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void *__69__RTRoutineManager_startMonitoringScenarioTriggerOfType_withHandler___block_invoke_5(void *a1)
{
  result = [*(a1[4] + 144) registered];
  if (result && a1[5])
  {
    v3 = *(a1[6] + 16);

    return v3();
  }

  return result;
}

- (void)stopMonitoringScenarioTriggerOfType:(unint64_t)type
{
  queue = [(RTRoutineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__RTRoutineManager_stopMonitoringScenarioTriggerOfType___block_invoke;
  block[3] = &unk_1E80B4598;
  block[4] = self;
  block[5] = type;
  block[6] = a2;
  dispatch_async(queue, block);
}

uint64_t __56__RTRoutineManager_stopMonitoringScenarioTriggerOfType___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 144) stopMonitoringForScenarioTriggerTypes:a1[5]];
  v3 = a1[6];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__RTRoutineManager_stopMonitoringScenarioTriggerOfType___block_invoke_491;
  v6[3] = &unk_1E80B4570;
  v4 = a1[5];
  v7 = a1[4];
  v8 = v4;
  return [v7 _launchTaskWithSelector:v3 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_490 taskBlock:v6];
}

void __56__RTRoutineManager_stopMonitoringScenarioTriggerOfType___block_invoke_2(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&dword_1BF1C4000, v3, OS_LOG_TYPE_ERROR, "Encountered error while stopping monitoring for scenario triggers, error, %@", &v4, 0xCu);
    }
  }
}

uint64_t __56__RTRoutineManager_stopMonitoringScenarioTriggerOfType___block_invoke_491(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__RTRoutineManager_stopMonitoringScenarioTriggerOfType___block_invoke_2_492;
  v4[3] = &unk_1E80B4548;
  v2 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  return [a2 stopMonitoringScenarioTriggerOfType:v2 reply:v4];
}

void __56__RTRoutineManager_stopMonitoringScenarioTriggerOfType___block_invoke_2_492(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__RTRoutineManager_stopMonitoringScenarioTriggerOfType___block_invoke_3;
  block[3] = &unk_1E80B3E70;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __56__RTRoutineManager_stopMonitoringScenarioTriggerOfType___block_invoke_3(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v4 = 138412290;
      v5 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while stopping monitoring for scenario triggers, error, %@", &v4, 0xCu);
    }
  }
}

- (void)onScenarioTrigger:(id)trigger withError:(id)error
{
  v11 = *MEMORY[0x1E69E9840];
  if (trigger)
  {
    scenarioTriggerRegistrant = self->_scenarioTriggerRegistrant;
    triggerCopy = trigger;
    v6 = MEMORY[0x1E695DEC8];
    errorCopy = error;
    triggerCopy2 = trigger;
    v9 = [v6 arrayWithObjects:&triggerCopy count:1];
    [(RTRoutineManagerRegistrantScenarioTrigger *)scenarioTriggerRegistrant onScenarioTriggers:v9 error:errorCopy, triggerCopy, v11];
  }
}

- (void)fetchMonitoredScenarioTriggerTypesWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager fetchMonitoredScenarioTriggerTypesWithHandler:]";
      v14 = 1024;
      v15 = 2293;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__RTRoutineManager_fetchMonitoredScenarioTriggerTypesWithHandler___block_invoke;
  v10[3] = &unk_1E80B3F10;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __66__RTRoutineManager_fetchMonitoredScenarioTriggerTypesWithHandler___block_invoke_2;
  v8[3] = &unk_1E80B4050;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __66__RTRoutineManager_fetchMonitoredScenarioTriggerTypesWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __66__RTRoutineManager_fetchMonitoredScenarioTriggerTypesWithHandler___block_invoke_3;
  v4[3] = &unk_1E80B3F88;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchMonitoredScenarioTriggerTypesWithReply:v4];
}

void __66__RTRoutineManager_fetchMonitoredScenarioTriggerTypesWithHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__RTRoutineManager_fetchMonitoredScenarioTriggerTypesWithHandler___block_invoke_4;
  block[3] = &unk_1E80B4168;
  v10 = *(a1 + 40);
  v11 = a2;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, block);
}

- (void)fetchPredictedExitDatesFromLocation:(id)location onDate:(id)date withHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  dateCopy = date;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTRoutineManager fetchPredictedExitDatesFromLocation:onDate:withHandler:]";
      v25 = 1024;
      v26 = 2312;
      _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __75__RTRoutineManager_fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke;
  v21[3] = &unk_1E80B3F10;
  v22 = handlerCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__RTRoutineManager_fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke_2;
  v16[3] = &unk_1E80B3F38;
  v17 = locationCopy;
  v18 = dateCopy;
  selfCopy = self;
  v20 = v22;
  v13 = v22;
  v14 = dateCopy;
  v15 = locationCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v21 taskBlock:v16];
}

void __75__RTRoutineManager_fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__RTRoutineManager_fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke_3;
  v6[3] = &unk_1E80B4410;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 fetchPredictedExitDatesFromLocation:v3 onDate:v4 reply:v6];
}

void __75__RTRoutineManager_fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__RTRoutineManager_fetchPredictedExitDatesFromLocation_onDate_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchPredictedLocationsOfInterestBetweenStartDate:(id)date endDate:(id)endDate withHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTRoutineManager fetchPredictedLocationsOfInterestBetweenStartDate:endDate:withHandler:]";
      v25 = 1024;
      v26 = 2331;
      _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __90__RTRoutineManager_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_withHandler___block_invoke;
  v21[3] = &unk_1E80B3F10;
  v22 = handlerCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __90__RTRoutineManager_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_withHandler___block_invoke_2;
  v16[3] = &unk_1E80B3F38;
  v17 = dateCopy;
  v18 = endDateCopy;
  selfCopy = self;
  v20 = v22;
  v13 = v22;
  v14 = endDateCopy;
  v15 = dateCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v21 taskBlock:v16];
}

void __90__RTRoutineManager_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_withHandler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __90__RTRoutineManager_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_withHandler___block_invoke_3;
  v6[3] = &unk_1E80B4410;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 fetchPredictedLocationsOfInterestBetweenStartDate:v3 endDate:v4 reply:v6];
}

void __90__RTRoutineManager_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __90__RTRoutineManager_fetchPredictedLocationsOfInterestBetweenStartDate_endDate_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchLocationOfInterestWithIdentifier:(id)identifier withHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "[RTRoutineManager fetchLocationOfInterestWithIdentifier:withHandler:]";
      v26 = 1024;
      v27 = 2351;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v11 = os_signpost_id_generate(v10);

  v12 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v13 = v12;
  if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "fetchLocationOfInterestWithIdentifier", " enableTelemetry=YES ", buf, 2u);
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __70__RTRoutineManager_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke;
  v21[3] = &unk_1E80B4078;
  v23 = v11;
  v22 = handlerCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __70__RTRoutineManager_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_493;
  v16[3] = &unk_1E80B45E8;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = v22;
  v20 = v11;
  v14 = v22;
  v15 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v21 taskBlock:v16];
}

void __70__RTRoutineManager_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fetchLocationOfInterestWithIdentifier", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __70__RTRoutineManager_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_493(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__RTRoutineManager_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_2;
  v6[3] = &unk_1E80B45C0;
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[4];
  v6[4] = a1[5];
  v8 = v3;
  v7 = v4;
  [a2 fetchLocationOfInterestWithIdentifier:v5 reply:v6];
}

void __70__RTRoutineManager_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __70__RTRoutineManager_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_3;
  v11[3] = &unk_1E80B4370;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __70__RTRoutineManager_fetchLocationOfInterestWithIdentifier_withHandler___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) code];
    v7 = 134349056;
    v8 = v5;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetchLocationOfInterestWithIdentifier", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchLocationOfInterestAtLocation:(id)location withHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchLocationOfInterestAtLocation:withHandler:]";
      v20 = 1024;
      v21 = 2372;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __66__RTRoutineManager_fetchLocationOfInterestAtLocation_withHandler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__RTRoutineManager_fetchLocationOfInterestAtLocation_withHandler___block_invoke_2;
  v12[3] = &unk_1E80B3F60;
  v13 = locationCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = locationCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __66__RTRoutineManager_fetchLocationOfInterestAtLocation_withHandler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__RTRoutineManager_fetchLocationOfInterestAtLocation_withHandler___block_invoke_3;
  v5[3] = &unk_1E80B4610;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchLocationOfInterestAtLocation:v3 reply:v5];
}

void __66__RTRoutineManager_fetchLocationOfInterestAtLocation_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__RTRoutineManager_fetchLocationOfInterestAtLocation_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchLocationOfInterestForRegion:(id)region withHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  regionCopy = region;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchLocationOfInterestForRegion:withHandler:]";
      v20 = 1024;
      v21 = 2389;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__RTRoutineManager_fetchLocationOfInterestForRegion_withHandler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__RTRoutineManager_fetchLocationOfInterestForRegion_withHandler___block_invoke_2;
  v12[3] = &unk_1E80B3F60;
  v13 = regionCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = regionCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __65__RTRoutineManager_fetchLocationOfInterestForRegion_withHandler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__RTRoutineManager_fetchLocationOfInterestForRegion_withHandler___block_invoke_3;
  v5[3] = &unk_1E80B4610;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchLocationOfInterestForRegion:v3 reply:v5];
}

void __65__RTRoutineManager_fetchLocationOfInterestForRegion_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__RTRoutineManager_fetchLocationOfInterestForRegion_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchLocationsOfInterestWithinDistance:(double)distance ofLocation:(id)location withHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTRoutineManager fetchLocationsOfInterestWithinDistance:ofLocation:withHandler:]";
      v23 = 1024;
      v24 = 2408;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __82__RTRoutineManager_fetchLocationsOfInterestWithinDistance_ofLocation_withHandler___block_invoke;
  v19[3] = &unk_1E80B3F10;
  v20 = handlerCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__RTRoutineManager_fetchLocationsOfInterestWithinDistance_ofLocation_withHandler___block_invoke_2;
  v14[3] = &unk_1E80B45E8;
  distanceCopy = distance;
  v15 = locationCopy;
  selfCopy = self;
  v17 = v20;
  v12 = v20;
  v13 = locationCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v19 taskBlock:v14];
}

void __82__RTRoutineManager_fetchLocationsOfInterestWithinDistance_ofLocation_withHandler___block_invoke_2(double *a1, void *a2)
{
  v3 = a1[7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __82__RTRoutineManager_fetchLocationsOfInterestWithinDistance_ofLocation_withHandler___block_invoke_3;
  v6[3] = &unk_1E80B4410;
  v4 = *(a1 + 4);
  v5 = *(a1 + 6);
  *&v6[4] = a1[5];
  v7 = v5;
  [a2 fetchLocationsOfInterestWithinDistance:v4 ofLocation:v6 reply:v3];
}

void __82__RTRoutineManager_fetchLocationsOfInterestWithinDistance_ofLocation_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __82__RTRoutineManager_fetchLocationsOfInterestWithinDistance_ofLocation_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchLocationsOfInterestOfType:(int64_t)type withHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTRoutineManager fetchLocationsOfInterestOfType:withHandler:]";
      v23 = 1024;
      v24 = 2426;
      _os_log_error_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v9 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v10 = os_signpost_id_generate(v9);

  v11 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v12 = v11;
  if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v11))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v12, OS_SIGNPOST_INTERVAL_BEGIN, v10, "fetchLocationsOfInterestOfType", " enableTelemetry=YES ", buf, 2u);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63__RTRoutineManager_fetchLocationsOfInterestOfType_withHandler___block_invoke;
  v18[3] = &unk_1E80B4078;
  v20 = v10;
  v19 = handlerCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__RTRoutineManager_fetchLocationsOfInterestOfType_withHandler___block_invoke_495;
  v14[3] = &unk_1E80B4638;
  typeCopy = type;
  v17 = v10;
  v14[4] = self;
  v15 = v19;
  v13 = v19;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v18 taskBlock:v14];
}

void __63__RTRoutineManager_fetchLocationsOfInterestOfType_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fetchLocationsOfInterestOfType", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __63__RTRoutineManager_fetchLocationsOfInterestOfType_withHandler___block_invoke_495(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __63__RTRoutineManager_fetchLocationsOfInterestOfType_withHandler___block_invoke_2;
  v6[3] = &unk_1E80B4398;
  v4 = a1[6];
  v3 = a1[7];
  v5 = a1[5];
  v6[4] = a1[4];
  v8 = v3;
  v7 = v5;
  [a2 fetchLocationsOfInterestOfType:v4 reply:v6];
}

void __63__RTRoutineManager_fetchLocationsOfInterestOfType_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__RTRoutineManager_fetchLocationsOfInterestOfType_withHandler___block_invoke_3;
  v11[3] = &unk_1E80B4370;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __63__RTRoutineManager_fetchLocationsOfInterestOfType_withHandler___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) code];
    v7 = 134349056;
    v8 = v5;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetchLocationsOfInterestOfType", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchLocationsOfInterestVisitedSinceDate:(id)date withHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v20 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v30 = "[RTRoutineManager fetchLocationsOfInterestVisitedSinceDate:withHandler:]";
      v31 = 1024;
      v32 = 2447;
      _os_log_error_impl(&dword_1BF1C4000, v20, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }

    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    v19 = RTErrorInvalidParameterCreate(a2, @"sinceDate is required", v8, v9, v10, v11, v12, v13, v21[0]);
    handlerCopy[2](handlerCopy, 0, v19);
    goto LABEL_11;
  }

  if (!dateCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  v15 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v16 = os_signpost_id_generate(v15);

  v17 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v18 = v17;
  if (v16 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "fetchLocationsOfInterestVisitedSinceDate", " enableTelemetry=YES ", buf, 2u);
  }

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __73__RTRoutineManager_fetchLocationsOfInterestVisitedSinceDate_withHandler___block_invoke;
  v26[3] = &unk_1E80B4078;
  v28 = v16;
  v27 = handlerCopy;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __73__RTRoutineManager_fetchLocationsOfInterestVisitedSinceDate_withHandler___block_invoke_499;
  v21[3] = &unk_1E80B45E8;
  v22 = dateCopy;
  selfCopy = self;
  v25 = v16;
  v24 = v27;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v26 taskBlock:v21];

  v19 = v27;
LABEL_11:
}

void __73__RTRoutineManager_fetchLocationsOfInterestVisitedSinceDate_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fetchLocationsOfInterestVisitedSinceDate", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __73__RTRoutineManager_fetchLocationsOfInterestVisitedSinceDate_withHandler___block_invoke_499(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = MEMORY[0x1E695DF00];
  v5 = a2;
  v6 = [v4 distantFuture];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__RTRoutineManager_fetchLocationsOfInterestVisitedSinceDate_withHandler___block_invoke_2;
  v9[3] = &unk_1E80B4398;
  v8 = a1[6];
  v7 = a1[7];
  v9[4] = a1[5];
  v11 = v7;
  v10 = v8;
  [v5 fetchLocationsOfInterestVisitedBetweenStartDate:v3 endDate:v6 reply:v9];
}

void __73__RTRoutineManager_fetchLocationsOfInterestVisitedSinceDate_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__RTRoutineManager_fetchLocationsOfInterestVisitedSinceDate_withHandler___block_invoke_3;
  v11[3] = &unk_1E80B4370;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __73__RTRoutineManager_fetchLocationsOfInterestVisitedSinceDate_withHandler___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) code];
    v7 = 134349056;
    v8 = v5;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetchLocationsOfInterestVisitedSinceDate", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchLocationsOfInterestVisitedBetweenStartDate:(id)date endDate:(id)endDate withHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  if (handlerCopy)
  {
    if (dateCopy)
    {
      goto LABEL_3;
    }

LABEL_9:
    v18 = @"startDate is required";
    goto LABEL_11;
  }

  v19 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v36 = "[RTRoutineManager fetchLocationsOfInterestVisitedBetweenStartDate:endDate:withHandler:]";
    v37 = 1024;
    v38 = 2476;
    _os_log_error_impl(&dword_1BF1C4000, v19, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
  }

  if (!dateCopy)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!endDateCopy)
  {
    v18 = @"endDate is required";
    goto LABEL_11;
  }

  if ([dateCopy compare:endDateCopy] == 1)
  {
    v18 = @"endDate must be greater than or equal to startDate";
LABEL_11:
    v20 = RTErrorInvalidParameterCreate(a2, v18, v11, v12, v13, v14, v15, v16, v25);
    handlerCopy[2](handlerCopy, 0, v20);
    goto LABEL_12;
  }

  v21 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v22 = os_signpost_id_generate(v21);

  v23 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v24 = v23;
  if (v22 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v24, OS_SIGNPOST_INTERVAL_BEGIN, v22, "fetchLocationsOfInterestVisitedBetweenStartDate", " enableTelemetry=YES ", buf, 2u);
  }

  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __88__RTRoutineManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_withHandler___block_invoke;
  v32[3] = &unk_1E80B4078;
  v34 = v22;
  v33 = handlerCopy;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __88__RTRoutineManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_withHandler___block_invoke_503;
  v26[3] = &unk_1E80B4320;
  v27 = dateCopy;
  v28 = endDateCopy;
  selfCopy = self;
  v31 = v22;
  v30 = v33;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v32 taskBlock:v26];

  v20 = v33;
LABEL_12:
}

void __88__RTRoutineManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_withHandler___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v7 = 134349056;
    v8 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fetchLocationsOfInterestVisitedBetweenStartDate", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __88__RTRoutineManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_withHandler___block_invoke_503(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __88__RTRoutineManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_withHandler___block_invoke_2;
  v7[3] = &unk_1E80B4398;
  v6 = a1[7];
  v5 = a1[8];
  v7[4] = a1[6];
  v9 = v5;
  v8 = v6;
  [a2 fetchLocationsOfInterestVisitedBetweenStartDate:v3 endDate:v4 reply:v7];
}

void __88__RTRoutineManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_withHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__RTRoutineManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_withHandler___block_invoke_3;
  v11[3] = &unk_1E80B4370;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __88__RTRoutineManager_fetchLocationsOfInterestVisitedBetweenStartDate_endDate_withHandler___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) code];
    v7 = 134349056;
    v8 = v5;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetchLocationsOfInterestVisitedBetweenStartDate", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchAllLocationsOfInterestForSettingsWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager fetchAllLocationsOfInterestForSettingsWithHandler:]";
      v14 = 1024;
      v15 = 2512;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__RTRoutineManager_fetchAllLocationsOfInterestForSettingsWithHandler___block_invoke;
  v10[3] = &unk_1E80B3F10;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __70__RTRoutineManager_fetchAllLocationsOfInterestForSettingsWithHandler___block_invoke_2;
  v8[3] = &unk_1E80B4050;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __70__RTRoutineManager_fetchAllLocationsOfInterestForSettingsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __70__RTRoutineManager_fetchAllLocationsOfInterestForSettingsWithHandler___block_invoke_3;
  v4[3] = &unk_1E80B4410;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchAllLocationsOfInterestForSettingsWithReply:v4];
}

void __70__RTRoutineManager_fetchAllLocationsOfInterestForSettingsWithHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __70__RTRoutineManager_fetchAllLocationsOfInterestForSettingsWithHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __70__RTRoutineManager_fetchAllLocationsOfInterestForSettingsWithHandler___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) domain];
  if ([v2 isEqualToString:@"RTErrorDomain"])
  {
    [*(a1 + 32) code];
  }

  v3 = *(*(a1 + 48) + 16);

  return v3();
}

- (void)fetchLocationsOfInterestAssociatedToIdentifier:(id)identifier withHandler:(id)handler
{
  v22 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchLocationsOfInterestAssociatedToIdentifier:withHandler:]";
      v20 = 1024;
      v21 = 2532;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__RTRoutineManager_fetchLocationsOfInterestAssociatedToIdentifier_withHandler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__RTRoutineManager_fetchLocationsOfInterestAssociatedToIdentifier_withHandler___block_invoke_2;
  v12[3] = &unk_1E80B3F60;
  v13 = identifierCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __79__RTRoutineManager_fetchLocationsOfInterestAssociatedToIdentifier_withHandler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __79__RTRoutineManager_fetchLocationsOfInterestAssociatedToIdentifier_withHandler___block_invoke_3;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchLocationsOfInterestAssociatedToIdentifier:v3 reply:v5];
}

void __79__RTRoutineManager_fetchLocationsOfInterestAssociatedToIdentifier_withHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__RTRoutineManager_fetchLocationsOfInterestAssociatedToIdentifier_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)addLocationOfInterestOfType:(int64_t)type mapItem:(id)item customLabel:(id)label handler:(id)handler
{
  itemCopy = item;
  labelCopy = label;
  handlerCopy = handler;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __76__RTRoutineManager_addLocationOfInterestOfType_mapItem_customLabel_handler___block_invoke;
  v23[3] = &unk_1E80B3F10;
  v24 = handlerCopy;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __76__RTRoutineManager_addLocationOfInterestOfType_mapItem_customLabel_handler___block_invoke_2;
  v17[3] = &unk_1E80B4320;
  v21 = v24;
  typeCopy = type;
  v18 = itemCopy;
  v19 = labelCopy;
  selfCopy = self;
  v14 = v24;
  v15 = labelCopy;
  v16 = itemCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v23 taskBlock:v17];
}

uint64_t __76__RTRoutineManager_addLocationOfInterestOfType_mapItem_customLabel_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __76__RTRoutineManager_addLocationOfInterestOfType_mapItem_customLabel_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[8];
  v4 = MEMORY[0x1E69A21E0];
  v5 = a1[4];
  v6 = a2;
  v7 = [v4 mapItemStorageForGEOMapItem:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__RTRoutineManager_addLocationOfInterestOfType_mapItem_customLabel_handler___block_invoke_3;
  v10[3] = &unk_1E80B4610;
  v8 = a1[5];
  v9 = a1[7];
  v10[4] = a1[6];
  v11 = v9;
  [v6 addLocationOfInterestOfType:v3 mapItemStorage:v7 customLabel:v8 reply:v10];
}

void __76__RTRoutineManager_addLocationOfInterestOfType_mapItem_customLabel_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__RTRoutineManager_addLocationOfInterestOfType_mapItem_customLabel_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __76__RTRoutineManager_addLocationOfInterestOfType_mapItem_customLabel_handler___block_invoke_4(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type mapItem:(id)item customLabel:(id)label handler:(id)handler
{
  identifierCopy = identifier;
  itemCopy = item;
  labelCopy = label;
  handlerCopy = handler;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __92__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_mapItem_customLabel_handler___block_invoke;
  v28[3] = &unk_1E80B3F10;
  v29 = handlerCopy;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __92__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_mapItem_customLabel_handler___block_invoke_2;
  v21[3] = &unk_1E80B4660;
  v22 = identifierCopy;
  v23 = itemCopy;
  v24 = labelCopy;
  selfCopy = self;
  v26 = v29;
  typeCopy = type;
  v17 = v29;
  v18 = labelCopy;
  v19 = itemCopy;
  v20 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v28 taskBlock:v21];
}

uint64_t __92__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_mapItem_customLabel_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __92__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_mapItem_customLabel_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[9];
  v4 = MEMORY[0x1E69A21E0];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a2;
  v8 = [v4 mapItemStorageForGEOMapItem:v6];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_mapItem_customLabel_handler___block_invoke_3;
  v11[3] = &unk_1E80B4610;
  v9 = a1[6];
  v10 = a1[8];
  v11[4] = a1[7];
  v12 = v10;
  [v7 updateLocationOfInterestWithIdentifier:v5 type:v3 mapItemStorage:v8 customLabel:v9 reply:v11];
}

void __92__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_mapItem_customLabel_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __92__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_mapItem_customLabel_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __92__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_mapItem_customLabel_handler___block_invoke_4(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier mapItem:(id)item handler:(id)handler
{
  identifierCopy = identifier;
  itemCopy = item;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __75__RTRoutineManager_updateLocationOfInterestWithIdentifier_mapItem_handler___block_invoke;
  v20[3] = &unk_1E80B3F10;
  v21 = handlerCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__RTRoutineManager_updateLocationOfInterestWithIdentifier_mapItem_handler___block_invoke_2;
  v15[3] = &unk_1E80B3F38;
  v16 = identifierCopy;
  v17 = itemCopy;
  selfCopy = self;
  v19 = v21;
  v12 = v21;
  v13 = itemCopy;
  v14 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v20 taskBlock:v15];
}

uint64_t __75__RTRoutineManager_updateLocationOfInterestWithIdentifier_mapItem_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __75__RTRoutineManager_updateLocationOfInterestWithIdentifier_mapItem_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = MEMORY[0x1E69A21E0];
  v4 = a1[4];
  v5 = a1[5];
  v6 = a2;
  v7 = [v3 mapItemStorageForGEOMapItem:v5];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __75__RTRoutineManager_updateLocationOfInterestWithIdentifier_mapItem_handler___block_invoke_3;
  v9[3] = &unk_1E80B3FB0;
  v8 = a1[7];
  v9[4] = a1[6];
  v10 = v8;
  [v6 updateLocationOfInterestWithIdentifier:v4 mapItemStorage:v7 reply:v9];
}

void __75__RTRoutineManager_updateLocationOfInterestWithIdentifier_mapItem_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __75__RTRoutineManager_updateLocationOfInterestWithIdentifier_mapItem_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __75__RTRoutineManager_updateLocationOfInterestWithIdentifier_mapItem_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type handler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v22 = "[RTRoutineManager updateLocationOfInterestWithIdentifier:type:handler:]";
      v23 = 1024;
      v24 = 2620;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_handler___block_invoke;
  v19[3] = &unk_1E80B3F10;
  v20 = handlerCopy;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_handler___block_invoke_2;
  v14[3] = &unk_1E80B45E8;
  v15 = identifierCopy;
  selfCopy = self;
  v17 = v20;
  typeCopy = type;
  v12 = v20;
  v13 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v19 taskBlock:v14];
}

uint64_t __72__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_handler___block_invoke_2(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_handler___block_invoke_3;
  v6[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 updateLocationOfInterestWithIdentifier:v3 type:v5 reply:v6];
}

void __72__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __72__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier customLabel:(id)label handler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  labelCopy = label;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "[RTRoutineManager updateLocationOfInterestWithIdentifier:customLabel:handler:]";
      v25 = 1024;
      v26 = 2643;
      _os_log_error_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __79__RTRoutineManager_updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke;
  v21[3] = &unk_1E80B3F10;
  v22 = handlerCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __79__RTRoutineManager_updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_2;
  v16[3] = &unk_1E80B3F38;
  v17 = identifierCopy;
  v18 = labelCopy;
  selfCopy = self;
  v20 = v22;
  v13 = v22;
  v14 = labelCopy;
  v15 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v21 taskBlock:v16];
}

uint64_t __79__RTRoutineManager_updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __79__RTRoutineManager_updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __79__RTRoutineManager_updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_3;
  v6[3] = &unk_1E80B3FB0;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 updateLocationOfInterestWithIdentifier:v3 customLabel:v4 reply:v6];
}

void __79__RTRoutineManager_updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __79__RTRoutineManager_updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __79__RTRoutineManager_updateLocationOfInterestWithIdentifier_customLabel_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateLocationOfInterestWithIdentifier:(id)identifier type:(int64_t)type customLabel:(id)label handler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  labelCopy = label;
  handlerCopy = handler;
  if (!identifierCopy)
  {
    v14 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[RTRoutineManager updateLocationOfInterestWithIdentifier:type:customLabel:handler:]";
      v28 = 1024;
      v29 = 2667;
      _os_log_error_impl(&dword_1BF1C4000, v14, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: identifier (in %s:%d)", buf, 0x12u);
    }
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __84__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke;
  v24[3] = &unk_1E80B3F10;
  v25 = handlerCopy;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __84__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke_2;
  v18[3] = &unk_1E80B4320;
  v22 = v25;
  typeCopy = type;
  v19 = identifierCopy;
  v20 = labelCopy;
  selfCopy = self;
  v15 = v25;
  v16 = labelCopy;
  v17 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v24 taskBlock:v18];
}

uint64_t __84__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __84__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke_3;
  v7[3] = &unk_1E80B3FB0;
  v5 = a1[7];
  v6 = a1[8];
  v7[4] = a1[6];
  v8 = v5;
  [a2 updateLocationOfInterestWithIdentifier:v3 type:v6 customLabel:v4 reply:v7];
}

void __84__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __84__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __84__RTRoutineManager_updateLocationOfInterestWithIdentifier_type_customLabel_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)removeLocationOfInterestWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (identifierCopy)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __67__RTRoutineManager_removeLocationOfInterestWithIdentifier_handler___block_invoke;
    v21[3] = &unk_1E80B3F10;
    v22 = handlerCopy;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __67__RTRoutineManager_removeLocationOfInterestWithIdentifier_handler___block_invoke_2;
    v17[3] = &unk_1E80B3F60;
    v18 = identifierCopy;
    selfCopy = self;
    v20 = v22;
    [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v21 taskBlock:v17];
  }

  else if (handlerCopy)
  {
    v16 = RTErrorInvalidParameterCreate(a2, @"Identifier must not be nil.", v9, v10, v11, v12, v13, v14, v17[0]);
    (v15)[2](v15, v16);
  }
}

uint64_t __67__RTRoutineManager_removeLocationOfInterestWithIdentifier_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __67__RTRoutineManager_removeLocationOfInterestWithIdentifier_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __67__RTRoutineManager_removeLocationOfInterestWithIdentifier_handler___block_invoke_3;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 removeLocationOfInterestWithIdentifier:v3 reply:v5];
}

void __67__RTRoutineManager_removeLocationOfInterestWithIdentifier_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __67__RTRoutineManager_removeLocationOfInterestWithIdentifier_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __67__RTRoutineManager_removeLocationOfInterestWithIdentifier_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)fetchDedupedLocationOfInterestIdentifiersWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __84__RTRoutineManager_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke;
  v15[3] = &unk_1E80B3F10;
  v16 = handlerCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __84__RTRoutineManager_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke_2;
  v11[3] = &unk_1E80B3F60;
  v12 = identifierCopy;
  selfCopy = self;
  v14 = v16;
  v9 = v16;
  v10 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v15 taskBlock:v11];
}

uint64_t __84__RTRoutineManager_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __84__RTRoutineManager_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __84__RTRoutineManager_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke_3;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchDedupedLocationOfInterestIdentifiersWithIdentifier:v3 reply:v5];
}

void __84__RTRoutineManager_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __84__RTRoutineManager_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __84__RTRoutineManager_fetchDedupedLocationOfInterestIdentifiersWithIdentifier_handler___block_invoke_4(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)setHintForRegionState:(int64_t)state significantRegion:(id)region withHandler:(id)handler
{
  regionCopy = region;
  handlerCopy = handler;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __72__RTRoutineManager_setHintForRegionState_significantRegion_withHandler___block_invoke;
  v18[3] = &unk_1E80B3F10;
  v19 = handlerCopy;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__RTRoutineManager_setHintForRegionState_significantRegion_withHandler___block_invoke_2;
  v13[3] = &unk_1E80B45E8;
  v14 = regionCopy;
  selfCopy = self;
  v16 = v19;
  stateCopy = state;
  v11 = v19;
  v12 = regionCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v18 taskBlock:v13];
}

uint64_t __72__RTRoutineManager_setHintForRegionState_significantRegion_withHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __72__RTRoutineManager_setHintForRegionState_significantRegion_withHandler___block_invoke_2(void *a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __72__RTRoutineManager_setHintForRegionState_significantRegion_withHandler___block_invoke_3;
  v6[3] = &unk_1E80B46B0;
  v3 = a1[4];
  v4 = a1[6];
  v5 = a1[7];
  v6[4] = a1[5];
  v7 = v4;
  [a2 setHintForRegionState:v5 significantRegion:v3 reply:v6];
}

void __72__RTRoutineManager_setHintForRegionState_significantRegion_withHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__RTRoutineManager_setHintForRegionState_significantRegion_withHandler___block_invoke_4;
  block[3] = &unk_1E80B4688;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

uint64_t __72__RTRoutineManager_setHintForRegionState_significantRegion_withHandler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 48), *(a1 + 32));
  }

  return result;
}

- (void)removeVisitWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (identifierCopy)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __54__RTRoutineManager_removeVisitWithIdentifier_handler___block_invoke;
    v21[3] = &unk_1E80B3F10;
    v22 = handlerCopy;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __54__RTRoutineManager_removeVisitWithIdentifier_handler___block_invoke_2;
    v17[3] = &unk_1E80B3F60;
    v18 = identifierCopy;
    selfCopy = self;
    v20 = v22;
    [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v21 taskBlock:v17];
  }

  else if (handlerCopy)
  {
    v16 = RTErrorInvalidParameterCreate(a2, @"Visit identifier must not be nil", v9, v10, v11, v12, v13, v14, v17[0]);
    (v15)[2](v15, v16);
  }
}

uint64_t __54__RTRoutineManager_removeVisitWithIdentifier_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __54__RTRoutineManager_removeVisitWithIdentifier_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__RTRoutineManager_removeVisitWithIdentifier_handler___block_invoke_3;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 removeVisitWithIdentifier:v3 reply:v5];
}

void __54__RTRoutineManager_removeVisitWithIdentifier_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__RTRoutineManager_removeVisitWithIdentifier_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __54__RTRoutineManager_removeVisitWithIdentifier_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)extendLifetimeOfVisitWithIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (identifierCopy)
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __64__RTRoutineManager_extendLifetimeOfVisitWithIdentifier_handler___block_invoke;
    v21[3] = &unk_1E80B3F10;
    v22 = handlerCopy;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __64__RTRoutineManager_extendLifetimeOfVisitWithIdentifier_handler___block_invoke_2;
    v17[3] = &unk_1E80B3F60;
    v18 = identifierCopy;
    selfCopy = self;
    v20 = v22;
    [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v21 taskBlock:v17];
  }

  else if (handlerCopy)
  {
    v16 = RTErrorInvalidParameterCreate(a2, @"visitIdentifier is required", v9, v10, v11, v12, v13, v14, v17[0]);
    (v15)[2](v15, v16);
  }
}

uint64_t __64__RTRoutineManager_extendLifetimeOfVisitWithIdentifier_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __64__RTRoutineManager_extendLifetimeOfVisitWithIdentifier_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v4 = a1[4];
  v5 = a2;
  v6 = [v3 setWithObject:v4];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__RTRoutineManager_extendLifetimeOfVisitWithIdentifier_handler___block_invoke_3;
  v8[3] = &unk_1E80B3FB0;
  v7 = a1[6];
  v8[4] = a1[5];
  v9 = v7;
  [v5 extendLifetimeOfVisitsWithIdentifiers:v6 reply:v8];
}

void __64__RTRoutineManager_extendLifetimeOfVisitWithIdentifier_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__RTRoutineManager_extendLifetimeOfVisitWithIdentifier_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __64__RTRoutineManager_extendLifetimeOfVisitWithIdentifier_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)extendLifetimeOfVisitsWithIdentifiers:(id)identifiers handler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v15 = handlerCopy;
  if (identifiersCopy)
  {
    if ([identifiersCopy count])
    {
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __66__RTRoutineManager_extendLifetimeOfVisitsWithIdentifiers_handler___block_invoke;
      v21[3] = &unk_1E80B3F10;
      v22 = v15;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __66__RTRoutineManager_extendLifetimeOfVisitsWithIdentifiers_handler___block_invoke_2;
      v17[3] = &unk_1E80B3F60;
      v18 = identifiersCopy;
      selfCopy = self;
      v20 = v22;
      [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v21 taskBlock:v17];
    }

    else if (v15)
    {
      v15[2](v15, 0);
    }
  }

  else if (handlerCopy)
  {
    v16 = RTErrorInvalidParameterCreate(a2, @"visitIdentifiers is required", v9, v10, v11, v12, v13, v14, v17[0]);
    (v15)[2](v15, v16);
  }
}

uint64_t __66__RTRoutineManager_extendLifetimeOfVisitsWithIdentifiers_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __66__RTRoutineManager_extendLifetimeOfVisitsWithIdentifiers_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __66__RTRoutineManager_extendLifetimeOfVisitsWithIdentifiers_handler___block_invoke_3;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 extendLifetimeOfVisitsWithIdentifiers:v3 reply:v5];
}

void __66__RTRoutineManager_extendLifetimeOfVisitsWithIdentifiers_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__RTRoutineManager_extendLifetimeOfVisitsWithIdentifiers_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __66__RTRoutineManager_extendLifetimeOfVisitsWithIdentifiers_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)fetchFamiliarityIndexResultsWithOptions:(id)options handler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (optionsCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v21 = "[RTRoutineManager fetchFamiliarityIndexResultsWithOptions:handler:]";
    v22 = 1024;
    v23 = 2847;
    _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: options (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v21 = "[RTRoutineManager fetchFamiliarityIndexResultsWithOptions:handler:]";
      v22 = 1024;
      v23 = 2848;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__RTRoutineManager_fetchFamiliarityIndexResultsWithOptions_handler___block_invoke;
  v18[3] = &unk_1E80B3F10;
  v19 = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __68__RTRoutineManager_fetchFamiliarityIndexResultsWithOptions_handler___block_invoke_2;
  v14[3] = &unk_1E80B3F60;
  v15 = optionsCopy;
  selfCopy = self;
  v17 = v19;
  v12 = v19;
  v13 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v18 taskBlock:v14];
}

uint64_t __68__RTRoutineManager_fetchFamiliarityIndexResultsWithOptions_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __68__RTRoutineManager_fetchFamiliarityIndexResultsWithOptions_handler___block_invoke_2(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__RTRoutineManager_fetchFamiliarityIndexResultsWithOptions_handler___block_invoke_3;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchFamiliarityIndexResultsWithOptions:v3 reply:v5];
}

void __68__RTRoutineManager_fetchFamiliarityIndexResultsWithOptions_handler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__RTRoutineManager_fetchFamiliarityIndexResultsWithOptions_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __68__RTRoutineManager_fetchFamiliarityIndexResultsWithOptions_handler___block_invoke_4(void *a1)
{
  result = a1[6];
  if (result)
  {
    return (*(result + 16))(result, a1[4], a1[5]);
  }

  return result;
}

- (void)fetchAuthorizedLocationStatus:(id)status
{
  v22 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  if (!statusCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "[RTRoutineManager fetchAuthorizedLocationStatus:]";
      v20 = 1024;
      v21 = 2871;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v7 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v8 = os_signpost_id_generate(v7);

  v9 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "fetchAuthorizedLocationStatus", " enableTelemetry=YES ", buf, 2u);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __50__RTRoutineManager_fetchAuthorizedLocationStatus___block_invoke;
  v15[3] = &unk_1E80B4078;
  v17 = v8;
  v16 = statusCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__RTRoutineManager_fetchAuthorizedLocationStatus___block_invoke_517;
  v12[3] = &unk_1E80B40F0;
  v13 = v16;
  v14 = v8;
  v12[4] = self;
  v11 = v16;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v15 taskBlock:v12];
}

void __50__RTRoutineManager_fetchAuthorizedLocationStatus___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v5 = v4;
  v6 = *(a1 + 40);
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v8 = 134349056;
    v9 = [v3 code];
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v5, OS_SIGNPOST_INTERVAL_END, v6, "fetchAuthorizedLocationStatus", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v8, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, 0, v3);
  }
}

void __50__RTRoutineManager_fetchAuthorizedLocationStatus___block_invoke_517(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__RTRoutineManager_fetchAuthorizedLocationStatus___block_invoke_2;
  v5[3] = &unk_1E80B46D8;
  v4 = a1[5];
  v3 = a1[6];
  v5[4] = a1[4];
  v7 = v3;
  v6 = v4;
  [a2 fetchAuthorizedLocationStatus:v5];
}

void __50__RTRoutineManager_fetchAuthorizedLocationStatus___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__RTRoutineManager_fetchAuthorizedLocationStatus___block_invoke_3;
  v11[3] = &unk_1E80B4370;
  v8 = *(a1 + 40);
  v15 = *(a1 + 48);
  v12 = v6;
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, v11);
}

uint64_t __50__RTRoutineManager_fetchAuthorizedLocationStatus___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  v3 = v2;
  v4 = *(a1 + 56);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    v5 = [*(a1 + 32) code];
    v7 = 134349056;
    v8 = v5;
    _os_signpost_emit_with_name_impl(&dword_1BF1C4000, v3, OS_SIGNPOST_INTERVAL_END, v4, "fetchAuthorizedLocationStatus", " enableTelemetry=YES {error:%{public,signpost.telemetry:number1}ld}", &v7, 0xCu);
  }

  result = *(a1 + 48);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 40), *(a1 + 32));
  }

  return result;
}

- (void)fetchLastVehicleEventsWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager fetchLastVehicleEventsWithHandler:]";
      v14 = 1024;
      v15 = 2896;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__RTRoutineManager_fetchLastVehicleEventsWithHandler___block_invoke;
  v10[3] = &unk_1E80B3F10;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__RTRoutineManager_fetchLastVehicleEventsWithHandler___block_invoke_2;
  v8[3] = &unk_1E80B4050;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __54__RTRoutineManager_fetchLastVehicleEventsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __54__RTRoutineManager_fetchLastVehicleEventsWithHandler___block_invoke_3;
  v4[3] = &unk_1E80B4410;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchLastVehicleEventsWithReply:v4];
}

void __54__RTRoutineManager_fetchLastVehicleEventsWithHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__RTRoutineManager_fetchLastVehicleEventsWithHandler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)vehicleEventAtLocation:(id)location notes:(id)notes handler:(id)handler
{
  locationCopy = location;
  notesCopy = notes;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __57__RTRoutineManager_vehicleEventAtLocation_notes_handler___block_invoke;
  v20[3] = &unk_1E80B3F10;
  v21 = handlerCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __57__RTRoutineManager_vehicleEventAtLocation_notes_handler___block_invoke_2;
  v15[3] = &unk_1E80B3F38;
  v16 = locationCopy;
  v17 = notesCopy;
  selfCopy = self;
  v19 = v21;
  v12 = v21;
  v13 = notesCopy;
  v14 = locationCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v20 taskBlock:v15];
}

uint64_t __57__RTRoutineManager_vehicleEventAtLocation_notes_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __57__RTRoutineManager_vehicleEventAtLocation_notes_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __57__RTRoutineManager_vehicleEventAtLocation_notes_handler___block_invoke_3;
  v6[3] = &unk_1E80B3FB0;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 vehicleEventAtLocation:v3 notes:v4 reply:v6];
}

void __57__RTRoutineManager_vehicleEventAtLocation_notes_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__RTRoutineManager_vehicleEventAtLocation_notes_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __57__RTRoutineManager_vehicleEventAtLocation_notes_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)clearAllVehicleEventsWithHandler:(id)handler
{
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__RTRoutineManager_clearAllVehicleEventsWithHandler___block_invoke;
  v10[3] = &unk_1E80B4078;
  v12 = a2;
  v11 = handlerCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__RTRoutineManager_clearAllVehicleEventsWithHandler___block_invoke_519;
  v7[3] = &unk_1E80B40F0;
  v8 = v11;
  v9 = a2;
  v7[4] = self;
  v6 = v11;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v7];
}

void __53__RTRoutineManager_clearAllVehicleEventsWithHandler___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 40));
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "%@ return error, %@", &v7, 0x16u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

void __53__RTRoutineManager_clearAllVehicleEventsWithHandler___block_invoke_519(uint64_t a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__RTRoutineManager_clearAllVehicleEventsWithHandler___block_invoke_2;
  v5[3] = &unk_1E80B3EE8;
  v5[4] = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = v4;
  v6 = v4;
  [a2 clearAllVehicleEventsWithReply:v5];
}

void __53__RTRoutineManager_clearAllVehicleEventsWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(*(a1 + 48));
      *buf = 138412546;
      v10 = v6;
      v11 = 2112;
      v12 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "%@ return error, %@", buf, 0x16u);
    }
  }

  v5 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__RTRoutineManager_clearAllVehicleEventsWithHandler___block_invoke_520;
  block[3] = &unk_1E80B4700;
  v8 = *(a1 + 40);
  dispatch_async(v5, block);
}

uint64_t __53__RTRoutineManager_clearAllVehicleEventsWithHandler___block_invoke_520(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)clearAllVehicleEvents:(id)events
{
  eventsCopy = events;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__RTRoutineManager_clearAllVehicleEvents___block_invoke;
  v9[3] = &unk_1E80B3F10;
  v10 = eventsCopy;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__RTRoutineManager_clearAllVehicleEvents___block_invoke_2;
  v7[3] = &unk_1E80B4050;
  v7[4] = self;
  v8 = v10;
  v6 = v10;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v9 taskBlock:v7];
}

uint64_t __42__RTRoutineManager_clearAllVehicleEvents___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __42__RTRoutineManager_clearAllVehicleEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__RTRoutineManager_clearAllVehicleEvents___block_invoke_3;
  v4[3] = &unk_1E80B3FB0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 clearAllVehicleEventsWithReply:v4];
}

void __42__RTRoutineManager_clearAllVehicleEvents___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__RTRoutineManager_clearAllVehicleEvents___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __42__RTRoutineManager_clearAllVehicleEvents___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)updateVehicleEventWithIdentifier:(id)identifier notes:(id)notes
{
  identifierCopy = identifier;
  notesCopy = notes;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__RTRoutineManager_updateVehicleEventWithIdentifier_notes___block_invoke_2;
  v11[3] = &unk_1E80B4728;
  v12 = identifierCopy;
  v13 = notesCopy;
  v9 = notesCopy;
  v10 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_522 taskBlock:v11];
}

- (void)updateVehicleEventWithIdentifier:(id)identifier photo:(id)photo
{
  identifierCopy = identifier;
  photoCopy = photo;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__RTRoutineManager_updateVehicleEventWithIdentifier_photo___block_invoke_2;
  v11[3] = &unk_1E80B4728;
  v12 = identifierCopy;
  v13 = photoCopy;
  v9 = photoCopy;
  v10 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_526 taskBlock:v11];
}

- (void)updateVehicleEventWithIdentifier:(id)identifier geoMapItem:(id)item
{
  identifierCopy = identifier;
  itemCopy = item;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__RTRoutineManager_updateVehicleEventWithIdentifier_geoMapItem___block_invoke_2;
  v11[3] = &unk_1E80B4728;
  v12 = itemCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = itemCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_530 taskBlock:v11];
}

void __64__RTRoutineManager_updateVehicleEventWithIdentifier_geoMapItem___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69A21E0];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v3 mapItemStorageForGEOMapItem:v4];
  [v5 updateVehicleEventWithIdentifier:*(a1 + 40) geoMapItem:v6 reply:&__block_literal_global_532];
}

- (void)updateVehicleEventWithIdentifier:(id)identifier location:(id)location
{
  identifierCopy = identifier;
  locationCopy = location;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__RTRoutineManager_updateVehicleEventWithIdentifier_location___block_invoke_2;
  v11[3] = &unk_1E80B4728;
  v12 = identifierCopy;
  v13 = locationCopy;
  v9 = locationCopy;
  v10 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_534 taskBlock:v11];
}

- (void)engageInVehicleEventWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__RTRoutineManager_engageInVehicleEventWithIdentifier___block_invoke_2;
  v7[3] = &unk_1E80B4750;
  v8 = identifierCopy;
  v6 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_538 taskBlock:v7];
}

- (void)onVehicleEvents:(id)events error:(id)error
{
  eventsCopy = events;
  errorCopy = error;
  vehicleEventsHandler = [(RTRoutineManager *)self vehicleEventsHandler];

  if (vehicleEventsHandler)
  {
    vehicleEventsHandler2 = [(RTRoutineManager *)self vehicleEventsHandler];
    (vehicleEventsHandler2)[2](vehicleEventsHandler2, eventsCopy, errorCopy);
  }
}

- (void)startMonitoringVehicleEventsWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager startMonitoringVehicleEventsWithHandler:]";
      v14 = 1024;
      v15 = 3059;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__RTRoutineManager_startMonitoringVehicleEventsWithHandler___block_invoke;
  block[3] = &unk_1E80B4168;
  block[4] = self;
  v10 = handlerCopy;
  v11 = a2;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

uint64_t __60__RTRoutineManager_startMonitoringVehicleEventsWithHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVehicleEventsHandler:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 _launchTaskWithSelector:v3 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_542 taskBlock:&__block_literal_global_544];
}

- (void)stopMonitoringVehicleEvents
{
  queue = [(RTRoutineManager *)self queue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__RTRoutineManager_stopMonitoringVehicleEvents__block_invoke;
  v5[3] = &unk_1E80B4208;
  v5[4] = self;
  v5[5] = a2;
  dispatch_async(queue, v5);
}

uint64_t __47__RTRoutineManager_stopMonitoringVehicleEvents__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setVehicleEventsHandler:0];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _launchTaskWithSelector:v3 remainingAttempts:3 proxyErrorHandler:&__block_literal_global_548 taskBlock:&__block_literal_global_550];
}

- (void)fetchAutomaticVehicleEventDetectionSupportedWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager fetchAutomaticVehicleEventDetectionSupportedWithHandler:]";
      v14 = 1024;
      v15 = 3089;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __76__RTRoutineManager_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke;
  v10[3] = &unk_1E80B3F10;
  v11 = handlerCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __76__RTRoutineManager_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_2;
  v8[3] = &unk_1E80B4050;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __76__RTRoutineManager_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__RTRoutineManager_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_3;
  v4[3] = &unk_1E80B46B0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchAutomaticVehicleEventDetectionSupportedWithReply:v4];
}

void __76__RTRoutineManager_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __76__RTRoutineManager_fetchAutomaticVehicleEventDetectionSupportedWithHandler___block_invoke_4;
  block[3] = &unk_1E80B4688;
  v7 = *(a1 + 40);
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  dispatch_async(v6, block);
}

- (void)userInteractionWithPredictedLocationOfInterest:(id)interest interaction:(unint64_t)interaction feedback:(id)feedback geoMapItem:(id)item handler:(id)handler
{
  interestCopy = interest;
  feedbackCopy = feedback;
  itemCopy = item;
  handlerCopy = handler;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __107__RTRoutineManager_userInteractionWithPredictedLocationOfInterest_interaction_feedback_geoMapItem_handler___block_invoke;
  v28[3] = &unk_1E80B3F10;
  v29 = handlerCopy;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __107__RTRoutineManager_userInteractionWithPredictedLocationOfInterest_interaction_feedback_geoMapItem_handler___block_invoke_2;
  v21[3] = &unk_1E80B4660;
  v22 = interestCopy;
  v23 = feedbackCopy;
  v24 = itemCopy;
  selfCopy = self;
  v26 = v29;
  interactionCopy = interaction;
  v17 = v29;
  v18 = itemCopy;
  v19 = feedbackCopy;
  v20 = interestCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v28 taskBlock:v21];
}

uint64_t __107__RTRoutineManager_userInteractionWithPredictedLocationOfInterest_interaction_feedback_geoMapItem_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __107__RTRoutineManager_userInteractionWithPredictedLocationOfInterest_interaction_feedback_geoMapItem_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[9];
  v4 = a1[4];
  v5 = a1[5];
  v6 = MEMORY[0x1E69A21E0];
  v7 = a1[6];
  v8 = a2;
  v9 = [v6 mapItemStorageForGEOMapItem:v7];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__RTRoutineManager_userInteractionWithPredictedLocationOfInterest_interaction_feedback_geoMapItem_handler___block_invoke_3;
  v11[3] = &unk_1E80B3FB0;
  v10 = a1[8];
  v11[4] = a1[7];
  v12 = v10;
  [v8 userInteractionWithPredictedLocationOfInterest:v4 interaction:v3 feedback:v5 geoMapItem:v9 reply:v11];
}

void __107__RTRoutineManager_userInteractionWithPredictedLocationOfInterest_interaction_feedback_geoMapItem_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __107__RTRoutineManager_userInteractionWithPredictedLocationOfInterest_interaction_feedback_geoMapItem_handler___block_invoke_4;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __107__RTRoutineManager_userInteractionWithPredictedLocationOfInterest_interaction_feedback_geoMapItem_handler___block_invoke_4(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (void)startMonitoringForPeopleDiscovery:(id)discovery handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  discoveryCopy = discovery;
  handlerCopy = handler;
  v9 = handlerCopy;
  if (discoveryCopy)
  {
    if (handlerCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_7;
  }

  v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v20 = "[RTRoutineManager startMonitoringForPeopleDiscovery:handler:]";
    v21 = 1024;
    v22 = 3149;
    _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: configuration (in %s:%d)", buf, 0x12u);
  }

  if (!v9)
  {
LABEL_7:
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager startMonitoringForPeopleDiscovery:handler:]";
      v21 = 1024;
      v22 = 3150;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

LABEL_10:
  [(RTRoutineManager *)self setPeopleDiscoveryErrorHandler:v9];
  queue = [(RTRoutineManager *)self queue];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke;
  v15[3] = &unk_1E80B4370;
  v15[4] = self;
  v16 = discoveryCopy;
  v17 = v9;
  v18 = a2;
  v13 = v9;
  v14 = discoveryCopy;
  dispatch_async(queue, v15);
}

void __62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 136) startMonitoringForPeopleDiscovery:*(a1 + 40)];
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v2;
      _os_log_error_impl(&dword_1BF1C4000, v3, OS_LOG_TYPE_ERROR, "Encountered error while starting monitoring for people discovery service, error, %@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [*(*(a1 + 32) + 136) configurationIdentifier];
    v5 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(*(a1 + 32) + 136);
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&dword_1BF1C4000, v5, OS_LOG_TYPE_DEFAULT, "_peopleDiscoveryRegistrant %@", buf, 0xCu);
    }

    v7 = *(a1 + 32);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke_553;
    v17[3] = &unk_1E80B3FB0;
    v17[4] = v7;
    v8 = *(a1 + 56);
    v18 = *(a1 + 48);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke_2;
    v12[3] = &unk_1E80B3F38;
    v13 = v4;
    v9 = *(a1 + 40);
    v10 = *(a1 + 32);
    v14 = v9;
    v15 = v10;
    v16 = *(a1 + 48);
    v11 = v4;
    [v7 _launchTaskWithSelector:v8 remainingAttempts:3 proxyErrorHandler:v17 taskBlock:v12];
  }
}

void __62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke_553(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(*(a1 + 32) + 136) registered])
  {
    (*(*(a1 + 40) + 16))();
  }
}

void __62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke_2(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke_3;
  v6[3] = &unk_1E80B3FB0;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 startMonitoringForPeopleDiscoveryWithIdentifier:v3 configuration:v4 reply:v6];
}

void __62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, block);
}

void *__62__RTRoutineManager_startMonitoringForPeopleDiscovery_handler___block_invoke_4(uint64_t a1)
{
  result = [*(*(a1 + 32) + 136) registered];
  if (result)
  {
    v3 = *(*(a1 + 48) + 16);

    return v3();
  }

  return result;
}

- (void)stopMonitoringForPeopleDiscoveryWithHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager stopMonitoringForPeopleDiscoveryWithHandler:]";
      v14 = 1024;
      v15 = 3184;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }

  queue = [(RTRoutineManager *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke;
  block[3] = &unk_1E80B4168;
  block[4] = self;
  v10 = handlerCopy;
  v11 = a2;
  v8 = handlerCopy;
  dispatch_async(queue, block);
}

void __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 136) stopMonitoringForPeopleDiscovery];
  if (v2)
  {
    v3 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v2;
      _os_log_error_impl(&dword_1BF1C4000, v3, OS_LOG_TYPE_ERROR, "Encountered error while stopping monitoring for people discovery service, error, %@", buf, 0xCu);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v4 = [*(*(a1 + 32) + 136) configurationIdentifier];
    v5 = *(a1 + 48);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke_554;
    v14[3] = &unk_1E80B3F10;
    v6 = *(a1 + 32);
    v15 = *(a1 + 40);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke_555;
    v10[3] = &unk_1E80B3F60;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11 = v4;
    v12 = v7;
    v13 = v8;
    v9 = v4;
    [v6 _launchTaskWithSelector:v5 remainingAttempts:3 proxyErrorHandler:v14 taskBlock:v10];
  }
}

void __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke_554(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "Encountered error while stopping monitoring for people discovery service, error, %@", &v5, 0xCu);
    }
  }

  (*(*(a1 + 32) + 16))();
}

void __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke_555(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke_2;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 stopMonitoringForPeopleDiscoveryWithIdentifier:v3 reply:v5];
}

void __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke_3;
  v6[3] = &unk_1E80B4118;
  v7 = v3;
  v8 = *(a1 + 40);
  v5 = v3;
  dispatch_async(v4, v6);
}

uint64_t __64__RTRoutineManager_stopMonitoringForPeopleDiscoveryWithHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 32);
      v5 = 138412290;
      v6 = v4;
      _os_log_error_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_ERROR, "Encountered error while stopping monitoring for people discovery service, error, %@", &v5, 0xCu);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)onDensityUpdate:(id)update error:(id)error
{
  if (update)
  {
    [(RTRoutineManagerRegistrantPeopleDiscovery *)self->_peopleDiscoveryRegistrant onDensityUpdate:update error:error];
  }
}

- (void)fetchCurrentPeopleDensity:(id)density
{
  v16 = *MEMORY[0x1E69E9840];
  densityCopy = density;
  if (!densityCopy)
  {
    v6 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v13 = "[RTRoutineManager fetchCurrentPeopleDensity:]";
      v14 = 1024;
      v15 = 3228;
      _os_log_error_impl(&dword_1BF1C4000, v6, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: completionHandler (in %s:%d)", buf, 0x12u);
    }
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__RTRoutineManager_fetchCurrentPeopleDensity___block_invoke;
  v10[3] = &unk_1E80B3F10;
  v11 = densityCopy;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__RTRoutineManager_fetchCurrentPeopleDensity___block_invoke_2;
  v8[3] = &unk_1E80B4050;
  v8[4] = self;
  v9 = v11;
  v7 = v11;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v10 taskBlock:v8];
}

void __46__RTRoutineManager_fetchCurrentPeopleDensity___block_invoke_2(uint64_t a1, void *a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__RTRoutineManager_fetchCurrentPeopleDensity___block_invoke_3;
  v4[3] = &unk_1E80B4798;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [a2 fetchOngoingPeopleDensity:v4];
}

void __46__RTRoutineManager_fetchCurrentPeopleDensity___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__RTRoutineManager_fetchCurrentPeopleDensity___block_invoke_4;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

- (void)fetchProximityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __81__RTRoutineManager_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke;
  v20[3] = &unk_1E80B3F10;
  v21 = handlerCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__RTRoutineManager_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke_557;
  v15[3] = &unk_1E80B3F38;
  v16 = dateCopy;
  v17 = endDateCopy;
  selfCopy = self;
  v19 = v21;
  v12 = v21;
  v13 = endDateCopy;
  v14 = dateCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v20 taskBlock:v15];
}

void __81__RTRoutineManager_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "error retrieving proxy for selector", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, MEMORY[0x1E695E0F0], v3);
  }
}

void __81__RTRoutineManager_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke_557(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __81__RTRoutineManager_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke_2;
  v6[3] = &unk_1E80B4410;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 fetchProximityHistoryFromStartDate:v3 endDate:v4 completionHandler:v6];
}

void __81__RTRoutineManager_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __81__RTRoutineManager_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke_3;
  block[3] = &unk_1E80B4460;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __81__RTRoutineManager_fetchProximityHistoryFromStartDate_endDate_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_DEFAULT, "fetchProximityHistoryFromStartDate called back, error: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchProximityHistoryFromEventIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__RTRoutineManager_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke;
  v15[3] = &unk_1E80B3F10;
  v16 = handlerCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __72__RTRoutineManager_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke_558;
  v11[3] = &unk_1E80B3F60;
  v12 = dsCopy;
  selfCopy = self;
  v14 = v16;
  v9 = v16;
  v10 = dsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v15 taskBlock:v11];
}

void __72__RTRoutineManager_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "error retrieving proxy for selector", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, MEMORY[0x1E695E0F0], v3);
  }
}

void __72__RTRoutineManager_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke_558(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__RTRoutineManager_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke_2;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchProximityHistoryFromEventIDs:v3 completionHandler:v5];
}

void __72__RTRoutineManager_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72__RTRoutineManager_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke_3;
  block[3] = &unk_1E80B4460;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __72__RTRoutineManager_fetchProximityHistoryFromEventIDs_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_DEFAULT, "fetchProximityHistoryFromEventIDs called back, error: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchPeopleCountEventsHistory:(id)history completionHandler:(id)handler
{
  historyCopy = history;
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __68__RTRoutineManager_fetchPeopleCountEventsHistory_completionHandler___block_invoke;
  v15[3] = &unk_1E80B3F10;
  v16 = handlerCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__RTRoutineManager_fetchPeopleCountEventsHistory_completionHandler___block_invoke_559;
  v11[3] = &unk_1E80B3F60;
  v12 = historyCopy;
  selfCopy = self;
  v14 = v16;
  v9 = v16;
  v10 = historyCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v15 taskBlock:v11];
}

void __68__RTRoutineManager_fetchPeopleCountEventsHistory_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "error retrieving proxy for selector", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, MEMORY[0x1E695E0F0], v3);
  }
}

void __68__RTRoutineManager_fetchPeopleCountEventsHistory_completionHandler___block_invoke_559(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__RTRoutineManager_fetchPeopleCountEventsHistory_completionHandler___block_invoke_2;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchPeopleCountEventsHistory:v3 completionHandler:v5];
}

void __68__RTRoutineManager_fetchPeopleCountEventsHistory_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__RTRoutineManager_fetchPeopleCountEventsHistory_completionHandler___block_invoke_3;
  block[3] = &unk_1E80B4460;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __68__RTRoutineManager_fetchPeopleCountEventsHistory_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_DEFAULT, "fetchPeopleCountEventsHistory called back, error: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchPeopleDensityHistoryFromStartDate:(id)date endDate:(id)endDate completionHandler:(id)handler
{
  dateCopy = date;
  endDateCopy = endDate;
  handlerCopy = handler;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__RTRoutineManager_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke;
  v20[3] = &unk_1E80B3F10;
  v21 = handlerCopy;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __85__RTRoutineManager_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke_560;
  v15[3] = &unk_1E80B3F38;
  v16 = dateCopy;
  v17 = endDateCopy;
  selfCopy = self;
  v19 = v21;
  v12 = v21;
  v13 = endDateCopy;
  v14 = dateCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v20 taskBlock:v15];
}

void __85__RTRoutineManager_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "error retrieving proxy for selector", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, MEMORY[0x1E695E0F0], v3);
  }
}

void __85__RTRoutineManager_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke_560(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __85__RTRoutineManager_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke_2;
  v6[3] = &unk_1E80B4410;
  v5 = a1[7];
  v6[4] = a1[6];
  v7 = v5;
  [a2 fetchPeopleDensityHistoryFromStartDate:v3 endDate:v4 completionHandler:v6];
}

void __85__RTRoutineManager_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __85__RTRoutineManager_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke_3;
  block[3] = &unk_1E80B4460;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __85__RTRoutineManager_fetchPeopleDensityHistoryFromStartDate_endDate_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_DEFAULT, "fetchPeopleDensityHistoryFromStartDate called back, error: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchContactScoresFromContactIDs:(id)ds completionHandler:(id)handler
{
  dsCopy = ds;
  handlerCopy = handler;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __71__RTRoutineManager_fetchContactScoresFromContactIDs_completionHandler___block_invoke;
  v15[3] = &unk_1E80B3F10;
  v16 = handlerCopy;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __71__RTRoutineManager_fetchContactScoresFromContactIDs_completionHandler___block_invoke_561;
  v11[3] = &unk_1E80B3F60;
  v12 = dsCopy;
  selfCopy = self;
  v14 = v16;
  v9 = v16;
  v10 = dsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v15 taskBlock:v11];
}

void __71__RTRoutineManager_fetchContactScoresFromContactIDs_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "error retrieving proxy for selector", v6, 2u);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, MEMORY[0x1E695E0F0], v3);
  }
}

void __71__RTRoutineManager_fetchContactScoresFromContactIDs_completionHandler___block_invoke_561(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __71__RTRoutineManager_fetchContactScoresFromContactIDs_completionHandler___block_invoke_2;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchContactScoresFromContactIDs:v3 completionHandler:v5];
}

void __71__RTRoutineManager_fetchContactScoresFromContactIDs_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__RTRoutineManager_fetchContactScoresFromContactIDs_completionHandler___block_invoke_3;
  block[3] = &unk_1E80B4460;
  v12 = v6;
  v8 = *(a1 + 40);
  v13 = v5;
  v14 = v8;
  v9 = v5;
  v10 = v6;
  dispatch_async(v7, block);
}

uint64_t __71__RTRoutineManager_fetchContactScoresFromContactIDs_completionHandler___block_invoke_3(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _rt_log_facility_get_os_log(RTLogFacilityGathering);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_DEFAULT, "fetchContactScoresFromContactIDs called back, error: %@", &v5, 0xCu);
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)addElevations:(id)elevations handler:(id)handler
{
  elevationsCopy = elevations;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked addElevations.", buf, 2u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42__RTRoutineManager_addElevations_handler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __42__RTRoutineManager_addElevations_handler___block_invoke_562;
  v12[3] = &unk_1E80B3F60;
  v13 = elevationsCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = elevationsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __42__RTRoutineManager_addElevations_handler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_DEBUG, "RTRoutineManager: error from addElevations:handler:.", v6, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __42__RTRoutineManager_addElevations_handler___block_invoke_562(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__RTRoutineManager_addElevations_handler___block_invoke_2;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 addElevations:v3 handler:v5];
}

void __42__RTRoutineManager_addElevations_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __42__RTRoutineManager_addElevations_handler___block_invoke_3;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)fetchElevationsWithOptions:(id)options reply:(id)reply
{
  optionsCopy = options;
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked fetchElevationsWithOptions:reply:.", buf, 2u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __53__RTRoutineManager_fetchElevationsWithOptions_reply___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = replyCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __53__RTRoutineManager_fetchElevationsWithOptions_reply___block_invoke_563;
  v12[3] = &unk_1E80B3F60;
  v13 = optionsCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __53__RTRoutineManager_fetchElevationsWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v4 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v6 = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_DEBUG, "RTRoutineManager: error from fetchElevationsWithOptions:reply:.", v6, 2u);
    }
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __53__RTRoutineManager_fetchElevationsWithOptions_reply___block_invoke_563(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __53__RTRoutineManager_fetchElevationsWithOptions_reply___block_invoke_2;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchElevationsWithOptions:v3 reply:v5];
}

void __53__RTRoutineManager_fetchElevationsWithOptions_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __53__RTRoutineManager_fetchElevationsWithOptions_reply___block_invoke_3;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __53__RTRoutineManager_fetchElevationsWithOptions_reply___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_DEBUG, "RTRoutineManager: replying from fetchElevationsWithOptions:reply:.", v4, 2u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)enumerateElevationsWithOptions:(id)options reply:(id)reply
{
  v23 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v8 = _rt_log_facility_get_os_log(RTLogFacilityElevation);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v8, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked enumerateElevationsWithOptions:reply:.", buf, 2u);
    }
  }

  if (replyCopy)
  {
    queue = [(RTRoutineManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__RTRoutineManager_enumerateElevationsWithOptions_reply___block_invoke;
    block[3] = &unk_1E80B4460;
    block[4] = self;
    v15 = optionsCopy;
    v16 = replyCopy;
    dispatch_sync(queue, block);
  }

  else
  {
    v10 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "[RTRoutineManager enumerateElevationsWithOptions:reply:]";
      v21 = 1024;
      v22 = 3389;
      _os_log_error_impl(&dword_1BF1C4000, v10, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply (in %s:%d)", buf, 0x12u);
    }

    v17 = *MEMORY[0x1E696A578];
    v18 = @"An enumeration block is a required parameter.";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [MEMORY[0x1E696ABC0] errorWithDomain:@"RTErrorDomain" code:7 userInfo:v11];
    v13 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v20 = v12;
      _os_log_error_impl(&dword_1BF1C4000, v13, OS_LOG_TYPE_ERROR, "An enumeration block is a required parameter, %@", buf, 0xCu);
    }
  }
}

- (void)_enumerateElevationsWithOptions:(id)options reply:(id)reply
{
  v21 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  replyCopy = reply;
  if (!replyCopy)
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTRoutineManager _enumerateElevationsWithOptions:reply:]";
      v19 = 1024;
      v20 = 3409;
      _os_log_error_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: reply (in %s:%d)", buf, 0x12u);
    }
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__RTRoutineManager__enumerateElevationsWithOptions_reply___block_invoke;
  v15[3] = &unk_1E80B3F10;
  v16 = replyCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__RTRoutineManager__enumerateElevationsWithOptions_reply___block_invoke_564;
  v12[3] = &unk_1E80B4050;
  v13 = optionsCopy;
  v14 = v16;
  v10 = v16;
  v11 = optionsCopy;
  [(RTRoutineManager *)self _launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v15 taskBlock:v12];
}

void __58__RTRoutineManager__enumerateElevationsWithOptions_reply___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "received error while getting asynchronous proxy to enumerate stored locations, %@.", &v5, 0xCu);
  }

  (*(*(a1 + 32) + 16))();
}

void __58__RTRoutineManager__enumerateElevationsWithOptions_reply___block_invoke_564(uint64_t a1, void *a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v37 = 0;
  v38 = &v37;
  v39 = 0x3032000000;
  v40 = __Block_byref_object_copy_;
  v41 = __Block_byref_object_dispose_;
  v42 = [[RTStoredElevationEnumerationContext alloc] initWithEnumerationOptions:*(a1 + 32)];
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = __Block_byref_object_copy_;
  v35[4] = __Block_byref_object_dispose_;
  v36 = 0;
  v33[0] = 0;
  v33[1] = v33;
  v33[2] = 0x3032000000;
  v33[3] = __Block_byref_object_copy_;
  v33[4] = __Block_byref_object_dispose_;
  v34 = 0;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__565;
  v31 = __Block_byref_object_dispose__566;
  v32 = 0;
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __58__RTRoutineManager__enumerateElevationsWithOptions_reply___block_invoke_567;
  v20 = &unk_1E80B47C0;
  v23 = v35;
  v24 = v33;
  v22 = *(a1 + 40);
  v25 = &v27;
  v26 = &v37;
  v4 = v3;
  v21 = v4;
  v5 = MEMORY[0x1BFB54DD0](&v17);
  v9 = MEMORY[0x1BFB54DD0](v5, v6, v7, v8);
  v10 = v28[5];
  v28[5] = v9;

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityFramework);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v38[5] options];
      v13 = [v12 dateInterval];
      v14 = [v38[5] options];
      v15 = [v14 batchSize];
      v16 = [v38[5] offset];
      *buf = 138412802;
      v44 = v13;
      v45 = 2048;
      v46 = v15;
      v47 = 2048;
      v48 = v16;
      _os_log_debug_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_DEBUG, "iterating stored elevations between %@, batch size, %lu, offset, %lu", buf, 0x20u);
    }
  }

  [v4 fetchElevationsWithContext:v38[5] reply:{v5, v17, v18, v19, v20}];

  _Block_object_dispose(&v27, 8);
  _Block_object_dispose(v33, 8);

  _Block_object_dispose(v35, 8);
  _Block_object_dispose(&v37, 8);
}

void __58__RTRoutineManager__enumerateElevationsWithOptions_reply___block_invoke_567(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v6 = a3;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  (*(*(a1 + 40) + 16))(*(a1 + 40), *(*(*(a1 + 48) + 8) + 40), *(*(*(a1 + 56) + 8) + 40), [*(*(*(a1 + 48) + 8) + 40) count] == 0);
  v7 = [*(*(*(a1 + 48) + 8) + 40) count];
  if (v6 || !v7)
  {
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = 0;
  }

  else
  {
    v8 = [*(*(*(a1 + 72) + 8) + 40) offset];
    v9 = [*(*(*(a1 + 48) + 8) + 40) count];
    v10 = [RTStoredElevationEnumerationContext alloc];
    v11 = [*(*(*(a1 + 72) + 8) + 40) options];
    v12 = [(RTStoredElevationEnumerationContext *)v10 initWithEnumerationOptions:v11 offset:v9 + v8];
    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    [*(a1 + 32) fetchElevationsWithContext:*(*(*(a1 + 72) + 8) + 40) reply:*(*(*(a1 + 64) + 8) + 40)];
  }
}

- (void)fetchBackgroundInertialOdometrySamplesWithOptions:(id)options handler:(id)handler
{
  optionsCopy = options;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked fetchBackgroundInertialOdometrySamplesWithOptions:handler:.", buf, 2u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__RTRoutineManager_fetchBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__RTRoutineManager_fetchBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke_568;
  v12[3] = &unk_1E80B3F60;
  v13 = optionsCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = optionsCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __78__RTRoutineManager_fetchBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "RTRoutineManager: error from fetchBackgroundInertialOdometrySamplesWithOptions:handler:, %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __78__RTRoutineManager_fetchBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke_568(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __78__RTRoutineManager_fetchBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke_2;
  v5[3] = &unk_1E80B4410;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 fetchBackgroundInertialOdometrySamplesWithOptions:v3 reply:v5];
}

void __78__RTRoutineManager_fetchBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __78__RTRoutineManager_fetchBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke_3;
  block[3] = &unk_1E80B4460;
  v8 = *(a1 + 40);
  v13 = v6;
  v14 = v8;
  v12 = v5;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

uint64_t __78__RTRoutineManager_fetchBackgroundInertialOdometrySamplesWithOptions_handler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_INFO, "RTRoutineManager: replying from fetchBackgroundInertialOdometrySamplesWithOptions:handler:.", v4, 2u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)addBackgroundInertialOdometrySamples:(id)samples handler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  samplesCopy = samples;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    v9 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67174657;
      v19 = [samplesCopy count];
      _os_log_debug_impl(&dword_1BF1C4000, v9, OS_LOG_TYPE_DEBUG, "RTRoutineManager: invoked addBackgroundInertialOdometrySamples:handler: with %{private}d samples.", buf, 8u);
    }
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __65__RTRoutineManager_addBackgroundInertialOdometrySamples_handler___block_invoke;
  v16[3] = &unk_1E80B3F10;
  v17 = handlerCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__RTRoutineManager_addBackgroundInertialOdometrySamples_handler___block_invoke_569;
  v12[3] = &unk_1E80B3F60;
  v13 = samplesCopy;
  selfCopy = self;
  v15 = v17;
  v10 = v17;
  v11 = samplesCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v16 taskBlock:v12];
}

void __65__RTRoutineManager_addBackgroundInertialOdometrySamples_handler___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "RTRoutineManager: error from addBackgroundInertialOdometrySamples:handler:, %@", &v6, 0xCu);
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __65__RTRoutineManager_addBackgroundInertialOdometrySamples_handler___block_invoke_569(void *a1, void *a2)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __65__RTRoutineManager_addBackgroundInertialOdometrySamples_handler___block_invoke_2;
  v5[3] = &unk_1E80B3FB0;
  v3 = a1[4];
  v4 = a1[6];
  v5[4] = a1[5];
  v6 = v4;
  [a2 addBackgroundInertialOdometrySamples:v3 reply:v5];
}

void __65__RTRoutineManager_addBackgroundInertialOdometrySamples_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__RTRoutineManager_addBackgroundInertialOdometrySamples_handler___block_invoke_3;
  v7[3] = &unk_1E80B4118;
  v5 = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

uint64_t __65__RTRoutineManager_addBackgroundInertialOdometrySamples_handler___block_invoke_3(uint64_t a1)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityBackgroundInertialOdometry);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_INFO, "RTRoutineManager: replying from addBackgroundInertialOdometrySamples:handler:.", v4, 2u);
    }
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)submitUserCurationForDate:(id)date newLabel:(id)label handler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  labelCopy = label;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_INFO, "%@: invoked %@", buf, 0x16u);
    }
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __63__RTRoutineManager_submitUserCurationForDate_newLabel_handler___block_invoke;
  v25[3] = &unk_1E80B3EE8;
  v25[4] = self;
  v27 = a2;
  v26 = handlerCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __63__RTRoutineManager_submitUserCurationForDate_newLabel_handler___block_invoke_570;
  v19[3] = &unk_1E80B4320;
  v20 = dateCopy;
  v21 = labelCopy;
  v23 = v26;
  v24 = a2;
  selfCopy = self;
  v16 = v26;
  v17 = labelCopy;
  v18 = dateCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v25 taskBlock:v19];
}

void __63__RTRoutineManager_submitUserCurationForDate_newLabel_handler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "%@: error from %@, %@", &v9, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __63__RTRoutineManager_submitUserCurationForDate_newLabel_handler___block_invoke_570(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AB80];
  v4 = a2;
  v5 = [[v3 alloc] initWithStartDate:*(a1 + 32) endDate:*(a1 + 32)];
  v6 = [MEMORY[0x1E69A21E0] mapItemStorageForGEOMapItem:*(a1 + 40)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__RTRoutineManager_submitUserCurationForDate_newLabel_handler___block_invoke_2;
  v9[3] = &unk_1E80B3EE8;
  v9[4] = *(a1 + 48);
  v8 = *(a1 + 56);
  v7 = v8;
  v10 = v8;
  [v4 submitUserCurationForVisitDateRange:v5 newLabel:v6 handler:v9];
}

void __63__RTRoutineManager_submitUserCurationForDate_newLabel_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__RTRoutineManager_submitUserCurationForDate_newLabel_handler___block_invoke_3;
  block[3] = &unk_1E80B4370;
  block[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __63__RTRoutineManager_submitUserCurationForDate_newLabel_handler___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 56));
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_INFO, "%@: replying from %@", &v7, 0x16u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)submitUserCurationForVisitDateRange:(id)range newLabel:(id)label handler:(id)handler
{
  v32 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  labelCopy = label;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v12 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = NSStringFromSelector(a2);
      *buf = 138412546;
      v29 = v14;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_1BF1C4000, v12, OS_LOG_TYPE_INFO, "%@: invoked %@", buf, 0x16u);
    }
  }

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __73__RTRoutineManager_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke;
  v25[3] = &unk_1E80B3EE8;
  v25[4] = self;
  v27 = a2;
  v26 = handlerCopy;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __73__RTRoutineManager_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke_571;
  v19[3] = &unk_1E80B4320;
  v20 = rangeCopy;
  v21 = labelCopy;
  v23 = v26;
  v24 = a2;
  selfCopy = self;
  v16 = v26;
  v17 = labelCopy;
  v18 = rangeCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v25 taskBlock:v19];
}

void __73__RTRoutineManager_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "%@: error from %@, %@", &v9, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __73__RTRoutineManager_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke_571(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E69A21E0];
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = a2;
  v7 = [v3 mapItemStorageForGEOMapItem:v5];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __73__RTRoutineManager_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke_2;
  v10[3] = &unk_1E80B3EE8;
  v10[4] = *(a1 + 48);
  v9 = *(a1 + 56);
  v8 = v9;
  v11 = v9;
  [v6 submitUserCurationForVisitDateRange:v4 newLabel:v7 handler:v10];
}

void __73__RTRoutineManager_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__RTRoutineManager_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke_3;
  block[3] = &unk_1E80B4370;
  block[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __73__RTRoutineManager_submitUserCurationForVisitDateRange_newLabel_handler___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 56));
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_INFO, "%@: replying from %@", &v7, 0x16u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)correctLabelForCurrentPlace:(id)place date:(id)date newLabel:(id)label handler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  placeCopy = place;
  dateCopy = date;
  labelCopy = label;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v15 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = NSStringFromClass(v16);
      v18 = NSStringFromSelector(a2);
      v19 = 138412546;
      v20 = v17;
      v21 = 2112;
      v22 = v18;
      _os_log_impl(&dword_1BF1C4000, v15, OS_LOG_TYPE_INFO, "%@: invoked %@", &v19, 0x16u);
    }
  }

  [(RTRoutineManager *)self correctLabelForVisitWithIdentifier:0 entryDate:dateCopy originalLabel:placeCopy newLabel:labelCopy handler:handlerCopy];
}

- (void)correctLabelForVisitWithIdentifier:(id)identifier entryDate:(id)date originalLabel:(id)label newLabel:(id)newLabel handler:(id)handler
{
  v42 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dateCopy = date;
  labelCopy = label;
  newLabelCopy = newLabel;
  handlerCopy = handler;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v18 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = NSStringFromSelector(a2);
      *buf = 138412546;
      v39 = v20;
      v40 = 2112;
      v41 = v21;
      _os_log_impl(&dword_1BF1C4000, v18, OS_LOG_TYPE_INFO, "%@: invoked %@", buf, 0x16u);
    }
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __96__RTRoutineManager_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke;
  v35[3] = &unk_1E80B3EE8;
  v35[4] = self;
  v37 = a2;
  v36 = handlerCopy;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __96__RTRoutineManager_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke_572;
  v27[3] = &unk_1E80B47E8;
  v28 = identifierCopy;
  v29 = dateCopy;
  v30 = labelCopy;
  v31 = newLabelCopy;
  v33 = v36;
  v34 = a2;
  selfCopy = self;
  v22 = v36;
  v23 = newLabelCopy;
  v24 = labelCopy;
  v25 = dateCopy;
  v26 = identifierCopy;
  [(RTRoutineManager *)self launchTaskWithSelector:a2 remainingAttempts:3 proxyErrorHandler:v35 taskBlock:v27];
}

void __96__RTRoutineManager_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(*(a1 + 48));
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_1BF1C4000, v4, OS_LOG_TYPE_ERROR, "%@: error from %@, %@", &v9, 0x20u);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

void __96__RTRoutineManager_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke_572(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = MEMORY[0x1E69A21E0];
  v6 = *(a1 + 48);
  v7 = a2;
  v8 = [v5 mapItemStorageForGEOMapItem:v6];
  v9 = [MEMORY[0x1E69A21E0] mapItemStorageForGEOMapItem:*(a1 + 56)];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __96__RTRoutineManager_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke_2;
  v12[3] = &unk_1E80B3EE8;
  v12[4] = *(a1 + 64);
  v11 = *(a1 + 72);
  v10 = v11;
  v13 = v11;
  [v7 correctLabelForVisitWithIdentifier:v3 entryDate:v4 originalLabel:v8 newLabel:v9 handler:v12];
}

void __96__RTRoutineManager_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__RTRoutineManager_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke_3;
  block[3] = &unk_1E80B4370;
  block[4] = *(a1 + 32);
  v7 = *(a1 + 40);
  v5 = v7;
  v10 = v7;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

uint64_t __96__RTRoutineManager_correctLabelForVisitWithIdentifier_entryDate_originalLabel_newLabel_handler___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
  {
    v2 = _rt_log_facility_get_os_log(RTLogFacilityUserCuration);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = objc_opt_class();
      v4 = NSStringFromClass(v3);
      v5 = NSStringFromSelector(*(a1 + 56));
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v5;
      _os_log_impl(&dword_1BF1C4000, v2, OS_LOG_TYPE_INFO, "%@: replying from %@", &v7, 0x16u);
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)fetchCurrentPredictedLocationsOfInterestLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTRoutineManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __102__RTRoutineManager_Skyline__fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_handler___block_invoke;
    block[3] = &unk_1E80B4DC0;
    block[4] = self;
    v14 = a2;
    v13 = handlerCopy;
    backCopy = back;
    aheadCopy = ahead;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTRoutineManager(Skyline) fetchCurrentPredictedLocationsOfInterestLookingBack:lookingAhead:handler:]";
      v19 = 1024;
      v20 = 21;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __102__RTRoutineManager_Skyline__fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __102__RTRoutineManager_Skyline__fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_handler___block_invoke_2;
  v9[3] = &unk_1E80B3F10;
  v3 = *(a1 + 32);
  v10 = *(a1 + 40);
  v4 = [v3 _proxyForServicingSelector:v2 withErrorHandler:v9];
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __102__RTRoutineManager_Skyline__fetchCurrentPredictedLocationsOfInterestLookingBack_lookingAhead_handler___block_invoke_3;
  v7[3] = &unk_1E80B4D98;
  v8 = *(a1 + 40);
  [v4 fetchCurrentPredictedLocationsOfInterestLookingBack:v7 lookingAhead:v5 reply:v6];
}

- (void)performBluePOIQueryLookingBack:(double)back lookingAhead:(double)ahead handler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (handlerCopy)
  {
    queue = [(RTRoutineManager *)self queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __81__RTRoutineManager_Skyline__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke;
    block[3] = &unk_1E80B4DC0;
    block[4] = self;
    v14 = a2;
    v13 = handlerCopy;
    backCopy = back;
    aheadCopy = ahead;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = _rt_log_facility_get_os_log(RTLogFacilityGeneral);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v18 = "[RTRoutineManager(Skyline) performBluePOIQueryLookingBack:lookingAhead:handler:]";
      v19 = 1024;
      v20 = 40;
      _os_log_error_impl(&dword_1BF1C4000, v11, OS_LOG_TYPE_ERROR, "Invalid parameter not satisfying: handler (in %s:%d)", buf, 0x12u);
    }
  }
}

void __81__RTRoutineManager_Skyline__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __81__RTRoutineManager_Skyline__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_2;
  v9[3] = &unk_1E80B3F10;
  v3 = *(a1 + 32);
  v10 = *(a1 + 40);
  v4 = [v3 _proxyForServicingSelector:v2 withErrorHandler:v9];
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__RTRoutineManager_Skyline__performBluePOIQueryLookingBack_lookingAhead_handler___block_invoke_3;
  v7[3] = &unk_1E80B4DE8;
  v8 = *(a1 + 40);
  [v4 performBluePOIQueryLookingBack:v7 lookingAhead:v5 reply:v6];
}

@end