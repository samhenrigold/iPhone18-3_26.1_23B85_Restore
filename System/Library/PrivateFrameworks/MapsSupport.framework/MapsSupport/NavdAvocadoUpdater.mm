@interface NavdAvocadoUpdater
- (NSString)uniqueName;
- (id)_hashForEntries:(id)entries;
- (id)initFromResourceDepot:(id)depot sharedRegister:(id)register;
- (void)_logStateForStep:(id)step stopReason:(id)reason;
- (void)_reloadTimelineWithReason:(id)reason;
- (void)engineRunner:(id)runner startedBecauseOfTrigger:(id)trigger;
- (void)engineRunner:(id)runner step:(id)step jsonDict:(id)dict;
- (void)engineRunner:(id)runner stoppedWithEntries:(id)entries;
- (void)triggerFired:(id)fired;
@end

@implementation NavdAvocadoUpdater

- (id)initFromResourceDepot:(id)depot sharedRegister:(id)register
{
  depotCopy = depot;
  registerCopy = register;
  if (!depotCopy)
  {
    v69 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v73 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/AvocadoUpdater/NavdAvocadoUpdater.mm";
      v74 = 1024;
      v75 = 119;
      v76 = 2082;
      v77 = "[NavdAvocadoUpdater initFromResourceDepot:sharedRegister:]";
      v78 = 2082;
      v79 = "nil == (resourceDepot)";
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires a resource depot", buf, 0x26u);
    }

    goto LABEL_13;
  }

  if ((GEOConfigGetBOOL() & 1) == 0)
  {
    v69 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEBUG, "NavdAvocadoUpdater is Disabled", buf, 2u);
    }

LABEL_13:

    selfCopy = 0;
    goto LABEL_14;
  }

  v71.receiver = self;
  v71.super_class = NavdAvocadoUpdater;
  v8 = [(NavdAvocadoUpdater *)&v71 init];
  p_isa = &v8->super.isa;
  if (v8)
  {
    previousEntryHashes = v8->_previousEntryHashes;
    v8->_previousEntryHashes = &__NSArray0__struct;

    v11 = objc_alloc_init(MapsSuggestionsShortcutFilter);
    v12 = [NSSet setWithObjects:v11, 0];

    v13 = +[MapsSuggestionsEngineBuilder forDevice];
    v14 = [v13 withResourceDepot:depotCopy];

    v15 = +[MapsSuggestionsNavdMapsAppLocationManager sharedLocationManager];
    v16 = [v14 withLocationUpdater:v15];

    v17 = [v16 withPreFilters:v12];

    withoutTracker = [v17 withoutTracker];

    v19 = [MapsSuggestionsEngineRunner alloc];
    GEOConfigGetDouble();
    v21 = v20;
    GEOConfigGetDouble();
    v23 = v22;
    GEOConfigGetDouble();
    v25 = v24;
    GEOConfigGetDouble();
    v27 = v26;
    GEOConfigGetDouble();
    v29 = v28;
    GEOConfigGetDouble();
    v31 = [v19 initWithEngineBuilder:withoutTracker name:@"NavdAvocadoUpdaterRunner" minRunTime:GEOConfigGetInteger() maxRunTime:1 minSleepTime:v21 maxSleepTime:v23 runTimeLeeway:v25 sleepTimeLeeway:v27 maxEntries:v29 nilledWhenAsleep:v30];
    v32 = p_isa[1];
    p_isa[1] = v31;

    [p_isa[1] registerObserver:p_isa];
    v33 = p_isa[1];
    v34 = +[MapsSuggestionsDestinationdTrigger description];
    v35 = [registerCopy objectForKeyedSubscript:v34];
    [v33 addTrigger:v35];

    v36 = p_isa[1];
    v37 = +[MapsSuggestionsSiri isEnabledCondition];
    uniqueName = [v37 uniqueName];
    v39 = [registerCopy objectForKeyedSubscript:uniqueName];
    [v36 addCondition:v39];

    v40 = [[MapsSuggestionsBlockFilter alloc] initWithBlock:&stru_1000652D0];
    [p_isa[1] addPostFilter:v40];
    v41 = p_isa[1];
    v42 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v43 = [registerCopy objectForKeyedSubscript:v42];
    [v41 addTrigger:v43];

    v44 = p_isa[1];
    v45 = +[MapsSuggestionsMapsInstalledTriggeringToggle description];
    v46 = [registerCopy objectForKeyedSubscript:v45];
    [v44 addCondition:v46];

    v47 = p_isa[1];
    v48 = +[MapsSuggestionsFirstUnlockTrigger description];
    v49 = [registerCopy objectForKeyedSubscript:v48];
    [v47 addTrigger:v49];

    v50 = p_isa[1];
    v51 = +[MapsSuggestionsFirstUnlockTrigger description];
    v52 = [registerCopy objectForKeyedSubscript:v51];
    [v50 addCondition:v52];

    v53 = p_isa[1];
    v54 = +[MapsSuggestionsBluetoothVehicleConnectionTrigger description];
    v55 = [registerCopy objectForKeyedSubscript:v54];
    [v53 addTrigger:v55];

    v56 = p_isa[1];
    v57 = +[MapsSuggestionsEventKitChangedTrigger description];
    v58 = [registerCopy objectForKeyedSubscript:v57];
    [v56 addTrigger:v58];

    v59 = p_isa[1];
    v60 = +[MapsSuggestionsPreferredTransportTypeTrigger description];
    v61 = [registerCopy objectForKeyedSubscript:v60];
    [v59 addTrigger:v61];

    v62 = p_isa[1];
    v63 = +[MapsSuggestionsUserDeletedSuggestionTrigger description];
    v64 = [registerCopy objectForKeyedSubscript:v63];
    [v62 addTrigger:v64];

    v65 = objc_alloc_init(NavdAvocadoNavigationSessionTrigger);
    v66 = p_isa[3];
    p_isa[3] = v65;

    [p_isa[3] registerObserver:p_isa];
    [p_isa[1] addTrigger:p_isa[3]];
    [p_isa[1] addCondition:p_isa[3]];
    [p_isa[1] runASAP];
    v67 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEBUG, "initialized", buf, 2u);
    }

    [p_isa _logStateForStep:@"featureInitialized"];
  }

  self = p_isa;
  selfCopy = self;
LABEL_14:

  return selfCopy;
}

- (void)_reloadTimelineWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.Maps.GeneralMapsWidget" kind:@"com.apple.Maps"];
  v6 = [v5 reloadTimelineWithReason:reasonCopy];
  if (v6)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "NavdAvocadoUpdater: could not reload timeline: %{public}@", buf, 0xCu);
    }

    v8 = [[NSString alloc] initWithFormat:@"Could not reload Timeline: %@", v6];
    [(NavdAvocadoUpdater *)self _logStateForStep:@"errorReloadingTimeline" stopReason:v8];
  }
}

- (id)_hashForEntries:(id)entries
{
  entriesCopy = entries;
  v4 = entriesCopy;
  if (!entriesCopy)
  {
    v5 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 136446978;
      v11 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/AvocadoUpdater/NavdAvocadoUpdater.mm";
      v12 = 1024;
      v13 = 212;
      v14 = 2082;
      v15 = "[NavdAvocadoUpdater _hashForEntries:]";
      v16 = 2082;
      v17 = "nil == (entries)";
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires zero or more Entries. @[] is ok.", buf, 0x26u);
    }

    v6 = 0;
    goto LABEL_7;
  }

  if ([entriesCopy count])
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10000D250;
    v8[3] = &unk_1000652F8;
    v5 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(v4, "count")}];
    v9 = v5;
    [v4 enumerateObjectsUsingBlock:v8];
    v6 = [v5 copy];

LABEL_7:
    goto LABEL_9;
  }

  v6 = &__NSArray0__struct;
LABEL_9:

  return v6;
}

- (void)engineRunner:(id)runner stoppedWithEntries:(id)entries
{
  runnerCopy = runner;
  entriesCopy = entries;
  if (entriesCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v9 = [(NavdAvocadoUpdater *)selfCopy _hashForEntries:entriesCopy];
    v10 = [v9 isEqualToArray:selfCopy->_previousEntryHashes];
    v11 = v10;
    if (v10)
    {
      [(NavdAvocadoUpdater *)selfCopy _logStateForStep:@"noChangeInEntries"];
    }

    else
    {
      v13 = [v9 copy];
      previousEntryHashes = selfCopy->_previousEntryHashes;
      selfCopy->_previousEntryHashes = v13;

      v15 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v17 = 138412290;
        v18 = v9;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEBUG, "Change detected! New hashes: %@", &v17, 0xCu);
      }
    }

    objc_sync_exit(selfCopy);
    if ((v11 & 1) == 0)
    {
      [(NavdAvocadoUpdater *)selfCopy _logStateForStep:@"willUpdateAvocado"];
      v16 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "NavdAvocadoUpdater: will reload timeline for MapsSuggestions change", &v17, 2u);
      }

      [(NavdAvocadoUpdater *)selfCopy _reloadTimelineWithReason:@"Change detected in MSg Entries"];
      [(NavdAvocadoUpdater *)selfCopy _logStateForStep:@"didUpdateAvocado"];
    }
  }

  else
  {
    v12 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      v17 = 136446978;
      v18 = "/Library/Caches/com.apple.xbs/Sources/Maps/iOS/navd/AvocadoUpdater/NavdAvocadoUpdater.mm";
      v19 = 1024;
      v20 = 229;
      v21 = 2082;
      v22 = "[NavdAvocadoUpdater engineRunner:stoppedWithEntries:]";
      v23 = 2082;
      v24 = "nil == (entries)";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_FAULT, "At %{public}s:%d, %{public}s forbids: %{public}s. Requires zero or more Entries. @[] is ok.", &v17, 0x26u);
    }
  }
}

- (void)engineRunner:(id)runner startedBecauseOfTrigger:(id)trigger
{
  triggerCopy = trigger;
  v6 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    uniqueName = [triggerCopy uniqueName];
    v8 = 138412290;
    v9 = uniqueName;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "Triggered by %@", &v8, 0xCu);
  }

  [(NavdAvocadoUpdater *)self _logStateForStep:@"didStart" stopReason:0];
}

- (void)engineRunner:(id)runner step:(id)step jsonDict:(id)dict
{
  stepCopy = step;
  dictCopy = dict;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v9 = [dictCopy copy];
  lastEngineRunnerState = selfCopy->_lastEngineRunnerState;
  selfCopy->_lastEngineRunnerState = v9;

  objc_sync_exit(selfCopy);
  [(NavdAvocadoUpdater *)selfCopy _logStateForStep:stepCopy];
}

- (void)triggerFired:(id)fired
{
  if (self->_navSessionTrigger == fired)
  {
    v8 = v3;
    v9 = v4;
    v6 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "NavdAvocadoUpdater: will reload timeline for Navigation state change", v7, 2u);
    }

    [(NavdAvocadoUpdater *)self _reloadTimelineWithReason:@"Navigation state change"];
  }
}

- (void)_logStateForStep:(id)step stopReason:(id)reason
{
  stepCopy = step;
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v17[0] = @"step";
  v9 = MSg::jsonFor();
  v18[0] = v9;
  v17[1] = @"stopReason";
  v10 = MSg::jsonFor();
  v18[1] = v10;
  v17[2] = @"engineRunner";
  v11 = MSg::jsonFor();
  v18[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

  v13 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = NSStringFromMapsSuggestionsJSON();
    v15 = 138412290;
    v16 = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "EVAL{AvocadoUpdater}=%@", &v15, 0xCu);
  }

  objc_sync_exit(selfCopy);
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

@end