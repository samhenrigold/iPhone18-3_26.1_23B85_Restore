@interface CRAccNavController
- (CRAccNavController)initWithComponent:(id)component delegate:(id)delegate;
- (CRAccNavControllerDelegate)delegate;
- (NSUUID)uuid;
- (id)description;
- (void)_sendNavInfoFromIndex:(id)index fromSource:(id)source cache:(id)cache;
- (void)delegateUpdatedLaneGuidance:(id)guidance;
- (void)delegateUpdatedLaneGuidances;
- (void)delegateUpdatedManeuver:(id)maneuver;
- (void)delegateUpdatedManeuvers;
- (void)delegateUpdatedRouteGuidance;
- (void)resendInfo;
- (void)reset;
- (void)sendInfo;
- (void)sendLaneGuidances;
- (void)sendManeuvers;
@end

@implementation CRAccNavController

- (void)delegateUpdatedRouteGuidance
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated routeguidance", &v11, 0xCu);
  }

  delegate = [(CRAccNavController *)self delegate];
  routeGuidanceProviding = [delegate routeGuidanceProviding];
  component = [(CRAccNavController *)self component];
  v7 = [routeGuidanceProviding navInfoWithComponent:component];
  [(CRAccNavController *)self setRouteGuidance:v7];

  [(CRAccNavController *)self sendManeuvers];
  [(CRAccNavController *)self sendLaneGuidances];
  delegate2 = [(CRAccNavController *)self delegate];
  routeGuidance = [(CRAccNavController *)self routeGuidance];
  uuid = [(CRAccNavController *)self uuid];
  [delegate2 sendInfo:routeGuidance toComponentUID:uuid];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  component = [(CRAccNavController *)self component];
  uuid = [component uuid];
  v7 = [v3 stringWithFormat:@"<%@: %p component=%@>", v4, self, uuid];

  return v7;
}

- (CRAccNavControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)sendManeuvers
{
  OUTLINED_FUNCTION_3();
  delegate = [v0 delegate];
  maneuversProvidingIndexed = [delegate maneuversProvidingIndexed];
  [maneuversProvidingIndexed count];
  sentManeuvers = [OUTLINED_FUNCTION_2() sentManeuvers];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_224A23000, v4, v5, "%{public}@ sendManeuvers done source.count=%lu cache=%{public}@", v6, v7, v8, v9);
}

- (void)sendLaneGuidances
{
  OUTLINED_FUNCTION_3();
  delegate = [v0 delegate];
  laneGuidanceProvidingIndexed = [delegate laneGuidanceProvidingIndexed];
  [laneGuidanceProvidingIndexed count];
  sentLaneGuidances = [OUTLINED_FUNCTION_2() sentLaneGuidances];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_224A23000, v4, v5, "%{public}@ sendLaneGuidances done source.count=%lu cache=%{public}@", v6, v7, v8, v9);
}

- (NSUUID)uuid
{
  component = [(CRAccNavController *)self component];
  uuid = [component uuid];

  return uuid;
}

- (CRAccNavController)initWithComponent:(id)component delegate:(id)delegate
{
  v31 = *MEMORY[0x277D85DE8];
  componentCopy = component;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = CRAccNavController;
  v9 = [(CRAccNavController *)&v22 init];
  v10 = v9;
  if (v9)
  {
    v11 = CarNavLogging(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      configDescription = [componentCopy configDescription];
      *buf = 138544130;
      v24 = v10;
      v25 = 2114;
      v26 = delegateCopy;
      v27 = 2114;
      v28 = componentCopy;
      v29 = 2114;
      v30 = configDescription;
      _os_log_impl(&dword_224A23000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ init! delegate=%{public}@ component=%{public}@ config=%{public}@", buf, 0x2Au);
    }

    objc_storeStrong(&v10->_component, component);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v13 = [CRAccNavInfoCache alloc];
    component = [componentCopy component];
    v15 = -[CRAccNavInfoCache initWithCountLimit:](v13, "initWithCountLimit:", [component maxCapacity_GuidanceManeuver]);
    sentManeuvers = v10->_sentManeuvers;
    v10->_sentManeuvers = v15;

    v17 = [CRAccNavInfoCache alloc];
    component2 = [componentCopy component];
    v19 = -[CRAccNavInfoCache initWithCountLimit:](v17, "initWithCountLimit:", [component2 maxCapacity_LaneGuidance]);
    sentLaneGuidances = v10->_sentLaneGuidances;
    v10->_sentLaneGuidances = v19;

    [(CRAccNavController *)v10 reset];
  }

  return v10;
}

- (void)sendInfo
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ sendInfo", &v7, 0xCu);
  }

  [(CRAccNavController *)self sendManeuvers];
  [(CRAccNavController *)self sendLaneGuidances];
  delegate = [(CRAccNavController *)self delegate];
  routeGuidance = [(CRAccNavController *)self routeGuidance];
  uuid = [(CRAccNavController *)self uuid];
  [delegate sendInfo:routeGuidance toComponentUID:uuid];
}

- (void)resendInfo
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sentManeuvers = [(CRAccNavController *)self sentManeuvers];
    v5 = [sentManeuvers count];
    sentLaneGuidances = [(CRAccNavController *)self sentLaneGuidances];
    v7 = [sentLaneGuidances count];
    routeGuidance = [(CRAccNavController *)self routeGuidance];
    v9 = @"YES";
    *buf = 138544130;
    selfCopy = self;
    if (!routeGuidance)
    {
      v9 = @"NO";
    }

    v55 = 2048;
    v56 = v5;
    v57 = 2048;
    v58 = v7;
    v59 = 2114;
    v60 = v9;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ resendInfo sentManeuvers.count=%ld sentLaneGuidances.count=%ld routeGuidance=%{public}@", buf, 0x2Au);
  }

  delegate = [(CRAccNavController *)self delegate];
  component = [(CRAccNavController *)self component];
  v12 = [CRAccNavRouteGuidance resetForComponent:component];
  uuid = [(CRAccNavController *)self uuid];
  [delegate sendInfo:v12 toComponentUID:uuid];

  delegate2 = [(CRAccNavController *)self delegate];
  [delegate2 willSendGuidanceStateLoading];

  delegate3 = [(CRAccNavController *)self delegate];
  component2 = [(CRAccNavController *)self component];
  delegate4 = [(CRAccNavController *)self delegate];
  sourceName = [delegate4 sourceName];
  v19 = sourceName;
  if (sourceName)
  {
    v20 = sourceName;
  }

  else
  {
    v20 = @"Unknown";
  }

  delegate5 = [(CRAccNavController *)self delegate];
  v22 = +[CRAccNavRouteGuidance loadingForComponent:sourceName:sourceSupported:](CRAccNavRouteGuidance, "loadingForComponent:sourceName:sourceSupported:", component2, v20, [delegate5 sourceSupported]);
  uuid2 = [(CRAccNavController *)self uuid];
  [delegate3 sendInfo:v22 toComponentUID:uuid2];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  sentManeuvers2 = [(CRAccNavController *)self sentManeuvers];
  v25 = [sentManeuvers2 countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v48;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v48 != v27)
        {
          objc_enumerationMutation(sentManeuvers2);
        }

        v29 = *(*(&v47 + 1) + 8 * i);
        delegate6 = [(CRAccNavController *)self delegate];
        uuid3 = [(CRAccNavController *)self uuid];
        [delegate6 sendInfo:v29 toComponentUID:uuid3];
      }

      v26 = [sentManeuvers2 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v26);
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  sentLaneGuidances2 = [(CRAccNavController *)self sentLaneGuidances];
  v33 = [sentLaneGuidances2 countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v44;
    do
    {
      for (j = 0; j != v34; ++j)
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(sentLaneGuidances2);
        }

        v37 = *(*(&v43 + 1) + 8 * j);
        delegate7 = [(CRAccNavController *)self delegate];
        uuid4 = [(CRAccNavController *)self uuid];
        [delegate7 sendInfo:v37 toComponentUID:uuid4];
      }

      v34 = [sentLaneGuidances2 countByEnumeratingWithState:&v43 objects:v51 count:16];
    }

    while (v34);
  }

  delegate8 = [(CRAccNavController *)self delegate];
  routeGuidance2 = [(CRAccNavController *)self routeGuidance];
  uuid5 = [(CRAccNavController *)self uuid];
  [delegate8 sendInfo:routeGuidance2 toComponentUID:uuid5];
}

- (void)reset
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ reset", &v10, 0xCu);
  }

  [(CRAccNavController *)self setRouteGuidance:0];
  sentManeuvers = [(CRAccNavController *)self sentManeuvers];
  [sentManeuvers removeAllObjects];

  sentLaneGuidances = [(CRAccNavController *)self sentLaneGuidances];
  [sentLaneGuidances removeAllObjects];

  delegate = [(CRAccNavController *)self delegate];
  component = [(CRAccNavController *)self component];
  v8 = [CRAccNavRouteGuidance resetForComponent:component];
  uuid = [(CRAccNavController *)self uuid];
  [delegate sendInfo:v8 toComponentUID:uuid];
}

- (void)delegateUpdatedManeuvers
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(CRAccNavController *)self delegate];
    maneuversProvidingIndexed = [delegate maneuversProvidingIndexed];
    v6 = [maneuversProvidingIndexed count];
    routeGuidance = [(CRAccNavController *)self routeGuidance];
    v21 = 138543874;
    selfCopy = self;
    v23 = 2048;
    v24 = v6;
    v25 = 1024;
    guidanceState = [routeGuidance guidanceState];
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated maneuvers count=%lu guidanceState=%hhu", &v21, 0x1Cu);
  }

  routeGuidance2 = [(CRAccNavController *)self routeGuidance];
  guidanceState2 = [routeGuidance2 guidanceState];

  if (!guidanceState2)
  {
    delegate2 = [(CRAccNavController *)self delegate];
    [delegate2 willSendGuidanceStateLoading];

    component = [(CRAccNavController *)self component];
    delegate3 = [(CRAccNavController *)self delegate];
    sourceName = [delegate3 sourceName];
    v14 = sourceName;
    if (sourceName)
    {
      v15 = sourceName;
    }

    else
    {
      v15 = @"Unknown";
    }

    delegate4 = [(CRAccNavController *)self delegate];
    v17 = +[CRAccNavRouteGuidance loadingForComponent:sourceName:sourceSupported:](CRAccNavRouteGuidance, "loadingForComponent:sourceName:sourceSupported:", component, v15, [delegate4 sourceSupported]);
    [(CRAccNavController *)self setRouteGuidance:v17];

    delegate5 = [(CRAccNavController *)self delegate];
    routeGuidance3 = [(CRAccNavController *)self routeGuidance];
    uuid = [(CRAccNavController *)self uuid];
    [delegate5 sendInfo:routeGuidance3 toComponentUID:uuid];
  }

  [(CRAccNavController *)self sendManeuvers];
}

- (void)delegateUpdatedManeuver:(id)maneuver
{
  v20 = *MEMORY[0x277D85DE8];
  maneuverCopy = maneuver;
  sentManeuvers = [(CRAccNavController *)self sentManeuvers];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(maneuverCopy, "index")}];
  v7 = [sentManeuvers objectForKeyedSubscript:v6];

  if (v7)
  {
    v9 = CarNavLogging(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy = self;
      v18 = 1024;
      index = [maneuverCopy index];
      _os_log_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated maneuver %d", &v16, 0x12u);
    }

    component = [(CRAccNavController *)self component];
    v11 = [maneuverCopy navInfoWithComponent:component];

    sentManeuvers2 = [(CRAccNavController *)self sentManeuvers];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(maneuverCopy, "index")}];
    [sentManeuvers2 setObject:v11 forKeyedSubscript:v13];

    delegate = [(CRAccNavController *)self delegate];
    uuid = [(CRAccNavController *)self uuid];
    [delegate sendInfo:v11 toComponentUID:uuid];
  }
}

- (void)delegateUpdatedLaneGuidances
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = CarNavLogging(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    delegate = [(CRAccNavController *)self delegate];
    laneGuidanceProvidingIndexed = [delegate laneGuidanceProvidingIndexed];
    v6 = [laneGuidanceProvidingIndexed count];
    routeGuidance = [(CRAccNavController *)self routeGuidance];
    v21 = 138543874;
    selfCopy = self;
    v23 = 2048;
    v24 = v6;
    v25 = 1024;
    guidanceState = [routeGuidance guidanceState];
    _os_log_impl(&dword_224A23000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated laneGuidances count=%lu guidanceState=%hhu", &v21, 0x1Cu);
  }

  routeGuidance2 = [(CRAccNavController *)self routeGuidance];
  guidanceState2 = [routeGuidance2 guidanceState];

  if (!guidanceState2)
  {
    delegate2 = [(CRAccNavController *)self delegate];
    [delegate2 willSendGuidanceStateLoading];

    component = [(CRAccNavController *)self component];
    delegate3 = [(CRAccNavController *)self delegate];
    sourceName = [delegate3 sourceName];
    v14 = sourceName;
    if (sourceName)
    {
      v15 = sourceName;
    }

    else
    {
      v15 = @"Unknown";
    }

    delegate4 = [(CRAccNavController *)self delegate];
    v17 = +[CRAccNavRouteGuidance loadingForComponent:sourceName:sourceSupported:](CRAccNavRouteGuidance, "loadingForComponent:sourceName:sourceSupported:", component, v15, [delegate4 sourceSupported]);
    [(CRAccNavController *)self setRouteGuidance:v17];

    delegate5 = [(CRAccNavController *)self delegate];
    routeGuidance3 = [(CRAccNavController *)self routeGuidance];
    uuid = [(CRAccNavController *)self uuid];
    [delegate5 sendInfo:routeGuidance3 toComponentUID:uuid];
  }

  [(CRAccNavController *)self sendLaneGuidances];
}

- (void)delegateUpdatedLaneGuidance:(id)guidance
{
  v20 = *MEMORY[0x277D85DE8];
  guidanceCopy = guidance;
  sentLaneGuidances = [(CRAccNavController *)self sentLaneGuidances];
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(guidanceCopy, "index")}];
  v7 = [sentLaneGuidances objectForKeyedSubscript:v6];

  if (v7)
  {
    v9 = CarNavLogging(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138543618;
      selfCopy = self;
      v18 = 1024;
      index = [guidanceCopy index];
      _os_log_impl(&dword_224A23000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ delegate updated laneGuidance %d", &v16, 0x12u);
    }

    component = [(CRAccNavController *)self component];
    v11 = [guidanceCopy navInfoWithComponent:component];

    sentLaneGuidances2 = [(CRAccNavController *)self sentLaneGuidances];
    v13 = [MEMORY[0x277CCABB0] numberWithUnsignedShort:{objc_msgSend(guidanceCopy, "index")}];
    [sentLaneGuidances2 setObject:v11 forKeyedSubscript:v13];

    delegate = [(CRAccNavController *)self delegate];
    uuid = [(CRAccNavController *)self uuid];
    [delegate sendInfo:v11 toComponentUID:uuid];
  }
}

- (void)_sendNavInfoFromIndex:(id)index fromSource:(id)source cache:(id)cache
{
  v41 = *MEMORY[0x277D85DE8];
  indexCopy = index;
  sourceCopy = source;
  cacheCopy = cache;
  v25 = indexCopy;
  if (indexCopy)
  {
    v10 = indexCopy;
LABEL_4:
    v12 = 0;
    v13 = 0;
    while (1)
    {
      countLimit = [cacheCopy countLimit];
      if (v13 >= countLimit)
      {
        goto LABEL_14;
      }

      v14 = [cacheCopy objectForKeyedSubscript:v10];
      if (v14)
      {
        break;
      }

      v16 = [sourceCopy objectForKeyedSubscript:v10];

      if (v16)
      {
        v15 = [sourceCopy objectForKeyedSubscript:v10];
        component = [(CRAccNavController *)self component];
        v18 = [v15 navInfoWithComponent:component];

        [cacheCopy setObject:v18 forKeyedSubscript:v10];
        delegate = [(CRAccNavController *)self delegate];
        [(CRAccNavController *)self component];
        v21 = v20 = v12;
        uuid = [v21 uuid];
        [delegate sendInfo:v18 toComponentUID:uuid];

        v12 = v20 + 1;
        goto LABEL_10;
      }

LABEL_11:
      ++v13;
      v23 = [sourceCopy keyAfter:v10];

      v10 = v23;
      if (!v23)
      {
        goto LABEL_14;
      }
    }

    v15 = v14;
LABEL_10:

    goto LABEL_11;
  }

  countLimit = [sourceCopy firstKey];
  v10 = countLimit;
  if (countLimit)
  {
    goto LABEL_4;
  }

  v13 = 0;
  v12 = 0;
LABEL_14:
  v24 = CarNavLogging(countLimit);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138544898;
    selfCopy = self;
    v29 = 2114;
    v30 = v25;
    v31 = 2048;
    v32 = v12;
    v33 = 2048;
    v34 = [sourceCopy count];
    v35 = 2048;
    v36 = cacheCopy;
    v37 = 2048;
    v38 = v13;
    v39 = 2048;
    v40 = [cacheCopy count];
    _os_log_debug_impl(&dword_224A23000, v24, OS_LOG_TYPE_DEBUG, "%{public}@ sendNavInfo fromIndex=%{public}@ sentIndexes=%lu source=%lu cache=(%p)%lu/%lu", buf, 0x48u);
  }
}

@end